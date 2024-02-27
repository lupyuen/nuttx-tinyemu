    8004f002:	f026                	sd	s1,32(sp)
quickjs-nuttx/libregexp.c:1427
            quant_max = INT32_MAX;
    8004f004:	fff74c93          	not	s9,a4
quickjs-nuttx/libregexp.c:1436
            quant_min = 0;
    8004f008:	4c01                	li	s8,0
quickjs-nuttx/libregexp.c:1438
            goto quantifier;
    8004f00a:	b4a1                	j	8004ea52 <re_parse_alternative+0x2dc>
quickjs-nuttx/libregexp.c:1435
            p++;
    8004f00c:	0485                	addi	s1,s1,1
    8004f00e:	f026                	sd	s1,32(sp)
quickjs-nuttx/libregexp.c:1437
            quant_max = 1;
    8004f010:	4c85                	li	s9,1
    8004f012:	bfdd                	j	8004f008 <re_parse_alternative+0x892>
quickjs-nuttx/libregexp.c:1449
                p++;
    8004f014:	00148713          	addi	a4,s1,1
quickjs-nuttx/libregexp.c:1450
                quant_min = parse_digits(&p, TRUE);
    8004f018:	4585                	li	a1,1
    8004f01a:	1008                	addi	a0,sp,32
quickjs-nuttx/libregexp.c:1449
                p++;
    8004f01c:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libregexp.c:1450
                quant_min = parse_digits(&p, TRUE);
    8004f01e:	e43fd0ef          	jal	ra,8004ce60 <parse_digits>
