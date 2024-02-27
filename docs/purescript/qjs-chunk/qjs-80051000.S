    80050000:	6c05                	lui	s8,0x1
quickjs-nuttx/libunicode.c:914
{
    80050002:	f526                	sd	s1,168(sp)
    80050004:	f14a                	sd	s2,160(sp)
    80050006:	ed4e                	sd	s3,152(sp)
    80050008:	e952                	sd	s4,144(sp)
    8005000a:	e556                	sd	s5,136(sp)
    8005000c:	f4e6                	sd	s9,104(sp)
    8005000e:	f0ea                	sd	s10,96(sp)
    80050010:	fd06                	sd	ra,184(sp)
    80050012:	f922                	sd	s0,176(sp)
    80050014:	ecee                	sd	s11,88(sp)
    80050016:	84aa                	mv	s1,a0
    80050018:	8aae                	mv	s5,a1
    8005001a:	8a32                	mv	s4,a2
    8005001c:	89b6                	mv	s3,a3
quickjs-nuttx/libunicode.c:919
    for(i = 0; i < src_len; i++) {
    8005001e:	4901                	li	s2,0
quickjs-nuttx/libunicode.c:921
        if (c >= 0xac00 && c < 0xd7a4) {
    80050020:	400b0b1b          	addiw	s6,s6,1024
    80050024:	ba3b8b93          	addi	s7,s7,-1117 # 2ba3 <asinh-0x7fffd45d>
unicode_decomp_char():
quickjs-nuttx/libunicode.c:769
        v = unicode_decomp_table1[idx];
    80050028:	00029c97          	auipc	s9,0x29
    8005002c:	050c8c93          	addi	s9,s9,80 # 80079078 <unicode_decomp_table1>
to_nfd_rec():
quickjs-nuttx/libunicode.c:924
            dbuf_put_u32(dbuf, 0x1100 + c / 588);
    80050030:	100c0d1b          	addiw	s10,s8,256
quickjs-nuttx/libunicode.c:919 (discriminator 1)
    for(i = 0; i < src_len; i++) {
    80050034:	0009079b          	sext.w	a5,s2
    80050038:	0347c163          	blt	a5,s4,8005005a <to_nfd_rec+0x66>
quickjs-nuttx/libunicode.c:938
}
    8005003c:	70ea                	ld	ra,184(sp)
    8005003e:	744a                	ld	s0,176(sp)
    80050040:	74aa                	ld	s1,168(sp)
    80050042:	790a                	ld	s2,160(sp)
    80050044:	69ea                	ld	s3,152(sp)
    80050046:	6a4a                	ld	s4,144(sp)
    80050048:	6aaa                	ld	s5,136(sp)
    8005004a:	6b0a                	ld	s6,128(sp)
    8005004c:	7be6                	ld	s7,120(sp)
    8005004e:	7c46                	ld	s8,112(sp)
    80050050:	7ca6                	ld	s9,104(sp)
    80050052:	7d06                	ld	s10,96(sp)
    80050054:	6de6                	ld	s11,88(sp)
    80050056:	6129                	addi	sp,sp,192
    80050058:	8082                	ret
quickjs-nuttx/libunicode.c:920
        c = src[i];
    8005005a:	00291793          	slli	a5,s2,0x2
    8005005e:	97d6                	add	a5,a5,s5
    80050060:	0007ad83          	lw	s11,0(a5)
quickjs-nuttx/libunicode.c:921
        if (c >= 0xac00 && c < 0xd7a4) {
    80050064:	016d87bb          	addw	a5,s11,s6
    80050068:	843e                	mv	s0,a5
    8005006a:	04fbec63          	bltu	s7,a5,800500c2 <to_nfd_rec+0xce>
quickjs-nuttx/libunicode.c:924
            dbuf_put_u32(dbuf, 0x1100 + c / 588);
    8005006e:	24c00d93          	li	s11,588
    80050072:	03b7d7bb          	divuw	a5,a5,s11
dbuf_put_u32():
quickjs-nuttx/cutils.h:262
    return dbuf_put(s, (uint8_t *)&val, 4);
    80050076:	4611                	li	a2,4
    80050078:	004c                	addi	a1,sp,4
    8005007a:	8526                	mv	a0,s1
to_nfd_rec():
quickjs-nuttx/libunicode.c:924
    8005007c:	01a787bb          	addw	a5,a5,s10
    80050080:	c23e                	sw	a5,4(sp)
dbuf_put_u32():
quickjs-nuttx/cutils.h:262
    80050082:	1cf010ef          	jal	ra,80051a50 <dbuf_put>
to_nfd_rec():
quickjs-nuttx/libunicode.c:925
            dbuf_put_u32(dbuf, 0x1161 + (c % 588) / 28);
    80050086:	03b47dbb          	remuw	s11,s0,s11
    8005008a:	47f1                	li	a5,28
    8005008c:	161c071b          	addiw	a4,s8,353
dbuf_put_u32():
quickjs-nuttx/cutils.h:262
    80050090:	4611                	li	a2,4
    80050092:	004c                	addi	a1,sp,4
    80050094:	8526                	mv	a0,s1
to_nfd_rec():
quickjs-nuttx/libunicode.c:925
    80050096:	02fdddbb          	divuw	s11,s11,a5
    8005009a:	00ed8dbb          	addw	s11,s11,a4
    8005009e:	c26e                	sw	s11,4(sp)
dbuf_put_u32():
quickjs-nuttx/cutils.h:262
    800500a0:	1b1010ef          	jal	ra,80051a50 <dbuf_put>
to_nfd_rec():
quickjs-nuttx/libunicode.c:926
            v = c % 28;
    800500a4:	47f1                	li	a5,28
    800500a6:	02f477bb          	remuw	a5,s0,a5
    800500aa:	843e                	mv	s0,a5
quickjs-nuttx/libunicode.c:927
            if (v != 0)
    800500ac:	c3c9                	beqz	a5,8005012e <to_nfd_rec+0x13a>
quickjs-nuttx/libunicode.c:928
                dbuf_put_u32(dbuf, 0x11a7 + v);
    800500ae:	1a7c079b          	addiw	a5,s8,423
    800500b2:	9c3d                	addw	s0,s0,a5
    800500b4:	c222                	sw	s0,4(sp)
dbuf_put_u32():
quickjs-nuttx/cutils.h:262
    800500b6:	4611                	li	a2,4
    800500b8:	004c                	addi	a1,sp,4
    800500ba:	8526                	mv	a0,s1
    800500bc:	195010ef          	jal	ra,80051a50 <dbuf_put>
    800500c0:	a0bd                	j	8005012e <to_nfd_rec+0x13a>
unicode_decomp_char():
quickjs-nuttx/libunicode.c:766
    idx_max = countof(unicode_decomp_table1) - 1;
    800500c2:	2ba00513          	li	a0,698
quickjs-nuttx/libunicode.c:765
    idx_min = 0;
    800500c6:	4701                	li	a4,0
quickjs-nuttx/libunicode.c:768
        idx = (idx_max + idx_min) / 2;
    800500c8:	00a705bb          	addw	a1,a4,a0
    800500cc:	4015d61b          	sraiw	a2,a1,0x1
quickjs-nuttx/libunicode.c:769
        v = unicode_decomp_table1[idx];
    800500d0:	00261793          	slli	a5,a2,0x2
    800500d4:	97e6                	add	a5,a5,s9
    800500d6:	439c                	lw	a5,0(a5)
quickjs-nuttx/libunicode.c:770
        code = v >> (32 - 18);
    800500d8:	00e7d69b          	srliw	a3,a5,0xe
    800500dc:	00e7d81b          	srliw	a6,a5,0xe
quickjs-nuttx/libunicode.c:773
        if (c < code) {
    800500e0:	00ddf763          	bgeu	s11,a3,800500ee <to_nfd_rec+0xfa>
quickjs-nuttx/libunicode.c:774
            idx_max = idx - 1;
    800500e4:	fff6051b          	addiw	a0,a2,-1
quickjs-nuttx/libunicode.c:767
    while (idx_min <= idx_max) {
    800500e8:	fee550e3          	bge	a0,a4,800500c8 <to_nfd_rec+0xd4>
    800500ec:	a815                	j	80050120 <to_nfd_rec+0x12c>
quickjs-nuttx/libunicode.c:771
        len = (v >> (32 - 18 - 7)) & 0x7f;
    800500ee:	0077d71b          	srliw	a4,a5,0x7
    800500f2:	07f77713          	andi	a4,a4,127
quickjs-nuttx/libunicode.c:775
        } else if (c >= code + len) {
    800500f6:	00e8083b          	addw	a6,a6,a4
    800500fa:	010de563          	bltu	s11,a6,80050104 <to_nfd_rec+0x110>
quickjs-nuttx/libunicode.c:776
            idx_min = idx + 1;
    800500fe:	0016071b          	addiw	a4,a2,1
    80050102:	b7dd                	j	800500e8 <to_nfd_rec+0xf4>
quickjs-nuttx/libunicode.c:779
            if (is_compat1 < is_compat)
    80050104:	0017f593          	andi	a1,a5,1
    80050108:	00b9ec63          	bltu	s3,a1,80050120 <to_nfd_rec+0x12c>
quickjs-nuttx/libunicode.c:781
            type = (v >> (32 - 18 - 7 - 6)) & 0x3f;
    8005010c:	0017d79b          	srliw	a5,a5,0x1
quickjs-nuttx/libunicode.c:782
            return unicode_decomp_entry(res, c, idx, code, len, type);
    80050110:	03f7f793          	andi	a5,a5,63
    80050114:	85ee                	mv	a1,s11
    80050116:	0028                	addi	a0,sp,8
    80050118:	bf1ff0ef          	jal	ra,8004fd08 <unicode_decomp_entry>
    8005011c:	862a                	mv	a2,a0
to_nfd_rec():
quickjs-nuttx/libunicode.c:931
            if (l) {
    8005011e:	e119                	bnez	a0,80050124 <to_nfd_rec+0x130>
quickjs-nuttx/libunicode.c:934
                dbuf_put_u32(dbuf, c);
    80050120:	c26e                	sw	s11,4(sp)
    80050122:	bf51                	j	800500b6 <to_nfd_rec+0xc2>
quickjs-nuttx/libunicode.c:932
                to_nfd_rec(dbuf, (int *)res, l, is_compat);
    80050124:	86ce                	mv	a3,s3
    80050126:	002c                	addi	a1,sp,8
    80050128:	8526                	mv	a0,s1
    8005012a:	ecbff0ef          	jal	ra,8004fff4 <to_nfd_rec>
quickjs-nuttx/libunicode.c:919 (discriminator 2)
    for(i = 0; i < src_len; i++) {
    8005012e:	0905                	addi	s2,s2,1
    80050130:	b711                	j	80050034 <to_nfd_rec+0x40>

0000000080050132 <lre_case_conv>:
lre_case_conv():
quickjs-nuttx/libunicode.c:158
    if (c < 128) {
    80050132:	07f00793          	li	a5,127
    80050136:	02b7e463          	bltu	a5,a1,8005015e <lre_case_conv+0x2c>
quickjs-nuttx/libunicode.c:159
        if (conv_type) {
    8005013a:	ca19                	beqz	a2,80050150 <lre_case_conv+0x1e>
quickjs-nuttx/libunicode.c:160
            if (c >= 'A' && c <= 'Z') {
    8005013c:	fbf5879b          	addiw	a5,a1,-65
    80050140:	4765                	li	a4,25
    80050142:	00f76463          	bltu	a4,a5,8005014a <lre_case_conv+0x18>
quickjs-nuttx/libunicode.c:161
                c = c - 'A' + 'a';
    80050146:	0205859b          	addiw	a1,a1,32
quickjs-nuttx/libunicode.c:188
    res[0] = c;
    8005014a:	c10c                	sw	a1,0(a0)
quickjs-nuttx/libunicode.c:190
}
    8005014c:	4505                	li	a0,1
    8005014e:	8082                	ret
quickjs-nuttx/libunicode.c:164
            if (c >= 'a' && c <= 'z') {
    80050150:	f9f5879b          	addiw	a5,a1,-97
    80050154:	4765                	li	a4,25
    80050156:	fef76ae3          	bltu	a4,a5,8005014a <lre_case_conv+0x18>
quickjs-nuttx/libunicode.c:165
                c = c - 'a' + 'A';
    8005015a:	3581                	addiw	a1,a1,-32
    8005015c:	b7fd                	j	8005014a <lre_case_conv+0x18>
quickjs-nuttx/libunicode.c:173
        idx_max = countof(case_conv_table1) - 1;
    8005015e:	17100793          	li	a5,369
quickjs-nuttx/libunicode.c:172
        idx_min = 0;
    80050162:	4801                	li	a6,0
quickjs-nuttx/libunicode.c:176
            v = case_conv_table1[idx];
    80050164:	00026e17          	auipc	t3,0x26
    80050168:	804e0e13          	addi	t3,t3,-2044 # 80075968 <case_conv_table1>
quickjs-nuttx/libunicode.c:175
            idx = (unsigned)(idx_max + idx_min) / 2;
    8005016c:	00f806bb          	addw	a3,a6,a5
    80050170:	0016d31b          	srliw	t1,a3,0x1
    80050174:	0016d69b          	srliw	a3,a3,0x1
quickjs-nuttx/libunicode.c:176
            v = case_conv_table1[idx];
    80050178:	00269713          	slli	a4,a3,0x2
    8005017c:	9772                	add	a4,a4,t3
    8005017e:	4318                	lw	a4,0(a4)
quickjs-nuttx/libunicode.c:177
            code = v >> (32 - 17);
    80050180:	00f75e9b          	srliw	t4,a4,0xf
    80050184:	00f7589b          	srliw	a7,a4,0xf
quickjs-nuttx/libunicode.c:179
            if (c < code) {
    80050188:	01d5f763          	bgeu	a1,t4,80050196 <lre_case_conv+0x64>
quickjs-nuttx/libunicode.c:180
                idx_max = idx - 1;
    8005018c:	fff3079b          	addiw	a5,t1,-1
quickjs-nuttx/libunicode.c:174
        while (idx_min <= idx_max) {
    80050190:	fd07dee3          	bge	a5,a6,8005016c <lre_case_conv+0x3a>
    80050194:	bf5d                	j	8005014a <lre_case_conv+0x18>
quickjs-nuttx/libunicode.c:178
            len = (v >> (32 - 17 - 7)) & 0x7f;
    80050196:	0087581b          	srliw	a6,a4,0x8
    8005019a:	07f87813          	andi	a6,a6,127
quickjs-nuttx/libunicode.c:181
            } else if (c >= code + len) {
    8005019e:	0108883b          	addw	a6,a7,a6
    800501a2:	0105e563          	bltu	a1,a6,800501ac <lre_case_conv+0x7a>
quickjs-nuttx/libunicode.c:182
                idx_min = idx + 1;
    800501a6:	0013081b          	addiw	a6,t1,1
    800501aa:	b7dd                	j	80050190 <lre_case_conv+0x5e>
quickjs-nuttx/libunicode.c:184
                return lre_case_conv_entry(res, c, conv_type, idx, v);
    800501ac:	a009                	j	800501ae <lre_case_conv_entry>

00000000800501ae <lre_case_conv_entry>:
lre_case_conv_entry():
quickjs-nuttx/libunicode.c:64
    data = ((v & 0xf) << 8) | case_conv_table2[idx];
    800501ae:	6885                	lui	a7,0x1
    800501b0:	f0088893          	addi	a7,a7,-256 # f00 <asinh-0x7ffff100>
    800501b4:	0087179b          	slliw	a5,a4,0x8
    800501b8:	0117f7b3          	and	a5,a5,a7
    800501bc:	02069893          	slli	a7,a3,0x20
    800501c0:	0208d893          	srli	a7,a7,0x20
    800501c4:	00026697          	auipc	a3,0x26
    800501c8:	d6c68693          	addi	a3,a3,-660 # 80075f30 <case_conv_table2>
    800501cc:	96c6                	add	a3,a3,a7
    800501ce:	0006c683          	lbu	a3,0(a3)
quickjs-nuttx/libunicode.c:60
{
    800501d2:	7179                	addi	sp,sp,-48
quickjs-nuttx/libunicode.c:63
    type = (v >> (32 - 17 - 7 - 4)) & 0xf;
    800501d4:	0047581b          	srliw	a6,a4,0x4
quickjs-nuttx/libunicode.c:64
    data = ((v & 0xf) << 8) | case_conv_table2[idx];
    800501d8:	8fd5                	or	a5,a5,a3
quickjs-nuttx/libunicode.c:60
{
    800501da:	f022                	sd	s0,32(sp)
    800501dc:	ec26                	sd	s1,24(sp)
    800501de:	f406                	sd	ra,40(sp)
    800501e0:	84aa                	mv	s1,a0
    800501e2:	46b1                	li	a3,12
quickjs-nuttx/libunicode.c:63
    type = (v >> (32 - 17 - 7 - 4)) & 0xf;
    800501e4:	00f87513          	andi	a0,a6,15
quickjs-nuttx/libunicode.c:60
{
    800501e8:	8432                	mv	s0,a2
quickjs-nuttx/libunicode.c:64
    data = ((v & 0xf) << 8) | case_conv_table2[idx];
    800501ea:	2781                	sext.w	a5,a5
quickjs-nuttx/libunicode.c:66
    switch(type) {
    800501ec:	1aa6eb63          	bltu	a3,a0,800503a2 <lre_case_conv_entry+0x1f4>
    800501f0:	00025e17          	auipc	t3,0x25
    800501f4:	648e0e13          	addi	t3,t3,1608 # 80075838 <reopcode_info+0xa8>
    800501f8:	00251893          	slli	a7,a0,0x2
    800501fc:	98f2                	add	a7,a7,t3
    800501fe:	0008a683          	lw	a3,0(a7)
    80050202:	00c03633          	snez	a2,a2
    80050206:	8332                	mv	t1,a2
    80050208:	96f2                	add	a3,a3,t3
    8005020a:	00f7571b          	srliw	a4,a4,0xf
    8005020e:	8682                	jr	a3
quickjs-nuttx/libunicode.c:71
        if (conv_type == (type & 1) ||
    80050210:	00187693          	andi	a3,a6,1
    80050214:	00868963          	beq	a3,s0,80050226 <lre_case_conv_entry+0x78>
quickjs-nuttx/libunicode.c:71 (discriminator 1)
    80050218:	00e87813          	andi	a6,a6,14
    8005021c:	02080463          	beqz	a6,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:72
            (type >= RUN_TYPE_UF && conv_type == 2)) {
    80050220:	4689                	li	a3,2
    80050222:	02d41163          	bne	s0,a3,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:73
            c = c - code + (case_conv_table1[data] >> (32 - 17));
    80050226:	02079613          	slli	a2,a5,0x20
    8005022a:	01e65693          	srli	a3,a2,0x1e
    8005022e:	00025797          	auipc	a5,0x25
    80050232:	73a78793          	addi	a5,a5,1850 # 80075968 <case_conv_table1>
    80050236:	97b6                	add	a5,a5,a3
    80050238:	40e5873b          	subw	a4,a1,a4
    8005023c:	438c                	lw	a1,0(a5)
    8005023e:	00f5d59b          	srliw	a1,a1,0xf
quickjs-nuttx/libunicode.c:80
        c = (a ^ 1) + code;
    80050242:	9db9                	addw	a1,a1,a4
quickjs-nuttx/libunicode.c:147
    res[0] = c;
    80050244:	c08c                	sw	a1,0(s1)
quickjs-nuttx/libunicode.c:148
    return 1;
    80050246:	4405                	li	s0,1
    80050248:	a0a5                	j	800502b0 <lre_case_conv_entry+0x102>
quickjs-nuttx/libunicode.c:77
        a = c - code;
    8005024a:	40e587bb          	subw	a5,a1,a4
quickjs-nuttx/libunicode.c:78
        if ((a & 1) != (1 - is_lower))
    8005024e:	00164613          	xori	a2,a2,1
    80050252:	0017f693          	andi	a3,a5,1
    80050256:	fed617e3          	bne	a2,a3,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:80
        c = (a ^ 1) + code;
    8005025a:	0017c593          	xori	a1,a5,1
    8005025e:	b7d5                	j	80050242 <lre_case_conv_entry+0x94>
quickjs-nuttx/libunicode.c:83
        a = c - code;
    80050260:	40e5873b          	subw	a4,a1,a4
quickjs-nuttx/libunicode.c:84
        if (a == 1) {
    80050264:	4785                	li	a5,1
    80050266:	00f71863          	bne	a4,a5,80050276 <lre_case_conv_entry+0xc8>
quickjs-nuttx/libunicode.c:85
            c += 2 * is_lower - 1;
    8005026a:	35fd                	addiw	a1,a1,-1
    8005026c:	0016131b          	slliw	t1,a2,0x1
quickjs-nuttx/libunicode.c:87
            c += (2 * is_lower - 1) * 2;
    80050270:	00b305bb          	addw	a1,t1,a1
    80050274:	bfc1                	j	80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:86
        } else if (a == (1 - is_lower) * 2) {
    80050276:	00163613          	seqz	a2,a2
    8005027a:	0016161b          	slliw	a2,a2,0x1
    8005027e:	fce613e3          	bne	a2,a4,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:87
            c += (2 * is_lower - 1) * 2;
    80050282:	35f9                	addiw	a1,a1,-2
    80050284:	0023131b          	slliw	t1,t1,0x2
    80050288:	b7e5                	j	80050270 <lre_case_conv_entry+0xc2>
quickjs-nuttx/libunicode.c:73
            c = c - code + (case_conv_table1[data] >> (32 - 17));
    8005028a:	40e5873b          	subw	a4,a1,a4
    8005028e:	00025697          	auipc	a3,0x25
    80050292:	66268693          	addi	a3,a3,1634 # 800758f0 <case_conv_ext>
quickjs-nuttx/libunicode.c:91
        if (!is_lower) {
    80050296:	e01d                	bnez	s0,800502bc <lre_case_conv_entry+0x10e>
quickjs-nuttx/libunicode.c:92
            res[0] = c - code + case_conv_ext[data >> 6];
    80050298:	0067d79b          	srliw	a5,a5,0x6
    8005029c:	0786                	slli	a5,a5,0x1
    8005029e:	96be                	add	a3,a3,a5
    800502a0:	0006d583          	lhu	a1,0(a3)
quickjs-nuttx/libunicode.c:93
            res[1] = 0x399;
    800502a4:	39900793          	li	a5,921
quickjs-nuttx/libunicode.c:92
            res[0] = c - code + case_conv_ext[data >> 6];
    800502a8:	9db9                	addw	a1,a1,a4
    800502aa:	c08c                	sw	a1,0(s1)
quickjs-nuttx/libunicode.c:119
        res[1] = case_conv_ext[data & 0x3f];
    800502ac:	c0dc                	sw	a5,4(s1)
quickjs-nuttx/libunicode.c:120
        return 2;
    800502ae:	4409                	li	s0,2
quickjs-nuttx/libunicode.c:149
}
    800502b0:	70a2                	ld	ra,40(sp)
    800502b2:	8522                	mv	a0,s0
    800502b4:	7402                	ld	s0,32(sp)
    800502b6:	64e2                	ld	s1,24(sp)
    800502b8:	6145                	addi	sp,sp,48
    800502ba:	8082                	ret
quickjs-nuttx/libunicode.c:96
            c = c - code + case_conv_ext[data & 0x3f];
    800502bc:	03f7f793          	andi	a5,a5,63
    800502c0:	0786                	slli	a5,a5,0x1
    800502c2:	96be                	add	a3,a3,a5
    800502c4:	0006d583          	lhu	a1,0(a3)
    800502c8:	bfad                	j	80050242 <lre_case_conv_entry+0x94>
quickjs-nuttx/libunicode.c:100
        if (conv_type == 1)
    800502ca:	4705                	li	a4,1
    800502cc:	f6e40ce3          	beq	s0,a4,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:102
        c = data + (conv_type == 2) * 0x20;
    800502d0:	4709                	li	a4,2
    800502d2:	02000593          	li	a1,32
    800502d6:	00e40363          	beq	s0,a4,800502dc <lre_case_conv_entry+0x12e>
    800502da:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:102 (discriminator 4)
    800502dc:	9dbd                	addw	a1,a1,a5
quickjs-nuttx/libunicode.c:103 (discriminator 4)
        break;
    800502de:	b79d                	j	80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:105
        if (conv_type == 1)
    800502e0:	4705                	li	a4,1
    800502e2:	f6e401e3          	beq	s0,a4,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:107
        c = case_conv_ext[data] + (conv_type == 2);
    800502e6:	02079693          	slli	a3,a5,0x20
    800502ea:	01f6d713          	srli	a4,a3,0x1f
    800502ee:	00025797          	auipc	a5,0x25
    800502f2:	60278793          	addi	a5,a5,1538 # 800758f0 <case_conv_ext>
    800502f6:	97ba                	add	a5,a5,a4
    800502f8:	0007d583          	lhu	a1,0(a5)
    800502fc:	1479                	addi	s0,s0,-2
    800502fe:	00143413          	seqz	s0,s0
    80050302:	9da1                	addw	a1,a1,s0
quickjs-nuttx/libunicode.c:108
        break;
    80050304:	b781                	j	80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:111
        if (is_lower != (type - RUN_TYPE_U_EXT))
    80050306:	155d                	addi	a0,a0,-9
    80050308:	00a03533          	snez	a0,a0
    8005030c:	f2c51ce3          	bne	a0,a2,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:113
        c = case_conv_ext[data];
    80050310:	02079693          	slli	a3,a5,0x20
    80050314:	01f6d713          	srli	a4,a3,0x1f
    80050318:	00025797          	auipc	a5,0x25
    8005031c:	5d878793          	addi	a5,a5,1496 # 800758f0 <case_conv_ext>
    80050320:	97ba                	add	a5,a5,a4
    80050322:	0007d583          	lhu	a1,0(a5)
quickjs-nuttx/libunicode.c:114
        break;
    80050326:	bf39                	j	80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:116
        if (!is_lower)
    80050328:	dc11                	beqz	s0,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:118
        res[0] = c - code + case_conv_ext[data >> 6];
    8005032a:	0067d69b          	srliw	a3,a5,0x6
    8005032e:	00025617          	auipc	a2,0x25
    80050332:	5c260613          	addi	a2,a2,1474 # 800758f0 <case_conv_ext>
    80050336:	0686                	slli	a3,a3,0x1
    80050338:	96b2                	add	a3,a3,a2
    8005033a:	0006d683          	lhu	a3,0(a3)
quickjs-nuttx/libunicode.c:119
        res[1] = case_conv_ext[data & 0x3f];
    8005033e:	03f7f793          	andi	a5,a5,63
    80050342:	0786                	slli	a5,a5,0x1
quickjs-nuttx/libunicode.c:118
        res[0] = c - code + case_conv_ext[data >> 6];
    80050344:	9d99                	subw	a1,a1,a4
    80050346:	9db5                	addw	a1,a1,a3
quickjs-nuttx/libunicode.c:119
        res[1] = case_conv_ext[data & 0x3f];
    80050348:	963e                	add	a2,a2,a5
    8005034a:	00065783          	lhu	a5,0(a2)
quickjs-nuttx/libunicode.c:118
        res[0] = c - code + case_conv_ext[data >> 6];
    8005034e:	c08c                	sw	a1,0(s1)
quickjs-nuttx/libunicode.c:119
        res[1] = case_conv_ext[data & 0x3f];
    80050350:	bfb1                	j	800502ac <lre_case_conv_entry+0xfe>
quickjs-nuttx/libunicode.c:122
        if (conv_type == 1)
    80050352:	4685                	li	a3,1
    80050354:	eed408e3          	beq	s0,a3,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:124
        res[0] = c - code + case_conv_ext[data >> 6];
    80050358:	0067d69b          	srliw	a3,a5,0x6
    8005035c:	00025617          	auipc	a2,0x25
    80050360:	59460613          	addi	a2,a2,1428 # 800758f0 <case_conv_ext>
    80050364:	0686                	slli	a3,a3,0x1
quickjs-nuttx/libunicode.c:125
        res[1] = case_conv_ext[data & 0x3f];
    80050366:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/libunicode.c:124
        res[0] = c - code + case_conv_ext[data >> 6];
    8005036a:	96b2                	add	a3,a3,a2
quickjs-nuttx/libunicode.c:125
        res[1] = case_conv_ext[data & 0x3f];
    8005036c:	0786                	slli	a5,a5,0x1
quickjs-nuttx/libunicode.c:124
        res[0] = c - code + case_conv_ext[data >> 6];
    8005036e:	0006d683          	lhu	a3,0(a3)
quickjs-nuttx/libunicode.c:125
        res[1] = case_conv_ext[data & 0x3f];
    80050372:	963e                	add	a2,a2,a5
    80050374:	00065783          	lhu	a5,0(a2)
quickjs-nuttx/libunicode.c:124
        res[0] = c - code + case_conv_ext[data >> 6];
    80050378:	9d99                	subw	a1,a1,a4
    8005037a:	9db5                	addw	a1,a1,a3
quickjs-nuttx/libunicode.c:125
        res[1] = case_conv_ext[data & 0x3f];
    8005037c:	c0dc                	sw	a5,4(s1)
quickjs-nuttx/libunicode.c:124
        res[0] = c - code + case_conv_ext[data >> 6];
    8005037e:	c08c                	sw	a1,0(s1)
quickjs-nuttx/libunicode.c:126
        if (conv_type == 2) {
    80050380:	4789                	li	a5,2
    80050382:	f2f416e3          	bne	s0,a5,800502ae <lre_case_conv_entry+0x100>
lre_case_conv1():
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    80050386:	4605                	li	a2,1
    80050388:	850a                	mv	a0,sp
    8005038a:	da9ff0ef          	jal	ra,80050132 <lre_case_conv>
quickjs-nuttx/libunicode.c:55
    return res[0];
    8005038e:	4782                	lw	a5,0(sp)
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    80050390:	40cc                	lw	a1,4(s1)
    80050392:	4605                	li	a2,1
lre_case_conv_entry():
quickjs-nuttx/libunicode.c:128
            res[0] = lre_case_conv1(res[0], 1);
    80050394:	c09c                	sw	a5,0(s1)
lre_case_conv1():
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    80050396:	850a                	mv	a0,sp
    80050398:	d9bff0ef          	jal	ra,80050132 <lre_case_conv>
quickjs-nuttx/libunicode.c:55
    return res[0];
    8005039c:	4782                	lw	a5,0(sp)
lre_case_conv_entry():
quickjs-nuttx/libunicode.c:129
            res[1] = lre_case_conv1(res[1], 1);
    8005039e:	c0dc                	sw	a5,4(s1)
    800503a0:	bf01                	j	800502b0 <lre_case_conv_entry+0x102>
quickjs-nuttx/libunicode.c:134
        if (conv_type == 1)
    800503a2:	4705                	li	a4,1
    800503a4:	eae600e3          	beq	a2,a4,80050244 <lre_case_conv_entry+0x96>
quickjs-nuttx/libunicode.c:136
        res[0] = case_conv_ext[data >> 8];
    800503a8:	0087d71b          	srliw	a4,a5,0x8
    800503ac:	00025697          	auipc	a3,0x25
    800503b0:	54468693          	addi	a3,a3,1348 # 800758f0 <case_conv_ext>
    800503b4:	0706                	slli	a4,a4,0x1
    800503b6:	9736                	add	a4,a4,a3
    800503b8:	00075583          	lhu	a1,0(a4)
quickjs-nuttx/libunicode.c:137
        res[1] = case_conv_ext[(data >> 4) & 0xf];
    800503bc:	0047d71b          	srliw	a4,a5,0x4
    800503c0:	8b3d                	andi	a4,a4,15
quickjs-nuttx/libunicode.c:138
        res[2] = case_conv_ext[data & 0xf];
    800503c2:	8bbd                	andi	a5,a5,15
quickjs-nuttx/libunicode.c:137
        res[1] = case_conv_ext[(data >> 4) & 0xf];
    800503c4:	0706                	slli	a4,a4,0x1
quickjs-nuttx/libunicode.c:138
        res[2] = case_conv_ext[data & 0xf];
    800503c6:	0786                	slli	a5,a5,0x1
quickjs-nuttx/libunicode.c:137
        res[1] = case_conv_ext[(data >> 4) & 0xf];
    800503c8:	9736                	add	a4,a4,a3
quickjs-nuttx/libunicode.c:138
        res[2] = case_conv_ext[data & 0xf];
    800503ca:	97b6                	add	a5,a5,a3
    800503cc:	0007d783          	lhu	a5,0(a5)
quickjs-nuttx/libunicode.c:137
        res[1] = case_conv_ext[(data >> 4) & 0xf];
    800503d0:	00075703          	lhu	a4,0(a4)
quickjs-nuttx/libunicode.c:136
        res[0] = case_conv_ext[data >> 8];
    800503d4:	c08c                	sw	a1,0(s1)
quickjs-nuttx/libunicode.c:138
        res[2] = case_conv_ext[data & 0xf];
    800503d6:	c49c                	sw	a5,8(s1)
quickjs-nuttx/libunicode.c:137
        res[1] = case_conv_ext[(data >> 4) & 0xf];
    800503d8:	c0d8                	sw	a4,4(s1)
quickjs-nuttx/libunicode.c:139
        if (conv_type == 2) {
    800503da:	4789                	li	a5,2
    800503dc:	02f61663          	bne	a2,a5,80050408 <lre_case_conv_entry+0x25a>
lre_case_conv1():
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    800503e0:	4605                	li	a2,1
    800503e2:	850a                	mv	a0,sp
    800503e4:	d4fff0ef          	jal	ra,80050132 <lre_case_conv>
quickjs-nuttx/libunicode.c:55
    return res[0];
    800503e8:	4782                	lw	a5,0(sp)
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    800503ea:	40cc                	lw	a1,4(s1)
    800503ec:	4605                	li	a2,1
lre_case_conv_entry():
quickjs-nuttx/libunicode.c:141
            res[0] = lre_case_conv1(res[0], 1);
    800503ee:	c09c                	sw	a5,0(s1)
lre_case_conv1():
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    800503f0:	850a                	mv	a0,sp
    800503f2:	d41ff0ef          	jal	ra,80050132 <lre_case_conv>
quickjs-nuttx/libunicode.c:55
    return res[0];
    800503f6:	4782                	lw	a5,0(sp)
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    800503f8:	448c                	lw	a1,8(s1)
    800503fa:	4605                	li	a2,1
lre_case_conv_entry():
quickjs-nuttx/libunicode.c:142
            res[1] = lre_case_conv1(res[1], 1);
    800503fc:	c0dc                	sw	a5,4(s1)
lre_case_conv1():
quickjs-nuttx/libunicode.c:54
    lre_case_conv(res, c, conv_type);
    800503fe:	850a                	mv	a0,sp
    80050400:	d33ff0ef          	jal	ra,80050132 <lre_case_conv>
quickjs-nuttx/libunicode.c:55
    return res[0];
    80050404:	4782                	lw	a5,0(sp)
lre_case_conv_entry():
quickjs-nuttx/libunicode.c:143
            res[2] = lre_case_conv1(res[2], 1);
    80050406:	c49c                	sw	a5,8(s1)
quickjs-nuttx/libunicode.c:145
        return 3;
    80050408:	440d                	li	s0,3
    8005040a:	b55d                	j	800502b0 <lre_case_conv_entry+0x102>

000000008005040c <lre_case_folding_entry>:
lre_case_folding_entry():
quickjs-nuttx/libunicode.c:193
{
    8005040c:	7179                	addi	sp,sp,-48
    8005040e:	f022                	sd	s0,32(sp)
    80050410:	f406                	sd	ra,40(sp)
    80050412:	ec26                	sd	s1,24(sp)
    80050414:	842a                	mv	s0,a0
    80050416:	8732                	mv	a4,a2
quickjs-nuttx/libunicode.c:197
    if (is_unicode) {
    80050418:	c6a9                	beqz	a3,80050462 <lre_case_folding_entry+0x56>
quickjs-nuttx/libunicode.c:198
        len = lre_case_conv_entry(res, c, 2, idx, v);
    8005041a:	86ae                	mv	a3,a1
    8005041c:	4609                	li	a2,2
    8005041e:	85aa                	mv	a1,a0
    80050420:	850a                	mv	a0,sp
    80050422:	d8dff0ef          	jal	ra,800501ae <lre_case_conv_entry>
quickjs-nuttx/libunicode.c:199
        if (len == 1) {
    80050426:	4785                	li	a5,1
    80050428:	00f51863          	bne	a0,a5,80050438 <lre_case_folding_entry+0x2c>
quickjs-nuttx/libunicode.c:200
            c = res[0];
    8005042c:	4502                	lw	a0,0(sp)
quickjs-nuttx/libunicode.c:224
}
    8005042e:	70a2                	ld	ra,40(sp)
    80050430:	7402                	ld	s0,32(sp)
    80050432:	64e2                	ld	s1,24(sp)
    80050434:	6145                	addi	sp,sp,48
    80050436:	8082                	ret
quickjs-nuttx/libunicode.c:204
            if (c == 0xfb06) {
    80050438:	67c1                	lui	a5,0x10
    8005043a:	b0678713          	addi	a4,a5,-1274 # fb06 <asinh-0x7fff04fa>
quickjs-nuttx/libunicode.c:205
                c = 0xfb05;
    8005043e:	b0578513          	addi	a0,a5,-1275
quickjs-nuttx/libunicode.c:204
            if (c == 0xfb06) {
    80050442:	fee406e3          	beq	s0,a4,8005042e <lre_case_folding_entry+0x22>
quickjs-nuttx/libunicode.c:206
            } else if (c == 0x01fd3) {
    80050446:	6789                	lui	a5,0x2
    80050448:	fd378713          	addi	a4,a5,-45 # 1fd3 <asinh-0x7fffe02d>
quickjs-nuttx/libunicode.c:207
                c = 0x390;
    8005044c:	39000513          	li	a0,912
quickjs-nuttx/libunicode.c:206
            } else if (c == 0x01fd3) {
    80050450:	fce40fe3          	beq	s0,a4,8005042e <lre_case_folding_entry+0x22>
quickjs-nuttx/libunicode.c:208
            } else if (c == 0x01fe3) {
    80050454:	178d                	addi	a5,a5,-29
quickjs-nuttx/libunicode.c:209
                c = 0x3b0;
    80050456:	3b000513          	li	a0,944
quickjs-nuttx/libunicode.c:208
            } else if (c == 0x01fe3) {
    8005045a:	fcf40ae3          	beq	s0,a5,8005042e <lre_case_folding_entry+0x22>
quickjs-nuttx/libunicode.c:193
{
    8005045e:	8522                	mv	a0,s0
    80050460:	b7f9                	j	8005042e <lre_case_folding_entry+0x22>
quickjs-nuttx/libunicode.c:213
        if (likely(c < 128)) {
    80050462:	07f00493          	li	s1,127
    80050466:	00a4e963          	bltu	s1,a0,80050478 <lre_case_folding_entry+0x6c>
quickjs-nuttx/libunicode.c:214
            if (c >= 'a' && c <= 'z')
    8005046a:	f9f5079b          	addiw	a5,a0,-97
    8005046e:	4765                	li	a4,25
    80050470:	fef767e3          	bltu	a4,a5,8005045e <lre_case_folding_entry+0x52>
quickjs-nuttx/libunicode.c:215
                c = c - 'a' + 'A';
    80050474:	3501                	addiw	a0,a0,-32
    80050476:	bf65                	j	8005042e <lre_case_folding_entry+0x22>
quickjs-nuttx/libunicode.c:218
            len = lre_case_conv_entry(res, c, FALSE, idx, v);
    80050478:	86ae                	mv	a3,a1
    8005047a:	4601                	li	a2,0
    8005047c:	85aa                	mv	a1,a0
    8005047e:	850a                	mv	a0,sp
    80050480:	d2fff0ef          	jal	ra,800501ae <lre_case_conv_entry>
quickjs-nuttx/libunicode.c:219
            if (len == 1 && res[0] >= 128)
    80050484:	4785                	li	a5,1
    80050486:	fcf51ce3          	bne	a0,a5,8005045e <lre_case_folding_entry+0x52>
quickjs-nuttx/libunicode.c:219 (discriminator 1)
    8005048a:	4502                	lw	a0,0(sp)
    8005048c:	fca4f9e3          	bgeu	s1,a0,8005045e <lre_case_folding_entry+0x52>
    80050490:	bf79                	j	8005042e <lre_case_folding_entry+0x22>

0000000080050492 <lre_canonicalize>:
lre_canonicalize():
quickjs-nuttx/libunicode.c:229
    if (c < 128) {
    80050492:	07f00793          	li	a5,127
quickjs-nuttx/libunicode.c:228
{
    80050496:	86ae                	mv	a3,a1
quickjs-nuttx/libunicode.c:229
    if (c < 128) {
    80050498:	02a7e263          	bltu	a5,a0,800504bc <lre_canonicalize+0x2a>
quickjs-nuttx/libunicode.c:231
        if (is_unicode) {
    8005049c:	c989                	beqz	a1,800504ae <lre_canonicalize+0x1c>
quickjs-nuttx/libunicode.c:232
            if (c >= 'A' && c <= 'Z') {
    8005049e:	fbf5079b          	addiw	a5,a0,-65
    800504a2:	4765                	li	a4,25
    800504a4:	04f76763          	bltu	a4,a5,800504f2 <lre_canonicalize+0x60>
quickjs-nuttx/libunicode.c:233
                c = c - 'A' + 'a';
    800504a8:	0205051b          	addiw	a0,a0,32
    800504ac:	8082                	ret
quickjs-nuttx/libunicode.c:236
            if (c >= 'a' && c <= 'z') {
    800504ae:	f9f5079b          	addiw	a5,a0,-97
    800504b2:	4765                	li	a4,25
    800504b4:	02f76f63          	bltu	a4,a5,800504f2 <lre_canonicalize+0x60>
quickjs-nuttx/libunicode.c:237
                c = c - 'a' + 'A';
    800504b8:	3501                	addiw	a0,a0,-32
    800504ba:	8082                	ret
quickjs-nuttx/libunicode.c:245
        idx_max = countof(case_conv_table1) - 1;
    800504bc:	17100713          	li	a4,369
quickjs-nuttx/libunicode.c:244
        idx_min = 0;
    800504c0:	4801                	li	a6,0
quickjs-nuttx/libunicode.c:248
            v = case_conv_table1[idx];
    800504c2:	00025317          	auipc	t1,0x25
    800504c6:	4a630313          	addi	t1,t1,1190 # 80075968 <case_conv_table1>
quickjs-nuttx/libunicode.c:247
            idx = (unsigned)(idx_max + idx_min) / 2;
    800504ca:	00e807bb          	addw	a5,a6,a4
    800504ce:	0017d59b          	srliw	a1,a5,0x1
    800504d2:	0017d89b          	srliw	a7,a5,0x1
quickjs-nuttx/libunicode.c:248
            v = case_conv_table1[idx];
    800504d6:	00259793          	slli	a5,a1,0x2
    800504da:	979a                	add	a5,a5,t1
    800504dc:	4390                	lw	a2,0(a5)
quickjs-nuttx/libunicode.c:249
            code = v >> (32 - 17);
    800504de:	00f65e1b          	srliw	t3,a2,0xf
    800504e2:	00f6579b          	srliw	a5,a2,0xf
quickjs-nuttx/libunicode.c:251
            if (c < code) {
    800504e6:	01c57763          	bgeu	a0,t3,800504f4 <lre_canonicalize+0x62>
quickjs-nuttx/libunicode.c:252
                idx_max = idx - 1;
    800504ea:	fff8871b          	addiw	a4,a7,-1
quickjs-nuttx/libunicode.c:246
        while (idx_min <= idx_max) {
    800504ee:	fd075ee3          	bge	a4,a6,800504ca <lre_canonicalize+0x38>
quickjs-nuttx/libunicode.c:261
}
    800504f2:	8082                	ret
quickjs-nuttx/libunicode.c:250
            len = (v >> (32 - 17 - 7)) & 0x7f;
    800504f4:	0086581b          	srliw	a6,a2,0x8
    800504f8:	07f87813          	andi	a6,a6,127
quickjs-nuttx/libunicode.c:253
            } else if (c >= code + len) {
    800504fc:	010787bb          	addw	a5,a5,a6
    80050500:	00f56563          	bltu	a0,a5,8005050a <lre_canonicalize+0x78>
quickjs-nuttx/libunicode.c:254
                idx_min = idx + 1;
    80050504:	0018881b          	addiw	a6,a7,1
    80050508:	b7dd                	j	800504ee <lre_canonicalize+0x5c>
quickjs-nuttx/libunicode.c:256
                return lre_case_folding_entry(c, idx, v, is_unicode);
    8005050a:	f03ff06f          	j	8005040c <lre_case_folding_entry>

000000008005050e <lre_is_cased>:
lre_is_cased():
quickjs-nuttx/libunicode.c:349
    idx_max = countof(case_conv_table1) - 1;
    8005050e:	17100713          	li	a4,369
quickjs-nuttx/libunicode.c:348
    idx_min = 0;
    80050512:	4681                	li	a3,0
quickjs-nuttx/libunicode.c:352
        v = case_conv_table1[idx];
    80050514:	00025817          	auipc	a6,0x25
    80050518:	45480813          	addi	a6,a6,1108 # 80075968 <case_conv_table1>
quickjs-nuttx/libunicode.c:351
        idx = (unsigned)(idx_max + idx_min) / 2;
    8005051c:	00e687bb          	addw	a5,a3,a4
    80050520:	0017d59b          	srliw	a1,a5,0x1
    80050524:	0017d79b          	srliw	a5,a5,0x1
quickjs-nuttx/libunicode.c:352
        v = case_conv_table1[idx];
    80050528:	078a                	slli	a5,a5,0x2
    8005052a:	97c2                	add	a5,a5,a6
    8005052c:	439c                	lw	a5,0(a5)
quickjs-nuttx/libunicode.c:353
        code = v >> (32 - 17);
    8005052e:	00f7d89b          	srliw	a7,a5,0xf
    80050532:	00f7d61b          	srliw	a2,a5,0xf
quickjs-nuttx/libunicode.c:355
        if (c < code) {
    80050536:	03157163          	bgeu	a0,a7,80050558 <lre_is_cased+0x4a>
quickjs-nuttx/libunicode.c:356
            idx_max = idx - 1;
    8005053a:	fff5871b          	addiw	a4,a1,-1
quickjs-nuttx/libunicode.c:350
    while (idx_min <= idx_max) {
    8005053e:	fcd75fe3          	bge	a4,a3,8005051c <lre_is_cased+0xe>
quickjs-nuttx/libunicode.c:363
    return lre_is_in_table(c, unicode_prop_Cased1_table,
    80050542:	469d                	li	a3,7
    80050544:	0002b617          	auipc	a2,0x2b
    80050548:	1b460613          	addi	a2,a2,436 # 8007b6f8 <unicode_prop_Cased1_index>
    8005054c:	0002b597          	auipc	a1,0x2b
    80050550:	1c458593          	addi	a1,a1,452 # 8007b710 <unicode_prop_Cased1_table>
    80050554:	deaff06f          	j	8004fb3e <lre_is_in_table>
quickjs-nuttx/libunicode.c:354
        len = (v >> (32 - 17 - 7)) & 0x7f;
    80050558:	0087d79b          	srliw	a5,a5,0x8
    8005055c:	07f7f793          	andi	a5,a5,127
quickjs-nuttx/libunicode.c:357
        } else if (c >= code + len) {
    80050560:	9fb1                	addw	a5,a5,a2
    80050562:	00f56563          	bltu	a0,a5,8005056c <lre_is_cased+0x5e>
quickjs-nuttx/libunicode.c:358
            idx_min = idx + 1;
    80050566:	0015869b          	addiw	a3,a1,1
    8005056a:	bfd1                	j	8005053e <lre_is_cased+0x30>
quickjs-nuttx/libunicode.c:366
}
    8005056c:	4505                	li	a0,1
    8005056e:	8082                	ret

0000000080050570 <lre_is_case_ignorable>:
lre_is_case_ignorable():
quickjs-nuttx/libunicode.c:370
    return lre_is_in_table(c, unicode_prop_Case_Ignorable_table,
    80050570:	46dd                	li	a3,23
    80050572:	0002b617          	auipc	a2,0x2b
    80050576:	e5660613          	addi	a2,a2,-426 # 8007b3c8 <unicode_prop_Case_Ignorable_index>
    8005057a:	0002b597          	auipc	a1,0x2b
    8005057e:	e9658593          	addi	a1,a1,-362 # 8007b410 <unicode_prop_Case_Ignorable_table>
    80050582:	dbcff06f          	j	8004fb3e <lre_is_in_table>

0000000080050586 <cr_init>:
cr_init():
quickjs-nuttx/libunicode.c:391
    cr->len = cr->size = 0;
    80050586:	00053023          	sd	zero,0(a0)
quickjs-nuttx/libunicode.c:392
    cr->points = NULL;
    8005058a:	00053423          	sd	zero,8(a0)
quickjs-nuttx/libunicode.c:393
    cr->mem_opaque = mem_opaque;
    8005058e:	e90c                	sd	a1,16(a0)
quickjs-nuttx/libunicode.c:394
    cr->realloc_func = realloc_func ? realloc_func : cr_default_realloc;
    80050590:	e609                	bnez	a2,8005059a <cr_init+0x14>
    80050592:	fffff617          	auipc	a2,0xfffff
    80050596:	46860613          	addi	a2,a2,1128 # 8004f9fa <cr_default_realloc>
quickjs-nuttx/libunicode.c:394 (discriminator 4)
    8005059a:	ed10                	sd	a2,24(a0)
quickjs-nuttx/libunicode.c:395 (discriminator 4)
}
    8005059c:	8082                	ret

000000008005059e <cr_free>:
cr_free():
quickjs-nuttx/libunicode.c:399
    cr->realloc_func(cr->mem_opaque, cr->points, 0);
    8005059e:	6d1c                	ld	a5,24(a0)
    800505a0:	650c                	ld	a1,8(a0)
    800505a2:	6908                	ld	a0,16(a0)
    800505a4:	4601                	li	a2,0
    800505a6:	8782                	jr	a5

00000000800505a8 <cr_realloc>:
cr_realloc():
quickjs-nuttx/libunicode.c:407
    if (size > cr->size) {
    800505a8:	415c                	lw	a5,4(a0)
    800505aa:	04b7d363          	bge	a5,a1,800505f0 <cr_realloc+0x48>
quickjs-nuttx/libunicode.c:403
{
    800505ae:	1101                	addi	sp,sp,-32
    800505b0:	e426                	sd	s1,8(sp)
quickjs-nuttx/libunicode.c:408
        new_size = max_int(size, cr->size * 3 / 2);
    800505b2:	448d                	li	s1,3
    800505b4:	02f484bb          	mulw	s1,s1,a5
    800505b8:	4789                	li	a5,2
quickjs-nuttx/libunicode.c:403
{
    800505ba:	e822                	sd	s0,16(sp)
    800505bc:	ec06                	sd	ra,24(sp)
    800505be:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:408
        new_size = max_int(size, cr->size * 3 / 2);
    800505c0:	02f4c7bb          	divw	a5,s1,a5
    800505c4:	84be                	mv	s1,a5
    800505c6:	00b7d363          	bge	a5,a1,800505cc <cr_realloc+0x24>
    800505ca:	84ae                	mv	s1,a1
quickjs-nuttx/libunicode.c:409
        new_buf = cr->realloc_func(cr->mem_opaque, cr->points,
    800505cc:	6c1c                	ld	a5,24(s0)
    800505ce:	640c                	ld	a1,8(s0)
    800505d0:	6808                	ld	a0,16(s0)
    800505d2:	0004861b          	sext.w	a2,s1
    800505d6:	060a                	slli	a2,a2,0x2
    800505d8:	9782                	jalr	a5
    800505da:	87aa                	mv	a5,a0
quickjs-nuttx/libunicode.c:412
            return -1;
    800505dc:	557d                	li	a0,-1
quickjs-nuttx/libunicode.c:411
        if (!new_buf)
    800505de:	c781                	beqz	a5,800505e6 <cr_realloc+0x3e>
quickjs-nuttx/libunicode.c:413
        cr->points = new_buf;
    800505e0:	e41c                	sd	a5,8(s0)
quickjs-nuttx/libunicode.c:414
        cr->size = new_size;
    800505e2:	c044                	sw	s1,4(s0)
quickjs-nuttx/libunicode.c:416
    return 0;
    800505e4:	4501                	li	a0,0
quickjs-nuttx/libunicode.c:417
}
    800505e6:	60e2                	ld	ra,24(sp)
    800505e8:	6442                	ld	s0,16(sp)
    800505ea:	64a2                	ld	s1,8(sp)
    800505ec:	6105                	addi	sp,sp,32
    800505ee:	8082                	ret
quickjs-nuttx/libunicode.c:416
    return 0;
    800505f0:	4501                	li	a0,0
quickjs-nuttx/libunicode.c:417
}
    800505f2:	8082                	ret

00000000800505f4 <cr_add_interval>:
cr_add_interval():
quickjs-nuttx/libunicode.h:80
{
    800505f4:	1101                	addi	sp,sp,-32
    800505f6:	e822                	sd	s0,16(sp)
    800505f8:	e426                	sd	s1,8(sp)
    800505fa:	e04a                	sd	s2,0(sp)
    800505fc:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libunicode.h:81
    if ((cr->len + 2) > cr->size) {
    800505fe:	411c                	lw	a5,0(a0)
quickjs-nuttx/libunicode.h:80
{
    80050600:	84ae                	mv	s1,a1
    80050602:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.h:81
    if ((cr->len + 2) > cr->size) {
    80050604:	0027859b          	addiw	a1,a5,2
    80050608:	415c                	lw	a5,4(a0)
quickjs-nuttx/libunicode.h:80
{
    8005060a:	8932                	mv	s2,a2
quickjs-nuttx/libunicode.h:81
    if ((cr->len + 2) > cr->size) {
    8005060c:	02b7ca63          	blt	a5,a1,80050640 <cr_add_interval+0x4c>
quickjs-nuttx/libunicode.h:85
    cr->points[cr->len++] = c1;
    80050610:	401c                	lw	a5,0(s0)
    80050612:	6418                	ld	a4,8(s0)
quickjs-nuttx/libunicode.h:87
    return 0;
    80050614:	4501                	li	a0,0
quickjs-nuttx/libunicode.h:85
    cr->points[cr->len++] = c1;
    80050616:	0017869b          	addiw	a3,a5,1
    8005061a:	078a                	slli	a5,a5,0x2
    8005061c:	c014                	sw	a3,0(s0)
    8005061e:	97ba                	add	a5,a5,a4
    80050620:	c384                	sw	s1,0(a5)
quickjs-nuttx/libunicode.h:86
    cr->points[cr->len++] = c2;
    80050622:	401c                	lw	a5,0(s0)
    80050624:	6418                	ld	a4,8(s0)
    80050626:	0017869b          	addiw	a3,a5,1
    8005062a:	078a                	slli	a5,a5,0x2
    8005062c:	c014                	sw	a3,0(s0)
    8005062e:	97ba                	add	a5,a5,a4
    80050630:	0127a023          	sw	s2,0(a5)
quickjs-nuttx/libunicode.h:88
}
    80050634:	60e2                	ld	ra,24(sp)
    80050636:	6442                	ld	s0,16(sp)
    80050638:	64a2                	ld	s1,8(sp)
    8005063a:	6902                	ld	s2,0(sp)
    8005063c:	6105                	addi	sp,sp,32
    8005063e:	8082                	ret
quickjs-nuttx/libunicode.h:82
        if (cr_realloc(cr, cr->len + 2))
    80050640:	f69ff0ef          	jal	ra,800505a8 <cr_realloc>
    80050644:	d571                	beqz	a0,80050610 <cr_add_interval+0x1c>
quickjs-nuttx/libunicode.h:83
            return -1;
    80050646:	557d                	li	a0,-1
    80050648:	b7f5                	j	80050634 <cr_add_interval+0x40>

000000008005064a <unicode_case1>:
unicode_case1():
quickjs-nuttx/libunicode.c:1281
{
    8005064a:	7119                	addi	sp,sp,-128
quickjs-nuttx/libunicode.c:1283
    const uint32_t tab_run_mask[3] = {
    8005064c:	00043797          	auipc	a5,0x43
    80050650:	6147b783          	ld	a5,1556(a5) # 80093c60 <_erodata+0xee>
    80050654:	e03e                	sd	a5,0(sp)
    80050656:	6791                	lui	a5,0x4
    80050658:	dfc78793          	addi	a5,a5,-516 # 3dfc <asinh-0x7fffc204>
quickjs-nuttx/libunicode.c:1281
{
    8005065c:	fc86                	sd	ra,120(sp)
    8005065e:	f8a2                	sd	s0,112(sp)
    80050660:	f4a6                	sd	s1,104(sp)
    80050662:	f0ca                	sd	s2,96(sp)
    80050664:	ecce                	sd	s3,88(sp)
    80050666:	e8d2                	sd	s4,80(sp)
    80050668:	e4d6                	sd	s5,72(sp)
    8005066a:	e0da                	sd	s6,64(sp)
    8005066c:	fc5e                	sd	s7,56(sp)
    8005066e:	f862                	sd	s8,48(sp)
    80050670:	f466                	sd	s9,40(sp)
    80050672:	f06a                	sd	s10,32(sp)
    80050674:	ec6e                	sd	s11,24(sp)
quickjs-nuttx/libunicode.c:1283
    const uint32_t tab_run_mask[3] = {
    80050676:	c43e                	sw	a5,8(sp)
quickjs-nuttx/libunicode.c:1294
    if (case_mask == 0)
    80050678:	c9b9                	beqz	a1,800506ce <unicode_case1+0x84>
    8005067a:	89aa                	mv	s3,a0
    8005067c:	870a                	mv	a4,sp
quickjs-nuttx/libunicode.c:1297
    for(i = 0; i < 3; i++) {
    8005067e:	4781                	li	a5,0
quickjs-nuttx/libunicode.c:1296
    mask = 0;
    80050680:	4b01                	li	s6,0
quickjs-nuttx/libunicode.c:1297
    for(i = 0; i < 3; i++) {
    80050682:	460d                	li	a2,3
quickjs-nuttx/libunicode.c:1298
        if ((case_mask >> i) & 1)
    80050684:	40f5d6bb          	sraw	a3,a1,a5
    80050688:	8a85                	andi	a3,a3,1
    8005068a:	c681                	beqz	a3,80050692 <unicode_case1+0x48>
quickjs-nuttx/libunicode.c:1299
            mask |= tab_run_mask[i];
    8005068c:	4314                	lw	a3,0(a4)
    8005068e:	00db6b33          	or	s6,s6,a3
quickjs-nuttx/libunicode.c:1297 (discriminator 2)
    for(i = 0; i < 3; i++) {
    80050692:	2785                	addiw	a5,a5,1
    80050694:	0711                	addi	a4,a4,4
    80050696:	fec797e3          	bne	a5,a2,80050684 <unicode_case1+0x3a>
    8005069a:	00025a17          	auipc	s4,0x25
    8005069e:	2cea0a13          	addi	s4,s4,718 # 80075968 <case_conv_table1>
    800506a2:	00026b97          	auipc	s7,0x26
    800506a6:	88eb8b93          	addi	s7,s7,-1906 # 80075f30 <case_conv_table2>
quickjs-nuttx/libunicode.c:1308
            switch(type) {
    800506aa:	4c11                	li	s8,4
quickjs-nuttx/libunicode.c:1310
                if ((case_mask & CASE_U) && (case_mask & (CASE_L | CASE_F)))
    800506ac:	0015fa93          	andi	s5,a1,1
    800506b0:	0065f913          	andi	s2,a1,6
quickjs-nuttx/libunicode.c:1308
            switch(type) {
    800506b4:	4c95                	li	s9,5
quickjs-nuttx/libunicode.c:1302
        v = case_conv_table1[idx];
    800506b6:	000a2783          	lw	a5,0(s4)
quickjs-nuttx/libunicode.c:1303
        type = (v >> (32 - 17 - 7 - 4)) & 0xf;
    800506ba:	0047d71b          	srliw	a4,a5,0x4
    800506be:	8b3d                	andi	a4,a4,15
quickjs-nuttx/libunicode.c:1306
        if ((mask >> type) & 1) {
    800506c0:	00eb56bb          	srlw	a3,s6,a4
    800506c4:	8a85                	andi	a3,a3,1
    800506c6:	e691                	bnez	a3,800506d2 <unicode_case1+0x88>
quickjs-nuttx/libunicode.c:1301
    for(idx = 0; idx < countof(case_conv_table1); idx++) {
    800506c8:	0a11                	addi	s4,s4,4
    800506ca:	ff4b96e3          	bne	s7,s4,800506b6 <unicode_case1+0x6c>
quickjs-nuttx/libunicode.c:1295
        return 0;
    800506ce:	4501                	li	a0,0
    800506d0:	a0a1                	j	80050718 <unicode_case1+0xce>
quickjs-nuttx/libunicode.c:1304
        code = v >> (32 - 17);
    800506d2:	00f7d49b          	srliw	s1,a5,0xf
    800506d6:	00f7d59b          	srliw	a1,a5,0xf
quickjs-nuttx/libunicode.c:1305
        len = (v >> (32 - 17 - 7)) & 0x7f;
    800506da:	0087d79b          	srliw	a5,a5,0x8
    800506de:	07f7f413          	andi	s0,a5,127
quickjs-nuttx/libunicode.c:1308
            switch(type) {
    800506e2:	01870763          	beq	a4,s8,800506f0 <unicode_case1+0xa6>
    800506e6:	05970a63          	beq	a4,s9,8005073a <unicode_case1+0xf0>
quickjs-nuttx/libunicode.c:1334
                if (cr_add_interval(cr, code, code + len))
    800506ea:	0084863b          	addw	a2,s1,s0
    800506ee:	a885                	j	8005075e <unicode_case1+0x114>
quickjs-nuttx/libunicode.c:1310
                if ((case_mask & CASE_U) && (case_mask & (CASE_L | CASE_F)))
    800506f0:	000a8463          	beqz	s5,800506f8 <unicode_case1+0xae>
quickjs-nuttx/libunicode.c:1310 (discriminator 1)
    800506f4:	fe091be3          	bnez	s2,800506ea <unicode_case1+0xa0>
quickjs-nuttx/libunicode.c:1312
                code += ((case_mask & CASE_U) != 0);
    800506f8:	015484bb          	addw	s1,s1,s5
quickjs-nuttx/libunicode.c:1313
                for(i = 0; i < len; i += 2) {
    800506fc:	4d01                	li	s10,0
quickjs-nuttx/libunicode.c:1314
                    if (cr_add_interval(cr, code + i, code + i + 1))
    800506fe:	00148d9b          	addiw	s11,s1,1
quickjs-nuttx/libunicode.c:1313 (discriminator 1)
                for(i = 0; i < len; i += 2) {
    80050702:	fc8d73e3          	bgeu	s10,s0,800506c8 <unicode_case1+0x7e>
quickjs-nuttx/libunicode.c:1314
                    if (cr_add_interval(cr, code + i, code + i + 1))
    80050706:	01ad863b          	addw	a2,s11,s10
    8005070a:	009d05bb          	addw	a1,s10,s1
    8005070e:	854e                	mv	a0,s3
    80050710:	ee5ff0ef          	jal	ra,800505f4 <cr_add_interval>
    80050714:	c10d                	beqz	a0,80050736 <unicode_case1+0xec>
quickjs-nuttx/libunicode.c:1315
                        return -1;
    80050716:	557d                	li	a0,-1
quickjs-nuttx/libunicode.c:1341
}
    80050718:	70e6                	ld	ra,120(sp)
    8005071a:	7446                	ld	s0,112(sp)
    8005071c:	74a6                	ld	s1,104(sp)
    8005071e:	7906                	ld	s2,96(sp)
    80050720:	69e6                	ld	s3,88(sp)
    80050722:	6a46                	ld	s4,80(sp)
    80050724:	6aa6                	ld	s5,72(sp)
    80050726:	6b06                	ld	s6,64(sp)
    80050728:	7be2                	ld	s7,56(sp)
    8005072a:	7c42                	ld	s8,48(sp)
    8005072c:	7ca2                	ld	s9,40(sp)
    8005072e:	7d02                	ld	s10,32(sp)
    80050730:	6de2                	ld	s11,24(sp)
    80050732:	6109                	addi	sp,sp,128
    80050734:	8082                	ret
quickjs-nuttx/libunicode.c:1313 (discriminator 2)
                for(i = 0; i < len; i += 2) {
    80050736:	2d09                	addiw	s10,s10,2
    80050738:	b7e9                	j	80050702 <unicode_case1+0xb8>
quickjs-nuttx/libunicode.c:1319
                if ((case_mask & CASE_U) && (case_mask & (CASE_L | CASE_F)))
    8005073a:	020a8763          	beqz	s5,80050768 <unicode_case1+0x11e>
quickjs-nuttx/libunicode.c:1319 (discriminator 1)
    8005073e:	fa0916e3          	bnez	s2,800506ea <unicode_case1+0xa0>
quickjs-nuttx/libunicode.c:1325
                if (cr_add_interval(cr, code + 1, code + 2))
    80050742:	0024841b          	addiw	s0,s1,2
    80050746:	8622                	mv	a2,s0
    80050748:	0014859b          	addiw	a1,s1,1
    8005074c:	854e                	mv	a0,s3
    8005074e:	ea7ff0ef          	jal	ra,800505f4 <cr_add_interval>
    80050752:	f171                	bnez	a0,80050716 <unicode_case1+0xcc>
quickjs-nuttx/libunicode.c:1327
                if (case_mask & CASE_U) {
    80050754:	f60a8ae3          	beqz	s5,800506c8 <unicode_case1+0x7e>
quickjs-nuttx/libunicode.c:1328
                    if (cr_add_interval(cr, code + 2, code + 3))
    80050758:	0034861b          	addiw	a2,s1,3
    8005075c:	85a2                	mv	a1,s0
quickjs-nuttx/libunicode.c:1334
                if (cr_add_interval(cr, code, code + len))
    8005075e:	854e                	mv	a0,s3
    80050760:	e95ff0ef          	jal	ra,800505f4 <cr_add_interval>
    80050764:	d135                	beqz	a0,800506c8 <unicode_case1+0x7e>
    80050766:	bf45                	j	80050716 <unicode_case1+0xcc>
quickjs-nuttx/libunicode.c:1322
                    if (cr_add_interval(cr, code, code + 1))
    80050768:	0014861b          	addiw	a2,s1,1
    8005076c:	854e                	mv	a0,s3
    8005076e:	e87ff0ef          	jal	ra,800505f4 <cr_add_interval>
    80050772:	d961                	beqz	a0,80050742 <unicode_case1+0xf8>
    80050774:	b74d                	j	80050716 <unicode_case1+0xcc>

0000000080050776 <unicode_general_category1>:
unicode_general_category1():
quickjs-nuttx/libunicode.c:1181
{
    80050776:	711d                	addi	sp,sp,-96
    80050778:	e862                	sd	s8,16(sp)
    8005077a:	8c2e                	mv	s8,a1
    8005077c:	e0ca                	sd	s2,64(sp)
    8005077e:	fc4e                	sd	s3,56(sp)
quickjs-nuttx/libunicode.c:1204
                n += 7 + 128 + (1 << 14);
    80050780:	6911                	lui	s2,0x4
quickjs-nuttx/libunicode.c:1216
                    c0 += ((gc_mask & M(Ll)) != 0);
    80050782:	402c599b          	sraiw	s3,s8,0x2
quickjs-nuttx/libunicode.c:1181
{
    80050786:	e4a6                	sd	s1,72(sp)
    80050788:	f852                	sd	s4,48(sp)
    8005078a:	f456                	sd	s5,40(sp)
    8005078c:	f05a                	sd	s6,32(sp)
    8005078e:	ec5e                	sd	s7,24(sp)
    80050790:	ec86                	sd	ra,88(sp)
    80050792:	e8a2                	sd	s0,80(sp)
    80050794:	e466                	sd	s9,8(sp)
    80050796:	84aa                	mv	s1,a0
quickjs-nuttx/libunicode.c:1187
    c = 0;
    80050798:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:1185
    p = unicode_gc_table;
    8005079a:	0002ab97          	auipc	s7,0x2a
    8005079e:	bfeb8b93          	addi	s7,s7,-1026 # 8007a398 <unicode_gc_table>
quickjs-nuttx/libunicode.c:1192
        if (n == 7) {
    800507a2:	4a9d                	li	s5,7
quickjs-nuttx/libunicode.c:1204
                n += 7 + 128 + (1 << 14);
    800507a4:	0879091b          	addiw	s2,s2,135
quickjs-nuttx/libunicode.c:1211
            b = gc_mask & (M(Lu) | M(Ll));
    800507a8:	006c7a13          	andi	s4,s8,6
quickjs-nuttx/libunicode.c:1216
                    c0 += ((gc_mask & M(Ll)) != 0);
    800507ac:	0019f993          	andi	s3,s3,1
quickjs-nuttx/libunicode.c:1188
    while (p < p_end) {
    800507b0:	0002bb17          	auipc	s6,0x2b
    800507b4:	b54b0b13          	addi	s6,s6,-1196 # 8007b304 <unicode_gc_table+0xf6c>
quickjs-nuttx/libunicode.c:1189
        b = *p++;
    800507b8:	000bc683          	lbu	a3,0(s7)
quickjs-nuttx/libunicode.c:1190
        n = b >> 5;
    800507bc:	0056d613          	srli	a2,a3,0x5
quickjs-nuttx/libunicode.c:1191
        v = b & 0x1f;
    800507c0:	8afd                	andi	a3,a3,31
quickjs-nuttx/libunicode.c:1192
        if (n == 7) {
    800507c2:	03560d63          	beq	a2,s5,800507fc <unicode_general_category1+0x86>
quickjs-nuttx/libunicode.c:1189
        b = *p++;
    800507c6:	0b85                	addi	s7,s7,1
quickjs-nuttx/libunicode.c:1208
        c += n + 1;
    800507c8:	2605                	addiw	a2,a2,1
quickjs-nuttx/libunicode.c:1209
        if (v == 31) {
    800507ca:	47fd                	li	a5,31
quickjs-nuttx/libunicode.c:1208
        c += n + 1;
    800507cc:	00b6043b          	addw	s0,a2,a1
quickjs-nuttx/libunicode.c:1209
        if (v == 31) {
    800507d0:	08f69f63          	bne	a3,a5,8005086e <unicode_general_category1+0xf8>
quickjs-nuttx/libunicode.c:1212
            if (b != 0) {
    800507d4:	060a1b63          	bnez	s4,8005084a <unicode_general_category1+0xd4>
quickjs-nuttx/libunicode.c:1188
    while (p < p_end) {
    800507d8:	036be063          	bltu	s7,s6,800507f8 <unicode_general_category1+0x82>
quickjs-nuttx/libunicode.c:1229
    return 0;
    800507dc:	4501                	li	a0,0
quickjs-nuttx/libunicode.c:1230
}
    800507de:	60e6                	ld	ra,88(sp)
    800507e0:	6446                	ld	s0,80(sp)
    800507e2:	64a6                	ld	s1,72(sp)
    800507e4:	6906                	ld	s2,64(sp)
    800507e6:	79e2                	ld	s3,56(sp)
    800507e8:	7a42                	ld	s4,48(sp)
    800507ea:	7aa2                	ld	s5,40(sp)
    800507ec:	7b02                	ld	s6,32(sp)
    800507ee:	6be2                	ld	s7,24(sp)
    800507f0:	6c42                	ld	s8,16(sp)
    800507f2:	6ca2                	ld	s9,8(sp)
    800507f4:	6125                	addi	sp,sp,96
    800507f6:	8082                	ret
quickjs-nuttx/libunicode.c:1208
        c += n + 1;
    800507f8:	85a2                	mv	a1,s0
    800507fa:	bf7d                	j	800507b8 <unicode_general_category1+0x42>
quickjs-nuttx/libunicode.c:1193
            n = *p++;
    800507fc:	001bc703          	lbu	a4,1(s7)
quickjs-nuttx/libunicode.c:1194
            if (n < 128) {
    80050800:	07f00793          	li	a5,127
    80050804:	00e7e663          	bltu	a5,a4,80050810 <unicode_general_category1+0x9a>
quickjs-nuttx/libunicode.c:1193
            n = *p++;
    80050808:	0b89                	addi	s7,s7,2
quickjs-nuttx/libunicode.c:1195
                n += 7;
    8005080a:	0077061b          	addiw	a2,a4,7
    8005080e:	bf6d                	j	800507c8 <unicode_general_category1+0x52>
quickjs-nuttx/libunicode.c:1196
            } else if (n < 128 + 64) {
    80050810:	0bf00513          	li	a0,191
quickjs-nuttx/libunicode.c:1198
                n |= *p++;
    80050814:	002bc783          	lbu	a5,2(s7)
quickjs-nuttx/libunicode.c:1196
            } else if (n < 128 + 64) {
    80050818:	00e56b63          	bltu	a0,a4,8005082e <unicode_general_category1+0xb8>
quickjs-nuttx/libunicode.c:1197
                n = (n - 128) << 8;
    8005081c:	f807061b          	addiw	a2,a4,-128
    80050820:	0086161b          	slliw	a2,a2,0x8
quickjs-nuttx/libunicode.c:1198
                n |= *p++;
    80050824:	8e5d                	or	a2,a2,a5
    80050826:	0b8d                	addi	s7,s7,3
quickjs-nuttx/libunicode.c:1199
                n += 7 + 128;
    80050828:	0876061b          	addiw	a2,a2,135
    8005082c:	bf71                	j	800507c8 <unicode_general_category1+0x52>
quickjs-nuttx/libunicode.c:1201
                n = (n - 128 - 64) << 16;
    8005082e:	f407061b          	addiw	a2,a4,-192
    80050832:	0106171b          	slliw	a4,a2,0x10
quickjs-nuttx/libunicode.c:1202
                n |= *p++ << 8;
    80050836:	0087961b          	slliw	a2,a5,0x8
quickjs-nuttx/libunicode.c:1203
                n |= *p++;
    8005083a:	003bc783          	lbu	a5,3(s7)
quickjs-nuttx/libunicode.c:1202
                n |= *p++ << 8;
    8005083e:	8e59                	or	a2,a2,a4
quickjs-nuttx/libunicode.c:1203
                n |= *p++;
    80050840:	0b91                	addi	s7,s7,4
    80050842:	8e5d                	or	a2,a2,a5
quickjs-nuttx/libunicode.c:1204
                n += 7 + 128 + (1 << 14);
    80050844:	00c9063b          	addw	a2,s2,a2
    80050848:	b741                	j	800507c8 <unicode_general_category1+0x52>
quickjs-nuttx/libunicode.c:1213
                if (b == (M(Lu) | M(Ll))) {
    8005084a:	4799                	li	a5,6
    8005084c:	02fa0563          	beq	s4,a5,80050876 <unicode_general_category1+0x100>
quickjs-nuttx/libunicode.c:1216
                    c0 += ((gc_mask & M(Ll)) != 0);
    80050850:	00b98cbb          	addw	s9,s3,a1
quickjs-nuttx/libunicode.c:1217 (discriminator 1)
                    for(; c0 < c; c0 += 2) {
    80050854:	f88cf2e3          	bgeu	s9,s0,800507d8 <unicode_general_category1+0x62>
quickjs-nuttx/libunicode.c:1218
                        if (cr_add_interval(cr, c0, c0 + 1))
    80050858:	001c861b          	addiw	a2,s9,1
    8005085c:	85e6                	mv	a1,s9
    8005085e:	8526                	mv	a0,s1
    80050860:	d95ff0ef          	jal	ra,800505f4 <cr_add_interval>
    80050864:	c119                	beqz	a0,8005086a <unicode_general_category1+0xf4>
quickjs-nuttx/libunicode.c:1219
                            return -1;
    80050866:	557d                	li	a0,-1
    80050868:	bf9d                	j	800507de <unicode_general_category1+0x68>
quickjs-nuttx/libunicode.c:1217
                    for(; c0 < c; c0 += 2) {
    8005086a:	2c89                	addiw	s9,s9,2
    8005086c:	b7e5                	j	80050854 <unicode_general_category1+0xde>
quickjs-nuttx/libunicode.c:1223
        } else if ((gc_mask >> v) & 1) {
    8005086e:	00dc56bb          	srlw	a3,s8,a3
    80050872:	8a85                	andi	a3,a3,1
    80050874:	d2b5                	beqz	a3,800507d8 <unicode_general_category1+0x62>
quickjs-nuttx/libunicode.c:1225
            if (cr_add_interval(cr, c0, c))
    80050876:	8622                	mv	a2,s0
    80050878:	8526                	mv	a0,s1
    8005087a:	d7bff0ef          	jal	ra,800505f4 <cr_add_interval>
    8005087e:	dd29                	beqz	a0,800507d8 <unicode_general_category1+0x62>
    80050880:	b7dd                	j	80050866 <unicode_general_category1+0xf0>

0000000080050882 <unicode_prop1>:
unicode_prop1():
quickjs-nuttx/libunicode.c:1237
    p = unicode_prop_table[prop_idx];
    80050882:	00359713          	slli	a4,a1,0x3
    80050886:	0002d797          	auipc	a5,0x2d
    8005088a:	9ca78793          	addi	a5,a5,-1590 # 8007d250 <unicode_prop_table>
    8005088e:	97ba                	add	a5,a5,a4
    80050890:	6398                	ld	a4,0(a5)
quickjs-nuttx/libunicode.c:1238
    p_end = p + unicode_prop_len_table[prop_idx];
    80050892:	0586                	slli	a1,a1,0x1
    80050894:	0002c797          	auipc	a5,0x2c
    80050898:	53c78793          	addi	a5,a5,1340 # 8007cdd0 <unicode_prop_len_table>
quickjs-nuttx/libunicode.c:1233
{
    8005089c:	711d                	addi	sp,sp,-96
quickjs-nuttx/libunicode.c:1238
    p_end = p + unicode_prop_len_table[prop_idx];
    8005089e:	95be                	add	a1,a1,a5
quickjs-nuttx/libunicode.c:1233
{
    800508a0:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/libunicode.c:1238
    p_end = p + unicode_prop_len_table[prop_idx];
    800508a2:	0005d903          	lhu	s2,0(a1)
quickjs-nuttx/libunicode.c:1233
{
    800508a6:	e4a6                	sd	s1,72(sp)
    800508a8:	fc4e                	sd	s3,56(sp)
    800508aa:	f852                	sd	s4,48(sp)
    800508ac:	f456                	sd	s5,40(sp)
    800508ae:	ec5e                	sd	s7,24(sp)
    800508b0:	ec86                	sd	ra,88(sp)
    800508b2:	e8a2                	sd	s0,80(sp)
    800508b4:	f05a                	sd	s6,32(sp)
    800508b6:	e862                	sd	s8,16(sp)
    800508b8:	e466                	sd	s9,8(sp)
    800508ba:	84aa                	mv	s1,a0
quickjs-nuttx/libunicode.c:1238
    p_end = p + unicode_prop_len_table[prop_idx];
    800508bc:	993a                	add	s2,s2,a4
quickjs-nuttx/libunicode.c:1240
    bit = 0;
    800508be:	4b81                	li	s7,0
quickjs-nuttx/libunicode.c:1239
    c = 0;
    800508c0:	4581                	li	a1,0
quickjs-nuttx/libunicode.c:1244
        if (b < 64) {
    800508c2:	03f00993          	li	s3,63
quickjs-nuttx/libunicode.c:1253
        } else if (b >= 0x80) {
    800508c6:	07f00a13          	li	s4,127
quickjs-nuttx/libunicode.c:1255
        } else if (b < 0x60) {
    800508ca:	05f00a93          	li	s5,95
quickjs-nuttx/libunicode.c:1241
    while (p < p_end) {
    800508ce:	01276463          	bltu	a4,s2,800508d6 <unicode_prop1+0x54>
quickjs-nuttx/libunicode.c:1268
    return 0;
    800508d2:	4501                	li	a0,0
    800508d4:	a0b9                	j	80050922 <unicode_prop1+0xa0>
quickjs-nuttx/libunicode.c:1243
        b = *p++;
    800508d6:	00074b03          	lbu	s6,0(a4)
    800508da:	00170c13          	addi	s8,a4,1
    800508de:	000b061b          	sext.w	a2,s6
quickjs-nuttx/libunicode.c:1244
        if (b < 64) {
    800508e2:	0569ed63          	bltu	s3,s6,8005093c <unicode_prop1+0xba>
quickjs-nuttx/libunicode.c:1245
            c += (b >> 3) + 1;
    800508e6:	0015841b          	addiw	s0,a1,1
    800508ea:	0036561b          	srliw	a2,a2,0x3
    800508ee:	00860cbb          	addw	s9,a2,s0
    800508f2:	8466                	mv	s0,s9
quickjs-nuttx/libunicode.c:1246
            if (bit)  {
    800508f4:	020b9163          	bnez	s7,80050916 <unicode_prop1+0x94>
quickjs-nuttx/libunicode.c:1252
            c += (b & 7) + 1;
    800508f8:	007b7b13          	andi	s6,s6,7
    800508fc:	001b079b          	addiw	a5,s6,1
quickjs-nuttx/libunicode.c:1250
            bit ^= 1;
    80050900:	001bcb93          	xori	s7,s7,1
quickjs-nuttx/libunicode.c:1252
            c += (b & 7) + 1;
    80050904:	9c3d                	addw	s0,s0,a5
quickjs-nuttx/libunicode.c:1251
            c0 = c;
    80050906:	85e6                	mv	a1,s9
quickjs-nuttx/libunicode.c:1262
        if (bit)  {
    80050908:	060b9e63          	bnez	s7,80050984 <unicode_prop1+0x102>
quickjs-nuttx/libunicode.c:1266
        bit ^= 1;
    8005090c:	001bcb93          	xori	s7,s7,1
    80050910:	85a2                	mv	a1,s0
    80050912:	8762                	mv	a4,s8
    80050914:	bf6d                	j	800508ce <unicode_prop1+0x4c>
quickjs-nuttx/libunicode.c:1247
                if (cr_add_interval(cr, c0, c))
    80050916:	8666                	mv	a2,s9
    80050918:	8526                	mv	a0,s1
    8005091a:	cdbff0ef          	jal	ra,800505f4 <cr_add_interval>
    8005091e:	dd69                	beqz	a0,800508f8 <unicode_prop1+0x76>
quickjs-nuttx/libunicode.c:1248
                    return -1;
    80050920:	557d                	li	a0,-1
quickjs-nuttx/libunicode.c:1269
}
    80050922:	60e6                	ld	ra,88(sp)
    80050924:	6446                	ld	s0,80(sp)
    80050926:	64a6                	ld	s1,72(sp)
    80050928:	6906                	ld	s2,64(sp)
    8005092a:	79e2                	ld	s3,56(sp)
    8005092c:	7a42                	ld	s4,48(sp)
    8005092e:	7aa2                	ld	s5,40(sp)
    80050930:	7b02                	ld	s6,32(sp)
    80050932:	6be2                	ld	s7,24(sp)
    80050934:	6c42                	ld	s8,16(sp)
    80050936:	6ca2                	ld	s9,8(sp)
    80050938:	6125                	addi	sp,sp,96
    8005093a:	8082                	ret
quickjs-nuttx/libunicode.c:1253
        } else if (b >= 0x80) {
    8005093c:	00ca7663          	bgeu	s4,a2,80050948 <unicode_prop1+0xc6>
quickjs-nuttx/libunicode.c:1254
            c += b - 0x80 + 1;
    80050940:	f815841b          	addiw	s0,a1,-127
    80050944:	9c31                	addw	s0,s0,a2
    80050946:	b7c9                	j	80050908 <unicode_prop1+0x86>
quickjs-nuttx/libunicode.c:1256
            c += (((b - 0x40) << 8) | p[0]) + 1;
    80050948:	00174683          	lbu	a3,1(a4)
    8005094c:	0015841b          	addiw	s0,a1,1
quickjs-nuttx/libunicode.c:1255
        } else if (b < 0x60) {
    80050950:	00caec63          	bltu	s5,a2,80050968 <unicode_prop1+0xe6>
quickjs-nuttx/libunicode.c:1256
            c += (((b - 0x40) << 8) | p[0]) + 1;
    80050954:	fc06079b          	addiw	a5,a2,-64
    80050958:	0087979b          	slliw	a5,a5,0x8
    8005095c:	00f6e633          	or	a2,a3,a5
    80050960:	9c31                	addw	s0,s0,a2
quickjs-nuttx/libunicode.c:1257
            p++;
    80050962:	00270c13          	addi	s8,a4,2
    80050966:	b74d                	j	80050908 <unicode_prop1+0x86>
quickjs-nuttx/libunicode.c:1259
            c += (((b - 0x60) << 16) | (p[0] << 8) | p[1]) + 1;
    80050968:	00274783          	lbu	a5,2(a4)
    8005096c:	fa06061b          	addiw	a2,a2,-96
    80050970:	0106161b          	slliw	a2,a2,0x10
    80050974:	0086969b          	slliw	a3,a3,0x8
    80050978:	8e55                	or	a2,a2,a3
    8005097a:	8e5d                	or	a2,a2,a5
    8005097c:	9c31                	addw	s0,s0,a2
quickjs-nuttx/libunicode.c:1260
            p += 2;
    8005097e:	00370c13          	addi	s8,a4,3
    80050982:	b759                	j	80050908 <unicode_prop1+0x86>
quickjs-nuttx/libunicode.c:1263
            if (cr_add_interval(cr, c0, c))
    80050984:	8622                	mv	a2,s0
    80050986:	8526                	mv	a0,s1
    80050988:	c6dff0ef          	jal	ra,800505f4 <cr_add_interval>
    8005098c:	d141                	beqz	a0,8005090c <unicode_prop1+0x8a>
    8005098e:	bf49                	j	80050920 <unicode_prop1+0x9e>

0000000080050990 <cr_copy>:
cr_copy():
quickjs-nuttx/libunicode.c:420
{
    80050990:	1101                	addi	sp,sp,-32
    80050992:	e822                	sd	s0,16(sp)
    80050994:	e426                	sd	s1,8(sp)
    80050996:	e04a                	sd	s2,0(sp)
    80050998:	ec06                	sd	ra,24(sp)
    8005099a:	842e                	mv	s0,a1
quickjs-nuttx/libunicode.c:421
    if (cr_realloc(cr, cr1->len))
    8005099c:	418c                	lw	a1,0(a1)
quickjs-nuttx/libunicode.c:420
{
    8005099e:	892a                	mv	s2,a0
quickjs-nuttx/libunicode.c:422
        return -1;
    800509a0:	54fd                	li	s1,-1
quickjs-nuttx/libunicode.c:421
    if (cr_realloc(cr, cr1->len))
    800509a2:	c07ff0ef          	jal	ra,800505a8 <cr_realloc>
    800509a6:	ed01                	bnez	a0,800509be <cr_copy+0x2e>
quickjs-nuttx/libunicode.c:423
    memcpy(cr->points, cr1->points, sizeof(cr->points[0]) * cr1->len);
    800509a8:	4010                	lw	a2,0(s0)
    800509aa:	640c                	ld	a1,8(s0)
    800509ac:	84aa                	mv	s1,a0
    800509ae:	00893503          	ld	a0,8(s2) # 4008 <asinh-0x7fffbff8>
    800509b2:	060a                	slli	a2,a2,0x2
    800509b4:	3f8130ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libunicode.c:424
    cr->len = cr1->len;
    800509b8:	401c                	lw	a5,0(s0)
    800509ba:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/libunicode.c:426
}
    800509be:	60e2                	ld	ra,24(sp)
    800509c0:	6442                	ld	s0,16(sp)
    800509c2:	6902                	ld	s2,0(sp)
    800509c4:	8526                	mv	a0,s1
    800509c6:	64a2                	ld	s1,8(sp)
    800509c8:	6105                	addi	sp,sp,32
    800509ca:	8082                	ret

00000000800509cc <cr_op>:
cr_op():
quickjs-nuttx/libunicode.c:460
{
    800509cc:	711d                	addi	sp,sp,-96
    800509ce:	e8a2                	sd	s0,80(sp)
    800509d0:	e4a6                	sd	s1,72(sp)
    800509d2:	e0ca                	sd	s2,64(sp)
    800509d4:	fc4e                	sd	s3,56(sp)
    800509d6:	f456                	sd	s5,40(sp)
    800509d8:	f05a                	sd	s6,32(sp)
    800509da:	ec5e                	sd	s7,24(sp)
    800509dc:	e862                	sd	s8,16(sp)
    800509de:	e466                	sd	s9,8(sp)
    800509e0:	e06a                	sd	s10,0(sp)
    800509e2:	ec86                	sd	ra,88(sp)
    800509e4:	f852                	sd	s4,48(sp)
    800509e6:	84aa                	mv	s1,a0
    800509e8:	8bae                	mv	s7,a1
    800509ea:	8c32                	mv	s8,a2
    800509ec:	8ab6                	mv	s5,a3
    800509ee:	8b3a                	mv	s6,a4
    800509f0:	89be                	mv	s3,a5
quickjs-nuttx/libunicode.c:465
    b_idx = 0;
    800509f2:	4401                	li	s0,0
quickjs-nuttx/libunicode.c:464
    a_idx = 0;
    800509f4:	4901                	li	s2,0
quickjs-nuttx/libunicode.c:488
        switch(op) {
    800509f6:	4c85                	li	s9,1
    800509f8:	4d09                	li	s10,2
quickjs-nuttx/libunicode.c:468
        if (a_idx < a_len && b_idx < b_len) {
    800509fa:	07895063          	bge	s2,s8,80050a5a <cr_op+0x8e>
quickjs-nuttx/libunicode.c:469 (discriminator 1)
            if (a_pt[a_idx] < b_pt[b_idx]) {
    800509fe:	00291793          	slli	a5,s2,0x2
    80050a02:	97de                	add	a5,a5,s7
    80050a04:	0007aa03          	lw	s4,0(a5)
quickjs-nuttx/libunicode.c:468 (discriminator 1)
        if (a_idx < a_len && b_idx < b_len) {
    80050a08:	01645b63          	bge	s0,s6,80050a1e <cr_op+0x52>
quickjs-nuttx/libunicode.c:469
            if (a_pt[a_idx] < b_pt[b_idx]) {
    80050a0c:	00241793          	slli	a5,s0,0x2
    80050a10:	97d6                	add	a5,a5,s5
    80050a12:	439c                	lw	a5,0(a5)
    80050a14:	00fa6563          	bltu	s4,a5,80050a1e <cr_op+0x52>
quickjs-nuttx/libunicode.c:471
            } else if (a_pt[a_idx] == b_pt[b_idx]) {
    80050a18:	05479363          	bne	a5,s4,80050a5e <cr_op+0x92>
quickjs-nuttx/libunicode.c:474
                b_idx++;
    80050a1c:	2405                	addiw	s0,s0,1
quickjs-nuttx/libunicode.c:480
            v = a_pt[a_idx++];
    80050a1e:	2905                	addiw	s2,s2,1
quickjs-nuttx/libunicode.c:488
        switch(op) {
    80050a20:	05998663          	beq	s3,s9,80050a6c <cr_op+0xa0>
quickjs-nuttx/libunicode.c:496
            is_in = (a_idx & 1) ^ (b_idx & 1);
    80050a24:	00894533          	xor	a0,s2,s0
quickjs-nuttx/libunicode.c:488
        switch(op) {
    80050a28:	01a98663          	beq	s3,s10,80050a34 <cr_op+0x68>
    80050a2c:	04099363          	bnez	s3,80050a72 <cr_op+0xa6>
quickjs-nuttx/libunicode.c:490
            is_in = (a_idx & 1) | (b_idx & 1);
    80050a30:	00896533          	or	a0,s2,s0
quickjs-nuttx/libunicode.c:501
        if (is_in != (cr->len & 1)) {
    80050a34:	408c                	lw	a1,0(s1)
quickjs-nuttx/libunicode.c:496
            is_in = (a_idx & 1) ^ (b_idx & 1);
    80050a36:	8905                	andi	a0,a0,1
quickjs-nuttx/libunicode.c:501
        if (is_in != (cr->len & 1)) {
    80050a38:	0015f713          	andi	a4,a1,1
    80050a3c:	faa70fe3          	beq	a4,a0,800509fa <cr_op+0x2e>
cr_add_point():
quickjs-nuttx/libunicode.h:71
    if (cr->len >= cr->size) {
    80050a40:	40d8                	lw	a4,4(s1)
    80050a42:	02e5da63          	bge	a1,a4,80050a76 <cr_op+0xaa>
quickjs-nuttx/libunicode.h:75
    cr->points[cr->len++] = v;
    80050a46:	409c                	lw	a5,0(s1)
    80050a48:	6498                	ld	a4,8(s1)
    80050a4a:	0017869b          	addiw	a3,a5,1
    80050a4e:	078a                	slli	a5,a5,0x2
    80050a50:	c094                	sw	a3,0(s1)
    80050a52:	97ba                	add	a5,a5,a4
    80050a54:	0147a023          	sw	s4,0(a5)
quickjs-nuttx/libunicode.h:76
    return 0;
    80050a58:	b74d                	j	800509fa <cr_op+0x2e>
cr_op():
quickjs-nuttx/libunicode.c:481
        } else if (b_idx < b_len) {
    80050a5a:	03645563          	bge	s0,s6,80050a84 <cr_op+0xb8>
quickjs-nuttx/libunicode.c:483
            v = b_pt[b_idx++];
    80050a5e:	00241793          	slli	a5,s0,0x2
    80050a62:	97d6                	add	a5,a5,s5
    80050a64:	0007aa03          	lw	s4,0(a5)
    80050a68:	2405                	addiw	s0,s0,1
    80050a6a:	bf5d                	j	80050a20 <cr_op+0x54>
quickjs-nuttx/libunicode.c:493
            is_in = (a_idx & 1) & (b_idx & 1);
    80050a6c:	00897533          	and	a0,s2,s0
    80050a70:	b7d1                	j	80050a34 <cr_op+0x68>
quickjs-nuttx/libunicode.c:499
            abort();
    80050a72:	110120ef          	jal	ra,80062b82 <abort>
cr_add_point():
quickjs-nuttx/libunicode.h:72
        if (cr_realloc(cr, cr->len + 1))
    80050a76:	2585                	addiw	a1,a1,1
    80050a78:	8526                	mv	a0,s1
    80050a7a:	b2fff0ef          	jal	ra,800505a8 <cr_realloc>
    80050a7e:	d561                	beqz	a0,80050a46 <cr_op+0x7a>
cr_op():
quickjs-nuttx/libunicode.c:503
                return -1;
    80050a80:	557d                	li	a0,-1
    80050a82:	a029                	j	80050a8c <cr_op+0xc0>
quickjs-nuttx/libunicode.c:506
    cr_compress(cr);
    80050a84:	8526                	mv	a0,s1
    80050a86:	efbfe0ef          	jal	ra,8004f980 <cr_compress>
quickjs-nuttx/libunicode.c:507
    return 0;
    80050a8a:	4501                	li	a0,0
quickjs-nuttx/libunicode.c:508
}
    80050a8c:	60e6                	ld	ra,88(sp)
    80050a8e:	6446                	ld	s0,80(sp)
    80050a90:	64a6                	ld	s1,72(sp)
    80050a92:	6906                	ld	s2,64(sp)
    80050a94:	79e2                	ld	s3,56(sp)
    80050a96:	7a42                	ld	s4,48(sp)
    80050a98:	7aa2                	ld	s5,40(sp)
    80050a9a:	7b02                	ld	s6,32(sp)
    80050a9c:	6be2                	ld	s7,24(sp)
    80050a9e:	6c42                	ld	s8,16(sp)
    80050aa0:	6ca2                	ld	s9,8(sp)
    80050aa2:	6d02                	ld	s10,0(sp)
    80050aa4:	6125                	addi	sp,sp,96
    80050aa6:	8082                	ret

0000000080050aa8 <cr_union1>:
cr_union1():
quickjs-nuttx/libunicode.c:511
{
    80050aa8:	7139                	addi	sp,sp,-64
    80050aaa:	f822                	sd	s0,48(sp)
    80050aac:	e42e                	sd	a1,8(sp)
    80050aae:	842a                	mv	s0,a0
    80050ab0:	e032                	sd	a2,0(sp)
quickjs-nuttx/libunicode.c:512
    CharRange a = *cr;
    80050ab2:	85aa                	mv	a1,a0
    80050ab4:	02000613          	li	a2,32
    80050ab8:	0808                	addi	a0,sp,16
quickjs-nuttx/libunicode.c:511
{
    80050aba:	fc06                	sd	ra,56(sp)
quickjs-nuttx/libunicode.c:512
    CharRange a = *cr;
    80050abc:	2f0130ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libunicode.c:517
    ret = cr_op(cr, a.points, a.len, b_pt, b_len, CR_OP_UNION);
    80050ac0:	6702                	ld	a4,0(sp)
    80050ac2:	66a2                	ld	a3,8(sp)
    80050ac4:	4642                	lw	a2,16(sp)
    80050ac6:	65e2                	ld	a1,24(sp)
quickjs-nuttx/libunicode.c:514
    cr->len = 0;
    80050ac8:	00043023          	sd	zero,0(s0)
quickjs-nuttx/libunicode.c:516
    cr->points = NULL;
    80050acc:	00043423          	sd	zero,8(s0)
quickjs-nuttx/libunicode.c:517
    ret = cr_op(cr, a.points, a.len, b_pt, b_len, CR_OP_UNION);
    80050ad0:	4781                	li	a5,0
    80050ad2:	8522                	mv	a0,s0
    80050ad4:	ef9ff0ef          	jal	ra,800509cc <cr_op>
    80050ad8:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:518
    cr_free(&a);
    80050ada:	0808                	addi	a0,sp,16
    80050adc:	ac3ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:520
}
    80050ae0:	70e2                	ld	ra,56(sp)
    80050ae2:	8522                	mv	a0,s0
    80050ae4:	7442                	ld	s0,48(sp)
    80050ae6:	6121                	addi	sp,sp,64
    80050ae8:	8082                	ret

0000000080050aea <cr_invert>:
cr_invert():
quickjs-nuttx/libunicode.c:523
{
    80050aea:	7179                	addi	sp,sp,-48
    80050aec:	f022                	sd	s0,32(sp)
    80050aee:	e84a                	sd	s2,16(sp)
    80050af0:	e44e                	sd	s3,8(sp)
    80050af2:	f406                	sd	ra,40(sp)
    80050af4:	ec26                	sd	s1,24(sp)
quickjs-nuttx/libunicode.c:525
    len = cr->len;
    80050af6:	4104                	lw	s1,0(a0)
quickjs-nuttx/libunicode.c:523
{
    80050af8:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:527
        return -1;
    80050afa:	597d                	li	s2,-1
quickjs-nuttx/libunicode.c:526
    if (cr_realloc(cr, len + 2))
    80050afc:	0024859b          	addiw	a1,s1,2
    80050b00:	89ae                	mv	s3,a1
    80050b02:	aa7ff0ef          	jal	ra,800505a8 <cr_realloc>
    80050b06:	e51d                	bnez	a0,80050b34 <cr_invert+0x4a>
quickjs-nuttx/libunicode.c:528
    memmove(cr->points + 1, cr->points, len * sizeof(cr->points[0]));
    80050b08:	640c                	ld	a1,8(s0)
    80050b0a:	00249613          	slli	a2,s1,0x2
    80050b0e:	892a                	mv	s2,a0
    80050b10:	00458513          	addi	a0,a1,4
    80050b14:	0ec130ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/libunicode.c:529
    cr->points[0] = 0;
    80050b18:	641c                	ld	a5,8(s0)
quickjs-nuttx/libunicode.c:530
    cr->points[len + 1] = UINT32_MAX;
    80050b1a:	2485                	addiw	s1,s1,1
    80050b1c:	048a                	slli	s1,s1,0x2
quickjs-nuttx/libunicode.c:529
    cr->points[0] = 0;
    80050b1e:	0007a023          	sw	zero,0(a5)
quickjs-nuttx/libunicode.c:530
    cr->points[len + 1] = UINT32_MAX;
    80050b22:	641c                	ld	a5,8(s0)
quickjs-nuttx/libunicode.c:532
    cr_compress(cr);
    80050b24:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:530
    cr->points[len + 1] = UINT32_MAX;
    80050b26:	94be                	add	s1,s1,a5
    80050b28:	57fd                	li	a5,-1
    80050b2a:	c09c                	sw	a5,0(s1)
quickjs-nuttx/libunicode.c:531
    cr->len = len + 2;
    80050b2c:	01342023          	sw	s3,0(s0)
quickjs-nuttx/libunicode.c:532
    cr_compress(cr);
    80050b30:	e51fe0ef          	jal	ra,8004f980 <cr_compress>
quickjs-nuttx/libunicode.c:534
}
    80050b34:	70a2                	ld	ra,40(sp)
    80050b36:	7402                	ld	s0,32(sp)
    80050b38:	64e2                	ld	s1,24(sp)
    80050b3a:	69a2                	ld	s3,8(sp)
    80050b3c:	854a                	mv	a0,s2
    80050b3e:	6942                	ld	s2,16(sp)
    80050b40:	6145                	addi	sp,sp,48
    80050b42:	8082                	ret

0000000080050b44 <unicode_prop_ops>:
unicode_prop_ops():
quickjs-nuttx/libunicode.c:1486
} PropOPEnum;

#define POP_STACK_LEN_MAX 4

static int unicode_prop_ops(CharRange *cr, ...)
{
    80050b44:	714d                	addi	sp,sp,-336
    80050b46:	fe3e                	sd	a5,312(sp)
quickjs-nuttx/libunicode.c:1492
    va_list ap;
    CharRange stack[POP_STACK_LEN_MAX];
    int stack_len, op, ret, i;
    uint32_t a;
    
    va_start(ap, cr);
    80050b48:	0a3c                	addi	a5,sp,280
quickjs-nuttx/libunicode.c:1486
{
    80050b4a:	e222                	sd	s0,256(sp)
    80050b4c:	fda6                	sd	s1,248(sp)
    80050b4e:	edd6                	sd	s5,216(sp)
    80050b50:	e9da                	sd	s6,208(sp)
    80050b52:	e5de                	sd	s7,200(sp)
    80050b54:	e1e2                	sd	s8,192(sp)
    80050b56:	e606                	sd	ra,264(sp)
    80050b58:	f9ca                	sd	s2,240(sp)
    80050b5a:	f5ce                	sd	s3,232(sp)
    80050b5c:	f1d2                	sd	s4,224(sp)
    80050b5e:	fd66                	sd	s9,184(sp)
    80050b60:	f96a                	sd	s10,176(sp)
    80050b62:	f56e                	sd	s11,168(sp)
    80050b64:	84aa                	mv	s1,a0
    80050b66:	ee2e                	sd	a1,280(sp)
    80050b68:	f232                	sd	a2,288(sp)
    80050b6a:	f636                	sd	a3,296(sp)
    80050b6c:	fa3a                	sd	a4,304(sp)
    80050b6e:	e2c2                	sd	a6,320(sp)
    80050b70:	e6c6                	sd	a7,328(sp)
quickjs-nuttx/libunicode.c:1492
    va_start(ap, cr);
    80050b72:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libunicode.c:1493
    stack_len = 0;
    80050b74:	4401                	li	s0,0
    80050b76:	4b9d                	li	s7,7
    80050b78:	00025b17          	auipc	s6,0x25
    80050b7c:	d08b0b13          	addi	s6,s6,-760 # 80075880 <reopcode_info+0xf0>
quickjs-nuttx/libunicode.c:1523
        case POP_UNION:
        case POP_INTER:
        case POP_XOR:
            {
                CharRange *cr1, *cr2, *cr3;
                assert(stack_len >= 2);
    80050b80:	4c05                	li	s8,1
quickjs-nuttx/libunicode.c:1524
                assert(stack_len < POP_STACK_LEN_MAX);
    80050b82:	4a8d                	li	s5,3
quickjs-nuttx/libunicode.c:1495
        op = va_arg(ap, int);
    80050b84:	6762                	ld	a4,24(sp)
    80050b86:	00072d83          	lw	s11,0(a4)
    80050b8a:	00870793          	addi	a5,a4,8
    80050b8e:	ec3e                	sd	a5,24(sp)
    80050b90:	19bbea63          	bltu	s7,s11,80050d24 <unicode_prop_ops+0x1e0>
    80050b94:	002d9793          	slli	a5,s11,0x2
    80050b98:	97da                	add	a5,a5,s6
    80050b9a:	439c                	lw	a5,0(a5)
    80050b9c:	97da                	add	a5,a5,s6
    80050b9e:	8782                	jr	a5
quickjs-nuttx/libunicode.c:1498
            assert(stack_len < POP_STACK_LEN_MAX);
    80050ba0:	008adb63          	bge	s5,s0,80050bb6 <unicode_prop_ops+0x72>
quickjs-nuttx/libunicode.c:1498 (discriminator 1)
    80050ba4:	4601                	li	a2,0
    80050ba6:	5da00593          	li	a1,1498
quickjs-nuttx/libunicode.c:1505 (discriminator 1)
            assert(stack_len < POP_STACK_LEN_MAX);
    80050baa:	00025517          	auipc	a0,0x25
    80050bae:	cc650513          	addi	a0,a0,-826 # 80075870 <reopcode_info+0xe0>
    80050bb2:	5ab0f0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libunicode.c:1499
            a = va_arg(ap, int);
    80050bb6:	01070793          	addi	a5,a4,16
quickjs-nuttx/libunicode.c:1500
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050bba:	688c                	ld	a1,16(s1)
    80050bbc:	6c90                	ld	a2,24(s1)
quickjs-nuttx/libunicode.c:1499
            a = va_arg(ap, int);
    80050bbe:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libunicode.c:1500
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050bc0:	00541513          	slli	a0,s0,0x5
    80050bc4:	101c                	addi	a5,sp,32
    80050bc6:	953e                	add	a0,a0,a5
quickjs-nuttx/libunicode.c:1499
            a = va_arg(ap, int);
    80050bc8:	00872983          	lw	s3,8(a4)
quickjs-nuttx/libunicode.c:1500
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050bcc:	e02a                	sd	a0,0(sp)
    80050bce:	9b9ff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1501
            if (unicode_general_category1(&stack[stack_len - 1], a))
    80050bd2:	6502                	ld	a0,0(sp)
    80050bd4:	85ce                	mv	a1,s3
quickjs-nuttx/libunicode.c:1500
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050bd6:	0014091b          	addiw	s2,s0,1
quickjs-nuttx/libunicode.c:1501
            if (unicode_general_category1(&stack[stack_len - 1], a))
    80050bda:	b9dff0ef          	jal	ra,80050776 <unicode_general_category1>
quickjs-nuttx/libunicode.c:1540 (discriminator 2)
                stack_len -= 2;
            }
            break;
        case POP_INVERT:
            assert(stack_len >= 1);
            if (cr_invert(&stack[stack_len - 1]))
    80050bde:	10050c63          	beqz	a0,80050cf6 <unicode_prop_ops+0x1b2>
    80050be2:	a8e9                	j	80050cbc <unicode_prop_ops+0x178>
quickjs-nuttx/libunicode.c:1505
            assert(stack_len < POP_STACK_LEN_MAX);
    80050be4:	008ad663          	bge	s5,s0,80050bf0 <unicode_prop_ops+0xac>
quickjs-nuttx/libunicode.c:1505 (discriminator 1)
    80050be8:	4601                	li	a2,0
    80050bea:	5e100593          	li	a1,1505
    80050bee:	bf75                	j	80050baa <unicode_prop_ops+0x66>
quickjs-nuttx/libunicode.c:1506
            a = va_arg(ap, int);
    80050bf0:	01070793          	addi	a5,a4,16
quickjs-nuttx/libunicode.c:1507
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050bf4:	688c                	ld	a1,16(s1)
    80050bf6:	6c90                	ld	a2,24(s1)
quickjs-nuttx/libunicode.c:1506
            a = va_arg(ap, int);
    80050bf8:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libunicode.c:1507
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050bfa:	00541513          	slli	a0,s0,0x5
    80050bfe:	101c                	addi	a5,sp,32
    80050c00:	953e                	add	a0,a0,a5
quickjs-nuttx/libunicode.c:1506
            a = va_arg(ap, int);
    80050c02:	00872983          	lw	s3,8(a4)
quickjs-nuttx/libunicode.c:1507
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050c06:	e02a                	sd	a0,0(sp)
    80050c08:	97fff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1508
            if (unicode_prop1(&stack[stack_len - 1], a))
    80050c0c:	6502                	ld	a0,0(sp)
    80050c0e:	85ce                	mv	a1,s3
quickjs-nuttx/libunicode.c:1507
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050c10:	0014091b          	addiw	s2,s0,1
quickjs-nuttx/libunicode.c:1508
            if (unicode_prop1(&stack[stack_len - 1], a))
    80050c14:	c6fff0ef          	jal	ra,80050882 <unicode_prop1>
    80050c18:	b7d9                	j	80050bde <unicode_prop_ops+0x9a>
quickjs-nuttx/libunicode.c:1512
            assert(stack_len < POP_STACK_LEN_MAX);
    80050c1a:	008ad663          	bge	s5,s0,80050c26 <unicode_prop_ops+0xe2>
quickjs-nuttx/libunicode.c:1512 (discriminator 1)
    80050c1e:	4601                	li	a2,0
    80050c20:	5e800593          	li	a1,1512
    80050c24:	b759                	j	80050baa <unicode_prop_ops+0x66>
quickjs-nuttx/libunicode.c:1513
            a = va_arg(ap, int);
    80050c26:	01070793          	addi	a5,a4,16
quickjs-nuttx/libunicode.c:1514
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050c2a:	688c                	ld	a1,16(s1)
    80050c2c:	6c90                	ld	a2,24(s1)
quickjs-nuttx/libunicode.c:1513
            a = va_arg(ap, int);
    80050c2e:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libunicode.c:1514
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050c30:	00541513          	slli	a0,s0,0x5
    80050c34:	101c                	addi	a5,sp,32
    80050c36:	953e                	add	a0,a0,a5
quickjs-nuttx/libunicode.c:1513
            a = va_arg(ap, int);
    80050c38:	00872983          	lw	s3,8(a4)
quickjs-nuttx/libunicode.c:1514
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050c3c:	e02a                	sd	a0,0(sp)
    80050c3e:	949ff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1515
            if (unicode_case1(&stack[stack_len - 1], a))
    80050c42:	6502                	ld	a0,0(sp)
    80050c44:	85ce                	mv	a1,s3
quickjs-nuttx/libunicode.c:1514
            cr_init(&stack[stack_len++], cr->mem_opaque, cr->realloc_func);
    80050c46:	0014091b          	addiw	s2,s0,1
quickjs-nuttx/libunicode.c:1515
            if (unicode_case1(&stack[stack_len - 1], a))
    80050c4a:	a01ff0ef          	jal	ra,8005064a <unicode_case1>
    80050c4e:	bf41                	j	80050bde <unicode_prop_ops+0x9a>
quickjs-nuttx/libunicode.c:1523
                assert(stack_len >= 2);
    80050c50:	008c4663          	blt	s8,s0,80050c5c <unicode_prop_ops+0x118>
quickjs-nuttx/libunicode.c:1523 (discriminator 1)
    80050c54:	4601                	li	a2,0
    80050c56:	5f300593          	li	a1,1523
    80050c5a:	bf81                	j	80050baa <unicode_prop_ops+0x66>
quickjs-nuttx/libunicode.c:1524 (discriminator 2)
                assert(stack_len < POP_STACK_LEN_MAX);
    80050c5c:	008ad663          	bge	s5,s0,80050c68 <unicode_prop_ops+0x124>
quickjs-nuttx/libunicode.c:1524 (discriminator 1)
    80050c60:	4601                	li	a2,0
    80050c62:	5f400593          	li	a1,1524
    80050c66:	b791                	j	80050baa <unicode_prop_ops+0x66>
quickjs-nuttx/libunicode.c:1528 (discriminator 2)
                cr_init(cr3, cr->mem_opaque, cr->realloc_func);
    80050c68:	6c90                	ld	a2,24(s1)
    80050c6a:	688c                	ld	a1,16(s1)
quickjs-nuttx/libunicode.c:1525 (discriminator 2)
                cr1 = &stack[stack_len - 2];
    80050c6c:	ffe4099b          	addiw	s3,s0,-2
    80050c70:	101c                	addi	a5,sp,32
    80050c72:	0996                	slli	s3,s3,0x5
quickjs-nuttx/libunicode.c:1526 (discriminator 2)
                cr2 = &stack[stack_len - 1];
    80050c74:	fff4091b          	addiw	s2,s0,-1
quickjs-nuttx/libunicode.c:1527 (discriminator 2)
                cr3 = &stack[stack_len++];
    80050c78:	00541c93          	slli	s9,s0,0x5
quickjs-nuttx/libunicode.c:1525 (discriminator 2)
                cr1 = &stack[stack_len - 2];
    80050c7c:	01378833          	add	a6,a5,s3
quickjs-nuttx/libunicode.c:1527 (discriminator 2)
                cr3 = &stack[stack_len++];
    80050c80:	01978533          	add	a0,a5,s9
quickjs-nuttx/libunicode.c:1526 (discriminator 2)
                cr2 = &stack[stack_len - 1];
    80050c84:	00591a13          	slli	s4,s2,0x5
quickjs-nuttx/libunicode.c:1525 (discriminator 2)
                cr1 = &stack[stack_len - 2];
    80050c88:	e442                	sd	a6,8(sp)
quickjs-nuttx/libunicode.c:1526 (discriminator 2)
                cr2 = &stack[stack_len - 1];
    80050c8a:	01478d33          	add	s10,a5,s4
quickjs-nuttx/libunicode.c:1528 (discriminator 2)
                cr_init(cr3, cr->mem_opaque, cr->realloc_func);
    80050c8e:	e02a                	sd	a0,0(sp)
    80050c90:	8f7ff0ef          	jal	ra,80050586 <cr_init>
quickjs-nuttx/libunicode.c:1529 (discriminator 2)
                if (cr_op(cr3, cr1->points, cr1->len,
    80050c94:	111c                	addi	a5,sp,160
    80050c96:	9a3e                	add	s4,s4,a5
    80050c98:	99be                	add	s3,s3,a5
    80050c9a:	f80a2703          	lw	a4,-128(s4)
    80050c9e:	f88a3683          	ld	a3,-120(s4)
    80050ca2:	f809a603          	lw	a2,-128(s3)
    80050ca6:	f889b583          	ld	a1,-120(s3)
    80050caa:	6502                	ld	a0,0(sp)
    80050cac:	ffdd879b          	addiw	a5,s11,-3
    80050cb0:	d1dff0ef          	jal	ra,800509cc <cr_op>
    80050cb4:	6822                	ld	a6,8(sp)
    80050cb6:	cd19                	beqz	a0,80050cd4 <unicode_prop_ops+0x190>
quickjs-nuttx/libunicode.c:1527
                cr3 = &stack[stack_len++];
    80050cb8:	0014091b          	addiw	s2,s0,1
quickjs-nuttx/libunicode.c:1555
    assert(stack_len == 1);
    ret = cr_copy(cr, &stack[0]);
    cr_free(&stack[0]);
    return ret;
 fail:
    for(i = 0; i < stack_len; i++)
    80050cbc:	1000                	addi	s0,sp,32
    80050cbe:	4481                	li	s1,0
quickjs-nuttx/libunicode.c:1556 (discriminator 3)
        cr_free(&stack[i]);
    80050cc0:	8522                	mv	a0,s0
quickjs-nuttx/libunicode.c:1555 (discriminator 3)
    for(i = 0; i < stack_len; i++)
    80050cc2:	2485                	addiw	s1,s1,1
quickjs-nuttx/libunicode.c:1556 (discriminator 3)
        cr_free(&stack[i]);
    80050cc4:	8dbff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1555 (discriminator 3)
    for(i = 0; i < stack_len; i++)
    80050cc8:	02040413          	addi	s0,s0,32
    80050ccc:	fe991ae3          	bne	s2,s1,80050cc0 <unicode_prop_ops+0x17c>
quickjs-nuttx/libunicode.c:1557
    return -1;
    80050cd0:	547d                	li	s0,-1
    80050cd2:	a09d                	j	80050d38 <unicode_prop_ops+0x1f4>
quickjs-nuttx/libunicode.c:1532
                cr_free(cr1);
    80050cd4:	8542                	mv	a0,a6
    80050cd6:	8c9ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1533
                cr_free(cr2);
    80050cda:	856a                	mv	a0,s10
    80050cdc:	8c3ff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1534
                *cr1 = *cr3;
    80050ce0:	111c                	addi	a5,sp,160
    80050ce2:	019785b3          	add	a1,a5,s9
    80050ce6:	02000613          	li	a2,32
    80050cea:	f8058593          	addi	a1,a1,-128
    80050cee:	f8098513          	addi	a0,s3,-128
    80050cf2:	0ba130ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libunicode.c:1537
            break;
    80050cf6:	844a                	mv	s0,s2
    80050cf8:	b571                	j	80050b84 <unicode_prop_ops+0x40>
quickjs-nuttx/libunicode.c:1539
            assert(stack_len >= 1);
    80050cfa:	e409                	bnez	s0,80050d04 <unicode_prop_ops+0x1c0>
quickjs-nuttx/libunicode.c:1539 (discriminator 1)
    80050cfc:	4601                	li	a2,0
    80050cfe:	60300593          	li	a1,1539
    80050d02:	b565                	j	80050baa <unicode_prop_ops+0x66>
quickjs-nuttx/libunicode.c:1540 (discriminator 2)
            if (cr_invert(&stack[stack_len - 1]))
    80050d04:	fff4051b          	addiw	a0,s0,-1
    80050d08:	101c                	addi	a5,sp,32
    80050d0a:	0516                	slli	a0,a0,0x5
    80050d0c:	953e                	add	a0,a0,a5
    80050d0e:	dddff0ef          	jal	ra,80050aea <cr_invert>
    80050d12:	8922                	mv	s2,s0
    80050d14:	b5e9                	j	80050bde <unicode_prop_ops+0x9a>
quickjs-nuttx/libunicode.c:1550
    assert(stack_len == 1);
    80050d16:	4785                	li	a5,1
    80050d18:	00f40863          	beq	s0,a5,80050d28 <unicode_prop_ops+0x1e4>
quickjs-nuttx/libunicode.c:1550 (discriminator 1)
    80050d1c:	4601                	li	a2,0
    80050d1e:	60e00593          	li	a1,1550
    80050d22:	b561                	j	80050baa <unicode_prop_ops+0x66>
quickjs-nuttx/libunicode.c:1546
            abort();
    80050d24:	65f110ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/libunicode.c:1551 (discriminator 2)
    ret = cr_copy(cr, &stack[0]);
    80050d28:	100c                	addi	a1,sp,32
    80050d2a:	8526                	mv	a0,s1
    80050d2c:	c65ff0ef          	jal	ra,80050990 <cr_copy>
    80050d30:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:1552 (discriminator 2)
    cr_free(&stack[0]);
    80050d32:	1008                	addi	a0,sp,32
    80050d34:	86bff0ef          	jal	ra,8005059e <cr_free>
quickjs-nuttx/libunicode.c:1558
}
    80050d38:	60b2                	ld	ra,264(sp)
    80050d3a:	8522                	mv	a0,s0
    80050d3c:	6412                	ld	s0,256(sp)
    80050d3e:	74ee                	ld	s1,248(sp)
    80050d40:	794e                	ld	s2,240(sp)
    80050d42:	79ae                	ld	s3,232(sp)
    80050d44:	7a0e                	ld	s4,224(sp)
    80050d46:	6aee                	ld	s5,216(sp)
    80050d48:	6b4e                	ld	s6,208(sp)
    80050d4a:	6bae                	ld	s7,200(sp)
    80050d4c:	6c0e                	ld	s8,192(sp)
    80050d4e:	7cea                	ld	s9,184(sp)
    80050d50:	7d4a                	ld	s10,176(sp)
    80050d52:	7daa                	ld	s11,168(sp)
    80050d54:	6171                	addi	sp,sp,336
    80050d56:	8082                	ret

0000000080050d58 <lre_is_id_start>:
lre_is_id_start():
quickjs-nuttx/libunicode.c:540
    return lre_is_in_table(c, unicode_prop_ID_Start_table,
    80050d58:	02300693          	li	a3,35
    80050d5c:	0002b617          	auipc	a2,0x2b
    80050d60:	48460613          	addi	a2,a2,1156 # 8007c1e0 <unicode_prop_ID_Start_index>
    80050d64:	0002b597          	auipc	a1,0x2b
    80050d68:	4ec58593          	addi	a1,a1,1260 # 8007c250 <unicode_prop_ID_Start_table>
    80050d6c:	dd3fe06f          	j	8004fb3e <lre_is_in_table>

0000000080050d70 <lre_is_id_continue>:
lre_is_id_continue():
quickjs-nuttx/libunicode.c:546
{
    80050d70:	1141                	addi	sp,sp,-16
    80050d72:	e022                	sd	s0,0(sp)
    80050d74:	e406                	sd	ra,8(sp)
    80050d76:	842a                	mv	s0,a0
quickjs-nuttx/libunicode.c:547
    return lre_is_id_start(c) ||
    80050d78:	fe1ff0ef          	jal	ra,80050d58 <lre_is_id_start>
    80050d7c:	e11d                	bnez	a0,80050da2 <lre_is_id_continue+0x32>
quickjs-nuttx/libunicode.c:548 (discriminator 2)
        lre_is_in_table(c, unicode_prop_ID_Continue1_table,
    80050d7e:	46d5                	li	a3,21
    80050d80:	0002b617          	auipc	a2,0x2b
    80050d84:	18860613          	addi	a2,a2,392 # 8007bf08 <unicode_prop_ID_Continue1_index>
    80050d88:	0002b597          	auipc	a1,0x2b
    80050d8c:	1c058593          	addi	a1,a1,448 # 8007bf48 <unicode_prop_ID_Continue1_table>
    80050d90:	8522                	mv	a0,s0
    80050d92:	dadfe0ef          	jal	ra,8004fb3e <lre_is_in_table>
quickjs-nuttx/libunicode.c:547 (discriminator 2)
    return lre_is_id_start(c) ||
    80050d96:	00a03533          	snez	a0,a0
quickjs-nuttx/libunicode.c:551 (discriminator 6)
}
    80050d9a:	60a2                	ld	ra,8(sp)
    80050d9c:	6402                	ld	s0,0(sp)
    80050d9e:	0141                	addi	sp,sp,16
    80050da0:	8082                	ret
quickjs-nuttx/libunicode.c:547
    return lre_is_id_start(c) ||
    80050da2:	4505                	li	a0,1
    80050da4:	bfdd                	j	80050d9a <lre_is_id_continue+0x2a>

0000000080050da6 <unicode_normalize>:
unicode_normalize():
quickjs-nuttx/libunicode.c:959
{
    80050da6:	7115                	addi	sp,sp,-224
    80050da8:	e9a2                	sd	s0,208(sp)
    80050daa:	e1ca                	sd	s2,192(sp)
    80050dac:	e566                	sd	s9,136(sp)
    80050dae:	892a                	mv	s2,a0
    80050db0:	8cb2                	mv	s9,a2
quickjs-nuttx/libunicode.c:966
    dbuf_init2(dbuf, opaque, realloc_func);
    80050db2:	0088                	addi	a0,sp,64
    80050db4:	863e                	mv	a2,a5
quickjs-nuttx/libunicode.c:959
{
    80050db6:	842e                	mv	s0,a1
quickjs-nuttx/libunicode.c:966
    dbuf_init2(dbuf, opaque, realloc_func);
    80050db8:	85ba                	mv	a1,a4
quickjs-nuttx/libunicode.c:959
{
    80050dba:	ed86                	sd	ra,216(sp)
    80050dbc:	fd4e                	sd	s3,184(sp)
    80050dbe:	e5a6                	sd	s1,200(sp)
    80050dc0:	89b6                	mv	s3,a3
    80050dc2:	f952                	sd	s4,176(sp)
    80050dc4:	f556                	sd	s5,168(sp)
    80050dc6:	f15a                	sd	s6,160(sp)
    80050dc8:	ed5e                	sd	s7,152(sp)
    80050dca:	e962                	sd	s8,144(sp)
    80050dcc:	e16a                	sd	s10,128(sp)
    80050dce:	fcee                	sd	s11,120(sp)
quickjs-nuttx/libunicode.c:966
    dbuf_init2(dbuf, opaque, realloc_func);
    80050dd0:	3a1000ef          	jal	ra,80051970 <dbuf_init2>
quickjs-nuttx/libunicode.c:967
    if (dbuf_realloc(dbuf, sizeof(int) * src_len))
    80050dd4:	002c9613          	slli	a2,s9,0x2
    80050dd8:	85b2                	mv	a1,a2
    80050dda:	0088                	addi	a0,sp,64
    80050ddc:	e432                	sd	a2,8(sp)
    80050dde:	3d1000ef          	jal	ra,800519ae <dbuf_realloc>
    80050de2:	6622                	ld	a2,8(sp)
    80050de4:	c505                	beqz	a0,80050e0c <unicode_normalize+0x66>
quickjs-nuttx/libunicode.c:986
        *pdst = NULL;
    80050de6:	00093023          	sd	zero,0(s2)
quickjs-nuttx/libunicode.c:987
        return -1;
    80050dea:	5cfd                	li	s9,-1
quickjs-nuttx/libunicode.c:1027
}
    80050dec:	60ee                	ld	ra,216(sp)
    80050dee:	644e                	ld	s0,208(sp)
    80050df0:	64ae                	ld	s1,200(sp)
    80050df2:	690e                	ld	s2,192(sp)
    80050df4:	79ea                	ld	s3,184(sp)
    80050df6:	7a4a                	ld	s4,176(sp)
    80050df8:	7aaa                	ld	s5,168(sp)
    80050dfa:	7b0a                	ld	s6,160(sp)
    80050dfc:	6bea                	ld	s7,152(sp)
    80050dfe:	6c4a                	ld	s8,144(sp)
    80050e00:	6d0a                	ld	s10,128(sp)
    80050e02:	7de6                	ld	s11,120(sp)
    80050e04:	8566                	mv	a0,s9
    80050e06:	6caa                	ld	s9,136(sp)
    80050e08:	612d                	addi	sp,sp,224
    80050e0a:	8082                	ret
quickjs-nuttx/libunicode.c:971
    if (n_type == UNICODE_NFC) {
    80050e0c:	4781                	li	a5,0
quickjs-nuttx/libunicode.c:973
            if (src[i] >= 0x100)
    80050e0e:	0ff00693          	li	a3,255
quickjs-nuttx/libunicode.c:971
    if (n_type == UNICODE_NFC) {
    80050e12:	04098563          	beqz	s3,80050e5c <unicode_normalize+0xb6>
quickjs-nuttx/libunicode.c:983 (discriminator 1)
    to_nfd_rec(dbuf, (const int *)src, src_len, is_compat);
    80050e16:	0019d69b          	srliw	a3,s3,0x1
    80050e1a:	8666                	mv	a2,s9
    80050e1c:	85a2                	mv	a1,s0
    80050e1e:	0088                	addi	a0,sp,64
    80050e20:	9d4ff0ef          	jal	ra,8004fff4 <to_nfd_rec>
dbuf_error():
quickjs-nuttx/cutils.h:272 (discriminator 1)
    return s->error;
    80050e24:	4a66                	lw	s4,88(sp)
unicode_normalize():
quickjs-nuttx/libunicode.c:984 (discriminator 1)
    if (dbuf_error(dbuf)) {
    80050e26:	fc0a10e3          	bnez	s4,80050de6 <unicode_normalize+0x40>
quickjs-nuttx/libunicode.c:990
    buf_len = dbuf->size / sizeof(int);
    80050e2a:	64a6                	ld	s1,72(sp)
quickjs-nuttx/libunicode.c:989
    buf = (int *)dbuf->buf;
    80050e2c:	6406                	ld	s0,64(sp)
quickjs-nuttx/libunicode.c:990
    buf_len = dbuf->size / sizeof(int);
    80050e2e:	8089                	srli	s1,s1,0x2
    80050e30:	2481                	sext.w	s1,s1
sort_cc():
quickjs-nuttx/libunicode.c:880
    for(i = 0; i < len; i++) {
    80050e32:	049a4163          	blt	s4,s1,80050e74 <unicode_normalize+0xce>
unicode_normalize():
quickjs-nuttx/libunicode.c:994
    if (buf_len <= 1 || (n_type & 1) != 0) {
    80050e36:	4785                	li	a5,1
    80050e38:	0097d663          	bge	a5,s1,80050e44 <unicode_normalize+0x9e>
quickjs-nuttx/libunicode.c:994 (discriminator 1)
    80050e3c:	0019f993          	andi	s3,s3,1
    80050e40:	08098f63          	beqz	s3,80050ede <unicode_normalize+0x138>
quickjs-nuttx/libunicode.c:996
        *pdst = (uint32_t *)buf;
    80050e44:	00893023          	sd	s0,0(s2)
quickjs-nuttx/libunicode.c:997
        return buf_len;
    80050e48:	8ca6                	mv	s9,s1
    80050e4a:	b74d                	j	80050dec <unicode_normalize+0x46>
quickjs-nuttx/libunicode.c:973
            if (src[i] >= 0x100)
    80050e4c:	0785                	addi	a5,a5,1
    80050e4e:	00279713          	slli	a4,a5,0x2
    80050e52:	9722                	add	a4,a4,s0
    80050e54:	ffc72703          	lw	a4,-4(a4)
    80050e58:	fae6efe3          	bltu	a3,a4,80050e16 <unicode_normalize+0x70>
quickjs-nuttx/libunicode.c:972 (discriminator 1)
        for(i = 0; i < src_len; i++) {
    80050e5c:	0007871b          	sext.w	a4,a5
    80050e60:	ff9746e3          	blt	a4,s9,80050e4c <unicode_normalize+0xa6>
quickjs-nuttx/libunicode.c:976
        buf = (int *)dbuf->buf;
    80050e64:	6786                	ld	a5,64(sp)
quickjs-nuttx/libunicode.c:977
        memcpy(buf, src, src_len * sizeof(int));
    80050e66:	85a2                	mv	a1,s0
    80050e68:	853e                	mv	a0,a5
    80050e6a:	743120ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libunicode.c:978
        *pdst = (uint32_t *)buf;
    80050e6e:	00a93023          	sd	a0,0(s2)
quickjs-nuttx/libunicode.c:979
        return src_len;
    80050e72:	bfad                	j	80050dec <unicode_normalize+0x46>
sort_cc():
quickjs-nuttx/libunicode.c:881
        cc = unicode_get_cc(buf[i]);
    80050e74:	002a1793          	slli	a5,s4,0x2
    80050e78:	97a2                	add	a5,a5,s0
    80050e7a:	4388                	lw	a0,0(a5)
    80050e7c:	8ad2                	mv	s5,s4
    80050e7e:	d7ffe0ef          	jal	ra,8004fbfc <unicode_get_cc>
quickjs-nuttx/libunicode.c:882
        if (cc != 0) {
    80050e82:	c901                	beqz	a0,80050e92 <unicode_normalize+0xec>
quickjs-nuttx/libunicode.c:884
            j = i + 1;
    80050e84:	001a0a9b          	addiw	s5,s4,1
    80050e88:	002a9b93          	slli	s7,s5,0x2
    80050e8c:	9ba2                	add	s7,s7,s0
quickjs-nuttx/libunicode.c:885
            while (j < len) {
    80050e8e:	01549563          	bne	s1,s5,80050e98 <unicode_normalize+0xf2>
quickjs-nuttx/libunicode.c:880
    for(i = 0; i < len; i++) {
    80050e92:	001a8a1b          	addiw	s4,s5,1
    80050e96:	bf71                	j	80050e32 <unicode_normalize+0x8c>
quickjs-nuttx/libunicode.c:886
                ch1 = buf[j];
    80050e98:	000bac83          	lw	s9,0(s7)
quickjs-nuttx/libunicode.c:887
                cc1 = unicode_get_cc(ch1);
    80050e9c:	8566                	mv	a0,s9
    80050e9e:	d5ffe0ef          	jal	ra,8004fbfc <unicode_get_cc>
    80050ea2:	8d2a                	mv	s10,a0
quickjs-nuttx/libunicode.c:888
                if (cc1 == 0)
    80050ea4:	d57d                	beqz	a0,80050e92 <unicode_normalize+0xec>
quickjs-nuttx/libunicode.c:890
                k = j - 1;
    80050ea6:	fffa8c1b          	addiw	s8,s5,-1
quickjs-nuttx/libunicode.c:894
                    buf[k + 1] = buf[k];
    80050eaa:	001c0b1b          	addiw	s6,s8,1
    80050eae:	0b0a                	slli	s6,s6,0x2
    80050eb0:	9b22                	add	s6,s6,s0
quickjs-nuttx/libunicode.c:891
                while (k >= start) {
    80050eb2:	014c4b63          	blt	s8,s4,80050ec8 <unicode_normalize+0x122>
quickjs-nuttx/libunicode.c:892
                    if (unicode_get_cc(buf[k]) <= cc1)
    80050eb6:	002c1d93          	slli	s11,s8,0x2
    80050eba:	9da2                	add	s11,s11,s0
    80050ebc:	000da503          	lw	a0,0(s11)
    80050ec0:	d3dfe0ef          	jal	ra,8004fbfc <unicode_get_cc>
    80050ec4:	00ad4763          	blt	s10,a0,80050ed2 <unicode_normalize+0x12c>
quickjs-nuttx/libunicode.c:897
                buf[k + 1] = ch1;
    80050ec8:	019b2023          	sw	s9,0(s6)
quickjs-nuttx/libunicode.c:898
                j++;
    80050ecc:	2a85                	addiw	s5,s5,1
    80050ece:	0b91                	addi	s7,s7,4
    80050ed0:	bf7d                	j	80050e8e <unicode_normalize+0xe8>
quickjs-nuttx/libunicode.c:894
                    buf[k + 1] = buf[k];
    80050ed2:	000da783          	lw	a5,0(s11)
quickjs-nuttx/libunicode.c:895
                    k--;
    80050ed6:	3c7d                	addiw	s8,s8,-1
quickjs-nuttx/libunicode.c:894
                    buf[k + 1] = buf[k];
    80050ed8:	00fb2023          	sw	a5,0(s6)
quickjs-nuttx/libunicode.c:895
                    k--;
    80050edc:	b7f9                	j	80050eaa <unicode_normalize+0x104>
compose_pair():
quickjs-nuttx/libunicode.c:947
    } else if (c0 >= 0xac00 && c0 < 0xac00 + 11172 &&
    80050ede:	7ad5                	lui	s5,0xffff5
    80050ee0:	6b0d                	lui	s6,0x3
quickjs-nuttx/libunicode.c:946
        return 0xac00 + (c0 - 0x1100) * 588 + (c1 - 0x1161) * 28;
    80050ee2:	ffd7cbb7          	lui	s7,0xffd7c
    80050ee6:	00440c13          	addi	s8,s0,4
unicode_normalize():
quickjs-nuttx/libunicode.c:994
    if (buf_len <= 1 || (n_type & 1) != 0) {
    80050eea:	4989                	li	s3,2
quickjs-nuttx/libunicode.c:1001
    out_len = 1;
    80050eec:	4c85                	li	s9,1
compose_pair():
quickjs-nuttx/libunicode.c:944
    if (c0 >= 0x1100 && c0 < 0x1100 + 19 &&
    80050eee:	7a7d                	lui	s4,0xfffff
quickjs-nuttx/libunicode.c:947
    } else if (c0 >= 0xac00 && c0 < 0xac00 + 11172 &&
    80050ef0:	400a8a9b          	addiw	s5,s5,1024
    80050ef4:	ba3b0b13          	addi	s6,s6,-1117 # 2ba3 <asinh-0x7fffd45d>
quickjs-nuttx/libunicode.c:946
        return 0xac00 + (c0 - 0x1100) * 588 + (c1 - 0x1161) * 28;
    80050ef8:	964b8b9b          	addiw	s7,s7,-1692
unicode_normalize():
quickjs-nuttx/libunicode.c:1005
        last_cc = unicode_get_cc(buf[i]);
    80050efc:	000c2503          	lw	a0,0(s8) # 1000 <asinh-0x7ffff000>
quickjs-nuttx/libunicode.c:1006
        starter_pos = out_len - 1;
    80050f00:	fffc8d9b          	addiw	s11,s9,-1
    80050f04:	002d9d13          	slli	s10,s11,0x2
quickjs-nuttx/libunicode.c:1005
        last_cc = unicode_get_cc(buf[i]);
    80050f08:	cf5fe0ef          	jal	ra,8004fbfc <unicode_get_cc>
    80050f0c:	87aa                	mv	a5,a0
quickjs-nuttx/libunicode.c:1007
        while (starter_pos >= 0) {
    80050f0e:	9d22                	add	s10,s10,s0
    80050f10:	000ddc63          	bgez	s11,80050f28 <unicode_normalize+0x182>
quickjs-nuttx/libunicode.c:1022
            buf[out_len++] = buf[i++];
    80050f14:	000c2683          	lw	a3,0(s8)
    80050f18:	002c9793          	slli	a5,s9,0x2
    80050f1c:	97a2                	add	a5,a5,s0
    80050f1e:	0009871b          	sext.w	a4,s3
    80050f22:	c394                	sw	a3,0(a5)
    80050f24:	2c85                	addiw	s9,s9,1
    80050f26:	a0b1                	j	80050f72 <unicode_normalize+0x1cc>
quickjs-nuttx/libunicode.c:1008
            cc = unicode_get_cc(buf[starter_pos]);
    80050f28:	000d2503          	lw	a0,0(s10)
    80050f2c:	e43e                	sd	a5,8(sp)
    80050f2e:	ccffe0ef          	jal	ra,8004fbfc <unicode_get_cc>
    80050f32:	8eaa                	mv	t4,a0
quickjs-nuttx/libunicode.c:1009
            if (cc == 0)
    80050f34:	c12d                	beqz	a0,80050f96 <unicode_normalize+0x1f0>
quickjs-nuttx/libunicode.c:1011
            if (cc >= last_cc)
    80050f36:	67a2                	ld	a5,8(sp)
    80050f38:	1d71                	addi	s10,s10,-4
    80050f3a:	fcf55de3          	bge	a0,a5,80050f14 <unicode_normalize+0x16e>
quickjs-nuttx/libunicode.c:1014
            starter_pos--;
    80050f3e:	3dfd                	addiw	s11,s11,-1
quickjs-nuttx/libunicode.c:1013
            last_cc = 256;
    80050f40:	10000793          	li	a5,256
    80050f44:	b7f1                	j	80050f10 <unicode_normalize+0x16a>
compose_pair():
quickjs-nuttx/libunicode.c:944
    if (c0 >= 0x1100 && c0 < 0x1100 + 19 &&
    80050f46:	e9fa079b          	addiw	a5,s4,-353
    80050f4a:	01c787bb          	addw	a5,a5,t3
    80050f4e:	4751                	li	a4,20
    80050f50:	04f76f63          	bltu	a4,a5,80050fae <unicode_normalize+0x208>
quickjs-nuttx/libunicode.c:946
        return 0xac00 + (c0 - 0x1100) * 588 + (c1 - 0x1161) * 28;
    80050f54:	47f1                	li	a5,28
    80050f56:	03c787bb          	mulw	a5,a5,t3
    80050f5a:	24c00713          	li	a4,588
    80050f5e:	03b70dbb          	mulw	s11,a4,s11
    80050f62:	017787bb          	addw	a5,a5,s7
quickjs-nuttx/libunicode.c:950
        return c0 + c1 - 0x11a7;
    80050f66:	01b787bb          	addw	a5,a5,s11
unicode_normalize():
quickjs-nuttx/libunicode.c:1018
            buf[starter_pos] = p;
    80050f6a:	00fd2023          	sw	a5,0(s10)
quickjs-nuttx/libunicode.c:1019
            i++;
    80050f6e:	0009871b          	sext.w	a4,s3
quickjs-nuttx/libunicode.c:1002
    while (i < buf_len) {
    80050f72:	0c11                	addi	s8,s8,4
    80050f74:	2985                	addiw	s3,s3,1
    80050f76:	f89743e3          	blt	a4,s1,80050efc <unicode_normalize+0x156>
quickjs-nuttx/libunicode.c:1025
    *pdst = (uint32_t *)buf;
    80050f7a:	00893023          	sd	s0,0(s2)
quickjs-nuttx/libunicode.c:1026
    return out_len;
    80050f7e:	b5bd                	j	80050dec <unicode_normalize+0x46>
unicode_compose_pair():
quickjs-nuttx/libunicode.c:815
        } else if (d > 0) {
    80050f80:	c781                	beqz	a5,80050f88 <unicode_normalize+0x1e2>
quickjs-nuttx/libunicode.c:816
            idx_min = idx + 1;
    80050f82:	00188e9b          	addiw	t4,a7,1
    80050f86:	a8e1                	j	8005105e <unicode_normalize+0x2b8>
quickjs-nuttx/libunicode.c:818
            return ch;
    80050f88:	0005879b          	sext.w	a5,a1
unicode_normalize():
quickjs-nuttx/libunicode.c:1016
        if (starter_pos >= 0 &&
    80050f8c:	fdf9                	bnez	a1,80050f6a <unicode_normalize+0x1c4>
    80050f8e:	b759                	j	80050f14 <unicode_normalize+0x16e>
unicode_compose_pair():
quickjs-nuttx/libunicode.c:813
        if (d < 0) {
    80050f90:	fe07d9e3          	bgez	a5,80050f82 <unicode_normalize+0x1dc>
    80050f94:	a0d9                	j	8005105a <unicode_normalize+0x2b4>
unicode_normalize():
quickjs-nuttx/libunicode.c:1017
            (p = compose_pair(buf[starter_pos], buf[i])) != 0) {
    80050f96:	000d2d83          	lw	s11,0(s10)
compose_pair():
quickjs-nuttx/libunicode.c:944
    if (c0 >= 0x1100 && c0 < 0x1100 + 19 &&
    80050f9a:	77fd                	lui	a5,0xfffff
    80050f9c:	f007879b          	addiw	a5,a5,-256
    80050fa0:	01b7873b          	addw	a4,a5,s11
    80050fa4:	47c9                	li	a5,18
unicode_normalize():
quickjs-nuttx/libunicode.c:1017
            (p = compose_pair(buf[starter_pos], buf[i])) != 0) {
    80050fa6:	000c2e03          	lw	t3,0(s8)
compose_pair():
quickjs-nuttx/libunicode.c:944
    if (c0 >= 0x1100 && c0 < 0x1100 + 19 &&
    80050faa:	f8e7fee3          	bgeu	a5,a4,80050f46 <unicode_normalize+0x1a0>
quickjs-nuttx/libunicode.c:947
    } else if (c0 >= 0xac00 && c0 < 0xac00 + 11172 &&
    80050fae:	015d873b          	addw	a4,s11,s5
    80050fb2:	87ba                	mv	a5,a4
    80050fb4:	00eb6e63          	bltu	s6,a4,80050fd0 <unicode_normalize+0x22a>
    80050fb8:	4771                	li	a4,28
    80050fba:	02e7f7bb          	remuw	a5,a5,a4
    80050fbe:	eb89                	bnez	a5,80050fd0 <unicode_normalize+0x22a>
quickjs-nuttx/libunicode.c:948
               (c0 - 0xac00) % 28 == 0 &&
    80050fc0:	e59a079b          	addiw	a5,s4,-423
    80050fc4:	00fe06bb          	addw	a3,t3,a5
    80050fc8:	476d                	li	a4,27
    80050fca:	87b6                	mv	a5,a3
    80050fcc:	f8d77de3          	bgeu	a4,a3,80050f66 <unicode_normalize+0x1c0>
    80050fd0:	3b000313          	li	t1,944
unicode_compose_pair():
quickjs-nuttx/libunicode.c:799
        idx1 = unicode_comp_table[idx];
    80050fd4:	00025f17          	auipc	t5,0x25
    80050fd8:	4b4f0f13          	addi	t5,t5,1204 # 80076488 <unicode_comp_table>
quickjs-nuttx/libunicode.c:804
        v = unicode_decomp_table1[d_idx];
    80050fdc:	00028f97          	auipc	t6,0x28
    80050fe0:	09cf8f93          	addi	t6,t6,156 # 80079078 <unicode_decomp_table1>
quickjs-nuttx/libunicode.c:798
        idx = (idx_max + idx_min) / 2;
    80050fe4:	006e88bb          	addw	a7,t4,t1
    80050fe8:	4018d79b          	sraiw	a5,a7,0x1
    80050fec:	ca3e                	sw	a5,20(sp)
quickjs-nuttx/libunicode.c:799
        idx1 = unicode_comp_table[idx];
    80050fee:	0786                	slli	a5,a5,0x1
    80050ff0:	97fa                	add	a5,a5,t5
    80050ff2:	0007d603          	lhu	a2,0(a5) # fffffffffffff000 <_ebss+0xffffffff7fefde9a>
quickjs-nuttx/libunicode.c:809
        unicode_decomp_entry(pair, ch, d_idx, code, len, type);
    80050ff6:	1828                	addi	a0,sp,56
    80050ff8:	f472                	sd	t3,40(sp)
quickjs-nuttx/libunicode.c:804
        v = unicode_decomp_table1[d_idx];
    80050ffa:	00665793          	srli	a5,a2,0x6
    80050ffe:	078a                	slli	a5,a5,0x2
