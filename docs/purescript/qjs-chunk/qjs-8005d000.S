    8005c000:	0ad7e963          	bltu	a5,a3,8005c0b2 <mp_recip+0xdc>
quickjs-nuttx/libbf.c:1376
        tabu = bf_malloc(s, sizeof(limb_t) * (2 * n + 1));
    8005c004:	00469a13          	slli	s4,a3,0x4
    8005c008:	008a0593          	addi	a1,s4,8
    8005c00c:	a8dfa0ef          	jal	ra,80056a98 <bf_malloc>
    8005c010:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:1377
        tabt = bf_malloc(s, sizeof(limb_t) * (n + 2));
    8005c012:	003c9593          	slli	a1,s9,0x3
    8005c016:	854e                	mv	a0,s3
    8005c018:	a81fa0ef          	jal	ra,80056a98 <bf_malloc>
    8005c01c:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:1378
        if (!tabt || !tabu)
    8005c01e:	1c050263          	beqz	a0,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1378 (discriminator 1)
    8005c022:	1c048063          	beqz	s1,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1381
            tabu[i] = 0;
    8005c026:	8652                	mv	a2,s4
    8005c028:	4581                	li	a1,0
    8005c02a:	8526                	mv	a0,s1
    8005c02c:	417070ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:1382
        tabu[2 * n] = 1;
    8005c030:	4785                	li	a5,1
    8005c032:	9a26                	add	s4,s4,s1
quickjs-nuttx/libbf.c:1380
        for(i = 0; i < 2 * n; i++)
    8005c034:	00191693          	slli	a3,s2,0x1
quickjs-nuttx/libbf.c:1382
        tabu[2 * n] = 1;
    8005c038:	00fa3023          	sd	a5,0(s4)
quickjs-nuttx/libbf.c:1383
        if (mp_divnorm(s, tabt, tabu, 2 * n + 1, taba, n))
    8005c03c:	8762                	mv	a4,s8
    8005c03e:	87ca                	mv	a5,s2
    8005c040:	0685                	addi	a3,a3,1
    8005c042:	8626                	mv	a2,s1
    8005c044:	85a2                	mv	a1,s0
    8005c046:	854e                	mv	a0,s3
    8005c048:	bdfff0ef          	jal	ra,8005bc26 <mp_divnorm>
    8005c04c:	18051b63          	bnez	a0,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1385
        for(i = 0; i < n + 1; i++)
    8005c050:	4781                	li	a5,0
    8005c052:	00190613          	addi	a2,s2,1
quickjs-nuttx/libbf.c:1385 (discriminator 1)
    8005c056:	04c7e563          	bltu	a5,a2,8005c0a0 <mp_recip+0xca>
quickjs-nuttx/libbf.c:1387
        if (mp_scan_nz(tabu, n) == 0) {
    8005c05a:	85ca                	mv	a1,s2
    8005c05c:	8526                	mv	a0,s1
    8005c05e:	e432                	sd	a2,8(sp)
    8005c060:	b07fa0ef          	jal	ra,80056b66 <mp_scan_nz>
    8005c064:	6622                	ld	a2,8(sp)
    8005c066:	e509                	bnez	a0,8005c070 <mp_recip+0x9a>
quickjs-nuttx/libbf.c:1389
            mp_sub_ui(tabr, 1, n + 1);
    8005c068:	4585                	li	a1,1
    8005c06a:	855e                	mv	a0,s7
    8005c06c:	9f7fc0ef          	jal	ra,80058a62 <mp_sub_ui>
quickjs-nuttx/libbf.c:1422
    bf_free(s, tabt);
    8005c070:	85a2                	mv	a1,s0
    8005c072:	854e                	mv	a0,s3
    8005c074:	a2dfa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1423
    bf_free(s, tabu);
    8005c078:	854e                	mv	a0,s3
    8005c07a:	85a6                	mv	a1,s1
    8005c07c:	a25fa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1424
    return 0;
    8005c080:	4501                	li	a0,0
quickjs-nuttx/libbf.c:1429
}
    8005c082:	60ea                	ld	ra,152(sp)
    8005c084:	644a                	ld	s0,144(sp)
    8005c086:	64aa                	ld	s1,136(sp)
    8005c088:	690a                	ld	s2,128(sp)
    8005c08a:	79e6                	ld	s3,120(sp)
    8005c08c:	7a46                	ld	s4,112(sp)
    8005c08e:	7aa6                	ld	s5,104(sp)
    8005c090:	7b06                	ld	s6,96(sp)
    8005c092:	6be6                	ld	s7,88(sp)
    8005c094:	6c46                	ld	s8,80(sp)
    8005c096:	6ca6                	ld	s9,72(sp)
    8005c098:	6d06                	ld	s10,64(sp)
    8005c09a:	7de2                	ld	s11,56(sp)
    8005c09c:	610d                	addi	sp,sp,160
    8005c09e:	8082                	ret
quickjs-nuttx/libbf.c:1386 (discriminator 3)
            tabr[i] = tabt[i];
    8005c0a0:	00379713          	slli	a4,a5,0x3
    8005c0a4:	00e406b3          	add	a3,s0,a4
    8005c0a8:	6294                	ld	a3,0(a3)
    8005c0aa:	975e                	add	a4,a4,s7
quickjs-nuttx/libbf.c:1385 (discriminator 3)
        for(i = 0; i < n + 1; i++)
    8005c0ac:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:1386 (discriminator 3)
            tabr[i] = tabt[i];
    8005c0ae:	e314                	sd	a3,0(a4)
quickjs-nuttx/libbf.c:1385 (discriminator 3)
        for(i = 0; i < n + 1; i++)
    8005c0b0:	b75d                	j	8005c056 <mp_recip+0x80>
quickjs-nuttx/libbf.c:1392
        l = (n - 1) / 2;
    8005c0b2:	fff68a13          	addi	s4,a3,-1
    8005c0b6:	001a5a13          	srli	s4,s4,0x1
quickjs-nuttx/libbf.c:1393
        h = n - l;
    8005c0ba:	41468b33          	sub	s6,a3,s4
quickjs-nuttx/libbf.c:1397
        tabt = bf_malloc(s, sizeof(limb_t) * (n + h + 1));
    8005c0be:	00db07b3          	add	a5,s6,a3
    8005c0c2:	00178d93          	addi	s11,a5,1
    8005c0c6:	003d9a93          	slli	s5,s11,0x3
    8005c0ca:	85d6                	mv	a1,s5
    8005c0cc:	e43e                	sd	a5,8(sp)
    8005c0ce:	9cbfa0ef          	jal	ra,80056a98 <bf_malloc>
quickjs-nuttx/libbf.c:1398
        tabu = bf_malloc(s, sizeof(limb_t) * (n + 2 * h - l + 2));
    8005c0d2:	001b1793          	slli	a5,s6,0x1
    8005c0d6:	414c85b3          	sub	a1,s9,s4
    8005c0da:	95be                	add	a1,a1,a5
quickjs-nuttx/libbf.c:1397
        tabt = bf_malloc(s, sizeof(limb_t) * (n + h + 1));
    8005c0dc:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:1398
        tabu = bf_malloc(s, sizeof(limb_t) * (n + 2 * h - l + 2));
    8005c0de:	058e                	slli	a1,a1,0x3
    8005c0e0:	854e                	mv	a0,s3
    8005c0e2:	e83e                	sd	a5,16(sp)
    8005c0e4:	9b5fa0ef          	jal	ra,80056a98 <bf_malloc>
    8005c0e8:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:1399
        if (!tabt || !tabu)
    8005c0ea:	0e040c63          	beqz	s0,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1399 (discriminator 1)
    8005c0ee:	0e050a63          	beqz	a0,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1401
        tabxh = tabr + l;
    8005c0f2:	003a1d13          	slli	s10,s4,0x3
    8005c0f6:	01ab8cb3          	add	s9,s7,s10