quickjs-nuttx/libregexp.c:1452
                if (*p == ',') {
    8004f022:	7602                	ld	a2,32(sp)
quickjs-nuttx/libregexp.c:1450
                quant_min = parse_digits(&p, TRUE);
    8004f024:	8c2a                	mv	s8,a0
quickjs-nuttx/libregexp.c:1452
                if (*p == ',') {
    8004f026:	02c00593          	li	a1,44
    8004f02a:	00064503          	lbu	a0,0(a2)
quickjs-nuttx/libregexp.c:1450
                quant_min = parse_digits(&p, TRUE);
    8004f02e:	8ce2                	mv	s9,s8
quickjs-nuttx/libregexp.c:1452
                if (*p == ',') {
    8004f030:	02b51263          	bne	a0,a1,8004f054 <re_parse_alternative+0x8de>
quickjs-nuttx/libregexp.c:1453
                    p++;
    8004f034:	00160713          	addi	a4,a2,1
    8004f038:	f03a                	sd	a4,32(sp)
is_digit():
quickjs-nuttx/libregexp.c:107
    return c >= '0' && c <= '9';
    8004f03a:	00164703          	lbu	a4,1(a2)
re_parse_term():
quickjs-nuttx/libregexp.c:1454
                    if (is_digit(*p)) {
    8004f03e:	fd07071b          	addiw	a4,a4,-48
    8004f042:	02e9e563          	bltu	s3,a4,8004f06c <re_parse_alternative+0x8f6>
quickjs-nuttx/libregexp.c:1455
                        quant_max = parse_digits(&p, TRUE);
    8004f046:	4585                	li	a1,1
    8004f048:	1008                	addi	a0,sp,32
    8004f04a:	e17fd0ef          	jal	ra,8004ce60 <parse_digits>
    8004f04e:	8caa                	mv	s9,a0
quickjs-nuttx/libregexp.c:1456
                        if (quant_max < quant_min) {
    8004f050:	fb8540e3          	blt	a0,s8,8004eff0 <re_parse_alternative+0x87a>
quickjs-nuttx/libregexp.c:1464
                if (*p != '}' && !s->is_utf16) {
    8004f054:	7602                	ld	a2,32(sp)
    8004f056:	00064583          	lbu	a1,0(a2)
    8004f05a:	07d00613          	li	a2,125
    8004f05e:	00c58c63          	beq	a1,a2,8004f076 <re_parse_alternative+0x900>
    8004f062:	04cd2603          	lw	a2,76(s10)
    8004f066:	ea01                	bnez	a2,8004f076 <re_parse_alternative+0x900>
quickjs-nuttx/libregexp.c:1466
                    p = p1;
    8004f068:	f026                	sd	s1,32(sp)
quickjs-nuttx/libregexp.c:1467
                    break;
    8004f06a:	b6e1                	j	8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1461
                        quant_max = INT32_MAX; /* infinity */
    8004f06c:	80000737          	lui	a4,0x80000
    8004f070:	fff74c93          	not	s9,a4
    8004f074:	b7c5                	j	8004f054 <re_parse_alternative+0x8de>
quickjs-nuttx/libregexp.c:1469
                if (re_parse_expect(s, &p, '}'))
    8004f076:	07d00613          	li	a2,125
    8004f07a:	100c                	addi	a1,sp,32
    8004f07c:	856a                	mv	a0,s10
    8004f07e:	c55fe0ef          	jal	ra,8004dcd2 <re_parse_expect>
    8004f082:	9c0508e3          	beqz	a0,8004ea52 <re_parse_alternative+0x2dc>
    8004f086:	b0c5                	j	8004e966 <re_parse_alternative+0x1f0>
dbuf_error():
quickjs-nuttx/cutils.h:272
    return s->error;
    8004f088:	018d2483          	lw	s1,24(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1484
                if (quant_max > 0) {
    8004f08c:	15905763          	blez	s9,8004f1da <re_parse_alternative+0xa64>
quickjs-nuttx/libregexp.c:1486
                    if (dbuf_error(&s->byte_code))
    8004f090:	42049463          	bnez	s1,8004f4b8 <re_parse_alternative+0xd42>
quickjs-nuttx/libregexp.c:1488
                    len = re_is_simple_quantifier(s->byte_code.buf + last_atom_start,
    8004f094:	000d3883          	ld	a7,0(s10)
quickjs-nuttx/libregexp.c:1489
                                                 s->byte_code.size - last_atom_start);
    8004f098:	008d3803          	ld	a6,8(s10)
    8004f09c:	0004099b          	sext.w	s3,s0
quickjs-nuttx/libregexp.c:1488
                    len = re_is_simple_quantifier(s->byte_code.buf + last_atom_start,
    8004f0a0:	98a2                	add	a7,a7,s0
    8004f0a2:	4088083b          	subw	a6,a6,s0
re_is_simple_quantifier():
quickjs-nuttx/libregexp.c:953
    pos = 0;
    8004f0a6:	4501                	li	a0,0
    8004f0a8:	4ed5                	li	t4,21
    8004f0aa:	00026e17          	auipc	t3,0x26
    8004f0ae:	52ae0e13          	addi	t3,t3,1322 # 800755d4 <unescaped_chars.0+0x3e4>
quickjs-nuttx/libregexp.c:954
    while (pos < bc_buf_len) {
    8004f0b2:	0d054663          	blt	a0,a6,8004f17e <re_parse_alternative+0xa08>
re_parse_term():
quickjs-nuttx/libregexp.c:1490
                    if (len > 0) {
    8004f0b6:	12905463          	blez	s1,8004f1de <re_parse_alternative+0xa68>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f0ba:	45a9                	li	a1,10
    8004f0bc:	856a                	mv	a0,s10
    8004f0be:	225020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1493
                        if (dbuf_insert(&s->byte_code, last_atom_start, 17))
    8004f0c2:	4645                	li	a2,17
    8004f0c4:	85a2                	mv	a1,s0
    8004f0c6:	856a                	mv	a0,s10
    8004f0c8:	e2ffd0ef          	jal	ra,8004cef6 <dbuf_insert>
    8004f0cc:	3e051663          	bnez	a0,8004f4b8 <re_parse_alternative+0xd42>
quickjs-nuttx/libregexp.c:1496
                        s->byte_code.buf[pos++] = REOP_simple_greedy_quant;
    8004f0d0:	000d3603          	ld	a2,0(s10)
    8004f0d4:	45f1                	li	a1,28
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8004f0d6:	018c569b          	srliw	a3,s8,0x18
re_parse_term():
quickjs-nuttx/libregexp.c:1496
    8004f0da:	9622                	add	a2,a2,s0
    8004f0dc:	00b60023          	sb	a1,0(a2)
put_u32():
quickjs-nuttx/cutils.h:180
    8004f0e0:	000d3583          	ld	a1,0(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1497
                        put_u32(&s->byte_code.buf[pos],
    8004f0e4:	0014061b          	addiw	a2,s0,1
put_u32():
quickjs-nuttx/cutils.h:180
    8004f0e8:	018cd71b          	srliw	a4,s9,0x18
    8004f0ec:	95b2                	add	a1,a1,a2
re_parse_term():
quickjs-nuttx/libregexp.c:1498
                                s->byte_code.size - last_atom_start - 17);
    8004f0ee:	008d3603          	ld	a2,8(s10)
quickjs-nuttx/libregexp.c:1497
                        put_u32(&s->byte_code.buf[pos],
    8004f0f2:	363d                	addiw	a2,a2,-17
    8004f0f4:	4136063b          	subw	a2,a2,s3
put_u32():
quickjs-nuttx/cutils.h:180
    8004f0f8:	0086551b          	srliw	a0,a2,0x8
    8004f0fc:	00c58023          	sb	a2,0(a1)
    8004f100:	00a580a3          	sb	a0,1(a1)
    8004f104:	0106551b          	srliw	a0,a2,0x10
    8004f108:	0186561b          	srliw	a2,a2,0x18
    8004f10c:	00a58123          	sb	a0,2(a1)
    8004f110:	00c581a3          	sb	a2,3(a1)
    8004f114:	000d3603          	ld	a2,0(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1500
                        put_u32(&s->byte_code.buf[pos], quant_min);
    8004f118:	0054059b          	addiw	a1,s0,5
put_u32():
quickjs-nuttx/cutils.h:180
    8004f11c:	962e                	add	a2,a2,a1
    8004f11e:	008c559b          	srliw	a1,s8,0x8
    8004f122:	00b600a3          	sb	a1,1(a2)
    8004f126:	010c559b          	srliw	a1,s8,0x10
    8004f12a:	01860023          	sb	s8,0(a2)
    8004f12e:	00b60123          	sb	a1,2(a2)
    8004f132:	00d601a3          	sb	a3,3(a2)
    8004f136:	000d3683          	ld	a3,0(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1502
                        put_u32(&s->byte_code.buf[pos], quant_max);
    8004f13a:	0094061b          	addiw	a2,s0,9
quickjs-nuttx/libregexp.c:1504
                        put_u32(&s->byte_code.buf[pos], len);
    8004f13e:	2435                	addiw	s0,s0,13
put_u32():
quickjs-nuttx/cutils.h:180
    8004f140:	96b2                	add	a3,a3,a2
    8004f142:	008cd61b          	srliw	a2,s9,0x8
    8004f146:	00c680a3          	sb	a2,1(a3)
    8004f14a:	010cd61b          	srliw	a2,s9,0x10
    8004f14e:	01968023          	sb	s9,0(a3)
    8004f152:	00c68123          	sb	a2,2(a3)
    8004f156:	00e681a3          	sb	a4,3(a3)
    8004f15a:	000d3703          	ld	a4,0(s10)
    8004f15e:	943a                	add	s0,s0,a4
    8004f160:	0084d71b          	srliw	a4,s1,0x8
    8004f164:	00940023          	sb	s1,0(s0)
    8004f168:	00e400a3          	sb	a4,1(s0)
    8004f16c:	0104d71b          	srliw	a4,s1,0x10
    8004f170:	0184d49b          	srliw	s1,s1,0x18
    8004f174:	00e40123          	sb	a4,2(s0)
    8004f178:	009401a3          	sb	s1,3(s0)
re_parse_term():
quickjs-nuttx/libregexp.c:1506
                        goto done;
    8004f17c:	bc5d                	j	8004ec32 <re_parse_alternative+0x4bc>
re_is_simple_quantifier():
quickjs-nuttx/libregexp.c:955
        opcode = bc_buf[pos];
    8004f17e:	00a88f33          	add	t5,a7,a0
    8004f182:	000f4583          	lbu	a1,0(t5)
quickjs-nuttx/libregexp.c:956
        len = reopcode_info[opcode].size;
    8004f186:	00026797          	auipc	a5,0x26
    8004f18a:	60a78793          	addi	a5,a5,1546 # 80075790 <reopcode_info>
    8004f18e:	00b78633          	add	a2,a5,a1
    8004f192:	00064303          	lbu	t1,0(a2)
    8004f196:	35fd                	addiw	a1,a1,-1
    8004f198:	0ff5f593          	zext.b	a1,a1
    8004f19c:	0003061b          	sext.w	a2,t1
quickjs-nuttx/libregexp.c:957
        switch(opcode) {
    8004f1a0:	02beef63          	bltu	t4,a1,8004f1de <re_parse_alternative+0xa68>
    8004f1a4:	058a                	slli	a1,a1,0x2
    8004f1a6:	95f2                	add	a1,a1,t3
    8004f1a8:	418c                	lw	a1,0(a1)
    8004f1aa:	95f2                	add	a1,a1,t3
    8004f1ac:	8582                	jr	a1
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8004f1ae:	002f4603          	lbu	a2,2(t5)
    8004f1b2:	001f4583          	lbu	a1,1(t5)
    8004f1b6:	0622                	slli	a2,a2,0x8
    8004f1b8:	8e4d                	or	a2,a2,a1
re_is_simple_quantifier():
quickjs-nuttx/libregexp.c:960
            len += val * 4;
    8004f1ba:	0026161b          	slliw	a2,a2,0x2
quickjs-nuttx/libregexp.c:964
            len += val * 8;
    8004f1be:	0066063b          	addw	a2,a2,t1
quickjs-nuttx/libregexp.c:971
            count++;
    8004f1c2:	2485                	addiw	s1,s1,1
quickjs-nuttx/libregexp.c:981
        pos += len;
    8004f1c4:	9d31                	addw	a0,a0,a2
    8004f1c6:	b5f5                	j	8004f0b2 <re_parse_alternative+0x93c>
get_u16():
quickjs-nuttx/cutils.h:185
    8004f1c8:	002f4603          	lbu	a2,2(t5)
    8004f1cc:	001f4583          	lbu	a1,1(t5)
    8004f1d0:	0622                	slli	a2,a2,0x8
    8004f1d2:	8e4d                	or	a2,a2,a1
re_is_simple_quantifier():
quickjs-nuttx/libregexp.c:964
            len += val * 8;
    8004f1d4:	0036161b          	slliw	a2,a2,0x3
    8004f1d8:	b7dd                	j	8004f1be <re_parse_alternative+0xa48>
re_parse_term():
quickjs-nuttx/libregexp.c:1510
                if (dbuf_error(&s->byte_code))
    8004f1da:	2c049f63          	bnez	s1,8004f4b8 <re_parse_alternative+0xd42>
quickjs-nuttx/libregexp.c:1516
                add_zero_advance_check = re_need_check_advance(s->byte_code.buf + last_atom_start,
    8004f1de:	000d3883          	ld	a7,0(s10)
quickjs-nuttx/libregexp.c:1517
                                                               s->byte_code.size - last_atom_start);
    8004f1e2:	008d3803          	ld	a6,8(s10)
re_need_check_advance():
quickjs-nuttx/libregexp.c:899
    ret = TRUE;
    8004f1e6:	4485                	li	s1,1
re_parse_term():
quickjs-nuttx/libregexp.c:1516
                add_zero_advance_check = re_need_check_advance(s->byte_code.buf + last_atom_start,
    8004f1e8:	98a2                	add	a7,a7,s0
    8004f1ea:	4088083b          	subw	a6,a6,s0
re_need_check_advance():
quickjs-nuttx/libregexp.c:900
    pos = 0;
    8004f1ee:	4501                	li	a0,0
    8004f1f0:	4ee9                	li	t4,26
    8004f1f2:	00026e17          	auipc	t3,0x26
    8004f1f6:	43ae0e13          	addi	t3,t3,1082 # 8007562c <unescaped_chars.0+0x43c>
quickjs-nuttx/libregexp.c:901
    while (pos < bc_buf_len) {
    8004f1fa:	01054563          	blt	a0,a6,8004f204 <re_parse_alternative+0xa8e>
re_parse_term():
quickjs-nuttx/libregexp.c:1473
            greedy = TRUE;
    8004f1fe:	4a85                	li	s5,1
re_need_check_advance():
quickjs-nuttx/libregexp.c:1473
    8004f200:	869ff06f          	j	8004ea68 <re_parse_alternative+0x2f2>
quickjs-nuttx/libregexp.c:902
        opcode = bc_buf[pos];
    8004f204:	00a88f33          	add	t5,a7,a0
    8004f208:	000f4583          	lbu	a1,0(t5)
quickjs-nuttx/libregexp.c:903
        len = reopcode_info[opcode].size;
    8004f20c:	00026797          	auipc	a5,0x26
    8004f210:	58478793          	addi	a5,a5,1412 # 80075790 <reopcode_info>
    8004f214:	00b78633          	add	a2,a5,a1
    8004f218:	00064303          	lbu	t1,0(a2)
    8004f21c:	35fd                	addiw	a1,a1,-1
    8004f21e:	0ff5f593          	zext.b	a1,a1
    8004f222:	0003061b          	sext.w	a2,t1
quickjs-nuttx/libregexp.c:904
        switch(opcode) {
    8004f226:	02beed63          	bltu	t4,a1,8004f260 <re_parse_alternative+0xaea>
    8004f22a:	058a                	slli	a1,a1,0x2
    8004f22c:	95f2                	add	a1,a1,t3
    8004f22e:	418c                	lw	a1,0(a1)
    8004f230:	95f2                	add	a1,a1,t3
    8004f232:	8582                	jr	a1
get_u16():
quickjs-nuttx/cutils.h:185
    8004f234:	002f4603          	lbu	a2,2(t5)
    8004f238:	001f4583          	lbu	a1,1(t5)
    8004f23c:	0622                	slli	a2,a2,0x8
    8004f23e:	8e4d                	or	a2,a2,a1
re_need_check_advance():
quickjs-nuttx/libregexp.c:907
            len += val * 4;
    8004f240:	0026161b          	slliw	a2,a2,0x2
quickjs-nuttx/libregexp.c:911
            len += val * 8;
    8004f244:	0066063b          	addw	a2,a2,t1
quickjs-nuttx/libregexp.c:918
            ret = FALSE;
    8004f248:	4481                	li	s1,0
quickjs-nuttx/libregexp.c:940
        pos += len;
    8004f24a:	9d31                	addw	a0,a0,a2
    8004f24c:	b77d                	j	8004f1fa <re_parse_alternative+0xa84>
get_u16():
quickjs-nuttx/cutils.h:185
    8004f24e:	002f4603          	lbu	a2,2(t5)
    8004f252:	001f4583          	lbu	a1,1(t5)
    8004f256:	0622                	slli	a2,a2,0x8
    8004f258:	8e4d                	or	a2,a2,a1
re_need_check_advance():
quickjs-nuttx/libregexp.c:911
            len += val * 8;
    8004f25a:	0036161b          	slliw	a2,a2,0x3
    8004f25e:	b7dd                	j	8004f244 <re_parse_alternative+0xace>
quickjs-nuttx/libregexp.c:903
        len = reopcode_info[opcode].size;
    8004f260:	4a85                	li	s5,1
    8004f262:	4485                	li	s1,1
    8004f264:	805ff06f          	j	8004ea68 <re_parse_alternative+0x2f2>
re_parse_term():
quickjs-nuttx/libregexp.c:1537
                    } else if (quant_max == 1 || quant_max == INT32_MAX) {
    8004f268:	4685                	li	a3,1
    8004f26a:	00dc8863          	beq	s9,a3,8004f27a <re_parse_alternative+0xb04>
    8004f26e:	800006b7          	lui	a3,0x80000
    8004f272:	fff6c693          	not	a3,a3
    8004f276:	08dc9863          	bne	s9,a3,8004f306 <re_parse_alternative+0xb90>
quickjs-nuttx/libregexp.c:1539
                        if (dbuf_insert(&s->byte_code, last_atom_start, 5 + add_zero_advance_check))
    8004f27a:	00548613          	addi	a2,s1,5
    8004f27e:	85a2                	mv	a1,s0
    8004f280:	856a                	mv	a0,s10
    8004f282:	c75fd0ef          	jal	ra,8004cef6 <dbuf_insert>
    8004f286:	22051963          	bnez	a0,8004f4b8 <re_parse_alternative+0xd42>
quickjs-nuttx/libregexp.c:1538
                        BOOL has_goto = (quant_max == INT32_MAX);
    8004f28a:	80000637          	lui	a2,0x80000
    8004f28e:	fff64613          	not	a2,a2
    8004f292:	40cc8633          	sub	a2,s9,a2
    8004f296:	00163613          	seqz	a2,a2
quickjs-nuttx/libregexp.c:1544
                                len + 5 * has_goto + add_zero_advance_check * 2);
    8004f29a:	4595                	li	a1,5
    8004f29c:	02b6063b          	mulw	a2,a2,a1
quickjs-nuttx/libregexp.c:1541
                        s->byte_code.buf[last_atom_start] = REOP_split_goto_first +
    8004f2a0:	000d3683          	ld	a3,0(s10)
    8004f2a4:	2aa1                	addiw	s5,s5,8
    8004f2a6:	96a2                	add	a3,a3,s0
    8004f2a8:	01568023          	sb	s5,0(a3) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8004f2ac:	000d3683          	ld	a3,0(s10)
    8004f2b0:	96a2                	add	a3,a3,s0
re_parse_term():
quickjs-nuttx/libregexp.c:1544
                                len + 5 * has_goto + add_zero_advance_check * 2);
    8004f2b2:	013609bb          	addw	s3,a2,s3
    8004f2b6:	0014961b          	slliw	a2,s1,0x1
    8004f2ba:	00c989bb          	addw	s3,s3,a2
put_u32():
quickjs-nuttx/cutils.h:180
    8004f2be:	0089d61b          	srliw	a2,s3,0x8
    8004f2c2:	013680a3          	sb	s3,1(a3)
    8004f2c6:	00c68123          	sb	a2,2(a3)
    8004f2ca:	0109d61b          	srliw	a2,s3,0x10
    8004f2ce:	0189d99b          	srliw	s3,s3,0x18
    8004f2d2:	00c681a3          	sb	a2,3(a3)
    8004f2d6:	01368223          	sb	s3,4(a3)
re_parse_term():
quickjs-nuttx/libregexp.c:1545
                        if (add_zero_advance_check) {
    8004f2da:	cc89                	beqz	s1,8004f2f4 <re_parse_alternative+0xb7e>
quickjs-nuttx/libregexp.c:1546
                            s->byte_code.buf[last_atom_start + 1 + 4] = REOP_push_char_pos;
    8004f2dc:	000d3603          	ld	a2,0(s10)
    8004f2e0:	0054069b          	addiw	a3,s0,5
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f2e4:	45e9                	li	a1,26
re_parse_term():
quickjs-nuttx/libregexp.c:1546
                            s->byte_code.buf[last_atom_start + 1 + 4] = REOP_push_char_pos;
    8004f2e6:	96b2                	add	a3,a3,a2
    8004f2e8:	4665                	li	a2,25
    8004f2ea:	00c68023          	sb	a2,0(a3)
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f2ee:	856a                	mv	a0,s10
    8004f2f0:	7f2020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1549
                        if (has_goto)
    8004f2f4:	800006b7          	lui	a3,0x80000
    8004f2f8:	fff6c693          	not	a3,a3
quickjs-nuttx/libregexp.c:1550
                            re_emit_goto(s, REOP_goto, last_atom_start);
    8004f2fc:	8622                	mv	a2,s0
quickjs-nuttx/libregexp.c:1549
                        if (has_goto)
    8004f2fe:	92dc9ae3          	bne	s9,a3,8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1595
                        re_emit_goto(s, REOP_goto, pos);
    8004f302:	459d                	li	a1,7
    8004f304:	a0d9                	j	8004f3ca <re_parse_alternative+0xc54>
quickjs-nuttx/libregexp.c:1552
                        if (dbuf_insert(&s->byte_code, last_atom_start, 10 + add_zero_advance_check))
    8004f306:	00a48613          	addi	a2,s1,10
    8004f30a:	85a2                	mv	a1,s0
    8004f30c:	856a                	mv	a0,s10
    8004f30e:	be9fd0ef          	jal	ra,8004cef6 <dbuf_insert>
    8004f312:	1a051363          	bnez	a0,8004f4b8 <re_parse_alternative+0xd42>
quickjs-nuttx/libregexp.c:1555
                        s->byte_code.buf[pos++] = REOP_push_i32;
    8004f316:	000d3683          	ld	a3,0(s10)
    8004f31a:	463d                	li	a2,15
put_u32():
quickjs-nuttx/cutils.h:180
    8004f31c:	018cd71b          	srliw	a4,s9,0x18
re_parse_term():
quickjs-nuttx/libregexp.c:1555
    8004f320:	96a2                	add	a3,a3,s0
    8004f322:	00c68023          	sb	a2,0(a3) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
put_u32():
quickjs-nuttx/cutils.h:180
    8004f326:	000d3603          	ld	a2,0(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1556
                        put_u32(s->byte_code.buf + pos, quant_max);
    8004f32a:	0014069b          	addiw	a3,s0,1
quickjs-nuttx/libregexp.c:1557
                        pos += 4;
    8004f32e:	00540a1b          	addiw	s4,s0,5
put_u32():
quickjs-nuttx/cutils.h:180
    8004f332:	96b2                	add	a3,a3,a2
    8004f334:	008cd61b          	srliw	a2,s9,0x8
    8004f338:	00c680a3          	sb	a2,1(a3)
    8004f33c:	010cd61b          	srliw	a2,s9,0x10
    8004f340:	01968023          	sb	s9,0(a3)
    8004f344:	00c68123          	sb	a2,2(a3)
    8004f348:	00e681a3          	sb	a4,3(a3)
re_parse_term():
quickjs-nuttx/libregexp.c:1558
                        s->byte_code.buf[pos++] = REOP_split_goto_first + greedy;
    8004f34c:	000d3703          	ld	a4,0(s10)
    8004f350:	2aa1                	addiw	s5,s5,8
quickjs-nuttx/libregexp.c:1559
                        put_u32(s->byte_code.buf + pos, len + 5 + add_zero_advance_check * 2);
    8004f352:	0064069b          	addiw	a3,s0,6
quickjs-nuttx/libregexp.c:1558
                        s->byte_code.buf[pos++] = REOP_split_goto_first + greedy;
    8004f356:	9752                	add	a4,a4,s4
    8004f358:	01570023          	sb	s5,0(a4) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
put_u32():
quickjs-nuttx/cutils.h:180
    8004f35c:	000d3703          	ld	a4,0(s10)
re_parse_term():
quickjs-nuttx/libregexp.c:1559
                        put_u32(s->byte_code.buf + pos, len + 5 + add_zero_advance_check * 2);
    8004f360:	2995                	addiw	s3,s3,5
put_u32():
quickjs-nuttx/cutils.h:180
    8004f362:	96ba                	add	a3,a3,a4
re_parse_term():
quickjs-nuttx/libregexp.c:1559
    8004f364:	0014971b          	slliw	a4,s1,0x1
    8004f368:	013709bb          	addw	s3,a4,s3
put_u32():
quickjs-nuttx/cutils.h:180
    8004f36c:	0089d71b          	srliw	a4,s3,0x8
    8004f370:	01368023          	sb	s3,0(a3)
    8004f374:	00e680a3          	sb	a4,1(a3)
    8004f378:	0109d71b          	srliw	a4,s3,0x10
    8004f37c:	0189d99b          	srliw	s3,s3,0x18
    8004f380:	00e68123          	sb	a4,2(a3)
    8004f384:	013681a3          	sb	s3,3(a3)
re_parse_term():
quickjs-nuttx/libregexp.c:1561
                        if (add_zero_advance_check) {
    8004f388:	cc81                	beqz	s1,8004f3a0 <re_parse_alternative+0xc2a>
quickjs-nuttx/libregexp.c:1562
                            s->byte_code.buf[pos++] = REOP_push_char_pos;
    8004f38a:	000d3703          	ld	a4,0(s10)
    8004f38e:	2429                	addiw	s0,s0,10
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f390:	45e9                	li	a1,26
re_parse_term():
quickjs-nuttx/libregexp.c:1562
                            s->byte_code.buf[pos++] = REOP_push_char_pos;
    8004f392:	943a                	add	s0,s0,a4
    8004f394:	4765                	li	a4,25
    8004f396:	00e40023          	sb	a4,0(s0)
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f39a:	856a                	mv	a0,s10
    8004f39c:	746020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1565
                        re_emit_goto(s, REOP_loop, last_atom_start + 5);
    8004f3a0:	8652                	mv	a2,s4
quickjs-nuttx/libregexp.c:1607
                        re_emit_goto(s, REOP_loop, pos);
    8004f3a2:	45b9                	li	a1,14
    8004f3a4:	856a                	mv	a0,s10
    8004f3a6:	95ffe0ef          	jal	ra,8004dd04 <re_emit_goto.isra.0>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f3aa:	45c1                	li	a1,16
    8004f3ac:	cbaff06f          	j	8004e866 <re_parse_alternative+0xf0>
re_parse_term():
quickjs-nuttx/libregexp.c:1568
                } else if (quant_min == 1 && quant_max == INT32_MAX &&
    8004f3b0:	4585                	li	a1,1
    8004f3b2:	02bc1163          	bne	s8,a1,8004f3d4 <re_parse_alternative+0xc5e>
    8004f3b6:	800005b7          	lui	a1,0x80000
    8004f3ba:	fff5c593          	not	a1,a1
    8004f3be:	0abc9763          	bne	s9,a1,8004f46c <re_parse_alternative+0xcf6>
    8004f3c2:	e4bd                	bnez	s1,8004f430 <re_parse_alternative+0xcba>
quickjs-nuttx/libregexp.c:1570
                    re_emit_goto(s, REOP_split_next_first - greedy,
    8004f3c4:	45a5                	li	a1,9
    8004f3c6:	415585bb          	subw	a1,a1,s5
quickjs-nuttx/libregexp.c:1595
                        re_emit_goto(s, REOP_goto, pos);
    8004f3ca:	856a                	mv	a0,s10
    8004f3cc:	939fe0ef          	jal	ra,8004dd04 <re_emit_goto.isra.0>
    8004f3d0:	863ff06f          	j	8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1576
                        if (dbuf_insert(&s->byte_code, last_atom_start, 5))
    8004f3d4:	4615                	li	a2,5
    8004f3d6:	85a2                	mv	a1,s0
    8004f3d8:	856a                	mv	a0,s10
    8004f3da:	b1dfd0ef          	jal	ra,8004cef6 <dbuf_insert>
    8004f3de:	0c051d63          	bnez	a0,8004f4b8 <re_parse_alternative+0xd42>
quickjs-nuttx/libregexp.c:1578
                        s->byte_code.buf[last_atom_start] = REOP_push_i32;
    8004f3e2:	000d3603          	ld	a2,0(s10)
    8004f3e6:	45bd                	li	a1,15
quickjs-nuttx/libregexp.c:1582
                        re_emit_goto(s, REOP_loop, last_atom_start);
    8004f3e8:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1578
                        s->byte_code.buf[last_atom_start] = REOP_push_i32;
    8004f3ea:	9622                	add	a2,a2,s0
    8004f3ec:	00b60023          	sb	a1,0(a2) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
put_u32():
quickjs-nuttx/cutils.h:180
    8004f3f0:	000d3603          	ld	a2,0(s10)
    8004f3f4:	008c559b          	srliw	a1,s8,0x8
    8004f3f8:	9622                	add	a2,a2,s0
    8004f3fa:	00b60123          	sb	a1,2(a2)
    8004f3fe:	010c559b          	srliw	a1,s8,0x10
    8004f402:	00b601a3          	sb	a1,3(a2)
re_parse_term():
quickjs-nuttx/libregexp.c:1581
                        last_atom_start += 5;
    8004f406:	2415                	addiw	s0,s0,5
put_u32():
quickjs-nuttx/cutils.h:180
    8004f408:	018c559b          	srliw	a1,s8,0x18
    8004f40c:	00b60223          	sb	a1,4(a2)
    8004f410:	018600a3          	sb	s8,1(a2)
re_parse_term():
quickjs-nuttx/libregexp.c:1582
                        re_emit_goto(s, REOP_loop, last_atom_start);
    8004f414:	45b9                	li	a1,14
    8004f416:	8622                	mv	a2,s0
    8004f418:	8edfe0ef          	jal	ra,8004dd04 <re_emit_goto.isra.0>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f41c:	45c1                	li	a1,16
    8004f41e:	856a                	mv	a0,s10
    8004f420:	6c2020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1585
                    if (quant_max == INT32_MAX) {
    8004f424:	80000637          	lui	a2,0x80000
    8004f428:	fff64613          	not	a2,a2
    8004f42c:	04cc9063          	bne	s9,a2,8004f46c <re_parse_alternative+0xcf6>
quickjs-nuttx/libregexp.c:1588
                                       len + 5 + add_zero_advance_check * 2);
    8004f430:	0059861b          	addiw	a2,s3,5
    8004f434:	0014971b          	slliw	a4,s1,0x1
quickjs-nuttx/libregexp.c:1587
                        re_emit_op_u32(s, REOP_split_goto_first + greedy,
    8004f438:	9e39                	addw	a2,a2,a4
    8004f43a:	008a8593          	addi	a1,s5,8 # ffffffffffffe008 <_ebss+0xffffffff7fefcea2>
    8004f43e:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1586
                        pos = s->byte_code.size;
    8004f440:	008d3a03          	ld	s4,8(s10)
quickjs-nuttx/libregexp.c:1587
                        re_emit_op_u32(s, REOP_split_goto_first + greedy,
    8004f444:	8ebfe0ef          	jal	ra,8004dd2e <re_emit_op_u32>
quickjs-nuttx/libregexp.c:1589
                        if (add_zero_advance_check)
    8004f448:	c489                	beqz	s1,8004f452 <re_parse_alternative+0xcdc>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f44a:	45e5                	li	a1,25
    8004f44c:	856a                	mv	a0,s10
    8004f44e:	694020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1592
                        dbuf_put_self(&s->byte_code, last_atom_start, len);
    8004f452:	866e                	mv	a2,s11
    8004f454:	85a2                	mv	a1,s0
    8004f456:	856a                	mv	a0,s10
    8004f458:	640020ef          	jal	ra,80051a98 <dbuf_put_self>
quickjs-nuttx/libregexp.c:1593
                        if (add_zero_advance_check)
    8004f45c:	c489                	beqz	s1,8004f466 <re_parse_alternative+0xcf0>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f45e:	45e9                	li	a1,26
    8004f460:	856a                	mv	a0,s10
    8004f462:	680020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1595
                        re_emit_goto(s, REOP_goto, pos);
    8004f466:	000a061b          	sext.w	a2,s4
    8004f46a:	bd61                	j	8004f302 <re_parse_alternative+0xb8c>
quickjs-nuttx/libregexp.c:1596
                    } else if (quant_max > quant_min) {
    8004f46c:	fd9c5363          	bge	s8,s9,8004ec32 <re_parse_alternative+0x4bc>
quickjs-nuttx/libregexp.c:1597
                        re_emit_op_u32(s, REOP_push_i32, quant_max - quant_min);
    8004f470:	418c863b          	subw	a2,s9,s8
    8004f474:	45bd                	li	a1,15
    8004f476:	856a                	mv	a0,s10
    8004f478:	8b7fe0ef          	jal	ra,8004dd2e <re_emit_op_u32>
quickjs-nuttx/libregexp.c:1600
                                       len + 5 + add_zero_advance_check * 2);
    8004f47c:	0014961b          	slliw	a2,s1,0x1
    8004f480:	2995                	addiw	s3,s3,5
quickjs-nuttx/libregexp.c:1599
                        re_emit_op_u32(s, REOP_split_goto_first + greedy,
    8004f482:	0136063b          	addw	a2,a2,s3
    8004f486:	008a8593          	addi	a1,s5,8
    8004f48a:	856a                	mv	a0,s10
quickjs-nuttx/libregexp.c:1598
                        pos = s->byte_code.size;
    8004f48c:	008d3a03          	ld	s4,8(s10)
quickjs-nuttx/libregexp.c:1599
                        re_emit_op_u32(s, REOP_split_goto_first + greedy,
    8004f490:	89ffe0ef          	jal	ra,8004dd2e <re_emit_op_u32>
quickjs-nuttx/libregexp.c:1601
                        if (add_zero_advance_check)
    8004f494:	c489                	beqz	s1,8004f49e <re_parse_alternative+0xd28>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f496:	45e5                	li	a1,25
    8004f498:	856a                	mv	a0,s10
    8004f49a:	648020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1604
                        dbuf_put_self(&s->byte_code, last_atom_start, len);
    8004f49e:	866e                	mv	a2,s11
    8004f4a0:	85a2                	mv	a1,s0
    8004f4a2:	856a                	mv	a0,s10
    8004f4a4:	5f4020ef          	jal	ra,80051a98 <dbuf_put_self>
quickjs-nuttx/libregexp.c:1605
                        if (add_zero_advance_check)
    8004f4a8:	c489                	beqz	s1,8004f4b2 <re_parse_alternative+0xd3c>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f4aa:	45e9                	li	a1,26
    8004f4ac:	856a                	mv	a0,s10
    8004f4ae:	634020ef          	jal	ra,80051ae2 <dbuf_putc>
re_parse_term():
quickjs-nuttx/libregexp.c:1607
                        re_emit_goto(s, REOP_loop, pos);
    8004f4b2:	000a061b          	sext.w	a2,s4
    8004f4b6:	b5f5                	j	8004f3a2 <re_parse_alternative+0xc2c>
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004f4b8:	0001b597          	auipc	a1,0x1b
    8004f4bc:	1a058593          	addi	a1,a1,416 # 8006a658 <qjsc_repl+0x50a8>
    8004f4c0:	bfaff06f          	j	8004e8ba <re_parse_alternative+0x144>
re_parse_alternative():
quickjs-nuttx/libregexp.c:1656
    return 0;
    8004f4c4:	4501                	li	a0,0
    8004f4c6:	bfeff06f          	j	8004e8c4 <re_parse_alternative+0x14e>

000000008004f4ca <re_parse_disjunction>:
re_parse_disjunction():
quickjs-nuttx/libregexp.c:1660
{
    8004f4ca:	715d                	addi	sp,sp,-80
    8004f4cc:	e0a2                	sd	s0,64(sp)
    8004f4ce:	f84a                	sd	s2,48(sp)
    8004f4d0:	e486                	sd	ra,72(sp)
    8004f4d2:	fc26                	sd	s1,56(sp)
    8004f4d4:	f44e                	sd	s3,40(sp)
    8004f4d6:	f052                	sd	s4,32(sp)
    8004f4d8:	ec56                	sd	s5,24(sp)
    8004f4da:	e85a                	sd	s6,16(sp)
    8004f4dc:	e45e                	sd	s7,8(sp)
    8004f4de:	842a                	mv	s0,a0
quickjs-nuttx/libregexp.c:1663
    if (lre_check_stack_overflow(s->opaque, 0))
    8004f4e0:	7528                	ld	a0,104(a0)
quickjs-nuttx/libregexp.c:1660
{
    8004f4e2:	892e                	mv	s2,a1
quickjs-nuttx/libregexp.c:1663
    if (lre_check_stack_overflow(s->opaque, 0))
    8004f4e4:	4581                	li	a1,0
    8004f4e6:	9f5bf0ef          	jal	ra,8000eeda <lre_check_stack_overflow>
quickjs-nuttx/libregexp.c:1664
        return re_parse_error(s, "stack overflow");
    8004f4ea:	0001b597          	auipc	a1,0x1b
    8004f4ee:	05658593          	addi	a1,a1,86 # 8006a540 <qjsc_repl+0x4f90>
quickjs-nuttx/libregexp.c:1663
    if (lre_check_stack_overflow(s->opaque, 0))
    8004f4f2:	e131                	bnez	a0,8004f536 <re_parse_disjunction+0x6c>
quickjs-nuttx/libregexp.c:1666
    start = s->byte_code.size;
    8004f4f4:	00843a03          	ld	s4,8(s0)
quickjs-nuttx/libregexp.c:1667
    if (re_parse_alternative(s, is_backward_dir))
    8004f4f8:	85ca                	mv	a1,s2
    8004f4fa:	8522                	mv	a0,s0
    8004f4fc:	a7aff0ef          	jal	ra,8004e776 <re_parse_alternative>
quickjs-nuttx/libregexp.c:1666
    start = s->byte_code.size;
    8004f500:	000a099b          	sext.w	s3,s4
quickjs-nuttx/libregexp.c:1667
    if (re_parse_alternative(s, is_backward_dir))
    8004f504:	8baa                	mv	s7,a0
    8004f506:	e529                	bnez	a0,8004f550 <re_parse_disjunction+0x86>
quickjs-nuttx/libregexp.c:1669
    while (*s->buf_ptr == '|') {
    8004f508:	07c00a93          	li	s5,124
quickjs-nuttx/libregexp.c:1678
        s->byte_code.buf[start] = REOP_split_next_first;
    8004f50c:	4b25                	li	s6,9
quickjs-nuttx/libregexp.c:1669
    while (*s->buf_ptr == '|') {
    8004f50e:	781c                	ld	a5,48(s0)
    8004f510:	0007c703          	lbu	a4,0(a5)
    8004f514:	03571f63          	bne	a4,s5,8004f552 <re_parse_disjunction+0x88>
quickjs-nuttx/libregexp.c:1670
        s->buf_ptr++;
    8004f518:	0785                	addi	a5,a5,1
    8004f51a:	f81c                	sd	a5,48(s0)
quickjs-nuttx/libregexp.c:1672
        len = s->byte_code.size - start;
    8004f51c:	641c                	ld	a5,8(s0)
quickjs-nuttx/libregexp.c:1675
        if (dbuf_insert(&s->byte_code, start, 5)) {
    8004f51e:	4615                	li	a2,5
    8004f520:	85ce                	mv	a1,s3
    8004f522:	8522                	mv	a0,s0
quickjs-nuttx/libregexp.c:1672
        len = s->byte_code.size - start;
    8004f524:	414784bb          	subw	s1,a5,s4
quickjs-nuttx/libregexp.c:1675
        if (dbuf_insert(&s->byte_code, start, 5)) {
    8004f528:	9cffd0ef          	jal	ra,8004cef6 <dbuf_insert>
    8004f52c:	cd1d                	beqz	a0,8004f56a <re_parse_disjunction+0xa0>
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004f52e:	0001b597          	auipc	a1,0x1b
    8004f532:	12a58593          	addi	a1,a1,298 # 8006a658 <qjsc_repl+0x50a8>
    8004f536:	8522                	mv	a0,s0
re_parse_disjunction():
quickjs-nuttx/libregexp.c:1691
}
    8004f538:	6406                	ld	s0,64(sp)
    8004f53a:	60a6                	ld	ra,72(sp)
    8004f53c:	74e2                	ld	s1,56(sp)
    8004f53e:	7942                	ld	s2,48(sp)
    8004f540:	79a2                	ld	s3,40(sp)
    8004f542:	7a02                	ld	s4,32(sp)
    8004f544:	6ae2                	ld	s5,24(sp)
    8004f546:	6b42                	ld	s6,16(sp)
    8004f548:	6ba2                	ld	s7,8(sp)
    8004f54a:	6161                	addi	sp,sp,80
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004f54c:	b2ffd06f          	j	8004d07a <re_parse_error>
re_parse_disjunction():
quickjs-nuttx/libregexp.c:1668
        return -1;
    8004f550:	5bfd                	li	s7,-1
quickjs-nuttx/libregexp.c:1691
}
    8004f552:	60a6                	ld	ra,72(sp)
    8004f554:	6406                	ld	s0,64(sp)
    8004f556:	74e2                	ld	s1,56(sp)
    8004f558:	7942                	ld	s2,48(sp)
    8004f55a:	79a2                	ld	s3,40(sp)
    8004f55c:	7a02                	ld	s4,32(sp)
    8004f55e:	6ae2                	ld	s5,24(sp)
    8004f560:	6b42                	ld	s6,16(sp)
    8004f562:	855e                	mv	a0,s7
    8004f564:	6ba2                	ld	s7,8(sp)
    8004f566:	6161                	addi	sp,sp,80
    8004f568:	8082                	ret
quickjs-nuttx/libregexp.c:1678
        s->byte_code.buf[start] = REOP_split_next_first;
    8004f56a:	601c                	ld	a5,0(s0)
quickjs-nuttx/libregexp.c:1681
        pos = re_emit_op_u32(s, REOP_goto, 0);
    8004f56c:	459d                	li	a1,7
    8004f56e:	4601                	li	a2,0
quickjs-nuttx/libregexp.c:1678
        s->byte_code.buf[start] = REOP_split_next_first;
    8004f570:	97ce                	add	a5,a5,s3
    8004f572:	01678023          	sb	s6,0(a5)
put_u32():
quickjs-nuttx/cutils.h:180
    8004f576:	6018                	ld	a4,0(s0)
re_parse_disjunction():
quickjs-nuttx/libregexp.c:1679
        put_u32(s->byte_code.buf + start + 1, len + 5);
    8004f578:	0054879b          	addiw	a5,s1,5
put_u32():
quickjs-nuttx/cutils.h:180
    8004f57c:	0087d69b          	srliw	a3,a5,0x8
    8004f580:	974e                	add	a4,a4,s3
    8004f582:	00f700a3          	sb	a5,1(a4)
    8004f586:	00d70123          	sb	a3,2(a4)
    8004f58a:	0107d69b          	srliw	a3,a5,0x10
    8004f58e:	0187d79b          	srliw	a5,a5,0x18
    8004f592:	00d701a3          	sb	a3,3(a4)
    8004f596:	00f70223          	sb	a5,4(a4)
re_parse_disjunction():
quickjs-nuttx/libregexp.c:1681
        pos = re_emit_op_u32(s, REOP_goto, 0);
    8004f59a:	8522                	mv	a0,s0
    8004f59c:	f92fe0ef          	jal	ra,8004dd2e <re_emit_op_u32>
    8004f5a0:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1683
        if (re_parse_alternative(s, is_backward_dir))
    8004f5a2:	85ca                	mv	a1,s2
    8004f5a4:	8522                	mv	a0,s0
    8004f5a6:	9d0ff0ef          	jal	ra,8004e776 <re_parse_alternative>
    8004f5aa:	f15d                	bnez	a0,8004f550 <re_parse_disjunction+0x86>
quickjs-nuttx/libregexp.c:1687
        len = s->byte_code.size - (pos + 4);
    8004f5ac:	641c                	ld	a5,8(s0)
put_u32():
quickjs-nuttx/cutils.h:180
    8004f5ae:	6018                	ld	a4,0(s0)
re_parse_disjunction():
quickjs-nuttx/libregexp.c:1687
    8004f5b0:	37f1                	addiw	a5,a5,-4
    8004f5b2:	9f85                	subw	a5,a5,s1
put_u32():
quickjs-nuttx/cutils.h:180
    8004f5b4:	9726                	add	a4,a4,s1
    8004f5b6:	0087d69b          	srliw	a3,a5,0x8
    8004f5ba:	00f70023          	sb	a5,0(a4)
    8004f5be:	00d700a3          	sb	a3,1(a4)
    8004f5c2:	0107d69b          	srliw	a3,a5,0x10
    8004f5c6:	0187d79b          	srliw	a5,a5,0x18
    8004f5ca:	00d70123          	sb	a3,2(a4)
    8004f5ce:	00f701a3          	sb	a5,3(a4)
quickjs-nuttx/cutils.h:181
}
    8004f5d2:	bf35                	j	8004f50e <re_parse_disjunction+0x44>

000000008004f5d4 <lre_compile>:
lre_compile():
quickjs-nuttx/libregexp.c:1745
{
    8004f5d4:	710d                	addi	sp,sp,-352
    8004f5d6:	eaa2                	sd	s0,336(sp)
    8004f5d8:	e6a6                	sd	s1,328(sp)
    8004f5da:	e2ca                	sd	s2,320(sp)
    8004f5dc:	842a                	mv	s0,a0
    8004f5de:	84ae                	mv	s1,a1
    8004f5e0:	8932                	mv	s2,a2
quickjs-nuttx/libregexp.c:1750
    memset(s, 0, sizeof(*s));
    8004f5e2:	4581                	li	a1,0
    8004f5e4:	12000613          	li	a2,288
    8004f5e8:	850a                	mv	a0,sp
quickjs-nuttx/libregexp.c:1745
{
    8004f5ea:	ee86                	sd	ra,344(sp)
    8004f5ec:	fe4e                	sd	s3,312(sp)
    8004f5ee:	fa52                	sd	s4,304(sp)
    8004f5f0:	89be                	mv	s3,a5
    8004f5f2:	8a42                	mv	s4,a6
    8004f5f4:	f656                	sd	s5,296(sp)
    8004f5f6:	f25a                	sd	s6,288(sp)
    8004f5f8:	8ab6                	mv	s5,a3
    8004f5fa:	8b3a                	mv	s6,a4
quickjs-nuttx/libregexp.c:1750
    memset(s, 0, sizeof(*s));
    8004f5fc:	646140ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libregexp.c:1756
    s->is_utf16 = ((re_flags & LRE_FLAG_UTF16) != 0);
    8004f600:	4049d79b          	sraiw	a5,s3,0x4
    8004f604:	8b85                	andi	a5,a5,1
    8004f606:	c6be                	sw	a5,76(sp)
quickjs-nuttx/libregexp.c:1758
    s->ignore_case = ((re_flags & LRE_FLAG_IGNORECASE) != 0);
    8004f608:	4019d79b          	sraiw	a5,s3,0x1
    8004f60c:	8b85                	andi	a5,a5,1
    8004f60e:	c8be                	sw	a5,80(sp)
quickjs-nuttx/libregexp.c:1759
    s->dotall = ((re_flags & LRE_FLAG_DOTALL) != 0);
    8004f610:	4039d79b          	sraiw	a5,s3,0x3
quickjs-nuttx/libregexp.c:1760
    s->capture_count = 1;
    8004f614:	577d                	li	a4,-1
quickjs-nuttx/libregexp.c:1759
    s->dotall = ((re_flags & LRE_FLAG_DOTALL) != 0);
    8004f616:	8b85                	andi	a5,a5,1
    8004f618:	cabe                	sw	a5,84(sp)
quickjs-nuttx/libregexp.c:1760
    s->capture_count = 1;
    8004f61a:	02071793          	slli	a5,a4,0x20
    8004f61e:	0785                	addi	a5,a5,1
quickjs-nuttx/libregexp.c:1764
    dbuf_init2(&s->byte_code, opaque, lre_realloc);
    8004f620:	fffc0617          	auipc	a2,0xfffc0
    8004f624:	8d260613          	addi	a2,a2,-1838 # 8000eef2 <lre_realloc>
    8004f628:	85d2                	mv	a1,s4
    8004f62a:	850a                	mv	a0,sp
quickjs-nuttx/libregexp.c:1753
    s->buf_end = s->buf_ptr + buf_len;
    8004f62c:	9b56                	add	s6,s6,s5
quickjs-nuttx/libregexp.c:1760
    s->capture_count = 1;
    8004f62e:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/libregexp.c:1762
    s->has_named_captures = -1;
    8004f630:	d0ba                	sw	a4,96(sp)
quickjs-nuttx/libregexp.c:1755
    s->re_flags = re_flags;
    8004f632:	c4ce                	sw	s3,72(sp)
quickjs-nuttx/libregexp.c:1751
    s->opaque = opaque;
    8004f634:	f4d2                	sd	s4,104(sp)
quickjs-nuttx/libregexp.c:1752
    s->buf_ptr = (const uint8_t *)buf;
    8004f636:	f856                	sd	s5,48(sp)
quickjs-nuttx/libregexp.c:1753
    s->buf_end = s->buf_ptr + buf_len;
    8004f638:	fc5a                	sd	s6,56(sp)
quickjs-nuttx/libregexp.c:1754
    s->buf_start = s->buf_ptr;
    8004f63a:	e0d6                	sd	s5,64(sp)
quickjs-nuttx/libregexp.c:1764
    dbuf_init2(&s->byte_code, opaque, lre_realloc);
    8004f63c:	334020ef          	jal	ra,80051970 <dbuf_init2>
quickjs-nuttx/libregexp.c:1765
    dbuf_init2(&s->group_names, opaque, lre_realloc);
    8004f640:	fffc0617          	auipc	a2,0xfffc0
    8004f644:	8b260613          	addi	a2,a2,-1870 # 8000eef2 <lre_realloc>
    8004f648:	85d2                	mv	a1,s4
    8004f64a:	1888                	addi	a0,sp,112
    8004f64c:	324020ef          	jal	ra,80051970 <dbuf_init2>
quickjs-nuttx/libregexp.c:1767
    dbuf_putc(&s->byte_code, re_flags); /* first element is the flags */
    8004f650:	0ff9f593          	zext.b	a1,s3
    8004f654:	850a                	mv	a0,sp
    8004f656:	48c020ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:1768
    dbuf_putc(&s->byte_code, 0); /* second element is the number of captures */
    8004f65a:	4581                	li	a1,0
    8004f65c:	850a                	mv	a0,sp
    8004f65e:	484020ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:1769
    dbuf_putc(&s->byte_code, 0); /* stack size */
    8004f662:	4581                	li	a1,0
    8004f664:	850a                	mv	a0,sp
    8004f666:	47c020ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:1770
    dbuf_put_u32(&s->byte_code, 0); /* bytecode length */
    8004f66a:	4581                	li	a1,0
    8004f66c:	850a                	mv	a0,sp
quickjs-nuttx/libregexp.c:1772
    if (!is_sticky) {
    8004f66e:	0209f993          	andi	s3,s3,32
quickjs-nuttx/libregexp.c:1770
    dbuf_put_u32(&s->byte_code, 0); /* bytecode length */
    8004f672:	e7efe0ef          	jal	ra,8004dcf0 <dbuf_put_u32.isra.0>
quickjs-nuttx/libregexp.c:1772
    if (!is_sticky) {
    8004f676:	02099063          	bnez	s3,8004f696 <lre_compile+0xc2>
quickjs-nuttx/libregexp.c:1777
        re_emit_op_u32(s, REOP_split_goto_first, 1 + 5);
    8004f67a:	4619                	li	a2,6
    8004f67c:	45a1                	li	a1,8
    8004f67e:	850a                	mv	a0,sp
    8004f680:	eaefe0ef          	jal	ra,8004dd2e <re_emit_op_u32>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f684:	4591                	li	a1,4
    8004f686:	850a                	mv	a0,sp
    8004f688:	45a020ef          	jal	ra,80051ae2 <dbuf_putc>
lre_compile():
quickjs-nuttx/libregexp.c:1779
        re_emit_op_u32(s, REOP_goto, -(5 + 1 + 5));
    8004f68c:	5655                	li	a2,-11
    8004f68e:	459d                	li	a1,7
    8004f690:	850a                	mv	a0,sp
    8004f692:	e9cfe0ef          	jal	ra,8004dd2e <re_emit_op_u32>
quickjs-nuttx/libregexp.c:1781
    re_emit_op_u8(s, REOP_save_start, 0);
    8004f696:	45ad                	li	a1,11
    8004f698:	850a                	mv	a0,sp
    8004f69a:	4601                	li	a2,0
    8004f69c:	835fd0ef          	jal	ra,8004ced0 <re_emit_op_u8>
quickjs-nuttx/libregexp.c:1783
    if (re_parse_disjunction(s, FALSE)) {
    8004f6a0:	4581                	li	a1,0
    8004f6a2:	850a                	mv	a0,sp
    8004f6a4:	e27ff0ef          	jal	ra,8004f4ca <re_parse_disjunction>
    8004f6a8:	c90d                	beqz	a0,8004f6da <lre_compile+0x106>
quickjs-nuttx/libregexp.c:1785
        dbuf_free(&s->byte_code);
    8004f6aa:	850a                	mv	a0,sp
    8004f6ac:	4fa020ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/libregexp.c:1786
        dbuf_free(&s->group_names);
    8004f6b0:	1888                	addi	a0,sp,112
    8004f6b2:	4f4020ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/libregexp.c:1787
        pstrcpy(error_msg, error_msg_size, s->u.error_msg);
    8004f6b6:	8526                	mv	a0,s1
    8004f6b8:	1110                	addi	a2,sp,160
    8004f6ba:	85ca                	mv	a1,s2
    8004f6bc:	200020ef          	jal	ra,800518bc <pstrcpy>
quickjs-nuttx/libregexp.c:1789
        return NULL;
    8004f6c0:	4501                	li	a0,0
quickjs-nuttx/libregexp.c:1788
        *plen = 0;
    8004f6c2:	00042023          	sw	zero,0(s0)
quickjs-nuttx/libregexp.c:1830
}
    8004f6c6:	60f6                	ld	ra,344(sp)
    8004f6c8:	6456                	ld	s0,336(sp)
    8004f6ca:	64b6                	ld	s1,328(sp)
    8004f6cc:	6916                	ld	s2,320(sp)
    8004f6ce:	79f2                	ld	s3,312(sp)
    8004f6d0:	7a52                	ld	s4,304(sp)
    8004f6d2:	7ab2                	ld	s5,296(sp)
    8004f6d4:	7b12                	ld	s6,288(sp)
    8004f6d6:	6135                	addi	sp,sp,352
    8004f6d8:	8082                	ret
quickjs-nuttx/libregexp.c:1792
    re_emit_op_u8(s, REOP_save_end, 0);
    8004f6da:	4601                	li	a2,0
    8004f6dc:	45b1                	li	a1,12
    8004f6de:	850a                	mv	a0,sp
    8004f6e0:	ff0fd0ef          	jal	ra,8004ced0 <re_emit_op_u8>
re_emit_op():
quickjs-nuttx/libregexp.c:340
    dbuf_putc(&s->byte_code, op);
    8004f6e4:	45a9                	li	a1,10
    8004f6e6:	850a                	mv	a0,sp
    8004f6e8:	3fa020ef          	jal	ra,80051ae2 <dbuf_putc>
lre_compile():
quickjs-nuttx/libregexp.c:1796
    if (*s->buf_ptr != '\0') {
    8004f6ec:	77c2                	ld	a5,48(sp)
quickjs-nuttx/libregexp.c:1797
        re_parse_error(s, "extraneous characters at the end");
    8004f6ee:	00026597          	auipc	a1,0x26
    8004f6f2:	faa58593          	addi	a1,a1,-86 # 80075698 <unescaped_chars.0+0x4a8>
quickjs-nuttx/libregexp.c:1796
    if (*s->buf_ptr != '\0') {
    8004f6f6:	0007c783          	lbu	a5,0(a5)
    8004f6fa:	12079c63          	bnez	a5,8004f832 <lre_compile+0x25e>
dbuf_error():
quickjs-nuttx/cutils.h:272
    return s->error;
    8004f6fe:	46e2                	lw	a3,24(sp)
re_parse_out_of_memory():
quickjs-nuttx/libregexp.c:385
    return re_parse_error(s, "out of memory");
    8004f700:	0001b597          	auipc	a1,0x1b
    8004f704:	f5858593          	addi	a1,a1,-168 # 8006a658 <qjsc_repl+0x50a8>
lre_compile():
quickjs-nuttx/libregexp.c:1801
    if (dbuf_error(&s->byte_code)) {
    8004f708:	12069563          	bnez	a3,8004f832 <lre_compile+0x25e>
quickjs-nuttx/libregexp.c:1806
    stack_size = compute_stack_size(s->byte_code.buf, s->byte_code.size);
    8004f70c:	6882                	ld	a7,0(sp)
compute_stack_size():
quickjs-nuttx/libregexp.c:1702
    bc_buf_len -= RE_HEADER_LEN;
    8004f70e:	65a2                	ld	a1,8(sp)
quickjs-nuttx/libregexp.c:1703
    pos = 0;
    8004f710:	4601                	li	a2,0
quickjs-nuttx/libregexp.c:1701
    bc_buf += RE_HEADER_LEN;
    8004f712:	00788e13          	addi	t3,a7,7 # 10007 <asinh-0x7ffefff9>
quickjs-nuttx/libregexp.c:1702
    bc_buf_len -= RE_HEADER_LEN;
    8004f716:	35e5                	addiw	a1,a1,-7
quickjs-nuttx/libregexp.c:1700
    stack_size_max = 0;
    8004f718:	4501                	li	a0,0
quickjs-nuttx/libregexp.c:1706
        len = reopcode_info[opcode].size;
    8004f71a:	00026e97          	auipc	t4,0x26
    8004f71e:	076e8e93          	addi	t4,t4,118 # 80075790 <reopcode_info>
quickjs-nuttx/libregexp.c:1707
        assert(opcode < REOP_COUNT);
    8004f722:	4f71                	li	t5,28
    8004f724:	4fad                	li	t6,11
    8004f726:	00026317          	auipc	t1,0x26
    8004f72a:	fba30313          	addi	t1,t1,-70 # 800756e0 <unescaped_chars.0+0x4f0>
quickjs-nuttx/libregexp.c:1714
                if (stack_size > STACK_SIZE_MAX)
    8004f72e:	0ff00293          	li	t0,255
quickjs-nuttx/libregexp.c:1704
    while (pos < bc_buf_len) {
    8004f732:	06b64263          	blt	a2,a1,8004f796 <lre_compile+0x1c2>
lre_compile():
quickjs-nuttx/libregexp.c:1812
    s->byte_code.buf[RE_HEADER_CAPTURE_COUNT] = s->capture_count;
    8004f736:	47e6                	lw	a5,88(sp)
    8004f738:	00f880a3          	sb	a5,1(a7)
quickjs-nuttx/libregexp.c:1813
    s->byte_code.buf[RE_HEADER_STACK_SIZE] = stack_size;
    8004f73c:	6782                	ld	a5,0(sp)
    8004f73e:	00a78123          	sb	a0,2(a5)
quickjs-nuttx/libregexp.c:1814
    put_u32(s->byte_code.buf + 3, s->byte_code.size - RE_HEADER_LEN);
    8004f742:	67a2                	ld	a5,8(sp)
    8004f744:	6702                	ld	a4,0(sp)
    8004f746:	37e5                	addiw	a5,a5,-7
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8004f748:	0087d69b          	srliw	a3,a5,0x8
    8004f74c:	00f701a3          	sb	a5,3(a4)
    8004f750:	00d70223          	sb	a3,4(a4)
    8004f754:	0107d69b          	srliw	a3,a5,0x10
    8004f758:	0187d79b          	srliw	a5,a5,0x18
    8004f75c:	00d702a3          	sb	a3,5(a4)
    8004f760:	00f70323          	sb	a5,6(a4)
lre_compile():
quickjs-nuttx/libregexp.c:1817
    if (s->group_names.size > (s->capture_count - 1)) {
    8004f764:	47e6                	lw	a5,88(sp)
    8004f766:	7666                	ld	a2,120(sp)
    8004f768:	37fd                	addiw	a5,a5,-1
    8004f76a:	00c7fd63          	bgeu	a5,a2,8004f784 <lre_compile+0x1b0>
quickjs-nuttx/libregexp.c:1818
        dbuf_put(&s->byte_code, s->group_names.buf, s->group_names.size);
    8004f76e:	75c6                	ld	a1,112(sp)
    8004f770:	850a                	mv	a0,sp
    8004f772:	2de020ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/libregexp.c:1819
        s->byte_code.buf[RE_HEADER_FLAGS] |= LRE_FLAG_NAMED_GROUPS;
    8004f776:	6702                	ld	a4,0(sp)
    8004f778:	00074783          	lbu	a5,0(a4)
    8004f77c:	f807e793          	ori	a5,a5,-128
    8004f780:	00f70023          	sb	a5,0(a4)
quickjs-nuttx/libregexp.c:1821
    dbuf_free(&s->group_names);
    8004f784:	1888                	addi	a0,sp,112
    8004f786:	420020ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/libregexp.c:1828
    *plen = s->byte_code.size;
    8004f78a:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libregexp.c:1827
    error_msg[0] = '\0';
    8004f78c:	00048023          	sb	zero,0(s1)
quickjs-nuttx/libregexp.c:1829
    return s->byte_code.buf;
    8004f790:	6502                	ld	a0,0(sp)
quickjs-nuttx/libregexp.c:1828
    *plen = s->byte_code.size;
    8004f792:	c01c                	sw	a5,0(s0)
quickjs-nuttx/libregexp.c:1829
    return s->byte_code.buf;
    8004f794:	bf0d                	j	8004f6c6 <lre_compile+0xf2>
compute_stack_size():
quickjs-nuttx/libregexp.c:1705
        opcode = bc_buf[pos];
    8004f796:	00ce03b3          	add	t2,t3,a2
    8004f79a:	0003c703          	lbu	a4,0(t2)
quickjs-nuttx/libregexp.c:1706
        len = reopcode_info[opcode].size;
    8004f79e:	00ee87b3          	add	a5,t4,a4
    8004f7a2:	0007c803          	lbu	a6,0(a5)
    8004f7a6:	0008079b          	sext.w	a5,a6
quickjs-nuttx/libregexp.c:1707
        assert(opcode < REOP_COUNT);
    8004f7aa:	00ef5b63          	bge	t5,a4,8004f7c0 <lre_compile+0x1ec>
    8004f7ae:	4601                	li	a2,0
    8004f7b0:	6ab00593          	li	a1,1707
quickjs-nuttx/libregexp.c:1708
        assert((pos + len) <= bc_buf_len);
    8004f7b4:	00026517          	auipc	a0,0x26
    8004f7b8:	a8450513          	addi	a0,a0,-1404 # 80075238 <unescaped_chars.0+0x48>
    8004f7bc:	1a0110ef          	jal	ra,8006095c <__assert>
    8004f7c0:	00f609bb          	addw	s3,a2,a5
    8004f7c4:	0135d663          	bge	a1,s3,8004f7d0 <lre_compile+0x1fc>
    8004f7c8:	4601                	li	a2,0
    8004f7ca:	6ac00593          	li	a1,1708
    8004f7ce:	b7dd                	j	8004f7b4 <lre_compile+0x1e0>
quickjs-nuttx/libregexp.c:1709
        switch(opcode) {
    8004f7d0:	3745                	addiw	a4,a4,-15
    8004f7d2:	0ff77713          	zext.b	a4,a4
    8004f7d6:	00efed63          	bltu	t6,a4,8004f7f0 <lre_compile+0x21c>
    8004f7da:	070a                	slli	a4,a4,0x2
    8004f7dc:	971a                	add	a4,a4,t1
    8004f7de:	4318                	lw	a4,0(a4)
    8004f7e0:	971a                	add	a4,a4,t1
    8004f7e2:	8702                	jr	a4
quickjs-nuttx/libregexp.c:1712
            stack_size++;
    8004f7e4:	2685                	addiw	a3,a3,1
quickjs-nuttx/libregexp.c:1713
            if (stack_size > stack_size_max) {
    8004f7e6:	00d55563          	bge	a0,a3,8004f7f0 <lre_compile+0x21c>
quickjs-nuttx/libregexp.c:1714
                if (stack_size > STACK_SIZE_MAX)
    8004f7ea:	04d2c063          	blt	t0,a3,8004f82a <lre_compile+0x256>
    8004f7ee:	8536                	mv	a0,a3
quickjs-nuttx/libregexp.c:1733
        pos += len;
    8004f7f0:	9e3d                	addw	a2,a2,a5
    8004f7f2:	b781                	j	8004f732 <lre_compile+0x15e>
quickjs-nuttx/libregexp.c:1721
            assert(stack_size > 0);
    8004f7f4:	e689                	bnez	a3,8004f7fe <lre_compile+0x22a>
    8004f7f6:	4601                	li	a2,0
    8004f7f8:	6b900593          	li	a1,1721
    8004f7fc:	bf65                	j	8004f7b4 <lre_compile+0x1e0>
quickjs-nuttx/libregexp.c:1722
            stack_size--;
    8004f7fe:	36fd                	addiw	a3,a3,-1
quickjs-nuttx/libregexp.c:1723
            break;
    8004f800:	bfc5                	j	8004f7f0 <lre_compile+0x21c>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8004f802:	0023c783          	lbu	a5,2(t2)
    8004f806:	0013c703          	lbu	a4,1(t2)
    8004f80a:	07a2                	slli	a5,a5,0x8
    8004f80c:	8fd9                	or	a5,a5,a4
compute_stack_size():
quickjs-nuttx/libregexp.c:1726
            len += val * 4;
    8004f80e:	0027979b          	slliw	a5,a5,0x2
quickjs-nuttx/libregexp.c:1730
            len += val * 8;
    8004f812:	010787bb          	addw	a5,a5,a6
quickjs-nuttx/libregexp.c:1731
            break;
    8004f816:	bfe9                	j	8004f7f0 <lre_compile+0x21c>
get_u16():
quickjs-nuttx/cutils.h:185
    8004f818:	0023c783          	lbu	a5,2(t2)
    8004f81c:	0013c703          	lbu	a4,1(t2)
    8004f820:	07a2                	slli	a5,a5,0x8
    8004f822:	8fd9                	or	a5,a5,a4
compute_stack_size():
quickjs-nuttx/libregexp.c:1730
            len += val * 8;
    8004f824:	0037979b          	slliw	a5,a5,0x3
    8004f828:	b7ed                	j	8004f812 <lre_compile+0x23e>
lre_compile():
quickjs-nuttx/libregexp.c:1808
        re_parse_error(s, "too many imbricated quantifiers");
    8004f82a:	00026597          	auipc	a1,0x26
    8004f82e:	e9658593          	addi	a1,a1,-362 # 800756c0 <unescaped_chars.0+0x4d0>
    8004f832:	850a                	mv	a0,sp
    8004f834:	847fd0ef          	jal	ra,8004d07a <re_parse_error>
quickjs-nuttx/libregexp.c:1809
        goto error;
    8004f838:	bd8d                	j	8004f6aa <lre_compile+0xd6>

000000008004f83a <lre_exec>:
lre_exec():
quickjs-nuttx/libregexp.c:2421
   starting position of the match and must be such as 0 <= cindex <=
   clen. */
int lre_exec(uint8_t **capture,
             const uint8_t *bc_buf, const uint8_t *cbuf, int cindex, int clen,
             int cbuf_type, void *opaque)
{
    8004f83a:	7175                	addi	sp,sp,-144
    8004f83c:	e122                	sd	s0,128(sp)
    8004f83e:	fca6                	sd	s1,120(sp)
    8004f840:	0900                	addi	s0,sp,144
    8004f842:	f8ca                	sd	s2,112(sp)
    8004f844:	f4ce                	sd	s3,104(sp)
    8004f846:	f0d2                	sd	s4,96(sp)
    8004f848:	ecd6                	sd	s5,88(sp)
    8004f84a:	e506                	sd	ra,136(sp)
quickjs-nuttx/libregexp.c:2426
    REExecContext s_s, *s = &s_s;
    int re_flags, i, alloca_size, ret;
    StackInt *stack_buf;
    
    re_flags = bc_buf[RE_HEADER_FLAGS];
    8004f84c:	0005c883          	lbu	a7,0(a1)
quickjs-nuttx/libregexp.c:2421
{
    8004f850:	89be                	mv	s3,a5
    8004f852:	8ab2                	mv	s5,a2
quickjs-nuttx/libregexp.c:2427
    s->multi_line = (re_flags & LRE_FLAG_MULTILINE) != 0;
    8004f854:	0028d79b          	srliw	a5,a7,0x2
    8004f858:	8b85                	andi	a5,a5,1
    8004f85a:	f8f42623          	sw	a5,-116(s0)
quickjs-nuttx/libregexp.c:2428
    s->ignore_case = (re_flags & LRE_FLAG_IGNORECASE) != 0;
    8004f85e:	0018d79b          	srliw	a5,a7,0x1
    8004f862:	8b85                	andi	a5,a5,1
    8004f864:	f8f42823          	sw	a5,-112(s0)
quickjs-nuttx/libregexp.c:2431
    s->is_utf16 = (re_flags & LRE_FLAG_UTF16) != 0;
    s->capture_count = bc_buf[RE_HEADER_CAPTURE_COUNT];
    s->stack_size_max = bc_buf[RE_HEADER_STACK_SIZE];
    8004f868:	0025c783          	lbu	a5,2(a1)
quickjs-nuttx/libregexp.c:2430
    s->capture_count = bc_buf[RE_HEADER_CAPTURE_COUNT];
    8004f86c:	0015c603          	lbu	a2,1(a1)
quickjs-nuttx/libregexp.c:2421
{
    8004f870:	8a36                	mv	s4,a3
quickjs-nuttx/libregexp.c:2433
    s->cbuf = cbuf;
    s->cbuf_end = cbuf + (clen << cbuf_type);
    8004f872:	0137173b          	sllw	a4,a4,s3
    8004f876:	0108f693          	andi	a3,a7,16
    8004f87a:	9756                	add	a4,a4,s5
quickjs-nuttx/libregexp.c:2429
    s->is_utf16 = (re_flags & LRE_FLAG_UTF16) != 0;
    8004f87c:	00d038b3          	snez	a7,a3
quickjs-nuttx/libregexp.c:2431
    s->stack_size_max = bc_buf[RE_HEADER_STACK_SIZE];
    8004f880:	0007849b          	sext.w	s1,a5
quickjs-nuttx/libregexp.c:2433
    s->cbuf_end = cbuf + (clen << cbuf_type);
    8004f884:	f6e43c23          	sd	a4,-136(s0)
quickjs-nuttx/libregexp.c:2429
    s->is_utf16 = (re_flags & LRE_FLAG_UTF16) != 0;
    8004f888:	f9142a23          	sw	a7,-108(s0)
quickjs-nuttx/libregexp.c:2430
    s->capture_count = bc_buf[RE_HEADER_CAPTURE_COUNT];
    8004f88c:	f8c42223          	sw	a2,-124(s0)
quickjs-nuttx/libregexp.c:2431
    s->stack_size_max = bc_buf[RE_HEADER_STACK_SIZE];
    8004f890:	f8942423          	sw	s1,-120(s0)
quickjs-nuttx/libregexp.c:2432
    s->cbuf = cbuf;
    8004f894:	f7543823          	sd	s5,-144(s0)
quickjs-nuttx/libregexp.c:2434
    s->cbuf_type = cbuf_type;
    8004f898:	f9342023          	sw	s3,-128(s0)
quickjs-nuttx/libregexp.c:2435
    if (s->cbuf_type == 1 && s->is_utf16)
    8004f89c:	4705                	li	a4,1
quickjs-nuttx/libregexp.c:2421
{
    8004f89e:	832a                	mv	t1,a0
    8004f8a0:	892e                	mv	s2,a1
quickjs-nuttx/libregexp.c:2435
    if (s->cbuf_type == 1 && s->is_utf16)
    8004f8a2:	00e99663          	bne	s3,a4,8004f8ae <lre_exec+0x74>
quickjs-nuttx/libregexp.c:2435 (discriminator 1)
    8004f8a6:	c681                	beqz	a3,8004f8ae <lre_exec+0x74>
quickjs-nuttx/libregexp.c:2436
        s->cbuf_type = 2;
    8004f8a8:	4709                	li	a4,2
    8004f8aa:	f8e42023          	sw	a4,-128(s0)
quickjs-nuttx/libregexp.c:2437
    s->opaque = opaque;
    8004f8ae:	f9043c23          	sd	a6,-104(s0)
quickjs-nuttx/libregexp.c:2439

    s->state_size = sizeof(REExecState) +
    8004f8b2:	0026081b          	addiw	a6,a2,2
quickjs-nuttx/libregexp.c:2440
        s->capture_count * sizeof(capture[0]) * 2 +
    8004f8b6:	0806                	slli	a6,a6,0x1
quickjs-nuttx/libregexp.c:2449
    s->state_stack_size = 0;
    
    for(i = 0; i < s->capture_count * 2; i++)
        capture[i] = NULL;
    alloca_size = s->stack_size_max * sizeof(stack_buf[0]);
    stack_buf = alloca(alloca_size);
    8004f8b8:	048e                	slli	s1,s1,0x3
quickjs-nuttx/libregexp.c:2440
        s->capture_count * sizeof(capture[0]) * 2 +
    8004f8ba:	983e                	add	a6,a6,a5
quickjs-nuttx/libregexp.c:2447
        capture[i] = NULL;
    8004f8bc:	0016161b          	slliw	a2,a2,0x1
quickjs-nuttx/libregexp.c:2449
    stack_buf = alloca(alloca_size);
    8004f8c0:	04bd                	addi	s1,s1,15
quickjs-nuttx/libregexp.c:2440
        s->capture_count * sizeof(capture[0]) * 2 +
    8004f8c2:	080e                	slli	a6,a6,0x3
quickjs-nuttx/libregexp.c:2447
        capture[i] = NULL;
    8004f8c4:	851a                	mv	a0,t1
    8004f8c6:	060e                	slli	a2,a2,0x3
    8004f8c8:	4581                	li	a1,0
quickjs-nuttx/libregexp.c:2449
    stack_buf = alloca(alloca_size);
    8004f8ca:	8091                	srli	s1,s1,0x4
quickjs-nuttx/libregexp.c:2439
    s->state_size = sizeof(REExecState) +
    8004f8cc:	fb043023          	sd	a6,-96(s0)
quickjs-nuttx/libregexp.c:2442
    s->state_stack = NULL;
    8004f8d0:	fa043423          	sd	zero,-88(s0)
quickjs-nuttx/libregexp.c:2443
    s->state_stack_len = 0;
    8004f8d4:	fa043c23          	sd	zero,-72(s0)
quickjs-nuttx/libregexp.c:2444
    s->state_stack_size = 0;
    8004f8d8:	fa043823          	sd	zero,-80(s0)
quickjs-nuttx/libregexp.c:2449
    stack_buf = alloca(alloca_size);
    8004f8dc:	0492                	slli	s1,s1,0x4
quickjs-nuttx/libregexp.c:2447
        capture[i] = NULL;
    8004f8de:	364140ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libregexp.c:2451
    ret = lre_exec_backtrack(s, capture, stack_buf, 0, bc_buf + RE_HEADER_LEN,
                             cbuf + (cindex << cbuf_type), FALSE);
    8004f8e2:	013a17bb          	sllw	a5,s4,s3
quickjs-nuttx/libregexp.c:2449
    stack_buf = alloca(alloca_size);
    8004f8e6:	40910133          	sub	sp,sp,s1
quickjs-nuttx/libregexp.c:2450
    ret = lre_exec_backtrack(s, capture, stack_buf, 0, bc_buf + RE_HEADER_LEN,
    8004f8ea:	97d6                	add	a5,a5,s5
    8004f8ec:	00790713          	addi	a4,s2,7
    8004f8f0:	860a                	mv	a2,sp
    8004f8f2:	85aa                	mv	a1,a0
    8004f8f4:	4801                	li	a6,0
    8004f8f6:	4681                	li	a3,0
    8004f8f8:	f7040513          	addi	a0,s0,-144
    8004f8fc:	ff6fd0ef          	jal	ra,8004d0f2 <lre_exec_backtrack>
    8004f900:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:2452
    lre_realloc(s->opaque, s->state_stack, 0);
    8004f902:	fa843583          	ld	a1,-88(s0)
    8004f906:	f9843503          	ld	a0,-104(s0)
    8004f90a:	4601                	li	a2,0
    8004f90c:	de6bf0ef          	jal	ra,8000eef2 <lre_realloc>
quickjs-nuttx/libregexp.c:2454
    return ret;
}
    8004f910:	f7040113          	addi	sp,s0,-144
    8004f914:	60aa                	ld	ra,136(sp)
    8004f916:	0004851b          	sext.w	a0,s1
    8004f91a:	640a                	ld	s0,128(sp)
    8004f91c:	74e6                	ld	s1,120(sp)
    8004f91e:	7946                	ld	s2,112(sp)
    8004f920:	79a6                	ld	s3,104(sp)
    8004f922:	7a06                	ld	s4,96(sp)
    8004f924:	6ae6                	ld	s5,88(sp)
    8004f926:	6149                	addi	sp,sp,144
    8004f928:	8082                	ret

000000008004f92a <lre_get_capture_count>:
lre_get_capture_count():
quickjs-nuttx/libregexp.c:2459

int lre_get_capture_count(const uint8_t *bc_buf)
{
    return bc_buf[RE_HEADER_CAPTURE_COUNT];
}
    8004f92a:	00154503          	lbu	a0,1(a0)
    8004f92e:	8082                	ret

000000008004f930 <lre_get_flags>:
lre_get_flags():
quickjs-nuttx/libregexp.c:2464

int lre_get_flags(const uint8_t *bc_buf)
{
    return bc_buf[RE_HEADER_FLAGS];
}
    8004f930:	00054503          	lbu	a0,0(a0)
    8004f934:	8082                	ret

000000008004f936 <lre_get_groupnames>:
lre_get_groupnames():
quickjs-nuttx/libregexp.c:2471
/* Return NULL if no group names. Otherwise, return a pointer to
   'capture_count - 1' zero terminated UTF-8 strings. */
const char *lre_get_groupnames(const uint8_t *bc_buf)
{
    uint32_t re_bytecode_len;
    if ((lre_get_flags(bc_buf) & LRE_FLAG_NAMED_GROUPS) == 0)
    8004f936:	00050783          	lb	a5,0(a0)
    8004f93a:	0207d363          	bgez	a5,8004f960 <lre_get_groupnames+0x2a>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8004f93e:	00454703          	lbu	a4,4(a0)
    8004f942:	00354783          	lbu	a5,3(a0)
    8004f946:	0722                	slli	a4,a4,0x8
    8004f948:	8f5d                	or	a4,a4,a5
    8004f94a:	00554783          	lbu	a5,5(a0)
    8004f94e:	07c2                	slli	a5,a5,0x10
    8004f950:	8f5d                	or	a4,a4,a5
    8004f952:	00654783          	lbu	a5,6(a0)
    8004f956:	07e2                	slli	a5,a5,0x18
lre_get_groupnames():
quickjs-nuttx/libregexp.c:2474
        return NULL;
    re_bytecode_len = get_u32(bc_buf + 3);
    return (const char *)(bc_buf + 7 + re_bytecode_len);
    8004f958:	8fd9                	or	a5,a5,a4
    8004f95a:	079d                	addi	a5,a5,7
    8004f95c:	953e                	add	a0,a0,a5
    8004f95e:	8082                	ret
quickjs-nuttx/libregexp.c:2472
        return NULL;
    8004f960:	4501                	li	a0,0
quickjs-nuttx/libregexp.c:2475
}
    8004f962:	8082                	ret

000000008004f964 <get_le24>:
get_le24():
quickjs-nuttx/libunicode.c:268
static uint32_t get_le24(const uint8_t *ptr)
{
#if defined(__x86__) || defined(__x86_64__)
    return *(uint16_t *)ptr | (ptr[2] << 16);
#else
    return ptr[0] | (ptr[1] << 8) | (ptr[2] << 16);
    8004f964:	00154783          	lbu	a5,1(a0)
    8004f968:	00254703          	lbu	a4,2(a0)
    8004f96c:	00054503          	lbu	a0,0(a0)
    8004f970:	0087979b          	slliw	a5,a5,0x8
    8004f974:	0107171b          	slliw	a4,a4,0x10
    8004f978:	8fd9                	or	a5,a5,a4
    8004f97a:	8d5d                	or	a0,a0,a5
quickjs-nuttx/libunicode.c:270
#endif
}
    8004f97c:	2501                	sext.w	a0,a0
    8004f97e:	8082                	ret

000000008004f980 <cr_compress>:
cr_compress():
quickjs-nuttx/libunicode.c:434
static void cr_compress(CharRange *cr)
{
    int i, j, k, len;
    uint32_t *pt;
    
    pt = cr->points;
    8004f980:	6518                	ld	a4,8(a0)
quickjs-nuttx/libunicode.c:435
    len = cr->len;
    8004f982:	00052803          	lw	a6,0(a0)
quickjs-nuttx/libunicode.c:438
    i = 0;
    j = 0;
    k = 0;
    8004f986:	4601                	li	a2,0
quickjs-nuttx/libunicode.c:436
    i = 0;
    8004f988:	4781                	li	a5,0
quickjs-nuttx/libunicode.c:439
    while ((i + 1) < len) {
    8004f98a:	0017869b          	addiw	a3,a5,1
    8004f98e:	0106c463          	blt	a3,a6,8004f996 <cr_compress+0x16>
quickjs-nuttx/libunicode.c:454
            pt[k + 1] = pt[j + 1];
            k += 2;
            i = j + 2;
        }
    }
    cr->len = k;
    8004f992:	c110                	sw	a2,0(a0)
quickjs-nuttx/libunicode.c:455
}
    8004f994:	8082                	ret
quickjs-nuttx/libunicode.c:440
        if (pt[i] == pt[i + 1]) {
    8004f996:	00279593          	slli	a1,a5,0x2
    8004f99a:	068a                	slli	a3,a3,0x2
    8004f99c:	95ba                	add	a1,a1,a4
    8004f99e:	96ba                	add	a3,a3,a4
    8004f9a0:	0005a883          	lw	a7,0(a1)
    8004f9a4:	4294                	lw	a3,0(a3)
    8004f9a6:	01169463          	bne	a3,a7,8004f9ae <cr_compress+0x2e>
quickjs-nuttx/libunicode.c:442
            i += 2;
    8004f9aa:	2789                	addiw	a5,a5,2
    8004f9ac:	bff9                	j	8004f98a <cr_compress+0xa>
quickjs-nuttx/libunicode.c:445
            while ((j + 3) < len && pt[j + 1] == pt[j + 2])
    8004f9ae:	0017869b          	addiw	a3,a5,1
    8004f9b2:	068a                	slli	a3,a3,0x2
    8004f9b4:	0037859b          	addiw	a1,a5,3
    8004f9b8:	96ba                	add	a3,a3,a4
    8004f9ba:	2789                	addiw	a5,a5,2
    8004f9bc:	0105da63          	bge	a1,a6,8004f9d0 <cr_compress+0x50>
quickjs-nuttx/libunicode.c:445 (discriminator 1)
    8004f9c0:	00279593          	slli	a1,a5,0x2
    8004f9c4:	95ba                	add	a1,a1,a4
    8004f9c6:	0006a303          	lw	t1,0(a3)
    8004f9ca:	418c                	lw	a1,0(a1)
    8004f9cc:	feb301e3          	beq	t1,a1,8004f9ae <cr_compress+0x2e>
quickjs-nuttx/libunicode.c:448
            pt[k] = pt[i];
    8004f9d0:	00261593          	slli	a1,a2,0x2
    8004f9d4:	95ba                	add	a1,a1,a4
    8004f9d6:	0115a023          	sw	a7,0(a1)
quickjs-nuttx/libunicode.c:449
            pt[k + 1] = pt[j + 1];
    8004f9da:	428c                	lw	a1,0(a3)
    8004f9dc:	0016069b          	addiw	a3,a2,1
    8004f9e0:	068a                	slli	a3,a3,0x2
    8004f9e2:	96ba                	add	a3,a3,a4
    8004f9e4:	c28c                	sw	a1,0(a3)
quickjs-nuttx/libunicode.c:450
            k += 2;
    8004f9e6:	2609                	addiw	a2,a2,2
quickjs-nuttx/libunicode.c:451
            i = j + 2;
    8004f9e8:	b74d                	j	8004f98a <cr_compress+0xa>

000000008004f9ea <point_cmp>:
point_cmp():
quickjs-nuttx/libunicode.c:1345
    return 0;
}

static int point_cmp(const void *p1, const void *p2, void *arg)
{
    uint32_t v1 = *(uint32_t *)p1;
    8004f9ea:	411c                	lw	a5,0(a0)
quickjs-nuttx/libunicode.c:1346
    uint32_t v2 = *(uint32_t *)p2;
    8004f9ec:	4198                	lw	a4,0(a1)
quickjs-nuttx/libunicode.c:1347
    return (v1 > v2) - (v1 < v2);
    8004f9ee:	00f73533          	sltu	a0,a4,a5
    8004f9f2:	00e7b7b3          	sltu	a5,a5,a4
quickjs-nuttx/libunicode.c:1348
}
    8004f9f6:	9d1d                	subw	a0,a0,a5
    8004f9f8:	8082                	ret

000000008004f9fa <cr_default_realloc>:
cr_default_realloc():
quickjs-nuttx/libunicode.c:385
{
    8004f9fa:	852e                	mv	a0,a1
quickjs-nuttx/libunicode.c:386
    return realloc(ptr, size);
    8004f9fc:	85b2                	mv	a1,a2
    8004f9fe:	3181006f          	j	8005fd16 <realloc>

000000008004fa02 <unicode_find_name>:
unicode_find_name():
quickjs-nuttx/libunicode.c:1032
{
    8004fa02:	7139                	addi	sp,sp,-64
    8004fa04:	f822                	sd	s0,48(sp)
    8004fa06:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:1039
    name_len = strlen(name);
    8004fa08:	852e                	mv	a0,a1
quickjs-nuttx/libunicode.c:1032
{
    8004fa0a:	ec4e                	sd	s3,24(sp)
    8004fa0c:	e852                	sd	s4,16(sp)
    8004fa0e:	e456                	sd	s5,8(sp)
    8004fa10:	fc06                	sd	ra,56(sp)
    8004fa12:	f426                	sd	s1,40(sp)
    8004fa14:	f04a                	sd	s2,32(sp)
    8004fa16:	8a2e                	mv	s4,a1
quickjs-nuttx/libunicode.c:1039
    name_len = strlen(name);
    8004fa18:	36a140ef          	jal	ra,80063d82 <strlen>
    8004fa1c:	8aaa                	mv	s5,a0
quickjs-nuttx/libunicode.c:1038
    pos = 0;
    8004fa1e:	4981                	li	s3,0
quickjs-nuttx/libunicode.c:1040
    while (*p) {
    8004fa20:	00044783          	lbu	a5,0(s0)
    8004fa24:	ef81                	bnez	a5,8004fa3c <unicode_find_name+0x3a>
quickjs-nuttx/libunicode.c:1055
    return -1;
    8004fa26:	59fd                	li	s3,-1
quickjs-nuttx/libunicode.c:1056
}
    8004fa28:	70e2                	ld	ra,56(sp)
    8004fa2a:	7442                	ld	s0,48(sp)
    8004fa2c:	74a2                	ld	s1,40(sp)
    8004fa2e:	7902                	ld	s2,32(sp)
    8004fa30:	6a42                	ld	s4,16(sp)
    8004fa32:	6aa2                	ld	s5,8(sp)
    8004fa34:	854e                	mv	a0,s3
    8004fa36:	69e2                	ld	s3,24(sp)
    8004fa38:	6121                	addi	sp,sp,64
    8004fa3a:	8082                	ret
quickjs-nuttx/libunicode.c:1042
            r = strchr(p, ',');
    8004fa3c:	02c00593          	li	a1,44
    8004fa40:	8522                	mv	a0,s0
    8004fa42:	2cc140ef          	jal	ra,80063d0e <strchr>
    8004fa46:	892a                	mv	s2,a0
quickjs-nuttx/libunicode.c:1046
                len = r - p;
    8004fa48:	408504b3          	sub	s1,a0,s0
quickjs-nuttx/libunicode.c:1043
            if (!r)
    8004fa4c:	e509                	bnez	a0,8004fa56 <unicode_find_name+0x54>
quickjs-nuttx/libunicode.c:1044
                len = strlen(p);
    8004fa4e:	8522                	mv	a0,s0
    8004fa50:	332140ef          	jal	ra,80063d82 <strlen>
    8004fa54:	84aa                	mv	s1,a0
quickjs-nuttx/libunicode.c:1047
            if (len == name_len && !memcmp(p, name, name_len))
    8004fa56:	01549863          	bne	s1,s5,8004fa66 <unicode_find_name+0x64>
quickjs-nuttx/libunicode.c:1047 (discriminator 1)
    8004fa5a:	8626                	mv	a2,s1
    8004fa5c:	85d2                	mv	a1,s4
    8004fa5e:	8522                	mv	a0,s0
    8004fa60:	174140ef          	jal	ra,80063bd4 <memcmp>
    8004fa64:	d171                	beqz	a0,8004fa28 <unicode_find_name+0x26>
quickjs-nuttx/libunicode.c:1049
            p += len + 1;
    8004fa66:	0485                	addi	s1,s1,1
    8004fa68:	9426                	add	s0,s0,s1
quickjs-nuttx/libunicode.c:1050
            if (!r)
    8004fa6a:	fc0919e3          	bnez	s2,8004fa3c <unicode_find_name+0x3a>
quickjs-nuttx/libunicode.c:1053
        pos++;
    8004fa6e:	2985                	addiw	s3,s3,1
    8004fa70:	bf45                	j	8004fa20 <unicode_find_name+0x1e>

000000008004fa72 <get_index_pos>:
get_index_pos():
quickjs-nuttx/libunicode.c:277
{
    8004fa72:	711d                	addi	sp,sp,-96
    8004fa74:	fc4e                	sd	s3,56(sp)
    8004fa76:	89aa                	mv	s3,a0
quickjs-nuttx/libunicode.c:282
    v = get_le24(index_table);
    8004fa78:	8532                	mv	a0,a2
quickjs-nuttx/libunicode.c:277
{
    8004fa7a:	e8a2                	sd	s0,80(sp)
    8004fa7c:	e4a6                	sd	s1,72(sp)
    8004fa7e:	e0ca                	sd	s2,64(sp)
    8004fa80:	f852                	sd	s4,48(sp)
    8004fa82:	ec86                	sd	ra,88(sp)
    8004fa84:	f456                	sd	s5,40(sp)
    8004fa86:	f05a                	sd	s6,32(sp)
    8004fa88:	ec5e                	sd	s7,24(sp)
    8004fa8a:	e862                	sd	s8,16(sp)
    8004fa8c:	e466                	sd	s9,8(sp)
    8004fa8e:	892e                	mv	s2,a1
    8004fa90:	84b2                	mv	s1,a2
    8004fa92:	8436                	mv	s0,a3
quickjs-nuttx/libunicode.c:283
    code = v & ((1 << 21) - 1);
    8004fa94:	00200a37          	lui	s4,0x200
quickjs-nuttx/libunicode.c:282
    v = get_le24(index_table);
    8004fa98:	ecdff0ef          	jal	ra,8004f964 <get_le24>
    8004fa9c:	2501                	sext.w	a0,a0
quickjs-nuttx/libunicode.c:283
    code = v & ((1 << 21) - 1);
    8004fa9e:	1a7d                	addi	s4,s4,-1
quickjs-nuttx/libunicode.c:284
    if (c < code) {
    8004faa0:	01457533          	and	a0,a0,s4
    8004faa4:	02a97263          	bgeu	s2,a0,8004fac8 <get_index_pos+0x56>
quickjs-nuttx/libunicode.c:285
        *pcode = 0;
    8004faa8:	0009a023          	sw	zero,0(s3)
quickjs-nuttx/libunicode.c:286
        return 0;
    8004faac:	4501                	li	a0,0
quickjs-nuttx/libunicode.c:306
}
    8004faae:	60e6                	ld	ra,88(sp)
    8004fab0:	6446                	ld	s0,80(sp)
    8004fab2:	64a6                	ld	s1,72(sp)
    8004fab4:	6906                	ld	s2,64(sp)
    8004fab6:	79e2                	ld	s3,56(sp)
    8004fab8:	7a42                	ld	s4,48(sp)
    8004faba:	7aa2                	ld	s5,40(sp)
    8004fabc:	7b02                	ld	s6,32(sp)
    8004fabe:	6be2                	ld	s7,24(sp)
    8004fac0:	6c42                	ld	s8,16(sp)
    8004fac2:	6ca2                	ld	s9,8(sp)
    8004fac4:	6125                	addi	sp,sp,96
    8004fac6:	8082                	ret
quickjs-nuttx/libunicode.c:288
    idx_max = index_table_len - 1;
    8004fac8:	fff40a9b          	addiw	s5,s0,-1
quickjs-nuttx/libunicode.c:289
    code = get_le24(index_table + idx_max * 3);
    8004facc:	450d                	li	a0,3
    8004face:	0355053b          	mulw	a0,a0,s5
    8004fad2:	9526                	add	a0,a0,s1
    8004fad4:	e91ff0ef          	jal	ra,8004f964 <get_le24>
    8004fad8:	0005079b          	sext.w	a5,a0
quickjs-nuttx/libunicode.c:291
        return -1;
    8004fadc:	557d                	li	a0,-1
quickjs-nuttx/libunicode.c:290
    if (c >= code)
    8004fade:	fcf978e3          	bgeu	s2,a5,8004faae <get_index_pos+0x3c>
quickjs-nuttx/libunicode.c:281
    idx_min = 0;
    8004fae2:	4401                	li	s0,0
quickjs-nuttx/libunicode.c:293
    while ((idx_max - idx_min) > 1) {
    8004fae4:	4b85                	li	s7,1
quickjs-nuttx/libunicode.c:294
        idx = (idx_max + idx_min) / 2;
    8004fae6:	4c09                	li	s8,2
quickjs-nuttx/libunicode.c:295
        v = get_le24(index_table + idx * 3);
    8004fae8:	4c8d                	li	s9,3
quickjs-nuttx/libunicode.c:293
    while ((idx_max - idx_min) > 1) {
    8004faea:	408a87bb          	subw	a5,s5,s0
    8004faee:	02fbc463          	blt	s7,a5,8004fb16 <get_index_pos+0xa4>
quickjs-nuttx/libunicode.c:303
    v = get_le24(index_table + idx_min * 3);
    8004faf2:	450d                	li	a0,3
    8004faf4:	0285053b          	mulw	a0,a0,s0
quickjs-nuttx/libunicode.c:305
    return (idx_min + 1) * UNICODE_INDEX_BLOCK_LEN + (v >> 21);
    8004faf8:	2405                	addiw	s0,s0,1
    8004fafa:	0054141b          	slliw	s0,s0,0x5
quickjs-nuttx/libunicode.c:303
    v = get_le24(index_table + idx_min * 3);
    8004fafe:	9526                	add	a0,a0,s1
    8004fb00:	e65ff0ef          	jal	ra,8004f964 <get_le24>
quickjs-nuttx/libunicode.c:304
    *pcode = v & ((1 << 21) - 1);
    8004fb04:	02b51793          	slli	a5,a0,0x2b
    8004fb08:	93ad                	srli	a5,a5,0x2b
quickjs-nuttx/libunicode.c:305
    return (idx_min + 1) * UNICODE_INDEX_BLOCK_LEN + (v >> 21);
    8004fb0a:	0155551b          	srliw	a0,a0,0x15
quickjs-nuttx/libunicode.c:304
    *pcode = v & ((1 << 21) - 1);
    8004fb0e:	00f9a023          	sw	a5,0(s3)
quickjs-nuttx/libunicode.c:305
    return (idx_min + 1) * UNICODE_INDEX_BLOCK_LEN + (v >> 21);
    8004fb12:	9d21                	addw	a0,a0,s0
    8004fb14:	bf69                	j	8004faae <get_index_pos+0x3c>
quickjs-nuttx/libunicode.c:294
        idx = (idx_max + idx_min) / 2;
    8004fb16:	008a87bb          	addw	a5,s5,s0
    8004fb1a:	0387cb3b          	divw	s6,a5,s8
quickjs-nuttx/libunicode.c:295
        v = get_le24(index_table + idx * 3);
    8004fb1e:	036c87bb          	mulw	a5,s9,s6
    8004fb22:	00f48533          	add	a0,s1,a5
    8004fb26:	e3fff0ef          	jal	ra,8004f964 <get_le24>
    8004fb2a:	0005079b          	sext.w	a5,a0
quickjs-nuttx/libunicode.c:297
        if (c < code) {
    8004fb2e:	0147f7b3          	and	a5,a5,s4
    8004fb32:	00f96463          	bltu	s2,a5,8004fb3a <get_index_pos+0xc8>
quickjs-nuttx/libunicode.c:294
        idx = (idx_max + idx_min) / 2;
    8004fb36:	845a                	mv	s0,s6
    8004fb38:	bf4d                	j	8004faea <get_index_pos+0x78>
    8004fb3a:	8ada                	mv	s5,s6
    8004fb3c:	b77d                	j	8004faea <get_index_pos+0x78>

000000008004fb3e <lre_is_in_table>:
lre_is_in_table():
quickjs-nuttx/libunicode.c:310
{
    8004fb3e:	7179                	addi	sp,sp,-48
    8004fb40:	f022                	sd	s0,32(sp)
    8004fb42:	ec26                	sd	s1,24(sp)
    8004fb44:	842e                	mv	s0,a1
    8004fb46:	84aa                	mv	s1,a0
quickjs-nuttx/libunicode.c:315
    pos = get_index_pos(&code, c, index_table, index_table_len);
    8004fb48:	85aa                	mv	a1,a0
    8004fb4a:	0068                	addi	a0,sp,12
quickjs-nuttx/libunicode.c:310
{
    8004fb4c:	f406                	sd	ra,40(sp)
quickjs-nuttx/libunicode.c:315
    pos = get_index_pos(&code, c, index_table, index_table_len);
    8004fb4e:	f25ff0ef          	jal	ra,8004fa72 <get_index_pos>
quickjs-nuttx/libunicode.c:316
    if (pos < 0)
    8004fb52:	0a054363          	bltz	a0,8004fbf8 <lre_is_in_table+0xba>
quickjs-nuttx/libunicode.c:318
    p = table + pos;
    8004fb56:	4732                	lw	a4,12(sp)
    8004fb58:	00a40633          	add	a2,s0,a0
quickjs-nuttx/libunicode.c:319
    bit = 0;
    8004fb5c:	4801                	li	a6,0
quickjs-nuttx/libunicode.c:322
        if (b < 64) {
    8004fb5e:	03f00513          	li	a0,63
quickjs-nuttx/libunicode.c:328
        } else if (b >= 0x80) {
    8004fb62:	07f00313          	li	t1,127
quickjs-nuttx/libunicode.c:330
        } else if (b < 0x60) {
    8004fb66:	05f00e13          	li	t3,95
quickjs-nuttx/libunicode.c:321
        b = *p++;
    8004fb6a:	00064683          	lbu	a3,0(a2)
    8004fb6e:	00160593          	addi	a1,a2,1
    8004fb72:	0006879b          	sext.w	a5,a3
quickjs-nuttx/libunicode.c:322
        if (b < 64) {
    8004fb76:	02d56c63          	bltu	a0,a3,8004fbae <lre_is_in_table+0x70>
quickjs-nuttx/libunicode.c:323
            code += (b >> 3) + 1;
    8004fb7a:	0037d79b          	srliw	a5,a5,0x3
    8004fb7e:	2705                	addiw	a4,a4,1
    8004fb80:	9f3d                	addw	a4,a4,a5
    8004fb82:	87ba                	mv	a5,a4
quickjs-nuttx/libunicode.c:324
            if (c < code)
    8004fb84:	00e4f963          	bgeu	s1,a4,8004fb96 <lre_is_in_table+0x58>
quickjs-nuttx/libunicode.c:338
            return bit;
    8004fb88:	0008051b          	sext.w	a0,a6
quickjs-nuttx/libunicode.c:341
}
    8004fb8c:	70a2                	ld	ra,40(sp)
    8004fb8e:	7402                	ld	s0,32(sp)
    8004fb90:	64e2                	ld	s1,24(sp)
    8004fb92:	6145                	addi	sp,sp,48
    8004fb94:	8082                	ret
quickjs-nuttx/libunicode.c:327
            code += (b & 7) + 1;
    8004fb96:	0076f713          	andi	a4,a3,7
quickjs-nuttx/libunicode.c:326
            bit ^= 1;
    8004fb9a:	00184813          	xori	a6,a6,1
quickjs-nuttx/libunicode.c:327
            code += (b & 7) + 1;
    8004fb9e:	2705                	addiw	a4,a4,1
quickjs-nuttx/libunicode.c:329
            code += b - 0x80 + 1;
    8004fba0:	9f3d                	addw	a4,a4,a5
quickjs-nuttx/libunicode.c:337
        if (c < code)
    8004fba2:	fee4e3e3          	bltu	s1,a4,8004fb88 <lre_is_in_table+0x4a>
quickjs-nuttx/libunicode.c:339
        bit ^= 1;
    8004fba6:	00184813          	xori	a6,a6,1
quickjs-nuttx/libunicode.c:321
        b = *p++;
    8004fbaa:	862e                	mv	a2,a1
    8004fbac:	bf7d                	j	8004fb6a <lre_is_in_table+0x2c>
quickjs-nuttx/libunicode.c:328
        } else if (b >= 0x80) {
    8004fbae:	00f37563          	bgeu	t1,a5,8004fbb8 <lre_is_in_table+0x7a>
quickjs-nuttx/libunicode.c:329
            code += b - 0x80 + 1;
    8004fbb2:	f817071b          	addiw	a4,a4,-127
    8004fbb6:	b7ed                	j	8004fba0 <lre_is_in_table+0x62>
quickjs-nuttx/libunicode.c:331
            code += (((b - 0x40) << 8) | p[0]) + 1;
    8004fbb8:	00164883          	lbu	a7,1(a2)
    8004fbbc:	0017069b          	addiw	a3,a4,1
quickjs-nuttx/libunicode.c:330
        } else if (b < 0x60) {
    8004fbc0:	00fe6c63          	bltu	t3,a5,8004fbd8 <lre_is_in_table+0x9a>
quickjs-nuttx/libunicode.c:331
            code += (((b - 0x40) << 8) | p[0]) + 1;
    8004fbc4:	fc07871b          	addiw	a4,a5,-64
    8004fbc8:	0087171b          	slliw	a4,a4,0x8
    8004fbcc:	00e8e733          	or	a4,a7,a4
    8004fbd0:	9f35                	addw	a4,a4,a3
quickjs-nuttx/libunicode.c:332
            p++;
    8004fbd2:	00260593          	addi	a1,a2,2
    8004fbd6:	b7f1                	j	8004fba2 <lre_is_in_table+0x64>
quickjs-nuttx/libunicode.c:334
            code += (((b - 0x60) << 16) | (p[0] << 8) | p[1]) + 1;
    8004fbd8:	00264703          	lbu	a4,2(a2)
    8004fbdc:	fa07879b          	addiw	a5,a5,-96
    8004fbe0:	0107979b          	slliw	a5,a5,0x10
    8004fbe4:	0088989b          	slliw	a7,a7,0x8
    8004fbe8:	0117e7b3          	or	a5,a5,a7
    8004fbec:	8fd9                	or	a5,a5,a4
    8004fbee:	00f6873b          	addw	a4,a3,a5
quickjs-nuttx/libunicode.c:335
            p += 2;
    8004fbf2:	00360593          	addi	a1,a2,3
    8004fbf6:	b775                	j	8004fba2 <lre_is_in_table+0x64>
quickjs-nuttx/libunicode.c:317
        return FALSE; /* outside the table */
    8004fbf8:	4501                	li	a0,0
    8004fbfa:	bf49                	j	8004fb8c <lre_is_in_table+0x4e>

000000008004fbfc <unicode_get_cc>:
unicode_get_cc():
quickjs-nuttx/libunicode.c:826
{
    8004fbfc:	1101                	addi	sp,sp,-32
    8004fbfe:	e822                	sd	s0,16(sp)
quickjs-nuttx/libunicode.c:831
    pos = get_index_pos(&code, c,
    8004fc00:	85aa                	mv	a1,a0
quickjs-nuttx/libunicode.c:826
{
    8004fc02:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:831
    pos = get_index_pos(&code, c,
    8004fc04:	46f5                	li	a3,29
    8004fc06:	00026617          	auipc	a2,0x26
    8004fc0a:	4a260613          	addi	a2,a2,1186 # 800760a8 <unicode_cc_index>
    8004fc0e:	0068                	addi	a0,sp,12
quickjs-nuttx/libunicode.c:826
{
    8004fc10:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libunicode.c:831
    pos = get_index_pos(&code, c,
    8004fc12:	e61ff0ef          	jal	ra,8004fa72 <get_index_pos>
quickjs-nuttx/libunicode.c:833
    if (pos < 0)
    8004fc16:	0a054e63          	bltz	a0,8004fcd2 <unicode_get_cc+0xd6>
quickjs-nuttx/libunicode.c:835
    p = unicode_cc_table + pos;
    8004fc1a:	00026717          	auipc	a4,0x26
    8004fc1e:	4e670713          	addi	a4,a4,1254 # 80076100 <unicode_cc_table>
    8004fc22:	972a                	add	a4,a4,a0
    8004fc24:	4532                	lw	a0,12(sp)
quickjs-nuttx/libunicode.c:849
            n += 48 + (1 << 11);
    8004fc26:	6585                	lui	a1,0x1
quickjs-nuttx/libunicode.c:840
        if (n < 48) {
    8004fc28:	02f00893          	li	a7,47
quickjs-nuttx/libunicode.c:841
        } else if (n < 56) {
    8004fc2c:	03700e13          	li	t3,55
quickjs-nuttx/libunicode.c:849
            n += 48 + (1 << 11);
    8004fc30:	8305859b          	addiw	a1,a1,-2000
quickjs-nuttx/libunicode.c:851
        if (type <= 1)
    8004fc34:	4305                	li	t1,1
quickjs-nuttx/libunicode.c:837
        b = *p++;
    8004fc36:	00074783          	lbu	a5,0(a4)
quickjs-nuttx/libunicode.c:838
        type = b >> 6;
    8004fc3a:	03f7f693          	andi	a3,a5,63
    8004fc3e:	0067d613          	srli	a2,a5,0x6
quickjs-nuttx/libunicode.c:839
        n = b & 0x3f;
    8004fc42:	87b6                	mv	a5,a3
quickjs-nuttx/libunicode.c:840
        if (n < 48) {
    8004fc44:	02d8ed63          	bltu	a7,a3,8004fc7e <unicode_get_cc+0x82>
quickjs-nuttx/libunicode.c:837
        b = *p++;
    8004fc48:	0705                	addi	a4,a4,1
quickjs-nuttx/libunicode.c:851
        if (type <= 1)
    8004fc4a:	00c36363          	bltu	t1,a2,8004fc50 <unicode_get_cc+0x54>
quickjs-nuttx/libunicode.c:852
            p++;
    8004fc4e:	0705                	addi	a4,a4,1
quickjs-nuttx/libunicode.c:853
        c1 = code + n + 1;
    8004fc50:	2785                	addiw	a5,a5,1
    8004fc52:	9fa9                	addw	a5,a5,a0
quickjs-nuttx/libunicode.c:854
        if (c < c1) {
    8004fc54:	02f47363          	bgeu	s0,a5,8004fc7a <unicode_get_cc+0x7e>
quickjs-nuttx/libunicode.c:855
            switch(type) {
    8004fc58:	4785                	li	a5,1
    8004fc5a:	06f60663          	beq	a2,a5,8004fcc6 <unicode_get_cc+0xca>
    8004fc5e:	4789                	li	a5,2
quickjs-nuttx/libunicode.c:863
                cc = 0;
    8004fc60:	4501                	li	a0,0
quickjs-nuttx/libunicode.c:855
            switch(type) {
    8004fc62:	00f60763          	beq	a2,a5,8004fc70 <unicode_get_cc+0x74>
    8004fc66:	0e600513          	li	a0,230
    8004fc6a:	e219                	bnez	a2,8004fc70 <unicode_get_cc+0x74>
quickjs-nuttx/libunicode.c:857
                cc = p[-1];
    8004fc6c:	fff74503          	lbu	a0,-1(a4)
quickjs-nuttx/libunicode.c:870
            return cc;
    8004fc70:	2501                	sext.w	a0,a0
quickjs-nuttx/libunicode.c:874
}
    8004fc72:	60e2                	ld	ra,24(sp)
    8004fc74:	6442                	ld	s0,16(sp)
    8004fc76:	6105                	addi	sp,sp,32
    8004fc78:	8082                	ret
    8004fc7a:	853e                	mv	a0,a5
    8004fc7c:	bf6d                	j	8004fc36 <unicode_get_cc+0x3a>
quickjs-nuttx/libunicode.c:843
            n |= *p++;
    8004fc7e:	00174803          	lbu	a6,1(a4)
quickjs-nuttx/libunicode.c:841
        } else if (n < 56) {
    8004fc82:	00de6c63          	bltu	t3,a3,8004fc9a <unicode_get_cc+0x9e>
quickjs-nuttx/libunicode.c:842
            n = (n - 48) << 8;
    8004fc86:	fd06879b          	addiw	a5,a3,-48
    8004fc8a:	0087979b          	slliw	a5,a5,0x8
quickjs-nuttx/libunicode.c:843
            n |= *p++;
    8004fc8e:	00f867b3          	or	a5,a6,a5
    8004fc92:	0709                	addi	a4,a4,2
quickjs-nuttx/libunicode.c:844
            n += 48;
    8004fc94:	0307879b          	addiw	a5,a5,48
    8004fc98:	bf4d                	j	8004fc4a <unicode_get_cc+0x4e>
quickjs-nuttx/libunicode.c:846
            n = (n - 56) << 8;
    8004fc9a:	fc86879b          	addiw	a5,a3,-56
    8004fc9e:	00274683          	lbu	a3,2(a4)
    8004fca2:	0087979b          	slliw	a5,a5,0x8
quickjs-nuttx/libunicode.c:848
            n |= *p++;
    8004fca6:	070d                	addi	a4,a4,3
    8004fca8:	06a2                	slli	a3,a3,0x8
    8004fcaa:	0106e6b3          	or	a3,a3,a6
    8004fcae:	0086981b          	slliw	a6,a3,0x8
    8004fcb2:	82a1                	srli	a3,a3,0x8
    8004fcb4:	0106e6b3          	or	a3,a3,a6
    8004fcb8:	0106969b          	slliw	a3,a3,0x10
    8004fcbc:	0106d69b          	srliw	a3,a3,0x10
    8004fcc0:	8fd5                	or	a5,a5,a3
quickjs-nuttx/libunicode.c:849
            n += 48 + (1 << 11);
    8004fcc2:	9fad                	addw	a5,a5,a1
    8004fcc4:	b759                	j	8004fc4a <unicode_get_cc+0x4e>
quickjs-nuttx/libunicode.c:860
                cc = p[-1] + c - code;
    8004fcc6:	fff74783          	lbu	a5,-1(a4)
    8004fcca:	40a4053b          	subw	a0,s0,a0
    8004fcce:	9d3d                	addw	a0,a0,a5
quickjs-nuttx/libunicode.c:861
                break;
    8004fcd0:	b745                	j	8004fc70 <unicode_get_cc+0x74>
quickjs-nuttx/libunicode.c:834
        return 0;
    8004fcd2:	4501                	li	a0,0
    8004fcd4:	bf79                	j	8004fc72 <unicode_get_cc+0x76>

000000008004fcd6 <unicode_get_short_code>:
unicode_get_short_code():
quickjs-nuttx/libunicode.c:597
    if (c < 0x80)
    8004fcd6:	07f00793          	li	a5,127
    8004fcda:	02a7f663          	bgeu	a5,a0,8004fd06 <unicode_get_short_code+0x30>
quickjs-nuttx/libunicode.c:599
    else if (c < 0x80 + 0x50)
    8004fcde:	0cf00793          	li	a5,207
    8004fce2:	00a7e563          	bltu	a5,a0,8004fcec <unicode_get_short_code+0x16>
quickjs-nuttx/libunicode.c:600
        return c - 0x80 + 0x300;
    8004fce6:	2805051b          	addiw	a0,a0,640
    8004fcea:	8082                	ret
quickjs-nuttx/libunicode.c:602
        return unicode_short_table[c - 0x80 - 0x50];
    8004fcec:	f305051b          	addiw	a0,a0,-208
    8004fcf0:	02051793          	slli	a5,a0,0x20
    8004fcf4:	01f7d513          	srli	a0,a5,0x1f
    8004fcf8:	00044797          	auipc	a5,0x44
    8004fcfc:	53078793          	addi	a5,a5,1328 # 80094228 <unicode_short_table.0>
    8004fd00:	953e                	add	a0,a0,a5
    8004fd02:	00055503          	lhu	a0,0(a0)
quickjs-nuttx/libunicode.c:603
}
    8004fd06:	8082                	ret

000000008004fd08 <unicode_decomp_entry>:
unicode_decomp_entry():
quickjs-nuttx/libunicode.c:622
{
    8004fd08:	7179                	addi	sp,sp,-48
    8004fd0a:	ec26                	sd	s1,24(sp)
    8004fd0c:	84aa                	mv	s1,a0
quickjs-nuttx/libunicode.c:628
        res[0] = unicode_decomp_table2[idx];
    8004fd0e:	00161513          	slli	a0,a2,0x1
    8004fd12:	0002a617          	auipc	a2,0x2a
    8004fd16:	e5660613          	addi	a2,a2,-426 # 80079b68 <unicode_decomp_table2>
quickjs-nuttx/libunicode.c:622
{
    8004fd1a:	e84a                	sd	s2,16(sp)
quickjs-nuttx/libunicode.c:628
        res[0] = unicode_decomp_table2[idx];
    8004fd1c:	962a                	add	a2,a2,a0
quickjs-nuttx/libunicode.c:622
{
    8004fd1e:	f406                	sd	ra,40(sp)
    8004fd20:	f022                	sd	s0,32(sp)
    8004fd22:	e44e                	sd	s3,8(sp)
    8004fd24:	e052                	sd	s4,0(sp)
quickjs-nuttx/libunicode.c:628
        res[0] = unicode_decomp_table2[idx];
    8004fd26:	00065903          	lhu	s2,0(a2)
quickjs-nuttx/libunicode.c:627
    if (type == DECOMP_TYPE_C1) {
    8004fd2a:	ef89                	bnez	a5,8004fd44 <unicode_decomp_entry+0x3c>
quickjs-nuttx/libunicode.c:628
        res[0] = unicode_decomp_table2[idx];
    8004fd2c:	0124a023          	sw	s2,0(s1)
quickjs-nuttx/libunicode.c:629
        return 1;
    8004fd30:	4985                	li	s3,1
quickjs-nuttx/libunicode.c:755
}
    8004fd32:	70a2                	ld	ra,40(sp)
    8004fd34:	7402                	ld	s0,32(sp)
    8004fd36:	64e2                	ld	s1,24(sp)
    8004fd38:	6942                	ld	s2,16(sp)
    8004fd3a:	6a02                	ld	s4,0(sp)
    8004fd3c:	854e                	mv	a0,s3
    8004fd3e:	69a2                	ld	s3,8(sp)
    8004fd40:	6145                	addi	sp,sp,48
    8004fd42:	8082                	ret
quickjs-nuttx/libunicode.c:631
        d = unicode_decomp_data + unicode_decomp_table2[idx];
    8004fd44:	00027617          	auipc	a2,0x27
    8004fd48:	eac60613          	addi	a2,a2,-340 # 80076bf0 <unicode_decomp_data>
    8004fd4c:	9932                	add	s2,s2,a2
quickjs-nuttx/libunicode.c:632
        switch(type) {
    8004fd4e:	fff7861b          	addiw	a2,a5,-1
    8004fd52:	0006081b          	sext.w	a6,a2
    8004fd56:	02100513          	li	a0,33
quickjs-nuttx/libunicode.c:631
        d = unicode_decomp_data + unicode_decomp_table2[idx];
    8004fd5a:	4981                	li	s3,0
    8004fd5c:	fd056be3          	bltu	a0,a6,8004fd32 <unicode_decomp_entry+0x2a>
    8004fd60:	02061513          	slli	a0,a2,0x20
    8004fd64:	01e55613          	srli	a2,a0,0x1e
    8004fd68:	00026517          	auipc	a0,0x26
    8004fd6c:	a4850513          	addi	a0,a0,-1464 # 800757b0 <reopcode_info+0x20>
    8004fd70:	962a                	add	a2,a2,a0
    8004fd72:	4210                	lw	a2,0(a2)
    8004fd74:	962a                	add	a2,a2,a0
    8004fd76:	8602                	jr	a2
quickjs-nuttx/libunicode.c:641
            d += (c - code) * l * 2;
    8004fd78:	40d586bb          	subw	a3,a1,a3
quickjs-nuttx/libunicode.c:640
            l = type - DECOMP_TYPE_L1 + 1;
    8004fd7c:	0007899b          	sext.w	s3,a5
quickjs-nuttx/libunicode.c:641
            d += (c - code) * l * 2;
    8004fd80:	02f687bb          	mulw	a5,a3,a5
    8004fd84:	4681                	li	a3,0
    8004fd86:	0017979b          	slliw	a5,a5,0x1
    8004fd8a:	1782                	slli	a5,a5,0x20
    8004fd8c:	9381                	srli	a5,a5,0x20
    8004fd8e:	97ca                	add	a5,a5,s2
quickjs-nuttx/libunicode.c:643
                if ((res[i] = unicode_get16(d + 2 * i)) == 0)
    8004fd90:	0017c703          	lbu	a4,1(a5)
    8004fd94:	0007c603          	lbu	a2,0(a5)
    8004fd98:	0722                	slli	a4,a4,0x8
    8004fd9a:	00c765b3          	or	a1,a4,a2
    8004fd9e:	00269613          	slli	a2,a3,0x2
    8004fda2:	9626                	add	a2,a2,s1
    8004fda4:	c20c                	sw	a1,0(a2)
    8004fda6:	e199                	bnez	a1,8004fdac <unicode_decomp_entry+0xa4>
quickjs-nuttx/libunicode.c:644
                    return 0;
    8004fda8:	4981                	li	s3,0
    8004fdaa:	b761                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:642
            for(i = 0; i < l; i++) {
    8004fdac:	0685                	addi	a3,a3,1
    8004fdae:	0006871b          	sext.w	a4,a3
    8004fdb2:	0789                	addi	a5,a5,2
    8004fdb4:	fd374ee3          	blt	a4,s3,8004fd90 <unicode_decomp_entry+0x88>
    8004fdb8:	bfad                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:651
                l = type - DECOMP_TYPE_LL1 + 1;
    8004fdba:	ff97899b          	addiw	s3,a5,-7
quickjs-nuttx/libunicode.c:652
                k = (c - code) * l;
    8004fdbe:	40d586bb          	subw	a3,a1,a3
quickjs-nuttx/libunicode.c:653
                p = len * l * 2;
    8004fdc2:	033707bb          	mulw	a5,a4,s3
    8004fdc6:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:656
                        (((d[p + (k / 4)] >> ((k % 4) * 2)) & 3) << 16);
    8004fdc8:	00030537          	lui	a0,0x30
quickjs-nuttx/libunicode.c:652
                k = (c - code) * l;
    8004fdcc:	033686bb          	mulw	a3,a3,s3
quickjs-nuttx/libunicode.c:653
                p = len * l * 2;
    8004fdd0:	0017979b          	slliw	a5,a5,0x1
quickjs-nuttx/libunicode.c:656
                        (((d[p + (k / 4)] >> ((k % 4) * 2)) & 3) << 16);
    8004fdd4:	0026d71b          	srliw	a4,a3,0x2
    8004fdd8:	9f3d                	addw	a4,a4,a5
    8004fdda:	1702                	slli	a4,a4,0x20
    8004fddc:	9301                	srli	a4,a4,0x20
    8004fdde:	974a                	add	a4,a4,s2
    8004fde0:	00074703          	lbu	a4,0(a4)
    8004fde4:	0036f613          	andi	a2,a3,3
    8004fde8:	0016161b          	slliw	a2,a2,0x1
    8004fdec:	40c7573b          	sraw	a4,a4,a2
quickjs-nuttx/libunicode.c:655
                    c1 = unicode_get16(d + 2 * k) |
    8004fdf0:	0016961b          	slliw	a2,a3,0x1
    8004fdf4:	1602                	slli	a2,a2,0x20
    8004fdf6:	9201                	srli	a2,a2,0x20
    8004fdf8:	964a                	add	a2,a2,s2
    8004fdfa:	00064803          	lbu	a6,0(a2)
    8004fdfe:	00164603          	lbu	a2,1(a2)
quickjs-nuttx/libunicode.c:656
                        (((d[p + (k / 4)] >> ((k % 4) * 2)) & 3) << 16);
    8004fe02:	0107171b          	slliw	a4,a4,0x10
    8004fe06:	8f69                	and	a4,a4,a0
quickjs-nuttx/libunicode.c:655
                    c1 = unicode_get16(d + 2 * k) |
    8004fe08:	0622                	slli	a2,a2,0x8
    8004fe0a:	01066633          	or	a2,a2,a6
    8004fe0e:	8f51                	or	a4,a4,a2
    8004fe10:	0007061b          	sext.w	a2,a4
    8004fe14:	8732                	mv	a4,a2
quickjs-nuttx/libunicode.c:657
                    if (!c1)
    8004fe16:	da49                	beqz	a2,8004fda8 <unicode_decomp_entry+0xa0>
quickjs-nuttx/libunicode.c:659
                    res[i] = c1;
    8004fe18:	00259613          	slli	a2,a1,0x2
    8004fe1c:	9626                	add	a2,a2,s1
quickjs-nuttx/libunicode.c:654
                for(i = 0; i < l; i++) {
    8004fe1e:	0585                	addi	a1,a1,1
quickjs-nuttx/libunicode.c:659
                    res[i] = c1;
    8004fe20:	c218                	sw	a4,0(a2)
quickjs-nuttx/libunicode.c:654
                for(i = 0; i < l; i++) {
    8004fe22:	0005871b          	sext.w	a4,a1
quickjs-nuttx/libunicode.c:660
                    k++;
    8004fe26:	2685                	addiw	a3,a3,1
quickjs-nuttx/libunicode.c:654
                for(i = 0; i < l; i++) {
    8004fe28:	fb3746e3          	blt	a4,s3,8004fdd4 <unicode_decomp_entry+0xcc>
    8004fe2c:	b719                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:669
            l = type - DECOMP_TYPE_S1 + 1;
    8004fe2e:	ff77899b          	addiw	s3,a5,-9
quickjs-nuttx/libunicode.c:670
            d += (c - code) * l;
    8004fe32:	40d586bb          	subw	a3,a1,a3
    8004fe36:	033687bb          	mulw	a5,a3,s3
    8004fe3a:	4401                	li	s0,0
    8004fe3c:	02079a13          	slli	s4,a5,0x20
    8004fe40:	020a5a13          	srli	s4,s4,0x20
quickjs-nuttx/libunicode.c:672
                if ((res[i] = unicode_get_short_code(d[i])) == 0)
    8004fe44:	008a07b3          	add	a5,s4,s0
    8004fe48:	97ca                	add	a5,a5,s2
    8004fe4a:	0007c503          	lbu	a0,0(a5)
    8004fe4e:	e89ff0ef          	jal	ra,8004fcd6 <unicode_get_short_code>
    8004fe52:	00241793          	slli	a5,s0,0x2
    8004fe56:	2501                	sext.w	a0,a0
    8004fe58:	97a6                	add	a5,a5,s1
    8004fe5a:	c388                	sw	a0,0(a5)
    8004fe5c:	d531                	beqz	a0,8004fda8 <unicode_decomp_entry+0xa0>
quickjs-nuttx/libunicode.c:671
            for(i = 0; i < l; i++) {
    8004fe5e:	0405                	addi	s0,s0,1
    8004fe60:	0004079b          	sext.w	a5,s0
    8004fe64:	ff37c0e3          	blt	a5,s3,8004fe44 <unicode_decomp_entry+0x13c>
    8004fe68:	b5e9                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:686
            l = 2 + ((type - DECOMP_TYPE_I2_0) >> 1);
    8004fe6a:	ff07899b          	addiw	s3,a5,-16
    8004fe6e:	0019d99b          	srliw	s3,s3,0x1
    8004fe72:	2989                	addiw	s3,s3,2
quickjs-nuttx/libunicode.c:687
            p = ((type - DECOMP_TYPE_I2_0) & 1) + (l > 2);
    8004fe74:	4709                	li	a4,2
    8004fe76:	8b85                	andi	a5,a5,1
    8004fe78:	01372733          	slt	a4,a4,s3
    8004fe7c:	9fb9                	addw	a5,a5,a4
quickjs-nuttx/libunicode.c:688
        decomp_type_i:
    8004fe7e:	4601                	li	a2,0
quickjs-nuttx/libunicode.c:692
                    c1 += c - code;
    8004fe80:	40d586bb          	subw	a3,a1,a3
quickjs-nuttx/libunicode.c:690
                c1 = unicode_get16(d + 2 * i);
    8004fe84:	00161513          	slli	a0,a2,0x1
    8004fe88:	954a                	add	a0,a0,s2
    8004fe8a:	00154703          	lbu	a4,1(a0) # 30001 <asinh-0x7ffcffff>
    8004fe8e:	00054803          	lbu	a6,0(a0)
quickjs-nuttx/libunicode.c:691
                if (i == p)
    8004fe92:	0006051b          	sext.w	a0,a2
quickjs-nuttx/libunicode.c:690
                c1 = unicode_get16(d + 2 * i);
    8004fe96:	0722                	slli	a4,a4,0x8
    8004fe98:	010765b3          	or	a1,a4,a6
    8004fe9c:	872e                	mv	a4,a1
quickjs-nuttx/libunicode.c:691
                if (i == p)
    8004fe9e:	00f51463          	bne	a0,a5,8004fea6 <unicode_decomp_entry+0x19e>
quickjs-nuttx/libunicode.c:692
                    c1 += c - code;
    8004fea2:	00b6873b          	addw	a4,a3,a1
quickjs-nuttx/libunicode.c:693
                res[i] = c1;
    8004fea6:	00261513          	slli	a0,a2,0x2
    8004feaa:	9526                	add	a0,a0,s1
quickjs-nuttx/libunicode.c:689
            for(i = 0; i < l; i++) {
    8004feac:	0605                	addi	a2,a2,1
quickjs-nuttx/libunicode.c:693
                res[i] = c1;
    8004feae:	c118                	sw	a4,0(a0)
quickjs-nuttx/libunicode.c:689
            for(i = 0; i < l; i++) {
    8004feb0:	0006071b          	sext.w	a4,a2
    8004feb4:	fd3748e3          	blt	a4,s3,8004fe84 <unicode_decomp_entry+0x17c>
    8004feb8:	bdad                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:631
        d = unicode_decomp_data + unicode_decomp_table2[idx];
    8004feba:	4781                	li	a5,0
    8004febc:	4985                	li	s3,1
    8004febe:	b7c1                	j	8004fe7e <unicode_decomp_entry+0x176>
quickjs-nuttx/libunicode.c:707
            l = type - DECOMP_TYPE_B1 + 1;
    8004fec0:	feb7899b          	addiw	s3,a5,-21
quickjs-nuttx/libunicode.c:712
                d += 2 + (c - code) * l;
    8004fec4:	40d586bb          	subw	a3,a1,a3
    8004fec8:	033686bb          	mulw	a3,a3,s3
quickjs-nuttx/libunicode.c:711
                c_min = unicode_get16(d);
    8004fecc:	00194703          	lbu	a4,1(s2)
    8004fed0:	00094783          	lbu	a5,0(s2)
quickjs-nuttx/libunicode.c:715
                    if (c1 == 0xff)
    8004fed4:	0ff00513          	li	a0,255
quickjs-nuttx/libunicode.c:711
                c_min = unicode_get16(d);
    8004fed8:	0722                	slli	a4,a4,0x8
    8004feda:	8f5d                	or	a4,a4,a5
quickjs-nuttx/libunicode.c:712
                d += 2 + (c - code) * l;
    8004fedc:	4781                	li	a5,0
    8004fede:	2689                	addiw	a3,a3,2
    8004fee0:	1682                	slli	a3,a3,0x20
    8004fee2:	9281                	srli	a3,a3,0x20
quickjs-nuttx/libunicode.c:714
                    c1 = d[i];
    8004fee4:	00d78633          	add	a2,a5,a3
    8004fee8:	964a                	add	a2,a2,s2
    8004feea:	00064803          	lbu	a6,0(a2)
quickjs-nuttx/libunicode.c:716
                        c1 = 0x20;
    8004feee:	02000593          	li	a1,32
quickjs-nuttx/libunicode.c:715
                    if (c1 == 0xff)
    8004fef2:	00a80463          	beq	a6,a0,8004fefa <unicode_decomp_entry+0x1f2>
quickjs-nuttx/libunicode.c:718
                        c1 += c_min;
    8004fef6:	00e805bb          	addw	a1,a6,a4
quickjs-nuttx/libunicode.c:719
                    res[i] = c1;
    8004fefa:	00279613          	slli	a2,a5,0x2
    8004fefe:	9626                	add	a2,a2,s1
quickjs-nuttx/libunicode.c:713
                for(i = 0; i < l; i++) {
    8004ff00:	0785                	addi	a5,a5,1
quickjs-nuttx/libunicode.c:719
                    res[i] = c1;
    8004ff02:	c20c                	sw	a1,0(a2)
quickjs-nuttx/libunicode.c:713
                for(i = 0; i < l; i++) {
    8004ff04:	0007861b          	sext.w	a2,a5
    8004ff08:	fd364ee3          	blt	a2,s3,8004fee4 <unicode_decomp_entry+0x1dc>
    8004ff0c:	b51d                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:631
        d = unicode_decomp_data + unicode_decomp_table2[idx];
    8004ff0e:	49c9                	li	s3,18
    8004ff10:	bf55                	j	8004fec4 <unicode_decomp_entry+0x1bc>
quickjs-nuttx/libunicode.c:724
            d += (c - code) * 3;
    8004ff12:	478d                	li	a5,3
    8004ff14:	40d586bb          	subw	a3,a1,a3
    8004ff18:	02f686bb          	mulw	a3,a3,a5
    8004ff1c:	1682                	slli	a3,a3,0x20
    8004ff1e:	9281                	srli	a3,a3,0x20
    8004ff20:	00d907b3          	add	a5,s2,a3
quickjs-nuttx/libunicode.c:725
            if (!(res[0] = unicode_get16(d)))
    8004ff24:	0017c703          	lbu	a4,1(a5)
    8004ff28:	0007c683          	lbu	a3,0(a5)
    8004ff2c:	0722                	slli	a4,a4,0x8
    8004ff2e:	00d76633          	or	a2,a4,a3
    8004ff32:	c090                	sw	a2,0(s1)
    8004ff34:	e6060ae3          	beqz	a2,8004fda8 <unicode_decomp_entry+0xa0>
quickjs-nuttx/libunicode.c:727
            res[1] = unicode_get_short_code(d[2]);
    8004ff38:	0027c503          	lbu	a0,2(a5)
quickjs-nuttx/libunicode.c:750
            res[1] = unicode_get_short_code(*d);
    8004ff3c:	d9bff0ef          	jal	ra,8004fcd6 <unicode_get_short_code>
    8004ff40:	c0c8                	sw	a0,4(s1)
quickjs-nuttx/libunicode.c:751
            return 2;
    8004ff42:	4989                	li	s3,2
    8004ff44:	b3fd                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:730
            res[0] = unicode_get16(d);
    8004ff46:	00194783          	lbu	a5,1(s2)
    8004ff4a:	00094703          	lbu	a4,0(s2)
quickjs-nuttx/libunicode.c:732
            d += 4 + (c - code) * 2;
    8004ff4e:	40d586bb          	subw	a3,a1,a3
quickjs-nuttx/libunicode.c:730
            res[0] = unicode_get16(d);
    8004ff52:	07a2                	slli	a5,a5,0x8
    8004ff54:	8fd9                	or	a5,a5,a4
    8004ff56:	c09c                	sw	a5,0(s1)
quickjs-nuttx/libunicode.c:731
            res[2] = unicode_get16(d + 2);
    8004ff58:	00394783          	lbu	a5,3(s2)
    8004ff5c:	00294703          	lbu	a4,2(s2)
quickjs-nuttx/libunicode.c:732
            d += 4 + (c - code) * 2;
    8004ff60:	2689                	addiw	a3,a3,2
    8004ff62:	0016969b          	slliw	a3,a3,0x1
quickjs-nuttx/libunicode.c:731
            res[2] = unicode_get16(d + 2);
    8004ff66:	07a2                	slli	a5,a5,0x8
quickjs-nuttx/libunicode.c:732
            d += 4 + (c - code) * 2;
    8004ff68:	1682                	slli	a3,a3,0x20
quickjs-nuttx/libunicode.c:731
            res[2] = unicode_get16(d + 2);
    8004ff6a:	8fd9                	or	a5,a5,a4
quickjs-nuttx/libunicode.c:732
            d += 4 + (c - code) * 2;
    8004ff6c:	9281                	srli	a3,a3,0x20
quickjs-nuttx/libunicode.c:731
            res[2] = unicode_get16(d + 2);
    8004ff6e:	c49c                	sw	a5,8(s1)
quickjs-nuttx/libunicode.c:733
            res[1] = unicode_get16(d);
    8004ff70:	00d907b3          	add	a5,s2,a3
    8004ff74:	0007c703          	lbu	a4,0(a5)
    8004ff78:	0017c783          	lbu	a5,1(a5)
quickjs-nuttx/libunicode.c:734
            return 3;
    8004ff7c:	498d                	li	s3,3
quickjs-nuttx/libunicode.c:733
            res[1] = unicode_get16(d);
    8004ff7e:	07a2                	slli	a5,a5,0x8
    8004ff80:	8fd9                	or	a5,a5,a4
    8004ff82:	c0dc                	sw	a5,4(s1)
quickjs-nuttx/libunicode.c:734
            return 3;
    8004ff84:	b37d                	j	8004fd32 <unicode_decomp_entry+0x2a>
quickjs-nuttx/libunicode.c:738
            if (type == DECOMP_TYPE_S2_UL) {
    8004ff86:	02100713          	li	a4,33
quickjs-nuttx/libunicode.c:737
            c1 = c - code;
    8004ff8a:	40d5843b          	subw	s0,a1,a3
quickjs-nuttx/libunicode.c:738
            if (type == DECOMP_TYPE_S2_UL) {
    8004ff8e:	04e79163          	bne	a5,a4,8004ffd0 <unicode_decomp_entry+0x2c8>
quickjs-nuttx/libunicode.c:739
                d += c1 & ~1;
    8004ff92:	ffe47793          	andi	a5,s0,-2
    8004ff96:	1782                	slli	a5,a5,0x20
    8004ff98:	9381                	srli	a5,a5,0x20
    8004ff9a:	993e                	add	s2,s2,a5
quickjs-nuttx/libunicode.c:740
                c = unicode_get_short_code(*d);
    8004ff9c:	00094503          	lbu	a0,0(s2)
    8004ffa0:	d37ff0ef          	jal	ra,8004fcd6 <unicode_get_short_code>
    8004ffa4:	0005071b          	sext.w	a4,a0
quickjs-nuttx/libunicode.c:741
                d++;
    8004ffa8:	00190793          	addi	a5,s2,1
quickjs-nuttx/libunicode.c:747
            if (c1 & 1)
    8004ffac:	00147693          	andi	a3,s0,1
    8004ffb0:	ce81                	beqz	a3,8004ffc8 <unicode_decomp_entry+0x2c0>
unicode_get_lower_simple():
quickjs-nuttx/libunicode.c:607
    if (c < 0x100 || (c >= 0x410 && c <= 0x42f))
    8004ffb2:	0ff00693          	li	a3,255
    8004ffb6:	00e6f763          	bgeu	a3,a4,8004ffc4 <unicode_decomp_entry+0x2bc>
    8004ffba:	bf07069b          	addiw	a3,a4,-1040
    8004ffbe:	467d                	li	a2,31
    8004ffc0:	02d66863          	bltu	a2,a3,8004fff0 <unicode_decomp_entry+0x2e8>
quickjs-nuttx/libunicode.c:608
        c += 0x20;
    8004ffc4:	0207071b          	addiw	a4,a4,32
unicode_decomp_entry():
quickjs-nuttx/libunicode.c:749
            res[0] = c;
    8004ffc8:	c098                	sw	a4,0(s1)
quickjs-nuttx/libunicode.c:750
            res[1] = unicode_get_short_code(*d);
    8004ffca:	0007c503          	lbu	a0,0(a5)
    8004ffce:	b7bd                	j	8004ff3c <unicode_decomp_entry+0x234>
quickjs-nuttx/libunicode.c:743
                d += (c1 >> 1) * 3;
    8004ffd0:	470d                	li	a4,3
    8004ffd2:	0014579b          	srliw	a5,s0,0x1
    8004ffd6:	02e787bb          	mulw	a5,a5,a4
    8004ffda:	1782                	slli	a5,a5,0x20
    8004ffdc:	9381                	srli	a5,a5,0x20
    8004ffde:	97ca                	add	a5,a5,s2
quickjs-nuttx/libunicode.c:744
                c = unicode_get16(d);
    8004ffe0:	0017c703          	lbu	a4,1(a5)
    8004ffe4:	0007c503          	lbu	a0,0(a5)
quickjs-nuttx/libunicode.c:745
                d += 2;
    8004ffe8:	0789                	addi	a5,a5,2
quickjs-nuttx/libunicode.c:744
                c = unicode_get16(d);
    8004ffea:	0722                	slli	a4,a4,0x8
    8004ffec:	8f49                	or	a4,a4,a0
quickjs-nuttx/libunicode.c:745
                d += 2;
    8004ffee:	bf7d                	j	8004ffac <unicode_decomp_entry+0x2a4>
unicode_get_lower_simple():
quickjs-nuttx/libunicode.c:610
        c++;
    8004fff0:	2705                	addiw	a4,a4,1
    8004fff2:	bfd9                	j	8004ffc8 <unicode_decomp_entry+0x2c0>

000000008004fff4 <to_nfd_rec>:
to_nfd_rec():
quickjs-nuttx/libunicode.c:914
{
    8004fff4:	7131                	addi	sp,sp,-192
    8004fff6:	e15a                	sd	s6,128(sp)
    8004fff8:	fcde                	sd	s7,120(sp)
    8004fffa:	f8e2                	sd	s8,112(sp)
quickjs-nuttx/libunicode.c:921
        if (c >= 0xac00 && c < 0xd7a4) {
    8004fffc:	7b55                	lui	s6,0xffff5
    8004fffe:	6b8d                	lui	s7,0x3
quickjs-nuttx/libunicode.c:924
            dbuf_put_u32(dbuf, 0x1100 + c / 588);
