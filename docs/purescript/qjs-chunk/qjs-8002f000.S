    8002e000:	0026c783          	lbu	a5,2(a3)
    8002e004:	4725                	li	a4,9
    8002e006:	fd07879b          	addiw	a5,a5,-48
    8002e00a:	0ff7f793          	zext.b	a5,a5
    8002e00e:	faf765e3          	bltu	a4,a5,8002dfb8 <js_parse_string+0x18e>
quickjs-nuttx/quickjs.c:20283 (discriminator 1)
                        if (c >= '8' || sep == '`') {
    8002e012:	06000793          	li	a5,96
    8002e016:	f6f481e3          	beq	s1,a5,8002df78 <js_parse_string+0x14e>
quickjs-nuttx/quickjs.c:20289
                                js_parse_error(s, "octal escape sequences are not allowed in strict mode");
    8002e01a:	0003e597          	auipc	a1,0x3e
    8002e01e:	8c658593          	addi	a1,a1,-1850 # 8006b8e0 <qjsc_repl+0x6330>
quickjs-nuttx/quickjs.c:20288
                            if (do_throw)
    8002e022:	e6090ce3          	beqz	s2,8002de9a <js_parse_string+0x70>
quickjs-nuttx/quickjs.c:20342
        js_parse_error(s, "unexpected end of string");
    8002e026:	856a                	mv	a0,s10
    8002e028:	c4bff0ef          	jal	ra,8002dc72 <js_parse_error>
    8002e02c:	b5bd                	j	8002de9a <js_parse_string+0x70>
quickjs-nuttx/quickjs.c:20283
                        if (c >= '8' || sep == '`') {
    8002e02e:	03700793          	li	a5,55
    8002e032:	f487e3e3          	bltu	a5,s0,8002df78 <js_parse_string+0x14e>
    8002e036:	bff1                	j	8002e012 <js_parse_string+0x1e8>
quickjs-nuttx/quickjs.c:20293
                } else if (c >= 0x80) {
    8002e038:	07f00793          	li	a5,127
    8002e03c:	0287f363          	bgeu	a5,s0,8002e062 <js_parse_string+0x238>
quickjs-nuttx/quickjs.c:20295
                    c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p_next);
    8002e040:	0830                	addi	a2,sp,24
    8002e042:	4599                	li	a1,6
    8002e044:	477230ef          	jal	ra,80051cba <unicode_from_utf8>
    8002e048:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:20296
                    if (c > 0x10FFFF) {
    8002e04c:	001107b7          	lui	a5,0x110
    8002e050:	04f47a63          	bgeu	s0,a5,8002e0a4 <js_parse_string+0x27a>
quickjs-nuttx/quickjs.c:20299
                    p = p_next;
    8002e054:	67e2                	ld	a5,24(sp)
    8002e056:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:20301
                    if (c == CP_LS || c == CP_PS)
    8002e058:	008b87bb          	addw	a5,s7,s0
    8002e05c:	f4fb65e3          	bltu	s6,a5,8002dfa6 <js_parse_string+0x17c>
    8002e060:	bd11                	j	8002de74 <js_parse_string+0x4a>
quickjs-nuttx/quickjs.c:20305
                    ret = lre_parse_escape(&p, TRUE);
    8002e062:	4585                	li	a1,1
    8002e064:	0028                	addi	a0,sp,8
    8002e066:	64b1f0ef          	jal	ra,8004deb0 <lre_parse_escape>
quickjs-nuttx/quickjs.c:20306
                    if (ret == -1) {
    8002e06a:	57fd                	li	a5,-1
    8002e06c:	f0f506e3          	beq	a0,a5,8002df78 <js_parse_string+0x14e>
quickjs-nuttx/quickjs.c:20311
                    } else if (ret < 0) {
    8002e070:	00055663          	bgez	a0,8002e07c <js_parse_string+0x252>
quickjs-nuttx/quickjs.c:20313
                        p++;
    8002e074:	67a2                	ld	a5,8(sp)
    8002e076:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:20325
            p = p_next;
    8002e078:	e43e                	sd	a5,8(sp)
    8002e07a:	b735                	j	8002dfa6 <js_parse_string+0x17c>
quickjs-nuttx/quickjs.c:20315
                        c = ret;
    8002e07c:	0005041b          	sext.w	s0,a0
    8002e080:	b71d                	j	8002dfa6 <js_parse_string+0x17c>
quickjs-nuttx/quickjs.c:20320
        } else if (c >= 0x80) {
    8002e082:	07f00793          	li	a5,127
    8002e086:	f287f0e3          	bgeu	a5,s0,8002dfa6 <js_parse_string+0x17c>
quickjs-nuttx/quickjs.c:20322
            c = unicode_from_utf8(p - 1, UTF8_CHAR_LEN_MAX, &p_next);
    8002e08a:	0830                	addi	a2,sp,24
    8002e08c:	4599                	li	a1,6
    8002e08e:	8536                	mv	a0,a3
    8002e090:	42b230ef          	jal	ra,80051cba <unicode_from_utf8>
    8002e094:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:20323
            if (c > 0x10FFFF)
    8002e098:	001107b7          	lui	a5,0x110
    8002e09c:	00f47463          	bgeu	s0,a5,8002e0a4 <js_parse_string+0x27a>
quickjs-nuttx/quickjs.c:20325
            p = p_next;
    8002e0a0:	67e2                	ld	a5,24(sp)
    8002e0a2:	bfd9                	j	8002e078 <js_parse_string+0x24e>
quickjs-nuttx/quickjs.c:20338
        js_parse_error(s, "invalid UTF-8 sequence");
    8002e0a4:	0003e597          	auipc	a1,0x3e
    8002e0a8:	8a458593          	addi	a1,a1,-1884 # 8006b948 <qjsc_repl+0x6398>
quickjs-nuttx/quickjs.c:20337
    if (do_throw)
    8002e0ac:	de0907e3          	beqz	s2,8002de9a <js_parse_string+0x70>
    8002e0b0:	bf9d                	j	8002e026 <js_parse_string+0x1fc>

000000008002e0b2 <json_next_token>:
json_next_token():
quickjs-nuttx/quickjs.c:21096
{
    8002e0b2:	7111                	addi	sp,sp,-256
    8002e0b4:	f9a2                	sd	s0,240(sp)
    8002e0b6:	fd86                	sd	ra,248(sp)
    8002e0b8:	f5a6                	sd	s1,232(sp)
    8002e0ba:	f1ca                	sd	s2,224(sp)
    8002e0bc:	edce                	sd	s3,216(sp)
    8002e0be:	e9d2                	sd	s4,208(sp)
    8002e0c0:	e5d6                	sd	s5,200(sp)
    8002e0c2:	e1da                	sd	s6,192(sp)
    8002e0c4:	fd5e                	sd	s7,184(sp)
    8002e0c6:	f962                	sd	s8,176(sp)
    8002e0c8:	f566                	sd	s9,168(sp)
    8002e0ca:	0200                	addi	s0,sp,256
quickjs-nuttx/quickjs.c:21101
    if (js_check_stack_overflow(s->ctx->rt, 0)) {
    8002e0cc:	611c                	ld	a5,0(a0)
    8002e0ce:	6f9c                	ld	a5,24(a5)
    8002e0d0:	6ffc                	ld	a5,216(a5)
    8002e0d2:	02f47463          	bgeu	s0,a5,8002e0fa <json_next_token+0x48>
quickjs-nuttx/quickjs.c:21287
}
    8002e0d6:	744e                	ld	s0,240(sp)
    8002e0d8:	70ee                	ld	ra,248(sp)
    8002e0da:	74ae                	ld	s1,232(sp)
    8002e0dc:	790e                	ld	s2,224(sp)
    8002e0de:	69ee                	ld	s3,216(sp)
    8002e0e0:	6a4e                	ld	s4,208(sp)
    8002e0e2:	6aae                	ld	s5,200(sp)
    8002e0e4:	6b0e                	ld	s6,192(sp)
    8002e0e6:	7bea                	ld	s7,184(sp)
    8002e0e8:	7c4a                	ld	s8,176(sp)
    8002e0ea:	7caa                	ld	s9,168(sp)
quickjs-nuttx/quickjs.c:21102
        return js_parse_error(s, "stack overflow");
    8002e0ec:	0003c597          	auipc	a1,0x3c
    8002e0f0:	45458593          	addi	a1,a1,1108 # 8006a540 <qjsc_repl+0x4f90>
quickjs-nuttx/quickjs.c:21287
}
    8002e0f4:	6111                	addi	sp,sp,256
quickjs-nuttx/quickjs.c:21102
        return js_parse_error(s, "stack overflow");
    8002e0f6:	b7dff06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:21105
    free_token(s, &s->token);
    8002e0fa:	01850993          	addi	s3,a0,24
    8002e0fe:	85ce                	mv	a1,s3
    8002e100:	84aa                	mv	s1,a0
    8002e102:	a97de0ef          	jal	ra,8000cb98 <free_token>
quickjs-nuttx/quickjs.c:21107
    p = s->last_ptr = s->buf_ptr;
    8002e106:	6cbc                	ld	a5,88(s1)
quickjs-nuttx/quickjs.c:21194
                    if (c == CP_LS || c == CP_PS) {
    8002e108:	7979                	lui	s2,0xffffe
    8002e10a:	0003ea17          	auipc	s4,0x3e
    8002e10e:	8aea0a13          	addi	s4,s4,-1874 # 8006b9b8 <qjsc_repl+0x6408>
quickjs-nuttx/quickjs.c:21107
    p = s->last_ptr = s->buf_ptr;
    8002e112:	e8bc                	sd	a5,80(s1)
    8002e114:	f0f43023          	sd	a5,-256(s0)
quickjs-nuttx/quickjs.c:21108
    s->last_line_num = s->token.line_num;
    8002e118:	4cdc                	lw	a5,28(s1)
quickjs-nuttx/quickjs.c:21189
                if (*p == '\r' || *p == '\n')
    8002e11a:	4ab5                	li	s5,13
quickjs-nuttx/quickjs.c:21194
                    if (c == CP_LS || c == CP_PS) {
    8002e11c:	fd89091b          	addiw	s2,s2,-40
quickjs-nuttx/quickjs.c:21108
    s->last_line_num = s->token.line_num;
    8002e120:	c49c                	sw	a5,8(s1)
quickjs-nuttx/quickjs.c:21111
    s->token.ptr = p;
    8002e122:	f0043583          	ld	a1,-256(s0)
quickjs-nuttx/quickjs.c:21110
    s->token.line_num = s->line_num;
    8002e126:	44d8                	lw	a4,12(s1)
quickjs-nuttx/quickjs.c:21113
    switch(c) {
    8002e128:	03900693          	li	a3,57
quickjs-nuttx/quickjs.c:21111
    s->token.ptr = p;
    8002e12c:	f08c                	sd	a1,32(s1)
quickjs-nuttx/quickjs.c:21110
    s->token.line_num = s->line_num;
    8002e12e:	ccd8                	sw	a4,28(s1)
quickjs-nuttx/quickjs.c:21112
    c = *p;
    8002e130:	0005c783          	lbu	a5,0(a1)
    8002e134:	00078b1b          	sext.w	s6,a5
quickjs-nuttx/quickjs.c:21113
    switch(c) {
    8002e138:	04f6e463          	bltu	a3,a5,8002e180 <json_next_token+0xce>
    8002e13c:	46fd                	li	a3,31
    8002e13e:	00f6ed63          	bltu	a3,a5,8002e158 <json_next_token+0xa6>
    8002e142:	02faf663          	bgeu	s5,a5,8002e16e <json_next_token+0xbc>
quickjs-nuttx/quickjs.c:21270
        if (c >= 128) {
    8002e146:	07f00793          	li	a5,127
    8002e14a:	2f67dd63          	bge	a5,s6,8002e444 <json_next_token+0x392>
quickjs-nuttx/quickjs.c:21271
            js_parse_error(s, "unexpected character");
    8002e14e:	0003e597          	auipc	a1,0x3e
    8002e152:	85258593          	addi	a1,a1,-1966 # 8006b9a0 <qjsc_repl+0x63f0>
    8002e156:	a269                	j	8002e2e0 <json_next_token+0x22e>
    8002e158:	3781                	addiw	a5,a5,-32
    8002e15a:	0ff7f793          	zext.b	a5,a5
    8002e15e:	4765                	li	a4,25
    8002e160:	fef763e3          	bltu	a4,a5,8002e146 <json_next_token+0x94>
    8002e164:	078a                	slli	a5,a5,0x2
    8002e166:	97d2                	add	a5,a5,s4
    8002e168:	439c                	lw	a5,0(a5)
    8002e16a:	97d2                	add	a5,a5,s4
    8002e16c:	8782                	jr	a5
    8002e16e:	0003e697          	auipc	a3,0x3e
    8002e172:	8b268693          	addi	a3,a3,-1870 # 8006ba20 <qjsc_repl+0x6470>
    8002e176:	078a                	slli	a5,a5,0x2
    8002e178:	97b6                	add	a5,a5,a3
    8002e17a:	439c                	lw	a5,0(a5)
    8002e17c:	97b6                	add	a5,a5,a3
    8002e17e:	8782                	jr	a5
quickjs-nuttx/quickjs.c:21113
    switch(c) {
    8002e180:	fbf7879b          	addiw	a5,a5,-65
    8002e184:	0ff7f793          	zext.b	a5,a5
    8002e188:	faf6efe3          	bltu	a3,a5,8002e146 <json_next_token+0x94>
    8002e18c:	4705                	li	a4,1
    8002e18e:	00f717b3          	sll	a5,a4,a5
    8002e192:	00066717          	auipc	a4,0x66
    8002e196:	abe73703          	ld	a4,-1346(a4) # 80093c50 <_erodata+0xde>
    8002e19a:	8ff9                	and	a5,a5,a4
    8002e19c:	d7cd                	beqz	a5,8002e146 <json_next_token+0x94>
quickjs-nuttx/quickjs.c:21225
        p++;
    8002e19e:	00158993          	addi	s3,a1,1
json_parse_ident():
quickjs-nuttx/quickjs.c:21070
    buf = ident_buf;
    8002e1a2:	f2040a13          	addi	s4,s0,-224
quickjs-nuttx/quickjs.c:21071
    ident_size = sizeof(ident_buf);
    8002e1a6:	08000793          	li	a5,128
json_next_token():
quickjs-nuttx/quickjs.c:21225
        p++;
    8002e1aa:	f1343023          	sd	s3,-256(s0)
json_parse_ident():
quickjs-nuttx/quickjs.c:21070
    buf = ident_buf;
    8002e1ae:	f1443423          	sd	s4,-248(s0)
quickjs-nuttx/quickjs.c:21071
    ident_size = sizeof(ident_buf);
    8002e1b2:	f0f43823          	sd	a5,-240(s0)
quickjs-nuttx/quickjs.c:21072
    ident_pos = 0;
    8002e1b6:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:21076
        if (c >= 128 ||
    8002e1b8:	07f00a93          	li	s5,127
quickjs-nuttx/quickjs.c:21077
            !((lre_id_continue_table_ascii[c >> 5] >> (c & 31)) & 1))
    8002e1bc:	00047b97          	auipc	s7,0x47
    8002e1c0:	5b4b8b93          	addi	s7,s7,1460 # 80075770 <lre_id_continue_table_ascii>
quickjs-nuttx/quickjs.c:21074
        buf[ident_pos++] = c;
    8002e1c4:	f0843783          	ld	a5,-248(s0)
    8002e1c8:	00170913          	addi	s2,a4,1
    8002e1cc:	97ba                	add	a5,a5,a4
    8002e1ce:	01678023          	sb	s6,0(a5) # 110000 <asinh-0x7fef0000>
quickjs-nuttx/quickjs.c:21075
        c = *p;
    8002e1d2:	0009c683          	lbu	a3,0(s3)
    8002e1d6:	00068b1b          	sext.w	s6,a3
quickjs-nuttx/quickjs.c:21076
        if (c >= 128 ||
    8002e1da:	1cdac563          	blt	s5,a3,8002e3a4 <json_next_token+0x2f2>
quickjs-nuttx/quickjs.c:21077
            !((lre_id_continue_table_ascii[c >> 5] >> (c & 31)) & 1))
    8002e1de:	005b5713          	srli	a4,s6,0x5
    8002e1e2:	070a                	slli	a4,a4,0x2
    8002e1e4:	975e                	add	a4,a4,s7
    8002e1e6:	431c                	lw	a5,0(a4)
    8002e1e8:	00d7d7bb          	srlw	a5,a5,a3
quickjs-nuttx/quickjs.c:21076
        if (c >= 128 ||
    8002e1ec:	8b85                	andi	a5,a5,1
    8002e1ee:	1a078b63          	beqz	a5,8002e3a4 <json_next_token+0x2f2>
quickjs-nuttx/quickjs.c:21080
        if (unlikely(ident_pos >= ident_size - UTF8_CHAR_LEN_MAX)) {
    8002e1f2:	f1043783          	ld	a5,-240(s0)
quickjs-nuttx/quickjs.c:21079
        p++;
    8002e1f6:	0985                	addi	s3,s3,1
quickjs-nuttx/quickjs.c:21080
        if (unlikely(ident_pos >= ident_size - UTF8_CHAR_LEN_MAX)) {
    8002e1f8:	17e9                	addi	a5,a5,-6
    8002e1fa:	1af96363          	bltu	s2,a5,8002e3a0 <json_next_token+0x2ee>
quickjs-nuttx/quickjs.c:21081
            if (ident_realloc(s->ctx, &buf, &ident_size, ident_buf)) {
    8002e1fe:	6088                	ld	a0,0(s1)
    8002e200:	86d2                	mv	a3,s4
    8002e202:	f1040613          	addi	a2,s0,-240
    8002e206:	f0840593          	addi	a1,s0,-248
    8002e20a:	910ee0ef          	jal	ra,8001c31a <ident_realloc>
    8002e20e:	18050963          	beqz	a0,8002e3a0 <json_next_token+0x2ee>
quickjs-nuttx/quickjs.c:21082
                atom = JS_ATOM_NULL;
    8002e212:	4901                	li	s2,0
    8002e214:	a245                	j	8002e3b4 <json_next_token+0x302>
json_next_token():
quickjs-nuttx/quickjs.c:21115
        if (p >= s->buf_end) {
    8002e216:	70bc                	ld	a5,96(s1)
    8002e218:	22f5e563          	bltu	a1,a5,8002e442 <json_next_token+0x390>
quickjs-nuttx/quickjs.c:21116
            s->token.val = TOK_EOF;
    8002e21c:	fac00793          	li	a5,-84
quickjs-nuttx/quickjs.c:21232
        s->token.val = TOK_IDENT;
    8002e220:	cc9c                	sw	a5,24(s1)
quickjs-nuttx/quickjs.c:21279
    s->buf_ptr = p;
    8002e222:	f0043783          	ld	a5,-256(s0)
quickjs-nuttx/quickjs.c:21282
    return 0;
    8002e226:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:21279
    s->buf_ptr = p;
    8002e228:	ecbc                	sd	a5,88(s1)
quickjs-nuttx/quickjs.c:21287
}
    8002e22a:	70ee                	ld	ra,248(sp)
    8002e22c:	744e                	ld	s0,240(sp)
    8002e22e:	74ae                	ld	s1,232(sp)
    8002e230:	790e                	ld	s2,224(sp)
    8002e232:	69ee                	ld	s3,216(sp)
    8002e234:	6a4e                	ld	s4,208(sp)
    8002e236:	6aae                	ld	s5,200(sp)
    8002e238:	6b0e                	ld	s6,192(sp)
    8002e23a:	7bea                	ld	s7,184(sp)
    8002e23c:	7c4a                	ld	s8,176(sp)
    8002e23e:	7caa                	ld	s9,168(sp)
    8002e240:	6111                	addi	sp,sp,256
    8002e242:	8082                	ret
quickjs-nuttx/quickjs.c:21122
        if (!s->ext_json) {
    8002e244:	5cbc                	lw	a5,120(s1)
quickjs-nuttx/quickjs.c:21112
    c = *p;
    8002e246:	02700513          	li	a0,39
quickjs-nuttx/quickjs.c:21122
        if (!s->ext_json) {
    8002e24a:	e791                	bnez	a5,8002e256 <json_next_token+0x1a4>
quickjs-nuttx/quickjs.c:21112
    c = *p;
    8002e24c:	02700b13          	li	s6,39
    8002e250:	aad5                	j	8002e444 <json_next_token+0x392>
quickjs-nuttx/quickjs.c:21113
    switch(c) {
    8002e252:	02200513          	li	a0,34
quickjs-nuttx/quickjs.c:21128
        if (js_parse_string(s, c, TRUE, p + 1, &s->token, &p))
    8002e256:	00158693          	addi	a3,a1,1
    8002e25a:	f0040793          	addi	a5,s0,-256
    8002e25e:	85aa                	mv	a1,a0
    8002e260:	874e                	mv	a4,s3
    8002e262:	4605                	li	a2,1
    8002e264:	8526                	mv	a0,s1
    8002e266:	bc5ff0ef          	jal	ra,8002de2a <js_parse_string>
    8002e26a:	dd45                	beqz	a0,8002e222 <json_next_token+0x170>
quickjs-nuttx/quickjs.c:21285
    s->token.val = TOK_ERROR;
    8002e26c:	faa00793          	li	a5,-86
    8002e270:	cc9c                	sw	a5,24(s1)
quickjs-nuttx/quickjs.c:21286
    return -1;
    8002e272:	557d                	li	a0,-1
    8002e274:	bf5d                	j	8002e22a <json_next_token+0x178>
quickjs-nuttx/quickjs.c:21132
        if (p[1] == '\n') {
    8002e276:	0015c683          	lbu	a3,1(a1)
    8002e27a:	47a9                	li	a5,10
    8002e27c:	00f69563          	bne	a3,a5,8002e286 <json_next_token+0x1d4>
quickjs-nuttx/quickjs.c:21128
        if (js_parse_string(s, c, TRUE, p + 1, &s->token, &p))
    8002e280:	0585                	addi	a1,a1,1
quickjs-nuttx/quickjs.c:21133
            p++;
    8002e282:	f0b43023          	sd	a1,-256(s0)
quickjs-nuttx/quickjs.c:21137
        p++;
    8002e286:	f0043783          	ld	a5,-256(s0)
quickjs-nuttx/quickjs.c:21138
        s->line_num++;
    8002e28a:	2705                	addiw	a4,a4,1
    8002e28c:	c4d8                	sw	a4,12(s1)
quickjs-nuttx/quickjs.c:21137
        p++;
    8002e28e:	0785                	addi	a5,a5,1
    8002e290:	f0f43023          	sd	a5,-256(s0)
quickjs-nuttx/quickjs.c:21139
        goto redo;
    8002e294:	b579                	j	8002e122 <json_next_token+0x70>
quickjs-nuttx/quickjs.c:21142
        if (!s->ext_json) {
    8002e296:	5cbc                	lw	a5,120(s1)
    8002e298:	1a078663          	beqz	a5,8002e444 <json_next_token+0x392>
quickjs-nuttx/quickjs.c:21149
        p++;
    8002e29c:	0585                	addi	a1,a1,1
    8002e29e:	f0b43023          	sd	a1,-256(s0)
quickjs-nuttx/quickjs.c:21150
        goto redo;
    8002e2a2:	b541                	j	8002e122 <json_next_token+0x70>
quickjs-nuttx/quickjs.c:21152
        if (!s->ext_json) {
    8002e2a4:	5cbc                	lw	a5,120(s1)
    8002e2a6:	1a078563          	beqz	a5,8002e450 <json_next_token+0x39e>
quickjs-nuttx/quickjs.c:21156
        if (p[1] == '*') {
    8002e2aa:	0015c783          	lbu	a5,1(a1)
    8002e2ae:	02a00713          	li	a4,42
    8002e2b2:	08e79363          	bne	a5,a4,8002e338 <json_next_token+0x286>
quickjs-nuttx/quickjs.c:21158
            p += 2;
    8002e2b6:	0589                	addi	a1,a1,2
    8002e2b8:	f0b43023          	sd	a1,-256(s0)
quickjs-nuttx/quickjs.c:21164
                if (p[0] == '*' && p[1] == '/') {
    8002e2bc:	02a00b13          	li	s6,42
quickjs-nuttx/quickjs.c:21168
                if (*p == '\n') {
    8002e2c0:	4ba9                	li	s7,10
quickjs-nuttx/quickjs.c:21175
                    if (c == -1) {
    8002e2c2:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:21164
                if (p[0] == '*' && p[1] == '/') {
    8002e2c4:	02f00c93          	li	s9,47
quickjs-nuttx/quickjs.c:21160
                if (*p == '\0' && p >= s->buf_end) {
    8002e2c8:	f0043503          	ld	a0,-256(s0)
    8002e2cc:	00054783          	lbu	a5,0(a0)
    8002e2d0:	ef81                	bnez	a5,8002e2e8 <json_next_token+0x236>
quickjs-nuttx/quickjs.c:21160 (discriminator 1)
    8002e2d2:	70bc                	ld	a5,96(s1)
    8002e2d4:	02f56963          	bltu	a0,a5,8002e306 <json_next_token+0x254>
quickjs-nuttx/quickjs.c:21161
                    js_parse_error(s, "unexpected end of comment");
    8002e2d8:	0003d597          	auipc	a1,0x3d
    8002e2dc:	6a858593          	addi	a1,a1,1704 # 8006b980 <qjsc_repl+0x63d0>
quickjs-nuttx/quickjs.c:21271
            js_parse_error(s, "unexpected character");
    8002e2e0:	8526                	mv	a0,s1
    8002e2e2:	991ff0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:21272
            goto fail;
    8002e2e6:	b759                	j	8002e26c <json_next_token+0x1ba>
quickjs-nuttx/quickjs.c:21164
                if (p[0] == '*' && p[1] == '/') {
    8002e2e8:	01679a63          	bne	a5,s6,8002e2fc <json_next_token+0x24a>
quickjs-nuttx/quickjs.c:21164 (discriminator 1)
    8002e2ec:	00154783          	lbu	a5,1(a0)
    8002e2f0:	01979b63          	bne	a5,s9,8002e306 <json_next_token+0x254>
quickjs-nuttx/quickjs.c:21165
                    p += 2;
    8002e2f4:	0509                	addi	a0,a0,2
    8002e2f6:	f0a43023          	sd	a0,-256(s0)
quickjs-nuttx/quickjs.c:21182
            goto redo;
    8002e2fa:	b525                	j	8002e122 <json_next_token+0x70>
quickjs-nuttx/quickjs.c:21168
                if (*p == '\n') {
    8002e2fc:	01779963          	bne	a5,s7,8002e30e <json_next_token+0x25c>
quickjs-nuttx/quickjs.c:21169
                    s->line_num++;
    8002e300:	44dc                	lw	a5,12(s1)
    8002e302:	2785                	addiw	a5,a5,1
    8002e304:	c4dc                	sw	a5,12(s1)
quickjs-nuttx/quickjs.c:21179
                    p++;
    8002e306:	0505                	addi	a0,a0,1
    8002e308:	f0a43023          	sd	a0,-256(s0)
    8002e30c:	bf75                	j	8002e2c8 <json_next_token+0x216>
quickjs-nuttx/quickjs.c:21171
                } else if (*p == '\r') {
    8002e30e:	ff578ce3          	beq	a5,s5,8002e306 <json_next_token+0x254>
quickjs-nuttx/quickjs.c:21173
                } else if (*p >= 0x80) {
    8002e312:	0187979b          	slliw	a5,a5,0x18
    8002e316:	4187d79b          	sraiw	a5,a5,0x18
    8002e31a:	fe07d6e3          	bgez	a5,8002e306 <json_next_token+0x254>
quickjs-nuttx/quickjs.c:21174
                    c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8002e31e:	f0040613          	addi	a2,s0,-256
    8002e322:	4599                	li	a1,6
    8002e324:	197230ef          	jal	ra,80051cba <unicode_from_utf8>
quickjs-nuttx/quickjs.c:21175
                    if (c == -1) {
    8002e328:	fb8510e3          	bne	a0,s8,8002e2c8 <json_next_token+0x216>
quickjs-nuttx/quickjs.c:21176
                        p++; /* skip invalid UTF-8 */
    8002e32c:	f0043783          	ld	a5,-256(s0)
    8002e330:	0785                	addi	a5,a5,1
    8002e332:	f0f43023          	sd	a5,-256(s0)
    8002e336:	bf49                	j	8002e2c8 <json_next_token+0x216>
quickjs-nuttx/quickjs.c:21183
        } else if (p[1] == '/') {
    8002e338:	02f00713          	li	a4,47
    8002e33c:	10e79a63          	bne	a5,a4,8002e450 <json_next_token+0x39e>
quickjs-nuttx/quickjs.c:21185
            p += 2;
    8002e340:	0589                	addi	a1,a1,2
    8002e342:	f0b43023          	sd	a1,-256(s0)
quickjs-nuttx/quickjs.c:21189
                if (*p == '\r' || *p == '\n')
    8002e346:	4b29                	li	s6,10
quickjs-nuttx/quickjs.c:21194
                    if (c == CP_LS || c == CP_PS) {
    8002e348:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:21196
                    } else if (c == -1) {
    8002e34a:	5c7d                	li	s8,-1
quickjs-nuttx/quickjs.c:21187
                if (*p == '\0' && p >= s->buf_end)
    8002e34c:	f0043503          	ld	a0,-256(s0)
    8002e350:	00054783          	lbu	a5,0(a0)
    8002e354:	eb81                	bnez	a5,8002e364 <json_next_token+0x2b2>
quickjs-nuttx/quickjs.c:21187 (discriminator 1)
    8002e356:	70bc                	ld	a5,96(s1)
    8002e358:	dcf575e3          	bgeu	a0,a5,8002e122 <json_next_token+0x70>
quickjs-nuttx/quickjs.c:21200
                    p++;
    8002e35c:	0505                	addi	a0,a0,1
    8002e35e:	f0a43023          	sd	a0,-256(s0)
    8002e362:	b7ed                	j	8002e34c <json_next_token+0x29a>
quickjs-nuttx/quickjs.c:21189
                if (*p == '\r' || *p == '\n')
    8002e364:	db578fe3          	beq	a5,s5,8002e122 <json_next_token+0x70>
quickjs-nuttx/quickjs.c:21189 (discriminator 1)
    8002e368:	db678de3          	beq	a5,s6,8002e122 <json_next_token+0x70>
quickjs-nuttx/quickjs.c:21191
                if (*p >= 0x80) {
    8002e36c:	0187979b          	slliw	a5,a5,0x18
    8002e370:	4187d79b          	sraiw	a5,a5,0x18
    8002e374:	fe07d4e3          	bgez	a5,8002e35c <json_next_token+0x2aa>
quickjs-nuttx/quickjs.c:21192
                    c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8002e378:	f0040613          	addi	a2,s0,-256
    8002e37c:	4599                	li	a1,6
    8002e37e:	13d230ef          	jal	ra,80051cba <unicode_from_utf8>
quickjs-nuttx/quickjs.c:21194
                    if (c == CP_LS || c == CP_PS) {
    8002e382:	00a907bb          	addw	a5,s2,a0
    8002e386:	d8fbfee3          	bgeu	s7,a5,8002e122 <json_next_token+0x70>
quickjs-nuttx/quickjs.c:21196
                    } else if (c == -1) {
    8002e38a:	fd8511e3          	bne	a0,s8,8002e34c <json_next_token+0x29a>
quickjs-nuttx/quickjs.c:21197
                        p++; /* skip invalid UTF-8 */
    8002e38e:	f0043783          	ld	a5,-256(s0)
    8002e392:	0785                	addi	a5,a5,1
    8002e394:	f0f43023          	sd	a5,-256(s0)
    8002e398:	bf55                	j	8002e34c <json_next_token+0x29a>
quickjs-nuttx/quickjs.c:21113
    switch(c) {
    8002e39a:	02400b13          	li	s6,36
    8002e39e:	b501                	j	8002e19e <json_next_token+0xec>
json_parse_ident():
quickjs-nuttx/quickjs.c:21074
        buf[ident_pos++] = c;
    8002e3a0:	874a                	mv	a4,s2
    8002e3a2:	b50d                	j	8002e1c4 <json_next_token+0x112>
quickjs-nuttx/quickjs.c:21087
    atom = JS_NewAtomLen(s->ctx, buf, ident_pos);
    8002e3a4:	f0843583          	ld	a1,-248(s0)
    8002e3a8:	6088                	ld	a0,0(s1)
    8002e3aa:	864a                	mv	a2,s2
    8002e3ac:	bbdf00ef          	jal	ra,8001ef68 <JS_NewAtomLen>
    8002e3b0:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:21089
    if (unlikely(buf != ident_buf))
    8002e3b4:	f0843583          	ld	a1,-248(s0)
    8002e3b8:	01458563          	beq	a1,s4,8002e3c2 <json_next_token+0x310>
quickjs-nuttx/quickjs.c:21090
        js_free(s->ctx, buf);
    8002e3bc:	6088                	ld	a0,0(s1)
    8002e3be:	c39dc0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:21091
    *pp = p;
    8002e3c2:	f1343023          	sd	s3,-256(s0)
json_next_token():
quickjs-nuttx/quickjs.c:21227
        if (atom == JS_ATOM_NULL)
    8002e3c6:	ea0903e3          	beqz	s2,8002e26c <json_next_token+0x1ba>
quickjs-nuttx/quickjs.c:21229
        s->token.u.ident.atom = atom;
    8002e3ca:	0324a423          	sw	s2,40(s1)
quickjs-nuttx/quickjs.c:21230
        s->token.u.ident.has_escape = FALSE;
    8002e3ce:	0204a623          	sw	zero,44(s1)
quickjs-nuttx/quickjs.c:21231
        s->token.u.ident.is_reserved = FALSE;
    8002e3d2:	0204a823          	sw	zero,48(s1)
quickjs-nuttx/quickjs.c:21232
        s->token.val = TOK_IDENT;
    8002e3d6:	f8300793          	li	a5,-125
    8002e3da:	b599                	j	8002e220 <json_next_token+0x16e>
quickjs-nuttx/quickjs.c:21235
        if (!s->ext_json || !is_digit(p[1]))
    8002e3dc:	5cbc                	lw	a5,120(s1)
    8002e3de:	cfa5                	beqz	a5,8002e456 <json_next_token+0x3a4>
is_digit():
quickjs-nuttx/quickjs.c:1459 (discriminator 1)
    return c >= '0' && c <= '9';
    8002e3e0:	0015c783          	lbu	a5,1(a1)
json_next_token():
quickjs-nuttx/quickjs.c:21235 (discriminator 1)
        if (!s->ext_json || !is_digit(p[1]))
    8002e3e4:	4725                	li	a4,9
    8002e3e6:	fd07879b          	addiw	a5,a5,-48
    8002e3ea:	06f76663          	bltu	a4,a5,8002e456 <json_next_token+0x3a4>
quickjs-nuttx/quickjs.c:21254
            if (!s->ext_json) {
    8002e3ee:	5cb8                	lw	a4,120(s1)
quickjs-nuttx/quickjs.c:21256
                radix = 10;
    8002e3f0:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:21254
            if (!s->ext_json) {
    8002e3f2:	c319                	beqz	a4,8002e3f8 <json_next_token+0x346>
quickjs-nuttx/quickjs.c:21259
                radix = 0;
    8002e3f4:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:21258
                flags = ATOD_ACCEPT_BIN_OCT;
    8002e3f6:	4711                	li	a4,4
js_atof():
quickjs-nuttx/quickjs.c:10429
    return js_atof2(ctx, str, pp, radix, flags, NULL);
    8002e3f8:	6088                	ld	a0,0(s1)
    8002e3fa:	4781                	li	a5,0
    8002e3fc:	f0040613          	addi	a2,s0,-256
    8002e400:	c98ef0ef          	jal	ra,8001d898 <js_atof2>
json_next_token():
quickjs-nuttx/quickjs.c:21263
            if (JS_IsException(ret))
    8002e404:	0005871b          	sext.w	a4,a1
    8002e408:	4799                	li	a5,6
    8002e40a:	e6f701e3          	beq	a4,a5,8002e26c <json_next_token+0x1ba>
quickjs-nuttx/quickjs.c:21265
            s->token.val = TOK_NUMBER;
    8002e40e:	f8000793          	li	a5,-128
    8002e412:	cc9c                	sw	a5,24(s1)
quickjs-nuttx/quickjs.c:21266
            s->token.u.num.val = ret;
    8002e414:	f488                	sd	a0,40(s1)
    8002e416:	f88c                	sd	a1,48(s1)
quickjs-nuttx/quickjs.c:21268
        break;
    8002e418:	b529                	j	8002e222 <json_next_token+0x170>
is_digit():
quickjs-nuttx/quickjs.c:1459
    return c >= '0' && c <= '9';
    8002e41a:	0015c783          	lbu	a5,1(a1)
json_next_token():
quickjs-nuttx/quickjs.c:21239
        if (is_digit(p[1]))
    8002e41e:	4725                	li	a4,9
    8002e420:	fd07879b          	addiw	a5,a5,-48
    8002e424:	fcf765e3          	bltu	a4,a5,8002e3ee <json_next_token+0x33c>
quickjs-nuttx/quickjs.c:21112
    c = *p;
    8002e428:	03000b13          	li	s6,48
    8002e42c:	a821                	j	8002e444 <json_next_token+0x392>
is_digit():
quickjs-nuttx/quickjs.c:1459
    return c >= '0' && c <= '9';
    8002e42e:	0015c783          	lbu	a5,1(a1)
json_next_token():
quickjs-nuttx/quickjs.c:21243
        if (!is_digit(p[1]))
    8002e432:	4725                	li	a4,9
    8002e434:	fd07879b          	addiw	a5,a5,-48
    8002e438:	faf77be3          	bgeu	a4,a5,8002e3ee <json_next_token+0x33c>
quickjs-nuttx/quickjs.c:21112
    c = *p;
    8002e43c:	02d00b13          	li	s6,45
    8002e440:	a011                	j	8002e444 <json_next_token+0x392>
    8002e442:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:21276
        p++;
    8002e444:	0585                	addi	a1,a1,1
quickjs-nuttx/quickjs.c:21275
        s->token.val = c;
    8002e446:	0164ac23          	sw	s6,24(s1)
quickjs-nuttx/quickjs.c:21276
        p++;
    8002e44a:	f0b43023          	sd	a1,-256(s0)
quickjs-nuttx/quickjs.c:21277
        break;
    8002e44e:	bbd1                	j	8002e222 <json_next_token+0x170>
    8002e450:	02f00b13          	li	s6,47
    8002e454:	bfc5                	j	8002e444 <json_next_token+0x392>
quickjs-nuttx/quickjs.c:21112
    c = *p;
    8002e456:	02b00b13          	li	s6,43
    8002e45a:	b7ed                	j	8002e444 <json_next_token+0x392>

000000008002e45c <js_parse_template_part>:
js_parse_template_part():
quickjs-nuttx/quickjs.c:20148
{
    8002e45c:	7175                	addi	sp,sp,-144
    8002e45e:	e122                	sd	s0,128(sp)
    8002e460:	f86a                	sd	s10,48(sp)
    8002e462:	e506                	sd	ra,136(sp)
    8002e464:	fca6                	sd	s1,120(sp)
    8002e466:	f8ca                	sd	s2,112(sp)
    8002e468:	f4ce                	sd	s3,104(sp)
    8002e46a:	f0d2                	sd	s4,96(sp)
    8002e46c:	ecd6                	sd	s5,88(sp)
    8002e46e:	e8da                	sd	s6,80(sp)
    8002e470:	e4de                	sd	s7,72(sp)
    8002e472:	e0e2                	sd	s8,64(sp)
    8002e474:	fc66                	sd	s9,56(sp)
    8002e476:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:20153
    if (string_buffer_init(s->ctx, b, 32))
    8002e478:	6108                	ld	a0,0(a0)
quickjs-nuttx/quickjs.c:20148
{
    8002e47a:	8d2e                	mv	s10,a1
quickjs-nuttx/quickjs.c:20153
    if (string_buffer_init(s->ctx, b, 32))
    8002e47c:	02000613          	li	a2,32
    8002e480:	080c                	addi	a1,sp,16
    8002e482:	afbef0ef          	jal	ra,8001df7c <string_buffer_init>
    8002e486:	e16d                	bnez	a0,8002e568 <js_parse_template_part+0x10c>
    8002e488:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:20159
        if (c == '`') {
    8002e48a:	06000a13          	li	s4,96
quickjs-nuttx/quickjs.c:20163
        if (c == '$' && *p == '{') {
    8002e48e:	02400a93          	li	s5,36
quickjs-nuttx/quickjs.c:20168
        if (c == '\\') {
    8002e492:	05c00b13          	li	s6,92
quickjs-nuttx/quickjs.c:20176
        if (c == '\r') {
    8002e496:	4bb5                	li	s7,13
    8002e498:	49a9                	li	s3,10
quickjs-nuttx/quickjs.c:20183
        } else if (c >= 0x80) {
    8002e49a:	07f00c13          	li	s8,127
quickjs-nuttx/quickjs.c:20186
            if (c > 0x10FFFF) {
    8002e49e:	00110cb7          	lui	s9,0x110
quickjs-nuttx/quickjs.c:20156
        if (p >= s->buf_end)
    8002e4a2:	703c                	ld	a5,96(s0)
    8002e4a4:	0cfd7c63          	bgeu	s10,a5,8002e57c <js_parse_template_part+0x120>
quickjs-nuttx/quickjs.c:20158
        c = *p++;
    8002e4a8:	000d4583          	lbu	a1,0(s10)
    8002e4ac:	001d0493          	addi	s1,s10,1
quickjs-nuttx/quickjs.c:20159
        if (c == '`') {
    8002e4b0:	0d458363          	beq	a1,s4,8002e576 <js_parse_template_part+0x11a>
quickjs-nuttx/quickjs.c:20163
        if (c == '$' && *p == '{') {
    8002e4b4:	05559563          	bne	a1,s5,8002e4fe <js_parse_template_part+0xa2>
quickjs-nuttx/quickjs.c:20163 (discriminator 1)
    8002e4b8:	001d4703          	lbu	a4,1(s10)
    8002e4bc:	07b00793          	li	a5,123
    8002e4c0:	06f71963          	bne	a4,a5,8002e532 <js_parse_template_part+0xd6>
quickjs-nuttx/quickjs.c:20165
            p++;
    8002e4c4:	002d0493          	addi	s1,s10,2
quickjs-nuttx/quickjs.c:20158
        c = *p++;
    8002e4c8:	02400793          	li	a5,36
quickjs-nuttx/quickjs.c:20195
    s->token.val = TOK_TEMPLATE;
    8002e4cc:	f8200713          	li	a4,-126
    8002e4d0:	cc18                	sw	a4,24(s0)
quickjs-nuttx/quickjs.c:20196
    s->token.u.str.sep = c;
    8002e4d2:	dc1c                	sw	a5,56(s0)
quickjs-nuttx/quickjs.c:20197
    s->token.u.str.str = string_buffer_end(b);
    8002e4d4:	0808                	addi	a0,sp,16
    8002e4d6:	fcaf10ef          	jal	ra,8001fca0 <string_buffer_end>
    8002e4da:	f408                	sd	a0,40(s0)
    8002e4dc:	f80c                	sd	a1,48(s0)
quickjs-nuttx/quickjs.c:20198
    s->buf_ptr = p;
    8002e4de:	ec24                	sd	s1,88(s0)
quickjs-nuttx/quickjs.c:20206
}
    8002e4e0:	60aa                	ld	ra,136(sp)
    8002e4e2:	640a                	ld	s0,128(sp)
    8002e4e4:	74e6                	ld	s1,120(sp)
    8002e4e6:	79a6                	ld	s3,104(sp)
    8002e4e8:	7a06                	ld	s4,96(sp)
    8002e4ea:	6ae6                	ld	s5,88(sp)
    8002e4ec:	6b46                	ld	s6,80(sp)
    8002e4ee:	6ba6                	ld	s7,72(sp)
    8002e4f0:	6c06                	ld	s8,64(sp)
    8002e4f2:	7ce2                	ld	s9,56(sp)
    8002e4f4:	7d42                	ld	s10,48(sp)
    8002e4f6:	854a                	mv	a0,s2
    8002e4f8:	7946                	ld	s2,112(sp)
    8002e4fa:	6149                	addi	sp,sp,144
    8002e4fc:	8082                	ret
quickjs-nuttx/quickjs.c:20168
        if (c == '\\') {
    8002e4fe:	01659f63          	bne	a1,s6,8002e51c <js_parse_template_part+0xc0>
quickjs-nuttx/quickjs.c:20169
            if (string_buffer_putc8(b, c))
    8002e502:	05c00593          	li	a1,92
    8002e506:	0808                	addi	a0,sp,16
    8002e508:	f58f00ef          	jal	ra,8001ec60 <string_buffer_putc8>
    8002e50c:	ed31                	bnez	a0,8002e568 <js_parse_template_part+0x10c>
quickjs-nuttx/quickjs.c:20171
            if (p >= s->buf_end)
    8002e50e:	703c                	ld	a5,96(s0)
    8002e510:	06f4f663          	bgeu	s1,a5,8002e57c <js_parse_template_part+0x120>
quickjs-nuttx/quickjs.c:20173
            c = *p++;
    8002e514:	001d4583          	lbu	a1,1(s10)
    8002e518:	002d0493          	addi	s1,s10,2
quickjs-nuttx/quickjs.c:20176
        if (c == '\r') {
    8002e51c:	03759163          	bne	a1,s7,8002e53e <js_parse_template_part+0xe2>
quickjs-nuttx/quickjs.c:20177
            if (*p == '\n')
    8002e520:	0004c783          	lbu	a5,0(s1)
    8002e524:	01379363          	bne	a5,s3,8002e52a <js_parse_template_part+0xce>
quickjs-nuttx/quickjs.c:20178
                p++;
    8002e528:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs.c:20182
            s->line_num++;
    8002e52a:	445c                	lw	a5,12(s0)
    8002e52c:	45a9                	li	a1,10
    8002e52e:	2785                	addiw	a5,a5,1
    8002e530:	c45c                	sw	a5,12(s0)
quickjs-nuttx/quickjs.c:20192
        if (string_buffer_putc(b, c))
    8002e532:	0808                	addi	a0,sp,16
    8002e534:	83df00ef          	jal	ra,8001ed70 <string_buffer_putc>
    8002e538:	e905                	bnez	a0,8002e568 <js_parse_template_part+0x10c>
    8002e53a:	8d26                	mv	s10,s1
    8002e53c:	b79d                	j	8002e4a2 <js_parse_template_part+0x46>
quickjs-nuttx/quickjs.c:20181
        if (c == '\n') {
    8002e53e:	ff3586e3          	beq	a1,s3,8002e52a <js_parse_template_part+0xce>
quickjs-nuttx/quickjs.c:20183
        } else if (c >= 0x80) {
    8002e542:	febc78e3          	bgeu	s8,a1,8002e532 <js_parse_template_part+0xd6>
quickjs-nuttx/quickjs.c:20185
            c = unicode_from_utf8(p - 1, UTF8_CHAR_LEN_MAX, &p_next);
    8002e546:	4599                	li	a1,6
    8002e548:	0030                	addi	a2,sp,8
    8002e54a:	fff48513          	addi	a0,s1,-1
    8002e54e:	76c230ef          	jal	ra,80051cba <unicode_from_utf8>
    8002e552:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:20186
            if (c > 0x10FFFF) {
    8002e556:	0195ee63          	bltu	a1,s9,8002e572 <js_parse_template_part+0x116>
quickjs-nuttx/quickjs.c:20187
                js_parse_error(s, "invalid UTF-8 sequence");
    8002e55a:	0003d597          	auipc	a1,0x3d
    8002e55e:	3ee58593          	addi	a1,a1,1006 # 8006b948 <qjsc_repl+0x6398>
quickjs-nuttx/quickjs.c:20202
    js_parse_error(s, "unexpected end of string");
    8002e562:	8522                	mv	a0,s0
    8002e564:	f0eff0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:20204
    string_buffer_free(b);
    8002e568:	0808                	addi	a0,sp,16
    8002e56a:	ab9dc0ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:20205
    return -1;
    8002e56e:	597d                	li	s2,-1
    8002e570:	bf85                	j	8002e4e0 <js_parse_template_part+0x84>
quickjs-nuttx/quickjs.c:20190
            p = p_next;
    8002e572:	64a2                	ld	s1,8(sp)
    8002e574:	bf7d                	j	8002e532 <js_parse_template_part+0xd6>
    8002e576:	06000793          	li	a5,96
    8002e57a:	bf89                	j	8002e4cc <js_parse_template_part+0x70>
quickjs-nuttx/quickjs.c:20202
    js_parse_error(s, "unexpected end of string");
    8002e57c:	0003d597          	auipc	a1,0x3d
    8002e580:	3e458593          	addi	a1,a1,996 # 8006b960 <qjsc_repl+0x63b0>
    8002e584:	bff9                	j	8002e562 <js_parse_template_part+0x106>

000000008002e586 <next_token>:
next_token():
quickjs-nuttx/quickjs.c:20570
{
    8002e586:	7175                	addi	sp,sp,-144
    8002e588:	e122                	sd	s0,128(sp)
    8002e58a:	e506                	sd	ra,136(sp)
    8002e58c:	fca6                	sd	s1,120(sp)
    8002e58e:	f8ca                	sd	s2,112(sp)
    8002e590:	f4ce                	sd	s3,104(sp)
    8002e592:	f0d2                	sd	s4,96(sp)
    8002e594:	ecd6                	sd	s5,88(sp)
    8002e596:	e8da                	sd	s6,80(sp)
    8002e598:	e4de                	sd	s7,72(sp)
    8002e59a:	e0e2                	sd	s8,64(sp)
    8002e59c:	fc66                	sd	s9,56(sp)
    8002e59e:	f86a                	sd	s10,48(sp)
    8002e5a0:	0900                	addi	s0,sp,144
quickjs-nuttx/quickjs.c:20576
    if (js_check_stack_overflow(s->ctx->rt, 0)) {
    8002e5a2:	611c                	ld	a5,0(a0)
    8002e5a4:	6f9c                	ld	a5,24(a5)
    8002e5a6:	6ffc                	ld	a5,216(a5)
    8002e5a8:	02f47563          	bgeu	s0,a5,8002e5d2 <next_token+0x4c>
quickjs-nuttx/quickjs.c:21059
}
    8002e5ac:	640a                	ld	s0,128(sp)
    8002e5ae:	60aa                	ld	ra,136(sp)
    8002e5b0:	74e6                	ld	s1,120(sp)
    8002e5b2:	7946                	ld	s2,112(sp)
    8002e5b4:	79a6                	ld	s3,104(sp)
    8002e5b6:	7a06                	ld	s4,96(sp)
    8002e5b8:	6ae6                	ld	s5,88(sp)
    8002e5ba:	6b46                	ld	s6,80(sp)
    8002e5bc:	6ba6                	ld	s7,72(sp)
    8002e5be:	6c06                	ld	s8,64(sp)
    8002e5c0:	7ce2                	ld	s9,56(sp)
    8002e5c2:	7d42                	ld	s10,48(sp)
quickjs-nuttx/quickjs.c:20577
        return js_parse_error(s, "stack overflow");
    8002e5c4:	0003c597          	auipc	a1,0x3c
    8002e5c8:	f7c58593          	addi	a1,a1,-132 # 8006a540 <qjsc_repl+0x4f90>
quickjs-nuttx/quickjs.c:21059
}
    8002e5cc:	6149                	addi	sp,sp,144
quickjs-nuttx/quickjs.c:20577
        return js_parse_error(s, "stack overflow");
    8002e5ce:	ea4ff06f          	j	8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:20580
    free_token(s, &s->token);
    8002e5d2:	01850a93          	addi	s5,a0,24
    8002e5d6:	85d6                	mv	a1,s5
    8002e5d8:	84aa                	mv	s1,a0
    8002e5da:	dbede0ef          	jal	ra,8000cb98 <free_token>
quickjs-nuttx/quickjs.c:20582
    p = s->last_ptr = s->buf_ptr;
    8002e5de:	6cbc                	ld	a5,88(s1)
quickjs-nuttx/quickjs.c:21028
            switch(c) {
    8002e5e0:	79f9                	lui	s3,0xffffe
quickjs-nuttx/quickjs.c:20583
    s->got_lf = FALSE;
    8002e5e2:	0404a423          	sw	zero,72(s1)
quickjs-nuttx/quickjs.c:20582
    p = s->last_ptr = s->buf_ptr;
    8002e5e6:	e8bc                	sd	a5,80(s1)
    8002e5e8:	f8f43023          	sd	a5,-128(s0)
quickjs-nuttx/quickjs.c:20584
    s->last_line_num = s->token.line_num;
    8002e5ec:	4cdc                	lw	a5,28(s1)
quickjs-nuttx/quickjs.c:21028
            switch(c) {
    8002e5ee:	fd89899b          	addiw	s3,s3,-40
    8002e5f2:	0003db17          	auipc	s6,0x3d
    8002e5f6:	4d6b0b13          	addi	s6,s6,1238 # 8006bac8 <qjsc_repl+0x6518>
quickjs-nuttx/quickjs.c:20584
    s->last_line_num = s->token.line_num;
    8002e5fa:	c49c                	sw	a5,8(s1)
quickjs-nuttx/quickjs.c:20663
                if (*p == '\r' || *p == '\n')
    8002e5fc:	4a35                	li	s4,13
    8002e5fe:	0003db97          	auipc	s7,0x3d
    8002e602:	5ceb8b93          	addi	s7,s7,1486 # 8006bbcc <qjsc_repl+0x661c>
quickjs-nuttx/quickjs.c:20587
    s->token.ptr = p;
    8002e606:	f8043803          	ld	a6,-128(s0)
quickjs-nuttx/quickjs.c:20586
    s->token.line_num = s->line_num;
    8002e60a:	44d8                	lw	a4,12(s1)
quickjs-nuttx/quickjs.c:20589
    switch(c) {
    8002e60c:	06000693          	li	a3,96
quickjs-nuttx/quickjs.c:20587
    s->token.ptr = p;
    8002e610:	0304b023          	sd	a6,32(s1)
quickjs-nuttx/quickjs.c:20586
    s->token.line_num = s->line_num;
    8002e614:	ccd8                	sw	a4,28(s1)
quickjs-nuttx/quickjs.c:20588
    c = *p;
    8002e616:	00084783          	lbu	a5,0(a6)
    8002e61a:	0007891b          	sext.w	s2,a5
quickjs-nuttx/quickjs.c:20589
    switch(c) {
    8002e61e:	06f6e563          	bltu	a3,a5,8002e688 <next_token+0x102>
    8002e622:	46fd                	li	a3,31
    8002e624:	04f6e163          	bltu	a3,a5,8002e666 <next_token+0xe0>
    8002e628:	04fa7b63          	bgeu	s4,a5,8002e67e <next_token+0xf8>
quickjs-nuttx/quickjs.c:21025
        if (c >= 128) {
    8002e62c:	07f00793          	li	a5,127
    8002e630:	2b27d363          	bge	a5,s2,8002e8d6 <next_token+0x350>
quickjs-nuttx/quickjs.c:21027
            c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8002e634:	f8040613          	addi	a2,s0,-128
    8002e638:	4599                	li	a1,6
    8002e63a:	8542                	mv	a0,a6
    8002e63c:	67e230ef          	jal	ra,80051cba <unicode_from_utf8>
quickjs-nuttx/quickjs.c:21028
            switch(c) {
    8002e640:	00a9873b          	addw	a4,s3,a0
    8002e644:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:21027
            c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8002e646:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:21028
            switch(c) {
    8002e648:	0ce7f363          	bgeu	a5,a4,8002e70e <next_token+0x188>
quickjs-nuttx/quickjs.c:21035
                if (lre_is_space(c)) {
    8002e64c:	0371f0ef          	jal	ra,8004de82 <lre_is_space>
    8002e650:	f95d                	bnez	a0,8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:21037
                } else if (lre_js_is_ident_first(c)) {
    8002e652:	854a                	mv	a0,s2
    8002e654:	b5cdb0ef          	jal	ra,800099b0 <lre_js_is_ident_first>
    8002e658:	28051863          	bnez	a0,8002e8e8 <next_token+0x362>
quickjs-nuttx/quickjs.c:21041
                    js_parse_error(s, "unexpected character");
    8002e65c:	0003d597          	auipc	a1,0x3d
    8002e660:	34458593          	addi	a1,a1,836 # 8006b9a0 <qjsc_repl+0x63f0>
    8002e664:	a8cd                	j	8002e756 <next_token+0x1d0>
    8002e666:	3781                	addiw	a5,a5,-32
    8002e668:	0ff7f793          	zext.b	a5,a5
    8002e66c:	04000693          	li	a3,64
    8002e670:	faf6eee3          	bltu	a3,a5,8002e62c <next_token+0xa6>
    8002e674:	078a                	slli	a5,a5,0x2
    8002e676:	97da                	add	a5,a5,s6
    8002e678:	439c                	lw	a5,0(a5)
    8002e67a:	97da                	add	a5,a5,s6
    8002e67c:	8782                	jr	a5
    8002e67e:	078a                	slli	a5,a5,0x2
    8002e680:	97de                	add	a5,a5,s7
    8002e682:	439c                	lw	a5,0(a5)
    8002e684:	97de                	add	a5,a5,s7
    8002e686:	8782                	jr	a5
quickjs-nuttx/quickjs.c:20589
    switch(c) {
    8002e688:	07a00713          	li	a4,122
    8002e68c:	24f77b63          	bgeu	a4,a5,8002e8e2 <next_token+0x35c>
    8002e690:	07c00713          	li	a4,124
    8002e694:	f8e79ce3          	bne	a5,a4,8002e62c <next_token+0xa6>
quickjs-nuttx/quickjs.c:20993
        if (p[1] == '=') {
    8002e698:	00184683          	lbu	a3,1(a6)
    8002e69c:	03d00713          	li	a4,61
    8002e6a0:	64e69d63          	bne	a3,a4,8002ecfa <next_token+0x774>
quickjs-nuttx/quickjs.c:20994
            p += 2;
    8002e6a4:	0809                	addi	a6,a6,2
    8002e6a6:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20995
            s->token.val = TOK_OR_ASSIGN;
    8002e6aa:	f8f00793          	li	a5,-113
    8002e6ae:	a031                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20591
        if (p >= s->buf_end) {
    8002e6b0:	70bc                	ld	a5,96(s1)
    8002e6b2:	6cf86163          	bltu	a6,a5,8002ed74 <next_token+0x7ee>
quickjs-nuttx/quickjs.c:20592
            s->token.val = TOK_EOF;
    8002e6b6:	fac00793          	li	a5,-84
quickjs-nuttx/quickjs.c:21002
                s->token.val = TOK_LOR;
    8002e6ba:	cc9c                	sw	a5,24(s1)
    8002e6bc:	aacd                	j	8002e8ae <next_token+0x328>
quickjs-nuttx/quickjs.c:20598
        if (js_parse_template_part(s, p + 1))
    8002e6be:	00180593          	addi	a1,a6,1
    8002e6c2:	8526                	mv	a0,s1
    8002e6c4:	d99ff0ef          	jal	ra,8002e45c <js_parse_template_part>
    8002e6c8:	e10d                	bnez	a0,8002e6ea <next_token+0x164>
quickjs-nuttx/quickjs.c:20600
        p = s->buf_ptr;
    8002e6ca:	6cbc                	ld	a5,88(s1)
quickjs-nuttx/quickjs.c:21048
        p++;
    8002e6cc:	f8f43023          	sd	a5,-128(s0)
quickjs-nuttx/quickjs.c:21049
        break;
    8002e6d0:	aaf9                	j	8002e8ae <next_token+0x328>
quickjs-nuttx/quickjs.c:20604
        if (js_parse_string(s, c, TRUE, p + 1, &s->token, &p))
    8002e6d2:	f8040793          	addi	a5,s0,-128
    8002e6d6:	8756                	mv	a4,s5
    8002e6d8:	00180693          	addi	a3,a6,1
    8002e6dc:	4605                	li	a2,1
    8002e6de:	85ca                	mv	a1,s2
    8002e6e0:	8526                	mv	a0,s1
    8002e6e2:	f48ff0ef          	jal	ra,8002de2a <js_parse_string>
    8002e6e6:	1c050463          	beqz	a0,8002e8ae <next_token+0x328>
quickjs-nuttx/quickjs.c:21057
    s->token.val = TOK_ERROR;
    8002e6ea:	faa00793          	li	a5,-86
    8002e6ee:	cc9c                	sw	a5,24(s1)
quickjs-nuttx/quickjs.c:21058
    return -1;
    8002e6f0:	557d                	li	a0,-1
    8002e6f2:	a2d1                	j	8002e8b6 <next_token+0x330>
quickjs-nuttx/quickjs.c:20608
        if (p[1] == '\n') {
    8002e6f4:	00184703          	lbu	a4,1(a6)
    8002e6f8:	47a9                	li	a5,10
    8002e6fa:	00f71563          	bne	a4,a5,8002e704 <next_token+0x17e>
quickjs-nuttx/quickjs.c:20598
        if (js_parse_template_part(s, p + 1))
    8002e6fe:	0805                	addi	a6,a6,1
quickjs-nuttx/quickjs.c:20609
            p++;
    8002e700:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20613
        p++;
    8002e704:	f8043783          	ld	a5,-128(s0)
    8002e708:	0785                	addi	a5,a5,1
    8002e70a:	f8f43023          	sd	a5,-128(s0)
quickjs-nuttx/quickjs.c:20615
        s->got_lf = TRUE;
    8002e70e:	4785                	li	a5,1
    8002e710:	c4bc                	sw	a5,72(s1)
quickjs-nuttx/quickjs.c:20616
        s->line_num++;
    8002e712:	44dc                	lw	a5,12(s1)
    8002e714:	2785                	addiw	a5,a5,1
    8002e716:	c4dc                	sw	a5,12(s1)
quickjs-nuttx/quickjs.c:20617
        goto redo;
    8002e718:	b5fd                	j	8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:20622
        p++;
    8002e71a:	0805                	addi	a6,a6,1
    8002e71c:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20623
        goto redo;
    8002e720:	b5dd                	j	8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:20625
        if (p[1] == '*') {
    8002e722:	00184783          	lbu	a5,1(a6)
    8002e726:	02a00713          	li	a4,42
    8002e72a:	08e79d63          	bne	a5,a4,8002e7c4 <next_token+0x23e>
quickjs-nuttx/quickjs.c:20627
            p += 2;
    8002e72e:	0809                	addi	a6,a6,2
    8002e730:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20633
                if (p[0] == '*' && p[1] == '/') {
    8002e734:	02a00c13          	li	s8,42
quickjs-nuttx/quickjs.c:20637
                if (*p == '\n') {
    8002e738:	4ca9                	li	s9,10
quickjs-nuttx/quickjs.c:20646
                    if (c == CP_LS || c == CP_PS) {
    8002e73a:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:20648
                    } else if (c == -1) {
    8002e73c:	5d7d                	li	s10,-1
quickjs-nuttx/quickjs.c:20629
                if (*p == '\0' && p >= s->buf_end) {
    8002e73e:	f8043503          	ld	a0,-128(s0)
    8002e742:	00054783          	lbu	a5,0(a0)
    8002e746:	ef81                	bnez	a5,8002e75e <next_token+0x1d8>
quickjs-nuttx/quickjs.c:20629 (discriminator 1)
    8002e748:	70bc                	ld	a5,96(s1)
    8002e74a:	02f56d63          	bltu	a0,a5,8002e784 <next_token+0x1fe>
quickjs-nuttx/quickjs.c:20630
                    js_parse_error(s, "unexpected end of comment");
    8002e74e:	0003d597          	auipc	a1,0x3d
    8002e752:	23258593          	addi	a1,a1,562 # 8006b980 <qjsc_repl+0x63d0>
quickjs-nuttx/quickjs.c:21041
                    js_parse_error(s, "unexpected character");
    8002e756:	8526                	mv	a0,s1
    8002e758:	d1aff0ef          	jal	ra,8002dc72 <js_parse_error>
quickjs-nuttx/quickjs.c:21042
                    goto fail;
    8002e75c:	b779                	j	8002e6ea <next_token+0x164>
quickjs-nuttx/quickjs.c:20633
                if (p[0] == '*' && p[1] == '/') {
    8002e75e:	01879c63          	bne	a5,s8,8002e776 <next_token+0x1f0>
quickjs-nuttx/quickjs.c:20633 (discriminator 1)
    8002e762:	00154703          	lbu	a4,1(a0)
    8002e766:	02f00793          	li	a5,47
    8002e76a:	00f71d63          	bne	a4,a5,8002e784 <next_token+0x1fe>
quickjs-nuttx/quickjs.c:20634
                    p += 2;
    8002e76e:	0509                	addi	a0,a0,2
    8002e770:	f8a43023          	sd	a0,-128(s0)
quickjs-nuttx/quickjs.c:20655
            goto redo;
    8002e774:	bd49                	j	8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:20637
                if (*p == '\n') {
    8002e776:	01979b63          	bne	a5,s9,8002e78c <next_token+0x206>
quickjs-nuttx/quickjs.c:20638
                    s->line_num++;
    8002e77a:	44dc                	lw	a5,12(s1)
    8002e77c:	2785                	addiw	a5,a5,1
    8002e77e:	c4dc                	sw	a5,12(s1)
quickjs-nuttx/quickjs.c:20642
                    s->got_lf = TRUE; /* considered as LF for ASI */
    8002e780:	0524a423          	sw	s2,72(s1)
quickjs-nuttx/quickjs.c:20652
                    p++;
    8002e784:	0505                	addi	a0,a0,1
    8002e786:	f8a43023          	sd	a0,-128(s0)
    8002e78a:	bf55                	j	8002e73e <next_token+0x1b8>
quickjs-nuttx/quickjs.c:20641
                } else if (*p == '\r') {
    8002e78c:	ff478ae3          	beq	a5,s4,8002e780 <next_token+0x1fa>
quickjs-nuttx/quickjs.c:20644
                } else if (*p >= 0x80) {
    8002e790:	0187979b          	slliw	a5,a5,0x18
    8002e794:	4187d79b          	sraiw	a5,a5,0x18
    8002e798:	fe07d6e3          	bgez	a5,8002e784 <next_token+0x1fe>
quickjs-nuttx/quickjs.c:20645
                    c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8002e79c:	f8040613          	addi	a2,s0,-128
    8002e7a0:	4599                	li	a1,6
    8002e7a2:	518230ef          	jal	ra,80051cba <unicode_from_utf8>
quickjs-nuttx/quickjs.c:20646
                    if (c == CP_LS || c == CP_PS) {
    8002e7a6:	00a987bb          	addw	a5,s3,a0
    8002e7aa:	00f96563          	bltu	s2,a5,8002e7b4 <next_token+0x22e>
quickjs-nuttx/quickjs.c:20647
                        s->got_lf = TRUE; /* considered as LF for ASI */
    8002e7ae:	0524a423          	sw	s2,72(s1)
    8002e7b2:	b771                	j	8002e73e <next_token+0x1b8>
quickjs-nuttx/quickjs.c:20648
                    } else if (c == -1) {
    8002e7b4:	f9a515e3          	bne	a0,s10,8002e73e <next_token+0x1b8>
quickjs-nuttx/quickjs.c:20649
                        p++; /* skip invalid UTF-8 */
    8002e7b8:	f8043783          	ld	a5,-128(s0)
    8002e7bc:	0785                	addi	a5,a5,1
    8002e7be:	f8f43023          	sd	a5,-128(s0)
    8002e7c2:	bfb5                	j	8002e73e <next_token+0x1b8>
quickjs-nuttx/quickjs.c:20656
        } else if (p[1] == '/') {
    8002e7c4:	02f00713          	li	a4,47
    8002e7c8:	04e79f63          	bne	a5,a4,8002e826 <next_token+0x2a0>
quickjs-nuttx/quickjs.c:20658
            p += 2;
    8002e7cc:	0809                	addi	a6,a6,2
    8002e7ce:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20663
                if (*p == '\r' || *p == '\n')
    8002e7d2:	4929                	li	s2,10
quickjs-nuttx/quickjs.c:20668
                    if (c == CP_LS || c == CP_PS) {
    8002e7d4:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:20670
                    } else if (c == -1) {
    8002e7d6:	5cfd                	li	s9,-1
quickjs-nuttx/quickjs.c:20661
                if (*p == '\0' && p >= s->buf_end)
    8002e7d8:	f8043503          	ld	a0,-128(s0)
    8002e7dc:	00054783          	lbu	a5,0(a0)
    8002e7e0:	eb81                	bnez	a5,8002e7f0 <next_token+0x26a>
quickjs-nuttx/quickjs.c:20661 (discriminator 1)
    8002e7e2:	70bc                	ld	a5,96(s1)
    8002e7e4:	e2f571e3          	bgeu	a0,a5,8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:20674
                    p++;
    8002e7e8:	0505                	addi	a0,a0,1
    8002e7ea:	f8a43023          	sd	a0,-128(s0)
    8002e7ee:	b7ed                	j	8002e7d8 <next_token+0x252>
quickjs-nuttx/quickjs.c:20663
                if (*p == '\r' || *p == '\n')
    8002e7f0:	e1478be3          	beq	a5,s4,8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:20663 (discriminator 1)
    8002e7f4:	e12789e3          	beq	a5,s2,8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:20665
                if (*p >= 0x80) {
    8002e7f8:	0187979b          	slliw	a5,a5,0x18
    8002e7fc:	4187d79b          	sraiw	a5,a5,0x18
    8002e800:	fe07d4e3          	bgez	a5,8002e7e8 <next_token+0x262>
quickjs-nuttx/quickjs.c:20666
                    c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8002e804:	f8040613          	addi	a2,s0,-128
    8002e808:	4599                	li	a1,6
    8002e80a:	4b0230ef          	jal	ra,80051cba <unicode_from_utf8>
quickjs-nuttx/quickjs.c:20668
                    if (c == CP_LS || c == CP_PS) {
    8002e80e:	00a987bb          	addw	a5,s3,a0
    8002e812:	defc7ae3          	bgeu	s8,a5,8002e606 <next_token+0x80>
quickjs-nuttx/quickjs.c:20670
                    } else if (c == -1) {
    8002e816:	fd9511e3          	bne	a0,s9,8002e7d8 <next_token+0x252>
quickjs-nuttx/quickjs.c:20671
                        p++; /* skip invalid UTF-8 */
    8002e81a:	f8043783          	ld	a5,-128(s0)
    8002e81e:	0785                	addi	a5,a5,1
    8002e820:	f8f43023          	sd	a5,-128(s0)
    8002e824:	bf55                	j	8002e7d8 <next_token+0x252>
quickjs-nuttx/quickjs.c:20678
        } else if (p[1] == '=') {
    8002e826:	03d00693          	li	a3,61
    8002e82a:	00d79863          	bne	a5,a3,8002e83a <next_token+0x2b4>
quickjs-nuttx/quickjs.c:20679
            p += 2;
    8002e82e:	0809                	addi	a6,a6,2
    8002e830:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20680
            s->token.val = TOK_DIV_ASSIGN;
    8002e834:	f8600793          	li	a5,-122
    8002e838:	b549                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20682
            p++;
    8002e83a:	0805                	addi	a6,a6,1
    8002e83c:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20979
                s->token.val = '^';
    8002e840:	cc98                	sw	a4,24(s1)
    8002e842:	a0b5                	j	8002e8ae <next_token+0x328>
quickjs-nuttx/quickjs.c:20687
        if (p[1] == 'u') {
    8002e844:	00184703          	lbu	a4,1(a6)
    8002e848:	07500793          	li	a5,117
quickjs-nuttx/quickjs.c:20588
    c = *p;
    8002e84c:	05c00913          	li	s2,92
quickjs-nuttx/quickjs.c:20687
        if (p[1] == 'u') {
    8002e850:	08f71363          	bne	a4,a5,8002e8d6 <next_token+0x350>
quickjs-nuttx/quickjs.c:20598
        if (js_parse_template_part(s, p + 1))
    8002e854:	0805                	addi	a6,a6,1
quickjs-nuttx/quickjs.c:20689
            int c1 = lre_parse_escape(&p1, TRUE);
    8002e856:	4585                	li	a1,1
    8002e858:	f9040513          	addi	a0,s0,-112
quickjs-nuttx/quickjs.c:20688
            const uint8_t *p1 = p + 1;
    8002e85c:	f9043823          	sd	a6,-112(s0)
quickjs-nuttx/quickjs.c:20689
            int c1 = lre_parse_escape(&p1, TRUE);
    8002e860:	6501f0ef          	jal	ra,8004deb0 <lre_parse_escape>
    8002e864:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:20690
            if (c1 >= 0 && lre_js_is_ident_first(c1)) {
    8002e866:	06054663          	bltz	a0,8002e8d2 <next_token+0x34c>
quickjs-nuttx/quickjs.c:20690 (discriminator 1)
    8002e86a:	946db0ef          	jal	ra,800099b0 <lre_js_is_ident_first>
    8002e86e:	c135                	beqz	a0,8002e8d2 <next_token+0x34c>
quickjs-nuttx/quickjs.c:20692
                p = p1;
    8002e870:	f9043783          	ld	a5,-112(s0)
    8002e874:	f8f43023          	sd	a5,-128(s0)
quickjs-nuttx/quickjs.c:20693
                ident_has_escape = TRUE;
    8002e878:	4785                	li	a5,1
    8002e87a:	f8f42423          	sw	a5,-120(s0)
quickjs-nuttx/quickjs.c:20720
        atom = parse_ident(s, &p, &ident_has_escape, c, FALSE);
    8002e87e:	4701                	li	a4,0
    8002e880:	86ca                	mv	a3,s2
    8002e882:	f8840613          	addi	a2,s0,-120
    8002e886:	f8040593          	addi	a1,s0,-128
    8002e88a:	8526                	mv	a0,s1
    8002e88c:	828f10ef          	jal	ra,8001f8b4 <parse_ident>
    8002e890:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:20721
        if (atom == JS_ATOM_NULL)
    8002e892:	e4050ce3          	beqz	a0,8002e6ea <next_token+0x164>
quickjs-nuttx/quickjs.c:20724
        s->token.u.ident.has_escape = ident_has_escape;
    8002e896:	f8842783          	lw	a5,-120(s0)
quickjs-nuttx/quickjs.c:20723
        s->token.u.ident.atom = atom;
    8002e89a:	d488                	sw	a0,40(s1)
quickjs-nuttx/quickjs.c:20725
        s->token.u.ident.is_reserved = FALSE;
    8002e89c:	0204a823          	sw	zero,48(s1)
quickjs-nuttx/quickjs.c:20724
        s->token.u.ident.has_escape = ident_has_escape;
    8002e8a0:	d4dc                	sw	a5,44(s1)
quickjs-nuttx/quickjs.c:20726
        s->token.val = TOK_IDENT;
    8002e8a2:	f8300793          	li	a5,-125
    8002e8a6:	cc9c                	sw	a5,24(s1)
quickjs-nuttx/quickjs.c:20727
        update_token_ident(s);
    8002e8a8:	8526                	mv	a0,s1
    8002e8aa:	de4d90ef          	jal	ra,80007e8e <update_token_ident>
quickjs-nuttx/quickjs.c:21051
    s->buf_ptr = p;
    8002e8ae:	f8043783          	ld	a5,-128(s0)
quickjs-nuttx/quickjs.c:21054
    return 0;
    8002e8b2:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:21051
    s->buf_ptr = p;
    8002e8b4:	ecbc                	sd	a5,88(s1)
quickjs-nuttx/quickjs.c:21059
}
    8002e8b6:	60aa                	ld	ra,136(sp)
    8002e8b8:	640a                	ld	s0,128(sp)
    8002e8ba:	74e6                	ld	s1,120(sp)
    8002e8bc:	7946                	ld	s2,112(sp)
    8002e8be:	79a6                	ld	s3,104(sp)
    8002e8c0:	7a06                	ld	s4,96(sp)
    8002e8c2:	6ae6                	ld	s5,88(sp)
    8002e8c4:	6b46                	ld	s6,80(sp)
    8002e8c6:	6ba6                	ld	s7,72(sp)
    8002e8c8:	6c06                	ld	s8,64(sp)
    8002e8ca:	7ce2                	ld	s9,56(sp)
    8002e8cc:	7d42                	ld	s10,48(sp)
    8002e8ce:	6149                	addi	sp,sp,144
    8002e8d0:	8082                	ret
quickjs-nuttx/quickjs.c:20588
    c = *p;
    8002e8d2:	05c00913          	li	s2,92
quickjs-nuttx/quickjs.c:21048
        p++;
    8002e8d6:	f8043783          	ld	a5,-128(s0)
quickjs-nuttx/quickjs.c:21047
        s->token.val = c;
    8002e8da:	0124ac23          	sw	s2,24(s1)
quickjs-nuttx/quickjs.c:21048
        p++;
    8002e8de:	0785                	addi	a5,a5,1
    8002e8e0:	b3f5                	j	8002e6cc <next_token+0x146>
quickjs-nuttx/quickjs.c:20717
        p++;
    8002e8e2:	0805                	addi	a6,a6,1
    8002e8e4:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20718
        ident_has_escape = FALSE;
    8002e8e8:	f8042423          	sw	zero,-120(s0)
    8002e8ec:	bf49                	j	8002e87e <next_token+0x2f8>
quickjs-nuttx/quickjs.c:20735
            c = *p1++;
    8002e8ee:	00280793          	addi	a5,a6,2
quickjs-nuttx/quickjs.c:20733
            p++;
    8002e8f2:	00180513          	addi	a0,a6,1
quickjs-nuttx/quickjs.c:20735
            c = *p1++;
    8002e8f6:	f8f43823          	sd	a5,-112(s0)
quickjs-nuttx/quickjs.c:20733
            p++;
    8002e8fa:	f8a43023          	sd	a0,-128(s0)
quickjs-nuttx/quickjs.c:20735
            c = *p1++;
    8002e8fe:	00184683          	lbu	a3,1(a6)
quickjs-nuttx/quickjs.c:20736
            if (c == '\\' && *p1 == 'u') {
    8002e902:	05c00793          	li	a5,92
    8002e906:	06f69063          	bne	a3,a5,8002e966 <next_token+0x3e0>
quickjs-nuttx/quickjs.c:20736 (discriminator 1)
    8002e90a:	00284703          	lbu	a4,2(a6)
    8002e90e:	07500793          	li	a5,117
    8002e912:	00f71863          	bne	a4,a5,8002e922 <next_token+0x39c>
quickjs-nuttx/quickjs.c:20737
                c = lre_parse_escape(&p1, TRUE);
    8002e916:	4585                	li	a1,1
    8002e918:	f9040513          	addi	a0,s0,-112
    8002e91c:	5941f0ef          	jal	ra,8004deb0 <lre_parse_escape>
quickjs-nuttx/quickjs.c:20739
                c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p1);
    8002e920:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:20741
            if (!lre_js_is_ident_first(c)) {
    8002e922:	8536                	mv	a0,a3
    8002e924:	f6d43c23          	sd	a3,-136(s0)
    8002e928:	888db0ef          	jal	ra,800099b0 <lre_js_is_ident_first>
    8002e92c:	f7843683          	ld	a3,-136(s0)
quickjs-nuttx/quickjs.c:20742
                js_parse_error(s, "invalid first character of private name");
    8002e930:	0003d597          	auipc	a1,0x3d
    8002e934:	12858593          	addi	a1,a1,296 # 8006ba58 <qjsc_repl+0x64a8>
quickjs-nuttx/quickjs.c:20741
            if (!lre_js_is_ident_first(c)) {
    8002e938:	e0050fe3          	beqz	a0,8002e756 <next_token+0x1d0>
quickjs-nuttx/quickjs.c:20745
            p = p1;
    8002e93c:	f9043783          	ld	a5,-112(s0)
quickjs-nuttx/quickjs.c:20747
            atom = parse_ident(s, &p, &ident_has_escape, c, TRUE);
    8002e940:	4705                	li	a4,1
    8002e942:	f8840613          	addi	a2,s0,-120
    8002e946:	f8040593          	addi	a1,s0,-128
    8002e94a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:20745
            p = p1;
    8002e94c:	f8f43023          	sd	a5,-128(s0)
quickjs-nuttx/quickjs.c:20746
            ident_has_escape = FALSE; /* not used */
    8002e950:	f8042423          	sw	zero,-120(s0)
quickjs-nuttx/quickjs.c:20747
            atom = parse_ident(s, &p, &ident_has_escape, c, TRUE);
    8002e954:	f61f00ef          	jal	ra,8001f8b4 <parse_ident>
    8002e958:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:20748
            if (atom == JS_ATOM_NULL)
    8002e95a:	d80508e3          	beqz	a0,8002e6ea <next_token+0x164>
quickjs-nuttx/quickjs.c:20750
            s->token.u.ident.atom = atom;
    8002e95e:	d488                	sw	a0,40(s1)
quickjs-nuttx/quickjs.c:20751
            s->token.val = TOK_PRIVATE_NAME;
    8002e960:	fab00793          	li	a5,-85
    8002e964:	bb99                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20738
            } else if (c >= 128) {
    8002e966:	07f00793          	li	a5,127
    8002e96a:	fad7dce3          	bge	a5,a3,8002e922 <next_token+0x39c>
quickjs-nuttx/quickjs.c:20739
                c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p1);
    8002e96e:	f9040613          	addi	a2,s0,-112
    8002e972:	4599                	li	a1,6
    8002e974:	346230ef          	jal	ra,80051cba <unicode_from_utf8>
    8002e978:	b765                	j	8002e920 <next_token+0x39a>
quickjs-nuttx/quickjs.c:20755
        if (p[1] == '.' && p[2] == '.') {
    8002e97a:	00184783          	lbu	a5,1(a6)
    8002e97e:	02e00713          	li	a4,46
    8002e982:	00e79e63          	bne	a5,a4,8002e99e <next_token+0x418>
quickjs-nuttx/quickjs.c:20755 (discriminator 1)
    8002e986:	00284703          	lbu	a4,2(a6)
quickjs-nuttx/quickjs.c:20588 (discriminator 1)
    c = *p;
    8002e98a:	02e00913          	li	s2,46
quickjs-nuttx/quickjs.c:20755 (discriminator 1)
        if (p[1] == '.' && p[2] == '.') {
    8002e98e:	f4f714e3          	bne	a4,a5,8002e8d6 <next_token+0x350>
quickjs-nuttx/quickjs.c:20756
            p += 3;
    8002e992:	080d                	addi	a6,a6,3
    8002e994:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20757
            s->token.val = TOK_ELLIPSIS;
    8002e998:	fa700793          	li	a5,-89
    8002e99c:	bb39                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20760
        if (p[1] >= '0' && p[1] <= '9') {
    8002e99e:	fd07879b          	addiw	a5,a5,-48
    8002e9a2:	0ff7f793          	zext.b	a5,a5
    8002e9a6:	4725                	li	a4,9
quickjs-nuttx/quickjs.c:20588
    c = *p;
    8002e9a8:	02e00913          	li	s2,46
quickjs-nuttx/quickjs.c:20760
        if (p[1] >= '0' && p[1] <= '9') {
    8002e9ac:	f2f765e3          	bltu	a4,a5,8002e8d6 <next_token+0x350>
quickjs-nuttx/quickjs.c:20786
            if (s->cur_func->js_mode & JS_MODE_MATH) {
    8002e9b0:	74bc                	ld	a5,104(s1)
quickjs-nuttx/quickjs.c:20784
            flags |= ATOD_ACCEPT_SUFFIX;
    8002e9b2:	07400713          	li	a4,116
quickjs-nuttx/quickjs.c:20786
            if (s->cur_func->js_mode & JS_MODE_MATH) {
    8002e9b6:	0867c783          	lbu	a5,134(a5)
    8002e9ba:	8b91                	andi	a5,a5,4
    8002e9bc:	c399                	beqz	a5,8002e9c2 <next_token+0x43c>
quickjs-nuttx/quickjs.c:20789
                    flags |= ATOD_TYPE_BIG_FLOAT;
    8002e9be:	37400713          	li	a4,884
quickjs-nuttx/quickjs.c:20795
            ret = js_atof2(s->ctx, (const char *)p, (const char **)&p, radix,
    8002e9c2:	6088                	ld	a0,0(s1)
    8002e9c4:	03848793          	addi	a5,s1,56
quickjs-nuttx/quickjs.c:20794
            s->token.u.num.exponent = 0;
    8002e9c8:	0204bc23          	sd	zero,56(s1)
quickjs-nuttx/quickjs.c:20795
            ret = js_atof2(s->ctx, (const char *)p, (const char **)&p, radix,
    8002e9cc:	4681                	li	a3,0
    8002e9ce:	f8040613          	addi	a2,s0,-128
    8002e9d2:	85c2                	mv	a1,a6
    8002e9d4:	ec5ee0ef          	jal	ra,8001d898 <js_atof2>
    8002e9d8:	f8a43823          	sd	a0,-112(s0)
    8002e9dc:	f8b43c23          	sd	a1,-104(s0)
quickjs-nuttx/quickjs.c:20801
            if (JS_IsException(ret))
    8002e9e0:	0005871b          	sext.w	a4,a1
    8002e9e4:	4799                	li	a5,6
    8002e9e6:	d0f702e3          	beq	a4,a5,8002e6ea <next_token+0x164>
JS_VALUE_IS_NAN():
quickjs-nuttx/quickjs.h:239
    if (v.tag != JS_TAG_FLOAT64)
    8002e9ea:	479d                	li	a5,7
    8002e9ec:	04f59663          	bne	a1,a5,8002ea38 <next_token+0x4b2>
quickjs-nuttx/quickjs.h:242
    return (u.u64 & 0x7fffffffffffffff) > 0x7ff0000000000000;
    8002e9f0:	0506                	slli	a0,a0,0x1
next_token():
quickjs-nuttx/quickjs.c:20804
            if (JS_VALUE_IS_NAN(ret) ||
    8002e9f2:	7ff00793          	li	a5,2047
JS_VALUE_IS_NAN():
quickjs-nuttx/quickjs.h:242
    8002e9f6:	8105                	srli	a0,a0,0x1
next_token():
quickjs-nuttx/quickjs.c:20804
    8002e9f8:	17d2                	slli	a5,a5,0x34
    8002e9fa:	02a7ff63          	bgeu	a5,a0,8002ea38 <next_token+0x4b2>
quickjs-nuttx/quickjs.c:20806
                JS_FreeValue(s->ctx, ret);
    8002e9fe:	f9043583          	ld	a1,-112(s0)
    8002ea02:	f9843603          	ld	a2,-104(s0)
    8002ea06:	6088                	ld	a0,0(s1)
    8002ea08:	d97dc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:20807
                js_parse_error(s, "invalid number literal");
    8002ea0c:	0003d597          	auipc	a1,0x3d
    8002ea10:	0a458593          	addi	a1,a1,164 # 8006bab0 <qjsc_repl+0x6500>
    8002ea14:	b389                	j	8002e756 <next_token+0x1d0>
is_digit():
quickjs-nuttx/quickjs.c:1459
    return c >= '0' && c <= '9';
    8002ea16:	00184783          	lbu	a5,1(a6)
next_token():
quickjs-nuttx/quickjs.c:20768
        if (is_digit(p[1]) && (s->cur_func->js_mode & JS_MODE_STRICT)) {
    8002ea1a:	4725                	li	a4,9
    8002ea1c:	fd07879b          	addiw	a5,a5,-48
    8002ea20:	f8f768e3          	bltu	a4,a5,8002e9b0 <next_token+0x42a>
quickjs-nuttx/quickjs.c:20768 (discriminator 1)
    8002ea24:	74bc                	ld	a5,104(s1)
quickjs-nuttx/quickjs.c:20769 (discriminator 1)
            js_parse_error(s, "octal literals are deprecated in strict mode");
    8002ea26:	0003d597          	auipc	a1,0x3d
    8002ea2a:	05a58593          	addi	a1,a1,90 # 8006ba80 <qjsc_repl+0x64d0>
quickjs-nuttx/quickjs.c:20768 (discriminator 1)
        if (is_digit(p[1]) && (s->cur_func->js_mode & JS_MODE_STRICT)) {
    8002ea2e:	0867c783          	lbu	a5,134(a5)
    8002ea32:	8b85                	andi	a5,a5,1
    8002ea34:	dfb5                	beqz	a5,8002e9b0 <next_token+0x42a>
    8002ea36:	b305                	j	8002e756 <next_token+0x1d0>
quickjs-nuttx/quickjs.c:20805 (discriminator 1)
                lre_js_is_ident_next(unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p1))) {
    8002ea38:	f8043503          	ld	a0,-128(s0)
    8002ea3c:	f8840613          	addi	a2,s0,-120
    8002ea40:	4599                	li	a1,6
    8002ea42:	278230ef          	jal	ra,80051cba <unicode_from_utf8>
    8002ea46:	f97da0ef          	jal	ra,800099dc <lre_js_is_ident_next>
quickjs-nuttx/quickjs.c:20804 (discriminator 1)
            if (JS_VALUE_IS_NAN(ret) ||
    8002ea4a:	f955                	bnez	a0,8002e9fe <next_token+0x478>
quickjs-nuttx/quickjs.c:20810
            s->token.val = TOK_NUMBER;
    8002ea4c:	f8000793          	li	a5,-128
    8002ea50:	cc9c                	sw	a5,24(s1)
quickjs-nuttx/quickjs.c:20811
            s->token.u.num.val = ret;
    8002ea52:	f9043783          	ld	a5,-112(s0)
    8002ea56:	f49c                	sd	a5,40(s1)
    8002ea58:	f9843783          	ld	a5,-104(s0)
    8002ea5c:	f89c                	sd	a5,48(s1)
quickjs-nuttx/quickjs.c:20813
        break;
    8002ea5e:	bd81                	j	8002e8ae <next_token+0x328>
quickjs-nuttx/quickjs.c:20815
        if (p[1] == '=') {
    8002ea60:	00184703          	lbu	a4,1(a6)
    8002ea64:	03d00793          	li	a5,61
    8002ea68:	00f71863          	bne	a4,a5,8002ea78 <next_token+0x4f2>
quickjs-nuttx/quickjs.c:20816
            p += 2;
    8002ea6c:	0809                	addi	a6,a6,2
    8002ea6e:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20817
            s->token.val = TOK_MUL_ASSIGN;
    8002ea72:	f8500793          	li	a5,-123
    8002ea76:	b191                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20818
        } else if (p[1] == '*') {
    8002ea78:	02a00693          	li	a3,42
    8002ea7c:	2ed71e63          	bne	a4,a3,8002ed78 <next_token+0x7f2>
quickjs-nuttx/quickjs.c:20819
            if (p[2] == '=') {
    8002ea80:	00284703          	lbu	a4,2(a6)
    8002ea84:	00f71863          	bne	a4,a5,8002ea94 <next_token+0x50e>
quickjs-nuttx/quickjs.c:20820
                p += 3;
    8002ea88:	080d                	addi	a6,a6,3
    8002ea8a:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20821
                s->token.val = TOK_POW_ASSIGN;
    8002ea8e:	f9100793          	li	a5,-111
    8002ea92:	b125                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20823
                p += 2;
    8002ea94:	0809                	addi	a6,a6,2
    8002ea96:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20824
                s->token.val = TOK_POW;
    8002ea9a:	fa500793          	li	a5,-91
    8002ea9e:	b931                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20831
        if (p[1] == '=') {
    8002eaa0:	00184703          	lbu	a4,1(a6)
    8002eaa4:	03d00793          	li	a5,61
    8002eaa8:	2cf71b63          	bne	a4,a5,8002ed7e <next_token+0x7f8>
quickjs-nuttx/quickjs.c:20832
            p += 2;
    8002eaac:	0809                	addi	a6,a6,2
    8002eaae:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20833
            s->token.val = TOK_MOD_ASSIGN;
    8002eab2:	f8700793          	li	a5,-121
    8002eab6:	b111                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20839
        if (p[1] == '=') {
    8002eab8:	00184783          	lbu	a5,1(a6)
    8002eabc:	03d00713          	li	a4,61
    8002eac0:	00e79863          	bne	a5,a4,8002ead0 <next_token+0x54a>
quickjs-nuttx/quickjs.c:20840
            p += 2;
    8002eac4:	0809                	addi	a6,a6,2
    8002eac6:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20841
            s->token.val = TOK_PLUS_ASSIGN;
    8002eaca:	f8800793          	li	a5,-120
    8002eace:	b6f5                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20842
        } else if (p[1] == '+') {
    8002ead0:	02b00713          	li	a4,43
    8002ead4:	2ae79863          	bne	a5,a4,8002ed84 <next_token+0x7fe>
quickjs-nuttx/quickjs.c:20843
            p += 2;
    8002ead8:	0809                	addi	a6,a6,2
    8002eada:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20844
            s->token.val = TOK_INC;
    8002eade:	f9600793          	li	a5,-106
    8002eae2:	bee1                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20850
        if (p[1] == '=') {
    8002eae4:	00184783          	lbu	a5,1(a6)
    8002eae8:	03d00693          	li	a3,61
    8002eaec:	00d79863          	bne	a5,a3,8002eafc <next_token+0x576>
quickjs-nuttx/quickjs.c:20851
            p += 2;
    8002eaf0:	0809                	addi	a6,a6,2
    8002eaf2:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20852
            s->token.val = TOK_MINUS_ASSIGN;
    8002eaf6:	f8900793          	li	a5,-119
    8002eafa:	b6c1                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20853
        } else if (p[1] == '-') {
    8002eafc:	02d00693          	li	a3,45
    8002eb00:	28d79563          	bne	a5,a3,8002ed8a <next_token+0x804>
quickjs-nuttx/quickjs.c:20854
            if (s->allow_html_comments &&
    8002eb04:	58fc                	lw	a5,116(s1)
    8002eb06:	cb91                	beqz	a5,8002eb1a <next_token+0x594>
quickjs-nuttx/quickjs.c:20854 (discriminator 1)
    8002eb08:	00284683          	lbu	a3,2(a6)
    8002eb0c:	03e00793          	li	a5,62
    8002eb10:	00f69563          	bne	a3,a5,8002eb1a <next_token+0x594>
quickjs-nuttx/quickjs.c:20855
                p[2] == '>' && s->last_line_num != s->line_num) {
    8002eb14:	449c                	lw	a5,8(s1)
    8002eb16:	cae79ee3          	bne	a5,a4,8002e7d2 <next_token+0x24c>
quickjs-nuttx/quickjs.c:20861
            p += 2;
    8002eb1a:	0809                	addi	a6,a6,2
    8002eb1c:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20862
            s->token.val = TOK_DEC;
    8002eb20:	f9500793          	li	a5,-107
    8002eb24:	be59                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20868
        if (p[1] == '=') {
    8002eb26:	00184783          	lbu	a5,1(a6)
    8002eb2a:	03d00713          	li	a4,61
    8002eb2e:	00e79863          	bne	a5,a4,8002eb3e <next_token+0x5b8>
quickjs-nuttx/quickjs.c:20869
            p += 2;
    8002eb32:	0809                	addi	a6,a6,2
    8002eb34:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20870
            s->token.val = TOK_LTE;
    8002eb38:	f9b00793          	li	a5,-101
    8002eb3c:	bebd                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20871
        } else if (p[1] == '<') {
    8002eb3e:	03c00693          	li	a3,60
    8002eb42:	02d79263          	bne	a5,a3,8002eb66 <next_token+0x5e0>
quickjs-nuttx/quickjs.c:20872
            if (p[2] == '=') {
    8002eb46:	00284783          	lbu	a5,2(a6)
    8002eb4a:	00e79863          	bne	a5,a4,8002eb5a <next_token+0x5d4>
quickjs-nuttx/quickjs.c:20873
                p += 3;
    8002eb4e:	080d                	addi	a6,a6,3
    8002eb50:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20874
                s->token.val = TOK_SHL_ASSIGN;
    8002eb54:	f8a00793          	li	a5,-118
    8002eb58:	b68d                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20876
                p += 2;
    8002eb5a:	0809                	addi	a6,a6,2
    8002eb5c:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20877
                s->token.val = TOK_SHL;
    8002eb60:	f9700793          	li	a5,-105
    8002eb64:	be99                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20879
        } else if (s->allow_html_comments &&
    8002eb66:	58f8                	lw	a4,116(s1)
    8002eb68:	cf19                	beqz	a4,8002eb86 <next_token+0x600>
quickjs-nuttx/quickjs.c:20879 (discriminator 1)
    8002eb6a:	02100713          	li	a4,33
    8002eb6e:	00e79c63          	bne	a5,a4,8002eb86 <next_token+0x600>
quickjs-nuttx/quickjs.c:20880
                   p[1] == '!' && p[2] == '-' && p[3] == '-') {
    8002eb72:	00284783          	lbu	a5,2(a6)
    8002eb76:	02d00713          	li	a4,45
    8002eb7a:	00e79663          	bne	a5,a4,8002eb86 <next_token+0x600>
quickjs-nuttx/quickjs.c:20880 (discriminator 1)
    8002eb7e:	00384703          	lbu	a4,3(a6)
    8002eb82:	c4f708e3          	beq	a4,a5,8002e7d2 <next_token+0x24c>
    8002eb86:	03c00913          	li	s2,60
    8002eb8a:	b3b1                	j	8002e8d6 <next_token+0x350>
quickjs-nuttx/quickjs.c:20888
        if (p[1] == '=') {
    8002eb8c:	00184703          	lbu	a4,1(a6)
    8002eb90:	03d00793          	li	a5,61
    8002eb94:	00f71863          	bne	a4,a5,8002eba4 <next_token+0x61e>
quickjs-nuttx/quickjs.c:20889
            p += 2;
    8002eb98:	0809                	addi	a6,a6,2
    8002eb9a:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20890
            s->token.val = TOK_GTE;
    8002eb9e:	f9d00793          	li	a5,-99
    8002eba2:	be21                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20891
        } else if (p[1] == '>') {
    8002eba4:	03e00693          	li	a3,62
    8002eba8:	1ed71463          	bne	a4,a3,8002ed90 <next_token+0x80a>
quickjs-nuttx/quickjs.c:20892
            if (p[2] == '>') {
    8002ebac:	00284683          	lbu	a3,2(a6)
    8002ebb0:	02e69263          	bne	a3,a4,8002ebd4 <next_token+0x64e>
quickjs-nuttx/quickjs.c:20893
                if (p[3] == '=') {
    8002ebb4:	00384703          	lbu	a4,3(a6)
    8002ebb8:	00f71863          	bne	a4,a5,8002ebc8 <next_token+0x642>
quickjs-nuttx/quickjs.c:20894
                    p += 4;
    8002ebbc:	0811                	addi	a6,a6,4
    8002ebbe:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20895
                    s->token.val = TOK_SHR_ASSIGN;
    8002ebc2:	f8c00793          	li	a5,-116
    8002ebc6:	bcd5                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20897
                    p += 3;
    8002ebc8:	080d                	addi	a6,a6,3
    8002ebca:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20898
                    s->token.val = TOK_SHR;
    8002ebce:	f9900793          	li	a5,-103
    8002ebd2:	b4e5                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20900
            } else if (p[2] == '=') {
    8002ebd4:	00f69863          	bne	a3,a5,8002ebe4 <next_token+0x65e>
quickjs-nuttx/quickjs.c:20901
                p += 3;
    8002ebd8:	080d                	addi	a6,a6,3
    8002ebda:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20902
                s->token.val = TOK_SAR_ASSIGN;
    8002ebde:	f8b00793          	li	a5,-117
    8002ebe2:	bce1                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20904
                p += 2;
    8002ebe4:	0809                	addi	a6,a6,2
    8002ebe6:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20905
                s->token.val = TOK_SAR;
    8002ebea:	f9800793          	li	a5,-104
    8002ebee:	b4f1                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20912
        if (p[1] == '=') {
    8002ebf0:	00184783          	lbu	a5,1(a6)
    8002ebf4:	03d00713          	li	a4,61
    8002ebf8:	02e79263          	bne	a5,a4,8002ec1c <next_token+0x696>
quickjs-nuttx/quickjs.c:20913
            if (p[2] == '=') {
    8002ebfc:	00284703          	lbu	a4,2(a6)
    8002ec00:	00f71863          	bne	a4,a5,8002ec10 <next_token+0x68a>
quickjs-nuttx/quickjs.c:20914
                p += 3;
    8002ec04:	080d                	addi	a6,a6,3
    8002ec06:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20915
                s->token.val = TOK_STRICT_EQ;
    8002ec0a:	f9f00793          	li	a5,-97
    8002ec0e:	b475                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20917
                p += 2;
    8002ec10:	0809                	addi	a6,a6,2
    8002ec12:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20918
                s->token.val = TOK_EQ;
    8002ec16:	f9e00793          	li	a5,-98
    8002ec1a:	b445                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20920
        } else if (p[1] == '>') {
    8002ec1c:	03e00713          	li	a4,62
    8002ec20:	16e79b63          	bne	a5,a4,8002ed96 <next_token+0x810>
quickjs-nuttx/quickjs.c:20921
            p += 2;
    8002ec24:	0809                	addi	a6,a6,2
    8002ec26:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20922
            s->token.val = TOK_ARROW;
    8002ec2a:	fa600793          	li	a5,-90
    8002ec2e:	b471                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20928
        if (p[1] == '=') {
    8002ec30:	00184783          	lbu	a5,1(a6)
    8002ec34:	03d00713          	li	a4,61
    8002ec38:	16e79263          	bne	a5,a4,8002ed9c <next_token+0x816>
quickjs-nuttx/quickjs.c:20929
            if (p[2] == '=') {
    8002ec3c:	00284703          	lbu	a4,2(a6)
    8002ec40:	00f71863          	bne	a4,a5,8002ec50 <next_token+0x6ca>
quickjs-nuttx/quickjs.c:20930
                p += 3;
    8002ec44:	080d                	addi	a6,a6,3
    8002ec46:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20931
                s->token.val = TOK_STRICT_NEQ;
    8002ec4a:	fa100793          	li	a5,-95
    8002ec4e:	b4b5                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20933
                p += 2;
    8002ec50:	0809                	addi	a6,a6,2
    8002ec52:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20934
                s->token.val = TOK_NEQ;
    8002ec56:	fa000793          	li	a5,-96
    8002ec5a:	b485                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20941
        if (p[1] == '=') {
    8002ec5c:	00184703          	lbu	a4,1(a6)
    8002ec60:	03d00793          	li	a5,61
    8002ec64:	00f71863          	bne	a4,a5,8002ec74 <next_token+0x6ee>
quickjs-nuttx/quickjs.c:20942
            p += 2;
    8002ec68:	0809                	addi	a6,a6,2
    8002ec6a:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20943
            s->token.val = TOK_AND_ASSIGN;
    8002ec6e:	f8d00793          	li	a5,-115
    8002ec72:	b4a1                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20944
        } else if (p[1] == '&') {
    8002ec74:	02600693          	li	a3,38
    8002ec78:	12d71563          	bne	a4,a3,8002eda2 <next_token+0x81c>
quickjs-nuttx/quickjs.c:20945
            if (p[2] == '=') {
    8002ec7c:	00284703          	lbu	a4,2(a6)
    8002ec80:	00f71863          	bne	a4,a5,8002ec90 <next_token+0x70a>
quickjs-nuttx/quickjs.c:20946
                p += 3;
    8002ec84:	080d                	addi	a6,a6,3
    8002ec86:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20947
                s->token.val = TOK_LAND_ASSIGN;
    8002ec8a:	f9200793          	li	a5,-110
    8002ec8e:	b435                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20949
                p += 2;
    8002ec90:	0809                	addi	a6,a6,2
    8002ec92:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20950
                s->token.val = TOK_LAND;
    8002ec96:	fa200793          	li	a5,-94
    8002ec9a:	b405                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20960
        if (p[1] == '=') {
    8002ec9c:	00184783          	lbu	a5,1(a6)
    8002eca0:	03d00693          	li	a3,61
    8002eca4:	00d79d63          	bne	a5,a3,8002ecbe <next_token+0x738>
quickjs-nuttx/quickjs.c:20962
            if (s->cur_func->js_mode & JS_MODE_MATH)
    8002eca8:	74bc                	ld	a5,104(s1)
quickjs-nuttx/quickjs.c:20961
            p += 2;
    8002ecaa:	0809                	addi	a6,a6,2
    8002ecac:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20962
            if (s->cur_func->js_mode & JS_MODE_MATH)
    8002ecb0:	0867c783          	lbu	a5,134(a5)
    8002ecb4:	8b91                	andi	a5,a5,4
    8002ecb6:	cf99                	beqz	a5,8002ecd4 <next_token+0x74e>
quickjs-nuttx/quickjs.c:20963
                s->token.val = TOK_MATH_POW_ASSIGN;
    8002ecb8:	f9000793          	li	a5,-112
    8002ecbc:	bafd                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20966
        } else if (p[1] == '^') {
    8002ecbe:	05e00713          	li	a4,94
    8002ecc2:	02e79063          	bne	a5,a4,8002ece2 <next_token+0x75c>
quickjs-nuttx/quickjs.c:20967
            if (p[2] == '=') {
    8002ecc6:	00284703          	lbu	a4,2(a6)
    8002ecca:	00d71863          	bne	a4,a3,8002ecda <next_token+0x754>
quickjs-nuttx/quickjs.c:20968
                p += 3;
    8002ecce:	080d                	addi	a6,a6,3
    8002ecd0:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20969
                s->token.val = TOK_XOR_ASSIGN;
    8002ecd4:	f8e00793          	li	a5,-114
    8002ecd8:	b2cd                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20971
                p += 2;
    8002ecda:	0809                	addi	a6,a6,2
    8002ecdc:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20972
                s->token.val = '^';
    8002ece0:	bae9                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20976
            if (s->cur_func->js_mode & JS_MODE_MATH)
    8002ece2:	74bc                	ld	a5,104(s1)
quickjs-nuttx/quickjs.c:20975
            p++;
    8002ece4:	0805                	addi	a6,a6,1
    8002ece6:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20976
            if (s->cur_func->js_mode & JS_MODE_MATH)
    8002ecea:	0867c783          	lbu	a5,134(a5)
    8002ecee:	8b91                	andi	a5,a5,4
    8002ecf0:	b40788e3          	beqz	a5,8002e840 <next_token+0x2ba>
quickjs-nuttx/quickjs.c:20977
                s->token.val = TOK_MATH_POW;
    8002ecf4:	fa400793          	li	a5,-92
    8002ecf8:	b2c9                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20996
        } else if (p[1] == '|') {
    8002ecfa:	0af69763          	bne	a3,a5,8002eda8 <next_token+0x822>
quickjs-nuttx/quickjs.c:20997
            if (p[2] == '=') {
    8002ecfe:	00284783          	lbu	a5,2(a6)
    8002ed02:	00e79863          	bne	a5,a4,8002ed12 <next_token+0x78c>
quickjs-nuttx/quickjs.c:20998
                p += 3;
    8002ed06:	080d                	addi	a6,a6,3
    8002ed08:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:20999
                s->token.val = TOK_LOR_ASSIGN;
    8002ed0c:	f9300793          	li	a5,-109
    8002ed10:	b26d                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:21001
                p += 2;
    8002ed12:	0809                	addi	a6,a6,2
    8002ed14:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:21002
                s->token.val = TOK_LOR;
    8002ed18:	fa300793          	li	a5,-93
    8002ed1c:	ba79                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:21009
        if (p[1] == '?') {
    8002ed1e:	00184783          	lbu	a5,1(a6)
    8002ed22:	03f00713          	li	a4,63
    8002ed26:	02e79463          	bne	a5,a4,8002ed4e <next_token+0x7c8>
quickjs-nuttx/quickjs.c:21010
            if (p[2] == '=') {
    8002ed2a:	00284703          	lbu	a4,2(a6)
    8002ed2e:	03d00793          	li	a5,61
    8002ed32:	00f71863          	bne	a4,a5,8002ed42 <next_token+0x7bc>
quickjs-nuttx/quickjs.c:21011
                p += 3;
    8002ed36:	080d                	addi	a6,a6,3
    8002ed38:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:21012
                s->token.val = TOK_DOUBLE_QUESTION_MARK_ASSIGN;
    8002ed3c:	f9400793          	li	a5,-108
    8002ed40:	baad                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:21014
                p += 2;
    8002ed42:	0809                	addi	a6,a6,2
    8002ed44:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:21015
                s->token.val = TOK_DOUBLE_QUESTION_MARK;
    8002ed48:	fa800793          	li	a5,-88
    8002ed4c:	b2bd                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:21017
        } else if (p[1] == '.' && !(p[2] >= '0' && p[2] <= '9')) {
    8002ed4e:	02e00713          	li	a4,46
    8002ed52:	04e79e63          	bne	a5,a4,8002edae <next_token+0x828>
quickjs-nuttx/quickjs.c:21017 (discriminator 1)
    8002ed56:	00284783          	lbu	a5,2(a6)
    8002ed5a:	4725                	li	a4,9
    8002ed5c:	fd07879b          	addiw	a5,a5,-48
    8002ed60:	0ff7f793          	zext.b	a5,a5
    8002ed64:	04f77563          	bgeu	a4,a5,8002edae <next_token+0x828>
quickjs-nuttx/quickjs.c:21018
            p += 2;
    8002ed68:	0809                	addi	a6,a6,2
    8002ed6a:	f9043023          	sd	a6,-128(s0)
quickjs-nuttx/quickjs.c:21019
            s->token.val = TOK_QUESTION_MARK_DOT;
    8002ed6e:	fa900793          	li	a5,-87
    8002ed72:	b2a1                	j	8002e6ba <next_token+0x134>
quickjs-nuttx/quickjs.c:20588
    c = *p;
    8002ed74:	4901                	li	s2,0
    8002ed76:	b685                	j	8002e8d6 <next_token+0x350>
    8002ed78:	02a00913          	li	s2,42
    8002ed7c:	bea9                	j	8002e8d6 <next_token+0x350>
    8002ed7e:	02500913          	li	s2,37
    8002ed82:	be91                	j	8002e8d6 <next_token+0x350>
    8002ed84:	02b00913          	li	s2,43
    8002ed88:	b6b9                	j	8002e8d6 <next_token+0x350>
    8002ed8a:	02d00913          	li	s2,45
    8002ed8e:	b6a1                	j	8002e8d6 <next_token+0x350>
    8002ed90:	03e00913          	li	s2,62
    8002ed94:	b689                	j	8002e8d6 <next_token+0x350>
    8002ed96:	03d00913          	li	s2,61
    8002ed9a:	be35                	j	8002e8d6 <next_token+0x350>
    8002ed9c:	02100913          	li	s2,33
    8002eda0:	be1d                	j	8002e8d6 <next_token+0x350>
    8002eda2:	02600913          	li	s2,38
    8002eda6:	be05                	j	8002e8d6 <next_token+0x350>
    8002eda8:	07c00913          	li	s2,124
    8002edac:	b62d                	j	8002e8d6 <next_token+0x350>
    8002edae:	03f00913          	li	s2,63
    8002edb2:	b615                	j	8002e8d6 <next_token+0x350>

000000008002edb4 <js_parse_seek_token>:
js_parse_seek_token():
quickjs-nuttx/quickjs.c:22364
    s->token.line_num = sp->last_line_num;
    8002edb4:	4198                	lw	a4,0(a1)
    8002edb6:	cd58                	sw	a4,28(a0)
quickjs-nuttx/quickjs.c:22365
    s->line_num = sp->line_num;
    8002edb8:	41d8                	lw	a4,4(a1)
    8002edba:	c558                	sw	a4,12(a0)
quickjs-nuttx/quickjs.c:22366
    s->buf_ptr = sp->ptr;
    8002edbc:	6998                	ld	a4,16(a1)
    8002edbe:	ed38                	sd	a4,88(a0)
quickjs-nuttx/quickjs.c:22367
    s->got_lf = sp->got_lf;
    8002edc0:	4598                	lw	a4,8(a1)
    8002edc2:	c538                	sw	a4,72(a0)
quickjs-nuttx/quickjs.c:22368
    return next_token(s);
    8002edc4:	fc2ff06f          	j	8002e586 <next_token>

000000008002edc8 <js_parse_directives.part.0>:
js_parse_directives():
quickjs-nuttx/quickjs.c:33407
static __exception int js_parse_directives(JSParseState *s)
    8002edc8:	7119                	addi	sp,sp,-128
    8002edca:	f8a2                	sd	s0,112(sp)
    8002edcc:	f4a6                	sd	s1,104(sp)
    8002edce:	f0ca                	sd	s2,96(sp)
    8002edd0:	ecce                	sd	s3,88(sp)
    8002edd2:	e8d2                	sd	s4,80(sp)
    8002edd4:	e4d6                	sd	s5,72(sp)
    8002edd6:	e0da                	sd	s6,64(sp)
    8002edd8:	fc5e                	sd	s7,56(sp)
    8002edda:	fc86                	sd	ra,120(sp)
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    8002eddc:	451c                	lw	a5,8(a0)
js_parse_directives():
quickjs-nuttx/quickjs.c:33407
static __exception int js_parse_directives(JSParseState *s)
    8002edde:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:33418
    while(s->token.val == TOK_STRING) {
    8002ede0:	f8100913          	li	s2,-127
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    8002ede4:	cc3e                	sw	a5,24(sp)
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    8002ede6:	4d5c                	lw	a5,28(a0)
js_parse_directives():
quickjs-nuttx/quickjs.c:33420
        snprintf(str, sizeof str, "%.*s",
    8002ede8:	0003d997          	auipc	s3,0x3d
    8002edec:	e2098993          	addi	s3,s3,-480 # 8006bc08 <qjsc_repl+0x6658>
quickjs-nuttx/quickjs.c:33427
        switch (s->token.val) {
    8002edf0:	fd900a13          	li	s4,-39
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    8002edf4:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    8002edf6:	711c                	ld	a5,32(a0)
js_parse_directives():
quickjs-nuttx/quickjs.c:33427
        switch (s->token.val) {
    8002edf8:	03b00a93          	li	s5,59
    8002edfc:	07d00b13          	li	s6,125
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    8002ee00:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    8002ee02:	453c                	lw	a5,72(a0)
js_parse_directives():
quickjs-nuttx/quickjs.c:33427
        switch (s->token.val) {
    8002ee04:	fac00b93          	li	s7,-84
    8002ee08:	0003d497          	auipc	s1,0x3d
    8002ee0c:	e3448493          	addi	s1,s1,-460 # 8006bc3c <qjsc_repl+0x668c>
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    8002ee10:	d03e                	sw	a5,32(sp)
js_parse_directives():
quickjs-nuttx/quickjs.c:33418
    while(s->token.val == TOK_STRING) {
    8002ee12:	4c1c                	lw	a5,24(s0)
    8002ee14:	09279163          	bne	a5,s2,8002ee96 <js_parse_directives.part.0+0xce>
quickjs-nuttx/quickjs.c:33421
                 (int)(s->buf_ptr - s->token.ptr - 2), s->token.ptr + 1);
    8002ee18:	7018                	ld	a4,32(s0)
    8002ee1a:	6c34                	ld	a3,88(s0)
quickjs-nuttx/quickjs.c:33420
        snprintf(str, sizeof str, "%.*s",
    8002ee1c:	864e                	mv	a2,s3
    8002ee1e:	45d1                	li	a1,20
quickjs-nuttx/quickjs.c:33421
                 (int)(s->buf_ptr - s->token.ptr - 2), s->token.ptr + 1);
    8002ee20:	8e99                	sub	a3,a3,a4
quickjs-nuttx/quickjs.c:33420
        snprintf(str, sizeof str, "%.*s",
    8002ee22:	36f9                	addiw	a3,a3,-2
    8002ee24:	0705                	addi	a4,a4,1
    8002ee26:	850a                	mv	a0,sp
    8002ee28:	418320ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:33423
        if (next_token(s))
    8002ee2c:	8522                	mv	a0,s0
    8002ee2e:	f58ff0ef          	jal	ra,8002e586 <next_token>
    8002ee32:	cd09                	beqz	a0,8002ee4c <js_parse_directives.part.0+0x84>
quickjs-nuttx/quickjs.c:33424
            return -1;
    8002ee34:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:33501
}
    8002ee36:	70e6                	ld	ra,120(sp)
    8002ee38:	7446                	ld	s0,112(sp)
    8002ee3a:	74a6                	ld	s1,104(sp)
    8002ee3c:	7906                	ld	s2,96(sp)
    8002ee3e:	69e6                	ld	s3,88(sp)
    8002ee40:	6a46                	ld	s4,80(sp)
    8002ee42:	6aa6                	ld	s5,72(sp)
    8002ee44:	6b06                	ld	s6,64(sp)
    8002ee46:	7be2                	ld	s7,56(sp)
    8002ee48:	6109                	addi	sp,sp,128
    8002ee4a:	8082                	ret
quickjs-nuttx/quickjs.c:33427
        switch (s->token.val) {
    8002ee4c:	4c1c                	lw	a5,24(s0)
    8002ee4e:	0547d963          	bge	a5,s4,8002eea0 <js_parse_directives.part.0+0xd8>
    8002ee52:	0177dd63          	bge	a5,s7,8002ee6c <js_parse_directives.part.0+0xa4>
    8002ee56:	f8500713          	li	a4,-123
    8002ee5a:	02e7d963          	bge	a5,a4,8002ee8c <js_parse_directives.part.0+0xc4>
    8002ee5e:	f8000713          	li	a4,-128
    8002ee62:	02e7ca63          	blt	a5,a4,8002ee96 <js_parse_directives.part.0+0xce>
quickjs-nuttx/quickjs.c:33477
            if (s->got_lf)
    8002ee66:	443c                	lw	a5,72(s0)
    8002ee68:	e3a1                	bnez	a5,8002eea8 <js_parse_directives.part.0+0xe0>
    8002ee6a:	a035                	j	8002ee96 <js_parse_directives.part.0+0xce>
    8002ee6c:	0547879b          	addiw	a5,a5,84
    8002ee70:	0007869b          	sext.w	a3,a5
    8002ee74:	02c00713          	li	a4,44
    8002ee78:	00d76f63          	bltu	a4,a3,8002ee96 <js_parse_directives.part.0+0xce>
    8002ee7c:	02079713          	slli	a4,a5,0x20
    8002ee80:	01e75793          	srli	a5,a4,0x1e
    8002ee84:	97a6                	add	a5,a5,s1
    8002ee86:	439c                	lw	a5,0(a5)
    8002ee88:	97a6                	add	a5,a5,s1
    8002ee8a:	8782                	jr	a5
quickjs-nuttx/quickjs.c:33427
        switch (s->token.val) {
    8002ee8c:	06b7879b          	addiw	a5,a5,107
    8002ee90:	4705                	li	a4,1
    8002ee92:	fcf77ae3          	bgeu	a4,a5,8002ee66 <js_parse_directives.part.0+0x9e>
quickjs-nuttx/quickjs.c:33500
    return js_parse_seek_token(s, &pos);
    8002ee96:	082c                	addi	a1,sp,24
    8002ee98:	8522                	mv	a0,s0
    8002ee9a:	f1bff0ef          	jal	ra,8002edb4 <js_parse_seek_token>
    8002ee9e:	bf61                	j	8002ee36 <js_parse_directives.part.0+0x6e>
quickjs-nuttx/quickjs.c:33427
        switch (s->token.val) {
    8002eea0:	03578763          	beq	a5,s5,8002eece <js_parse_directives.part.0+0x106>
    8002eea4:	ff6799e3          	bne	a5,s6,8002ee96 <js_parse_directives.part.0+0xce>
quickjs-nuttx/quickjs.c:33485
        if (!strcmp(str, "use strict")) {
    8002eea8:	0003d597          	auipc	a1,0x3d
    8002eeac:	d6858593          	addi	a1,a1,-664 # 8006bc10 <qjsc_repl+0x6660>
    8002eeb0:	850a                	mv	a0,sp
    8002eeb2:	66f340ef          	jal	ra,80063d20 <strcmp>
    8002eeb6:	e10d                	bnez	a0,8002eed8 <js_parse_directives.part.0+0x110>
quickjs-nuttx/quickjs.c:33486
            s->cur_func->has_use_strict = TRUE;
    8002eeb8:	743c                	ld	a5,104(s0)
    8002eeba:	4705                	li	a4,1
    8002eebc:	cfb8                	sw	a4,88(a5)
quickjs-nuttx/quickjs.c:33487
            s->cur_func->js_mode |= JS_MODE_STRICT;
    8002eebe:	7438                	ld	a4,104(s0)
    8002eec0:	08674783          	lbu	a5,134(a4)
    8002eec4:	0017e793          	ori	a5,a5,1
quickjs-nuttx/quickjs.c:33496
            s->cur_func->js_mode |= JS_MODE_MATH;
    8002eec8:	08f70323          	sb	a5,134(a4)
    8002eecc:	b799                	j	8002ee12 <js_parse_directives.part.0+0x4a>
quickjs-nuttx/quickjs.c:33429
            if (next_token(s))
    8002eece:	8522                	mv	a0,s0
    8002eed0:	eb6ff0ef          	jal	ra,8002e586 <next_token>
    8002eed4:	d971                	beqz	a0,8002eea8 <js_parse_directives.part.0+0xe0>
    8002eed6:	bfb9                	j	8002ee34 <js_parse_directives.part.0+0x6c>
quickjs-nuttx/quickjs.c:33490
        else if (!strcmp(str, "use strip")) {
    8002eed8:	0003d597          	auipc	a1,0x3d
    8002eedc:	d4858593          	addi	a1,a1,-696 # 8006bc20 <qjsc_repl+0x6670>
    8002eee0:	850a                	mv	a0,sp
    8002eee2:	63f340ef          	jal	ra,80063d20 <strcmp>
    8002eee6:	e519                	bnez	a0,8002eef4 <js_parse_directives.part.0+0x12c>
quickjs-nuttx/quickjs.c:33491
            s->cur_func->js_mode |= JS_MODE_STRIP;
    8002eee8:	7438                	ld	a4,104(s0)
    8002eeea:	08674783          	lbu	a5,134(a4)
    8002eeee:	0027e793          	ori	a5,a5,2
    8002eef2:	bfd9                	j	8002eec8 <js_parse_directives.part.0+0x100>
quickjs-nuttx/quickjs.c:33495
        else if (s->ctx->bignum_ext && !strcmp(str, "use math")) {
    8002eef4:	601c                	ld	a5,0(s0)
    8002eef6:	1a87c783          	lbu	a5,424(a5)
    8002eefa:	df81                	beqz	a5,8002ee12 <js_parse_directives.part.0+0x4a>
    8002eefc:	0003d597          	auipc	a1,0x3d
    8002ef00:	d3458593          	addi	a1,a1,-716 # 8006bc30 <qjsc_repl+0x6680>
    8002ef04:	850a                	mv	a0,sp
    8002ef06:	61b340ef          	jal	ra,80063d20 <strcmp>
    8002ef0a:	f00514e3          	bnez	a0,8002ee12 <js_parse_directives.part.0+0x4a>
quickjs-nuttx/quickjs.c:33496
            s->cur_func->js_mode |= JS_MODE_MATH;
    8002ef0e:	7438                	ld	a4,104(s0)
    8002ef10:	08674783          	lbu	a5,134(a4)
    8002ef14:	0047e793          	ori	a5,a5,4
    8002ef18:	bf45                	j	8002eec8 <js_parse_directives.part.0+0x100>

000000008002ef1a <is_let>:
is_let():
quickjs-nuttx/quickjs.c:26095
{
    8002ef1a:	7139                	addi	sp,sp,-64
    8002ef1c:	f04a                	sd	s2,32(sp)
    8002ef1e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:26098
    if (token_is_pseudo_keyword(s, JS_ATOM_let)) {
    8002ef20:	02700593          	li	a1,39
quickjs-nuttx/quickjs.c:26095
{
    8002ef24:	f822                	sd	s0,48(sp)
    8002ef26:	f426                	sd	s1,40(sp)
    8002ef28:	fc06                	sd	ra,56(sp)
    8002ef2a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:26098
    if (token_is_pseudo_keyword(s, JS_ATOM_let)) {
    8002ef2c:	f43d80ef          	jal	ra,80007e6e <token_is_pseudo_keyword>
    8002ef30:	842a                	mv	s0,a0
    8002ef32:	c139                	beqz	a0,8002ef78 <is_let+0x5e>
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    8002ef34:	449c                	lw	a5,8(s1)
is_let():
quickjs-nuttx/quickjs.c:26103
            if (next_token(s)) {
    8002ef36:	8526                	mv	a0,s1
js_parse_get_pos():
quickjs-nuttx/quickjs.c:22355
    sp->last_line_num = s->last_line_num;
    8002ef38:	c43e                	sw	a5,8(sp)
quickjs-nuttx/quickjs.c:22356
    sp->line_num = s->token.line_num;
    8002ef3a:	4cdc                	lw	a5,28(s1)
    8002ef3c:	c63e                	sw	a5,12(sp)
quickjs-nuttx/quickjs.c:22357
    sp->ptr = s->token.ptr;
    8002ef3e:	709c                	ld	a5,32(s1)
    8002ef40:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:22358
    sp->got_lf = s->got_lf;
    8002ef42:	44bc                	lw	a5,72(s1)
    8002ef44:	c83e                	sw	a5,16(sp)
is_let():
quickjs-nuttx/quickjs.c:26103
            if (next_token(s)) {
    8002ef46:	e40ff0ef          	jal	ra,8002e586 <next_token>
    8002ef4a:	842a                	mv	s0,a0
    8002ef4c:	ed39                	bnez	a0,8002efaa <is_let+0x90>
quickjs-nuttx/quickjs.c:26107
            if (s->token.val == '[') {
    8002ef4e:	4c9c                	lw	a5,24(s1)
    8002ef50:	05b00713          	li	a4,91
    8002ef54:	04e78d63          	beq	a5,a4,8002efae <is_let+0x94>
quickjs-nuttx/quickjs.c:26113
            if (s->token.val == '{' ||
    8002ef58:	07b00713          	li	a4,123
    8002ef5c:	02e78e63          	beq	a5,a4,8002ef98 <is_let+0x7e>
    8002ef60:	f8300713          	li	a4,-125
    8002ef64:	02e79163          	bne	a5,a4,8002ef86 <is_let+0x6c>
quickjs-nuttx/quickjs.c:26114
                (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved) ||
    8002ef68:	589c                	lw	a5,48(s1)
    8002ef6a:	c79d                	beqz	a5,8002ef98 <is_let+0x7e>
quickjs-nuttx/quickjs.c:26129
        if (js_parse_seek_token(s, &pos)) {
    8002ef6c:	002c                	addi	a1,sp,8
    8002ef6e:	8526                	mv	a0,s1
    8002ef70:	e45ff0ef          	jal	ra,8002edb4 <js_parse_seek_token>
    8002ef74:	c111                	beqz	a0,8002ef78 <is_let+0x5e>
quickjs-nuttx/quickjs.c:26130
            res = -1;
    8002ef76:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:26140
}
    8002ef78:	70e2                	ld	ra,56(sp)
    8002ef7a:	8522                	mv	a0,s0
    8002ef7c:	7442                	ld	s0,48(sp)
    8002ef7e:	74a2                	ld	s1,40(sp)
    8002ef80:	7902                	ld	s2,32(sp)
    8002ef82:	6121                	addi	sp,sp,64
    8002ef84:	8082                	ret
quickjs-nuttx/quickjs.c:26114
                (s->token.val == TOK_IDENT && !s->token.u.ident.is_reserved) ||
    8002ef86:	fd300713          	li	a4,-45
    8002ef8a:	00e78763          	beq	a5,a4,8002ef98 <is_let+0x7e>
quickjs-nuttx/quickjs.c:26115
                s->token.val == TOK_LET ||
    8002ef8e:	0277879b          	addiw	a5,a5,39
    8002ef92:	4705                	li	a4,1
    8002ef94:	fcf76ce3          	bltu	a4,a5,8002ef6c <is_let+0x52>
quickjs-nuttx/quickjs.c:26121
                if (s->last_line_num == s->token.line_num || (decl_mask & DECL_MASK_OTHER)) {
    8002ef98:	4498                	lw	a4,8(s1)
    8002ef9a:	4cdc                	lw	a5,28(s1)
quickjs-nuttx/quickjs.c:26122
                    res = TRUE;
    8002ef9c:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:26121
                if (s->last_line_num == s->token.line_num || (decl_mask & DECL_MASK_OTHER)) {
    8002ef9e:	fcf707e3          	beq	a4,a5,8002ef6c <is_let+0x52>
    8002efa2:	4029541b          	sraiw	s0,s2,0x2
quickjs-nuttx/quickjs.c:26122
                    res = TRUE;
    8002efa6:	8805                	andi	s0,s0,1
    8002efa8:	b7d1                	j	8002ef6c <is_let+0x52>
quickjs-nuttx/quickjs.c:26104
                res = -1;
    8002efaa:	547d                	li	s0,-1
    8002efac:	b7c1                	j	8002ef6c <is_let+0x52>
quickjs-nuttx/quickjs.c:26122
                    res = TRUE;
    8002efae:	4405                	li	s0,1
    8002efb0:	bf75                	j	8002ef6c <is_let+0x52>

000000008002efb2 <js_parse_expect>:
js_parse_expect():
quickjs-nuttx/quickjs.c:20120
    if (s->token.val != tok) {
    8002efb2:	4d1c                	lw	a5,24(a0)
quickjs-nuttx/quickjs.c:20119
{
    8002efb4:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:20120
    if (s->token.val != tok) {
    8002efb6:	00b78863          	beq	a5,a1,8002efc6 <js_parse_expect+0x14>
json_parse_expect():
quickjs-nuttx/quickjs.c:44844
        return js_parse_error(s, "expecting '%c'", tok);
    8002efba:	0003d597          	auipc	a1,0x3d
    8002efbe:	d3658593          	addi	a1,a1,-714 # 8006bcf0 <qjsc_repl+0x6740>
    8002efc2:	cb1fe06f          	j	8002dc72 <js_parse_error>
js_parse_expect():
quickjs-nuttx/quickjs.c:20124
    return next_token(s);
    8002efc6:	dc0ff06f          	j	8002e586 <next_token>

000000008002efca <js_parse_regexp>:
js_parse_regexp():
quickjs-nuttx/quickjs.c:20354
{
    8002efca:	7131                	addi	sp,sp,-192
    8002efcc:	f922                	sd	s0,176(sp)
    8002efce:	fd06                	sd	ra,184(sp)
    8002efd0:	f526                	sd	s1,168(sp)
    8002efd2:	f14a                	sd	s2,160(sp)
    8002efd4:	ed4e                	sd	s3,152(sp)
    8002efd6:	e952                	sd	s4,144(sp)
    8002efd8:	e556                	sd	s5,136(sp)
    8002efda:	e15a                	sd	s6,128(sp)
    8002efdc:	fcde                	sd	s7,120(sp)
    8002efde:	f8e2                	sd	s8,112(sp)
    8002efe0:	f4e6                	sd	s9,104(sp)
quickjs-nuttx/quickjs.c:20361
    p = s->buf_ptr;
    8002efe2:	05853c83          	ld	s9,88(a0)
quickjs-nuttx/quickjs.c:20354
{
    8002efe6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:20364
    if (string_buffer_init(s->ctx, b, 32))
    8002efe8:	6108                	ld	a0,0(a0)
    8002efea:	02000613          	li	a2,32
    8002efee:	100c                	addi	a1,sp,32
    8002eff0:	f8dee0ef          	jal	ra,8001df7c <string_buffer_init>
    8002eff4:	e139                	bnez	a0,8002f03a <js_parse_regexp+0x70>
quickjs-nuttx/quickjs.c:20366
    if (string_buffer_init(s->ctx, b2, 1))
    8002eff6:	6008                	ld	a0,0(s0)
    8002eff8:	4605                	li	a2,1
    8002effa:	008c                	addi	a1,sp,64
    8002effc:	f81ee0ef          	jal	ra,8001df7c <string_buffer_init>