quickjs-nuttx/libbf.c:1402
        if (mp_recip(s, tabxh, taba + l, h))
    8005c0fa:	86da                	mv	a3,s6
    8005c0fc:	01ac0633          	add	a2,s8,s10
    8005c100:	85e6                	mv	a1,s9
    8005c102:	854e                	mv	a0,s3
    8005c104:	ed3ff0ef          	jal	ra,8005bfd6 <mp_recip>
    8005c108:	ed69                	bnez	a0,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1404
        if (mp_mul(s, tabt, taba, n, tabxh, h + 1)) /* n + h + 1 limbs */
    8005c10a:	001b0793          	addi	a5,s6,1
    8005c10e:	8766                	mv	a4,s9
    8005c110:	86ca                	mv	a3,s2
    8005c112:	8662                	mv	a2,s8
    8005c114:	85a2                	mv	a1,s0
    8005c116:	854e                	mv	a0,s3
    8005c118:	ec3e                	sd	a5,24(sp)
    8005c11a:	acbff0ef          	jal	ra,8005bbe4 <mp_mul>
    8005c11e:	88aa                	mv	a7,a0
    8005c120:	e169                	bnez	a0,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1406
        while (tabt[n + h] != 0) {
    8005c122:	1ae1                	addi	s5,s5,-8
    8005c124:	01540833          	add	a6,s0,s5
quickjs-nuttx/libbf.c:1409
            mp_sub_ui(tabt + n, c, h + 1);
    8005c128:	00391a93          	slli	s5,s2,0x3
    8005c12c:	9aa2                	add	s5,s5,s0
quickjs-nuttx/libbf.c:1406
        while (tabt[n + h] != 0) {
    8005c12e:	00083703          	ld	a4,0(a6)
quickjs-nuttx/libbf.c:1409
            mp_sub_ui(tabt + n, c, h + 1);
    8005c132:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:1406
        while (tabt[n + h] != 0) {
    8005c134:	ef29                	bnez	a4,8005c18e <mp_recip+0x1b8>
mp_neg():
quickjs-nuttx/libbf.c:1100
    for(i=0;i<n;i++) {
    8005c136:	09b8c463          	blt	a7,s11,8005c1be <mp_recip+0x1e8>
mp_recip():
quickjs-nuttx/libbf.c:1413
        tabt[n + h]++;
    8005c13a:	00083703          	ld	a4,0(a6)
quickjs-nuttx/libbf.c:1414
        if (mp_mul(s, tabu, tabt + l, n + h + 1 - l, tabxh, h + 1))
    8005c13e:	01a40633          	add	a2,s0,s10
    8005c142:	85a6                	mv	a1,s1
quickjs-nuttx/libbf.c:1413
        tabt[n + h]++;
    8005c144:	0705                	addi	a4,a4,1
    8005c146:	00e83023          	sd	a4,0(a6)
quickjs-nuttx/libbf.c:1414
        if (mp_mul(s, tabu, tabt + l, n + h + 1 - l, tabxh, h + 1))
    8005c14a:	6722                	ld	a4,8(sp)
    8005c14c:	854e                	mv	a0,s3
    8005c14e:	414706b3          	sub	a3,a4,s4
    8005c152:	0685                	addi	a3,a3,1
    8005c154:	8766                	mv	a4,s9
    8005c156:	a8fff0ef          	jal	ra,8005bbe4 <mp_mul>
    8005c15a:	e541                	bnez	a0,8005c1e2 <mp_recip+0x20c>
quickjs-nuttx/libbf.c:1417
        k = 2 * h - l;
    8005c15c:	67c2                	ld	a5,16(sp)
quickjs-nuttx/libbf.c:1418
        for(i = 0; i < l; i++)
    8005c15e:	4701                	li	a4,0
quickjs-nuttx/libbf.c:1417
        k = 2 * h - l;
    8005c160:	414787b3          	sub	a5,a5,s4
    8005c164:	078e                	slli	a5,a5,0x3
    8005c166:	97a6                	add	a5,a5,s1
quickjs-nuttx/libbf.c:1419 (discriminator 3)
            tabr[i] = tabu[i + k];
    8005c168:	6390                	ld	a2,0(a5)
    8005c16a:	00371693          	slli	a3,a4,0x3
    8005c16e:	96de                	add	a3,a3,s7
    8005c170:	e290                	sd	a2,0(a3)
quickjs-nuttx/libbf.c:1418 (discriminator 3)
        for(i = 0; i < l; i++)
    8005c172:	0705                	addi	a4,a4,1
    8005c174:	07a1                	addi	a5,a5,8
    8005c176:	ff4749e3          	blt	a4,s4,8005c168 <mp_recip+0x192>
quickjs-nuttx/libbf.c:1420
        mp_add(tabr + l, tabr + l, tabu + 2 * h, h, 0);
    8005c17a:	004b1613          	slli	a2,s6,0x4
    8005c17e:	4701                	li	a4,0
    8005c180:	86da                	mv	a3,s6
    8005c182:	9626                	add	a2,a2,s1
    8005c184:	85e6                	mv	a1,s9
    8005c186:	8566                	mv	a0,s9
    8005c188:	83dfc0ef          	jal	ra,800589c4 <mp_add>
    8005c18c:	b5d5                	j	8005c070 <mp_recip+0x9a>
quickjs-nuttx/libbf.c:1407
            mp_sub_ui(tabxh, 1, h + 1);
    8005c18e:	863e                	mv	a2,a5
    8005c190:	4585                	li	a1,1
    8005c192:	8566                	mv	a0,s9
    8005c194:	f442                	sd	a6,40(sp)
    8005c196:	f046                	sd	a7,32(sp)
    8005c198:	ec3e                	sd	a5,24(sp)
    8005c19a:	8c9fc0ef          	jal	ra,80058a62 <mp_sub_ui>
quickjs-nuttx/libbf.c:1408
            c = mp_sub(tabt, tabt, taba, n, 0);
    8005c19e:	4701                	li	a4,0
    8005c1a0:	86ca                	mv	a3,s2
    8005c1a2:	8662                	mv	a2,s8
    8005c1a4:	85a2                	mv	a1,s0
    8005c1a6:	8522                	mv	a0,s0
    8005c1a8:	87bfc0ef          	jal	ra,80058a22 <mp_sub>
quickjs-nuttx/libbf.c:1409
            mp_sub_ui(tabt + n, c, h + 1);
    8005c1ac:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:1408
            c = mp_sub(tabt, tabt, taba, n, 0);
    8005c1ae:	85aa                	mv	a1,a0
quickjs-nuttx/libbf.c:1409
            mp_sub_ui(tabt + n, c, h + 1);
    8005c1b0:	8556                	mv	a0,s5
    8005c1b2:	863e                	mv	a2,a5
    8005c1b4:	8affc0ef          	jal	ra,80058a62 <mp_sub_ui>
    8005c1b8:	7822                	ld	a6,40(sp)
    8005c1ba:	7882                	ld	a7,32(sp)
    8005c1bc:	bf8d                	j	8005c12e <mp_recip+0x158>
mp_neg():
quickjs-nuttx/libbf.c:1102
        a = v - op2[i];
    8005c1be:	00389613          	slli	a2,a7,0x3
    8005c1c2:	9622                	add	a2,a2,s0
    8005c1c4:	6214                	ld	a3,0(a2)
quickjs-nuttx/libbf.c:1100
    for(i=0;i<n;i++) {
    8005c1c6:	2885                	addiw	a7,a7,1
quickjs-nuttx/libbf.c:1102
        a = v - op2[i];
    8005c1c8:	40d006b3          	neg	a3,a3
quickjs-nuttx/libbf.c:1104
        v = a - k;
    8005c1cc:	40e685b3          	sub	a1,a3,a4
quickjs-nuttx/libbf.c:1103
        k1 = a > v;
    8005c1d0:	00d03733          	snez	a4,a3
quickjs-nuttx/libbf.c:1105
        k = (v > a) | k1;
    8005c1d4:	00b6b6b3          	sltu	a3,a3,a1
    8005c1d8:	8f55                	or	a4,a4,a3
    8005c1da:	0ff77713          	zext.b	a4,a4
quickjs-nuttx/libbf.c:1106
        res[i] = v;
    8005c1de:	e20c                	sd	a1,0(a2)
quickjs-nuttx/libbf.c:1100
    for(i=0;i<n;i++) {
    8005c1e0:	bf99                	j	8005c136 <mp_recip+0x160>
mp_recip():
quickjs-nuttx/libbf.c:1426
    bf_free(s, tabt);
    8005c1e2:	85a2                	mv	a1,s0
    8005c1e4:	854e                	mv	a0,s3
    8005c1e6:	8bbfa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1427
    bf_free(s, tabu);
    8005c1ea:	854e                	mv	a0,s3
    8005c1ec:	85a6                	mv	a1,s1
    8005c1ee:	8b3fa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1428
    return -1;
    8005c1f2:	557d                	li	a0,-1
    8005c1f4:	b579                	j	8005c082 <mp_recip+0xac>

000000008005c1f6 <__bf_div>:
__bf_div():
quickjs-nuttx/libbf.c:1673
{
    8005c1f6:	7159                	addi	sp,sp,-112
    8005c1f8:	f0a2                	sd	s0,96(sp)
    8005c1fa:	e4ce                	sd	s3,72(sp)
    8005c1fc:	f45e                	sd	s7,40(sp)
    8005c1fe:	f486                	sd	ra,104(sp)
    8005c200:	eca6                	sd	s1,88(sp)
    8005c202:	e8ca                	sd	s2,80(sp)
    8005c204:	e0d2                	sd	s4,64(sp)
    8005c206:	fc56                	sd	s5,56(sp)
    8005c208:	f85a                	sd	s6,48(sp)
    8005c20a:	f062                	sd	s8,32(sp)
    8005c20c:	ec66                	sd	s9,24(sp)
    8005c20e:	e86a                	sd	s10,16(sp)
    8005c210:	e46e                	sd	s11,8(sp)
quickjs-nuttx/libbf.c:1678
    r_sign = a->sign ^ b->sign;
    8005c212:	461c                	lw	a5,8(a2)
    8005c214:	4584                	lw	s1,8(a1)
quickjs-nuttx/libbf.c:1673
{
    8005c216:	8bba                	mv	s7,a4
quickjs-nuttx/libbf.c:1679
    if (a->expn >= BF_EXP_INF || b->expn >= BF_EXP_INF) {
    8005c218:	576d                	li	a4,-5
quickjs-nuttx/libbf.c:1678
    r_sign = a->sign ^ b->sign;
    8005c21a:	8cbd                	xor	s1,s1,a5
quickjs-nuttx/libbf.c:1679
    if (a->expn >= BF_EXP_INF || b->expn >= BF_EXP_INF) {
    8005c21c:	699c                	ld	a5,16(a1)
    8005c21e:	8305                	srli	a4,a4,0x1
quickjs-nuttx/libbf.c:1673
{
    8005c220:	842a                	mv	s0,a0
    8005c222:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:1678
    r_sign = a->sign ^ b->sign;
    8005c224:	2481                	sext.w	s1,s1
quickjs-nuttx/libbf.c:1679
    if (a->expn >= BF_EXP_INF || b->expn >= BF_EXP_INF) {
    8005c226:	00f74e63          	blt	a4,a5,8005c242 <__bf_div+0x4c>
    8005c22a:	8b36                	mv	s6,a3
quickjs-nuttx/libbf.c:1679 (discriminator 1)
    8005c22c:	6a14                	ld	a3,16(a2)
    8005c22e:	00d74e63          	blt	a4,a3,8005c24a <__bf_div+0x54>
quickjs-nuttx/libbf.c:1693
    } else if (a->expn == BF_EXP_ZERO) {
    8005c232:	577d                	li	a4,-1
    8005c234:	177e                	slli	a4,a4,0x3f
    8005c236:	06e79863          	bne	a5,a4,8005c2a6 <__bf_div+0xb0>
quickjs-nuttx/libbf.c:1694
        if (b->expn == BF_EXP_ZERO) {
    8005c23a:	02f68963          	beq	a3,a5,8005c26c <__bf_div+0x76>
quickjs-nuttx/libbf.c:1698
            bf_set_zero(r, r_sign);
    8005c23e:	85a6                	mv	a1,s1
    8005c240:	a085                	j	8005c2a0 <__bf_div+0xaa>
quickjs-nuttx/libbf.c:1680
        if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005c242:	577d                	li	a4,-1
    8005c244:	8305                	srli	a4,a4,0x1
    8005c246:	00e78863          	beq	a5,a4,8005c256 <__bf_div+0x60>
quickjs-nuttx/libbf.c:1680 (discriminator 1)
    8005c24a:	0109b683          	ld	a3,16(s3)
    8005c24e:	577d                	li	a4,-1
    8005c250:	8305                	srli	a4,a4,0x1
    8005c252:	00e69763          	bne	a3,a4,8005c260 <__bf_div+0x6a>
quickjs-nuttx/libbf.c:1681
            bf_set_nan(r);
    8005c256:	8522                	mv	a0,s0
    8005c258:	967fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1699
            return 0;
    8005c25c:	4501                	li	a0,0
    8005c25e:	a819                	j	8005c274 <__bf_div+0x7e>
quickjs-nuttx/libbf.c:1683
        } else if (a->expn == BF_EXP_INF && b->expn == BF_EXP_INF) {
    8005c260:	5775                	li	a4,-3
    8005c262:	8305                	srli	a4,a4,0x1
    8005c264:	02e79c63          	bne	a5,a4,8005c29c <__bf_div+0xa6>
quickjs-nuttx/libbf.c:1683 (discriminator 1)
    8005c268:	02f69563          	bne	a3,a5,8005c292 <__bf_div+0x9c>
quickjs-nuttx/libbf.c:1684
            bf_set_nan(r);
    8005c26c:	8522                	mv	a0,s0
    8005c26e:	951fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1685
            return BF_ST_INVALID_OP;
    8005c272:	4505                	li	a0,1
quickjs-nuttx/libbf.c:1741
}
    8005c274:	70a6                	ld	ra,104(sp)
    8005c276:	7406                	ld	s0,96(sp)
    8005c278:	64e6                	ld	s1,88(sp)
    8005c27a:	6946                	ld	s2,80(sp)
    8005c27c:	69a6                	ld	s3,72(sp)
    8005c27e:	6a06                	ld	s4,64(sp)
    8005c280:	7ae2                	ld	s5,56(sp)
    8005c282:	7b42                	ld	s6,48(sp)
    8005c284:	7ba2                	ld	s7,40(sp)
    8005c286:	7c02                	ld	s8,32(sp)
    8005c288:	6ce2                	ld	s9,24(sp)
    8005c28a:	6d42                	ld	s10,16(sp)
    8005c28c:	6da2                	ld	s11,8(sp)
    8005c28e:	6165                	addi	sp,sp,112
    8005c290:	8082                	ret
quickjs-nuttx/libbf.c:1687
            bf_set_inf(r, r_sign);
    8005c292:	85a6                	mv	a1,s1
    8005c294:	8522                	mv	a0,s0
    8005c296:	9effb0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:1688
            return 0;
    8005c29a:	b7c9                	j	8005c25c <__bf_div+0x66>
quickjs-nuttx/libbf.c:1690
            bf_set_zero(r, r_sign);
    8005c29c:	85a6                	mv	a1,s1
    8005c29e:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:1698
            bf_set_zero(r, r_sign);
    8005c2a0:	9c1fb0ef          	jal	ra,80057c60 <bf_set_zero>
    8005c2a4:	bf65                	j	8005c25c <__bf_div+0x66>
quickjs-nuttx/libbf.c:1701
    } else if (b->expn == BF_EXP_ZERO) {
    8005c2a6:	00e69763          	bne	a3,a4,8005c2b4 <__bf_div+0xbe>
quickjs-nuttx/libbf.c:1702
        bf_set_inf(r, r_sign);
    8005c2aa:	85a6                	mv	a1,s1
    8005c2ac:	9d9fb0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:1703
        return BF_ST_DIVIDE_ZERO;
    8005c2b0:	4509                	li	a0,2
    8005c2b2:	b7c9                	j	8005c274 <__bf_div+0x7e>
quickjs-nuttx/libbf.c:1709
    n = bf_max(a->len, precl);
    8005c2b4:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/libbf.c:1707
    precl = (prec + 2 + LIMB_BITS - 1) / LIMB_BITS;
    8005c2b6:	041b0a93          	addi	s5,s6,65
quickjs-nuttx/libbf.c:1709
    n = bf_max(a->len, precl);
    8005c2ba:	006ada93          	srli	s5,s5,0x6
quickjs-nuttx/libbf.c:1674
    bf_context_t *s = r->ctx;
    8005c2be:	00053c83          	ld	s9,0(a0)
quickjs-nuttx/libbf.c:1708
    nb = b->len;
    8005c2c2:	01863c03          	ld	s8,24(a2)
quickjs-nuttx/libbf.h:180
    if (a > b)
    8005c2c6:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:1709
    n = bf_max(a->len, precl);
    8005c2c8:	00fad363          	bge	s5,a5,8005c2ce <__bf_div+0xd8>
    8005c2cc:	8abe                	mv	s5,a5
quickjs-nuttx/libbf.c:1715
        na = n + nb;
    8005c2ce:	015c0db3          	add	s11,s8,s5
quickjs-nuttx/libbf.c:1716
        taba = bf_malloc(s, (na + 1) * sizeof(limb_t));
    8005c2d2:	001d8593          	addi	a1,s11,1
    8005c2d6:	058e                	slli	a1,a1,0x3
    8005c2d8:	8566                	mv	a0,s9
    8005c2da:	fbefa0ef          	jal	ra,80056a98 <bf_malloc>
    8005c2de:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:1717
        if (!taba)
    8005c2e0:	cd0d                	beqz	a0,8005c31a <__bf_div+0x124>
quickjs-nuttx/libbf.c:1719
        d = na - a->len;
    8005c2e2:	01893d03          	ld	s10,24(s2)
quickjs-nuttx/libbf.c:1720
        memset(taba, 0, d * sizeof(limb_t));
    8005c2e6:	4581                	li	a1,0
quickjs-nuttx/libbf.c:1719
        d = na - a->len;
    8005c2e8:	41ad8d33          	sub	s10,s11,s10
quickjs-nuttx/libbf.c:1720
        memset(taba, 0, d * sizeof(limb_t));
    8005c2ec:	0d0e                	slli	s10,s10,0x3
    8005c2ee:	866a                	mv	a2,s10
    8005c2f0:	153070ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:1721
        memcpy(taba + d, a->tab, a->len * sizeof(limb_t));
    8005c2f4:	01893603          	ld	a2,24(s2)
    8005c2f8:	02093583          	ld	a1,32(s2)
    8005c2fc:	01aa0533          	add	a0,s4,s10
    8005c300:	060e                	slli	a2,a2,0x3
    8005c302:	2ab070ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libbf.c:1722
        if (bf_resize(r, n + 1))
    8005c306:	001a8593          	addi	a1,s5,1
    8005c30a:	8522                	mv	a0,s0
    8005c30c:	879fb0ef          	jal	ra,80057b84 <bf_resize>
    8005c310:	c919                	beqz	a0,8005c326 <__bf_div+0x130>
quickjs-nuttx/libbf.c:1726
            bf_free(s, taba);
    8005c312:	85d2                	mv	a1,s4
    8005c314:	8566                	mv	a0,s9
    8005c316:	f8afa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1739
    bf_set_nan(r);
    8005c31a:	8522                	mv	a0,s0
    8005c31c:	8a3fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1740
    return BF_ST_MEM_ERROR;
    8005c320:	02000513          	li	a0,32
    8005c324:	bf81                	j	8005c274 <__bf_div+0x7e>
quickjs-nuttx/libbf.c:1724
        if (mp_divnorm(s, r->tab, taba, na, b->tab, nb)) {
    8005c326:	0209b703          	ld	a4,32(s3)
    8005c32a:	700c                	ld	a1,32(s0)
    8005c32c:	87e2                	mv	a5,s8
    8005c32e:	86ee                	mv	a3,s11
    8005c330:	8652                	mv	a2,s4
    8005c332:	8566                	mv	a0,s9
    8005c334:	8f3ff0ef          	jal	ra,8005bc26 <mp_divnorm>
    8005c338:	fd69                	bnez	a0,8005c312 <__bf_div+0x11c>
quickjs-nuttx/libbf.c:1730
        if (mp_scan_nz(taba, nb))
    8005c33a:	85e2                	mv	a1,s8
    8005c33c:	8552                	mv	a0,s4
    8005c33e:	829fa0ef          	jal	ra,80056b66 <mp_scan_nz>
    8005c342:	c511                	beqz	a0,8005c34e <__bf_div+0x158>
quickjs-nuttx/libbf.c:1731
            r->tab[0] |= 1;
    8005c344:	7018                	ld	a4,32(s0)
    8005c346:	631c                	ld	a5,0(a4)
    8005c348:	0017e793          	ori	a5,a5,1
    8005c34c:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:1732
        bf_free(r->ctx, taba);
    8005c34e:	6008                	ld	a0,0(s0)
    8005c350:	85d2                	mv	a1,s4
    8005c352:	f4efa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1733
        r->expn = a->expn - b->expn + LIMB_BITS;
    8005c356:	01093783          	ld	a5,16(s2)
    8005c35a:	0109b703          	ld	a4,16(s3)
quickjs-nuttx/libbf.c:1735
        ret = bf_normalize_and_round(r, prec, flags);
    8005c35e:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:1734
        r->sign = r_sign;
    8005c360:	c404                	sw	s1,8(s0)
quickjs-nuttx/libbf.c:1733
        r->expn = a->expn - b->expn + LIMB_BITS;
    8005c362:	8f99                	sub	a5,a5,a4
    8005c364:	04078793          	addi	a5,a5,64
    8005c368:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:1741
}
    8005c36a:	7406                	ld	s0,96(sp)
    8005c36c:	70a6                	ld	ra,104(sp)
    8005c36e:	64e6                	ld	s1,88(sp)
    8005c370:	6946                	ld	s2,80(sp)
    8005c372:	69a6                	ld	s3,72(sp)
    8005c374:	6a06                	ld	s4,64(sp)
    8005c376:	7ae2                	ld	s5,56(sp)
    8005c378:	7c02                	ld	s8,32(sp)
    8005c37a:	6ce2                	ld	s9,24(sp)
    8005c37c:	6d42                	ld	s10,16(sp)
    8005c37e:	6da2                	ld	s11,8(sp)
quickjs-nuttx/libbf.c:1735
        ret = bf_normalize_and_round(r, prec, flags);
    8005c380:	865e                	mv	a2,s7
    8005c382:	85da                	mv	a1,s6
quickjs-nuttx/libbf.c:1741
}
    8005c384:	7ba2                	ld	s7,40(sp)
    8005c386:	7b42                	ld	s6,48(sp)
    8005c388:	6165                	addi	sp,sp,112
quickjs-nuttx/libbf.c:1735
        ret = bf_normalize_and_round(r, prec, flags);
    8005c38a:	d6bfb06f          	j	800580f4 <bf_normalize_and_round>

000000008005c38e <mp_sqrtrem_rec>:
mp_sqrtrem_rec():
quickjs-nuttx/libbf.c:1997
{
    8005c38e:	7175                	addi	sp,sp,-144
    8005c390:	f4ce                	sd	s3,104(sp)
    8005c392:	f0d2                	sd	s4,96(sp)
    8005c394:	e8da                	sd	s6,80(sp)
    8005c396:	e506                	sd	ra,136(sp)
    8005c398:	8b3e                	mv	s6,a5
    8005c39a:	e122                	sd	s0,128(sp)
    8005c39c:	fca6                	sd	s1,120(sp)
    8005c39e:	f8ca                	sd	s2,112(sp)
    8005c3a0:	ecd6                	sd	s5,88(sp)
    8005c3a2:	e4de                	sd	s7,72(sp)
    8005c3a4:	e0e2                	sd	s8,64(sp)
    8005c3a6:	fc66                	sd	s9,56(sp)
    8005c3a8:	f86a                	sd	s10,48(sp)
    8005c3aa:	f46e                	sd	s11,40(sp)
quickjs-nuttx/libbf.c:2000
    if (n == 1) {
    8005c3ac:	4785                	li	a5,1
quickjs-nuttx/libbf.c:1997
{
    8005c3ae:	8a2e                	mv	s4,a1
    8005c3b0:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:2000
    if (n == 1) {
    8005c3b2:	02f69963          	bne	a3,a5,8005c3e4 <mp_sqrtrem_rec+0x56>
quickjs-nuttx/libbf.c:2001
        *prh = mp_sqrtrem2(tabs, taba);
    8005c3b6:	85b2                	mv	a1,a2
    8005c3b8:	8552                	mv	a0,s4
    8005c3ba:	b91fa0ef          	jal	ra,80056f4a <mp_sqrtrem2>
    8005c3be:	00ab3023          	sd	a0,0(s6)
quickjs-nuttx/libbf.c:2002
        return 0;
    8005c3c2:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:2061
}
    8005c3c4:	60aa                	ld	ra,136(sp)
    8005c3c6:	640a                	ld	s0,128(sp)
    8005c3c8:	74e6                	ld	s1,120(sp)
    8005c3ca:	7946                	ld	s2,112(sp)
    8005c3cc:	79a6                	ld	s3,104(sp)
    8005c3ce:	7a06                	ld	s4,96(sp)
    8005c3d0:	6b46                	ld	s6,80(sp)
    8005c3d2:	6ba6                	ld	s7,72(sp)
    8005c3d4:	6c06                	ld	s8,64(sp)
    8005c3d6:	7ce2                	ld	s9,56(sp)
    8005c3d8:	7d42                	ld	s10,48(sp)
    8005c3da:	7da2                	ld	s11,40(sp)
    8005c3dc:	8556                	mv	a0,s5
    8005c3de:	6ae6                	ld	s5,88(sp)
    8005c3e0:	6149                	addi	sp,sp,144
    8005c3e2:	8082                	ret
quickjs-nuttx/libbf.c:2007
    l = n / 2;
    8005c3e4:	0016dd13          	srli	s10,a3,0x1
quickjs-nuttx/libbf.c:2009
    if (mp_sqrtrem_rec(s, tabs + l, taba + 2 * l, h, tmp_buf, &qh))
    8005c3e8:	003d1d93          	slli	s11,s10,0x3
    8005c3ec:	004d1413          	slli	s0,s10,0x4
quickjs-nuttx/libbf.c:2008
    h = n - l;
    8005c3f0:	41a68c33          	sub	s8,a3,s10
quickjs-nuttx/libbf.c:2009
    if (mp_sqrtrem_rec(s, tabs + l, taba + 2 * l, h, tmp_buf, &qh))
    8005c3f4:	01b58bb3          	add	s7,a1,s11
    8005c3f8:	9432                	add	s0,s0,a2
    8005c3fa:	8936                	mv	s2,a3
    8005c3fc:	083c                	addi	a5,sp,24
    8005c3fe:	86e2                	mv	a3,s8
    8005c400:	8622                	mv	a2,s0
    8005c402:	85de                	mv	a1,s7
    8005c404:	8caa                	mv	s9,a0
    8005c406:	84ba                	mv	s1,a4
    8005c408:	f87ff0ef          	jal	ra,8005c38e <mp_sqrtrem_rec>
    8005c40c:	c119                	beqz	a0,8005c412 <mp_sqrtrem_rec+0x84>
quickjs-nuttx/libbf.c:2010
        return -1;
    8005c40e:	5afd                	li	s5,-1
    8005c410:	bf55                	j	8005c3c4 <mp_sqrtrem_rec+0x36>
quickjs-nuttx/libbf.c:2018
    if (qh) {
    8005c412:	67e2                	ld	a5,24(sp)
    8005c414:	cb81                	beqz	a5,8005c424 <mp_sqrtrem_rec+0x96>
quickjs-nuttx/libbf.c:2019
        mp_sub(taba + 2 * l, taba + 2 * l, tabs + l, h, 0);
    8005c416:	4701                	li	a4,0
    8005c418:	86e2                	mv	a3,s8
    8005c41a:	865e                	mv	a2,s7
    8005c41c:	85a2                	mv	a1,s0
    8005c41e:	8522                	mv	a0,s0
    8005c420:	e02fc0ef          	jal	ra,80058a22 <mp_sub>
quickjs-nuttx/libbf.c:2023
    if (mp_divnorm(s, tmp_buf, taba + l, n, tabs + l, h))
    8005c424:	01b98833          	add	a6,s3,s11
    8005c428:	87e2                	mv	a5,s8
    8005c42a:	875e                	mv	a4,s7
    8005c42c:	86ca                	mv	a3,s2
    8005c42e:	8642                	mv	a2,a6
    8005c430:	85a6                	mv	a1,s1
    8005c432:	8566                	mv	a0,s9
    8005c434:	e442                	sd	a6,8(sp)
    8005c436:	ff0ff0ef          	jal	ra,8005bc26 <mp_divnorm>
    8005c43a:	8aaa                	mv	s5,a0
    8005c43c:	f969                	bnez	a0,8005c40e <mp_sqrtrem_rec+0x80>
quickjs-nuttx/libbf.c:2025
    qh += tmp_buf[l];
    8005c43e:	01b487b3          	add	a5,s1,s11
    8005c442:	6762                	ld	a4,24(sp)
    8005c444:	639c                	ld	a5,0(a5)
quickjs-nuttx/libbf.c:2026
    for(i = 0; i < l; i++)
    8005c446:	6822                	ld	a6,8(sp)
quickjs-nuttx/libbf.c:2025
    qh += tmp_buf[l];
    8005c448:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:2026
    for(i = 0; i < l; i++)
    8005c44a:	4701                	li	a4,0
quickjs-nuttx/libbf.c:2026 (discriminator 1)
    8005c44c:	08ed9c63          	bne	s11,a4,8005c4e4 <mp_sqrtrem_rec+0x156>
quickjs-nuttx/libbf.c:2028
    ql = mp_shr(tabs, tabs, l, 1, qh & 1);
    8005c450:	0017f493          	andi	s1,a5,1
mp_shr():
quickjs-nuttx/libbf.c:1138
    for(i = n - 1; i >= 0; i--) {
    8005c454:	875e                	mv	a4,s7
    8005c456:	08ea1f63          	bne	s4,a4,8005c4f4 <mp_sqrtrem_rec+0x166>
mp_sqrtrem_rec():
quickjs-nuttx/libbf.c:2029
    qh = qh >> 1; /* 0 or 1 */
    8005c45a:	8385                	srli	a5,a5,0x1
mp_shr():
quickjs-nuttx/libbf.c:1143
    return l & (((limb_t)1 << shift) - 1);
    8005c45c:	8885                	andi	s1,s1,1
mp_sqrtrem_rec():
quickjs-nuttx/libbf.c:2029
    qh = qh >> 1; /* 0 or 1 */
    8005c45e:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:2030
    if (ql)
    8005c460:	c889                	beqz	s1,8005c472 <mp_sqrtrem_rec+0xe4>
quickjs-nuttx/libbf.c:2031
        rh = mp_add(taba + l, taba + l, tabs + l, h, 0);
    8005c462:	4701                	li	a4,0
    8005c464:	86e2                	mv	a3,s8
    8005c466:	865e                	mv	a2,s7
    8005c468:	85c2                	mv	a1,a6
    8005c46a:	8542                	mv	a0,a6
    8005c46c:	d58fc0ef          	jal	ra,800589c4 <mp_add>
    8005c470:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:2039
    mp_add_ui(tabs + l, qh, h);
    8005c472:	65e2                	ld	a1,24(sp)
    8005c474:	8662                	mv	a2,s8
    8005c476:	855e                	mv	a0,s7
    8005c478:	d8afc0ef          	jal	ra,80058a02 <mp_add_ui>
quickjs-nuttx/libbf.c:2046
    if (qh) {
    8005c47c:	65e2                	ld	a1,24(sp)
    8005c47e:	e595                	bnez	a1,8005c4aa <mp_sqrtrem_rec+0x11c>
quickjs-nuttx/libbf.c:2049
        if (mp_mul(s, taba + n, tabs, l, tabs, l))
    8005c480:	00391b93          	slli	s7,s2,0x3
    8005c484:	9bce                	add	s7,s7,s3
    8005c486:	87ea                	mv	a5,s10
    8005c488:	8752                	mv	a4,s4
    8005c48a:	86ea                	mv	a3,s10
    8005c48c:	8652                	mv	a2,s4
    8005c48e:	85de                	mv	a1,s7
    8005c490:	8566                	mv	a0,s9
    8005c492:	f52ff0ef          	jal	ra,8005bbe4 <mp_mul>
    8005c496:	fd25                	bnez	a0,8005c40e <mp_sqrtrem_rec+0x80>
quickjs-nuttx/libbf.c:2051
        c = mp_sub(taba, taba, taba + n, 2 * l, 0);
    8005c498:	85ce                	mv	a1,s3
    8005c49a:	4701                	li	a4,0
    8005c49c:	ffe97693          	andi	a3,s2,-2
    8005c4a0:	865e                	mv	a2,s7
    8005c4a2:	854e                	mv	a0,s3
    8005c4a4:	d7efc0ef          	jal	ra,80058a22 <mp_sub>
    8005c4a8:	85aa                	mv	a1,a0
quickjs-nuttx/libbf.c:2053
    rh -= mp_sub_ui(taba + 2 * l, c, n - 2 * l);
    8005c4aa:	00197613          	andi	a2,s2,1
    8005c4ae:	8522                	mv	a0,s0
    8005c4b0:	db2fc0ef          	jal	ra,80058a62 <mp_sub_ui>
    8005c4b4:	8c89                	sub	s1,s1,a0
quickjs-nuttx/libbf.c:2054
    if ((slimb_t)rh < 0) {
    8005c4b6:	0204d463          	bgez	s1,8005c4de <mp_sqrtrem_rec+0x150>
quickjs-nuttx/libbf.c:2055
        mp_sub_ui(tabs, 1, n);
    8005c4ba:	864a                	mv	a2,s2
    8005c4bc:	4585                	li	a1,1
    8005c4be:	8552                	mv	a0,s4
    8005c4c0:	da2fc0ef          	jal	ra,80058a62 <mp_sub_ui>
mp_add_mul1():
quickjs-nuttx/libbf.c:1169
    for(i = 0; i < n; i++) {
    8005c4c4:	00391513          	slli	a0,s2,0x3
    8005c4c8:	4781                	li	a5,0
quickjs-nuttx/libbf.c:1168
    l = 0;
    8005c4ca:	4401                	li	s0,0
quickjs-nuttx/libbf.c:1169
    for(i = 0; i < n; i++) {
    8005c4cc:	02f51e63          	bne	a0,a5,8005c508 <mp_sqrtrem_rec+0x17a>
mp_sqrtrem_rec():
quickjs-nuttx/libbf.c:2057
        rh += mp_add_ui(taba, 1, n);
    8005c4d0:	864a                	mv	a2,s2
    8005c4d2:	4585                	li	a1,1
    8005c4d4:	854e                	mv	a0,s3
    8005c4d6:	d2cfc0ef          	jal	ra,80058a02 <mp_add_ui>
    8005c4da:	942a                	add	s0,s0,a0
    8005c4dc:	94a2                	add	s1,s1,s0
quickjs-nuttx/libbf.c:2059
    *prh = rh;
    8005c4de:	009b3023          	sd	s1,0(s6)
quickjs-nuttx/libbf.c:2060
    return 0;
    8005c4e2:	b5cd                	j	8005c3c4 <mp_sqrtrem_rec+0x36>
quickjs-nuttx/libbf.c:2027 (discriminator 3)
        tabs[i] = tmp_buf[i];
    8005c4e4:	00e486b3          	add	a3,s1,a4
    8005c4e8:	6290                	ld	a2,0(a3)
    8005c4ea:	00ea06b3          	add	a3,s4,a4
    8005c4ee:	0721                	addi	a4,a4,8
    8005c4f0:	e290                	sd	a2,0(a3)
quickjs-nuttx/libbf.c:2026 (discriminator 3)
    for(i = 0; i < l; i++)
    8005c4f2:	bfa9                	j	8005c44c <mp_sqrtrem_rec+0xbe>
mp_shr():
quickjs-nuttx/libbf.c:1139
        a = tab[i];
    8005c4f4:	ff873603          	ld	a2,-8(a4) # ffffffff7ffffff8 <_ebss+0xfffffffeffefee92>
quickjs-nuttx/libbf.c:1140
        tab_r[i] = (a >> shift) | (l << (LIMB_BITS - shift));
    8005c4f8:	14fe                	slli	s1,s1,0x3f
    8005c4fa:	1761                	addi	a4,a4,-8
    8005c4fc:	00165693          	srli	a3,a2,0x1
    8005c500:	8cd5                	or	s1,s1,a3
    8005c502:	e304                	sd	s1,0(a4)
quickjs-nuttx/libbf.c:1141
        l = a;
    8005c504:	84b2                	mv	s1,a2
    8005c506:	bf81                	j	8005c456 <mp_sqrtrem_rec+0xc8>
mp_add_mul1():
quickjs-nuttx/libbf.c:1170
        t = (dlimb_t)taba[i] * (dlimb_t)b + l + tabr[i];
    8005c508:	00f985b3          	add	a1,s3,a5
    8005c50c:	00fa0733          	add	a4,s4,a5
    8005c510:	6318                	ld	a4,0(a4)
    8005c512:	6194                	ld	a3,0(a1)
    8005c514:	07a1                	addi	a5,a5,8
    8005c516:	03f75613          	srli	a2,a4,0x3f
    8005c51a:	9436                	add	s0,s0,a3
    8005c51c:	0706                	slli	a4,a4,0x1
    8005c51e:	00870833          	add	a6,a4,s0
    8005c522:	00d436b3          	sltu	a3,s0,a3
    8005c526:	00e83733          	sltu	a4,a6,a4
    8005c52a:	96b2                	add	a3,a3,a2
quickjs-nuttx/libbf.c:1171
        tabr[i] = t;
    8005c52c:	0105b023          	sd	a6,0(a1)
quickjs-nuttx/libbf.c:1172
        l = t >> LIMB_BITS;
    8005c530:	00d70433          	add	s0,a4,a3
quickjs-nuttx/libbf.c:1169
    for(i = 0; i < n; i++) {
    8005c534:	bf61                	j	8005c4cc <mp_sqrtrem_rec+0x13e>

000000008005c536 <mp_sqrtrem>:
mp_sqrtrem():
quickjs-nuttx/libbf.c:2070
{
    8005c536:	7119                	addi	sp,sp,-128
quickjs-nuttx/libbf.c:2075
    n2 = n / 2 + 1;
    8005c538:	0016d793          	srli	a5,a3,0x1
quickjs-nuttx/libbf.c:2070
{
    8005c53c:	f0ca                	sd	s2,96(sp)
    8005c53e:	ecce                	sd	s3,88(sp)
    8005c540:	fc86                	sd	ra,120(sp)
    8005c542:	f8a2                	sd	s0,112(sp)
    8005c544:	f4a6                	sd	s1,104(sp)
quickjs-nuttx/libbf.c:2075
    n2 = n / 2 + 1;
    8005c546:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:2076
    if (n2 <= countof(tmp_buf1)) {
    8005c548:	4721                	li	a4,8
quickjs-nuttx/libbf.c:2070
{
    8005c54a:	892a                	mv	s2,a0
    8005c54c:	89ae                	mv	s3,a1
quickjs-nuttx/libbf.c:2076
    if (n2 <= countof(tmp_buf1)) {
    8005c54e:	02f77563          	bgeu	a4,a5,8005c578 <mp_sqrtrem+0x42>
quickjs-nuttx/libbf.c:2079
        tmp_buf = bf_malloc(s, sizeof(limb_t) * n2);
    8005c552:	00379593          	slli	a1,a5,0x3
    8005c556:	e436                	sd	a3,8(sp)
    8005c558:	e032                	sd	a2,0(sp)
    8005c55a:	d3efa0ef          	jal	ra,80056a98 <bf_malloc>
quickjs-nuttx/libbf.c:2080
        if (!tmp_buf)
    8005c55e:	6602                	ld	a2,0(sp)
    8005c560:	66a2                	ld	a3,8(sp)
quickjs-nuttx/libbf.c:2079
        tmp_buf = bf_malloc(s, sizeof(limb_t) * n2);
    8005c562:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2081
            return -1;
    8005c564:	54fd                	li	s1,-1
quickjs-nuttx/libbf.c:2080
        if (!tmp_buf)
    8005c566:	e911                	bnez	a0,8005c57a <mp_sqrtrem+0x44>
quickjs-nuttx/libbf.c:2087
}
    8005c568:	70e6                	ld	ra,120(sp)
    8005c56a:	7446                	ld	s0,112(sp)
    8005c56c:	7906                	ld	s2,96(sp)
    8005c56e:	69e6                	ld	s3,88(sp)
    8005c570:	8526                	mv	a0,s1
    8005c572:	74a6                	ld	s1,104(sp)
    8005c574:	6109                	addi	sp,sp,128
    8005c576:	8082                	ret
quickjs-nuttx/libbf.c:2077
        tmp_buf = tmp_buf1;
    8005c578:	0800                	addi	s0,sp,16
quickjs-nuttx/libbf.c:2083
    ret = mp_sqrtrem_rec(s, tabs, taba, n, tmp_buf, taba + n);
    8005c57a:	00369793          	slli	a5,a3,0x3
    8005c57e:	97b2                	add	a5,a5,a2
    8005c580:	8722                	mv	a4,s0
    8005c582:	85ce                	mv	a1,s3
    8005c584:	854a                	mv	a0,s2
    8005c586:	e09ff0ef          	jal	ra,8005c38e <mp_sqrtrem_rec>
quickjs-nuttx/libbf.c:2084
    if (tmp_buf != tmp_buf1)
    8005c58a:	081c                	addi	a5,sp,16
quickjs-nuttx/libbf.c:2083
    ret = mp_sqrtrem_rec(s, tabs, taba, n, tmp_buf, taba + n);
    8005c58c:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:2084
    if (tmp_buf != tmp_buf1)
    8005c58e:	fcf40de3          	beq	s0,a5,8005c568 <mp_sqrtrem+0x32>
quickjs-nuttx/libbf.c:2085
        bf_free(s, tmp_buf);
    8005c592:	85a2                	mv	a1,s0
    8005c594:	854a                	mv	a0,s2
    8005c596:	d0afa0ef          	jal	ra,80056aa0 <bf_free>
    8005c59a:	b7f9                	j	8005c568 <mp_sqrtrem+0x32>

000000008005c59c <bf_sqrt>:
bf_sqrt():
quickjs-nuttx/libbf.c:2146
{
    8005c59c:	711d                	addi	sp,sp,-96
    8005c59e:	ec86                	sd	ra,88(sp)
    8005c5a0:	e8a2                	sd	s0,80(sp)
    8005c5a2:	e4a6                	sd	s1,72(sp)
    8005c5a4:	e0ca                	sd	s2,64(sp)
    8005c5a6:	fc4e                	sd	s3,56(sp)
    8005c5a8:	f852                	sd	s4,48(sp)
    8005c5aa:	f456                	sd	s5,40(sp)
    8005c5ac:	f05a                	sd	s6,32(sp)
    8005c5ae:	ec5e                	sd	s7,24(sp)
    8005c5b0:	e862                	sd	s8,16(sp)
    8005c5b2:	e466                	sd	s9,8(sp)
quickjs-nuttx/libbf.c:2150
    assert(r != a);
    8005c5b4:	00a59c63          	bne	a1,a0,8005c5cc <bf_sqrt+0x30>
quickjs-nuttx/libbf.c:2150 (discriminator 1)
    8005c5b8:	6585                	lui	a1,0x1
    8005c5ba:	4601                	li	a2,0
    8005c5bc:	86658593          	addi	a1,a1,-1946 # 866 <asinh-0x7ffff79a>
    8005c5c0:	00024517          	auipc	a0,0x24
    8005c5c4:	00050513          	mv	a0,a0
    8005c5c8:	394040ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:2152 (discriminator 2)
    if (a->len == 0) {
    8005c5cc:	6d9c                	ld	a5,24(a1)
    8005c5ce:	892a                	mv	s2,a0
    8005c5d0:	842e                	mv	s0,a1
    8005c5d2:	e3a9                	bnez	a5,8005c614 <bf_sqrt+0x78>
quickjs-nuttx/libbf.c:2153
        if (a->expn == BF_EXP_NAN) {
    8005c5d4:	6998                	ld	a4,16(a1)
    8005c5d6:	57fd                	li	a5,-1
    8005c5d8:	8385                	srli	a5,a5,0x1
    8005c5da:	02f71263          	bne	a4,a5,8005c5fe <bf_sqrt+0x62>
quickjs-nuttx/libbf.c:2154
            bf_set_nan(r);
    8005c5de:	de0fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2160
        ret = 0;
    8005c5e2:	4501                	li	a0,0
quickjs-nuttx/libbf.c:2207
}
    8005c5e4:	60e6                	ld	ra,88(sp)
    8005c5e6:	6446                	ld	s0,80(sp)
    8005c5e8:	64a6                	ld	s1,72(sp)
    8005c5ea:	6906                	ld	s2,64(sp)
    8005c5ec:	79e2                	ld	s3,56(sp)
    8005c5ee:	7a42                	ld	s4,48(sp)
    8005c5f0:	7aa2                	ld	s5,40(sp)
    8005c5f2:	7b02                	ld	s6,32(sp)
    8005c5f4:	6be2                	ld	s7,24(sp)
    8005c5f6:	6c42                	ld	s8,16(sp)
    8005c5f8:	6ca2                	ld	s9,8(sp)
    8005c5fa:	6125                	addi	sp,sp,96
    8005c5fc:	8082                	ret
quickjs-nuttx/libbf.c:2155
        } else if (a->expn == BF_EXP_INF && a->sign) {
    8005c5fe:	57f5                	li	a5,-3
    8005c600:	8385                	srli	a5,a5,0x1
    8005c602:	00f71463          	bne	a4,a5,8005c60a <bf_sqrt+0x6e>
quickjs-nuttx/libbf.c:2155 (discriminator 1)
    8005c606:	459c                	lw	a5,8(a1)
    8005c608:	eb81                	bnez	a5,8005c618 <bf_sqrt+0x7c>
quickjs-nuttx/libbf.c:2158
            bf_set(r, a);
    8005c60a:	85a2                	mv	a1,s0
    8005c60c:	854a                	mv	a0,s2
    8005c60e:	a15fb0ef          	jal	ra,80058022 <bf_set>
    8005c612:	bfc1                	j	8005c5e2 <bf_sqrt+0x46>
quickjs-nuttx/libbf.c:2161
    } else if (a->sign) {
    8005c614:	459c                	lw	a5,8(a1)
    8005c616:	c791                	beqz	a5,8005c622 <bf_sqrt+0x86>
quickjs-nuttx/libbf.c:2163
        bf_set_nan(r);
    8005c618:	854a                	mv	a0,s2
    8005c61a:	da4fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2164
        ret = BF_ST_INVALID_OP;
    8005c61e:	4505                	li	a0,1
    8005c620:	b7d1                	j	8005c5e4 <bf_sqrt+0x48>
quickjs-nuttx/libbf.c:2172
        n = (2 * (prec + 2) + 2 * LIMB_BITS - 1) / (2 * LIMB_BITS);
    8005c622:	00161a13          	slli	s4,a2,0x1
    8005c626:	083a0a13          	addi	s4,s4,131
    8005c62a:	007a5a13          	srli	s4,s4,0x7
quickjs-nuttx/libbf.c:2147
    bf_context_t *s = a->ctx;
    8005c62e:	0005bb83          	ld	s7,0(a1)
quickjs-nuttx/libbf.c:2173
        if (bf_resize(r, n))
    8005c632:	85d2                	mv	a1,s4
    8005c634:	8b32                	mv	s6,a2
    8005c636:	8c36                	mv	s8,a3
    8005c638:	d4cfb0ef          	jal	ra,80057b84 <bf_resize>
    8005c63c:	e535                	bnez	a0,8005c6a8 <bf_sqrt+0x10c>
quickjs-nuttx/libbf.c:2175
        a1 = bf_malloc(s, sizeof(limb_t) * 2 * n);
    8005c63e:	004a1c93          	slli	s9,s4,0x4
    8005c642:	85e6                	mv	a1,s9
    8005c644:	855e                	mv	a0,s7
    8005c646:	c52fa0ef          	jal	ra,80056a98 <bf_malloc>
    8005c64a:	89aa                	mv	s3,a0
quickjs-nuttx/libbf.c:2176
        if (!a1)
    8005c64c:	cd31                	beqz	a0,8005c6a8 <bf_sqrt+0x10c>
quickjs-nuttx/libbf.c:2178
        n1 = bf_min(2 * n, a->len);
    8005c64e:	01843a83          	ld	s5,24(s0)
    8005c652:	001a1613          	slli	a2,s4,0x1
quickjs-nuttx/libbf.h:188
    if (a < b)
    8005c656:	01565363          	bge	a2,s5,8005c65c <bf_sqrt+0xc0>
    8005c65a:	8ab2                	mv	s5,a2
quickjs-nuttx/libbf.c:2179
        memset(a1, 0, (2 * n - n1) * sizeof(limb_t));
    8005c65c:	41560633          	sub	a2,a2,s5
    8005c660:	060e                	slli	a2,a2,0x3
    8005c662:	4581                	li	a1,0
    8005c664:	854e                	mv	a0,s3
    8005c666:	5dc070ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:2180
        memcpy(a1 + 2 * n - n1, a->tab + a->len - n1, n1 * sizeof(limb_t));
    8005c66a:	6c1c                	ld	a5,24(s0)
    8005c66c:	700c                	ld	a1,32(s0)
    8005c66e:	003a9613          	slli	a2,s5,0x3
    8005c672:	415787b3          	sub	a5,a5,s5
    8005c676:	078e                	slli	a5,a5,0x3
    8005c678:	40cc8533          	sub	a0,s9,a2
    8005c67c:	95be                	add	a1,a1,a5
    8005c67e:	954e                	add	a0,a0,s3
    8005c680:	72c070ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libbf.c:2181
        if (a->expn & 1) {
    8005c684:	681c                	ld	a5,16(s0)
quickjs-nuttx/libbf.c:2184
            res = 0;
    8005c686:	4481                	li	s1,0
    8005c688:	019985b3          	add	a1,s3,s9
quickjs-nuttx/libbf.c:2181
        if (a->expn & 1) {
    8005c68c:	8b85                	andi	a5,a5,1
    8005c68e:	ef85                	bnez	a5,8005c6c6 <bf_sqrt+0x12a>
quickjs-nuttx/libbf.c:2186
        if (mp_sqrtrem(s, r->tab, a1, n)) {
    8005c690:	02093583          	ld	a1,32(s2)
    8005c694:	86d2                	mv	a3,s4
    8005c696:	864e                	mv	a2,s3
    8005c698:	855e                	mv	a0,s7
    8005c69a:	e9dff0ef          	jal	ra,8005c536 <mp_sqrtrem>
    8005c69e:	c905                	beqz	a0,8005c6ce <bf_sqrt+0x132>
quickjs-nuttx/libbf.c:2187
            bf_free(s, a1);
    8005c6a0:	85ce                	mv	a1,s3
    8005c6a2:	855e                	mv	a0,s7
    8005c6a4:	bfcfa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:2205
    bf_set_nan(r);
    8005c6a8:	854a                	mv	a0,s2
    8005c6aa:	d14fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2206
    return BF_ST_MEM_ERROR;
    8005c6ae:	02000513          	li	a0,32
    8005c6b2:	bf0d                	j	8005c5e4 <bf_sqrt+0x48>
mp_shr():
quickjs-nuttx/libbf.c:1139
        a = tab[i];
    8005c6b4:	ff85b703          	ld	a4,-8(a1)
quickjs-nuttx/libbf.c:1140
        tab_r[i] = (a >> shift) | (l << (LIMB_BITS - shift));
    8005c6b8:	14fe                	slli	s1,s1,0x3f
    8005c6ba:	15e1                	addi	a1,a1,-8
    8005c6bc:	00175793          	srli	a5,a4,0x1
    8005c6c0:	8cdd                	or	s1,s1,a5
    8005c6c2:	e184                	sd	s1,0(a1)
quickjs-nuttx/libbf.c:1141
        l = a;
    8005c6c4:	84ba                	mv	s1,a4
quickjs-nuttx/libbf.c:1138
    for(i = n - 1; i >= 0; i--) {
    8005c6c6:	feb997e3          	bne	s3,a1,8005c6b4 <bf_sqrt+0x118>
quickjs-nuttx/libbf.c:1143
    return l & (((limb_t)1 << shift) - 1);
    8005c6ca:	8885                	andi	s1,s1,1
bf_sqrt():
quickjs-nuttx/libbf.c:1143
    8005c6cc:	b7d1                	j	8005c690 <bf_sqrt+0xf4>
quickjs-nuttx/libbf.c:2190
        if (!res) {
    8005c6ce:	e499                	bnez	s1,8005c6dc <bf_sqrt+0x140>
quickjs-nuttx/libbf.c:2191
            res = mp_scan_nz(a1, n + 1);
    8005c6d0:	001a0593          	addi	a1,s4,1
    8005c6d4:	854e                	mv	a0,s3
    8005c6d6:	c90fa0ef          	jal	ra,80056b66 <mp_scan_nz>
    8005c6da:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:2193
        bf_free(s, a1);
    8005c6dc:	85ce                	mv	a1,s3
    8005c6de:	855e                	mv	a0,s7
    8005c6e0:	bc0fa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:2194
        if (!res) {
    8005c6e4:	e881                	bnez	s1,8005c6f4 <bf_sqrt+0x158>
quickjs-nuttx/libbf.c:2195
            res = mp_scan_nz(a->tab, a->len - n1);
    8005c6e6:	6c0c                	ld	a1,24(s0)
    8005c6e8:	7008                	ld	a0,32(s0)
    8005c6ea:	415585b3          	sub	a1,a1,s5
    8005c6ee:	c78fa0ef          	jal	ra,80056b66 <mp_scan_nz>
quickjs-nuttx/libbf.c:2197
        if (res != 0)
    8005c6f2:	c519                	beqz	a0,8005c700 <bf_sqrt+0x164>
quickjs-nuttx/libbf.c:2198
            r->tab[0] |= 1;
    8005c6f4:	02093703          	ld	a4,32(s2)
    8005c6f8:	631c                	ld	a5,0(a4)
    8005c6fa:	0017e793          	ori	a5,a5,1
    8005c6fe:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:2199
        r->sign = 0;
    8005c700:	00092423          	sw	zero,8(s2)
quickjs-nuttx/libbf.c:2200
        r->expn = (a->expn + 1) >> 1;
    8005c704:	681c                	ld	a5,16(s0)
quickjs-nuttx/libbf.c:2201
        ret = bf_round(r, prec, flags);
    8005c706:	8662                	mv	a2,s8
    8005c708:	85da                	mv	a1,s6
quickjs-nuttx/libbf.c:2200
        r->expn = (a->expn + 1) >> 1;
    8005c70a:	0785                	addi	a5,a5,1
    8005c70c:	8785                	srai	a5,a5,0x1
    8005c70e:	00f93823          	sd	a5,16(s2)
quickjs-nuttx/libbf.c:2207
}
    8005c712:	6446                	ld	s0,80(sp)
    8005c714:	60e6                	ld	ra,88(sp)
    8005c716:	64a6                	ld	s1,72(sp)
    8005c718:	79e2                	ld	s3,56(sp)
    8005c71a:	7a42                	ld	s4,48(sp)
    8005c71c:	7aa2                	ld	s5,40(sp)
    8005c71e:	7b02                	ld	s6,32(sp)
    8005c720:	6be2                	ld	s7,24(sp)
    8005c722:	6c42                	ld	s8,16(sp)
    8005c724:	6ca2                	ld	s9,8(sp)
quickjs-nuttx/libbf.c:2201
        ret = bf_round(r, prec, flags);
    8005c726:	854a                	mv	a0,s2
quickjs-nuttx/libbf.c:2207
}
    8005c728:	6906                	ld	s2,64(sp)
    8005c72a:	6125                	addi	sp,sp,96
quickjs-nuttx/libbf.c:2201
        ret = bf_round(r, prec, flags);
    8005c72c:	bc7fb06f          	j	800582f2 <bf_round>

000000008005c730 <bf_mul>:
bf_mul():
quickjs-nuttx/libbf.c:1543
{
    8005c730:	7135                	addi	sp,sp,-160
    8005c732:	e922                	sd	s0,144(sp)
    8005c734:	e526                	sd	s1,136(sp)
    8005c736:	e14a                	sd	s2,128(sp)
    8005c738:	f4d6                	sd	s5,104(sp)
    8005c73a:	f0da                	sd	s6,96(sp)
    8005c73c:	ed06                	sd	ra,152(sp)
    8005c73e:	fcce                	sd	s3,120(sp)
    8005c740:	f8d2                	sd	s4,112(sp)
    8005c742:	ecde                	sd	s7,88(sp)
    8005c744:	e8e2                	sd	s8,80(sp)
    8005c746:	e4e6                	sd	s9,72(sp)
    8005c748:	8b3a                	mv	s6,a4
quickjs-nuttx/libbf.c:1546
    if (a->len < b->len) {
    8005c74a:	6e1c                	ld	a5,24(a2)
    8005c74c:	6d98                	ld	a4,24(a1)
quickjs-nuttx/libbf.c:1543
{
    8005c74e:	842a                	mv	s0,a0
    8005c750:	892e                	mv	s2,a1
    8005c752:	84b2                	mv	s1,a2
    8005c754:	8ab6                	mv	s5,a3
quickjs-nuttx/libbf.c:1546
    if (a->len < b->len) {
    8005c756:	00f77463          	bgeu	a4,a5,8005c75e <bf_mul+0x2e>
    8005c75a:	8932                	mv	s2,a2
    8005c75c:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:1551
    r_sign = a->sign ^ b->sign;
    8005c75e:	00892a03          	lw	s4,8(s2)
    8005c762:	449c                	lw	a5,8(s1)
quickjs-nuttx/libbf.c:1553
    if (b->len == 0) {
    8005c764:	6c88                	ld	a0,24(s1)
quickjs-nuttx/libbf.c:1551
    r_sign = a->sign ^ b->sign;
    8005c766:	00fa4a33          	xor	s4,s4,a5
    8005c76a:	2a01                	sext.w	s4,s4
quickjs-nuttx/libbf.c:1553
    if (b->len == 0) {
    8005c76c:	e925                	bnez	a0,8005c7dc <bf_mul+0xac>
quickjs-nuttx/libbf.c:1554
        if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005c76e:	01093683          	ld	a3,16(s2)
    8005c772:	57fd                	li	a5,-1
    8005c774:	0017d713          	srli	a4,a5,0x1
    8005c778:	00e68563          	beq	a3,a4,8005c782 <bf_mul+0x52>
quickjs-nuttx/libbf.c:1554 (discriminator 1)
    8005c77c:	6890                	ld	a2,16(s1)
    8005c77e:	00e61763          	bne	a2,a4,8005c78c <bf_mul+0x5c>
quickjs-nuttx/libbf.c:1555
            bf_set_nan(r);
    8005c782:	8522                	mv	a0,s0
    8005c784:	c3afb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1564
                ret = 0;
    8005c788:	4481                	li	s1,0
    8005c78a:	a01d                	j	8005c7b0 <bf_mul+0x80>
quickjs-nuttx/libbf.c:1557
        } else if (a->expn == BF_EXP_INF || b->expn == BF_EXP_INF) {
    8005c78c:	5775                	li	a4,-3
    8005c78e:	8305                	srli	a4,a4,0x1
    8005c790:	00e68963          	beq	a3,a4,8005c7a2 <bf_mul+0x72>
quickjs-nuttx/libbf.c:1557 (discriminator 1)
    8005c794:	02e60c63          	beq	a2,a4,8005c7cc <bf_mul+0x9c>
quickjs-nuttx/libbf.c:1567
            bf_set_zero(r, r_sign);
    8005c798:	85d2                	mv	a1,s4
    8005c79a:	8522                	mv	a0,s0
    8005c79c:	cc4fb0ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/libbf.c:1568
            ret = 0;
    8005c7a0:	b7e5                	j	8005c788 <bf_mul+0x58>
quickjs-nuttx/libbf.c:1558 (discriminator 1)
            if ((a->expn == BF_EXP_INF && b->expn == BF_EXP_ZERO) ||
    8005c7a2:	17fe                	slli	a5,a5,0x3f
    8005c7a4:	02f61763          	bne	a2,a5,8005c7d2 <bf_mul+0xa2>
quickjs-nuttx/libbf.c:1560
                bf_set_nan(r);
    8005c7a8:	8522                	mv	a0,s0
    8005c7aa:	c14fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1561
                ret = BF_ST_INVALID_OP;
    8005c7ae:	4485                	li	s1,1
quickjs-nuttx/libbf.c:1622
}
    8005c7b0:	60ea                	ld	ra,152(sp)
    8005c7b2:	644a                	ld	s0,144(sp)
    8005c7b4:	690a                	ld	s2,128(sp)
    8005c7b6:	79e6                	ld	s3,120(sp)
    8005c7b8:	7a46                	ld	s4,112(sp)
    8005c7ba:	7aa6                	ld	s5,104(sp)
    8005c7bc:	7b06                	ld	s6,96(sp)
    8005c7be:	6be6                	ld	s7,88(sp)
    8005c7c0:	6c46                	ld	s8,80(sp)
    8005c7c2:	6ca6                	ld	s9,72(sp)
    8005c7c4:	8526                	mv	a0,s1
    8005c7c6:	64aa                	ld	s1,136(sp)
    8005c7c8:	610d                	addi	sp,sp,160
    8005c7ca:	8082                	ret
quickjs-nuttx/libbf.c:1558 (discriminator 3)
            if ((a->expn == BF_EXP_INF && b->expn == BF_EXP_ZERO) ||
    8005c7cc:	17fe                	slli	a5,a5,0x3f
    8005c7ce:	fcf68de3          	beq	a3,a5,8005c7a8 <bf_mul+0x78>
quickjs-nuttx/libbf.c:1563
                bf_set_inf(r, r_sign);
    8005c7d2:	85d2                	mv	a1,s4
    8005c7d4:	8522                	mv	a0,s0
    8005c7d6:	caefb0ef          	jal	ra,80057c84 <bf_set_inf>
    8005c7da:	b77d                	j	8005c788 <bf_mul+0x58>
quickjs-nuttx/libbf.c:1578
        if ((flags & BF_RND_MASK) == BF_RNDF) {
    8005c7dc:	007b7793          	andi	a5,s6,7
    8005c7e0:	4719                	li	a4,6
quickjs-nuttx/libbf.c:1575
        a_len = a->len;
    8005c7e2:	01893803          	ld	a6,24(s2)
quickjs-nuttx/libbf.c:1578
        if ((flags & BF_RND_MASK) == BF_RNDF) {
    8005c7e6:	06e79c63          	bne	a5,a4,8005c85e <bf_mul+0x12e>
quickjs-nuttx/libbf.c:1580
            precl = (prec + 2 + LIMB_BITS - 1) / LIMB_BITS;
    8005c7ea:	041a8713          	addi	a4,s5,65
    8005c7ee:	8319                	srli	a4,a4,0x6
quickjs-nuttx/libbf.h:188
    8005c7f0:	89c2                	mv	s3,a6
    8005c7f2:	01075363          	bge	a4,a6,8005c7f8 <bf_mul+0xc8>
    8005c7f6:	89ba                	mv	s3,a4
quickjs-nuttx/libbf.c:1582
            b_len = bf_min(b_len, precl);
    8005c7f8:	87aa                	mv	a5,a0
    8005c7fa:	00a75363          	bge	a4,a0,8005c800 <bf_mul+0xd0>
    8005c7fe:	87ba                	mv	a5,a4
quickjs-nuttx/libbf.c:1584
        a_tab = a->tab + a->len - a_len;
    8005c800:	02093c83          	ld	s9,32(s2)
quickjs-nuttx/libbf.c:1585
        b_tab = b->tab + b->len - b_len;
    8005c804:	7094                	ld	a3,32(s1)
quickjs-nuttx/libbf.c:1584
        a_tab = a->tab + a->len - a_len;
    8005c806:	41380833          	sub	a6,a6,s3
quickjs-nuttx/libbf.c:1585
        b_tab = b->tab + b->len - b_len;
    8005c80a:	8d1d                	sub	a0,a0,a5
quickjs-nuttx/libbf.c:1584
        a_tab = a->tab + a->len - a_len;
    8005c80c:	080e                	slli	a6,a6,0x3
quickjs-nuttx/libbf.c:1585
        b_tab = b->tab + b->len - b_len;
    8005c80e:	050e                	slli	a0,a0,0x3
quickjs-nuttx/libbf.c:1588
        if (b_len >= FFT_MUL_THRESHOLD) {
    8005c810:	06300713          	li	a4,99
quickjs-nuttx/libbf.c:1584
        a_tab = a->tab + a->len - a_len;
    8005c814:	9cc2                	add	s9,s9,a6
quickjs-nuttx/libbf.c:1585
        b_tab = b->tab + b->len - b_len;
    8005c816:	96aa                	add	a3,a3,a0
quickjs-nuttx/libbf.c:1588
        if (b_len >= FFT_MUL_THRESHOLD) {
    8005c818:	01810b93          	addi	s7,sp,24
    8005c81c:	04f77463          	bgeu	a4,a5,8005c864 <bf_mul+0x134>
quickjs-nuttx/libbf.c:1590
            if (r == a)
    8005c820:	40890833          	sub	a6,s2,s0
quickjs-nuttx/libbf.c:1591
                mul_flags |= FFT_MUL_R_OVERLAP_A;
    8005c824:	00183813          	seqz	a6,a6
quickjs-nuttx/libbf.c:1592
            if (r == b)
    8005c828:	00849463          	bne	s1,s0,8005c830 <bf_mul+0x100>
quickjs-nuttx/libbf.c:1593
                mul_flags |= FFT_MUL_R_OVERLAP_B;
    8005c82c:	00286813          	ori	a6,a6,2
quickjs-nuttx/libbf.c:1594
            if (fft_mul(r->ctx, r, a_tab, a_len, b_tab, b_len, mul_flags))
    8005c830:	6008                	ld	a0,0(s0)
    8005c832:	8736                	mv	a4,a3
    8005c834:	8666                	mv	a2,s9
    8005c836:	86ce                	mv	a3,s3
    8005c838:	85a2                	mv	a1,s0
    8005c83a:	804ff0ef          	jal	ra,8005b83e <fft_mul>
quickjs-nuttx/libbf.c:1571
        bf_t tmp, *r1 = NULL;
    8005c83e:	4c01                	li	s8,0
quickjs-nuttx/libbf.c:1594
            if (fft_mul(r->ctx, r, a_tab, a_len, b_tab, b_len, mul_flags))
    8005c840:	e135                	bnez	a0,8005c8a4 <bf_mul+0x174>
quickjs-nuttx/libbf.c:1614
        r->sign = r_sign;
    8005c842:	01442423          	sw	s4,8(s0)
quickjs-nuttx/libbf.c:1615
        r->expn = a->expn + b->expn;
    8005c846:	6898                	ld	a4,16(s1)
    8005c848:	01093783          	ld	a5,16(s2)
quickjs-nuttx/libbf.c:1616
        ret = bf_normalize_and_round(r, prec, flags);
    8005c84c:	865a                	mv	a2,s6
    8005c84e:	85d6                	mv	a1,s5
quickjs-nuttx/libbf.c:1615
        r->expn = a->expn + b->expn;
    8005c850:	97ba                	add	a5,a5,a4
    8005c852:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:1616
        ret = bf_normalize_and_round(r, prec, flags);
    8005c854:	8522                	mv	a0,s0
    8005c856:	89ffb0ef          	jal	ra,800580f4 <bf_normalize_and_round>
    8005c85a:	84aa                	mv	s1,a0
    8005c85c:	a889                	j	8005c8ae <bf_mul+0x17e>
    8005c85e:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:1575
        a_len = a->len;
    8005c860:	89c2                	mv	s3,a6
    8005c862:	bf79                	j	8005c800 <bf_mul+0xd0>
quickjs-nuttx/libbf.c:1599
            if (r == a || r == b) {
    8005c864:	00890563          	beq	s2,s0,8005c86e <bf_mul+0x13e>
quickjs-nuttx/libbf.c:1571 (discriminator 1)
        bf_t tmp, *r1 = NULL;
    8005c868:	4c01                	li	s8,0
quickjs-nuttx/libbf.c:1599 (discriminator 1)
            if (r == a || r == b) {
    8005c86a:	00849c63          	bne	s1,s0,8005c882 <bf_mul+0x152>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005c86e:	6018                	ld	a4,0(s0)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005c870:	8c22                	mv	s8,s0
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005c872:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005c874:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005c876:	577d                	li	a4,-1
    8005c878:	177e                	slli	a4,a4,0x3f
    8005c87a:	f43a                	sd	a4,40(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005c87c:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005c87e:	fc02                	sd	zero,56(sp)
bf_mul():
quickjs-nuttx/libbf.c:1602
                r = &tmp;
    8005c880:	845e                	mv	s0,s7
quickjs-nuttx/libbf.c:1604
            if (bf_resize(r, a_len + b_len)) {
    8005c882:	00f985b3          	add	a1,s3,a5
    8005c886:	8522                	mv	a0,s0
    8005c888:	e436                	sd	a3,8(sp)
    8005c88a:	e03e                	sd	a5,0(sp)
    8005c88c:	af8fb0ef          	jal	ra,80057b84 <bf_resize>
    8005c890:	e911                	bnez	a0,8005c8a4 <bf_mul+0x174>
    8005c892:	6782                	ld	a5,0(sp)
    8005c894:	66a2                	ld	a3,8(sp)
quickjs-nuttx/libbf.c:1612
            mp_mul_basecase(r->tab, a_tab, a_len, b_tab, b_len);
    8005c896:	7008                	ld	a0,32(s0)
    8005c898:	873e                	mv	a4,a5
    8005c89a:	864e                	mv	a2,s3
    8005c89c:	85e6                	mv	a1,s9
    8005c89e:	8c3fa0ef          	jal	ra,80057160 <mp_mul_basecase>
    8005c8a2:	b745                	j	8005c842 <bf_mul+0x112>
quickjs-nuttx/libbf.c:1608
                bf_set_nan(r);
    8005c8a4:	8522                	mv	a0,s0
    8005c8a6:	b18fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1609
                ret = BF_ST_MEM_ERROR;
    8005c8aa:	02000493          	li	s1,32
quickjs-nuttx/libbf.c:1618
        if (r == &tmp)
    8005c8ae:	f17411e3          	bne	s0,s7,8005c7b0 <bf_mul+0x80>
quickjs-nuttx/libbf.c:1619
            bf_move(r1, &tmp);
    8005c8b2:	85a2                	mv	a1,s0
    8005c8b4:	8562                	mv	a0,s8
    8005c8b6:	fb8fb0ef          	jal	ra,8005806e <bf_move>
    8005c8ba:	bddd                	j	8005c7b0 <bf_mul+0x80>

000000008005c8bc <bf_sqrtrem>:
bf_sqrtrem():
quickjs-nuttx/libbf.c:2093
{
    8005c8bc:	7159                	addi	sp,sp,-112
    8005c8be:	f0a2                	sd	s0,96(sp)
    8005c8c0:	e8ca                	sd	s2,80(sp)
    8005c8c2:	e4ce                	sd	s3,72(sp)
    8005c8c4:	f486                	sd	ra,104(sp)
    8005c8c6:	eca6                	sd	s1,88(sp)
    8005c8c8:	e0d2                	sd	s4,64(sp)
    8005c8ca:	fc56                	sd	s5,56(sp)
quickjs-nuttx/libbf.c:2096
    if (a->len == 0) {
    8005c8cc:	6e1c                	ld	a5,24(a2)
quickjs-nuttx/libbf.c:2093
{
    8005c8ce:	89aa                	mv	s3,a0
    8005c8d0:	892e                	mv	s2,a1
    8005c8d2:	8432                	mv	s0,a2
quickjs-nuttx/libbf.c:2096
    if (a->len == 0) {
    8005c8d4:	e7a1                	bnez	a5,8005c91c <bf_sqrtrem+0x60>
quickjs-nuttx/libbf.c:2097
        if (a->expn == BF_EXP_NAN) {
    8005c8d6:	6a18                	ld	a4,16(a2)
    8005c8d8:	57fd                	li	a5,-1
    8005c8da:	8385                	srli	a5,a5,0x1
    8005c8dc:	02f71563          	bne	a4,a5,8005c906 <bf_sqrtrem+0x4a>
quickjs-nuttx/libbf.c:2098
            bf_set_nan(r);
    8005c8e0:	adefb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2106
        ret = 0;
    8005c8e4:	4a01                	li	s4,0
quickjs-nuttx/libbf.c:2110
        if (rem1)
    8005c8e6:	00090663          	beqz	s2,8005c8f2 <bf_sqrtrem+0x36>
quickjs-nuttx/libbf.c:2111
            bf_set_ui(rem1, 0);
    8005c8ea:	4581                	li	a1,0
    8005c8ec:	854a                	mv	a0,s2
    8005c8ee:	af0fb0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:2143
}
    8005c8f2:	70a6                	ld	ra,104(sp)
    8005c8f4:	7406                	ld	s0,96(sp)
    8005c8f6:	64e6                	ld	s1,88(sp)
    8005c8f8:	6946                	ld	s2,80(sp)
    8005c8fa:	69a6                	ld	s3,72(sp)
    8005c8fc:	7ae2                	ld	s5,56(sp)
    8005c8fe:	8552                	mv	a0,s4
    8005c900:	6a06                	ld	s4,64(sp)
    8005c902:	6165                	addi	sp,sp,112
    8005c904:	8082                	ret
quickjs-nuttx/libbf.c:2099
        } else if (a->expn == BF_EXP_INF && a->sign) {
    8005c906:	57f5                	li	a5,-3
    8005c908:	8385                	srli	a5,a5,0x1
    8005c90a:	00f71463          	bne	a4,a5,8005c912 <bf_sqrtrem+0x56>
quickjs-nuttx/libbf.c:2099 (discriminator 1)
    8005c90e:	461c                	lw	a5,8(a2)
    8005c910:	eb91                	bnez	a5,8005c924 <bf_sqrtrem+0x68>
quickjs-nuttx/libbf.c:2102
            bf_set(r, a);
    8005c912:	85a2                	mv	a1,s0
    8005c914:	854e                	mv	a0,s3
    8005c916:	f0cfb0ef          	jal	ra,80058022 <bf_set>
    8005c91a:	b7e9                	j	8005c8e4 <bf_sqrtrem+0x28>
quickjs-nuttx/libbf.c:2107
    } else if (a->sign) {
    8005c91c:	00862a03          	lw	s4,8(a2)
    8005c920:	000a0763          	beqz	s4,8005c92e <bf_sqrtrem+0x72>
quickjs-nuttx/libbf.c:2109
        bf_set_nan(r);
    8005c924:	854e                	mv	a0,s3
    8005c926:	a98fb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2112
        ret = BF_ST_INVALID_OP;
    8005c92a:	4a05                	li	s4,1
    8005c92c:	bf6d                	j	8005c8e6 <bf_sqrtrem+0x2a>
quickjs-nuttx/libbf.c:2116
        bf_sqrt(r, a, (a->expn + 1) / 2, BF_RNDZ);
    8005c92e:	6a1c                	ld	a5,16(a2)
    8005c930:	4609                	li	a2,2
    8005c932:	4685                	li	a3,1
    8005c934:	0785                	addi	a5,a5,1
    8005c936:	02c7c633          	div	a2,a5,a2
    8005c93a:	85a2                	mv	a1,s0
    8005c93c:	84ca                	mv	s1,s2
    8005c93e:	c5fff0ef          	jal	ra,8005c59c <bf_sqrt>
quickjs-nuttx/libbf.c:2117
        bf_rint(r, BF_RNDZ);
    8005c942:	4585                	li	a1,1
    8005c944:	854e                	mv	a0,s3
    8005c946:	cf2fc0ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/libbf.c:2119
        if (rem1) {
    8005c94a:	00091c63          	bnez	s2,8005c962 <bf_sqrtrem+0xa6>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005c94e:	0009b783          	ld	a5,0(s3)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005c952:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005c954:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005c956:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005c958:	57fd                	li	a5,-1
    8005c95a:	17fe                	slli	a5,a5,0x3f
    8005c95c:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005c95e:	f402                	sd	zero,40(sp)
bf_sqrtrem():
quickjs-nuttx/libbf.c:2122
            rem = &rem_s;
    8005c960:	0024                	addi	s1,sp,8
quickjs-nuttx/libbf.c:2126
        bf_mul(rem, r, r, BF_PREC_INF, BF_RNDZ);
    8005c962:	5afd                	li	s5,-1
    8005c964:	002ad693          	srli	a3,s5,0x2
    8005c968:	4705                	li	a4,1
    8005c96a:	864e                	mv	a2,s3
    8005c96c:	85ce                	mv	a1,s3
    8005c96e:	8526                	mv	a0,s1
    8005c970:	dc1ff0ef          	jal	ra,8005c730 <bf_mul>
bf_neg():
quickjs-nuttx/libbf.h:231
    r->sign ^= 1;
    8005c974:	449c                	lw	a5,8(s1)
bf_sqrtrem():
quickjs-nuttx/libbf.c:2128
        bf_add(rem, rem, a, BF_PREC_INF, BF_RNDZ);
    8005c976:	002ad693          	srli	a3,s5,0x2
    8005c97a:	4705                	li	a4,1
bf_neg():
quickjs-nuttx/libbf.h:231
    8005c97c:	0017c793          	xori	a5,a5,1
    8005c980:	c49c                	sw	a5,8(s1)
bf_sqrtrem():
quickjs-nuttx/libbf.c:2128
    8005c982:	8622                	mv	a2,s0
    8005c984:	85a6                	mv	a1,s1
    8005c986:	8526                	mv	a0,s1
    8005c988:	9b4fc0ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:2129
        if (bf_is_nan(rem)) {
    8005c98c:	689c                	ld	a5,16(s1)
    8005c98e:	001ada93          	srli	s5,s5,0x1
    8005c992:	01578a63          	beq	a5,s5,8005c9a6 <bf_sqrtrem+0xea>
quickjs-nuttx/libbf.c:2133
        if (rem->len != 0) {
    8005c996:	6c9c                	ld	a5,24(s1)
    8005c998:	eb91                	bnez	a5,8005c9ac <bf_sqrtrem+0xf0>
quickjs-nuttx/libbf.c:2139
        if (!rem1)
    8005c99a:	f4091ce3          	bnez	s2,8005c8f2 <bf_sqrtrem+0x36>
quickjs-nuttx/libbf.c:2140
            bf_delete(rem);
    8005c99e:	8526                	mv	a0,s1
    8005c9a0:	90afa0ef          	jal	ra,80056aaa <bf_delete>
    8005c9a4:	b7b9                	j	8005c8f2 <bf_sqrtrem+0x36>
quickjs-nuttx/libbf.c:2130
            ret = BF_ST_MEM_ERROR;
    8005c9a6:	02000a13          	li	s4,32
    8005c9aa:	bfc5                	j	8005c99a <bf_sqrtrem+0xde>
quickjs-nuttx/libbf.c:2134
            ret = BF_ST_INEXACT;
    8005c9ac:	4a41                	li	s4,16
    8005c9ae:	b7f5                	j	8005c99a <bf_sqrtrem+0xde>

000000008005c9b0 <bf_mul_ui>:
bf_mul_ui():
quickjs-nuttx/libbf.c:2245
{
    8005c9b0:	711d                	addi	sp,sp,-96
    8005c9b2:	ec86                	sd	ra,88(sp)
    8005c9b4:	e8a2                	sd	s0,80(sp)
    8005c9b6:	e4a6                	sd	s1,72(sp)
    8005c9b8:	e0ca                	sd	s2,64(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005c9ba:	611c                	ld	a5,0(a0)
bf_mul_ui():
quickjs-nuttx/libbf.c:2245
{
    8005c9bc:	84aa                	mv	s1,a0
    8005c9be:	892e                	mv	s2,a1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005c9c0:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005c9c2:	57fd                	li	a5,-1
    8005c9c4:	17fe                	slli	a5,a5,0x3f
bf_mul_ui():
quickjs-nuttx/libbf.c:2249
    ret = bf_set_ui(&b, b1);
    8005c9c6:	85b2                	mv	a1,a2
    8005c9c8:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005c9ca:	f43e                	sd	a5,40(sp)
bf_mul_ui():
quickjs-nuttx/libbf.c:2245
{
    8005c9cc:	e436                	sd	a3,8(sp)
    8005c9ce:	e03a                	sd	a4,0(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005c9d0:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005c9d2:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005c9d4:	fc02                	sd	zero,56(sp)
bf_mul_ui():
quickjs-nuttx/libbf.c:2249
    ret = bf_set_ui(&b, b1);
    8005c9d6:	a08fb0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:2250
    ret |= bf_mul(r, a, &b, prec, flags);
    8005c9da:	6702                	ld	a4,0(sp)
    8005c9dc:	66a2                	ld	a3,8(sp)
    8005c9de:	0830                	addi	a2,sp,24
    8005c9e0:	85ca                	mv	a1,s2
quickjs-nuttx/libbf.c:2249
    ret = bf_set_ui(&b, b1);
    8005c9e2:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2250
    ret |= bf_mul(r, a, &b, prec, flags);
    8005c9e4:	8526                	mv	a0,s1
    8005c9e6:	d4bff0ef          	jal	ra,8005c730 <bf_mul>
    8005c9ea:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:2251
    bf_delete(&b);
    8005c9ec:	0828                	addi	a0,sp,24
    8005c9ee:	8bcfa0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2250
    ret |= bf_mul(r, a, &b, prec, flags);
    8005c9f2:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2253
}
    8005c9f4:	60e6                	ld	ra,88(sp)
    8005c9f6:	8522                	mv	a0,s0
    8005c9f8:	6446                	ld	s0,80(sp)
    8005c9fa:	64a6                	ld	s1,72(sp)
    8005c9fc:	6906                	ld	s2,64(sp)
    8005c9fe:	6125                	addi	sp,sp,96
    8005ca00:	8082                	ret

000000008005ca02 <bf_mul_si>:
bf_mul_si():
quickjs-nuttx/libbf.c:2257
{
    8005ca02:	711d                	addi	sp,sp,-96
    8005ca04:	ec86                	sd	ra,88(sp)
    8005ca06:	e8a2                	sd	s0,80(sp)
    8005ca08:	e4a6                	sd	s1,72(sp)
    8005ca0a:	e0ca                	sd	s2,64(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ca0c:	611c                	ld	a5,0(a0)
bf_mul_si():
quickjs-nuttx/libbf.c:2257
{
    8005ca0e:	84aa                	mv	s1,a0
    8005ca10:	892e                	mv	s2,a1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ca12:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ca14:	57fd                	li	a5,-1
    8005ca16:	17fe                	slli	a5,a5,0x3f
bf_mul_si():
quickjs-nuttx/libbf.c:2261
    ret = bf_set_si(&b, b1);
    8005ca18:	85b2                	mv	a1,a2
    8005ca1a:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ca1c:	f43e                	sd	a5,40(sp)
bf_mul_si():
quickjs-nuttx/libbf.c:2257
{
    8005ca1e:	e436                	sd	a3,8(sp)
    8005ca20:	e03a                	sd	a4,0(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ca22:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ca24:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ca26:	fc02                	sd	zero,56(sp)
bf_mul_si():
quickjs-nuttx/libbf.c:2261
    ret = bf_set_si(&b, b1);
    8005ca28:	a14fb0ef          	jal	ra,80057c3c <bf_set_si>
quickjs-nuttx/libbf.c:2262
    ret |= bf_mul(r, a, &b, prec, flags);
    8005ca2c:	6702                	ld	a4,0(sp)
    8005ca2e:	66a2                	ld	a3,8(sp)
    8005ca30:	0830                	addi	a2,sp,24
    8005ca32:	85ca                	mv	a1,s2
quickjs-nuttx/libbf.c:2261
    ret = bf_set_si(&b, b1);
    8005ca34:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2262
    ret |= bf_mul(r, a, &b, prec, flags);
    8005ca36:	8526                	mv	a0,s1
    8005ca38:	cf9ff0ef          	jal	ra,8005c730 <bf_mul>
    8005ca3c:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:2263
    bf_delete(&b);
    8005ca3e:	0828                	addi	a0,sp,24
    8005ca40:	86afa0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2262
    ret |= bf_mul(r, a, &b, prec, flags);
    8005ca44:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2265
}
    8005ca46:	60e6                	ld	ra,88(sp)
    8005ca48:	8522                	mv	a0,s0
    8005ca4a:	6446                	ld	s0,80(sp)
    8005ca4c:	64a6                	ld	s1,72(sp)
    8005ca4e:	6906                	ld	s2,64(sp)
    8005ca50:	6125                	addi	sp,sp,96
    8005ca52:	8082                	ret

000000008005ca54 <check_exp_underflow_overflow>:
check_exp_underflow_overflow():
quickjs-nuttx/libbf.c:4375
{
    8005ca54:	7175                	addi	sp,sp,-144
    8005ca56:	fca6                	sd	s1,120(sp)
    8005ca58:	e506                	sd	ra,136(sp)
    8005ca5a:	e122                	sd	s0,128(sp)
    8005ca5c:	f8ca                	sd	s2,112(sp)
    8005ca5e:	f4ce                	sd	s3,104(sp)
    8005ca60:	f0d2                	sd	s4,96(sp)
    8005ca62:	ecd6                	sd	s5,88(sp)
    8005ca64:	e8da                	sd	s6,80(sp)
    8005ca66:	84be                	mv	s1,a5
quickjs-nuttx/libbf.c:4380
    if (a_high->expn <= 0)
    8005ca68:	6a9c                	ld	a5,16(a3)
    8005ca6a:	10f05863          	blez	a5,8005cb7a <check_exp_underflow_overflow+0x126>
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    8005ca6e:	0054d79b          	srliw	a5,s1,0x5
    8005ca72:	8aba                	mv	s5,a4
    8005ca74:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    8005ca78:	03f00713          	li	a4,63
    8005ca7c:	89ae                	mv	s3,a1
    8005ca7e:	8b32                	mv	s6,a2
    8005ca80:	8a36                	mv	s4,a3
quickjs-nuttx/libbf.h:157
        return BF_EXP_BITS_MAX + 1;
    8005ca82:	03e00413          	li	s0,62
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    8005ca86:	00e78563          	beq	a5,a4,8005ca90 <check_exp_underflow_overflow+0x3c>
quickjs-nuttx/libbf.h:159
        return BF_EXP_BITS_MAX - e;
    8005ca8a:	03d00413          	li	s0,61
    8005ca8e:	9c1d                	subw	s0,s0,a5
check_exp_underflow_overflow():
quickjs-nuttx/libbf.c:4383
    e_max = (limb_t)1 << (bf_get_exp_bits(flags) - 1);
    8005ca90:	347d                	addiw	s0,s0,-1
    8005ca92:	4785                	li	a5,1
    8005ca94:	00879433          	sll	s0,a5,s0
quickjs-nuttx/libbf.c:4384
    e_min = -e_max + 3;
    8005ca98:	490d                	li	s2,3
quickjs-nuttx/libbf.c:4385
    if (flags & BF_FLAG_SUBNORMAL)
    8005ca9a:	0084f713          	andi	a4,s1,8
quickjs-nuttx/libbf.c:4384
    e_min = -e_max + 3;
    8005ca9e:	40890933          	sub	s2,s2,s0
quickjs-nuttx/libbf.c:4385
    if (flags & BF_FLAG_SUBNORMAL)
    8005caa2:	c701                	beqz	a4,8005caaa <check_exp_underflow_overflow+0x56>
quickjs-nuttx/libbf.c:4386
        e_min -= (prec - 1);
    8005caa4:	415787b3          	sub	a5,a5,s5
    8005caa8:	993e                	add	s2,s2,a5
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005caaa:	57fd                	li	a5,-1
    8005caac:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005caae:	e02a                	sd	a0,0(sp)
    8005cab0:	f42a                	sd	a0,40(sp)
check_exp_underflow_overflow():
quickjs-nuttx/libbf.c:4390
    bf_const_log2(log2, LIMB_BITS, BF_RNDU);
    8005cab2:	460d                	li	a2,3
    8005cab4:	04000593          	li	a1,64
    8005cab8:	1028                	addi	a0,sp,40
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005caba:	e83e                	sd	a5,16(sp)
    8005cabc:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005cabe:	c402                	sw	zero,8(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005cac0:	ec02                	sd	zero,24(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005cac2:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005cac4:	d802                	sw	zero,48(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005cac6:	e082                	sd	zero,64(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005cac8:	e482                	sd	zero,72(sp)
check_exp_underflow_overflow():
quickjs-nuttx/libbf.c:4390
    bf_const_log2(log2, LIMB_BITS, BF_RNDU);
    8005caca:	f76fc0ef          	jal	ra,80059240 <bf_const_log2>
quickjs-nuttx/libbf.c:4391
    bf_mul_ui(T, log2, e_max, LIMB_BITS, BF_RNDU);
    8005cace:	102c                	addi	a1,sp,40
    8005cad0:	470d                	li	a4,3
    8005cad2:	04000693          	li	a3,64
    8005cad6:	8622                	mv	a2,s0
    8005cad8:	850a                	mv	a0,sp
    8005cada:	ed7ff0ef          	jal	ra,8005c9b0 <bf_mul_ui>
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    return bf_cmp(a, b) < 0;
    8005cade:	85da                	mv	a1,s6
    8005cae0:	850a                	mv	a0,sp
    8005cae2:	e8bfb0ef          	jal	ra,8005896c <bf_cmp>
check_exp_underflow_overflow():
quickjs-nuttx/libbf.c:4393
    if (bf_cmp_lt(T, a_low) > 0) {
    8005cae6:	02055863          	bgez	a0,8005cb16 <check_exp_underflow_overflow+0xc2>
quickjs-nuttx/libbf.c:4395
        bf_delete(T);
    8005caea:	850a                	mv	a0,sp
    8005caec:	fbff90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4396
        bf_delete(log2);
    8005caf0:	1028                	addi	a0,sp,40
    8005caf2:	fb9f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4397
        return bf_set_overflow(r, 0, prec, flags);
    8005caf6:	86a6                	mv	a3,s1
    8005caf8:	8656                	mv	a2,s5
    8005cafa:	4581                	li	a1,0
    8005cafc:	854e                	mv	a0,s3
    8005cafe:	9aafb0ef          	jal	ra,80057ca8 <bf_set_overflow>
quickjs-nuttx/libbf.c:4420
}
    8005cb02:	60aa                	ld	ra,136(sp)
    8005cb04:	640a                	ld	s0,128(sp)
    8005cb06:	74e6                	ld	s1,120(sp)
    8005cb08:	7946                	ld	s2,112(sp)
    8005cb0a:	79a6                	ld	s3,104(sp)
    8005cb0c:	7a06                	ld	s4,96(sp)
    8005cb0e:	6ae6                	ld	s5,88(sp)
    8005cb10:	6b46                	ld	s6,80(sp)
    8005cb12:	6149                	addi	sp,sp,144
    8005cb14:	8082                	ret
quickjs-nuttx/libbf.c:4400
    bf_const_log2(log2, LIMB_BITS, BF_RNDD);
    8005cb16:	4609                	li	a2,2
    8005cb18:	04000593          	li	a1,64
    8005cb1c:	1028                	addi	a0,sp,40
    8005cb1e:	f22fc0ef          	jal	ra,80059240 <bf_const_log2>
quickjs-nuttx/libbf.c:4401
    bf_mul_si(T, log2, e_min - 2, LIMB_BITS, BF_RNDD);
    8005cb22:	102c                	addi	a1,sp,40
    8005cb24:	4709                	li	a4,2
    8005cb26:	04000693          	li	a3,64
    8005cb2a:	ffe90613          	addi	a2,s2,-2
    8005cb2e:	850a                	mv	a0,sp
    8005cb30:	ed3ff0ef          	jal	ra,8005ca02 <bf_mul_si>
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    8005cb34:	858a                	mv	a1,sp
    8005cb36:	8552                	mv	a0,s4
    8005cb38:	e35fb0ef          	jal	ra,8005896c <bf_cmp>
check_exp_underflow_overflow():
quickjs-nuttx/libbf.c:4402
    if (bf_cmp_lt(a_high, T)) {
    8005cb3c:	02055963          	bgez	a0,8005cb6e <check_exp_underflow_overflow+0x11a>
quickjs-nuttx/libbf.c:4406
        bf_delete(T);
    8005cb40:	850a                	mv	a0,sp
    8005cb42:	f69f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4407
        bf_delete(log2);
    8005cb46:	1028                	addi	a0,sp,40
    8005cb48:	f63f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4408
        if (rnd_mode == BF_RNDU) {
    8005cb4c:	889d                	andi	s1,s1,7
    8005cb4e:	478d                	li	a5,3
    8005cb50:	00f49a63          	bne	s1,a5,8005cb64 <check_exp_underflow_overflow+0x110>
quickjs-nuttx/libbf.c:4410
            bf_set_ui(r, 1);
    8005cb54:	4585                	li	a1,1
    8005cb56:	854e                	mv	a0,s3
    8005cb58:	886fb0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4411
            r->expn = e_min;
    8005cb5c:	0129b823          	sd	s2,16(s3)
quickjs-nuttx/libbf.c:4415
        return BF_ST_UNDERFLOW | BF_ST_INEXACT;
    8005cb60:	4561                	li	a0,24
    8005cb62:	b745                	j	8005cb02 <check_exp_underflow_overflow+0xae>
quickjs-nuttx/libbf.c:4413
            bf_set_zero(r, 0);
    8005cb64:	4581                	li	a1,0
    8005cb66:	854e                	mv	a0,s3
    8005cb68:	8f8fb0ef          	jal	ra,80057c60 <bf_set_zero>
    8005cb6c:	bfd5                	j	8005cb60 <check_exp_underflow_overflow+0x10c>
quickjs-nuttx/libbf.c:4417
    bf_delete(log2);
    8005cb6e:	1028                	addi	a0,sp,40
    8005cb70:	f3bf90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4418
    bf_delete(T);
    8005cb74:	850a                	mv	a0,sp
    8005cb76:	f35f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4381
        return 0;
    8005cb7a:	4501                	li	a0,0
    8005cb7c:	b759                	j	8005cb02 <check_exp_underflow_overflow+0xae>

000000008005cb7e <bf_exp>:
bf_exp():
quickjs-nuttx/libbf.c:4423
{
    8005cb7e:	7179                	addi	sp,sp,-48
    8005cb80:	f406                	sd	ra,40(sp)
    8005cb82:	f022                	sd	s0,32(sp)
    8005cb84:	ec26                	sd	s1,24(sp)
    8005cb86:	e84a                	sd	s2,16(sp)
    8005cb88:	e44e                	sd	s3,8(sp)
    8005cb8a:	e052                	sd	s4,0(sp)
quickjs-nuttx/libbf.c:4426
    assert(r != a);
    8005cb8c:	00b51c63          	bne	a0,a1,8005cba4 <bf_exp+0x26>
quickjs-nuttx/libbf.c:4426 (discriminator 1)
    8005cb90:	6585                	lui	a1,0x1
    8005cb92:	4601                	li	a2,0
    8005cb94:	14a58593          	addi	a1,a1,330 # 114a <asinh-0x7fffeeb6>
    8005cb98:	00024517          	auipc	a0,0x24
    8005cb9c:	a2850513          	addi	a0,a0,-1496 # 800805c0 <std_name.0+0x18>
    8005cba0:	5bd030ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:4427 (discriminator 2)
    if (a->len == 0) {
    8005cba4:	6d9c                	ld	a5,24(a1)
    8005cba6:	84ae                	mv	s1,a1
    8005cba8:	e3b9                	bnez	a5,8005cbee <bf_exp+0x70>
quickjs-nuttx/libbf.c:4428
        if (a->expn == BF_EXP_NAN) {
    8005cbaa:	6998                	ld	a4,16(a1)
    8005cbac:	57fd                	li	a5,-1
    8005cbae:	8385                	srli	a5,a5,0x1
    8005cbb0:	00f71663          	bne	a4,a5,8005cbbc <bf_exp+0x3e>
quickjs-nuttx/libbf.c:4429
            bf_set_nan(r);
    8005cbb4:	80afb0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:4438
        return 0;
    8005cbb8:	4401                	li	s0,0
    8005cbba:	a829                	j	8005cbd4 <bf_exp+0x56>
quickjs-nuttx/libbf.c:4430
        } else if (a->expn == BF_EXP_INF) {
    8005cbbc:	57f5                	li	a5,-3
    8005cbbe:	8385                	srli	a5,a5,0x1
    8005cbc0:	02f71363          	bne	a4,a5,8005cbe6 <bf_exp+0x68>
quickjs-nuttx/libbf.c:4431
            if (a->sign)
    8005cbc4:	4580                	lw	s0,8(a1)
quickjs-nuttx/libbf.c:4432
                bf_set_zero(r, 0);
    8005cbc6:	4581                	li	a1,0
quickjs-nuttx/libbf.c:4431
            if (a->sign)
    8005cbc8:	c401                	beqz	s0,8005cbd0 <bf_exp+0x52>
quickjs-nuttx/libbf.c:4432
                bf_set_zero(r, 0);
    8005cbca:	896fb0ef          	jal	ra,80057c60 <bf_set_zero>
    8005cbce:	b7ed                	j	8005cbb8 <bf_exp+0x3a>
quickjs-nuttx/libbf.c:4434
                bf_set_inf(r, 0);
    8005cbd0:	8b4fb0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:4451
}
    8005cbd4:	70a2                	ld	ra,40(sp)
    8005cbd6:	8522                	mv	a0,s0
    8005cbd8:	7402                	ld	s0,32(sp)
    8005cbda:	64e2                	ld	s1,24(sp)
    8005cbdc:	6942                	ld	s2,16(sp)
    8005cbde:	69a2                	ld	s3,8(sp)
    8005cbe0:	6a02                	ld	s4,0(sp)
    8005cbe2:	6145                	addi	sp,sp,48
    8005cbe4:	8082                	ret
quickjs-nuttx/libbf.c:4436
            bf_set_ui(r, 1);
    8005cbe6:	4585                	li	a1,1
    8005cbe8:	ff7fa0ef          	jal	ra,80057bde <bf_set_ui>
    8005cbec:	b7f1                	j	8005cbb8 <bf_exp+0x3a>
quickjs-nuttx/libbf.c:4441
    ret = check_exp_underflow_overflow(s, r, a, a, prec, flags);
    8005cbee:	87b6                	mv	a5,a3
    8005cbf0:	8732                	mv	a4,a2
    8005cbf2:	892a                	mv	s2,a0
    8005cbf4:	89b2                	mv	s3,a2
    8005cbf6:	8a36                	mv	s4,a3
    8005cbf8:	862e                	mv	a2,a1
    8005cbfa:	86ae                	mv	a3,a1
    8005cbfc:	85aa                	mv	a1,a0
    8005cbfe:	6108                	ld	a0,0(a0)
    8005cc00:	e55ff0ef          	jal	ra,8005ca54 <check_exp_underflow_overflow>
    8005cc04:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:4442
    if (ret)
    8005cc06:	f579                	bnez	a0,8005cbd4 <bf_exp+0x56>
quickjs-nuttx/libbf.c:4444
    if (a->expn < 0 && (-a->expn) >= (prec + 2)) { 
    8005cc08:	689c                	ld	a5,16(s1)
    8005cc0a:	0207de63          	bgez	a5,8005cc46 <bf_exp+0xc8>
quickjs-nuttx/libbf.c:4444 (discriminator 1)
    8005cc0e:	40f007b3          	neg	a5,a5
    8005cc12:	00298713          	addi	a4,s3,2
    8005cc16:	02e7e863          	bltu	a5,a4,8005cc46 <bf_exp+0xc8>
quickjs-nuttx/libbf.c:4446
        bf_set_ui(r, 1);
    8005cc1a:	4585                	li	a1,1
    8005cc1c:	854a                	mv	a0,s2
    8005cc1e:	fc1fa0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4447
        return bf_add_epsilon(r, r, -(prec + 2), a->sign, prec, flags);
    8005cc22:	5679                	li	a2,-2
quickjs-nuttx/libbf.c:4451
}
    8005cc24:	7402                	ld	s0,32(sp)
quickjs-nuttx/libbf.c:4447
        return bf_add_epsilon(r, r, -(prec + 2), a->sign, prec, flags);
    8005cc26:	4494                	lw	a3,8(s1)
    8005cc28:	00093583          	ld	a1,0(s2)
quickjs-nuttx/libbf.c:4451
}
    8005cc2c:	70a2                	ld	ra,40(sp)
    8005cc2e:	64e2                	ld	s1,24(sp)
quickjs-nuttx/libbf.c:4447
        return bf_add_epsilon(r, r, -(prec + 2), a->sign, prec, flags);
    8005cc30:	87d2                	mv	a5,s4
    8005cc32:	874e                	mv	a4,s3
quickjs-nuttx/libbf.c:4451
}
    8005cc34:	6a02                	ld	s4,0(sp)
quickjs-nuttx/libbf.c:4447
        return bf_add_epsilon(r, r, -(prec + 2), a->sign, prec, flags);
    8005cc36:	41360633          	sub	a2,a2,s3
    8005cc3a:	854a                	mv	a0,s2
quickjs-nuttx/libbf.c:4451
}
    8005cc3c:	69a2                	ld	s3,8(sp)
    8005cc3e:	6942                	ld	s2,16(sp)
    8005cc40:	6145                	addi	sp,sp,48
quickjs-nuttx/libbf.c:4447
        return bf_add_epsilon(r, r, -(prec + 2), a->sign, prec, flags);
    8005cc42:	f07fb06f          	j	80058b48 <bf_add_epsilon.isra.0>
quickjs-nuttx/libbf.c:4451
}
    8005cc46:	7402                	ld	s0,32(sp)
    8005cc48:	70a2                	ld	ra,40(sp)
quickjs-nuttx/libbf.c:4450
    return bf_ziv_rounding(r, a, prec, flags, bf_exp_internal, NULL);
    8005cc4a:	86d2                	mv	a3,s4
    8005cc4c:	864e                	mv	a2,s3
quickjs-nuttx/libbf.c:4451
}
    8005cc4e:	6a02                	ld	s4,0(sp)
    8005cc50:	69a2                	ld	s3,8(sp)
quickjs-nuttx/libbf.c:4450
    return bf_ziv_rounding(r, a, prec, flags, bf_exp_internal, NULL);
    8005cc52:	85a6                	mv	a1,s1
    8005cc54:	854a                	mv	a0,s2
quickjs-nuttx/libbf.c:4451
}
    8005cc56:	64e2                	ld	s1,24(sp)
    8005cc58:	6942                	ld	s2,16(sp)
quickjs-nuttx/libbf.c:4450
    return bf_ziv_rounding(r, a, prec, flags, bf_exp_internal, NULL);
    8005cc5a:	4781                	li	a5,0
    8005cc5c:	00001717          	auipc	a4,0x1
    8005cc60:	6e070713          	addi	a4,a4,1760 # 8005e33c <bf_exp_internal>
quickjs-nuttx/libbf.c:4451
}
    8005cc64:	6145                	addi	sp,sp,48
quickjs-nuttx/libbf.c:4450
    return bf_ziv_rounding(r, a, prec, flags, bf_exp_internal, NULL);
    8005cc66:	de6fb06f          	j	8005824c <bf_ziv_rounding>

000000008005cc6a <bf_pow_ui>:
bf_pow_ui():
quickjs-nuttx/libbf.c:2282
{
    8005cc6a:	715d                	addi	sp,sp,-80
    8005cc6c:	e486                	sd	ra,72(sp)
    8005cc6e:	e0a2                	sd	s0,64(sp)
    8005cc70:	fc26                	sd	s1,56(sp)
    8005cc72:	f84a                	sd	s2,48(sp)
    8005cc74:	f44e                	sd	s3,40(sp)
    8005cc76:	f052                	sd	s4,32(sp)
    8005cc78:	ec56                	sd	s5,24(sp)
    8005cc7a:	e85a                	sd	s6,16(sp)
    8005cc7c:	e45e                	sd	s7,8(sp)
quickjs-nuttx/libbf.c:2285
    assert(r != a);
    8005cc7e:	00b51c63          	bne	a0,a1,8005cc96 <bf_pow_ui+0x2c>
quickjs-nuttx/libbf.c:2285 (discriminator 1)
    8005cc82:	6585                	lui	a1,0x1
    8005cc84:	4601                	li	a2,0
    8005cc86:	8ed58593          	addi	a1,a1,-1811 # 8ed <asinh-0x7ffff713>
    8005cc8a:	00024517          	auipc	a0,0x24
    8005cc8e:	93650513          	addi	a0,a0,-1738 # 800805c0 <std_name.0+0x18>
    8005cc92:	4cb030ef          	jal	ra,8006095c <__assert>
    8005cc96:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:2286 (discriminator 2)
    if (b == 0)
    8005cc98:	ee11                	bnez	a2,8005ccb4 <bf_pow_ui+0x4a>
quickjs-nuttx/libbf.c:2296
}
    8005cc9a:	6406                	ld	s0,64(sp)
    8005cc9c:	60a6                	ld	ra,72(sp)
    8005cc9e:	74e2                	ld	s1,56(sp)
    8005cca0:	7942                	ld	s2,48(sp)
    8005cca2:	79a2                	ld	s3,40(sp)
    8005cca4:	7a02                	ld	s4,32(sp)
    8005cca6:	6ae2                	ld	s5,24(sp)
    8005cca8:	6b42                	ld	s6,16(sp)
    8005ccaa:	6ba2                	ld	s7,8(sp)
quickjs-nuttx/libbf.c:2287
        return bf_set_ui(r, 1);
    8005ccac:	4585                	li	a1,1
quickjs-nuttx/libbf.c:2296
}
    8005ccae:	6161                	addi	sp,sp,80
quickjs-nuttx/libbf.c:2287
        return bf_set_ui(r, 1);
    8005ccb0:	f2ffa06f          	j	80057bde <bf_set_ui>
    8005ccb4:	8a2e                	mv	s4,a1
    8005ccb6:	8ab6                	mv	s5,a3
    8005ccb8:	8b3a                	mv	s6,a4
    8005ccba:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:2288
    ret = bf_set(r, a);
    8005ccbc:	b66fb0ef          	jal	ra,80058022 <bf_set>
    8005ccc0:	842a                	mv	s0,a0
clz64():
quickjs-nuttx/cutils.h:126
    8005ccc2:	854e                	mv	a0,s3
    8005ccc4:	9d2a70ef          	jal	ra,80003e96 <__clzdi2>
bf_pow_ui():
quickjs-nuttx/libbf.c:2290
    for(i = n_bits - 2; i >= 0; i--) {
    8005ccc8:	03e00913          	li	s2,62
    8005cccc:	40a9093b          	subw	s2,s2,a0
    8005ccd0:	5bfd                	li	s7,-1
    8005ccd2:	01791e63          	bne	s2,s7,8005ccee <bf_pow_ui+0x84>
quickjs-nuttx/libbf.c:2296
}
    8005ccd6:	60a6                	ld	ra,72(sp)
    8005ccd8:	8522                	mv	a0,s0
    8005ccda:	6406                	ld	s0,64(sp)
    8005ccdc:	74e2                	ld	s1,56(sp)
    8005ccde:	7942                	ld	s2,48(sp)
    8005cce0:	79a2                	ld	s3,40(sp)
    8005cce2:	7a02                	ld	s4,32(sp)
    8005cce4:	6ae2                	ld	s5,24(sp)
    8005cce6:	6b42                	ld	s6,16(sp)
    8005cce8:	6ba2                	ld	s7,8(sp)
    8005ccea:	6161                	addi	sp,sp,80
    8005ccec:	8082                	ret
quickjs-nuttx/libbf.c:2291
        ret |= bf_mul(r, r, r, prec, flags);
    8005ccee:	875a                	mv	a4,s6
    8005ccf0:	86d6                	mv	a3,s5
    8005ccf2:	8626                	mv	a2,s1
    8005ccf4:	85a6                	mv	a1,s1
    8005ccf6:	8526                	mv	a0,s1
    8005ccf8:	a39ff0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:2292
        if ((b >> i) & 1)
    8005ccfc:	0129d7b3          	srl	a5,s3,s2
quickjs-nuttx/libbf.c:2291
        ret |= bf_mul(r, r, r, prec, flags);
    8005cd00:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:2292
        if ((b >> i) & 1)
    8005cd02:	8b85                	andi	a5,a5,1
quickjs-nuttx/libbf.c:2291
        ret |= bf_mul(r, r, r, prec, flags);
    8005cd04:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2292
        if ((b >> i) & 1)
    8005cd06:	cb91                	beqz	a5,8005cd1a <bf_pow_ui+0xb0>
quickjs-nuttx/libbf.c:2293
            ret |= bf_mul(r, r, a, prec, flags);
    8005cd08:	875a                	mv	a4,s6
    8005cd0a:	86d6                	mv	a3,s5
    8005cd0c:	8652                	mv	a2,s4
    8005cd0e:	85a6                	mv	a1,s1
    8005cd10:	8526                	mv	a0,s1
    8005cd12:	a1fff0ef          	jal	ra,8005c730 <bf_mul>
    8005cd16:	8c49                	or	s0,s0,a0
    8005cd18:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2290
    for(i = n_bits - 2; i >= 0; i--) {
    8005cd1a:	397d                	addiw	s2,s2,-1
    8005cd1c:	bf5d                	j	8005ccd2 <bf_pow_ui+0x68>

000000008005cd1e <bf_pow_ui_ui>:
bf_pow_ui_ui():
quickjs-nuttx/libbf.c:2300
{
    8005cd1e:	7159                	addi	sp,sp,-112
    8005cd20:	eca6                	sd	s1,88(sp)
    8005cd22:	f486                	sd	ra,104(sp)
    8005cd24:	f0a2                	sd	s0,96(sp)
quickjs-nuttx/libbf.c:2305
    if (a1 == 10 && b <= LIMB_DIGITS) {
    8005cd26:	47a9                	li	a5,10
quickjs-nuttx/libbf.c:2300
{
    8005cd28:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:2305
    if (a1 == 10 && b <= LIMB_DIGITS) {
    8005cd2a:	02f59263          	bne	a1,a5,8005cd4e <bf_pow_ui_ui+0x30>
quickjs-nuttx/libbf.c:2305 (discriminator 1)
    8005cd2e:	47cd                	li	a5,19
    8005cd30:	00c7ef63          	bltu	a5,a2,8005cd4e <bf_pow_ui_ui+0x30>
quickjs-nuttx/libbf.c:2308
        ret = bf_set_ui(r, mp_pow_dec[b]);
    8005cd34:	060e                	slli	a2,a2,0x3
    8005cd36:	00024797          	auipc	a5,0x24
    8005cd3a:	d6278793          	addi	a5,a5,-670 # 80080a98 <mp_pow_dec>
quickjs-nuttx/libbf.c:2318
}
    8005cd3e:	7406                	ld	s0,96(sp)
quickjs-nuttx/libbf.c:2308
        ret = bf_set_ui(r, mp_pow_dec[b]);
    8005cd40:	963e                	add	a2,a2,a5
quickjs-nuttx/libbf.c:2318
}
    8005cd42:	70a6                	ld	ra,104(sp)
    8005cd44:	64e6                	ld	s1,88(sp)
quickjs-nuttx/libbf.c:2308
        ret = bf_set_ui(r, mp_pow_dec[b]);
    8005cd46:	620c                	ld	a1,0(a2)
quickjs-nuttx/libbf.c:2318
}
    8005cd48:	6165                	addi	sp,sp,112
quickjs-nuttx/libbf.c:2308
        ret = bf_set_ui(r, mp_pow_dec[b]);
    8005cd4a:	e95fa06f          	j	80057bde <bf_set_ui>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005cd4e:	609c                	ld	a5,0(s1)
bf_pow_ui_ui():
quickjs-nuttx/libbf.c:2313
        ret = bf_set_ui(&a, a1);
    8005cd50:	1028                	addi	a0,sp,40
    8005cd52:	ec3a                	sd	a4,24(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005cd54:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005cd56:	57fd                	li	a5,-1
    8005cd58:	17fe                	slli	a5,a5,0x3f
    8005cd5a:	fc3e                	sd	a5,56(sp)
    8005cd5c:	e836                	sd	a3,16(sp)
    8005cd5e:	e432                	sd	a2,8(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005cd60:	d802                	sw	zero,48(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005cd62:	e082                	sd	zero,64(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005cd64:	e482                	sd	zero,72(sp)
bf_pow_ui_ui():
quickjs-nuttx/libbf.c:2313
        ret = bf_set_ui(&a, a1);
    8005cd66:	e79fa0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:2314
        ret |= bf_pow_ui(r, &a, b, prec, flags);
    8005cd6a:	6762                	ld	a4,24(sp)
    8005cd6c:	66c2                	ld	a3,16(sp)
    8005cd6e:	6622                	ld	a2,8(sp)
    8005cd70:	102c                	addi	a1,sp,40
quickjs-nuttx/libbf.c:2313
        ret = bf_set_ui(&a, a1);
    8005cd72:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2314
        ret |= bf_pow_ui(r, &a, b, prec, flags);
    8005cd74:	8526                	mv	a0,s1
    8005cd76:	ef5ff0ef          	jal	ra,8005cc6a <bf_pow_ui>
    8005cd7a:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:2315
        bf_delete(&a);
    8005cd7c:	1028                	addi	a0,sp,40
    8005cd7e:	d2df90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2314
        ret |= bf_pow_ui(r, &a, b, prec, flags);
    8005cd82:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2318
}
    8005cd84:	70a6                	ld	ra,104(sp)
    8005cd86:	8522                	mv	a0,s0
    8005cd88:	7406                	ld	s0,96(sp)
    8005cd8a:	64e6                	ld	s1,88(sp)
    8005cd8c:	6165                	addi	sp,sp,112
    8005cd8e:	8082                	ret

000000008005cd90 <bf_pow_int>:
bf_pow_int():
quickjs-nuttx/libbf.c:4614
{
    8005cd90:	7159                	addi	sp,sp,-112
    8005cd92:	e8ca                	sd	s2,80(sp)
    8005cd94:	e4ce                	sd	s3,72(sp)
    8005cd96:	e0d2                	sd	s4,64(sp)
    8005cd98:	f85a                	sd	s6,48(sp)
    8005cd9a:	f486                	sd	ra,104(sp)
    8005cd9c:	f0a2                	sd	s0,96(sp)
    8005cd9e:	eca6                	sd	s1,88(sp)
    8005cda0:	fc56                	sd	s5,56(sp)
quickjs-nuttx/libbf.c:4615
    bf_context_t *s = r->ctx;
    8005cda2:	00053a83          	ld	s5,0(a0)
quickjs-nuttx/libbf.c:4614
{
    8005cda6:	892a                	mv	s2,a0
    8005cda8:	8b2e                	mv	s6,a1
    8005cdaa:	89b2                	mv	s3,a2
bf_get_limb():
quickjs-nuttx/libbf.c:1862
    return bf_get_int64(pres, a, flags);
    8005cdac:	85b6                	mv	a1,a3
    8005cdae:	4601                	li	a2,0
    8005cdb0:	850a                	mv	a0,sp
bf_pow_int():
quickjs-nuttx/libbf.c:4614
{
    8005cdb2:	8a36                	mv	s4,a3
bf_get_limb():
quickjs-nuttx/libbf.c:1862
    return bf_get_int64(pres, a, flags);
    8005cdb4:	abafc0ef          	jal	ra,8005906e <bf_get_int64>
bf_pow_int():
quickjs-nuttx/libbf.c:4623
    if (y1 < 0)
    8005cdb8:	6782                	ld	a5,0(sp)
    8005cdba:	0007d563          	bgez	a5,8005cdc4 <bf_pow_int+0x34>
quickjs-nuttx/libbf.c:4624
        y1 = -y1;
    8005cdbe:	40f007b3          	neg	a5,a5
    8005cdc2:	e03e                	sd	a5,0(sp)
quickjs-nuttx/libbf.c:4626
    prec1 = prec + ceil_log2(y1) * 2 + 8;
    8005cdc4:	6482                	ld	s1,0(sp)
    8005cdc6:	09a1                	addi	s3,s3,8
    8005cdc8:	8526                	mv	a0,s1
    8005cdca:	95efa0ef          	jal	ra,80056f28 <ceil_log2>
    8005cdce:	0015141b          	slliw	s0,a0,0x1
quickjs-nuttx/libbf.c:4627
    ret = bf_pow_ui(r, x, y1 < 0 ? -y1 : y1, prec1, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cdd2:	43f4d613          	srai	a2,s1,0x3f
    8005cdd6:	8cb1                	xor	s1,s1,a2
quickjs-nuttx/libbf.c:4626
    prec1 = prec + ceil_log2(y1) * 2 + 8;
    8005cdd8:	944e                	add	s0,s0,s3
quickjs-nuttx/libbf.c:4627
    ret = bf_pow_ui(r, x, y1 < 0 ? -y1 : y1, prec1, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cdda:	40c48633          	sub	a2,s1,a2
    8005cdde:	7e000713          	li	a4,2016
    8005cde2:	86a2                	mv	a3,s0
    8005cde4:	85da                	mv	a1,s6
    8005cde6:	854a                	mv	a0,s2
    8005cde8:	e83ff0ef          	jal	ra,8005cc6a <bf_pow_ui>
quickjs-nuttx/libbf.c:4628
    if (y->sign) {
    8005cdec:	008a2783          	lw	a5,8(s4)
quickjs-nuttx/libbf.c:4627
    ret = bf_pow_ui(r, x, y1 < 0 ? -y1 : y1, prec1, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cdf0:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:4628
    if (y->sign) {
    8005cdf2:	cb8d                	beqz	a5,8005ce24 <bf_pow_int+0x94>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005cdf4:	57fd                	li	a5,-1
    8005cdf6:	17fe                	slli	a5,a5,0x3f
bf_pow_int():
quickjs-nuttx/libbf.c:4630
        bf_set_ui(T, 1);
    8005cdf8:	4585                	li	a1,1
    8005cdfa:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005cdfc:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005cdfe:	e456                	sd	s5,8(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ce00:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ce02:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ce04:	f402                	sd	zero,40(sp)
bf_pow_int():
quickjs-nuttx/libbf.c:4630
        bf_set_ui(T, 1);
    8005ce06:	dd9fa0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4631
        ret |= bf_div(r, T, r, prec1, BF_RNDN | BF_FLAG_EXT_EXP);
    8005ce0a:	7e000713          	li	a4,2016
    8005ce0e:	86a2                	mv	a3,s0
    8005ce10:	864a                	mv	a2,s2
    8005ce12:	002c                	addi	a1,sp,8
    8005ce14:	854a                	mv	a0,s2
    8005ce16:	d9bfb0ef          	jal	ra,80058bb0 <bf_div>
    8005ce1a:	8cc9                	or	s1,s1,a0
quickjs-nuttx/libbf.c:4632
        bf_delete(T);
    8005ce1c:	0028                	addi	a0,sp,8
quickjs-nuttx/libbf.c:4631
        ret |= bf_div(r, T, r, prec1, BF_RNDN | BF_FLAG_EXT_EXP);
    8005ce1e:	2481                	sext.w	s1,s1
quickjs-nuttx/libbf.c:4632
        bf_delete(T);
    8005ce20:	c8bf90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4635
}
    8005ce24:	70a6                	ld	ra,104(sp)
    8005ce26:	7406                	ld	s0,96(sp)
    8005ce28:	6946                	ld	s2,80(sp)
    8005ce2a:	69a6                	ld	s3,72(sp)
    8005ce2c:	6a06                	ld	s4,64(sp)
    8005ce2e:	7ae2                	ld	s5,56(sp)
    8005ce30:	7b42                	ld	s6,48(sp)
    8005ce32:	8526                	mv	a0,s1
    8005ce34:	64e6                	ld	s1,88(sp)
    8005ce36:	6165                	addi	sp,sp,112
    8005ce38:	8082                	ret

000000008005ce3a <bf_mul_pow_radix>:
bf_mul_pow_radix():
quickjs-nuttx/libbf.c:2780
{
    8005ce3a:	7131                	addi	sp,sp,-192
    8005ce3c:	e556                	sd	s5,136(sp)
    8005ce3e:	fd06                	sd	ra,184(sp)
    8005ce40:	f922                	sd	s0,176(sp)
    8005ce42:	f526                	sd	s1,168(sp)
    8005ce44:	f14a                	sd	s2,160(sp)
    8005ce46:	ed4e                	sd	s3,152(sp)
    8005ce48:	e952                	sd	s4,144(sp)
    8005ce4a:	e15a                	sd	s6,128(sp)
    8005ce4c:	fcde                	sd	s7,120(sp)
    8005ce4e:	f8e2                	sd	s8,112(sp)
    8005ce50:	f4e6                	sd	s9,104(sp)
    8005ce52:	f0ea                	sd	s10,96(sp)
    8005ce54:	ecee                	sd	s11,88(sp)
    8005ce56:	8abe                	mv	s5,a5
quickjs-nuttx/libbf.c:2785
    if (T->len == 0) {
    8005ce58:	6d9c                	ld	a5,24(a1)
    8005ce5a:	e38d                	bnez	a5,8005ce7c <bf_mul_pow_radix+0x42>
quickjs-nuttx/libbf.c:2840
}
    8005ce5c:	744a                	ld	s0,176(sp)
    8005ce5e:	70ea                	ld	ra,184(sp)
    8005ce60:	74aa                	ld	s1,168(sp)
    8005ce62:	790a                	ld	s2,160(sp)
    8005ce64:	69ea                	ld	s3,152(sp)
    8005ce66:	6a4a                	ld	s4,144(sp)
    8005ce68:	6aaa                	ld	s5,136(sp)
    8005ce6a:	6b0a                	ld	s6,128(sp)
    8005ce6c:	7be6                	ld	s7,120(sp)
    8005ce6e:	7c46                	ld	s8,112(sp)
    8005ce70:	7ca6                	ld	s9,104(sp)
    8005ce72:	7d06                	ld	s10,96(sp)
    8005ce74:	6de6                	ld	s11,88(sp)
    8005ce76:	6129                	addi	sp,sp,192
quickjs-nuttx/libbf.c:2786
        return bf_set(r, T);
    8005ce78:	9aafb06f          	j	80058022 <bf_set>
    8005ce7c:	84aa                	mv	s1,a0
    8005ce7e:	89b6                	mv	s3,a3
    8005ce80:	893a                	mv	s2,a4
quickjs-nuttx/libbf.c:2787
    } else if (expn == 0) {
    8005ce82:	ea9d                	bnez	a3,8005ceb8 <bf_mul_pow_radix+0x7e>
quickjs-nuttx/libbf.c:2788
        ret = bf_set(r, T);
    8005ce84:	99efb0ef          	jal	ra,80058022 <bf_set>
    8005ce88:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2789
        ret |= bf_round(r, prec, flags);
    8005ce8a:	8656                	mv	a2,s5
    8005ce8c:	85ca                	mv	a1,s2
    8005ce8e:	8526                	mv	a0,s1
    8005ce90:	c62fb0ef          	jal	ra,800582f2 <bf_round>
    8005ce94:	8c49                	or	s0,s0,a0
    8005ce96:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2840
}
    8005ce98:	70ea                	ld	ra,184(sp)
    8005ce9a:	8522                	mv	a0,s0
    8005ce9c:	744a                	ld	s0,176(sp)
    8005ce9e:	74aa                	ld	s1,168(sp)
    8005cea0:	790a                	ld	s2,160(sp)
    8005cea2:	69ea                	ld	s3,152(sp)
    8005cea4:	6a4a                	ld	s4,144(sp)
    8005cea6:	6aaa                	ld	s5,136(sp)
    8005cea8:	6b0a                	ld	s6,128(sp)
    8005ceaa:	7be6                	ld	s7,120(sp)
    8005ceac:	7c46                	ld	s8,112(sp)
    8005ceae:	7ca6                	ld	s9,104(sp)
    8005ceb0:	7d06                	ld	s10,96(sp)
    8005ceb2:	6de6                	ld	s11,88(sp)
    8005ceb4:	6129                	addi	sp,sp,192
    8005ceb6:	8082                	ret
    8005ceb8:	8a2e                	mv	s4,a1
    8005ceba:	8bb2                	mv	s7,a2
quickjs-nuttx/libbf.c:2794
    expn_sign = 0;
    8005cebc:	4c01                	li	s8,0
quickjs-nuttx/libbf.c:2795
    if (e < 0) {
    8005cebe:	0006d563          	bgez	a3,8005cec8 <bf_mul_pow_radix+0x8e>
quickjs-nuttx/libbf.c:2796
        e = -e;
    8005cec2:	40d009b3          	neg	s3,a3
quickjs-nuttx/libbf.c:2797
        expn_sign = 1;
    8005cec6:	4c05                	li	s8,1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005cec8:	609c                	ld	a5,0(s1)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ceca:	d802                	sw	zero,48(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005cecc:	e082                	sd	zero,64(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005cece:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ced0:	57fd                	li	a5,-1
    8005ced2:	03f79713          	slli	a4,a5,0x3f
    8005ced6:	fc3a                	sd	a4,56(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ced8:	e482                	sd	zero,72(sp)
bf_mul_pow_radix():
quickjs-nuttx/libbf.c:2800
    if (prec == BF_PREC_INF) {
    8005ceda:	8389                	srli	a5,a5,0x2
    8005cedc:	06f90f63          	beq	s2,a5,8005cf5a <bf_mul_pow_radix+0x120>
quickjs-nuttx/libbf.c:2814
            extra_bits = ceil_log2(e) * 2 + 1;
    8005cee0:	854e                	mv	a0,s3
    8005cee2:	846fa0ef          	jal	ra,80056f28 <ceil_log2>
    8005cee6:	0015151b          	slliw	a0,a0,0x1
    8005ceea:	0015079b          	addiw	a5,a0,1
    8005ceee:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:2826
                !bf_can_round(r, prec, flags & BF_RND_MASK, prec1) &&
    8005cef0:	5ced                	li	s9,-5
    8005cef2:	007af793          	andi	a5,s5,7
quickjs-nuttx/libbf.c:2809
        ziv_extra_bits = 16;
    8005cef6:	4b41                	li	s6,16
quickjs-nuttx/libbf.c:2826
                !bf_can_round(r, prec, flags & BF_RND_MASK, prec1) &&
    8005cef8:	e83e                	sd	a5,16(sp)
    8005cefa:	001cdc93          	srli	s9,s9,0x1
quickjs-nuttx/libbf.c:2815
            ret = bf_pow_ui_ui(B, radix, e, prec1 + extra_bits, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cefe:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libbf.c:2811
            prec1 = prec + ziv_extra_bits;
    8005cf00:	012b0d33          	add	s10,s6,s2
quickjs-nuttx/libbf.c:2815
            ret = bf_pow_ui_ui(B, radix, e, prec1 + extra_bits, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cf04:	7e000713          	li	a4,2016
    8005cf08:	00fd06b3          	add	a3,s10,a5
    8005cf0c:	864e                	mv	a2,s3
    8005cf0e:	85de                	mv	a1,s7
    8005cf10:	1028                	addi	a0,sp,40
    8005cf12:	ec36                	sd	a3,24(sp)
    8005cf14:	e0bff0ef          	jal	ra,8005cd1e <bf_pow_ui_ui>
    8005cf18:	842a                	mv	s0,a0
bf_is_finite():
quickjs-nuttx/libbf.h:236
    return (a->expn < BF_EXP_INF);
    8005cf1a:	7de2                	ld	s11,56(sp)
bf_mul_pow_radix():
quickjs-nuttx/libbf.c:2819
            if (expn_sign)
    8005cf1c:	66e2                	ld	a3,24(sp)
quickjs-nuttx/libbf.c:2820
                ret |= bf_div(r, T, B, prec1 + extra_bits, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cf1e:	7e000713          	li	a4,2016
    8005cf22:	1030                	addi	a2,sp,40
    8005cf24:	85d2                	mv	a1,s4
    8005cf26:	8526                	mv	a0,s1
quickjs-nuttx/libbf.c:2819
            if (expn_sign)
    8005cf28:	060c0a63          	beqz	s8,8005cf9c <bf_mul_pow_radix+0x162>
quickjs-nuttx/libbf.c:2820
                ret |= bf_div(r, T, B, prec1 + extra_bits, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cf2c:	c85fb0ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:2822
                ret |= bf_mul(r, T, B, prec1 + extra_bits, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cf30:	8c49                	or	s0,s0,a0
    8005cf32:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2823
            if (ret & BF_ST_MEM_ERROR)
    8005cf34:	02047793          	andi	a5,s0,32
    8005cf38:	e7b1                	bnez	a5,8005cf84 <bf_mul_pow_radix+0x14a>
quickjs-nuttx/libbf.c:2825
            if ((ret & BF_ST_INEXACT) &&
    8005cf3a:	8841                	andi	s0,s0,16
    8005cf3c:	c03d                	beqz	s0,8005cfa2 <bf_mul_pow_radix+0x168>
quickjs-nuttx/libbf.c:2826 (discriminator 1)
                !bf_can_round(r, prec, flags & BF_RND_MASK, prec1) &&
    8005cf3e:	6642                	ld	a2,16(sp)
    8005cf40:	86ea                	mv	a3,s10
    8005cf42:	85ca                	mv	a1,s2
    8005cf44:	8526                	mv	a0,s1
    8005cf46:	a5afb0ef          	jal	ra,800581a0 <bf_can_round>
quickjs-nuttx/libbf.c:2825 (discriminator 1)
            if ((ret & BF_ST_INEXACT) &&
    8005cf4a:	ed21                	bnez	a0,8005cfa2 <bf_mul_pow_radix+0x168>
quickjs-nuttx/libbf.c:2826
                !bf_can_round(r, prec, flags & BF_RND_MASK, prec1) &&
    8005cf4c:	05bccb63          	blt	s9,s11,8005cfa2 <bf_mul_pow_radix+0x168>
quickjs-nuttx/libbf.c:2829
                ziv_extra_bits = ziv_extra_bits  + (ziv_extra_bits / 2);
    8005cf50:	4789                	li	a5,2
    8005cf52:	02fb47b3          	div	a5,s6,a5
    8005cf56:	9b3e                	add	s6,s6,a5
quickjs-nuttx/libbf.c:2811
            prec1 = prec + ziv_extra_bits;
    8005cf58:	b75d                	j	8005cefe <bf_mul_pow_radix+0xc4>
quickjs-nuttx/libbf.c:2802
        ret = bf_pow_ui_ui(B, radix, e, BF_PREC_INF, BF_RNDN);
    8005cf5a:	4701                	li	a4,0
    8005cf5c:	86ca                	mv	a3,s2
    8005cf5e:	864e                	mv	a2,s3
    8005cf60:	85de                	mv	a1,s7
    8005cf62:	1028                	addi	a0,sp,40
    8005cf64:	dbbff0ef          	jal	ra,8005cd1e <bf_pow_ui_ui>
    8005cf68:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2803
        if (expn_sign) {
    8005cf6a:	020c0163          	beqz	s8,8005cf8c <bf_mul_pow_radix+0x152>
quickjs-nuttx/libbf.c:2804
            ret |= bf_div(r, T, B, T->len * LIMB_BITS, BF_RNDN);
    8005cf6e:	018a3683          	ld	a3,24(s4)
    8005cf72:	4701                	li	a4,0
    8005cf74:	1030                	addi	a2,sp,40
    8005cf76:	069a                	slli	a3,a3,0x6
    8005cf78:	85d2                	mv	a1,s4
    8005cf7a:	8526                	mv	a0,s1
    8005cf7c:	c35fb0ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:2833
                ret = bf_round(r, prec, flags) | (ret & BF_ST_INEXACT);
    8005cf80:	8c49                	or	s0,s0,a0
    8005cf82:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2838
    bf_delete(B);
    8005cf84:	1028                	addi	a0,sp,40
    8005cf86:	b25f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2839
    return ret;
    8005cf8a:	b739                	j	8005ce98 <bf_mul_pow_radix+0x5e>
quickjs-nuttx/libbf.c:2806
            ret |= bf_mul(r, T, B, BF_PREC_INF, BF_RNDN);
    8005cf8c:	4701                	li	a4,0
    8005cf8e:	86ca                	mv	a3,s2
    8005cf90:	1030                	addi	a2,sp,40
    8005cf92:	85d2                	mv	a1,s4
    8005cf94:	8526                	mv	a0,s1
    8005cf96:	f9aff0ef          	jal	ra,8005c730 <bf_mul>
    8005cf9a:	b7dd                	j	8005cf80 <bf_mul_pow_radix+0x146>
quickjs-nuttx/libbf.c:2822
                ret |= bf_mul(r, T, B, prec1 + extra_bits, BF_RNDN | BF_FLAG_EXT_EXP);
    8005cf9c:	f94ff0ef          	jal	ra,8005c730 <bf_mul>
    8005cfa0:	bf41                	j	8005cf30 <bf_mul_pow_radix+0xf6>
quickjs-nuttx/libbf.c:2833
                ret = bf_round(r, prec, flags) | (ret & BF_ST_INEXACT);
    8005cfa2:	8656                	mv	a2,s5
    8005cfa4:	85ca                	mv	a1,s2
    8005cfa6:	8526                	mv	a0,s1
    8005cfa8:	b4afb0ef          	jal	ra,800582f2 <bf_round>
    8005cfac:	bfd1                	j	8005cf80 <bf_mul_pow_radix+0x146>

000000008005cfae <bf_integer_from_radix_rec>:
bf_integer_from_radix_rec():
quickjs-nuttx/libbf.c:2718
{
    8005cfae:	7175                	addi	sp,sp,-144
    8005cfb0:	f0d2                	sd	s4,96(sp)
    8005cfb2:	e8da                	sd	s6,80(sp)
    8005cfb4:	e506                	sd	ra,136(sp)
    8005cfb6:	8b3e                	mv	s6,a5
    8005cfb8:	e122                	sd	s0,128(sp)
    8005cfba:	fca6                	sd	s1,120(sp)
    8005cfbc:	f8ca                	sd	s2,112(sp)
    8005cfbe:	f4ce                	sd	s3,104(sp)
    8005cfc0:	ecd6                	sd	s5,88(sp)
    8005cfc2:	e4de                	sd	s7,72(sp)
    8005cfc4:	e0e2                	sd	s8,64(sp)
    8005cfc6:	fc66                	sd	s9,56(sp)
quickjs-nuttx/libbf.c:2720
    if (n == 1) {
    8005cfc8:	4785                	li	a5,1
quickjs-nuttx/libbf.c:2718
{
    8005cfca:	8a2e                	mv	s4,a1
quickjs-nuttx/libbf.c:2720
    if (n == 1) {
    8005cfcc:	02f61163          	bne	a2,a5,8005cfee <bf_integer_from_radix_rec+0x40>
quickjs-nuttx/libbf.c:2751
}
    8005cfd0:	640a                	ld	s0,128(sp)
    8005cfd2:	60aa                	ld	ra,136(sp)
    8005cfd4:	74e6                	ld	s1,120(sp)
    8005cfd6:	7946                	ld	s2,112(sp)
    8005cfd8:	79a6                	ld	s3,104(sp)
    8005cfda:	7a06                	ld	s4,96(sp)
    8005cfdc:	6ae6                	ld	s5,88(sp)
    8005cfde:	6b46                	ld	s6,80(sp)
    8005cfe0:	6ba6                	ld	s7,72(sp)
    8005cfe2:	6c06                	ld	s8,64(sp)
    8005cfe4:	7ce2                	ld	s9,56(sp)
quickjs-nuttx/libbf.c:2721
        ret = bf_set_ui(r, tab[0]);
    8005cfe6:	618c                	ld	a1,0(a1)
quickjs-nuttx/libbf.c:2751
}
    8005cfe8:	6149                	addi	sp,sp,144
quickjs-nuttx/libbf.c:2721
        ret = bf_set_ui(r, tab[0]);
    8005cfea:	bf5fa06f          	j	80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:2729
        B = &pow_tab[level];
    8005cfee:	02800913          	li	s2,40
quickjs-nuttx/libbf.c:2726
        n2 = (((n0 * 2) >> (level + 1)) + 1) / 2;
    8005cff2:	00168b9b          	addiw	s7,a3,1
quickjs-nuttx/libbf.c:2729
        B = &pow_tab[level];
    8005cff6:	032686b3          	mul	a3,a3,s2
quickjs-nuttx/libbf.c:2726
        n2 = (((n0 * 2) >> (level + 1)) + 1) / 2;
    8005cffa:	00171493          	slli	s1,a4,0x1
    8005cffe:	0174d4b3          	srl	s1,s1,s7
