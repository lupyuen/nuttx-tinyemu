    8004e002:	001007b7          	lui	a5,0x100
    8004e006:	00a4141b          	slliw	s0,s0,0xa
    8004e00a:	c0078793          	addi	a5,a5,-1024 # ffc00 <asinh-0x7ff00400>
    8004e00e:	8c7d                	and	s0,s0,a5
    8004e010:	3ff9f993          	andi	s3,s3,1023
    8004e014:	013469b3          	or	s3,s0,s3
    8004e018:	6441                	lui	s0,0x10
quickjs-nuttx/libregexp.c:509
                        p += 6;
    8004e01a:	007a0493          	addi	s1,s4,7
quickjs-nuttx/libregexp.c:510
                        c = (((c & 0x3ff) << 10) | (c1 & 0x3ff)) + 0x10000;
    8004e01e:	0134043b          	addw	s0,s0,s3
    8004e022:	b5e1                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:518
        c -= '0';
    8004e024:	fd06841b          	addiw	s0,a3,-48
quickjs-nuttx/libregexp.c:519
        if (allow_utf16 == 2) {
    8004e028:	4689                	li	a3,2
    8004e02a:	02d59563          	bne	a1,a3,8004e054 <lre_parse_escape+0x1a4>
quickjs-nuttx/libregexp.c:474
                        return -1;
    8004e02e:	557d                	li	a0,-1
quickjs-nuttx/libregexp.c:521
            if (c != 0 || is_digit(*p))
    8004e030:	e801                	bnez	s0,8004e040 <lre_parse_escape+0x190>
is_digit():
quickjs-nuttx/libregexp.c:107 (discriminator 1)
    return c >= '0' && c <= '9';
    8004e032:	0017c783          	lbu	a5,1(a5)
lre_parse_escape():
quickjs-nuttx/libregexp.c:521 (discriminator 1)
            if (c != 0 || is_digit(*p))
    8004e036:	4725                	li	a4,9
    8004e038:	fd07879b          	addiw	a5,a5,-48
    8004e03c:	eaf767e3          	bltu	a4,a5,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:545
}
    8004e040:	70e2                	ld	ra,56(sp)
    8004e042:	7442                	ld	s0,48(sp)
    8004e044:	74a2                	ld	s1,40(sp)
    8004e046:	7902                	ld	s2,32(sp)
    8004e048:	69e2                	ld	s3,24(sp)
    8004e04a:	6a42                	ld	s4,16(sp)
    8004e04c:	6aa2                	ld	s5,8(sp)
    8004e04e:	6b02                	ld	s6,0(sp)
    8004e050:	6121                	addi	sp,sp,64
    8004e052:	8082                	ret
quickjs-nuttx/libregexp.c:526
            v = *p - '0';
    8004e054:	0017c683          	lbu	a3,1(a5)
quickjs-nuttx/libregexp.c:527
            if (v > 7)
    8004e058:	461d                	li	a2,7
quickjs-nuttx/libregexp.c:526
            v = *p - '0';
    8004e05a:	fd06869b          	addiw	a3,a3,-48
    8004e05e:	0006859b          	sext.w	a1,a3
quickjs-nuttx/libregexp.c:527
            if (v > 7)
    8004e062:	e8b664e3          	bltu	a2,a1,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:529
            c = (c << 3) | v;
    8004e066:	0034141b          	slliw	s0,s0,0x3
    8004e06a:	8c55                	or	s0,s0,a3
    8004e06c:	2401                	sext.w	s0,s0
quickjs-nuttx/libregexp.c:531
            if (c >= 32)
    8004e06e:	477d                	li	a4,31
quickjs-nuttx/libregexp.c:530
            p++;
    8004e070:	00278493          	addi	s1,a5,2
quickjs-nuttx/libregexp.c:531
            if (c >= 32)
    8004e074:	e6876be3          	bltu	a4,s0,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:533
            v = *p - '0';
    8004e078:	0027c703          	lbu	a4,2(a5)
    8004e07c:	fd07071b          	addiw	a4,a4,-48
    8004e080:	0007069b          	sext.w	a3,a4
quickjs-nuttx/libregexp.c:534
            if (v > 7)
    8004e084:	e6d663e3          	bltu	a2,a3,8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:536
            c = (c << 3) | v;
    8004e088:	0034141b          	slliw	s0,s0,0x3
    8004e08c:	8c59                	or	s0,s0,a4
    8004e08e:	2401                	sext.w	s0,s0
quickjs-nuttx/libregexp.c:537
            p++;
    8004e090:	00378493          	addi	s1,a5,3
    8004e094:	bd99                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:445
        c = '\b';
    8004e096:	4421                	li	s0,8
    8004e098:	bd89                	j	8004deea <lre_parse_escape+0x3a>
quickjs-nuttx/libregexp.c:474
                        return -1;
    8004e09a:	557d                	li	a0,-1
    8004e09c:	b755                	j	8004e040 <lre_parse_escape+0x190>

