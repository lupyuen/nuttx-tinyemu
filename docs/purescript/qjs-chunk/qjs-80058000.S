    80057002:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/libbf.c:1989
}
    80057006:	64a6                	ld	s1,72(sp)
    80057008:	6906                	ld	s2,64(sp)
    8005700a:	79e2                	ld	s3,56(sp)
    8005700c:	7a42                	ld	s4,48(sp)
    8005700e:	7aa2                	ld	s5,40(sp)
    80057010:	7b02                	ld	s6,32(sp)
    80057012:	6125                	addi	sp,sp,96
    80057014:	8082                	ret
quickjs-nuttx/libbf.c:1981
        r -= q * q;
    80057016:	028407b3          	mul	a5,s0,s0
    8005701a:	40f687b3          	sub	a5,a3,a5
    8005701e:	00f6b6b3          	sltu	a3,a3,a5
    80057022:	40d70533          	sub	a0,a4,a3
    80057026:	bf45                	j	80056fd6 <mp_sqrtrem2+0x8c>

0000000080057028 <mp_shr_dec>:
mp_shr_dec():
quickjs-nuttx/libbf.c:5946
{
    80057028:	715d                	addi	sp,sp,-80
    8005702a:	e0a2                	sd	s0,64(sp)
    8005702c:	e486                	sd	ra,72(sp)
    8005702e:	843a                	mv	s0,a4
    80057030:	fc26                	sd	s1,56(sp)
    80057032:	f84a                	sd	s2,48(sp)
    80057034:	f44e                	sd	s3,40(sp)
    80057036:	f052                	sd	s4,32(sp)
    80057038:	ec56                	sd	s5,24(sp)
    8005703a:	e85a                	sd	s6,16(sp)
    8005703c:	e45e                	sd	s7,8(sp)
    8005703e:	e062                	sd	s8,0(sp)
quickjs-nuttx/libbf.c:5950
    assert(shift >= 1 && shift < LIMB_DIGITS);
    80057040:	fff68713          	addi	a4,a3,-1
    80057044:	47c5                	li	a5,17
    80057046:	00e7fc63          	bgeu	a5,a4,8005705e <mp_shr_dec+0x36>
quickjs-nuttx/libbf.c:5950 (discriminator 1)
    8005704a:	6585                	lui	a1,0x1
    8005704c:	4601                	li	a2,0
    8005704e:	73e58593          	addi	a1,a1,1854 # 173e <asinh-0x7fffe8c2>
    80057052:	00029517          	auipc	a0,0x29
    80057056:	56e50513          	addi	a0,a0,1390 # 800805c0 <std_name.0+0x18>
    8005705a:	103090ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:5955 (discriminator 2)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    8005705e:	47cd                	li	a5,19
quickjs-nuttx/libbf.c:5954 (discriminator 2)
        fast_shr_rem_dec(q, r, a, shift);
    80057060:	00369b93          	slli	s7,a3,0x3
    80057064:	8b2e                	mv	s6,a1
fast_shr_dec():
quickjs-nuttx/libbf.c:5566 (discriminator 2)
    return fast_udiv(a, &mp_pow_div[shift]);
    80057066:	00469593          	slli	a1,a3,0x4
mp_shr_dec():
quickjs-nuttx/libbf.c:5955 (discriminator 2)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    8005706a:	40d786b3          	sub	a3,a5,a3
quickjs-nuttx/libbf.c:5954 (discriminator 2)
        fast_shr_rem_dec(q, r, a, shift);
    8005706e:	0002a717          	auipc	a4,0x2a
    80057072:	a2a70713          	addi	a4,a4,-1494 # 80080a98 <mp_pow_dec>
fast_shr_dec():
quickjs-nuttx/libbf.c:5566 (discriminator 2)
    return fast_udiv(a, &mp_pow_div[shift]);
    80057076:	0002aa17          	auipc	s4,0x2a
    8005707a:	ac2a0a13          	addi	s4,s4,-1342 # 80080b38 <mp_pow_div>
mp_shr_dec():
quickjs-nuttx/libbf.c:5955 (discriminator 2)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    8005707e:	068e                	slli	a3,a3,0x3
    80057080:	8aaa                	mv	s5,a0
quickjs-nuttx/libbf.c:5952 (discriminator 2)
    for(i = n - 1; i >= 0; i--) {
    80057082:	fff60493          	addi	s1,a2,-1
fast_shr_dec():
quickjs-nuttx/libbf.c:5566 (discriminator 2)
    return fast_udiv(a, &mp_pow_div[shift]);
    80057086:	9a2e                	add	s4,s4,a1
mp_shr_dec():
quickjs-nuttx/libbf.c:5954 (discriminator 2)
        fast_shr_rem_dec(q, r, a, shift);
    80057088:	9bba                	add	s7,s7,a4
quickjs-nuttx/libbf.c:5955 (discriminator 2)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    8005708a:	00d70933          	add	s2,a4,a3
quickjs-nuttx/libbf.c:5952 (discriminator 1)
    for(i = n - 1; i >= 0; i--) {
    8005708e:	0004df63          	bgez	s1,800570ac <mp_shr_dec+0x84>
quickjs-nuttx/libbf.c:5959
}
    80057092:	60a6                	ld	ra,72(sp)
    80057094:	8522                	mv	a0,s0
    80057096:	6406                	ld	s0,64(sp)
    80057098:	74e2                	ld	s1,56(sp)
    8005709a:	7942                	ld	s2,48(sp)
    8005709c:	79a2                	ld	s3,40(sp)
    8005709e:	7a02                	ld	s4,32(sp)
    800570a0:	6ae2                	ld	s5,24(sp)
    800570a2:	6b42                	ld	s6,16(sp)
    800570a4:	6ba2                	ld	s7,8(sp)
    800570a6:	6c02                	ld	s8,0(sp)
    800570a8:	6161                	addi	sp,sp,80
    800570aa:	8082                	ret
quickjs-nuttx/libbf.c:5953 (discriminator 3)
        a = tab[i];
    800570ac:	00349993          	slli	s3,s1,0x3
    800570b0:	013b07b3          	add	a5,s6,s3
    800570b4:	0007bc03          	ld	s8,0(a5)
fast_shr_dec():
quickjs-nuttx/libbf.c:5566 (discriminator 3)
    return fast_udiv(a, &mp_pow_div[shift]);
    800570b8:	85d2                	mv	a1,s4
mp_shr_dec():
quickjs-nuttx/libbf.c:5955 (discriminator 3)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    800570ba:	99d6                	add	s3,s3,s5
fast_shr_dec():
quickjs-nuttx/libbf.c:5566 (discriminator 3)
    return fast_udiv(a, &mp_pow_div[shift]);
    800570bc:	8562                	mv	a0,s8
    800570be:	bffff0ef          	jal	ra,80056cbc <fast_udiv>
mp_shr_dec():
quickjs-nuttx/libbf.c:5955 (discriminator 3)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    800570c2:	00093703          	ld	a4,0(s2)
quickjs-nuttx/libbf.c:5954 (discriminator 3)
        fast_shr_rem_dec(q, r, a, shift);
    800570c6:	000bb783          	ld	a5,0(s7)
quickjs-nuttx/libbf.c:5952 (discriminator 3)
    for(i = n - 1; i >= 0; i--) {
    800570ca:	14fd                	addi	s1,s1,-1
quickjs-nuttx/libbf.c:5955 (discriminator 3)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    800570cc:	02e40433          	mul	s0,s0,a4
quickjs-nuttx/libbf.c:5954 (discriminator 3)
        fast_shr_rem_dec(q, r, a, shift);
    800570d0:	02f507b3          	mul	a5,a0,a5
quickjs-nuttx/libbf.c:5955 (discriminator 3)
        tab_r[i] = q + l * mp_pow_dec[LIMB_DIGITS - shift];
    800570d4:	942a                	add	s0,s0,a0
    800570d6:	0089b023          	sd	s0,0(s3)
quickjs-nuttx/libbf.c:5956 (discriminator 3)
        l = r;
    800570da:	40fc0433          	sub	s0,s8,a5
    800570de:	bf45                	j	8005708e <mp_shr_dec+0x66>

00000000800570e0 <bf_add_limb>:
bf_add_limb():
quickjs-nuttx/libbf.c:2857
{
    800570e0:	7139                	addi	sp,sp,-64
    800570e2:	f822                	sd	s0,48(sp)
    800570e4:	ec4e                	sd	s3,24(sp)
    800570e6:	e852                	sd	s4,16(sp)
    800570e8:	fc06                	sd	ra,56(sp)
    800570ea:	f426                	sd	s1,40(sp)
    800570ec:	f04a                	sd	s2,32(sp)
    800570ee:	e456                	sd	s5,8(sp)
quickjs-nuttx/libbf.c:2859
    pos = *ppos;
    800570f0:	0005b903          	ld	s2,0(a1)
quickjs-nuttx/libbf.c:2857
{
    800570f4:	842a                	mv	s0,a0
    800570f6:	89ae                	mv	s3,a1
    800570f8:	8a32                	mv	s4,a2
quickjs-nuttx/libbf.c:2860
    if (unlikely(pos < 0)) {
    800570fa:	04095063          	bgez	s2,8005713a <bf_add_limb+0x5a>
quickjs-nuttx/libbf.c:2862
        new_size = bf_max(a->len + 1, a->len * 3 / 2);
    800570fe:	6d1c                	ld	a5,24(a0)
    80057100:	448d                	li	s1,3
    80057102:	029784b3          	mul	s1,a5,s1
    80057106:	0785                	addi	a5,a5,1
    80057108:	8085                	srli	s1,s1,0x1
    8005710a:	00f4d363          	bge	s1,a5,80057110 <bf_add_limb+0x30>
    8005710e:	84be                	mv	s1,a5
quickjs-nuttx/libbf.c:2863
        new_tab = bf_realloc(a->ctx, a->tab, sizeof(limb_t) * new_size);
    80057110:	700c                	ld	a1,32(s0)
    80057112:	6008                	ld	a0,0(s0)
    80057114:	00349613          	slli	a2,s1,0x3
    80057118:	97bff0ef          	jal	ra,80056a92 <bf_realloc>
    8005711c:	85aa                	mv	a1,a0
quickjs-nuttx/libbf.c:2865
            return -1;
    8005711e:	557d                	li	a0,-1
quickjs-nuttx/libbf.c:2864
        if (!new_tab)
    80057120:	c59d                	beqz	a1,8005714e <bf_add_limb+0x6e>
quickjs-nuttx/libbf.c:2867
        d = new_size - a->len;
    80057122:	6c10                	ld	a2,24(s0)
quickjs-nuttx/libbf.c:2866
        a->tab = new_tab;
    80057124:	f00c                	sd	a1,32(s0)
quickjs-nuttx/libbf.c:2867
        d = new_size - a->len;
    80057126:	40c48ab3          	sub	s5,s1,a2
quickjs-nuttx/libbf.c:2868
        memmove(a->tab + d, a->tab, a->len * sizeof(limb_t));
    8005712a:	003a9513          	slli	a0,s5,0x3
    8005712e:	060e                	slli	a2,a2,0x3
    80057130:	952e                	add	a0,a0,a1
    80057132:	2cf0c0ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/libbf.c:2870
        pos += d;
    80057136:	9956                	add	s2,s2,s5
quickjs-nuttx/libbf.c:2869
        a->len = new_size;
    80057138:	ec04                	sd	s1,24(s0)
quickjs-nuttx/libbf.c:2872
    a->tab[pos--] = v;
    8005713a:	701c                	ld	a5,32(s0)
    8005713c:	00391713          	slli	a4,s2,0x3
    80057140:	197d                	addi	s2,s2,-1
    80057142:	97ba                	add	a5,a5,a4
    80057144:	0147b023          	sd	s4,0(a5)
quickjs-nuttx/libbf.c:2873
    *ppos = pos;
    80057148:	0129b023          	sd	s2,0(s3)
quickjs-nuttx/libbf.c:2874
    return 0;
    8005714c:	4501                	li	a0,0
quickjs-nuttx/libbf.c:2875
}
    8005714e:	70e2                	ld	ra,56(sp)
    80057150:	7442                	ld	s0,48(sp)
    80057152:	74a2                	ld	s1,40(sp)
    80057154:	7902                	ld	s2,32(sp)
    80057156:	69e2                	ld	s3,24(sp)
    80057158:	6a42                	ld	s4,16(sp)
    8005715a:	6aa2                	ld	s5,8(sp)
    8005715c:	6121                	addi	sp,sp,64
    8005715e:	8082                	ret

0000000080057160 <mp_mul_basecase>:
mp_mul_basecase():
quickjs-nuttx/libbf.c:1184
    result[op1_size] = mp_mul1(result, op1, op1_size, op2[0], 0);
    80057160:	0006be83          	ld	t4,0(a3)
    80057164:	00361e13          	slli	t3,a2,0x3
    80057168:	01c50f33          	add	t5,a0,t3
    8005716c:	4881                	li	a7,0
    8005716e:	4781                	li	a5,0
mp_mul1():
quickjs-nuttx/libbf.c:1153
    for(i = 0; i < n; i++) {
    80057170:	011e1963          	bne	t3,a7,80057182 <mp_mul_basecase+0x22>
mp_mul_basecase():
quickjs-nuttx/libbf.c:1184
    result[op1_size] = mp_mul1(result, op1, op1_size, op2[0], 0);
    80057174:	00ff3023          	sd	a5,0(t5)
quickjs-nuttx/libbf.c:1185
    for(i=1;i<op2_size;i++) {
    80057178:	0521                	addi	a0,a0,8
    8005717a:	4e05                	li	t3,1
quickjs-nuttx/libbf.c:1185 (discriminator 1)
    8005717c:	02ee6663          	bltu	t3,a4,800571a8 <mp_mul_basecase+0x48>
quickjs-nuttx/libbf.c:1189
}
    80057180:	8082                	ret
mp_mul1():
quickjs-nuttx/libbf.c:1154
        t = (dlimb_t)taba[i] * (dlimb_t)b + l;
    80057182:	01158833          	add	a6,a1,a7
    80057186:	00083803          	ld	a6,0(a6) # 10000 <asinh-0x7fff0000>
quickjs-nuttx/libbf.c:1155
        tabr[i] = t;
    8005718a:	01150fb3          	add	t6,a0,a7
    8005718e:	08a1                	addi	a7,a7,8
quickjs-nuttx/libbf.c:1154
        t = (dlimb_t)taba[i] * (dlimb_t)b + l;
    80057190:	030e8333          	mul	t1,t4,a6
    80057194:	030eb833          	mulhu	a6,t4,a6
    80057198:	979a                	add	a5,a5,t1
    8005719a:	0067b333          	sltu	t1,a5,t1
quickjs-nuttx/libbf.c:1155
        tabr[i] = t;
    8005719e:	00ffb023          	sd	a5,0(t6)
quickjs-nuttx/libbf.c:1156
        l = t >> LIMB_BITS;
    800571a2:	010307b3          	add	a5,t1,a6
quickjs-nuttx/libbf.c:1153
    for(i = 0; i < n; i++) {
    800571a6:	b7e9                	j	80057170 <mp_mul_basecase+0x10>
mp_mul_basecase():
quickjs-nuttx/libbf.c:1186 (discriminator 3)
        r = mp_add_mul1(result + i, op1, op1_size, op2[i]);
    800571a8:	003e1793          	slli	a5,t3,0x3
    800571ac:	97b6                	add	a5,a5,a3
    800571ae:	0007b383          	ld	t2,0(a5)
mp_add_mul1():
quickjs-nuttx/libbf.c:1169 (discriminator 3)
    for(i = 0; i < n; i++) {
    800571b2:	8f2a                	mv	t5,a0
quickjs-nuttx/libbf.c:1168 (discriminator 3)
    l = 0;
    800571b4:	4781                	li	a5,0
quickjs-nuttx/libbf.c:1169 (discriminator 3)
    for(i = 0; i < n; i++) {
    800571b6:	4e81                	li	t4,0
quickjs-nuttx/libbf.c:1169
    800571b8:	01d61963          	bne	a2,t4,800571ca <mp_mul_basecase+0x6a>
mp_mul_basecase():
quickjs-nuttx/libbf.c:1187
        result[i + op1_size] = r;
    800571bc:	01150833          	add	a6,a0,a7
    800571c0:	00f83023          	sd	a5,0(a6)
quickjs-nuttx/libbf.c:1185
    for(i=1;i<op2_size;i++) {
    800571c4:	0e05                	addi	t3,t3,1
    800571c6:	0521                	addi	a0,a0,8
    800571c8:	bf55                	j	8005717c <mp_mul_basecase+0x1c>
mp_add_mul1():
quickjs-nuttx/libbf.c:1170
        t = (dlimb_t)taba[i] * (dlimb_t)b + l + tabr[i];
    800571ca:	003e9813          	slli	a6,t4,0x3
    800571ce:	982e                	add	a6,a6,a1
    800571d0:	00083803          	ld	a6,0(a6)
quickjs-nuttx/libbf.c:1169
    for(i = 0; i < n; i++) {
    800571d4:	0e85                	addi	t4,t4,1
    800571d6:	0f21                	addi	t5,t5,8
quickjs-nuttx/libbf.c:1170
        t = (dlimb_t)taba[i] * (dlimb_t)b + l + tabr[i];
    800571d8:	03038fb3          	mul	t6,t2,a6
    800571dc:	0303b333          	mulhu	t1,t2,a6
    800571e0:	ff8f3803          	ld	a6,-8(t5)
    800571e4:	97c2                	add	a5,a5,a6
    800571e6:	0107b2b3          	sltu	t0,a5,a6
    800571ea:	00ff8833          	add	a6,t6,a5
    800571ee:	01f83fb3          	sltu	t6,a6,t6
quickjs-nuttx/libbf.c:1171
        tabr[i] = t;
    800571f2:	ff0f3c23          	sd	a6,-8(t5)
quickjs-nuttx/libbf.c:1170
        t = (dlimb_t)taba[i] * (dlimb_t)b + l + tabr[i];
    800571f6:	005307b3          	add	a5,t1,t0
quickjs-nuttx/libbf.c:1172
        l = t >> LIMB_BITS;
    800571fa:	97fe                	add	a5,a5,t6
quickjs-nuttx/libbf.c:1169
    for(i = 0; i < n; i++) {
    800571fc:	bf75                	j	800571b8 <mp_mul_basecase+0x58>

00000000800571fe <ntt_free.isra.0>:
ntt_free():
quickjs-nuttx/libbf.c:7713
    bf_free(s->ctx, ptr);
    800571fe:	8a3ff06f          	j	80056aa0 <bf_free>

0000000080057202 <ntt_to_limb>:
ntt_to_limb():
quickjs-nuttx/libbf.c:8156
}
#else
static no_inline void ntt_to_limb(BFNTTState *s, limb_t *tabr, limb_t r_len,
                                  const NTTLimb *buf, int fft_len_log2, int dpl,
                                  int nb_mods)
{
    80057202:	7149                	addi	sp,sp,-368
    80057204:	f65e                	sd	s7,296(sp)
quickjs-nuttx/libbf.c:8157
    const limb_t *mods = ntt_mods + NB_MODS - nb_mods;
    80057206:	4b95                	li	s7,5
    80057208:	410b8bb3          	sub	s7,s7,a6
quickjs-nuttx/libbf.c:8156
{
    8005720c:	eaca                	sd	s2,336(sp)
    8005720e:	fa5a                	sd	s6,304(sp)
    80057210:	893e                	mv	s2,a5
quickjs-nuttx/libbf.c:8164
    limb_t y[NB_MODS], u[NB_MODS], carry[NB_MODS], fft_len, base_mask1, r;
    slimb_t i, len, pos;
    int j, k, l, shift, n_limb1;
    dlimb_t t;
        
    j = NB_MODS * (NB_MODS - 1) / 2 - nb_mods * (nb_mods - 1) / 2;
    80057212:	fff80b1b          	addiw	s6,a6,-1
quickjs-nuttx/libbf.c:8157
    const limb_t *mods = ntt_mods + NB_MODS - nb_mods;
    80057216:	003b9793          	slli	a5,s7,0x3
    8005721a:	0002ab97          	auipc	s7,0x2a
    8005721e:	a76b8b93          	addi	s7,s7,-1418 # 80080c90 <ntt_mods>
    80057222:	9bbe                	add	s7,s7,a5
quickjs-nuttx/libbf.c:8164
    j = NB_MODS * (NB_MODS - 1) / 2 - nb_mods * (nb_mods - 1) / 2;
    80057224:	030b07bb          	mulw	a5,s6,a6
quickjs-nuttx/libbf.c:8156
{
    80057228:	e83a                	sd	a4,16(sp)
quickjs-nuttx/libbf.c:8164
    j = NB_MODS * (NB_MODS - 1) / 2 - nb_mods * (nb_mods - 1) / 2;
    8005722a:	4709                	li	a4,2
quickjs-nuttx/libbf.c:8156
{
    8005722c:	e2d2                	sd	s4,320(sp)
    8005722e:	fe56                	sd	s5,312(sp)
    80057230:	f262                	sd	s8,288(sp)
    80057232:	e66e                	sd	s11,264(sp)
    80057234:	f686                	sd	ra,360(sp)
    80057236:	f2a2                	sd	s0,352(sp)
    80057238:	eea6                	sd	s1,344(sp)
quickjs-nuttx/libbf.c:8164
    j = NB_MODS * (NB_MODS - 1) / 2 - nb_mods * (nb_mods - 1) / 2;
    8005723a:	02e7c7bb          	divw	a5,a5,a4
quickjs-nuttx/libbf.c:8156
{
    8005723e:	e6ce                	sd	s3,328(sp)
    80057240:	ee66                	sd	s9,280(sp)
    80057242:	ea6a                	sd	s10,272(sp)
    80057244:	ecb6                	sd	a3,88(sp)
quickjs-nuttx/libbf.c:8168
    mods_cr = ntt_mods_cr + j;
    mods_cr_inv = s->ntt_mods_cr_inv + j;

    shift = dpl & (LIMB_BITS - 1);
    80057246:	03f97a13          	andi	s4,s2,63
quickjs-nuttx/libbf.c:8156
{
    8005724a:	8c2e                	mv	s8,a1
    8005724c:	8ab2                	mv	s5,a2
    8005724e:	8dc2                	mv	s11,a6
quickjs-nuttx/libbf.c:8164
    j = NB_MODS * (NB_MODS - 1) / 2 - nb_mods * (nb_mods - 1) / 2;
    80057250:	40f007bb          	negw	a5,a5
quickjs-nuttx/libbf.c:8165
    mods_cr = ntt_mods_cr + j;
    80057254:	27a9                	addiw	a5,a5,10
    80057256:	f03e                	sd	a5,32(sp)
quickjs-nuttx/libbf.c:8166
    mods_cr_inv = s->ntt_mods_cr_inv + j;
    80057258:	678d                	lui	a5,0x3
    8005725a:	73078793          	addi	a5,a5,1840 # 3730 <asinh-0x7fffc8d0>
    8005725e:	97aa                	add	a5,a5,a0
    80057260:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:8170
    if (shift == 0)
        base_mask1 = -1;
    80057262:	57fd                	li	a5,-1
    80057264:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:8169
    if (shift == 0)
    80057266:	000a0863          	beqz	s4,80057276 <ntt_to_limb+0x74>
quickjs-nuttx/libbf.c:8172
    else
        base_mask1 = ((limb_t)1 << shift) - 1;
    8005726a:	4985                	li	s3,1
    8005726c:	014999b3          	sll	s3,s3,s4
    80057270:	fff98793          	addi	a5,s3,-1
    80057274:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:8180
        carry[j] = 0;
    for(j = 0; j < NB_MODS; j++) 
        u[j] = 0; /* avoid warnings */
    memset(tabr, 0, sizeof(limb_t) * r_len);
    fft_len = (limb_t)1 << fft_len_log2;
    len = bf_min(fft_len, (r_len * LIMB_BITS + dpl - 1) / dpl);
    80057276:	006a9413          	slli	s0,s5,0x6
    8005727a:	147d                	addi	s0,s0,-1
    8005727c:	944a                	add	s0,s0,s2
    8005727e:	03245433          	divu	s0,s0,s2
quickjs-nuttx/libbf.c:8178
    memset(tabr, 0, sizeof(limb_t) * r_len);
    80057282:	003a9613          	slli	a2,s5,0x3
    80057286:	4581                	li	a1,0
    80057288:	8562                	mv	a0,s8
quickjs-nuttx/libbf.c:8175
        carry[j] = 0;
    8005728a:	ed82                	sd	zero,216(sp)
    8005728c:	f182                	sd	zero,224(sp)
    8005728e:	f582                	sd	zero,232(sp)
    80057290:	f982                	sd	zero,240(sp)
    80057292:	fd82                	sd	zero,248(sp)
quickjs-nuttx/libbf.c:8177
        u[j] = 0; /* avoid warnings */
    80057294:	f902                	sd	zero,176(sp)
    80057296:	fd02                	sd	zero,184(sp)
    80057298:	e182                	sd	zero,192(sp)
    8005729a:	e582                	sd	zero,200(sp)
    8005729c:	e982                	sd	zero,208(sp)
quickjs-nuttx/libbf.c:8178
    memset(tabr, 0, sizeof(limb_t) * r_len);
    8005729e:	1a50c0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:8179
    fft_len = (limb_t)1 << fft_len_log2;
    800572a2:	6742                	ld	a4,16(sp)
    800572a4:	4785                	li	a5,1
quickjs-nuttx/libbf.c:8173
    n_limb1 = ((unsigned)dpl - 1) / LIMB_BITS;
    800572a6:	fff9049b          	addiw	s1,s2,-1
quickjs-nuttx/libbf.c:8179
    fft_len = (limb_t)1 << fft_len_log2;
    800572aa:	00e797b3          	sll	a5,a5,a4
quickjs-nuttx/libbf.c:8173
    n_limb1 = ((unsigned)dpl - 1) / LIMB_BITS;
    800572ae:	0064d99b          	srliw	s3,s1,0x6
    800572b2:	0064d49b          	srliw	s1,s1,0x6
quickjs-nuttx/libbf.h:188
    if (a < b)
    800572b6:	0087d363          	bge	a5,s0,800572bc <ntt_to_limb+0xba>
    800572ba:	843e                	mv	s0,a5
quickjs-nuttx/libbf.c:8181
    for(i = 0; i < len; i++) {
    800572bc:	ffed8c9b          	addiw	s9,s11,-2
    800572c0:	003c9793          	slli	a5,s9,0x3
    800572c4:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/libbf.c:8241
        }
        put_bits(tabr, r_len, pos, u[n_limb1] & base_mask1);
        /* shift by dpl digits and set the carry */
        if (shift == 0) {
            for(j = n_limb1 + 1; j < nb_mods; j++)
                carry[j - (n_limb1 + 1)] = u[j];
    800572c6:	000d871b          	sext.w	a4,s11
    800572ca:	00649793          	slli	a5,s1,0x6
    800572ce:	fffd869b          	addiw	a3,s11,-1
    800572d2:	e8be                	sd	a5,80(sp)
    800572d4:	e4ba                	sd	a4,72(sp)
quickjs-nuttx/libbf.c:8240
            for(j = n_limb1 + 1; j < nb_mods; j++)
    800572d6:	0019879b          	addiw	a5,s3,1
    800572da:	f836                	sd	a3,48(sp)
quickjs-nuttx/libbf.c:8241
                carry[j - (n_limb1 + 1)] = u[j];
    800572dc:	ec02                	sd	zero,24(sp)
    800572de:	00fdc963          	blt	s11,a5,800572f0 <ntt_to_limb+0xee>
    800572e2:	4136873b          	subw	a4,a3,s3
    800572e6:	02071693          	slli	a3,a4,0x20
    800572ea:	01d6d713          	srli	a4,a3,0x1d
    800572ee:	ec3a                	sd	a4,24(sp)
    800572f0:	1918                	addi	a4,sp,176
    800572f2:	078e                	slli	a5,a5,0x3
    800572f4:	97ba                	add	a5,a5,a4
    800572f6:	e0be                	sd	a5,64(sp)
quickjs-nuttx/libbf.c:8247
        } else {
            for(j = n_limb1; j < nb_mods - 1; j++) {
                carry[j - n_limb1] = (u[j] >> shift) |
                    (u[j + 1] << (LIMB_BITS - shift));
            }
            carry[nb_mods - 1 - n_limb1] = u[nb_mods - 1] >> shift;
    800572f8:	409b07bb          	subw	a5,s6,s1
    800572fc:	078e                	slli	a5,a5,0x3
    800572fe:	0218                	addi	a4,sp,256
    80057300:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:8181
    for(i = 0; i < len; i++) {
    80057302:	4d01                	li	s10,0
quickjs-nuttx/libbf.c:8247
            carry[nb_mods - 1 - n_limb1] = u[nb_mods - 1] >> shift;
    80057304:	f0be                	sd	a5,96(sp)
quickjs-nuttx/libbf.c:8181 (discriminator 1)
    for(i = 0; i < len; i++) {
    80057306:	228d5463          	bge	s10,s0,8005752e <ntt_to_limb+0x32c>
    8005730a:	012c                	addi	a1,sp,136
quickjs-nuttx/libbf.c:8181
    8005730c:	862e                	mv	a2,a1
    8005730e:	4681                	li	a3,0
    80057310:	a01d                	j	80057336 <ntt_to_limb+0x134>
quickjs-nuttx/libbf.c:8183 (discriminator 3)
            y[j] = ntt_limb_to_int(buf[i + fft_len * j], mods[j]);
    80057312:	67c2                	ld	a5,16(sp)
    80057314:	6766                	ld	a4,88(sp)
    80057316:	00369513          	slli	a0,a3,0x3
    8005731a:	00f697b3          	sll	a5,a3,a5
    8005731e:	97ea                	add	a5,a5,s10
    80057320:	078e                	slli	a5,a5,0x3
    80057322:	97ba                	add	a5,a5,a4
    80057324:	955e                	add	a0,a0,s7
    80057326:	639c                	ld	a5,0(a5)
    80057328:	6108                	ld	a0,0(a0)
ntt_limb_to_int():
quickjs-nuttx/libbf.c:7718 (discriminator 3)
    if (a >= m)
    8005732a:	00a7e363          	bltu	a5,a0,80057330 <ntt_to_limb+0x12e>
quickjs-nuttx/libbf.c:7719
        a -= m;
    8005732e:	8f89                	sub	a5,a5,a0
ntt_to_limb():
quickjs-nuttx/libbf.c:8183
            y[j] = ntt_limb_to_int(buf[i + fft_len * j], mods[j]);
    80057330:	e21c                	sd	a5,0(a2)
quickjs-nuttx/libbf.c:8182
        for(j = 0; j < nb_mods; j++)  {
    80057332:	0685                	addi	a3,a3,1
    80057334:	0621                	addi	a2,a2,8
quickjs-nuttx/libbf.c:8182 (discriminator 1)
    80057336:	0006879b          	sext.w	a5,a3
    8005733a:	fdb7cce3          	blt	a5,s11,80057312 <ntt_to_limb+0x110>
quickjs-nuttx/libbf.c:8187
        l = 0;
    8005733e:	4301                	li	t1,0
quickjs-nuttx/libbf.c:8188
        for(j = 0; j < nb_mods - 1; j++) {
    80057340:	4681                	li	a3,0
quickjs-nuttx/libbf.c:8188 (discriminator 1)
    80057342:	0d66ce63          	blt	a3,s6,8005741e <ntt_to_limb+0x21c>
quickjs-nuttx/libbf.c:8201
        u[0] = y[nb_mods - 1];
    80057346:	003b1793          	slli	a5,s6,0x3
    8005734a:	0218                	addi	a4,sp,256
    8005734c:	97ba                	add	a5,a5,a4
    8005734e:	f887b783          	ld	a5,-120(a5)
quickjs-nuttx/libbf.c:8203
        for(j = nb_mods - 2; j >= 1; j--) {
    80057352:	7ee2                	ld	t4,56(sp)
    80057354:	0b010893          	addi	a7,sp,176
quickjs-nuttx/libbf.c:8201
        u[0] = y[nb_mods - 1];
    80057358:	f93e                	sd	a5,176(sp)
quickjs-nuttx/libbf.c:8203
        for(j = nb_mods - 2; j >= 1; j--) {
    8005735a:	8f46                	mv	t5,a7
    8005735c:	8e66                	mv	t3,s9
quickjs-nuttx/libbf.c:8206 (discriminator 1)
                t = (dlimb_t)u[k] * mods[j] + r;
    8005735e:	01db87b3          	add	a5,s7,t4
    80057362:	6388                	ld	a0,0(a5)
quickjs-nuttx/libbf.c:8203 (discriminator 1)
        for(j = nb_mods - 2; j >= 1; j--) {
    80057364:	13c04a63          	bgtz	t3,80057498 <ntt_to_limb+0x296>
    80057368:	87e6                	mv	a5,s9
    8005736a:	000cd363          	bgez	s9,80057370 <ntt_to_limb+0x16e>
    8005736e:	4781                	li	a5,0
quickjs-nuttx/libbf.c:8215
        r = y[0];
    80057370:	662a                	ld	a2,136(sp)
    80057372:	0d810993          	addi	s3,sp,216
    80057376:	2785                	addiw	a5,a5,1
    80057378:	8fce                	mv	t6,s3
    8005737a:	8ec6                	mv	t4,a7
quickjs-nuttx/libbf.c:8216
        for(k = 0; k < l; k++) {
    8005737c:	4f01                	li	t5,0
quickjs-nuttx/libbf.c:8217 (discriminator 3)
            t = (dlimb_t)u[k] * mods[j] + r + carry[k];
    8005737e:	000eb583          	ld	a1,0(t4)
quickjs-nuttx/libbf.c:8216 (discriminator 3)
        for(k = 0; k < l; k++) {
    80057382:	2f05                	addiw	t5,t5,1
    80057384:	0ea1                	addi	t4,t4,8
quickjs-nuttx/libbf.c:8217 (discriminator 3)
            t = (dlimb_t)u[k] * mods[j] + r + carry[k];
    80057386:	02b502b3          	mul	t0,a0,a1
quickjs-nuttx/libbf.c:8216 (discriminator 3)
        for(k = 0; k < l; k++) {
    8005738a:	0fa1                	addi	t6,t6,8
quickjs-nuttx/libbf.c:8217 (discriminator 3)
            t = (dlimb_t)u[k] * mods[j] + r + carry[k];
    8005738c:	02b53e33          	mulhu	t3,a0,a1
    80057390:	ff8fb583          	ld	a1,-8(t6)
    80057394:	00c586b3          	add	a3,a1,a2
    80057398:	00b6b5b3          	sltu	a1,a3,a1
    8005739c:	9696                	add	a3,a3,t0
    8005739e:	0056b633          	sltu	a2,a3,t0
quickjs-nuttx/libbf.c:8219 (discriminator 3)
            u[k] = t;
    800573a2:	fedebc23          	sd	a3,-8(t4)
quickjs-nuttx/libbf.c:8217 (discriminator 3)
            t = (dlimb_t)u[k] * mods[j] + r + carry[k];
    800573a6:	95f2                	add	a1,a1,t3
    800573a8:	962e                	add	a2,a2,a1
quickjs-nuttx/libbf.c:8216 (discriminator 3)
        for(k = 0; k < l; k++) {
    800573aa:	fcff4ae3          	blt	t5,a5,8005737e <ntt_to_limb+0x17c>
quickjs-nuttx/libbf.c:8232
        pos = i * dpl;
    800573ae:	03a90e33          	mul	t3,s2,s10
quickjs-nuttx/libbf.c:8221
        u[l] = r + carry[l];
    800573b2:	078e                	slli	a5,a5,0x3
    800573b4:	0218                	addi	a4,sp,256
    800573b6:	97ba                	add	a5,a5,a4
    800573b8:	fd87b683          	ld	a3,-40(a5)
    800573bc:	96b2                	add	a3,a3,a2
    800573be:	fad7b823          	sd	a3,-80(a5)
quickjs-nuttx/libbf.c:8233
        for(j = 0; j < n_limb1; j++) {
    800573c2:	4781                	li	a5,0
    800573c4:	00679613          	slli	a2,a5,0x6
quickjs-nuttx/libbf.c:8233 (discriminator 1)
    800573c8:	0007869b          	sext.w	a3,a5
    800573cc:	9672                	add	a2,a2,t3
    800573ce:	1096c463          	blt	a3,s1,800574d6 <ntt_to_limb+0x2d4>
quickjs-nuttx/libbf.c:8237
        put_bits(tabr, r_len, pos, u[n_limb1] & base_mask1);
    800573d2:	00349793          	slli	a5,s1,0x3
    800573d6:	0218                	addi	a4,sp,256
    800573d8:	97ba                	add	a5,a5,a4
    800573da:	fb07b683          	ld	a3,-80(a5)
    800573de:	67a2                	ld	a5,8(sp)
    800573e0:	85d6                	mv	a1,s5
    800573e2:	8562                	mv	a0,s8
    800573e4:	8efd                	and	a3,a3,a5
    800573e6:	67c6                	ld	a5,80(sp)
    800573e8:	00fe0633          	add	a2,t3,a5
    800573ec:	945ff0ef          	jal	ra,80056d30 <put_bits>
quickjs-nuttx/libbf.c:8239
        if (shift == 0) {
    800573f0:	100a0263          	beqz	s4,800574f4 <ntt_to_limb+0x2f2>
quickjs-nuttx/libbf.c:8245
                    (u[j + 1] << (LIMB_BITS - shift));
    800573f4:	04000593          	li	a1,64
    800573f8:	8626                	mv	a2,s1
    800573fa:	414585bb          	subw	a1,a1,s4
quickjs-nuttx/libbf.c:8243 (discriminator 1)
            for(j = n_limb1; j < nb_mods - 1; j++) {
    800573fe:	0006079b          	sext.w	a5,a2
    80057402:	1167c063          	blt	a5,s6,80057502 <ntt_to_limb+0x300>
quickjs-nuttx/libbf.c:8247
            carry[nb_mods - 1 - n_limb1] = u[nb_mods - 1] >> shift;
    80057406:	0218                	addi	a4,sp,256
    80057408:	003b1793          	slli	a5,s6,0x3
    8005740c:	97ba                	add	a5,a5,a4
    8005740e:	fb07b783          	ld	a5,-80(a5)
    80057412:	7706                	ld	a4,96(sp)
    80057414:	0147d7b3          	srl	a5,a5,s4
    80057418:	fcf73c23          	sd	a5,-40(a4)
    8005741c:	a0cd                	j	800574fe <ntt_to_limb+0x2fc>
quickjs-nuttx/libbf.c:8189
            for(k = j + 1; k < nb_mods; k++) {
    8005741e:	2685                	addiw	a3,a3,1
    80057420:	00369513          	slli	a0,a3,0x3
    80057424:	8e9a                	mv	t4,t1
    80057426:	8e36                	mv	t3,a3
quickjs-nuttx/libbf.c:8189 (discriminator 1)
    80057428:	01be4b63          	blt	t3,s11,8005743e <ntt_to_limb+0x23c>
    8005742c:	4781                	li	a5,0
    8005742e:	00ddc463          	blt	s11,a3,80057436 <ntt_to_limb+0x234>
    80057432:	67a6                	ld	a5,72(sp)
    80057434:	9f95                	subw	a5,a5,a3
    80057436:	0067833b          	addw	t1,a5,t1
    8005743a:	05a1                	addi	a1,a1,8
    8005743c:	b719                	j	80057342 <ntt_to_limb+0x140>
quickjs-nuttx/libbf.c:8191 (discriminator 3)
                m = mods[k];
    8005743e:	00ab87b3          	add	a5,s7,a0
    80057442:	0007b883          	ld	a7,0(a5)
quickjs-nuttx/libbf.c:8194 (discriminator 3)
                y[k] = mul_mod_fast2(y[k] - y[j] + m, 
    80057446:	013c                	addi	a5,sp,136
    80057448:	00a78f33          	add	t5,a5,a0
    8005744c:	000f3783          	ld	a5,0(t5)
    80057450:	6190                	ld	a2,0(a1)
    80057452:	7702                	ld	a4,32(sp)
    80057454:	97c6                	add	a5,a5,a7
    80057456:	8f91                	sub	a5,a5,a2
    80057458:	00ee8633          	add	a2,t4,a4
    8005745c:	060e                	slli	a2,a2,0x3
    8005745e:	0002a717          	auipc	a4,0x2a
    80057462:	85a70713          	addi	a4,a4,-1958 # 80080cb8 <ntt_mods_cr>
    80057466:	00c70fb3          	add	t6,a4,a2
    8005746a:	7722                	ld	a4,40(sp)
mul_mod_fast2():
quickjs-nuttx/libbf.c:7442 (discriminator 3)
    r = a * b - q * m;
    8005746c:	000fbf83          	ld	t6,0(t6)
ntt_to_limb():
quickjs-nuttx/libbf.c:8194 (discriminator 3)
                y[k] = mul_mod_fast2(y[k] - y[j] + m, 
    80057470:	963a                	add	a2,a2,a4
mul_mod_fast2():
quickjs-nuttx/libbf.c:7441 (discriminator 3)
    q = ((dlimb_t)a * (dlimb_t)b_inv) >> LIMB_BITS;
    80057472:	6210                	ld	a2,0(a2)
quickjs-nuttx/libbf.c:7442 (discriminator 3)
    r = a * b - q * m;
    80057474:	03f78fb3          	mul	t6,a5,t6
quickjs-nuttx/libbf.c:7441 (discriminator 3)
    q = ((dlimb_t)a * (dlimb_t)b_inv) >> LIMB_BITS;
    80057478:	02c7b7b3          	mulhu	a5,a5,a2
quickjs-nuttx/libbf.c:7442 (discriminator 3)
    r = a * b - q * m;
    8005747c:	02f887b3          	mul	a5,a7,a5
    80057480:	40ff87b3          	sub	a5,t6,a5
quickjs-nuttx/libbf.c:7443 (discriminator 3)
    if (r >= m)
    80057484:	0117e463          	bltu	a5,a7,8005748c <ntt_to_limb+0x28a>
quickjs-nuttx/libbf.c:7444
        r -= m;
    80057488:	411787b3          	sub	a5,a5,a7
ntt_to_limb():
quickjs-nuttx/libbf.c:8194
                y[k] = mul_mod_fast2(y[k] - y[j] + m, 
    8005748c:	00ff3023          	sd	a5,0(t5)
quickjs-nuttx/libbf.c:8196
                l++;
    80057490:	2e85                	addiw	t4,t4,1
quickjs-nuttx/libbf.c:8189
            for(k = j + 1; k < nb_mods; k++) {
    80057492:	2e05                	addiw	t3,t3,1
    80057494:	0521                	addi	a0,a0,8
    80057496:	bf49                	j	80057428 <ntt_to_limb+0x226>
quickjs-nuttx/libbf.c:8205
            for(k = 0; k < l; k++) {
    80057498:	7742                	ld	a4,48(sp)
quickjs-nuttx/libbf.c:8204
            r = y[j];
    8005749a:	013c                	addi	a5,sp,136
    8005749c:	97f6                	add	a5,a5,t4
    8005749e:	638c                	ld	a1,0(a5)
quickjs-nuttx/libbf.c:8205
            for(k = 0; k < l; k++) {
    800574a0:	4301                	li	t1,0
quickjs-nuttx/libbf.c:8204
            r = y[j];
    800574a2:	87c6                	mv	a5,a7
quickjs-nuttx/libbf.c:8205
            for(k = 0; k < l; k++) {
    800574a4:	41c702bb          	subw	t0,a4,t3
quickjs-nuttx/libbf.c:8206 (discriminator 3)
                t = (dlimb_t)u[k] * mods[j] + r;
    800574a8:	6394                	ld	a3,0(a5)
quickjs-nuttx/libbf.c:8205 (discriminator 3)
            for(k = 0; k < l; k++) {
    800574aa:	2305                	addiw	t1,t1,1
    800574ac:	07a1                	addi	a5,a5,8
quickjs-nuttx/libbf.c:8206 (discriminator 3)
                t = (dlimb_t)u[k] * mods[j] + r;
    800574ae:	02d50633          	mul	a2,a0,a3
    800574b2:	02d536b3          	mulhu	a3,a0,a3
    800574b6:	00b60fb3          	add	t6,a2,a1
    800574ba:	00cfb633          	sltu	a2,t6,a2
quickjs-nuttx/libbf.c:8208 (discriminator 3)
                u[k] = t;
    800574be:	fff7bc23          	sd	t6,-8(a5)
quickjs-nuttx/libbf.c:8206 (discriminator 3)
                t = (dlimb_t)u[k] * mods[j] + r;
    800574c2:	00d605b3          	add	a1,a2,a3
quickjs-nuttx/libbf.c:8205 (discriminator 3)
            for(k = 0; k < l; k++) {
    800574c6:	fe6291e3          	bne	t0,t1,800574a8 <ntt_to_limb+0x2a6>
quickjs-nuttx/libbf.c:8210 (discriminator 2)
            u[l] = r;
    800574ca:	00bf3423          	sd	a1,8(t5)
quickjs-nuttx/libbf.c:8203 (discriminator 2)
        for(j = nb_mods - 2; j >= 1; j--) {
    800574ce:	3e7d                	addiw	t3,t3,-1
    800574d0:	0f21                	addi	t5,t5,8
    800574d2:	1ee1                	addi	t4,t4,-8
    800574d4:	b569                	j	8005735e <ntt_to_limb+0x15c>
quickjs-nuttx/libbf.c:8234 (discriminator 3)
            put_bits(tabr, r_len, pos, u[j]);
    800574d6:	0008b683          	ld	a3,0(a7)
    800574da:	85d6                	mv	a1,s5
    800574dc:	8562                	mv	a0,s8
    800574de:	fcbe                	sd	a5,120(sp)
    800574e0:	f8f2                	sd	t3,112(sp)
    800574e2:	f4c6                	sd	a7,104(sp)
    800574e4:	84dff0ef          	jal	ra,80056d30 <put_bits>
quickjs-nuttx/libbf.c:8233 (discriminator 3)
        for(j = 0; j < n_limb1; j++) {
    800574e8:	77e6                	ld	a5,120(sp)
    800574ea:	78a6                	ld	a7,104(sp)
    800574ec:	7e46                	ld	t3,112(sp)
    800574ee:	0785                	addi	a5,a5,1
    800574f0:	08a1                	addi	a7,a7,8
    800574f2:	bdc9                	j	800573c4 <ntt_to_limb+0x1c2>
quickjs-nuttx/libbf.c:8241
                carry[j - (n_limb1 + 1)] = u[j];
    800574f4:	6662                	ld	a2,24(sp)
    800574f6:	6586                	ld	a1,64(sp)
    800574f8:	09a8                	addi	a0,sp,216
    800574fa:	0b30c0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libbf.c:8181 (discriminator 2)
    for(i = 0; i < len; i++) {
    800574fe:	0d05                	addi	s10,s10,1
    80057500:	b519                	j	80057306 <ntt_to_limb+0x104>
quickjs-nuttx/libbf.c:8244 (discriminator 3)
                carry[j - n_limb1] = (u[j] >> shift) |
    80057502:	00361793          	slli	a5,a2,0x3
    80057506:	1918                	addi	a4,sp,176
quickjs-nuttx/libbf.c:8245 (discriminator 3)
                    (u[j + 1] << (LIMB_BITS - shift));
    80057508:	0016069b          	addiw	a3,a2,1
quickjs-nuttx/libbf.c:8244 (discriminator 3)
                carry[j - n_limb1] = (u[j] >> shift) |
    8005750c:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:8245 (discriminator 3)
                    (u[j + 1] << (LIMB_BITS - shift));
    8005750e:	068e                	slli	a3,a3,0x3
    80057510:	0218                	addi	a4,sp,256
    80057512:	96ba                	add	a3,a3,a4
quickjs-nuttx/libbf.c:8244 (discriminator 3)
                carry[j - n_limb1] = (u[j] >> shift) |
    80057514:	639c                	ld	a5,0(a5)
quickjs-nuttx/libbf.c:8245 (discriminator 3)
                    (u[j + 1] << (LIMB_BITS - shift));
    80057516:	fb06b683          	ld	a3,-80(a3)
    8005751a:	0605                	addi	a2,a2,1
quickjs-nuttx/libbf.c:8244 (discriminator 3)
                carry[j - n_limb1] = (u[j] >> shift) |
    8005751c:	0147d7b3          	srl	a5,a5,s4
quickjs-nuttx/libbf.c:8245 (discriminator 3)
                    (u[j + 1] << (LIMB_BITS - shift));
    80057520:	00b696b3          	sll	a3,a3,a1
quickjs-nuttx/libbf.c:8244 (discriminator 3)
                carry[j - n_limb1] = (u[j] >> shift) |
    80057524:	8fd5                	or	a5,a5,a3
    80057526:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/libbf.c:8243 (discriminator 3)
            for(j = n_limb1; j < nb_mods - 1; j++) {
    8005752a:	09a1                	addi	s3,s3,8
    8005752c:	bdc9                	j	800573fe <ntt_to_limb+0x1fc>
quickjs-nuttx/libbf.c:8250
        }
    }
}
    8005752e:	70b6                	ld	ra,360(sp)
    80057530:	7416                	ld	s0,352(sp)
    80057532:	64f6                	ld	s1,344(sp)
    80057534:	6956                	ld	s2,336(sp)
    80057536:	69b6                	ld	s3,328(sp)
    80057538:	6a16                	ld	s4,320(sp)
    8005753a:	7af2                	ld	s5,312(sp)
    8005753c:	7b52                	ld	s6,304(sp)
    8005753e:	7bb2                	ld	s7,296(sp)
    80057540:	7c12                	ld	s8,288(sp)
    80057542:	6cf2                	ld	s9,280(sp)
    80057544:	6d52                	ld	s10,272(sp)
    80057546:	6db2                	ld	s11,264(sp)
    80057548:	6175                	addi	sp,sp,368
    8005754a:	8082                	ret

000000008005754c <get_trig>:
get_trig():
quickjs-nuttx/libbf.c:7827
{
    8005754c:	715d                	addi	sp,sp,-80
    8005754e:	e486                	sd	ra,72(sp)
    80057550:	e0a2                	sd	s0,64(sp)
    80057552:	fc26                	sd	s1,56(sp)
    80057554:	f84a                	sd	s2,48(sp)
    80057556:	f44e                	sd	s3,40(sp)
    80057558:	f052                	sd	s4,32(sp)
    8005755a:	ec56                	sd	s5,24(sp)
    8005755c:	e85a                	sd	s6,16(sp)
    8005755e:	e45e                	sd	s7,8(sp)
    80057560:	e062                	sd	s8,0(sp)
quickjs-nuttx/libbf.c:7831
    if (k > NTT_TRIG_K_MAX)
    80057562:	47cd                	li	a5,19
    80057564:	02b7d063          	bge	a5,a1,80057584 <get_trig+0x38>
quickjs-nuttx/libbf.c:7832
        return NULL;
    80057568:	4981                	li	s3,0
quickjs-nuttx/libbf.c:7860
}
    8005756a:	60a6                	ld	ra,72(sp)
    8005756c:	6406                	ld	s0,64(sp)
    8005756e:	74e2                	ld	s1,56(sp)
    80057570:	7942                	ld	s2,48(sp)
    80057572:	7a02                	ld	s4,32(sp)
    80057574:	6ae2                	ld	s5,24(sp)
    80057576:	6b42                	ld	s6,16(sp)
    80057578:	6ba2                	ld	s7,8(sp)
    8005757a:	6c02                	ld	s8,0(sp)
    8005757c:	854e                	mv	a0,s3
    8005757e:	79a2                	ld	s3,40(sp)
    80057580:	6161                	addi	sp,sp,80
    80057582:	8082                	ret
    80057584:	02800413          	li	s0,40
    80057588:	47d1                	li	a5,20
    8005758a:	02f607b3          	mul	a5,a2,a5
    8005758e:	892a                	mv	s2,a0
    80057590:	8aae                	mv	s5,a1
    80057592:	8b32                	mv	s6,a2
    80057594:	84b6                	mv	s1,a3
quickjs-nuttx/libbf.c:7834
    tab = s->ntt_trig[m_idx][inverse][k];
    80057596:	02868433          	mul	s0,a3,s0
    8005759a:	943e                	add	s0,s0,a5
    8005759c:	942e                	add	s0,s0,a1
    8005759e:	040e                	slli	s0,s0,0x3
    800575a0:	942a                	add	s0,s0,a0
    800575a2:	6789                	lui	a5,0x2
    800575a4:	97a2                	add	a5,a5,s0
    800575a6:	0b07b983          	ld	s3,176(a5) # 20b0 <asinh-0x7fffdf50>
quickjs-nuttx/libbf.c:7835
    if (tab)
    800575aa:	fc0990e3          	bnez	s3,8005756a <get_trig+0x1e>
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    800575ae:	6108                	ld	a0,0(a0)
get_trig():
quickjs-nuttx/libbf.c:7837
    n2 = (limb_t)1 << (k - 1);
    800575b0:	fff5871b          	addiw	a4,a1,-1
quickjs-nuttx/libbf.c:7838
    m = ntt_mods[m_idx];
    800575b4:	068e                	slli	a3,a3,0x3
    800575b6:	00029797          	auipc	a5,0x29
    800575ba:	6da78793          	addi	a5,a5,1754 # 80080c90 <ntt_mods>
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    800575be:	45c1                	li	a1,16
get_trig():
quickjs-nuttx/libbf.c:7838
    m = ntt_mods[m_idx];
    800575c0:	97b6                	add	a5,a5,a3
quickjs-nuttx/libbf.c:7837
    n2 = (limb_t)1 << (k - 1);
    800575c2:	4a05                	li	s4,1
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    800575c4:	00e595b3          	sll	a1,a1,a4
get_trig():
quickjs-nuttx/libbf.c:7838
    m = ntt_mods[m_idx];
    800575c8:	0007bb83          	ld	s7,0(a5)
quickjs-nuttx/libbf.c:7837
    n2 = (limb_t)1 << (k - 1);
    800575cc:	00ea1a33          	sll	s4,s4,a4
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    800575d0:	cc8ff0ef          	jal	ra,80056a98 <bf_malloc>
    800575d4:	89aa                	mv	s3,a0
get_trig():
quickjs-nuttx/libbf.c:7844
    if (!tab)
    800575d6:	d949                	beqz	a0,80057568 <get_trig+0x1c>
quickjs-nuttx/libbf.c:7847
    c_mul = s->ntt_proot_pow[m_idx][inverse][k];
    800575d8:	06800593          	li	a1,104
    800575dc:	02b484b3          	mul	s1,s1,a1
    800575e0:	03400593          	li	a1,52
    800575e4:	02bb05b3          	mul	a1,s6,a1
    800575e8:	94ae                	add	s1,s1,a1
    800575ea:	015485b3          	add	a1,s1,s5
    800575ee:	058e                	slli	a1,a1,0x3
    800575f0:	95ca                	add	a1,a1,s2
quickjs-nuttx/libbf.c:7848
    c_mul_inv = s->ntt_proot_pow_inv[m_idx][inverse][k];
    800575f2:	6905                	lui	s2,0x1
quickjs-nuttx/libbf.c:7847
    c_mul = s->ntt_proot_pow[m_idx][inverse][k];
    800575f4:	0305bb03          	ld	s6,48(a1)
quickjs-nuttx/libbf.c:7848
    c_mul_inv = s->ntt_proot_pow_inv[m_idx][inverse][k];
    800575f8:	95ca                	add	a1,a1,s2
    800575fa:	0705bc03          	ld	s8,112(a1)
quickjs-nuttx/libbf.c:7849
    for(i = 0; i < n2; i++) {
    800575fe:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:7846
    c = 1;
    80057600:	4485                	li	s1,1
quickjs-nuttx/libbf.c:7849
    for(i = 0; i < n2; i++) {
    80057602:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:7849 (discriminator 1)
    80057604:	014a9763          	bne	s5,s4,80057612 <get_trig+0xc6>
quickjs-nuttx/libbf.c:7858
    s->ntt_trig[m_idx][inverse][k] = tab;
    80057608:	6789                	lui	a5,0x2
    8005760a:	943e                	add	s0,s0,a5
    8005760c:	0b343823          	sd	s3,176(s0)
quickjs-nuttx/libbf.c:7859
    return tab;
    80057610:	bfa9                	j	8005756a <get_trig+0x1e>
quickjs-nuttx/libbf.c:7853 (discriminator 3)
        tab[2 * i] = int_to_ntt_limb(c, m);
    80057612:	00993023          	sd	s1,0(s2) # 1000 <asinh-0x7ffff000>
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463 (discriminator 3)
    return ((dlimb_t)b << LIMB_BITS) / m;
    80057616:	85a6                	mv	a1,s1
    80057618:	865e                	mv	a2,s7
    8005761a:	4681                	li	a3,0
    8005761c:	4501                	li	a0,0
    8005761e:	ff5ac0ef          	jal	ra,80004612 <__udivti3>
mul_mod_fast2():
quickjs-nuttx/libbf.c:7442 (discriminator 3)
    r = a * b - q * m;
    80057622:	036487b3          	mul	a5,s1,s6
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463 (discriminator 3)
    return ((dlimb_t)b << LIMB_BITS) / m;
    80057626:	00a93423          	sd	a0,8(s2)
mul_mod_fast2():
quickjs-nuttx/libbf.c:7441 (discriminator 3)
    q = ((dlimb_t)a * (dlimb_t)b_inv) >> LIMB_BITS;
    8005762a:	0384b4b3          	mulhu	s1,s1,s8
quickjs-nuttx/libbf.c:7442 (discriminator 3)
    r = a * b - q * m;
    8005762e:	029b84b3          	mul	s1,s7,s1
    80057632:	409784b3          	sub	s1,a5,s1
quickjs-nuttx/libbf.c:7443 (discriminator 3)
    if (r >= m)
    80057636:	0174e463          	bltu	s1,s7,8005763e <get_trig+0xf2>
quickjs-nuttx/libbf.c:7444
        r -= m;
    8005763a:	417484b3          	sub	s1,s1,s7
get_trig():
quickjs-nuttx/libbf.c:7849
    for(i = 0; i < n2; i++) {
    8005763e:	0a85                	addi	s5,s5,1
    80057640:	0941                	addi	s2,s2,16
    80057642:	b7c9                	j	80057604 <get_trig+0xb8>

0000000080057644 <ntt_fft>:
ntt_fft():
quickjs-nuttx/libbf.c:7731
{
    80057644:	7119                	addi	sp,sp,-128
    80057646:	e8d2                	sd	s4,80(sp)
    80057648:	ec6e                	sd	s11,24(sp)
    8005764a:	8a3a                	mv	s4,a4
    8005764c:	8dbe                	mv	s11,a5
quickjs-nuttx/libbf.c:7736
    m = ntt_mods[m_idx];
    8005764e:	00381713          	slli	a4,a6,0x3
    80057652:	00029797          	auipc	a5,0x29
    80057656:	63e78793          	addi	a5,a5,1598 # 80080c90 <ntt_mods>
    8005765a:	97ba                	add	a5,a5,a4
    8005765c:	0007be03          	ld	t3,0(a5)
quickjs-nuttx/libbf.c:7731
{
    80057660:	f4a6                	sd	s1,104(sp)
quickjs-nuttx/libbf.c:7738
    n = (limb_t)1 << fft_len_log2;
    80057662:	4485                	li	s1,1
    80057664:	014494b3          	sll	s1,s1,s4
quickjs-nuttx/libbf.c:7731
{
    80057668:	fc5e                	sd	s7,56(sp)
quickjs-nuttx/libbf.c:7741
    stride_in = n / 2;
    8005766a:	0014db93          	srli	s7,s1,0x1
quickjs-nuttx/libbf.c:7731
{
    8005766e:	f8a2                	sd	s0,112(sp)
    80057670:	f0ca                	sd	s2,96(sp)
    80057672:	ecce                	sd	s3,88(sp)
    80057674:	e4d6                	sd	s5,72(sp)
    80057676:	e0da                	sd	s6,64(sp)
    80057678:	f862                	sd	s8,48(sp)
    8005767a:	f466                	sd	s9,40(sp)
    8005767c:	f06a                	sd	s10,32(sp)
    8005767e:	fc86                	sd	ra,120(sp)
    80057680:	8d2a                	mv	s10,a0
    80057682:	8c2e                	mv	s8,a1
    80057684:	8432                	mv	s0,a2
    80057686:	8b36                	mv	s6,a3
    80057688:	8cc2                	mv	s9,a6
quickjs-nuttx/libbf.c:7737
    m2 = 2 * m;
    8005768a:	001e1993          	slli	s3,t3,0x1
quickjs-nuttx/libbf.c:7745
    while (nb_blocks != 2) {
    8005768e:	003b9913          	slli	s2,s7,0x3
quickjs-nuttx/libbf.c:7740
    fft_per_block = 1;
    80057692:	4a85                	li	s5,1
quickjs-nuttx/libbf.c:7745
    while (nb_blocks != 2) {
    80057694:	4789                	li	a5,2
    80057696:	02f49663          	bne	s1,a5,800576c2 <ntt_fft+0x7e>
    8005769a:	0b92                	slli	s7,s7,0x4
    8005769c:	4701                	li	a4,0
quickjs-nuttx/libbf.c:7776 (discriminator 1)
    for(k = 0; k < stride_in; k++) {
    8005769e:	0b2b9e63          	bne	s7,s2,8005775a <ntt_fft+0x116>
quickjs-nuttx/libbf.c:7784
    return 0;
    800576a2:	4501                	li	a0,0
quickjs-nuttx/libbf.c:7785
}
    800576a4:	70e6                	ld	ra,120(sp)
    800576a6:	7446                	ld	s0,112(sp)
    800576a8:	74a6                	ld	s1,104(sp)
    800576aa:	7906                	ld	s2,96(sp)
    800576ac:	69e6                	ld	s3,88(sp)
    800576ae:	6a46                	ld	s4,80(sp)
    800576b0:	6aa6                	ld	s5,72(sp)
    800576b2:	6b06                	ld	s6,64(sp)
    800576b4:	7be2                	ld	s7,56(sp)
    800576b6:	7c42                	ld	s8,48(sp)
    800576b8:	7ca2                	ld	s9,40(sp)
    800576ba:	7d02                	ld	s10,32(sp)
    800576bc:	6de2                	ld	s11,24(sp)
    800576be:	6109                	addi	sp,sp,128
    800576c0:	8082                	ret
quickjs-nuttx/libbf.c:7749
        trig = get_trig(s, l, inverse, m_idx);
    800576c2:	86e6                	mv	a3,s9
    800576c4:	866e                	mv	a2,s11
    800576c6:	85d2                	mv	a1,s4
    800576c8:	856a                	mv	a0,s10
    800576ca:	e472                	sd	t3,8(sp)
quickjs-nuttx/libbf.c:7746
        nb_blocks >>= 1;
    800576cc:	8085                	srli	s1,s1,0x1
quickjs-nuttx/libbf.c:7749
        trig = get_trig(s, l, inverse, m_idx);
    800576ce:	e7fff0ef          	jal	ra,8005754c <get_trig>
quickjs-nuttx/libbf.c:7750
        if (!trig)
    800576d2:	cd55                	beqz	a0,8005778e <ntt_fft+0x14a>
    800576d4:	6e22                	ld	t3,8(sp)
quickjs-nuttx/libbf.c:7766
            p += 2 * fft_per_block;
    800576d6:	001a9e93          	slli	t4,s5,0x1
    800576da:	003a9f13          	slli	t5,s5,0x3
quickjs-nuttx/libbf.c:7752
        for(i = 0; i < nb_blocks; i++) {
    800576de:	4781                	li	a5,0
quickjs-nuttx/libbf.c:7748
        k = 0;
    800576e0:	4601                	li	a2,0
quickjs-nuttx/libbf.c:7747
        p = 0;
    800576e2:	4681                	li	a3,0
quickjs-nuttx/libbf.c:7752 (discriminator 1)
        for(i = 0; i < nb_blocks; i++) {
    800576e4:	00979863          	bne	a5,s1,800576f4 <ntt_fft+0xb0>
quickjs-nuttx/libbf.c:7769
        l--;
    800576e8:	87a2                	mv	a5,s0
quickjs-nuttx/libbf.c:7768
        fft_per_block <<= 1;
    800576ea:	8af6                	mv	s5,t4
quickjs-nuttx/libbf.c:7771
        tab_in = tab_out;
    800576ec:	845a                	mv	s0,s6
quickjs-nuttx/libbf.c:7769
        l--;
    800576ee:	3a7d                	addiw	s4,s4,-1
    800576f0:	8b3e                	mv	s6,a5
    800576f2:	b74d                	j	80057694 <ntt_fft+0x50>
quickjs-nuttx/libbf.c:7753
            c = trig[0];
    800576f4:	00369313          	slli	t1,a3,0x3
    800576f8:	00361713          	slli	a4,a2,0x3
    800576fc:	00053f83          	ld	t6,0(a0)
quickjs-nuttx/libbf.c:7754
            c_inv = trig[1];
    80057700:	00853283          	ld	t0,8(a0)
quickjs-nuttx/libbf.c:7755
            trig += 2;
    80057704:	935a                	add	t1,t1,s6
    80057706:	0541                	addi	a0,a0,16
quickjs-nuttx/libbf.c:7756
            for(j = 0; j < fft_per_block; j++) {
    80057708:	9722                	add	a4,a4,s0
    8005770a:	4581                	li	a1,0
quickjs-nuttx/libbf.c:7756 (discriminator 1)
    8005770c:	00ba9663          	bne	s5,a1,80057718 <ntt_fft+0xd4>
quickjs-nuttx/libbf.c:7765 (discriminator 2)
            k += fft_per_block;
    80057710:	9656                	add	a2,a2,s5
quickjs-nuttx/libbf.c:7766 (discriminator 2)
            p += 2 * fft_per_block;
    80057712:	96f6                	add	a3,a3,t4
quickjs-nuttx/libbf.c:7752 (discriminator 2)
        for(i = 0; i < nb_blocks; i++) {
    80057714:	0785                	addi	a5,a5,1
    80057716:	b7f9                	j	800576e4 <ntt_fft+0xa0>
quickjs-nuttx/libbf.c:7758 (discriminator 3)
                a1 = tab_in[k + j + stride_in];
    80057718:	01270833          	add	a6,a4,s2
quickjs-nuttx/libbf.c:7757 (discriminator 3)
                a0 = tab_in[k + j];
    8005771c:	00073883          	ld	a7,0(a4)
quickjs-nuttx/libbf.c:7758 (discriminator 3)
                a1 = tab_in[k + j + stride_in];
    80057720:	00083383          	ld	t2,0(a6)
add_mod():
quickjs-nuttx/libbf.c:7378 (discriminator 3)
    r = a + b;
    80057724:	00788833          	add	a6,a7,t2
quickjs-nuttx/libbf.c:7379 (discriminator 3)
    if (r >= m)
    80057728:	01386463          	bltu	a6,s3,80057730 <ntt_fft+0xec>
quickjs-nuttx/libbf.c:7380
        r -= m;
    8005772c:	41380833          	sub	a6,a6,s3
ntt_fft():
quickjs-nuttx/libbf.c:7760
                b1 = a0 - a1 + m2;
    80057730:	98ce                	add	a7,a7,s3
    80057732:	407888b3          	sub	a7,a7,t2
quickjs-nuttx/libbf.c:7762
                tab_out[p + j] = b0;
    80057736:	01033023          	sd	a6,0(t1)
mul_mod_fast3():
quickjs-nuttx/libbf.c:7457
    r = a * b - q * m;
    8005773a:	031f8833          	mul	a6,t6,a7
ntt_fft():
quickjs-nuttx/libbf.c:7763
                tab_out[p + j + fft_per_block] = b1;
    8005773e:	01e303b3          	add	t2,t1,t5
quickjs-nuttx/libbf.c:7756
            for(j = 0; j < fft_per_block; j++) {
    80057742:	0585                	addi	a1,a1,1
    80057744:	0321                	addi	t1,t1,8
    80057746:	0721                	addi	a4,a4,8
mul_mod_fast3():
quickjs-nuttx/libbf.c:7456
    q = ((dlimb_t)a * (dlimb_t)b_inv) >> LIMB_BITS;
    80057748:	0312b8b3          	mulhu	a7,t0,a7
quickjs-nuttx/libbf.c:7457
    r = a * b - q * m;
    8005774c:	031e08b3          	mul	a7,t3,a7
    80057750:	411808b3          	sub	a7,a6,a7
ntt_fft():
quickjs-nuttx/libbf.c:7763
                tab_out[p + j + fft_per_block] = b1;
    80057754:	0113b023          	sd	a7,0(t2)
quickjs-nuttx/libbf.c:7756
            for(j = 0; j < fft_per_block; j++) {
    80057758:	bf55                	j	8005770c <ntt_fft+0xc8>
quickjs-nuttx/libbf.c:7777 (discriminator 3)
        a0 = tab_in[k];
    8005775a:	00e407b3          	add	a5,s0,a4
    8005775e:	6390                	ld	a2,0(a5)
quickjs-nuttx/libbf.c:7778 (discriminator 3)
        a1 = tab_in[k + stride_in];
    80057760:	012407b3          	add	a5,s0,s2
    80057764:	639c                	ld	a5,0(a5)
add_mod():
quickjs-nuttx/libbf.c:7378 (discriminator 3)
    r = a + b;
    80057766:	00f606b3          	add	a3,a2,a5
quickjs-nuttx/libbf.c:7379 (discriminator 3)
    if (r >= m)
    8005776a:	0136e463          	bltu	a3,s3,80057772 <ntt_fft+0x12e>
quickjs-nuttx/libbf.c:7380
        r -= m;
    8005776e:	413686b3          	sub	a3,a3,s3
sub_mod():
quickjs-nuttx/libbf.c:7388
    r = a - b;
    80057772:	40f607b3          	sub	a5,a2,a5
quickjs-nuttx/libbf.c:7389
    if (r > a)
    80057776:	00f67363          	bgeu	a2,a5,8005777c <ntt_fft+0x138>
quickjs-nuttx/libbf.c:7390
        r += m;
    8005777a:	97ce                	add	a5,a5,s3
ntt_fft():
quickjs-nuttx/libbf.c:7781
        tab_out[k] = b0;
    8005777c:	00ec0633          	add	a2,s8,a4
    80057780:	e214                	sd	a3,0(a2)
quickjs-nuttx/libbf.c:7782
        tab_out[k + stride_in] = b1;
    80057782:	012c06b3          	add	a3,s8,s2
    80057786:	e29c                	sd	a5,0(a3)
quickjs-nuttx/libbf.c:7776
    for(k = 0; k < stride_in; k++) {
    80057788:	0721                	addi	a4,a4,8
    8005778a:	0921                	addi	s2,s2,8
    8005778c:	bf09                	j	8005769e <ntt_fft+0x5a>
quickjs-nuttx/libbf.c:7751
            return -1;
    8005778e:	557d                	li	a0,-1
    80057790:	bf11                	j	800576a4 <ntt_fft+0x60>

0000000080057792 <mul_trig>:
mul_trig():
quickjs-nuttx/libbf.c:7812
{
    80057792:	7139                	addi	sp,sp,-64
    80057794:	e852                	sd	s4,16(sp)
    80057796:	8a32                	mv	s4,a2
    80057798:	f822                	sd	s0,48(sp)
    8005779a:	f426                	sd	s1,40(sp)
    8005779c:	ec4e                	sd	s3,24(sp)
    8005779e:	84aa                	mv	s1,a0
    800577a0:	842e                	mv	s0,a1
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    800577a2:	8636                	mv	a2,a3
mul_trig():
quickjs-nuttx/libbf.c:7812
{
    800577a4:	89b6                	mv	s3,a3
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    800577a6:	4501                	li	a0,0
    800577a8:	4681                	li	a3,0
    800577aa:	85d2                	mv	a1,s4
mul_trig():
quickjs-nuttx/libbf.c:7812
{
    800577ac:	f04a                	sd	s2,32(sp)
    800577ae:	e456                	sd	s5,8(sp)
    800577b0:	e05a                	sd	s6,0(sp)
    800577b2:	040e                	slli	s0,s0,0x3
    800577b4:	fc06                	sd	ra,56(sp)
    800577b6:	8aba                	mv	s5,a4
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    800577b8:	e5bac0ef          	jal	ra,80004612 <__udivti3>
    800577bc:	00848933          	add	s2,s1,s0
    800577c0:	8b2a                	mv	s6,a0
mul_trig():
quickjs-nuttx/libbf.c:7815
    c0 = 1;
    800577c2:	4405                	li	s0,1
quickjs-nuttx/libbf.c:7817 (discriminator 1)
    for(i = 0; i < n; i++) {
    800577c4:	01249c63          	bne	s1,s2,800577dc <mul_trig+0x4a>
quickjs-nuttx/libbf.c:7821
}
    800577c8:	70e2                	ld	ra,56(sp)
    800577ca:	7442                	ld	s0,48(sp)
    800577cc:	74a2                	ld	s1,40(sp)
    800577ce:	7902                	ld	s2,32(sp)
    800577d0:	69e2                	ld	s3,24(sp)
    800577d2:	6a42                	ld	s4,16(sp)
    800577d4:	6aa2                	ld	s5,8(sp)
    800577d6:	6b02                	ld	s6,0(sp)
    800577d8:	6121                	addi	sp,sp,64
    800577da:	8082                	ret
mul_mod_fast():
quickjs-nuttx/libbf.c:7421 (discriminator 3)
    r = (dlimb_t)a * (dlimb_t)b;
    800577dc:	6088                	ld	a0,0(s1)
quickjs-nuttx/libbf.c:7422 (discriminator 3)
    return mod_fast(r, m, m_inv);
    800577de:	86d6                	mv	a3,s5
    800577e0:	864e                	mv	a2,s3
quickjs-nuttx/libbf.c:7421 (discriminator 3)
    r = (dlimb_t)a * (dlimb_t)b;
    800577e2:	02a435b3          	mulhu	a1,s0,a0
quickjs-nuttx/libbf.c:7422 (discriminator 3)
    return mod_fast(r, m, m_inv);
    800577e6:	02a40533          	mul	a0,s0,a0
    800577ea:	d88ff0ef          	jal	ra,80056d72 <mod_fast>
mul_mod_fast2():
quickjs-nuttx/libbf.c:7442 (discriminator 3)
    r = a * b - q * m;
    800577ee:	034407b3          	mul	a5,s0,s4
mul_trig():
quickjs-nuttx/libbf.c:7818 (discriminator 3)
        buf[i] = mul_mod_fast(buf[i], c0, m, m_inv);
    800577f2:	e088                	sd	a0,0(s1)
mul_mod_fast2():
quickjs-nuttx/libbf.c:7441 (discriminator 3)
    q = ((dlimb_t)a * (dlimb_t)b_inv) >> LIMB_BITS;
    800577f4:	028b3433          	mulhu	s0,s6,s0
quickjs-nuttx/libbf.c:7442 (discriminator 3)
    r = a * b - q * m;
    800577f8:	02898433          	mul	s0,s3,s0
    800577fc:	40878433          	sub	s0,a5,s0
quickjs-nuttx/libbf.c:7443 (discriminator 3)
    if (r >= m)
    80057800:	01346463          	bltu	s0,s3,80057808 <mul_trig+0x76>
quickjs-nuttx/libbf.c:7444
        r -= m;
    80057804:	41340433          	sub	s0,s0,s3
mul_trig():
quickjs-nuttx/libbf.c:7817
    for(i = 0; i < n; i++) {
    80057808:	04a1                	addi	s1,s1,8
    8005780a:	bf6d                	j	800577c4 <mul_trig+0x32>

000000008005780c <ntt_fft_partial>:
ntt_fft_partial():
quickjs-nuttx/libbf.c:7892
{
    8005780c:	7135                	addi	sp,sp,-160
    8005780e:	e922                	sd	s0,144(sp)
    80057810:	e526                	sd	s1,136(sp)
    80057812:	e14a                	sd	s2,128(sp)
    80057814:	fcce                	sd	s3,120(sp)
    80057816:	f8d2                	sd	s4,112(sp)
    80057818:	f4d6                	sd	s5,104(sp)
    8005781a:	e4e6                	sd	s9,72(sp)
    8005781c:	fc6e                	sd	s11,56(sp)
    8005781e:	ed06                	sd	ra,152(sp)
    80057820:	f0da                	sd	s6,96(sp)
    80057822:	ecde                	sd	s7,88(sp)
    80057824:	e8e2                	sd	s8,80(sp)
    80057826:	e0ea                	sd	s10,64(sp)
    80057828:	842a                	mv	s0,a0
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    8005782a:	6108                	ld	a0,0(a0)
ntt_fft_partial():
quickjs-nuttx/libbf.c:7897
    buf3 = ntt_malloc(s, sizeof(NTTLimb) * n1);
    8005782c:	00371c93          	slli	s9,a4,0x3
quickjs-nuttx/libbf.c:7892
{
    80057830:	e82e                	sd	a1,16(sp)
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    80057832:	85e6                	mv	a1,s9
ntt_fft_partial():
quickjs-nuttx/libbf.c:7892
{
    80057834:	ec32                	sd	a2,24(sp)
    80057836:	8ab6                	mv	s5,a3
    80057838:	84ba                	mv	s1,a4
    8005783a:	8a3e                	mv	s4,a5
    8005783c:	89c2                	mv	s3,a6
    8005783e:	8dc6                	mv	s11,a7
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    80057840:	a58ff0ef          	jal	ra,80056a98 <bf_malloc>
    80057844:	892a                	mv	s2,a0
ntt_fft_partial():
quickjs-nuttx/libbf.c:7898
    if (!buf3)
    80057846:	cd11                	beqz	a0,80057862 <ntt_fft_partial+0x56>
quickjs-nuttx/libbf.c:7900
    if (k2 == 0) {
    80057848:	020a9863          	bnez	s5,80057878 <ntt_fft_partial+0x6c>
quickjs-nuttx/libbf.c:7901
        if (ntt_fft(s, buf1, buf1, buf3, k1, inverse, m_idx))
    8005784c:	6642                	ld	a2,16(sp)
    8005784e:	6762                	ld	a4,24(sp)
    80057850:	86aa                	mv	a3,a0
    80057852:	000d881b          	sext.w	a6,s11
    80057856:	87ce                	mv	a5,s3
    80057858:	85b2                	mv	a1,a2
    8005785a:	8522                	mv	a0,s0
    8005785c:	de9ff0ef          	jal	ra,80057644 <ntt_fft>
    80057860:	cd3d                	beqz	a0,800578de <ntt_fft_partial+0xd2>
quickjs-nuttx/libbf.c:7896
    buf2 = NULL;
    80057862:	4b81                	li	s7,0
quickjs-nuttx/libbf.c:7940
    ntt_free(s, buf2);
    80057864:	6008                	ld	a0,0(s0)
    80057866:	85de                	mv	a1,s7
    80057868:	997ff0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:7941
    ntt_free(s, buf3);
    8005786c:	6008                	ld	a0,0(s0)
    8005786e:	85ca                	mv	a1,s2
    80057870:	98fff0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:7942
    return -1;
    80057874:	557d                	li	a0,-1
    80057876:	a88d                	j	800578e8 <ntt_fft_partial+0xdc>
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    80057878:	6008                	ld	a0,0(s0)
    8005787a:	00749593          	slli	a1,s1,0x7
    8005787e:	a1aff0ef          	jal	ra,80056a98 <bf_malloc>
    80057882:	8baa                	mv	s7,a0
ntt_fft_partial():
quickjs-nuttx/libbf.c:7906
        if (!buf2)
    80057884:	dd79                	beqz	a0,80057862 <ntt_fft_partial+0x56>
quickjs-nuttx/libbf.c:7908
        m = ntt_mods[m_idx];
    80057886:	003d9793          	slli	a5,s11,0x3
    8005788a:	00029717          	auipc	a4,0x29
    8005788e:	40670713          	addi	a4,a4,1030 # 80080c90 <ntt_mods>
    80057892:	973e                	add	a4,a4,a5
quickjs-nuttx/libbf.c:7909
        m_inv = s->ntt_mods_div[m_idx];
    80057894:	97a2                	add	a5,a5,s0
quickjs-nuttx/libbf.c:7908
        m = ntt_mods[m_idx];
    80057896:	6318                	ld	a4,0(a4)
quickjs-nuttx/libbf.c:7909
        m_inv = s->ntt_mods_div[m_idx];
    80057898:	0087bd03          	ld	s10,8(a5)
quickjs-nuttx/libbf.c:7910
        c0 = s->ntt_proot_pow[m_idx][inverse][k1 + k2];
    8005789c:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:7908
        m = ntt_mods[m_idx];
    8005789e:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libbf.c:7910
        c0 = s->ntt_proot_pow[m_idx][inverse][k1 + k2];
    800578a0:	03400713          	li	a4,52
    800578a4:	00fa8abb          	addw	s5,s5,a5
    800578a8:	06800793          	li	a5,104
    800578ac:	02fd87b3          	mul	a5,s11,a5
quickjs-nuttx/libbf.c:7913
        for(j = 0; j < n2; j += strip_len) {
    800578b0:	4b01                	li	s6,0
quickjs-nuttx/libbf.c:7911
        c_mul = 1;
    800578b2:	4c05                	li	s8,1
quickjs-nuttx/libbf.c:7910
        c0 = s->ntt_proot_pow[m_idx][inverse][k1 + k2];
    800578b4:	02e98733          	mul	a4,s3,a4
    800578b8:	97ba                	add	a5,a5,a4
    800578ba:	97d6                	add	a5,a5,s5
    800578bc:	0799                	addi	a5,a5,6
    800578be:	078e                	slli	a5,a5,0x3
    800578c0:	97a2                	add	a5,a5,s0
    800578c2:	639c                	ld	a5,0(a5)
    800578c4:	f03e                	sd	a5,32(sp)
quickjs-nuttx/libbf.c:7912
        assert((n2 % strip_len) == 0);
    800578c6:	00fa7793          	andi	a5,s4,15
    800578ca:	ef95                	bnez	a5,80057906 <ntt_fft_partial+0xfa>
quickjs-nuttx/libbf.c:7922
                if (ntt_fft(s, buf2 + l * n1, buf2 + l * n1, buf3, k1, inverse, m_idx))
    800578cc:	000d879b          	sext.w	a5,s11
    800578d0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:7913 (discriminator 1)
        for(j = 0; j < n2; j += strip_len) {
    800578d2:	0d4b6b63          	bltu	s6,s4,800579a8 <ntt_fft_partial+0x19c>
quickjs-nuttx/libbf.c:7935
        ntt_free(s, buf2);
    800578d6:	6008                	ld	a0,0(s0)
    800578d8:	85de                	mv	a1,s7
    800578da:	925ff0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:7937
    ntt_free(s, buf3);
    800578de:	6008                	ld	a0,0(s0)
    800578e0:	85ca                	mv	a1,s2
    800578e2:	91dff0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:7938
    return 0;
    800578e6:	4501                	li	a0,0
quickjs-nuttx/libbf.c:7943
}
    800578e8:	60ea                	ld	ra,152(sp)
    800578ea:	644a                	ld	s0,144(sp)
    800578ec:	64aa                	ld	s1,136(sp)
    800578ee:	690a                	ld	s2,128(sp)
    800578f0:	79e6                	ld	s3,120(sp)
    800578f2:	7a46                	ld	s4,112(sp)
    800578f4:	7aa6                	ld	s5,104(sp)
    800578f6:	7b06                	ld	s6,96(sp)
    800578f8:	6be6                	ld	s7,88(sp)
    800578fa:	6c46                	ld	s8,80(sp)
    800578fc:	6ca6                	ld	s9,72(sp)
    800578fe:	6d06                	ld	s10,64(sp)
    80057900:	7de2                	ld	s11,56(sp)
    80057902:	610d                	addi	sp,sp,160
    80057904:	8082                	ret
quickjs-nuttx/libbf.c:7912 (discriminator 1)
        assert((n2 % strip_len) == 0);
    80057906:	6589                	lui	a1,0x2
    80057908:	4601                	li	a2,0
    8005790a:	ee858593          	addi	a1,a1,-280 # 1ee8 <asinh-0x7fffe118>
    8005790e:	00029517          	auipc	a0,0x29
    80057912:	cb250513          	addi	a0,a0,-846 # 800805c0 <std_name.0+0x18>
    80057916:	046090ef          	jal	ra,8006095c <__assert>
    8005791a:	67c2                	ld	a5,16(sp)
    8005791c:	00361713          	slli	a4,a2,0x3
quickjs-nuttx/libbf.c:7915
                for(l = 0; l < strip_len; l++) {
    80057920:	4581                	li	a1,0
    80057922:	973e                	add	a4,a4,a5
    80057924:	00369793          	slli	a5,a3,0x3
    80057928:	97de                	add	a5,a5,s7
quickjs-nuttx/libbf.c:7916 (discriminator 3)
                    buf2[i + l * n1] = buf1[i * n2 + (j + l)];
    8005792a:	6308                	ld	a0,0(a4)
quickjs-nuttx/libbf.c:7915 (discriminator 3)
                for(l = 0; l < strip_len; l++) {
    8005792c:	0585                	addi	a1,a1,1
    8005792e:	0721                	addi	a4,a4,8
quickjs-nuttx/libbf.c:7916 (discriminator 3)
                    buf2[i + l * n1] = buf1[i * n2 + (j + l)];
    80057930:	e388                	sd	a0,0(a5)
quickjs-nuttx/libbf.c:7915 (discriminator 3)
                for(l = 0; l < strip_len; l++) {
    80057932:	4541                	li	a0,16
    80057934:	97e6                	add	a5,a5,s9
    80057936:	fea59ae3          	bne	a1,a0,8005792a <ntt_fft_partial+0x11e>
quickjs-nuttx/libbf.c:7914 (discriminator 2)
            for(i = 0; i < n1; i++) {
    8005793a:	0685                	addi	a3,a3,1
    8005793c:	9652                	add	a2,a2,s4
quickjs-nuttx/libbf.c:7914 (discriminator 1)
    8005793e:	fc969ee3          	bne	a3,s1,8005791a <ntt_fft_partial+0x10e>
quickjs-nuttx/libbf.c:7914
    80057942:	8ade                	mv	s5,s7
    80057944:	4dc1                	li	s11,16
quickjs-nuttx/libbf.c:7920
                if (inverse)
    80057946:	00098963          	beqz	s3,80057958 <ntt_fft_partial+0x14c>
quickjs-nuttx/libbf.c:7921
                    mul_trig(buf2 + l * n1, n1, c_mul, m, m_inv);
    8005794a:	66a2                	ld	a3,8(sp)
    8005794c:	876a                	mv	a4,s10
    8005794e:	8662                	mv	a2,s8
    80057950:	85a6                	mv	a1,s1
    80057952:	8556                	mv	a0,s5
    80057954:	e3fff0ef          	jal	ra,80057792 <mul_trig>
quickjs-nuttx/libbf.c:7922
                if (ntt_fft(s, buf2 + l * n1, buf2 + l * n1, buf3, k1, inverse, m_idx))
    80057958:	7822                	ld	a6,40(sp)
    8005795a:	6762                	ld	a4,24(sp)
    8005795c:	87ce                	mv	a5,s3
    8005795e:	86ca                	mv	a3,s2
    80057960:	8656                	mv	a2,s5
    80057962:	85d6                	mv	a1,s5
    80057964:	8522                	mv	a0,s0
    80057966:	cdfff0ef          	jal	ra,80057644 <ntt_fft>
    8005796a:	ee051de3          	bnez	a0,80057864 <ntt_fft_partial+0x58>
quickjs-nuttx/libbf.c:7924
                if (!inverse)
    8005796e:	00099963          	bnez	s3,80057980 <ntt_fft_partial+0x174>
quickjs-nuttx/libbf.c:7925
                    mul_trig(buf2 + l * n1, n1, c_mul, m, m_inv);
    80057972:	66a2                	ld	a3,8(sp)
    80057974:	876a                	mv	a4,s10
    80057976:	8662                	mv	a2,s8
    80057978:	85a6                	mv	a1,s1
    8005797a:	8556                	mv	a0,s5
    8005797c:	e17ff0ef          	jal	ra,80057792 <mul_trig>
mul_mod_fast():
quickjs-nuttx/libbf.c:7421 (discriminator 2)
    r = (dlimb_t)a * (dlimb_t)b;
    80057980:	7782                	ld	a5,32(sp)
quickjs-nuttx/libbf.c:7422 (discriminator 2)
    return mod_fast(r, m, m_inv);
    80057982:	6622                	ld	a2,8(sp)
    80057984:	86ea                	mv	a3,s10
quickjs-nuttx/libbf.c:7421 (discriminator 2)
    r = (dlimb_t)a * (dlimb_t)b;
    80057986:	02fc35b3          	mulhu	a1,s8,a5
ntt_fft_partial():
quickjs-nuttx/libbf.c:7919 (discriminator 2)
            for(l = 0; l < strip_len; l++) {
    8005798a:	1dfd                	addi	s11,s11,-1
    8005798c:	9ae6                	add	s5,s5,s9
mul_mod_fast():
quickjs-nuttx/libbf.c:7422 (discriminator 2)
    return mod_fast(r, m, m_inv);
    8005798e:	02fc0533          	mul	a0,s8,a5
    80057992:	be0ff0ef          	jal	ra,80056d72 <mod_fast>
    80057996:	8c2a                	mv	s8,a0
ntt_fft_partial():
quickjs-nuttx/libbf.c:7919 (discriminator 2)
            for(l = 0; l < strip_len; l++) {
    80057998:	fa0d97e3          	bnez	s11,80057946 <ntt_fft_partial+0x13a>
    8005799c:	865a                	mv	a2,s6
quickjs-nuttx/libbf.c:7929
            for(i = 0; i < n1; i++) {
    8005799e:	4681                	li	a3,0
quickjs-nuttx/libbf.c:7929 (discriminator 1)
    800579a0:	00969763          	bne	a3,s1,800579ae <ntt_fft_partial+0x1a2>
quickjs-nuttx/libbf.c:7913 (discriminator 2)
        for(j = 0; j < n2; j += strip_len) {
    800579a4:	0b41                	addi	s6,s6,16
    800579a6:	b735                	j	800578d2 <ntt_fft_partial+0xc6>
    800579a8:	865a                	mv	a2,s6
quickjs-nuttx/libbf.c:7914
            for(i = 0; i < n1; i++) {
    800579aa:	4681                	li	a3,0
    800579ac:	bf49                	j	8005793e <ntt_fft_partial+0x132>
    800579ae:	65c2                	ld	a1,16(sp)
    800579b0:	00369713          	slli	a4,a3,0x3
    800579b4:	00361793          	slli	a5,a2,0x3
    800579b8:	97ae                	add	a5,a5,a1
    800579ba:	975e                	add	a4,a4,s7
quickjs-nuttx/libbf.c:7930
                for(l = 0; l < strip_len; l++) {
    800579bc:	4581                	li	a1,0
quickjs-nuttx/libbf.c:7931 (discriminator 3)
                    buf1[i * n2 + (j + l)] = buf2[i + l *n1];
    800579be:	6308                	ld	a0,0(a4)
quickjs-nuttx/libbf.c:7930 (discriminator 3)
                for(l = 0; l < strip_len; l++) {
    800579c0:	0585                	addi	a1,a1,1
    800579c2:	9766                	add	a4,a4,s9
quickjs-nuttx/libbf.c:7931 (discriminator 3)
                    buf1[i * n2 + (j + l)] = buf2[i + l *n1];
    800579c4:	e388                	sd	a0,0(a5)
quickjs-nuttx/libbf.c:7930 (discriminator 3)
                for(l = 0; l < strip_len; l++) {
    800579c6:	4541                	li	a0,16
    800579c8:	07a1                	addi	a5,a5,8
    800579ca:	fea59ae3          	bne	a1,a0,800579be <ntt_fft_partial+0x1b2>
quickjs-nuttx/libbf.c:7929 (discriminator 2)
            for(i = 0; i < n1; i++) {
    800579ce:	0685                	addi	a3,a3,1
    800579d0:	9652                	add	a2,a2,s4
    800579d2:	b7f9                	j	800579a0 <ntt_fft_partial+0x194>

00000000800579d4 <ntt_conv>:
ntt_conv():
quickjs-nuttx/libbf.c:7949
{
    800579d4:	7175                	addi	sp,sp,-144
    800579d6:	e122                	sd	s0,128(sp)
    800579d8:	fca6                	sd	s1,120(sp)
    800579da:	f4ce                	sd	s3,104(sp)
    800579dc:	f0d2                	sd	s4,96(sp)
    800579de:	e8da                	sd	s6,80(sp)
    800579e0:	e0e2                	sd	s8,64(sp)
    800579e2:	fc66                	sd	s9,56(sp)
    800579e4:	8b3e                	mv	s6,a5
    800579e6:	e506                	sd	ra,136(sp)
    800579e8:	f8ca                	sd	s2,112(sp)
    800579ea:	ecd6                	sd	s5,88(sp)
    800579ec:	e4de                	sd	s7,72(sp)
    800579ee:	f86a                	sd	s10,48(sp)
    800579f0:	f46e                	sd	s11,40(sp)
quickjs-nuttx/libbf.c:7953
    if (k <= NTT_TRIG_K_MAX) {
    800579f2:	47cd                	li	a5,19
quickjs-nuttx/libbf.c:7949
{
    800579f4:	842a                	mv	s0,a0
    800579f6:	89ae                	mv	s3,a1
    800579f8:	8a32                	mv	s4,a2
    800579fa:	8c36                	mv	s8,a3
    800579fc:	8cba                	mv	s9,a4
    800579fe:	84b6                	mv	s1,a3
quickjs-nuttx/libbf.c:7953
    if (k <= NTT_TRIG_K_MAX) {
    80057a00:	00d7d863          	bge	a5,a3,80057a10 <ntt_conv+0x3c>
quickjs-nuttx/libbf.c:7957
        k1 = bf_min(k / 2, NTT_TRIG_K_MAX);
    80057a04:	4016d493          	srai	s1,a3,0x1
bf_min():
quickjs-nuttx/libbf.h:188
    80057a08:	47c9                	li	a5,18
    80057a0a:	0097d363          	bge	a5,s1,80057a10 <ntt_conv+0x3c>
    80057a0e:	44cd                	li	s1,19
ntt_conv():
quickjs-nuttx/libbf.c:7959
    k2 = k - k1;
    80057a10:	409c0bbb          	subw	s7,s8,s1
quickjs-nuttx/libbf.c:7960
    n1 = (limb_t)1 << k1;
    80057a14:	4905                	li	s2,1
    80057a16:	00991ab3          	sll	s5,s2,s1
quickjs-nuttx/libbf.c:7961
    n2 = (limb_t)1 << k2;
    80057a1a:	01791933          	sll	s2,s2,s7
quickjs-nuttx/libbf.c:7963
    if (ntt_fft_partial(s, buf1, k1, k2, n1, n2, 0, m_idx))
    80057a1e:	88da                	mv	a7,s6
    80057a20:	4801                	li	a6,0
    80057a22:	87ca                	mv	a5,s2
    80057a24:	8756                	mv	a4,s5
    80057a26:	86de                	mv	a3,s7
    80057a28:	8626                	mv	a2,s1
    80057a2a:	85ce                	mv	a1,s3
    80057a2c:	8522                	mv	a0,s0
    80057a2e:	ddfff0ef          	jal	ra,8005780c <ntt_fft_partial>
    80057a32:	c10d                	beqz	a0,80057a54 <ntt_conv+0x80>
quickjs-nuttx/libbf.c:7964
        return -1;
    80057a34:	557d                	li	a0,-1
quickjs-nuttx/libbf.c:7977
}
    80057a36:	60aa                	ld	ra,136(sp)
    80057a38:	640a                	ld	s0,128(sp)
    80057a3a:	74e6                	ld	s1,120(sp)
    80057a3c:	7946                	ld	s2,112(sp)
    80057a3e:	79a6                	ld	s3,104(sp)
    80057a40:	7a06                	ld	s4,96(sp)
    80057a42:	6ae6                	ld	s5,88(sp)
    80057a44:	6b46                	ld	s6,80(sp)
    80057a46:	6ba6                	ld	s7,72(sp)
    80057a48:	6c06                	ld	s8,64(sp)
    80057a4a:	7ce2                	ld	s9,56(sp)
    80057a4c:	7d42                	ld	s10,48(sp)
    80057a4e:	7da2                	ld	s11,40(sp)
    80057a50:	6149                	addi	sp,sp,144
    80057a52:	8082                	ret
quickjs-nuttx/libbf.c:7965
    if (ntt_fft_partial(s, buf2, k1, k2, n1, n2, 0, m_idx))
    80057a54:	88da                	mv	a7,s6
    80057a56:	4801                	li	a6,0
    80057a58:	87ca                	mv	a5,s2
    80057a5a:	8756                	mv	a4,s5
    80057a5c:	86de                	mv	a3,s7
    80057a5e:	8626                	mv	a2,s1
    80057a60:	85d2                	mv	a1,s4
    80057a62:	8522                	mv	a0,s0
    80057a64:	da9ff0ef          	jal	ra,8005780c <ntt_fft_partial>
    80057a68:	f571                	bnez	a0,80057a34 <ntt_conv+0x60>
quickjs-nuttx/libbf.c:7970
        for(i = 0; i < n1; i++) {
    80057a6a:	4d01                	li	s10,0
quickjs-nuttx/libbf.c:7967
    if (k2 == 0) {
    80057a6c:	0c0b9763          	bnez	s7,80057b3a <ntt_conv+0x166>
quickjs-nuttx/libbf.c:7968
        ntt_vec_mul(s, buf1, buf2, k, k_tot, m_idx);
    80057a70:	000b081b          	sext.w	a6,s6
ntt_vec_mul():
quickjs-nuttx/libbf.c:7793
    m = ntt_mods[m_idx];
    80057a74:	00381793          	slli	a5,a6,0x3
    80057a78:	00029717          	auipc	a4,0x29
    80057a7c:	21870713          	addi	a4,a4,536 # 80080c90 <ntt_mods>
    80057a80:	973e                	add	a4,a4,a5
    80057a82:	00073d03          	ld	s10,0(a4)
quickjs-nuttx/libbf.c:7795
    norm = s->ntt_len_inv[m_idx][k_tot][0];
    80057a86:	03400713          	li	a4,52
    80057a8a:	02e80833          	mul	a6,a6,a4
quickjs-nuttx/libbf.c:7794
    m_inv = s->ntt_mods_div[m_idx];
    80057a8e:	97a2                	add	a5,a5,s0
    80057a90:	0087bd83          	ld	s11,8(a5)
quickjs-nuttx/libbf.c:7795
    norm = s->ntt_len_inv[m_idx][k_tot][0];
    80057a94:	46a1                	li	a3,8
    80057a96:	01869c33          	sll	s8,a3,s8
    80057a9a:	01980733          	add	a4,a6,s9
    80057a9e:	26f70793          	addi	a5,a4,623
    80057aa2:	0792                	slli	a5,a5,0x4
    80057aa4:	97a2                	add	a5,a5,s0
quickjs-nuttx/libbf.c:7796
    norm_inv = s->ntt_len_inv[m_idx][k_tot][1];
    80057aa6:	0712                	slli	a4,a4,0x4
quickjs-nuttx/libbf.c:7795
    norm = s->ntt_len_inv[m_idx][k_tot][0];
    80057aa8:	0007b803          	ld	a6,0(a5)
quickjs-nuttx/libbf.c:7796
    norm_inv = s->ntt_len_inv[m_idx][k_tot][1];
    80057aac:	9722                	add	a4,a4,s0
    80057aae:	6789                	lui	a5,0x2
    80057ab0:	973e                	add	a4,a4,a5
    80057ab2:	6f873883          	ld	a7,1784(a4)
quickjs-nuttx/libbf.c:7798
    for(i = 0; i < n; i++) {
    80057ab6:	4c81                	li	s9,0
    80057ab8:	038c9163          	bne	s9,s8,80057ada <ntt_conv+0x106>
ntt_conv():
quickjs-nuttx/libbf.c:7974
    if (ntt_fft_partial(s, buf1, k1, k2, n1, n2, 1, m_idx))
    80057abc:	88da                	mv	a7,s6
    80057abe:	4805                	li	a6,1
    80057ac0:	87ca                	mv	a5,s2
    80057ac2:	8756                	mv	a4,s5
    80057ac4:	86de                	mv	a3,s7
    80057ac6:	8626                	mv	a2,s1
    80057ac8:	85ce                	mv	a1,s3
    80057aca:	8522                	mv	a0,s0
    80057acc:	d41ff0ef          	jal	ra,8005780c <ntt_fft_partial>
    80057ad0:	00a03533          	snez	a0,a0
    80057ad4:	40a00533          	neg	a0,a0
    80057ad8:	bfb9                	j	80057a36 <ntt_conv+0x62>
ntt_vec_mul():
quickjs-nuttx/libbf.c:7799
        a = tab1[i];
    80057ada:	01998733          	add	a4,s3,s9
    80057ade:	631c                	ld	a5,0(a4)
quickjs-nuttx/libbf.c:7802
        if (a >= m)
    80057ae0:	01a7e463          	bltu	a5,s10,80057ae8 <ntt_conv+0x114>
quickjs-nuttx/libbf.c:7803
            a -= m;
    80057ae4:	41a787b3          	sub	a5,a5,s10
quickjs-nuttx/libbf.c:7804
        a = mul_mod_fast(a, tab2[i], m, m_inv);
    80057ae8:	019a06b3          	add	a3,s4,s9
mul_mod_fast():
quickjs-nuttx/libbf.c:7421
    r = (dlimb_t)a * (dlimb_t)b;
    80057aec:	6288                	ld	a0,0(a3)
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    80057aee:	866a                	mv	a2,s10
    80057af0:	86ee                	mv	a3,s11
quickjs-nuttx/libbf.c:7421
    r = (dlimb_t)a * (dlimb_t)b;
    80057af2:	02a7b5b3          	mulhu	a1,a5,a0
    80057af6:	ec3a                	sd	a4,24(sp)
    80057af8:	e846                	sd	a7,16(sp)
    80057afa:	e442                	sd	a6,8(sp)
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    80057afc:	0ca1                	addi	s9,s9,8
    80057afe:	02a78533          	mul	a0,a5,a0
    80057b02:	a70ff0ef          	jal	ra,80056d72 <mod_fast>
mul_mod_fast3():
quickjs-nuttx/libbf.c:7457
    r = a * b - q * m;
    80057b06:	6822                	ld	a6,8(sp)
quickjs-nuttx/libbf.c:7456
    q = ((dlimb_t)a * (dlimb_t)b_inv) >> LIMB_BITS;
    80057b08:	68c2                	ld	a7,16(sp)
ntt_vec_mul():
quickjs-nuttx/libbf.c:7806
        tab1[i] = a;
    80057b0a:	6762                	ld	a4,24(sp)
mul_mod_fast3():
quickjs-nuttx/libbf.c:7457
    r = a * b - q * m;
    80057b0c:	02a807b3          	mul	a5,a6,a0
quickjs-nuttx/libbf.c:7456
    q = ((dlimb_t)a * (dlimb_t)b_inv) >> LIMB_BITS;
    80057b10:	03153533          	mulhu	a0,a0,a7
quickjs-nuttx/libbf.c:7457
    r = a * b - q * m;
    80057b14:	02ad0533          	mul	a0,s10,a0
    80057b18:	40a78533          	sub	a0,a5,a0
ntt_vec_mul():
quickjs-nuttx/libbf.c:7806
        tab1[i] = a;
    80057b1c:	e308                	sd	a0,0(a4)
quickjs-nuttx/libbf.c:7798
    for(i = 0; i < n; i++) {
    80057b1e:	bf69                	j	80057ab8 <ntt_conv+0xe4>
ntt_conv():
quickjs-nuttx/libbf.c:7971 (discriminator 3)
            ntt_conv(s, buf1 + i * n2, buf2 + i * n2, k2, k_tot, m_idx);
    80057b20:	017d15b3          	sll	a1,s10,s7
    80057b24:	058e                	slli	a1,a1,0x3
    80057b26:	00ba0633          	add	a2,s4,a1
    80057b2a:	87da                	mv	a5,s6
    80057b2c:	8766                	mv	a4,s9
    80057b2e:	86de                	mv	a3,s7
    80057b30:	95ce                	add	a1,a1,s3
    80057b32:	8522                	mv	a0,s0
    80057b34:	ea1ff0ef          	jal	ra,800579d4 <ntt_conv>
quickjs-nuttx/libbf.c:7970 (discriminator 3)
        for(i = 0; i < n1; i++) {
    80057b38:	0d05                	addi	s10,s10,1
quickjs-nuttx/libbf.c:7970 (discriminator 1)
    80057b3a:	ff5d13e3          	bne	s10,s5,80057b20 <ntt_conv+0x14c>
    80057b3e:	bfbd                	j	80057abc <ntt_conv+0xe8>

0000000080057b40 <bf_context_init>:
bf_context_init():
quickjs-nuttx/libbf.c:190
{
    80057b40:	1101                	addi	sp,sp,-32
    80057b42:	e822                	sd	s0,16(sp)
    80057b44:	e426                	sd	s1,8(sp)
    80057b46:	e04a                	sd	s2,0(sp)
    80057b48:	842a                	mv	s0,a0
    80057b4a:	892e                	mv	s2,a1
    80057b4c:	84b2                	mv	s1,a2
quickjs-nuttx/libbf.c:191
    memset(s, 0, sizeof(*s));
    80057b4e:	4581                	li	a1,0
    80057b50:	06800613          	li	a2,104
    80057b54:	0541                	addi	a0,a0,16
quickjs-nuttx/libbf.c:190
{
    80057b56:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libbf.c:191
    memset(s, 0, sizeof(*s));
    80057b58:	0ea0c0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:194
}
    80057b5c:	60e2                	ld	ra,24(sp)
quickjs-nuttx/libbf.c:192
    s->realloc_func = realloc_func;
    80057b5e:	01243423          	sd	s2,8(s0)
quickjs-nuttx/libbf.c:193
    s->realloc_opaque = realloc_opaque;
    80057b62:	e004                	sd	s1,0(s0)
quickjs-nuttx/libbf.c:194
}
    80057b64:	6442                	ld	s0,16(sp)
    80057b66:	64a2                	ld	s1,8(sp)
    80057b68:	6902                	ld	s2,0(sp)
    80057b6a:	6105                	addi	sp,sp,32
    80057b6c:	8082                	ret

0000000080057b6e <bf_init>:
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80057b6e:	57fd                	li	a5,-1
    80057b70:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    80057b72:	e188                	sd	a0,0(a1)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    80057b74:	0005a423          	sw	zero,8(a1)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    80057b78:	e99c                	sd	a5,16(a1)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    80057b7a:	0005bc23          	sd	zero,24(a1)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    80057b7e:	0205b023          	sd	zero,32(a1)
quickjs-nuttx/libbf.c:208
}
    80057b82:	8082                	ret

0000000080057b84 <bf_resize>:
bf_resize():
quickjs-nuttx/libbf.c:215
    if (len != r->len) {
    80057b84:	6d1c                	ld	a5,24(a0)
    80057b86:	02b78a63          	beq	a5,a1,80057bba <bf_resize+0x36>
quickjs-nuttx/libbf.c:212
{
    80057b8a:	1101                	addi	sp,sp,-32
    80057b8c:	e822                	sd	s0,16(sp)
    80057b8e:	e426                	sd	s1,8(sp)
    80057b90:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libbf.c:216
        tab = bf_realloc(r->ctx, r->tab, len * sizeof(limb_t));
    80057b92:	00359613          	slli	a2,a1,0x3
    80057b96:	842a                	mv	s0,a0
    80057b98:	84ae                	mv	s1,a1
    80057b9a:	710c                	ld	a1,32(a0)
    80057b9c:	6108                	ld	a0,0(a0)
    80057b9e:	ef5fe0ef          	jal	ra,80056a92 <bf_realloc>
    80057ba2:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:217
        if (!tab && len != 0)
    80057ba4:	e119                	bnez	a0,80057baa <bf_resize+0x26>
quickjs-nuttx/libbf.c:218
            return -1;
    80057ba6:	557d                	li	a0,-1
quickjs-nuttx/libbf.c:217
        if (!tab && len != 0)
    80057ba8:	e481                	bnez	s1,80057bb0 <bf_resize+0x2c>
quickjs-nuttx/libbf.c:219
        r->tab = tab;
    80057baa:	f01c                	sd	a5,32(s0)
quickjs-nuttx/libbf.c:220
        r->len = len;
    80057bac:	ec04                	sd	s1,24(s0)
quickjs-nuttx/libbf.c:222
    return 0;
    80057bae:	4501                	li	a0,0
quickjs-nuttx/libbf.c:223
}
    80057bb0:	60e2                	ld	ra,24(sp)
    80057bb2:	6442                	ld	s0,16(sp)
    80057bb4:	64a2                	ld	s1,8(sp)
    80057bb6:	6105                	addi	sp,sp,32
    80057bb8:	8082                	ret
quickjs-nuttx/libbf.c:222
    return 0;
    80057bba:	4501                	li	a0,0
quickjs-nuttx/libbf.c:223
}
    80057bbc:	8082                	ret

0000000080057bbe <bf_set_nan>:
bf_set_nan():
quickjs-nuttx/libbf.c:281
{
    80057bbe:	1141                	addi	sp,sp,-16
quickjs-nuttx/libbf.c:282
    bf_resize(r, 0); /* cannot fail */
    80057bc0:	4581                	li	a1,0
quickjs-nuttx/libbf.c:281
{
    80057bc2:	e022                	sd	s0,0(sp)
    80057bc4:	e406                	sd	ra,8(sp)
    80057bc6:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:282
    bf_resize(r, 0); /* cannot fail */
    80057bc8:	fbdff0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:283
    r->expn = BF_EXP_NAN;
    80057bcc:	57fd                	li	a5,-1
    80057bce:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:285
}
    80057bd0:	60a2                	ld	ra,8(sp)
quickjs-nuttx/libbf.c:283
    r->expn = BF_EXP_NAN;
    80057bd2:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:284
    r->sign = 0;
    80057bd4:	00042423          	sw	zero,8(s0)
quickjs-nuttx/libbf.c:285
}
    80057bd8:	6402                	ld	s0,0(sp)
    80057bda:	0141                	addi	sp,sp,16
    80057bdc:	8082                	ret

0000000080057bde <bf_set_ui>:
bf_set_ui():
quickjs-nuttx/libbf.c:227
{
    80057bde:	1101                	addi	sp,sp,-32
    80057be0:	e822                	sd	s0,16(sp)
    80057be2:	ec06                	sd	ra,24(sp)
    80057be4:	e426                	sd	s1,8(sp)
    80057be6:	e04a                	sd	s2,0(sp)
quickjs-nuttx/libbf.c:228
    r->sign = 0;
    80057be8:	00052423          	sw	zero,8(a0)
quickjs-nuttx/libbf.c:227
{
    80057bec:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:229
    if (a == 0) {
    80057bee:	ed91                	bnez	a1,80057c0a <bf_set_ui+0x2c>
quickjs-nuttx/libbf.c:230
        r->expn = BF_EXP_ZERO;
    80057bf0:	57fd                	li	a5,-1
    80057bf2:	17fe                	slli	a5,a5,0x3f
    80057bf4:	e91c                	sd	a5,16(a0)
quickjs-nuttx/libbf.c:231
        bf_resize(r, 0); /* cannot fail */
    80057bf6:	f8fff0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:260
    return 0;
    80057bfa:	4901                	li	s2,0
quickjs-nuttx/libbf.c:264
}
    80057bfc:	60e2                	ld	ra,24(sp)
    80057bfe:	6442                	ld	s0,16(sp)
    80057c00:	64a2                	ld	s1,8(sp)
    80057c02:	854a                	mv	a0,s2
    80057c04:	6902                	ld	s2,0(sp)
    80057c06:	6105                	addi	sp,sp,32
    80057c08:	8082                	ret
    80057c0a:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:240
        if (bf_resize(r, 1))
    80057c0c:	4585                	li	a1,1
    80057c0e:	f77ff0ef          	jal	ra,80057b84 <bf_resize>
    80057c12:	892a                	mv	s2,a0
    80057c14:	c519                	beqz	a0,80057c22 <bf_set_ui+0x44>
quickjs-nuttx/libbf.c:262
    bf_set_nan(r);
    80057c16:	8522                	mv	a0,s0
    80057c18:	fa7ff0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:263
    return BF_ST_MEM_ERROR;
    80057c1c:	02000913          	li	s2,32
    80057c20:	bff1                	j	80057bfc <bf_set_ui+0x1e>
clz64():
quickjs-nuttx/cutils.h:126
    80057c22:	8526                	mv	a0,s1
    80057c24:	a72ac0ef          	jal	ra,80003e96 <__clzdi2>
bf_set_ui():
quickjs-nuttx/libbf.c:243
        r->tab[0] = a << shift;
    80057c28:	701c                	ld	a5,32(s0)
    80057c2a:	00a494b3          	sll	s1,s1,a0
    80057c2e:	e384                	sd	s1,0(a5)
quickjs-nuttx/libbf.c:244
        r->expn = LIMB_BITS - shift;
    80057c30:	04000793          	li	a5,64
    80057c34:	40a7853b          	subw	a0,a5,a0
    80057c38:	e808                	sd	a0,16(s0)
    80057c3a:	b7c9                	j	80057bfc <bf_set_ui+0x1e>

0000000080057c3c <bf_set_si>:
bf_set_si():
quickjs-nuttx/libbf.c:271
    if (a < 0) {
    80057c3c:	0005c463          	bltz	a1,80057c44 <bf_set_si+0x8>
quickjs-nuttx/libbf.c:275
        ret = bf_set_ui(r, a);
    80057c40:	f9fff06f          	j	80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:268
{
    80057c44:	1141                	addi	sp,sp,-16
quickjs-nuttx/libbf.c:272
        ret = bf_set_ui(r, -a);
    80057c46:	40b005b3          	neg	a1,a1
quickjs-nuttx/libbf.c:268
{
    80057c4a:	e022                	sd	s0,0(sp)
    80057c4c:	e406                	sd	ra,8(sp)
    80057c4e:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:272
        ret = bf_set_ui(r, -a);
    80057c50:	f8fff0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:273
        r->sign = 1;
    80057c54:	4785                	li	a5,1
    80057c56:	c41c                	sw	a5,8(s0)
quickjs-nuttx/libbf.c:278
}
    80057c58:	60a2                	ld	ra,8(sp)
    80057c5a:	6402                	ld	s0,0(sp)
    80057c5c:	0141                	addi	sp,sp,16
    80057c5e:	8082                	ret

0000000080057c60 <bf_set_zero>:
bf_set_zero():
quickjs-nuttx/libbf.c:288
{
    80057c60:	1101                	addi	sp,sp,-32
    80057c62:	e426                	sd	s1,8(sp)
    80057c64:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:289
    bf_resize(r, 0); /* cannot fail */
    80057c66:	4581                	li	a1,0
quickjs-nuttx/libbf.c:288
{
    80057c68:	e822                	sd	s0,16(sp)
    80057c6a:	ec06                	sd	ra,24(sp)
    80057c6c:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:289
    bf_resize(r, 0); /* cannot fail */
    80057c6e:	f17ff0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:290
    r->expn = BF_EXP_ZERO;
    80057c72:	57fd                	li	a5,-1
    80057c74:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:291
    r->sign = is_neg;
    80057c76:	c404                	sw	s1,8(s0)
quickjs-nuttx/libbf.c:292
}
    80057c78:	60e2                	ld	ra,24(sp)
quickjs-nuttx/libbf.c:290
    r->expn = BF_EXP_ZERO;
    80057c7a:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:292
}
    80057c7c:	6442                	ld	s0,16(sp)
    80057c7e:	64a2                	ld	s1,8(sp)
    80057c80:	6105                	addi	sp,sp,32
    80057c82:	8082                	ret

0000000080057c84 <bf_set_inf>:
bf_set_inf():
quickjs-nuttx/libbf.c:295
{
    80057c84:	1101                	addi	sp,sp,-32
    80057c86:	e426                	sd	s1,8(sp)
    80057c88:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:296
    bf_resize(r, 0); /* cannot fail */
    80057c8a:	4581                	li	a1,0
quickjs-nuttx/libbf.c:295
{
    80057c8c:	e822                	sd	s0,16(sp)
    80057c8e:	ec06                	sd	ra,24(sp)
    80057c90:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:296
    bf_resize(r, 0); /* cannot fail */
    80057c92:	ef3ff0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:297
    r->expn = BF_EXP_INF;
    80057c96:	57f5                	li	a5,-3
    80057c98:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:298
    r->sign = is_neg;
    80057c9a:	c404                	sw	s1,8(s0)
quickjs-nuttx/libbf.c:299
}
    80057c9c:	60e2                	ld	ra,24(sp)
quickjs-nuttx/libbf.c:297
    r->expn = BF_EXP_INF;
    80057c9e:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:299
}
    80057ca0:	6442                	ld	s0,16(sp)
    80057ca2:	64a2                	ld	s1,8(sp)
    80057ca4:	6105                	addi	sp,sp,32
    80057ca6:	8082                	ret

0000000080057ca8 <bf_set_overflow>:
bf_set_overflow():
quickjs-nuttx/libbf.c:466
{
    80057ca8:	7139                	addi	sp,sp,-64
quickjs-nuttx/libbf.c:471
    if (prec == BF_PREC_INF ||
    80057caa:	577d                	li	a4,-1
quickjs-nuttx/libbf.c:466
{
    80057cac:	f822                	sd	s0,48(sp)
    80057cae:	ec4e                	sd	s3,24(sp)
    80057cb0:	fc06                	sd	ra,56(sp)
    80057cb2:	f426                	sd	s1,40(sp)
    80057cb4:	f04a                	sd	s2,32(sp)
    80057cb6:	e852                	sd	s4,16(sp)
    80057cb8:	e456                	sd	s5,8(sp)
quickjs-nuttx/libbf.c:471
    if (prec == BF_PREC_INF ||
    80057cba:	8309                	srli	a4,a4,0x2
quickjs-nuttx/libbf.c:466
{
    80057cbc:	842a                	mv	s0,a0
    80057cbe:	89ae                	mv	s3,a1
quickjs-nuttx/libbf.c:471
    if (prec == BF_PREC_INF ||
    80057cc0:	02e60163          	beq	a2,a4,80057ce2 <bf_set_overflow+0x3a>
    80057cc4:	0076f793          	andi	a5,a3,7
quickjs-nuttx/libbf.c:471 (discriminator 1)
    80057cc8:	cf89                	beqz	a5,80057ce2 <bf_set_overflow+0x3a>
    80057cca:	84b6                	mv	s1,a3
quickjs-nuttx/libbf.c:472
        rnd_mode == BF_RNDN ||
    80057ccc:	ffc7871b          	addiw	a4,a5,-4
    80057cd0:	4685                	li	a3,1
    80057cd2:	00e6f863          	bgeu	a3,a4,80057ce2 <bf_set_overflow+0x3a>
quickjs-nuttx/libbf.c:474
        rnd_mode == BF_RNDA ||
    80057cd6:	4709                	li	a4,2
    80057cd8:	8932                	mv	s2,a2
    80057cda:	00e79a63          	bne	a5,a4,80057cee <bf_set_overflow+0x46>
quickjs-nuttx/libbf.c:475
        (rnd_mode == BF_RNDD && sign == 1) ||
    80057cde:	00d59c63          	bne	a1,a3,80057cf6 <bf_set_overflow+0x4e>
quickjs-nuttx/libbf.c:477
        bf_set_inf(r, sign);
    80057ce2:	85ce                	mv	a1,s3
    80057ce4:	8522                	mv	a0,s0
    80057ce6:	f9fff0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:493
    return BF_ST_OVERFLOW | BF_ST_INEXACT;
    80057cea:	4551                	li	a0,20
    80057cec:	a01d                	j	80057d12 <bf_set_overflow+0x6a>
quickjs-nuttx/libbf.c:475 (discriminator 1)
        (rnd_mode == BF_RNDD && sign == 1) ||
    80057cee:	470d                	li	a4,3
    80057cf0:	00e79363          	bne	a5,a4,80057cf6 <bf_set_overflow+0x4e>
quickjs-nuttx/libbf.c:476
        (rnd_mode == BF_RNDU && sign == 0)) {
    80057cf4:	d5fd                	beqz	a1,80057ce2 <bf_set_overflow+0x3a>
quickjs-nuttx/libbf.c:480
        l = (prec + LIMB_BITS - 1) / LIMB_BITS;
    80057cf6:	03f90a13          	addi	s4,s2,63
    80057cfa:	006a5a13          	srli	s4,s4,0x6
quickjs-nuttx/libbf.c:481
        if (bf_resize(r, l)) {
    80057cfe:	85d2                	mv	a1,s4
    80057d00:	8522                	mv	a0,s0
    80057d02:	e83ff0ef          	jal	ra,80057b84 <bf_resize>
    80057d06:	cd19                	beqz	a0,80057d24 <bf_set_overflow+0x7c>
quickjs-nuttx/libbf.c:482
            bf_set_nan(r);
    80057d08:	8522                	mv	a0,s0
    80057d0a:	eb5ff0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:483
            return BF_ST_MEM_ERROR;
    80057d0e:	02000513          	li	a0,32
quickjs-nuttx/libbf.c:494
}
    80057d12:	70e2                	ld	ra,56(sp)
    80057d14:	7442                	ld	s0,48(sp)
    80057d16:	74a2                	ld	s1,40(sp)
    80057d18:	7902                	ld	s2,32(sp)
    80057d1a:	69e2                	ld	s3,24(sp)
    80057d1c:	6a42                	ld	s4,16(sp)
    80057d1e:	6aa2                	ld	s5,8(sp)
    80057d20:	6121                	addi	sp,sp,64
    80057d22:	8082                	ret
quickjs-nuttx/libbf.c:485
        r->tab[0] = limb_mask((-prec) & (LIMB_BITS - 1),
    80057d24:	02043a83          	ld	s5,32(s0)
    80057d28:	4120053b          	negw	a0,s2
    80057d2c:	03f00593          	li	a1,63
    80057d30:	03f57513          	andi	a0,a0,63
    80057d34:	e11fe0ef          	jal	ra,80056b44 <limb_mask>
    80057d38:	00aab023          	sd	a0,0(s5)
quickjs-nuttx/libbf.c:487
        for(i = 1; i < l; i++)
    80057d3c:	4785                	li	a5,1
quickjs-nuttx/libbf.c:488
            r->tab[i] = (limb_t)-1;
    80057d3e:	56fd                	li	a3,-1
quickjs-nuttx/libbf.c:487 (discriminator 1)
        for(i = 1; i < l; i++)
    80057d40:	0347c763          	blt	a5,s4,80057d6e <bf_set_overflow+0xc6>
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    80057d44:	0054d49b          	srliw	s1,s1,0x5
    80057d48:	03f4f493          	andi	s1,s1,63
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    80057d4c:	03f00713          	li	a4,63
quickjs-nuttx/libbf.h:157
        return BF_EXP_BITS_MAX + 1;
    80057d50:	03e00793          	li	a5,62
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    80057d54:	00e48563          	beq	s1,a4,80057d5e <bf_set_overflow+0xb6>
quickjs-nuttx/libbf.h:159
        return BF_EXP_BITS_MAX - e;
    80057d58:	03d00793          	li	a5,61
    80057d5c:	9f85                	subw	a5,a5,s1
bf_set_overflow():
quickjs-nuttx/libbf.c:489
        e_max = (limb_t)1 << (bf_get_exp_bits(flags) - 1);
    80057d5e:	37fd                	addiw	a5,a5,-1
    80057d60:	4705                	li	a4,1
    80057d62:	00f717b3          	sll	a5,a4,a5
quickjs-nuttx/libbf.c:490
        r->expn = e_max;
    80057d66:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:491
        r->sign = sign;
    80057d68:	01342423          	sw	s3,8(s0)
    80057d6c:	bfbd                	j	80057cea <bf_set_overflow+0x42>
quickjs-nuttx/libbf.c:488 (discriminator 3)
            r->tab[i] = (limb_t)-1;
    80057d6e:	7018                	ld	a4,32(s0)
    80057d70:	00379613          	slli	a2,a5,0x3
quickjs-nuttx/libbf.c:487 (discriminator 3)
        for(i = 1; i < l; i++)
    80057d74:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:488 (discriminator 3)
            r->tab[i] = (limb_t)-1;
    80057d76:	9732                	add	a4,a4,a2
    80057d78:	e314                	sd	a3,0(a4)
quickjs-nuttx/libbf.c:487 (discriminator 3)
        for(i = 1; i < l; i++)
    80057d7a:	b7d9                	j	80057d40 <bf_set_overflow+0x98>

0000000080057d7c <__bf_round>:
__bf_round():
quickjs-nuttx/libbf.c:503
{
    80057d7c:	7119                	addi	sp,sp,-128
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    e = (flags >> BF_EXP_BITS_SHIFT) & BF_EXP_BITS_MASK;
    80057d7e:	0056579b          	srliw	a5,a2,0x5
__bf_round():
quickjs-nuttx/libbf.c:503
    80057d82:	f8a2                	sd	s0,112(sp)
    80057d84:	ecce                	sd	s3,88(sp)
    80057d86:	e8d2                	sd	s4,80(sp)
    80057d88:	fc5e                	sd	s7,56(sp)
    80057d8a:	f862                	sd	s8,48(sp)
    80057d8c:	ec6e                	sd	s11,24(sp)
    80057d8e:	89ba                	mv	s3,a4
    80057d90:	fc86                	sd	ra,120(sp)
    80057d92:	f4a6                	sd	s1,104(sp)
    80057d94:	f0ca                	sd	s2,96(sp)
    80057d96:	e4d6                	sd	s5,72(sp)
    80057d98:	e0da                	sd	s6,64(sp)
    80057d9a:	f466                	sd	s9,40(sp)
    80057d9c:	f06a                	sd	s10,32(sp)
bf_get_exp_bits():
quickjs-nuttx/libbf.h:155
    80057d9e:	03f7f793          	andi	a5,a5,63
quickjs-nuttx/libbf.h:156
    if (e == BF_EXP_BITS_MASK)
    80057da2:	03f00713          	li	a4,63
__bf_round():
quickjs-nuttx/libbf.c:503
    80057da6:	842a                	mv	s0,a0
    80057da8:	8c2e                	mv	s8,a1
    80057daa:	8db2                	mv	s11,a2
    80057dac:	8a36                	mv	s4,a3
    80057dae:	03e00b93          	li	s7,62
bf_get_exp_bits():
quickjs-nuttx/libbf.h:156
    80057db2:	00e78663          	beq	a5,a4,80057dbe <__bf_round+0x42>
quickjs-nuttx/libbf.h:159
        return BF_EXP_BITS_MAX - e;
    80057db6:	03d00b93          	li	s7,61
    80057dba:	40fb8bbb          	subw	s7,s7,a5
__bf_round():
quickjs-nuttx/libbf.c:509
    e_range = (limb_t)1 << (bf_get_exp_bits(flags) - 1);
    80057dbe:	3bfd                	addiw	s7,s7,-1
    80057dc0:	4785                	li	a5,1
    80057dc2:	017797b3          	sll	a5,a5,s7
quickjs-nuttx/libbf.c:510
    e_min = -e_range + 3;
    80057dc6:	4b0d                	li	s6,3
quickjs-nuttx/libbf.c:509
    e_range = (limb_t)1 << (bf_get_exp_bits(flags) - 1);
    80057dc8:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:510
    e_min = -e_range + 3;
    80057dca:	40fb0b33          	sub	s6,s6,a5
quickjs-nuttx/libbf.c:513
    if (flags & BF_FLAG_RADPNT_PREC) {
    80057dce:	010df793          	andi	a5,s11,16
    80057dd2:	c3a5                	beqz	a5,80057e32 <__bf_round+0xb6>
quickjs-nuttx/libbf.c:515
        if (prec1 != BF_PREC_INF)
    80057dd4:	57fd                	li	a5,-1
    80057dd6:	8389                	srli	a5,a5,0x2
quickjs-nuttx/libbf.c:518
            prec = prec1;
    80057dd8:	84e2                	mv	s1,s8
quickjs-nuttx/libbf.c:515
        if (prec1 != BF_PREC_INF)
    80057dda:	00fc0463          	beq	s8,a5,80057de2 <__bf_round+0x66>
quickjs-nuttx/libbf.c:516
            prec = r->expn + prec1;
    80057dde:	6804                	ld	s1,16(s0)
    80057de0:	94e2                	add	s1,s1,s8
quickjs-nuttx/libbf.c:529
    rnd_mode = flags & BF_RND_MASK;
    80057de2:	007dfc93          	andi	s9,s11,7
bf_get_rnd_add():
quickjs-nuttx/libbf.c:418
    if (rnd_mode == BF_RNDF) {
    80057de6:	4799                	li	a5,6
scan_bit_nz():
quickjs-nuttx/libbf.c:398
    v = r->tab[pos] & limb_mask(0, bit_pos & (LIMB_BITS - 1));
    80057de8:	02043b83          	ld	s7,32(s0)
bf_get_rnd_add():
quickjs-nuttx/libbf.c:422
        bit0 = scan_bit_nz(r, l * LIMB_BITS - 1 - bf_max(0, prec + 1));
    80057dec:	006a1913          	slli	s2,s4,0x6
quickjs-nuttx/libbf.c:419
        bit0 = 1; /* faithful rounding does not honor the INEXACT flag */
    80057df0:	4d05                	li	s10,1
quickjs-nuttx/libbf.c:418
    if (rnd_mode == BF_RNDF) {
    80057df2:	06fc8f63          	beq	s9,a5,80057e70 <__bf_round+0xf4>
quickjs-nuttx/libbf.c:422
        bit0 = scan_bit_nz(r, l * LIMB_BITS - 1 - bf_max(0, prec + 1));
    80057df6:	00148793          	addi	a5,s1,1
    80057dfa:	fff90593          	addi	a1,s2,-1
    80057dfe:	0007d363          	bgez	a5,80057e04 <__bf_round+0x88>
    80057e02:	4781                	li	a5,0
    80057e04:	8d9d                	sub	a1,a1,a5
scan_bit_nz():
quickjs-nuttx/libbf.c:395
    pos = bit_pos >> LIMB_LOG2_BITS;
    80057e06:	4065d793          	srai	a5,a1,0x6
quickjs-nuttx/libbf.c:397
        return 0;
    80057e0a:	4d01                	li	s10,0
quickjs-nuttx/libbf.c:396
    if (pos < 0)
    80057e0c:	0605c263          	bltz	a1,80057e70 <__bf_round+0xf4>
quickjs-nuttx/libbf.c:398
    v = r->tab[pos] & limb_mask(0, bit_pos & (LIMB_BITS - 1));
    80057e10:	078e                	slli	a5,a5,0x3
    80057e12:	03f5f593          	andi	a1,a1,63
    80057e16:	4501                	li	a0,0
    80057e18:	00fb8ab3          	add	s5,s7,a5
    80057e1c:	d29fe0ef          	jal	ra,80056b44 <limb_mask>
    80057e20:	000ab783          	ld	a5,0(s5)
    80057e24:	00f57d33          	and	s10,a0,a5
quickjs-nuttx/libbf.c:399
    if (v != 0)
    80057e28:	87d6                	mv	a5,s5
    80057e2a:	040d0163          	beqz	s10,80057e6c <__bf_round+0xf0>
bf_get_rnd_add():
quickjs-nuttx/libbf.c:419
        bit0 = 1; /* faithful rounding does not honor the INEXACT flag */
    80057e2e:	4d05                	li	s10,1
    80057e30:	a081                	j	80057e70 <__bf_round+0xf4>
__bf_round():
quickjs-nuttx/libbf.c:519
    } else if (unlikely(r->expn < e_min) && (flags & BF_FLAG_SUBNORMAL)) {
    80057e32:	6804                	ld	s1,16(s0)
    80057e34:	0364d663          	bge	s1,s6,80057e60 <__bf_round+0xe4>
quickjs-nuttx/libbf.c:519 (discriminator 1)
    80057e38:	008df793          	andi	a5,s11,8
    80057e3c:	c395                	beqz	a5,80057e60 <__bf_round+0xe4>
quickjs-nuttx/libbf.c:522
        assert(prec1 != BF_PREC_INF);
    80057e3e:	57fd                	li	a5,-1
quickjs-nuttx/libbf.c:523
        prec = prec1 - (e_min - r->expn);
    80057e40:	409b04b3          	sub	s1,s6,s1
quickjs-nuttx/libbf.c:522
        assert(prec1 != BF_PREC_INF);
    80057e44:	8389                	srli	a5,a5,0x2
quickjs-nuttx/libbf.c:523
        prec = prec1 - (e_min - r->expn);
    80057e46:	409c04b3          	sub	s1,s8,s1
quickjs-nuttx/libbf.c:522
        assert(prec1 != BF_PREC_INF);
    80057e4a:	f8fc1ce3          	bne	s8,a5,80057de2 <__bf_round+0x66>
quickjs-nuttx/libbf.c:522 (discriminator 1)
    80057e4e:	4601                	li	a2,0
    80057e50:	20a00593          	li	a1,522
    80057e54:	00028517          	auipc	a0,0x28
    80057e58:	76c50513          	addi	a0,a0,1900 # 800805c0 <std_name.0+0x18>
    80057e5c:	301080ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:525
        prec = prec1;
    80057e60:	84e2                	mv	s1,s8
    80057e62:	b741                	j	80057de2 <__bf_round+0x66>
scan_bit_nz():
quickjs-nuttx/libbf.c:403
        if (r->tab[pos] != 0)
    80057e64:	ff87b683          	ld	a3,-8(a5) # 1ff8 <asinh-0x7fffe008>
    80057e68:	17e1                	addi	a5,a5,-8
    80057e6a:	f2f1                	bnez	a3,80057e2e <__bf_round+0xb2>
quickjs-nuttx/libbf.c:402
    while (pos >= 0) {
    80057e6c:	fefb9ce3          	bne	s7,a5,80057e64 <__bf_round+0xe8>
bf_get_rnd_add():
quickjs-nuttx/libbf.c:426
    bit1 = get_bit(r->tab, l, l * LIMB_BITS - 1 - prec);
    80057e70:	40990933          	sub	s2,s2,s1
    80057e74:	85d2                	mv	a1,s4
    80057e76:	fff90613          	addi	a2,s2,-1
    80057e7a:	855e                	mv	a0,s7
    80057e7c:	ca9fe0ef          	jal	ra,80056b24 <get_bit>
quickjs-nuttx/libbf.c:427
    inexact = (bit1 | bit0) != 0;
    80057e80:	01a565b3          	or	a1,a0,s10
    80057e84:	4699                	li	a3,6
    80057e86:	00b037b3          	snez	a5,a1
quickjs-nuttx/libbf.c:430
    switch(rnd_mode) {
    80057e8a:	0996e363          	bltu	a3,s9,80057f10 <__bf_round+0x194>
    80057e8e:	00028817          	auipc	a6,0x28
    80057e92:	73a80813          	addi	a6,a6,1850 # 800805c8 <std_name.0+0x20>
    80057e96:	002c9613          	slli	a2,s9,0x2
    80057e9a:	9642                	add	a2,a2,a6
    80057e9c:	4214                	lw	a3,0(a2)
    80057e9e:	96c2                	add	a3,a3,a6
    80057ea0:	8682                	jr	a3
quickjs-nuttx/libbf.c:434
        if (bit1) {
    80057ea2:	c92d                	beqz	a0,80057f14 <__bf_round+0x198>
quickjs-nuttx/libbf.c:436
                add_one = 1;
    80057ea4:	4785                	li	a5,1
quickjs-nuttx/libbf.c:435
            if (bit0) {
    80057ea6:	000d1963          	bnez	s10,80057eb8 <__bf_round+0x13c>
quickjs-nuttx/libbf.c:440
                    get_bit(r->tab, l, l * LIMB_BITS - 1 - (prec - 1));
    80057eaa:	864a                	mv	a2,s2
    80057eac:	85d2                	mv	a1,s4
    80057eae:	855e                	mv	a0,s7
    80057eb0:	c75fe0ef          	jal	ra,80056b24 <get_bit>
quickjs-nuttx/libbf.c:439
                add_one =
    80057eb4:	0005079b          	sext.w	a5,a0
quickjs-nuttx/libbf.c:461
        *pret |= BF_ST_INEXACT;
    80057eb8:	49c1                	li	s3,16
    80057eba:	a801                	j	80057eca <__bf_round+0x14e>
quickjs-nuttx/libbf.c:446
        if (r->sign == (rnd_mode == BF_RNDD))
    80057ebc:	4418                	lw	a4,8(s0)
    80057ebe:	1cf9                	addi	s9,s9,-2
    80057ec0:	001cbc93          	seqz	s9,s9
    80057ec4:	05971a63          	bne	a4,s9,80057f18 <__bf_round+0x19c>
quickjs-nuttx/libbf.c:460
    if (inexact)
    80057ec8:	f9e5                	bnez	a1,80057eb8 <__bf_round+0x13c>
__bf_round():
quickjs-nuttx/libbf.c:532
    if (prec <= 0) {
    80057eca:	04904963          	bgtz	s1,80057f1c <__bf_round+0x1a0>
quickjs-nuttx/libbf.c:533
        if (add_one) {
    80057ece:	c7fd                	beqz	a5,80057fbc <__bf_round+0x240>
quickjs-nuttx/libbf.c:534
            bf_resize(r, 1); /* cannot fail */
    80057ed0:	4585                	li	a1,1
    80057ed2:	8522                	mv	a0,s0
    80057ed4:	cb1ff0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:535
            r->tab[0] = (limb_t)1 << (LIMB_BITS - 1);
    80057ed8:	7018                	ld	a4,32(s0)
    80057eda:	57fd                	li	a5,-1
    80057edc:	17fe                	slli	a5,a5,0x3f
    80057ede:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:536
            r->expn += 1 - prec;
    80057ee0:	681c                	ld	a5,16(s0)
    80057ee2:	0785                	addi	a5,a5,1
    80057ee4:	409784b3          	sub	s1,a5,s1
    80057ee8:	e804                	sd	s1,16(s0)
quickjs-nuttx/libbf.c:579
            return ret;
    80057eea:	4561                	li	a0,24
quickjs-nuttx/libbf.c:606
}
    80057eec:	70e6                	ld	ra,120(sp)
    80057eee:	7446                	ld	s0,112(sp)
    80057ef0:	74a6                	ld	s1,104(sp)
    80057ef2:	7906                	ld	s2,96(sp)
    80057ef4:	69e6                	ld	s3,88(sp)
    80057ef6:	6a46                	ld	s4,80(sp)
    80057ef8:	6aa6                	ld	s5,72(sp)
    80057efa:	6b06                	ld	s6,64(sp)
    80057efc:	7be2                	ld	s7,56(sp)
    80057efe:	7c42                	ld	s8,48(sp)
    80057f00:	7ca2                	ld	s9,40(sp)
    80057f02:	7d02                	ld	s10,32(sp)
    80057f04:	6de2                	ld	s11,24(sp)
    80057f06:	6109                	addi	sp,sp,128
    80057f08:	8082                	ret
bf_get_rnd_add():
quickjs-nuttx/libbf.c:454
        add_one = bit1;
    80057f0a:	0005079b          	sext.w	a5,a0
quickjs-nuttx/libbf.c:455
        break;
    80057f0e:	bf6d                	j	80057ec8 <__bf_round+0x14c>
quickjs-nuttx/libbf.c:457
        abort();
    80057f10:	4730a0ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/libbf.c:429
    add_one = 0;
    80057f14:	87e6                	mv	a5,s9
    80057f16:	bf4d                	j	80057ec8 <__bf_round+0x14c>
    80057f18:	4781                	li	a5,0
    80057f1a:	b77d                	j	80057ec8 <__bf_round+0x14c>
__bf_round():
quickjs-nuttx/libbf.c:542
    } else if (add_one) {
    80057f1c:	c39d                	beqz	a5,80057f42 <__bf_round+0x1c6>
quickjs-nuttx/libbf.c:547
        pos = bit_pos >> LIMB_LOG2_BITS;
    80057f1e:	40695593          	srai	a1,s2,0x6
quickjs-nuttx/libbf.c:548
        carry = (limb_t)1 << (bit_pos & (LIMB_BITS - 1));
    80057f22:	4785                	li	a5,1
    80057f24:	012797b3          	sll	a5,a5,s2
quickjs-nuttx/libbf.c:550
        for(i = pos; i < l; i++) {
    80057f28:	86ae                	mv	a3,a1
quickjs-nuttx/libbf.c:550 (discriminator 1)
    80057f2a:	0546ed63          	bltu	a3,s4,80057f84 <__bf_round+0x208>
    80057f2e:	853e                	mv	a0,a5
quickjs-nuttx/libbf.c:557
        if (carry) {
    80057f30:	c909                	beqz	a0,80057f42 <__bf_round+0x1c6>
quickjs-nuttx/libbf.c:560
            for(i = l - 1; i >= pos; i--) {
    80057f32:	fffa0793          	addi	a5,s4,-1
quickjs-nuttx/libbf.c:559
            v = 1;
    80057f36:	4705                	li	a4,1
quickjs-nuttx/libbf.c:560 (discriminator 1)
            for(i = l - 1; i >= pos; i--) {
    80057f38:	06b7d563          	bge	a5,a1,80057fa2 <__bf_round+0x226>
quickjs-nuttx/libbf.c:565
            r->expn++;
    80057f3c:	681c                	ld	a5,16(s0)
    80057f3e:	0785                	addi	a5,a5,1
    80057f40:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:570
    if (unlikely(r->expn < e_min)) {
    80057f42:	681c                	ld	a5,16(s0)
    80057f44:	0167d963          	bge	a5,s6,80057f56 <__bf_round+0x1da>
quickjs-nuttx/libbf.c:571
        if (flags & BF_FLAG_SUBNORMAL) {
    80057f48:	008df713          	andi	a4,s11,8
    80057f4c:	cb25                	beqz	a4,80057fbc <__bf_round+0x240>
quickjs-nuttx/libbf.c:573
            if (ret & BF_ST_INEXACT)
    80057f4e:	00098463          	beqz	s3,80057f56 <__bf_round+0x1da>
quickjs-nuttx/libbf.c:574
                ret |= BF_ST_UNDERFLOW;
    80057f52:	0089e993          	ori	s3,s3,8
quickjs-nuttx/libbf.c:584
    if (unlikely(r->expn > e_max))
    80057f56:	6722                	ld	a4,8(sp)
    80057f58:	06f75763          	bge	a4,a5,80057fc6 <__bf_round+0x24a>
quickjs-nuttx/libbf.c:585
        return bf_set_overflow(r, r->sign, prec1, flags);
    80057f5c:	440c                	lw	a1,8(s0)
    80057f5e:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:606
}
    80057f60:	7446                	ld	s0,112(sp)
    80057f62:	70e6                	ld	ra,120(sp)
    80057f64:	74a6                	ld	s1,104(sp)
    80057f66:	7906                	ld	s2,96(sp)
    80057f68:	69e6                	ld	s3,88(sp)
    80057f6a:	6a46                	ld	s4,80(sp)
    80057f6c:	6aa6                	ld	s5,72(sp)
    80057f6e:	6b06                	ld	s6,64(sp)
    80057f70:	7be2                	ld	s7,56(sp)
    80057f72:	7ca2                	ld	s9,40(sp)
    80057f74:	7d02                	ld	s10,32(sp)
quickjs-nuttx/libbf.c:585
        return bf_set_overflow(r, r->sign, prec1, flags);
    80057f76:	86ee                	mv	a3,s11
    80057f78:	8662                	mv	a2,s8
quickjs-nuttx/libbf.c:606
}
    80057f7a:	6de2                	ld	s11,24(sp)
    80057f7c:	7c42                	ld	s8,48(sp)
    80057f7e:	6109                	addi	sp,sp,128
quickjs-nuttx/libbf.c:585
        return bf_set_overflow(r, r->sign, prec1, flags);
    80057f80:	d29ff06f          	j	80057ca8 <bf_set_overflow>
quickjs-nuttx/libbf.c:551
            v = r->tab[i] + carry;
    80057f84:	7018                	ld	a4,32(s0)
    80057f86:	00369613          	slli	a2,a3,0x3
    80057f8a:	963a                	add	a2,a2,a4
    80057f8c:	6218                	ld	a4,0(a2)
    80057f8e:	973e                	add	a4,a4,a5
quickjs-nuttx/libbf.c:552
            carry = (v < carry);
    80057f90:	00f73833          	sltu	a6,a4,a5
quickjs-nuttx/libbf.c:553
            r->tab[i] = v;
    80057f94:	e218                	sd	a4,0(a2)
quickjs-nuttx/libbf.c:552
            carry = (v < carry);
    80057f96:	8542                	mv	a0,a6
quickjs-nuttx/libbf.c:554
            if (carry == 0)
    80057f98:	f8f77ce3          	bgeu	a4,a5,80057f30 <__bf_round+0x1b4>
quickjs-nuttx/libbf.c:550 (discriminator 2)
        for(i = pos; i < l; i++) {
    80057f9c:	0685                	addi	a3,a3,1
quickjs-nuttx/libbf.c:552 (discriminator 2)
            carry = (v < carry);
    80057f9e:	87c2                	mv	a5,a6
    80057fa0:	b769                	j	80057f2a <__bf_round+0x1ae>
quickjs-nuttx/libbf.c:561 (discriminator 3)
                a = r->tab[i];
    80057fa2:	7014                	ld	a3,32(s0)
    80057fa4:	00379613          	slli	a2,a5,0x3
quickjs-nuttx/libbf.c:562 (discriminator 3)
                r->tab[i] = (a >> 1) | (v << (LIMB_BITS - 1));
    80057fa8:	177e                	slli	a4,a4,0x3f
quickjs-nuttx/libbf.c:561 (discriminator 3)
                a = r->tab[i];
    80057faa:	96b2                	add	a3,a3,a2
    80057fac:	6288                	ld	a0,0(a3)
quickjs-nuttx/libbf.c:560 (discriminator 3)
            for(i = l - 1; i >= pos; i--) {
    80057fae:	17fd                	addi	a5,a5,-1
quickjs-nuttx/libbf.c:562 (discriminator 3)
                r->tab[i] = (a >> 1) | (v << (LIMB_BITS - 1));
    80057fb0:	00155613          	srli	a2,a0,0x1
    80057fb4:	8f51                	or	a4,a4,a2
    80057fb6:	e298                	sd	a4,0(a3)
quickjs-nuttx/libbf.c:563 (discriminator 3)
                v = a;
    80057fb8:	872a                	mv	a4,a0
    80057fba:	bfbd                	j	80057f38 <__bf_round+0x1bc>
quickjs-nuttx/libbf.c:578
            bf_set_zero(r, r->sign);
    80057fbc:	440c                	lw	a1,8(s0)
    80057fbe:	8522                	mv	a0,s0
    80057fc0:	ca1ff0ef          	jal	ra,80057c60 <bf_set_zero>
    80057fc4:	b71d                	j	80057eea <__bf_round+0x16e>
quickjs-nuttx/libbf.c:589
    i = bit_pos >> LIMB_LOG2_BITS;
    80057fc6:	40695493          	srai	s1,s2,0x6
quickjs-nuttx/libbf.c:590
    if (i >= 0) {
    80057fca:	04094863          	bltz	s2,8005801a <__bf_round+0x29e>
quickjs-nuttx/libbf.c:591
        shift = bit_pos & (LIMB_BITS - 1);
    80057fce:	03f97513          	andi	a0,s2,63
quickjs-nuttx/libbf.c:592
        if (shift != 0)
    80057fd2:	cd11                	beqz	a0,80057fee <__bf_round+0x272>
quickjs-nuttx/libbf.c:593
            r->tab[i] &= limb_mask(shift, LIMB_BITS - 1);
    80057fd4:	701c                	ld	a5,32(s0)
    80057fd6:	00349a93          	slli	s5,s1,0x3
    80057fda:	03f00593          	li	a1,63
    80057fde:	9abe                	add	s5,s5,a5
    80057fe0:	b65fe0ef          	jal	ra,80056b44 <limb_mask>
    80057fe4:	000ab783          	ld	a5,0(s5)
    80057fe8:	8fe9                	and	a5,a5,a0
    80057fea:	00fab023          	sd	a5,0(s5)
quickjs-nuttx/libbf.c:598
    while (r->tab[i] == 0)
    80057fee:	7008                	ld	a0,32(s0)
    80057ff0:	00349793          	slli	a5,s1,0x3
    80057ff4:	97aa                	add	a5,a5,a0
    80057ff6:	85be                	mv	a1,a5
    80057ff8:	6398                	ld	a4,0(a5)
    80057ffa:	07a1                	addi	a5,a5,8
    80057ffc:	c30d                	beqz	a4,8005801e <__bf_round+0x2a2>
quickjs-nuttx/libbf.c:600
    if (i > 0) {
    80057ffe:	00905863          	blez	s1,8005800e <__bf_round+0x292>
quickjs-nuttx/libbf.c:601
        l -= i;
