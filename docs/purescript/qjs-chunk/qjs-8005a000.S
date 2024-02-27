    80059000:	40e7873b          	subw	a4,a5,a4
    80059004:	ff86b783          	ld	a5,-8(a3)
    80059008:	00e7d7b3          	srl	a5,a5,a4
    8005900c:	2781                	sext.w	a5,a5
quickjs-nuttx/libbf.c:2589
        if (a->sign)
    8005900e:	4408                	lw	a0,8(s0)
    80059010:	d579                	beqz	a0,80058fde <bf_get_int32+0x34>
quickjs-nuttx/libbf.c:2590
            v = -v;
    80059012:	40f007bb          	negw	a5,a5
quickjs-nuttx/libbf.c:2591
        ret = 0;
    80059016:	4501                	li	a0,0
    80059018:	b7d9                	j	80058fde <bf_get_int32+0x34>
quickjs-nuttx/libbf.c:2576
    } else if (!(flags & BF_GET_INT_MOD)) {
    8005901a:	8a05                	andi	a2,a2,1
    8005901c:	e615                	bnez	a2,80059048 <bf_get_int32+0x9e>
quickjs-nuttx/libbf.c:2578
        if (a->sign) {
    8005901e:	459c                	lw	a5,8(a1)
    80059020:	c3a9                	beqz	a5,80059062 <bf_get_int32+0xb8>
quickjs-nuttx/libbf.c:2580
            if (a->expn == 32 && 
    80059022:	02000793          	li	a5,32
quickjs-nuttx/libbf.c:2577
        ret = BF_ST_INVALID_OP;
    80059026:	4505                	li	a0,1
quickjs-nuttx/libbf.c:2580
            if (a->expn == 32 && 
    80059028:	00f71d63          	bne	a4,a5,80059042 <bf_get_int32+0x98>
quickjs-nuttx/libbf.c:2581 (discriminator 1)
                (a->tab[a->len - 1] >> (LIMB_BITS - 32)) == v) {
    8005902c:	6d98                	ld	a4,24(a1)
    8005902e:	719c                	ld	a5,32(a1)
quickjs-nuttx/libbf.c:2580 (discriminator 1)
            if (a->expn == 32 && 
    80059030:	80000537          	lui	a0,0x80000
quickjs-nuttx/libbf.c:2581 (discriminator 1)
                (a->tab[a->len - 1] >> (LIMB_BITS - 32)) == v) {
    80059034:	070e                	slli	a4,a4,0x3
    80059036:	97ba                	add	a5,a5,a4
    80059038:	ffc7e603          	lwu	a2,-4(a5)
quickjs-nuttx/libbf.c:2580 (discriminator 1)
            if (a->expn == 32 && 
    8005903c:	962a                	add	a2,a2,a0
quickjs-nuttx/libbf.c:2560 (discriminator 1)
        ret = BF_ST_INVALID_OP;
    8005903e:	00c03533          	snez	a0,a2
quickjs-nuttx/libbf.c:2579
            v = (uint32_t)INT32_MAX + 1;
    80059042:	800007b7          	lui	a5,0x80000
    80059046:	bf61                	j	80058fde <bf_get_int32+0x34>
quickjs-nuttx/libbf.c:2588
        v = get_bits(a->tab, a->len, a->len * LIMB_BITS - a->expn); 
    80059048:	6d8c                	ld	a1,24(a1)
    8005904a:	7008                	ld	a0,32(s0)
    8005904c:	00659613          	slli	a2,a1,0x6
    80059050:	8e19                	sub	a2,a2,a4
    80059052:	a99fd0ef          	jal	ra,80056aea <get_bits>
    80059056:	0005079b          	sext.w	a5,a0
    8005905a:	bf55                	j	8005900e <bf_get_int32+0x64>
quickjs-nuttx/libbf.c:2570
        ret = 0;
    8005905c:	4501                	li	a0,0
quickjs-nuttx/libbf.c:2569
        v = 0;
    8005905e:	4781                	li	a5,0
    80059060:	bfbd                	j	80058fde <bf_get_int32+0x34>
quickjs-nuttx/libbf.c:2566
            v = INT32_MAX;
    80059062:	800007b7          	lui	a5,0x80000
quickjs-nuttx/libbf.c:2560
        ret = BF_ST_INVALID_OP;
    80059066:	4505                	li	a0,1
quickjs-nuttx/libbf.c:2566
            v = INT32_MAX;
    80059068:	fff7c793          	not	a5,a5
    8005906c:	bf8d                	j	80058fde <bf_get_int32+0x34>

000000008005906e <bf_get_int64>:
bf_get_int64():
quickjs-nuttx/libbf.c:2600
{
    8005906e:	1101                	addi	sp,sp,-32
    80059070:	e822                	sd	s0,16(sp)
    80059072:	e426                	sd	s1,8(sp)
    80059074:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libbf.c:2603
    if (a->expn >= BF_EXP_INF) {
    80059076:	6998                	ld	a4,16(a1)
    80059078:	57ed                	li	a5,-5
    8005907a:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:2600
{
    8005907c:	84aa                	mv	s1,a0
    8005907e:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:2603
    if (a->expn >= BF_EXP_INF) {
    80059080:	02e7d063          	bge	a5,a4,800590a0 <bf_get_int64+0x32>
quickjs-nuttx/libbf.c:2605
        if (flags & BF_GET_INT_MOD) {
    80059084:	00167513          	andi	a0,a2,1
quickjs-nuttx/libbf.c:2606
            v = 0;
    80059088:	4781                	li	a5,0
quickjs-nuttx/libbf.c:2605
        if (flags & BF_GET_INT_MOD) {
    8005908a:	e535                	bnez	a0,800590f6 <bf_get_int64+0x88>
quickjs-nuttx/libbf.c:2607
        } else if (a->expn == BF_EXP_INF) {
    8005908c:	56f5                	li	a3,-3
    8005908e:	57fd                	li	a5,-1
    80059090:	8285                	srli	a3,a3,0x1
    80059092:	8385                	srli	a5,a5,0x1
    80059094:	00d71463          	bne	a4,a3,8005909c <bf_get_int64+0x2e>
quickjs-nuttx/libbf.c:2608
            v = (uint64_t)INT64_MAX + a->sign;
    80059098:	4588                	lw	a0,8(a1)
    8005909a:	97aa                	add	a5,a5,a0
quickjs-nuttx/libbf.c:2604
        ret = BF_ST_INVALID_OP;
    8005909c:	4505                	li	a0,1
    8005909e:	a8a1                	j	800590f6 <bf_get_int64+0x88>
quickjs-nuttx/libbf.c:2612
    } else if (a->expn <= 0) {
    800590a0:	06e05a63          	blez	a4,80059114 <bf_get_int64+0xa6>
quickjs-nuttx/libbf.c:2615
    } else if (a->expn <= 63) {
    800590a4:	03f00793          	li	a5,63
    800590a8:	02e7c463          	blt	a5,a4,800590d0 <bf_get_int64+0x62>
quickjs-nuttx/libbf.c:2623
        v = a->tab[a->len - 1] >> (LIMB_BITS - a->expn);
    800590ac:	6d9c                	ld	a5,24(a1)
    800590ae:	7194                	ld	a3,32(a1)
    800590b0:	078e                	slli	a5,a5,0x3
    800590b2:	96be                	add	a3,a3,a5
    800590b4:	04000793          	li	a5,64
    800590b8:	40e7873b          	subw	a4,a5,a4
    800590bc:	ff86b783          	ld	a5,-8(a3)
    800590c0:	00e7d7b3          	srl	a5,a5,a4
quickjs-nuttx/libbf.c:2650
        if (a->sign)
    800590c4:	4408                	lw	a0,8(s0)
    800590c6:	c905                	beqz	a0,800590f6 <bf_get_int64+0x88>
quickjs-nuttx/libbf.c:2651
            v = -v;
    800590c8:	40f007b3          	neg	a5,a5
quickjs-nuttx/libbf.c:2652
        ret = 0;
    800590cc:	4501                	li	a0,0
    800590ce:	a025                	j	800590f6 <bf_get_int64+0x88>
quickjs-nuttx/libbf.c:2628
    } else if (!(flags & BF_GET_INT_MOD)) {
    800590d0:	8a05                	andi	a2,a2,1
    800590d2:	ea05                	bnez	a2,80059102 <bf_get_int64+0x94>
quickjs-nuttx/libbf.c:2630
        if (a->sign) {
    800590d4:	459c                	lw	a5,8(a1)
    800590d6:	c3b1                	beqz	a5,8005911a <bf_get_int64+0xac>
quickjs-nuttx/libbf.c:2633
            if (a->expn == 64) {
    800590d8:	04000793          	li	a5,64
    800590dc:	04f71363          	bne	a4,a5,80059122 <bf_get_int64+0xb4>
quickjs-nuttx/libbf.c:2634
                v1 = a->tab[a->len - 1];
    800590e0:	6d98                	ld	a4,24(a1)
    800590e2:	719c                	ld	a5,32(a1)
    800590e4:	070e                	slli	a4,a4,0x3
    800590e6:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:2638
                if (v1 == v)
    800590e8:	ff87b603          	ld	a2,-8(a5) # ffffffff7ffffff8 <_ebss+0xfffffffeffefee92>
    800590ec:	57fd                	li	a5,-1
    800590ee:	17fe                	slli	a5,a5,0x3f
    800590f0:	963e                	add	a2,a2,a5
quickjs-nuttx/libbf.c:2604
        ret = BF_ST_INVALID_OP;
    800590f2:	00c03533          	snez	a0,a2
quickjs-nuttx/libbf.c:2656
}
    800590f6:	60e2                	ld	ra,24(sp)
    800590f8:	6442                	ld	s0,16(sp)
quickjs-nuttx/libbf.c:2654
    *pres = v;
    800590fa:	e09c                	sd	a5,0(s1)
quickjs-nuttx/libbf.c:2656
}
    800590fc:	64a2                	ld	s1,8(sp)
    800590fe:	6105                	addi	sp,sp,32
    80059100:	8082                	ret
quickjs-nuttx/libbf.c:2645
        slimb_t bit_pos = a->len * LIMB_BITS - a->expn;
    80059102:	6d8c                	ld	a1,24(a1)
quickjs-nuttx/libbf.c:2646
        v = get_bits(a->tab, a->len, bit_pos); 
    80059104:	7008                	ld	a0,32(s0)
quickjs-nuttx/libbf.c:2645
        slimb_t bit_pos = a->len * LIMB_BITS - a->expn;
    80059106:	00659613          	slli	a2,a1,0x6
quickjs-nuttx/libbf.c:2646
        v = get_bits(a->tab, a->len, bit_pos); 
    8005910a:	8e19                	sub	a2,a2,a4
    8005910c:	9dffd0ef          	jal	ra,80056aea <get_bits>
    80059110:	87aa                	mv	a5,a0
    80059112:	bf4d                	j	800590c4 <bf_get_int64+0x56>
quickjs-nuttx/libbf.c:2614
        ret = 0;
    80059114:	4501                	li	a0,0
quickjs-nuttx/libbf.c:2613
        v = 0;
    80059116:	4781                	li	a5,0
    80059118:	bff9                	j	800590f6 <bf_get_int64+0x88>
quickjs-nuttx/libbf.c:2610
            v = INT64_MAX;
    8005911a:	57fd                	li	a5,-1
quickjs-nuttx/libbf.c:2604
        ret = BF_ST_INVALID_OP;
    8005911c:	4505                	li	a0,1
quickjs-nuttx/libbf.c:2610
            v = INT64_MAX;
    8005911e:	8385                	srli	a5,a5,0x1
    80059120:	bfd9                	j	800590f6 <bf_get_int64+0x88>
quickjs-nuttx/libbf.c:2632
            v = (uint64_t)INT64_MAX + 1;
    80059122:	57fd                	li	a5,-1
quickjs-nuttx/libbf.c:2629
        ret = BF_ST_INVALID_OP;
    80059124:	4505                	li	a0,1
quickjs-nuttx/libbf.c:2632
            v = (uint64_t)INT64_MAX + 1;
    80059126:	17fe                	slli	a5,a5,0x3f
    80059128:	b7f9                	j	800590f6 <bf_get_int64+0x88>

000000008005912a <bf_get_uint64>:
bf_get_uint64():
quickjs-nuttx/libbf.c:2664
    if (a->expn == BF_EXP_NAN) {
    8005912a:	699c                	ld	a5,16(a1)
    8005912c:	56fd                	li	a3,-1
    8005912e:	8285                	srli	a3,a3,0x1
quickjs-nuttx/libbf.c:2661
{
    80059130:	872a                	mv	a4,a0
quickjs-nuttx/libbf.c:2664
    if (a->expn == BF_EXP_NAN) {
    80059132:	02d78c63          	beq	a5,a3,8005916a <bf_get_uint64+0x40>
quickjs-nuttx/libbf.c:2666
    } else if (a->expn <= 0) {
    80059136:	02f05563          	blez	a5,80059160 <bf_get_uint64+0x36>
quickjs-nuttx/libbf.c:2669
    } else if (a->sign) {
    8005913a:	4588                	lw	a0,8(a1)
    8005913c:	e50d                	bnez	a0,80059166 <bf_get_uint64+0x3c>
quickjs-nuttx/libbf.c:2672
    } else if (a->expn <= 64) {
    8005913e:	04000693          	li	a3,64
    80059142:	02f6c463          	blt	a3,a5,8005916a <bf_get_uint64+0x40>
quickjs-nuttx/libbf.c:2680
        v = a->tab[a->len - 1] >> (LIMB_BITS - a->expn);
    80059146:	6d94                	ld	a3,24(a1)
    80059148:	7190                	ld	a2,32(a1)
    8005914a:	068e                	slli	a3,a3,0x3
    8005914c:	9636                	add	a2,a2,a3
    8005914e:	04000693          	li	a3,64
    80059152:	9e9d                	subw	a3,a3,a5
    80059154:	ff863783          	ld	a5,-8(a2)
    80059158:	00d7d7b3          	srl	a5,a5,a3
quickjs-nuttx/libbf.c:2688
    *pres = v;
    8005915c:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:2690
}
    8005915e:	8082                	ret
quickjs-nuttx/libbf.c:2668
        ret = 0;
    80059160:	4501                	li	a0,0
quickjs-nuttx/libbf.c:2670
        v = 0;
    80059162:	4781                	li	a5,0
    80059164:	bfe5                	j	8005915c <bf_get_uint64+0x32>
quickjs-nuttx/libbf.c:2671
        ret = BF_ST_INVALID_OP;
    80059166:	4505                	li	a0,1
    80059168:	bfed                	j	80059162 <bf_get_uint64+0x38>
quickjs-nuttx/libbf.c:2686
        ret = BF_ST_INVALID_OP;
    8005916a:	4505                	li	a0,1
quickjs-nuttx/libbf.c:2685
        v = UINT64_MAX;
    8005916c:	57fd                	li	a5,-1
    8005916e:	b7fd                	j	8005915c <bf_get_uint64+0x32>

0000000080059170 <bf_mul_log2_radix>:
bf_mul_log2_radix():
quickjs-nuttx/libbf.c:3339
{
    80059170:	7179                	addi	sp,sp,-48
    80059172:	f022                	sd	s0,32(sp)
    80059174:	ec26                	sd	s1,24(sp)
    80059176:	e84a                	sd	s2,16(sp)
    80059178:	e44e                	sd	s3,8(sp)
    8005917a:	f406                	sd	ra,40(sp)
    8005917c:	89b2                	mv	s3,a2
    8005917e:	84b6                	mv	s1,a3
quickjs-nuttx/libbf.c:3345
    a = a1;
    80059180:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:3346
    if (a1 < 0) {
    80059182:	4901                	li	s2,0
    80059184:	00055563          	bgez	a0,8005918e <bf_mul_log2_radix+0x1e>
quickjs-nuttx/libbf.c:3347
        a = -a;
    80059188:	40a00433          	neg	s0,a0
quickjs-nuttx/libbf.c:3348
        is_neg = 1;
    8005918c:	4905                	li	s2,1
quickjs-nuttx/libbf.c:3353
    if ((radix & (radix - 1)) == 0) {
    8005918e:	fff5879b          	addiw	a5,a1,-1
    80059192:	8fed                	and	a5,a5,a1
    80059194:	2781                	sext.w	a5,a5
    80059196:	ef8d                	bnez	a5,800591d0 <bf_mul_log2_radix+0x60>
quickjs-nuttx/libbf.c:3356
        radix_bits = ceil_log2(radix);
    80059198:	02059513          	slli	a0,a1,0x20
    8005919c:	9101                	srli	a0,a0,0x20
    8005919e:	d8bfd0ef          	jal	ra,80056f28 <ceil_log2>
    800591a2:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:3362
            a = a * radix_bits;
    800591a4:	02a40533          	mul	a0,s0,a0
quickjs-nuttx/libbf.c:3357
        if (is_inv) {
    800591a8:	00098963          	beqz	s3,800591ba <bf_mul_log2_radix+0x4a>
quickjs-nuttx/libbf.c:3358
            if (is_ceil)
    800591ac:	00990563          	beq	s2,s1,800591b6 <bf_mul_log2_radix+0x46>
quickjs-nuttx/libbf.c:3359
                a += radix_bits - 1;
    800591b0:	fff7871b          	addiw	a4,a5,-1
    800591b4:	943a                	add	s0,s0,a4
quickjs-nuttx/libbf.c:3360
            a = a / radix_bits;
    800591b6:	02f45533          	divu	a0,s0,a5
quickjs-nuttx/libbf.c:3389
    if (is_neg)
    800591ba:	00090463          	beqz	s2,800591c2 <bf_mul_log2_radix+0x52>
quickjs-nuttx/libbf.c:3390
        a = -a;
    800591be:	40a00533          	neg	a0,a0
quickjs-nuttx/libbf.c:3392
}
    800591c2:	70a2                	ld	ra,40(sp)
    800591c4:	7402                	ld	s0,32(sp)
    800591c6:	64e2                	ld	s1,24(sp)
    800591c8:	6942                	ld	s2,16(sp)
    800591ca:	69a2                	ld	s3,8(sp)
    800591cc:	6145                	addi	sp,sp,48
    800591ce:	8082                	ret
quickjs-nuttx/libbf.c:3370
            tab = inv_log2_radix[radix - 2];
    800591d0:	35f9                	addiw	a1,a1,-2
    800591d2:	1582                	slli	a1,a1,0x20
    800591d4:	9181                	srli	a1,a1,0x20
quickjs-nuttx/libbf.c:3369
        if (is_inv) {
    800591d6:	04098463          	beqz	s3,8005921e <bf_mul_log2_radix+0xae>
quickjs-nuttx/libbf.c:3370
            tab = inv_log2_radix[radix - 2];
    800591da:	4531                	li	a0,12
    800591dc:	02a585b3          	mul	a1,a1,a0
    800591e0:	00027797          	auipc	a5,0x27
    800591e4:	5f878793          	addi	a5,a5,1528 # 800807d8 <inv_log2_radix>
    800591e8:	95be                	add	a1,a1,a5
quickjs-nuttx/libbf.c:3375
            b1 = ((limb_t)tab[0] << 32) | tab[1];
    800591ea:	0005e503          	lwu	a0,0(a1)
    800591ee:	0045e783          	lwu	a5,4(a1)
quickjs-nuttx/libbf.c:3376
            b0 = (limb_t)tab[2] << 32;
    800591f2:	0085e703          	lwu	a4,8(a1)
quickjs-nuttx/libbf.c:3375
            b1 = ((limb_t)tab[0] << 32) | tab[1];
    800591f6:	1502                	slli	a0,a0,0x20
    800591f8:	8d5d                	or	a0,a0,a5
quickjs-nuttx/libbf.c:3376
            b0 = (limb_t)tab[2] << 32;
    800591fa:	1702                	slli	a4,a4,0x20
quickjs-nuttx/libbf.c:3379
            t = (dlimb_t)b1 * (dlimb_t)a + (t >> LIMB_BITS);
    800591fc:	028507b3          	mul	a5,a0,s0
quickjs-nuttx/libbf.c:3378
            t = (dlimb_t)b0 * (dlimb_t)a;
    80059200:	02873733          	mulhu	a4,a4,s0
quickjs-nuttx/libbf.c:3379
            t = (dlimb_t)b1 * (dlimb_t)a + (t >> LIMB_BITS);
    80059204:	02853433          	mulhu	s0,a0,s0
    80059208:	973e                	add	a4,a4,a5
    8005920a:	00f73533          	sltu	a0,a4,a5
quickjs-nuttx/libbf.c:3380
            a = t >> (LIMB_BITS - 1);
    8005920e:	937d                	srli	a4,a4,0x3f
quickjs-nuttx/libbf.c:3379
            t = (dlimb_t)b1 * (dlimb_t)a + (t >> LIMB_BITS);
    80059210:	9522                	add	a0,a0,s0
quickjs-nuttx/libbf.c:3380
            a = t >> (LIMB_BITS - 1);
    80059212:	0506                	slli	a0,a0,0x1
    80059214:	8d59                	or	a0,a0,a4
quickjs-nuttx/libbf.c:3387
        a += is_ceil;
    80059216:	009944b3          	xor	s1,s2,s1
    8005921a:	9526                	add	a0,a0,s1
    8005921c:	bf79                	j	800591ba <bf_mul_log2_radix+0x4a>
quickjs-nuttx/libbf.c:3382
            b0 = log2_radix[radix - 2];
    8005921e:	00027797          	auipc	a5,0x27
    80059222:	76278793          	addi	a5,a5,1890 # 80080980 <log2_radix>
    80059226:	058e                	slli	a1,a1,0x3
    80059228:	95be                	add	a1,a1,a5
quickjs-nuttx/libbf.c:3383
            t = (dlimb_t)b0 * (dlimb_t)a;
    8005922a:	6188                	ld	a0,0(a1)
    8005922c:	02a407b3          	mul	a5,s0,a0
    80059230:	02a43533          	mulhu	a0,s0,a0
quickjs-nuttx/libbf.c:3384
            a = t >> (LIMB_BITS - 3);
    80059234:	00351413          	slli	s0,a0,0x3
    80059238:	03d7d513          	srli	a0,a5,0x3d
    8005923c:	8d41                	or	a0,a0,s0
    8005923e:	bfe1                	j	80059216 <bf_mul_log2_radix+0xa6>

0000000080059240 <bf_const_log2>:
bf_const_log2():
quickjs-nuttx/libbf.c:4212
    return bf_const_get(T, prec, flags, &s->log2_cache, bf_const_log2_internal, 0);
    80059240:	6114                	ld	a3,0(a0)
    80059242:	4781                	li	a5,0
    80059244:	00006717          	auipc	a4,0x6
    80059248:	fc070713          	addi	a4,a4,-64 # 8005f204 <bf_const_log2_internal>
    8005924c:	06c1                	addi	a3,a3,16
    8005924e:	8b2ff06f          	j	80058300 <bf_const_get>

0000000080059252 <bf_const_pi>:
bf_const_pi_signed():
quickjs-nuttx/libbf.c:4219
    return bf_const_get(T, prec, flags, &s->pi_cache, bf_const_pi_internal,
    80059252:	6114                	ld	a3,0(a0)
    80059254:	4781                	li	a5,0
    80059256:	00006717          	auipc	a4,0x6
    8005925a:	db070713          	addi	a4,a4,-592 # 8005f006 <bf_const_pi_internal>
    8005925e:	04068693          	addi	a3,a3,64
    80059262:	89eff06f          	j	80058300 <bf_const_get>

0000000080059266 <bf_clear_cache>:
bf_clear_cache():
quickjs-nuttx/libbf.c:4229
{
    80059266:	715d                	addi	sp,sp,-80
    80059268:	e0a2                	sd	s0,64(sp)
    8005926a:	e486                	sd	ra,72(sp)
    8005926c:	fc26                	sd	s1,56(sp)
    8005926e:	f84a                	sd	s2,48(sp)
    80059270:	f44e                	sd	s3,40(sp)
    80059272:	f052                	sd	s4,32(sp)
    80059274:	ec56                	sd	s5,24(sp)
    80059276:	e85a                	sd	s6,16(sp)
fft_clear_cache():
quickjs-nuttx/libbf.c:7865
    BFNTTState *s = s1->ntt_state;
    80059278:	07053903          	ld	s2,112(a0) # ffffffff80000070 <_ebss+0xfffffffeffefef0a>
bf_clear_cache():
quickjs-nuttx/libbf.c:4229
{
    8005927c:	842a                	mv	s0,a0
fft_clear_cache():
quickjs-nuttx/libbf.c:7866
    if (s) {
    8005927e:	04090863          	beqz	s2,800592ce <bf_clear_cache+0x68>
    80059282:	6789                	lui	a5,0x2
    80059284:	15078493          	addi	s1,a5,336 # 2150 <asinh-0x7fffdeb0>
    80059288:	79078793          	addi	a5,a5,1936
    8005928c:	94ca                	add	s1,s1,s2
    8005928e:	00f909b3          	add	s3,s2,a5
quickjs-nuttx/libbf.c:7869
                for(k = 0; k < NTT_TRIG_K_MAX + 1; k++) {
    80059292:	4b51                	li	s6,20
    80059294:	f6048a13          	addi	s4,s1,-160
    80059298:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:7870
                    if (s->ntt_trig[m_idx][inverse][k]) {
    8005929a:	000a3583          	ld	a1,0(s4)
    8005929e:	e5bd                	bnez	a1,8005930c <bf_clear_cache+0xa6>
quickjs-nuttx/libbf.c:7869
                for(k = 0; k < NTT_TRIG_K_MAX + 1; k++) {
    800592a0:	2a85                	addiw	s5,s5,1
    800592a2:	0a21                	addi	s4,s4,8
    800592a4:	ff6a9be3          	bne	s5,s6,8005929a <bf_clear_cache+0x34>
    800592a8:	8a26                	mv	s4,s1
    800592aa:	4ad1                	li	s5,20
quickjs-nuttx/libbf.c:7870
                    if (s->ntt_trig[m_idx][inverse][k]) {
    800592ac:	000a3583          	ld	a1,0(s4)
    800592b0:	e5ad                	bnez	a1,8005931a <bf_clear_cache+0xb4>
quickjs-nuttx/libbf.c:7869
                for(k = 0; k < NTT_TRIG_K_MAX + 1; k++) {
    800592b2:	3afd                	addiw	s5,s5,-1
    800592b4:	0a21                	addi	s4,s4,8
    800592b6:	fe0a9be3          	bnez	s5,800592ac <bf_clear_cache+0x46>
quickjs-nuttx/libbf.c:7867
        for(m_idx = 0; m_idx < NB_MODS; m_idx++) {
    800592ba:	14048493          	addi	s1,s1,320
    800592be:	fd349be3          	bne	s1,s3,80059294 <bf_clear_cache+0x2e>
quickjs-nuttx/libbf.c:7880
        bf_free(s1, s);
    800592c2:	85ca                	mv	a1,s2
    800592c4:	8522                	mv	a0,s0
    800592c6:	fdafd0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:7882
        s1->ntt_state = NULL;
    800592ca:	06043823          	sd	zero,112(s0) # fff070 <asinh-0x7f000f90>
bf_clear_cache():
quickjs-nuttx/libbf.c:4233
    bf_const_free(&s->log2_cache);
    800592ce:	01040513          	addi	a0,s0,16
bf_const_free():
quickjs-nuttx/libbf.c:4205
    bf_delete(&c->val);
    800592d2:	e42a                	sd	a0,8(sp)
    800592d4:	fd6fd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4206
    memset(c, 0, sizeof(*c));
    800592d8:	6522                	ld	a0,8(sp)
    800592da:	03000613          	li	a2,48
    800592de:	4581                	li	a1,0
    800592e0:	1630a0ef          	jal	ra,80063c42 <memset>
bf_clear_cache():
quickjs-nuttx/libbf.c:4234
    bf_const_free(&s->pi_cache);
    800592e4:	04040513          	addi	a0,s0,64
bf_const_free():
quickjs-nuttx/libbf.c:4205
    bf_delete(&c->val);
    800592e8:	e42a                	sd	a0,8(sp)
    800592ea:	fc0fd0ef          	jal	ra,80056aaa <bf_delete>
bf_clear_cache():
quickjs-nuttx/libbf.c:4235
}
    800592ee:	6406                	ld	s0,64(sp)
bf_const_free():
quickjs-nuttx/libbf.c:4206
    memset(c, 0, sizeof(*c));
    800592f0:	6522                	ld	a0,8(sp)
bf_clear_cache():
quickjs-nuttx/libbf.c:4235
}
    800592f2:	60a6                	ld	ra,72(sp)
    800592f4:	74e2                	ld	s1,56(sp)
    800592f6:	7942                	ld	s2,48(sp)
    800592f8:	79a2                	ld	s3,40(sp)
    800592fa:	7a02                	ld	s4,32(sp)
    800592fc:	6ae2                	ld	s5,24(sp)
    800592fe:	6b42                	ld	s6,16(sp)
bf_const_free():
quickjs-nuttx/libbf.c:4206
    memset(c, 0, sizeof(*c));
    80059300:	03000613          	li	a2,48
    80059304:	4581                	li	a1,0
bf_clear_cache():
quickjs-nuttx/libbf.c:4235
}
    80059306:	6161                	addi	sp,sp,80
bf_const_free():
quickjs-nuttx/libbf.c:4206
    memset(c, 0, sizeof(*c));
    80059308:	13b0a06f          	j	80063c42 <memset>
fft_clear_cache():
quickjs-nuttx/libbf.c:7871
                        ntt_free(s, s->ntt_trig[m_idx][inverse][k]);
    8005930c:	00093503          	ld	a0,0(s2)
    80059310:	eeffd0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:7872
                        s->ntt_trig[m_idx][inverse][k] = NULL;
    80059314:	000a3023          	sd	zero,0(s4)
    80059318:	b761                	j	800592a0 <bf_clear_cache+0x3a>
quickjs-nuttx/libbf.c:7871
                        ntt_free(s, s->ntt_trig[m_idx][inverse][k]);
    8005931a:	00093503          	ld	a0,0(s2)
    8005931e:	ee1fd0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:7872
                        s->ntt_trig[m_idx][inverse][k] = NULL;
    80059322:	000a3023          	sd	zero,0(s4)
    80059326:	b771                	j	800592b2 <bf_clear_cache+0x4c>

0000000080059328 <bf_context_end>:
bf_context_end():
quickjs-nuttx/libbf.c:198
    bf_clear_cache(s);
    80059328:	f3fff06f          	j	80059266 <bf_clear_cache>

000000008005932c <bf_log>:
bf_log():
quickjs-nuttx/libbf.c:4553
{
    8005932c:	711d                	addi	sp,sp,-96
    8005932e:	ec86                	sd	ra,88(sp)
    80059330:	e8a2                	sd	s0,80(sp)
    80059332:	e4a6                	sd	s1,72(sp)
    80059334:	e0ca                	sd	s2,64(sp)
    80059336:	fc4e                	sd	s3,56(sp)
    80059338:	f852                	sd	s4,48(sp)
quickjs-nuttx/libbf.c:4557
    assert(r != a);
    8005933a:	00b51c63          	bne	a0,a1,80059352 <bf_log+0x26>
quickjs-nuttx/libbf.c:4557 (discriminator 1)
    8005933e:	6585                	lui	a1,0x1
    80059340:	4601                	li	a2,0
    80059342:	1cd58593          	addi	a1,a1,461 # 11cd <asinh-0x7fffee33>
    80059346:	00027517          	auipc	a0,0x27
    8005934a:	27a50513          	addi	a0,a0,634 # 800805c0 <std_name.0+0x18>
    8005934e:	60e070ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:4558 (discriminator 2)
    if (a->len == 0) {
    80059352:	6d9c                	ld	a5,24(a1)
    80059354:	892a                	mv	s2,a0
    80059356:	84ae                	mv	s1,a1
    80059358:	e7a9                	bnez	a5,800593a2 <bf_log+0x76>
quickjs-nuttx/libbf.c:4559
        if (a->expn == BF_EXP_NAN) {
    8005935a:	6998                	ld	a4,16(a1)
    8005935c:	57fd                	li	a5,-1
    8005935e:	8385                	srli	a5,a5,0x1
    80059360:	00f71663          	bne	a4,a5,8005936c <bf_log+0x40>
quickjs-nuttx/libbf.c:4560
            bf_set_nan(r);
    80059364:	85bfe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:4572
            return 0;
    80059368:	4401                	li	s0,0
    8005936a:	a819                	j	80059380 <bf_log+0x54>
quickjs-nuttx/libbf.c:4562
        } else if (a->expn == BF_EXP_INF) {
    8005936c:	57f5                	li	a5,-3
    8005936e:	8385                	srli	a5,a5,0x1
    80059370:	02f71563          	bne	a4,a5,8005939a <bf_log+0x6e>
quickjs-nuttx/libbf.c:4563
            if (a->sign) {
    80059374:	4580                	lw	s0,8(a1)
    80059376:	cc11                	beqz	s0,80059392 <bf_log+0x66>
quickjs-nuttx/libbf.c:4564
                bf_set_nan(r);
    80059378:	854a                	mv	a0,s2
    8005937a:	845fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:4565
                return BF_ST_INVALID_OP;
    8005937e:	4405                	li	s0,1
quickjs-nuttx/libbf.c:4589
}
    80059380:	60e6                	ld	ra,88(sp)
    80059382:	8522                	mv	a0,s0
    80059384:	6446                	ld	s0,80(sp)
    80059386:	64a6                	ld	s1,72(sp)
    80059388:	6906                	ld	s2,64(sp)
    8005938a:	79e2                	ld	s3,56(sp)
    8005938c:	7a42                	ld	s4,48(sp)
    8005938e:	6125                	addi	sp,sp,96
    80059390:	8082                	ret
quickjs-nuttx/libbf.c:4567
                bf_set_inf(r, 0);
    80059392:	4581                	li	a1,0
    80059394:	8f1fe0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:4568
                return 0;
    80059398:	b7e5                	j	80059380 <bf_log+0x54>
quickjs-nuttx/libbf.c:4571
            bf_set_inf(r, 1);
    8005939a:	4585                	li	a1,1
    8005939c:	8e9fe0ef          	jal	ra,80057c84 <bf_set_inf>
    800593a0:	b7e1                	j	80059368 <bf_log+0x3c>
quickjs-nuttx/libbf.c:4575
    if (a->sign) {
    800593a2:	459c                	lw	a5,8(a1)
    800593a4:	fbf1                	bnez	a5,80059378 <bf_log+0x4c>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800593a6:	611c                	ld	a5,0(a0)
bf_log():
quickjs-nuttx/libbf.c:4580
    bf_set_ui(T, 1);
    800593a8:	4585                	li	a1,1
    800593aa:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800593ac:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800593ae:	57fd                	li	a5,-1
    800593b0:	17fe                	slli	a5,a5,0x3f
    800593b2:	89b2                	mv	s3,a2
    800593b4:	8a36                	mv	s4,a3
    800593b6:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    800593b8:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    800593ba:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    800593bc:	f402                	sd	zero,40(sp)
bf_log():
quickjs-nuttx/libbf.c:4580
    bf_set_ui(T, 1);
    800593be:	821fe0ef          	jal	ra,80057bde <bf_set_ui>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    return bf_cmp(a, b) == 0;
    800593c2:	002c                	addi	a1,sp,8
    800593c4:	8526                	mv	a0,s1
    800593c6:	da6ff0ef          	jal	ra,8005896c <bf_cmp>
    800593ca:	842a                	mv	s0,a0
bf_log():
quickjs-nuttx/libbf.c:4581
    if (bf_cmp_eq(a, T)) {
    800593cc:	e909                	bnez	a0,800593de <bf_log+0xb2>
quickjs-nuttx/libbf.c:4582
        bf_set_zero(r, 0);
    800593ce:	854a                	mv	a0,s2
    800593d0:	4581                	li	a1,0
    800593d2:	88ffe0ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/libbf.c:4583
        bf_delete(T);
    800593d6:	0028                	addi	a0,sp,8
    800593d8:	ed2fd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4584
        return 0;
    800593dc:	b755                	j	80059380 <bf_log+0x54>
quickjs-nuttx/libbf.c:4586
    bf_delete(T);
    800593de:	0028                	addi	a0,sp,8
    800593e0:	ecafd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4588
    return bf_ziv_rounding(r, a, prec, flags, bf_log_internal, NULL);
    800593e4:	4781                	li	a5,0
    800593e6:	00005717          	auipc	a4,0x5
    800593ea:	0cc70713          	addi	a4,a4,204 # 8005e4b2 <bf_log_internal>
    800593ee:	86d2                	mv	a3,s4
    800593f0:	864e                	mv	a2,s3
    800593f2:	85a6                	mv	a1,s1
    800593f4:	854a                	mv	a0,s2
    800593f6:	e57fe0ef          	jal	ra,8005824c <bf_ziv_rounding>
    800593fa:	842a                	mv	s0,a0
    800593fc:	b751                	j	80059380 <bf_log+0x54>

00000000800593fe <bf_cos>:
bf_cos():
quickjs-nuttx/libbf.c:4966
{
    800593fe:	7179                	addi	sp,sp,-48
    80059400:	f406                	sd	ra,40(sp)
    80059402:	f022                	sd	s0,32(sp)
    80059404:	ec26                	sd	s1,24(sp)
quickjs-nuttx/libbf.c:4967
    if (a->len == 0) {
    80059406:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/libbf.c:4968
        if (a->expn == BF_EXP_NAN) {
    80059408:	0105b803          	ld	a6,16(a1)
quickjs-nuttx/libbf.c:4967
    if (a->len == 0) {
    8005940c:	eb8d                	bnez	a5,8005943e <bf_cos+0x40>
quickjs-nuttx/libbf.c:4968
        if (a->expn == BF_EXP_NAN) {
    8005940e:	57fd                	li	a5,-1
    80059410:	8385                	srli	a5,a5,0x1
    80059412:	00f81663          	bne	a6,a5,8005941e <bf_cos+0x20>
quickjs-nuttx/libbf.c:4969
            bf_set_nan(r);
    80059416:	fa8fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:4976
            return 0;
    8005941a:	4501                	li	a0,0
    8005941c:	a801                	j	8005942c <bf_cos+0x2e>
quickjs-nuttx/libbf.c:4971
        } else if (a->expn == BF_EXP_INF) {
    8005941e:	57f5                	li	a5,-3
    80059420:	8385                	srli	a5,a5,0x1
    80059422:	00f81a63          	bne	a6,a5,80059436 <bf_cos+0x38>
quickjs-nuttx/libbf.c:4972
            bf_set_nan(r);
    80059426:	f98fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:4973
            return BF_ST_INVALID_OP;
    8005942a:	4505                	li	a0,1
quickjs-nuttx/libbf.c:4992
}
    8005942c:	70a2                	ld	ra,40(sp)
    8005942e:	7402                	ld	s0,32(sp)
    80059430:	64e2                	ld	s1,24(sp)
    80059432:	6145                	addi	sp,sp,48
    80059434:	8082                	ret
quickjs-nuttx/libbf.c:4975
            bf_set_ui(r, 1);
    80059436:	4585                	li	a1,1
    80059438:	fa6fe0ef          	jal	ra,80057bde <bf_set_ui>
    8005943c:	bff9                	j	8005941a <bf_cos+0x1c>
    8005943e:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:4982
    if (a->expn < 0) {
    80059440:	02085c63          	bgez	a6,80059478 <bf_cos+0x7a>
quickjs-nuttx/libbf.c:4984
        e = 2 * a->expn - 1;
    80059444:	0806                	slli	a6,a6,0x1
quickjs-nuttx/libbf.c:4985
        if (e < -(prec + 2)) {
    80059446:	57f9                	li	a5,-2
quickjs-nuttx/libbf.c:4984
        e = 2 * a->expn - 1;
    80059448:	fff80413          	addi	s0,a6,-1
quickjs-nuttx/libbf.c:4985
        if (e < -(prec + 2)) {
    8005944c:	8f91                	sub	a5,a5,a2
    8005944e:	02f47563          	bgeu	s0,a5,80059478 <bf_cos+0x7a>
quickjs-nuttx/libbf.c:4986
            bf_set_ui(r, 1);
    80059452:	4585                	li	a1,1
    80059454:	e436                	sd	a3,8(sp)
    80059456:	e032                	sd	a2,0(sp)
    80059458:	f86fe0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4987
            return bf_add_epsilon(r, r, e, 1, prec, flags);
    8005945c:	6602                	ld	a2,0(sp)
    8005945e:	66a2                	ld	a3,8(sp)
    80059460:	608c                	ld	a1,0(s1)
    80059462:	8732                	mv	a4,a2
    80059464:	8622                	mv	a2,s0
quickjs-nuttx/libbf.c:4992
}
    80059466:	7402                	ld	s0,32(sp)
    80059468:	70a2                	ld	ra,40(sp)
quickjs-nuttx/libbf.c:4987
            return bf_add_epsilon(r, r, e, 1, prec, flags);
    8005946a:	8526                	mv	a0,s1
quickjs-nuttx/libbf.c:4992
}
    8005946c:	64e2                	ld	s1,24(sp)
quickjs-nuttx/libbf.c:4987
            return bf_add_epsilon(r, r, e, 1, prec, flags);
    8005946e:	87b6                	mv	a5,a3
    80059470:	4685                	li	a3,1
quickjs-nuttx/libbf.c:4992
}
    80059472:	6145                	addi	sp,sp,48
quickjs-nuttx/libbf.c:4987
            return bf_add_epsilon(r, r, e, 1, prec, flags);
    80059474:	ed4ff06f          	j	80058b48 <bf_add_epsilon.isra.0>
quickjs-nuttx/libbf.c:4992
}
    80059478:	7402                	ld	s0,32(sp)
    8005947a:	70a2                	ld	ra,40(sp)
quickjs-nuttx/libbf.c:4991
    return bf_ziv_rounding(r, a, prec, flags, bf_cos_internal, NULL);
    8005947c:	8526                	mv	a0,s1
quickjs-nuttx/libbf.c:4992
}
    8005947e:	64e2                	ld	s1,24(sp)
quickjs-nuttx/libbf.c:4991
    return bf_ziv_rounding(r, a, prec, flags, bf_cos_internal, NULL);
    80059480:	4781                	li	a5,0
    80059482:	00006717          	auipc	a4,0x6
    80059486:	33e70713          	addi	a4,a4,830 # 8005f7c0 <bf_cos_internal>
quickjs-nuttx/libbf.c:4992
}
    8005948a:	6145                	addi	sp,sp,48
quickjs-nuttx/libbf.c:4991
    return bf_ziv_rounding(r, a, prec, flags, bf_cos_internal, NULL);
    8005948c:	dc1fe06f          	j	8005824c <bf_ziv_rounding>

0000000080059490 <bf_sin>:
bf_sin():
quickjs-nuttx/libbf.c:5000
{
    80059490:	715d                	addi	sp,sp,-80
    80059492:	e0a2                	sd	s0,64(sp)
    80059494:	e486                	sd	ra,72(sp)
    80059496:	fc26                	sd	s1,56(sp)
    80059498:	f84a                	sd	s2,48(sp)
    8005949a:	f44e                	sd	s3,40(sp)
    8005949c:	f052                	sd	s4,32(sp)
    8005949e:	ec56                	sd	s5,24(sp)
quickjs-nuttx/libbf.c:5001
    if (a->len == 0) {
    800594a0:	0185b903          	ld	s2,24(a1)
quickjs-nuttx/libbf.c:5002
        if (a->expn == BF_EXP_NAN) {
    800594a4:	6984                	ld	s1,16(a1)
quickjs-nuttx/libbf.c:5000
{
    800594a6:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:5001
    if (a->len == 0) {
    800594a8:	02091e63          	bnez	s2,800594e4 <bf_sin+0x54>
quickjs-nuttx/libbf.c:5002
        if (a->expn == BF_EXP_NAN) {
    800594ac:	57fd                	li	a5,-1
    800594ae:	8385                	srli	a5,a5,0x1
    800594b0:	00f49663          	bne	s1,a5,800594bc <bf_sin+0x2c>
quickjs-nuttx/libbf.c:5003
            bf_set_nan(r);
    800594b4:	f0afe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5010
            return 0;
    800594b8:	4501                	li	a0,0
    800594ba:	a801                	j	800594ca <bf_sin+0x3a>
quickjs-nuttx/libbf.c:5005
        } else if (a->expn == BF_EXP_INF) {
    800594bc:	57f5                	li	a5,-3
    800594be:	8385                	srli	a5,a5,0x1
    800594c0:	00f49e63          	bne	s1,a5,800594dc <bf_sin+0x4c>
quickjs-nuttx/libbf.c:5006
            bf_set_nan(r);
    800594c4:	efafe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5007
            return BF_ST_INVALID_OP;
    800594c8:	4505                	li	a0,1
quickjs-nuttx/libbf.c:5026
}
    800594ca:	60a6                	ld	ra,72(sp)
    800594cc:	6406                	ld	s0,64(sp)
    800594ce:	74e2                	ld	s1,56(sp)
    800594d0:	7942                	ld	s2,48(sp)
    800594d2:	79a2                	ld	s3,40(sp)
    800594d4:	7a02                	ld	s4,32(sp)
    800594d6:	6ae2                	ld	s5,24(sp)
    800594d8:	6161                	addi	sp,sp,80
    800594da:	8082                	ret
quickjs-nuttx/libbf.c:5009
            bf_set_zero(r, a->sign);
    800594dc:	458c                	lw	a1,8(a1)
    800594de:	f82fe0ef          	jal	ra,80057c60 <bf_set_zero>
    800594e2:	bfd9                	j	800594b8 <bf_sin+0x28>
    800594e4:	89aa                	mv	s3,a0
    800594e6:	8a32                	mv	s4,a2
    800594e8:	8ab6                	mv	s5,a3
quickjs-nuttx/libbf.c:5016
    if (a->expn < 0) {
    800594ea:	0404dd63          	bgez	s1,80059544 <bf_sin+0xb4>
quickjs-nuttx/libbf.c:5018
        e = sat_add(2 * a->expn, a->expn - 2);
    800594ee:	ffe48593          	addi	a1,s1,-2
    800594f2:	00149513          	slli	a0,s1,0x1
    800594f6:	dc6fd0ef          	jal	ra,80056abc <sat_add>
quickjs-nuttx/libbf.c:5019
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    800594fa:	00691593          	slli	a1,s2,0x6
    800594fe:	002a0793          	addi	a5,s4,2
    80059502:	0589                	addi	a1,a1,2
quickjs-nuttx/libbf.c:5018
        e = sat_add(2 * a->expn, a->expn - 2);
    80059504:	862a                	mv	a2,a0
quickjs-nuttx/libbf.c:5019
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    80059506:	00f5d363          	bge	a1,a5,8005950c <bf_sin+0x7c>
    8005950a:	85be                	mv	a1,a5
    8005950c:	8c8d                	sub	s1,s1,a1
    8005950e:	02965b63          	bge	a2,s1,80059544 <bf_sin+0xb4>
quickjs-nuttx/libbf.c:5020
            bf_set(r, a);
    80059512:	85a2                	mv	a1,s0
    80059514:	854e                	mv	a0,s3
    80059516:	e432                	sd	a2,8(sp)
    80059518:	b0bfe0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:5021
            return bf_add_epsilon(r, r, e, 1 - a->sign, prec, flags);
    8005951c:	4414                	lw	a3,8(s0)
    8005951e:	4585                	li	a1,1
quickjs-nuttx/libbf.c:5026
}
    80059520:	6406                	ld	s0,64(sp)
quickjs-nuttx/libbf.c:5021
            return bf_add_epsilon(r, r, e, 1 - a->sign, prec, flags);
    80059522:	6622                	ld	a2,8(sp)
quickjs-nuttx/libbf.c:5026
}
    80059524:	60a6                	ld	ra,72(sp)
    80059526:	74e2                	ld	s1,56(sp)
    80059528:	7942                	ld	s2,48(sp)
quickjs-nuttx/libbf.c:5021
            return bf_add_epsilon(r, r, e, 1 - a->sign, prec, flags);
    8005952a:	87d6                	mv	a5,s5
    8005952c:	8752                	mv	a4,s4
quickjs-nuttx/libbf.c:5026
}
    8005952e:	6ae2                	ld	s5,24(sp)
    80059530:	7a02                	ld	s4,32(sp)
quickjs-nuttx/libbf.c:5021
            return bf_add_epsilon(r, r, e, 1 - a->sign, prec, flags);
    80059532:	40d586bb          	subw	a3,a1,a3
    80059536:	854e                	mv	a0,s3
    80059538:	0009b583          	ld	a1,0(s3)
quickjs-nuttx/libbf.c:5026
}
    8005953c:	79a2                	ld	s3,40(sp)
    8005953e:	6161                	addi	sp,sp,80
quickjs-nuttx/libbf.c:5021
            return bf_add_epsilon(r, r, e, 1 - a->sign, prec, flags);
    80059540:	e08ff06f          	j	80058b48 <bf_add_epsilon.isra.0>
quickjs-nuttx/libbf.c:5025
    return bf_ziv_rounding(r, a, prec, flags, bf_sin_internal, NULL);
    80059544:	85a2                	mv	a1,s0
quickjs-nuttx/libbf.c:5026
}
    80059546:	6406                	ld	s0,64(sp)
    80059548:	60a6                	ld	ra,72(sp)
    8005954a:	74e2                	ld	s1,56(sp)
    8005954c:	7942                	ld	s2,48(sp)
quickjs-nuttx/libbf.c:5025
    return bf_ziv_rounding(r, a, prec, flags, bf_sin_internal, NULL);
    8005954e:	86d6                	mv	a3,s5
    80059550:	8652                	mv	a2,s4
quickjs-nuttx/libbf.c:5026
}
    80059552:	6ae2                	ld	s5,24(sp)
    80059554:	7a02                	ld	s4,32(sp)
quickjs-nuttx/libbf.c:5025
    return bf_ziv_rounding(r, a, prec, flags, bf_sin_internal, NULL);
    80059556:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:5026
}
    80059558:	79a2                	ld	s3,40(sp)
quickjs-nuttx/libbf.c:5025
    return bf_ziv_rounding(r, a, prec, flags, bf_sin_internal, NULL);
    8005955a:	4781                	li	a5,0
    8005955c:	00006717          	auipc	a4,0x6
    80059560:	27070713          	addi	a4,a4,624 # 8005f7cc <bf_sin_internal>
quickjs-nuttx/libbf.c:5026
}
    80059564:	6161                	addi	sp,sp,80
quickjs-nuttx/libbf.c:5025
    return bf_ziv_rounding(r, a, prec, flags, bf_sin_internal, NULL);
    80059566:	ce7fe06f          	j	8005824c <bf_ziv_rounding>

000000008005956a <bf_tan>:
bf_tan():
quickjs-nuttx/libbf.c:5044
{
    8005956a:	715d                	addi	sp,sp,-80
    8005956c:	e486                	sd	ra,72(sp)
    8005956e:	e0a2                	sd	s0,64(sp)
    80059570:	fc26                	sd	s1,56(sp)
    80059572:	f84a                	sd	s2,48(sp)
    80059574:	f44e                	sd	s3,40(sp)
    80059576:	f052                	sd	s4,32(sp)
    80059578:	ec56                	sd	s5,24(sp)
quickjs-nuttx/libbf.c:5045
    assert(r != a);
    8005957a:	00b51c63          	bne	a0,a1,80059592 <bf_tan+0x28>
quickjs-nuttx/libbf.c:5045 (discriminator 1)
    8005957e:	6585                	lui	a1,0x1
    80059580:	4601                	li	a2,0
    80059582:	3b558593          	addi	a1,a1,949 # 13b5 <asinh-0x7fffec4b>
    80059586:	00027517          	auipc	a0,0x27
    8005958a:	03a50513          	addi	a0,a0,58 # 800805c0 <std_name.0+0x18>
    8005958e:	3ce070ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:5046 (discriminator 2)
    if (a->len == 0) {
    80059592:	0185b903          	ld	s2,24(a1)
quickjs-nuttx/libbf.c:5047 (discriminator 2)
        if (a->expn == BF_EXP_NAN) {
    80059596:	6984                	ld	s1,16(a1)
    80059598:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:5046 (discriminator 2)
    if (a->len == 0) {
    8005959a:	02091e63          	bnez	s2,800595d6 <bf_tan+0x6c>
quickjs-nuttx/libbf.c:5047
        if (a->expn == BF_EXP_NAN) {
    8005959e:	57fd                	li	a5,-1
    800595a0:	8385                	srli	a5,a5,0x1
    800595a2:	00f49663          	bne	s1,a5,800595ae <bf_tan+0x44>
quickjs-nuttx/libbf.c:5048
            bf_set_nan(r);
    800595a6:	e18fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5055
            return 0;
    800595aa:	4501                	li	a0,0
    800595ac:	a801                	j	800595bc <bf_tan+0x52>
quickjs-nuttx/libbf.c:5050
        } else if (a->expn == BF_EXP_INF) {
    800595ae:	57f5                	li	a5,-3
    800595b0:	8385                	srli	a5,a5,0x1
    800595b2:	00f49e63          	bne	s1,a5,800595ce <bf_tan+0x64>
quickjs-nuttx/libbf.c:5051
            bf_set_nan(r);
    800595b6:	e08fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5052
            return BF_ST_INVALID_OP;
    800595ba:	4505                	li	a0,1
quickjs-nuttx/libbf.c:5071
}
    800595bc:	60a6                	ld	ra,72(sp)
    800595be:	6406                	ld	s0,64(sp)
    800595c0:	74e2                	ld	s1,56(sp)
    800595c2:	7942                	ld	s2,48(sp)
    800595c4:	79a2                	ld	s3,40(sp)
    800595c6:	7a02                	ld	s4,32(sp)
    800595c8:	6ae2                	ld	s5,24(sp)
    800595ca:	6161                	addi	sp,sp,80
    800595cc:	8082                	ret
quickjs-nuttx/libbf.c:5054
            bf_set_zero(r, a->sign);
    800595ce:	458c                	lw	a1,8(a1)
    800595d0:	e90fe0ef          	jal	ra,80057c60 <bf_set_zero>
    800595d4:	bfd9                	j	800595aa <bf_tan+0x40>
    800595d6:	89aa                	mv	s3,a0
    800595d8:	8a32                	mv	s4,a2
    800595da:	8ab6                	mv	s5,a3
quickjs-nuttx/libbf.c:5061
    if (a->expn < 0) {
    800595dc:	0404da63          	bgez	s1,80059630 <bf_tan+0xc6>
quickjs-nuttx/libbf.c:5063
        e = sat_add(2 * a->expn, a->expn - 1);
    800595e0:	fff48593          	addi	a1,s1,-1
    800595e4:	00149513          	slli	a0,s1,0x1
    800595e8:	cd4fd0ef          	jal	ra,80056abc <sat_add>
quickjs-nuttx/libbf.c:5064
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    800595ec:	00691593          	slli	a1,s2,0x6
    800595f0:	002a0793          	addi	a5,s4,2
    800595f4:	0589                	addi	a1,a1,2
quickjs-nuttx/libbf.c:5063
        e = sat_add(2 * a->expn, a->expn - 1);
    800595f6:	862a                	mv	a2,a0
quickjs-nuttx/libbf.c:5064
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    800595f8:	00f5d363          	bge	a1,a5,800595fe <bf_tan+0x94>
    800595fc:	85be                	mv	a1,a5
    800595fe:	8c8d                	sub	s1,s1,a1
    80059600:	02965863          	bge	a2,s1,80059630 <bf_tan+0xc6>
quickjs-nuttx/libbf.c:5065
            bf_set(r, a);
    80059604:	85a2                	mv	a1,s0
    80059606:	854e                	mv	a0,s3
    80059608:	e432                	sd	a2,8(sp)
    8005960a:	a19fe0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:5066
            return bf_add_epsilon(r, r, e, a->sign, prec, flags);
    8005960e:	4414                	lw	a3,8(s0)
quickjs-nuttx/libbf.c:5071
}
    80059610:	6406                	ld	s0,64(sp)
quickjs-nuttx/libbf.c:5066
            return bf_add_epsilon(r, r, e, a->sign, prec, flags);
    80059612:	6622                	ld	a2,8(sp)
    80059614:	0009b583          	ld	a1,0(s3)
quickjs-nuttx/libbf.c:5071
}
    80059618:	60a6                	ld	ra,72(sp)
    8005961a:	74e2                	ld	s1,56(sp)
    8005961c:	7942                	ld	s2,48(sp)
quickjs-nuttx/libbf.c:5066
            return bf_add_epsilon(r, r, e, a->sign, prec, flags);
    8005961e:	87d6                	mv	a5,s5
    80059620:	8752                	mv	a4,s4
quickjs-nuttx/libbf.c:5071
}
    80059622:	6ae2                	ld	s5,24(sp)
    80059624:	7a02                	ld	s4,32(sp)
quickjs-nuttx/libbf.c:5066
            return bf_add_epsilon(r, r, e, a->sign, prec, flags);
    80059626:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:5071
}
    80059628:	79a2                	ld	s3,40(sp)
    8005962a:	6161                	addi	sp,sp,80
quickjs-nuttx/libbf.c:5066
            return bf_add_epsilon(r, r, e, a->sign, prec, flags);
    8005962c:	d1cff06f          	j	80058b48 <bf_add_epsilon.isra.0>
quickjs-nuttx/libbf.c:5070
    return bf_ziv_rounding(r, a, prec, flags, bf_tan_internal, NULL);
    80059630:	85a2                	mv	a1,s0
quickjs-nuttx/libbf.c:5071
}
    80059632:	6406                	ld	s0,64(sp)
    80059634:	60a6                	ld	ra,72(sp)
    80059636:	74e2                	ld	s1,56(sp)
    80059638:	7942                	ld	s2,48(sp)
quickjs-nuttx/libbf.c:5070
    return bf_ziv_rounding(r, a, prec, flags, bf_tan_internal, NULL);
    8005963a:	86d6                	mv	a3,s5
    8005963c:	8652                	mv	a2,s4
quickjs-nuttx/libbf.c:5071
}
    8005963e:	6ae2                	ld	s5,24(sp)
    80059640:	7a02                	ld	s4,32(sp)
quickjs-nuttx/libbf.c:5070
    return bf_ziv_rounding(r, a, prec, flags, bf_tan_internal, NULL);
    80059642:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:5071
}
    80059644:	79a2                	ld	s3,40(sp)
quickjs-nuttx/libbf.c:5070
    return bf_ziv_rounding(r, a, prec, flags, bf_tan_internal, NULL);
    80059646:	4781                	li	a5,0
    80059648:	00006717          	auipc	a4,0x6
    8005964c:	18e70713          	addi	a4,a4,398 # 8005f7d6 <bf_tan_internal>
quickjs-nuttx/libbf.c:5071
}
    80059650:	6161                	addi	sp,sp,80
quickjs-nuttx/libbf.c:5070
    return bf_ziv_rounding(r, a, prec, flags, bf_tan_internal, NULL);
    80059652:	bfbfe06f          	j	8005824c <bf_ziv_rounding>

0000000080059656 <bf_atan>:
bf_atan():
quickjs-nuttx/libbf.c:5162
{
    80059656:	7119                	addi	sp,sp,-128
    80059658:	f8a2                	sd	s0,112(sp)
    8005965a:	f4a6                	sd	s1,104(sp)
    8005965c:	f0ca                	sd	s2,96(sp)
    8005965e:	ecce                	sd	s3,88(sp)
    80059660:	fc86                	sd	ra,120(sp)
    80059662:	e8d2                	sd	s4,80(sp)
    80059664:	e4d6                	sd	s5,72(sp)
quickjs-nuttx/libbf.c:5167
    if (a->len == 0) {
    80059666:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/libbf.c:5162
{
    80059668:	89b6                	mv	s3,a3
    8005966a:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:5163
    bf_context_t *s = r->ctx;
    8005966c:	6114                	ld	a3,0(a0)
quickjs-nuttx/libbf.c:5162
{
    8005966e:	842e                	mv	s0,a1
    80059670:	8932                	mv	s2,a2
quickjs-nuttx/libbf.c:5167
    if (a->len == 0) {
    80059672:	efb9                	bnez	a5,800596d0 <bf_atan+0x7a>
quickjs-nuttx/libbf.c:5168
        if (a->expn == BF_EXP_NAN) {
    80059674:	6990                	ld	a2,16(a1)
    80059676:	5a7d                	li	s4,-1
    80059678:	001a5793          	srli	a5,s4,0x1
    8005967c:	00f61e63          	bne	a2,a5,80059698 <bf_atan+0x42>
quickjs-nuttx/libbf.c:5169
            bf_set_nan(r);
    80059680:	d3efe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5178
            return 0;
    80059684:	4501                	li	a0,0
quickjs-nuttx/libbf.c:5205
}
    80059686:	70e6                	ld	ra,120(sp)
    80059688:	7446                	ld	s0,112(sp)
    8005968a:	74a6                	ld	s1,104(sp)
    8005968c:	7906                	ld	s2,96(sp)
    8005968e:	69e6                	ld	s3,88(sp)
    80059690:	6a46                	ld	s4,80(sp)
    80059692:	6aa6                	ld	s5,72(sp)
    80059694:	6109                	addi	sp,sp,128
    80059696:	8082                	ret
quickjs-nuttx/libbf.c:5171
        } else if (a->expn == BF_EXP_INF)  {
    80059698:	5775                	li	a4,-3
    8005969a:	8305                	srli	a4,a4,0x1
quickjs-nuttx/libbf.c:5173
            bf_const_pi_signed(r, a->sign, prec, flags);
    8005969c:	459c                	lw	a5,8(a1)
quickjs-nuttx/libbf.c:5171
        } else if (a->expn == BF_EXP_INF)  {
    8005969e:	02e61563          	bne	a2,a4,800596c8 <bf_atan+0x72>
bf_const_pi_signed():
quickjs-nuttx/libbf.c:4219
    return bf_const_get(T, prec, flags, &s->pi_cache, bf_const_pi_internal,
    800596a2:	04068693          	addi	a3,a3,64
    800596a6:	864e                	mv	a2,s3
    800596a8:	85ca                	mv	a1,s2
    800596aa:	00006717          	auipc	a4,0x6
    800596ae:	95c70713          	addi	a4,a4,-1700 # 8005f006 <bf_const_pi_internal>
    800596b2:	c4ffe0ef          	jal	ra,80058300 <bf_const_get>
bf_atan():
quickjs-nuttx/libbf.c:5174
            bf_mul_2exp(r, -1, BF_PREC_INF, BF_RNDZ);
    800596b6:	4685                	li	a3,1
    800596b8:	002a5613          	srli	a2,s4,0x2
    800596bc:	55fd                	li	a1,-1
quickjs-nuttx/libbf.c:5189
        bf_mul_2exp(r, -2, BF_PREC_INF, BF_RNDZ);
    800596be:	8526                	mv	a0,s1
    800596c0:	bc6ff0ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:5190
        return BF_ST_INEXACT;
    800596c4:	4541                	li	a0,16
    800596c6:	b7c1                	j	80059686 <bf_atan+0x30>
quickjs-nuttx/libbf.c:5177
            bf_set_zero(r, a->sign);
    800596c8:	85be                	mv	a1,a5
    800596ca:	d96fe0ef          	jal	ra,80057c60 <bf_set_zero>
    800596ce:	bf5d                	j	80059684 <bf_atan+0x2e>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800596d0:	5afd                	li	s5,-1
    800596d2:	03fa9793          	slli	a5,s5,0x3f
bf_atan():
quickjs-nuttx/libbf.c:5183
    bf_set_ui(T, 1);
    800596d6:	4585                	li	a1,1
    800596d8:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800596da:	ec36                	sd	a3,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800596dc:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    800596de:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    800596e0:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    800596e2:	fc02                	sd	zero,56(sp)
bf_atan():
quickjs-nuttx/libbf.c:5183
    bf_set_ui(T, 1);
    800596e4:	cfafe0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:5184
    res = bf_cmpu(a, T);
    800596e8:	082c                	addi	a1,sp,24
    800596ea:	8522                	mv	a0,s0
    800596ec:	dc3fe0ef          	jal	ra,800584ae <bf_cmpu>
    800596f0:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:5185
    bf_delete(T);
    800596f2:	0828                	addi	a0,sp,24
    800596f4:	bb6fd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5186
    if (res == 0) {
    800596f8:	020a1463          	bnez	s4,80059720 <bf_atan+0xca>
bf_const_pi_signed():
quickjs-nuttx/libbf.c:4219
    return bf_const_get(T, prec, flags, &s->pi_cache, bf_const_pi_internal,
    800596fc:	6094                	ld	a3,0(s1)
    800596fe:	441c                	lw	a5,8(s0)
    80059700:	864e                	mv	a2,s3
    80059702:	04068693          	addi	a3,a3,64
    80059706:	85ca                	mv	a1,s2
    80059708:	00006717          	auipc	a4,0x6
    8005970c:	8fe70713          	addi	a4,a4,-1794 # 8005f006 <bf_const_pi_internal>
    80059710:	8526                	mv	a0,s1
    80059712:	beffe0ef          	jal	ra,80058300 <bf_const_get>
bf_atan():
quickjs-nuttx/libbf.c:5189
        bf_mul_2exp(r, -2, BF_PREC_INF, BF_RNDZ);
    80059716:	4685                	li	a3,1
    80059718:	002ad613          	srli	a2,s5,0x2
    8005971c:	55f9                	li	a1,-2
    8005971e:	b745                	j	800596be <bf_atan+0x68>
quickjs-nuttx/libbf.c:5195
    if (a->expn < 0) {
    80059720:	01043a03          	ld	s4,16(s0)
    80059724:	040a5663          	bgez	s4,80059770 <bf_atan+0x11a>
quickjs-nuttx/libbf.c:5197
        e = sat_add(2 * a->expn, a->expn - 1);
    80059728:	fffa0593          	addi	a1,s4,-1
    8005972c:	001a1513          	slli	a0,s4,0x1
    80059730:	b8cfd0ef          	jal	ra,80056abc <sat_add>
quickjs-nuttx/libbf.c:5198
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    80059734:	6c18                	ld	a4,24(s0)
    80059736:	00290793          	addi	a5,s2,2
quickjs-nuttx/libbf.c:5197
        e = sat_add(2 * a->expn, a->expn - 1);
    8005973a:	862a                	mv	a2,a0
quickjs-nuttx/libbf.c:5198
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    8005973c:	071a                	slli	a4,a4,0x6
    8005973e:	0709                	addi	a4,a4,2
    80059740:	00f75363          	bge	a4,a5,80059746 <bf_atan+0xf0>
    80059744:	873e                	mv	a4,a5
    80059746:	40ea0733          	sub	a4,s4,a4
    8005974a:	02e65363          	bge	a2,a4,80059770 <bf_atan+0x11a>
quickjs-nuttx/libbf.c:5199
            bf_set(r, a);
    8005974e:	85a2                	mv	a1,s0
    80059750:	8526                	mv	a0,s1
    80059752:	e432                	sd	a2,8(sp)
    80059754:	8cffe0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:5200
            return bf_add_epsilon(r, r, e, 1 - a->sign, prec, flags);
    80059758:	4414                	lw	a3,8(s0)
    8005975a:	4585                	li	a1,1
    8005975c:	6622                	ld	a2,8(sp)
    8005975e:	40d586bb          	subw	a3,a1,a3
    80059762:	608c                	ld	a1,0(s1)
    80059764:	87ce                	mv	a5,s3
    80059766:	874a                	mv	a4,s2
    80059768:	8526                	mv	a0,s1
    8005976a:	bdeff0ef          	jal	ra,80058b48 <bf_add_epsilon.isra.0>
    8005976e:	bf21                	j	80059686 <bf_atan+0x30>
quickjs-nuttx/libbf.c:5204
    return bf_ziv_rounding(r, a, prec, flags, bf_atan_internal, (void *)FALSE);
    80059770:	4781                	li	a5,0
    80059772:	00005717          	auipc	a4,0x5
    80059776:	41c70713          	addi	a4,a4,1052 # 8005eb8e <bf_atan_internal>
    8005977a:	86ce                	mv	a3,s3
    8005977c:	864a                	mv	a2,s2
    8005977e:	85a2                	mv	a1,s0
    80059780:	8526                	mv	a0,s1
    80059782:	acbfe0ef          	jal	ra,8005824c <bf_ziv_rounding>
    80059786:	b701                	j	80059686 <bf_atan+0x30>

0000000080059788 <bf_atan2_internal>:
bf_atan2_internal():
quickjs-nuttx/libbf.c:5208
{
    80059788:	711d                	addi	sp,sp,-96
    8005978a:	e0ca                	sd	s2,64(sp)
    8005978c:	f852                	sd	s4,48(sp)
    8005978e:	ec86                	sd	ra,88(sp)
    80059790:	e8a2                	sd	s0,80(sp)
    80059792:	e4a6                	sd	s1,72(sp)
    80059794:	fc4e                	sd	s3,56(sp)
quickjs-nuttx/libbf.c:5215
    if (y->expn == BF_EXP_NAN || x->expn == BF_EXP_NAN) {
    80059796:	699c                	ld	a5,16(a1)
    80059798:	577d                	li	a4,-1
quickjs-nuttx/libbf.c:5208
{
    8005979a:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:5215
    if (y->expn == BF_EXP_NAN || x->expn == BF_EXP_NAN) {
    8005979c:	00175593          	srli	a1,a4,0x1
quickjs-nuttx/libbf.c:5208
{
    800597a0:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:5215
    if (y->expn == BF_EXP_NAN || x->expn == BF_EXP_NAN) {
    800597a2:	00b78663          	beq	a5,a1,800597ae <bf_atan2_internal+0x26>
    800597a6:	89b6                	mv	s3,a3
quickjs-nuttx/libbf.c:5215 (discriminator 1)
    800597a8:	6a94                	ld	a3,16(a3)
    800597aa:	00b69f63          	bne	a3,a1,800597c8 <bf_atan2_internal+0x40>
quickjs-nuttx/libbf.c:5216
        bf_set_nan(r);
    800597ae:	8552                	mv	a0,s4
    800597b0:	c0efe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5217
        return 0;
    800597b4:	4401                	li	s0,0
quickjs-nuttx/libbf.c:5243
}
    800597b6:	60e6                	ld	ra,88(sp)
    800597b8:	8522                	mv	a0,s0
    800597ba:	6446                	ld	s0,80(sp)
    800597bc:	64a6                	ld	s1,72(sp)
    800597be:	6906                	ld	s2,64(sp)
    800597c0:	79e2                	ld	s3,56(sp)
    800597c2:	7a42                	ld	s4,48(sp)
    800597c4:	6125                	addi	sp,sp,96
    800597c6:	8082                	ret
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800597c8:	610c                	ld	a1,0(a0)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800597ca:	177e                	slli	a4,a4,0x3f
bf_atan2_internal():
quickjs-nuttx/libbf.c:5222
    prec1 = prec + 32;
    800597cc:	02060493          	addi	s1,a2,32
quickjs-nuttx/libbf.c:5223
    if (y->expn == BF_EXP_INF && x->expn == BF_EXP_INF) {
    800597d0:	5675                	li	a2,-3
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800597d2:	e42e                	sd	a1,8(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    800597d4:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800597d6:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    800597d8:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    800597da:	f402                	sd	zero,40(sp)
bf_atan2_internal():
quickjs-nuttx/libbf.c:5223
    if (y->expn == BF_EXP_INF && x->expn == BF_EXP_INF) {
    800597dc:	8205                	srli	a2,a2,0x1
    800597de:	04c79e63          	bne	a5,a2,8005983a <bf_atan2_internal+0xb2>
quickjs-nuttx/libbf.c:5223 (discriminator 1)
    800597e2:	06f69a63          	bne	a3,a5,80059856 <bf_atan2_internal+0xce>
quickjs-nuttx/libbf.c:5224
        bf_set_ui(T, 1);
    800597e6:	4585                	li	a1,1
    800597e8:	0028                	addi	a0,sp,8
    800597ea:	bf4fe0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:5225
        T->sign = y->sign ^ x->sign;
    800597ee:	00892783          	lw	a5,8(s2)
    800597f2:	0089a703          	lw	a4,8(s3)
    800597f6:	8fb9                	xor	a5,a5,a4
    800597f8:	c83e                	sw	a5,16(sp)
quickjs-nuttx/libbf.c:5231
    ret = bf_atan(r, T, prec1, BF_RNDF);
    800597fa:	4699                	li	a3,6
    800597fc:	8626                	mv	a2,s1
    800597fe:	002c                	addi	a1,sp,8
    80059800:	8552                	mv	a0,s4
    80059802:	e55ff0ef          	jal	ra,80059656 <bf_atan>
quickjs-nuttx/libbf.c:5233
    if (x->sign) {
    80059806:	0089a783          	lw	a5,8(s3)
quickjs-nuttx/libbf.c:5231
    ret = bf_atan(r, T, prec1, BF_RNDF);
    8005980a:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:5233
    if (x->sign) {
    8005980c:	c39d                	beqz	a5,80059832 <bf_atan2_internal+0xaa>
quickjs-nuttx/libbf.c:5235
        bf_const_pi(T, prec1, BF_RNDF);
    8005980e:	4619                	li	a2,6
    80059810:	85a6                	mv	a1,s1
    80059812:	0028                	addi	a0,sp,8
    80059814:	a3fff0ef          	jal	ra,80059252 <bf_const_pi>
quickjs-nuttx/libbf.c:5236
        T->sign = y->sign;
    80059818:	00892783          	lw	a5,8(s2)
quickjs-nuttx/libbf.c:5237
        bf_add(r, r, T, prec1, BF_RNDN);
    8005981c:	4701                	li	a4,0
    8005981e:	86a6                	mv	a3,s1
    80059820:	0030                	addi	a2,sp,8
    80059822:	85d2                	mv	a1,s4
    80059824:	8552                	mv	a0,s4
quickjs-nuttx/libbf.c:5238
        ret |= BF_ST_INEXACT;
    80059826:	01046413          	ori	s0,s0,16
quickjs-nuttx/libbf.c:5236
        T->sign = y->sign;
    8005982a:	c83e                	sw	a5,16(sp)
quickjs-nuttx/libbf.c:5238
        ret |= BF_ST_INEXACT;
    8005982c:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:5237
        bf_add(r, r, T, prec1, BF_RNDN);
    8005982e:	b0eff0ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:5241
    bf_delete(T);
    80059832:	0028                	addi	a0,sp,8
    80059834:	a76fd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5242
    return ret;
    80059838:	bfbd                	j	800597b6 <bf_atan2_internal+0x2e>
quickjs-nuttx/libbf.c:5226
    } else if (y->expn == BF_EXP_ZERO && x->expn == BF_EXP_ZERO) {
    8005983a:	00e79e63          	bne	a5,a4,80059856 <bf_atan2_internal+0xce>
quickjs-nuttx/libbf.c:5226 (discriminator 1)
    8005983e:	00f69c63          	bne	a3,a5,80059856 <bf_atan2_internal+0xce>
quickjs-nuttx/libbf.c:5227
        bf_set_zero(T, y->sign ^ x->sign);
    80059842:	00892583          	lw	a1,8(s2)
    80059846:	0089a783          	lw	a5,8(s3)
    8005984a:	0028                	addi	a0,sp,8
    8005984c:	8dbd                	xor	a1,a1,a5
    8005984e:	2581                	sext.w	a1,a1
    80059850:	c10fe0ef          	jal	ra,80057c60 <bf_set_zero>
    80059854:	b75d                	j	800597fa <bf_atan2_internal+0x72>
quickjs-nuttx/libbf.c:5229
        bf_div(T, y, x, prec1, BF_RNDF);
    80059856:	4719                	li	a4,6
    80059858:	86a6                	mv	a3,s1
    8005985a:	864e                	mv	a2,s3
    8005985c:	85ca                	mv	a1,s2
    8005985e:	0028                	addi	a0,sp,8
    80059860:	b50ff0ef          	jal	ra,80058bb0 <bf_div>
    80059864:	bf59                	j	800597fa <bf_atan2_internal+0x72>

0000000080059866 <bf_atan2>:
bf_atan2():
quickjs-nuttx/libbf.c:5247
{
    80059866:	87b2                	mv	a5,a2
    80059868:	8636                	mv	a2,a3
    8005986a:	86ba                	mv	a3,a4
quickjs-nuttx/libbf.c:5248
    return bf_ziv_rounding(r, y, prec, flags, bf_atan2_internal, (void *)x);
    8005986c:	00000717          	auipc	a4,0x0
    80059870:	f1c70713          	addi	a4,a4,-228 # 80059788 <bf_atan2_internal>
    80059874:	9d9fe06f          	j	8005824c <bf_ziv_rounding>

0000000080059878 <bf_asin>:
bf_asin():
quickjs-nuttx/libbf.c:5283
{
    80059878:	7159                	addi	sp,sp,-112
    8005987a:	f0a2                	sd	s0,96(sp)
    8005987c:	eca6                	sd	s1,88(sp)
    8005987e:	f486                	sd	ra,104(sp)
    80059880:	e8ca                	sd	s2,80(sp)
    80059882:	e4ce                	sd	s3,72(sp)
    80059884:	e0d2                	sd	s4,64(sp)
quickjs-nuttx/libbf.c:5288
    if (a->len == 0) {
    80059886:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/libbf.c:5283
{
    80059888:	84aa                	mv	s1,a0
    8005988a:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:5288
    if (a->len == 0) {
    8005988c:	ef95                	bnez	a5,800598c8 <bf_asin+0x50>
quickjs-nuttx/libbf.c:5289
        if (a->expn == BF_EXP_NAN) {
    8005988e:	6998                	ld	a4,16(a1)
    80059890:	57fd                	li	a5,-1
    80059892:	8385                	srli	a5,a5,0x1
    80059894:	00f71663          	bne	a4,a5,800598a0 <bf_asin+0x28>
quickjs-nuttx/libbf.c:5290
            bf_set_nan(r);
    80059898:	b26fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5297
            return 0;
    8005989c:	4501                	li	a0,0
    8005989e:	a809                	j	800598b0 <bf_asin+0x38>
quickjs-nuttx/libbf.c:5292
        } else if (a->expn == BF_EXP_INF) {
    800598a0:	57f5                	li	a5,-3
    800598a2:	8385                	srli	a5,a5,0x1
    800598a4:	00f71e63          	bne	a4,a5,800598c0 <bf_asin+0x48>
quickjs-nuttx/libbf.c:5293
            bf_set_nan(r);
    800598a8:	8526                	mv	a0,s1
    800598aa:	b14fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5294
            return BF_ST_INVALID_OP;
    800598ae:	4505                	li	a0,1
quickjs-nuttx/libbf.c:5321
}
    800598b0:	70a6                	ld	ra,104(sp)
    800598b2:	7406                	ld	s0,96(sp)
    800598b4:	64e6                	ld	s1,88(sp)
    800598b6:	6946                	ld	s2,80(sp)
    800598b8:	69a6                	ld	s3,72(sp)
    800598ba:	6a06                	ld	s4,64(sp)
    800598bc:	6165                	addi	sp,sp,112
    800598be:	8082                	ret
quickjs-nuttx/libbf.c:5296
            bf_set_zero(r, a->sign);
    800598c0:	458c                	lw	a1,8(a1)
    800598c2:	b9efe0ef          	jal	ra,80057c60 <bf_set_zero>
    800598c6:	bfd9                	j	8005989c <bf_asin+0x24>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800598c8:	611c                	ld	a5,0(a0)
bf_asin():
quickjs-nuttx/libbf.c:5301
    bf_set_ui(T, 1);
    800598ca:	4585                	li	a1,1
    800598cc:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800598ce:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800598d0:	57fd                	li	a5,-1
    800598d2:	17fe                	slli	a5,a5,0x3f
    800598d4:	89b2                	mv	s3,a2
    800598d6:	8a36                	mv	s4,a3
    800598d8:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    800598da:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    800598dc:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    800598de:	fc02                	sd	zero,56(sp)
bf_asin():
quickjs-nuttx/libbf.c:5301
    bf_set_ui(T, 1);
    800598e0:	afefe0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:5302
    res = bf_cmpu(a, T);
    800598e4:	082c                	addi	a1,sp,24
    800598e6:	8522                	mv	a0,s0
    800598e8:	bc7fe0ef          	jal	ra,800584ae <bf_cmpu>
    800598ec:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:5303
    bf_delete(T);
    800598ee:	0828                	addi	a0,sp,24
    800598f0:	9bafd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5304
    if (res > 0) {
    800598f4:	fb204ae3          	bgtz	s2,800598a8 <bf_asin+0x30>
quickjs-nuttx/libbf.c:5311
    if (a->expn < 0) {
    800598f8:	01043903          	ld	s2,16(s0)
    800598fc:	04095363          	bgez	s2,80059942 <bf_asin+0xca>
quickjs-nuttx/libbf.c:5313
        e = sat_add(2 * a->expn, a->expn - 2);
    80059900:	ffe90593          	addi	a1,s2,-2
    80059904:	00191513          	slli	a0,s2,0x1
    80059908:	9b4fd0ef          	jal	ra,80056abc <sat_add>
quickjs-nuttx/libbf.c:5314
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    8005990c:	6c0c                	ld	a1,24(s0)
    8005990e:	00298793          	addi	a5,s3,2
quickjs-nuttx/libbf.c:5313
        e = sat_add(2 * a->expn, a->expn - 2);
    80059912:	862a                	mv	a2,a0
quickjs-nuttx/libbf.c:5314
        if (e < a->expn - bf_max(prec + 2, a->len * LIMB_BITS + 2)) {
    80059914:	059a                	slli	a1,a1,0x6
    80059916:	0589                	addi	a1,a1,2
    80059918:	00f5d363          	bge	a1,a5,8005991e <bf_asin+0xa6>
    8005991c:	85be                	mv	a1,a5
    8005991e:	40b905b3          	sub	a1,s2,a1
    80059922:	02b65063          	bge	a2,a1,80059942 <bf_asin+0xca>
quickjs-nuttx/libbf.c:5315
            bf_set(r, a);
    80059926:	85a2                	mv	a1,s0
    80059928:	8526                	mv	a0,s1
    8005992a:	e432                	sd	a2,8(sp)
    8005992c:	ef6fe0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:5316
            return bf_add_epsilon(r, r, e, a->sign, prec, flags);
    80059930:	4414                	lw	a3,8(s0)
    80059932:	6622                	ld	a2,8(sp)
    80059934:	608c                	ld	a1,0(s1)
    80059936:	87d2                	mv	a5,s4
    80059938:	874e                	mv	a4,s3
    8005993a:	8526                	mv	a0,s1
    8005993c:	a0cff0ef          	jal	ra,80058b48 <bf_add_epsilon.isra.0>
    80059940:	bf85                	j	800598b0 <bf_asin+0x38>
quickjs-nuttx/libbf.c:5320
    return bf_ziv_rounding(r, a, prec, flags, bf_asin_internal, (void *)FALSE);
    80059942:	4781                	li	a5,0
    80059944:	00005717          	auipc	a4,0x5
    80059948:	44a70713          	addi	a4,a4,1098 # 8005ed8e <bf_asin_internal>
    8005994c:	86d2                	mv	a3,s4
    8005994e:	864e                	mv	a2,s3
    80059950:	85a2                	mv	a1,s0
    80059952:	8526                	mv	a0,s1
    80059954:	8f9fe0ef          	jal	ra,8005824c <bf_ziv_rounding>
    80059958:	bfa1                	j	800598b0 <bf_asin+0x38>

000000008005995a <bf_acos>:
bf_acos():
quickjs-nuttx/libbf.c:5324
{
    8005995a:	7159                	addi	sp,sp,-112
    8005995c:	eca6                	sd	s1,88(sp)
    8005995e:	e8ca                	sd	s2,80(sp)
    80059960:	e4ce                	sd	s3,72(sp)
    80059962:	f486                	sd	ra,104(sp)
    80059964:	f0a2                	sd	s0,96(sp)
quickjs-nuttx/libbf.c:5329
    if (a->len == 0) {
    80059966:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/libbf.c:5324
{
    80059968:	84aa                	mv	s1,a0
    8005996a:	892e                	mv	s2,a1
    8005996c:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:5329
    if (a->len == 0) {
    8005996e:	eba1                	bnez	a5,800599be <bf_acos+0x64>
quickjs-nuttx/libbf.c:5330
        if (a->expn == BF_EXP_NAN) {
    80059970:	6998                	ld	a4,16(a1)
    80059972:	547d                	li	s0,-1
    80059974:	00145793          	srli	a5,s0,0x1
    80059978:	00f71d63          	bne	a4,a5,80059992 <bf_acos+0x38>
quickjs-nuttx/libbf.c:5331
            bf_set_nan(r);
    8005997c:	a42fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5332
            return 0;
    80059980:	4401                	li	s0,0
quickjs-nuttx/libbf.c:5355
}
    80059982:	70a6                	ld	ra,104(sp)
    80059984:	8522                	mv	a0,s0
    80059986:	7406                	ld	s0,96(sp)
    80059988:	64e6                	ld	s1,88(sp)
    8005998a:	6946                	ld	s2,80(sp)
    8005998c:	69a6                	ld	s3,72(sp)
    8005998e:	6165                	addi	sp,sp,112
    80059990:	8082                	ret
quickjs-nuttx/libbf.c:5333
        } else if (a->expn == BF_EXP_INF) {
    80059992:	57f5                	li	a5,-3
    80059994:	8385                	srli	a5,a5,0x1
    80059996:	00f71763          	bne	a4,a5,800599a4 <bf_acos+0x4a>
quickjs-nuttx/libbf.c:5334
            bf_set_nan(r);
    8005999a:	8526                	mv	a0,s1
    8005999c:	a22fe0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:5335
            return BF_ST_INVALID_OP;
    800599a0:	4405                	li	s0,1
    800599a2:	b7c5                	j	80059982 <bf_acos+0x28>
quickjs-nuttx/libbf.c:5337
            bf_const_pi(r, prec, flags);
    800599a4:	8636                	mv	a2,a3
    800599a6:	85ce                	mv	a1,s3
    800599a8:	8abff0ef          	jal	ra,80059252 <bf_const_pi>
quickjs-nuttx/libbf.c:5338
            bf_mul_2exp(r, -1, BF_PREC_INF, BF_RNDZ);
    800599ac:	00245613          	srli	a2,s0,0x2
    800599b0:	4685                	li	a3,1
    800599b2:	55fd                	li	a1,-1
    800599b4:	8526                	mv	a0,s1
    800599b6:	8d0ff0ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:5339
            return BF_ST_INEXACT;
    800599ba:	4441                	li	s0,16
    800599bc:	b7d9                	j	80059982 <bf_acos+0x28>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800599be:	611c                	ld	a5,0(a0)
bf_acos():
quickjs-nuttx/libbf.c:5343
    bf_set_ui(T, 1);
    800599c0:	4585                	li	a1,1
    800599c2:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    800599c4:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    800599c6:	57fd                	li	a5,-1
    800599c8:	17fe                	slli	a5,a5,0x3f
    800599ca:	e436                	sd	a3,8(sp)
    800599cc:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    800599ce:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    800599d0:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    800599d2:	fc02                	sd	zero,56(sp)
bf_acos():
quickjs-nuttx/libbf.c:5343
    bf_set_ui(T, 1);
    800599d4:	a0afe0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:5344
    res = bf_cmpu(a, T);
    800599d8:	082c                	addi	a1,sp,24
    800599da:	854a                	mv	a0,s2
    800599dc:	ad3fe0ef          	jal	ra,800584ae <bf_cmpu>
    800599e0:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:5345
    bf_delete(T);
    800599e2:	0828                	addi	a0,sp,24
    800599e4:	8c6fd0ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5346
    if (res > 0) {
    800599e8:	fa8049e3          	bgtz	s0,8005999a <bf_acos+0x40>
quickjs-nuttx/libbf.c:5349
    } else if (res == 0 && a->sign == 0) {
    800599ec:	66a2                	ld	a3,8(sp)
    800599ee:	e809                	bnez	s0,80059a00 <bf_acos+0xa6>
quickjs-nuttx/libbf.c:5349 (discriminator 1)
    800599f0:	00892403          	lw	s0,8(s2)
    800599f4:	e411                	bnez	s0,80059a00 <bf_acos+0xa6>
quickjs-nuttx/libbf.c:5350
        bf_set_zero(r, 0);
    800599f6:	4581                	li	a1,0
    800599f8:	8526                	mv	a0,s1
    800599fa:	a66fe0ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/libbf.c:5351
        return 0;
    800599fe:	b751                	j	80059982 <bf_acos+0x28>
quickjs-nuttx/libbf.c:5354
    return bf_ziv_rounding(r, a, prec, flags, bf_asin_internal, (void *)TRUE);
    80059a00:	4785                	li	a5,1
    80059a02:	00005717          	auipc	a4,0x5
    80059a06:	38c70713          	addi	a4,a4,908 # 8005ed8e <bf_asin_internal>
    80059a0a:	864e                	mv	a2,s3
    80059a0c:	85ca                	mv	a1,s2
    80059a0e:	8526                	mv	a0,s1
    80059a10:	83dfe0ef          	jal	ra,8005824c <bf_ziv_rounding>
    80059a14:	842a                	mv	s0,a0
    80059a16:	b7b5                	j	80059982 <bf_acos+0x28>

0000000080059a18 <mp_add_dec>:
mp_add_dec():
quickjs-nuttx/libbf.c:5574
{
    80059a18:	8e2a                	mv	t3,a0
quickjs-nuttx/libbf.c:5580
    for(i=0;i<n;i++) {
    80059a1a:	4801                	li	a6,0
quickjs-nuttx/libbf.c:5574
{
    80059a1c:	853a                	mv	a0,a4
quickjs-nuttx/libbf.c:5580
    for(i=0;i<n;i++) {
    80059a1e:	4301                	li	t1,0
quickjs-nuttx/libbf.c:5583
        a = v + op2[i] + k - base;
    80059a20:	0003af17          	auipc	t5,0x3a
    80059a24:	258f3f03          	ld	t5,600(t5) # 80093c78 <_erodata+0x106>
quickjs-nuttx/libbf.c:5580 (discriminator 1)
    for(i=0;i<n;i++) {
    80059a28:	00d34363          	blt	t1,a3,80059a2e <mp_add_dec+0x16>
quickjs-nuttx/libbf.c:5590
}
    80059a2c:	8082                	ret
quickjs-nuttx/libbf.c:5582
        v = op1[i];
    80059a2e:	010587b3          	add	a5,a1,a6
    80059a32:	0007be83          	ld	t4,0(a5)
quickjs-nuttx/libbf.c:5583
        a = v + op2[i] + k - base;
    80059a36:	010607b3          	add	a5,a2,a6
    80059a3a:	639c                	ld	a5,0(a5)
    80059a3c:	97f6                	add	a5,a5,t4
    80059a3e:	97aa                	add	a5,a5,a0
    80059a40:	01e788b3          	add	a7,a5,t5
quickjs-nuttx/libbf.c:5584
        k = a <= v;
    80059a44:	011eb733          	sltu	a4,t4,a7
    80059a48:	00174713          	xori	a4,a4,1
    80059a4c:	02071513          	slli	a0,a4,0x20
    80059a50:	9101                	srli	a0,a0,0x20
quickjs-nuttx/libbf.c:5585
        if (!k) 
    80059a52:	011ef363          	bgeu	t4,a7,80059a58 <mp_add_dec+0x40>
quickjs-nuttx/libbf.c:5586
            a += base;
    80059a56:	88be                	mv	a7,a5
quickjs-nuttx/libbf.c:5587 (discriminator 2)
        res[i]=a;
    80059a58:	010e07b3          	add	a5,t3,a6
    80059a5c:	0117b023          	sd	a7,0(a5)
quickjs-nuttx/libbf.c:5580 (discriminator 2)
    for(i=0;i<n;i++) {
    80059a60:	0305                	addi	t1,t1,1
    80059a62:	0821                	addi	a6,a6,8
    80059a64:	b7d1                	j	80059a28 <mp_add_dec+0x10>

0000000080059a66 <mp_add_ui_dec>:
mp_add_ui_dec():
quickjs-nuttx/libbf.c:5599
    for(i=0;i<n;i++) {
    80059a66:	87aa                	mv	a5,a0
    80059a68:	4801                	li	a6,0
quickjs-nuttx/libbf.c:5598
    k=b;
    80059a6a:	852e                	mv	a0,a1
quickjs-nuttx/libbf.c:5601
        a = v + k - base;
    80059a6c:	0003a317          	auipc	t1,0x3a
    80059a70:	20c33303          	ld	t1,524(t1) # 80093c78 <_erodata+0x106>
quickjs-nuttx/libbf.c:5599 (discriminator 1)
    for(i=0;i<n;i++) {
    80059a74:	00c84363          	blt	a6,a2,80059a7a <mp_add_ui_dec+0x14>
quickjs-nuttx/libbf.c:5610
}
    80059a78:	8082                	ret
quickjs-nuttx/libbf.c:5600
        v = tab[i];
    80059a7a:	6394                	ld	a3,0(a5)
quickjs-nuttx/libbf.c:5601
        a = v + k - base;
    80059a7c:	00d508b3          	add	a7,a0,a3
    80059a80:	00688733          	add	a4,a7,t1
quickjs-nuttx/libbf.c:5602
        k = a <= v;
    80059a84:	00e6b5b3          	sltu	a1,a3,a4
    80059a88:	0015c593          	xori	a1,a1,1
    80059a8c:	02059513          	slli	a0,a1,0x20
    80059a90:	9101                	srli	a0,a0,0x20
quickjs-nuttx/libbf.c:5603
        if (!k) 
    80059a92:	00e6e363          	bltu	a3,a4,80059a98 <mp_add_ui_dec+0x32>
    80059a96:	88ba                	mv	a7,a4
quickjs-nuttx/libbf.c:5605
        tab[i] = a;
    80059a98:	0117b023          	sd	a7,0(a5)
quickjs-nuttx/libbf.c:5606
        if (k == 0)
    80059a9c:	07a1                	addi	a5,a5,8
    80059a9e:	fce6ede3          	bltu	a3,a4,80059a78 <mp_add_ui_dec+0x12>
quickjs-nuttx/libbf.c:5599 (discriminator 2)
    for(i=0;i<n;i++) {
    80059aa2:	0805                	addi	a6,a6,1
    80059aa4:	bfc1                	j	80059a74 <mp_add_ui_dec+0xe>

0000000080059aa6 <__bfdec_round>:
__bfdec_round():
quickjs-nuttx/libbf.c:6427
{
    80059aa6:	7119                	addi	sp,sp,-128
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    80059aa8:	0056579b          	srliw	a5,a2,0x5
__bfdec_round():
quickjs-nuttx/libbf.c:6427
    80059aac:	f8a2                	sd	s0,112(sp)
    80059aae:	ecce                	sd	s3,88(sp)
    80059ab0:	e8d2                	sd	s4,80(sp)
    80059ab2:	e0da                	sd	s6,64(sp)
    80059ab4:	fc86                	sd	ra,120(sp)
    80059ab6:	f4a6                	sd	s1,104(sp)
    80059ab8:	f0ca                	sd	s2,96(sp)
    80059aba:	e4d6                	sd	s5,72(sp)
    80059abc:	fc5e                	sd	s7,56(sp)
    80059abe:	f862                	sd	s8,48(sp)
    80059ac0:	f466                	sd	s9,40(sp)
    80059ac2:	f06a                	sd	s10,32(sp)
    80059ac4:	ec6e                	sd	s11,24(sp)
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    80059ac6:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    80059aca:	03f00713          	li	a4,63
__bfdec_round():
quickjs-nuttx/libbf.c:6427
    80059ace:	842a                	mv	s0,a0
    80059ad0:	8a32                	mv	s4,a2
    80059ad2:	89b6                	mv	s3,a3
    80059ad4:	03e00b13          	li	s6,62
bf_get_exp_bits():
quickjs-nuttx/libbf.h:156
    80059ad8:	00e78663          	beq	a5,a4,80059ae4 <__bfdec_round+0x3e>
quickjs-nuttx/libbf.h:159
        return BF_EXP_BITS_MAX - e;
    80059adc:	03d00b13          	li	s6,61
    80059ae0:	40fb0b3b          	subw	s6,s6,a5
__bfdec_round():
quickjs-nuttx/libbf.c:6432
    e_range = (limb_t)1 << (bf_get_exp_bits(flags) - 1);
    80059ae4:	4785                	li	a5,1
    80059ae6:	3b7d                	addiw	s6,s6,-1
    80059ae8:	01679b33          	sll	s6,a5,s6
quickjs-nuttx/libbf.c:6433
    e_min = -e_range + 3;
    80059aec:	4a8d                	li	s5,3
quickjs-nuttx/libbf.c:6436
    if (flags & BF_FLAG_RADPNT_PREC) {
    80059aee:	010a7793          	andi	a5,s4,16
quickjs-nuttx/libbf.c:6433
    e_min = -e_range + 3;
    80059af2:	416a8ab3          	sub	s5,s5,s6
quickjs-nuttx/libbf.c:6436
    if (flags & BF_FLAG_RADPNT_PREC) {
    80059af6:	c3e9                	beqz	a5,80059bb8 <__bfdec_round+0x112>
quickjs-nuttx/libbf.c:6438
        if (prec1 != BF_PREC_INF)
    80059af8:	57fd                	li	a5,-1
    80059afa:	8389                	srli	a5,a5,0x2
quickjs-nuttx/libbf.c:6441
            prec = prec1;
    80059afc:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:6438
        if (prec1 != BF_PREC_INF)
    80059afe:	00f58563          	beq	a1,a5,80059b08 <__bfdec_round+0x62>
quickjs-nuttx/libbf.c:6439
            prec = r->expn + prec1;
    80059b02:	01043903          	ld	s2,16(s0)
    80059b06:	992e                	add	s2,s2,a1
bfdec_get_rnd_add():
quickjs-nuttx/libbf.c:6376
        digit0 = scan_digit_nz(r, l * LIMB_DIGITS - 1 - bf_max(0, prec + 1));
    80059b08:	4bcd                	li	s7,19
__bfdec_round():
quickjs-nuttx/libbf.c:6452
    rnd_mode = flags & BF_RND_MASK;
    80059b0a:	007a7c93          	andi	s9,s4,7
bfdec_get_rnd_add():
quickjs-nuttx/libbf.c:6372
    if (rnd_mode == BF_RNDF) {
    80059b0e:	4799                	li	a5,6
quickjs-nuttx/libbf.c:6376
        digit0 = scan_digit_nz(r, l * LIMB_DIGITS - 1 - bf_max(0, prec + 1));
    80059b10:	03798bb3          	mul	s7,s3,s7
scan_digit_nz():
quickjs-nuttx/libbf.c:6312
    fast_shr_rem_dec(q, v, r->tab[pos], shift + 1);
    80059b14:	02043c03          	ld	s8,32(s0)
bfdec_get_rnd_add():
quickjs-nuttx/libbf.c:6373
        digit0 = 1; /* faithful rounding does not honor the INEXACT flag */
    80059b18:	4d85                	li	s11,1
quickjs-nuttx/libbf.c:6372
    if (rnd_mode == BF_RNDF) {
    80059b1a:	06fc8663          	beq	s9,a5,80059b86 <__bfdec_round+0xe0>
quickjs-nuttx/libbf.c:6376
        digit0 = scan_digit_nz(r, l * LIMB_DIGITS - 1 - bf_max(0, prec + 1));
    80059b1e:	00190713          	addi	a4,s2,1
    80059b22:	fffb8793          	addi	a5,s7,-1
    80059b26:	00075363          	bgez	a4,80059b2c <__bfdec_round+0x86>
    80059b2a:	4701                	li	a4,0
    80059b2c:	8f99                	sub	a5,a5,a4
scan_digit_nz():
quickjs-nuttx/libbf.c:6309
        return 0;
    80059b2e:	4d81                	li	s11,0
quickjs-nuttx/libbf.c:6308
    if (bit_pos < 0)
    80059b30:	0407cb63          	bltz	a5,80059b86 <__bfdec_round+0xe0>
quickjs-nuttx/libbf.c:6310
    pos = (limb_t)bit_pos / LIMB_DIGITS;
    80059b34:	44cd                	li	s1,19
    80059b36:	0297dd33          	divu	s10,a5,s1
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    80059b3a:	00027597          	auipc	a1,0x27
    80059b3e:	ffe58593          	addi	a1,a1,-2 # 80080b38 <mp_pow_div>
bfdec_get_rnd_add():
quickjs-nuttx/libbf.c:6373
        digit0 = 1; /* faithful rounding does not honor the INEXACT flag */
    80059b42:	4d85                	li	s11,1
scan_digit_nz():
quickjs-nuttx/libbf.c:6311
    shift = (limb_t)bit_pos % LIMB_DIGITS;
    80059b44:	0297f7b3          	remu	a5,a5,s1
quickjs-nuttx/libbf.c:6312
    fast_shr_rem_dec(q, v, r->tab[pos], shift + 1);
    80059b48:	003d1713          	slli	a4,s10,0x3
    80059b4c:	9762                	add	a4,a4,s8
    80059b4e:	6318                	ld	a4,0(a4)
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    80059b50:	853a                	mv	a0,a4
    80059b52:	e43a                	sd	a4,8(sp)
scan_digit_nz():
quickjs-nuttx/libbf.c:6312
    fast_shr_rem_dec(q, v, r->tab[pos], shift + 1);
    80059b54:	00178493          	addi	s1,a5,1
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    80059b58:	00449793          	slli	a5,s1,0x4
    80059b5c:	95be                	add	a1,a1,a5
    80059b5e:	95efd0ef          	jal	ra,80056cbc <fast_udiv>
scan_digit_nz():
quickjs-nuttx/libbf.c:6312
    fast_shr_rem_dec(q, v, r->tab[pos], shift + 1);
    80059b62:	00027797          	auipc	a5,0x27
    80059b66:	f3678793          	addi	a5,a5,-202 # 80080a98 <mp_pow_dec>
    80059b6a:	048e                	slli	s1,s1,0x3
    80059b6c:	94be                	add	s1,s1,a5
    80059b6e:	609c                	ld	a5,0(s1)
quickjs-nuttx/libbf.c:6314
    if (v != 0)
    80059b70:	6722                	ld	a4,8(sp)
quickjs-nuttx/libbf.c:6312
    fast_shr_rem_dec(q, v, r->tab[pos], shift + 1);
    80059b72:	02f50533          	mul	a0,a0,a5
quickjs-nuttx/libbf.c:6314
    if (v != 0)
    80059b76:	00a71863          	bne	a4,a0,80059b86 <__bfdec_round+0xe0>
quickjs-nuttx/libbf.c:6316
    pos--;
    80059b7a:	fffd0793          	addi	a5,s10,-1
quickjs-nuttx/libbf.c:6317
    while (pos >= 0) {
    80059b7e:	56fd                	li	a3,-1
    80059b80:	06d79763          	bne	a5,a3,80059bee <__bfdec_round+0x148>
quickjs-nuttx/libbf.c:6309
        return 0;
    80059b84:	4d81                	li	s11,0
bfdec_get_rnd_add():
quickjs-nuttx/libbf.c:6380
    digit1 = get_digit(r->tab, l, l * LIMB_DIGITS - 1 - prec);
    80059b86:	412b8bb3          	sub	s7,s7,s2
    80059b8a:	fffb8613          	addi	a2,s7,-1
    80059b8e:	85ce                	mv	a1,s3
    80059b90:	8562                	mv	a0,s8
    80059b92:	946fd0ef          	jal	ra,80056cd8 <get_digit>
quickjs-nuttx/libbf.c:6381
    inexact = (digit1 | digit0) != 0;
    80059b96:	01b564b3          	or	s1,a0,s11
    80059b9a:	4719                	li	a4,6
    80059b9c:	009037b3          	snez	a5,s1
quickjs-nuttx/libbf.c:6384
    switch(rnd_mode) {
    80059ba0:	0f976663          	bltu	a4,s9,80059c8c <__bfdec_round+0x1e6>
    80059ba4:	00027617          	auipc	a2,0x27
    80059ba8:	a7460613          	addi	a2,a2,-1420 # 80080618 <std_name.0+0x70>
    80059bac:	002c9693          	slli	a3,s9,0x2
    80059bb0:	96b2                	add	a3,a3,a2
    80059bb2:	4298                	lw	a4,0(a3)
    80059bb4:	9732                	add	a4,a4,a2
    80059bb6:	8702                	jr	a4
__bfdec_round():
quickjs-nuttx/libbf.c:6442
    } else if (unlikely(r->expn < e_min) && (flags & BF_FLAG_SUBNORMAL)) {
    80059bb8:	01043903          	ld	s2,16(s0)
    80059bbc:	03595763          	bge	s2,s5,80059bea <__bfdec_round+0x144>
quickjs-nuttx/libbf.c:6442 (discriminator 1)
    80059bc0:	008a7793          	andi	a5,s4,8
    80059bc4:	c39d                	beqz	a5,80059bea <__bfdec_round+0x144>
quickjs-nuttx/libbf.c:6445
        assert(prec1 != BF_PREC_INF);
    80059bc6:	57fd                	li	a5,-1
quickjs-nuttx/libbf.c:6446
        prec = prec1 - (e_min - r->expn);
    80059bc8:	412a8933          	sub	s2,s5,s2
quickjs-nuttx/libbf.c:6445
        assert(prec1 != BF_PREC_INF);
    80059bcc:	8389                	srli	a5,a5,0x2
quickjs-nuttx/libbf.c:6446
        prec = prec1 - (e_min - r->expn);
    80059bce:	41258933          	sub	s2,a1,s2
quickjs-nuttx/libbf.c:6445
        assert(prec1 != BF_PREC_INF);
    80059bd2:	f2f59be3          	bne	a1,a5,80059b08 <__bfdec_round+0x62>
quickjs-nuttx/libbf.c:6445 (discriminator 1)
    80059bd6:	6589                	lui	a1,0x2
    80059bd8:	4601                	li	a2,0
    80059bda:	92d58593          	addi	a1,a1,-1747 # 192d <asinh-0x7fffe6d3>
    80059bde:	00027517          	auipc	a0,0x27
    80059be2:	9e250513          	addi	a0,a0,-1566 # 800805c0 <std_name.0+0x18>
    80059be6:	577060ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:6448
        prec = prec1;
    80059bea:	892e                	mv	s2,a1
    80059bec:	bf31                	j	80059b08 <__bfdec_round+0x62>
scan_digit_nz():
quickjs-nuttx/libbf.c:6318
        if (r->tab[pos] != 0)
    80059bee:	00379713          	slli	a4,a5,0x3
    80059bf2:	9762                	add	a4,a4,s8
    80059bf4:	6318                	ld	a4,0(a4)
    80059bf6:	e319                	bnez	a4,80059bfc <__bfdec_round+0x156>
quickjs-nuttx/libbf.c:6320
        pos--;
    80059bf8:	17fd                	addi	a5,a5,-1
    80059bfa:	b759                	j	80059b80 <__bfdec_round+0xda>
bfdec_get_rnd_add():
quickjs-nuttx/libbf.c:6373
        digit0 = 1; /* faithful rounding does not honor the INEXACT flag */
    80059bfc:	4d85                	li	s11,1
    80059bfe:	b761                	j	80059b86 <__bfdec_round+0xe0>
quickjs-nuttx/libbf.c:6388
        if (digit1 == 5) {
    80059c00:	4795                	li	a5,5
    80059c02:	00f51e63          	bne	a0,a5,80059c1e <__bfdec_round+0x178>
quickjs-nuttx/libbf.c:6390
                add_one = 1;
    80059c06:	4785                	li	a5,1
quickjs-nuttx/libbf.c:6389
            if (digit0) {
    80059c08:	000d9963          	bnez	s11,80059c1a <__bfdec_round+0x174>
quickjs-nuttx/libbf.c:6394
                    get_digit(r->tab, l, l * LIMB_DIGITS - 1 - (prec - 1)) & 1;
    80059c0c:	865e                	mv	a2,s7
    80059c0e:	85ce                	mv	a1,s3
    80059c10:	8562                	mv	a0,s8
    80059c12:	8c6fd0ef          	jal	ra,80056cd8 <get_digit>
quickjs-nuttx/libbf.c:6393
                add_one =
    80059c16:	00157793          	andi	a5,a0,1
quickjs-nuttx/libbf.c:6417
        *pret |= BF_ST_INEXACT;
    80059c1a:	44c1                	li	s1,16
    80059c1c:	a00d                	j	80059c3e <__bfdec_round+0x198>
quickjs-nuttx/libbf.c:6396
        } else if (digit1 > 5) {
    80059c1e:	00653513          	sltiu	a0,a0,6
quickjs-nuttx/libbf.c:6407
        add_one = (digit1 >= 5);
    80059c22:	00154513          	xori	a0,a0,1
    80059c26:	0005079b          	sext.w	a5,a0
quickjs-nuttx/libbf.c:6408
        break;
    80059c2a:	a039                	j	80059c38 <__bfdec_round+0x192>
quickjs-nuttx/libbf.c:6402
        if (r->sign == (rnd_mode == BF_RNDD))
    80059c2c:	4418                	lw	a4,8(s0)
    80059c2e:	1cf9                	addi	s9,s9,-2
    80059c30:	001cbc93          	seqz	s9,s9
    80059c34:	05971e63          	bne	a4,s9,80059c90 <__bfdec_round+0x1ea>
quickjs-nuttx/libbf.c:6417
        *pret |= BF_ST_INEXACT;
    80059c38:	009034b3          	snez	s1,s1
    80059c3c:	0492                	slli	s1,s1,0x4
__bfdec_round():
quickjs-nuttx/libbf.c:6456
    if (prec <= 0) {
    80059c3e:	05204b63          	bgtz	s2,80059c94 <__bfdec_round+0x1ee>
quickjs-nuttx/libbf.c:6457
        if (add_one) {
    80059c42:	cfdd                	beqz	a5,80059d00 <__bfdec_round+0x25a>
bfdec_resize():
quickjs-nuttx/libbf.h:531
/* the following functions are exported for testing only. */
extern const limb_t mp_pow_dec[LIMB_DIGITS + 1];
void bfdec_print_str(const char *str, const bfdec_t *a);
static inline int bfdec_resize(bfdec_t *r, limb_t len)
{
    return bf_resize((bf_t *)r, len);
    80059c44:	4585                	li	a1,1
    80059c46:	8522                	mv	a0,s0
    80059c48:	f3dfd0ef          	jal	ra,80057b84 <bf_resize>
__bfdec_round():
quickjs-nuttx/libbf.c:6459
            r->tab[0] = BF_DEC_BASE / 10;
    80059c4c:	701c                	ld	a5,32(s0)
    80059c4e:	0003a717          	auipc	a4,0x3a
    80059c52:	03273703          	ld	a4,50(a4) # 80093c80 <_erodata+0x10e>
    80059c56:	e398                	sd	a4,0(a5)
quickjs-nuttx/libbf.c:6460
            r->expn += 1 - prec;
    80059c58:	681c                	ld	a5,16(s0)
    80059c5a:	0785                	addi	a5,a5,1
    80059c5c:	41278933          	sub	s2,a5,s2
    80059c60:	01243823          	sd	s2,16(s0)
quickjs-nuttx/libbf.c:6491
            return ret;
    80059c64:	44e1                	li	s1,24
quickjs-nuttx/libbf.c:6523
}
    80059c66:	70e6                	ld	ra,120(sp)
    80059c68:	7446                	ld	s0,112(sp)
    80059c6a:	7906                	ld	s2,96(sp)
    80059c6c:	69e6                	ld	s3,88(sp)
    80059c6e:	6a46                	ld	s4,80(sp)
    80059c70:	6aa6                	ld	s5,72(sp)
    80059c72:	6b06                	ld	s6,64(sp)
    80059c74:	7be2                	ld	s7,56(sp)
    80059c76:	7c42                	ld	s8,48(sp)
    80059c78:	7ca2                	ld	s9,40(sp)
    80059c7a:	7d02                	ld	s10,32(sp)
    80059c7c:	6de2                	ld	s11,24(sp)
    80059c7e:	8526                	mv	a0,s1
    80059c80:	74a6                	ld	s1,104(sp)
    80059c82:	6109                	addi	sp,sp,128
    80059c84:	8082                	ret
bfdec_get_rnd_add():
quickjs-nuttx/libbf.c:6407
        add_one = (digit1 >= 5);
    80059c86:	00553513          	sltiu	a0,a0,5
    80059c8a:	bf61                	j	80059c22 <__bfdec_round+0x17c>
quickjs-nuttx/libbf.c:6413
        abort();
    80059c8c:	6f7080ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/libbf.c:6383
    add_one = 0;
    80059c90:	4781                	li	a5,0
    80059c92:	b75d                	j	80059c38 <__bfdec_round+0x192>
__bfdec_round():
quickjs-nuttx/libbf.c:6466
    } else if (add_one) {
    80059c94:	c3b9                	beqz	a5,80059cda <__bfdec_round+0x234>
quickjs-nuttx/libbf.c:6472
        carry = mp_pow_dec[bit_pos % LIMB_DIGITS];
    80059c96:	464d                	li	a2,19
    80059c98:	02cbe7b3          	rem	a5,s7,a2
quickjs-nuttx/libbf.c:6471
        pos = bit_pos / LIMB_DIGITS;
    80059c9c:	02cbc633          	div	a2,s7,a2
quickjs-nuttx/libbf.c:6472
        carry = mp_pow_dec[bit_pos % LIMB_DIGITS];
    80059ca0:	00379713          	slli	a4,a5,0x3
    80059ca4:	00027797          	auipc	a5,0x27
    80059ca8:	df478793          	addi	a5,a5,-524 # 80080a98 <mp_pow_dec>
    80059cac:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:6473
        carry = mp_add_ui_dec(r->tab + pos, carry, l - pos);
    80059cae:	638c                	ld	a1,0(a5)
    80059cb0:	00361913          	slli	s2,a2,0x3
    80059cb4:	012c0533          	add	a0,s8,s2
    80059cb8:	40c98633          	sub	a2,s3,a2
    80059cbc:	e432                	sd	a2,8(sp)
    80059cbe:	da9ff0ef          	jal	ra,80059a66 <mp_add_ui_dec>
quickjs-nuttx/libbf.c:6474
        if (carry) {
    80059cc2:	6622                	ld	a2,8(sp)
    80059cc4:	c919                	beqz	a0,80059cda <__bfdec_round+0x234>
quickjs-nuttx/libbf.c:6476
            mp_shr_dec(r->tab + pos, r->tab + pos, l - pos, 1, 1);
    80059cc6:	700c                	ld	a1,32(s0)
    80059cc8:	4705                	li	a4,1
    80059cca:	4685                	li	a3,1
    80059ccc:	95ca                	add	a1,a1,s2
    80059cce:	852e                	mv	a0,a1
    80059cd0:	b58fd0ef          	jal	ra,80057028 <mp_shr_dec>
quickjs-nuttx/libbf.c:6477
            r->expn++;
    80059cd4:	681c                	ld	a5,16(s0)
    80059cd6:	0785                	addi	a5,a5,1
    80059cd8:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:6482
    if (unlikely(r->expn < e_min)) {
    80059cda:	681c                	ld	a5,16(s0)
    80059cdc:	0157d963          	bge	a5,s5,80059cee <__bfdec_round+0x248>
quickjs-nuttx/libbf.c:6483
        if (flags & BF_FLAG_SUBNORMAL) {
    80059ce0:	008a7a13          	andi	s4,s4,8
    80059ce4:	000a0e63          	beqz	s4,80059d00 <__bfdec_round+0x25a>
quickjs-nuttx/libbf.c:6485
            if (ret & BF_ST_INEXACT)
    80059ce8:	c099                	beqz	s1,80059cee <__bfdec_round+0x248>
quickjs-nuttx/libbf.c:6486
                ret |= BF_ST_UNDERFLOW;
    80059cea:	0084e493          	ori	s1,s1,8
quickjs-nuttx/libbf.c:6496
    if (unlikely(r->expn > e_max)) {
    80059cee:	00fb5e63          	bge	s6,a5,80059d0a <__bfdec_round+0x264>
bfdec_set_inf():
quickjs-nuttx/libbf.h:465
    bf_set_inf((bf_t *)r, is_neg);
    80059cf2:	440c                	lw	a1,8(s0)
    80059cf4:	8522                	mv	a0,s0
__bfdec_round():
quickjs-nuttx/libbf.c:6498
        ret |= BF_ST_OVERFLOW | BF_ST_INEXACT;
    80059cf6:	0144e493          	ori	s1,s1,20
bfdec_set_inf():
quickjs-nuttx/libbf.h:465
    80059cfa:	f8bfd0ef          	jal	ra,80057c84 <bf_set_inf>
__bfdec_round():
quickjs-nuttx/libbf.c:6499
        return ret;
    80059cfe:	b7a5                	j	80059c66 <__bfdec_round+0x1c0>
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    80059d00:	440c                	lw	a1,8(s0)
    80059d02:	8522                	mv	a0,s0
    80059d04:	f5dfd0ef          	jal	ra,80057c60 <bf_set_zero>
    80059d08:	bfb1                	j	80059c64 <__bfdec_round+0x1be>
floor_div():
quickjs-nuttx/libbf.c:142
    if (a >= 0) {
    80059d0a:	040bc763          	bltz	s7,80059d58 <__bfdec_round+0x2b2>
quickjs-nuttx/libbf.c:143
        return a / b;
    80059d0e:	494d                	li	s2,19
    80059d10:	032bc933          	div	s2,s7,s2
smod():
quickjs-nuttx/libbf.c:152
    a = a % (slimb_t)b;
    80059d14:	47cd                	li	a5,19
    80059d16:	02fbebb3          	rem	s7,s7,a5
quickjs-nuttx/libbf.c:153
    if (a < 0)
    80059d1a:	040bda63          	bgez	s7,80059d6e <__bfdec_round+0x2c8>
quickjs-nuttx/libbf.c:154
        a += b;
    80059d1e:	0bcd                	addi	s7,s7,19
__bfdec_round():
quickjs-nuttx/libbf.c:6508
            r->tab[i] = fast_shr_dec(r->tab[i], shift) *
    80059d20:	701c                	ld	a5,32(s0)
    80059d22:	00391a13          	slli	s4,s2,0x3
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    80059d26:	00027597          	auipc	a1,0x27
    80059d2a:	e1258593          	addi	a1,a1,-494 # 80080b38 <mp_pow_div>
__bfdec_round():
quickjs-nuttx/libbf.c:6508
            r->tab[i] = fast_shr_dec(r->tab[i], shift) *
    80059d2e:	9a3e                	add	s4,s4,a5
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    80059d30:	000a3503          	ld	a0,0(s4)
    80059d34:	004b9793          	slli	a5,s7,0x4
    80059d38:	95be                	add	a1,a1,a5
    80059d3a:	f83fc0ef          	jal	ra,80056cbc <fast_udiv>
__bfdec_round():
quickjs-nuttx/libbf.c:6509
                mp_pow_dec[shift];
    80059d3e:	0b8e                	slli	s7,s7,0x3
    80059d40:	00027717          	auipc	a4,0x27
    80059d44:	d5870713          	addi	a4,a4,-680 # 80080a98 <mp_pow_dec>
    80059d48:	9bba                	add	s7,s7,a4
quickjs-nuttx/libbf.c:6508
            r->tab[i] = fast_shr_dec(r->tab[i], shift) *
    80059d4a:	000bb783          	ld	a5,0(s7)
    80059d4e:	02a787b3          	mul	a5,a5,a0
    80059d52:	00fa3023          	sd	a5,0(s4)
    80059d56:	a831                	j	80059d72 <__bfdec_round+0x2cc>
floor_div():
quickjs-nuttx/libbf.c:145
        return (a - b + 1) / b;
    80059d58:	feeb8793          	addi	a5,s7,-18
__bfdec_round():
quickjs-nuttx/libbf.c:6505
    if (i >= 0) {
    80059d5c:	5739                	li	a4,-18
quickjs-nuttx/libbf.c:6512
        i = 0;
    80059d5e:	4901                	li	s2,0
quickjs-nuttx/libbf.c:6505
    if (i >= 0) {
    80059d60:	00e7c963          	blt	a5,a4,80059d72 <__bfdec_round+0x2cc>
floor_div():
quickjs-nuttx/libbf.c:145
        return (a - b + 1) / b;
    80059d64:	0003a917          	auipc	s2,0x3a
    80059d68:	f0c93903          	ld	s2,-244(s2) # 80093c70 <_erodata+0xfe>
    80059d6c:	b765                	j	80059d14 <__bfdec_round+0x26e>
__bfdec_round():
quickjs-nuttx/libbf.c:6507
        if (shift != 0) {
    80059d6e:	fa0b99e3          	bnez	s7,80059d20 <__bfdec_round+0x27a>
quickjs-nuttx/libbf.c:6515
    while (r->tab[i] == 0)
    80059d72:	7008                	ld	a0,32(s0)
    80059d74:	00391793          	slli	a5,s2,0x3
    80059d78:	97aa                	add	a5,a5,a0
    80059d7a:	a011                	j	80059d7e <__bfdec_round+0x2d8>
quickjs-nuttx/libbf.c:6516
        i++;
    80059d7c:	0905                	addi	s2,s2,1
quickjs-nuttx/libbf.c:6515
    while (r->tab[i] == 0)
    80059d7e:	85be                	mv	a1,a5
    80059d80:	6398                	ld	a4,0(a5)
    80059d82:	07a1                	addi	a5,a5,8
    80059d84:	df65                	beqz	a4,80059d7c <__bfdec_round+0x2d6>
quickjs-nuttx/libbf.c:6517
    if (i > 0) {
    80059d86:	01205863          	blez	s2,80059d96 <__bfdec_round+0x2f0>
quickjs-nuttx/libbf.c:6518
        l -= i;
    80059d8a:	412989b3          	sub	s3,s3,s2
quickjs-nuttx/libbf.c:6519
        memmove(r->tab, r->tab + i, l * sizeof(limb_t));
    80059d8e:	00399613          	slli	a2,s3,0x3
    80059d92:	66f090ef          	jal	ra,80063c00 <memmove>
bfdec_resize():
quickjs-nuttx/libbf.h:531
    return bf_resize((bf_t *)r, len);
    80059d96:	85ce                	mv	a1,s3
    80059d98:	8522                	mv	a0,s0
    80059d9a:	debfd0ef          	jal	ra,80057b84 <bf_resize>
__bfdec_round():
quickjs-nuttx/libbf.c:6522
    return ret;
    80059d9e:	b5e1                	j	80059c66 <__bfdec_round+0x1c0>

0000000080059da0 <mp_sub_dec>:
mp_sub_dec():
quickjs-nuttx/libbf.c:5614
{
    80059da0:	832a                	mv	t1,a0
quickjs-nuttx/libbf.c:5620
    for(i=0;i<n;i++) {
    80059da2:	4801                	li	a6,0
quickjs-nuttx/libbf.c:5614
{
    80059da4:	853a                	mv	a0,a4
quickjs-nuttx/libbf.c:5620
    for(i=0;i<n;i++) {
    80059da6:	4881                	li	a7,0
quickjs-nuttx/libbf.c:5625
            a += base;
    80059da8:	0003ae97          	auipc	t4,0x3a
    80059dac:	ee0ebe83          	ld	t4,-288(t4) # 80093c88 <_erodata+0x116>
quickjs-nuttx/libbf.c:5620 (discriminator 1)
    for(i=0;i<n;i++) {
    80059db0:	00d8c363          	blt	a7,a3,80059db6 <mp_sub_dec+0x16>
quickjs-nuttx/libbf.c:5629
}
    80059db4:	8082                	ret
quickjs-nuttx/libbf.c:5621
        v = op1[i];
    80059db6:	010587b3          	add	a5,a1,a6
    80059dba:	0007be03          	ld	t3,0(a5)
quickjs-nuttx/libbf.c:5622
        a = v - op2[i] - k;
    80059dbe:	010607b3          	add	a5,a2,a6
    80059dc2:	639c                	ld	a5,0(a5)
    80059dc4:	40ae0733          	sub	a4,t3,a0
    80059dc8:	8f1d                	sub	a4,a4,a5
quickjs-nuttx/libbf.c:5623
        k = a > v;
    80059dca:	00ee3533          	sltu	a0,t3,a4
quickjs-nuttx/libbf.c:5624
        if (k)
    80059dce:	00ee7363          	bgeu	t3,a4,80059dd4 <mp_sub_dec+0x34>
quickjs-nuttx/libbf.c:5625
            a += base;
    80059dd2:	9776                	add	a4,a4,t4
quickjs-nuttx/libbf.c:5626 (discriminator 2)
        res[i] = a;
    80059dd4:	010307b3          	add	a5,t1,a6
    80059dd8:	e398                	sd	a4,0(a5)
quickjs-nuttx/libbf.c:5620 (discriminator 2)
    for(i=0;i<n;i++) {
    80059dda:	0885                	addi	a7,a7,1
    80059ddc:	0821                	addi	a6,a6,8
    80059dde:	bfc9                	j	80059db0 <mp_sub_dec+0x10>

0000000080059de0 <mp_sub_ui_dec>:
mp_sub_ui_dec():
quickjs-nuttx/libbf.c:5638
    for(i=0;i<n;i++) {
    80059de0:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:5643
            a += base;
    80059de2:	0003a897          	auipc	a7,0x3a
    80059de6:	ea68b883          	ld	a7,-346(a7) # 80093c88 <_erodata+0x116>
quickjs-nuttx/libbf.c:5637
    k=b;
    80059dea:	852e                	mv	a0,a1
quickjs-nuttx/libbf.c:5638
    for(i=0;i<n;i++) {
    80059dec:	4581                	li	a1,0
quickjs-nuttx/libbf.c:5638 (discriminator 1)
    80059dee:	00c5c363          	blt	a1,a2,80059df4 <mp_sub_ui_dec+0x14>
quickjs-nuttx/libbf.c:5649
}
    80059df2:	8082                	ret
quickjs-nuttx/libbf.c:5639
        v = tab[i];
    80059df4:	6394                	ld	a3,0(a5)
quickjs-nuttx/libbf.c:5640
        a = v - k;
    80059df6:	40a68733          	sub	a4,a3,a0
quickjs-nuttx/libbf.c:5641
        k = a > v;
    80059dfa:	00e6b533          	sltu	a0,a3,a4
quickjs-nuttx/libbf.c:5642
        if (k)
    80059dfe:	883a                	mv	a6,a4
    80059e00:	00e6f463          	bgeu	a3,a4,80059e08 <mp_sub_ui_dec+0x28>
quickjs-nuttx/libbf.c:5643
            a += base;
    80059e04:	01170833          	add	a6,a4,a7
quickjs-nuttx/libbf.c:5644
        tab[i]=a;
    80059e08:	0107b023          	sd	a6,0(a5)
quickjs-nuttx/libbf.c:5645
        if (k == 0)
    80059e0c:	07a1                	addi	a5,a5,8
    80059e0e:	fee6f2e3          	bgeu	a3,a4,80059df2 <mp_sub_ui_dec+0x12>
quickjs-nuttx/libbf.c:5638 (discriminator 2)
    for(i=0;i<n;i++) {
    80059e12:	0585                	addi	a1,a1,1
    80059e14:	bfe9                	j	80059dee <mp_sub_ui_dec+0xe>

0000000080059e16 <mp_mul1_dec>:
mp_mul1_dec():
quickjs-nuttx/libbf.c:5654
{
    80059e16:	8e2a                	mv	t3,a0
quickjs-nuttx/libbf.c:5658
    for(i = 0; i < n; i++) {
    80059e18:	4301                	li	t1,0
quickjs-nuttx/libbf.c:5654
{
    80059e1a:	853a                	mv	a0,a4
quickjs-nuttx/libbf.c:5661
        divdq_base(l, r, t1, t0);
    80059e1c:	0003af17          	auipc	t5,0x3a
    80059e20:	e74f3f03          	ld	t5,-396(t5) # 80093c90 <_erodata+0x11e>
    80059e24:	0003ae97          	auipc	t4,0x3a
    80059e28:	e64ebe83          	ld	t4,-412(t4) # 80093c88 <_erodata+0x116>
    80059e2c:	0003af97          	auipc	t6,0x3a
    80059e30:	e6cfbf83          	ld	t6,-404(t6) # 80093c98 <_erodata+0x126>
quickjs-nuttx/libbf.c:5658 (discriminator 2)
    for(i = 0; i < n; i++) {
    80059e34:	00c34363          	blt	t1,a2,80059e3a <mp_mul1_dec+0x24>
quickjs-nuttx/libbf.c:5665
}
    80059e38:	8082                	ret
quickjs-nuttx/libbf.c:5659
        muldq(t1, t0, taba[i], b);
    80059e3a:	00331293          	slli	t0,t1,0x3
    80059e3e:	005587b3          	add	a5,a1,t0
    80059e42:	0007b803          	ld	a6,0(a5)
quickjs-nuttx/libbf.c:5662
        tabr[i] = r;
    80059e46:	92f2                	add	t0,t0,t3
quickjs-nuttx/libbf.c:5658
    for(i = 0; i < n; i++) {
    80059e48:	0305                	addi	t1,t1,1
quickjs-nuttx/libbf.c:5659
        muldq(t1, t0, taba[i], b);
    80059e4a:	030687b3          	mul	a5,a3,a6
    80059e4e:	0306b833          	mulhu	a6,a3,a6
quickjs-nuttx/libbf.c:5660
        adddq(t1, t0, 0, l);
    80059e52:	00f50733          	add	a4,a0,a5
    80059e56:	00f737b3          	sltu	a5,a4,a5
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    80059e5a:	03f75513          	srli	a0,a4,0x3f
mp_mul1_dec():
quickjs-nuttx/libbf.c:5660
        adddq(t1, t0, 0, l);
    80059e5e:	983e                	add	a6,a6,a5
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    80059e60:	00181893          	slli	a7,a6,0x1
    80059e64:	00a8e8b3          	or	a7,a7,a0
mp_mul1_dec():
quickjs-nuttx/libbf.c:5661
        divdq_base(l, r, t1, t0);
    80059e68:	03e8b8b3          	mulhu	a7,a7,t5
    80059e6c:	03d88533          	mul	a0,a7,t4
    80059e70:	03d8b7b3          	mulhu	a5,a7,t4
    80059e74:	40a70533          	sub	a0,a4,a0
    80059e78:	00a73733          	sltu	a4,a4,a0
    80059e7c:	40f807b3          	sub	a5,a6,a5
    80059e80:	01f50833          	add	a6,a0,t6
    80059e84:	8f99                	sub	a5,a5,a4
    80059e86:	01053733          	sltu	a4,a0,a6
    80059e8a:	0705                	addi	a4,a4,1
    80059e8c:	8f99                	sub	a5,a5,a4
    80059e8e:	4017d513          	srai	a0,a5,0x1
    80059e92:	00288713          	addi	a4,a7,2
    80059e96:	01d578b3          	and	a7,a0,t4
    80059e9a:	98c2                	add	a7,a7,a6
    80059e9c:	0108b833          	sltu	a6,a7,a6
    80059ea0:	97c2                	add	a5,a5,a6
    80059ea2:	972a                	add	a4,a4,a0
    80059ea4:	00f70533          	add	a0,a4,a5
    80059ea8:	01d7f7b3          	and	a5,a5,t4
    80059eac:	97c6                	add	a5,a5,a7
quickjs-nuttx/libbf.c:5662
        tabr[i] = r;
    80059eae:	00f2b023          	sd	a5,0(t0)
quickjs-nuttx/libbf.c:5658
    for(i = 0; i < n; i++) {
    80059eb2:	b749                	j	80059e34 <mp_mul1_dec+0x1e>

0000000080059eb4 <mp_add_mul1_dec>:
mp_add_mul1_dec():
quickjs-nuttx/libbf.c:5676
    for(i = 0; i < n; i++) {
    80059eb4:	832a                	mv	t1,a0
    80059eb6:	4e01                	li	t3,0
quickjs-nuttx/libbf.c:5675
    l = 0;
    80059eb8:	4501                	li	a0,0
quickjs-nuttx/libbf.c:5680
        divdq_base(l, r, t1, t0);
    80059eba:	0003af17          	auipc	t5,0x3a
    80059ebe:	dd6f3f03          	ld	t5,-554(t5) # 80093c90 <_erodata+0x11e>
    80059ec2:	0003ae97          	auipc	t4,0x3a
    80059ec6:	dc6ebe83          	ld	t4,-570(t4) # 80093c88 <_erodata+0x116>
    80059eca:	0003af97          	auipc	t6,0x3a
    80059ece:	dcefbf83          	ld	t6,-562(t6) # 80093c98 <_erodata+0x126>
quickjs-nuttx/libbf.c:5676 (discriminator 2)
    for(i = 0; i < n; i++) {
    80059ed2:	00ce4363          	blt	t3,a2,80059ed8 <mp_add_mul1_dec+0x24>
quickjs-nuttx/libbf.c:5684
}
    80059ed6:	8082                	ret
quickjs-nuttx/libbf.c:5677
        muldq(t1, t0, taba[i], b);
    80059ed8:	003e1793          	slli	a5,t3,0x3
    80059edc:	97ae                	add	a5,a5,a1
    80059ede:	6398                	ld	a4,0(a5)
quickjs-nuttx/libbf.c:5679
        adddq(t1, t0, 0, tabr[i]);
    80059ee0:	00033283          	ld	t0,0(t1)
quickjs-nuttx/libbf.c:5676
    for(i = 0; i < n; i++) {
    80059ee4:	0e05                	addi	t3,t3,1
quickjs-nuttx/libbf.c:5677
        muldq(t1, t0, taba[i], b);
    80059ee6:	02e68833          	mul	a6,a3,a4
    80059eea:	0321                	addi	t1,t1,8
    80059eec:	02e6b8b3          	mulhu	a7,a3,a4
quickjs-nuttx/libbf.c:5678
        adddq(t1, t0, 0, l);
    80059ef0:	010507b3          	add	a5,a0,a6
quickjs-nuttx/libbf.c:5679
        adddq(t1, t0, 0, tabr[i]);
    80059ef4:	92be                	add	t0,t0,a5
quickjs-nuttx/libbf.c:5678
        adddq(t1, t0, 0, l);
    80059ef6:	0107b733          	sltu	a4,a5,a6
quickjs-nuttx/libbf.c:5679
        adddq(t1, t0, 0, tabr[i]);
    80059efa:	00f2b7b3          	sltu	a5,t0,a5
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    80059efe:	03f2d513          	srli	a0,t0,0x3f
mp_add_mul1_dec():
quickjs-nuttx/libbf.c:5678
        adddq(t1, t0, 0, l);
    80059f02:	9746                	add	a4,a4,a7
quickjs-nuttx/libbf.c:5679
        adddq(t1, t0, 0, tabr[i]);
    80059f04:	973e                	add	a4,a4,a5
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    80059f06:	00171813          	slli	a6,a4,0x1
    80059f0a:	00a86833          	or	a6,a6,a0
mp_add_mul1_dec():
quickjs-nuttx/libbf.c:5680
        divdq_base(l, r, t1, t0);
    80059f0e:	03e83833          	mulhu	a6,a6,t5
    80059f12:	03d808b3          	mul	a7,a6,t4
    80059f16:	03d837b3          	mulhu	a5,a6,t4
    80059f1a:	411288b3          	sub	a7,t0,a7
    80059f1e:	0112b2b3          	sltu	t0,t0,a7
    80059f22:	0809                	addi	a6,a6,2
    80059f24:	40f707b3          	sub	a5,a4,a5
    80059f28:	01f88733          	add	a4,a7,t6
    80059f2c:	00e8b8b3          	sltu	a7,a7,a4
    80059f30:	0885                	addi	a7,a7,1
    80059f32:	405787b3          	sub	a5,a5,t0
    80059f36:	411787b3          	sub	a5,a5,a7
    80059f3a:	4017d893          	srai	a7,a5,0x1
    80059f3e:	9846                	add	a6,a6,a7
    80059f40:	01d8f8b3          	and	a7,a7,t4
    80059f44:	98ba                	add	a7,a7,a4
    80059f46:	00e8b733          	sltu	a4,a7,a4
    80059f4a:	97ba                	add	a5,a5,a4
    80059f4c:	00f80533          	add	a0,a6,a5
    80059f50:	01d7f7b3          	and	a5,a5,t4
    80059f54:	97c6                	add	a5,a5,a7
quickjs-nuttx/libbf.c:5681
        tabr[i] = r;
    80059f56:	fef33c23          	sd	a5,-8(t1)
quickjs-nuttx/libbf.c:5676
    for(i = 0; i < n; i++) {
    80059f5a:	bfa5                	j	80059ed2 <mp_add_mul1_dec+0x1e>

0000000080059f5c <mp_sub_mul1_dec>:
mp_sub_mul1_dec():
quickjs-nuttx/libbf.c:5697
    for(i = 0; i < n; i++) {
    80059f5c:	832a                	mv	t1,a0
    80059f5e:	4e81                	li	t4,0
quickjs-nuttx/libbf.c:5696
    l = 0;
    80059f60:	4501                	li	a0,0
quickjs-nuttx/libbf.c:5700
        divdq_base(l, r, t1, t0);
    80059f62:	0003af17          	auipc	t5,0x3a
    80059f66:	d2ef3f03          	ld	t5,-722(t5) # 80093c90 <_erodata+0x11e>
    80059f6a:	0003ae17          	auipc	t3,0x3a
    80059f6e:	d1ee3e03          	ld	t3,-738(t3) # 80093c88 <_erodata+0x116>
    80059f72:	0003af97          	auipc	t6,0x3a
    80059f76:	d26fbf83          	ld	t6,-730(t6) # 80093c98 <_erodata+0x126>
quickjs-nuttx/libbf.c:5697 (discriminator 1)
    for(i = 0; i < n; i++) {
    80059f7a:	00cec363          	blt	t4,a2,80059f80 <mp_sub_mul1_dec+0x24>
quickjs-nuttx/libbf.c:5711
}
    80059f7e:	8082                	ret
quickjs-nuttx/libbf.c:5698
        muldq(t1, t0, taba[i], b);
    80059f80:	003e9793          	slli	a5,t4,0x3
    80059f84:	97ae                	add	a5,a5,a1
    80059f86:	0007b803          	ld	a6,0(a5)
    80059f8a:	030687b3          	mul	a5,a3,a6
    80059f8e:	0306b833          	mulhu	a6,a3,a6
quickjs-nuttx/libbf.c:5699
        adddq(t1, t0, 0, l);
    80059f92:	00f50733          	add	a4,a0,a5
    80059f96:	00f737b3          	sltu	a5,a4,a5
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    80059f9a:	03f75513          	srli	a0,a4,0x3f
mp_sub_mul1_dec():
quickjs-nuttx/libbf.c:5699
        adddq(t1, t0, 0, l);
    80059f9e:	97c2                	add	a5,a5,a6
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    80059fa0:	00179893          	slli	a7,a5,0x1
    80059fa4:	00a8e8b3          	or	a7,a7,a0
mp_sub_mul1_dec():
quickjs-nuttx/libbf.c:5700
        divdq_base(l, r, t1, t0);
    80059fa8:	03e8b8b3          	mulhu	a7,a7,t5
    80059fac:	03c882b3          	mul	t0,a7,t3
    80059fb0:	03c8b833          	mulhu	a6,a7,t3
    80059fb4:	405702b3          	sub	t0,a4,t0
    80059fb8:	01f28533          	add	a0,t0,t6
    80059fbc:	0889                	addi	a7,a7,2
    80059fbe:	410787b3          	sub	a5,a5,a6
    80059fc2:	00573833          	sltu	a6,a4,t0
    80059fc6:	41078833          	sub	a6,a5,a6
    80059fca:	00a2b7b3          	sltu	a5,t0,a0
    80059fce:	0785                	addi	a5,a5,1
    80059fd0:	40f80833          	sub	a6,a6,a5
    80059fd4:	40185713          	srai	a4,a6,0x1
    80059fd8:	98ba                	add	a7,a7,a4
    80059fda:	01c77733          	and	a4,a4,t3
quickjs-nuttx/libbf.c:5701
        v = tabr[i];
    80059fde:	00033283          	ld	t0,0(t1)
quickjs-nuttx/libbf.c:5700
        divdq_base(l, r, t1, t0);
    80059fe2:	972a                	add	a4,a4,a0
    80059fe4:	00a73533          	sltu	a0,a4,a0
    80059fe8:	982a                	add	a6,a6,a0
quickjs-nuttx/libbf.c:5702
        a = v - r;
    80059fea:	40e28733          	sub	a4,t0,a4
quickjs-nuttx/libbf.c:5700
        divdq_base(l, r, t1, t0);
    80059fee:	98c2                	add	a7,a7,a6
    80059ff0:	01c87833          	and	a6,a6,t3
quickjs-nuttx/libbf.c:5702
        a = v - r;
    80059ff4:	410707b3          	sub	a5,a4,a6
quickjs-nuttx/libbf.c:5703
        c = a > v;
    80059ff8:	00f2b733          	sltu	a4,t0,a5
quickjs-nuttx/libbf.c:5704
        if (c)
    80059ffc:	00f2f363          	bgeu	t0,a5,8005a002 <mp_sub_mul1_dec+0xa6>
quickjs-nuttx/libbf.c:5705
            a += base;
