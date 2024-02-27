    8002f000:	e51d                	bnez	a0,8002f02e <js_parse_regexp+0x64>
quickjs-nuttx/quickjs.c:20413
            if (c == CP_LS || c == CP_PS) {
    8002f002:	7979                	lui	s2,0xffffe
quickjs-nuttx/quickjs.c:20362
    p++;
    8002f004:	0c85                	addi	s9,s9,1
quickjs-nuttx/quickjs.c:20363
    in_class = FALSE;
    8002f006:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:20375
        if (c == '\n' || c == '\r') {
    8002f008:	4a29                	li	s4,10
    8002f00a:	4ab5                	li	s5,13
quickjs-nuttx/quickjs.c:20377
        } else if (c == '/') {
    8002f00c:	02f00b93          	li	s7,47
quickjs-nuttx/quickjs.c:20380
        } else if (c == '[') {
    8002f010:	05b00c13          	li	s8,91
quickjs-nuttx/quickjs.c:20381
            in_class = TRUE;
    8002f014:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:20413
            if (c == CP_LS || c == CP_PS) {
    8002f016:	fd89091b          	addiw	s2,s2,-40
quickjs-nuttx/quickjs.c:20369
        if (p >= s->buf_end) {
    8002f01a:	703c                	ld	a5,96(s0)
    8002f01c:	02fce163          	bltu	s9,a5,8002f03e <js_parse_regexp+0x74>
quickjs-nuttx/quickjs.c:20371
            js_parse_error(s, "unexpected end of regexp");
    8002f020:	0003d597          	auipc	a1,0x3d
    8002f024:	ce058593          	addi	a1,a1,-800 # 8006bd00 <qjsc_repl+0x6750>
quickjs-nuttx/quickjs.c:20408
                js_parse_error(s, "invalid UTF-8 sequence");
    8002f028:	8522                	mv	a0,s0
    8002f02a:	c49fe0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:20446
    string_buffer_free(b);
    8002f02e:	1008                	addi	a0,sp,32
    8002f030:	ff3db0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:20447
    string_buffer_free(b2);
    8002f034:	0088                	addi	a0,sp,64
    8002f036:	feddb0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:20365
        return -1;
    8002f03a:	597d                	li	s2,-1
    8002f03c:	aa11                	j	8002f150 <js_parse_regexp+0x186>
quickjs-nuttx/quickjs.c:20374
        c = *p++;
    8002f03e:	000cc583          	lbu	a1,0(s9) # 110000 <asinh-0x7fef0000>
    8002f042:	001c8493          	addi	s1,s9,1
quickjs-nuttx/quickjs.c:20375
        if (c == '\n' || c == '\r') {
    8002f046:	0d458863          	beq	a1,s4,8002f116 <js_parse_regexp+0x14c>
quickjs-nuttx/quickjs.c:20375 (discriminator 1)
    8002f04a:	0d558663          	beq	a1,s5,8002f116 <js_parse_regexp+0x14c>
quickjs-nuttx/quickjs.c:20377
        } else if (c == '/') {
    8002f04e:	05759563          	bne	a1,s7,8002f098 <js_parse_regexp+0xce>
quickjs-nuttx/quickjs.c:20378
            if (!in_class)
    8002f052:	0c099863          	bnez	s3,8002f122 <js_parse_regexp+0x158>
quickjs-nuttx/quickjs.c:20427
        if (c >= 0x80) {
    8002f056:	07f00993          	li	s3,127
quickjs-nuttx/quickjs.c:20429
            if (c > 0x10FFFF) {
    8002f05a:	00110a37          	lui	s4,0x110
quickjs-nuttx/quickjs.c:20426
        c = *p_next++;
    8002f05e:	00148793          	addi	a5,s1,1
    8002f062:	ec3e                	sd	a5,24(sp)
    8002f064:	0004c583          	lbu	a1,0(s1)
quickjs-nuttx/quickjs.c:20427
        if (c >= 0x80) {
    8002f068:	00b9fb63          	bgeu	s3,a1,8002f07e <js_parse_regexp+0xb4>
quickjs-nuttx/quickjs.c:20428
            c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p_next);
    8002f06c:	4599                	li	a1,6
    8002f06e:	0830                	addi	a2,sp,24
    8002f070:	8526                	mv	a0,s1
    8002f072:	449220ef          	jal	ra,80051cba <unicode_from_utf8>
    8002f076:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:20429
            if (c > 0x10FFFF) {
    8002f07a:	0745fc63          	bgeu	a1,s4,8002f0f2 <js_parse_regexp+0x128>
quickjs-nuttx/quickjs.c:20433
        if (!lre_js_is_ident_next(c))
    8002f07e:	852e                	mv	a0,a1
    8002f080:	e42e                	sd	a1,8(sp)
    8002f082:	95bda0ef          	jal	ra,800099dc <lre_js_is_ident_next>
    8002f086:	892a                	mv	s2,a0
    8002f088:	c555                	beqz	a0,8002f134 <js_parse_regexp+0x16a>
quickjs-nuttx/quickjs.c:20435
        if (string_buffer_putc(b2, c))
    8002f08a:	65a2                	ld	a1,8(sp)
    8002f08c:	0088                	addi	a0,sp,64
    8002f08e:	ce3ef0ef          	jal	ra,8001ed70 <string_buffer_putc>
    8002f092:	fd51                	bnez	a0,8002f02e <js_parse_regexp+0x64>
quickjs-nuttx/quickjs.c:20437
        p = p_next;
    8002f094:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:20424
    for(;;) {
    8002f096:	b7e1                	j	8002f05e <js_parse_regexp+0x94>
quickjs-nuttx/quickjs.c:20380
        } else if (c == '[') {
    8002f098:	09858463          	beq	a1,s8,8002f120 <js_parse_regexp+0x156>
quickjs-nuttx/quickjs.c:20382
        } else if (c == ']') {
    8002f09c:	05d00793          	li	a5,93
    8002f0a0:	08f58863          	beq	a1,a5,8002f130 <js_parse_regexp+0x166>
quickjs-nuttx/quickjs.c:20385
        } else if (c == '\\') {
    8002f0a4:	05c00793          	li	a5,92
    8002f0a8:	04f59a63          	bne	a1,a5,8002f0fc <js_parse_regexp+0x132>
quickjs-nuttx/quickjs.c:20386
            if (string_buffer_putc8(b, c))
    8002f0ac:	05c00593          	li	a1,92
    8002f0b0:	1008                	addi	a0,sp,32
    8002f0b2:	bafef0ef          	jal	ra,8001ec60 <string_buffer_putc8>
    8002f0b6:	fd25                	bnez	a0,8002f02e <js_parse_regexp+0x64>
quickjs-nuttx/quickjs.c:20388
            c = *p++;
    8002f0b8:	001cc583          	lbu	a1,1(s9)
    8002f0bc:	002c8793          	addi	a5,s9,2
quickjs-nuttx/quickjs.c:20389
            if (c == '\n' || c == '\r')
    8002f0c0:	05458b63          	beq	a1,s4,8002f116 <js_parse_regexp+0x14c>
quickjs-nuttx/quickjs.c:20389 (discriminator 1)
    8002f0c4:	05558963          	beq	a1,s5,8002f116 <js_parse_regexp+0x14c>
quickjs-nuttx/quickjs.c:20391
            else if (c == '\0' && p >= s->buf_end)
    8002f0c8:	e591                	bnez	a1,8002f0d4 <js_parse_regexp+0x10a>
quickjs-nuttx/quickjs.c:20391 (discriminator 1)
    8002f0ca:	7038                	ld	a4,96(s0)
    8002f0cc:	f4e7fae3          	bgeu	a5,a4,8002f020 <js_parse_regexp+0x56>
quickjs-nuttx/quickjs.c:20388
            c = *p++;
    8002f0d0:	84be                	mv	s1,a5
    8002f0d2:	a881                	j	8002f122 <js_parse_regexp+0x158>
quickjs-nuttx/quickjs.c:20393
            else if (c >= 0x80) {
    8002f0d4:	07f00713          	li	a4,127
    8002f0d8:	feb77ce3          	bgeu	a4,a1,8002f0d0 <js_parse_regexp+0x106>
quickjs-nuttx/quickjs.c:20395
                c = unicode_from_utf8(p - 1, UTF8_CHAR_LEN_MAX, &p_next);
    8002f0dc:	0830                	addi	a2,sp,24
    8002f0de:	4599                	li	a1,6
    8002f0e0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:20405
            c = unicode_from_utf8(p - 1, UTF8_CHAR_LEN_MAX, &p_next);
    8002f0e2:	3d9220ef          	jal	ra,80051cba <unicode_from_utf8>
    8002f0e6:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:20406
            if (c > 0x10FFFF) {
    8002f0ea:	001107b7          	lui	a5,0x110
    8002f0ee:	00f5ef63          	bltu	a1,a5,8002f10c <js_parse_regexp+0x142>
quickjs-nuttx/quickjs.c:20408
                js_parse_error(s, "invalid UTF-8 sequence");
    8002f0f2:	0003d597          	auipc	a1,0x3d
    8002f0f6:	85658593          	addi	a1,a1,-1962 # 8006b948 <qjsc_repl+0x6398>
    8002f0fa:	b73d                	j	8002f028 <js_parse_regexp+0x5e>
quickjs-nuttx/quickjs.c:20403
        } else if (c >= 0x80) {
    8002f0fc:	07f00793          	li	a5,127
    8002f100:	02b7f163          	bgeu	a5,a1,8002f122 <js_parse_regexp+0x158>
quickjs-nuttx/quickjs.c:20405
            c = unicode_from_utf8(p - 1, UTF8_CHAR_LEN_MAX, &p_next);
    8002f104:	0830                	addi	a2,sp,24
    8002f106:	4599                	li	a1,6
    8002f108:	8566                	mv	a0,s9
    8002f10a:	bfe1                	j	8002f0e2 <js_parse_regexp+0x118>
quickjs-nuttx/quickjs.c:20413
            if (c == CP_LS || c == CP_PS) {
    8002f10c:	00b907bb          	addw	a5,s2,a1
quickjs-nuttx/quickjs.c:20411
            p = p_next;
    8002f110:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:20413
            if (c == CP_LS || c == CP_PS) {
    8002f112:	00fb6863          	bltu	s6,a5,8002f122 <js_parse_regexp+0x158>
quickjs-nuttx/quickjs.c:20415
                js_parse_error(s, "unexpected line terminator in regexp");
    8002f116:	0003d597          	auipc	a1,0x3d
    8002f11a:	c0a58593          	addi	a1,a1,-1014 # 8006bd20 <qjsc_repl+0x6770>
    8002f11e:	b729                	j	8002f028 <js_parse_regexp+0x5e>
quickjs-nuttx/quickjs.c:20381
            in_class = TRUE;
    8002f120:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:20419
        if (string_buffer_putc(b, c))
    8002f122:	1008                	addi	a0,sp,32
    8002f124:	c4def0ef          	jal	ra,8001ed70 <string_buffer_putc>
    8002f128:	f00513e3          	bnez	a0,8002f02e <js_parse_regexp+0x64>
    8002f12c:	8ca6                	mv	s9,s1
    8002f12e:	b5f5                	j	8002f01a <js_parse_regexp+0x50>
quickjs-nuttx/quickjs.c:20384
            in_class = FALSE;
    8002f130:	4981                	li	s3,0
    8002f132:	bfc5                	j	8002f122 <js_parse_regexp+0x158>
quickjs-nuttx/quickjs.c:20440
    s->token.val = TOK_REGEXP;
    8002f134:	f8400793          	li	a5,-124
    8002f138:	cc1c                	sw	a5,24(s0)
quickjs-nuttx/quickjs.c:20441
    s->token.u.regexp.body = string_buffer_end(b);
    8002f13a:	1008                	addi	a0,sp,32
    8002f13c:	b65f00ef          	jal	ra,8001fca0 <string_buffer_end>
    8002f140:	f408                	sd	a0,40(s0)
    8002f142:	f80c                	sd	a1,48(s0)
quickjs-nuttx/quickjs.c:20442
    s->token.u.regexp.flags = string_buffer_end(b2);
    8002f144:	0088                	addi	a0,sp,64
    8002f146:	b5bf00ef          	jal	ra,8001fca0 <string_buffer_end>
    8002f14a:	fc08                	sd	a0,56(s0)
    8002f14c:	e02c                	sd	a1,64(s0)
quickjs-nuttx/quickjs.c:20443
    s->buf_ptr = p;
    8002f14e:	ec24                	sd	s1,88(s0)
quickjs-nuttx/quickjs.c:20449
}
    8002f150:	70ea                	ld	ra,184(sp)
    8002f152:	744a                	ld	s0,176(sp)
    8002f154:	74aa                	ld	s1,168(sp)
    8002f156:	69ea                	ld	s3,152(sp)
    8002f158:	6a4a                	ld	s4,144(sp)
    8002f15a:	6aaa                	ld	s5,136(sp)
    8002f15c:	6b0a                	ld	s6,128(sp)
    8002f15e:	7be6                	ld	s7,120(sp)
    8002f160:	7c46                	ld	s8,112(sp)
    8002f162:	7ca6                	ld	s9,104(sp)
    8002f164:	854a                	mv	a0,s2
    8002f166:	790a                	ld	s2,160(sp)
    8002f168:	6129                	addi	sp,sp,192
    8002f16a:	8082                	ret

000000008002f16c <js_parse_skip_parens_token>:
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22402
{
    8002f16c:	7125                	addi	sp,sp,-416
    8002f16e:	e726                	sd	s1,392(sp)
    8002f170:	e34a                	sd	s2,384(sp)
    8002f172:	fece                	sd	s3,376(sp)
    8002f174:	fad2                	sd	s4,368(sp)
    8002f176:	f6d6                	sd	s5,360(sp)
    8002f178:	f2da                	sd	s6,352(sp)
    8002f17a:	eede                	sd	s7,344(sp)
    8002f17c:	eae2                	sd	s8,336(sp)
    8002f17e:	e6e6                	sd	s9,328(sp)
    8002f180:	e2ea                	sd	s10,320(sp)
    8002f182:	fe6e                	sd	s11,312(sp)
    8002f184:	ef06                	sd	ra,408(sp)
    8002f186:	eb22                	sd	s0,400(sp)
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    8002f188:	4518                	lw	a4,8(a0)
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22402
{
    8002f18a:	89aa                	mv	s3,a0
    8002f18c:	892e                	mv	s2,a1
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    8002f18e:	cc3a                	sw	a4,24(sp)
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    8002f190:	4d58                	lw	a4,28(a0)
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22402
{
    8002f192:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:22410
    state[level++] = 0;
    8002f194:	02010823          	sb	zero,48(sp)
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    8002f198:	ce3a                	sw	a4,28(sp)
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    8002f19a:	7118                	ld	a4,32(a0)
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22407
    int c, tok_len, bits = 0;
    8002f19c:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:22413
    last_tok = 0;
    8002f19e:	4c81                	li	s9,0
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    8002f1a0:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    8002f1a2:	4538                	lw	a4,72(a0)
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22410
    state[level++] = 0;
    8002f1a4:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:22415
        switch(s->token.val) {
    8002f1a6:	02f00b13          	li	s6,47
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    8002f1aa:	d03a                	sw	a4,32(sp)
is_regexp_allowed():
quickjs-nuttx/quickjs.c:22374
    switch (tok) {
    8002f1ac:	05d00a13          	li	s4,93
    8002f1b0:	02900b93          	li	s7,41
    8002f1b4:	4a85                	li	s5,1
    8002f1b6:	00065d17          	auipc	s10,0x65
    8002f1ba:	aa2d3d03          	ld	s10,-1374(s10) # 80093c58 <_erodata+0xe6>
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22435
                free_token(s, &s->token);
    8002f1be:	01850d93          	addi	s11,a0,24
quickjs-nuttx/quickjs.c:22415
        switch(s->token.val) {
    8002f1c2:	0189a403          	lw	s0,24(s3)
    8002f1c6:	1b640863          	beq	s0,s6,8002f376 <js_parse_skip_parens_token+0x20a>
    8002f1ca:	0c8b4563          	blt	s6,s0,8002f294 <js_parse_skip_parens_token+0x128>
    8002f1ce:	fa700613          	li	a2,-89
    8002f1d2:	18c40963          	beq	s0,a2,8002f364 <js_parse_skip_parens_token+0x1f8>
    8002f1d6:	fa800613          	li	a2,-88
    8002f1da:	06c45963          	bge	s0,a2,8002f24c <js_parse_skip_parens_token+0xe0>
    8002f1de:	f8200613          	li	a2,-126
    8002f1e2:	16c40163          	beq	s0,a2,8002f344 <js_parse_skip_parens_token+0x1d8>
    8002f1e6:	f8600593          	li	a1,-122
    8002f1ea:	4609                	li	a2,2
    8002f1ec:	18b40663          	beq	s0,a1,8002f378 <js_parse_skip_parens_token+0x20c>
quickjs-nuttx/quickjs.c:22489
        if (s->token.val == TOK_IDENT &&
    8002f1f0:	0189ac83          	lw	s9,24(s3)
    8002f1f4:	f8300613          	li	a2,-125
    8002f1f8:	02cc9063          	bne	s9,a2,8002f218 <js_parse_skip_parens_token+0xac>
quickjs-nuttx/quickjs.c:22490 (discriminator 1)
            (token_is_pseudo_keyword(s, JS_ATOM_of) ||
    8002f1fc:	04400593          	li	a1,68
    8002f200:	854e                	mv	a0,s3
    8002f202:	c6dd80ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:22489 (discriminator 1)
        if (s->token.val == TOK_IDENT &&
    8002f206:	1a051b63          	bnez	a0,8002f3bc <js_parse_skip_parens_token+0x250>
quickjs-nuttx/quickjs.c:22491
             token_is_pseudo_keyword(s, JS_ATOM_yield))) {
    8002f20a:	02d00593          	li	a1,45
    8002f20e:	854e                	mv	a0,s3
    8002f210:	c5fd80ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:22490
            (token_is_pseudo_keyword(s, JS_ATOM_of) ||
    8002f214:	1a051463          	bnez	a0,8002f3bc <js_parse_skip_parens_token+0x250>
quickjs-nuttx/quickjs.c:22496
        if (next_token(s)) {
    8002f218:	854e                	mv	a0,s3
    8002f21a:	b6cff0ef          	jal	ra,8002e586 <next_token>
    8002f21e:	e17d                	bnez	a0,8002f304 <js_parse_skip_parens_token+0x198>
quickjs-nuttx/quickjs.c:22500
        if (level <= 1) {
    8002f220:	fb8ae1e3          	bltu	s5,s8,8002f1c2 <js_parse_skip_parens_token+0x56>
quickjs-nuttx/quickjs.c:22502
            if (token_is_pseudo_keyword(s, JS_ATOM_of))
    8002f224:	04400593          	li	a1,68
    8002f228:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:22501
            tok = s->token.val;
    8002f22a:	0189a403          	lw	s0,24(s3)
quickjs-nuttx/quickjs.c:22502
            if (token_is_pseudo_keyword(s, JS_ATOM_of))
    8002f22e:	c41d80ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    8002f232:	c119                	beqz	a0,8002f238 <js_parse_skip_parens_token+0xcc>
quickjs-nuttx/quickjs.c:22503
                tok = TOK_OF;
    8002f234:	fdb00413          	li	s0,-37
quickjs-nuttx/quickjs.c:22504
            if (no_line_terminator && s->last_line_num != s->token.line_num)
    8002f238:	67a2                	ld	a5,8(sp)
    8002f23a:	c39d                	beqz	a5,8002f260 <js_parse_skip_parens_token+0xf4>
quickjs-nuttx/quickjs.c:22504 (discriminator 1)
    8002f23c:	0089a683          	lw	a3,8(s3)
    8002f240:	01c9a703          	lw	a4,28(s3)
    8002f244:	00e68e63          	beq	a3,a4,8002f260 <js_parse_skip_parens_token+0xf4>
quickjs-nuttx/quickjs.c:22505
                tok = '\n';
    8002f248:	4429                	li	s0,10
    8002f24a:	a819                	j	8002f260 <js_parse_skip_parens_token+0xf4>
quickjs-nuttx/quickjs.c:22415
        switch(s->token.val) {
    8002f24c:	02800693          	li	a3,40
    8002f250:	0ad40d63          	beq	s0,a3,8002f30a <js_parse_skip_parens_token+0x19e>
    8002f254:	0d740663          	beq	s0,s7,8002f320 <js_parse_skip_parens_token+0x1b4>
    8002f258:	fac00693          	li	a3,-84
    8002f25c:	f8d41ae3          	bne	s0,a3,8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22510
    if (pbits) {
    8002f260:	00090463          	beqz	s2,8002f268 <js_parse_skip_parens_token+0xfc>
quickjs-nuttx/quickjs.c:22511
        *pbits = bits;
    8002f264:	00992023          	sw	s1,0(s2) # ffffffffffffe000 <_ebss+0xffffffff7fefce9a>
quickjs-nuttx/quickjs.c:22513
    if (js_parse_seek_token(s, &pos))
    8002f268:	082c                	addi	a1,sp,24
    8002f26a:	854e                	mv	a0,s3
    8002f26c:	b49ff0ef          	jal	ra,8002edb4 <js_parse_seek_token>
    8002f270:	c111                	beqz	a0,8002f274 <js_parse_skip_parens_token+0x108>
quickjs-nuttx/quickjs.c:22514
        return -1;
    8002f272:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:22516
}
    8002f274:	60fa                	ld	ra,408(sp)
    8002f276:	8522                	mv	a0,s0
    8002f278:	645a                	ld	s0,400(sp)
    8002f27a:	64ba                	ld	s1,392(sp)
    8002f27c:	691a                	ld	s2,384(sp)
    8002f27e:	79f6                	ld	s3,376(sp)
    8002f280:	7a56                	ld	s4,368(sp)
    8002f282:	7ab6                	ld	s5,360(sp)
    8002f284:	7b16                	ld	s6,352(sp)
    8002f286:	6bf6                	ld	s7,344(sp)
    8002f288:	6c56                	ld	s8,336(sp)
    8002f28a:	6cb6                	ld	s9,328(sp)
    8002f28c:	6d16                	ld	s10,320(sp)
    8002f28e:	7df2                	ld	s11,312(sp)
    8002f290:	611d                	addi	sp,sp,416
    8002f292:	8082                	ret
quickjs-nuttx/quickjs.c:22415
        switch(s->token.val) {
    8002f294:	09440f63          	beq	s0,s4,8002f332 <js_parse_skip_parens_token+0x1c6>
    8002f298:	028a4463          	blt	s4,s0,8002f2c0 <js_parse_skip_parens_token+0x154>
    8002f29c:	03d00693          	li	a3,61
    8002f2a0:	0cd40863          	beq	s0,a3,8002f370 <js_parse_skip_parens_token+0x204>
    8002f2a4:	05b00693          	li	a3,91
    8002f2a8:	06d40163          	beq	s0,a3,8002f30a <js_parse_skip_parens_token+0x19e>
    8002f2ac:	03b00693          	li	a3,59
    8002f2b0:	f4d410e3          	bne	s0,a3,8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22460
            if (level == 2) {
    8002f2b4:	4689                	li	a3,2
    8002f2b6:	f2dc1de3          	bne	s8,a3,8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22461
                bits |= SKIP_HAS_SEMI;
    8002f2ba:	0014e493          	ori	s1,s1,1
    8002f2be:	bf0d                	j	8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22415
        switch(s->token.val) {
    8002f2c0:	07b00693          	li	a3,123
    8002f2c4:	04d40363          	beq	s0,a3,8002f30a <js_parse_skip_parens_token+0x19e>
    8002f2c8:	07d00613          	li	a2,125
    8002f2cc:	f2c412e3          	bne	s0,a2,8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22432
            c = state[--level];
    8002f2d0:	1c7d                	addi	s8,s8,-1
    8002f2d2:	1a1c                	addi	a5,sp,304
    8002f2d4:	01878633          	add	a2,a5,s8
    8002f2d8:	f0064603          	lbu	a2,-256(a2)
quickjs-nuttx/quickjs.c:22433
            if (c == '`') {
    8002f2dc:	06000593          	li	a1,96
    8002f2e0:	04b61663          	bne	a2,a1,8002f32c <js_parse_skip_parens_token+0x1c0>
quickjs-nuttx/quickjs.c:22435
                free_token(s, &s->token);
    8002f2e4:	85ee                	mv	a1,s11
    8002f2e6:	854e                	mv	a0,s3
    8002f2e8:	8b1dd0ef          	jal	ra,8000cb98 <free_token>
quickjs-nuttx/quickjs.c:22439
                s->last_line_num = s->token.line_num;
    8002f2ec:	01c9a683          	lw	a3,28(s3)
quickjs-nuttx/quickjs.c:22440
                if (js_parse_template_part(s, s->buf_ptr))
    8002f2f0:	0589b583          	ld	a1,88(s3)
quickjs-nuttx/quickjs.c:22438
                s->got_lf = FALSE;
    8002f2f4:	0409a423          	sw	zero,72(s3)
quickjs-nuttx/quickjs.c:22439
                s->last_line_num = s->token.line_num;
    8002f2f8:	00d9a423          	sw	a3,8(s3)
quickjs-nuttx/quickjs.c:22440
                if (js_parse_template_part(s, s->buf_ptr))
    8002f2fc:	854e                	mv	a0,s3
    8002f2fe:	95eff0ef          	jal	ra,8002e45c <js_parse_template_part>
    8002f302:	c129                	beqz	a0,8002f344 <js_parse_skip_parens_token+0x1d8>
quickjs-nuttx/quickjs.c:22406
    int last_tok, tok = TOK_EOF;
    8002f304:	fac00413          	li	s0,-84
    8002f308:	bfa1                	j	8002f260 <js_parse_skip_parens_token+0xf4>
quickjs-nuttx/quickjs.c:22419
            if (level >= sizeof(state))
    8002f30a:	0ff00693          	li	a3,255
    8002f30e:	ff86ebe3          	bltu	a3,s8,8002f304 <js_parse_skip_parens_token+0x198>
quickjs-nuttx/quickjs.c:22421
            state[level++] = s->token.val;
    8002f312:	1a1c                	addi	a5,sp,304
    8002f314:	018786b3          	add	a3,a5,s8
    8002f318:	f0868023          	sb	s0,-256(a3)
quickjs-nuttx/quickjs.c:22454
                state[level++] = '`';
    8002f31c:	0c05                	addi	s8,s8,1
    8002f31e:	bdc9                	j	8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22424
            if (state[--level] != '(')
    8002f320:	1c7d                	addi	s8,s8,-1
    8002f322:	1a1c                	addi	a5,sp,304
    8002f324:	01878633          	add	a2,a5,s8
    8002f328:	f0064603          	lbu	a2,-256(a2)
quickjs-nuttx/quickjs.c:22443
            } else if (c != '{') {
    8002f32c:	ecd602e3          	beq	a2,a3,8002f1f0 <js_parse_skip_parens_token+0x84>
    8002f330:	bfd1                	j	8002f304 <js_parse_skip_parens_token+0x198>
quickjs-nuttx/quickjs.c:22428
            if (state[--level] != '[')
    8002f332:	1c7d                	addi	s8,s8,-1
    8002f334:	1a1c                	addi	a5,sp,304
    8002f336:	018786b3          	add	a3,a5,s8
    8002f33a:	f006c603          	lbu	a2,-256(a3)
    8002f33e:	05b00693          	li	a3,91
    8002f342:	b7ed                	j	8002f32c <js_parse_skip_parens_token+0x1c0>
quickjs-nuttx/quickjs.c:22449
            if (s->token.u.str.sep != '`') {
    8002f344:	0389a603          	lw	a2,56(s3)
    8002f348:	06000693          	li	a3,96
    8002f34c:	ead602e3          	beq	a2,a3,8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22452
                if (level >= sizeof(state))
    8002f350:	0ff00613          	li	a2,255
    8002f354:	fb8668e3          	bltu	a2,s8,8002f304 <js_parse_skip_parens_token+0x198>
quickjs-nuttx/quickjs.c:22454
                state[level++] = '`';
    8002f358:	1a1c                	addi	a5,sp,304
    8002f35a:	01878633          	add	a2,a5,s8
    8002f35e:	f0d60023          	sb	a3,-256(a2)
    8002f362:	bf6d                	j	8002f31c <js_parse_skip_parens_token+0x1b0>
quickjs-nuttx/quickjs.c:22465
            if (level == 2) {
    8002f364:	4689                	li	a3,2
    8002f366:	e8dc15e3          	bne	s8,a3,8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22466
                bits |= SKIP_HAS_ELLIPSIS;
    8002f36a:	0024e493          	ori	s1,s1,2
    8002f36e:	b549                	j	8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22470
            bits |= SKIP_HAS_ASSIGNMENT;
    8002f370:	0044e493          	ori	s1,s1,4
quickjs-nuttx/quickjs.c:22471
            break;
    8002f374:	bdb5                	j	8002f1f0 <js_parse_skip_parens_token+0x84>
quickjs-nuttx/quickjs.c:22477
            tok_len = 1;
    8002f376:	4605                	li	a2,1
is_regexp_allowed():
quickjs-nuttx/quickjs.c:22374
    switch (tok) {
    8002f378:	fb500793          	li	a5,-75
    8002f37c:	02fcd963          	bge	s9,a5,8002f3ae <js_parse_skip_parens_token+0x242>
    8002f380:	f8000793          	li	a5,-128
    8002f384:	00fcca63          	blt	s9,a5,8002f398 <js_parse_skip_parens_token+0x22c>
    8002f388:	080c869b          	addiw	a3,s9,128
    8002f38c:	00da96b3          	sll	a3,s5,a3
    8002f390:	01a6f6b3          	and	a3,a3,s10
    8002f394:	e4069ee3          	bnez	a3,8002f1f0 <js_parse_skip_parens_token+0x84>
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22480
                s->buf_ptr -= tok_len;
    8002f398:	0589b683          	ld	a3,88(s3)
quickjs-nuttx/quickjs.c:22481
                if (js_parse_regexp(s)) {
    8002f39c:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:22480
                s->buf_ptr -= tok_len;
    8002f39e:	8e91                	sub	a3,a3,a2
    8002f3a0:	04d9bc23          	sd	a3,88(s3)
quickjs-nuttx/quickjs.c:22481
                if (js_parse_regexp(s)) {
    8002f3a4:	c27ff0ef          	jal	ra,8002efca <js_parse_regexp>
    8002f3a8:	e40504e3          	beqz	a0,8002f1f0 <js_parse_skip_parens_token+0x84>
    8002f3ac:	bfa1                	j	8002f304 <js_parse_skip_parens_token+0x198>
is_regexp_allowed():
quickjs-nuttx/quickjs.c:22374
    switch (tok) {
    8002f3ae:	fdfcf593          	andi	a1,s9,-33
    8002f3b2:	e3458fe3          	beq	a1,s4,8002f1f0 <js_parse_skip_parens_token+0x84>
    8002f3b6:	ff7c91e3          	bne	s9,s7,8002f398 <js_parse_skip_parens_token+0x22c>
    8002f3ba:	bd1d                	j	8002f1f0 <js_parse_skip_parens_token+0x84>
js_parse_skip_parens_token():
quickjs-nuttx/quickjs.c:22492
            last_tok = TOK_OF;
    8002f3bc:	fdb00c93          	li	s9,-37
    8002f3c0:	bda1                	j	8002f218 <js_parse_skip_parens_token+0xac>

000000008002f3c2 <js_parse_expect_semi>:
js_parse_expect_semi():
quickjs-nuttx/quickjs.c:20129
    if (s->token.val != ';') {
    8002f3c2:	4d18                	lw	a4,24(a0)
    8002f3c4:	03b00693          	li	a3,59
    8002f3c8:	02d70463          	beq	a4,a3,8002f3f0 <js_parse_expect_semi+0x2e>
quickjs-nuttx/quickjs.c:20131
        if (s->token.val == TOK_EOF || s->token.val == '}' || s->got_lf) {
    8002f3cc:	fac00693          	li	a3,-84
    8002f3d0:	02d70263          	beq	a4,a3,8002f3f4 <js_parse_expect_semi+0x32>
quickjs-nuttx/quickjs.c:20131 (discriminator 1)
    8002f3d4:	07d00693          	li	a3,125
    8002f3d8:	00d70e63          	beq	a4,a3,8002f3f4 <js_parse_expect_semi+0x32>
quickjs-nuttx/quickjs.c:20131 (discriminator 2)
    8002f3dc:	453c                	lw	a5,72(a0)
    8002f3de:	eb99                	bnez	a5,8002f3f4 <js_parse_expect_semi+0x32>
quickjs-nuttx/quickjs.c:20134
        return js_parse_error(s, "expecting '%c'", ';');
    8002f3e0:	03b00613          	li	a2,59
    8002f3e4:	0003d597          	auipc	a1,0x3d
    8002f3e8:	90c58593          	addi	a1,a1,-1780 # 8006bcf0 <qjsc_repl+0x6740>
    8002f3ec:	887fe06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:20136
    return next_token(s);
    8002f3f0:	996ff06f          	j	8002e586 <next_token>
quickjs-nuttx/quickjs.c:20137
}
    8002f3f4:	4501                	li	a0,0
    8002f3f6:	8082                	ret

000000008002f3f8 <js_parse_check_duplicate_parameter>:
js_parse_check_duplicate_parameter():
quickjs-nuttx/quickjs.c:23818
    JSFunctionDef *fd = s->cur_func;
    8002f3f8:	7538                	ld	a4,104(a0)
quickjs-nuttx/quickjs.c:23820
    for (i = 0; i < fd->arg_count; i++) {
    8002f3fa:	4781                	li	a5,0
    8002f3fc:	0ac72603          	lw	a2,172(a4)
quickjs-nuttx/quickjs.c:23820 (discriminator 1)
    8002f400:	0007869b          	sext.w	a3,a5
    8002f404:	00c6cb63          	blt	a3,a2,8002f41a <js_parse_check_duplicate_parameter+0x22>
quickjs-nuttx/quickjs.c:23824
    for (i = 0; i < fd->var_count; i++) {
    8002f408:	09c72603          	lw	a2,156(a4)
    8002f40c:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:23824 (discriminator 1)
    8002f40e:	0007869b          	sext.w	a3,a5
    8002f412:	02c6c263          	blt	a3,a2,8002f436 <js_parse_check_duplicate_parameter+0x3e>
quickjs-nuttx/quickjs.c:23832
}
    8002f416:	4501                	li	a0,0
    8002f418:	8082                	ret
quickjs-nuttx/quickjs.c:23821
        if (fd->args[i].var_name == name)
    8002f41a:	7354                	ld	a3,160(a4)
    8002f41c:	00479813          	slli	a6,a5,0x4
    8002f420:	0785                	addi	a5,a5,1
    8002f422:	96c2                	add	a3,a3,a6
    8002f424:	4294                	lw	a3,0(a3)
    8002f426:	fcb69de3          	bne	a3,a1,8002f400 <js_parse_check_duplicate_parameter+0x8>
quickjs-nuttx/quickjs.c:23831
    return js_parse_error(s, "duplicate parameter names not allowed in this context");
    8002f42a:	0003d597          	auipc	a1,0x3d
    8002f42e:	91e58593          	addi	a1,a1,-1762 # 8006bd48 <qjsc_repl+0x6798>
    8002f432:	841fe06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:23825
        if (fd->vars[i].var_name == name)
    8002f436:	6b54                	ld	a3,144(a4)
    8002f438:	00479813          	slli	a6,a5,0x4
    8002f43c:	0785                	addi	a5,a5,1
    8002f43e:	96c2                	add	a3,a3,a6
    8002f440:	4294                	lw	a3,0(a3)
    8002f442:	fcb696e3          	bne	a3,a1,8002f40e <js_parse_check_duplicate_parameter+0x16>
    8002f446:	b7d5                	j	8002f42a <js_parse_check_duplicate_parameter+0x32>

000000008002f448 <get_lvalue>:
get_lvalue():
quickjs-nuttx/quickjs.c:23497
{
    8002f448:	7119                	addi	sp,sp,-128
    8002f44a:	f8a2                	sd	s0,112(sp)
    8002f44c:	f0ca                	sd	s2,96(sp)
    8002f44e:	ecce                	sd	s3,88(sp)
    8002f450:	e0da                	sd	s6,64(sp)
    8002f452:	f862                	sd	s8,48(sp)
    8002f454:	f466                	sd	s9,40(sp)
    8002f456:	f06a                	sd	s10,32(sp)
    8002f458:	ec6e                	sd	s11,24(sp)
    8002f45a:	fc86                	sd	ra,120(sp)
    8002f45c:	f4a6                	sd	s1,104(sp)
    8002f45e:	e8d2                	sd	s4,80(sp)
    8002f460:	e4d6                	sd	s5,72(sp)
    8002f462:	fc5e                	sd	s7,56(sp)
quickjs-nuttx/quickjs.c:23503
    fd = s->cur_func;
    8002f464:	06853b83          	ld	s7,104(a0)
quickjs-nuttx/quickjs.c:23497
{
    8002f468:	842a                	mv	s0,a0
    8002f46a:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:23508
    switch(opcode = get_prev_opcode(fd)) {
    8002f46c:	855e                	mv	a0,s7
quickjs-nuttx/quickjs.c:23497
{
    8002f46e:	8d2e                	mv	s10,a1
    8002f470:	8cb2                	mv	s9,a2
    8002f472:	8c36                	mv	s8,a3
    8002f474:	8b3e                	mv	s6,a5
    8002f476:	8dc2                	mv	s11,a6
    8002f478:	89c6                	mv	s3,a7
quickjs-nuttx/quickjs.c:23508
    switch(opcode = get_prev_opcode(fd)) {
    8002f47a:	aafd80ef          	jal	ra,80007f28 <get_prev_opcode>
    8002f47e:	04a00713          	li	a4,74
    8002f482:	892a                	mv	s2,a0
    8002f484:	18e50563          	beq	a0,a4,8002f60e <get_lvalue+0x1c6>
    8002f488:	06a74a63          	blt	a4,a0,8002f4fc <get_lvalue+0xb4>
    8002f48c:	04100713          	li	a4,65
    8002f490:	14e50863          	beq	a0,a4,8002f5e0 <get_lvalue+0x198>
    8002f494:	04700713          	li	a4,71
    8002f498:	16e50e63          	beq	a0,a4,8002f614 <get_lvalue+0x1cc>
quickjs-nuttx/quickjs.c:23537
        if (tok == TOK_FOR) {
    8002f49c:	fbd00793          	li	a5,-67
quickjs-nuttx/quickjs.c:23538
            return js_parse_error(s, "invalid for in/of left hand-side");
    8002f4a0:	0003d597          	auipc	a1,0x3d
    8002f4a4:	90058593          	addi	a1,a1,-1792 # 8006bda0 <qjsc_repl+0x67f0>
quickjs-nuttx/quickjs.c:23537
        if (tok == TOK_FOR) {
    8002f4a8:	02f98963          	beq	s3,a5,8002f4da <get_lvalue+0x92>
quickjs-nuttx/quickjs.c:23539
        } else if (tok == TOK_INC || tok == TOK_DEC) {
    8002f4ac:	06b9879b          	addiw	a5,s3,107
    8002f4b0:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:23540
            return js_parse_error(s, "invalid increment/decrement operand");
    8002f4b2:	0003d597          	auipc	a1,0x3d
    8002f4b6:	91658593          	addi	a1,a1,-1770 # 8006bdc8 <qjsc_repl+0x6818>
quickjs-nuttx/quickjs.c:23539
        } else if (tok == TOK_INC || tok == TOK_DEC) {
    8002f4ba:	02f77063          	bgeu	a4,a5,8002f4da <get_lvalue+0x92>
quickjs-nuttx/quickjs.c:23541
        } else if (tok == '[' || tok == '{') {
    8002f4be:	fdf9f993          	andi	s3,s3,-33
    8002f4c2:	05b00793          	li	a5,91
quickjs-nuttx/quickjs.c:23542
            return js_parse_error(s, "invalid destructuring target");
    8002f4c6:	0003d597          	auipc	a1,0x3d
    8002f4ca:	92a58593          	addi	a1,a1,-1750 # 8006bdf0 <qjsc_repl+0x6840>
quickjs-nuttx/quickjs.c:23541
        } else if (tok == '[' || tok == '{') {
    8002f4ce:	00f98663          	beq	s3,a5,8002f4da <get_lvalue+0x92>
quickjs-nuttx/quickjs.c:23544
            return js_parse_error(s, "invalid assignment left-hand side");
    8002f4d2:	0003d597          	auipc	a1,0x3d
    8002f4d6:	93e58593          	addi	a1,a1,-1730 # 8006be10 <qjsc_repl+0x6860>
    8002f4da:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23616
}
    8002f4dc:	7446                	ld	s0,112(sp)
    8002f4de:	70e6                	ld	ra,120(sp)
    8002f4e0:	74a6                	ld	s1,104(sp)
    8002f4e2:	7906                	ld	s2,96(sp)
    8002f4e4:	69e6                	ld	s3,88(sp)
    8002f4e6:	6a46                	ld	s4,80(sp)
    8002f4e8:	6aa6                	ld	s5,72(sp)
    8002f4ea:	6b06                	ld	s6,64(sp)
    8002f4ec:	7be2                	ld	s7,56(sp)
    8002f4ee:	7c42                	ld	s8,48(sp)
    8002f4f0:	7ca2                	ld	s9,40(sp)
    8002f4f2:	7d02                	ld	s10,32(sp)
    8002f4f4:	6de2                	ld	s11,24(sp)
    8002f4f6:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:23544
            return js_parse_error(s, "invalid assignment left-hand side");
    8002f4f8:	f7afe06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:23508
    switch(opcode = get_prev_opcode(fd)) {
    8002f4fc:	0ba00713          	li	a4,186
    8002f500:	04e50363          	beq	a0,a4,8002f546 <get_lvalue+0xfe>
    8002f504:	0c100713          	li	a4,193
    8002f508:	f8e51ae3          	bne	a0,a4,8002f49c <get_lvalue+0x54>
quickjs-nuttx/quickjs.c:23525
        name = get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    8002f50c:	160ba683          	lw	a3,352(s7)
    8002f510:	130bb703          	ld	a4,304(s7)
quickjs-nuttx/quickjs.c:23527
        depth = 1;
    8002f514:	4a85                	li	s5,1
get_u32():
quickjs-nuttx/cutils.h:170
    8002f516:	9736                	add	a4,a4,a3
    8002f518:	00274683          	lbu	a3,2(a4)
    8002f51c:	00174483          	lbu	s1,1(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002f520:	00674a03          	lbu	s4,6(a4)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002f524:	06a2                	slli	a3,a3,0x8
    8002f526:	8ec5                	or	a3,a3,s1
    8002f528:	00374483          	lbu	s1,3(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002f52c:	0a22                	slli	s4,s4,0x8
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002f52e:	04c2                	slli	s1,s1,0x10
    8002f530:	8ec5                	or	a3,a3,s1
    8002f532:	00474483          	lbu	s1,4(a4)
    8002f536:	04e2                	slli	s1,s1,0x18
    8002f538:	8cd5                	or	s1,s1,a3
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002f53a:	00574683          	lbu	a3,5(a4)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002f53e:	2481                	sext.w	s1,s1
get_lvalue():
quickjs-nuttx/quickjs.c:23526
        scope = get_u16(fd->byte_code.buf + fd->last_opcode_pos + 5);
    8002f540:	00da6a33          	or	s4,s4,a3
quickjs-nuttx/quickjs.c:23528
        break;
    8002f544:	a0ad                	j	8002f5ae <get_lvalue+0x166>
quickjs-nuttx/quickjs.c:23510
        name = get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    8002f546:	160ba683          	lw	a3,352(s7)
    8002f54a:	130bb703          	ld	a4,304(s7)
get_u32():
quickjs-nuttx/cutils.h:170
    8002f54e:	9736                	add	a4,a4,a3
    8002f550:	00274683          	lbu	a3,2(a4)
    8002f554:	00174483          	lbu	s1,1(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002f558:	00674a03          	lbu	s4,6(a4)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002f55c:	06a2                	slli	a3,a3,0x8
    8002f55e:	8ec5                	or	a3,a3,s1
    8002f560:	00374483          	lbu	s1,3(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002f564:	0a22                	slli	s4,s4,0x8
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002f566:	04c2                	slli	s1,s1,0x10
    8002f568:	8ec5                	or	a3,a3,s1
    8002f56a:	00474483          	lbu	s1,4(a4)
    8002f56e:	04e2                	slli	s1,s1,0x18
    8002f570:	8cd5                	or	s1,s1,a3
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002f572:	00574683          	lbu	a3,5(a4)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002f576:	2481                	sext.w	s1,s1
get_lvalue():
quickjs-nuttx/quickjs.c:23512
        if ((name == JS_ATOM_arguments || name == JS_ATOM_eval) &&
    8002f578:	04e00713          	li	a4,78
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8002f57c:	00da6a33          	or	s4,s4,a3
get_lvalue():
quickjs-nuttx/quickjs.c:23512
    8002f580:	00e48663          	beq	s1,a4,8002f58c <get_lvalue+0x144>
quickjs-nuttx/quickjs.c:23512 (discriminator 2)
    8002f584:	03b00713          	li	a4,59
    8002f588:	00e49a63          	bne	s1,a4,8002f59c <get_lvalue+0x154>
quickjs-nuttx/quickjs.c:23512 (discriminator 3)
    8002f58c:	086bc703          	lbu	a4,134(s7)
quickjs-nuttx/quickjs.c:23514 (discriminator 3)
            return js_parse_error(s, "invalid lvalue in strict mode");
    8002f590:	0003c597          	auipc	a1,0x3c
    8002f594:	7f058593          	addi	a1,a1,2032 # 8006bd80 <qjsc_repl+0x67d0>
quickjs-nuttx/quickjs.c:23512 (discriminator 3)
        if ((name == JS_ATOM_arguments || name == JS_ATOM_eval) &&
    8002f598:	8b05                	andi	a4,a4,1
    8002f59a:	f321                	bnez	a4,8002f4da <get_lvalue+0x92>
quickjs-nuttx/quickjs.c:23516
        if (name == JS_ATOM_this || name == JS_ATOM_new_target)
    8002f59c:	4721                	li	a4,8
    8002f59e:	eee48fe3          	beq	s1,a4,8002f49c <get_lvalue+0x54>
quickjs-nuttx/quickjs.c:23516 (discriminator 1)
    8002f5a2:	07200713          	li	a4,114
    8002f5a6:	eee48be3          	beq	s1,a4,8002f49c <get_lvalue+0x54>
quickjs-nuttx/quickjs.c:23511
        scope = get_u16(fd->byte_code.buf + fd->last_opcode_pos + 5);
    8002f5aa:	2a01                	sext.w	s4,s4
quickjs-nuttx/quickjs.c:23518
        depth = 2;  /* will generate OP_get_ref_value */
    8002f5ac:	4a89                	li	s5,2
quickjs-nuttx/quickjs.c:23548
    fd->byte_code.size = fd->last_opcode_pos;
    8002f5ae:	160ba703          	lw	a4,352(s7)
    8002f5b2:	12ebbc23          	sd	a4,312(s7)
quickjs-nuttx/quickjs.c:23549
    fd->last_opcode_pos = -1;
    8002f5b6:	577d                	li	a4,-1
    8002f5b8:	16eba023          	sw	a4,352(s7)
quickjs-nuttx/quickjs.c:23553
        switch(opcode) {
    8002f5bc:	04a00713          	li	a4,74
quickjs-nuttx/quickjs.c:23551
    if (keep) {
    8002f5c0:	140d8c63          	beqz	s11,8002f718 <get_lvalue+0x2d0>
quickjs-nuttx/quickjs.c:23553
        switch(opcode) {
    8002f5c4:	12e90e63          	beq	s2,a4,8002f700 <get_lvalue+0x2b8>
    8002f5c8:	05274963          	blt	a4,s2,8002f61a <get_lvalue+0x1d2>
    8002f5cc:	04100793          	li	a5,65
    8002f5d0:	0ef90e63          	beq	s2,a5,8002f6cc <get_lvalue+0x284>
    8002f5d4:	04700793          	li	a5,71
    8002f5d8:	10f90563          	beq	s2,a5,8002f6e2 <get_lvalue+0x29a>
quickjs-nuttx/quickjs.c:23585
            abort();
    8002f5dc:	5a6330ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:23521
        name = get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    8002f5e0:	160ba683          	lw	a3,352(s7)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002f5e4:	130bb703          	ld	a4,304(s7)
get_lvalue():
quickjs-nuttx/quickjs.c:23522
        depth = 1;
    8002f5e8:	4a85                	li	s5,1
get_u32():
quickjs-nuttx/cutils.h:170
    8002f5ea:	9736                	add	a4,a4,a3
    8002f5ec:	00274683          	lbu	a3,2(a4)
    8002f5f0:	00174483          	lbu	s1,1(a4)
    8002f5f4:	06a2                	slli	a3,a3,0x8
    8002f5f6:	8ec5                	or	a3,a3,s1
    8002f5f8:	00374483          	lbu	s1,3(a4)
    8002f5fc:	04c2                	slli	s1,s1,0x10
    8002f5fe:	8ec5                	or	a3,a3,s1
    8002f600:	00474483          	lbu	s1,4(a4)
    8002f604:	04e2                	slli	s1,s1,0x18
    8002f606:	8cd5                	or	s1,s1,a3
    8002f608:	2481                	sext.w	s1,s1
get_lvalue():
quickjs-nuttx/quickjs.c:23508
    switch(opcode = get_prev_opcode(fd)) {
    8002f60a:	4a01                	li	s4,0
    8002f60c:	b74d                	j	8002f5ae <get_lvalue+0x166>
quickjs-nuttx/quickjs.c:23505
    name = JS_ATOM_NULL;
    8002f60e:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:23533
        depth = 3;
    8002f610:	4a8d                	li	s5,3
    8002f612:	bfe5                	j	8002f60a <get_lvalue+0x1c2>
quickjs-nuttx/quickjs.c:23508
    switch(opcode = get_prev_opcode(fd)) {
    8002f614:	4481                	li	s1,0
    8002f616:	4a89                	li	s5,2
    8002f618:	bfcd                	j	8002f60a <get_lvalue+0x1c2>
    8002f61a:	030a1d93          	slli	s11,s4,0x30
quickjs-nuttx/quickjs.c:23553
        switch(opcode) {
    8002f61e:	0ba00713          	li	a4,186
    8002f622:	030ddd93          	srli	s11,s11,0x30
    8002f626:	02e90463          	beq	s2,a4,8002f64e <get_lvalue+0x206>
    8002f62a:	0c100793          	li	a5,193
    8002f62e:	faf917e3          	bne	s2,a5,8002f5dc <get_lvalue+0x194>
quickjs-nuttx/quickjs.c:23569
            emit_op(s, OP_scope_get_private_field2);
    8002f632:	8522                	mv	a0,s0
    8002f634:	0c200593          	li	a1,194
    8002f638:	abfd90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23570
            emit_atom(s, name);
    8002f63c:	85a6                	mv	a1,s1
    8002f63e:	8522                	mv	a0,s0
    8002f640:	aebdb0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23571
            emit_u16(s, scope);
    8002f644:	85ee                	mv	a1,s11
    8002f646:	8522                	mv	a0,s0
    8002f648:	97dd90ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23572
            break;
    8002f64c:	a849                	j	8002f6de <get_lvalue+0x296>
quickjs-nuttx/quickjs.c:23555
            label = new_label(s);
    8002f64e:	8522                	mv	a0,s0
    8002f650:	91ded0ef          	jal	ra,8001cf6c <new_label>
    8002f654:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:23556
            emit_op(s, OP_scope_make_ref);
    8002f656:	0bd00593          	li	a1,189
    8002f65a:	8522                	mv	a0,s0
    8002f65c:	a9bd90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23557
            emit_atom(s, name);
    8002f660:	85a6                	mv	a1,s1
    8002f662:	8522                	mv	a0,s0
    8002f664:	ac7db0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23558
            emit_u32(s, label);
    8002f668:	0009859b          	sext.w	a1,s3
    8002f66c:	8522                	mv	a0,s0
    8002f66e:	c1fd90ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23559
            emit_u16(s, scope);
    8002f672:	85ee                	mv	a1,s11
    8002f674:	8522                	mv	a0,s0
    8002f676:	94fd90ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23560
            update_label(fd, label, 1);
    8002f67a:	85ce                	mv	a1,s3
    8002f67c:	4605                	li	a2,1
    8002f67e:	855e                	mv	a0,s7
    8002f680:	8d0da0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:23561
            emit_op(s, OP_get_ref_value);
    8002f684:	03c00593          	li	a1,60
    8002f688:	8522                	mv	a0,s0
    8002f68a:	a6dd90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23596
            opcode = OP_get_ref_value;
    8002f68e:	03c00913          	li	s2,60
quickjs-nuttx/quickjs.c:23607
    *popcode = opcode;
    8002f692:	012d2023          	sw	s2,0(s10)
quickjs-nuttx/quickjs.c:23612
    *plabel = label;
    8002f696:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:23608
    *pscope = scope;
    8002f698:	014ca023          	sw	s4,0(s9)
quickjs-nuttx/quickjs.c:23611
    *pname = name;
    8002f69c:	009c2023          	sw	s1,0(s8)
quickjs-nuttx/quickjs.c:23612
    *plabel = label;
    8002f6a0:	0137a023          	sw	s3,0(a5) # 110000 <asinh-0x7fef0000>
quickjs-nuttx/quickjs.c:23613
    if (pdepth)
    8002f6a4:	000b0463          	beqz	s6,8002f6ac <get_lvalue+0x264>
quickjs-nuttx/quickjs.c:23614
        *pdepth = depth;
    8002f6a8:	015b2023          	sw	s5,0(s6)
quickjs-nuttx/quickjs.c:23616
}
    8002f6ac:	70e6                	ld	ra,120(sp)
    8002f6ae:	7446                	ld	s0,112(sp)
    8002f6b0:	74a6                	ld	s1,104(sp)
    8002f6b2:	7906                	ld	s2,96(sp)
    8002f6b4:	69e6                	ld	s3,88(sp)
    8002f6b6:	6a46                	ld	s4,80(sp)
    8002f6b8:	6aa6                	ld	s5,72(sp)
    8002f6ba:	6b06                	ld	s6,64(sp)
    8002f6bc:	7be2                	ld	s7,56(sp)
    8002f6be:	7c42                	ld	s8,48(sp)
    8002f6c0:	7ca2                	ld	s9,40(sp)
    8002f6c2:	7d02                	ld	s10,32(sp)
    8002f6c4:	6de2                	ld	s11,24(sp)
    8002f6c6:	4501                	li	a0,0
    8002f6c8:	6109                	addi	sp,sp,128
    8002f6ca:	8082                	ret
quickjs-nuttx/quickjs.c:23565
            emit_op(s, OP_get_field2);
    8002f6cc:	04200593          	li	a1,66
    8002f6d0:	8522                	mv	a0,s0
    8002f6d2:	a25d90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23566
            emit_atom(s, name);
    8002f6d6:	85a6                	mv	a1,s1
    8002f6d8:	8522                	mv	a0,s0
    8002f6da:	a51db0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23506
    label = -1;
    8002f6de:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:23603
            break;
    8002f6e0:	bf4d                	j	8002f692 <get_lvalue+0x24a>
quickjs-nuttx/quickjs.c:23575
            emit_op(s, OP_to_propkey2);
    8002f6e2:	07300593          	li	a1,115
    8002f6e6:	8522                	mv	a0,s0
    8002f6e8:	a0fd90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23576
            emit_op(s, OP_dup2);
    8002f6ec:	45cd                	li	a1,19
    8002f6ee:	8522                	mv	a0,s0
    8002f6f0:	a07d90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23577
            emit_op(s, OP_get_array_el);
    8002f6f4:	04700593          	li	a1,71
quickjs-nuttx/quickjs.c:23602
            emit_op(s, OP_to_propkey);
    8002f6f8:	8522                	mv	a0,s0
    8002f6fa:	9fdd90ef          	jal	ra,800090f6 <emit_op>
    8002f6fe:	b7c5                	j	8002f6de <get_lvalue+0x296>
quickjs-nuttx/quickjs.c:23580
            emit_op(s, OP_to_propkey);
    8002f700:	07200593          	li	a1,114
    8002f704:	8522                	mv	a0,s0
    8002f706:	9f1d90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23581
            emit_op(s, OP_dup3);
    8002f70a:	45d1                	li	a1,20
    8002f70c:	8522                	mv	a0,s0
    8002f70e:	9e9d90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23582
            emit_op(s, OP_get_super_value);
    8002f712:	04a00593          	li	a1,74
    8002f716:	b7cd                	j	8002f6f8 <get_lvalue+0x2b0>
quickjs-nuttx/quickjs.c:23588
        switch(opcode) {
    8002f718:	04e90963          	beq	s2,a4,8002f76a <get_lvalue+0x322>
    8002f71c:	0ba00713          	li	a4,186
    8002f720:	00e90963          	beq	s2,a4,8002f732 <get_lvalue+0x2ea>
    8002f724:	04700793          	li	a5,71
    8002f728:	faf91be3          	bne	s2,a5,8002f6de <get_lvalue+0x296>
quickjs-nuttx/quickjs.c:23599
            emit_op(s, OP_to_propkey2);
    8002f72c:	07300593          	li	a1,115
    8002f730:	b7e1                	j	8002f6f8 <get_lvalue+0x2b0>
quickjs-nuttx/quickjs.c:23590
            label = new_label(s);
    8002f732:	8522                	mv	a0,s0
    8002f734:	839ed0ef          	jal	ra,8001cf6c <new_label>
    8002f738:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:23591
            emit_op(s, OP_scope_make_ref);
    8002f73a:	0bd00593          	li	a1,189
    8002f73e:	8522                	mv	a0,s0
    8002f740:	9b7d90ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23592
            emit_atom(s, name);
    8002f744:	85a6                	mv	a1,s1
    8002f746:	8522                	mv	a0,s0
    8002f748:	9e3db0ef          	jal	ra,8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:23593
            emit_u32(s, label);
    8002f74c:	0009859b          	sext.w	a1,s3
    8002f750:	8522                	mv	a0,s0
    8002f752:	b3bd90ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23594
            emit_u16(s, scope);
    8002f756:	85d2                	mv	a1,s4
    8002f758:	8522                	mv	a0,s0
    8002f75a:	86bd90ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23595
            update_label(fd, label, 1);
    8002f75e:	4605                	li	a2,1
    8002f760:	85ce                	mv	a1,s3
    8002f762:	855e                	mv	a0,s7
    8002f764:	fedd90ef          	jal	ra,80009750 <update_label>
    8002f768:	b71d                	j	8002f68e <get_lvalue+0x246>
quickjs-nuttx/quickjs.c:23602
            emit_op(s, OP_to_propkey);
    8002f76a:	07200593          	li	a1,114
    8002f76e:	b769                	j	8002f6f8 <get_lvalue+0x2b0>

000000008002f770 <js_parse_error_reserved_identifier>:
js_parse_error_reserved_identifier():
quickjs-nuttx/quickjs.c:20140
{
    8002f770:	715d                	addi	sp,sp,-80
    8002f772:	e486                	sd	ra,72(sp)
    8002f774:	e0a2                	sd	s0,64(sp)
quickjs-nuttx/quickjs.c:20142
    return js_parse_error(s, "'%s' is a reserved identifier",
    8002f776:	5510                	lw	a2,40(a0)
quickjs-nuttx/quickjs.c:20140
{
    8002f778:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:20142
    return js_parse_error(s, "'%s' is a reserved identifier",
    8002f77a:	6108                	ld	a0,0(a0)
    8002f77c:	858a                	mv	a1,sp
    8002f77e:	c99da0ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    8002f782:	862a                	mv	a2,a0
    8002f784:	0003c597          	auipc	a1,0x3c
    8002f788:	6b458593          	addi	a1,a1,1716 # 8006be38 <qjsc_repl+0x6888>
    8002f78c:	8522                	mv	a0,s0
    8002f78e:	ce4fe0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:20145
}
    8002f792:	60a6                	ld	ra,72(sp)
    8002f794:	6406                	ld	s0,64(sp)
    8002f796:	6161                	addi	sp,sp,80
    8002f798:	8082                	ret

000000008002f79a <js_parse_function_check_names>:
js_parse_function_check_names():
quickjs-nuttx/quickjs.c:33509
    if (fd->js_mode & JS_MODE_STRICT) {
    8002f79a:	0865c703          	lbu	a4,134(a1)
quickjs-nuttx/quickjs.c:33510
        if (!fd->has_simple_parameter_list && fd->has_use_strict) {
    8002f79e:	49b4                	lw	a3,80(a1)
quickjs-nuttx/quickjs.c:33505
{
    8002f7a0:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:33509
    if (fd->js_mode & JS_MODE_STRICT) {
    8002f7a2:	8b05                	andi	a4,a4,1
    8002f7a4:	c345                	beqz	a4,8002f844 <js_parse_function_check_names+0xaa>
quickjs-nuttx/quickjs.c:33510
        if (!fd->has_simple_parameter_list && fd->has_use_strict) {
    8002f7a6:	ea89                	bnez	a3,8002f7b8 <js_parse_function_check_names+0x1e>
quickjs-nuttx/quickjs.c:33510 (discriminator 1)
    8002f7a8:	4db8                	lw	a4,88(a1)
    8002f7aa:	c719                	beqz	a4,8002f7b8 <js_parse_function_check_names+0x1e>
quickjs-nuttx/quickjs.c:33511
            return js_parse_error(s, "\"use strict\" not allowed in function with default or destructuring parameter");
    8002f7ac:	0003c597          	auipc	a1,0x3c
    8002f7b0:	6ac58593          	addi	a1,a1,1708 # 8006be58 <qjsc_repl+0x68a8>
quickjs-nuttx/quickjs.c:33550
    return js_parse_error(s, "duplicate argument names not allowed in this context");
    8002f7b4:	cbefe06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:33513
        if (func_name == JS_ATOM_eval || func_name == JS_ATOM_arguments) {
    8002f7b8:	03b00713          	li	a4,59
    8002f7bc:	04e60f63          	beq	a2,a4,8002f81a <js_parse_function_check_names+0x80>
quickjs-nuttx/quickjs.c:33513 (discriminator 1)
    8002f7c0:	04e00713          	li	a4,78
    8002f7c4:	04e60b63          	beq	a2,a4,8002f81a <js_parse_function_check_names+0x80>
quickjs-nuttx/quickjs.c:33516
        for (idx = 0; idx < fd->arg_count; idx++) {
    8002f7c8:	0ac5a603          	lw	a2,172(a1)
    8002f7cc:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:33519
            if (name == JS_ATOM_eval || name == JS_ATOM_arguments) {
    8002f7ce:	03b00513          	li	a0,59
    8002f7d2:	04e00813          	li	a6,78
quickjs-nuttx/quickjs.c:33516 (discriminator 1)
        for (idx = 0; idx < fd->arg_count; idx++) {
    8002f7d6:	0007069b          	sext.w	a3,a4
    8002f7da:	04c6c663          	blt	a3,a2,8002f826 <js_parse_function_check_names+0x8c>
quickjs-nuttx/quickjs.c:33530 (discriminator 1)
        for (idx = 0; idx < fd->arg_count; idx++) {
    8002f7de:	0ac5a303          	lw	t1,172(a1)
    8002f7e2:	4701                	li	a4,0
    8002f7e4:	0007051b          	sext.w	a0,a4
    8002f7e8:	08655163          	bge	a0,t1,8002f86a <js_parse_function_check_names+0xd0>
quickjs-nuttx/quickjs.c:33531
            name = fd->args[idx].var_name;
    8002f7ec:	0a05b883          	ld	a7,160(a1)
    8002f7f0:	00471693          	slli	a3,a4,0x4
    8002f7f4:	96c6                	add	a3,a3,a7
    8002f7f6:	0006a803          	lw	a6,0(a3)
quickjs-nuttx/quickjs.c:33532
            if (name != JS_ATOM_NULL) {
    8002f7fa:	00080e63          	beqz	a6,8002f816 <js_parse_function_check_names+0x7c>
    8002f7fe:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:33533 (discriminator 1)
                for (i = 0; i < idx; i++) {
    8002f800:	0006861b          	sext.w	a2,a3
    8002f804:	06a64563          	blt	a2,a0,8002f86e <js_parse_function_check_names+0xd4>
quickjs-nuttx/quickjs.c:33539
                for (i = 0; i < fd->var_count; i++) {
    8002f808:	09c5a883          	lw	a7,156(a1)
    8002f80c:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:33539 (discriminator 1)
    8002f80e:	0006861b          	sext.w	a2,a3
    8002f812:	07164b63          	blt	a2,a7,8002f888 <js_parse_function_check_names+0xee>
quickjs-nuttx/quickjs.c:33530 (discriminator 2)
        for (idx = 0; idx < fd->arg_count; idx++) {
    8002f816:	0705                	addi	a4,a4,1
    8002f818:	b7f1                	j	8002f7e4 <js_parse_function_check_names+0x4a>
quickjs-nuttx/quickjs.c:33514
            return js_parse_error(s, "invalid function name in strict code");
    8002f81a:	0003c597          	auipc	a1,0x3c
    8002f81e:	68e58593          	addi	a1,a1,1678 # 8006bea8 <qjsc_repl+0x68f8>
quickjs-nuttx/quickjs.c:33550
    return js_parse_error(s, "duplicate argument names not allowed in this context");
    8002f822:	853e                	mv	a0,a5
    8002f824:	bf41                	j	8002f7b4 <js_parse_function_check_names+0x1a>
quickjs-nuttx/quickjs.c:33517
            name = fd->args[idx].var_name;
    8002f826:	71d4                	ld	a3,160(a1)
    8002f828:	00471893          	slli	a7,a4,0x4
    8002f82c:	96c6                	add	a3,a3,a7
    8002f82e:	4294                	lw	a3,0(a3)
quickjs-nuttx/quickjs.c:33519
            if (name == JS_ATOM_eval || name == JS_ATOM_arguments) {
    8002f830:	00a68563          	beq	a3,a0,8002f83a <js_parse_function_check_names+0xa0>
quickjs-nuttx/quickjs.c:33519 (discriminator 1)
    8002f834:	0705                	addi	a4,a4,1
    8002f836:	fb0690e3          	bne	a3,a6,8002f7d6 <js_parse_function_check_names+0x3c>
quickjs-nuttx/quickjs.c:33520
                return js_parse_error(s, "invalid argument name in strict code");
    8002f83a:	0003c597          	auipc	a1,0x3c
    8002f83e:	69658593          	addi	a1,a1,1686 # 8006bed0 <qjsc_repl+0x6920>
    8002f842:	b7c5                	j	8002f822 <js_parse_function_check_names+0x88>
quickjs-nuttx/quickjs.c:33526
    ||  !fd->has_simple_parameter_list
    8002f844:	dec9                	beqz	a3,8002f7de <js_parse_function_check_names+0x44>
quickjs-nuttx/quickjs.c:33527
    ||  (fd->func_type == JS_PARSE_FUNC_METHOD && fd->func_kind == JS_FUNC_ASYNC)
    8002f846:	61d4                	ld	a3,128(a1)
    8002f848:	0ffff737          	lui	a4,0xffff
    8002f84c:	0752                	slli	a4,a4,0x14
    8002f84e:	8ef9                	and	a3,a3,a4
    8002f850:	30100713          	li	a4,769
    8002f854:	1706                	slli	a4,a4,0x21
    8002f856:	f8e684e3          	beq	a3,a4,8002f7de <js_parse_function_check_names+0x44>
quickjs-nuttx/quickjs.c:33528
    ||  fd->func_type == JS_PARSE_FUNC_ARROW
    8002f85a:	0855c703          	lbu	a4,133(a1)
    8002f85e:	468d                	li	a3,3
    8002f860:	f6d70fe3          	beq	a4,a3,8002f7de <js_parse_function_check_names+0x44>
quickjs-nuttx/quickjs.c:33529
    ||  fd->func_type == JS_PARSE_FUNC_METHOD) {
    8002f864:	4699                	li	a3,6
    8002f866:	f6d70ce3          	beq	a4,a3,8002f7de <js_parse_function_check_names+0x44>
quickjs-nuttx/quickjs.c:33551
}
    8002f86a:	4501                	li	a0,0
    8002f86c:	8082                	ret
quickjs-nuttx/quickjs.c:33534
                    if (fd->args[i].var_name == name)
    8002f86e:	0685                	addi	a3,a3,1
    8002f870:	00469613          	slli	a2,a3,0x4
    8002f874:	9646                	add	a2,a2,a7
    8002f876:	ff062603          	lw	a2,-16(a2)
    8002f87a:	f90613e3          	bne	a2,a6,8002f800 <js_parse_function_check_names+0x66>
quickjs-nuttx/quickjs.c:33550
    return js_parse_error(s, "duplicate argument names not allowed in this context");
    8002f87e:	0003c597          	auipc	a1,0x3c
    8002f882:	67a58593          	addi	a1,a1,1658 # 8006bef8 <qjsc_repl+0x6948>
    8002f886:	bf71                	j	8002f822 <js_parse_function_check_names+0x88>
quickjs-nuttx/quickjs.c:33540
                    if (fd->vars[i].var_name == name &&
    8002f888:	69c8                	ld	a0,144(a1)
    8002f88a:	00469613          	slli	a2,a3,0x4
    8002f88e:	962a                	add	a2,a2,a0
    8002f890:	4208                	lw	a0,0(a2)
    8002f892:	01051463          	bne	a0,a6,8002f89a <js_parse_function_check_names+0x100>
quickjs-nuttx/quickjs.c:33540 (discriminator 1)
    8002f896:	4250                	lw	a2,4(a2)
    8002f898:	d27d                	beqz	a2,8002f87e <js_parse_function_check_names+0xe4>
quickjs-nuttx/quickjs.c:33539 (discriminator 2)
                for (i = 0; i < fd->var_count; i++) {
    8002f89a:	0685                	addi	a3,a3,1
    8002f89c:	bf8d                	j	8002f80e <js_parse_function_check_names+0x74>

000000008002f89e <define_var>:
define_var():
quickjs-nuttx/quickjs.c:21901
{
    8002f89e:	7139                	addi	sp,sp,-64
    8002f8a0:	fc06                	sd	ra,56(sp)
    8002f8a2:	f822                	sd	s0,48(sp)
    8002f8a4:	f426                	sd	s1,40(sp)
    8002f8a6:	f04a                	sd	s2,32(sp)
    8002f8a8:	ec4e                	sd	s3,24(sp)
    8002f8aa:	e852                	sd	s4,16(sp)
    8002f8ac:	e456                	sd	s5,8(sp)
    8002f8ae:	e05a                	sd	s6,0(sp)
quickjs-nuttx/quickjs.c:21906
    switch (var_def_type) {
    8002f8b0:	4795                	li	a5,5
quickjs-nuttx/quickjs.c:21902
    JSContext *ctx = s->ctx;
    8002f8b2:	00053a03          	ld	s4,0(a0)
quickjs-nuttx/quickjs.c:21906
    switch (var_def_type) {
    8002f8b6:	1cf68263          	beq	a3,a5,8002fa7a <define_var+0x1dc>
    8002f8ba:	4799                	li	a5,6
    8002f8bc:	89aa                	mv	s3,a0
    8002f8be:	842e                	mv	s0,a1
    8002f8c0:	8932                	mv	s2,a2
    8002f8c2:	84b6                	mv	s1,a3
    8002f8c4:	1cf68863          	beq	a3,a5,8002fa94 <define_var+0x1f6>
    8002f8c8:	fff6879b          	addiw	a5,a3,-1
    8002f8cc:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:21908
        idx = add_scope_var(ctx, fd, name, JS_VAR_NORMAL);
    8002f8ce:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:21906
    switch (var_def_type) {
    8002f8d0:	1afb6663          	bltu	s6,a5,8002fa7c <define_var+0x1de>
quickjs-nuttx/quickjs.c:21915
        idx = find_lexical_decl(ctx, fd, name, fd->scope_first, TRUE);
    8002f8d4:	0e45a603          	lw	a2,228(a1)
    8002f8d8:	4685                	li	a3,1
    8002f8da:	85ca                	mv	a1,s2
    8002f8dc:	8522                	mv	a0,s0
    8002f8de:	f3cda0ef          	jal	ra,8000a01a <find_lexical_decl.constprop.0>
quickjs-nuttx/quickjs.c:21918
                if (fd->vars[idx].scope_level == fd->scope_level) {
    8002f8e2:	0e042a83          	lw	s5,224(s0)
quickjs-nuttx/quickjs.c:21916
        if (idx >= 0) {
    8002f8e6:	06054263          	bltz	a0,8002f94a <define_var+0xac>
quickjs-nuttx/quickjs.c:21917
            if (idx < GLOBAL_VAR_OFFSET) {
    8002f8ea:	400007b7          	lui	a5,0x40000
    8002f8ee:	0ef55663          	bge	a0,a5,8002f9da <define_var+0x13c>
quickjs-nuttx/quickjs.c:21918
                if (fd->vars[idx].scope_level == fd->scope_level) {
    8002f8f2:	685c                	ld	a5,144(s0)
    8002f8f4:	0512                	slli	a0,a0,0x4
    8002f8f6:	953e                	add	a0,a0,a5
    8002f8f8:	415c                	lw	a5,4(a0)
    8002f8fa:	03579e63          	bne	a5,s5,8002f936 <define_var+0x98>
quickjs-nuttx/quickjs.c:21921
                    if (!(!(fd->js_mode & JS_MODE_STRICT) &&
    8002f8fe:	08644783          	lbu	a5,134(s0)
    8002f902:	8b85                	andi	a5,a5,1
    8002f904:	eb89                	bnez	a5,8002f916 <define_var+0x78>
quickjs-nuttx/quickjs.c:21921 (discriminator 1)
    8002f906:	01649863          	bne	s1,s6,8002f916 <define_var+0x78>
quickjs-nuttx/quickjs.c:21923 (discriminator 2)
                          fd->vars[idx].var_kind == JS_VAR_FUNCTION_DECL)) {
    8002f90a:	455c                	lw	a5,12(a0)
quickjs-nuttx/quickjs.c:21921 (discriminator 2)
                    if (!(!(fd->js_mode & JS_MODE_STRICT) &&
    8002f90c:	4741                	li	a4,16
    8002f90e:	0f07f793          	andi	a5,a5,240
    8002f912:	06e78863          	beq	a5,a4,8002f982 <define_var+0xe4>
quickjs-nuttx/quickjs.c:21933
                    return js_parse_error(s, "invalid redefinition of lexical identifier");
    8002f916:	0003c597          	auipc	a1,0x3c
    8002f91a:	61a58593          	addi	a1,a1,1562 # 8006bf30 <qjsc_repl+0x6980>
quickjs-nuttx/quickjs.c:22025
}
    8002f91e:	7442                	ld	s0,48(sp)
    8002f920:	70e2                	ld	ra,56(sp)
    8002f922:	74a2                	ld	s1,40(sp)
    8002f924:	7902                	ld	s2,32(sp)
    8002f926:	6a42                	ld	s4,16(sp)
    8002f928:	6aa2                	ld	s5,8(sp)
    8002f92a:	6b02                	ld	s6,0(sp)
quickjs-nuttx/quickjs.c:21946
            return js_parse_error(s, "invalid redefinition of a variable");
    8002f92c:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:22025
}
    8002f92e:	69e2                	ld	s3,24(sp)
    8002f930:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:21946
            return js_parse_error(s, "invalid redefinition of a variable");
    8002f932:	b40fe06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:21926
                } else if (fd->vars[idx].var_kind == JS_VAR_CATCH && (fd->vars[idx].scope_level + 2) == fd->scope_level) {
    8002f936:	4558                	lw	a4,12(a0)
    8002f938:	03000693          	li	a3,48
    8002f93c:	0f077713          	andi	a4,a4,240
    8002f940:	00d71563          	bne	a4,a3,8002f94a <define_var+0xac>
quickjs-nuttx/quickjs.c:21926 (discriminator 1)
    8002f944:	2789                	addiw	a5,a5,2
quickjs-nuttx/quickjs.c:21930
                if (fd->scope_level == fd->body_scope) {
    8002f946:	fd5788e3          	beq	a5,s5,8002f916 <define_var+0x78>
quickjs-nuttx/quickjs.c:21937
        if (var_def_type != JS_VAR_DEF_FUNCTION_DECL &&
    8002f94a:	ffd4879b          	addiw	a5,s1,-3
    8002f94e:	4705                	li	a4,1
    8002f950:	02f77963          	bgeu	a4,a5,8002f982 <define_var+0xe4>
quickjs-nuttx/quickjs.c:21938
            var_def_type != JS_VAR_DEF_NEW_FUNCTION_DECL &&
    8002f954:	11842783          	lw	a5,280(s0)
    8002f958:	03579563          	bne	a5,s5,8002f982 <define_var+0xe4>
find_arg():
quickjs-nuttx/quickjs.c:21600
    for(i = fd->arg_count; i-- > 0;) {
    8002f95c:	0ac42783          	lw	a5,172(s0)
    8002f960:	873e                	mv	a4,a5
    8002f962:	37fd                	addiw	a5,a5,-1
    8002f964:	00e05f63          	blez	a4,8002f982 <define_var+0xe4>
quickjs-nuttx/quickjs.c:21601
        if (fd->args[i].var_name == name)
    8002f968:	7058                	ld	a4,160(s0)
    8002f96a:	00479693          	slli	a3,a5,0x4
    8002f96e:	9736                	add	a4,a4,a3
    8002f970:	4318                	lw	a4,0(a4)
    8002f972:	ff2717e3          	bne	a4,s2,8002f960 <define_var+0xc2>
define_var():
quickjs-nuttx/quickjs.c:21942
            return js_parse_error(s, "invalid redefinition of parameter name");
    8002f976:	0003c597          	auipc	a1,0x3c
    8002f97a:	5ea58593          	addi	a1,a1,1514 # 8006bf60 <qjsc_repl+0x69b0>
quickjs-nuttx/quickjs.c:21939
            fd->scope_level == fd->body_scope &&
    8002f97e:	fa07d0e3          	bgez	a5,8002f91e <define_var+0x80>
find_var_in_child_scope():
quickjs-nuttx/quickjs.c:21650
    for(i = 0; i < fd->var_count; i++) {
    8002f982:	09c42603          	lw	a2,156(s0)
    8002f986:	4681                	li	a3,0
    8002f988:	0006879b          	sext.w	a5,a3
    8002f98c:	04c7ca63          	blt	a5,a2,8002f9e0 <define_var+0x142>
define_var():
quickjs-nuttx/quickjs.c:21949
        if (fd->is_global_var) {
    8002f990:	403c                	lw	a5,64(s0)
    8002f992:	cb89                	beqz	a5,8002f9a4 <define_var+0x106>
quickjs-nuttx/quickjs.c:21951
            hf = find_global_var(fd, name);
    8002f994:	85ca                	mv	a1,s2
    8002f996:	8522                	mv	a0,s0
    8002f998:	e00d80ef          	jal	ra,80007f98 <find_global_var>
quickjs-nuttx/quickjs.c:21952
            if (hf && is_child_scope(ctx, fd, hf->scope_level,
    8002f99c:	c501                	beqz	a0,8002f9a4 <define_var+0x106>
quickjs-nuttx/quickjs.c:21952 (discriminator 1)
    8002f99e:	451c                	lw	a5,8(a0)
is_child_scope():
quickjs-nuttx/quickjs.c:21637
    while (scope >= 0) {
    8002f9a0:	0607d563          	bgez	a5,8002fa0a <define_var+0x16c>
define_var():
quickjs-nuttx/quickjs.c:21958
        if (fd->is_eval &&
    8002f9a4:	5c1c                	lw	a5,56(s0)
    8002f9a6:	cbd1                	beqz	a5,8002fa3a <define_var+0x19c>
quickjs-nuttx/quickjs.c:21958 (discriminator 1)
    8002f9a8:	5c58                	lw	a4,60(s0)
    8002f9aa:	4785                	li	a5,1
    8002f9ac:	08e7e763          	bltu	a5,a4,8002fa3a <define_var+0x19c>
quickjs-nuttx/quickjs.c:21960
             fd->eval_type == JS_EVAL_TYPE_MODULE) &&
    8002f9b0:	11842783          	lw	a5,280(s0)
    8002f9b4:	09579363          	bne	a5,s5,8002fa3a <define_var+0x19c>
quickjs-nuttx/quickjs.c:21963
            hf = add_global_var(s->ctx, fd, name);
    8002f9b8:	864a                	mv	a2,s2
    8002f9ba:	85a2                	mv	a1,s0
    8002f9bc:	8552                	mv	a0,s4
    8002f9be:	b29ed0ef          	jal	ra,8001d4e6 <add_global_var>
quickjs-nuttx/quickjs.c:21964
            if (!hf)
    8002f9c2:	e939                	bnez	a0,8002fa18 <define_var+0x17a>
quickjs-nuttx/quickjs.c:21965
                return -1;
    8002f9c4:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:22025
}
    8002f9c6:	70e2                	ld	ra,56(sp)
    8002f9c8:	7442                	ld	s0,48(sp)
    8002f9ca:	74a2                	ld	s1,40(sp)
    8002f9cc:	7902                	ld	s2,32(sp)
    8002f9ce:	69e2                	ld	s3,24(sp)
    8002f9d0:	6a42                	ld	s4,16(sp)
    8002f9d2:	6aa2                	ld	s5,8(sp)
    8002f9d4:	6b02                	ld	s6,0(sp)
    8002f9d6:	6121                	addi	sp,sp,64
    8002f9d8:	8082                	ret
quickjs-nuttx/quickjs.c:21930
                if (fd->scope_level == fd->body_scope) {
    8002f9da:	11842783          	lw	a5,280(s0)
    8002f9de:	b7a5                	j	8002f946 <define_var+0xa8>
find_var_in_child_scope():
quickjs-nuttx/quickjs.c:21651
        JSVarDef *vd = &fd->vars[i];
    8002f9e0:	6858                	ld	a4,144(s0)
    8002f9e2:	00469793          	slli	a5,a3,0x4
    8002f9e6:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:21652
        if (vd->var_name == name && vd->scope_level == 0) {
    8002f9e8:	4398                	lw	a4,0(a5)
    8002f9ea:	01271763          	bne	a4,s2,8002f9f8 <define_var+0x15a>
    8002f9ee:	43d8                	lw	a4,4(a5)
    8002f9f0:	e701                	bnez	a4,8002f9f8 <define_var+0x15a>
quickjs-nuttx/quickjs.c:21653
            if (is_child_scope(ctx, fd, vd->scope_next,
    8002f9f2:	479c                	lw	a5,8(a5)
is_child_scope():
quickjs-nuttx/quickjs.c:21637
    while (scope >= 0) {
    8002f9f4:	0007d463          	bgez	a5,8002f9fc <define_var+0x15e>
find_var_in_child_scope():
quickjs-nuttx/quickjs.c:21650
    for(i = 0; i < fd->var_count; i++) {
    8002f9f8:	0685                	addi	a3,a3,1
    8002f9fa:	b779                	j	8002f988 <define_var+0xea>
is_child_scope():
quickjs-nuttx/quickjs.c:21638
        if (scope == parent_scope)
    8002f9fc:	13578363          	beq	a5,s5,8002fb22 <define_var+0x284>
quickjs-nuttx/quickjs.c:21640
        scope = fd->scopes[scope].parent;
    8002fa00:	7878                	ld	a4,240(s0)
    8002fa02:	078e                	slli	a5,a5,0x3
    8002fa04:	97ba                	add	a5,a5,a4
    8002fa06:	439c                	lw	a5,0(a5)
    8002fa08:	b7f5                	j	8002f9f4 <define_var+0x156>
quickjs-nuttx/quickjs.c:21638
        if (scope == parent_scope)
    8002fa0a:	11578763          	beq	a5,s5,8002fb18 <define_var+0x27a>
quickjs-nuttx/quickjs.c:21640
        scope = fd->scopes[scope].parent;
    8002fa0e:	7878                	ld	a4,240(s0)
    8002fa10:	078e                	slli	a5,a5,0x3
    8002fa12:	97ba                	add	a5,a5,a4
    8002fa14:	439c                	lw	a5,0(a5)
    8002fa16:	b769                	j	8002f9a0 <define_var+0x102>
define_var():
quickjs-nuttx/quickjs.c:21966
            hf->is_lexical = TRUE;
    8002fa18:	00454703          	lbu	a4,4(a0)
quickjs-nuttx/quickjs.c:21967
            hf->is_const = (var_def_type == JS_VAR_DEF_CONST);
    8002fa1c:	ffe48793          	addi	a5,s1,-2
    8002fa20:	0017b793          	seqz	a5,a5
quickjs-nuttx/quickjs.c:21966
            hf->is_lexical = TRUE;
    8002fa24:	0027979b          	slliw	a5,a5,0x2
    8002fa28:	0027e793          	ori	a5,a5,2
    8002fa2c:	9b65                	andi	a4,a4,-7
    8002fa2e:	8fd9                	or	a5,a5,a4
    8002fa30:	00f50223          	sb	a5,4(a0)
quickjs-nuttx/quickjs.c:22007
            idx = GLOBAL_VAR_OFFSET;
    8002fa34:	40000537          	lui	a0,0x40000
    8002fa38:	b779                	j	8002f9c6 <define_var+0x128>
quickjs-nuttx/quickjs.c:21971
            if (var_def_type == JS_VAR_DEF_FUNCTION_DECL)
    8002fa3a:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:21972
                var_kind = JS_VAR_FUNCTION_DECL;
    8002fa3c:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:21971
            if (var_def_type == JS_VAR_DEF_FUNCTION_DECL)
    8002fa3e:	00f48763          	beq	s1,a5,8002fa4c <define_var+0x1ae>
quickjs-nuttx/quickjs.c:21973
            else if (var_def_type == JS_VAR_DEF_NEW_FUNCTION_DECL)
    8002fa42:	4791                	li	a5,4
quickjs-nuttx/quickjs.c:21974
                var_kind = JS_VAR_NEW_FUNCTION_DECL;
    8002fa44:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:21973
            else if (var_def_type == JS_VAR_DEF_NEW_FUNCTION_DECL)
    8002fa46:	00f48363          	beq	s1,a5,8002fa4c <define_var+0x1ae>
quickjs-nuttx/quickjs.c:21976
                var_kind = JS_VAR_NORMAL;
    8002fa4a:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:21977
            idx = add_scope_var(ctx, fd, name, var_kind);
    8002fa4c:	864a                	mv	a2,s2
    8002fa4e:	85a2                	mv	a1,s0
    8002fa50:	8552                	mv	a0,s4
    8002fa52:	f59f90ef          	jal	ra,800299aa <add_scope_var>
quickjs-nuttx/quickjs.c:21978
            if (idx >= 0) {
    8002fa56:	f60548e3          	bltz	a0,8002f9c6 <define_var+0x128>
quickjs-nuttx/quickjs.c:21979
                vd = &fd->vars[idx];
    8002fa5a:	6858                	ld	a4,144(s0)
    8002fa5c:	00451793          	slli	a5,a0,0x4
quickjs-nuttx/quickjs.c:21981
                vd->is_const = (var_def_type == JS_VAR_DEF_CONST);
    8002fa60:	14f9                	addi	s1,s1,-2
quickjs-nuttx/quickjs.c:21979
                vd = &fd->vars[idx];
    8002fa62:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:21981
                vd->is_const = (var_def_type == JS_VAR_DEF_CONST);
    8002fa64:	00c7c703          	lbu	a4,12(a5) # 4000000c <asinh-0x3ffffff4>
    8002fa68:	0014b493          	seqz	s1,s1
    8002fa6c:	0024e493          	ori	s1,s1,2
    8002fa70:	9b71                	andi	a4,a4,-4
    8002fa72:	8cd9                	or	s1,s1,a4
    8002fa74:	00978623          	sb	s1,12(a5)
    8002fa78:	b7b9                	j	8002f9c6 <define_var+0x128>
quickjs-nuttx/quickjs.c:21987
        idx = add_scope_var(ctx, fd, name, JS_VAR_CATCH);
    8002fa7a:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:22025
}
    8002fa7c:	7442                	ld	s0,48(sp)
    8002fa7e:	70e2                	ld	ra,56(sp)
    8002fa80:	74a2                	ld	s1,40(sp)
    8002fa82:	7902                	ld	s2,32(sp)
    8002fa84:	69e2                	ld	s3,24(sp)
    8002fa86:	6aa2                	ld	s5,8(sp)
    8002fa88:	6b02                	ld	s6,0(sp)
quickjs-nuttx/quickjs.c:21987
        idx = add_scope_var(ctx, fd, name, JS_VAR_CATCH);
    8002fa8a:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:22025
}
    8002fa8c:	6a42                	ld	s4,16(sp)
    8002fa8e:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:21987
        idx = add_scope_var(ctx, fd, name, JS_VAR_CATCH);
    8002fa90:	f1bf906f          	j	800299aa <add_scope_var>
quickjs-nuttx/quickjs.c:21991
        if (find_lexical_decl(ctx, fd, name, fd->scope_first,
    8002fa94:	0e45a603          	lw	a2,228(a1)
    8002fa98:	4681                	li	a3,0
    8002fa9a:	85ca                	mv	a1,s2
    8002fa9c:	8522                	mv	a0,s0
    8002fa9e:	d7cda0ef          	jal	ra,8000a01a <find_lexical_decl.constprop.0>
    8002faa2:	e6055ae3          	bgez	a0,8002f916 <define_var+0x78>
quickjs-nuttx/quickjs.c:21997
        if (fd->is_global_var) {
    8002faa6:	403c                	lw	a5,64(s0)
    8002faa8:	cb95                	beqz	a5,8002fadc <define_var+0x23e>
quickjs-nuttx/quickjs.c:21999
            hf = find_global_var(fd, name);
    8002faaa:	85ca                	mv	a1,s2
    8002faac:	8522                	mv	a0,s0
    8002faae:	cead80ef          	jal	ra,80007f98 <find_global_var>
quickjs-nuttx/quickjs.c:22000
            if (hf && hf->is_lexical && hf->scope_level == fd->scope_level &&
    8002fab2:	cd11                	beqz	a0,8002face <define_var+0x230>
quickjs-nuttx/quickjs.c:22000 (discriminator 1)
    8002fab4:	00454783          	lbu	a5,4(a0) # 40000004 <asinh-0x3ffffffc>
    8002fab8:	8b89                	andi	a5,a5,2
    8002faba:	cb91                	beqz	a5,8002face <define_var+0x230>
quickjs-nuttx/quickjs.c:22000 (discriminator 2)
    8002fabc:	4518                	lw	a4,8(a0)
    8002fabe:	0e042783          	lw	a5,224(s0)
    8002fac2:	00f71663          	bne	a4,a5,8002face <define_var+0x230>
quickjs-nuttx/quickjs.c:22000 (discriminator 3)
    8002fac6:	5c58                	lw	a4,60(s0)
    8002fac8:	4785                	li	a5,1
    8002faca:	e4f706e3          	beq	a4,a5,8002f916 <define_var+0x78>
quickjs-nuttx/quickjs.c:22004
            hf = add_global_var(s->ctx, fd, name);
    8002face:	864a                	mv	a2,s2
    8002fad0:	85a2                	mv	a1,s0
    8002fad2:	8552                	mv	a0,s4
    8002fad4:	a13ed0ef          	jal	ra,8001d4e6 <add_global_var>
quickjs-nuttx/quickjs.c:22005
            if (!hf)
    8002fad8:	fd31                	bnez	a0,8002fa34 <define_var+0x196>
    8002fada:	b5ed                	j	8002f9c4 <define_var+0x126>
quickjs-nuttx/quickjs.c:22010
            idx = find_var(ctx, fd, name);
    8002fadc:	864a                	mv	a2,s2
    8002fade:	85a2                	mv	a1,s0
    8002fae0:	8552                	mv	a0,s4
    8002fae2:	bedda0ef          	jal	ra,8000a6ce <find_var>
quickjs-nuttx/quickjs.c:22011
            if (idx >= 0)
    8002fae6:	ee0550e3          	bgez	a0,8002f9c6 <define_var+0x128>
quickjs-nuttx/quickjs.c:22013
            idx = add_var(ctx, fd, name);
    8002faea:	864a                	mv	a2,s2
    8002faec:	85a2                	mv	a1,s0
    8002faee:	8552                	mv	a0,s4
    8002faf0:	e35f90ef          	jal	ra,80029924 <add_var>
quickjs-nuttx/quickjs.c:22014
            if (idx >= 0) {
    8002faf4:	ec0549e3          	bltz	a0,8002f9c6 <define_var+0x128>
quickjs-nuttx/quickjs.c:22015
                if (name == JS_ATOM_arguments && fd->has_arguments_binding)
    8002faf8:	04e00793          	li	a5,78
    8002fafc:	00f91663          	bne	s2,a5,8002fb08 <define_var+0x26a>
quickjs-nuttx/quickjs.c:22015 (discriminator 1)
    8002fb00:	503c                	lw	a5,96(s0)
    8002fb02:	c399                	beqz	a5,8002fb08 <define_var+0x26a>
quickjs-nuttx/quickjs.c:22016
                    fd->arguments_var_idx = idx;
    8002fb04:	0aa42e23          	sw	a0,188(s0)
quickjs-nuttx/quickjs.c:22017
                fd->vars[idx].scope_next = fd->scope_level;
    8002fb08:	685c                	ld	a5,144(s0)
    8002fb0a:	0e042703          	lw	a4,224(s0)
    8002fb0e:	00451693          	slli	a3,a0,0x4
    8002fb12:	97b6                	add	a5,a5,a3
    8002fb14:	c798                	sw	a4,8(a5)
    8002fb16:	bd45                	j	8002f9c6 <define_var+0x128>
quickjs-nuttx/quickjs.c:21954
                return js_parse_error(s, "invalid redefinition of global identifier");
    8002fb18:	0003c597          	auipc	a1,0x3c
    8002fb1c:	47058593          	addi	a1,a1,1136 # 8006bf88 <qjsc_repl+0x69d8>
    8002fb20:	bbfd                	j	8002f91e <define_var+0x80>
quickjs-nuttx/quickjs.c:21946
            return js_parse_error(s, "invalid redefinition of a variable");
    8002fb22:	0003c597          	auipc	a1,0x3c
    8002fb26:	49658593          	addi	a1,a1,1174 # 8006bfb8 <qjsc_repl+0x6a08>
    8002fb2a:	bbd5                	j	8002f91e <define_var+0x80>

000000008002fb2c <js_define_var>:
js_define_var():
quickjs-nuttx/quickjs.c:23753
{
    8002fb2c:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:23757
    if (name == JS_ATOM_yield && fd->func_kind == JS_FUNC_GENERATOR) {
    8002fb2e:	02d00693          	li	a3,45
quickjs-nuttx/quickjs.c:23754
    JSFunctionDef *fd = s->cur_func;
    8002fb32:	752c                	ld	a1,104(a0)
quickjs-nuttx/quickjs.c:23753
{
    8002fb34:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:23757
    if (name == JS_ATOM_yield && fd->func_kind == JS_FUNC_GENERATOR) {
    8002fb36:	00d79d63          	bne	a5,a3,8002fb50 <js_define_var+0x24>
quickjs-nuttx/quickjs.c:23757 (discriminator 1)
    8002fb3a:	0845c803          	lbu	a6,132(a1)
    8002fb3e:	4685                	li	a3,1
    8002fb40:	04d81c63          	bne	a6,a3,8002fb98 <js_define_var+0x6c>
quickjs-nuttx/quickjs.c:23758
        return js_parse_error(s, "yield is a reserved identifier");
    8002fb44:	0003c597          	auipc	a1,0x3c
    8002fb48:	49c58593          	addi	a1,a1,1180 # 8006bfe0 <qjsc_repl+0x6a30>
quickjs-nuttx/quickjs.c:23766
        return js_parse_error(s, "invalid lexical variable name");
    8002fb4c:	926fe06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:23760
    if ((name == JS_ATOM_arguments || name == JS_ATOM_eval)
    8002fb50:	04e00693          	li	a3,78
    8002fb54:	00d78663          	beq	a5,a3,8002fb60 <js_define_var+0x34>
quickjs-nuttx/quickjs.c:23760 (discriminator 1)
    8002fb58:	03b00693          	li	a3,59
    8002fb5c:	00d79c63          	bne	a5,a3,8002fb74 <js_define_var+0x48>
quickjs-nuttx/quickjs.c:23761
    &&  (fd->js_mode & JS_MODE_STRICT)) {
    8002fb60:	0865c683          	lbu	a3,134(a1)
    8002fb64:	8a85                	andi	a3,a3,1
    8002fb66:	c699                	beqz	a3,8002fb74 <js_define_var+0x48>
quickjs-nuttx/quickjs.c:23762
        return js_parse_error(s, "invalid variable name in strict mode");
    8002fb68:	0003c597          	auipc	a1,0x3c
    8002fb6c:	49858593          	addi	a1,a1,1176 # 8006c000 <qjsc_repl+0x6a50>
quickjs-nuttx/quickjs.c:23766
        return js_parse_error(s, "invalid lexical variable name");
    8002fb70:	853a                	mv	a0,a4
    8002fb72:	bfe9                	j	8002fb4c <js_define_var+0x20>
quickjs-nuttx/quickjs.c:23764
    if ((name == JS_ATOM_let || name == JS_ATOM_undefined)
    8002fb74:	02700693          	li	a3,39
    8002fb78:	00d78663          	beq	a5,a3,8002fb84 <js_define_var+0x58>
quickjs-nuttx/quickjs.c:23764 (discriminator 1)
    8002fb7c:	04600693          	li	a3,70
    8002fb80:	00d79c63          	bne	a5,a3,8002fb98 <js_define_var+0x6c>
quickjs-nuttx/quickjs.c:23765 (discriminator 1)
    &&  (tok == TOK_LET || tok == TOK_CONST)) {
    8002fb84:	0356069b          	addiw	a3,a2,53
    8002fb88:	9add                	andi	a3,a3,-9
    8002fb8a:	2681                	sext.w	a3,a3
    8002fb8c:	e691                	bnez	a3,8002fb98 <js_define_var+0x6c>
quickjs-nuttx/quickjs.c:23766
        return js_parse_error(s, "invalid lexical variable name");
    8002fb8e:	0003c597          	auipc	a1,0x3c
    8002fb92:	49a58593          	addi	a1,a1,1178 # 8006c028 <qjsc_repl+0x6a78>
    8002fb96:	bfe9                	j	8002fb70 <js_define_var+0x44>
quickjs-nuttx/quickjs.c:23753
{
    8002fb98:	1141                	addi	sp,sp,-16
    8002fb9a:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:23768
    switch(tok) {
    8002fb9c:	fcb00693          	li	a3,-53
    8002fba0:	02d60563          	beq	a2,a3,8002fbca <js_define_var+0x9e>
    8002fba4:	fcc00693          	li	a3,-52
    8002fba8:	00d65d63          	bge	a2,a3,8002fbc2 <js_define_var+0x96>
    8002fbac:	fb300693          	li	a3,-77
    8002fbb0:	02d60763          	beq	a2,a3,8002fbde <js_define_var+0xb2>
    8002fbb4:	fc500513          	li	a0,-59
quickjs-nuttx/quickjs.c:23779
        var_def_type = JS_VAR_DEF_CATCH;
    8002fbb8:	4695                	li	a3,5
quickjs-nuttx/quickjs.c:23768
    switch(tok) {
    8002fbba:	00a60963          	beq	a2,a0,8002fbcc <js_define_var+0xa0>
quickjs-nuttx/quickjs.c:23782
        abort();
    8002fbbe:	7c5320ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:23768
    switch(tok) {
    8002fbc2:	fd300513          	li	a0,-45
quickjs-nuttx/quickjs.c:23770
        var_def_type = JS_VAR_DEF_LET;
    8002fbc6:	4685                	li	a3,1
    8002fbc8:	bfcd                	j	8002fbba <js_define_var+0x8e>
quickjs-nuttx/quickjs.c:23768
    switch(tok) {
    8002fbca:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:23784
    if (define_var(s, fd, name, var_def_type) < 0)
    8002fbcc:	863e                	mv	a2,a5
    8002fbce:	853a                	mv	a0,a4
    8002fbd0:	ccfff0ef          	jal	ra,8002f89e <define_var>
quickjs-nuttx/quickjs.c:23787
}
    8002fbd4:	60a2                	ld	ra,8(sp)
    8002fbd6:	41f5551b          	sraiw	a0,a0,0x1f
    8002fbda:	0141                	addi	sp,sp,16
    8002fbdc:	8082                	ret
quickjs-nuttx/quickjs.c:23776
        var_def_type = JS_VAR_DEF_VAR;
    8002fbde:	4699                	li	a3,6
    8002fbe0:	b7f5                	j	8002fbcc <js_define_var+0xa0>

000000008002fbe2 <js_parse_from_clause>:
js_parse_from_clause():
quickjs-nuttx/quickjs.c:28939
{
    8002fbe2:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:28941
    if (!token_is_pseudo_keyword(s, JS_ATOM_from)) {
    8002fbe4:	07b00593          	li	a1,123
quickjs-nuttx/quickjs.c:28939
{
    8002fbe8:	e822                	sd	s0,16(sp)
    8002fbea:	ec06                	sd	ra,24(sp)
    8002fbec:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:28941
    if (!token_is_pseudo_keyword(s, JS_ATOM_from)) {
    8002fbee:	a80d80ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
quickjs-nuttx/quickjs.c:28942
        js_parse_error(s, "from clause expected");
    8002fbf2:	0003c597          	auipc	a1,0x3c
    8002fbf6:	45658593          	addi	a1,a1,1110 # 8006c048 <qjsc_repl+0x6a98>
quickjs-nuttx/quickjs.c:28941
    if (!token_is_pseudo_keyword(s, JS_ATOM_from)) {
    8002fbfa:	c505                	beqz	a0,8002fc22 <js_parse_from_clause+0x40>
quickjs-nuttx/quickjs.c:28945
    if (next_token(s))
    8002fbfc:	8522                	mv	a0,s0
    8002fbfe:	989fe0ef          	jal	ra,8002e586 <next_token>
    8002fc02:	c519                	beqz	a0,8002fc10 <js_parse_from_clause+0x2e>
quickjs-nuttx/quickjs.c:28956
        return JS_ATOM_NULL;
    8002fc04:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:28959
}
    8002fc06:	60e2                	ld	ra,24(sp)
    8002fc08:	6442                	ld	s0,16(sp)
    8002fc0a:	852e                	mv	a0,a1
    8002fc0c:	6105                	addi	sp,sp,32
    8002fc0e:	8082                	ret
quickjs-nuttx/quickjs.c:28947
    if (s->token.val != TOK_STRING) {
    8002fc10:	4c18                	lw	a4,24(s0)
    8002fc12:	f8100793          	li	a5,-127
    8002fc16:	00f70a63          	beq	a4,a5,8002fc2a <js_parse_from_clause+0x48>
quickjs-nuttx/quickjs.c:28948
        js_parse_error(s, "string expected");
    8002fc1a:	0003c597          	auipc	a1,0x3c
    8002fc1e:	44658593          	addi	a1,a1,1094 # 8006c060 <qjsc_repl+0x6ab0>
    8002fc22:	8522                	mv	a0,s0
    8002fc24:	84efe0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:28949
        return JS_ATOM_NULL;
    8002fc28:	bff1                	j	8002fc04 <js_parse_from_clause+0x22>
quickjs-nuttx/quickjs.c:28951
    module_name = JS_ValueToAtom(s->ctx, s->token.u.str.str);
    8002fc2a:	740c                	ld	a1,40(s0)
    8002fc2c:	7810                	ld	a2,48(s0)
    8002fc2e:	6008                	ld	a0,0(s0)
    8002fc30:	be3f80ef          	jal	ra,80028812 <JS_ValueToAtom>
    8002fc34:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:28952
    if (module_name == JS_ATOM_NULL)
    8002fc38:	e42e                	sd	a1,8(sp)
    8002fc3a:	d5e9                	beqz	a1,8002fc04 <js_parse_from_clause+0x22>
quickjs-nuttx/quickjs.c:28954
    if (next_token(s)) {
    8002fc3c:	8522                	mv	a0,s0
    8002fc3e:	949fe0ef          	jal	ra,8002e586 <next_token>
    8002fc42:	65a2                	ld	a1,8(sp)
    8002fc44:	d169                	beqz	a0,8002fc06 <js_parse_from_clause+0x24>
quickjs-nuttx/quickjs.c:28955
        JS_FreeAtom(s->ctx, module_name);
    8002fc46:	6008                	ld	a0,0(s0)
    8002fc48:	d00db0ef          	jal	ra,8000b148 <JS_FreeAtom>
    8002fc4c:	bf65                	j	8002fc04 <js_parse_from_clause+0x22>

000000008002fc4e <add_import>:
add_import():
quickjs-nuttx/quickjs.c:29137
    if (local_name == JS_ATOM_arguments || local_name == JS_ATOM_eval)
    8002fc4e:	04e00713          	li	a4,78
    8002fc52:	00e60763          	beq	a2,a4,8002fc60 <add_import+0x12>
quickjs-nuttx/quickjs.c:29137 (discriminator 1)
    8002fc56:	03b00713          	li	a4,59
    8002fc5a:	87b2                	mv	a5,a2
    8002fc5c:	00e61863          	bne	a2,a4,8002fc6c <add_import+0x1e>
quickjs-nuttx/quickjs.c:29138
        return js_parse_error(s, "invalid import binding");
    8002fc60:	0003c597          	auipc	a1,0x3c
    8002fc64:	41058593          	addi	a1,a1,1040 # 8006c070 <qjsc_repl+0x6ac0>
quickjs-nuttx/quickjs.c:29143
                return js_parse_error(s, "duplicate import binding");
    8002fc68:	80afe06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:29131
{
    8002fc6c:	7139                	addi	sp,sp,-64
    8002fc6e:	f822                	sd	s0,48(sp)
    8002fc70:	ec4e                	sd	s3,24(sp)
    8002fc72:	fc06                	sd	ra,56(sp)
    8002fc74:	f426                	sd	s1,40(sp)
    8002fc76:	f04a                	sd	s2,32(sp)
    8002fc78:	e852                	sd	s4,16(sp)
quickjs-nuttx/quickjs.c:29140
    if (local_name != JS_ATOM_default) {
    8002fc7a:	4759                	li	a4,22
    8002fc7c:	842e                	mv	s0,a1
    8002fc7e:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:29148
    var_idx = add_closure_var(ctx, s->cur_func, is_local, FALSE,
    8002fc80:	752c                	ld	a1,104(a0)
quickjs-nuttx/quickjs.c:29140
    if (local_name != JS_ATOM_default) {
    8002fc82:	00e60963          	beq	a2,a4,8002fc94 <add_import+0x46>
quickjs-nuttx/quickjs.c:29141
        for (i = 0; i < s->cur_func->closure_var_count; i++) {
    8002fc86:	1985a603          	lw	a2,408(a1)
    8002fc8a:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:29141 (discriminator 1)
    8002fc8c:	0007069b          	sext.w	a3,a4
    8002fc90:	02c6cd63          	blt	a3,a2,8002fcca <add_import+0x7c>
quickjs-nuttx/quickjs.c:29132
    JSContext *ctx = s->ctx;
    8002fc94:	00053a03          	ld	s4,0(a0)
quickjs-nuttx/quickjs.c:29148
    var_idx = add_closure_var(ctx, s->cur_func, is_local, FALSE,
    8002fc98:	e002                	sd	zero,0(sp)
    8002fc9a:	4838                	lw	a4,80(s0)
quickjs-nuttx/quickjs.c:29147
    is_local = (import_name == JS_ATOM__star_);
    8002fc9c:	f8298613          	addi	a2,s3,-126
quickjs-nuttx/quickjs.c:29148
    var_idx = add_closure_var(ctx, s->cur_func, is_local, FALSE,
    8002fca0:	4885                	li	a7,1
    8002fca2:	4805                	li	a6,1
    8002fca4:	4681                	li	a3,0
    8002fca6:	00163613          	seqz	a2,a2
    8002fcaa:	8552                	mv	a0,s4
    8002fcac:	f61f90ef          	jal	ra,80029c0c <add_closure_var>
    8002fcb0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:29151
    if (var_idx < 0)
    8002fcb2:	04055163          	bgez	a0,8002fcf4 <add_import+0xa6>
quickjs-nuttx/quickjs.c:29152
        return -1;
    8002fcb6:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:29162
}
    8002fcb8:	70e2                	ld	ra,56(sp)
    8002fcba:	7442                	ld	s0,48(sp)
    8002fcbc:	7902                	ld	s2,32(sp)
    8002fcbe:	69e2                	ld	s3,24(sp)
    8002fcc0:	6a42                	ld	s4,16(sp)
    8002fcc2:	8526                	mv	a0,s1
    8002fcc4:	74a2                	ld	s1,40(sp)
    8002fcc6:	6121                	addi	sp,sp,64
    8002fcc8:	8082                	ret
quickjs-nuttx/quickjs.c:29142
            if (s->cur_func->closure_var[i].var_name == local_name)
    8002fcca:	1a05b683          	ld	a3,416(a1)
    8002fcce:	00371813          	slli	a6,a4,0x3
    8002fcd2:	0705                	addi	a4,a4,1
    8002fcd4:	96c2                	add	a3,a3,a6
    8002fcd6:	42d4                	lw	a3,4(a3)
    8002fcd8:	faf69ae3          	bne	a3,a5,8002fc8c <add_import+0x3e>
quickjs-nuttx/quickjs.c:29162
}
    8002fcdc:	7442                	ld	s0,48(sp)
    8002fcde:	70e2                	ld	ra,56(sp)
    8002fce0:	74a2                	ld	s1,40(sp)
    8002fce2:	7902                	ld	s2,32(sp)
    8002fce4:	69e2                	ld	s3,24(sp)
    8002fce6:	6a42                	ld	s4,16(sp)
quickjs-nuttx/quickjs.c:29143
                return js_parse_error(s, "duplicate import binding");
    8002fce8:	0003c597          	auipc	a1,0x3c
    8002fcec:	3a058593          	addi	a1,a1,928 # 8006c088 <qjsc_repl+0x6ad8>
quickjs-nuttx/quickjs.c:29162
}
    8002fcf0:	6121                	addi	sp,sp,64
    8002fcf2:	bf9d                	j	8002fc68 <add_import+0x1a>
quickjs-nuttx/quickjs.c:29153
    if (js_resize_array(ctx, (void **)&m->import_entries,
    8002fcf4:	4838                	lw	a4,80(s0)
    8002fcf6:	05440693          	addi	a3,s0,84
    8002fcfa:	4631                	li	a2,12
    8002fcfc:	2705                	addiw	a4,a4,1
    8002fcfe:	04840593          	addi	a1,s0,72
    8002fd02:	8552                	mv	a0,s4
    8002fd04:	ca9ec0ef          	jal	ra,8001c9ac <js_resize_array>
    8002fd08:	84aa                	mv	s1,a0
    8002fd0a:	f555                	bnez	a0,8002fcb6 <add_import+0x68>
quickjs-nuttx/quickjs.c:29158
    mi = &m->import_entries[m->import_entries_count++];
    8002fd0c:	4838                	lw	a4,80(s0)
    8002fd0e:	643c                	ld	a5,72(s0)
quickjs-nuttx/quickjs.c:29159
    mi->import_name = JS_DupAtom(ctx, import_name);
    8002fd10:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:29158
    mi = &m->import_entries[m->import_entries_count++];
    8002fd12:	0017069b          	addiw	a3,a4,1
    8002fd16:	c834                	sw	a3,80(s0)
    8002fd18:	4431                	li	s0,12
    8002fd1a:	02870433          	mul	s0,a4,s0
quickjs-nuttx/quickjs.c:29159
    mi->import_name = JS_DupAtom(ctx, import_name);
    8002fd1e:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:29158
    mi = &m->import_entries[m->import_entries_count++];
    8002fd20:	943e                	add	s0,s0,a5
quickjs-nuttx/quickjs.c:29159
    mi->import_name = JS_DupAtom(ctx, import_name);
    8002fd22:	be4db0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002fd26:	c048                	sw	a0,4(s0)
quickjs-nuttx/quickjs.c:29160
    mi->var_idx = var_idx;
    8002fd28:	01242023          	sw	s2,0(s0)
quickjs-nuttx/quickjs.c:29161
    return 0;
    8002fd2c:	b771                	j	8002fcb8 <add_import+0x6a>

000000008002fd2e <js_parse_destructuring_var.constprop.0>:
js_parse_destructuring_var():
quickjs-nuttx/quickjs.c:23834
static JSAtom js_parse_destructuring_var(JSParseState *s, int tok, int is_arg)
    8002fd2e:	1101                	addi	sp,sp,-32
    8002fd30:	e822                	sd	s0,16(sp)
    8002fd32:	ec06                	sd	ra,24(sp)
    8002fd34:	e426                	sd	s1,8(sp)
    8002fd36:	e04a                	sd	s2,0(sp)
quickjs-nuttx/quickjs.c:23838
    if (!(s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved)
    8002fd38:	4d18                	lw	a4,24(a0)
    8002fd3a:	f8300793          	li	a5,-125
quickjs-nuttx/quickjs.c:23834
static JSAtom js_parse_destructuring_var(JSParseState *s, int tok, int is_arg)
    8002fd3e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:23838
    if (!(s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved)
    8002fd40:	02f71363          	bne	a4,a5,8002fd66 <js_parse_destructuring_var.constprop.0+0x38>
    8002fd44:	591c                	lw	a5,48(a0)
    8002fd46:	e385                	bnez	a5,8002fd66 <js_parse_destructuring_var.constprop.0+0x38>
quickjs-nuttx/quickjs.c:23839
    ||  ((s->cur_func->js_mode & JS_MODE_STRICT) &&
    8002fd48:	753c                	ld	a5,104(a0)
    8002fd4a:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:23840
         (s->token.u.ident.atom == JS_ATOM_eval || s->token.u.ident.atom == JS_ATOM_arguments))) {
    8002fd4c:	550c                	lw	a1,40(a0)
quickjs-nuttx/quickjs.c:23839
    ||  ((s->cur_func->js_mode & JS_MODE_STRICT) &&
    8002fd4e:	0867c783          	lbu	a5,134(a5)
    8002fd52:	8b85                	andi	a5,a5,1
    8002fd54:	cb85                	beqz	a5,8002fd84 <js_parse_destructuring_var.constprop.0+0x56>
    8002fd56:	03b00793          	li	a5,59
    8002fd5a:	00f58663          	beq	a1,a5,8002fd66 <js_parse_destructuring_var.constprop.0+0x38>
quickjs-nuttx/quickjs.c:23840
         (s->token.u.ident.atom == JS_ATOM_eval || s->token.u.ident.atom == JS_ATOM_arguments))) {
    8002fd5e:	04e00793          	li	a5,78
    8002fd62:	02f59163          	bne	a1,a5,8002fd84 <js_parse_destructuring_var.constprop.0+0x56>
quickjs-nuttx/quickjs.c:23841
        js_parse_error(s, "invalid destructuring target");
    8002fd66:	0003c597          	auipc	a1,0x3c
    8002fd6a:	08a58593          	addi	a1,a1,138 # 8006bdf0 <qjsc_repl+0x6840>
    8002fd6e:	8522                	mv	a0,s0
    8002fd70:	f03fd0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:23853
    return JS_ATOM_NULL;
    8002fd74:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:23854
}
    8002fd76:	60e2                	ld	ra,24(sp)
    8002fd78:	6442                	ld	s0,16(sp)
    8002fd7a:	6902                	ld	s2,0(sp)
    8002fd7c:	8526                	mv	a0,s1
    8002fd7e:	64a2                	ld	s1,8(sp)
    8002fd80:	6105                	addi	sp,sp,32
    8002fd82:	8082                	ret
quickjs-nuttx/quickjs.c:23844
    name = JS_DupAtom(s->ctx, s->token.u.ident.atom);
    8002fd84:	6008                	ld	a0,0(s0)
    8002fd86:	b80db0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002fd8a:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:23845
    if (is_arg && js_parse_check_duplicate_parameter(s, name))
    8002fd8e:	00091b63          	bnez	s2,8002fda4 <js_parse_destructuring_var.constprop.0+0x76>
quickjs-nuttx/quickjs.c:23847
    if (next_token(s))
    8002fd92:	8522                	mv	a0,s0
    8002fd94:	ff2fe0ef          	jal	ra,8002e586 <next_token>
    8002fd98:	dd79                	beqz	a0,8002fd76 <js_parse_destructuring_var.constprop.0+0x48>
quickjs-nuttx/quickjs.c:23852
    JS_FreeAtom(s->ctx, name);
    8002fd9a:	6008                	ld	a0,0(s0)
    8002fd9c:	85a6                	mv	a1,s1
    8002fd9e:	baadb0ef          	jal	ra,8000b148 <JS_FreeAtom>
    8002fda2:	bfc9                	j	8002fd74 <js_parse_destructuring_var.constprop.0+0x46>
quickjs-nuttx/quickjs.c:23845
    if (is_arg && js_parse_check_duplicate_parameter(s, name))
    8002fda4:	85a6                	mv	a1,s1
    8002fda6:	8522                	mv	a0,s0
    8002fda8:	e50ff0ef          	jal	ra,8002f3f8 <js_parse_check_duplicate_parameter>
    8002fdac:	d17d                	beqz	a0,8002fd92 <js_parse_destructuring_var.constprop.0+0x64>
    8002fdae:	b7f5                	j	8002fd9a <js_parse_destructuring_var.constprop.0+0x6c>

000000008002fdb0 <json_parse_expect>:
json_parse_expect():
quickjs-nuttx/quickjs.c:44842
    if (s->token.val != tok) {
    8002fdb0:	4d1c                	lw	a5,24(a0)
quickjs-nuttx/quickjs.c:44841
{
    8002fdb2:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:44842
    if (s->token.val != tok) {
    8002fdb4:	00b78863          	beq	a5,a1,8002fdc4 <json_parse_expect+0x14>
quickjs-nuttx/quickjs.c:44844
        return js_parse_error(s, "expecting '%c'", tok);
    8002fdb8:	0003c597          	auipc	a1,0x3c
    8002fdbc:	f3858593          	addi	a1,a1,-200 # 8006bcf0 <qjsc_repl+0x6740>
    8002fdc0:	eb3fd06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:44846
    return json_next_token(s);
    8002fdc4:	aeefe06f          	j	8002e0b2 <json_next_token>

000000008002fdc8 <js_regexp_constructor_internal>:
js_regexp_constructor_internal():
quickjs-nuttx/quickjs.c:43369
{
    8002fdc8:	7119                	addi	sp,sp,-128
    8002fdca:	f4a6                	sd	s1,104(sp)
    8002fdcc:	e03e                	sd	a5,0(sp)
    8002fdce:	e442                	sd	a6,8(sp)
    8002fdd0:	fc86                	sd	ra,120(sp)
    8002fdd2:	f8a2                	sd	s0,112(sp)
    8002fdd4:	f0ca                	sd	s2,96(sp)
    8002fdd6:	e836                	sd	a3,16(sp)
    8002fdd8:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:43375
    if (JS_VALUE_GET_TAG(bc) != JS_TAG_STRING ||
    8002fdda:	2801                	sext.w	a6,a6
    8002fddc:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:43369
{
    8002fdde:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:43375
    if (JS_VALUE_GET_TAG(bc) != JS_TAG_STRING ||
    8002fde0:	00f81563          	bne	a6,a5,8002fdea <js_regexp_constructor_internal+0x22>
quickjs-nuttx/quickjs.c:43375 (discriminator 1)
    8002fde4:	2701                	sext.w	a4,a4
    8002fde6:	03070e63          	beq	a4,a6,8002fe22 <js_regexp_constructor_internal+0x5a>
quickjs-nuttx/quickjs.c:43377
        JS_ThrowTypeError(ctx, "string expected");
    8002fdea:	0003c597          	auipc	a1,0x3c
    8002fdee:	27658593          	addi	a1,a1,630 # 8006c060 <qjsc_repl+0x6ab0>
    8002fdf2:	8526                	mv	a0,s1
    8002fdf4:	879e80ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:43379
        JS_FreeValue(ctx, bc);
    8002fdf8:	6582                	ld	a1,0(sp)
    8002fdfa:	6622                	ld	a2,8(sp)
    8002fdfc:	8526                	mv	a0,s1
    8002fdfe:	9a1db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43380
        JS_FreeValue(ctx, pattern);
    8002fe02:	65c2                	ld	a1,16(sp)
    8002fe04:	6662                	ld	a2,24(sp)
    8002fe06:	8526                	mv	a0,s1
    8002fe08:	997db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43381
        return JS_EXCEPTION;
    8002fe0c:	4799                	li	a5,6
    8002fe0e:	e082                	sd	zero,64(sp)
    8002fe10:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:43394 (discriminator 1)
}
    8002fe12:	70e6                	ld	ra,120(sp)
    8002fe14:	7446                	ld	s0,112(sp)
    8002fe16:	6506                	ld	a0,64(sp)
    8002fe18:	65a6                	ld	a1,72(sp)
    8002fe1a:	74a6                	ld	s1,104(sp)
    8002fe1c:	7906                	ld	s2,96(sp)
    8002fe1e:	6109                	addi	sp,sp,128
    8002fe20:	8082                	ret
quickjs-nuttx/quickjs.c:43384
    obj = js_create_from_ctor(ctx, ctor, JS_CLASS_REGEXP);
    8002fe22:	46c9                	li	a3,18
    8002fe24:	e59eb0ef          	jal	ra,8001bc7c <js_create_from_ctor>
quickjs-nuttx/quickjs.c:43385
    if (JS_IsException(obj))
    8002fe28:	0005871b          	sext.w	a4,a1
    8002fe2c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:43384
    obj = js_create_from_ctor(ctx, ctor, JS_CLASS_REGEXP);
    8002fe2e:	842a                	mv	s0,a0
    8002fe30:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:43385
    if (JS_IsException(obj))
    8002fe32:	fcf703e3          	beq	a4,a5,8002fdf8 <js_regexp_constructor_internal+0x30>
quickjs-nuttx/quickjs.c:43389
    re->pattern = JS_VALUE_GET_STRING(pattern);
    8002fe36:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:43391
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_lastIndex, JS_NewInt32(ctx, 0),
    8002fe38:	85aa                	mv	a1,a0
    8002fe3a:	4809                	li	a6,2
quickjs-nuttx/quickjs.c:43389
    re->pattern = JS_VALUE_GET_STRING(pattern);
    8002fe3c:	f91c                	sd	a5,48(a0)
quickjs-nuttx/quickjs.c:43390
    re->bytecode = JS_VALUE_GET_STRING(bc);
    8002fe3e:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:43391
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_lastIndex, JS_NewInt32(ctx, 0),
    8002fe40:	4701                	li	a4,0
    8002fe42:	05600693          	li	a3,86
quickjs-nuttx/quickjs.c:43390
    re->bytecode = JS_VALUE_GET_STRING(bc);
    8002fe46:	fd1c                	sd	a5,56(a0)
quickjs-nuttx/quickjs.c:43391
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_lastIndex, JS_NewInt32(ctx, 0),
    8002fe48:	864a                	mv	a2,s2
    8002fe4a:	4781                	li	a5,0
    8002fe4c:	8526                	mv	a0,s1
    8002fe4e:	bdee80ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:43393
    return obj;
    8002fe52:	e0a2                	sd	s0,64(sp)
    8002fe54:	e4ca                	sd	s2,72(sp)
    8002fe56:	bf75                	j	8002fe12 <js_regexp_constructor_internal+0x4a>

000000008002fe58 <js_regexp_constructor>:
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43426
{
    8002fe58:	712d                	addi	sp,sp,-288
    8002fe5a:	fdce                	sd	s3,248(sp)
    8002fe5c:	f9d2                	sd	s4,240(sp)
    8002fe5e:	ee06                	sd	ra,280(sp)
    8002fe60:	ea22                	sd	s0,272(sp)
    8002fe62:	e626                	sd	s1,264(sp)
    8002fe64:	e24a                	sd	s2,256(sp)
    8002fe66:	f5d6                	sd	s5,232(sp)
    8002fe68:	f1da                	sd	s6,224(sp)
    8002fe6a:	edde                	sd	s7,216(sp)
quickjs-nuttx/quickjs.c:43432
    pat = argv[0];
    8002fe6c:	00073a83          	ld	s5,0(a4) # ffff000 <asinh-0x70001000>
    8002fe70:	00873b03          	ld	s6,8(a4)
quickjs-nuttx/quickjs.c:43433
    flags1 = argv[1];
    8002fe74:	6b1c                	ld	a5,16(a4)
    8002fe76:	01873903          	ld	s2,24(a4)
quickjs-nuttx/quickjs.c:43426
{
    8002fe7a:	e82e                	sd	a1,16(sp)
    8002fe7c:	ec32                	sd	a2,24(sp)
    8002fe7e:	8a32                	mv	s4,a2
quickjs-nuttx/quickjs.c:43434
    pat_is_regexp = js_is_regexp(ctx, pat);
    8002fe80:	85d6                	mv	a1,s5
    8002fe82:	865a                	mv	a2,s6
quickjs-nuttx/quickjs.c:43426
{
    8002fe84:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:43432
    pat = argv[0];
    8002fe86:	f0d6                	sd	s5,96(sp)
    8002fe88:	f4da                	sd	s6,104(sp)
quickjs-nuttx/quickjs.c:43433
    flags1 = argv[1];
    8002fe8a:	f8be                	sd	a5,112(sp)
    8002fe8c:	fcca                	sd	s2,120(sp)
quickjs-nuttx/quickjs.c:43434
    pat_is_regexp = js_is_regexp(ctx, pat);
    8002fe8e:	802e70ef          	jal	ra,80016e90 <js_is_regexp>
quickjs-nuttx/quickjs.c:43435
    if (pat_is_regexp < 0)
    8002fe92:	00055663          	bgez	a0,8002fe9e <js_regexp_constructor+0x46>
quickjs-nuttx/quickjs.c:43499
    return JS_EXCEPTION;
    8002fe96:	4799                	li	a5,6
    8002fe98:	f102                	sd	zero,160(sp)
    8002fe9a:	f53e                	sd	a5,168(sp)
    8002fe9c:	a8b1                	j	8002fef8 <js_regexp_constructor+0xa0>
quickjs-nuttx/quickjs.c:43437
    if (JS_IsUndefined(new_target)) {
    8002fe9e:	000a079b          	sext.w	a5,s4
    8002fea2:	470d                	li	a4,3
    8002fea4:	842a                	mv	s0,a0
    8002fea6:	0ae79163          	bne	a5,a4,8002ff48 <js_regexp_constructor+0xf0>
JS_GetActiveFunction():
quickjs-nuttx/quickjs.c:15534
    return ctx->rt->current_stack_frame->cur_func;
    8002feaa:	0189b703          	ld	a4,24(s3)
    8002feae:	7f74                	ld	a3,248(a4)
    8002feb0:	6698                	ld	a4,8(a3)
    8002feb2:	0106ba03          	ld	s4,16(a3)
    8002feb6:	e1ba                	sd	a4,192(sp)
    8002feb8:	e5d2                	sd	s4,200(sp)
    8002feba:	e83a                	sd	a4,16(sp)
    8002febc:	ec52                	sd	s4,24(sp)
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43440
        if (pat_is_regexp && JS_IsUndefined(flags1)) {
    8002febe:	c549                	beqz	a0,8002ff48 <js_regexp_constructor+0xf0>
quickjs-nuttx/quickjs.c:43440 (discriminator 1)
    8002fec0:	0009071b          	sext.w	a4,s2
    8002fec4:	08f71263          	bne	a4,a5,8002ff48 <js_regexp_constructor+0xf0>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8002fec8:	8756                	mv	a4,s5
    8002feca:	87da                	mv	a5,s6
    8002fecc:	865a                	mv	a2,s6
    8002fece:	4801                	li	a6,0
    8002fed0:	03d00693          	li	a3,61
    8002fed4:	85d6                	mv	a1,s5
    8002fed6:	854e                	mv	a0,s3
    8002fed8:	f956                	sd	s5,176(sp)
    8002feda:	fd5a                	sd	s6,184(sp)
    8002fedc:	bcfe60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8002fee0:	e12a                	sd	a0,128(sp)
    8002fee2:	e52e                	sd	a1,136(sp)
    8002fee4:	e92a                	sd	a0,144(sp)
    8002fee6:	ed2e                	sd	a1,152(sp)
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43444
            if (JS_IsException(ctor))
    8002fee8:	0005871b          	sext.w	a4,a1
    8002feec:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8002feee:	862e                	mv	a2,a1
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43444
    8002fef0:	02f71163          	bne	a4,a5,8002ff12 <js_regexp_constructor+0xba>
quickjs-nuttx/quickjs.c:43445
                return ctor;
    8002fef4:	f12a                	sd	a0,160(sp)
    8002fef6:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:43500 (discriminator 1)
}
    8002fef8:	60f2                	ld	ra,280(sp)
    8002fefa:	6452                	ld	s0,272(sp)
    8002fefc:	750a                	ld	a0,160(sp)
    8002fefe:	75aa                	ld	a1,168(sp)
    8002ff00:	64b2                	ld	s1,264(sp)
    8002ff02:	6912                	ld	s2,256(sp)
    8002ff04:	79ee                	ld	s3,248(sp)
    8002ff06:	7a4e                	ld	s4,240(sp)
    8002ff08:	7aae                	ld	s5,232(sp)
    8002ff0a:	7b0e                	ld	s6,224(sp)
    8002ff0c:	6bee                	ld	s7,216(sp)
    8002ff0e:	6115                	addi	sp,sp,288
    8002ff10:	8082                	ret
quickjs-nuttx/quickjs.c:43446
            res = js_same_value(ctx, ctor, new_target);
    8002ff12:	66c2                	ld	a3,16(sp)
    8002ff14:	6762                	ld	a4,24(sp)
    8002ff16:	85aa                	mv	a1,a0
    8002ff18:	854e                	mv	a0,s3
    8002ff1a:	a59db0ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:43447
            JS_FreeValue(ctx, ctor);
    8002ff1e:	65ca                	ld	a1,144(sp)
    8002ff20:	666a                	ld	a2,152(sp)
quickjs-nuttx/quickjs.c:43446
            res = js_same_value(ctx, ctor, new_target);
    8002ff22:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:43447
            JS_FreeValue(ctx, ctor);
    8002ff24:	854e                	mv	a0,s3
    8002ff26:	879db0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43448
            if (res)
    8002ff2a:	cc99                	beqz	s1,8002ff48 <js_regexp_constructor+0xf0>
quickjs-nuttx/quickjs.c:43500
}
    8002ff2c:	6452                	ld	s0,272(sp)
quickjs-nuttx/quickjs.c:43449
                return JS_DupValue(ctx, pat);
    8002ff2e:	7506                	ld	a0,96(sp)
    8002ff30:	75a6                	ld	a1,104(sp)
quickjs-nuttx/quickjs.c:43500
}
    8002ff32:	60f2                	ld	ra,280(sp)
    8002ff34:	64b2                	ld	s1,264(sp)
    8002ff36:	6912                	ld	s2,256(sp)
    8002ff38:	79ee                	ld	s3,248(sp)
    8002ff3a:	7a4e                	ld	s4,240(sp)
    8002ff3c:	7aae                	ld	s5,232(sp)
    8002ff3e:	7b0e                	ld	s6,224(sp)
    8002ff40:	6bee                	ld	s7,216(sp)
    8002ff42:	6115                	addi	sp,sp,288
quickjs-nuttx/quickjs.c:43449
                return JS_DupValue(ctx, pat);
    8002ff44:	cd6da06f          	j	8000a41a <JS_DupValue.constprop.0>
js_get_regexp():
quickjs-nuttx/quickjs.c:43398
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8002ff48:	000b079b          	sext.w	a5,s6
    8002ff4c:	577d                	li	a4,-1
    8002ff4e:	06e79963          	bne	a5,a4,8002ffc0 <js_regexp_constructor+0x168>
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    8002ff52:	006ad703          	lhu	a4,6(s5)
    8002ff56:	47c9                	li	a5,18
    8002ff58:	06f71463          	bne	a4,a5,8002ffc0 <js_regexp_constructor+0x168>
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43454
        pattern = JS_DupValue(ctx, JS_MKPTR(JS_TAG_STRING, re->pattern));
    8002ff5c:	030ab483          	ld	s1,48(s5)
quickjs-nuttx/quickjs.c:43455
        if (JS_IsUndefined(flags1)) {
    8002ff60:	0009071b          	sext.w	a4,s2
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8002ff64:	409c                	lw	a5,0(s1)
    8002ff66:	2785                	addiw	a5,a5,1
    8002ff68:	c09c                	sw	a5,0(s1)
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43455
    8002ff6a:	478d                	li	a5,3
    8002ff6c:	02f71c63          	bne	a4,a5,8002ffa4 <js_regexp_constructor+0x14c>
quickjs-nuttx/quickjs.c:43456
            bc = JS_DupValue(ctx, JS_MKPTR(JS_TAG_STRING, re->bytecode));
    8002ff70:	038ab783          	ld	a5,56(s5)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8002ff74:	5865                	li	a6,-7
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43454
        pattern = JS_DupValue(ctx, JS_MKPTR(JS_TAG_STRING, re->pattern));
    8002ff76:	5465                	li	s0,-7
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8002ff78:	4398                	lw	a4,0(a5)
    8002ff7a:	e0be                	sd	a5,64(sp)
    8002ff7c:	2705                	addiw	a4,a4,1
    8002ff7e:	c398                	sw	a4,0(a5)
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43495
    return js_regexp_constructor_internal(ctx, new_target, pattern, bc);
    8002ff80:	8722                	mv	a4,s0
quickjs-nuttx/quickjs.c:43500
}
    8002ff82:	6452                	ld	s0,272(sp)
quickjs-nuttx/quickjs.c:43495
    return js_regexp_constructor_internal(ctx, new_target, pattern, bc);
    8002ff84:	6786                	ld	a5,64(sp)
    8002ff86:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:43500
}
    8002ff88:	60f2                	ld	ra,280(sp)
    8002ff8a:	6912                	ld	s2,256(sp)
    8002ff8c:	7aae                	ld	s5,232(sp)
    8002ff8e:	7b0e                	ld	s6,224(sp)
    8002ff90:	6bee                	ld	s7,216(sp)
quickjs-nuttx/quickjs.c:43495
    return js_regexp_constructor_internal(ctx, new_target, pattern, bc);
    8002ff92:	86a6                	mv	a3,s1
    8002ff94:	8652                	mv	a2,s4
quickjs-nuttx/quickjs.c:43500
}
    8002ff96:	64b2                	ld	s1,264(sp)
    8002ff98:	7a4e                	ld	s4,240(sp)
quickjs-nuttx/quickjs.c:43495
    return js_regexp_constructor_internal(ctx, new_target, pattern, bc);
    8002ff9a:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:43500
}
    8002ff9c:	79ee                	ld	s3,248(sp)
    8002ff9e:	6115                	addi	sp,sp,288
quickjs-nuttx/quickjs.c:43495
    return js_regexp_constructor_internal(ctx, new_target, pattern, bc);
    8002ffa0:	e29ff06f          	j	8002fdc8 <js_regexp_constructor_internal>
quickjs-nuttx/quickjs.c:43459
            flags = JS_ToString(ctx, flags1);
    8002ffa4:	75c6                	ld	a1,112(sp)
    8002ffa6:	7666                	ld	a2,120(sp)
    8002ffa8:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:43454
        pattern = JS_DupValue(ctx, JS_MKPTR(JS_TAG_STRING, re->pattern));
    8002ffaa:	5465                	li	s0,-7
quickjs-nuttx/quickjs.c:43459
            flags = JS_ToString(ctx, flags1);
    8002ffac:	fd0f00ef          	jal	ra,8002077c <JS_ToString>
    8002ffb0:	f82a                	sd	a0,48(sp)
    8002ffb2:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:43460
            if (JS_IsException(flags))
    8002ffb4:	0005871b          	sext.w	a4,a1
    8002ffb8:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:43486
            if (JS_IsException(pattern))
    8002ffba:	0af71663          	bne	a4,a5,80030066 <js_regexp_constructor+0x20e>
    8002ffbe:	a08d                	j	80030020 <js_regexp_constructor+0x1c8>
quickjs-nuttx/quickjs.c:43464
        flags = JS_UNDEFINED;
    8002ffc0:	f802                	sd	zero,48(sp)
quickjs-nuttx/quickjs.c:43465
        if (pat_is_regexp) {
    8002ffc2:	c835                	beqz	s0,80030036 <js_regexp_constructor+0x1de>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8002ffc4:	87da                	mv	a5,s6
    8002ffc6:	4801                	li	a6,0
    8002ffc8:	8756                	mv	a4,s5
    8002ffca:	06d00693          	li	a3,109
    8002ffce:	85d6                	mv	a1,s5
    8002ffd0:	865a                	mv	a2,s6
    8002ffd2:	854e                	mv	a0,s3
    8002ffd4:	f956                	sd	s5,176(sp)
    8002ffd6:	fd5a                	sd	s6,184(sp)
    8002ffd8:	ad3e60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8002ffdc:	e92a                	sd	a0,144(sp)
    8002ffde:	ed2e                	sd	a1,152(sp)
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43467
            if (JS_IsException(pattern))
    8002ffe0:	0005879b          	sext.w	a5,a1
    8002ffe4:	4b99                	li	s7,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8002ffe6:	842e                	mv	s0,a1
    8002ffe8:	84aa                	mv	s1,a0
js_regexp_constructor():
quickjs-nuttx/quickjs.c:43467
    8002ffea:	0d778663          	beq	a5,s7,800300b6 <js_regexp_constructor+0x25e>
quickjs-nuttx/quickjs.c:43469
            if (JS_IsUndefined(flags1)) {
    8002ffee:	0009071b          	sext.w	a4,s2
    8002fff2:	478d                	li	a5,3
    8002fff4:	04f71763          	bne	a4,a5,80030042 <js_regexp_constructor+0x1ea>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8002fff8:	87da                	mv	a5,s6
    8002fffa:	4801                	li	a6,0
    8002fffc:	8756                	mv	a4,s5
    8002fffe:	06e00693          	li	a3,110