000000008004e09e <get_class_atom>:
get_class_atom():
quickjs-nuttx/libregexp.c:657
{
    8004e09e:	7151                	addi	sp,sp,-240
    8004e0a0:	e9ca                	sd	s2,208(sp)
    8004e0a2:	e1d2                	sd	s4,192(sp)
    8004e0a4:	f586                	sd	ra,232(sp)
    8004e0a6:	f1a2                	sd	s0,224(sp)
    8004e0a8:	eda6                	sd	s1,216(sp)
    8004e0aa:	e5ce                	sd	s3,200(sp)
    8004e0ac:	fd56                	sd	s5,184(sp)
    8004e0ae:	f95a                	sd	s6,176(sp)
    8004e0b0:	f55e                	sd	s7,168(sp)
    8004e0b2:	f162                	sd	s8,160(sp)
    8004e0b4:	ed66                	sd	s9,152(sp)
quickjs-nuttx/libregexp.c:662
    p = *pp;
    8004e0b6:	6204                	ld	s1,0(a2)
quickjs-nuttx/libregexp.c:657
{
    8004e0b8:	8a2a                	mv	s4,a0
    8004e0ba:	8932                	mv	s2,a2
quickjs-nuttx/libregexp.c:662
    p = *pp;
    8004e0bc:	e426                	sd	s1,8(sp)
quickjs-nuttx/libregexp.c:664
    c = *p;
    8004e0be:	0004c403          	lbu	s0,0(s1)
quickjs-nuttx/libregexp.c:665
    switch(c) {
    8004e0c2:	40040463          	beqz	s0,8004e4ca <get_class_atom+0x42c>
    8004e0c6:	05c00793          	li	a5,92
    8004e0ca:	40f41863          	bne	s0,a5,8004e4da <get_class_atom+0x43c>
quickjs-nuttx/libregexp.c:668
        if (p >= s->buf_end)
    8004e0ce:	7d1c                	ld	a5,56(a0)
quickjs-nuttx/libregexp.c:667
        p++;
    8004e0d0:	00148713          	addi	a4,s1,1
    8004e0d4:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libregexp.c:668
        if (p >= s->buf_end)
    8004e0d6:	02f76663          	bltu	a4,a5,8004e102 <get_class_atom+0x64>
quickjs-nuttx/libregexp.c:744
            return re_parse_error(s, "unexpected end");
    8004e0da:	00027597          	auipc	a1,0x27
    8004e0de:	24e58593          	addi	a1,a1,590 # 80075328 <unescaped_chars.0+0x138>
quickjs-nuttx/libregexp.c:732
                    return re_parse_error(s, "invalid escape sequence in regular expression");
    8004e0e2:	8552                	mv	a0,s4
    8004e0e4:	f97fe0ef          	jal	ra,8004d07a <re_parse_error>
quickjs-nuttx/libregexp.c:763
}
    8004e0e8:	70ae                	ld	ra,232(sp)
    8004e0ea:	740e                	ld	s0,224(sp)
    8004e0ec:	64ee                	ld	s1,216(sp)
    8004e0ee:	694e                	ld	s2,208(sp)
    8004e0f0:	69ae                	ld	s3,200(sp)
    8004e0f2:	6a0e                	ld	s4,192(sp)
    8004e0f4:	7aea                	ld	s5,184(sp)
    8004e0f6:	7b4a                	ld	s6,176(sp)
    8004e0f8:	7baa                	ld	s7,168(sp)
    8004e0fa:	7c0a                	ld	s8,160(sp)
    8004e0fc:	6cea                	ld	s9,152(sp)
    8004e0fe:	616d                	addi	sp,sp,240
    8004e100:	8082                	ret
quickjs-nuttx/libregexp.c:670
        c = *p++;
    8004e102:	00248793          	addi	a5,s1,2
    8004e106:	e43e                	sd	a5,8(sp)
    8004e108:	0014c783          	lbu	a5,1(s1)
    8004e10c:	06300613          	li	a2,99
    8004e110:	0007841b          	sext.w	s0,a5
quickjs-nuttx/libregexp.c:671
        switch(c) {
    8004e114:	20c78563          	beq	a5,a2,8004e31e <get_class_atom+0x280>
    8004e118:	89ae                	mv	s3,a1
    8004e11a:	14f66363          	bltu	a2,a5,8004e260 <get_class_atom+0x1c2>
    8004e11e:	05300693          	li	a3,83
    8004e122:	1ad78463          	beq	a5,a3,8004e2ca <get_class_atom+0x22c>
    8004e126:	10f6eb63          	bltu	a3,a5,8004e23c <get_class_atom+0x19e>
    8004e12a:	04400693          	li	a3,68
quickjs-nuttx/libregexp.c:676
            c = CHAR_RANGE_D;
    8004e12e:	4a85                	li	s5,1
    8004e130:	14d78b63          	beq	a5,a3,8004e286 <get_class_atom+0x1e8>
    8004e134:	05000693          	li	a3,80
    8004e138:	10d79763          	bne	a5,a3,8004e246 <get_class_atom+0x1a8>
quickjs-nuttx/libregexp.c:713
            if (s->is_utf16) {
    8004e13c:	04ca2783          	lw	a5,76(s4)
    8004e140:	10078363          	beqz	a5,8004e246 <get_class_atom+0x1a8>
parse_unicode_property():
quickjs-nuttx/libregexp.c:567
    if (*p != '{')
    8004e144:	0024c703          	lbu	a4,2(s1)
    8004e148:	07b00793          	li	a5,123
quickjs-nuttx/libregexp.c:568
        return re_parse_error(s, "expecting '{' after \\p");
    8004e14c:	00027597          	auipc	a1,0x27
    8004e150:	21c58593          	addi	a1,a1,540 # 80075368 <unescaped_chars.0+0x178>
quickjs-nuttx/libregexp.c:567
    if (*p != '{')
    8004e154:	22f71c63          	bne	a4,a5,8004e38c <get_class_atom+0x2ee>
quickjs-nuttx/libregexp.c:570
    q = name;
    8004e158:	01010a93          	addi	s5,sp,16
quickjs-nuttx/libregexp.c:569
    p++;
    8004e15c:	048d                	addi	s1,s1,3
quickjs-nuttx/libregexp.c:571
    while (is_unicode_char(*p)) {
    8004e15e:	8b56                	mv	s6,s5
quickjs-nuttx/libregexp.c:572
        if ((q - name) >= sizeof(name) - 1)
    8004e160:	03e00c13          	li	s8,62
quickjs-nuttx/libregexp.c:571
    while (is_unicode_char(*p)) {
    8004e164:	0004cb83          	lbu	s7,0(s1)
    8004e168:	855e                	mv	a0,s7
    8004e16a:	d39fe0ef          	jal	ra,8004cea2 <is_unicode_char>
    8004e16e:	20051763          	bnez	a0,8004e37c <get_class_atom+0x2de>
quickjs-nuttx/libregexp.c:576
    *q = '\0';
    8004e172:	000a8023          	sb	zero,0(s5)
quickjs-nuttx/libregexp.c:578
    if (*p == '=') {
    8004e176:	0004c703          	lbu	a4,0(s1)
    8004e17a:	05010b93          	addi	s7,sp,80
    8004e17e:	03d00793          	li	a5,61
quickjs-nuttx/libregexp.c:577
    q = value;
    8004e182:	8ade                	mv	s5,s7
quickjs-nuttx/libregexp.c:578
    if (*p == '=') {
    8004e184:	00f71c63          	bne	a4,a5,8004e19c <get_class_atom+0xfe>
quickjs-nuttx/libregexp.c:579
        p++;
    8004e188:	0485                	addi	s1,s1,1
quickjs-nuttx/libregexp.c:581
            if ((q - value) >= sizeof(value) - 1)
    8004e18a:	03e00c93          	li	s9,62
quickjs-nuttx/libregexp.c:580
        while (is_unicode_char(*p)) {
    8004e18e:	0004cc03          	lbu	s8,0(s1)
    8004e192:	8562                	mv	a0,s8
    8004e194:	d0ffe0ef          	jal	ra,8004cea2 <is_unicode_char>
    8004e198:	20051663          	bnez	a0,8004e3a4 <get_class_atom+0x306>
quickjs-nuttx/libregexp.c:586
    *q = '\0';
    8004e19c:	000a8023          	sb	zero,0(s5)
quickjs-nuttx/libregexp.c:587
    if (*p != '}')
    8004e1a0:	0004c703          	lbu	a4,0(s1)
    8004e1a4:	07d00793          	li	a5,125
quickjs-nuttx/libregexp.c:588
        return re_parse_error(s, "expecting '}'");
    8004e1a8:	00027597          	auipc	a1,0x27
    8004e1ac:	21858593          	addi	a1,a1,536 # 800753c0 <unescaped_chars.0+0x1d0>
quickjs-nuttx/libregexp.c:587
    if (*p != '}')
    8004e1b0:	1cf71e63          	bne	a4,a5,8004e38c <get_class_atom+0x2ee>
quickjs-nuttx/libregexp.c:592
    if (!strcmp(name, "Script") || !strcmp(name, "sc")) {
    8004e1b4:	00027597          	auipc	a1,0x27
    8004e1b8:	21c58593          	addi	a1,a1,540 # 800753d0 <unescaped_chars.0+0x1e0>
    8004e1bc:	855a                	mv	a0,s6
    8004e1be:	363150ef          	jal	ra,80063d20 <strcmp>
    8004e1c2:	8aaa                	mv	s5,a0
    8004e1c4:	cd05                	beqz	a0,8004e1fc <get_class_atom+0x15e>
    8004e1c6:	00027597          	auipc	a1,0x27
    8004e1ca:	21258593          	addi	a1,a1,530 # 800753d8 <unescaped_chars.0+0x1e8>
    8004e1ce:	855a                	mv	a0,s6
    8004e1d0:	351150ef          	jal	ra,80063d20 <strcmp>
    8004e1d4:	8aaa                	mv	s5,a0
    8004e1d6:	c11d                	beqz	a0,8004e1fc <get_class_atom+0x15e>
quickjs-nuttx/libregexp.c:595
    } else if (!strcmp(name, "Script_Extensions") || !strcmp(name, "scx")) {
    8004e1d8:	00027597          	auipc	a1,0x27
    8004e1dc:	20858593          	addi	a1,a1,520 # 800753e0 <unescaped_chars.0+0x1f0>
    8004e1e0:	855a                	mv	a0,s6
    8004e1e2:	33f150ef          	jal	ra,80063d20 <strcmp>
    8004e1e6:	c911                	beqz	a0,8004e1fa <get_class_atom+0x15c>
    8004e1e8:	00027597          	auipc	a1,0x27
    8004e1ec:	21058593          	addi	a1,a1,528 # 800753f8 <unescaped_chars.0+0x208>
    8004e1f0:	855a                	mv	a0,s6
    8004e1f2:	32f150ef          	jal	ra,80063d20 <strcmp>
    8004e1f6:	1c051563          	bnez	a0,8004e3c0 <get_class_atom+0x322>
quickjs-nuttx/libregexp.c:596
        script_ext = TRUE;
    8004e1fa:	4a85                	li	s5,1
quickjs-nuttx/libregexp.c:598
        cr_init(cr, s->opaque, lre_realloc);
    8004e1fc:	068a3583          	ld	a1,104(s4)
    8004e200:	fffc1617          	auipc	a2,0xfffc1
    8004e204:	cf260613          	addi	a2,a2,-782 # 8000eef2 <lre_realloc>
    8004e208:	854e                	mv	a0,s3
    8004e20a:	37c020ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libregexp.c:599
        ret = unicode_script(cr, value, script_ext);
    8004e20e:	8656                	mv	a2,s5
    8004e210:	85de                	mv	a1,s7
    8004e212:	854e                	mv	a0,s3
    8004e214:	651020ef          	jal	ra,80051064 <unicode_script>
    8004e218:	8aaa                	mv	s5,a0
quickjs-nuttx/libregexp.c:600
        if (ret) {
    8004e21a:	24050363          	beqz	a0,8004e460 <get_class_atom+0x3c2>
quickjs-nuttx/libregexp.c:601
            cr_free(cr);
    8004e21e:	854e                	mv	a0,s3
    8004e220:	37e020ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:602
            if (ret == -2)
    8004e224:	57f9                	li	a5,-2
quickjs-nuttx/libregexp.c:603
                return re_parse_error(s, "unknown unicode script");
    8004e226:	00027597          	auipc	a1,0x27
    8004e22a:	1da58593          	addi	a1,a1,474 # 80075400 <unescaped_chars.0+0x210>
quickjs-nuttx/libregexp.c:602
            if (ret == -2)
    8004e22e:	14fa8f63          	beq	s5,a5,8004e38c <get_class_atom+0x2ee>
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004e232:	0001c597          	auipc	a1,0x1c
    8004e236:	42658593          	addi	a1,a1,1062 # 8006a658 <qjsc_repl+0x50a8>
    8004e23a:	aa89                	j	8004e38c <get_class_atom+0x2ee>
get_class_atom():
quickjs-nuttx/libregexp.c:385
    8004e23c:	05700693          	li	a3,87
quickjs-nuttx/libregexp.c:688
            c = CHAR_RANGE_W;
    8004e240:	4a95                	li	s5,5
    8004e242:	04d78263          	beq	a5,a3,8004e286 <get_class_atom+0x1e8>
quickjs-nuttx/libregexp.c:723
            ret = lre_parse_escape(&p, s->is_utf16 * 2);
    8004e246:	04ca2583          	lw	a1,76(s4)
    8004e24a:	0028                	addi	a0,sp,8
quickjs-nuttx/libregexp.c:722
            p--;
    8004e24c:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libregexp.c:723
            ret = lre_parse_escape(&p, s->is_utf16 * 2);
    8004e24e:	0015959b          	slliw	a1,a1,0x1
    8004e252:	c5fff0ef          	jal	ra,8004deb0 <lre_parse_escape>
quickjs-nuttx/libregexp.c:724
            if (ret >= 0) {
    8004e256:	22054163          	bltz	a0,8004e478 <get_class_atom+0x3da>
quickjs-nuttx/libregexp.c:725
                c = ret;
    8004e25a:	0005041b          	sext.w	s0,a0
quickjs-nuttx/libregexp.c:738
            break;
    8004e25e:	a219                	j	8004e364 <get_class_atom+0x2c6>
    8004e260:	07300693          	li	a3,115
    8004e264:	06d78563          	beq	a5,a3,8004e2ce <get_class_atom+0x230>
    8004e268:	00f6ea63          	bltu	a3,a5,8004e27c <get_class_atom+0x1de>
    8004e26c:	06400693          	li	a3,100
    8004e270:	4a81                	li	s5,0
    8004e272:	00d78a63          	beq	a5,a3,8004e286 <get_class_atom+0x1e8>
    8004e276:	07000693          	li	a3,112
    8004e27a:	bd7d                	j	8004e138 <get_class_atom+0x9a>
    8004e27c:	07700693          	li	a3,119
quickjs-nuttx/libregexp.c:685
            c = CHAR_RANGE_w;
    8004e280:	4a91                	li	s5,4
    8004e282:	fcd792e3          	bne	a5,a3,8004e246 <get_class_atom+0x1a8>
cr_init_char_range():
quickjs-nuttx/libregexp.c:201
    c_pt = char_range_table[c >> 1];
    8004e286:	001ad793          	srli	a5,s5,0x1
    8004e28a:	00379713          	slli	a4,a5,0x3
    8004e28e:	00027797          	auipc	a5,0x27
    8004e292:	4b278793          	addi	a5,a5,1202 # 80075740 <char_range_table>
    8004e296:	97ba                	add	a5,a5,a4
    8004e298:	6380                	ld	s0,0(a5)
quickjs-nuttx/libregexp.c:203
    cr_init(cr, s->opaque, lre_realloc);
    8004e29a:	068a3583          	ld	a1,104(s4)
    8004e29e:	fffc1617          	auipc	a2,0xfffc1
    8004e2a2:	c5460613          	addi	a2,a2,-940 # 8000eef2 <lre_realloc>
quickjs-nuttx/libregexp.c:202
    len = *c_pt++;
    8004e2a6:	00045483          	lhu	s1,0(s0) # 10000 <asinh-0x7fff0000>
quickjs-nuttx/libregexp.c:203
    cr_init(cr, s->opaque, lre_realloc);
    8004e2aa:	854e                	mv	a0,s3
    8004e2ac:	2da020ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libregexp.c:204
    for(i = 0; i < len * 2; i++) {
    8004e2b0:	0014949b          	slliw	s1,s1,0x1
    8004e2b4:	0409                	addi	s0,s0,2
    8004e2b6:	4a01                	li	s4,0
    8004e2b8:	009a1d63          	bne	s4,s1,8004e2d2 <get_class_atom+0x234>
quickjs-nuttx/libregexp.c:208
    if (invert) {
    8004e2bc:	001afa93          	andi	s5,s5,1
    8004e2c0:	040a9a63          	bnez	s5,8004e314 <get_class_atom+0x276>
get_class_atom():
quickjs-nuttx/libregexp.c:716
                c = CLASS_RANGE_BASE;
    8004e2c4:	40000437          	lui	s0,0x40000
    8004e2c8:	a871                	j	8004e364 <get_class_atom+0x2c6>
quickjs-nuttx/libregexp.c:682
            c = CHAR_RANGE_S;
    8004e2ca:	4a8d                	li	s5,3
    8004e2cc:	bf6d                	j	8004e286 <get_class_atom+0x1e8>
quickjs-nuttx/libregexp.c:679
            c = CHAR_RANGE_s;
    8004e2ce:	4a89                	li	s5,2
    8004e2d0:	bf5d                	j	8004e286 <get_class_atom+0x1e8>
cr_add_point():
quickjs-nuttx/libunicode.h:71
int cr_realloc(CharRange *cr, int size);
int cr_copy(CharRange *cr, const CharRange *cr1);

static inline int cr_add_point(CharRange *cr, uint32_t v)
{
    if (cr->len >= cr->size) {
    8004e2d2:	0009a583          	lw	a1,0(s3)
    8004e2d6:	0049a783          	lw	a5,4(s3)
cr_init_char_range():
quickjs-nuttx/libregexp.c:205
        if (cr_add_point(cr, c_pt[i]))
    8004e2da:	00045b03          	lhu	s6,0(s0) # 40000000 <asinh-0x40000000>
cr_add_point():
quickjs-nuttx/libunicode.h:71
    8004e2de:	2a05                	addiw	s4,s4,1
    8004e2e0:	02f5d063          	bge	a1,a5,8004e300 <get_class_atom+0x262>
quickjs-nuttx/libunicode.h:75
        if (cr_realloc(cr, cr->len + 1))
            return -1;
    }
    cr->points[cr->len++] = v;
    8004e2e4:	0009a783          	lw	a5,0(s3)
    8004e2e8:	0089b703          	ld	a4,8(s3)
    8004e2ec:	0409                	addi	s0,s0,2
    8004e2ee:	0017869b          	addiw	a3,a5,1
    8004e2f2:	078a                	slli	a5,a5,0x2
    8004e2f4:	00d9a023          	sw	a3,0(s3)
    8004e2f8:	97ba                	add	a5,a5,a4
    8004e2fa:	0167a023          	sw	s6,0(a5)
cr_init_char_range():
quickjs-nuttx/libregexp.c:204
    for(i = 0; i < len * 2; i++) {
    8004e2fe:	bf6d                	j	8004e2b8 <get_class_atom+0x21a>
cr_add_point():
quickjs-nuttx/libunicode.h:72
        if (cr_realloc(cr, cr->len + 1))
    8004e300:	2585                	addiw	a1,a1,1
    8004e302:	854e                	mv	a0,s3
    8004e304:	2a4020ef          	jal	ra,800505a8 <cr_realloc>
    8004e308:	dd71                	beqz	a0,8004e2e4 <get_class_atom+0x246>
parse_unicode_property():
quickjs-nuttx/libregexp.c:641
            cr_free(cr);
    8004e30a:	854e                	mv	a0,s3
    8004e30c:	292020ef          	jal	ra,8005059e <cr_free>
get_class_atom():
quickjs-nuttx/libregexp.c:715
                    return -1;
    8004e310:	557d                	li	a0,-1
    8004e312:	bbd9                	j	8004e0e8 <get_class_atom+0x4a>
cr_init_char_range():
quickjs-nuttx/libregexp.c:209
        if (cr_invert(cr))
    8004e314:	854e                	mv	a0,s3
    8004e316:	7d4020ef          	jal	ra,80050aea <cr_invert>
    8004e31a:	d54d                	beqz	a0,8004e2c4 <get_class_atom+0x226>
    8004e31c:	b7fd                	j	8004e30a <get_class_atom+0x26c>
get_class_atom():
quickjs-nuttx/libregexp.c:695
            c = *p;
    8004e31e:	0024c403          	lbu	s0,2(s1)
quickjs-nuttx/libregexp.c:696
            if ((c >= 'a' && c <= 'z') ||
    8004e322:	4665                	li	a2,25
    8004e324:	fdf47793          	andi	a5,s0,-33
    8004e328:	fbf7879b          	addiw	a5,a5,-65
    8004e32c:	0ff7f793          	zext.b	a5,a5
    8004e330:	02f67763          	bgeu	a2,a5,8004e35e <get_class_atom+0x2c0>
quickjs-nuttx/libregexp.c:697
                (c >= 'A' && c <= 'Z') ||
    8004e334:	fd04061b          	addiw	a2,s0,-48
    8004e338:	4525                	li	a0,9
    8004e33a:	04ca2783          	lw	a5,76(s4)
quickjs-nuttx/libregexp.c:695
            c = *p;
    8004e33e:	0004059b          	sext.w	a1,s0
quickjs-nuttx/libregexp.c:697
                (c >= 'A' && c <= 'Z') ||
    8004e342:	00c57663          	bgeu	a0,a2,8004e34e <get_class_atom+0x2b0>
quickjs-nuttx/libregexp.c:698
                (((c >= '0' && c <= '9') || c == '_') &&
    8004e346:	05f00613          	li	a2,95
    8004e34a:	02c59363          	bne	a1,a2,8004e370 <get_class_atom+0x2d2>
quickjs-nuttx/libregexp.c:698 (discriminator 1)
    8004e34e:	c28d                	beqz	a3,8004e370 <get_class_atom+0x2d2>
quickjs-nuttx/libregexp.c:699
                 inclass && !s->is_utf16)) {   /* Annex B.1.4 */
    8004e350:	2781                	sext.w	a5,a5
    8004e352:	c791                	beqz	a5,8004e35e <get_class_atom+0x2c0>
quickjs-nuttx/libregexp.c:732
                    return re_parse_error(s, "invalid escape sequence in regular expression");
    8004e354:	00027597          	auipc	a1,0x27
    8004e358:	fe458593          	addi	a1,a1,-28 # 80075338 <unescaped_chars.0+0x148>
    8004e35c:	b359                	j	8004e0e2 <get_class_atom+0x44>
quickjs-nuttx/libregexp.c:701
                p++;
    8004e35e:	048d                	addi	s1,s1,3
quickjs-nuttx/libregexp.c:700
                c &= 0x1f;
    8004e360:	887d                	andi	s0,s0,31
quickjs-nuttx/libregexp.c:701
                p++;
    8004e362:	e426                	sd	s1,8(sp)
quickjs-nuttx/libregexp.c:761
    *pp = p;
    8004e364:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libregexp.c:762
    return c;
    8004e366:	0004051b          	sext.w	a0,s0
quickjs-nuttx/libregexp.c:761
    *pp = p;
    8004e36a:	00f93023          	sd	a5,0(s2)
quickjs-nuttx/libregexp.c:762
    return c;
    8004e36e:	bbad                	j	8004e0e8 <get_class_atom+0x4a>
quickjs-nuttx/libregexp.c:702
            } else if (s->is_utf16) {
    8004e370:	2781                	sext.w	a5,a5
    8004e372:	f3ed                	bnez	a5,8004e354 <get_class_atom+0x2b6>
quickjs-nuttx/libregexp.c:706
                p--;
    8004e374:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libregexp.c:707
                c = '\\';
    8004e376:	05c00413          	li	s0,92
    8004e37a:	b7ed                	j	8004e364 <get_class_atom+0x2c6>
parse_unicode_property():
quickjs-nuttx/libregexp.c:572
        if ((q - name) >= sizeof(name) - 1)
    8004e37c:	416a87b3          	sub	a5,s5,s6
    8004e380:	00fc7d63          	bgeu	s8,a5,8004e39a <get_class_atom+0x2fc>
quickjs-nuttx/libregexp.c:636
        return re_parse_error(s, "unknown unicode property name");
    8004e384:	00027597          	auipc	a1,0x27
    8004e388:	ffc58593          	addi	a1,a1,-4 # 80075380 <unescaped_chars.0+0x190>
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004e38c:	8552                	mv	a0,s4
    8004e38e:	cedfe0ef          	jal	ra,8004d07a <re_parse_error>
    8004e392:	87aa                	mv	a5,a0
get_class_atom():
quickjs-nuttx/libregexp.c:715
                    return -1;
    8004e394:	557d                	li	a0,-1
quickjs-nuttx/libregexp.c:714
                if (parse_unicode_property(s, cr, &p, (c == 'P')))
    8004e396:	d79d                	beqz	a5,8004e2c4 <get_class_atom+0x226>
    8004e398:	bb81                	j	8004e0e8 <get_class_atom+0x4a>
parse_unicode_property():
quickjs-nuttx/libregexp.c:574
        *q++ = *p++;
    8004e39a:	0a85                	addi	s5,s5,1
    8004e39c:	0485                	addi	s1,s1,1
    8004e39e:	ff7a8fa3          	sb	s7,-1(s5)
    8004e3a2:	b3c9                	j	8004e164 <get_class_atom+0xc6>
quickjs-nuttx/libregexp.c:581
            if ((q - value) >= sizeof(value) - 1)
    8004e3a4:	417a87b3          	sub	a5,s5,s7
    8004e3a8:	00fcf763          	bgeu	s9,a5,8004e3b6 <get_class_atom+0x318>
quickjs-nuttx/libregexp.c:582
                return re_parse_error(s, "unknown unicode property value");
    8004e3ac:	00027597          	auipc	a1,0x27
    8004e3b0:	ff458593          	addi	a1,a1,-12 # 800753a0 <unescaped_chars.0+0x1b0>
    8004e3b4:	bfe1                	j	8004e38c <get_class_atom+0x2ee>
quickjs-nuttx/libregexp.c:583
            *q++ = *p++;
    8004e3b6:	0a85                	addi	s5,s5,1
    8004e3b8:	0485                	addi	s1,s1,1
    8004e3ba:	ff8a8fa3          	sb	s8,-1(s5)
    8004e3be:	bbc1                	j	8004e18e <get_class_atom+0xf0>
quickjs-nuttx/libregexp.c:607
    } else if (!strcmp(name, "General_Category") || !strcmp(name, "gc")) {
    8004e3c0:	00027597          	auipc	a1,0x27
    8004e3c4:	05858593          	addi	a1,a1,88 # 80075418 <unescaped_chars.0+0x228>
    8004e3c8:	855a                	mv	a0,s6
    8004e3ca:	157150ef          	jal	ra,80063d20 <strcmp>
    8004e3ce:	c909                	beqz	a0,8004e3e0 <get_class_atom+0x342>
    8004e3d0:	00027597          	auipc	a1,0x27
    8004e3d4:	06058593          	addi	a1,a1,96 # 80075430 <unescaped_chars.0+0x240>
    8004e3d8:	855a                	mv	a0,s6
    8004e3da:	147150ef          	jal	ra,80063d20 <strcmp>
    8004e3de:	e91d                	bnez	a0,8004e414 <get_class_atom+0x376>
quickjs-nuttx/libregexp.c:608
        cr_init(cr, s->opaque, lre_realloc);
    8004e3e0:	068a3583          	ld	a1,104(s4)
    8004e3e4:	fffc1617          	auipc	a2,0xfffc1
    8004e3e8:	b0e60613          	addi	a2,a2,-1266 # 8000eef2 <lre_realloc>
    8004e3ec:	854e                	mv	a0,s3
    8004e3ee:	198020ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libregexp.c:609
        ret = unicode_general_category(cr, value);
    8004e3f2:	85de                	mv	a1,s7
    8004e3f4:	854e                	mv	a0,s3
    8004e3f6:	102030ef          	jal	ra,800514f8 <unicode_general_category>
    8004e3fa:	8aaa                	mv	s5,a0
quickjs-nuttx/libregexp.c:610
        if (ret) {
    8004e3fc:	c135                	beqz	a0,8004e460 <get_class_atom+0x3c2>
quickjs-nuttx/libregexp.c:611
            cr_free(cr);
    8004e3fe:	854e                	mv	a0,s3
    8004e400:	19e020ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:612
            if (ret == -2)
    8004e404:	57f9                	li	a5,-2
quickjs-nuttx/libregexp.c:613
                return re_parse_error(s, "unknown unicode general category");
    8004e406:	00027597          	auipc	a1,0x27
    8004e40a:	03258593          	addi	a1,a1,50 # 80075438 <unescaped_chars.0+0x248>
quickjs-nuttx/libregexp.c:612
            if (ret == -2)
    8004e40e:	e2fa92e3          	bne	s5,a5,8004e232 <get_class_atom+0x194>
    8004e412:	bfad                	j	8004e38c <get_class_atom+0x2ee>
quickjs-nuttx/libregexp.c:617
    } else if (value[0] == '\0') {
    8004e414:	05014783          	lbu	a5,80(sp)
    8004e418:	f7b5                	bnez	a5,8004e384 <get_class_atom+0x2e6>
quickjs-nuttx/libregexp.c:618
        cr_init(cr, s->opaque, lre_realloc);
    8004e41a:	068a3583          	ld	a1,104(s4)
    8004e41e:	fffc1617          	auipc	a2,0xfffc1
    8004e422:	ad460613          	addi	a2,a2,-1324 # 8000eef2 <lre_realloc>
    8004e426:	854e                	mv	a0,s3
    8004e428:	15e020ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libregexp.c:619
        ret = unicode_general_category(cr, name);
    8004e42c:	85da                	mv	a1,s6
    8004e42e:	854e                	mv	a0,s3
    8004e430:	0c8030ef          	jal	ra,800514f8 <unicode_general_category>
quickjs-nuttx/libregexp.c:620
        if (ret == -1) {
    8004e434:	57fd                	li	a5,-1
    8004e436:	00f51663          	bne	a0,a5,8004e442 <get_class_atom+0x3a4>
quickjs-nuttx/libregexp.c:621
            cr_free(cr);
    8004e43a:	854e                	mv	a0,s3
    8004e43c:	162020ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:622
            goto out_of_memory;
    8004e440:	bbcd                	j	8004e232 <get_class_atom+0x194>
quickjs-nuttx/libregexp.c:624
        if (ret < 0) {
    8004e442:	00055f63          	bgez	a0,8004e460 <get_class_atom+0x3c2>
quickjs-nuttx/libregexp.c:625
            ret = unicode_prop(cr, name);
    8004e446:	85da                	mv	a1,s6
    8004e448:	854e                	mv	a0,s3
    8004e44a:	0fe030ef          	jal	ra,80051548 <unicode_prop>
    8004e44e:	8aaa                	mv	s5,a0
quickjs-nuttx/libregexp.c:626
            if (ret) {
    8004e450:	c901                	beqz	a0,8004e460 <get_class_atom+0x3c2>
quickjs-nuttx/libregexp.c:627
                cr_free(cr);
    8004e452:	854e                	mv	a0,s3
    8004e454:	14a020ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:628
                if (ret == -2)
    8004e458:	57f9                	li	a5,-2
    8004e45a:	dcfa9ce3          	bne	s5,a5,8004e232 <get_class_atom+0x194>
    8004e45e:	b71d                	j	8004e384 <get_class_atom+0x2e6>
quickjs-nuttx/libregexp.c:639
    if (is_inv) {
    8004e460:	05000793          	li	a5,80
    8004e464:	00f41763          	bne	s0,a5,8004e472 <get_class_atom+0x3d4>
quickjs-nuttx/libregexp.c:640
        if (cr_invert(cr)) {
    8004e468:	854e                	mv	a0,s3
    8004e46a:	680020ef          	jal	ra,80050aea <cr_invert>
    8004e46e:	e8051ee3          	bnez	a0,8004e30a <get_class_atom+0x26c>
quickjs-nuttx/libregexp.c:589
    p++;
    8004e472:	0485                	addi	s1,s1,1
quickjs-nuttx/libregexp.c:645
    *pp = p;
    8004e474:	e426                	sd	s1,8(sp)
    8004e476:	b5b9                	j	8004e2c4 <get_class_atom+0x226>
get_class_atom():
quickjs-nuttx/libregexp.c:727
                if (ret == -2 && *p != '\0' && strchr("^$\\.*+?()[]{}|/", *p)) {
    8004e478:	57f9                	li	a5,-2
    8004e47a:	00f51d63          	bne	a0,a5,8004e494 <get_class_atom+0x3f6>
quickjs-nuttx/libregexp.c:727 (discriminator 1)
    8004e47e:	67a2                	ld	a5,8(sp)
    8004e480:	0007c583          	lbu	a1,0(a5)
    8004e484:	c981                	beqz	a1,8004e494 <get_class_atom+0x3f6>
quickjs-nuttx/libregexp.c:727 (discriminator 2)
    8004e486:	00027517          	auipc	a0,0x27
    8004e48a:	fda50513          	addi	a0,a0,-38 # 80075460 <unescaped_chars.0+0x270>
    8004e48e:	081150ef          	jal	ra,80063d0e <strchr>
    8004e492:	e509                	bnez	a0,8004e49c <get_class_atom+0x3fe>
quickjs-nuttx/libregexp.c:730
                } else if (s->is_utf16) {
    8004e494:	04ca2783          	lw	a5,76(s4)
    8004e498:	ea079ee3          	bnez	a5,8004e354 <get_class_atom+0x2b6>
quickjs-nuttx/libregexp.c:750
        if (c >= 128) {
    8004e49c:	07f00793          	li	a5,127
    8004e4a0:	0287f963          	bgeu	a5,s0,8004e4d2 <get_class_atom+0x434>
quickjs-nuttx/libregexp.c:751
            c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8004e4a4:	6522                	ld	a0,8(sp)
    8004e4a6:	0030                	addi	a2,sp,8
    8004e4a8:	4599                	li	a1,6
    8004e4aa:	011030ef          	jal	ra,80051cba <unicode_from_utf8>
    8004e4ae:	0005041b          	sext.w	s0,a0
quickjs-nuttx/libregexp.c:752
            if ((unsigned)c > 0xffff && !s->is_utf16) {
    8004e4b2:	67c1                	lui	a5,0x10
    8004e4b4:	eaf468e3          	bltu	s0,a5,8004e364 <get_class_atom+0x2c6>
quickjs-nuttx/libregexp.c:752 (discriminator 1)
    8004e4b8:	04ca2783          	lw	a5,76(s4)
quickjs-nuttx/libregexp.c:754 (discriminator 1)
                return re_parse_error(s, "malformed unicode char");
    8004e4bc:	00027597          	auipc	a1,0x27
    8004e4c0:	fb458593          	addi	a1,a1,-76 # 80075470 <unescaped_chars.0+0x280>
quickjs-nuttx/libregexp.c:752 (discriminator 1)
            if ((unsigned)c > 0xffff && !s->is_utf16) {
    8004e4c4:	ea0790e3          	bnez	a5,8004e364 <get_class_atom+0x2c6>
    8004e4c8:	b929                	j	8004e0e2 <get_class_atom+0x44>
quickjs-nuttx/libregexp.c:742
        if (p >= s->buf_end) {
    8004e4ca:	7d1c                	ld	a5,56(a0)
quickjs-nuttx/libregexp.c:748
    normal_char:
    8004e4cc:	4401                	li	s0,0
quickjs-nuttx/libregexp.c:742
        if (p >= s->buf_end) {
    8004e4ce:	c0f4f6e3          	bgeu	s1,a5,8004e0da <get_class_atom+0x3c>
quickjs-nuttx/libregexp.c:757
            p++;
    8004e4d2:	67a2                	ld	a5,8(sp)
    8004e4d4:	0785                	addi	a5,a5,1
    8004e4d6:	e43e                	sd	a5,8(sp)
    8004e4d8:	b571                	j	8004e364 <get_class_atom+0x2c6>
quickjs-nuttx/libregexp.c:664
    c = *p;
    8004e4da:	2401                	sext.w	s0,s0
    8004e4dc:	b7c1                	j	8004e49c <get_class_atom+0x3fe>

000000008004e4de <re_parse_group_name.constprop.0>:
re_parse_group_name():
quickjs-nuttx/libregexp.c:987
static int re_parse_group_name(char *buf, int buf_size, const uint8_t **pp)
    8004e4de:	7159                	addi	sp,sp,-112
    8004e4e0:	eca6                	sd	s1,88(sp)
    8004e4e2:	e8ca                	sd	s2,80(sp)
    8004e4e4:	e4ce                	sd	s3,72(sp)
    8004e4e6:	e0d2                	sd	s4,64(sp)
    8004e4e8:	fc56                	sd	s5,56(sp)
    8004e4ea:	f85a                	sd	s6,48(sp)
    8004e4ec:	f45e                	sd	s7,40(sp)
    8004e4ee:	f062                	sd	s8,32(sp)
    8004e4f0:	ec66                	sd	s9,24(sp)
    8004e4f2:	f486                	sd	ra,104(sp)
    8004e4f4:	f0a2                	sd	s0,96(sp)
    8004e4f6:	e86a                	sd	s10,16(sp)
quickjs-nuttx/libregexp.c:993
    p = *pp;
    8004e4f8:	619c                	ld	a5,0(a1)
lre_js_is_ident_next():
quickjs-nuttx/libregexp.h:84
        return lre_is_id_continue(c) || c == 0x200C || c == 0x200D;
    8004e4fa:	7af9                	lui	s5,0xffffe
re_parse_group_name():
quickjs-nuttx/libregexp.c:1006
            if (c >= 0xD800 && c <= 0xDBFF) {
    8004e4fc:	7b4d                	lui	s6,0xffff3
quickjs-nuttx/libregexp.c:1008
                if (d >= 0xDC00 && d <= 0xDFFF) {
    8004e4fe:	7a49                	lui	s4,0xffff2
quickjs-nuttx/libregexp.c:987
static int re_parse_group_name(char *buf, int buf_size, const uint8_t **pp)
    8004e500:	892a                	mv	s2,a0
    8004e502:	89ae                	mv	s3,a1
quickjs-nuttx/libregexp.c:993
    p = *pp;
    8004e504:	e03e                	sd	a5,0(sp)
    8004e506:	84aa                	mv	s1,a0
lre_js_is_ident_next():
quickjs-nuttx/libregexp.h:84
    8004e508:	3ad1                	addiw	s5,s5,-12
quickjs-nuttx/libregexp.h:80
        return (lre_id_continue_table_ascii[c >> 5] >> (c & 31)) & 1;
    8004e50a:	00027b97          	auipc	s7,0x27
    8004e50e:	266b8b93          	addi	s7,s7,614 # 80075770 <lre_id_continue_table_ascii>
lre_js_is_ident_first():
quickjs-nuttx/libregexp.h:67
        return (lre_id_start_table_ascii[c >> 5] >> (c & 31)) & 1;
    8004e512:	00027c17          	auipc	s8,0x27
    8004e516:	26ec0c13          	addi	s8,s8,622 # 80075780 <lre_id_start_table_ascii>
re_parse_group_name():
quickjs-nuttx/libregexp.c:1006
            if (c >= 0xD800 && c <= 0xDBFF) {
    8004e51a:	800b0c9b          	addiw	s9,s6,-2048
quickjs-nuttx/libregexp.c:1008
                if (d >= 0xDC00 && d <= 0xDFFF) {
    8004e51e:	400a0a1b          	addiw	s4,s4,1024
quickjs-nuttx/libregexp.c:996
        c = *p;
    8004e522:	6502                	ld	a0,0(sp)
quickjs-nuttx/libregexp.c:997
        if (c == '\\') {
    8004e524:	05c00793          	li	a5,92
quickjs-nuttx/libregexp.c:996
        c = *p;
    8004e528:	00054403          	lbu	s0,0(a0)
quickjs-nuttx/libregexp.c:997
        if (c == '\\') {
    8004e52c:	04f41e63          	bne	s0,a5,8004e588 <re_parse_group_name.constprop.0+0xaa>
quickjs-nuttx/libregexp.c:998
            p++;
    8004e530:	00150793          	addi	a5,a0,1
    8004e534:	e03e                	sd	a5,0(sp)
quickjs-nuttx/libregexp.c:999
            if (*p != 'u')
    8004e536:	00154703          	lbu	a4,1(a0)
    8004e53a:	07500793          	li	a5,117
    8004e53e:	02f70163          	beq	a4,a5,8004e560 <re_parse_group_name.constprop.0+0x82>
quickjs-nuttx/libregexp.c:1000
                return -1;
    8004e542:	557d                	li	a0,-1
quickjs-nuttx/libregexp.c:1039
}
    8004e544:	70a6                	ld	ra,104(sp)
    8004e546:	7406                	ld	s0,96(sp)
    8004e548:	64e6                	ld	s1,88(sp)
    8004e54a:	6946                	ld	s2,80(sp)
    8004e54c:	69a6                	ld	s3,72(sp)
    8004e54e:	6a06                	ld	s4,64(sp)
    8004e550:	7ae2                	ld	s5,56(sp)
    8004e552:	7b42                	ld	s6,48(sp)
    8004e554:	7ba2                	ld	s7,40(sp)
    8004e556:	7c02                	ld	s8,32(sp)
    8004e558:	6ce2                	ld	s9,24(sp)
    8004e55a:	6d42                	ld	s10,16(sp)
    8004e55c:	6165                	addi	sp,sp,112
    8004e55e:	8082                	ret
quickjs-nuttx/libregexp.c:1001
            c = lre_parse_escape(&p, 2); // accept surrogate pairs
    8004e560:	4589                	li	a1,2
    8004e562:	850a                	mv	a0,sp
    8004e564:	94dff0ef          	jal	ra,8004deb0 <lre_parse_escape>
    8004e568:	0005041b          	sext.w	s0,a0
quickjs-nuttx/libregexp.c:1016
        if (c > 0x10FFFF)
    8004e56c:	001107b7          	lui	a5,0x110
    8004e570:	fcf479e3          	bgeu	s0,a5,8004e542 <re_parse_group_name.constprop.0+0x64>
quickjs-nuttx/libregexp.c:1018
        if (q == buf) {
    8004e574:	0b249c63          	bne	s1,s2,8004e62c <re_parse_group_name.constprop.0+0x14e>
lre_js_is_ident_first():
quickjs-nuttx/libregexp.h:66
    if ((uint32_t)c < 128) {
    8004e578:	07f00793          	li	a5,127
    8004e57c:	0887f063          	bgeu	a5,s0,8004e5fc <re_parse_group_name.constprop.0+0x11e>
quickjs-nuttx/libregexp.h:70
        return lre_is_id_start(c);
    8004e580:	8522                	mv	a0,s0
    8004e582:	7d6020ef          	jal	ra,80050d58 <lre_is_id_start>
    8004e586:	a059                	j	8004e60c <re_parse_group_name.constprop.0+0x12e>
re_parse_group_name():
quickjs-nuttx/libregexp.c:1002
        } else if (c == '>') {
    8004e588:	03e00793          	li	a5,62
    8004e58c:	0cf40463          	beq	s0,a5,8004e654 <re_parse_group_name.constprop.0+0x176>
quickjs-nuttx/libregexp.c:1004
        } else if (c >= 128) {
    8004e590:	07f00793          	li	a5,127
    8004e594:	0487ff63          	bgeu	a5,s0,8004e5f2 <re_parse_group_name.constprop.0+0x114>
quickjs-nuttx/libregexp.c:1005
            c = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p);
    8004e598:	860a                	mv	a2,sp
    8004e59a:	4599                	li	a1,6
    8004e59c:	71e030ef          	jal	ra,80051cba <unicode_from_utf8>
    8004e5a0:	0005041b          	sext.w	s0,a0
quickjs-nuttx/libregexp.c:1006
            if (c >= 0xD800 && c <= 0xDBFF) {
    8004e5a4:	3ff00d13          	li	s10,1023
    8004e5a8:	00ac853b          	addw	a0,s9,a0
    8004e5ac:	fcad60e3          	bltu	s10,a0,8004e56c <re_parse_group_name.constprop.0+0x8e>
quickjs-nuttx/libregexp.c:1007
                d = unicode_from_utf8(p, UTF8_CHAR_LEN_MAX, &p1);
    8004e5b0:	6502                	ld	a0,0(sp)
    8004e5b2:	0030                	addi	a2,sp,8
    8004e5b4:	4599                	li	a1,6
    8004e5b6:	704030ef          	jal	ra,80051cba <unicode_from_utf8>
    8004e5ba:	0005079b          	sext.w	a5,a0
quickjs-nuttx/libregexp.c:1008
                if (d >= 0xDC00 && d <= 0xDFFF) {
    8004e5be:	00aa053b          	addw	a0,s4,a0
    8004e5c2:	00ad6c63          	bltu	s10,a0,8004e5da <re_parse_group_name.constprop.0+0xfc>
quickjs-nuttx/libregexp.c:1009
                    c = 0x10000 + 0x400 * (c - 0xD800) + (d - 0xDC00);
    8004e5c6:	840b051b          	addiw	a0,s6,-1984
    8004e5ca:	9c29                	addw	s0,s0,a0
    8004e5cc:	00a4141b          	slliw	s0,s0,0xa
    8004e5d0:	0144043b          	addw	s0,s0,s4
    8004e5d4:	9c3d                	addw	s0,s0,a5
quickjs-nuttx/libregexp.c:1010
                    p = p1;
    8004e5d6:	67a2                	ld	a5,8(sp)
    8004e5d8:	e03e                	sd	a5,0(sp)
quickjs-nuttx/libregexp.c:1018
        if (q == buf) {
    8004e5da:	fb2483e3          	beq	s1,s2,8004e580 <re_parse_group_name.constprop.0+0xa2>
lre_js_is_ident_next():
quickjs-nuttx/libregexp.h:84
        return lre_is_id_continue(c) || c == 0x200C || c == 0x200D;
    8004e5de:	8522                	mv	a0,s0
    8004e5e0:	790020ef          	jal	ra,80050d70 <lre_is_id_continue>
    8004e5e4:	e50d                	bnez	a0,8004e60e <re_parse_group_name.constprop.0+0x130>
    8004e5e6:	008a87bb          	addw	a5,s5,s0
    8004e5ea:	4705                	li	a4,1
    8004e5ec:	f4f76be3          	bltu	a4,a5,8004e542 <re_parse_group_name.constprop.0+0x64>
    8004e5f0:	a839                	j	8004e60e <re_parse_group_name.constprop.0+0x130>
re_parse_group_name():
quickjs-nuttx/libregexp.c:1014
            p++;
    8004e5f2:	00150793          	addi	a5,a0,1
    8004e5f6:	e03e                	sd	a5,0(sp)
quickjs-nuttx/libregexp.c:1018
        if (q == buf) {
    8004e5f8:	03249a63          	bne	s1,s2,8004e62c <re_parse_group_name.constprop.0+0x14e>
lre_js_is_ident_first():
quickjs-nuttx/libregexp.h:67
        return (lre_id_start_table_ascii[c >> 5] >> (c & 31)) & 1;
    8004e5fc:	40545793          	srai	a5,s0,0x5
    8004e600:	078a                	slli	a5,a5,0x2
    8004e602:	97e2                	add	a5,a5,s8
    8004e604:	4388                	lw	a0,0(a5)
    8004e606:	0085553b          	srlw	a0,a0,s0
    8004e60a:	8905                	andi	a0,a0,1
re_parse_group_name():
quickjs-nuttx/libregexp.c:1019
            if (!lre_js_is_ident_first(c))
    8004e60c:	d91d                	beqz	a0,8004e542 <re_parse_group_name.constprop.0+0x64>
quickjs-nuttx/libregexp.c:1025
        if ((q - buf + UTF8_CHAR_LEN_MAX + 1) > buf_size)
    8004e60e:	412487b3          	sub	a5,s1,s2
    8004e612:	079d                	addi	a5,a5,7
    8004e614:	08000713          	li	a4,128
    8004e618:	f2f745e3          	blt	a4,a5,8004e542 <re_parse_group_name.constprop.0+0x64>
quickjs-nuttx/libregexp.c:1027
        if (c < 128) {
    8004e61c:	07f00793          	li	a5,127
    8004e620:	0287e463          	bltu	a5,s0,8004e648 <re_parse_group_name.constprop.0+0x16a>
quickjs-nuttx/libregexp.c:1028
            *q++ = c;
    8004e624:	00848023          	sb	s0,0(s1)
    8004e628:	0485                	addi	s1,s1,1
    8004e62a:	bde5                	j	8004e522 <re_parse_group_name.constprop.0+0x44>
lre_js_is_ident_next():
quickjs-nuttx/libregexp.h:79
    if ((uint32_t)c < 128) {
    8004e62c:	07f00793          	li	a5,127
    8004e630:	fa87e7e3          	bltu	a5,s0,8004e5de <re_parse_group_name.constprop.0+0x100>
quickjs-nuttx/libregexp.h:80
        return (lre_id_continue_table_ascii[c >> 5] >> (c & 31)) & 1;
    8004e634:	40545793          	srai	a5,s0,0x5
    8004e638:	078a                	slli	a5,a5,0x2
    8004e63a:	97de                	add	a5,a5,s7
    8004e63c:	439c                	lw	a5,0(a5)
    8004e63e:	0087d7bb          	srlw	a5,a5,s0
re_parse_group_name():
quickjs-nuttx/libregexp.c:1022
            if (!lre_js_is_ident_next(c))
    8004e642:	8b85                	andi	a5,a5,1
    8004e644:	f7e9                	bnez	a5,8004e60e <re_parse_group_name.constprop.0+0x130>
    8004e646:	bdf5                	j	8004e542 <re_parse_group_name.constprop.0+0x64>
quickjs-nuttx/libregexp.c:1030
            q += unicode_to_utf8((uint8_t*)q, c);
    8004e648:	8526                	mv	a0,s1
    8004e64a:	85a2                	mv	a1,s0
    8004e64c:	580030ef          	jal	ra,80051bcc <unicode_to_utf8>
    8004e650:	94aa                	add	s1,s1,a0
    8004e652:	bdc1                	j	8004e522 <re_parse_group_name.constprop.0+0x44>
quickjs-nuttx/libregexp.c:1033
    if (q == buf)
    8004e654:	ef2487e3          	beq	s1,s2,8004e542 <re_parse_group_name.constprop.0+0x64>
quickjs-nuttx/libregexp.c:1036
    p++;
    8004e658:	0505                	addi	a0,a0,1
quickjs-nuttx/libregexp.c:1035
    *q = '\0';
    8004e65a:	00048023          	sb	zero,0(s1)
quickjs-nuttx/libregexp.c:1037
    *pp = p;
    8004e65e:	00a9b023          	sd	a0,0(s3)
quickjs-nuttx/libregexp.c:1038
    return 0;
    8004e662:	4501                	li	a0,0
    8004e664:	b5c5                	j	8004e544 <re_parse_group_name.constprop.0+0x66>

000000008004e666 <re_parse_captures>:
re_parse_captures():
quickjs-nuttx/libregexp.c:1046
{
    8004e666:	7115                	addi	sp,sp,-224
    8004e668:	e9a2                	sd	s0,208(sp)
    8004e66a:	e5a6                	sd	s1,200(sp)
    8004e66c:	e1ca                	sd	s2,192(sp)
    8004e66e:	fd4e                	sd	s3,184(sp)
    8004e670:	f952                	sd	s4,176(sp)
    8004e672:	f556                	sd	s5,168(sp)
    8004e674:	f15a                	sd	s6,160(sp)
    8004e676:	ed5e                	sd	s7,152(sp)
    8004e678:	ed86                	sd	ra,216(sp)
quickjs-nuttx/libregexp.c:1052
    *phas_named_captures = 0;
    8004e67a:	0005a023          	sw	zero,0(a1)
quickjs-nuttx/libregexp.c:1053
    for (p = s->buf_start; p < s->buf_end; p++) {
    8004e67e:	613c                	ld	a5,64(a0)
quickjs-nuttx/libregexp.c:1046
{
    8004e680:	8baa                	mv	s7,a0
    8004e682:	892e                	mv	s2,a1
    8004e684:	84b2                	mv	s1,a2
quickjs-nuttx/libregexp.c:1053
    for (p = s->buf_start; p < s->buf_end; p++) {
    8004e686:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libregexp.c:1051
    capture_index = 1;
    8004e688:	4405                	li	s0,1
quickjs-nuttx/libregexp.c:1054
        switch (*p) {
    8004e68a:	05b00a13          	li	s4,91
quickjs-nuttx/libregexp.c:1081
            for (p += 1 + (*p == ']'); p < s->buf_end && *p != ']'; p++) {
    8004e68e:	05d00a93          	li	s5,93
quickjs-nuttx/libregexp.c:1082
                if (*p == '\\')
    8004e692:	05c00993          	li	s3,92
quickjs-nuttx/libregexp.c:1054
        switch (*p) {
    8004e696:	02800b13          	li	s6,40
quickjs-nuttx/libregexp.c:1053 (discriminator 1)
    for (p = s->buf_start; p < s->buf_end; p++) {
    8004e69a:	038bb683          	ld	a3,56(s7)
    8004e69e:	67a2                	ld	a5,8(sp)
    8004e6a0:	04d7f963          	bgeu	a5,a3,8004e6f2 <re_parse_captures+0x8c>
quickjs-nuttx/libregexp.c:1054
        switch (*p) {
    8004e6a4:	0007c703          	lbu	a4,0(a5) # 110000 <asinh-0x7fef0000>
    8004e6a8:	09470b63          	beq	a4,s4,8004e73e <re_parse_captures+0xd8>
    8004e6ac:	07370e63          	beq	a4,s3,8004e728 <re_parse_captures+0xc2>
    8004e6b0:	07671e63          	bne	a4,s6,8004e72c <re_parse_captures+0xc6>
quickjs-nuttx/libregexp.c:1056
            if (p[1] == '?') {
    8004e6b4:	0017c683          	lbu	a3,1(a5)
    8004e6b8:	03f00713          	li	a4,63
    8004e6bc:	02e69663          	bne	a3,a4,8004e6e8 <re_parse_captures+0x82>
quickjs-nuttx/libregexp.c:1057
                if (p[2] == '<' && p[3] != '=' && p[3] != '!') {
    8004e6c0:	0027c683          	lbu	a3,2(a5)
    8004e6c4:	03c00713          	li	a4,60
    8004e6c8:	06e69263          	bne	a3,a4,8004e72c <re_parse_captures+0xc6>
quickjs-nuttx/libregexp.c:1057 (discriminator 1)
    8004e6cc:	0037c703          	lbu	a4,3(a5)
    8004e6d0:	03d00693          	li	a3,61
    8004e6d4:	04d70c63          	beq	a4,a3,8004e72c <re_parse_captures+0xc6>
quickjs-nuttx/libregexp.c:1057 (discriminator 2)
    8004e6d8:	02100693          	li	a3,33
    8004e6dc:	04d70863          	beq	a4,a3,8004e72c <re_parse_captures+0xc6>
quickjs-nuttx/libregexp.c:1058
                    *phas_named_captures = 1;
    8004e6e0:	4705                	li	a4,1
    8004e6e2:	00e92023          	sw	a4,0(s2)
quickjs-nuttx/libregexp.c:1060
                    if (capture_name) {
    8004e6e6:	e889                	bnez	s1,8004e6f8 <re_parse_captures+0x92>
quickjs-nuttx/libregexp.c:1072
                capture_index++;
    8004e6e8:	2405                	addiw	s0,s0,1
quickjs-nuttx/libregexp.c:1073
                if (capture_index >= CAPTURE_COUNT_MAX)
    8004e6ea:	0fe00793          	li	a5,254
    8004e6ee:	0287df63          	bge	a5,s0,8004e72c <re_parse_captures+0xc6>
quickjs-nuttx/libregexp.c:1089
    if (capture_name)
    8004e6f2:	cc99                	beqz	s1,8004e710 <re_parse_captures+0xaa>
quickjs-nuttx/libregexp.c:1090
        return -1;
    8004e6f4:	547d                	li	s0,-1
    8004e6f6:	a829                	j	8004e710 <re_parse_captures+0xaa>
quickjs-nuttx/libregexp.c:1061
                        p += 3;
    8004e6f8:	078d                	addi	a5,a5,3
quickjs-nuttx/libregexp.c:1062
                        if (re_parse_group_name(name, sizeof(name), &p) == 0) {
    8004e6fa:	002c                	addi	a1,sp,8
    8004e6fc:	0808                	addi	a0,sp,16
quickjs-nuttx/libregexp.c:1061
                        p += 3;
    8004e6fe:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libregexp.c:1062
                        if (re_parse_group_name(name, sizeof(name), &p) == 0) {
    8004e700:	ddfff0ef          	jal	ra,8004e4de <re_parse_group_name.constprop.0>
    8004e704:	f175                	bnez	a0,8004e6e8 <re_parse_captures+0x82>
quickjs-nuttx/libregexp.c:1063
                            if (!strcmp(name, capture_name))
    8004e706:	85a6                	mv	a1,s1
    8004e708:	0808                	addi	a0,sp,16
    8004e70a:	616150ef          	jal	ra,80063d20 <strcmp>
    8004e70e:	fd69                	bnez	a0,8004e6e8 <re_parse_captures+0x82>
quickjs-nuttx/libregexp.c:1093
}
    8004e710:	60ee                	ld	ra,216(sp)
    8004e712:	8522                	mv	a0,s0
    8004e714:	644e                	ld	s0,208(sp)
    8004e716:	64ae                	ld	s1,200(sp)
    8004e718:	690e                	ld	s2,192(sp)
    8004e71a:	79ea                	ld	s3,184(sp)
    8004e71c:	7a4a                	ld	s4,176(sp)
    8004e71e:	7aaa                	ld	s5,168(sp)
    8004e720:	7b0a                	ld	s6,160(sp)
    8004e722:	6bea                	ld	s7,152(sp)
    8004e724:	612d                	addi	sp,sp,224
    8004e726:	8082                	ret
quickjs-nuttx/libregexp.c:1078
            p++;
    8004e728:	0785                	addi	a5,a5,1
    8004e72a:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libregexp.c:1053 (discriminator 2)
    for (p = s->buf_start; p < s->buf_end; p++) {
    8004e72c:	67a2                	ld	a5,8(sp)
    8004e72e:	0785                	addi	a5,a5,1
    8004e730:	e43e                	sd	a5,8(sp)
    8004e732:	b7a5                	j	8004e69a <re_parse_captures+0x34>
quickjs-nuttx/libregexp.c:1082
                if (*p == '\\')
    8004e734:	01371463          	bne	a4,s3,8004e73c <re_parse_captures+0xd6>
quickjs-nuttx/libregexp.c:1083
                    p++;
    8004e738:	0785                	addi	a5,a5,1
    8004e73a:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libregexp.c:1081 (discriminator 6)
            for (p += 1 + (*p == ']'); p < s->buf_end && *p != ']'; p++) {
    8004e73c:	67a2                	ld	a5,8(sp)
    8004e73e:	0785                	addi	a5,a5,1
    8004e740:	e43e                	sd	a5,8(sp)
    8004e742:	67a2                	ld	a5,8(sp)
    8004e744:	fed7f4e3          	bgeu	a5,a3,8004e72c <re_parse_captures+0xc6>
quickjs-nuttx/libregexp.c:1081 (discriminator 7)
    8004e748:	0007c703          	lbu	a4,0(a5)
    8004e74c:	ff5714e3          	bne	a4,s5,8004e734 <re_parse_captures+0xce>
    8004e750:	bff1                	j	8004e72c <re_parse_captures+0xc6>

000000008004e752 <re_count_captures>:
re_count_captures():
quickjs-nuttx/libregexp.c:1096
{
    8004e752:	1141                	addi	sp,sp,-16
    8004e754:	e022                	sd	s0,0(sp)
    8004e756:	e406                	sd	ra,8(sp)
quickjs-nuttx/libregexp.c:1097
    if (s->total_capture_count < 0) {
    8004e758:	4d7c                	lw	a5,92(a0)
quickjs-nuttx/libregexp.c:1096
{
    8004e75a:	842a                	mv	s0,a0
quickjs-nuttx/libregexp.c:1097
    if (s->total_capture_count < 0) {
    8004e75c:	0007d863          	bgez	a5,8004e76c <re_count_captures+0x1a>
quickjs-nuttx/libregexp.c:1098
        s->total_capture_count = re_parse_captures(s, &s->has_named_captures,
    8004e760:	4601                	li	a2,0
    8004e762:	06050593          	addi	a1,a0,96
    8004e766:	f01ff0ef          	jal	ra,8004e666 <re_parse_captures>
    8004e76a:	cc68                	sw	a0,92(s0)
quickjs-nuttx/libregexp.c:1102
}
    8004e76c:	4c68                	lw	a0,92(s0)
    8004e76e:	60a2                	ld	ra,8(sp)
    8004e770:	6402                	ld	s0,0(sp)
    8004e772:	0141                	addi	sp,sp,16
    8004e774:	8082                	ret

000000008004e776 <re_parse_alternative>:
re_parse_alternative():
quickjs-nuttx/libregexp.c:1626
{
    8004e776:	7151                	addi	sp,sp,-240
    8004e778:	e9ca                	sd	s2,208(sp)
    8004e77a:	f162                	sd	s8,160(sp)
    8004e77c:	e96a                	sd	s10,144(sp)
    8004e77e:	f586                	sd	ra,232(sp)
    8004e780:	f1a2                	sd	s0,224(sp)
    8004e782:	eda6                	sd	s1,216(sp)
    8004e784:	e5ce                	sd	s3,200(sp)
    8004e786:	e1d2                	sd	s4,192(sp)
    8004e788:	fd56                	sd	s5,184(sp)
    8004e78a:	f95a                	sd	s6,176(sp)
    8004e78c:	f55e                	sd	s7,168(sp)
    8004e78e:	ed66                	sd	s9,152(sp)
    8004e790:	e56e                	sd	s11,136(sp)
re_parse_term():
quickjs-nuttx/libregexp.c:1368
                re_emit_op_u8(s, REOP_back_reference + is_backward_dir, c);
    8004e792:	0135879b          	addiw	a5,a1,19
quickjs-nuttx/libregexp.c:1268
            re_emit_op_u8(s, REOP_save_start + 1 - is_backward_dir,
    8004e796:	4c31                	li	s8,12
re_parse_alternative():
quickjs-nuttx/libregexp.c:1631
    start = s->byte_code.size;
    8004e798:	00853b83          	ld	s7,8(a0)
re_parse_term():
quickjs-nuttx/libregexp.c:1368
                re_emit_op_u8(s, REOP_back_reference + is_backward_dir, c);
    8004e79c:	e03e                	sd	a5,0(sp)
quickjs-nuttx/libregexp.c:1268
            re_emit_op_u8(s, REOP_save_start + 1 - is_backward_dir,
    8004e79e:	40bc07bb          	subw	a5,s8,a1
re_parse_alternative():
quickjs-nuttx/libregexp.c:1626
{
    8004e7a2:	8d2a                	mv	s10,a0
    8004e7a4:	892e                	mv	s2,a1
re_parse_term():
quickjs-nuttx/libregexp.c:1268
            re_emit_op_u8(s, REOP_save_start + 1 - is_backward_dir,
    8004e7a6:	e83e                	sd	a5,16(sp)
quickjs-nuttx/libregexp.c:1260
            re_emit_op_u8(s, REOP_save_start + is_backward_dir,
    8004e7a8:	00b9079b          	addiw	a5,s2,11
    8004e7ac:	e43e                	sd	a5,8(sp)
re_parse_alternative():
quickjs-nuttx/libregexp.c:1633
        p = s->buf_ptr;
    8004e7ae:	030d3403          	ld	s0,48(s10) # ffffffff80000030 <_ebss+0xfffffffeffefeeca>
quickjs-nuttx/libregexp.c:1634
        if (p >= s->buf_end)
    8004e7b2:	038d3703          	ld	a4,56(s10)
    8004e7b6:	50e477e3          	bgeu	s0,a4,8004f4c4 <re_parse_alternative+0xd4e>
quickjs-nuttx/libregexp.c:1636
        if (*p == '|' || *p == ')')
    8004e7ba:	00044703          	lbu	a4,0(s0)
    8004e7be:	07c00693          	li	a3,124
    8004e7c2:	50d701e3          	beq	a4,a3,8004f4c4 <re_parse_alternative+0xd4e>
quickjs-nuttx/libregexp.c:1636 (discriminator 1)
    8004e7c6:	02900693          	li	a3,41
    8004e7ca:	4ed70de3          	beq	a4,a3,8004f4c4 <re_parse_alternative+0xd4e>
re_parse_term():
quickjs-nuttx/libregexp.c:1142
    p = s->buf_ptr;
    8004e7ce:	f022                	sd	s0,32(sp)
quickjs-nuttx/libregexp.c:1143
    c = *p;
    8004e7d0:	00044703          	lbu	a4,0(s0)
quickjs-nuttx/libregexp.c:1144
    switch(c) {
    8004e7d4:	05b00613          	li	a2,91
re_parse_alternative():
quickjs-nuttx/libregexp.c:1638
        term_start = s->byte_code.size;
    8004e7d8:	008d3b03          	ld	s6,8(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1144
    switch(c) {
    8004e7dc:	66c70863          	beq	a4,a2,8004ee4c <re_parse_alternative+0x6d6>
    8004e7e0:	04e66763          	bltu	a2,a4,8004e82e <re_parse_alternative+0xb8>
    8004e7e4:	02b00613          	li	a2,43
    8004e7e8:	02e66663          	bltu	a2,a4,8004e814 <re_parse_alternative+0x9e>
    8004e7ec:	02e6ec63          	bltu	a3,a4,8004e824 <re_parse_alternative+0xae>
    8004e7f0:	02400693          	li	a3,36
    8004e7f4:	06d70d63          	beq	a4,a3,8004e86e <re_parse_alternative+0xf8>
    8004e7f8:	02800693          	li	a3,40
    8004e7fc:	12d70b63          	beq	a4,a3,8004e932 <re_parse_alternative+0x1bc>
quickjs-nuttx/libregexp.c:1392
        c = get_class_atom(s, cr, &p, FALSE);
    8004e800:	4681                	li	a3,0
    8004e802:	1010                	addi	a2,sp,32
    8004e804:	108c                	addi	a1,sp,96
    8004e806:	856a                	mv	a0,s10
    8004e808:	897ff0ef          	jal	ra,8004e09e <get_class_atom>
    8004e80c:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1393
        if ((int)c < 0)
    8004e80e:	52055d63          	bgez	a0,8004ed48 <re_parse_alternative+0x5d2>
    8004e812:	aa91                	j	8004e966 <re_parse_alternative+0x1f0>
quickjs-nuttx/libregexp.c:1144
    switch(c) {
    8004e814:	02e00693          	li	a3,46
    8004e818:	04d70f63          	beq	a4,a3,8004e876 <re_parse_alternative+0x100>
    8004e81c:	03f00693          	li	a3,63
quickjs-nuttx/libregexp.c:1180
            if (*p1 != '}') {
    8004e820:	fee690e3          	bne	a3,a4,8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1188
        return re_parse_error(s, "nothing to repeat");
    8004e824:	00027597          	auipc	a1,0x27
    8004e828:	c7458593          	addi	a1,a1,-908 # 80075498 <unescaped_chars.0+0x2a8>
    8004e82c:	a079                	j	8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1144
    switch(c) {
    8004e82e:	05e00693          	li	a3,94
    8004e832:	02d70763          	beq	a4,a3,8004e860 <re_parse_alternative+0xea>
    8004e836:	00e6ee63          	bltu	a3,a4,8004e852 <re_parse_alternative+0xdc>
    8004e83a:	05c00693          	li	a3,92
    8004e83e:	36d70663          	beq	a4,a3,8004ebaa <re_parse_alternative+0x434>
    8004e842:	05d00693          	li	a3,93
    8004e846:	fad71de3          	bne	a4,a3,8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1387
        if (s->is_utf16)
    8004e84a:	04cd2703          	lw	a4,76(s10)
    8004e84e:	db4d                	beqz	a4,8004e800 <re_parse_alternative+0x8a>
    8004e850:	a08d                	j	8004e8b2 <re_parse_alternative+0x13c>
quickjs-nuttx/libregexp.c:1144
    switch(c) {
    8004e852:	07b00693          	li	a3,123
    8004e856:	04d70b63          	beq	a4,a3,8004e8ac <re_parse_alternative+0x136>
    8004e85a:	07d00693          	li	a3,125
    8004e85e:	b7e5                	j	8004e846 <re_parse_alternative+0xd0>
quickjs-nuttx/libregexp.c:1146
        p++;
    8004e860:	0405                	addi	s0,s0,1
    8004e862:	f022                	sd	s0,32(sp)
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004e864:	4595                	li	a1,5
    8004e866:	856a                	mv	a0,s10
    8004e868:	27a030ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:341
}
    8004e86c:	a6d9                	j	8004ec32 <re_parse_alternative+0x4bc>
re_parse_term():
quickjs-nuttx/libregexp.c:1150
        p++;
    8004e86e:	0405                	addi	s0,s0,1
    8004e870:	f022                	sd	s0,32(sp)
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004e872:	4599                	li	a1,6
    8004e874:	bfcd                	j	8004e866 <re_parse_alternative+0xf0>
re_parse_term():
quickjs-nuttx/libregexp.c:1154
        p++;
    8004e876:	0405                	addi	s0,s0,1
    8004e878:	f022                	sd	s0,32(sp)
quickjs-nuttx/libregexp.c:1156
        last_capture_count = s->capture_count;
    8004e87a:	058d2a03          	lw	s4,88(s10)
quickjs-nuttx/libregexp.c:1155
        last_atom_start = s->byte_code.size;
    8004e87e:	000b041b          	sext.w	s0,s6
quickjs-nuttx/libregexp.c:1157
        if (is_backward_dir)
    8004e882:	00090663          	beqz	s2,8004e88e <re_parse_alternative+0x118>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004e886:	45ed                	li	a1,27
    8004e888:	856a                	mv	a0,s10
    8004e88a:	258030ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1159
        re_emit_op(s, s->dotall ? REOP_any : REOP_dot);
    8004e88e:	054d2583          	lw	a1,84(s10)
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004e892:	856a                	mv	a0,s10
re_parse_term():
quickjs-nuttx/libregexp.c:1159
        re_emit_op(s, s->dotall ? REOP_any : REOP_dot);
    8004e894:	00b035b3          	snez	a1,a1
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004e898:	058d                	addi	a1,a1,3
    8004e89a:	248030ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1415
        if (is_backward_dir)
    8004e89e:	18090063          	beqz	s2,8004ea1e <re_parse_alternative+0x2a8>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004e8a2:	45ed                	li	a1,27
    8004e8a4:	856a                	mv	a0,s10
    8004e8a6:	23c030ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:341
}
    8004e8aa:	aa95                	j	8004ea1e <re_parse_alternative+0x2a8>
re_parse_term():
quickjs-nuttx/libregexp.c:1164
        if (s->is_utf16) {
    8004e8ac:	04cd2703          	lw	a4,76(s10)
    8004e8b0:	cb0d                	beqz	a4,8004e8e2 <re_parse_alternative+0x16c>
quickjs-nuttx/libregexp.c:1165
            return re_parse_error(s, "syntax error");
    8004e8b2:	00027597          	auipc	a1,0x27
    8004e8b6:	bd658593          	addi	a1,a1,-1066 # 80075488 <unescaped_chars.0+0x298>
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004e8ba:	856a                	mv	a0,s10
    8004e8bc:	fbefe0ef          	jal	ra,8004d07a <re_parse_error>
re_parse_alternative():
quickjs-nuttx/libregexp.c:1640
        if (ret)
    8004e8c0:	36050c63          	beqz	a0,8004ec38 <re_parse_alternative+0x4c2>
quickjs-nuttx/libregexp.c:1657
}
    8004e8c4:	70ae                	ld	ra,232(sp)
    8004e8c6:	740e                	ld	s0,224(sp)
    8004e8c8:	64ee                	ld	s1,216(sp)
    8004e8ca:	694e                	ld	s2,208(sp)
    8004e8cc:	69ae                	ld	s3,200(sp)
    8004e8ce:	6a0e                	ld	s4,192(sp)
    8004e8d0:	7aea                	ld	s5,184(sp)
    8004e8d2:	7b4a                	ld	s6,176(sp)
    8004e8d4:	7baa                	ld	s7,168(sp)
    8004e8d6:	7c0a                	ld	s8,160(sp)
    8004e8d8:	6cea                	ld	s9,152(sp)
    8004e8da:	6d4a                	ld	s10,144(sp)
    8004e8dc:	6daa                	ld	s11,136(sp)
    8004e8de:	616d                	addi	sp,sp,240
    8004e8e0:	8082                	ret
is_digit():
quickjs-nuttx/libregexp.c:107
    return c >= '0' && c <= '9';
    8004e8e2:	00144703          	lbu	a4,1(s0)
re_parse_term():
quickjs-nuttx/libregexp.c:1166
        } else if (!is_digit(p[1])) {
    8004e8e6:	46a5                	li	a3,9
    8004e8e8:	fd07071b          	addiw	a4,a4,-48
    8004e8ec:	f0e6eae3          	bltu	a3,a4,8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1171
            const uint8_t *p1 = p + 1;
    8004e8f0:	0405                	addi	s0,s0,1
quickjs-nuttx/libregexp.c:1173
            parse_digits(&p1, TRUE);
    8004e8f2:	4585                	li	a1,1
    8004e8f4:	1088                	addi	a0,sp,96
quickjs-nuttx/libregexp.c:1171
            const uint8_t *p1 = p + 1;
    8004e8f6:	f0a2                	sd	s0,96(sp)
quickjs-nuttx/libregexp.c:1173
            parse_digits(&p1, TRUE);
    8004e8f8:	d68fe0ef          	jal	ra,8004ce60 <parse_digits>
quickjs-nuttx/libregexp.c:1174
            if (*p1 == ',') {
    8004e8fc:	7706                	ld	a4,96(sp)
    8004e8fe:	02c00693          	li	a3,44
    8004e902:	00074603          	lbu	a2,0(a4)
    8004e906:	02d61063          	bne	a2,a3,8004e926 <re_parse_alternative+0x1b0>
quickjs-nuttx/libregexp.c:1175
                p1++;
    8004e90a:	00170693          	addi	a3,a4,1
    8004e90e:	f0b6                	sd	a3,96(sp)
is_digit():
quickjs-nuttx/libregexp.c:107
    return c >= '0' && c <= '9';
    8004e910:	00174703          	lbu	a4,1(a4)
re_parse_term():
quickjs-nuttx/libregexp.c:1176
                if (is_digit(*p1)) {
    8004e914:	46a5                	li	a3,9
    8004e916:	fd07071b          	addiw	a4,a4,-48
    8004e91a:	00e6e663          	bltu	a3,a4,8004e926 <re_parse_alternative+0x1b0>
quickjs-nuttx/libregexp.c:1177
                    parse_digits(&p1, TRUE);
    8004e91e:	4585                	li	a1,1
    8004e920:	1088                	addi	a0,sp,96
    8004e922:	d3efe0ef          	jal	ra,8004ce60 <parse_digits>
quickjs-nuttx/libregexp.c:1180
            if (*p1 != '}') {
    8004e926:	7706                	ld	a4,96(sp)
    8004e928:	00074683          	lbu	a3,0(a4)
    8004e92c:	07d00713          	li	a4,125
    8004e930:	bdc5                	j	8004e820 <re_parse_alternative+0xaa>
quickjs-nuttx/libregexp.c:1190
        if (p[1] == '?') {
    8004e932:	00144683          	lbu	a3,1(s0)
    8004e936:	03f00713          	li	a4,63
    8004e93a:	26e69063          	bne	a3,a4,8004eb9a <re_parse_alternative+0x424>
quickjs-nuttx/libregexp.c:1191
            if (p[2] == ':') {
    8004e93e:	00244583          	lbu	a1,2(s0)
    8004e942:	03a00713          	li	a4,58
    8004e946:	02e59d63          	bne	a1,a4,8004e980 <re_parse_alternative+0x20a>
quickjs-nuttx/libregexp.c:1192
                p += 3;
    8004e94a:	00340713          	addi	a4,s0,3
quickjs-nuttx/libregexp.c:1195
                s->buf_ptr = p;
    8004e94e:	02ed3823          	sd	a4,48(s10)
quickjs-nuttx/libregexp.c:1196
                if (re_parse_disjunction(s, is_backward_dir))
    8004e952:	85ca                	mv	a1,s2
    8004e954:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1194
                last_capture_count = s->capture_count;
    8004e956:	058d2a03          	lw	s4,88(s10)
quickjs-nuttx/libregexp.c:1192
                p += 3;
    8004e95a:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1193
                last_atom_start = s->byte_code.size;
    8004e95c:	000b041b          	sext.w	s0,s6
quickjs-nuttx/libregexp.c:1196
                if (re_parse_disjunction(s, is_backward_dir))
    8004e960:	36b000ef          	jal	ra,8004f4ca <re_parse_disjunction>
    8004e964:	c119                	beqz	a0,8004e96a <re_parse_alternative+0x1f4>
re_parse_alternative():
quickjs-nuttx/libregexp.c:1648
                return -1;
    8004e966:	557d                	li	a0,-1
    8004e968:	bfb1                	j	8004e8c4 <re_parse_alternative+0x14e>
re_parse_term():
quickjs-nuttx/libregexp.c:1198
                p = s->buf_ptr;
    8004e96a:	030d3703          	ld	a4,48(s10)
    8004e96e:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1271
            if (re_parse_expect(s, &p, ')'))
    8004e970:	02900613          	li	a2,41
    8004e974:	100c                	addi	a1,sp,32
    8004e976:	856a                	mv	a0,s10
    8004e978:	b5aff0ef          	jal	ra,8004dcd2 <re_parse_expect>
    8004e97c:	c14d                	beqz	a0,8004ea1e <re_parse_alternative+0x2a8>
    8004e97e:	b7e5                	j	8004e966 <re_parse_alternative+0x1f0>
quickjs-nuttx/libregexp.c:1201
            } else if ((p[2] == '=' || p[2] == '!')) {
    8004e980:	03d00693          	li	a3,61
    8004e984:	00d58663          	beq	a1,a3,8004e990 <re_parse_alternative+0x21a>
    8004e988:	02100713          	li	a4,33
    8004e98c:	12e59f63          	bne	a1,a4,8004eaca <re_parse_alternative+0x354>
quickjs-nuttx/libregexp.c:1202
                is_neg = (p[2] == '!');
    8004e990:	fdf58593          	addi	a1,a1,-33
quickjs-nuttx/libregexp.c:1204
                p += 3;
    8004e994:	040d                	addi	s0,s0,3
quickjs-nuttx/libregexp.c:1202
                is_neg = (p[2] == '!');
    8004e996:	0015b593          	seqz	a1,a1
quickjs-nuttx/libregexp.c:1204
                p += 3;
    8004e99a:	f022                	sd	s0,32(sp)
quickjs-nuttx/libregexp.c:1203
                is_backward_lookahead = FALSE;
    8004e99c:	4981                	li	s3,0
quickjs-nuttx/libregexp.c:1216
                if (!s->is_utf16 && !is_backward_lookahead)  {
    8004e99e:	04cd2703          	lw	a4,76(s10)
    8004e9a2:	00e9e733          	or	a4,s3,a4
    8004e9a6:	14071463          	bnez	a4,8004eaee <re_parse_alternative+0x378>
quickjs-nuttx/libregexp.c:1218
                    last_capture_count = s->capture_count;
    8004e9aa:	058d2a03          	lw	s4,88(s10)
quickjs-nuttx/libregexp.c:1217
                    last_atom_start = s->byte_code.size;
    8004e9ae:	000b041b          	sext.w	s0,s6
quickjs-nuttx/libregexp.c:1220
                pos = re_emit_op_u32(s, REOP_lookahead + is_neg, 0);
    8004e9b2:	05dd                	addi	a1,a1,23
    8004e9b4:	4601                	li	a2,0
    8004e9b6:	856a                	mv	a0,s10
    8004e9b8:	b76ff0ef          	jal	ra,8004dd2e <re_emit_op_u32>
quickjs-nuttx/libregexp.c:1221
                s->buf_ptr = p;
    8004e9bc:	7702                	ld	a4,32(sp)
quickjs-nuttx/libregexp.c:1220
                pos = re_emit_op_u32(s, REOP_lookahead + is_neg, 0);
    8004e9be:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1222
                if (re_parse_disjunction(s, is_backward_lookahead))
    8004e9c0:	85ce                	mv	a1,s3
quickjs-nuttx/libregexp.c:1221
                s->buf_ptr = p;
    8004e9c2:	02ed3823          	sd	a4,48(s10)
quickjs-nuttx/libregexp.c:1222
                if (re_parse_disjunction(s, is_backward_lookahead))
    8004e9c6:	856a                	mv	a0,s10
    8004e9c8:	303000ef          	jal	ra,8004f4ca <re_parse_disjunction>
    8004e9cc:	fd49                	bnez	a0,8004e966 <re_parse_alternative+0x1f0>
quickjs-nuttx/libregexp.c:1224
                p = s->buf_ptr;
    8004e9ce:	030d3703          	ld	a4,48(s10)
quickjs-nuttx/libregexp.c:1225
                if (re_parse_expect(s, &p, ')'))
    8004e9d2:	02900613          	li	a2,41
    8004e9d6:	100c                	addi	a1,sp,32
    8004e9d8:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1224
                p = s->buf_ptr;
    8004e9da:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1225
                if (re_parse_expect(s, &p, ')'))
    8004e9dc:	af6ff0ef          	jal	ra,8004dcd2 <re_parse_expect>
    8004e9e0:	f159                	bnez	a0,8004e966 <re_parse_alternative+0x1f0>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004e9e2:	45a9                	li	a1,10
    8004e9e4:	856a                	mv	a0,s10
    8004e9e6:	0fc030ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1229
                if (dbuf_error(&s->byte_code))
    8004e9ea:	018d2703          	lw	a4,24(s10)
    8004e9ee:	ff25                	bnez	a4,8004e966 <re_parse_alternative+0x1f0>
quickjs-nuttx/libregexp.c:1231
                put_u32(s->byte_code.buf + pos, s->byte_code.size - (pos + 4));
    8004e9f0:	008d3503          	ld	a0,8(s10)
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8004e9f4:	000d3683          	ld	a3,0(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1231
    8004e9f8:	ffc5071b          	addiw	a4,a0,-4
    8004e9fc:	4097053b          	subw	a0,a4,s1
put_u32():
quickjs-nuttx/cutils.h:180
    8004ea00:	96a6                	add	a3,a3,s1
    8004ea02:	0085571b          	srliw	a4,a0,0x8
    8004ea06:	00a68023          	sb	a0,0(a3)
    8004ea0a:	00e680a3          	sb	a4,1(a3)
    8004ea0e:	0105571b          	srliw	a4,a0,0x10
    8004ea12:	0185551b          	srliw	a0,a0,0x18
    8004ea16:	00e68123          	sb	a4,2(a3)
    8004ea1a:	00a681a3          	sb	a0,3(a3)
re_parse_term():
quickjs-nuttx/libregexp.c:1421
    if (last_atom_start >= 0) {
    8004ea1e:	20044a63          	bltz	s0,8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1422
        c = *p;
    8004ea22:	7482                	ld	s1,32(sp)
quickjs-nuttx/libregexp.c:1423
        switch(c) {
    8004ea24:	03f00693          	li	a3,63
quickjs-nuttx/libregexp.c:1422
        c = *p;
    8004ea28:	0004c703          	lbu	a4,0(s1)
quickjs-nuttx/libregexp.c:1423
        switch(c) {
    8004ea2c:	5ed70063          	beq	a4,a3,8004f00c <re_parse_alternative+0x896>
    8004ea30:	5ae6e163          	bltu	a3,a4,8004efd2 <re_parse_alternative+0x85c>
    8004ea34:	02a00693          	li	a3,42
    8004ea38:	5cd70263          	beq	a4,a3,8004effc <re_parse_alternative+0x886>
    8004ea3c:	02b00693          	li	a3,43
    8004ea40:	1ed71963          	bne	a4,a3,8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1430
            p++;
    8004ea44:	0485                	addi	s1,s1,1
quickjs-nuttx/libregexp.c:1432
            quant_max = INT32_MAX;
    8004ea46:	80000737          	lui	a4,0x80000
quickjs-nuttx/libregexp.c:1430
            p++;
    8004ea4a:	f026                	sd	s1,32(sp)
quickjs-nuttx/libregexp.c:1432
            quant_max = INT32_MAX;
    8004ea4c:	fff74c93          	not	s9,a4
quickjs-nuttx/libregexp.c:1431
            quant_min = 1;
    8004ea50:	4c05                	li	s8,1
quickjs-nuttx/libregexp.c:1474
            if (*p == '?') {
    8004ea52:	7602                	ld	a2,32(sp)
    8004ea54:	03f00593          	li	a1,63
    8004ea58:	00064503          	lbu	a0,0(a2)
    8004ea5c:	62b51663          	bne	a0,a1,8004f088 <re_parse_alternative+0x912>
quickjs-nuttx/libregexp.c:1475
                p++;
    8004ea60:	0605                	addi	a2,a2,1
    8004ea62:	f032                	sd	a2,32(sp)
quickjs-nuttx/libregexp.c:1476
                greedy = FALSE;
    8004ea64:	4a81                	li	s5,0
quickjs-nuttx/libregexp.c:1519
                add_zero_advance_check = FALSE;
    8004ea66:	4481                	li	s1,0
quickjs-nuttx/libregexp.c:1524
                len = s->byte_code.size - last_atom_start;
    8004ea68:	008d3983          	ld	s3,8(s10)
    8004ea6c:	0004061b          	sext.w	a2,s0
    8004ea70:	40898dbb          	subw	s11,s3,s0
    8004ea74:	89ee                	mv	s3,s11
quickjs-nuttx/libregexp.c:1525
                if (quant_min == 0) {
    8004ea76:	120c1de3          	bnez	s8,8004f3b0 <re_parse_alternative+0xc3a>
quickjs-nuttx/libregexp.c:1528
                    if (last_capture_count != s->capture_count) {
    8004ea7a:	058d2683          	lw	a3,88(s10)
    8004ea7e:	05468163          	beq	a3,s4,8004eac0 <re_parse_alternative+0x34a>
quickjs-nuttx/libregexp.c:1529
                        if (dbuf_insert(&s->byte_code, last_atom_start, 3))
    8004ea82:	460d                	li	a2,3
    8004ea84:	85a2                	mv	a1,s0
    8004ea86:	856a                	mv	a0,s10
    8004ea88:	c6efe0ef          	jal	ra,8004cef6 <dbuf_insert>
    8004ea8c:	220516e3          	bnez	a0,8004f4b8 <re_parse_alternative+0xd42>
quickjs-nuttx/libregexp.c:1531
                        s->byte_code.buf[last_atom_start++] = REOP_save_reset;
    8004ea90:	000d3683          	ld	a3,0(s10)
    8004ea94:	4635                	li	a2,13
quickjs-nuttx/libregexp.c:1532
                        s->byte_code.buf[last_atom_start++] = last_capture_count;
    8004ea96:	0014059b          	addiw	a1,s0,1
quickjs-nuttx/libregexp.c:1531
                        s->byte_code.buf[last_atom_start++] = REOP_save_reset;
    8004ea9a:	96a2                	add	a3,a3,s0
    8004ea9c:	00c68023          	sb	a2,0(a3)
quickjs-nuttx/libregexp.c:1532
                        s->byte_code.buf[last_atom_start++] = last_capture_count;
    8004eaa0:	000d3603          	ld	a2,0(s10)
    8004eaa4:	0024069b          	addiw	a3,s0,2
quickjs-nuttx/libregexp.c:1533
                        s->byte_code.buf[last_atom_start++] = s->capture_count - 1;
    8004eaa8:	240d                	addiw	s0,s0,3
quickjs-nuttx/libregexp.c:1532
                        s->byte_code.buf[last_atom_start++] = last_capture_count;
    8004eaaa:	962e                	add	a2,a2,a1
    8004eaac:	01460023          	sb	s4,0(a2)
quickjs-nuttx/libregexp.c:1533
                        s->byte_code.buf[last_atom_start++] = s->capture_count - 1;
    8004eab0:	000d3603          	ld	a2,0(s10)
    8004eab4:	96b2                	add	a3,a3,a2
    8004eab6:	058d2603          	lw	a2,88(s10)
    8004eaba:	367d                	addiw	a2,a2,-1
    8004eabc:	00c68023          	sb	a2,0(a3)
quickjs-nuttx/libregexp.c:1535
                    if (quant_max == 0) {
    8004eac0:	7a0c9463          	bnez	s9,8004f268 <re_parse_alternative+0xaf2>
quickjs-nuttx/libregexp.c:1536
                        s->byte_code.size = last_atom_start;
    8004eac4:	008d3423          	sd	s0,8(s10)
    8004eac8:	a2ad                	j	8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1206
            } else if (p[2] == '<' &&
    8004eaca:	03c00613          	li	a2,60
    8004eace:	0cc59163          	bne	a1,a2,8004eb90 <re_parse_alternative+0x41a>
quickjs-nuttx/libregexp.c:1207
                       (p[3] == '=' || p[3] == '!')) {
    8004ead2:	00344583          	lbu	a1,3(s0)
quickjs-nuttx/libregexp.c:1206
            } else if (p[2] == '<' &&
    8004ead6:	00d58463          	beq	a1,a3,8004eade <re_parse_alternative+0x368>
quickjs-nuttx/libregexp.c:1207
                       (p[3] == '=' || p[3] == '!')) {
    8004eada:	00e59d63          	bne	a1,a4,8004eaf4 <re_parse_alternative+0x37e>
quickjs-nuttx/libregexp.c:1209
                is_neg = (p[3] == '!');
    8004eade:	fdf58593          	addi	a1,a1,-33
quickjs-nuttx/libregexp.c:1211
                p += 4;
    8004eae2:	0411                	addi	s0,s0,4
quickjs-nuttx/libregexp.c:1209
                is_neg = (p[3] == '!');
    8004eae4:	0015b593          	seqz	a1,a1
quickjs-nuttx/libregexp.c:1211
                p += 4;
    8004eae8:	f022                	sd	s0,32(sp)
quickjs-nuttx/libregexp.c:1210
                is_backward_lookahead = TRUE;
    8004eaea:	4985                	li	s3,1
    8004eaec:	bd4d                	j	8004e99e <re_parse_alternative+0x228>
quickjs-nuttx/libregexp.c:1141
    last_capture_count = 0;
    8004eaee:	4a01                	li	s4,0
quickjs-nuttx/libregexp.c:1140
    last_atom_start = -1;
    8004eaf0:	547d                	li	s0,-1
    8004eaf2:	b5c1                	j	8004e9b2 <re_parse_alternative+0x23c>
quickjs-nuttx/libregexp.c:1233
                p += 3;
    8004eaf4:	040d                	addi	s0,s0,3
    8004eaf6:	f022                	sd	s0,32(sp)
quickjs-nuttx/libregexp.c:1234
                if (re_parse_group_name(s->u.tmp_buf, sizeof(s->u.tmp_buf),
    8004eaf8:	0a0d0413          	addi	s0,s10,160
    8004eafc:	100c                	addi	a1,sp,32
    8004eafe:	8522                	mv	a0,s0
    8004eb00:	9dfff0ef          	jal	ra,8004e4de <re_parse_group_name.constprop.0>
    8004eb04:	c511                	beqz	a0,8004eb10 <re_parse_alternative+0x39a>
quickjs-nuttx/libregexp.c:1301
                        return re_parse_error(s, "invalid group name");
    8004eb06:	00027597          	auipc	a1,0x27
    8004eb0a:	9aa58593          	addi	a1,a1,-1622 # 800754b0 <unescaped_chars.0+0x2c0>
    8004eb0e:	b375                	j	8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1238
                if (find_group_name(s, s->u.tmp_buf) > 0) {
    8004eb10:	85a2                	mv	a1,s0
    8004eb12:	856a                	mv	a0,s10
    8004eb14:	c30fe0ef          	jal	ra,8004cf44 <find_group_name>
quickjs-nuttx/libregexp.c:1239
                    return re_parse_error(s, "duplicate group name");
    8004eb18:	00027597          	auipc	a1,0x27
    8004eb1c:	9b058593          	addi	a1,a1,-1616 # 800754c8 <unescaped_chars.0+0x2d8>
quickjs-nuttx/libregexp.c:1238
                if (find_group_name(s, s->u.tmp_buf) > 0) {
    8004eb20:	d8a04de3          	bgtz	a0,8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1243
                         strlen(s->u.tmp_buf) + 1);
    8004eb24:	8522                	mv	a0,s0
    8004eb26:	25c150ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/libregexp.c:1242
                dbuf_put(&s->group_names, (uint8_t *)s->u.tmp_buf,
    8004eb2a:	00150613          	addi	a2,a0,1
    8004eb2e:	85a2                	mv	a1,s0
    8004eb30:	070d0513          	addi	a0,s10,112
    8004eb34:	71d020ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/libregexp.c:1244
                s->has_named_captures = 1;
    8004eb38:	4705                	li	a4,1
    8004eb3a:	06ed2023          	sw	a4,96(s10)
quickjs-nuttx/libregexp.c:1255
            if (s->capture_count >= CAPTURE_COUNT_MAX)
    8004eb3e:	058d2a03          	lw	s4,88(s10)
    8004eb42:	0fe00713          	li	a4,254
quickjs-nuttx/libregexp.c:1256
                return re_parse_error(s, "too many captures");
    8004eb46:	00027597          	auipc	a1,0x27
    8004eb4a:	9aa58593          	addi	a1,a1,-1622 # 800754f0 <unescaped_chars.0+0x300>
quickjs-nuttx/libregexp.c:1255
            if (s->capture_count >= CAPTURE_COUNT_MAX)
    8004eb4e:	d74746e3          	blt	a4,s4,8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1260
            re_emit_op_u8(s, REOP_save_start + is_backward_dir,
    8004eb52:	65a2                	ld	a1,8(sp)
quickjs-nuttx/libregexp.c:1259
            capture_index = s->capture_count++;
    8004eb54:	001a071b          	addiw	a4,s4,1
    8004eb58:	04ed2c23          	sw	a4,88(s10)
quickjs-nuttx/libregexp.c:1260
            re_emit_op_u8(s, REOP_save_start + is_backward_dir,
    8004eb5c:	000a061b          	sext.w	a2,s4
    8004eb60:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1257
            last_atom_start = s->byte_code.size;
    8004eb62:	008d2403          	lw	s0,8(s10)
quickjs-nuttx/libregexp.c:1260
            re_emit_op_u8(s, REOP_save_start + is_backward_dir,
    8004eb66:	ec32                	sd	a2,24(sp)
    8004eb68:	b68fe0ef          	jal	ra,8004ced0 <re_emit_op_u8>
quickjs-nuttx/libregexp.c:1263
            s->buf_ptr = p;
    8004eb6c:	7702                	ld	a4,32(sp)
quickjs-nuttx/libregexp.c:1264
            if (re_parse_disjunction(s, is_backward_dir))
    8004eb6e:	85ca                	mv	a1,s2
    8004eb70:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1263
            s->buf_ptr = p;
    8004eb72:	02ed3823          	sd	a4,48(s10)
quickjs-nuttx/libregexp.c:1264
            if (re_parse_disjunction(s, is_backward_dir))
    8004eb76:	155000ef          	jal	ra,8004f4ca <re_parse_disjunction>
    8004eb7a:	de0516e3          	bnez	a0,8004e966 <re_parse_alternative+0x1f0>
quickjs-nuttx/libregexp.c:1266
            p = s->buf_ptr;
    8004eb7e:	030d3703          	ld	a4,48(s10)
quickjs-nuttx/libregexp.c:1268
            re_emit_op_u8(s, REOP_save_start + 1 - is_backward_dir,
    8004eb82:	6662                	ld	a2,24(sp)
    8004eb84:	65c2                	ld	a1,16(sp)
    8004eb86:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1266
            p = s->buf_ptr;
    8004eb88:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1268
            re_emit_op_u8(s, REOP_save_start + 1 - is_backward_dir,
    8004eb8a:	b46fe0ef          	jal	ra,8004ced0 <re_emit_op_u8>
    8004eb8e:	b3cd                	j	8004e970 <re_parse_alternative+0x1fa>
quickjs-nuttx/libregexp.c:1247
                return re_parse_error(s, "invalid group");
    8004eb90:	00027597          	auipc	a1,0x27
    8004eb94:	95058593          	addi	a1,a1,-1712 # 800754e0 <unescaped_chars.0+0x2f0>
    8004eb98:	b30d                	j	8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1251
            p++;
    8004eb9a:	0405                	addi	s0,s0,1
quickjs-nuttx/libregexp.c:1253
            dbuf_putc(&s->group_names, 0);
    8004eb9c:	4581                	li	a1,0
    8004eb9e:	070d0513          	addi	a0,s10,112
quickjs-nuttx/libregexp.c:1251
            p++;
    8004eba2:	f022                	sd	s0,32(sp)
quickjs-nuttx/libregexp.c:1253
            dbuf_putc(&s->group_names, 0);
    8004eba4:	73f020ef          	jal	ra,80051ae2 <dbuf_putc>
    8004eba8:	bf59                	j	8004eb3e <re_parse_alternative+0x3c8>
quickjs-nuttx/libregexp.c:1276
        switch(p[1]) {
    8004ebaa:	00144703          	lbu	a4,1(s0)
    8004ebae:	04200693          	li	a3,66
    8004ebb2:	06d70963          	beq	a4,a3,8004ec24 <re_parse_alternative+0x4ae>
    8004ebb6:	04e6e063          	bltu	a3,a4,8004ebf6 <re_parse_alternative+0x480>
    8004ebba:	03000693          	li	a3,48
    8004ebbe:	16d70363          	beq	a4,a3,8004ed24 <re_parse_alternative+0x5ae>
    8004ebc2:	fcf7071b          	addiw	a4,a4,-49
    8004ebc6:	0ff77713          	zext.b	a4,a4
    8004ebca:	46a1                	li	a3,8
    8004ebcc:	c2e6eae3          	bltu	a3,a4,8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1341
                const uint8_t *q = ++p;
    8004ebd0:	00140993          	addi	s3,s0,1
quickjs-nuttx/libregexp.c:1343
                c = parse_digits(&p, FALSE);
    8004ebd4:	4581                	li	a1,0
    8004ebd6:	1008                	addi	a0,sp,32
quickjs-nuttx/libregexp.c:1341
                const uint8_t *q = ++p;
    8004ebd8:	f04e                	sd	s3,32(sp)
quickjs-nuttx/libregexp.c:1343
                c = parse_digits(&p, FALSE);
    8004ebda:	a86fe0ef          	jal	ra,8004ce60 <parse_digits>
    8004ebde:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1344
                if (c < 0 || (c >= s->capture_count && c >= re_count_captures(s))) {
    8004ebe0:	1e055063          	bgez	a0,8004edc0 <re_parse_alternative+0x64a>
quickjs-nuttx/libregexp.c:1345
                    if (!s->is_utf16) {
    8004ebe4:	04cd2483          	lw	s1,76(s10)
    8004ebe8:	1e048663          	beqz	s1,8004edd4 <re_parse_alternative+0x65e>
quickjs-nuttx/libregexp.c:1363
                    return re_parse_error(s, "back reference out of range in regular expression");
    8004ebec:	00027597          	auipc	a1,0x27
    8004ebf0:	97c58593          	addi	a1,a1,-1668 # 80075568 <unescaped_chars.0+0x378>
    8004ebf4:	b1d9                	j	8004e8ba <re_parse_alternative+0x144>
    8004ebf6:	06200693          	li	a3,98
    8004ebfa:	08d70063          	beq	a4,a3,8004ec7a <re_parse_alternative+0x504>
    8004ebfe:	06b00693          	li	a3,107
    8004ec02:	bed71fe3          	bne	a4,a3,8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1287
                p1 = p;
    8004ec06:	f0a2                	sd	s0,96(sp)
quickjs-nuttx/libregexp.c:1288
                if (p1[2] != '<') {
    8004ec08:	00244683          	lbu	a3,2(s0)
    8004ec0c:	03c00713          	li	a4,60
    8004ec10:	08e68263          	beq	a3,a4,8004ec94 <re_parse_alternative+0x51e>
quickjs-nuttx/libregexp.c:1292
                    if (s->is_utf16 || re_has_named_captures(s))
    8004ec14:	04cd2703          	lw	a4,76(s10)
    8004ec18:	c33d                	beqz	a4,8004ec7e <re_parse_alternative+0x508>
quickjs-nuttx/libregexp.c:1293
                        return re_parse_error(s, "expecting group name");
    8004ec1a:	00027597          	auipc	a1,0x27
    8004ec1e:	8ee58593          	addi	a1,a1,-1810 # 80075508 <unescaped_chars.0+0x318>
    8004ec22:	b961                	j	8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1279
            re_emit_op(s, REOP_word_boundary + (p[1] != 'b'));
    8004ec24:	45c9                	li	a1,18
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004ec26:	856a                	mv	a0,s10
    8004ec28:	6bb020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1280
            p += 2;
    8004ec2c:	7702                	ld	a4,32(sp)
    8004ec2e:	0709                	addi	a4,a4,2
    8004ec30:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1619
    s->buf_ptr = p;
    8004ec32:	7702                	ld	a4,32(sp)
    8004ec34:	02ed3823          	sd	a4,48(s10)
re_parse_alternative():
quickjs-nuttx/libregexp.c:1642
        if (is_backward_dir) {
    8004ec38:	b6090be3          	beqz	s2,8004e7ae <re_parse_alternative+0x38>
quickjs-nuttx/libregexp.c:1645
            end = s->byte_code.size;
    8004ec3c:	008d3403          	ld	s0,8(s10)
quickjs-nuttx/libregexp.c:1647
            if (dbuf_realloc(&s->byte_code, end + term_size))
    8004ec40:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1646
            term_size = end - term_start;
    8004ec42:	41640b33          	sub	s6,s0,s6
quickjs-nuttx/libregexp.c:1647
            if (dbuf_realloc(&s->byte_code, end + term_size))
    8004ec46:	016405b3          	add	a1,s0,s6
    8004ec4a:	565020ef          	jal	ra,800519ae <dbuf_realloc>
    8004ec4e:	d0051ce3          	bnez	a0,8004e966 <re_parse_alternative+0x1f0>
quickjs-nuttx/libregexp.c:1649
            memmove(s->byte_code.buf + start + term_size,
    8004ec52:	000d3703          	ld	a4,0(s10)
    8004ec56:	016b8533          	add	a0,s7,s6
    8004ec5a:	41740633          	sub	a2,s0,s7
    8004ec5e:	017705b3          	add	a1,a4,s7
    8004ec62:	953a                	add	a0,a0,a4
    8004ec64:	79d140ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/libregexp.c:1652
            memcpy(s->byte_code.buf + start, s->byte_code.buf + end,
    8004ec68:	000d3503          	ld	a0,0(s10)
    8004ec6c:	865a                	mv	a2,s6
    8004ec6e:	008505b3          	add	a1,a0,s0
    8004ec72:	955e                	add	a0,a0,s7
    8004ec74:	138150ef          	jal	ra,80063dac <memcpy>
    8004ec78:	be05                	j	8004e7a8 <re_parse_alternative+0x32>
re_parse_term():
quickjs-nuttx/libregexp.c:1279
            re_emit_op(s, REOP_word_boundary + (p[1] != 'b'));
    8004ec7a:	45c5                	li	a1,17
    8004ec7c:	b76d                	j	8004ec26 <re_parse_alternative+0x4b0>
re_has_named_captures():
quickjs-nuttx/libregexp.c:1106
    if (s->has_named_captures < 0)
    8004ec7e:	060d2703          	lw	a4,96(s10)
    8004ec82:	00075563          	bgez	a4,8004ec8c <re_parse_alternative+0x516>
quickjs-nuttx/libregexp.c:1107
        re_count_captures(s);
    8004ec86:	856a                	mv	a0,s10
    8004ec88:	acbff0ef          	jal	ra,8004e752 <re_count_captures>
re_parse_term():
quickjs-nuttx/libregexp.c:1292
                    if (s->is_utf16 || re_has_named_captures(s))
    8004ec8c:	060d2703          	lw	a4,96(s10)
    8004ec90:	f749                	bnez	a4,8004ec1a <re_parse_alternative+0x4a4>
    8004ec92:	b6bd                	j	8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1297
                p1 += 3;
    8004ec94:	040d                	addi	s0,s0,3
    8004ec96:	f0a2                	sd	s0,96(sp)
quickjs-nuttx/libregexp.c:1298
                if (re_parse_group_name(s->u.tmp_buf, sizeof(s->u.tmp_buf),
    8004ec98:	0a0d0413          	addi	s0,s10,160
    8004ec9c:	108c                	addi	a1,sp,96
    8004ec9e:	8522                	mv	a0,s0
    8004eca0:	83fff0ef          	jal	ra,8004e4de <re_parse_group_name.constprop.0>
    8004eca4:	c10d                	beqz	a0,8004ecc6 <re_parse_alternative+0x550>
quickjs-nuttx/libregexp.c:1300
                    if (s->is_utf16 || re_has_named_captures(s))
    8004eca6:	04cd2703          	lw	a4,76(s10)
    8004ecaa:	e4071ee3          	bnez	a4,8004eb06 <re_parse_alternative+0x390>
re_has_named_captures():
quickjs-nuttx/libregexp.c:1106
    if (s->has_named_captures < 0)
    8004ecae:	060d2703          	lw	a4,96(s10)
    8004ecb2:	00075563          	bgez	a4,8004ecbc <re_parse_alternative+0x546>
quickjs-nuttx/libregexp.c:1107
        re_count_captures(s);
    8004ecb6:	856a                	mv	a0,s10
    8004ecb8:	a9bff0ef          	jal	ra,8004e752 <re_count_captures>
re_parse_term():
quickjs-nuttx/libregexp.c:1300
                    if (s->is_utf16 || re_has_named_captures(s))
    8004ecbc:	060d2703          	lw	a4,96(s10)
    8004ecc0:	e40713e3          	bnez	a4,8004eb06 <re_parse_alternative+0x390>
    8004ecc4:	be35                	j	8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1305
                c = find_group_name(s, s->u.tmp_buf);
    8004ecc6:	85a2                	mv	a1,s0
    8004ecc8:	856a                	mv	a0,s10
    8004ecca:	a7afe0ef          	jal	ra,8004cf44 <find_group_name>
    8004ecce:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1306
                if (c < 0) {
    8004ecd0:	02055d63          	bgez	a0,8004ed0a <re_parse_alternative+0x594>
quickjs-nuttx/libregexp.c:1309
                    c = re_parse_captures(s, &dummy_res, s->u.tmp_buf);
    8004ecd4:	8622                	mv	a2,s0
    8004ecd6:	008c                	addi	a1,sp,64
    8004ecd8:	856a                	mv	a0,s10
    8004ecda:	98dff0ef          	jal	ra,8004e666 <re_parse_captures>
    8004ecde:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1310
                    if (c < 0) {
    8004ece0:	02055563          	bgez	a0,8004ed0a <re_parse_alternative+0x594>
quickjs-nuttx/libregexp.c:1311
                        if (s->is_utf16 || re_has_named_captures(s))
    8004ece4:	04cd2703          	lw	a4,76(s10)
    8004ece8:	c711                	beqz	a4,8004ecf4 <re_parse_alternative+0x57e>
quickjs-nuttx/libregexp.c:1312
                            return re_parse_error(s, "group name not defined");
    8004ecea:	00027597          	auipc	a1,0x27
    8004ecee:	83658593          	addi	a1,a1,-1994 # 80075520 <unescaped_chars.0+0x330>
    8004ecf2:	b6e1                	j	8004e8ba <re_parse_alternative+0x144>
re_has_named_captures():
quickjs-nuttx/libregexp.c:1106
    if (s->has_named_captures < 0)
    8004ecf4:	060d2703          	lw	a4,96(s10)
    8004ecf8:	00075563          	bgez	a4,8004ed02 <re_parse_alternative+0x58c>
quickjs-nuttx/libregexp.c:1107
        re_count_captures(s);
    8004ecfc:	856a                	mv	a0,s10
    8004ecfe:	a55ff0ef          	jal	ra,8004e752 <re_count_captures>
re_parse_term():
quickjs-nuttx/libregexp.c:1311
                        if (s->is_utf16 || re_has_named_captures(s))
    8004ed02:	060d2703          	lw	a4,96(s10)
    8004ed06:	f375                	bnez	a4,8004ecea <re_parse_alternative+0x574>
    8004ed08:	bce5                	j	8004e800 <re_parse_alternative+0x8a>
quickjs-nuttx/libregexp.c:1317
                p = p1;
    8004ed0a:	7706                	ld	a4,96(sp)
    8004ed0c:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1368
                re_emit_op_u8(s, REOP_back_reference + is_backward_dir, c);
    8004ed0e:	6582                	ld	a1,0(sp)
    8004ed10:	0004861b          	sext.w	a2,s1
    8004ed14:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1366
                last_atom_start = s->byte_code.size;
    8004ed16:	008d2403          	lw	s0,8(s10)
quickjs-nuttx/libregexp.c:1367
                last_capture_count = s->capture_count;
    8004ed1a:	058d2a03          	lw	s4,88(s10)
quickjs-nuttx/libregexp.c:1368
                re_emit_op_u8(s, REOP_back_reference + is_backward_dir, c);
    8004ed1e:	9b2fe0ef          	jal	ra,8004ced0 <re_emit_op_u8>
quickjs-nuttx/libregexp.c:1370
            break;
    8004ed22:	b9f5                	j	8004ea1e <re_parse_alternative+0x2a8>
quickjs-nuttx/libregexp.c:1323
            if (s->is_utf16) {
    8004ed24:	04cd2483          	lw	s1,76(s10)
quickjs-nuttx/libregexp.c:1321
            p += 2;
    8004ed28:	00240713          	addi	a4,s0,2
    8004ed2c:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1323
            if (s->is_utf16) {
    8004ed2e:	c4b1                	beqz	s1,8004ed7a <re_parse_alternative+0x604>
is_digit():
quickjs-nuttx/libregexp.c:107
    return c >= '0' && c <= '9';
    8004ed30:	00244703          	lbu	a4,2(s0)
re_parse_term():
quickjs-nuttx/libregexp.c:1324
                if (is_digit(*p)) {
    8004ed34:	46a5                	li	a3,9
quickjs-nuttx/libregexp.c:1322
            c = 0;
    8004ed36:	4481                	li	s1,0
quickjs-nuttx/libregexp.c:1324
                if (is_digit(*p)) {
    8004ed38:	fd07071b          	addiw	a4,a4,-48
quickjs-nuttx/libregexp.c:1325
                    return re_parse_error(s, "invalid decimal escape in regular expression");
    8004ed3c:	00026597          	auipc	a1,0x26
    8004ed40:	7fc58593          	addi	a1,a1,2044 # 80075538 <unescaped_chars.0+0x348>
quickjs-nuttx/libregexp.c:1324
                if (is_digit(*p)) {
    8004ed44:	b6e6fbe3          	bgeu	a3,a4,8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1396
        last_atom_start = s->byte_code.size;
    8004ed48:	008d2403          	lw	s0,8(s10)
quickjs-nuttx/libregexp.c:1397
        last_capture_count = s->capture_count;
    8004ed4c:	058d2a03          	lw	s4,88(s10)
quickjs-nuttx/libregexp.c:1398
        if (is_backward_dir)
    8004ed50:	00090663          	beqz	s2,8004ed5c <re_parse_alternative+0x5e6>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004ed54:	45ed                	li	a1,27
    8004ed56:	856a                	mv	a0,s10
    8004ed58:	58b020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1400
        if (c >= CLASS_RANGE_BASE) {
    8004ed5c:	40000737          	lui	a4,0x40000
    8004ed60:	22e4cf63          	blt	s1,a4,8004ef9e <re_parse_alternative+0x828>
quickjs-nuttx/libregexp.c:1403
            ret = re_emit_range(s, cr);
    8004ed64:	108c                	addi	a1,sp,96
    8004ed66:	856a                	mv	a0,s10
    8004ed68:	824ff0ef          	jal	ra,8004dd8c <re_emit_range>
    8004ed6c:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1404
            cr_free(cr);
    8004ed6e:	1088                	addi	a0,sp,96
    8004ed70:	02f010ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:1405
            if (ret)
    8004ed74:	b20485e3          	beqz	s1,8004e89e <re_parse_alternative+0x128>
    8004ed78:	b6fd                	j	8004e966 <re_parse_alternative+0x1f0>
quickjs-nuttx/libregexp.c:1329
                if (*p >= '0' && *p <= '7') {
    8004ed7a:	00244703          	lbu	a4,2(s0)
    8004ed7e:	469d                	li	a3,7
    8004ed80:	fd07071b          	addiw	a4,a4,-48
    8004ed84:	0ff77713          	zext.b	a4,a4
    8004ed88:	fce6e0e3          	bltu	a3,a4,8004ed48 <re_parse_alternative+0x5d2>
quickjs-nuttx/libregexp.c:1330
                    c = *p++ - '0';
    8004ed8c:	00340713          	addi	a4,s0,3
    8004ed90:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1331
                    if (*p >= '0' && *p <= '7') {
    8004ed92:	00344703          	lbu	a4,3(s0)
quickjs-nuttx/libregexp.c:1330
                    c = *p++ - '0';
    8004ed96:	00244503          	lbu	a0,2(s0)
quickjs-nuttx/libregexp.c:1331
                    if (*p >= '0' && *p <= '7') {
    8004ed9a:	fd07071b          	addiw	a4,a4,-48
    8004ed9e:	0ff77713          	zext.b	a4,a4
quickjs-nuttx/libregexp.c:1330
                    c = *p++ - '0';
    8004eda2:	fd05049b          	addiw	s1,a0,-48
quickjs-nuttx/libregexp.c:1331
                    if (*p >= '0' && *p <= '7') {
    8004eda6:	fae6e1e3          	bltu	a3,a4,8004ed48 <re_parse_alternative+0x5d2>
quickjs-nuttx/libregexp.c:1332
                        c = (c << 3) + *p++ - '0';
    8004edaa:	00440713          	addi	a4,s0,4
    8004edae:	f03a                	sd	a4,32(sp)
    8004edb0:	0034951b          	slliw	a0,s1,0x3
    8004edb4:	00344483          	lbu	s1,3(s0)
quickjs-nuttx/libregexp.c:1355
                                    c = (c << 3) + *p++ - '0';
    8004edb8:	fd04849b          	addiw	s1,s1,-48
    8004edbc:	9ca9                	addw	s1,s1,a0
    8004edbe:	b769                	j	8004ed48 <re_parse_alternative+0x5d2>
quickjs-nuttx/libregexp.c:1344
                if (c < 0 || (c >= s->capture_count && c >= re_count_captures(s))) {
    8004edc0:	058d2703          	lw	a4,88(s10)
    8004edc4:	f4e545e3          	blt	a0,a4,8004ed0e <re_parse_alternative+0x598>
    8004edc8:	856a                	mv	a0,s10
    8004edca:	989ff0ef          	jal	ra,8004e752 <re_count_captures>
    8004edce:	e0a4dbe3          	bge	s1,a0,8004ebe4 <re_parse_alternative+0x46e>
    8004edd2:	bf35                	j	8004ed0e <re_parse_alternative+0x598>
quickjs-nuttx/libregexp.c:1347
                        p = q;
    8004edd4:	f04e                	sd	s3,32(sp)
quickjs-nuttx/libregexp.c:1348
                        if (*p <= '7') {
    8004edd6:	00144703          	lbu	a4,1(s0)
    8004edda:	03700693          	li	a3,55
    8004edde:	06e6e163          	bltu	a3,a4,8004ee40 <re_parse_alternative+0x6ca>
quickjs-nuttx/libregexp.c:1350
                            if (*p <= '3')
    8004ede2:	03300693          	li	a3,51
    8004ede6:	00e6e963          	bltu	a3,a4,8004edf8 <re_parse_alternative+0x682>
quickjs-nuttx/libregexp.c:1351
                                c = *p++ - '0';
    8004edea:	00240713          	addi	a4,s0,2
    8004edee:	f03a                	sd	a4,32(sp)
    8004edf0:	00144483          	lbu	s1,1(s0)
    8004edf4:	fd04849b          	addiw	s1,s1,-48
quickjs-nuttx/libregexp.c:1352
                            if (*p >= '0' && *p <= '7') {
    8004edf8:	7702                	ld	a4,32(sp)
    8004edfa:	461d                	li	a2,7
    8004edfc:	00074683          	lbu	a3,0(a4) # 40000000 <asinh-0x40000000>
    8004ee00:	fd06869b          	addiw	a3,a3,-48
    8004ee04:	0ff6f693          	zext.b	a3,a3
    8004ee08:	f4d660e3          	bltu	a2,a3,8004ed48 <re_parse_alternative+0x5d2>
quickjs-nuttx/libregexp.c:1353
                                c = (c << 3) + *p++ - '0';
    8004ee0c:	00170693          	addi	a3,a4,1
    8004ee10:	f036                	sd	a3,32(sp)
quickjs-nuttx/libregexp.c:1354
                                if (*p >= '0' && *p <= '7') {
    8004ee12:	00174683          	lbu	a3,1(a4)
quickjs-nuttx/libregexp.c:1353
                                c = (c << 3) + *p++ - '0';
    8004ee16:	00074503          	lbu	a0,0(a4)
    8004ee1a:	0034949b          	slliw	s1,s1,0x3
quickjs-nuttx/libregexp.c:1354
                                if (*p >= '0' && *p <= '7') {
    8004ee1e:	fd06869b          	addiw	a3,a3,-48
quickjs-nuttx/libregexp.c:1353
                                c = (c << 3) + *p++ - '0';
    8004ee22:	fd05051b          	addiw	a0,a0,-48
quickjs-nuttx/libregexp.c:1354
                                if (*p >= '0' && *p <= '7') {
    8004ee26:	0ff6f693          	zext.b	a3,a3
quickjs-nuttx/libregexp.c:1353
                                c = (c << 3) + *p++ - '0';
    8004ee2a:	9ca9                	addw	s1,s1,a0
quickjs-nuttx/libregexp.c:1354
                                if (*p >= '0' && *p <= '7') {
    8004ee2c:	f0d66ee3          	bltu	a2,a3,8004ed48 <re_parse_alternative+0x5d2>
quickjs-nuttx/libregexp.c:1355
                                    c = (c << 3) + *p++ - '0';
    8004ee30:	00270693          	addi	a3,a4,2
    8004ee34:	f036                	sd	a3,32(sp)
    8004ee36:	0034951b          	slliw	a0,s1,0x3
    8004ee3a:	00174483          	lbu	s1,1(a4)
    8004ee3e:	bfad                	j	8004edb8 <re_parse_alternative+0x642>
quickjs-nuttx/libregexp.c:1359
                            c = *p++;
    8004ee40:	00240713          	addi	a4,s0,2
    8004ee44:	f03a                	sd	a4,32(sp)
    8004ee46:	00144483          	lbu	s1,1(s0)
    8004ee4a:	bdfd                	j	8004ed48 <re_parse_alternative+0x5d2>
quickjs-nuttx/libregexp.c:1377
        last_capture_count = s->capture_count;
    8004ee4c:	058d2a03          	lw	s4,88(s10)
quickjs-nuttx/libregexp.c:1376
        last_atom_start = s->byte_code.size;
    8004ee50:	000b041b          	sext.w	s0,s6
quickjs-nuttx/libregexp.c:1378
        if (is_backward_dir)
    8004ee54:	00090663          	beqz	s2,8004ee60 <re_parse_alternative+0x6ea>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004ee58:	45ed                	li	a1,27
    8004ee5a:	856a                	mv	a0,s10
    8004ee5c:	487020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_char_class():
quickjs-nuttx/libregexp.c:811
    cr_init(cr, s->opaque, lre_realloc);
    8004ee60:	068d3583          	ld	a1,104(s10)
    8004ee64:	fffc0617          	auipc	a2,0xfffc0
    8004ee68:	08e60613          	addi	a2,a2,142 # 8000eef2 <lre_realloc>
    8004ee6c:	0088                	addi	a0,sp,64
    8004ee6e:	718010ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libregexp.c:812
    p = *pp;
    8004ee72:	7702                	ld	a4,32(sp)
quickjs-nuttx/libregexp.c:814
    invert = FALSE;
    8004ee74:	4981                	li	s3,0
quickjs-nuttx/libregexp.c:813
    p++;    /* skip '[' */
    8004ee76:	00170693          	addi	a3,a4,1
    8004ee7a:	f436                	sd	a3,40(sp)
quickjs-nuttx/libregexp.c:815
    if (*p == '^') {
    8004ee7c:	00174603          	lbu	a2,1(a4)
    8004ee80:	05e00693          	li	a3,94
    8004ee84:	00d61563          	bne	a2,a3,8004ee8e <re_parse_alternative+0x718>
quickjs-nuttx/libregexp.c:816
        p++;
    8004ee88:	0709                	addi	a4,a4,2
    8004ee8a:	f43a                	sd	a4,40(sp)
quickjs-nuttx/libregexp.c:817
        invert = TRUE;
    8004ee8c:	4985                	li	s3,1
quickjs-nuttx/libregexp.c:820
        if (*p == ']')
    8004ee8e:	05d00a93          	li	s5,93
quickjs-nuttx/libregexp.c:825
        if (*p == '-' && p[1] != ']') {
    8004ee92:	02d00d93          	li	s11,45
quickjs-nuttx/libregexp.c:856
            if (c1 >= CLASS_RANGE_BASE) {
    8004ee96:	400004b7          	lui	s1,0x40000
quickjs-nuttx/libregexp.c:820
        if (*p == ']')
    8004ee9a:	7722                	ld	a4,40(sp)
    8004ee9c:	00074703          	lbu	a4,0(a4)
    8004eea0:	0b570e63          	beq	a4,s5,8004ef5c <re_parse_alternative+0x7e6>
quickjs-nuttx/libregexp.c:822
        c1 = get_class_atom(s, cr1, &p, TRUE);
    8004eea4:	4685                	li	a3,1
    8004eea6:	1030                	addi	a2,sp,40
    8004eea8:	108c                	addi	a1,sp,96
    8004eeaa:	856a                	mv	a0,s10
    8004eeac:	9f2ff0ef          	jal	ra,8004e09e <get_class_atom>
    8004eeb0:	00050c1b          	sext.w	s8,a0
quickjs-nuttx/libregexp.c:823
        if ((int)c1 < 0)
    8004eeb4:	0a054e63          	bltz	a0,8004ef70 <re_parse_alternative+0x7fa>
quickjs-nuttx/libregexp.c:825
        if (*p == '-' && p[1] != ']') {
    8004eeb8:	76a2                	ld	a3,40(sp)
    8004eeba:	0006c603          	lbu	a2,0(a3)
    8004eebe:	05b61a63          	bne	a2,s11,8004ef12 <re_parse_alternative+0x79c>
    8004eec2:	0016c603          	lbu	a2,1(a3)
    8004eec6:	05560663          	beq	a2,s5,8004ef12 <re_parse_alternative+0x79c>
quickjs-nuttx/libregexp.c:826
            const uint8_t *p0 = p + 1;
    8004eeca:	0685                	addi	a3,a3,1
    8004eecc:	f836                	sd	a3,48(sp)
quickjs-nuttx/libregexp.c:827
            if (c1 >= CLASS_RANGE_BASE) {
    8004eece:	029c6063          	bltu	s8,s1,8004eeee <re_parse_alternative+0x778>
quickjs-nuttx/libregexp.c:828
                if (s->is_utf16) {
    8004eed2:	04cd2683          	lw	a3,76(s10)
    8004eed6:	ce95                	beqz	a3,8004ef12 <re_parse_alternative+0x79c>
quickjs-nuttx/libregexp.c:829
                    cr_free(cr1);
    8004eed8:	1088                	addi	a0,sp,96
    8004eeda:	6c4010ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:849
                re_parse_error(s, "invalid class range");
    8004eede:	00026597          	auipc	a1,0x26
    8004eee2:	6c258593          	addi	a1,a1,1730 # 800755a0 <unescaped_chars.0+0x3b0>
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004eee6:	856a                	mv	a0,s10
    8004eee8:	992fe0ef          	jal	ra,8004d07a <re_parse_error>
    8004eeec:	a051                	j	8004ef70 <re_parse_alternative+0x7fa>
re_parse_char_class():
quickjs-nuttx/libregexp.c:835
            c2 = get_class_atom(s, cr1, &p0, TRUE);
    8004eeee:	4685                	li	a3,1
    8004eef0:	1810                	addi	a2,sp,48
    8004eef2:	108c                	addi	a1,sp,96
    8004eef4:	856a                	mv	a0,s10
    8004eef6:	9a8ff0ef          	jal	ra,8004e09e <get_class_atom>
    8004eefa:	0005069b          	sext.w	a3,a0
quickjs-nuttx/libregexp.c:836
            if ((int)c2 < 0)
    8004eefe:	06054963          	bltz	a0,8004ef70 <re_parse_alternative+0x7fa>
quickjs-nuttx/libregexp.c:838
            if (c2 >= CLASS_RANGE_BASE) {
    8004ef02:	0296ea63          	bltu	a3,s1,8004ef36 <re_parse_alternative+0x7c0>
quickjs-nuttx/libregexp.c:839
                cr_free(cr1);
    8004ef06:	1088                	addi	a0,sp,96
    8004ef08:	696010ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:840
                if (s->is_utf16) {
    8004ef0c:	04cd2683          	lw	a3,76(s10)
    8004ef10:	f6f9                	bnez	a3,8004eede <re_parse_alternative+0x768>
quickjs-nuttx/libregexp.c:856
            if (c1 >= CLASS_RANGE_BASE) {
    8004ef12:	049c6063          	bltu	s8,s1,8004ef52 <re_parse_alternative+0x7dc>
quickjs-nuttx/libregexp.c:858
                ret = cr_union1(cr, cr1->points, cr1->len);
    8004ef16:	5606                	lw	a2,96(sp)
    8004ef18:	75a6                	ld	a1,104(sp)
    8004ef1a:	0088                	addi	a0,sp,64
    8004ef1c:	38d010ef          	jal	ra,80050aa8 <cr_union1>
    8004ef20:	8c2a                	mv	s8,a0
quickjs-nuttx/libregexp.c:859
                cr_free(cr1);
    8004ef22:	1088                	addi	a0,sp,96
    8004ef24:	67a010ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:860
                if (ret)
    8004ef28:	f60c09e3          	beqz	s8,8004ee9a <re_parse_alternative+0x724>
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004ef2c:	0001b597          	auipc	a1,0x1b
    8004ef30:	72c58593          	addi	a1,a1,1836 # 8006a658 <qjsc_repl+0x50a8>
    8004ef34:	bf4d                	j	8004eee6 <re_parse_alternative+0x770>
re_parse_char_class():
quickjs-nuttx/libregexp.c:846
            p = p0;
    8004ef36:	7642                	ld	a2,48(sp)
    8004ef38:	f432                	sd	a2,40(sp)
quickjs-nuttx/libregexp.c:847
            if (c2 < c1) {
    8004ef3a:	fb86e2e3          	bltu	a3,s8,8004eede <re_parse_alternative+0x768>
cr_union_interval():
quickjs-nuttx/libunicode.h:96

static inline int cr_union_interval(CharRange *cr, uint32_t c1, uint32_t c2)
{
    uint32_t b_pt[2];
    b_pt[0] = c1;
    b_pt[1] = c2 + 1;
    8004ef3e:	2685                	addiw	a3,a3,1
quickjs-nuttx/libunicode.h:95
    b_pt[0] = c1;
    8004ef40:	dc62                	sw	s8,56(sp)
quickjs-nuttx/libunicode.h:96
    b_pt[1] = c2 + 1;
    8004ef42:	de36                	sw	a3,60(sp)
quickjs-nuttx/libunicode.h:97
    return cr_union1(cr, b_pt, 2);
    8004ef44:	4609                	li	a2,2
    8004ef46:	182c                	addi	a1,sp,56
    8004ef48:	0088                	addi	a0,sp,64
    8004ef4a:	35f010ef          	jal	ra,80050aa8 <cr_union1>
re_parse_char_class():
quickjs-nuttx/libregexp.c:863
                if (cr_union_interval(cr, c1, c1))
    8004ef4e:	d531                	beqz	a0,8004ee9a <re_parse_alternative+0x724>
    8004ef50:	bff1                	j	8004ef2c <re_parse_alternative+0x7b6>
cr_union_interval():
quickjs-nuttx/libunicode.h:96
    b_pt[1] = c2 + 1;
    8004ef52:	001c071b          	addiw	a4,s8,1
quickjs-nuttx/libunicode.h:95
    b_pt[0] = c1;
    8004ef56:	dc62                	sw	s8,56(sp)
quickjs-nuttx/libunicode.h:96
    b_pt[1] = c2 + 1;
    8004ef58:	de3a                	sw	a4,60(sp)
    8004ef5a:	b7ed                	j	8004ef44 <re_parse_alternative+0x7ce>
re_parse_char_class():
quickjs-nuttx/libregexp.c:868
    if (s->ignore_case) {
    8004ef5c:	050d2703          	lw	a4,80(s10)
    8004ef60:	ef01                	bnez	a4,8004ef78 <re_parse_alternative+0x802>
quickjs-nuttx/libregexp.c:872
    if (invert) {
    8004ef62:	02099263          	bnez	s3,8004ef86 <re_parse_alternative+0x810>
quickjs-nuttx/libregexp.c:876
    if (re_emit_range(s, cr))
    8004ef66:	008c                	addi	a1,sp,64
    8004ef68:	856a                	mv	a0,s10
    8004ef6a:	e23fe0ef          	jal	ra,8004dd8c <re_emit_range>
    8004ef6e:	c10d                	beqz	a0,8004ef90 <re_parse_alternative+0x81a>
quickjs-nuttx/libregexp.c:885
    cr_free(cr);
    8004ef70:	0088                	addi	a0,sp,64
    8004ef72:	62c010ef          	jal	ra,8005059e <cr_free>
re_parse_alternative():
quickjs-nuttx/libregexp.c:1640
        if (ret)
    8004ef76:	bac5                	j	8004e966 <re_parse_alternative+0x1f0>
re_parse_char_class():
quickjs-nuttx/libregexp.c:869
        if (cr_regexp_canonicalize(cr, s->is_utf16))
    8004ef78:	04cd2583          	lw	a1,76(s10)
    8004ef7c:	0088                	addi	a0,sp,64
    8004ef7e:	2fe020ef          	jal	ra,8005127c <cr_regexp_canonicalize>
    8004ef82:	d165                	beqz	a0,8004ef62 <re_parse_alternative+0x7ec>
    8004ef84:	b765                	j	8004ef2c <re_parse_alternative+0x7b6>
quickjs-nuttx/libregexp.c:873
        if (cr_invert(cr))
    8004ef86:	0088                	addi	a0,sp,64
    8004ef88:	363010ef          	jal	ra,80050aea <cr_invert>
    8004ef8c:	dd69                	beqz	a0,8004ef66 <re_parse_alternative+0x7f0>
    8004ef8e:	bf79                	j	8004ef2c <re_parse_alternative+0x7b6>
quickjs-nuttx/libregexp.c:878
    cr_free(cr);
    8004ef90:	0088                	addi	a0,sp,64
    8004ef92:	60c010ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libregexp.c:879
    p++;    /* skip ']' */
    8004ef96:	7722                	ld	a4,40(sp)
    8004ef98:	0705                	addi	a4,a4,1
quickjs-nuttx/libregexp.c:880
    *pp = p;
    8004ef9a:	f03a                	sd	a4,32(sp)
re_parse_term():
quickjs-nuttx/libregexp.c:1382
        if (is_backward_dir)
    8004ef9c:	b209                	j	8004e89e <re_parse_alternative+0x128>
quickjs-nuttx/libregexp.c:1408
            if (s->ignore_case)
    8004ef9e:	050d2703          	lw	a4,80(s10)
    8004efa2:	cb01                	beqz	a4,8004efb2 <re_parse_alternative+0x83c>
quickjs-nuttx/libregexp.c:1409
                c = lre_canonicalize(c, s->is_utf16);
    8004efa4:	04cd2583          	lw	a1,76(s10)
    8004efa8:	0004851b          	sext.w	a0,s1
    8004efac:	4e6010ef          	jal	ra,80050492 <lre_canonicalize>
    8004efb0:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1410
            if (c <= 0xffff)
    8004efb2:	6741                	lui	a4,0x10
quickjs-nuttx/libregexp.c:1411
                re_emit_op_u16(s, REOP_char, c);
    8004efb4:	0004861b          	sext.w	a2,s1
quickjs-nuttx/libregexp.c:1410
            if (c <= 0xffff)
    8004efb8:	00e4d763          	bge	s1,a4,8004efc6 <re_parse_alternative+0x850>
quickjs-nuttx/libregexp.c:1411
                re_emit_op_u16(s, REOP_char, c);
    8004efbc:	4585                	li	a1,1
    8004efbe:	856a                	mv	a0,s10
    8004efc0:	d9ffe0ef          	jal	ra,8004dd5e <re_emit_op_u16>
    8004efc4:	b8e9                	j	8004e89e <re_parse_alternative+0x128>
quickjs-nuttx/libregexp.c:1413
                re_emit_op_u32(s, REOP_char32, c);
    8004efc6:	4589                	li	a1,2
    8004efc8:	856a                	mv	a0,s10
    8004efca:	d65fe0ef          	jal	ra,8004dd2e <re_emit_op_u32>
    8004efce:	8d1ff06f          	j	8004e89e <re_parse_alternative+0x128>
quickjs-nuttx/libregexp.c:1423
        switch(c) {
    8004efd2:	07b00693          	li	a3,123
    8004efd6:	c4d71ee3          	bne	a4,a3,8004ec32 <re_parse_alternative+0x4bc>
is_digit():
quickjs-nuttx/libregexp.c:107
    return c >= '0' && c <= '9';
    8004efda:	0014c703          	lbu	a4,1(s1) # 40000001 <asinh-0x3fffffff>
re_parse_term():
quickjs-nuttx/libregexp.c:1444
                if (!is_digit(p[1])) {
    8004efde:	49a5                	li	s3,9
    8004efe0:	fd07071b          	addiw	a4,a4,-48
    8004efe4:	02e9f863          	bgeu	s3,a4,8004f014 <re_parse_alternative+0x89e>
quickjs-nuttx/libregexp.c:1445
                    if (s->is_utf16)
    8004efe8:	04cd2703          	lw	a4,76(s10)
    8004efec:	c40703e3          	beqz	a4,8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1458
                            return re_parse_error(s, "invalid repetition count");
    8004eff0:	00026597          	auipc	a1,0x26
    8004eff4:	5c858593          	addi	a1,a1,1480 # 800755b8 <unescaped_chars.0+0x3c8>
    8004eff8:	8c3ff06f          	j	8004e8ba <re_parse_alternative+0x144>
quickjs-nuttx/libregexp.c:1425
            p++;
    8004effc:	0485                	addi	s1,s1,1
quickjs-nuttx/libregexp.c:1427
            quant_max = INT32_MAX;
    8004effe:	80000737          	lui	a4,0x80000
quickjs-nuttx/libregexp.c:1425
            p++;
