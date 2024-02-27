    80058002:	409a0a33          	sub	s4,s4,s1
quickjs-nuttx/libbf.c:602
        memmove(r->tab, r->tab + i, l * sizeof(limb_t));
    80058006:	003a1613          	slli	a2,s4,0x3
    8005800a:	3f70b0ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/libbf.c:604
    bf_resize(r, l); /* cannot fail */
    8005800e:	85d2                	mv	a1,s4
    80058010:	8522                	mv	a0,s0
    80058012:	b73ff0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:605
    return ret;
    80058016:	854e                	mv	a0,s3
    80058018:	bdd1                	j	80057eec <__bf_round+0x170>
quickjs-nuttx/libbf.c:595
        i = 0;
    8005801a:	4481                	li	s1,0
    8005801c:	bfc9                	j	80057fee <__bf_round+0x272>
quickjs-nuttx/libbf.c:599
        i++;
    8005801e:	0485                	addi	s1,s1,1
    80058020:	bfd9                	j	80057ff6 <__bf_round+0x27a>

0000000080058022 <bf_set>:
bf_set():
quickjs-nuttx/libbf.c:303
{
    80058022:	1101                	addi	sp,sp,-32
    80058024:	e04a                	sd	s2,0(sp)
    80058026:	ec06                	sd	ra,24(sp)
    80058028:	e822                	sd	s0,16(sp)
    8005802a:	e426                	sd	s1,8(sp)
quickjs-nuttx/libbf.c:305
        return 0;
    8005802c:	4901                	li	s2,0
quickjs-nuttx/libbf.c:304
    if (r == a)
    8005802e:	00b50e63          	beq	a0,a1,8005804a <bf_set+0x28>
    80058032:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:306
    if (bf_resize(r, a->len)) {
    80058034:	6d8c                	ld	a1,24(a1)
    80058036:	84aa                	mv	s1,a0
    80058038:	b4dff0ef          	jal	ra,80057b84 <bf_resize>
    8005803c:	892a                	mv	s2,a0
    8005803e:	cd09                	beqz	a0,80058058 <bf_set+0x36>
quickjs-nuttx/libbf.c:307
        bf_set_nan(r);
    80058040:	8526                	mv	a0,s1
    80058042:	b7dff0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:308
        return BF_ST_MEM_ERROR;
    80058046:	02000913          	li	s2,32
quickjs-nuttx/libbf.c:314
}
    8005804a:	60e2                	ld	ra,24(sp)
    8005804c:	6442                	ld	s0,16(sp)
    8005804e:	64a2                	ld	s1,8(sp)
    80058050:	854a                	mv	a0,s2
    80058052:	6902                	ld	s2,0(sp)
    80058054:	6105                	addi	sp,sp,32
    80058056:	8082                	ret
quickjs-nuttx/libbf.c:310
    r->sign = a->sign;
    80058058:	441c                	lw	a5,8(s0)
quickjs-nuttx/libbf.c:312
    memcpy(r->tab, a->tab, a->len * sizeof(limb_t));
    8005805a:	7088                	ld	a0,32(s1)
quickjs-nuttx/libbf.c:310
    r->sign = a->sign;
    8005805c:	c49c                	sw	a5,8(s1)
quickjs-nuttx/libbf.c:311
    r->expn = a->expn;
    8005805e:	681c                	ld	a5,16(s0)
    80058060:	e89c                	sd	a5,16(s1)
quickjs-nuttx/libbf.c:312
    memcpy(r->tab, a->tab, a->len * sizeof(limb_t));
    80058062:	6c10                	ld	a2,24(s0)
    80058064:	700c                	ld	a1,32(s0)
    80058066:	060e                	slli	a2,a2,0x3
    80058068:	5450b0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libbf.c:313
    return 0;
    8005806c:	bff9                	j	8005804a <bf_set+0x28>

000000008005806e <bf_move>:
bf_move():
quickjs-nuttx/libbf.c:320
    if (r == a)
    8005806e:	02b50763          	beq	a0,a1,8005809c <bf_move+0x2e>
quickjs-nuttx/libbf.c:318
{
    80058072:	1101                	addi	sp,sp,-32
    80058074:	ec06                	sd	ra,24(sp)
    80058076:	e822                	sd	s0,16(sp)
    80058078:	e426                	sd	s1,8(sp)
    8005807a:	842a                	mv	s0,a0
    8005807c:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:322
    bf_free(s, r->tab);
    8005807e:	710c                	ld	a1,32(a0)
    80058080:	6108                	ld	a0,0(a0)
    80058082:	a1ffe0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:323
    *r = *a;
    80058086:	85a6                	mv	a1,s1
    80058088:	8522                	mv	a0,s0
    8005808a:	02800613          	li	a2,40
    8005808e:	51f0b0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libbf.c:324
}
    80058092:	60e2                	ld	ra,24(sp)
    80058094:	6442                	ld	s0,16(sp)
    80058096:	64a2                	ld	s1,8(sp)
    80058098:	6105                	addi	sp,sp,32
    8005809a:	8082                	ret
    8005809c:	8082                	ret

000000008005809e <bf_op2>:
bf_op2():
quickjs-nuttx/libbf.c:2211
{
    8005809e:	715d                	addi	sp,sp,-80
    800580a0:	e0a2                	sd	s0,64(sp)
    800580a2:	e486                	sd	ra,72(sp)
    800580a4:	fc26                	sd	s1,56(sp)
    800580a6:	842a                	mv	s0,a0
    800580a8:	882e                	mv	a6,a1
    800580aa:	88b2                	mv	a7,a2
    800580ac:	8336                	mv	t1,a3
    800580ae:	8e3a                	mv	t3,a4
quickjs-nuttx/libbf.c:2215
    if (r == a || r == b) {
    800580b0:	00b50963          	beq	a0,a1,800580c2 <bf_op2+0x24>
quickjs-nuttx/libbf.c:2215 (discriminator 1)
    800580b4:	00c50763          	beq	a0,a2,800580c2 <bf_op2+0x24>
quickjs-nuttx/libbf.c:2223
}
    800580b8:	6406                	ld	s0,64(sp)
    800580ba:	60a6                	ld	ra,72(sp)
    800580bc:	74e2                	ld	s1,56(sp)
    800580be:	6161                	addi	sp,sp,80
quickjs-nuttx/libbf.c:2220
        ret = func(r, a, b, prec, flags);
    800580c0:	8782                	jr	a5
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800580c2:	6018                	ld	a4,0(s0)
bf_op2():
quickjs-nuttx/libbf.c:2217
        ret = func(&tmp, a, b, prec, flags);
    800580c4:	85c2                	mv	a1,a6
    800580c6:	869a                	mv	a3,t1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800580c8:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800580ca:	577d                	li	a4,-1
    800580cc:	177e                	slli	a4,a4,0x3f
    800580ce:	ec3a                	sd	a4,24(sp)
bf_op2():
quickjs-nuttx/libbf.c:2217
        ret = func(&tmp, a, b, prec, flags);
    800580d0:	8646                	mv	a2,a7
    800580d2:	8772                	mv	a4,t3
    800580d4:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    800580d6:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    800580d8:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    800580da:	f402                	sd	zero,40(sp)
bf_op2():
quickjs-nuttx/libbf.c:2217
        ret = func(&tmp, a, b, prec, flags);
    800580dc:	9782                	jalr	a5
    800580de:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:2218
        bf_move(r, &tmp);
    800580e0:	002c                	addi	a1,sp,8
    800580e2:	8522                	mv	a0,s0
    800580e4:	f8bff0ef          	jal	ra,8005806e <bf_move>
quickjs-nuttx/libbf.c:2223
}
    800580e8:	60a6                	ld	ra,72(sp)
    800580ea:	6406                	ld	s0,64(sp)
    800580ec:	8526                	mv	a0,s1
    800580ee:	74e2                	ld	s1,56(sp)
    800580f0:	6161                	addi	sp,sp,80
    800580f2:	8082                	ret

00000000800580f4 <bf_normalize_and_round>:
bf_normalize_and_round():
quickjs-nuttx/libbf.c:610
{
    800580f4:	7179                	addi	sp,sp,-48
    800580f6:	f022                	sd	s0,32(sp)
    800580f8:	f406                	sd	ra,40(sp)
quickjs-nuttx/libbf.c:616
    l = r->len;
    800580fa:	6d1c                	ld	a5,24(a0)
quickjs-nuttx/libbf.c:610
{
    800580fc:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:616
    l = r->len;
    800580fe:	86be                	mv	a3,a5
quickjs-nuttx/libbf.c:617
    while (l > 0 && r->tab[l - 1] == 0)
    80058100:	c6c1                	beqz	a3,80058188 <bf_normalize_and_round+0x94>
quickjs-nuttx/libbf.c:617 (discriminator 1)
    80058102:	00369713          	slli	a4,a3,0x3
    80058106:	ff870513          	addi	a0,a4,-8
    8005810a:	7018                	ld	a4,32(s0)
    8005810c:	972a                	add	a4,a4,a0
    8005810e:	6308                	ld	a0,0(a4)
    80058110:	c929                	beqz	a0,80058162 <bf_normalize_and_round+0x6e>
quickjs-nuttx/libbf.c:625
        r->expn -= (r->len - l) * LIMB_BITS;
    80058112:	6808                	ld	a0,16(s0)
    80058114:	8f95                	sub	a5,a5,a3
    80058116:	079a                	slli	a5,a5,0x6
    80058118:	40f507b3          	sub	a5,a0,a5
    8005811c:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:627
        v = r->tab[l - 1];
    8005811e:	6308                	ld	a0,0(a4)
clz():
quickjs-nuttx/libbf.c:98
    if (a == 0) {
    80058120:	e139                	bnez	a0,80058166 <bf_normalize_and_round+0x72>
quickjs-nuttx/libbf.c:99
        return LIMB_BITS;
    80058122:	04000513          	li	a0,64
bf_normalize_and_round():
quickjs-nuttx/libbf.c:633 (discriminator 1)
                r->tab[i] = (a << shift) | (v >> (LIMB_BITS - shift));
    80058126:	04000893          	li	a7,64
quickjs-nuttx/libbf.c:616 (discriminator 1)
    l = r->len;
    8005812a:	4701                	li	a4,0
    8005812c:	4301                	li	t1,0
quickjs-nuttx/libbf.c:633 (discriminator 1)
                r->tab[i] = (a << shift) | (v >> (LIMB_BITS - shift));
    8005812e:	40a888bb          	subw	a7,a7,a0
quickjs-nuttx/libbf.c:632 (discriminator 3)
                a = r->tab[i];
    80058132:	02043803          	ld	a6,32(s0)
    80058136:	00371793          	slli	a5,a4,0x3
quickjs-nuttx/libbf.c:631 (discriminator 3)
            for(i = 0; i < l; i++) {
    8005813a:	0705                	addi	a4,a4,1
quickjs-nuttx/libbf.c:632 (discriminator 3)
                a = r->tab[i];
    8005813c:	983e                	add	a6,a6,a5
    8005813e:	879a                	mv	a5,t1
    80058140:	00083303          	ld	t1,0(a6)
quickjs-nuttx/libbf.c:633 (discriminator 3)
                r->tab[i] = (a << shift) | (v >> (LIMB_BITS - shift));
    80058144:	0117d7b3          	srl	a5,a5,a7
    80058148:	00a31e33          	sll	t3,t1,a0
    8005814c:	01c7e7b3          	or	a5,a5,t3
    80058150:	00f83023          	sd	a5,0(a6)
quickjs-nuttx/libbf.c:631 (discriminator 3)
            for(i = 0; i < l; i++) {
    80058154:	fce69fe3          	bne	a3,a4,80058132 <bf_normalize_and_round+0x3e>
quickjs-nuttx/libbf.c:636
            r->expn -= shift;
    80058158:	681c                	ld	a5,16(s0)
    8005815a:	40a78533          	sub	a0,a5,a0
    8005815e:	e808                	sd	a0,16(s0)
    80058160:	a829                	j	8005817a <bf_normalize_and_round+0x86>
quickjs-nuttx/libbf.c:618
        l--;
    80058162:	16fd                	addi	a3,a3,-1
    80058164:	bf71                	j	80058100 <bf_normalize_and_round+0xc>
    80058166:	ec32                	sd	a2,24(sp)
    80058168:	e82e                	sd	a1,16(sp)
    8005816a:	e436                	sd	a3,8(sp)
clz64():
quickjs-nuttx/cutils.h:126
    8005816c:	d2bab0ef          	jal	ra,80003e96 <__clzdi2>
    80058170:	2501                	sext.w	a0,a0
bf_normalize_and_round():
quickjs-nuttx/libbf.c:629
        if (shift != 0) {
    80058172:	66a2                	ld	a3,8(sp)
    80058174:	65c2                	ld	a1,16(sp)
    80058176:	6662                	ld	a2,24(sp)
    80058178:	f55d                	bnez	a0,80058126 <bf_normalize_and_round+0x32>
quickjs-nuttx/libbf.c:638
        ret = __bf_round(r, prec1, flags, l, 0);
    8005817a:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:642
}
    8005817c:	7402                	ld	s0,32(sp)
    8005817e:	70a2                	ld	ra,40(sp)
quickjs-nuttx/libbf.c:638
        ret = __bf_round(r, prec1, flags, l, 0);
    80058180:	4701                	li	a4,0
quickjs-nuttx/libbf.c:642
}
    80058182:	6145                	addi	sp,sp,48
quickjs-nuttx/libbf.c:638
        ret = __bf_round(r, prec1, flags, l, 0);
    80058184:	bf9ff06f          	j	80057d7c <__bf_round>
quickjs-nuttx/libbf.c:621
        r->expn = BF_EXP_ZERO;
    80058188:	57fd                	li	a5,-1
    8005818a:	17fe                	slli	a5,a5,0x3f
    8005818c:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:622
        bf_resize(r, 0); /* cannot fail */
    8005818e:	8522                	mv	a0,s0
    80058190:	4581                	li	a1,0
    80058192:	9f3ff0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:642
}
    80058196:	70a2                	ld	ra,40(sp)
    80058198:	7402                	ld	s0,32(sp)
    8005819a:	4501                	li	a0,0
    8005819c:	6145                	addi	sp,sp,48
    8005819e:	8082                	ret

00000000800581a0 <bf_can_round>:
bf_can_round():
quickjs-nuttx/libbf.c:649
{
    800581a0:	7139                	addi	sp,sp,-64
    800581a2:	f822                	sd	s0,48(sp)
    800581a4:	fc06                	sd	ra,56(sp)
    800581a6:	f426                	sd	s1,40(sp)
    800581a8:	f04a                	sd	s2,32(sp)
    800581aa:	ec4e                	sd	s3,24(sp)
    800581ac:	e852                	sd	s4,16(sp)
    800581ae:	e456                	sd	s5,8(sp)
    800581b0:	e05a                	sd	s6,0(sp)
    800581b2:	8436                	mv	s0,a3
quickjs-nuttx/libbf.c:654
    if (a->expn == BF_EXP_INF || a->expn == BF_EXP_NAN)
    800581b4:	6914                	ld	a3,16(a0)
    800581b6:	576d                	li	a4,-5
    800581b8:	8305                	srli	a4,a4,0x1
    800581ba:	06d74c63          	blt	a4,a3,80058232 <bf_can_round+0x92>
quickjs-nuttx/libbf.c:656
    if (rnd_mode == BF_RNDF) {
    800581be:	4719                	li	a4,6
    800581c0:	892e                	mv	s2,a1
    800581c2:	84b2                	mv	s1,a2
    800581c4:	02e61363          	bne	a2,a4,800581ea <bf_can_round+0x4a>
quickjs-nuttx/libbf.c:657
        return (k >= (prec + 1));
    800581c8:	00158513          	addi	a0,a1,1
    800581cc:	00a42533          	slt	a0,s0,a0
    800581d0:	00154513          	xori	a0,a0,1
    800581d4:	2501                	sext.w	a0,a0
quickjs-nuttx/libbf.c:681
}
    800581d6:	70e2                	ld	ra,56(sp)
    800581d8:	7442                	ld	s0,48(sp)
    800581da:	74a2                	ld	s1,40(sp)
    800581dc:	7902                	ld	s2,32(sp)
    800581de:	69e2                	ld	s3,24(sp)
    800581e0:	6a42                	ld	s4,16(sp)
    800581e2:	6aa2                	ld	s5,8(sp)
    800581e4:	6b02                	ld	s6,0(sp)
    800581e6:	6121                	addi	sp,sp,64
    800581e8:	8082                	ret
quickjs-nuttx/libbf.c:659
    if (a->expn == BF_EXP_ZERO)
    800581ea:	577d                	li	a4,-1
    800581ec:	177e                	slli	a4,a4,0x3f
    800581ee:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:655
        return FALSE;
    800581f0:	4501                	li	a0,0
quickjs-nuttx/libbf.c:659
    if (a->expn == BF_EXP_ZERO)
    800581f2:	fee682e3          	beq	a3,a4,800581d6 <bf_can_round+0x36>
quickjs-nuttx/libbf.c:662
    if (k < (prec + 2))
    800581f6:	00258713          	addi	a4,a1,2
    800581fa:	fce44ee3          	blt	s0,a4,800581d6 <bf_can_round+0x36>
quickjs-nuttx/libbf.c:664
    bit_pos = a->len * LIMB_BITS - 1 - prec;
    800581fe:	0187bb03          	ld	s6,24(a5)
quickjs-nuttx/libbf.c:669
    bit = get_bit(a->tab, a->len, bit_pos);
    80058202:	0207ba83          	ld	s5,32(a5)
quickjs-nuttx/libbf.c:661
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    80058206:	98ed                	andi	s1,s1,-5
quickjs-nuttx/libbf.c:664
    bit_pos = a->len * LIMB_BITS - 1 - prec;
    80058208:	006b1993          	slli	s3,s6,0x6
    8005820c:	40b989b3          	sub	s3,s3,a1
quickjs-nuttx/libbf.c:669
    bit = get_bit(a->tab, a->len, bit_pos);
    80058210:	fff98613          	addi	a2,s3,-1
    80058214:	85da                	mv	a1,s6
    80058216:	8556                	mv	a0,s5
    80058218:	fff44413          	not	s0,s0
    8005821c:	909fe0ef          	jal	ra,80056b24 <get_bit>
quickjs-nuttx/libbf.c:661
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    80058220:	0014b493          	seqz	s1,s1
    80058224:	944a                	add	s0,s0,s2
quickjs-nuttx/libbf.c:670
    bit_pos--;
    80058226:	ffe98a13          	addi	s4,s3,-2
quickjs-nuttx/libbf.c:672
    bit ^= is_rndn;
    8005822a:	8ca9                	xor	s1,s1,a0
quickjs-nuttx/libbf.c:674
    while (n != 0) {
    8005822c:	944e                	add	s0,s0,s3
    8005822e:	008a1463          	bne	s4,s0,80058236 <bf_can_round+0x96>
quickjs-nuttx/libbf.c:655
        return FALSE;
    80058232:	4501                	li	a0,0
    80058234:	b74d                	j	800581d6 <bf_can_round+0x36>
quickjs-nuttx/libbf.c:675
        if (get_bit(a->tab, a->len, bit_pos) != bit)
    80058236:	8652                	mv	a2,s4
    80058238:	85da                	mv	a1,s6
    8005823a:	8556                	mv	a0,s5
    8005823c:	8e9fe0ef          	jal	ra,80056b24 <get_bit>
    80058240:	00a49463          	bne	s1,a0,80058248 <bf_can_round+0xa8>
quickjs-nuttx/libbf.c:677
        bit_pos--;
    80058244:	1a7d                	addi	s4,s4,-1
quickjs-nuttx/libbf.c:678
        n--;
    80058246:	b7e5                	j	8005822e <bf_can_round+0x8e>
quickjs-nuttx/libbf.c:676
            return TRUE;
    80058248:	4505                	li	a0,1
    8005824a:	b771                	j	800581d6 <bf_can_round+0x36>

000000008005824c <bf_ziv_rounding>:
bf_ziv_rounding():
quickjs-nuttx/libbf.c:4245
{
    8005824c:	715d                	addi	sp,sp,-80
    8005824e:	e0a2                	sd	s0,64(sp)
    80058250:	fc26                	sd	s1,56(sp)
    80058252:	f84a                	sd	s2,48(sp)
    80058254:	f44e                	sd	s3,40(sp)
    80058256:	f052                	sd	s4,32(sp)
    80058258:	89ba                	mv	s3,a4
    8005825a:	8a3e                	mv	s4,a5
    8005825c:	e486                	sd	ra,72(sp)
    8005825e:	ec56                	sd	s5,24(sp)
    80058260:	e85a                	sd	s6,16(sp)
    80058262:	e45e                	sd	s7,8(sp)
    80058264:	e062                	sd	s8,0(sp)
quickjs-nuttx/libbf.c:4249
    rnd_mode = flags & BF_RND_MASK;
    80058266:	0076f793          	andi	a5,a3,7
quickjs-nuttx/libbf.c:4250
    if (rnd_mode == BF_RNDF) {
    8005826a:	4719                	li	a4,6
quickjs-nuttx/libbf.c:4245
{
    8005826c:	842a                	mv	s0,a0
    8005826e:	84b2                	mv	s1,a2
    80058270:	8936                	mv	s2,a3
quickjs-nuttx/libbf.c:4250
    if (rnd_mode == BF_RNDF) {
    80058272:	02e79863          	bne	a5,a4,800582a2 <bf_ziv_rounding+0x56>
quickjs-nuttx/libbf.c:4252
        f(r, a, prec, opaque);
    80058276:	86d2                	mv	a3,s4
    80058278:	9982                	jalr	s3
quickjs-nuttx/libbf.c:4253
        ret = 0;
    8005827a:	4501                	li	a0,0
quickjs-nuttx/libbf.c:4278
    if (r->len == 0)
    8005827c:	6c14                	ld	a3,24(s0)
    8005827e:	ceb1                	beqz	a3,800582da <bf_ziv_rounding+0x8e>
quickjs-nuttx/libbf.c:4281
        return __bf_round(r, prec, flags, r->len, ret);
    80058280:	872a                	mv	a4,a0
    80058282:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:4282
}
    80058284:	6406                	ld	s0,64(sp)
    80058286:	60a6                	ld	ra,72(sp)
    80058288:	79a2                	ld	s3,40(sp)
    8005828a:	7a02                	ld	s4,32(sp)
    8005828c:	6ae2                	ld	s5,24(sp)
    8005828e:	6b42                	ld	s6,16(sp)
    80058290:	6ba2                	ld	s7,8(sp)
    80058292:	6c02                	ld	s8,0(sp)
quickjs-nuttx/libbf.c:4281
        return __bf_round(r, prec, flags, r->len, ret);
    80058294:	864a                	mv	a2,s2
    80058296:	85a6                	mv	a1,s1
quickjs-nuttx/libbf.c:4282
}
    80058298:	7942                	ld	s2,48(sp)
    8005829a:	74e2                	ld	s1,56(sp)
    8005829c:	6161                	addi	sp,sp,80
quickjs-nuttx/libbf.c:4281
        return __bf_round(r, prec, flags, r->len, ret);
    8005829e:	adfff06f          	j	80057d7c <__bf_round>
    800582a2:	8b2e                	mv	s6,a1
    800582a4:	02000a93          	li	s5,32
    800582a8:	00078c1b          	sext.w	s8,a5
quickjs-nuttx/libbf.c:4257
            prec1 = prec + ziv_extra_bits;
    800582ac:	009a8bb3          	add	s7,s5,s1
quickjs-nuttx/libbf.c:4258
            ret = f(r, a, prec1, opaque);
    800582b0:	86d2                	mv	a3,s4
    800582b2:	865e                	mv	a2,s7
    800582b4:	85da                	mv	a1,s6
    800582b6:	8522                	mv	a0,s0
    800582b8:	9982                	jalr	s3
quickjs-nuttx/libbf.c:4259
            if (ret & (BF_ST_OVERFLOW | BF_ST_UNDERFLOW | BF_ST_MEM_ERROR)) {
    800582ba:	02c57793          	andi	a5,a0,44
    800582be:	ef91                	bnez	a5,800582da <bf_ziv_rounding+0x8e>
quickjs-nuttx/libbf.c:4266
            if (!(ret & BF_ST_INEXACT)) {
    800582c0:	8941                	andi	a0,a0,16
    800582c2:	dd4d                	beqz	a0,8005827c <bf_ziv_rounding+0x30>
quickjs-nuttx/libbf.c:4270
            if (bf_can_round(r, prec, rnd_mode, prec1)) {
    800582c4:	86de                	mv	a3,s7
    800582c6:	8662                	mv	a2,s8
    800582c8:	85a6                	mv	a1,s1
    800582ca:	8522                	mv	a0,s0
    800582cc:	ed5ff0ef          	jal	ra,800581a0 <bf_can_round>
    800582d0:	e119                	bnez	a0,800582d6 <bf_ziv_rounding+0x8a>
quickjs-nuttx/libbf.c:4274
            ziv_extra_bits = ziv_extra_bits * 2;
    800582d2:	0a86                	slli	s5,s5,0x1
quickjs-nuttx/libbf.c:4257
            prec1 = prec + ziv_extra_bits;
    800582d4:	bfe1                	j	800582ac <bf_ziv_rounding+0x60>
quickjs-nuttx/libbf.c:4271
                ret = BF_ST_INEXACT;
    800582d6:	4541                	li	a0,16
    800582d8:	b755                	j	8005827c <bf_ziv_rounding+0x30>
quickjs-nuttx/libbf.c:4282
}
    800582da:	60a6                	ld	ra,72(sp)
    800582dc:	6406                	ld	s0,64(sp)
    800582de:	74e2                	ld	s1,56(sp)
    800582e0:	7942                	ld	s2,48(sp)
    800582e2:	79a2                	ld	s3,40(sp)
    800582e4:	7a02                	ld	s4,32(sp)
    800582e6:	6ae2                	ld	s5,24(sp)
    800582e8:	6b42                	ld	s6,16(sp)
    800582ea:	6ba2                	ld	s7,8(sp)
    800582ec:	6c02                	ld	s8,0(sp)
    800582ee:	6161                	addi	sp,sp,80
    800582f0:	8082                	ret

00000000800582f2 <bf_round>:
bf_round():
quickjs-nuttx/libbf.c:686
    if (r->len == 0)
    800582f2:	6d14                	ld	a3,24(a0)
    800582f4:	c681                	beqz	a3,800582fc <bf_round+0xa>
quickjs-nuttx/libbf.c:688
    return __bf_round(r, prec, flags, r->len, 0);
    800582f6:	4701                	li	a4,0
    800582f8:	a85ff06f          	j	80057d7c <__bf_round>
quickjs-nuttx/libbf.c:689
}
    800582fc:	4501                	li	a0,0
    800582fe:	8082                	ret

0000000080058300 <bf_const_get>:
bf_const_get():
quickjs-nuttx/libbf.c:4177
{
    80058300:	7159                	addi	sp,sp,-112
    80058302:	f062                	sd	s8,32(sp)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058304:	5c7d                	li	s8,-1
bf_const_get():
quickjs-nuttx/libbf.c:4177
{
    80058306:	f0a2                	sd	s0,96(sp)
    80058308:	eca6                	sd	s1,88(sp)
    8005830a:	e8ca                	sd	s2,80(sp)
    8005830c:	e4ce                	sd	s3,72(sp)
    8005830e:	e0d2                	sd	s4,64(sp)
    80058310:	f85a                	sd	s6,48(sp)
    80058312:	f45e                	sd	s7,40(sp)
    80058314:	ec66                	sd	s9,24(sp)
    80058316:	f486                	sd	ra,104(sp)
    80058318:	fc56                	sd	s5,56(sp)
    8005831a:	84aa                	mv	s1,a0
    8005831c:	892e                	mv	s2,a1
    8005831e:	89b2                	mv	s3,a2
    80058320:	8436                	mv	s0,a3
    80058322:	8b3a                	mv	s6,a4
    80058324:	8bbe                	mv	s7,a5
quickjs-nuttx/libbf.c:4180
    ziv_extra_bits = 32;
    80058326:	02000a13          	li	s4,32
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005832a:	1c7e                	slli	s8,s8,0x3f
bf_const_get():
quickjs-nuttx/libbf.c:4193
        if (!bf_can_round(T, prec, flags & BF_RND_MASK, prec1)) {
    8005832c:	00767c93          	andi	s9,a2,7
quickjs-nuttx/libbf.c:4183
        if (c->prec < prec1) {
    80058330:	7414                	ld	a3,40(s0)
quickjs-nuttx/libbf.c:4182
        prec1 = prec + ziv_extra_bits;
    80058332:	012a0ab3          	add	s5,s4,s2
quickjs-nuttx/libbf.c:4183
        if (c->prec < prec1) {
    80058336:	0356f263          	bgeu	a3,s5,8005835a <bf_const_get+0x5a>
quickjs-nuttx/libbf.c:4184
            if (c->val.len == 0)
    8005833a:	6c1c                	ld	a5,24(s0)
    8005833c:	eb89                	bnez	a5,8005834e <bf_const_get+0x4e>
quickjs-nuttx/libbf.c:4185
                bf_init(T->ctx, &c->val);
    8005833e:	609c                	ld	a5,0(s1)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    80058340:	00042423          	sw	zero,8(s0)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058344:	01843823          	sd	s8,16(s0)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058348:	e01c                	sd	a5,0(s0)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005834a:	02043023          	sd	zero,32(s0)
bf_const_get():
quickjs-nuttx/libbf.c:4186
            func(&c->val, prec1);
    8005834e:	85d6                	mv	a1,s5
    80058350:	8522                	mv	a0,s0
    80058352:	9b02                	jalr	s6
quickjs-nuttx/libbf.c:4187
            c->prec = prec1;
    80058354:	86d6                	mv	a3,s5
    80058356:	03543423          	sd	s5,40(s0)
quickjs-nuttx/libbf.c:4191
        bf_set(T, &c->val);
    8005835a:	85a2                	mv	a1,s0
    8005835c:	8526                	mv	a0,s1
    8005835e:	e436                	sd	a3,8(sp)
    80058360:	cc3ff0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4193
        if (!bf_can_round(T, prec, flags & BF_RND_MASK, prec1)) {
    80058364:	66a2                	ld	a3,8(sp)
quickjs-nuttx/libbf.c:4192
        T->sign = sign;
    80058366:	0174a423          	sw	s7,8(s1)
quickjs-nuttx/libbf.c:4193
        if (!bf_can_round(T, prec, flags & BF_RND_MASK, prec1)) {
    8005836a:	8666                	mv	a2,s9
    8005836c:	85ca                	mv	a1,s2
    8005836e:	8526                	mv	a0,s1
    80058370:	e31ff0ef          	jal	ra,800581a0 <bf_can_round>
    80058374:	e509                	bnez	a0,8005837e <bf_const_get+0x7e>
quickjs-nuttx/libbf.c:4195
            ziv_extra_bits = ziv_extra_bits  + (ziv_extra_bits / 2);
    80058376:	001a5793          	srli	a5,s4,0x1
    8005837a:	9a3e                	add	s4,s4,a5
quickjs-nuttx/libbf.c:4182
        prec1 = prec + ziv_extra_bits;
    8005837c:	bf55                	j	80058330 <bf_const_get+0x30>
quickjs-nuttx/libbf.c:4201
}
    8005837e:	7406                	ld	s0,96(sp)
    80058380:	70a6                	ld	ra,104(sp)
    80058382:	6a06                	ld	s4,64(sp)
    80058384:	7ae2                	ld	s5,56(sp)
    80058386:	7b42                	ld	s6,48(sp)
    80058388:	7ba2                	ld	s7,40(sp)
    8005838a:	7c02                	ld	s8,32(sp)
    8005838c:	6ce2                	ld	s9,24(sp)
quickjs-nuttx/libbf.c:4200
    return bf_round(T, prec, flags);
    8005838e:	864e                	mv	a2,s3
    80058390:	85ca                	mv	a1,s2
quickjs-nuttx/libbf.c:4201
}
    80058392:	69a6                	ld	s3,72(sp)
    80058394:	6946                	ld	s2,80(sp)
quickjs-nuttx/libbf.c:4200
    return bf_round(T, prec, flags);
    80058396:	8526                	mv	a0,s1
quickjs-nuttx/libbf.c:4201
}
    80058398:	64e6                	ld	s1,88(sp)
    8005839a:	6165                	addi	sp,sp,112
quickjs-nuttx/libbf.c:4200
    return bf_round(T, prec, flags);
    8005839c:	f57ff06f          	j	800582f2 <bf_round>

00000000800583a0 <mp_print_str>:
mp_print_str():
quickjs-nuttx/libbf.c:703
{
    800583a0:	7179                	addi	sp,sp,-48
    800583a2:	f022                	sd	s0,32(sp)
    800583a4:	8432                	mv	s0,a2
    800583a6:	e84a                	sd	s2,16(sp)
quickjs-nuttx/libbf.c:706
    for(i = n - 1; i >= 0; i--) {
    800583a8:	147d                	addi	s0,s0,-1
quickjs-nuttx/libbf.c:703
{
    800583aa:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:705
    printf("%s= 0x", str);
    800583ac:	85aa                	mv	a1,a0
    800583ae:	00028517          	auipc	a0,0x28
    800583b2:	23a50513          	addi	a0,a0,570 # 800805e8 <std_name.0+0x40>
quickjs-nuttx/libbf.c:703
{
    800583b6:	ec26                	sd	s1,24(sp)
    800583b8:	e44e                	sd	s3,8(sp)
    800583ba:	f406                	sd	ra,40(sp)
quickjs-nuttx/libbf.c:706
    for(i = n - 1; i >= 0; i--) {
    800583bc:	84a2                	mv	s1,s0
quickjs-nuttx/libbf.c:705
    printf("%s= 0x", str);
    800583be:	61b080ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:709
        printf(FMT_LIMB, tab[i]);
    800583c2:	00028997          	auipc	s3,0x28
    800583c6:	22e98993          	addi	s3,s3,558 # 800805f0 <std_name.0+0x48>
quickjs-nuttx/libbf.c:706 (discriminator 1)
    for(i = n - 1; i >= 0; i--) {
    800583ca:	0004db63          	bgez	s1,800583e0 <mp_print_str+0x40>
quickjs-nuttx/libbf.c:712
}
    800583ce:	7402                	ld	s0,32(sp)
    800583d0:	70a2                	ld	ra,40(sp)
    800583d2:	64e2                	ld	s1,24(sp)
    800583d4:	6942                	ld	s2,16(sp)
    800583d6:	69a2                	ld	s3,8(sp)
quickjs-nuttx/libbf.c:711
    printf("\n");
    800583d8:	4529                	li	a0,10
quickjs-nuttx/libbf.c:712
}
    800583da:	6145                	addi	sp,sp,48
quickjs-nuttx/libbf.c:711
    printf("\n");
    800583dc:	7090806f          	j	800612e4 <putchar>
quickjs-nuttx/libbf.c:707
        if (i != (n - 1))
    800583e0:	00940663          	beq	s0,s1,800583ec <mp_print_str+0x4c>
quickjs-nuttx/libbf.c:708
            printf("_");
    800583e4:	05f00513          	li	a0,95
    800583e8:	6fd080ef          	jal	ra,800612e4 <putchar>
quickjs-nuttx/libbf.c:709 (discriminator 2)
        printf(FMT_LIMB, tab[i]);
    800583ec:	00349793          	slli	a5,s1,0x3
    800583f0:	97ca                	add	a5,a5,s2
    800583f2:	638c                	ld	a1,0(a5)
    800583f4:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:706 (discriminator 2)
    for(i = n - 1; i >= 0; i--) {
    800583f6:	14fd                	addi	s1,s1,-1
quickjs-nuttx/libbf.c:709 (discriminator 2)
        printf(FMT_LIMB, tab[i]);
    800583f8:	5e1080ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:706 (discriminator 2)
    for(i = n - 1; i >= 0; i--) {
    800583fc:	b7f9                	j	800583ca <mp_print_str+0x2a>

00000000800583fe <bf_print_str>:
bf_print_str():
quickjs-nuttx/libbf.c:730
{
    800583fe:	1101                	addi	sp,sp,-32
    80058400:	e822                	sd	s0,16(sp)
    80058402:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:732
    printf("%s=", str);
    80058404:	85aa                	mv	a1,a0
    80058406:	00028517          	auipc	a0,0x28
    8005840a:	1f250513          	addi	a0,a0,498 # 800805f8 <std_name.0+0x50>
quickjs-nuttx/libbf.c:730
{
    8005840e:	ec06                	sd	ra,24(sp)
    80058410:	e426                	sd	s1,8(sp)
    80058412:	e04a                	sd	s2,0(sp)
quickjs-nuttx/libbf.c:732
    printf("%s=", str);
    80058414:	5c5080ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:734
    if (a->expn == BF_EXP_NAN) {
    80058418:	6818                	ld	a4,16(s0)
    8005841a:	57fd                	li	a5,-1
    8005841c:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:735
        printf("NaN");
    8005841e:	00012517          	auipc	a0,0x12
    80058422:	53250513          	addi	a0,a0,1330 # 8006a950 <qjsc_repl+0x53a0>
quickjs-nuttx/libbf.c:734
    if (a->expn == BF_EXP_NAN) {
    80058426:	04f70163          	beq	a4,a5,80058468 <bf_print_str+0x6a>
quickjs-nuttx/libbf.c:737
        if (a->sign)
    8005842a:	441c                	lw	a5,8(s0)
    8005842c:	c789                	beqz	a5,80058436 <bf_print_str+0x38>
quickjs-nuttx/libbf.c:738
            putchar('-');
    8005842e:	02d00513          	li	a0,45
    80058432:	6b3080ef          	jal	ra,800612e4 <putchar>
quickjs-nuttx/libbf.c:739
        if (a->expn == BF_EXP_ZERO) {
    80058436:	6818                	ld	a4,16(s0)
    80058438:	57fd                	li	a5,-1
    8005843a:	17fe                	slli	a5,a5,0x3f
    8005843c:	00f71e63          	bne	a4,a5,80058458 <bf_print_str+0x5a>
quickjs-nuttx/libbf.c:740
            putchar('0');
    80058440:	03000513          	li	a0,48
    80058444:	6a1080ef          	jal	ra,800612e4 <putchar>
quickjs-nuttx/libbf.c:751
}
    80058448:	6442                	ld	s0,16(sp)
    8005844a:	60e2                	ld	ra,24(sp)
    8005844c:	64a2                	ld	s1,8(sp)
    8005844e:	6902                	ld	s2,0(sp)
quickjs-nuttx/libbf.c:750
    printf("\n");
    80058450:	4529                	li	a0,10
quickjs-nuttx/libbf.c:751
}
    80058452:	6105                	addi	sp,sp,32
quickjs-nuttx/libbf.c:750
    printf("\n");
    80058454:	6910806f          	j	800612e4 <putchar>
quickjs-nuttx/libbf.c:741
        } else if (a->expn == BF_EXP_INF) {
    80058458:	57f5                	li	a5,-3
    8005845a:	8385                	srli	a5,a5,0x1
    8005845c:	00f71963          	bne	a4,a5,8005846e <bf_print_str+0x70>
quickjs-nuttx/libbf.c:742
            printf("Inf");
    80058460:	00028517          	auipc	a0,0x28
    80058464:	1a050513          	addi	a0,a0,416 # 80080600 <std_name.0+0x58>
    80058468:	571080ef          	jal	ra,800611d8 <printf>
    8005846c:	bff1                	j	80058448 <bf_print_str+0x4a>
quickjs-nuttx/libbf.c:744
            printf("0x0.");
    8005846e:	00028517          	auipc	a0,0x28
    80058472:	19a50513          	addi	a0,a0,410 # 80080608 <std_name.0+0x60>
    80058476:	563080ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:745
            for(i = a->len - 1; i >= 0; i--)
    8005847a:	6c04                	ld	s1,24(s0)
quickjs-nuttx/libbf.c:746
                printf(FMT_LIMB, a->tab[i]);
    8005847c:	00028917          	auipc	s2,0x28
    80058480:	17490913          	addi	s2,s2,372 # 800805f0 <std_name.0+0x48>
quickjs-nuttx/libbf.c:745
            for(i = a->len - 1; i >= 0; i--)
    80058484:	14fd                	addi	s1,s1,-1
quickjs-nuttx/libbf.c:745 (discriminator 1)
    80058486:	0004da63          	bgez	s1,8005849a <bf_print_str+0x9c>
quickjs-nuttx/libbf.c:747
            printf("p%" PRId_LIMB, a->expn);
    8005848a:	680c                	ld	a1,16(s0)
    8005848c:	00028517          	auipc	a0,0x28
    80058490:	18450513          	addi	a0,a0,388 # 80080610 <std_name.0+0x68>
    80058494:	545080ef          	jal	ra,800611d8 <printf>
    80058498:	bf45                	j	80058448 <bf_print_str+0x4a>
quickjs-nuttx/libbf.c:746 (discriminator 3)
                printf(FMT_LIMB, a->tab[i]);
    8005849a:	701c                	ld	a5,32(s0)
    8005849c:	00349713          	slli	a4,s1,0x3
    800584a0:	854a                	mv	a0,s2
    800584a2:	97ba                	add	a5,a5,a4
    800584a4:	638c                	ld	a1,0(a5)
quickjs-nuttx/libbf.c:745 (discriminator 3)
            for(i = a->len - 1; i >= 0; i--)
    800584a6:	14fd                	addi	s1,s1,-1
quickjs-nuttx/libbf.c:746 (discriminator 3)
                printf(FMT_LIMB, a->tab[i]);
    800584a8:	531080ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:745 (discriminator 3)
            for(i = a->len - 1; i >= 0; i--)
    800584ac:	bfe9                	j	80058486 <bf_print_str+0x88>

00000000800584ae <bf_cmpu>:
bf_cmpu():
quickjs-nuttx/libbf.c:760
    if (a->expn != b->expn) {
    800584ae:	6918                	ld	a4,16(a0)
    800584b0:	699c                	ld	a5,16(a1)
    800584b2:	00f70763          	beq	a4,a5,800584c0 <bf_cmpu+0x12>
quickjs-nuttx/libbf.c:764
            return 1;
    800584b6:	4505                	li	a0,1
quickjs-nuttx/libbf.c:761
        if (a->expn < b->expn)
    800584b8:	06f75b63          	bge	a4,a5,8005852e <bf_cmpu+0x80>
quickjs-nuttx/libbf.c:762
            return -1;
    800584bc:	557d                	li	a0,-1
    800584be:	8082                	ret
quickjs-nuttx/libbf.c:756
{
    800584c0:	7139                	addi	sp,sp,-64
    800584c2:	f426                	sd	s1,40(sp)
    800584c4:	f04a                	sd	s2,32(sp)
    800584c6:	e852                	sd	s4,16(sp)
    800584c8:	fc06                	sd	ra,56(sp)
    800584ca:	f822                	sd	s0,48(sp)
    800584cc:	ec4e                	sd	s3,24(sp)
    800584ce:	e456                	sd	s5,8(sp)
quickjs-nuttx/libbf.c:766
    len = bf_max(a->len, b->len);
    800584d0:	6d1c                	ld	a5,24(a0)
    800584d2:	6d98                	ld	a4,24(a1)
    800584d4:	84aa                	mv	s1,a0
    800584d6:	892e                	mv	s2,a1
    800584d8:	8a3e                	mv	s4,a5
    800584da:	00e7d363          	bge	a5,a4,800584e0 <bf_cmpu+0x32>
    800584de:	8a3a                	mv	s4,a4
quickjs-nuttx/libbf.c:767
    for(i = len - 1; i >= 0; i--) {
    800584e0:	fffa0413          	addi	s0,s4,-1
quickjs-nuttx/libbf.c:768
        v1 = get_limbz(a, a->len - len + i);
    800584e4:	414789b3          	sub	s3,a5,s4
quickjs-nuttx/libbf.c:769
        v2 = get_limbz(b, b->len - len + i);
    800584e8:	41470a33          	sub	s4,a4,s4
quickjs-nuttx/libbf.c:767
    for(i = len - 1; i >= 0; i--) {
    800584ec:	00045463          	bgez	s0,800584f4 <bf_cmpu+0x46>
quickjs-nuttx/libbf.c:777
    return 0;
    800584f0:	4501                	li	a0,0
    800584f2:	a01d                	j	80058518 <bf_cmpu+0x6a>
quickjs-nuttx/libbf.c:768
        v1 = get_limbz(a, a->len - len + i);
    800584f4:	008985b3          	add	a1,s3,s0
    800584f8:	8526                	mv	a0,s1
    800584fa:	ddcfe0ef          	jal	ra,80056ad6 <get_limbz>
    800584fe:	8aaa                	mv	s5,a0
quickjs-nuttx/libbf.c:769
        v2 = get_limbz(b, b->len - len + i);
    80058500:	008a05b3          	add	a1,s4,s0
    80058504:	854a                	mv	a0,s2
    80058506:	dd0fe0ef          	jal	ra,80056ad6 <get_limbz>
    8005850a:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:770
        if (v1 != v2) {
    8005850c:	00aa8f63          	beq	s5,a0,8005852a <bf_cmpu+0x7c>
quickjs-nuttx/libbf.c:764
            return 1;
    80058510:	4505                	li	a0,1
quickjs-nuttx/libbf.c:771
            if (v1 < v2)
    80058512:	00faf363          	bgeu	s5,a5,80058518 <bf_cmpu+0x6a>
quickjs-nuttx/libbf.c:762
            return -1;
    80058516:	557d                	li	a0,-1
quickjs-nuttx/libbf.c:778
}
    80058518:	70e2                	ld	ra,56(sp)
    8005851a:	7442                	ld	s0,48(sp)
    8005851c:	74a2                	ld	s1,40(sp)
    8005851e:	7902                	ld	s2,32(sp)
    80058520:	69e2                	ld	s3,24(sp)
    80058522:	6a42                	ld	s4,16(sp)
    80058524:	6aa2                	ld	s5,8(sp)
    80058526:	6121                	addi	sp,sp,64
    80058528:	8082                	ret
quickjs-nuttx/libbf.c:767
    for(i = len - 1; i >= 0; i--) {
    8005852a:	147d                	addi	s0,s0,-1
    8005852c:	b7c1                	j	800584ec <bf_cmpu+0x3e>
quickjs-nuttx/libbf.c:778
}
    8005852e:	8082                	ret

0000000080058530 <bf_add_internal>:
bf_add_internal():
quickjs-nuttx/libbf.c:887
{
    80058530:	7171                	addi	sp,sp,-176
    80058532:	f122                	sd	s0,160(sp)
    80058534:	ed26                	sd	s1,152(sp)
    80058536:	e94a                	sd	s2,144(sp)
    80058538:	f8da                	sd	s6,112(sp)
    8005853a:	f506                	sd	ra,168(sp)
    8005853c:	e54e                	sd	s3,136(sp)
    8005853e:	e152                	sd	s4,128(sp)
    80058540:	fcd6                	sd	s5,120(sp)
    80058542:	f4de                	sd	s7,104(sp)
    80058544:	f0e2                	sd	s8,96(sp)
    80058546:	ece6                	sd	s9,88(sp)
    80058548:	e8ea                	sd	s10,80(sp)
    8005854a:	e4ee                	sd	s11,72(sp)
    8005854c:	f43a                	sd	a4,40(sp)
quickjs-nuttx/libbf.c:892
    b_sign = b->sign ^ b_neg;
    8005854e:	4618                	lw	a4,8(a2)
quickjs-nuttx/libbf.c:887
{
    80058550:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:891
    a_sign = a->sign;
    80058552:	0085aa83          	lw	s5,8(a1)
quickjs-nuttx/libbf.c:887
{
    80058556:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:894
    cmp_res = bf_cmpu(a, b);
    80058558:	85b2                	mv	a1,a2
    8005855a:	8526                	mv	a0,s1
quickjs-nuttx/libbf.c:887
{
    8005855c:	8932                	mv	s2,a2
    8005855e:	f036                	sd	a3,32(sp)
quickjs-nuttx/libbf.c:892
    b_sign = b->sign ^ b_neg;
    80058560:	00e7cb33          	xor	s6,a5,a4
quickjs-nuttx/libbf.c:894
    cmp_res = bf_cmpu(a, b);
    80058564:	f4bff0ef          	jal	ra,800584ae <bf_cmpu>
quickjs-nuttx/libbf.c:895
    if (cmp_res < 0) {
    80058568:	04054563          	bltz	a0,800585b2 <bf_add_internal+0x82>
    8005856c:	89aa                	mv	s3,a0
quickjs-nuttx/libbf.c:902
    if (cmp_res == 0 && is_sub && a->expn < BF_EXP_INF) {
    8005856e:	e92d                	bnez	a0,800585e0 <bf_add_internal+0xb0>
quickjs-nuttx/libbf.c:902 (discriminator 1)
    80058570:	076a8863          	beq	s5,s6,800585e0 <bf_add_internal+0xb0>
quickjs-nuttx/libbf.c:902 (discriminator 2)
    80058574:	6898                	ld	a4,16(s1)
    80058576:	57ed                	li	a5,-5
    80058578:	8385                	srli	a5,a5,0x1
    8005857a:	8a56                	mv	s4,s5
    8005857c:	02e7cf63          	blt	a5,a4,800585ba <bf_add_internal+0x8a>
quickjs-nuttx/libbf.c:904
        bf_set_zero(r, (flags & BF_RND_MASK) == BF_RNDD);
    80058580:	77a2                	ld	a5,40(sp)
    80058582:	8522                	mv	a0,s0
    80058584:	0077f593          	andi	a1,a5,7
    80058588:	15f9                	addi	a1,a1,-2
    8005858a:	0015b593          	seqz	a1,a1
    8005858e:	ed2ff0ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/libbf.c:1027
}
    80058592:	70aa                	ld	ra,168(sp)
    80058594:	740a                	ld	s0,160(sp)
    80058596:	64ea                	ld	s1,152(sp)
    80058598:	694a                	ld	s2,144(sp)
    8005859a:	6a0a                	ld	s4,128(sp)
    8005859c:	7ae6                	ld	s5,120(sp)
    8005859e:	7b46                	ld	s6,112(sp)
    800585a0:	7ba6                	ld	s7,104(sp)
    800585a2:	7c06                	ld	s8,96(sp)
    800585a4:	6ce6                	ld	s9,88(sp)
    800585a6:	6d46                	ld	s10,80(sp)
    800585a8:	6da6                	ld	s11,72(sp)
    800585aa:	854e                	mv	a0,s3
    800585ac:	69aa                	ld	s3,136(sp)
    800585ae:	614d                	addi	sp,sp,176
    800585b0:	8082                	ret
    800585b2:	87a6                	mv	a5,s1
quickjs-nuttx/libbf.c:892
    b_sign = b->sign ^ b_neg;
    800585b4:	8a5a                	mv	s4,s6
    800585b6:	84ca                	mv	s1,s2
    800585b8:	893e                	mv	s2,a5
quickjs-nuttx/libbf.c:906
    } else if (a->len == 0 || b->len == 0) {
    800585ba:	6c9c                	ld	a5,24(s1)
    800585bc:	c781                	beqz	a5,800585c4 <bf_add_internal+0x94>
quickjs-nuttx/libbf.c:906 (discriminator 1)
    800585be:	01893783          	ld	a5,24(s2)
    800585c2:	efa5                	bnez	a5,8005863a <bf_add_internal+0x10a>
quickjs-nuttx/libbf.c:908
        if (a->expn >= BF_EXP_INF) {
    800585c4:	6898                	ld	a4,16(s1)
    800585c6:	57ed                	li	a5,-5
    800585c8:	8385                	srli	a5,a5,0x1
    800585ca:	02e7df63          	bge	a5,a4,80058608 <bf_add_internal+0xd8>
quickjs-nuttx/libbf.c:909
            if (a->expn == BF_EXP_NAN) {
    800585ce:	57fd                	li	a5,-1
    800585d0:	8385                	srli	a5,a5,0x1
    800585d2:	00f71963          	bne	a4,a5,800585e4 <bf_add_internal+0xb4>
quickjs-nuttx/libbf.c:911
                bf_set_nan(r);
    800585d6:	8522                	mv	a0,s0
    800585d8:	de6ff0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:907
        ret = 0;
    800585dc:	4981                	li	s3,0
    800585de:	bf55                	j	80058592 <bf_add_internal+0x62>
    800585e0:	8a56                	mv	s4,s5
    800585e2:	bfe1                	j	800585ba <bf_add_internal+0x8a>
quickjs-nuttx/libbf.c:912
            } else if (b->expn == BF_EXP_INF && is_sub) {
    800585e4:	01093703          	ld	a4,16(s2)
    800585e8:	57f5                	li	a5,-3
    800585ea:	8385                	srli	a5,a5,0x1
    800585ec:	00f71963          	bne	a4,a5,800585fe <bf_add_internal+0xce>
quickjs-nuttx/libbf.c:912 (discriminator 1)
    800585f0:	016a8763          	beq	s5,s6,800585fe <bf_add_internal+0xce>
quickjs-nuttx/libbf.c:914
                bf_set_nan(r);
    800585f4:	8522                	mv	a0,s0
    800585f6:	dc8ff0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:915
                ret = BF_ST_INVALID_OP;
    800585fa:	4985                	li	s3,1
    800585fc:	bf59                	j	80058592 <bf_add_internal+0x62>
quickjs-nuttx/libbf.c:917
                bf_set_inf(r, a_sign);
    800585fe:	85d2                	mv	a1,s4
    80058600:	8522                	mv	a0,s0
    80058602:	e82ff0ef          	jal	ra,80057c84 <bf_set_inf>
    80058606:	bfd9                	j	800585dc <bf_add_internal+0xac>
quickjs-nuttx/libbf.c:921
            bf_set(r, a);
    80058608:	85a6                	mv	a1,s1
    8005860a:	8522                	mv	a0,s0
    8005860c:	a17ff0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:922
            r->sign = a_sign;
    80058610:	01442423          	sw	s4,8(s0)
quickjs-nuttx/libbf.c:1021
        ret = bf_normalize_and_round(r, prec, flags);
    80058614:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:1027
}
    80058616:	740a                	ld	s0,160(sp)
quickjs-nuttx/libbf.c:1021
        ret = bf_normalize_and_round(r, prec, flags);
    80058618:	7622                	ld	a2,40(sp)
    8005861a:	7582                	ld	a1,32(sp)
quickjs-nuttx/libbf.c:1027
}
    8005861c:	70aa                	ld	ra,168(sp)
    8005861e:	64ea                	ld	s1,152(sp)
    80058620:	694a                	ld	s2,144(sp)
    80058622:	69aa                	ld	s3,136(sp)
    80058624:	6a0a                	ld	s4,128(sp)
    80058626:	7ae6                	ld	s5,120(sp)
    80058628:	7b46                	ld	s6,112(sp)
    8005862a:	7ba6                	ld	s7,104(sp)
    8005862c:	7c06                	ld	s8,96(sp)
    8005862e:	6ce6                	ld	s9,88(sp)
    80058630:	6d46                	ld	s10,80(sp)
    80058632:	6da6                	ld	s11,72(sp)
    80058634:	614d                	addi	sp,sp,176
quickjs-nuttx/libbf.c:1021
        ret = bf_normalize_and_round(r, prec, flags);
    80058636:	abfff06f          	j	800580f4 <bf_normalize_and_round>
quickjs-nuttx/libbf.c:929
        r->sign = a_sign;
    8005863a:	01442423          	sw	s4,8(s0)
quickjs-nuttx/libbf.c:930
        r->expn = a->expn;
    8005863e:	689c                	ld	a5,16(s1)
quickjs-nuttx/libbf.c:940
            cancelled_bits = 0;
    80058640:	4981                	li	s3,0
quickjs-nuttx/libbf.c:930
        r->expn = a->expn;
    80058642:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:931
        d = a->expn - b->expn;
    80058644:	01093603          	ld	a2,16(s2)
    80058648:	0184bd03          	ld	s10,24(s1)
    8005864c:	01893d83          	ld	s11,24(s2)
    80058650:	40c78bb3          	sub	s7,a5,a2
quickjs-nuttx/libbf.c:934
        if (is_sub) {
    80058654:	116a8b63          	beq	s5,s6,8005876a <bf_add_internal+0x23a>
quickjs-nuttx/libbf.c:935
            if (d <= 1)
    80058658:	4705                	li	a4,1
quickjs-nuttx/libbf.c:938
                cancelled_bits = 1;
    8005865a:	4985                	li	s3,1
quickjs-nuttx/libbf.c:935
            if (d <= 1)
    8005865c:	11774763          	blt	a4,s7,8005876a <bf_add_internal+0x23a>
count_cancelled_bits():
quickjs-nuttx/libbf.c:840
    b_offset = (b->len - a->len) * LIMB_BITS - (LIMB_BITS - 1) +
    80058660:	41ad86b3          	sub	a3,s11,s10
quickjs-nuttx/libbf.c:841
        a->expn - b->expn;
    80058664:	fc178793          	addi	a5,a5,-63
quickjs-nuttx/libbf.c:840
    b_offset = (b->len - a->len) * LIMB_BITS - (LIMB_BITS - 1) +
    80058668:	069a                	slli	a3,a3,0x6
quickjs-nuttx/libbf.c:841
        a->expn - b->expn;
    8005866a:	8f91                	sub	a5,a5,a2
    8005866c:	97b6                	add	a5,a5,a3
    8005866e:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:847
        v2 = get_bits(b->tab, b->len, bit_offset + b_offset);
    80058670:	02093783          	ld	a5,32(s2)
quickjs-nuttx/libbf.c:839
    bit_offset = a->len * LIMB_BITS - 1;
    80058674:	006d1713          	slli	a4,s10,0x6
    80058678:	177d                	addi	a4,a4,-1
    8005867a:	8a3a                	mv	s4,a4
quickjs-nuttx/libbf.c:847
        v2 = get_bits(b->tab, b->len, bit_offset + b_offset);
    8005867c:	e83e                	sd	a5,16(sp)
quickjs-nuttx/libbf.c:846
        v1 = get_limbz(a, bit_offset >> LIMB_LOG2_BITS);
    8005867e:	406a5593          	srai	a1,s4,0x6
    80058682:	8526                	mv	a0,s1
    80058684:	414709b3          	sub	s3,a4,s4
    80058688:	ec3a                	sd	a4,24(sp)
    8005868a:	c4cfe0ef          	jal	ra,80056ad6 <get_limbz>
quickjs-nuttx/libbf.c:847
        v2 = get_bits(b->tab, b->len, bit_offset + b_offset);
    8005868e:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libbf.c:846
        v1 = get_limbz(a, bit_offset >> LIMB_LOG2_BITS);
    80058690:	8c2a                	mv	s8,a0
quickjs-nuttx/libbf.c:847
        v2 = get_bits(b->tab, b->len, bit_offset + b_offset);
    80058692:	6542                	ld	a0,16(sp)
    80058694:	01478633          	add	a2,a5,s4
    80058698:	85ee                	mv	a1,s11
    8005869a:	c50fe0ef          	jal	ra,80056aea <get_bits>
    8005869e:	8caa                	mv	s9,a0
quickjs-nuttx/libbf.c:849
        if (v1 != v2)
    800586a0:	00ac1663          	bne	s8,a0,800586ac <bf_add_internal+0x17c>
quickjs-nuttx/libbf.c:846
        v1 = get_limbz(a, bit_offset >> LIMB_LOG2_BITS);
    800586a4:	6762                	ld	a4,24(sp)
quickjs-nuttx/libbf.c:852
        bit_offset -= LIMB_BITS;
    800586a6:	fc0a0a13          	addi	s4,s4,-64
quickjs-nuttx/libbf.c:846
        v1 = get_limbz(a, bit_offset >> LIMB_LOG2_BITS);
    800586aa:	bfd1                	j	8005867e <bf_add_internal+0x14e>
clz64():
quickjs-nuttx/cutils.h:126
    800586ac:	00ac4533          	xor	a0,s8,a0
    800586b0:	fe6ab0ef          	jal	ra,80003e96 <__clzdi2>
count_cancelled_bits():
quickjs-nuttx/libbf.c:855
    p = clz(v1 ^ v2) + 1;
    800586b4:	0005079b          	sext.w	a5,a0
    800586b8:	0017871b          	addiw	a4,a5,1
    800586bc:	87ba                	mv	a5,a4
quickjs-nuttx/libbf.c:856
    n += p;
    800586be:	99ba                	add	s3,s3,a4
quickjs-nuttx/libbf.c:858
    p = LIMB_BITS - p;
    800586c0:	04000713          	li	a4,64
    800586c4:	9f1d                	subw	a4,a4,a5
clz64():
quickjs-nuttx/cutils.h:126
    800586c6:	d82a                	sw	a0,48(sp)
count_cancelled_bits():
quickjs-nuttx/libbf.c:858
    800586c8:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/libbf.c:859
    if (p > 0) {
    800586ca:	cb31                	beqz	a4,8005871e <bf_add_internal+0x1ee>
quickjs-nuttx/libbf.c:861
        mask = limb_mask(0, p - 1);
    800586cc:	03f00593          	li	a1,63
    800586d0:	9d9d                	subw	a1,a1,a5
    800586d2:	4501                	li	a0,0
    800586d4:	c70fe0ef          	jal	ra,80056b44 <limb_mask>
    800586d8:	872a                	mv	a4,a0
quickjs-nuttx/libbf.c:862
        p1 = bf_min(clz(v1 & mask), clz((~v2) & mask)) - (LIMB_BITS - p);
    800586da:	00ac7533          	and	a0,s8,a0
clz():
quickjs-nuttx/libbf.c:99
        return LIMB_BITS;
    800586de:	04000c13          	li	s8,64
quickjs-nuttx/libbf.c:98
    if (a == 0) {
    800586e2:	c519                	beqz	a0,800586f0 <bf_add_internal+0x1c0>
    800586e4:	fc3a                	sd	a4,56(sp)
clz64():
quickjs-nuttx/cutils.h:126
    800586e6:	fb0ab0ef          	jal	ra,80003e96 <__clzdi2>
    800586ea:	7762                	ld	a4,56(sp)
    800586ec:	00050c1b          	sext.w	s8,a0
count_cancelled_bits():
quickjs-nuttx/libbf.c:862
        p1 = bf_min(clz(v1 & mask), clz((~v2) & mask)) - (LIMB_BITS - p);
    800586f0:	fffcc793          	not	a5,s9
    800586f4:	00e7f533          	and	a0,a5,a4
clz():
quickjs-nuttx/libbf.c:99
        return LIMB_BITS;
    800586f8:	04000793          	li	a5,64
quickjs-nuttx/libbf.c:98
    if (a == 0) {
    800586fc:	c509                	beqz	a0,80058706 <bf_add_internal+0x1d6>
clz64():
quickjs-nuttx/cutils.h:126
    800586fe:	f98ab0ef          	jal	ra,80003e96 <__clzdi2>
    80058702:	0005079b          	sext.w	a5,a0
count_cancelled_bits():
quickjs-nuttx/libbf.c:862
        p1 = bf_min(clz(v1 & mask), clz((~v2) & mask)) - (LIMB_BITS - p);
    80058706:	7742                	ld	a4,48(sp)
    80058708:	853e                	mv	a0,a5
    8005870a:	fff74713          	not	a4,a4
    8005870e:	00fc5363          	bge	s8,a5,80058714 <bf_add_internal+0x1e4>
    80058712:	8562                	mv	a0,s8
quickjs-nuttx/libbf.c:864
        if (p1 != p)
    80058714:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:862
        p1 = bf_min(clz(v1 & mask), clz((~v2) & mask)) - (LIMB_BITS - p);
    80058716:	9d39                	addw	a0,a0,a4
quickjs-nuttx/libbf.c:863
        n += p1;
    80058718:	99aa                	add	s3,s3,a0
quickjs-nuttx/libbf.c:864
        if (p1 != p)
    8005871a:	04a79863          	bne	a5,a0,8005876a <bf_add_internal+0x23a>
quickjs-nuttx/libbf.c:867
    bit_offset -= LIMB_BITS;
    8005871e:	fc0a0a13          	addi	s4,s4,-64
quickjs-nuttx/libbf.c:869
        v1 = get_limbz(a, bit_offset >> LIMB_LOG2_BITS);
    80058722:	406a5593          	srai	a1,s4,0x6
    80058726:	8526                	mv	a0,s1
    80058728:	baefe0ef          	jal	ra,80056ad6 <get_limbz>
quickjs-nuttx/libbf.c:870
        v2 = get_bits(b->tab, b->len, bit_offset + b_offset);
    8005872c:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libbf.c:869
        v1 = get_limbz(a, bit_offset >> LIMB_LOG2_BITS);
    8005872e:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/libbf.c:870
        v2 = get_bits(b->tab, b->len, bit_offset + b_offset);
    80058730:	6542                	ld	a0,16(sp)
    80058732:	00fa0633          	add	a2,s4,a5
    80058736:	85ee                	mv	a1,s11
    80058738:	bb2fe0ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:872
        if (v1 != 0 || v2 != -1) {
    8005873c:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:870
        v2 = get_bits(b->tab, b->len, bit_offset + b_offset);
    8005873e:	8c2a                	mv	s8,a0
quickjs-nuttx/libbf.c:872
        if (v1 != 0 || v2 != -1) {
    80058740:	1c079263          	bnez	a5,80058904 <bf_add_internal+0x3d4>
    80058744:	577d                	li	a4,-1
    80058746:	0ce50763          	beq	a0,a4,80058814 <bf_add_internal+0x2e4>
clz():
quickjs-nuttx/libbf.c:99
        return LIMB_BITS;
    8005874a:	04000a13          	li	s4,64
count_cancelled_bits():
quickjs-nuttx/libbf.c:874
            p1 = bf_min(clz(v1), clz(~v2));
    8005874e:	fffc4513          	not	a0,s8
clz():
quickjs-nuttx/libbf.c:99
        return LIMB_BITS;
    80058752:	04000793          	li	a5,64
quickjs-nuttx/libbf.c:98
    if (a == 0) {
    80058756:	c509                	beqz	a0,80058760 <bf_add_internal+0x230>
clz64():
quickjs-nuttx/cutils.h:126
    80058758:	f3eab0ef          	jal	ra,80003e96 <__clzdi2>
    8005875c:	0005079b          	sext.w	a5,a0
count_cancelled_bits():
quickjs-nuttx/libbf.c:875
            n += p1;
    80058760:	853e                	mv	a0,a5
    80058762:	00fa5363          	bge	s4,a5,80058768 <bf_add_internal+0x238>
    80058766:	8552                	mv	a0,s4
    80058768:	99aa                	add	s3,s3,a0
bf_add_internal():
quickjs-nuttx/libbf.c:945
        tot_len = bf_max(a->len, b->len + (d + LIMB_BITS - 1) / LIMB_BITS);
    8005876a:	03fb8793          	addi	a5,s7,63
    8005876e:	04000713          	li	a4,64
    80058772:	02e7c7b3          	div	a5,a5,a4
    80058776:	9dbe                	add	s11,s11,a5
    80058778:	01add363          	bge	s11,s10,8005877e <bf_add_internal+0x24e>
    8005877c:	8dea                	mv	s11,s10
quickjs-nuttx/libbf.c:944
        precl = (cancelled_bits + prec + 2 + LIMB_BITS - 1) / LIMB_BITS;
    8005877e:	7782                	ld	a5,32(sp)
    80058780:	04178793          	addi	a5,a5,65
    80058784:	99be                	add	s3,s3,a5
    80058786:	0069d993          	srli	s3,s3,0x6
    8005878a:	013dd363          	bge	s11,s3,80058790 <bf_add_internal+0x260>
    8005878e:	89ee                	mv	s3,s11
quickjs-nuttx/libbf.c:947
        if (bf_resize(r, r_len))
    80058790:	85ce                	mv	a1,s3
    80058792:	8522                	mv	a0,s0
    80058794:	bf0ff0ef          	jal	ra,80057b84 <bf_resize>
    80058798:	16051063          	bnez	a0,800588f8 <bf_add_internal+0x3c8>
quickjs-nuttx/libbf.c:950
        b_bit_offset = (b->len - r_len) * LIMB_BITS + d;
    8005879c:	01893583          	ld	a1,24(s2)
quickjs-nuttx/libbf.c:949
        a_offset = a->len - r_len;
    800587a0:	0184bc83          	ld	s9,24(s1)
quickjs-nuttx/libbf.c:953
        carry = is_sub;
    800587a4:	016acd33          	xor	s10,s5,s6
quickjs-nuttx/libbf.c:950
        b_bit_offset = (b->len - r_len) * LIMB_BITS + d;
    800587a8:	41358a33          	sub	s4,a1,s3
    800587ac:	0a1a                	slli	s4,s4,0x6
    800587ae:	9a5e                	add	s4,s4,s7
quickjs-nuttx/libbf.c:955
        sub_mask = -is_sub;
    800587b0:	41a007bb          	negw	a5,s10
quickjs-nuttx/libbf.c:988
                    i = bf_min(i, (-b_bit_offset) >> LIMB_LOG2_BITS);
    800587b4:	41400833          	neg	a6,s4
quickjs-nuttx/libbf.c:949
        a_offset = a->len - r_len;
    800587b8:	413c8733          	sub	a4,s9,s3
quickjs-nuttx/libbf.c:955
        sub_mask = -is_sub;
    800587bc:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:956
        i = r_len - tot_len;
    800587be:	41b98db3          	sub	s11,s3,s11
quickjs-nuttx/libbf.c:970
            if (bp + LIMB_BITS > 0 && bp < (slimb_t)(b->len * LIMB_BITS)) {
    800587c2:	00659b93          	slli	s7,a1,0x6
quickjs-nuttx/libbf.c:988
                    i = bf_min(i, (-b_bit_offset) >> LIMB_LOG2_BITS);
    800587c6:	40685813          	srai	a6,a6,0x6
quickjs-nuttx/libbf.c:954
        z = 0;
    800587ca:	4c01                	li	s8,0
quickjs-nuttx/libbf.c:957
        while (i < 0) {
    800587cc:	040dc763          	bltz	s11,8005881a <bf_add_internal+0x2ea>
quickjs-nuttx/libbf.c:1000
        for(i = 0; i < r_len; i++) {
    800587d0:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:1000 (discriminator 1)
    800587d2:	02043b83          	ld	s7,32(s0)
    800587d6:	0d999b63          	bne	s3,s9,800588ac <bf_add_internal+0x37c>
quickjs-nuttx/libbf.c:1011
        r->tab[0] |= (z != 0);
    800587da:	000bb783          	ld	a5,0(s7)
    800587de:	018036b3          	snez	a3,s8
    800587e2:	8edd                	or	a3,a3,a5
    800587e4:	00dbb023          	sd	a3,0(s7)
quickjs-nuttx/libbf.c:1014
        if (!is_sub && carry) {
    800587e8:	e36a96e3          	bne	s5,s6,80058614 <bf_add_internal+0xe4>
quickjs-nuttx/libbf.c:1014 (discriminator 1)
    800587ec:	e20d04e3          	beqz	s10,80058614 <bf_add_internal+0xe4>
quickjs-nuttx/libbf.c:1015
            if (bf_resize(r, r_len + 1))
    800587f0:	00198593          	addi	a1,s3,1
    800587f4:	8522                	mv	a0,s0
    800587f6:	b8eff0ef          	jal	ra,80057b84 <bf_resize>
    800587fa:	0e051f63          	bnez	a0,800588f8 <bf_add_internal+0x3c8>
quickjs-nuttx/libbf.c:1017
            r->tab[r_len] = 1;
    800587fe:	701c                	ld	a5,32(s0)
    80058800:	098e                	slli	s3,s3,0x3
    80058802:	99be                	add	s3,s3,a5
    80058804:	4785                	li	a5,1
    80058806:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/libbf.c:1018
            r->expn += LIMB_BITS;
    8005880a:	681c                	ld	a5,16(s0)
    8005880c:	04078793          	addi	a5,a5,64
    80058810:	e81c                	sd	a5,16(s0)
    80058812:	b509                	j	80058614 <bf_add_internal+0xe4>
count_cancelled_bits():
quickjs-nuttx/libbf.c:878
        n += LIMB_BITS;
    80058814:	04098993          	addi	s3,s3,64
quickjs-nuttx/libbf.c:879
        bit_offset -= LIMB_BITS;
    80058818:	b719                	j	8005871e <bf_add_internal+0x1ee>
bf_add_internal():
quickjs-nuttx/libbf.c:962
            bp = b_bit_offset + i * LIMB_BITS;
    8005881a:	006d9613          	slli	a2,s11,0x6
quickjs-nuttx/libbf.c:961
            ap = a_offset + i;
    8005881e:	00ed8533          	add	a0,s11,a4
quickjs-nuttx/libbf.c:962
            bp = b_bit_offset + i * LIMB_BITS;
    80058822:	9652                	add	a2,a2,s4
quickjs-nuttx/libbf.c:964
            if (ap >= 0 && ap < a->len) {
    80058824:	02054e63          	bltz	a0,80058860 <bf_add_internal+0x330>
quickjs-nuttx/libbf.c:964 (discriminator 1)
    80058828:	03957c63          	bgeu	a0,s9,80058860 <bf_add_internal+0x330>
quickjs-nuttx/libbf.c:965
                v1 = a->tab[ap];
    8005882c:	709c                	ld	a5,32(s1)
    8005882e:	00351e13          	slli	t3,a0,0x3
    80058832:	97f2                	add	a5,a5,t3
    80058834:	639c                	ld	a5,0(a5)
quickjs-nuttx/libbf.c:966
                inflag = TRUE;
    80058836:	4e05                	li	t3,1
quickjs-nuttx/libbf.c:970
            if (bp + LIMB_BITS > 0 && bp < (slimb_t)(b->len * LIMB_BITS)) {
    80058838:	04060e93          	addi	t4,a2,64
    8005883c:	03d05563          	blez	t4,80058866 <bf_add_internal+0x336>
quickjs-nuttx/libbf.c:970 (discriminator 1)
    80058840:	03765363          	bge	a2,s7,80058866 <bf_add_internal+0x336>
quickjs-nuttx/libbf.c:971
                v2 = get_bits(b->tab, b->len, bp);
    80058844:	02093503          	ld	a0,32(s2)
    80058848:	fc3e                	sd	a5,56(sp)
    8005884a:	f842                	sd	a6,48(sp)
    8005884c:	ec3a                	sd	a4,24(sp)
    8005884e:	e82e                	sd	a1,16(sp)
    80058850:	a9afe0ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:976
            if (!inflag) {
    80058854:	65c2                	ld	a1,16(sp)
    80058856:	6762                	ld	a4,24(sp)
    80058858:	7842                	ld	a6,48(sp)
    8005885a:	77e2                	ld	a5,56(sp)
quickjs-nuttx/libbf.c:990
                i++;
    8005885c:	0d85                	addi	s11,s11,1
    8005885e:	a02d                	j	80058888 <bf_add_internal+0x358>
quickjs-nuttx/libbf.c:963
            inflag = FALSE;
    80058860:	4e01                	li	t3,0
quickjs-nuttx/libbf.c:968
                v1 = 0;
    80058862:	4781                	li	a5,0
    80058864:	bfd1                	j	80058838 <bf_add_internal+0x308>
quickjs-nuttx/libbf.c:976
            if (!inflag) {
    80058866:	040e1163          	bnez	t3,800588a8 <bf_add_internal+0x378>
quickjs-nuttx/libbf.c:980
                i = 0;
    8005886a:	4d81                	li	s11,0
quickjs-nuttx/libbf.c:981
                if (ap < 0)
    8005886c:	00055763          	bgez	a0,8005887a <bf_add_internal+0x34a>
quickjs-nuttx/libbf.c:982
                    i = bf_min(i, -a_offset);
    80058870:	40e00db3          	neg	s11,a4
    80058874:	01b05363          	blez	s11,8005887a <bf_add_internal+0x34a>
    80058878:	4d81                	li	s11,0
quickjs-nuttx/libbf.c:987
                if (bp + LIMB_BITS <= 0)
    8005887a:	4501                	li	a0,0
    8005887c:	01d04663          	bgtz	t4,80058888 <bf_add_internal+0x358>
bf_min():
quickjs-nuttx/libbf.h:188
    if (a < b)
    80058880:	01b85363          	bge	a6,s11,80058886 <bf_add_internal+0x356>
    80058884:	8dc2                	mv	s11,a6
    80058886:	4501                	li	a0,0
bf_add_internal():
quickjs-nuttx/libbf.c:992
            v2 ^= sub_mask;
    80058888:	66a2                	ld	a3,8(sp)
    8005888a:	8d35                	xor	a0,a0,a3
quickjs-nuttx/libbf.c:993
            u = v1 + v2;
    8005888c:	953e                	add	a0,a0,a5
quickjs-nuttx/libbf.c:995
            u += carry;
    8005888e:	00ad0633          	add	a2,s10,a0
quickjs-nuttx/libbf.c:996
            carry = (u < carry) | carry1;
    80058892:	01a63d33          	sltu	s10,a2,s10
quickjs-nuttx/libbf.c:994
            carry1 = u < v1;
    80058896:	00f53533          	sltu	a0,a0,a5
    8005889a:	01a56d33          	or	s10,a0,s10
    8005889e:	0ffd7d13          	zext.b	s10,s10
quickjs-nuttx/libbf.c:997
            z |= u;
    800588a2:	00cc6c33          	or	s8,s8,a2
    800588a6:	b71d                	j	800587cc <bf_add_internal+0x29c>
    800588a8:	4501                	li	a0,0
    800588aa:	bf4d                	j	8005885c <bf_add_internal+0x32c>
quickjs-nuttx/libbf.c:1001 (discriminator 3)
            v1 = get_limbz(a, a_offset + i);
    800588ac:	019705b3          	add	a1,a4,s9
    800588b0:	8526                	mv	a0,s1
    800588b2:	e83a                	sd	a4,16(sp)
    800588b4:	a22fe0ef          	jal	ra,80056ad6 <get_limbz>
quickjs-nuttx/libbf.c:1002 (discriminator 3)
            v2 = get_bits(b->tab, b->len, b_bit_offset + i * LIMB_BITS);
    800588b8:	01893583          	ld	a1,24(s2)
quickjs-nuttx/libbf.c:1001 (discriminator 3)
            v1 = get_limbz(a, a_offset + i);
    800588bc:	8daa                	mv	s11,a0
quickjs-nuttx/libbf.c:1002 (discriminator 3)
            v2 = get_bits(b->tab, b->len, b_bit_offset + i * LIMB_BITS);
    800588be:	02093503          	ld	a0,32(s2)
    800588c2:	006c9613          	slli	a2,s9,0x6
    800588c6:	9652                	add	a2,a2,s4
    800588c8:	a22fe0ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:1003 (discriminator 3)
            v2 ^= sub_mask;
    800588cc:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libbf.c:1008 (discriminator 3)
            r->tab[i] = u;
    800588ce:	003c9613          	slli	a2,s9,0x3
    800588d2:	00cb8833          	add	a6,s7,a2
quickjs-nuttx/libbf.c:1003 (discriminator 3)
            v2 ^= sub_mask;
    800588d6:	8d3d                	xor	a0,a0,a5
quickjs-nuttx/libbf.c:1004 (discriminator 3)
            u = v1 + v2;
    800588d8:	956e                	add	a0,a0,s11
quickjs-nuttx/libbf.c:1006 (discriminator 3)
            u += carry;
    800588da:	00ad05b3          	add	a1,s10,a0
quickjs-nuttx/libbf.c:1005 (discriminator 3)
            carry1 = u < v1;
    800588de:	01b53db3          	sltu	s11,a0,s11
quickjs-nuttx/libbf.c:1007 (discriminator 3)
            carry = (u < carry) | carry1;
    800588e2:	01a5bd33          	sltu	s10,a1,s10
    800588e6:	01aded33          	or	s10,s11,s10
quickjs-nuttx/libbf.c:1000 (discriminator 3)
        for(i = 0; i < r_len; i++) {
    800588ea:	6742                	ld	a4,16(sp)
    800588ec:	0ffd7d13          	zext.b	s10,s10
quickjs-nuttx/libbf.c:1008 (discriminator 3)
            r->tab[i] = u;
    800588f0:	00b83023          	sd	a1,0(a6)
quickjs-nuttx/libbf.c:1000 (discriminator 3)
        for(i = 0; i < r_len; i++) {
    800588f4:	0c85                	addi	s9,s9,1
    800588f6:	bdf1                	j	800587d2 <bf_add_internal+0x2a2>
quickjs-nuttx/libbf.c:1025
    bf_set_nan(r);
    800588f8:	8522                	mv	a0,s0
    800588fa:	ac4ff0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1026
    return BF_ST_MEM_ERROR;
    800588fe:	02000993          	li	s3,32
    80058902:	b941                	j	80058592 <bf_add_internal+0x62>
clz64():
quickjs-nuttx/cutils.h:126
    80058904:	853e                	mv	a0,a5
    80058906:	d90ab0ef          	jal	ra,80003e96 <__clzdi2>
    8005890a:	00050a1b          	sext.w	s4,a0
clz():
quickjs-nuttx/libbf.c:102
        return clz64(a);
    8005890e:	b581                	j	8005874e <bf_add_internal+0x21e>

0000000080058910 <__bf_add>:
__bf_add():
quickjs-nuttx/libbf.c:1032
    return bf_add_internal(r, a, b, prec, flags, 0);
    80058910:	4781                	li	a5,0
    80058912:	c1fff06f          	j	80058530 <bf_add_internal>

0000000080058916 <__bf_sub>:
__bf_sub():
quickjs-nuttx/libbf.c:1038
    return bf_add_internal(r, a, b, prec, flags, 1);
    80058916:	4785                	li	a5,1
    80058918:	c19ff06f          	j	80058530 <bf_add_internal>

000000008005891c <bf_cmp_full>:
bf_cmp_full():
quickjs-nuttx/libbf.c:785
    if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005891c:	691c                	ld	a5,16(a0)
    8005891e:	587d                	li	a6,-1
    80058920:	00185813          	srli	a6,a6,0x1
    80058924:	6990                	ld	a2,16(a1)
    80058926:	01078763          	beq	a5,a6,80058934 <bf_cmp_full+0x18>
quickjs-nuttx/libbf.c:791 (discriminator 1)
            res = -1;
    8005892a:	57fd                	li	a5,-1
quickjs-nuttx/libbf.c:785 (discriminator 1)
    if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005892c:	01061963          	bne	a2,a6,8005893e <bf_cmp_full+0x22>
quickjs-nuttx/libbf.c:800
}
    80058930:	853e                	mv	a0,a5
    80058932:	8082                	ret
quickjs-nuttx/libbf.c:786
        if (a->expn == b->expn)
    80058934:	40f607b3          	sub	a5,a2,a5
quickjs-nuttx/libbf.c:789
            res = 1;
    80058938:	00f037b3          	snez	a5,a5
    8005893c:	bfd5                	j	80058930 <bf_cmp_full+0x14>
quickjs-nuttx/libbf.c:782
{
    8005893e:	1141                	addi	sp,sp,-16
    80058940:	e022                	sd	s0,0(sp)
    80058942:	e406                	sd	ra,8(sp)
quickjs-nuttx/libbf.c:792
    } else if (a->sign != b->sign) {
    80058944:	4514                	lw	a3,8(a0)
    80058946:	4580                	lw	s0,8(a1)
    80058948:	00d40b63          	beq	s0,a3,8005895e <bf_cmp_full+0x42>
quickjs-nuttx/libbf.c:793
        res = 1 - 2 * a->sign;
    8005894c:	57f9                	li	a5,-2
    8005894e:	02d787bb          	mulw	a5,a5,a3
    80058952:	2785                	addiw	a5,a5,1
quickjs-nuttx/libbf.c:800
}
    80058954:	60a2                	ld	ra,8(sp)
    80058956:	6402                	ld	s0,0(sp)
    80058958:	853e                	mv	a0,a5
    8005895a:	0141                	addi	sp,sp,16
    8005895c:	8082                	ret
quickjs-nuttx/libbf.c:795
        res = bf_cmpu(a, b);
    8005895e:	b51ff0ef          	jal	ra,800584ae <bf_cmpu>
    80058962:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:796
        if (a->sign)
    80058964:	d865                	beqz	s0,80058954 <bf_cmp_full+0x38>
quickjs-nuttx/libbf.c:797
            res = -res;
    80058966:	40a007bb          	negw	a5,a0
    8005896a:	b7ed                	j	80058954 <bf_cmp_full+0x38>

000000008005896c <bf_cmp>:
bf_cmp():
quickjs-nuttx/libbf.c:809
    if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005896c:	01053803          	ld	a6,16(a0)
    80058970:	577d                	li	a4,-1
    80058972:	00175313          	srli	t1,a4,0x1
    80058976:	04680463          	beq	a6,t1,800589be <bf_cmp+0x52>
quickjs-nuttx/libbf.c:809 (discriminator 1)
    8005897a:	0105b883          	ld	a7,16(a1)
quickjs-nuttx/libbf.c:810 (discriminator 1)
        res = 2;
    8005897e:	4789                	li	a5,2
quickjs-nuttx/libbf.c:809 (discriminator 1)
    if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    80058980:	04688063          	beq	a7,t1,800589c0 <bf_cmp+0x54>
quickjs-nuttx/libbf.c:806
{
    80058984:	1141                	addi	sp,sp,-16
    80058986:	e022                	sd	s0,0(sp)
    80058988:	e406                	sd	ra,8(sp)
quickjs-nuttx/libbf.c:811
    } else if (a->sign != b->sign) {
    8005898a:	4510                	lw	a2,8(a0)
    8005898c:	4580                	lw	s0,8(a1)
    8005898e:	02c40163          	beq	s0,a2,800589b0 <bf_cmp+0x44>
quickjs-nuttx/libbf.c:812
        if (a->expn == BF_EXP_ZERO && b->expn == BF_EXP_ZERO)
    80058992:	177e                	slli	a4,a4,0x3f
    80058994:	00e81563          	bne	a6,a4,8005899e <bf_cmp+0x32>
quickjs-nuttx/libbf.c:813 (discriminator 1)
            res = 0;
    80058998:	4781                	li	a5,0
quickjs-nuttx/libbf.c:812 (discriminator 1)
        if (a->expn == BF_EXP_ZERO && b->expn == BF_EXP_ZERO)
    8005899a:	01088663          	beq	a7,a6,800589a6 <bf_cmp+0x3a>
quickjs-nuttx/libbf.c:815
            res = 1 - 2 * a->sign;
    8005899e:	57f9                	li	a5,-2
    800589a0:	02c787bb          	mulw	a5,a5,a2
    800589a4:	2785                	addiw	a5,a5,1
quickjs-nuttx/libbf.c:822
}
    800589a6:	60a2                	ld	ra,8(sp)
    800589a8:	6402                	ld	s0,0(sp)
    800589aa:	853e                	mv	a0,a5
    800589ac:	0141                	addi	sp,sp,16
    800589ae:	8082                	ret
quickjs-nuttx/libbf.c:817
        res = bf_cmpu(a, b);
    800589b0:	affff0ef          	jal	ra,800584ae <bf_cmpu>
    800589b4:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:818
        if (a->sign)
    800589b6:	d865                	beqz	s0,800589a6 <bf_cmp+0x3a>
quickjs-nuttx/libbf.c:819
            res = -res;
    800589b8:	40a007bb          	negw	a5,a0
    800589bc:	b7ed                	j	800589a6 <bf_cmp+0x3a>
quickjs-nuttx/libbf.c:810
        res = 2;
    800589be:	4789                	li	a5,2
quickjs-nuttx/libbf.c:822
}
    800589c0:	853e                	mv	a0,a5
    800589c2:	8082                	ret

00000000800589c4 <mp_add>:
mp_add():
quickjs-nuttx/libbf.c:1043
{
    800589c4:	88aa                	mv	a7,a0
    800589c6:	068e                	slli	a3,a3,0x3
quickjs-nuttx/libbf.c:1047
    k = carry;
    800589c8:	853a                	mv	a0,a4
quickjs-nuttx/libbf.c:1048
    for(i=0;i<n;i++) {
    800589ca:	4781                	li	a5,0
quickjs-nuttx/libbf.c:1048 (discriminator 1)
    800589cc:	00d79363          	bne	a5,a3,800589d2 <mp_add+0xe>
quickjs-nuttx/libbf.c:1057
}
    800589d0:	8082                	ret
quickjs-nuttx/libbf.c:1049 (discriminator 3)
        v = op1[i];
    800589d2:	00f58733          	add	a4,a1,a5
quickjs-nuttx/libbf.c:1050 (discriminator 3)
        a = v + op2[i];
    800589d6:	00f60833          	add	a6,a2,a5
quickjs-nuttx/libbf.c:1049 (discriminator 3)
        v = op1[i];
    800589da:	6318                	ld	a4,0(a4)
quickjs-nuttx/libbf.c:1050 (discriminator 3)
        a = v + op2[i];
    800589dc:	00083803          	ld	a6,0(a6)
    800589e0:	983a                	add	a6,a6,a4
quickjs-nuttx/libbf.c:1052 (discriminator 3)
        a = a + k;
    800589e2:	01050333          	add	t1,a0,a6
quickjs-nuttx/libbf.c:1051 (discriminator 3)
        k1 = a < v;
    800589e6:	00e83833          	sltu	a6,a6,a4
quickjs-nuttx/libbf.c:1053 (discriminator 3)
        k = (a < k) | k1;
    800589ea:	00a33733          	sltu	a4,t1,a0
    800589ee:	00e86733          	or	a4,a6,a4
    800589f2:	0ff77513          	zext.b	a0,a4
quickjs-nuttx/libbf.c:1054 (discriminator 3)
        res[i] = a;
    800589f6:	00f88733          	add	a4,a7,a5
    800589fa:	00673023          	sd	t1,0(a4)
quickjs-nuttx/libbf.c:1048 (discriminator 3)
    for(i=0;i<n;i++) {
    800589fe:	07a1                	addi	a5,a5,8
    80058a00:	b7f1                	j	800589cc <mp_add+0x8>

0000000080058a02 <mp_add_ui>:
mp_add_ui():
quickjs-nuttx/libbf.c:1065
    for(i=0;i<n;i++) {
    80058a02:	87aa                	mv	a5,a0
    80058a04:	4681                	li	a3,0
quickjs-nuttx/libbf.c:1064
    k=b;
    80058a06:	852e                	mv	a0,a1
quickjs-nuttx/libbf.c:1065 (discriminator 1)
    for(i=0;i<n;i++) {
    80058a08:	00c69363          	bne	a3,a2,80058a0e <mp_add_ui+0xc>
quickjs-nuttx/libbf.c:1073
}
    80058a0c:	8082                	ret
quickjs-nuttx/libbf.c:1066
        if (k == 0)
    80058a0e:	dd7d                	beqz	a0,80058a0c <mp_add_ui+0xa>
quickjs-nuttx/libbf.c:1068 (discriminator 2)
        a = tab[i] + k;
    80058a10:	6398                	ld	a4,0(a5)
quickjs-nuttx/libbf.c:1065 (discriminator 2)
    for(i=0;i<n;i++) {
    80058a12:	0685                	addi	a3,a3,1
    80058a14:	07a1                	addi	a5,a5,8
quickjs-nuttx/libbf.c:1068 (discriminator 2)
        a = tab[i] + k;
    80058a16:	972a                	add	a4,a4,a0
quickjs-nuttx/libbf.c:1070 (discriminator 2)
        tab[i] = a;
    80058a18:	fee7bc23          	sd	a4,-8(a5)
quickjs-nuttx/libbf.c:1069 (discriminator 2)
        k = (a < k);
    80058a1c:	00a73533          	sltu	a0,a4,a0
quickjs-nuttx/libbf.c:1065 (discriminator 2)
    for(i=0;i<n;i++) {
    80058a20:	b7e5                	j	80058a08 <mp_add_ui+0x6>

0000000080058a22 <mp_sub>:
mp_sub():
quickjs-nuttx/libbf.c:1077
{
    80058a22:	832a                	mv	t1,a0
quickjs-nuttx/libbf.c:1082
    for(i=0;i<n;i++) {
    80058a24:	4881                	li	a7,0
quickjs-nuttx/libbf.c:1077
{
    80058a26:	853a                	mv	a0,a4
quickjs-nuttx/libbf.c:1082 (discriminator 1)
    for(i=0;i<n;i++) {
    80058a28:	00d8c363          	blt	a7,a3,80058a2e <mp_sub+0xc>
quickjs-nuttx/libbf.c:1091
}
    80058a2c:	8082                	ret
quickjs-nuttx/libbf.c:1083 (discriminator 3)
        v = op1[i];
    80058a2e:	00389713          	slli	a4,a7,0x3
    80058a32:	00e587b3          	add	a5,a1,a4
    80058a36:	0007b803          	ld	a6,0(a5)
quickjs-nuttx/libbf.c:1084 (discriminator 3)
        a = v - op2[i];
    80058a3a:	00e607b3          	add	a5,a2,a4
    80058a3e:	639c                	ld	a5,0(a5)
quickjs-nuttx/libbf.c:1088 (discriminator 3)
        res[i] = v;
    80058a40:	971a                	add	a4,a4,t1
quickjs-nuttx/libbf.c:1082 (discriminator 3)
    for(i=0;i<n;i++) {
    80058a42:	2885                	addiw	a7,a7,1
quickjs-nuttx/libbf.c:1084 (discriminator 3)
        a = v - op2[i];
    80058a44:	40f807b3          	sub	a5,a6,a5
quickjs-nuttx/libbf.c:1086 (discriminator 3)
        v = a - k;
    80058a48:	40a78e33          	sub	t3,a5,a0
quickjs-nuttx/libbf.c:1085 (discriminator 3)
        k1 = a > v;
    80058a4c:	00f83833          	sltu	a6,a6,a5
quickjs-nuttx/libbf.c:1087 (discriminator 3)
        k = (v > a) | k1;
    80058a50:	01c7b7b3          	sltu	a5,a5,t3
    80058a54:	00f867b3          	or	a5,a6,a5
    80058a58:	0ff7f513          	zext.b	a0,a5
quickjs-nuttx/libbf.c:1088 (discriminator 3)
        res[i] = v;
    80058a5c:	01c73023          	sd	t3,0(a4)
quickjs-nuttx/libbf.c:1082 (discriminator 3)
    for(i=0;i<n;i++) {
    80058a60:	b7e1                	j	80058a28 <mp_sub+0x6>

0000000080058a62 <mp_sub_ui>:
mp_sub_ui():
quickjs-nuttx/libbf.c:1117
    for(i=0;i<n;i++) {
    80058a62:	87aa                	mv	a5,a0
    80058a64:	4701                	li	a4,0
quickjs-nuttx/libbf.c:1116
    k=b;
    80058a66:	852e                	mv	a0,a1
quickjs-nuttx/libbf.c:1117 (discriminator 1)
    for(i=0;i<n;i++) {
    80058a68:	00c74363          	blt	a4,a2,80058a6e <mp_sub_ui+0xc>
quickjs-nuttx/libbf.c:1126
}
    80058a6c:	8082                	ret
quickjs-nuttx/libbf.c:1118
        v = tab[i];
    80058a6e:	638c                	ld	a1,0(a5)
quickjs-nuttx/libbf.c:1122
        if (k == 0)
    80058a70:	07a1                	addi	a5,a5,8
quickjs-nuttx/libbf.c:1119
        a = v - k;
    80058a72:	40a586b3          	sub	a3,a1,a0
quickjs-nuttx/libbf.c:1121
        tab[i] = a;
    80058a76:	fed7bc23          	sd	a3,-8(a5)
quickjs-nuttx/libbf.c:1120
        k = a > v;
    80058a7a:	00d5b533          	sltu	a0,a1,a3
quickjs-nuttx/libbf.c:1122
        if (k == 0)
    80058a7e:	fed5f7e3          	bgeu	a1,a3,80058a6c <mp_sub_ui+0xa>
quickjs-nuttx/libbf.c:1117 (discriminator 2)
    for(i=0;i<n;i++) {
    80058a82:	0705                	addi	a4,a4,1
    80058a84:	b7d5                	j	80058a68 <mp_sub_ui+0x6>

0000000080058a86 <bf_mul_2exp>:
bf_mul_2exp():
quickjs-nuttx/libbf.c:1626
{
    80058a86:	87ae                	mv	a5,a1
    80058a88:	85b2                	mv	a1,a2
    80058a8a:	8636                	mv	a2,a3
quickjs-nuttx/libbf.c:1628
    if (r->len == 0)
    80058a8c:	6d14                	ld	a3,24(a0)
    80058a8e:	c69d                	beqz	a3,80058abc <bf_mul_2exp+0x36>
bf_max():
quickjs-nuttx/libbf.h:180
    if (a > b)
    80058a90:	587d                	li	a6,-1
    80058a92:	03e81713          	slli	a4,a6,0x3e
    80058a96:	00270893          	addi	a7,a4,2
    80058a9a:	0117ce63          	blt	a5,a7,80058ab6 <bf_mul_2exp+0x30>
bf_min():
quickjs-nuttx/libbf.h:188
    if (a < b)
    80058a9e:	576d                	li	a4,-5
    80058aa0:	8309                	srli	a4,a4,0x2
    80058aa2:	00f75463          	bge	a4,a5,80058aaa <bf_mul_2exp+0x24>
quickjs-nuttx/libbf.h:191
        return b;
    80058aa6:	00285793          	srli	a5,a6,0x2
bf_mul_2exp():
quickjs-nuttx/libbf.c:1633
    r->expn += e;
    80058aaa:	6918                	ld	a4,16(a0)
    80058aac:	97ba                	add	a5,a5,a4
    80058aae:	e91c                	sd	a5,16(a0)
quickjs-nuttx/libbf.c:1634
    return __bf_round(r, prec, flags, r->len, 0);
    80058ab0:	4701                	li	a4,0
    80058ab2:	acaff06f          	j	80057d7c <__bf_round>
bf_max():
quickjs-nuttx/libbf.h:183
        return b;
    80058ab6:	00170793          	addi	a5,a4,1
    80058aba:	bfc5                	j	80058aaa <bf_mul_2exp+0x24>
bf_mul_2exp():
quickjs-nuttx/libbf.c:1635
}
    80058abc:	4501                	li	a0,0
    80058abe:	8082                	ret

0000000080058ac0 <bf_get_exp_min>:
bf_get_exp_min():
quickjs-nuttx/libbf.c:1640
{
    80058ac0:	1101                	addi	sp,sp,-32
    80058ac2:	e426                	sd	s1,8(sp)
    80058ac4:	e04a                	sd	s2,0(sp)
    80058ac6:	ec06                	sd	ra,24(sp)
    80058ac8:	e822                	sd	s0,16(sp)
quickjs-nuttx/libbf.c:1645
    for(i = 0; i < a->len; i++) {
    80058aca:	6d00                	ld	s0,24(a0)
quickjs-nuttx/libbf.c:1640
{
    80058acc:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:1645
    for(i = 0; i < a->len; i++) {
    80058ace:	4481                	li	s1,0
quickjs-nuttx/libbf.c:1645 (discriminator 1)
    80058ad0:	00941463          	bne	s0,s1,80058ad8 <bf_get_exp_min+0x18>
quickjs-nuttx/libbf.c:1652
    return 0;
    80058ad4:	4501                	li	a0,0
    80058ad6:	a00d                	j	80058af8 <bf_get_exp_min+0x38>
quickjs-nuttx/libbf.c:1646
        v = a->tab[i];
    80058ad8:	02093783          	ld	a5,32(s2)
    80058adc:	00349713          	slli	a4,s1,0x3
    80058ae0:	97ba                	add	a5,a5,a4
    80058ae2:	6388                	ld	a0,0(a5)
quickjs-nuttx/libbf.c:1647
        if (v != 0) {
    80058ae4:	c105                	beqz	a0,80058b04 <bf_get_exp_min+0x44>
ctz64():
quickjs-nuttx/cutils.h:138
    return __builtin_ctzll(a);
    80058ae6:	be0ab0ef          	jal	ra,80003ec6 <__ctzdi2>
bf_get_exp_min():
quickjs-nuttx/libbf.c:1649
            return a->expn - (a->len - i) * LIMB_BITS + k;
    80058aea:	01093783          	ld	a5,16(s2)
ctz64():
quickjs-nuttx/cutils.h:138
    80058aee:	2501                	sext.w	a0,a0
bf_get_exp_min():
quickjs-nuttx/libbf.c:1649
    80058af0:	8c05                	sub	s0,s0,s1
    80058af2:	953e                	add	a0,a0,a5
    80058af4:	041a                	slli	s0,s0,0x6
    80058af6:	8d01                	sub	a0,a0,s0
quickjs-nuttx/libbf.c:1653
}
    80058af8:	60e2                	ld	ra,24(sp)
    80058afa:	6442                	ld	s0,16(sp)
    80058afc:	64a2                	ld	s1,8(sp)
    80058afe:	6902                	ld	s2,0(sp)
    80058b00:	6105                	addi	sp,sp,32
    80058b02:	8082                	ret
quickjs-nuttx/libbf.c:1645 (discriminator 2)
    for(i = 0; i < a->len; i++) {
    80058b04:	0485                	addi	s1,s1,1
    80058b06:	b7e9                	j	80058ad0 <bf_get_exp_min+0x10>

0000000080058b08 <bf_isqrt>:
bf_isqrt():
quickjs-nuttx/libbf.c:1951
{
    80058b08:	7179                	addi	sp,sp,-48
    80058b0a:	f022                	sd	s0,32(sp)
    80058b0c:	f406                	sd	ra,40(sp)
    80058b0e:	ec26                	sd	s1,24(sp)
    80058b10:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:1955
    if (a == 0)
    80058b12:	cd19                	beqz	a0,80058b30 <bf_isqrt+0x28>
clz64():
quickjs-nuttx/cutils.h:126
    return __builtin_clzll(a);
    80058b14:	b82ab0ef          	jal	ra,80003e96 <__clzdi2>
    80058b18:	0005049b          	sext.w	s1,a0
bf_isqrt():
quickjs-nuttx/libbf.c:1957
    k = clz(a) & ~1;
    80058b1c:	98f9                	andi	s1,s1,-2
quickjs-nuttx/libbf.c:1958
    s = mp_sqrtrem1(&r, a << k);
    80058b1e:	009415b3          	sll	a1,s0,s1
    80058b22:	0028                	addi	a0,sp,8
    80058b24:	8acfe0ef          	jal	ra,80056bd0 <mp_sqrtrem1>
quickjs-nuttx/libbf.c:1959
    s >>= (k >> 1);
    80058b28:	4014d41b          	sraiw	s0,s1,0x1
    80058b2c:	00855433          	srl	s0,a0,s0
quickjs-nuttx/libbf.c:1961
}
    80058b30:	70a2                	ld	ra,40(sp)
    80058b32:	8522                	mv	a0,s0
    80058b34:	7402                	ld	s0,32(sp)
    80058b36:	64e2                	ld	s1,24(sp)
    80058b38:	6145                	addi	sp,sp,48
    80058b3a:	8082                	ret

0000000080058b3c <bf_add>:
bf_add():
quickjs-nuttx/libbf.c:2228
    return bf_op2(r, a, b, prec, flags, __bf_add);
    80058b3c:	00000797          	auipc	a5,0x0
    80058b40:	dd478793          	addi	a5,a5,-556 # 80058910 <__bf_add>
    80058b44:	d5aff06f          	j	8005809e <bf_op2>

0000000080058b48 <bf_add_epsilon.isra.0>:
bf_add_epsilon():
quickjs-nuttx/libbf.c:4285
static int bf_add_epsilon(bf_t *r, const bf_t *a, slimb_t e, int e_sign,
    80058b48:	7159                	addi	sp,sp,-112
    80058b4a:	e43e                	sd	a5,8(sp)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058b4c:	57fd                	li	a5,-1
bf_add_epsilon():
quickjs-nuttx/libbf.c:4285
static int bf_add_epsilon(bf_t *r, const bf_t *a, slimb_t e, int e_sign,
    80058b4e:	f0a2                	sd	s0,96(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058b50:	ec2e                	sd	a1,24(sp)
bf_add_epsilon():
quickjs-nuttx/libbf.c:4285
static int bf_add_epsilon(bf_t *r, const bf_t *a, slimb_t e, int e_sign,
    80058b52:	842a                	mv	s0,a0
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058b54:	17fe                	slli	a5,a5,0x3f
bf_add_epsilon():
quickjs-nuttx/libbf.c:4292
    bf_set_ui(T, 1);
    80058b56:	4585                	li	a1,1
    80058b58:	0828                	addi	a0,sp,24
quickjs-nuttx/libbf.c:4285
static int bf_add_epsilon(bf_t *r, const bf_t *a, slimb_t e, int e_sign,
    80058b5a:	f486                	sd	ra,104(sp)
    80058b5c:	eca6                	sd	s1,88(sp)
    80058b5e:	e8ca                	sd	s2,80(sp)
    80058b60:	e4ce                	sd	s3,72(sp)
    80058b62:	84ba                	mv	s1,a4
    80058b64:	89b6                	mv	s3,a3
    80058b66:	8932                	mv	s2,a2
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058b68:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    80058b6a:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    80058b6c:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    80058b6e:	fc02                	sd	zero,56(sp)
bf_add_epsilon():
quickjs-nuttx/libbf.c:4292
    bf_set_ui(T, 1);
    80058b70:	86eff0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4294
    T->expn += e;
    80058b74:	77a2                	ld	a5,40(sp)
quickjs-nuttx/libbf.c:4295
    ret = bf_add(r, r, T, prec, flags);
    80058b76:	6722                	ld	a4,8(sp)
    80058b78:	86a6                	mv	a3,s1
quickjs-nuttx/libbf.c:4294
    T->expn += e;
    80058b7a:	01278633          	add	a2,a5,s2
    80058b7e:	f432                	sd	a2,40(sp)
quickjs-nuttx/libbf.c:4295
    ret = bf_add(r, r, T, prec, flags);
    80058b80:	85a2                	mv	a1,s0
    80058b82:	0830                	addi	a2,sp,24
    80058b84:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:4293
    T->sign = e_sign;
    80058b86:	d04e                	sw	s3,32(sp)
quickjs-nuttx/libbf.c:4295
    ret = bf_add(r, r, T, prec, flags);
    80058b88:	fb5ff0ef          	jal	ra,80058b3c <bf_add>
    80058b8c:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:4296
    bf_delete(T);
    80058b8e:	0828                	addi	a0,sp,24
    80058b90:	f1bfd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4298
}
    80058b94:	70a6                	ld	ra,104(sp)
    80058b96:	8522                	mv	a0,s0
    80058b98:	7406                	ld	s0,96(sp)
    80058b9a:	64e6                	ld	s1,88(sp)
    80058b9c:	6946                	ld	s2,80(sp)
    80058b9e:	69a6                	ld	s3,72(sp)
    80058ba0:	6165                	addi	sp,sp,112
    80058ba2:	8082                	ret

0000000080058ba4 <bf_sub>:
bf_sub():
quickjs-nuttx/libbf.c:2234
    return bf_op2(r, a, b, prec, flags, __bf_sub);
    80058ba4:	00000797          	auipc	a5,0x0
    80058ba8:	d7278793          	addi	a5,a5,-654 # 80058916 <__bf_sub>
    80058bac:	cf2ff06f          	j	8005809e <bf_op2>

0000000080058bb0 <bf_div>:
bf_div():
quickjs-nuttx/libbf.c:2240
    return bf_op2(r, a, b, prec, flags, __bf_div);
    80058bb0:	00003797          	auipc	a5,0x3
    80058bb4:	64678793          	addi	a5,a5,1606 # 8005c1f6 <__bf_div>
    80058bb8:	ce6ff06f          	j	8005809e <bf_op2>

0000000080058bbc <bf_add_si>:
bf_add_si():
quickjs-nuttx/libbf.c:2269
{
    80058bbc:	711d                	addi	sp,sp,-96
    80058bbe:	ec86                	sd	ra,88(sp)
    80058bc0:	e8a2                	sd	s0,80(sp)
    80058bc2:	e4a6                	sd	s1,72(sp)
    80058bc4:	e0ca                	sd	s2,64(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058bc6:	611c                	ld	a5,0(a0)
bf_add_si():
quickjs-nuttx/libbf.c:2269
{
    80058bc8:	84aa                	mv	s1,a0
    80058bca:	892e                	mv	s2,a1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058bcc:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058bce:	57fd                	li	a5,-1
    80058bd0:	17fe                	slli	a5,a5,0x3f
bf_add_si():
quickjs-nuttx/libbf.c:2274
    ret = bf_set_si(&b, b1);
    80058bd2:	85b2                	mv	a1,a2
    80058bd4:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058bd6:	f43e                	sd	a5,40(sp)
bf_add_si():
quickjs-nuttx/libbf.c:2269
{
    80058bd8:	e436                	sd	a3,8(sp)
    80058bda:	e03a                	sd	a4,0(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    80058bdc:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    80058bde:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    80058be0:	fc02                	sd	zero,56(sp)
bf_add_si():
quickjs-nuttx/libbf.c:2274
    ret = bf_set_si(&b, b1);
    80058be2:	85aff0ef          	jal	ra,80057c3c <bf_set_si>
quickjs-nuttx/libbf.c:2275
    ret |= bf_add(r, a, &b, prec, flags);
    80058be6:	6702                	ld	a4,0(sp)
    80058be8:	66a2                	ld	a3,8(sp)
    80058bea:	0830                	addi	a2,sp,24
    80058bec:	85ca                	mv	a1,s2
quickjs-nuttx/libbf.c:2274
    ret = bf_set_si(&b, b1);
    80058bee:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2275
    ret |= bf_add(r, a, &b, prec, flags);
    80058bf0:	8526                	mv	a0,s1
    80058bf2:	f4bff0ef          	jal	ra,80058b3c <bf_add>
    80058bf6:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:2276
    bf_delete(&b);
    80058bf8:	0828                	addi	a0,sp,24
    80058bfa:	eb1fd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2275
    ret |= bf_add(r, a, &b, prec, flags);
    80058bfe:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:2278
}
    80058c00:	60e6                	ld	ra,88(sp)
    80058c02:	8522                	mv	a0,s0
    80058c04:	6446                	ld	s0,80(sp)
    80058c06:	64a6                	ld	s1,72(sp)
    80058c08:	6906                	ld	s2,64(sp)
    80058c0a:	6125                	addi	sp,sp,96
    80058c0c:	8082                	ret

0000000080058c0e <bf_logic_op>:
bf_logic_op():
quickjs-nuttx/libbf.c:2345
{
    80058c0e:	7115                	addi	sp,sp,-224
    80058c10:	ed86                	sd	ra,216(sp)
    80058c12:	e9a2                	sd	s0,208(sp)
    80058c14:	e5a6                	sd	s1,200(sp)
    80058c16:	e1ca                	sd	s2,192(sp)
    80058c18:	fd4e                	sd	s3,184(sp)
    80058c1a:	f952                	sd	s4,176(sp)
    80058c1c:	f556                	sd	s5,168(sp)
    80058c1e:	f15a                	sd	s6,160(sp)
    80058c20:	ed5e                	sd	s7,152(sp)
    80058c22:	e962                	sd	s8,144(sp)
    80058c24:	e566                	sd	s9,136(sp)
    80058c26:	e16a                	sd	s10,128(sp)
    80058c28:	fcee                	sd	s11,120(sp)
quickjs-nuttx/libbf.c:2352
    assert(r != a1 && r != b1);
    80058c2a:	00b50663          	beq	a0,a1,80058c36 <bf_logic_op+0x28>
    80058c2e:	8aaa                	mv	s5,a0
    80058c30:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:2352 (discriminator 2)
    80058c32:	00c51c63          	bne	a0,a2,80058c4a <bf_logic_op+0x3c>
quickjs-nuttx/libbf.c:2352 (discriminator 3)
    80058c36:	6585                	lui	a1,0x1
    80058c38:	4601                	li	a2,0
    80058c3a:	93058593          	addi	a1,a1,-1744 # 930 <asinh-0x7ffff6d0>
    80058c3e:	00028517          	auipc	a0,0x28
    80058c42:	98250513          	addi	a0,a0,-1662 # 800805c0 <std_name.0+0x18>
    80058c46:	517070ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:2354 (discriminator 4)
    if (a1->expn <= 0)
    80058c4a:	699c                	ld	a5,16(a1)
    80058c4c:	8a2e                	mv	s4,a1
    80058c4e:	8bb6                	mv	s7,a3
quickjs-nuttx/libbf.c:2355 (discriminator 4)
        a_sign = 0; /* minus zero is considered as positive */
    80058c50:	4901                	li	s2,0
quickjs-nuttx/libbf.c:2354 (discriminator 4)
    if (a1->expn <= 0)
    80058c52:	00f05463          	blez	a5,80058c5a <bf_logic_op+0x4c>
quickjs-nuttx/libbf.c:2357
        a_sign = a1->sign;
    80058c56:	0085a903          	lw	s2,8(a1)
quickjs-nuttx/libbf.c:2359
    if (b1->expn <= 0)
    80058c5a:	0109b783          	ld	a5,16(s3)
    80058c5e:	1cf05963          	blez	a5,80058e30 <bf_logic_op+0x222>
quickjs-nuttx/libbf.c:2362
        b_sign = b1->sign;
    80058c62:	0089a483          	lw	s1,8(s3)
quickjs-nuttx/libbf.c:2364
    if (a_sign) {
    80058c66:	02090763          	beqz	s2,80058c94 <bf_logic_op+0x86>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058c6a:	000ab783          	ld	a5,0(s5)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058c6e:	56fd                	li	a3,-1
bf_logic_op():
quickjs-nuttx/libbf.c:2367
        if (bf_add_si(a, a1, 1, BF_PREC_INF, BF_RNDZ)) {
    80058c70:	4705                	li	a4,1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058c72:	e4be                	sd	a5,72(sp)
bf_logic_op():
quickjs-nuttx/libbf.c:2367
        if (bf_add_si(a, a1, 1, BF_PREC_INF, BF_RNDZ)) {
    80058c74:	4605                	li	a2,1
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058c76:	03f69793          	slli	a5,a3,0x3f
bf_logic_op():
quickjs-nuttx/libbf.c:2367
        if (bf_add_si(a, a1, 1, BF_PREC_INF, BF_RNDZ)) {
    80058c7a:	85d2                	mv	a1,s4
    80058c7c:	8289                	srli	a3,a3,0x2
    80058c7e:	00a8                	addi	a0,sp,72
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    80058c80:	c882                	sw	zero,80(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058c82:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    80058c84:	f082                	sd	zero,96(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    80058c86:	f482                	sd	zero,104(sp)
bf_logic_op():
quickjs-nuttx/libbf.c:2367
        if (bf_add_si(a, a1, 1, BF_PREC_INF, BF_RNDZ)) {
    80058c88:	f35ff0ef          	jal	ra,80058bbc <bf_add_si>
    80058c8c:	18051963          	bnez	a0,80058e1e <bf_logic_op+0x210>
quickjs-nuttx/libbf.c:2365
        a = &a1_s;
    80058c90:	04810a13          	addi	s4,sp,72
quickjs-nuttx/libbf.c:2375
    if (b_sign) {
    80058c94:	c495                	beqz	s1,80058cc0 <bf_logic_op+0xb2>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058c96:	000ab783          	ld	a5,0(s5)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058c9a:	56fd                	li	a3,-1
bf_logic_op():
quickjs-nuttx/libbf.c:2378
        if (bf_add_si(b, b1, 1, BF_PREC_INF, BF_RNDZ))
    80058c9c:	85ce                	mv	a1,s3
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058c9e:	f03e                	sd	a5,32(sp)
bf_logic_op():
quickjs-nuttx/libbf.c:2378
        if (bf_add_si(b, b1, 1, BF_PREC_INF, BF_RNDZ))
    80058ca0:	4705                	li	a4,1
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058ca2:	03f69793          	slli	a5,a3,0x3f
bf_logic_op():
quickjs-nuttx/libbf.c:2378
        if (bf_add_si(b, b1, 1, BF_PREC_INF, BF_RNDZ))
    80058ca6:	4605                	li	a2,1
    80058ca8:	8289                	srli	a3,a3,0x2
    80058caa:	1008                	addi	a0,sp,32
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    80058cac:	d402                	sw	zero,40(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058cae:	f83e                	sd	a5,48(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    80058cb0:	fc02                	sd	zero,56(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    80058cb2:	e082                	sd	zero,64(sp)
bf_logic_op():
quickjs-nuttx/libbf.c:2378
        if (bf_add_si(b, b1, 1, BF_PREC_INF, BF_RNDZ))
    80058cb4:	f09ff0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:2376
        b = &b1_s;
    80058cb8:	02010993          	addi	s3,sp,32
quickjs-nuttx/libbf.c:2378
        if (bf_add_si(b, b1, 1, BF_PREC_INF, BF_RNDZ))
    80058cbc:	16051463          	bnez	a0,80058e24 <bf_logic_op+0x216>
bf_logic_op1():
quickjs-nuttx/libbf.c:2333
    switch(op) {
    80058cc0:	0c0b8f63          	beqz	s7,80058d9e <bf_logic_op+0x190>
    80058cc4:	4785                	li	a5,1
    80058cc6:	0efb8663          	beq	s7,a5,80058db2 <bf_logic_op+0x1a4>
quickjs-nuttx/libbf.c:2340
        return a & b;
    80058cca:	0124fc33          	and	s8,s1,s2
bf_logic_op():
quickjs-nuttx/libbf.c:2385
    if (op == BF_LOGIC_AND && r_sign == 0) {
    80058cce:	0c0c1a63          	bnez	s8,80058da2 <bf_logic_op+0x194>
quickjs-nuttx/libbf.c:2387
        if (a_sign == 0 && b_sign == 0)
    80058cd2:	0e091363          	bnez	s2,80058db8 <bf_logic_op+0x1aa>
quickjs-nuttx/libbf.c:2388 (discriminator 1)
            l = bf_min(a->expn, b->expn);
    80058cd6:	010a3783          	ld	a5,16(s4)
quickjs-nuttx/libbf.c:2387 (discriminator 1)
        if (a_sign == 0 && b_sign == 0)
    80058cda:	e499                	bnez	s1,80058ce8 <bf_logic_op+0xda>
bf_min():
quickjs-nuttx/libbf.h:188
    if (a < b)
    80058cdc:	0109b703          	ld	a4,16(s3)
    80058ce0:	00f75363          	bge	a4,a5,80058ce6 <bf_logic_op+0xd8>
    80058ce4:	87ba                	mv	a5,a4
bf_logic_op1():
quickjs-nuttx/libbf.c:2340
        return a & b;
    80058ce6:	4c01                	li	s8,0
bf_logic_op():
quickjs-nuttx/libbf.c:2397
    l = (bf_max(l, 1) + LIMB_BITS - 1) / LIMB_BITS;
    80058ce8:	00f04363          	bgtz	a5,80058cee <bf_logic_op+0xe0>
    80058cec:	4785                	li	a5,1
    80058cee:	03f78793          	addi	a5,a5,63
    80058cf2:	04000413          	li	s0,64
    80058cf6:	0287c433          	div	s0,a5,s0
quickjs-nuttx/libbf.c:2398
    if (bf_resize(r, l))
    80058cfa:	8556                	mv	a0,s5
    80058cfc:	85a2                	mv	a1,s0
    80058cfe:	e87fe0ef          	jal	ra,80057b84 <bf_resize>
    80058d02:	8b2a                	mv	s6,a0
    80058d04:	12051063          	bnez	a0,80058e24 <bf_logic_op+0x216>
quickjs-nuttx/libbf.c:2400
    a_bit_offset = a->len * LIMB_BITS - a->expn;
    80058d08:	018a3d83          	ld	s11,24(s4)
    80058d0c:	010a3783          	ld	a5,16(s4)
quickjs-nuttx/libbf.c:2401
    b_bit_offset = b->len * LIMB_BITS - b->expn;
    80058d10:	0189bd03          	ld	s10,24(s3)
quickjs-nuttx/libbf.c:2400
    a_bit_offset = a->len * LIMB_BITS - a->expn;
    80058d14:	0d9a                	slli	s11,s11,0x6
    80058d16:	40fd8db3          	sub	s11,s11,a5
quickjs-nuttx/libbf.c:2401
    b_bit_offset = b->len * LIMB_BITS - b->expn;
    80058d1a:	0109b783          	ld	a5,16(s3)
    80058d1e:	0d1a                	slli	s10,s10,0x6
quickjs-nuttx/libbf.c:2402
    v1_mask = -a_sign;
    80058d20:	41200933          	neg	s2,s2
quickjs-nuttx/libbf.c:2401
    b_bit_offset = b->len * LIMB_BITS - b->expn;
    80058d24:	40fd0d33          	sub	s10,s10,a5
quickjs-nuttx/libbf.c:2403
    v2_mask = -b_sign;
    80058d28:	409006b3          	neg	a3,s1
quickjs-nuttx/libbf.c:2404
    r_mask = -r_sign;
    80058d2c:	41800833          	neg	a6,s8
quickjs-nuttx/libbf.c:2405
    for(i = 0; i < l; i++) {
    80058d30:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:2405 (discriminator 1)
    80058d32:	088cc663          	blt	s9,s0,80058dbe <bf_logic_op+0x1b0>
quickjs-nuttx/libbf.c:2410
    r->expn = l * LIMB_BITS;
    80058d36:	041a                	slli	s0,s0,0x6
    80058d38:	008ab823          	sd	s0,16(s5)
quickjs-nuttx/libbf.c:2412
    bf_normalize_and_round(r, BF_PREC_INF, BF_RNDZ); /* cannot fail */
    80058d3c:	547d                	li	s0,-1
quickjs-nuttx/libbf.c:2411
    r->sign = r_sign;
    80058d3e:	018aa423          	sw	s8,8(s5)
quickjs-nuttx/libbf.c:2412
    bf_normalize_and_round(r, BF_PREC_INF, BF_RNDZ); /* cannot fail */
    80058d42:	4605                	li	a2,1
    80058d44:	00245593          	srli	a1,s0,0x2
    80058d48:	8556                	mv	a0,s5
    80058d4a:	baaff0ef          	jal	ra,800580f4 <bf_normalize_and_round>
quickjs-nuttx/libbf.c:2413
    if (r_sign) {
    80058d4e:	000c0c63          	beqz	s8,80058d66 <bf_logic_op+0x158>
quickjs-nuttx/libbf.c:2414
        if (bf_add_si(r, r, -1, BF_PREC_INF, BF_RNDZ))
    80058d52:	4705                	li	a4,1
    80058d54:	00245693          	srli	a3,s0,0x2
    80058d58:	567d                	li	a2,-1
    80058d5a:	85d6                	mv	a1,s5
    80058d5c:	8556                	mv	a0,s5
    80058d5e:	e5fff0ef          	jal	ra,80058bbc <bf_add_si>
    80058d62:	8b2a                	mv	s6,a0
    80058d64:	e161                	bnez	a0,80058e24 <bf_logic_op+0x216>
quickjs-nuttx/libbf.c:2419
    if (a == &a1_s)
    80058d66:	00bc                	addi	a5,sp,72
    80058d68:	00fa1563          	bne	s4,a5,80058d72 <bf_logic_op+0x164>
quickjs-nuttx/libbf.c:2420
        bf_delete(a);
    80058d6c:	8552                	mv	a0,s4
    80058d6e:	d3dfd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2421
    if (b == &b1_s)
    80058d72:	101c                	addi	a5,sp,32
    80058d74:	00f99563          	bne	s3,a5,80058d7e <bf_logic_op+0x170>
quickjs-nuttx/libbf.c:2422
        bf_delete(b);
    80058d78:	854e                	mv	a0,s3
    80058d7a:	d31fd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2428
}
    80058d7e:	60ee                	ld	ra,216(sp)
    80058d80:	644e                	ld	s0,208(sp)
    80058d82:	64ae                	ld	s1,200(sp)
    80058d84:	690e                	ld	s2,192(sp)
    80058d86:	79ea                	ld	s3,184(sp)
    80058d88:	7a4a                	ld	s4,176(sp)
    80058d8a:	7aaa                	ld	s5,168(sp)
    80058d8c:	6bea                	ld	s7,152(sp)
    80058d8e:	6c4a                	ld	s8,144(sp)
    80058d90:	6caa                	ld	s9,136(sp)
    80058d92:	6d0a                	ld	s10,128(sp)
    80058d94:	7de6                	ld	s11,120(sp)
    80058d96:	855a                	mv	a0,s6
    80058d98:	7b0a                	ld	s6,160(sp)
    80058d9a:	612d                	addi	sp,sp,224
    80058d9c:	8082                	ret
bf_logic_op1():
quickjs-nuttx/libbf.c:2335
        return a | b;
    80058d9e:	0124ec33          	or	s8,s1,s2
bf_max():
quickjs-nuttx/libbf.h:180
    if (a > b)
    80058da2:	0109b703          	ld	a4,16(s3)
    80058da6:	010a3783          	ld	a5,16(s4)
    80058daa:	f2e7dfe3          	bge	a5,a4,80058ce8 <bf_logic_op+0xda>
    80058dae:	87ba                	mv	a5,a4
    80058db0:	bf25                	j	80058ce8 <bf_logic_op+0xda>
bf_logic_op1():
quickjs-nuttx/libbf.c:2337
        return a ^ b;
    80058db2:	0124cc33          	xor	s8,s1,s2
    80058db6:	b7f5                	j	80058da2 <bf_logic_op+0x194>
bf_logic_op():
quickjs-nuttx/libbf.c:2392
            l = b->expn;
    80058db8:	0109b783          	ld	a5,16(s3)
    80058dbc:	b735                	j	80058ce8 <bf_logic_op+0xda>
quickjs-nuttx/libbf.c:2406 (discriminator 3)
        v1 = get_bits(a->tab, a->len, a_bit_offset + i * LIMB_BITS) ^ v1_mask;
    80058dbe:	018a3583          	ld	a1,24(s4)
    80058dc2:	020a3503          	ld	a0,32(s4)
    80058dc6:	006c9793          	slli	a5,s9,0x6
    80058dca:	00fd8633          	add	a2,s11,a5
    80058dce:	ec42                	sd	a6,24(sp)
    80058dd0:	e836                	sd	a3,16(sp)
    80058dd2:	e43e                	sd	a5,8(sp)
    80058dd4:	d17fd0ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:2407 (discriminator 3)
        v2 = get_bits(b->tab, b->len, b_bit_offset + i * LIMB_BITS) ^ v2_mask;
    80058dd8:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libbf.c:2406 (discriminator 3)
        v1 = get_bits(a->tab, a->len, a_bit_offset + i * LIMB_BITS) ^ v1_mask;
    80058dda:	012544b3          	xor	s1,a0,s2
quickjs-nuttx/libbf.c:2407 (discriminator 3)
        v2 = get_bits(b->tab, b->len, b_bit_offset + i * LIMB_BITS) ^ v2_mask;
    80058dde:	0189b583          	ld	a1,24(s3)
    80058de2:	0209b503          	ld	a0,32(s3)
    80058de6:	00fd0633          	add	a2,s10,a5
    80058dea:	d01fd0ef          	jal	ra,80056aea <get_bits>
    80058dee:	66c2                	ld	a3,16(sp)
bf_logic_op1():
quickjs-nuttx/libbf.c:2333 (discriminator 3)
    switch(op) {
    80058df0:	6862                	ld	a6,24(sp)
    80058df2:	4885                	li	a7,1
bf_logic_op():
quickjs-nuttx/libbf.c:2407 (discriminator 3)
        v2 = get_bits(b->tab, b->len, b_bit_offset + i * LIMB_BITS) ^ v2_mask;
    80058df4:	8d35                	xor	a0,a0,a3
bf_logic_op1():
quickjs-nuttx/libbf.c:2335 (discriminator 3)
        return a | b;
    80058df6:	00a4e7b3          	or	a5,s1,a0
quickjs-nuttx/libbf.c:2333 (discriminator 3)
    switch(op) {
    80058dfa:	000b8863          	beqz	s7,80058e0a <bf_logic_op+0x1fc>
quickjs-nuttx/libbf.c:2337
        return a ^ b;
    80058dfe:	00a4c7b3          	xor	a5,s1,a0
quickjs-nuttx/libbf.c:2333
    switch(op) {
    80058e02:	011b8463          	beq	s7,a7,80058e0a <bf_logic_op+0x1fc>
quickjs-nuttx/libbf.c:2340
        return a & b;
    80058e06:	00a4f7b3          	and	a5,s1,a0
bf_logic_op():
quickjs-nuttx/libbf.c:2408
        r->tab[i] = bf_logic_op1(v1, v2, op) ^ r_mask;
    80058e0a:	020ab703          	ld	a4,32(s5)
    80058e0e:	003c9613          	slli	a2,s9,0x3
    80058e12:	00f847b3          	xor	a5,a6,a5
    80058e16:	9732                	add	a4,a4,a2
    80058e18:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:2405
    for(i = 0; i < l; i++) {
    80058e1a:	0c85                	addi	s9,s9,1
    80058e1c:	bf19                	j	80058d32 <bf_logic_op+0x124>
quickjs-nuttx/libbf.c:2368
            b = NULL;
    80058e1e:	4981                	li	s3,0
quickjs-nuttx/libbf.c:2365
        a = &a1_s;
    80058e20:	04810a13          	addi	s4,sp,72
quickjs-nuttx/libbf.c:2425
    bf_set_nan(r);
    80058e24:	8556                	mv	a0,s5
    80058e26:	d99fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2426
    ret = BF_ST_MEM_ERROR;
    80058e2a:	02000b13          	li	s6,32
quickjs-nuttx/libbf.c:2427
    goto done;
    80058e2e:	bf25                	j	80058d66 <bf_logic_op+0x158>
quickjs-nuttx/libbf.c:2360
        b_sign = 0; /* minus zero is considered as positive */
    80058e30:	4481                	li	s1,0
quickjs-nuttx/libbf.c:2364
    if (a_sign) {
    80058e32:	e80907e3          	beqz	s2,80058cc0 <bf_logic_op+0xb2>
    80058e36:	bd15                	j	80058c6a <bf_logic_op+0x5c>

0000000080058e38 <bf_rint>:
bf_rint():
quickjs-nuttx/libbf.c:2323
    return bf_round(r, 0, rnd_mode | BF_FLAG_RADPNT_PREC);
    80058e38:	0105e613          	ori	a2,a1,16
    80058e3c:	4581                	li	a1,0
    80058e3e:	cb4ff06f          	j	800582f2 <bf_round>

0000000080058e42 <bf_logic_or>:
bf_logic_or():
quickjs-nuttx/libbf.c:2433
    return bf_logic_op(r, a, b, BF_LOGIC_OR);
    80058e42:	4681                	li	a3,0
    80058e44:	dcbff06f          	j	80058c0e <bf_logic_op>

0000000080058e48 <bf_logic_xor>:
bf_logic_xor():
quickjs-nuttx/libbf.c:2439
    return bf_logic_op(r, a, b, BF_LOGIC_XOR);
    80058e48:	4685                	li	a3,1
    80058e4a:	dc5ff06f          	j	80058c0e <bf_logic_op>

0000000080058e4e <bf_logic_and>:
bf_logic_and():
quickjs-nuttx/libbf.c:2445
    return bf_logic_op(r, a, b, BF_LOGIC_AND);
    80058e4e:	4689                	li	a3,2
    80058e50:	dbfff06f          	j	80058c0e <bf_logic_op>

0000000080058e54 <bf_get_float64>:
bf_get_float64():
quickjs-nuttx/libbf.c:2456
{
    80058e54:	715d                	addi	sp,sp,-80
    80058e56:	fc26                	sd	s1,56(sp)
    80058e58:	e486                	sd	ra,72(sp)
    80058e5a:	e0a2                	sd	s0,64(sp)
    80058e5c:	f84a                	sd	s2,48(sp)
quickjs-nuttx/libbf.c:2462
    if (a->expn == BF_EXP_NAN) {
    80058e5e:	6914                	ld	a3,16(a0)
    80058e60:	57fd                	li	a5,-1
    80058e62:	0017d713          	srli	a4,a5,0x1
quickjs-nuttx/libbf.c:2456
{
    80058e66:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:2462
    if (a->expn == BF_EXP_NAN) {
    80058e68:	08e68c63          	beq	a3,a4,80058f00 <bf_get_float64+0xac>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058e6c:	6118                	ld	a4,0(a0)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058e6e:	17fe                	slli	a5,a5,0x3f
bf_get_float64():
quickjs-nuttx/libbf.c:2468
        bf_set(b, a);
    80058e70:	85aa                	mv	a1,a0
    80058e72:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80058e74:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80058e76:	ec3e                	sd	a5,24(sp)
    80058e78:	8432                	mv	s0,a2
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    80058e7a:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    80058e7c:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    80058e7e:	f402                	sd	zero,40(sp)
bf_get_float64():
quickjs-nuttx/libbf.c:2468
        bf_set(b, a);
    80058e80:	9a2ff0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:2469
        if (bf_is_finite(b)) {
    80058e84:	6762                	ld	a4,24(sp)
    80058e86:	57ed                	li	a5,-5
    80058e88:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:2461
    ret = 0;
    80058e8a:	4901                	li	s2,0
quickjs-nuttx/libbf.c:2469
        if (bf_is_finite(b)) {
    80058e8c:	00e7ca63          	blt	a5,a4,80058ea0 <bf_get_float64+0x4c>
quickjs-nuttx/libbf.c:2470
            ret = bf_round(b, 53, rnd_mode | BF_FLAG_SUBNORMAL | bf_set_exp_bits(11));
    80058e90:	64846613          	ori	a2,s0,1608
    80058e94:	03500593          	li	a1,53
    80058e98:	0028                	addi	a0,sp,8
    80058e9a:	c58ff0ef          	jal	ra,800582f2 <bf_round>
    80058e9e:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:2472
        if (b->expn == BF_EXP_INF) {
    80058ea0:	6462                	ld	s0,24(sp)
    80058ea2:	57f5                	li	a5,-3
    80058ea4:	8385                	srli	a5,a5,0x1
    80058ea6:	04f40763          	beq	s0,a5,80058ef4 <bf_get_float64+0xa0>
quickjs-nuttx/libbf.c:2475
        } else if (b->expn == BF_EXP_ZERO) {
    80058eaa:	57fd                	li	a5,-1
    80058eac:	17fe                	slli	a5,a5,0x3f
    80058eae:	04f40763          	beq	s0,a5,80058efc <bf_get_float64+0xa8>
quickjs-nuttx/libbf.c:2487
            m = b->tab[0];
    80058eb2:	76a2                	ld	a3,40(sp)
quickjs-nuttx/libbf.c:2479
            e = b->expn + 1023 - 1;
    80058eb4:	3fe4071b          	addiw	a4,s0,1022
    80058eb8:	87ba                	mv	a5,a4
quickjs-nuttx/libbf.c:2487
            m = b->tab[0];
    80058eba:	6280                	ld	s0,0(a3)
quickjs-nuttx/libbf.c:2489
            if (e <= 0) {
    80058ebc:	00e04963          	bgtz	a4,80058ece <bf_get_float64+0x7a>
quickjs-nuttx/libbf.c:2491
                m = m >> (12 - e);
    80058ec0:	4731                	li	a4,12
    80058ec2:	40f707bb          	subw	a5,a4,a5
    80058ec6:	00f457b3          	srl	a5,s0,a5
quickjs-nuttx/libbf.c:2476
            e = 0;
    80058eca:	4701                	li	a4,0
    80058ecc:	a021                	j	80058ed4 <bf_get_float64+0x80>
quickjs-nuttx/libbf.c:2494
                m = (m << 1) >> 12;
    80058ece:	0406                	slli	s0,s0,0x1
    80058ed0:	00c45793          	srli	a5,s0,0xc
quickjs-nuttx/libbf.c:2497
        u.u = m | ((uint64_t)e << 52) | ((uint64_t)b->sign << 63);
    80058ed4:	4442                	lw	s0,16(sp)
    80058ed6:	1752                	slli	a4,a4,0x34
quickjs-nuttx/libbf.c:2498
        bf_delete(b);
    80058ed8:	0028                	addi	a0,sp,8
quickjs-nuttx/libbf.c:2497
        u.u = m | ((uint64_t)e << 52) | ((uint64_t)b->sign << 63);
    80058eda:	147e                	slli	s0,s0,0x3f
    80058edc:	8c5d                	or	s0,s0,a5
    80058ede:	8c59                	or	s0,s0,a4
quickjs-nuttx/libbf.c:2498
        bf_delete(b);
    80058ee0:	bcbfd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2500
    *pres = u.d;
    80058ee4:	e080                	sd	s0,0(s1)
quickjs-nuttx/libbf.c:2502
}
    80058ee6:	60a6                	ld	ra,72(sp)
    80058ee8:	6406                	ld	s0,64(sp)
    80058eea:	74e2                	ld	s1,56(sp)
    80058eec:	854a                	mv	a0,s2
    80058eee:	7942                	ld	s2,48(sp)
    80058ef0:	6161                	addi	sp,sp,80
    80058ef2:	8082                	ret
quickjs-nuttx/libbf.c:2474
            m = 0;
    80058ef4:	4781                	li	a5,0
quickjs-nuttx/libbf.c:2473
            e = (1 << 11) - 1;
    80058ef6:	7ff00713          	li	a4,2047
    80058efa:	bfe9                	j	80058ed4 <bf_get_float64+0x80>
quickjs-nuttx/libbf.c:2477
            m = 0;
    80058efc:	4781                	li	a5,0
    80058efe:	b7f1                	j	80058eca <bf_get_float64+0x76>
quickjs-nuttx/libbf.c:2463
        u.u = 0x7ff8000000000000; /* quiet nan */
    80058f00:	00fff437          	lui	s0,0xfff
    80058f04:	141e                	slli	s0,s0,0x27
quickjs-nuttx/libbf.c:2461
    ret = 0;
    80058f06:	4901                	li	s2,0
    80058f08:	bff1                	j	80058ee4 <bf_get_float64+0x90>

0000000080058f0a <bf_set_float64>:
bf_set_float64():
quickjs-nuttx/libbf.c:2505
{
    80058f0a:	e20507d3          	fmv.x.d	a5,fa0
    80058f0e:	7179                	addi	sp,sp,-48
    80058f10:	ec26                	sd	s1,24(sp)
quickjs-nuttx/libbf.c:2513
    m = u.u & (((uint64_t)1 << 52) - 1);
    80058f12:	54fd                	li	s1,-1
    80058f14:	00c4d713          	srli	a4,s1,0xc
quickjs-nuttx/libbf.c:2505
{
    80058f18:	f022                	sd	s0,32(sp)
quickjs-nuttx/libbf.c:2512
    e = (u.u >> 52) & ((1 << 11) - 1);
    80058f1a:	0347d413          	srli	s0,a5,0x34
quickjs-nuttx/libbf.c:2505
{
    80058f1e:	e44e                	sd	s3,8(sp)
    80058f20:	f406                	sd	ra,40(sp)
quickjs-nuttx/libbf.c:2511
    sgn = u.u >> 63;
    80058f22:	0007a993          	slti	s3,a5,0
quickjs-nuttx/libbf.c:2505
{
    80058f26:	e84a                	sd	s2,16(sp)
quickjs-nuttx/libbf.c:2513
    m = u.u & (((uint64_t)1 << 52) - 1);
    80058f28:	8ff9                	and	a5,a5,a4
quickjs-nuttx/libbf.c:2512
    e = (u.u >> 52) & ((1 << 11) - 1);
    80058f2a:	7ff47413          	andi	s0,s0,2047
quickjs-nuttx/libbf.c:2514
    if (e == ((1 << 11) - 1)) {
    80058f2e:	7ff00713          	li	a4,2047
    80058f32:	02e41263          	bne	s0,a4,80058f56 <bf_set_float64+0x4c>
quickjs-nuttx/libbf.c:2515
        if (m != 0) {
    80058f36:	cf81                	beqz	a5,80058f4e <bf_set_float64+0x44>
quickjs-nuttx/libbf.c:2516
            bf_set_nan(a);
    80058f38:	c87fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2547
    return 0;
    80058f3c:	4401                	li	s0,0
quickjs-nuttx/libbf.c:2551
}
    80058f3e:	70a2                	ld	ra,40(sp)
    80058f40:	8522                	mv	a0,s0
    80058f42:	7402                	ld	s0,32(sp)
    80058f44:	64e2                	ld	s1,24(sp)
    80058f46:	6942                	ld	s2,16(sp)
    80058f48:	69a2                	ld	s3,8(sp)
    80058f4a:	6145                	addi	sp,sp,48
    80058f4c:	8082                	ret
quickjs-nuttx/libbf.c:2518
            bf_set_inf(a, sgn);
    80058f4e:	85ce                	mv	a1,s3
    80058f50:	d35fe0ef          	jal	ra,80057c84 <bf_set_inf>
    80058f54:	b7e5                	j	80058f3c <bf_set_float64+0x32>
    80058f56:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:2520
    } else if (e == 0) {
    80058f58:	ec1d                	bnez	s0,80058f96 <bf_set_float64+0x8c>
quickjs-nuttx/libbf.c:2521
        if (m == 0) {
    80058f5a:	e789                	bnez	a5,80058f64 <bf_set_float64+0x5a>
quickjs-nuttx/libbf.c:2522
            bf_set_zero(a, sgn);
    80058f5c:	85ce                	mv	a1,s3
    80058f5e:	d03fe0ef          	jal	ra,80057c60 <bf_set_zero>
    80058f62:	bff1                	j	80058f3e <bf_set_float64+0x34>
quickjs-nuttx/libbf.c:2525
            m <<= 12;
    80058f64:	00c79493          	slli	s1,a5,0xc
clz64():
quickjs-nuttx/cutils.h:126
    80058f68:	8526                	mv	a0,s1
    80058f6a:	f2daa0ef          	jal	ra,80003e96 <__clzdi2>
bf_set_float64():
quickjs-nuttx/libbf.c:2527
            m <<= shift;
    80058f6e:	00a494b3          	sll	s1,s1,a0
quickjs-nuttx/libbf.c:2528
            e = -shift;
    80058f72:	40a0043b          	negw	s0,a0
quickjs-nuttx/libbf.c:2534
        a->expn = e - 1023 + 1;
    80058f76:	c024041b          	addiw	s0,s0,-1022
    80058f7a:	00893823          	sd	s0,16(s2)
quickjs-nuttx/libbf.c:2541
        if (bf_resize(a, 1))
    80058f7e:	4585                	li	a1,1
    80058f80:	854a                	mv	a0,s2
    80058f82:	c03fe0ef          	jal	ra,80057b84 <bf_resize>
    80058f86:	842a                	mv	s0,a0
    80058f88:	c919                	beqz	a0,80058f9e <bf_set_float64+0x94>
quickjs-nuttx/libbf.c:2549
    bf_set_nan(a);
    80058f8a:	854a                	mv	a0,s2
    80058f8c:	c33fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:2550
    return BF_ST_MEM_ERROR;
    80058f90:	02000413          	li	s0,32
    80058f94:	b76d                	j	80058f3e <bf_set_float64+0x34>
quickjs-nuttx/libbf.c:2532
        m = (m << 11) | ((uint64_t)1 << 63);
    80058f96:	07ae                	slli	a5,a5,0xb
    80058f98:	14fe                	slli	s1,s1,0x3f
    80058f9a:	8cdd                	or	s1,s1,a5
    80058f9c:	bfe9                	j	80058f76 <bf_set_float64+0x6c>
quickjs-nuttx/libbf.c:2543
        a->tab[0] = m;
    80058f9e:	02093783          	ld	a5,32(s2)
    80058fa2:	e384                	sd	s1,0(a5)
quickjs-nuttx/libbf.c:2545
        a->sign = sgn;
    80058fa4:	01392423          	sw	s3,8(s2)
    80058fa8:	bf59                	j	80058f3e <bf_set_float64+0x34>

0000000080058faa <bf_get_int32>:
bf_get_int32():
quickjs-nuttx/libbf.c:2556
{
    80058faa:	1101                	addi	sp,sp,-32
    80058fac:	e822                	sd	s0,16(sp)
    80058fae:	e426                	sd	s1,8(sp)
    80058fb0:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libbf.c:2559
    if (a->expn >= BF_EXP_INF) {
    80058fb2:	6998                	ld	a4,16(a1)
    80058fb4:	57ed                	li	a5,-5
    80058fb6:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:2556
{
    80058fb8:	84aa                	mv	s1,a0
    80058fba:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:2559
    if (a->expn >= BF_EXP_INF) {
    80058fbc:	02e7d763          	bge	a5,a4,80058fea <bf_get_int32+0x40>
quickjs-nuttx/libbf.c:2561
        if (flags & BF_GET_INT_MOD) {
    80058fc0:	00167513          	andi	a0,a2,1
quickjs-nuttx/libbf.c:2562
            v = 0;
    80058fc4:	4781                	li	a5,0
quickjs-nuttx/libbf.c:2561
        if (flags & BF_GET_INT_MOD) {
    80058fc6:	ed01                	bnez	a0,80058fde <bf_get_int32+0x34>
quickjs-nuttx/libbf.c:2563
        } else if (a->expn == BF_EXP_INF) {
    80058fc8:	57f5                	li	a5,-3
    80058fca:	8385                	srli	a5,a5,0x1
    80058fcc:	08f71b63          	bne	a4,a5,80059062 <bf_get_int32+0xb8>
quickjs-nuttx/libbf.c:2564
            v = (uint32_t)INT32_MAX + a->sign;
    80058fd0:	459c                	lw	a5,8(a1)
    80058fd2:	80000537          	lui	a0,0x80000
    80058fd6:	fff54513          	not	a0,a0
    80058fda:	9fa9                	addw	a5,a5,a0
quickjs-nuttx/libbf.c:2560
        ret = BF_ST_INVALID_OP;
    80058fdc:	4505                	li	a0,1
quickjs-nuttx/libbf.c:2595
}
    80058fde:	60e2                	ld	ra,24(sp)
    80058fe0:	6442                	ld	s0,16(sp)
quickjs-nuttx/libbf.c:2593
    *pres = v;
    80058fe2:	c09c                	sw	a5,0(s1)
quickjs-nuttx/libbf.c:2595
}
    80058fe4:	64a2                	ld	s1,8(sp)
    80058fe6:	6105                	addi	sp,sp,32
    80058fe8:	8082                	ret
quickjs-nuttx/libbf.c:2568
    } else if (a->expn <= 0) {
    80058fea:	06e05963          	blez	a4,8005905c <bf_get_int32+0xb2>
quickjs-nuttx/libbf.c:2571
    } else if (a->expn <= 31) {
    80058fee:	47fd                	li	a5,31
    80058ff0:	02e7c563          	blt	a5,a4,8005901a <bf_get_int32+0x70>
quickjs-nuttx/libbf.c:2572
        v = a->tab[a->len - 1] >> (LIMB_BITS - a->expn);
    80058ff4:	6d9c                	ld	a5,24(a1)
    80058ff6:	7194                	ld	a3,32(a1)
    80058ff8:	078e                	slli	a5,a5,0x3
    80058ffa:	96be                	add	a3,a3,a5
    80058ffc:	04000793          	li	a5,64
