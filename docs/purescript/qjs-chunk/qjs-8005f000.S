    8005e000:	1a051e63          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3836
                        n_digits = prec;
    8005e004:	8c4e                	mv	s8,s3
quickjs-nuttx/libbf.c:3837
                        n_max = n_digits;
    8005e006:	8ace                	mv	s5,s3
quickjs-nuttx/libbf.c:3850
                    n = a1->expn;
    8005e008:	67a6                	ld	a5,72(sp)
quickjs-nuttx/libbf.c:3882
                    n = ceil_div(a1->expn, radix_bits);
    8005e00a:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:3946
                if (a1->expn == BF_EXP_ZERO &&
    8005e00c:	6726                	ld	a4,72(sp)
    8005e00e:	57fd                	li	a5,-1
quickjs-nuttx/libbf.c:3948
                    !(flags & BF_FTOA_FORCE_EXP)) {
    8005e010:	001009b7          	lui	s3,0x100
quickjs-nuttx/libbf.c:3946
                if (a1->expn == BF_EXP_ZERO &&
    8005e014:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:3948
                    !(flags & BF_FTOA_FORCE_EXP)) {
    8005e016:	0134f9b3          	and	s3,s1,s3
quickjs-nuttx/libbf.c:3946
                if (a1->expn == BF_EXP_ZERO &&
    8005e01a:	1ef71563          	bne	a4,a5,8005e204 <bf_ftoa_internal+0x4da>
quickjs-nuttx/libbf.c:3946 (discriminator 1)
    8005e01e:	1e0b8363          	beqz	s7,8005e204 <bf_ftoa_internal+0x4da>
quickjs-nuttx/libbf.c:3947
                    fmt != BF_FTOA_FORMAT_FIXED &&
    8005e022:	1e099163          	bnez	s3,8005e204 <bf_ftoa_internal+0x4da>
quickjs-nuttx/libbf.c:3950
                    dbuf_putstr(s, "0");
    8005e026:	0002b597          	auipc	a1,0x2b
    8005e02a:	c6258593          	addi	a1,a1,-926 # 80088c88 <qjsc_qjscalc+0x7db0>
    8005e02e:	1908                	addi	a0,sp,176
    8005e030:	acbf30ef          	jal	ra,80051afa <dbuf_putstr>
    8005e034:	bd59                	j	8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3842
                        prec = n_digits = a1->len * LIMB_DIGITS;
    8005e036:	6ac6                	ld	s5,80(sp)
    8005e038:	49cd                	li	s3,19
quickjs-nuttx/libbf.c:3845
                               get_digit(a1->tab, a1->len, prec - n_digits) == 0) {
    8005e03a:	6ce6                	ld	s9,88(sp)
quickjs-nuttx/libbf.c:3842
                        prec = n_digits = a1->len * LIMB_DIGITS;
    8005e03c:	033a89b3          	mul	s3,s5,s3
quickjs-nuttx/libbf.c:3844
                        while (n_digits > 1 &&
    8005e040:	4d05                	li	s10,1
quickjs-nuttx/libbf.c:3842
                        prec = n_digits = a1->len * LIMB_DIGITS;
    8005e042:	8c4e                	mv	s8,s3
quickjs-nuttx/libbf.c:3844
                        while (n_digits > 1 &&
    8005e044:	018d5963          	bge	s10,s8,8005e056 <bf_ftoa_internal+0x32c>
quickjs-nuttx/libbf.c:3845 (discriminator 1)
                               get_digit(a1->tab, a1->len, prec - n_digits) == 0) {
    8005e048:	41898633          	sub	a2,s3,s8
    8005e04c:	85d6                	mv	a1,s5
    8005e04e:	8566                	mv	a0,s9
    8005e050:	c89f80ef          	jal	ra,80056cd8 <get_digit>
quickjs-nuttx/libbf.c:3844 (discriminator 1)
                        while (n_digits > 1 &&
    8005e054:	c501                	beqz	a0,8005e05c <bf_ftoa_internal+0x332>
quickjs-nuttx/libbf.c:3848
                        n_max = n_digits + 4;
    8005e056:	004c0a93          	addi	s5,s8,4
    8005e05a:	b77d                	j	8005e008 <bf_ftoa_internal+0x2de>
quickjs-nuttx/libbf.c:3846
                            n_digits--;
    8005e05c:	1c7d                	addi	s8,s8,-1
    8005e05e:	b7dd                	j	8005e044 <bf_ftoa_internal+0x31a>
quickjs-nuttx/libbf.c:3853
                if (radix_bits != 0) {
    8005e060:	0a090463          	beqz	s2,8005e108 <bf_ftoa_internal+0x3de>
quickjs-nuttx/libbf.c:3854
                    if (bf_set(a1, a2))
    8005e064:	85d6                	mv	a1,s5
    8005e066:	1828                	addi	a0,sp,56
    8005e068:	fbbf90ef          	jal	ra,80058022 <bf_set>
    8005e06c:	14051863          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3862
                            smod(-a1->expn, radix_bits);
    8005e070:	67a6                	ld	a5,72(sp)
    8005e072:	40f007b3          	neg	a5,a5
smod():
quickjs-nuttx/libbf.c:152
    a = a % (slimb_t)b;
    8005e076:	0327e7b3          	rem	a5,a5,s2
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3856
                    if (fmt == BF_FTOA_FORMAT_FIXED) {
    8005e07a:	020b9b63          	bnez	s7,8005e0b0 <bf_ftoa_internal+0x386>
quickjs-nuttx/libbf.c:3861
                        prec_bits = prec * radix_bits -
    8005e07e:	033905b3          	mul	a1,s2,s3
smod():
quickjs-nuttx/libbf.c:153
    if (a < 0)
    8005e082:	0007d363          	bgez	a5,8005e088 <bf_ftoa_internal+0x35e>
quickjs-nuttx/libbf.c:154
        a += b;
    8005e086:	97ca                	add	a5,a5,s2
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3863
                        if (bf_round(a1, prec_bits,
    8005e088:	0074f613          	andi	a2,s1,7
    8005e08c:	8d9d                	sub	a1,a1,a5
    8005e08e:	1828                	addi	a0,sp,56
    8005e090:	a62fa0ef          	jal	ra,800582f2 <bf_round>
    8005e094:	02057513          	andi	a0,a0,32
    8005e098:	12051263          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3858
                        n_digits = prec;
    8005e09c:	8c4e                	mv	s8,s3
quickjs-nuttx/libbf.c:3859
                        n_max = n_digits;
    8005e09e:	8ace                	mv	s5,s3
quickjs-nuttx/libbf.c:3882
                    n = ceil_div(a1->expn, radix_bits);
    8005e0a0:	67a6                	ld	a5,72(sp)
ceil_div():
quickjs-nuttx/libbf.c:133
    if (a >= 0)
    8005e0a2:	0007c463          	bltz	a5,8005e0aa <bf_ftoa_internal+0x380>
quickjs-nuttx/libbf.c:134
        return (a + b - 1) / b;
    8005e0a6:	17fd                	addi	a5,a5,-1
    8005e0a8:	97ca                	add	a5,a5,s2
quickjs-nuttx/libbf.c:136
        return a / b;
    8005e0aa:	0327c7b3          	div	a5,a5,s2
    8005e0ae:	bfb1                	j	8005e00a <bf_ftoa_internal+0x2e0>
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3871
                        pos = a1->len * LIMB_BITS +
    8005e0b0:	6cc6                	ld	s9,80(sp)
    8005e0b2:	006c9613          	slli	a2,s9,0x6
smod():
quickjs-nuttx/libbf.c:153
    if (a < 0)
    8005e0b6:	0007d363          	bgez	a5,8005e0bc <bf_ftoa_internal+0x392>
quickjs-nuttx/libbf.c:154
        a += b;
    8005e0ba:	97ca                	add	a5,a5,s2
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3871
                        pos = a1->len * LIMB_BITS +
    8005e0bc:	97b2                	add	a5,a5,a2
ceil_div():
quickjs-nuttx/libbf.c:133
    if (a >= 0)
    8005e0be:	0407c063          	bltz	a5,8005e0fe <bf_ftoa_internal+0x3d4>
quickjs-nuttx/libbf.c:134
        return (a + b - 1) / b;
    8005e0c2:	fff90893          	addi	a7,s2,-1
    8005e0c6:	98be                	add	a7,a7,a5
    8005e0c8:	0328cc33          	div	s8,a7,s2
    8005e0cc:	5afd                	li	s5,-1
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3877
                               (get_bits(a1->tab, a1->len, pos - n_digits * radix_bits) & digit_mask) == 0) {
    8005e0ce:	6d66                	ld	s10,88(sp)
    8005e0d0:	012a9ab3          	sll	s5,s5,s2
    8005e0d4:	fffaca93          	not	s5,s5
quickjs-nuttx/libbf.c:3876
                        while (n_digits > 1 &&
    8005e0d8:	4d85                	li	s11,1
    8005e0da:	032c09b3          	mul	s3,s8,s2
    8005e0de:	413789b3          	sub	s3,a5,s3
    8005e0e2:	018ddb63          	bge	s11,s8,8005e0f8 <bf_ftoa_internal+0x3ce>
quickjs-nuttx/libbf.c:3877 (discriminator 1)
                               (get_bits(a1->tab, a1->len, pos - n_digits * radix_bits) & digit_mask) == 0) {
    8005e0e6:	864e                	mv	a2,s3
    8005e0e8:	85e6                	mv	a1,s9
    8005e0ea:	856a                	mv	a0,s10
    8005e0ec:	9fff80ef          	jal	ra,80056aea <get_bits>
    8005e0f0:	01557533          	and	a0,a0,s5
quickjs-nuttx/libbf.c:3876 (discriminator 1)
                        while (n_digits > 1 &&
    8005e0f4:	99ca                	add	s3,s3,s2
    8005e0f6:	c519                	beqz	a0,8005e104 <bf_ftoa_internal+0x3da>
quickjs-nuttx/libbf.c:3880
                        n_max = n_digits + 4;
    8005e0f8:	004c0a93          	addi	s5,s8,4
    8005e0fc:	b755                	j	8005e0a0 <bf_ftoa_internal+0x376>
ceil_div():
quickjs-nuttx/libbf.c:136
        return a / b;
    8005e0fe:	0327cc33          	div	s8,a5,s2
    8005e102:	b7e9                	j	8005e0cc <bf_ftoa_internal+0x3a2>
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3878
                            n_digits--;
    8005e104:	1c7d                	addi	s8,s8,-1
    8005e106:	bff1                	j	8005e0e2 <bf_ftoa_internal+0x3b8>
quickjs-nuttx/libbf.c:3887
                    a->tab = a2->tab;
    8005e108:	020ab703          	ld	a4,32(s5)
quickjs-nuttx/libbf.c:3889
                    a->expn = a2->expn;
    8005e10c:	f8e6                	sd	s9,112(sp)
quickjs-nuttx/libbf.c:3890
                    a->sign = 0;
    8005e10e:	d482                	sw	zero,104(sp)
quickjs-nuttx/libbf.c:3887
                    a->tab = a2->tab;
    8005e110:	e13a                	sd	a4,128(sp)
quickjs-nuttx/libbf.c:3888
                    a->len = a2->len;
    8005e112:	018ab703          	ld	a4,24(s5)
    8005e116:	0074fd13          	andi	s10,s1,7
    8005e11a:	fcba                	sd	a4,120(sp)
quickjs-nuttx/libbf.c:3892
                    if (fmt == BF_FTOA_FORMAT_FIXED) {
    8005e11c:	020b9063          	bnez	s7,8005e13c <bf_ftoa_internal+0x412>
quickjs-nuttx/libbf.c:3893
                        n_digits = prec;
    8005e120:	8c4e                	mv	s8,s3
quickjs-nuttx/libbf.c:3894
                        n_max = n_digits;
    8005e122:	8ace                	mv	s5,s3
quickjs-nuttx/libbf.c:3939
                    if (bf_convert_to_radix(a1, &n, a, radix, n_digits,
    8005e124:	4801                	li	a6,0
    8005e126:	87ea                	mv	a5,s10
    8005e128:	8762                	mv	a4,s8
    8005e12a:	86a2                	mv	a3,s0
    8005e12c:	1090                	addi	a2,sp,96
    8005e12e:	102c                	addi	a1,sp,40
    8005e130:	1828                	addi	a0,sp,56
    8005e132:	d16ff0ef          	jal	ra,8005d648 <bf_convert_to_radix>
    8005e136:	ec050be3          	beqz	a0,8005e00c <bf_ftoa_internal+0x2e2>
quickjs-nuttx/libbf.c:3941
                    fail1:
    8005e13a:	a049                	j	8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3898
                        assert(prec != BF_PREC_INF);
    8005e13c:	8389                	srli	a5,a5,0x2
    8005e13e:	00f99c63          	bne	s3,a5,8005e156 <bf_ftoa_internal+0x42c>
quickjs-nuttx/libbf.c:3898 (discriminator 1)
    8005e142:	6585                	lui	a1,0x1
    8005e144:	4601                	li	a2,0
    8005e146:	f3a58593          	addi	a1,a1,-198 # f3a <asinh-0x7ffff0c6>
    8005e14a:	00022517          	auipc	a0,0x22
    8005e14e:	47650513          	addi	a0,a0,1142 # 800805c0 <std_name.0+0x18>
    8005e152:	00b020ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:3899 (discriminator 2)
                        n_digits = 1 + bf_mul_log2_radix(prec, radix, TRUE, TRUE);
    8005e156:	4685                	li	a3,1
    8005e158:	4605                	li	a2,1
    8005e15a:	85a2                	mv	a1,s0
    8005e15c:	854e                	mv	a0,s3
    8005e15e:	812fb0ef          	jal	ra,80059170 <bf_mul_log2_radix>
quickjs-nuttx/libbf.c:3904 (discriminator 2)
                        if (fmt == BF_FTOA_FORMAT_FREE_MIN) {
    8005e162:	000307b7          	lui	a5,0x30
quickjs-nuttx/libbf.c:3899 (discriminator 2)
                        n_digits = 1 + bf_mul_log2_radix(prec, radix, TRUE, TRUE);
    8005e166:	00150c13          	addi	s8,a0,1
quickjs-nuttx/libbf.c:3903 (discriminator 2)
                        n_max = n_digits + 4;
    8005e16a:	00550a93          	addi	s5,a0,5
quickjs-nuttx/libbf.c:3904 (discriminator 2)
                        if (fmt == BF_FTOA_FORMAT_FREE_MIN) {
    8005e16e:	fafb9be3          	bne	s7,a5,8005e124 <bf_ftoa_internal+0x3fa>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e172:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e174:	c902                	sw	zero,144(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e176:	ed6e                	sd	s11,152(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e178:	e53e                	sd	a5,136(sp)
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3760
                        if (bfdec_round((bfdec_t *)a1, prec, (flags & BF_RND_MASK) | BF_FLAG_RADPNT_PREC) & BF_ST_MEM_ERROR)
    8005e17a:	000d079b          	sext.w	a5,s10
    8005e17e:	e83e                	sd	a5,16(sp)
quickjs-nuttx/libbf.c:3921
                                ret = bf_mul_pow_radix(b, a1, radix, n - n_digits,
    8005e180:	ff84f793          	andi	a5,s1,-8
bf_init():
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e184:	f102                	sd	zero,160(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e186:	f502                	sd	zero,168(sp)
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3911
                            n_digits_min = 1;
    8005e188:	4c85                	li	s9,1
quickjs-nuttx/libbf.c:3921
                                ret = bf_mul_pow_radix(b, a1, radix, n - n_digits,
    8005e18a:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:3913
                            while (n_digits_min < n_digits_max) {
    8005e18c:	018cc663          	blt	s9,s8,8005e198 <bf_ftoa_internal+0x46e>
quickjs-nuttx/libbf.c:3935
                            bf_delete(b);
    8005e190:	0128                	addi	a0,sp,136
    8005e192:	919f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3936
                            n_digits = n_digits_max;
    8005e196:	b779                	j	8005e124 <bf_ftoa_internal+0x3fa>
quickjs-nuttx/libbf.c:3914
                                n_digits = (n_digits_min + n_digits_max) / 2;
    8005e198:	4789                	li	a5,2
    8005e19a:	019c0333          	add	t1,s8,s9
    8005e19e:	02f34db3          	div	s11,t1,a5
quickjs-nuttx/libbf.c:3915
                                if (bf_convert_to_radix(a1, &n, a, radix, n_digits,
    8005e1a2:	67c2                	ld	a5,16(sp)
    8005e1a4:	4801                	li	a6,0
    8005e1a6:	86a2                	mv	a3,s0
    8005e1a8:	1090                	addi	a2,sp,96
    8005e1aa:	102c                	addi	a1,sp,40
    8005e1ac:	1828                	addi	a0,sp,56
    8005e1ae:	876e                	mv	a4,s11
    8005e1b0:	c98ff0ef          	jal	ra,8005d648 <bf_convert_to_radix>
    8005e1b4:	c10d                	beqz	a0,8005e1d6 <bf_ftoa_internal+0x4ac>
quickjs-nuttx/libbf.c:3917
                                    bf_delete(b);
    8005e1b6:	0128                	addi	a0,sp,136
    8005e1b8:	8f3f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3942
                        bf_delete(a1);
    8005e1bc:	1828                	addi	a0,sp,56
    8005e1be:	8edf80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4010
    bf_free(ctx, s->buf);
    8005e1c2:	75ca                	ld	a1,176(sp)
    8005e1c4:	6522                	ld	a0,8(sp)
    8005e1c6:	8dbf80ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:4011
    if (plen)
    8005e1ca:	c00b02e3          	beqz	s6,8005ddce <bf_ftoa_internal+0xa4>
quickjs-nuttx/libbf.c:4012
        *plen = 0;
    8005e1ce:	000b3023          	sd	zero,0(s6)
quickjs-nuttx/libbf.c:4013
    return NULL;
    8005e1d2:	4b01                	li	s6,0
    8005e1d4:	beed                	j	8005ddce <bf_ftoa_internal+0xa4>
quickjs-nuttx/libbf.c:3921
                                ret = bf_mul_pow_radix(b, a1, radix, n - n_digits,
    8005e1d6:	76a2                	ld	a3,40(sp)
    8005e1d8:	67e2                	ld	a5,24(sp)
    8005e1da:	874e                	mv	a4,s3
    8005e1dc:	41b686b3          	sub	a3,a3,s11
    8005e1e0:	8622                	mv	a2,s0
    8005e1e2:	182c                	addi	a1,sp,56
    8005e1e4:	0128                	addi	a0,sp,136
    8005e1e6:	c55fe0ef          	jal	ra,8005ce3a <bf_mul_pow_radix>
quickjs-nuttx/libbf.c:3925
                                if (ret & BF_ST_MEM_ERROR) {
    8005e1ea:	02057513          	andi	a0,a0,32
    8005e1ee:	f561                	bnez	a0,8005e1b6 <bf_ftoa_internal+0x48c>
quickjs-nuttx/libbf.c:3929
                                if (bf_cmpu(b, a) == 0) {
    8005e1f0:	108c                	addi	a1,sp,96
    8005e1f2:	0128                	addi	a0,sp,136
    8005e1f4:	abafa0ef          	jal	ra,800584ae <bf_cmpu>
    8005e1f8:	c501                	beqz	a0,8005e200 <bf_ftoa_internal+0x4d6>
quickjs-nuttx/libbf.c:3932
                                    n_digits_min = n_digits + 1;
    8005e1fa:	001d8c93          	addi	s9,s11,1
    8005e1fe:	8de2                	mv	s11,s8
    8005e200:	8c6e                	mv	s8,s11
    8005e202:	b769                	j	8005e18c <bf_ftoa_internal+0x462>
quickjs-nuttx/libbf.c:3952
                    if (flags & BF_FTOA_ADD_PREFIX) {
    8005e204:	0154d793          	srli	a5,s1,0x15
    8005e208:	8b85                	andi	a5,a5,1
    8005e20a:	cb8d                	beqz	a5,8005e23c <bf_ftoa_internal+0x512>
quickjs-nuttx/libbf.c:3953
                        if (radix == 16)
    8005e20c:	47c1                	li	a5,16
quickjs-nuttx/libbf.c:3954
                            dbuf_putstr(s, "0x");
    8005e20e:	00022597          	auipc	a1,0x22
    8005e212:	55a58593          	addi	a1,a1,1370 # 80080768 <std_name.0+0x1c0>
quickjs-nuttx/libbf.c:3953
                        if (radix == 16)
    8005e216:	02f40063          	beq	s0,a5,8005e236 <bf_ftoa_internal+0x50c>
quickjs-nuttx/libbf.c:3955
                        else if (radix == 8)
    8005e21a:	47a1                	li	a5,8
quickjs-nuttx/libbf.c:3956
                            dbuf_putstr(s, "0o");
    8005e21c:	00022597          	auipc	a1,0x22
    8005e220:	55458593          	addi	a1,a1,1364 # 80080770 <std_name.0+0x1c8>
quickjs-nuttx/libbf.c:3955
                        else if (radix == 8)
    8005e224:	00f40963          	beq	s0,a5,8005e236 <bf_ftoa_internal+0x50c>
quickjs-nuttx/libbf.c:3957
                        else if (radix == 2)
    8005e228:	4789                	li	a5,2
    8005e22a:	00f41963          	bne	s0,a5,8005e23c <bf_ftoa_internal+0x512>
quickjs-nuttx/libbf.c:3958
                            dbuf_putstr(s, "0b");
    8005e22e:	00022597          	auipc	a1,0x22
    8005e232:	54a58593          	addi	a1,a1,1354 # 80080778 <std_name.0+0x1d0>
    8005e236:	1908                	addi	a0,sp,176
    8005e238:	8c3f30ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/libbf.c:3960
                    if (a1->expn == BF_EXP_ZERO)
    8005e23c:	6726                	ld	a4,72(sp)
    8005e23e:	57fd                	li	a5,-1
    8005e240:	17fe                	slli	a5,a5,0x3f
    8005e242:	00f71463          	bne	a4,a5,8005e24a <bf_ftoa_internal+0x520>
quickjs-nuttx/libbf.c:3961
                        n = 1;
    8005e246:	4785                	li	a5,1
    8005e248:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:3962
                    if ((flags & BF_FTOA_FORCE_EXP) ||
    8005e24a:	00099863          	bnez	s3,8005e25a <bf_ftoa_internal+0x530>
quickjs-nuttx/libbf.c:3963 (discriminator 1)
                        n <= -6 || n > n_max) {
    8005e24e:	7722                	ld	a4,40(sp)
quickjs-nuttx/libbf.c:3962 (discriminator 1)
                    if ((flags & BF_FTOA_FORCE_EXP) ||
    8005e250:	57ed                	li	a5,-5
    8005e252:	00f74463          	blt	a4,a5,8005e25a <bf_ftoa_internal+0x530>
quickjs-nuttx/libbf.c:3963
                        n <= -6 || n > n_max) {
    8005e256:	06ead863          	bge	s5,a4,8005e2c6 <bf_ftoa_internal+0x59c>
quickjs-nuttx/libbf.c:3966
                        output_digits(s, a1, radix, n_digits, 1, is_dec);
    8005e25a:	4705                	li	a4,1
    8005e25c:	86e2                	mv	a3,s8
    8005e25e:	87d2                	mv	a5,s4
    8005e260:	8622                	mv	a2,s0
    8005e262:	182c                	addi	a1,sp,56
    8005e264:	1908                	addi	a0,sp,176
    8005e266:	807ff0ef          	jal	ra,8005da6c <output_digits>
quickjs-nuttx/libbf.c:3738
            if (flags & BF_FTOA_JS_QUIRKS)
    8005e26a:	00400737          	lui	a4,0x400
    8005e26e:	76a2                	ld	a3,40(sp)
    8005e270:	8cf9                	and	s1,s1,a4
quickjs-nuttx/libbf.c:3967
                        if (radix_bits != 0 && radix <= 16) {
    8005e272:	02090563          	beqz	s2,8005e29c <bf_ftoa_internal+0x572>
quickjs-nuttx/libbf.c:3967 (discriminator 1)
    8005e276:	47c1                	li	a5,16
    8005e278:	0287c263          	blt	a5,s0,8005e29c <bf_ftoa_internal+0x572>
quickjs-nuttx/libbf.c:3969
                                fmt = "p%+" PRId_LIMB;
    8005e27c:	00022597          	auipc	a1,0x22
    8005e280:	4d458593          	addi	a1,a1,1236 # 80080750 <std_name.0+0x1a8>
quickjs-nuttx/libbf.c:3968
                            if (flags & BF_FTOA_JS_QUIRKS)
    8005e284:	e489                	bnez	s1,8005e28e <bf_ftoa_internal+0x564>
quickjs-nuttx/libbf.c:3971
                                fmt = "p%" PRId_LIMB;
    8005e286:	00022597          	auipc	a1,0x22
    8005e28a:	38a58593          	addi	a1,a1,906 # 80080610 <std_name.0+0x68>
quickjs-nuttx/libbf.c:3972
                            dbuf_printf(s, fmt, (n - 1) * radix_bits);
    8005e28e:	16fd                	addi	a3,a3,-1
    8005e290:	03268633          	mul	a2,a3,s2
    8005e294:	1908                	addi	a0,sp,176
    8005e296:	885f30ef          	jal	ra,80051b1a <dbuf_printf>
    8005e29a:	b905                	j	8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3975
                                fmt = "%c%+" PRId_LIMB;
    8005e29c:	00022597          	auipc	a1,0x22
    8005e2a0:	4bc58593          	addi	a1,a1,1212 # 80080758 <std_name.0+0x1b0>
quickjs-nuttx/libbf.c:3974
                            if (flags & BF_FTOA_JS_QUIRKS)
    8005e2a4:	e489                	bnez	s1,8005e2ae <bf_ftoa_internal+0x584>
quickjs-nuttx/libbf.c:3977
                                fmt = "%c%" PRId_LIMB;
    8005e2a6:	00022597          	auipc	a1,0x22
    8005e2aa:	4ba58593          	addi	a1,a1,1210 # 80080760 <std_name.0+0x1b8>
quickjs-nuttx/libbf.c:3978
                            dbuf_printf(s, fmt,
    8005e2ae:	47a9                	li	a5,10
    8005e2b0:	06500613          	li	a2,101
    8005e2b4:	0087d463          	bge	a5,s0,8005e2bc <bf_ftoa_internal+0x592>
    8005e2b8:	04000613          	li	a2,64
quickjs-nuttx/libbf.c:3978 (discriminator 4)
    8005e2bc:	16fd                	addi	a3,a3,-1
    8005e2be:	1908                	addi	a0,sp,176
    8005e2c0:	85bf30ef          	jal	ra,80051b1a <dbuf_printf>
    8005e2c4:	b119                	j	8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3981
                    } else if (n <= 0) {
    8005e2c6:	02e04963          	bgtz	a4,8005e2f8 <bf_ftoa_internal+0x5ce>
quickjs-nuttx/libbf.c:3983
                        dbuf_putstr(s, "0.");
    8005e2ca:	00022597          	auipc	a1,0x22
    8005e2ce:	36e58593          	addi	a1,a1,878 # 80080638 <std_name.0+0x90>
    8005e2d2:	1908                	addi	a0,sp,176
    8005e2d4:	827f30ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/libbf.c:3984
                        for(i = 0; i < -n; i++) {
    8005e2d8:	4481                	li	s1,0
quickjs-nuttx/libbf.c:3984 (discriminator 1)
    8005e2da:	77a2                	ld	a5,40(sp)
    8005e2dc:	40f007b3          	neg	a5,a5
    8005e2e0:	00f4c563          	blt	s1,a5,8005e2ea <bf_ftoa_internal+0x5c0>
quickjs-nuttx/libbf.c:3987
                        output_digits(s, a1, radix, n_digits, n_digits, is_dec);
    8005e2e4:	87d2                	mv	a5,s4
    8005e2e6:	8762                	mv	a4,s8
    8005e2e8:	b925                	j	8005df20 <bf_ftoa_internal+0x1f6>
quickjs-nuttx/libbf.c:3985 (discriminator 3)
                            dbuf_putc(s, '0');
    8005e2ea:	03000593          	li	a1,48
    8005e2ee:	1908                	addi	a0,sp,176
    8005e2f0:	ff2f30ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libbf.c:3984 (discriminator 3)
                        for(i = 0; i < -n; i++) {
    8005e2f4:	0485                	addi	s1,s1,1
    8005e2f6:	b7d5                	j	8005e2da <bf_ftoa_internal+0x5b0>
quickjs-nuttx/libbf.c:3991
                            output_digits(s, a1, radix, n_digits, n_digits, is_dec);
    8005e2f8:	87d2                	mv	a5,s4
quickjs-nuttx/libbf.c:3989
                        if (n_digits <= n) {
    8005e2fa:	03874663          	blt	a4,s8,8005e326 <bf_ftoa_internal+0x5fc>
quickjs-nuttx/libbf.c:3991
                            output_digits(s, a1, radix, n_digits, n_digits, is_dec);
    8005e2fe:	8622                	mv	a2,s0
    8005e300:	8762                	mv	a4,s8
    8005e302:	86e2                	mv	a3,s8
    8005e304:	182c                	addi	a1,sp,56
    8005e306:	1908                	addi	a0,sp,176
    8005e308:	f64ff0ef          	jal	ra,8005da6c <output_digits>
quickjs-nuttx/libbf.c:3992
                            for(i = 0; i < (n - n_digits); i++)
    8005e30c:	4401                	li	s0,0
quickjs-nuttx/libbf.c:3992 (discriminator 1)
    8005e30e:	77a2                	ld	a5,40(sp)
    8005e310:	418787b3          	sub	a5,a5,s8
    8005e314:	baf45be3          	bge	s0,a5,8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3993 (discriminator 3)
                                dbuf_putc(s, '0');
    8005e318:	03000593          	li	a1,48
    8005e31c:	1908                	addi	a0,sp,176
    8005e31e:	fc4f30ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libbf.c:3992 (discriminator 3)
                            for(i = 0; i < (n - n_digits); i++)
    8005e322:	0405                	addi	s0,s0,1
    8005e324:	b7ed                	j	8005e30e <bf_ftoa_internal+0x5e4>
quickjs-nuttx/libbf.c:3995
                            output_digits(s, a1, radix, n_digits, n, is_dec);
    8005e326:	86e2                	mv	a3,s8
    8005e328:	b139                	j	8005df36 <bf_ftoa_internal+0x20c>

000000008005e32a <bf_ftoa>:
bf_ftoa():
quickjs-nuttx/libbf.c:4019
    return bf_ftoa_internal(plen, a, radix, prec, flags, FALSE);
    8005e32a:	4781                	li	a5,0
    8005e32c:	9ffff06f          	j	8005dd2a <bf_ftoa_internal>

000000008005e330 <bfdec_ftoa>:
bfdec_ftoa():
quickjs-nuttx/libbf.c:7229
{
    8005e330:	8736                	mv	a4,a3
quickjs-nuttx/libbf.c:7230
    return bf_ftoa_internal(plen, (const bf_t *)a, 10, prec, flags, TRUE);
    8005e332:	4785                	li	a5,1
    8005e334:	86b2                	mv	a3,a2
    8005e336:	4629                	li	a2,10
    8005e338:	9f3ff06f          	j	8005dd2a <bf_ftoa_internal>

000000008005e33c <bf_exp_internal>:
bf_exp_internal():
quickjs-nuttx/libbf.c:4303
{
    8005e33c:	7135                	addi	sp,sp,-160
    8005e33e:	ed06                	sd	ra,152(sp)
    8005e340:	e922                	sd	s0,144(sp)
    8005e342:	e526                	sd	s1,136(sp)
    8005e344:	e14a                	sd	s2,128(sp)
    8005e346:	fcce                	sd	s3,120(sp)
    8005e348:	f8d2                	sd	s4,112(sp)
    8005e34a:	f4d6                	sd	s5,104(sp)
quickjs-nuttx/libbf.c:4304
    bf_context_t *s = r->ctx;
    8005e34c:	00053a83          	ld	s5,0(a0)
quickjs-nuttx/libbf.c:4308
    assert(r != a);
    8005e350:	00b51c63          	bne	a0,a1,8005e368 <bf_exp_internal+0x2c>
quickjs-nuttx/libbf.c:4308 (discriminator 1)
    8005e354:	6585                	lui	a1,0x1
    8005e356:	4601                	li	a2,0
    8005e358:	0d458593          	addi	a1,a1,212 # 10d4 <asinh-0x7fffef2c>
    8005e35c:	00022517          	auipc	a0,0x22
    8005e360:	26450513          	addi	a0,a0,612 # 800805c0 <std_name.0+0x18>
    8005e364:	5f8020ef          	jal	ra,8006095c <__assert>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e368:	57fd                	li	a5,-1
    8005e36a:	03f79713          	slli	a4,a5,0x3f
    8005e36e:	f03a                	sd	a4,32(sp)
bf_exp_internal():
quickjs-nuttx/libbf.c:4314
    if (a->expn <= -1) {
    8005e370:	6998                	ld	a4,16(a1)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e372:	e856                	sd	s5,16(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e374:	cc02                	sw	zero,24(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e376:	f402                	sd	zero,40(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e378:	f802                	sd	zero,48(sp)
    8005e37a:	84aa                	mv	s1,a0
    8005e37c:	89ae                	mv	s3,a1
    8005e37e:	8432                	mv	s0,a2
bf_exp_internal():
quickjs-nuttx/libbf.c:4314
    if (a->expn <= -1) {
    8005e380:	0c075063          	bgez	a4,8005e440 <bf_exp_internal+0x104>
quickjs-nuttx/libbf.c:4316
        if (a->sign)
    8005e384:	4598                	lw	a4,8(a1)
    8005e386:	cb5d                	beqz	a4,8005e43c <bf_exp_internal+0x100>
quickjs-nuttx/libbf.c:4317
            n = -1;
    8005e388:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:4326
    K = bf_isqrt((prec + 1) / 2);
    8005e38a:	00140513          	addi	a0,s0,1
    8005e38e:	8105                	srli	a0,a0,0x1
    8005e390:	f78fa0ef          	jal	ra,80058b08 <bf_isqrt>
quickjs-nuttx/libbf.c:4327
    l = (prec - 1) / K + 1;
    8005e394:	fff40913          	addi	s2,s0,-1
    8005e398:	02a95933          	divu	s2,s2,a0
quickjs-nuttx/libbf.c:4329
    prec1 = prec + (K + 2 * l + 18) + K + 8;
    8005e39c:	0469                	addi	s0,s0,26
    8005e39e:	942a                	add	s0,s0,a0
quickjs-nuttx/libbf.c:4326
    K = bf_isqrt((prec + 1) / 2);
    8005e3a0:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:4327
    l = (prec - 1) / K + 1;
    8005e3a2:	0905                	addi	s2,s2,1
quickjs-nuttx/libbf.c:4329
    prec1 = prec + (K + 2 * l + 18) + K + 8;
    8005e3a4:	00191793          	slli	a5,s2,0x1
    8005e3a8:	97aa                	add	a5,a5,a0
    8005e3aa:	943e                	add	s0,s0,a5
quickjs-nuttx/libbf.c:4330
    if (a->expn > 0)
    8005e3ac:	0109b783          	ld	a5,16(s3) # 100010 <asinh-0x7feffff0>
    8005e3b0:	00f05363          	blez	a5,8005e3b6 <bf_exp_internal+0x7a>
quickjs-nuttx/libbf.c:4331
        prec1 += a->expn;
    8005e3b4:	943e                	add	s0,s0,a5
quickjs-nuttx/libbf.c:4334
    bf_const_log2(T, prec1, BF_RNDF);
    8005e3b6:	4619                	li	a2,6
    8005e3b8:	85a2                	mv	a1,s0
    8005e3ba:	0808                	addi	a0,sp,16
    8005e3bc:	e85fa0ef          	jal	ra,80059240 <bf_const_log2>
quickjs-nuttx/libbf.c:4335
    bf_mul_si(T, T, n, prec1, BF_RNDN);
    8005e3c0:	6622                	ld	a2,8(sp)
    8005e3c2:	080c                	addi	a1,sp,16
    8005e3c4:	4701                	li	a4,0
    8005e3c6:	86a2                	mv	a3,s0
    8005e3c8:	852e                	mv	a0,a1
    8005e3ca:	e38fe0ef          	jal	ra,8005ca02 <bf_mul_si>
quickjs-nuttx/libbf.c:4336
    bf_sub(T, a, T, prec1, BF_RNDN);
    8005e3ce:	0810                	addi	a2,sp,16
    8005e3d0:	85ce                	mv	a1,s3
    8005e3d2:	4701                	li	a4,0
    8005e3d4:	86a2                	mv	a3,s0
    8005e3d6:	8532                	mv	a0,a2
    8005e3d8:	fccfa0ef          	jal	ra,80058ba4 <bf_sub>
quickjs-nuttx/libbf.c:4339
    bf_mul_2exp(T, -K, BF_PREC_INF, BF_RNDZ);
    8005e3dc:	59fd                	li	s3,-1
    8005e3de:	0029d613          	srli	a2,s3,0x2
    8005e3e2:	414005b3          	neg	a1,s4
    8005e3e6:	4685                	li	a3,1
    8005e3e8:	0808                	addi	a0,sp,16
    8005e3ea:	e9cfa0ef          	jal	ra,80058a86 <bf_mul_2exp>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e3ee:	19fe                	slli	s3,s3,0x3f
bf_exp_internal():
quickjs-nuttx/libbf.c:4349
        bf_set_ui(r, 1);
    8005e3f0:	4585                	li	a1,1
    8005e3f2:	8526                	mv	a0,s1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e3f4:	fc56                	sd	s5,56(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e3f6:	c082                	sw	zero,64(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e3f8:	e4ce                	sd	s3,72(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e3fa:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e3fc:	ec82                	sd	zero,88(sp)
bf_exp_internal():
quickjs-nuttx/libbf.c:4349
        bf_set_ui(r, 1);
    8005e3fe:	fe0f90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4350 (discriminator 1)
        for(i = l ; i >= 1; i--) {
    8005e402:	07204363          	bgtz	s2,8005e468 <bf_exp_internal+0x12c>
quickjs-nuttx/libbf.c:4356
        bf_delete(U);
    8005e406:	1828                	addi	a0,sp,56
    8005e408:	ea2f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4358
    bf_delete(T);
    8005e40c:	0808                	addi	a0,sp,16
    8005e40e:	e9cf80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4361
    for(i = 0; i < K; i++) {
    8005e412:	4901                	li	s2,0
quickjs-nuttx/libbf.c:4361 (discriminator 1)
    8005e414:	09494563          	blt	s2,s4,8005e49e <bf_exp_internal+0x162>
quickjs-nuttx/libbf.c:4366
    bf_mul_2exp(r, n, BF_PREC_INF, BF_RNDZ | BF_FLAG_EXT_EXP);
    8005e418:	65a2                	ld	a1,8(sp)
    8005e41a:	567d                	li	a2,-1
    8005e41c:	8526                	mv	a0,s1
    8005e41e:	7e100693          	li	a3,2017
    8005e422:	8209                	srli	a2,a2,0x2
    8005e424:	e62fa0ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4369
}
    8005e428:	60ea                	ld	ra,152(sp)
    8005e42a:	644a                	ld	s0,144(sp)
    8005e42c:	64aa                	ld	s1,136(sp)
    8005e42e:	690a                	ld	s2,128(sp)
    8005e430:	79e6                	ld	s3,120(sp)
    8005e432:	7a46                	ld	s4,112(sp)
    8005e434:	7aa6                	ld	s5,104(sp)
    8005e436:	4541                	li	a0,16
    8005e438:	610d                	addi	sp,sp,160
    8005e43a:	8082                	ret
quickjs-nuttx/libbf.c:4319
            n = 0;
    8005e43c:	e402                	sd	zero,8(sp)
    8005e43e:	b7b1                	j	8005e38a <bf_exp_internal+0x4e>
quickjs-nuttx/libbf.c:4321
        bf_const_log2(T, LIMB_BITS, BF_RNDZ);
    8005e440:	4605                	li	a2,1
    8005e442:	04000593          	li	a1,64
    8005e446:	0808                	addi	a0,sp,16
    8005e448:	df9fa0ef          	jal	ra,80059240 <bf_const_log2>
quickjs-nuttx/libbf.c:4322
        bf_div(T, a, T, LIMB_BITS, BF_RNDD);
    8005e44c:	0810                	addi	a2,sp,16
    8005e44e:	85ce                	mv	a1,s3
    8005e450:	4709                	li	a4,2
    8005e452:	04000693          	li	a3,64
    8005e456:	8532                	mv	a0,a2
    8005e458:	f58fa0ef          	jal	ra,80058bb0 <bf_div>
bf_get_limb():
quickjs-nuttx/libbf.c:1862
    return bf_get_int64(pres, a, flags);
    8005e45c:	4601                	li	a2,0
    8005e45e:	080c                	addi	a1,sp,16
    8005e460:	0028                	addi	a0,sp,8
    8005e462:	c0dfa0ef          	jal	ra,8005906e <bf_get_int64>
    8005e466:	b715                	j	8005e38a <bf_exp_internal+0x4e>
bf_exp_internal():
quickjs-nuttx/libbf.c:4351 (discriminator 3)
            bf_set_ui(U, i);
    8005e468:	85ca                	mv	a1,s2
    8005e46a:	1828                	addi	a0,sp,56
    8005e46c:	f72f90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4352 (discriminator 3)
            bf_div(U, T, U, prec1, BF_RNDN);
    8005e470:	1830                	addi	a2,sp,56
    8005e472:	4701                	li	a4,0
    8005e474:	86a2                	mv	a3,s0
    8005e476:	080c                	addi	a1,sp,16
    8005e478:	8532                	mv	a0,a2
    8005e47a:	f36fa0ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:4353 (discriminator 3)
            bf_mul(r, r, U, prec1, BF_RNDN);
    8005e47e:	4701                	li	a4,0
    8005e480:	86a2                	mv	a3,s0
    8005e482:	1830                	addi	a2,sp,56
    8005e484:	85a6                	mv	a1,s1
    8005e486:	8526                	mv	a0,s1
    8005e488:	aa8fe0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4354 (discriminator 3)
            bf_add_si(r, r, 1, prec1, BF_RNDN);
    8005e48c:	4701                	li	a4,0
    8005e48e:	86a2                	mv	a3,s0
    8005e490:	4605                	li	a2,1
    8005e492:	85a6                	mv	a1,s1
    8005e494:	8526                	mv	a0,s1
    8005e496:	f26fa0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4350 (discriminator 3)
        for(i = l ; i >= 1; i--) {
    8005e49a:	197d                	addi	s2,s2,-1
    8005e49c:	b79d                	j	8005e402 <bf_exp_internal+0xc6>
quickjs-nuttx/libbf.c:4362 (discriminator 3)
        bf_mul(r, r, r, prec1, BF_RNDN | BF_FLAG_EXT_EXP);
    8005e49e:	7e000713          	li	a4,2016
    8005e4a2:	86a2                	mv	a3,s0
    8005e4a4:	8626                	mv	a2,s1
    8005e4a6:	85a6                	mv	a1,s1
    8005e4a8:	8526                	mv	a0,s1
    8005e4aa:	a86fe0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4361 (discriminator 3)
    for(i = 0; i < K; i++) {
    8005e4ae:	0905                	addi	s2,s2,1
    8005e4b0:	b795                	j	8005e414 <bf_exp_internal+0xd8>

000000008005e4b2 <bf_log_internal>:
bf_log_internal():
quickjs-nuttx/libbf.c:4454
{
    8005e4b2:	716d                	addi	sp,sp,-272
    8005e4b4:	e606                	sd	ra,264(sp)
    8005e4b6:	e222                	sd	s0,256(sp)
    8005e4b8:	fda6                	sd	s1,248(sp)
    8005e4ba:	f9ca                	sd	s2,240(sp)
    8005e4bc:	f5ce                	sd	s3,232(sp)
    8005e4be:	f1d2                	sd	s4,224(sp)
    8005e4c0:	edd6                	sd	s5,216(sp)
    8005e4c2:	e9da                	sd	s6,208(sp)
quickjs-nuttx/libbf.c:4455
    bf_context_t *s = r->ctx;
    8005e4c4:	00053a03          	ld	s4,0(a0)
quickjs-nuttx/libbf.c:4461
    assert(r != a);
    8005e4c8:	00b51c63          	bne	a0,a1,8005e4e0 <bf_log_internal+0x2e>
quickjs-nuttx/libbf.c:4461 (discriminator 1)
    8005e4cc:	6585                	lui	a1,0x1
    8005e4ce:	4601                	li	a2,0
    8005e4d0:	16d58593          	addi	a1,a1,365 # 116d <asinh-0x7fffee93>
    8005e4d4:	00022517          	auipc	a0,0x22
    8005e4d8:	0ec50513          	addi	a0,a0,236 # 800805c0 <std_name.0+0x18>
    8005e4dc:	480020ef          	jal	ra,8006095c <__assert>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e4e0:	597d                	li	s2,-1
    8005e4e2:	197e                	slli	s2,s2,0x3f
    8005e4e4:	84aa                	mv	s1,a0
bf_log_internal():
quickjs-nuttx/libbf.c:4468
        bf_set(T, a);
    8005e4e6:	0028                	addi	a0,sp,8
    8005e4e8:	8432                	mv	s0,a2
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e4ea:	e452                	sd	s4,8(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e4ec:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e4ee:	ec4a                	sd	s2,24(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e4f0:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e4f2:	f402                	sd	zero,40(sp)
bf_log_internal():
quickjs-nuttx/libbf.c:4468
        bf_set(T, a);
    8005e4f4:	b2ff90ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4473
        bf_set_ui(U, 0xaaaaaaaa); 
    8005e4f8:	555555b7          	lui	a1,0x55555
    8005e4fc:	55558593          	addi	a1,a1,1365 # 55555555 <asinh-0x2aaaaaab>
    8005e500:	0586                	slli	a1,a1,0x1
    8005e502:	1128                	addi	a0,sp,168
quickjs-nuttx/libbf.c:4469
        n = T->expn;
    8005e504:	6ae2                	ld	s5,24(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e506:	f552                	sd	s4,168(sp)
bf_log_internal():
quickjs-nuttx/libbf.c:4470
        T->expn = 0;
    8005e508:	ec02                	sd	zero,24(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e50a:	d902                	sw	zero,176(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e50c:	fd4a                	sd	s2,184(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e50e:	e182                	sd	zero,192(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e510:	e582                	sd	zero,200(sp)
bf_log_internal():
quickjs-nuttx/libbf.c:4473
        bf_set_ui(U, 0xaaaaaaaa); 
    8005e512:	eccf90ef          	jal	ra,80057bde <bf_set_ui>
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    return bf_cmp(a, b) < 0;
    8005e516:	112c                	addi	a1,sp,168
    8005e518:	0028                	addi	a0,sp,8
bf_log_internal():
quickjs-nuttx/libbf.c:4474
        U->expn = 0;
    8005e51a:	fd02                	sd	zero,184(sp)
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    8005e51c:	c50fa0ef          	jal	ra,8005896c <bf_cmp>
bf_log_internal():
quickjs-nuttx/libbf.c:4475
        if (bf_cmp_lt(T, U)) {
    8005e520:	00055663          	bgez	a0,8005e52c <bf_log_internal+0x7a>
quickjs-nuttx/libbf.c:4476
            T->expn++;
    8005e524:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:4477
            n--;
    8005e526:	1afd                	addi	s5,s5,-1
quickjs-nuttx/libbf.c:4476
            T->expn++;
    8005e528:	0785                	addi	a5,a5,1
    8005e52a:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:4479
        bf_delete(U);
    8005e52c:	1128                	addi	a0,sp,168
    8005e52e:	d7cf80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4486
    K = bf_isqrt((prec + 1) / 2); 
    8005e532:	00140513          	addi	a0,s0,1
    8005e536:	8105                	srli	a0,a0,0x1
    8005e538:	dd0fa0ef          	jal	ra,80058b08 <bf_isqrt>
quickjs-nuttx/libbf.c:4488
    l = prec / (2 * K) + 1; 
    8005e53c:	00151913          	slli	s2,a0,0x1
    8005e540:	03245933          	divu	s2,s0,s2
quickjs-nuttx/libbf.c:4490
    prec1 = prec + K + 2 * l + 32;
    8005e544:	02040413          	addi	s0,s0,32
    8005e548:	942a                	add	s0,s0,a0
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e54a:	56fd                	li	a3,-1
bf_log_internal():
quickjs-nuttx/libbf.c:4497
    bf_add_si(T, T, -1, BF_PREC_INF, BF_RNDN); 
    8005e54c:	002c                	addi	a1,sp,8
quickjs-nuttx/libbf.c:4486
    K = bf_isqrt((prec + 1) / 2); 
    8005e54e:	89aa                	mv	s3,a0
quickjs-nuttx/libbf.c:4497
    bf_add_si(T, T, -1, BF_PREC_INF, BF_RNDN); 
    8005e550:	4701                	li	a4,0
    8005e552:	567d                	li	a2,-1
    8005e554:	852e                	mv	a0,a1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e556:	f852                	sd	s4,48(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e558:	dc02                	sw	zero,56(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e55a:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e55c:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e55e:	ecd2                	sd	s4,88(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e560:	d082                	sw	zero,96(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e562:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e564:	fc82                	sd	zero,120(sp)
bf_log_internal():
quickjs-nuttx/libbf.c:4500
    for(i = 0; i < K; i++) {
    8005e566:	4b01                	li	s6,0
quickjs-nuttx/libbf.c:4488
    l = prec / (2 * K) + 1; 
    8005e568:	0905                	addi	s2,s2,1
quickjs-nuttx/libbf.c:4490
    prec1 = prec + K + 2 * l + 32;
    8005e56a:	00191793          	slli	a5,s2,0x1
    8005e56e:	943e                	add	s0,s0,a5
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e570:	03f69793          	slli	a5,a3,0x3f
bf_log_internal():
quickjs-nuttx/libbf.c:4497
    bf_add_si(T, T, -1, BF_PREC_INF, BF_RNDN); 
    8005e574:	8289                	srli	a3,a3,0x2
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e576:	e0be                	sd	a5,64(sp)
    8005e578:	f4be                	sd	a5,104(sp)
bf_log_internal():
quickjs-nuttx/libbf.c:4497
    bf_add_si(T, T, -1, BF_PREC_INF, BF_RNDN); 
    8005e57a:	e42fa0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4500 (discriminator 1)
    for(i = 0; i < K; i++) {
    8005e57e:	0d3b4c63          	blt	s6,s3,8005e656 <bf_log_internal+0x1a4>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e582:	57fd                	li	a5,-1
    8005e584:	17fe                	slli	a5,a5,0x3f
bf_log_internal():
quickjs-nuttx/libbf.c:4519
        bf_add_si(Y, T, 2, prec1, BF_RNDN);
    8005e586:	4701                	li	a4,0
    8005e588:	86a2                	mv	a3,s0
    8005e58a:	4609                	li	a2,2
    8005e58c:	002c                	addi	a1,sp,8
    8005e58e:	0108                	addi	a0,sp,128
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e590:	e93e                	sd	a5,144(sp)
    8005e592:	fd3e                	sd	a5,184(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e594:	e152                	sd	s4,128(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e596:	c502                	sw	zero,136(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e598:	ed02                	sd	zero,152(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e59a:	f102                	sd	zero,160(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e59c:	f552                	sd	s4,168(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e59e:	d902                	sw	zero,176(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e5a0:	e182                	sd	zero,192(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e5a2:	e582                	sd	zero,200(sp)
bf_log_internal():
quickjs-nuttx/libbf.c:4519
        bf_add_si(Y, T, 2, prec1, BF_RNDN);
    8005e5a4:	e18fa0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4520
        bf_div(Y, T, Y, prec1, BF_RNDN);
    8005e5a8:	0110                	addi	a2,sp,128
    8005e5aa:	4701                	li	a4,0
    8005e5ac:	86a2                	mv	a3,s0
    8005e5ae:	002c                	addi	a1,sp,8
    8005e5b0:	8532                	mv	a0,a2
    8005e5b2:	dfefa0ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:4522
        bf_mul(Y2, Y, Y, prec1, BF_RNDN);
    8005e5b6:	0110                	addi	a2,sp,128
    8005e5b8:	85b2                	mv	a1,a2
    8005e5ba:	4701                	li	a4,0
    8005e5bc:	86a2                	mv	a3,s0
    8005e5be:	1128                	addi	a0,sp,168
    8005e5c0:	970fe0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4523
        bf_set_ui(r, 0);
    8005e5c4:	4581                	li	a1,0
    8005e5c6:	8526                	mv	a0,s1
    8005e5c8:	e16f90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4524 (discriminator 1)
        for(i = l; i >= 1; i--) {
    8005e5cc:	0d204263          	bgtz	s2,8005e690 <bf_log_internal+0x1de>
quickjs-nuttx/libbf.c:4531
        bf_add_si(r, r, 1, prec1, BF_RNDN);
    8005e5d0:	86a2                	mv	a3,s0
    8005e5d2:	85a6                	mv	a1,s1
    8005e5d4:	4701                	li	a4,0
    8005e5d6:	4605                	li	a2,1
    8005e5d8:	8526                	mv	a0,s1
    8005e5da:	de2fa0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4532
        bf_mul(r, r, Y, prec1, BF_RNDN);
    8005e5de:	4701                	li	a4,0
    8005e5e0:	86a2                	mv	a3,s0
    8005e5e2:	0110                	addi	a2,sp,128
    8005e5e4:	85a6                	mv	a1,s1
    8005e5e6:	8526                	mv	a0,s1
    8005e5e8:	948fe0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4533
        bf_delete(Y);
    8005e5ec:	0108                	addi	a0,sp,128
    8005e5ee:	cbcf80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4534
        bf_delete(Y2);
    8005e5f2:	1128                	addi	a0,sp,168
    8005e5f4:	cb6f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4536
    bf_delete(V);
    8005e5f8:	08a8                	addi	a0,sp,88
    8005e5fa:	cb0f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4537
    bf_delete(U);
    8005e5fe:	1808                	addi	a0,sp,48
    8005e600:	caaf80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4541
    bf_mul_2exp(r, K + 1, BF_PREC_INF, BF_RNDZ);
    8005e604:	567d                	li	a2,-1
    8005e606:	4685                	li	a3,1
    8005e608:	00198593          	addi	a1,s3,1
    8005e60c:	8209                	srli	a2,a2,0x2
    8005e60e:	8526                	mv	a0,s1
    8005e610:	c76fa0ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4544
    bf_const_log2(T, prec1, BF_RNDF);
    8005e614:	85a2                	mv	a1,s0
    8005e616:	4619                	li	a2,6
    8005e618:	0028                	addi	a0,sp,8
    8005e61a:	c27fa0ef          	jal	ra,80059240 <bf_const_log2>
quickjs-nuttx/libbf.c:4545
    bf_mul_si(T, T, n, prec1, BF_RNDN);
    8005e61e:	002c                	addi	a1,sp,8
    8005e620:	86a2                	mv	a3,s0
    8005e622:	8656                	mv	a2,s5
    8005e624:	4701                	li	a4,0
    8005e626:	852e                	mv	a0,a1
    8005e628:	bdafe0ef          	jal	ra,8005ca02 <bf_mul_si>
quickjs-nuttx/libbf.c:4546
    bf_add(r, r, T, prec1, BF_RNDN);
    8005e62c:	86a2                	mv	a3,s0
    8005e62e:	0030                	addi	a2,sp,8
    8005e630:	85a6                	mv	a1,s1
    8005e632:	4701                	li	a4,0
    8005e634:	8526                	mv	a0,s1
    8005e636:	d06fa0ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:4548
    bf_delete(T);
    8005e63a:	0028                	addi	a0,sp,8
    8005e63c:	c6ef80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4550
}
    8005e640:	60b2                	ld	ra,264(sp)
    8005e642:	6412                	ld	s0,256(sp)
    8005e644:	74ee                	ld	s1,248(sp)
    8005e646:	794e                	ld	s2,240(sp)
    8005e648:	79ae                	ld	s3,232(sp)
    8005e64a:	7a0e                	ld	s4,224(sp)
    8005e64c:	6aee                	ld	s5,216(sp)
    8005e64e:	6b4e                	ld	s6,208(sp)
    8005e650:	4541                	li	a0,16
    8005e652:	6151                	addi	sp,sp,272
    8005e654:	8082                	ret
quickjs-nuttx/libbf.c:4502 (discriminator 3)
        bf_add_si(U, T, 1, prec1, BF_RNDN);
    8005e656:	4701                	li	a4,0
    8005e658:	86a2                	mv	a3,s0
    8005e65a:	4605                	li	a2,1
    8005e65c:	002c                	addi	a1,sp,8
    8005e65e:	1808                	addi	a0,sp,48
    8005e660:	d5cfa0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4503 (discriminator 3)
        bf_sqrt(V, U, prec1, BF_RNDF);
    8005e664:	4699                	li	a3,6
    8005e666:	8622                	mv	a2,s0
    8005e668:	180c                	addi	a1,sp,48
    8005e66a:	08a8                	addi	a0,sp,88
    8005e66c:	f31fd0ef          	jal	ra,8005c59c <bf_sqrt>
quickjs-nuttx/libbf.c:4504 (discriminator 3)
        bf_add_si(U, V, 1, prec1, BF_RNDN);
    8005e670:	4701                	li	a4,0
    8005e672:	86a2                	mv	a3,s0
    8005e674:	4605                	li	a2,1
    8005e676:	08ac                	addi	a1,sp,88
    8005e678:	1808                	addi	a0,sp,48
    8005e67a:	d42fa0ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4505 (discriminator 3)
        bf_div(T, T, U, prec1, BF_RNDN);
    8005e67e:	002c                	addi	a1,sp,8
    8005e680:	4701                	li	a4,0
    8005e682:	86a2                	mv	a3,s0
    8005e684:	1810                	addi	a2,sp,48
    8005e686:	852e                	mv	a0,a1
    8005e688:	d28fa0ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:4500 (discriminator 3)
    for(i = 0; i < K; i++) {
    8005e68c:	0b05                	addi	s6,s6,1
    8005e68e:	bdc5                	j	8005e57e <bf_log_internal+0xcc>
quickjs-nuttx/libbf.c:4525 (discriminator 3)
            bf_set_ui(U, 1);
    8005e690:	4585                	li	a1,1
    8005e692:	1808                	addi	a0,sp,48
    8005e694:	d4af90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4526 (discriminator 3)
            bf_set_ui(V, 2 * i + 1);
    8005e698:	00191593          	slli	a1,s2,0x1
    8005e69c:	0585                	addi	a1,a1,1
    8005e69e:	08a8                	addi	a0,sp,88
    8005e6a0:	d3ef90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4527 (discriminator 3)
            bf_div(U, U, V, prec1, BF_RNDN);
    8005e6a4:	180c                	addi	a1,sp,48
    8005e6a6:	4701                	li	a4,0
    8005e6a8:	86a2                	mv	a3,s0
    8005e6aa:	08b0                	addi	a2,sp,88
    8005e6ac:	852e                	mv	a0,a1
    8005e6ae:	d02fa0ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:4528 (discriminator 3)
            bf_add(r, r, U, prec1, BF_RNDN);
    8005e6b2:	4701                	li	a4,0
    8005e6b4:	86a2                	mv	a3,s0
    8005e6b6:	1810                	addi	a2,sp,48
    8005e6b8:	85a6                	mv	a1,s1
    8005e6ba:	8526                	mv	a0,s1
    8005e6bc:	c80fa0ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:4529 (discriminator 3)
            bf_mul(r, r, Y2, prec1, BF_RNDN);
    8005e6c0:	4701                	li	a4,0
    8005e6c2:	86a2                	mv	a3,s0
    8005e6c4:	1130                	addi	a2,sp,168
    8005e6c6:	85a6                	mv	a1,s1
    8005e6c8:	8526                	mv	a0,s1
    8005e6ca:	866fe0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4524 (discriminator 3)
        for(i = l; i >= 1; i--) {
    8005e6ce:	197d                	addi	s2,s2,-1
    8005e6d0:	bdf5                	j	8005e5cc <bf_log_internal+0x11a>

000000008005e6d2 <bf_pow>:
bf_pow():
quickjs-nuttx/libbf.c:4679
{
    8005e6d2:	7115                	addi	sp,sp,-224
    8005e6d4:	e9a2                	sd	s0,208(sp)
    8005e6d6:	e5a6                	sd	s1,200(sp)
    8005e6d8:	e1ca                	sd	s2,192(sp)
    8005e6da:	fd4e                	sd	s3,184(sp)
    8005e6dc:	ed86                	sd	ra,216(sp)
    8005e6de:	f952                	sd	s4,176(sp)
    8005e6e0:	f556                	sd	s5,168(sp)
    8005e6e2:	f15a                	sd	s6,160(sp)
    8005e6e4:	ed5e                	sd	s7,152(sp)
    8005e6e6:	e962                	sd	s8,144(sp)
    8005e6e8:	e566                	sd	s9,136(sp)
quickjs-nuttx/libbf.c:4687
    if (x->len == 0 || y->len == 0) {
    8005e6ea:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/libbf.c:4679
{
    8005e6ec:	842a                	mv	s0,a0
    8005e6ee:	84ae                	mv	s1,a1
    8005e6f0:	8932                	mv	s2,a2
    8005e6f2:	89ba                	mv	s3,a4
quickjs-nuttx/libbf.c:4687
    if (x->len == 0 || y->len == 0) {
    8005e6f4:	c781                	beqz	a5,8005e6fc <bf_pow+0x2a>
quickjs-nuttx/libbf.c:4687 (discriminator 1)
    8005e6f6:	6e1c                	ld	a5,24(a2)
    8005e6f8:	0e079363          	bnez	a5,8005e7de <bf_pow+0x10c>
quickjs-nuttx/libbf.c:4688
        if (y->expn == BF_EXP_ZERO) {
    8005e6fc:	01093683          	ld	a3,16(s2)
    8005e700:	57fd                	li	a5,-1
    8005e702:	03f79713          	slli	a4,a5,0x3f
    8005e706:	00e69863          	bne	a3,a4,8005e716 <bf_pow+0x44>
quickjs-nuttx/libbf.c:4690
            bf_set_ui(r, 1);
    8005e70a:	4585                	li	a1,1
    8005e70c:	8522                	mv	a0,s0
    8005e70e:	cd0f90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4726
        return 0;
    8005e712:	4481                	li	s1,0
    8005e714:	a07d                	j	8005e7c2 <bf_pow+0xf0>
quickjs-nuttx/libbf.c:4691
        } else if (x->expn == BF_EXP_NAN) {
    8005e716:	6898                	ld	a4,16(s1)
    8005e718:	8385                	srli	a5,a5,0x1
    8005e71a:	00f71663          	bne	a4,a5,8005e726 <bf_pow+0x54>
quickjs-nuttx/libbf.c:4692
            bf_set_nan(r);
    8005e71e:	8522                	mv	a0,s0
    8005e720:	c9ef90ef          	jal	ra,80057bbe <bf_set_nan>
    8005e724:	b7fd                	j	8005e712 <bf_pow+0x40>
quickjs-nuttx/libbf.c:4695
            bf_set_ui(r, 1);
    8005e726:	4585                	li	a1,1
    8005e728:	8522                	mv	a0,s0
    8005e72a:	cb4f90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4696
            cmp_x_abs_1 = bf_cmpu(x, r);
    8005e72e:	85a2                	mv	a1,s0
    8005e730:	8526                	mv	a0,s1
    8005e732:	d7df90ef          	jal	ra,800584ae <bf_cmpu>
quickjs-nuttx/libbf.c:4697
            if (cmp_x_abs_1 == 0 && (flags & BF_POW_JS_QUIRKS) &&
    8005e736:	e50d                	bnez	a0,8005e760 <bf_pow+0x8e>
quickjs-nuttx/libbf.c:4697 (discriminator 1)
    8005e738:	0109d993          	srli	s3,s3,0x10
    8005e73c:	0019f993          	andi	s3,s3,1
    8005e740:	00098863          	beqz	s3,8005e750 <bf_pow+0x7e>
quickjs-nuttx/libbf.c:4697 (discriminator 2)
    8005e744:	01093703          	ld	a4,16(s2)
    8005e748:	57ed                	li	a5,-5
    8005e74a:	8385                	srli	a5,a5,0x1
    8005e74c:	fce7c9e3          	blt	a5,a4,8005e71e <bf_pow+0x4c>
quickjs-nuttx/libbf.c:4700 (discriminator 1)
            } else if (cmp_x_abs_1 == 0 &&
    8005e750:	449c                	lw	a5,8(s1)
    8005e752:	d3e1                	beqz	a5,8005e712 <bf_pow+0x40>
quickjs-nuttx/libbf.c:4701
                       (!x->sign || y->expn != BF_EXP_NAN)) {
    8005e754:	01093703          	ld	a4,16(s2)
    8005e758:	57fd                	li	a5,-1
    8005e75a:	8385                	srli	a5,a5,0x1
    8005e75c:	faf71be3          	bne	a4,a5,8005e712 <bf_pow+0x40>
quickjs-nuttx/libbf.c:4704
            } else if (y->expn == BF_EXP_NAN) {
    8005e760:	01093703          	ld	a4,16(s2)
    8005e764:	5a7d                	li	s4,-1
    8005e766:	001a5793          	srli	a5,s4,0x1
    8005e76a:	faf70ae3          	beq	a4,a5,8005e71e <bf_pow+0x4c>
quickjs-nuttx/libbf.c:4706
            } else if (y->expn == BF_EXP_INF) {
    8005e76e:	57f5                	li	a5,-3
    8005e770:	8385                	srli	a5,a5,0x1
    8005e772:	00892983          	lw	s3,8(s2)
    8005e776:	02f71063          	bne	a4,a5,8005e796 <bf_pow+0xc4>
quickjs-nuttx/libbf.c:4707
                if (y->sign == (cmp_x_abs_1 > 0)) {
    8005e77a:	2981                	sext.w	s3,s3
    8005e77c:	00a02533          	sgtz	a0,a0
quickjs-nuttx/libbf.c:4708
                    bf_set_zero(r, 0);
    8005e780:	4581                	li	a1,0
quickjs-nuttx/libbf.c:4707
                if (y->sign == (cmp_x_abs_1 > 0)) {
    8005e782:	00a99663          	bne	s3,a0,8005e78e <bf_pow+0xbc>
quickjs-nuttx/libbf.c:4708
                    bf_set_zero(r, 0);
    8005e786:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:4722
                    bf_set_zero(r, y_is_odd & x->sign);
    8005e788:	cd8f90ef          	jal	ra,80057c60 <bf_set_zero>
    8005e78c:	b759                	j	8005e712 <bf_pow+0x40>
quickjs-nuttx/libbf.c:4710
                    bf_set_inf(r, 0);
    8005e78e:	8522                	mv	a0,s0
    8005e790:	cf4f90ef          	jal	ra,80057c84 <bf_set_inf>
    8005e794:	bfbd                	j	8005e712 <bf_pow+0x40>
quickjs-nuttx/libbf.c:4713
                y_emin = bf_get_exp_min(y);
    8005e796:	854a                	mv	a0,s2
    8005e798:	b28fa0ef          	jal	ra,80058ac0 <bf_get_exp_min>
quickjs-nuttx/libbf.c:4716
                    bf_set_inf(r, y_is_odd & x->sign);
    8005e79c:	449c                	lw	a5,8(s1)
    8005e79e:	00153593          	seqz	a1,a0
quickjs-nuttx/libbf.c:4715
                if (y->sign == (x->expn == BF_EXP_ZERO)) {
    8005e7a2:	1a7e                	slli	s4,s4,0x3f
quickjs-nuttx/libbf.c:4716
                    bf_set_inf(r, y_is_odd & x->sign);
    8005e7a4:	8dfd                	and	a1,a1,a5
quickjs-nuttx/libbf.c:4715
                if (y->sign == (x->expn == BF_EXP_ZERO)) {
    8005e7a6:	689c                	ld	a5,16(s1)
    8005e7a8:	2981                	sext.w	s3,s3
quickjs-nuttx/libbf.c:4716
                    bf_set_inf(r, y_is_odd & x->sign);
    8005e7aa:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:4715
                if (y->sign == (x->expn == BF_EXP_ZERO)) {
    8005e7ac:	97d2                	add	a5,a5,s4
    8005e7ae:	0017b793          	seqz	a5,a5
    8005e7b2:	fcf99be3          	bne	s3,a5,8005e788 <bf_pow+0xb6>
quickjs-nuttx/libbf.c:4716
                    bf_set_inf(r, y_is_odd & x->sign);
    8005e7b6:	ccef90ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:4717
                    if (y->sign) {
    8005e7ba:	00892783          	lw	a5,8(s2)
quickjs-nuttx/libbf.c:4719
                        return BF_ST_DIVIDE_ZERO;
    8005e7be:	4489                	li	s1,2
quickjs-nuttx/libbf.c:4717
                    if (y->sign) {
    8005e7c0:	dba9                	beqz	a5,8005e712 <bf_pow+0x40>
quickjs-nuttx/libbf.c:4846 (discriminator 3)
}
    8005e7c2:	60ee                	ld	ra,216(sp)
    8005e7c4:	644e                	ld	s0,208(sp)
    8005e7c6:	690e                	ld	s2,192(sp)
    8005e7c8:	79ea                	ld	s3,184(sp)
    8005e7ca:	7a4a                	ld	s4,176(sp)
    8005e7cc:	7aaa                	ld	s5,168(sp)
    8005e7ce:	7b0a                	ld	s6,160(sp)
    8005e7d0:	6bea                	ld	s7,152(sp)
    8005e7d2:	6c4a                	ld	s8,144(sp)
    8005e7d4:	6caa                	ld	s9,136(sp)
    8005e7d6:	8526                	mv	a0,s1
    8005e7d8:	64ae                	ld	s1,200(sp)
    8005e7da:	612d                	addi	sp,sp,224
    8005e7dc:	8082                	ret
quickjs-nuttx/libbf.c:4680
    bf_context_t *s = r->ctx;
    8005e7de:	00053c83          	ld	s9,0(a0)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e7e2:	57fd                	li	a5,-1
    8005e7e4:	17fe                	slli	a5,a5,0x3f
bf_pow():
quickjs-nuttx/libbf.c:4729
    bf_set(T, x);
    8005e7e6:	0028                	addi	a0,sp,8
    8005e7e8:	8a36                	mv	s4,a3
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e7ea:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e7ec:	e466                	sd	s9,8(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e7ee:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e7f0:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e7f2:	f402                	sd	zero,40(sp)
bf_pow():
quickjs-nuttx/libbf.c:4729
    bf_set(T, x);
    8005e7f4:	82ff90ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4730
    y_emin = bf_get_exp_min(y);
    8005e7f8:	854a                	mv	a0,s2
    8005e7fa:	ac6fa0ef          	jal	ra,80058ac0 <bf_get_exp_min>
quickjs-nuttx/libbf.c:4733
    if (x->sign) {
    8005e7fe:	0084aa83          	lw	s5,8(s1)
quickjs-nuttx/libbf.c:4730
    y_emin = bf_get_exp_min(y);
    8005e802:	8b2a                	mv	s6,a0
quickjs-nuttx/libbf.c:4732
    rnd_mode = flags & BF_RND_MASK;
    8005e804:	874e                	mv	a4,s3
    8005e806:	0079fc13          	andi	s8,s3,7
quickjs-nuttx/libbf.c:4733
    if (x->sign) {
    8005e80a:	020a8b63          	beqz	s5,8005e840 <bf_pow+0x16e>
quickjs-nuttx/libbf.c:4734
        if (!y_is_int) {
    8005e80e:	00055a63          	bgez	a0,8005e822 <bf_pow+0x150>
quickjs-nuttx/libbf.c:4735
            bf_set_nan(r);
    8005e812:	8522                	mv	a0,s0
    8005e814:	baaf90ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:4736
            bf_delete(T);
    8005e818:	0028                	addi	a0,sp,8
    8005e81a:	a90f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4737
            return BF_ST_INVALID_OP;
    8005e81e:	4485                	li	s1,1
    8005e820:	b74d                	j	8005e7c2 <bf_pow+0xf0>
quickjs-nuttx/libbf.c:4739
        y_is_odd = (y_emin == 0);
    8005e822:	00153a93          	seqz	s5,a0
quickjs-nuttx/libbf.c:4743
        if (r_sign && (rnd_mode == BF_RNDD || rnd_mode == BF_RNDU))
    8005e826:	e909                	bnez	a0,8005e838 <bf_pow+0x166>
quickjs-nuttx/libbf.c:4743 (discriminator 1)
    8005e828:	ffec079b          	addiw	a5,s8,-2
    8005e82c:	4685                	li	a3,1
    8005e82e:	00f6e563          	bltu	a3,a5,8005e838 <bf_pow+0x166>
quickjs-nuttx/libbf.c:4744
            flags ^= 1;
    8005e832:	00174993          	xori	s3,a4,1
    8005e836:	2981                	sext.w	s3,s3
bf_neg():
quickjs-nuttx/libbf.h:231
    r->sign ^= 1;
    8005e838:	47c2                	lw	a5,16(sp)
    8005e83a:	0017c793          	xori	a5,a5,1
    8005e83e:	c83e                	sw	a5,16(sp)
bf_pow():
quickjs-nuttx/libbf.c:4750
    bf_set_ui(r, 1);
    8005e840:	4585                	li	a1,1
    8005e842:	8522                	mv	a0,s0
    8005e844:	b9af90ef          	jal	ra,80057bde <bf_set_ui>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    return bf_cmp(a, b) == 0;
    8005e848:	85a2                	mv	a1,s0
    8005e84a:	0028                	addi	a0,sp,8
    8005e84c:	920fa0ef          	jal	ra,8005896c <bf_cmp>
    8005e850:	84aa                	mv	s1,a0
bf_pow():
quickjs-nuttx/libbf.c:4751
    if (bf_cmp_eq(T, r)) {
    8005e852:	c571                	beqz	a0,8005e91e <bf_pow+0x24c>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e854:	5bfd                	li	s7,-1
    8005e856:	03fb9793          	slli	a5,s7,0x3f
bf_pow():
quickjs-nuttx/libbf.c:4766
            bf_log(al, T, precl, BF_RNDD);
    8005e85a:	4689                	li	a3,2
    8005e85c:	04000613          	li	a2,64
    8005e860:	002c                	addi	a1,sp,8
    8005e862:	1808                	addi	a0,sp,48
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005e864:	e0be                	sd	a5,64(sp)
    8005e866:	f4be                	sd	a5,104(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e868:	f866                	sd	s9,48(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e86a:	dc02                	sw	zero,56(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e86c:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e86e:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005e870:	ece6                	sd	s9,88(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005e872:	d082                	sw	zero,96(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005e874:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005e876:	fc82                	sd	zero,120(sp)
bf_pow():
quickjs-nuttx/libbf.c:4766
            bf_log(al, T, precl, BF_RNDD);
    8005e878:	ab5fa0ef          	jal	ra,8005932c <bf_log>
quickjs-nuttx/libbf.c:4767
            bf_log(ah, T, precl, BF_RNDU);
    8005e87c:	468d                	li	a3,3
    8005e87e:	04000613          	li	a2,64
    8005e882:	002c                	addi	a1,sp,8
    8005e884:	08a8                	addi	a0,sp,88
    8005e886:	aa7fa0ef          	jal	ra,8005932c <bf_log>
quickjs-nuttx/libbf.c:4768
            bf_mul(al, al, y, precl, BF_RNDD ^ y->sign);
    8005e88a:	00892703          	lw	a4,8(s2)
    8005e88e:	180c                	addi	a1,sp,48
    8005e890:	04000693          	li	a3,64
    8005e894:	00274713          	xori	a4,a4,2
    8005e898:	864a                	mv	a2,s2
    8005e89a:	852e                	mv	a0,a1
    8005e89c:	e95fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4769
            bf_mul(ah, ah, y, precl, BF_RNDU ^ y->sign);
    8005e8a0:	00892703          	lw	a4,8(s2)
    8005e8a4:	08ac                	addi	a1,sp,88
    8005e8a6:	04000693          	li	a3,64
    8005e8aa:	00374713          	xori	a4,a4,3
    8005e8ae:	864a                	mv	a2,s2
    8005e8b0:	852e                	mv	a0,a1
    8005e8b2:	e7ffd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4770
            ret = check_exp_underflow_overflow(s, r, al, ah, prec, flags);
    8005e8b6:	87ce                	mv	a5,s3
    8005e8b8:	8752                	mv	a4,s4
    8005e8ba:	08b4                	addi	a3,sp,88
    8005e8bc:	1810                	addi	a2,sp,48
    8005e8be:	85a2                	mv	a1,s0
    8005e8c0:	8566                	mv	a0,s9
    8005e8c2:	992fe0ef          	jal	ra,8005ca54 <check_exp_underflow_overflow>
    8005e8c6:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:4771
            bf_delete(al);
    8005e8c8:	1808                	addi	a0,sp,48
    8005e8ca:	9e0f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4772
            bf_delete(ah);
    8005e8ce:	08a8                	addi	a0,sp,88
    8005e8d0:	9daf80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4773
            if (ret)
    8005e8d4:	e4a9                	bnez	s1,8005e91e <bf_pow+0x24c>
quickjs-nuttx/libbf.c:4777
        if (y_is_int) {
    8005e8d6:	100b4363          	bltz	s6,8005e9dc <bf_pow+0x30a>
quickjs-nuttx/libbf.c:4780
            T_bits = T->expn - bf_get_exp_min(T);
    8005e8da:	64e2                	ld	s1,24(sp)
    8005e8dc:	0028                	addi	a0,sp,8
    8005e8de:	9e2fa0ef          	jal	ra,80058ac0 <bf_get_exp_min>
    8005e8e2:	40a48533          	sub	a0,s1,a0
quickjs-nuttx/libbf.c:4781
            if (T_bits == 1) {
    8005e8e6:	4785                	li	a5,1
    8005e8e8:	04f51163          	bne	a0,a5,8005e92a <bf_pow+0x258>
quickjs-nuttx/libbf.c:4783
                bf_mul_si(T, y, T->expn - 1, LIMB_BITS, BF_RNDZ);
    8005e8ec:	04000693          	li	a3,64
    8005e8f0:	4705                	li	a4,1
    8005e8f2:	fff48613          	addi	a2,s1,-1
    8005e8f6:	85ca                	mv	a1,s2
    8005e8f8:	0028                	addi	a0,sp,8
    8005e8fa:	908fe0ef          	jal	ra,8005ca02 <bf_mul_si>
bf_get_limb():
quickjs-nuttx/libbf.c:1862
    return bf_get_int64(pres, a, flags);
    8005e8fe:	4601                	li	a2,0
    8005e900:	002c                	addi	a1,sp,8
    8005e902:	1808                	addi	a0,sp,48
    8005e904:	f6afa0ef          	jal	ra,8005906e <bf_get_int64>
bf_pow():
quickjs-nuttx/libbf.c:4785
                bf_set_ui(r, 1);
    8005e908:	4585                	li	a1,1
    8005e90a:	8522                	mv	a0,s0
    8005e90c:	ad2f90ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4786
                ret = bf_mul_2exp(r, e, prec, flags);
    8005e910:	75c2                	ld	a1,48(sp)
    8005e912:	86ce                	mv	a3,s3
    8005e914:	8652                	mv	a2,s4
    8005e916:	8522                	mv	a0,s0
    8005e918:	96efa0ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4839
            ret = bf_ziv_rounding(r, T, prec, flags, bf_pow_generic, (void *)y);
    8005e91c:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:4843
    bf_delete(T);
    8005e91e:	0028                	addi	a0,sp,8
    8005e920:	98af80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4844
    r->sign = r_sign;
    8005e924:	01542423          	sw	s5,8(s0)
quickjs-nuttx/libbf.c:4845
    return ret;
    8005e928:	bd69                	j	8005e7c2 <bf_pow+0xf0>
quickjs-nuttx/libbf.c:4787
            } else if (prec == BF_PREC_INF) {
    8005e92a:	54fd                	li	s1,-1
    8005e92c:	0024d793          	srli	a5,s1,0x2
    8005e930:	04fa1863          	bne	s4,a5,8005e980 <bf_pow+0x2ae>
bf_get_limb():
quickjs-nuttx/libbf.c:1862
    return bf_get_int64(pres, a, flags);
    8005e934:	4601                	li	a2,0
    8005e936:	85ca                	mv	a1,s2
    8005e938:	1808                	addi	a0,sp,48
    8005e93a:	f34fa0ef          	jal	ra,8005906e <bf_get_int64>
bf_pow():
quickjs-nuttx/libbf.c:4791
                assert(!y->sign);
    8005e93e:	00892783          	lw	a5,8(s2)
    8005e942:	cb99                	beqz	a5,8005e958 <bf_pow+0x286>
quickjs-nuttx/libbf.c:4791 (discriminator 1)
    8005e944:	6585                	lui	a1,0x1
    8005e946:	4601                	li	a2,0
    8005e948:	2b758593          	addi	a1,a1,695 # 12b7 <asinh-0x7fffed49>
    8005e94c:	00022517          	auipc	a0,0x22
    8005e950:	c7450513          	addi	a0,a0,-908 # 800805c0 <std_name.0+0x18>
    8005e954:	008020ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:4793 (discriminator 2)
                if (y1 >= ((slimb_t)1 << BF_EXP_BITS_MAX)) {
    8005e958:	7642                	ld	a2,48(sp)
    8005e95a:	808d                	srli	s1,s1,0x3
    8005e95c:	00c4db63          	bge	s1,a2,8005e972 <bf_pow+0x2a0>
quickjs-nuttx/libbf.c:4794
                    bf_delete(T);
    8005e960:	0028                	addi	a0,sp,8
    8005e962:	948f80ef          	jal	ra,80056aaa <bf_delete>
bf_set_overflow():
quickjs-nuttx/libbf.c:477
        bf_set_inf(r, sign);
    8005e966:	4581                	li	a1,0
    8005e968:	8522                	mv	a0,s0
    8005e96a:	b1af90ef          	jal	ra,80057c84 <bf_set_inf>
bf_pow():
quickjs-nuttx/libbf.c:4795
                    return bf_set_overflow(r, 0, BF_PREC_INF, flags);
    8005e96e:	44d1                	li	s1,20
    8005e970:	bd89                	j	8005e7c2 <bf_pow+0xf0>
quickjs-nuttx/libbf.c:4797
                ret = bf_pow_ui(r, T, y1, BF_PREC_INF, BF_RNDZ);
    8005e972:	4705                	li	a4,1
    8005e974:	86d2                	mv	a3,s4
    8005e976:	002c                	addi	a1,sp,8
    8005e978:	8522                	mv	a0,s0
    8005e97a:	af0fe0ef          	jal	ra,8005cc6a <bf_pow_ui>
    8005e97e:	bf79                	j	8005e91c <bf_pow+0x24a>
quickjs-nuttx/libbf.c:4799
                if (y->expn <= 31) {
    8005e980:	01093703          	ld	a4,16(s2)
    8005e984:	47fd                	li	a5,31
    8005e986:	00e7ce63          	blt	a5,a4,8005e9a2 <bf_pow+0x2d0>
quickjs-nuttx/libbf.c:4816
                ret = bf_ziv_rounding(r, T, prec, flags, bf_pow_int, (void *)y);
    8005e98a:	87ca                	mv	a5,s2
    8005e98c:	ffffe717          	auipc	a4,0xffffe
    8005e990:	40470713          	addi	a4,a4,1028 # 8005cd90 <bf_pow_int>
quickjs-nuttx/libbf.c:4839
            ret = bf_ziv_rounding(r, T, prec, flags, bf_pow_generic, (void *)y);
    8005e994:	86ce                	mv	a3,s3
    8005e996:	8652                	mv	a2,s4
    8005e998:	002c                	addi	a1,sp,8
    8005e99a:	8522                	mv	a0,s0
    8005e99c:	8b1f90ef          	jal	ra,8005824c <bf_ziv_rounding>
    8005e9a0:	bfb5                	j	8005e91c <bf_pow+0x24a>
quickjs-nuttx/libbf.c:4801
                } else if (y->sign) {
    8005e9a2:	00892783          	lw	a5,8(s2)
    8005e9a6:	e78d                	bnez	a5,8005e9d0 <bf_pow+0x2fe>
quickjs-nuttx/libbf.c:4805
                    if (rnd_mode == BF_RNDF)
    8005e9a8:	4799                	li	a5,6
    8005e9aa:	02fc0363          	beq	s8,a5,8005e9d0 <bf_pow+0x2fe>
quickjs-nuttx/libbf.c:4811
                    bf_mul_si(r, y, T_bits - 1, LIMB_BITS, BF_RNDZ);
    8005e9ae:	fff50613          	addi	a2,a0,-1
    8005e9b2:	4705                	li	a4,1
    8005e9b4:	04000693          	li	a3,64
    8005e9b8:	85ca                	mv	a1,s2
    8005e9ba:	8522                	mv	a0,s0
    8005e9bc:	846fe0ef          	jal	ra,8005ca02 <bf_mul_si>
bf_get_limb():
quickjs-nuttx/libbf.c:1862
    return bf_get_int64(pres, a, flags);
    8005e9c0:	4601                	li	a2,0
    8005e9c2:	85a2                	mv	a1,s0
    8005e9c4:	1808                	addi	a0,sp,48
    8005e9c6:	ea8fa0ef          	jal	ra,8005906e <bf_get_int64>
bf_pow():
quickjs-nuttx/libbf.c:4813
                    if (prec < e)
    8005e9ca:	77c2                	ld	a5,48(sp)
    8005e9cc:	fafa7fe3          	bgeu	s4,a5,8005e98a <bf_pow+0x2b8>
quickjs-nuttx/libbf.c:4839
            ret = bf_ziv_rounding(r, T, prec, flags, bf_pow_generic, (void *)y);
    8005e9d0:	87ca                	mv	a5,s2
    8005e9d2:	00000717          	auipc	a4,0x0
    8005e9d6:	0d070713          	addi	a4,a4,208 # 8005eaa2 <bf_pow_generic>
    8005e9da:	bf6d                	j	8005e994 <bf_pow+0x2c2>
quickjs-nuttx/libbf.c:4819
            if (rnd_mode != BF_RNDF) {
    8005e9dc:	4799                	li	a5,6
    8005e9de:	fefc09e3          	beq	s8,a5,8005e9d0 <bf_pow+0x2fe>
check_exact_power2n():
quickjs-nuttx/libbf.c:4648 (discriminator 1)
    e = bf_get_exp_min(x);
    8005e9e2:	0028                	addi	a0,sp,8
    8005e9e4:	8dcfa0ef          	jal	ra,80058ac0 <bf_get_exp_min>
bf_pow():
quickjs-nuttx/libbf.c:4821 (discriminator 1)
                if (y_emin < 0 && check_exact_power2n(r, T, -y_emin)) {
    8005e9e8:	416004b3          	neg	s1,s6
check_exact_power2n():
quickjs-nuttx/libbf.c:4650 (discriminator 1)
    if (n > (LIMB_BITS - 1)) {
    8005e9ec:	03f00793          	li	a5,63
quickjs-nuttx/libbf.c:4648 (discriminator 1)
    e = bf_get_exp_min(x);
    8005e9f0:	8caa                	mv	s9,a0
quickjs-nuttx/libbf.c:4650 (discriminator 1)
    if (n > (LIMB_BITS - 1)) {
    8005e9f2:	0697dd63          	bge	a5,s1,8005ea6c <bf_pow+0x39a>
quickjs-nuttx/libbf.c:4653
        er = 0;
    8005e9f6:	4b81                	li	s7,0
quickjs-nuttx/libbf.c:4651
        if (e != 0)
    8005e9f8:	fd61                	bnez	a0,8005e9d0 <bf_pow+0x2fe>
quickjs-nuttx/libbf.c:4660
    v = get_bits(x->tab, x->len, x->len * LIMB_BITS - x->expn + e);
    8005e9fa:	7582                	ld	a1,32(sp)
    8005e9fc:	67e2                	ld	a5,24(sp)
    8005e9fe:	7522                	ld	a0,40(sp)
    8005ea00:	00659613          	slli	a2,a1,0x6
    8005ea04:	8e1d                	sub	a2,a2,a5
    8005ea06:	9666                	add	a2,a2,s9
    8005ea08:	8e2f80ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:4661
    if ((v & 7) != 1)
    8005ea0c:	891d                	andi	a0,a0,7
    8005ea0e:	4785                	li	a5,1
    8005ea10:	fcf510e3          	bne	a0,a5,8005e9d0 <bf_pow+0x2fe>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ea14:	601c                	ld	a5,0(s0)
check_exact_power2n():
quickjs-nuttx/libbf.c:4665
    bf_set(T, x);
    8005ea16:	002c                	addi	a1,sp,8
    8005ea18:	08a8                	addi	a0,sp,88
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ea1a:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ea1c:	57fd                	li	a5,-1
    8005ea1e:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ea20:	d082                	sw	zero,96(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ea22:	f4be                	sd	a5,104(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ea24:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ea26:	fc82                	sd	zero,120(sp)
check_exact_power2n():
quickjs-nuttx/libbf.c:4665
    bf_set(T, x);
    8005ea28:	dfaf90ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4666
    T->expn -= e;
    8005ea2c:	7526                	ld	a0,104(sp)
    8005ea2e:	41950cb3          	sub	s9,a0,s9
    8005ea32:	f4e6                	sd	s9,104(sp)
quickjs-nuttx/libbf.c:4667
    for(i = 0; i < n; i++) {
    8005ea34:	4c81                	li	s9,0
    8005ea36:	049cc863          	blt	s9,s1,8005ea86 <bf_pow+0x3b4>
quickjs-nuttx/libbf.c:4673
    r->expn += er;
    8005ea3a:	681c                	ld	a5,16(s0)
bf_pow():
quickjs-nuttx/libbf.c:4828
                    bf_set(T, r);
    8005ea3c:	85a2                	mv	a1,s0
    8005ea3e:	0028                	addi	a0,sp,8
check_exact_power2n():
quickjs-nuttx/libbf.c:4673
    r->expn += er;
    8005ea40:	9bbe                	add	s7,s7,a5
    8005ea42:	01743823          	sd	s7,16(s0)
bf_pow():
quickjs-nuttx/libbf.c:4828
                    bf_set(T, r);
    8005ea46:	ddcf90ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4830
                    y1->tab = y->tab;
    8005ea4a:	02093783          	ld	a5,32(s2)
quickjs-nuttx/libbf.c:4833
                    y1->expn = y->expn - y_emin;
    8005ea4e:	01093503          	ld	a0,16(s2)
quickjs-nuttx/libbf.c:4830
                    y1->tab = y->tab;
    8005ea52:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/libbf.c:4831
                    y1->len = y->len;
    8005ea54:	01893783          	ld	a5,24(s2)
quickjs-nuttx/libbf.c:4833
                    y1->expn = y->expn - y_emin;
    8005ea58:	41650b33          	sub	s6,a0,s6
    8005ea5c:	f4da                	sd	s6,104(sp)
quickjs-nuttx/libbf.c:4831
                    y1->len = y->len;
    8005ea5e:	f8be                	sd	a5,112(sp)
quickjs-nuttx/libbf.c:4832
                    y1->sign = y->sign;
    8005ea60:	00892783          	lw	a5,8(s2)
quickjs-nuttx/libbf.c:4834
                    y = y1;
    8005ea64:	05810913          	addi	s2,sp,88
quickjs-nuttx/libbf.c:4832
                    y1->sign = y->sign;
    8005ea68:	d0be                	sw	a5,96(sp)
quickjs-nuttx/libbf.c:4835
                    goto int_pow;
    8005ea6a:	bd85                	j	8005e8da <bf_pow+0x208>
check_exact_power2n():
quickjs-nuttx/libbf.c:4655
        if ((e & (((limb_t)1 << n) - 1)) != 0)
    8005ea6c:	009b9bb3          	sll	s7,s7,s1
    8005ea70:	fffbcb93          	not	s7,s7
    8005ea74:	00abfbb3          	and	s7,s7,a0
    8005ea78:	0004879b          	sext.w	a5,s1
    8005ea7c:	f40b9ae3          	bnez	s7,8005e9d0 <bf_pow+0x2fe>
quickjs-nuttx/libbf.c:4657
        er = e >> n;
    8005ea80:	40f55bb3          	sra	s7,a0,a5
    8005ea84:	bf9d                	j	8005e9fa <bf_pow+0x328>
quickjs-nuttx/libbf.c:4668
        if (i != 0)
    8005ea86:	000c8663          	beqz	s9,8005ea92 <bf_pow+0x3c0>
quickjs-nuttx/libbf.c:4669
            bf_set(T, r);
    8005ea8a:	85a2                	mv	a1,s0
    8005ea8c:	08a8                	addi	a0,sp,88
    8005ea8e:	d94f90ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4670
        if (bf_sqrtrem(r, NULL, T) != 0)
    8005ea92:	08b0                	addi	a2,sp,88
    8005ea94:	4581                	li	a1,0
    8005ea96:	8522                	mv	a0,s0
    8005ea98:	e25fd0ef          	jal	ra,8005c8bc <bf_sqrtrem>
    8005ea9c:	f915                	bnez	a0,8005e9d0 <bf_pow+0x2fe>
quickjs-nuttx/libbf.c:4667
    for(i = 0; i < n; i++) {
    8005ea9e:	0c85                	addi	s9,s9,1
    8005eaa0:	bf59                	j	8005ea36 <bf_pow+0x364>

000000008005eaa2 <bf_pow_generic>:
bf_pow_generic():
quickjs-nuttx/libbf.c:4593
{
    8005eaa2:	711d                	addi	sp,sp,-96
    8005eaa4:	ec86                	sd	ra,88(sp)
    8005eaa6:	e8a2                	sd	s0,80(sp)
    8005eaa8:	e4a6                	sd	s1,72(sp)
    8005eaaa:	e0ca                	sd	s2,64(sp)
    8005eaac:	fc4e                	sd	s3,56(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005eaae:	611c                	ld	a5,0(a0)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005eab0:	597d                	li	s2,-1
bf_pow_generic():
quickjs-nuttx/libbf.c:4601
    prec1 = prec + 32;
    8005eab2:	02060493          	addi	s1,a2,32
quickjs-nuttx/libbf.c:4593
{
    8005eab6:	89b6                	mv	s3,a3
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005eab8:	e43e                	sd	a5,8(sp)
bf_pow_generic():
quickjs-nuttx/libbf.c:4602
    bf_log(T, x, prec1, BF_RNDF | BF_FLAG_EXT_EXP);
    8005eaba:	7e600693          	li	a3,2022
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005eabe:	03f91793          	slli	a5,s2,0x3f
bf_pow_generic():
quickjs-nuttx/libbf.c:4602
    bf_log(T, x, prec1, BF_RNDF | BF_FLAG_EXT_EXP);
    8005eac2:	8626                	mv	a2,s1
quickjs-nuttx/libbf.c:4593
{
    8005eac4:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:4602
    bf_log(T, x, prec1, BF_RNDF | BF_FLAG_EXT_EXP);
    8005eac6:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005eac8:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005eaca:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005eacc:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005eace:	f402                	sd	zero,40(sp)
bf_pow_generic():
quickjs-nuttx/libbf.c:4602
    bf_log(T, x, prec1, BF_RNDF | BF_FLAG_EXT_EXP);
    8005ead0:	85dfa0ef          	jal	ra,8005932c <bf_log>
quickjs-nuttx/libbf.c:4603
    bf_mul(T, T, y, prec1, BF_RNDF | BF_FLAG_EXT_EXP);
    8005ead4:	002c                	addi	a1,sp,8
    8005ead6:	7e600713          	li	a4,2022
    8005eada:	86a6                	mv	a3,s1
    8005eadc:	864e                	mv	a2,s3
    8005eade:	852e                	mv	a0,a1
    8005eae0:	c51fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4604
    if (bf_is_nan(T))
    8005eae4:	67e2                	ld	a5,24(sp)
    8005eae6:	00195913          	srli	s2,s2,0x1
    8005eaea:	03279063          	bne	a5,s2,8005eb0a <bf_pow_generic+0x68>
quickjs-nuttx/libbf.c:4605
        bf_set_nan(r);
    8005eaee:	8522                	mv	a0,s0
    8005eaf0:	8cef90ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:4608
    bf_delete(T);
    8005eaf4:	0028                	addi	a0,sp,8
    8005eaf6:	fb5f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4610
}
    8005eafa:	60e6                	ld	ra,88(sp)
    8005eafc:	6446                	ld	s0,80(sp)
    8005eafe:	64a6                	ld	s1,72(sp)
    8005eb00:	6906                	ld	s2,64(sp)
    8005eb02:	79e2                	ld	s3,56(sp)
    8005eb04:	4541                	li	a0,16
    8005eb06:	6125                	addi	sp,sp,96
    8005eb08:	8082                	ret
quickjs-nuttx/libbf.c:4607
        bf_exp_internal(r, T, prec1, NULL); /* no overflow/underlow test needed */
    8005eb0a:	4681                	li	a3,0
    8005eb0c:	8626                	mv	a2,s1
    8005eb0e:	002c                	addi	a1,sp,8
    8005eb10:	8522                	mv	a0,s0
    8005eb12:	82bff0ef          	jal	ra,8005e33c <bf_exp_internal>
    8005eb16:	bff9                	j	8005eaf4 <bf_pow_generic+0x52>

000000008005eb18 <bf_sqrt_sin>:
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4850
{
    8005eb18:	715d                	addi	sp,sp,-80
    8005eb1a:	e486                	sd	ra,72(sp)
    8005eb1c:	e0a2                	sd	s0,64(sp)
    8005eb1e:	fc26                	sd	s1,56(sp)
    8005eb20:	f84a                	sd	s2,48(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005eb22:	611c                	ld	a5,0(a0)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005eb24:	597d                	li	s2,-1
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4850
{
    8005eb26:	842a                	mv	s0,a0
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005eb28:	e43e                	sd	a5,8(sp)
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4854
    bf_set(T, x);
    8005eb2a:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005eb2c:	03f91793          	slli	a5,s2,0x3f
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4850
{
    8005eb30:	84b2                	mv	s1,a2
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005eb32:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005eb34:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005eb36:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005eb38:	f402                	sd	zero,40(sp)
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4854
    bf_set(T, x);
    8005eb3a:	ce8f90ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4855
    bf_mul(r, T, T, prec1, BF_RNDN);
    8005eb3e:	0030                	addi	a2,sp,8
    8005eb40:	4701                	li	a4,0
    8005eb42:	86a6                	mv	a3,s1
    8005eb44:	85b2                	mv	a1,a2
    8005eb46:	8522                	mv	a0,s0
    8005eb48:	be9fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4856
    bf_mul_2exp(T, 1, BF_PREC_INF, BF_RNDZ);
    8005eb4c:	00295613          	srli	a2,s2,0x2
    8005eb50:	4685                	li	a3,1
    8005eb52:	4585                	li	a1,1
    8005eb54:	0028                	addi	a0,sp,8
    8005eb56:	f31f90ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4857
    bf_add(T, T, r, prec1, BF_RNDN);
    8005eb5a:	002c                	addi	a1,sp,8
    8005eb5c:	4701                	li	a4,0
    8005eb5e:	86a6                	mv	a3,s1
    8005eb60:	8622                	mv	a2,s0
    8005eb62:	852e                	mv	a0,a1
    8005eb64:	fd9f90ef          	jal	ra,80058b3c <bf_add>
bf_neg():
quickjs-nuttx/libbf.h:231
    r->sign ^= 1;
    8005eb68:	47c2                	lw	a5,16(sp)
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4859
    bf_sqrt(r, T, prec1, BF_RNDF);
    8005eb6a:	8626                	mv	a2,s1
    8005eb6c:	002c                	addi	a1,sp,8
bf_neg():
quickjs-nuttx/libbf.h:231
    8005eb6e:	0017c793          	xori	a5,a5,1
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4859
    8005eb72:	4699                	li	a3,6
    8005eb74:	8522                	mv	a0,s0
bf_neg():
quickjs-nuttx/libbf.h:231
    8005eb76:	c83e                	sw	a5,16(sp)
bf_sqrt_sin():
quickjs-nuttx/libbf.c:4859
    8005eb78:	a25fd0ef          	jal	ra,8005c59c <bf_sqrt>
quickjs-nuttx/libbf.c:4860
    bf_delete(T);
    8005eb7c:	0028                	addi	a0,sp,8
    8005eb7e:	f2df70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4861
}
    8005eb82:	60a6                	ld	ra,72(sp)
    8005eb84:	6406                	ld	s0,64(sp)
    8005eb86:	74e2                	ld	s1,56(sp)
    8005eb88:	7942                	ld	s2,48(sp)
    8005eb8a:	6161                	addi	sp,sp,80
    8005eb8c:	8082                	ret

000000008005eb8e <bf_atan_internal>:
bf_atan_internal():
quickjs-nuttx/libbf.c:5077
{
    8005eb8e:	7151                	addi	sp,sp,-240
    8005eb90:	f1a2                	sd	s0,224(sp)
    8005eb92:	eda6                	sd	s1,216(sp)
    8005eb94:	e9ca                	sd	s2,208(sp)
    8005eb96:	e5ce                	sd	s3,200(sp)
    8005eb98:	e1d2                	sd	s4,192(sp)
    8005eb9a:	fd56                	sd	s5,184(sp)
    8005eb9c:	f55e                	sd	s7,168(sp)
    8005eb9e:	f586                	sd	ra,232(sp)
    8005eba0:	f95a                	sd	s6,176(sp)
quickjs-nuttx/libbf.c:5078
    bf_context_t *s = r->ctx;
    8005eba2:	00053b03          	ld	s6,0(a0)
quickjs-nuttx/libbf.c:5077
{
    8005eba6:	89aa                	mv	s3,a0
quickjs-nuttx/libbf.c:5088
    K = bf_isqrt((prec + 1) / 2);
    8005eba8:	00160513          	addi	a0,a2,1
    8005ebac:	8105                	srli	a0,a0,0x1
quickjs-nuttx/libbf.c:5077
{
    8005ebae:	8432                	mv	s0,a2
    8005ebb0:	8a2e                	mv	s4,a1
quickjs-nuttx/libbf.c:5079
    BOOL add_pi2 = (BOOL)(intptr_t)opaque;
    8005ebb2:	0006849b          	sext.w	s1,a3
quickjs-nuttx/libbf.c:5088
    K = bf_isqrt((prec + 1) / 2);
    8005ebb6:	f53f90ef          	jal	ra,80058b08 <bf_isqrt>
quickjs-nuttx/libbf.c:5089
    l = prec / (2 * K) + 1;
    8005ebba:	00151913          	slli	s2,a0,0x1
    8005ebbe:	03245933          	divu	s2,s0,s2
quickjs-nuttx/libbf.c:5090
    prec1 = prec + K + 2 * l + 32;
    8005ebc2:	02040413          	addi	s0,s0,32
    8005ebc6:	942a                	add	s0,s0,a0
quickjs-nuttx/libbf.c:5094
    cmp_1 = (a->expn >= 1); /* a >= 1 */
    8005ebc8:	010a3b83          	ld	s7,16(s4)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ebcc:	e05a                	sd	s6,0(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ebce:	c402                	sw	zero,8(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ebd0:	ec02                	sd	zero,24(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ebd2:	f002                	sd	zero,32(sp)
bf_atan_internal():
quickjs-nuttx/libbf.c:5088
    K = bf_isqrt((prec + 1) / 2);
    8005ebd4:	8aaa                	mv	s5,a0
quickjs-nuttx/libbf.c:5089
    l = prec / (2 * K) + 1;
    8005ebd6:	0905                	addi	s2,s2,1
quickjs-nuttx/libbf.c:5090
    prec1 = prec + K + 2 * l + 32;
    8005ebd8:	00191793          	slli	a5,s2,0x1
    8005ebdc:	943e                	add	s0,s0,a5
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ebde:	57fd                	li	a5,-1
    8005ebe0:	17fe                	slli	a5,a5,0x3f
    8005ebe2:	e83e                	sd	a5,16(sp)
bf_atan_internal():
quickjs-nuttx/libbf.c:5095
    if (cmp_1) {
    8005ebe4:	11705963          	blez	s7,8005ecf6 <bf_atan_internal+0x168>
quickjs-nuttx/libbf.c:5096
        bf_set_ui(T, 1);
    8005ebe8:	4585                	li	a1,1
    8005ebea:	850a                	mv	a0,sp
    8005ebec:	ff3f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:5097
        bf_div(T, T, a, prec1, BF_RNDN);
    8005ebf0:	4701                	li	a4,0
    8005ebf2:	86a2                	mv	a3,s0
    8005ebf4:	8652                	mv	a2,s4
    8005ebf6:	858a                	mv	a1,sp
    8005ebf8:	850a                	mv	a0,sp
    8005ebfa:	fb7f90ef          	jal	ra,80058bb0 <bf_div>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ebfe:	57fd                	li	a5,-1
    8005ec00:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ec02:	f45a                	sd	s6,40(sp)
    8005ec04:	e8da                	sd	s6,80(sp)
    8005ec06:	fcda                	sd	s6,120(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ec08:	d802                	sw	zero,48(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ec0a:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ec0c:	e082                	sd	zero,64(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ec0e:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ec10:	cc82                	sw	zero,88(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ec12:	f0be                	sd	a5,96(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ec14:	f482                	sd	zero,104(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ec16:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ec18:	c102                	sw	zero,128(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ec1a:	e53e                	sd	a5,136(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ec1c:	e902                	sd	zero,144(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ec1e:	ed02                	sd	zero,152(sp)
bf_atan_internal():
quickjs-nuttx/libbf.c:5109
    for(i = 0; i < K; i++) {
    8005ec20:	4b01                	li	s6,0
quickjs-nuttx/libbf.c:5111 (discriminator 1)
        bf_mul(U, T, T, prec1, BF_RNDN);
    8005ec22:	4701                	li	a4,0
    8005ec24:	86a2                	mv	a3,s0
    8005ec26:	860a                	mv	a2,sp
    8005ec28:	858a                	mv	a1,sp
quickjs-nuttx/libbf.c:5109 (discriminator 1)
    for(i = 0; i < K; i++) {
    8005ec2a:	0d5b4b63          	blt	s6,s5,8005ed00 <bf_atan_internal+0x172>
quickjs-nuttx/libbf.c:5121
    bf_mul(X2, T, T, prec1, BF_RNDN);
    8005ec2e:	18a8                	addi	a0,sp,120
    8005ec30:	b01fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:5122
    bf_set_ui(r, 0);
    8005ec34:	4581                	li	a1,0
    8005ec36:	854e                	mv	a0,s3
    8005ec38:	fa7f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:5123 (discriminator 1)
    for(i = l; i >= 1; i--) {
    8005ec3c:	11204263          	bgtz	s2,8005ed40 <bf_atan_internal+0x1b2>
bf_neg():
quickjs-nuttx/libbf.h:231
    8005ec40:	0089a783          	lw	a5,8(s3)
bf_atan_internal():
quickjs-nuttx/libbf.c:5132
    bf_add_si(r, r, 1, prec1, BF_RNDN);
    8005ec44:	4701                	li	a4,0
    8005ec46:	86a2                	mv	a3,s0
bf_neg():
quickjs-nuttx/libbf.h:231
    8005ec48:	0017c793          	xori	a5,a5,1
    8005ec4c:	00f9a423          	sw	a5,8(s3)
bf_atan_internal():
quickjs-nuttx/libbf.c:5132
    8005ec50:	4605                	li	a2,1
    8005ec52:	85ce                	mv	a1,s3
    8005ec54:	854e                	mv	a0,s3
    8005ec56:	f67f90ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:5133
    bf_mul(r, r, T, prec1, BF_RNDN);
    8005ec5a:	4701                	li	a4,0
    8005ec5c:	86a2                	mv	a3,s0
    8005ec5e:	860a                	mv	a2,sp
    8005ec60:	85ce                	mv	a1,s3
    8005ec62:	854e                	mv	a0,s3
    8005ec64:	acdfd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:5136
    bf_mul_2exp(r, K, BF_PREC_INF, BF_RNDZ);
    8005ec68:	567d                	li	a2,-1
    8005ec6a:	4685                	li	a3,1
    8005ec6c:	8209                	srli	a2,a2,0x2
    8005ec6e:	85d6                	mv	a1,s5
    8005ec70:	854e                	mv	a0,s3
    8005ec72:	e15f90ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:5138
    bf_delete(U);
    8005ec76:	1028                	addi	a0,sp,40
    8005ec78:	e33f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5139
    bf_delete(V);
    8005ec7c:	0888                	addi	a0,sp,80
    8005ec7e:	e2df70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5140
    bf_delete(X2);
    8005ec82:	18a8                	addi	a0,sp,120
    8005ec84:	e27f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5143
    if (cmp_1 > 0) {
    8005ec88:	01705f63          	blez	s7,8005eca6 <bf_atan_internal+0x118>
bf_neg():
quickjs-nuttx/libbf.h:231
    8005ec8c:	0089a783          	lw	a5,8(s3)
    8005ec90:	0017c793          	xori	a5,a5,1
    8005ec94:	00f9a423          	sw	a5,8(s3)
bf_atan_internal():
quickjs-nuttx/libbf.c:5146
        i += 1 - 2 * a->sign;
    8005ec98:	008a2703          	lw	a4,8(s4)
    8005ec9c:	57f9                	li	a5,-2
    8005ec9e:	02e787bb          	mulw	a5,a5,a4
    8005eca2:	2785                	addiw	a5,a5,1
    8005eca4:	94be                	add	s1,s1,a5
quickjs-nuttx/libbf.c:5149
    if (i != 0) {
    8005eca6:	c88d                	beqz	s1,8005ecd8 <bf_atan_internal+0x14a>
quickjs-nuttx/libbf.c:5150
        bf_const_pi(T, prec1, BF_RNDF);
    8005eca8:	4619                	li	a2,6
    8005ecaa:	85a2                	mv	a1,s0
    8005ecac:	850a                	mv	a0,sp
    8005ecae:	da4fa0ef          	jal	ra,80059252 <bf_const_pi>
quickjs-nuttx/libbf.c:5151
        if (i != 2)
    8005ecb2:	4789                	li	a5,2
    8005ecb4:	00f48963          	beq	s1,a5,8005ecc6 <bf_atan_internal+0x138>
quickjs-nuttx/libbf.c:5152
            bf_mul_2exp(T, -1, BF_PREC_INF, BF_RNDZ);
    8005ecb8:	567d                	li	a2,-1
    8005ecba:	4685                	li	a3,1
    8005ecbc:	8209                	srli	a2,a2,0x2
    8005ecbe:	55fd                	li	a1,-1
    8005ecc0:	850a                	mv	a0,sp
    8005ecc2:	dc5f90ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:5153
        T->sign = (i < 0);
    8005ecc6:	90fd                	srli	s1,s1,0x3f
quickjs-nuttx/libbf.c:5154
        bf_add(r, T, r, prec1, BF_RNDN);
    8005ecc8:	4701                	li	a4,0
    8005ecca:	86a2                	mv	a3,s0
    8005eccc:	864e                	mv	a2,s3
    8005ecce:	858a                	mv	a1,sp
    8005ecd0:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:5153
        T->sign = (i < 0);
    8005ecd2:	c426                	sw	s1,8(sp)
quickjs-nuttx/libbf.c:5154
        bf_add(r, T, r, prec1, BF_RNDN);
    8005ecd4:	e69f90ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:5157
    bf_delete(T);
    8005ecd8:	850a                	mv	a0,sp
    8005ecda:	dd1f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5159
}
    8005ecde:	70ae                	ld	ra,232(sp)
    8005ece0:	740e                	ld	s0,224(sp)
    8005ece2:	64ee                	ld	s1,216(sp)
    8005ece4:	694e                	ld	s2,208(sp)
    8005ece6:	69ae                	ld	s3,200(sp)
    8005ece8:	6a0e                	ld	s4,192(sp)
    8005ecea:	7aea                	ld	s5,184(sp)
    8005ecec:	7b4a                	ld	s6,176(sp)
    8005ecee:	7baa                	ld	s7,168(sp)
    8005ecf0:	4541                	li	a0,16
    8005ecf2:	616d                	addi	sp,sp,240
    8005ecf4:	8082                	ret
quickjs-nuttx/libbf.c:5099
        bf_set(T, a);
    8005ecf6:	85d2                	mv	a1,s4
    8005ecf8:	850a                	mv	a0,sp
    8005ecfa:	b28f90ef          	jal	ra,80058022 <bf_set>
    8005ecfe:	b701                	j	8005ebfe <bf_atan_internal+0x70>
quickjs-nuttx/libbf.c:5111 (discriminator 3)
        bf_mul(U, T, T, prec1, BF_RNDN);
    8005ed00:	1028                	addi	a0,sp,40
    8005ed02:	a2ffd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:5112 (discriminator 3)
        bf_add_si(U, U, 1, prec1, BF_RNDN);
    8005ed06:	102c                	addi	a1,sp,40
    8005ed08:	4701                	li	a4,0
    8005ed0a:	86a2                	mv	a3,s0
    8005ed0c:	4605                	li	a2,1
    8005ed0e:	852e                	mv	a0,a1
    8005ed10:	eadf90ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:5113 (discriminator 3)
        bf_sqrt(V, U, prec1, BF_RNDN);
    8005ed14:	4681                	li	a3,0
    8005ed16:	8622                	mv	a2,s0
    8005ed18:	102c                	addi	a1,sp,40
    8005ed1a:	0888                	addi	a0,sp,80
    8005ed1c:	881fd0ef          	jal	ra,8005c59c <bf_sqrt>
quickjs-nuttx/libbf.c:5114 (discriminator 3)
        bf_add_si(V, V, 1, prec1, BF_RNDN);
    8005ed20:	088c                	addi	a1,sp,80
    8005ed22:	4701                	li	a4,0
    8005ed24:	86a2                	mv	a3,s0
    8005ed26:	4605                	li	a2,1
    8005ed28:	852e                	mv	a0,a1
    8005ed2a:	e93f90ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:5115 (discriminator 3)
        bf_div(T, T, V, prec1, BF_RNDN);
    8005ed2e:	4701                	li	a4,0
    8005ed30:	86a2                	mv	a3,s0
    8005ed32:	0890                	addi	a2,sp,80
    8005ed34:	858a                	mv	a1,sp
    8005ed36:	850a                	mv	a0,sp
    8005ed38:	e79f90ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:5109 (discriminator 3)
    for(i = 0; i < K; i++) {
    8005ed3c:	0b05                	addi	s6,s6,1
    8005ed3e:	b5d5                	j	8005ec22 <bf_atan_internal+0x94>
quickjs-nuttx/libbf.c:5124 (discriminator 3)
        bf_set_si(U, 1);
    8005ed40:	4585                	li	a1,1
    8005ed42:	1028                	addi	a0,sp,40
    8005ed44:	ef9f80ef          	jal	ra,80057c3c <bf_set_si>
quickjs-nuttx/libbf.c:5125 (discriminator 3)
        bf_set_ui(V, 2 * i + 1);
    8005ed48:	00191593          	slli	a1,s2,0x1
    8005ed4c:	0585                	addi	a1,a1,1
    8005ed4e:	0888                	addi	a0,sp,80
    8005ed50:	e8ff80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:5126 (discriminator 3)
        bf_div(U, U, V, prec1, BF_RNDN);
    8005ed54:	102c                	addi	a1,sp,40
    8005ed56:	4701                	li	a4,0
    8005ed58:	86a2                	mv	a3,s0
    8005ed5a:	0890                	addi	a2,sp,80
    8005ed5c:	852e                	mv	a0,a1
    8005ed5e:	e53f90ef          	jal	ra,80058bb0 <bf_div>
bf_neg():
quickjs-nuttx/libbf.h:231 (discriminator 3)
    8005ed62:	0089a783          	lw	a5,8(s3)
bf_atan_internal():
quickjs-nuttx/libbf.c:5128 (discriminator 3)
        bf_add(r, r, U, prec1, BF_RNDN);
    8005ed66:	4701                	li	a4,0
    8005ed68:	86a2                	mv	a3,s0
bf_neg():
quickjs-nuttx/libbf.h:231 (discriminator 3)
    8005ed6a:	0017c793          	xori	a5,a5,1
    8005ed6e:	00f9a423          	sw	a5,8(s3)
bf_atan_internal():
quickjs-nuttx/libbf.c:5128 (discriminator 3)
    8005ed72:	1030                	addi	a2,sp,40
    8005ed74:	85ce                	mv	a1,s3
    8005ed76:	854e                	mv	a0,s3
    8005ed78:	dc5f90ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:5129 (discriminator 3)
        bf_mul(r, r, X2, prec1, BF_RNDN);
    8005ed7c:	4701                	li	a4,0
    8005ed7e:	86a2                	mv	a3,s0
    8005ed80:	18b0                	addi	a2,sp,120
    8005ed82:	85ce                	mv	a1,s3
    8005ed84:	854e                	mv	a0,s3
    8005ed86:	9abfd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:5123 (discriminator 3)
    for(i = l; i >= 1; i--) {
    8005ed8a:	197d                	addi	s2,s2,-1
    8005ed8c:	bd45                	j	8005ec3c <bf_atan_internal+0xae>

000000008005ed8e <bf_asin_internal>:
bf_asin_internal():
quickjs-nuttx/libbf.c:5252
{
    8005ed8e:	7159                	addi	sp,sp,-112
    8005ed90:	f0a2                	sd	s0,96(sp)
    8005ed92:	eca6                	sd	s1,88(sp)
    8005ed94:	e8ca                	sd	s2,80(sp)
    8005ed96:	e4ce                	sd	s3,72(sp)
    8005ed98:	f486                	sd	ra,104(sp)
quickjs-nuttx/libbf.c:5264
    if (a->expn >= 0)
    8005ed9a:	6998                	ld	a4,16(a1)
quickjs-nuttx/libbf.c:5260
    prec1 = prec + 8;
    8005ed9c:	00860493          	addi	s1,a2,8
quickjs-nuttx/libbf.c:5254
    BOOL is_acos = (BOOL)(intptr_t)opaque;
    8005eda0:	0006899b          	sext.w	s3,a3
quickjs-nuttx/libbf.c:5253
    bf_context_t *s = r->ctx;
    8005eda4:	611c                	ld	a5,0(a0)
quickjs-nuttx/libbf.c:5252
{
    8005eda6:	842a                	mv	s0,a0
    8005eda8:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:5267
        prec2 = prec1;
    8005edaa:	86a6                	mv	a3,s1
quickjs-nuttx/libbf.c:5264
    if (a->expn >= 0)
    8005edac:	00074463          	bltz	a4,8005edb4 <bf_asin_internal+0x26>
quickjs-nuttx/libbf.c:5265
        prec2 = BF_PREC_INF;
    8005edb0:	56fd                	li	a3,-1
    8005edb2:	8289                	srli	a3,a3,0x2
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005edb4:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005edb6:	57fd                	li	a5,-1
    8005edb8:	17fe                	slli	a5,a5,0x3f
bf_asin_internal():
quickjs-nuttx/libbf.c:5269
    bf_mul(T, a, a, prec2, BF_RNDN);
    8005edba:	4701                	li	a4,0
    8005edbc:	864a                	mv	a2,s2
    8005edbe:	85ca                	mv	a1,s2
    8005edc0:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005edc2:	f43e                	sd	a5,40(sp)
bf_asin_internal():
quickjs-nuttx/libbf.c:5269
    bf_mul(T, a, a, prec2, BF_RNDN);
    8005edc4:	e436                	sd	a3,8(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005edc6:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005edc8:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005edca:	fc02                	sd	zero,56(sp)
bf_asin_internal():
quickjs-nuttx/libbf.c:5269
    bf_mul(T, a, a, prec2, BF_RNDN);
    8005edcc:	965fd0ef          	jal	ra,8005c730 <bf_mul>
bf_neg():
quickjs-nuttx/libbf.h:231
    8005edd0:	5782                	lw	a5,32(sp)
bf_asin_internal():
quickjs-nuttx/libbf.c:5271
    bf_add_si(T, T, 1, prec2, BF_RNDN);
    8005edd2:	66a2                	ld	a3,8(sp)
    8005edd4:	082c                	addi	a1,sp,24
bf_neg():
quickjs-nuttx/libbf.h:231
    8005edd6:	0017c793          	xori	a5,a5,1
bf_asin_internal():
quickjs-nuttx/libbf.c:5271
    8005edda:	4701                	li	a4,0
    8005eddc:	4605                	li	a2,1
    8005edde:	852e                	mv	a0,a1
bf_neg():
quickjs-nuttx/libbf.h:231
    8005ede0:	d03e                	sw	a5,32(sp)
bf_asin_internal():
quickjs-nuttx/libbf.c:5271
    8005ede2:	ddbf90ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:5273
    bf_sqrt(r, T, prec1, BF_RNDN);
    8005ede6:	4681                	li	a3,0
    8005ede8:	8626                	mv	a2,s1
    8005edea:	082c                	addi	a1,sp,24
    8005edec:	8522                	mv	a0,s0
    8005edee:	faefd0ef          	jal	ra,8005c59c <bf_sqrt>
quickjs-nuttx/libbf.c:5274
    bf_div(T, a, r, prec1, BF_RNDN);
    8005edf2:	4701                	li	a4,0
    8005edf4:	86a6                	mv	a3,s1
    8005edf6:	8622                	mv	a2,s0
    8005edf8:	85ca                	mv	a1,s2
    8005edfa:	0828                	addi	a0,sp,24
    8005edfc:	db5f90ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:5275
    if (is_acos)
    8005ee00:	00098663          	beqz	s3,8005ee0c <bf_asin_internal+0x7e>
bf_neg():
quickjs-nuttx/libbf.h:231
    8005ee04:	5782                	lw	a5,32(sp)
    8005ee06:	0017c793          	xori	a5,a5,1
    8005ee0a:	d03e                	sw	a5,32(sp)
bf_asin_internal():
quickjs-nuttx/libbf.c:5277
    bf_atan_internal(r, T, prec1, (void *)(intptr_t)is_acos);
    8005ee0c:	86ce                	mv	a3,s3
    8005ee0e:	8626                	mv	a2,s1
    8005ee10:	082c                	addi	a1,sp,24
    8005ee12:	8522                	mv	a0,s0
    8005ee14:	d7bff0ef          	jal	ra,8005eb8e <bf_atan_internal>
quickjs-nuttx/libbf.c:5278
    bf_delete(T);
    8005ee18:	0828                	addi	a0,sp,24
    8005ee1a:	c91f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5280
}
    8005ee1e:	70a6                	ld	ra,104(sp)
    8005ee20:	7406                	ld	s0,96(sp)
    8005ee22:	64e6                	ld	s1,88(sp)
    8005ee24:	6946                	ld	s2,80(sp)
    8005ee26:	69a6                	ld	s3,72(sp)
    8005ee28:	4541                	li	a0,16
    8005ee2a:	6165                	addi	sp,sp,112
    8005ee2c:	8082                	ret

000000008005ee2e <chud_bs.constprop.0>:
chud_bs():
quickjs-nuttx/libbf.c:4088
static void chud_bs(bf_t *P, bf_t *Q, bf_t *G, int64_t a, int64_t b, int need_g,
    8005ee2e:	7131                	addi	sp,sp,-192
    8005ee30:	f922                	sd	s0,176(sp)
    8005ee32:	843a                	mv	s0,a4
    8005ee34:	f526                	sd	s1,168(sp)
    8005ee36:	f14a                	sd	s2,160(sp)
    8005ee38:	ed4e                	sd	s3,152(sp)
    8005ee3a:	e556                	sd	s5,136(sp)
    8005ee3c:	e15a                	sd	s6,128(sp)
    8005ee3e:	fd06                	sd	ra,184(sp)
    8005ee40:	e952                	sd	s4,144(sp)
    8005ee42:	597d                	li	s2,-1
quickjs-nuttx/libbf.c:4094
    if (a == (b - 1)) {
    8005ee44:	fff40813          	addi	a6,s0,-1
quickjs-nuttx/libbf.c:4088
static void chud_bs(bf_t *P, bf_t *Q, bf_t *G, int64_t a, int64_t b, int need_g,
    8005ee48:	8b3e                	mv	s6,a5
quickjs-nuttx/libbf.c:4091
    bf_context_t *s = P->ctx;
    8005ee4a:	6118                	ld	a4,0(a0)
quickjs-nuttx/libbf.c:4088
static void chud_bs(bf_t *P, bf_t *Q, bf_t *G, int64_t a, int64_t b, int need_g,
    8005ee4c:	8aaa                	mv	s5,a0
    8005ee4e:	89ae                	mv	s3,a1
    8005ee50:	84b2                	mv	s1,a2
    8005ee52:	03f91793          	slli	a5,s2,0x3f
quickjs-nuttx/libbf.c:4094
    if (a == (b - 1)) {
    8005ee56:	10d81063          	bne	a6,a3,8005ef56 <chud_bs.constprop.0+0x128>
quickjs-nuttx/libbf.c:4100
        bf_mul_ui(G, G, 6 * b - 1, prec, BF_RNDN);
    8005ee5a:	4a19                	li	s4,6
    8005ee5c:	03440a33          	mul	s4,s0,s4
quickjs-nuttx/libbf.c:4099
        bf_set_ui(G, 2 * b - 1);
    8005ee60:	00141593          	slli	a1,s0,0x1
    8005ee64:	15fd                	addi	a1,a1,-1
    8005ee66:	8532                	mv	a0,a2
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ee68:	e0be                	sd	a5,64(sp)
    8005ee6a:	f4be                	sd	a5,104(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ee6c:	f83a                	sd	a4,48(sp)
    8005ee6e:	ecba                	sd	a4,88(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ee70:	dc02                	sw	zero,56(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ee72:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ee74:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ee76:	d082                	sw	zero,96(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ee78:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ee7a:	fc82                	sd	zero,120(sp)
chud_bs():
quickjs-nuttx/libbf.c:4099
        bf_set_ui(G, 2 * b - 1);
    8005ee7c:	d63f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4100
        bf_mul_ui(G, G, 6 * b - 1, prec, BF_RNDN);
    8005ee80:	4701                	li	a4,0
    8005ee82:	00295693          	srli	a3,s2,0x2
    8005ee86:	fffa0613          	addi	a2,s4,-1
    8005ee8a:	85a6                	mv	a1,s1
    8005ee8c:	8526                	mv	a0,s1
    8005ee8e:	b23fd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4101
        bf_mul_ui(G, G, 6 * b - 5, prec, BF_RNDN);
    8005ee92:	4701                	li	a4,0
    8005ee94:	00295693          	srli	a3,s2,0x2
    8005ee98:	ffba0613          	addi	a2,s4,-5
    8005ee9c:	85a6                	mv	a1,s1
    8005ee9e:	8526                	mv	a0,s1
    8005eea0:	b11fd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4102
        bf_set_ui(&T0, CHUD_B);
    8005eea4:	207e35b7          	lui	a1,0x207e3
    8005eea8:	da658593          	addi	a1,a1,-602 # 207e2da6 <asinh-0x5f81d25a>
    8005eeac:	1808                	addi	a0,sp,48
    8005eeae:	d31f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4103
        bf_mul_ui(&T0, &T0, b, prec, BF_RNDN);
    8005eeb2:	180c                	addi	a1,sp,48
    8005eeb4:	4701                	li	a4,0
    8005eeb6:	00295693          	srli	a3,s2,0x2
    8005eeba:	8622                	mv	a2,s0
    8005eebc:	852e                	mv	a0,a1
    8005eebe:	af3fd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4104
        bf_set_ui(&T1, CHUD_A);
    8005eec2:	00cf65b7          	lui	a1,0xcf6
    8005eec6:	37158593          	addi	a1,a1,881 # cf6371 <asinh-0x7f309c8f>
    8005eeca:	08a8                	addi	a0,sp,88
    8005eecc:	d13f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4105
        bf_add(&T0, &T0, &T1, prec, BF_RNDN);
    8005eed0:	180c                	addi	a1,sp,48
    8005eed2:	4701                	li	a4,0
    8005eed4:	00295693          	srli	a3,s2,0x2
    8005eed8:	08b0                	addi	a2,sp,88
    8005eeda:	852e                	mv	a0,a1
    8005eedc:	c61f90ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:4106
        bf_mul(P, G, &T0, prec, BF_RNDN);
    8005eee0:	4701                	li	a4,0
    8005eee2:	00295693          	srli	a3,s2,0x2
    8005eee6:	1810                	addi	a2,sp,48
    8005eee8:	85a6                	mv	a1,s1
    8005eeea:	8556                	mv	a0,s5
    8005eeec:	845fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4107
        P->sign = b & 1;
    8005eef0:	00147793          	andi	a5,s0,1
    8005eef4:	00faa423          	sw	a5,8(s5)
quickjs-nuttx/libbf.c:4109
        bf_set_ui(Q, b);
    8005eef8:	85a2                	mv	a1,s0
    8005eefa:	854e                	mv	a0,s3
    8005eefc:	ce3f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4110
        bf_mul_ui(Q, Q, b, prec, BF_RNDN);
    8005ef00:	4701                	li	a4,0
    8005ef02:	00295693          	srli	a3,s2,0x2
    8005ef06:	8622                	mv	a2,s0
    8005ef08:	85ce                	mv	a1,s3
    8005ef0a:	854e                	mv	a0,s3
    8005ef0c:	aa5fd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4111
        bf_mul_ui(Q, Q, b, prec, BF_RNDN);
    8005ef10:	4701                	li	a4,0
    8005ef12:	00295693          	srli	a3,s2,0x2
    8005ef16:	8622                	mv	a2,s0
    8005ef18:	85ce                	mv	a1,s3
    8005ef1a:	854e                	mv	a0,s3
    8005ef1c:	a95fd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4112
        bf_mul_ui(Q, Q, (uint64_t)CHUD_C * CHUD_C * CHUD_C / 24, prec, BF_RNDN);
    8005ef20:	4701                	li	a4,0
    8005ef22:	00295693          	srli	a3,s2,0x2
    8005ef26:	00035617          	auipc	a2,0x35
    8005ef2a:	dea63603          	ld	a2,-534(a2) # 80093d10 <_erodata+0x19e>
    8005ef2e:	85ce                	mv	a1,s3
    8005ef30:	854e                	mv	a0,s3
    8005ef32:	a7ffd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4113
        bf_delete(&T0);
    8005ef36:	1808                	addi	a0,sp,48
    8005ef38:	b73f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4140
        bf_delete(&G2);
    8005ef3c:	08a8                	addi	a0,sp,88
    8005ef3e:	b6df70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4142
}
    8005ef42:	70ea                	ld	ra,184(sp)
    8005ef44:	744a                	ld	s0,176(sp)
    8005ef46:	74aa                	ld	s1,168(sp)
    8005ef48:	790a                	ld	s2,160(sp)
    8005ef4a:	69ea                	ld	s3,152(sp)
    8005ef4c:	6a4a                	ld	s4,144(sp)
    8005ef4e:	6aaa                	ld	s5,136(sp)
    8005ef50:	6b0a                	ld	s6,128(sp)
    8005ef52:	6129                	addi	sp,sp,192
    8005ef54:	8082                	ret
quickjs-nuttx/libbf.c:4122
        c = (a + b) / 2;
    8005ef56:	00d40a33          	add	s4,s0,a3
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005ef5a:	ec3e                	sd	a5,24(sp)
    8005ef5c:	e0be                	sd	a5,64(sp)
    8005ef5e:	f4be                	sd	a5,104(sp)
chud_bs():
quickjs-nuttx/libbf.c:4122
        c = (a + b) / 2;
    8005ef60:	4789                	li	a5,2
    8005ef62:	02fa4a33          	div	s4,s4,a5
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005ef66:	e43a                	sd	a4,8(sp)
    8005ef68:	f83a                	sd	a4,48(sp)
    8005ef6a:	ecba                	sd	a4,88(sp)
chud_bs():
quickjs-nuttx/libbf.c:4123
        chud_bs(P, Q, G, a, c, 1, prec);
    8005ef6c:	4785                	li	a5,1
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ef6e:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ef70:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ef72:	f402                	sd	zero,40(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ef74:	dc02                	sw	zero,56(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ef76:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ef78:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005ef7a:	d082                	sw	zero,96(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005ef7c:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005ef7e:	fc82                	sd	zero,120(sp)
chud_bs():
quickjs-nuttx/libbf.c:4123
        chud_bs(P, Q, G, a, c, 1, prec);
    8005ef80:	8752                	mv	a4,s4
    8005ef82:	eadff0ef          	jal	ra,8005ee2e <chud_bs.constprop.0>
quickjs-nuttx/libbf.c:4124
        chud_bs(&P2, &Q2, &G2, c, b, need_g, prec);
    8005ef86:	8722                	mv	a4,s0
    8005ef88:	86d2                	mv	a3,s4
    8005ef8a:	08b0                	addi	a2,sp,88
    8005ef8c:	180c                	addi	a1,sp,48
    8005ef8e:	0028                	addi	a0,sp,8
    8005ef90:	87da                	mv	a5,s6
    8005ef92:	e9dff0ef          	jal	ra,8005ee2e <chud_bs.constprop.0>
quickjs-nuttx/libbf.c:4129
        bf_mul(&P2, &P2, G, prec, BF_RNDN);
    8005ef96:	002c                	addi	a1,sp,8
    8005ef98:	4701                	li	a4,0
    8005ef9a:	00295693          	srli	a3,s2,0x2
    8005ef9e:	8626                	mv	a2,s1
    8005efa0:	852e                	mv	a0,a1
    8005efa2:	f8efd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4130
        if (!need_g)
    8005efa6:	000b1663          	bnez	s6,8005efb2 <chud_bs.constprop.0+0x184>
quickjs-nuttx/libbf.c:4131
            bf_set_ui(G, 0);
    8005efaa:	4581                	li	a1,0
    8005efac:	8526                	mv	a0,s1
    8005efae:	c31f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4132
        bf_mul(P, P, &Q2, prec, BF_RNDN);
    8005efb2:	547d                	li	s0,-1
    8005efb4:	4701                	li	a4,0
    8005efb6:	00245693          	srli	a3,s0,0x2
    8005efba:	1810                	addi	a2,sp,48
    8005efbc:	85d6                	mv	a1,s5
    8005efbe:	8556                	mv	a0,s5
    8005efc0:	f70fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4133
        bf_add(P, P, &P2, prec, BF_RNDN);
    8005efc4:	4701                	li	a4,0
    8005efc6:	00245693          	srli	a3,s0,0x2
    8005efca:	0030                	addi	a2,sp,8
    8005efcc:	85d6                	mv	a1,s5
    8005efce:	8556                	mv	a0,s5
    8005efd0:	b6df90ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:4134
        bf_delete(&P2);
    8005efd4:	0028                	addi	a0,sp,8
    8005efd6:	ad5f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4136
        bf_mul(Q, Q, &Q2, prec, BF_RNDN);
    8005efda:	4701                	li	a4,0
    8005efdc:	00245693          	srli	a3,s0,0x2
    8005efe0:	1810                	addi	a2,sp,48
    8005efe2:	85ce                	mv	a1,s3
    8005efe4:	854e                	mv	a0,s3
    8005efe6:	f4afd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4137
        bf_delete(&Q2);
    8005efea:	1808                	addi	a0,sp,48
    8005efec:	abff70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4138
        if (need_g)
    8005eff0:	f40b06e3          	beqz	s6,8005ef3c <chud_bs.constprop.0+0x10e>
quickjs-nuttx/libbf.c:4139
            bf_mul(G, G, &G2, prec, BF_RNDN);
    8005eff4:	4701                	li	a4,0
    8005eff6:	00245693          	srli	a3,s0,0x2
    8005effa:	08b0                	addi	a2,sp,88
    8005effc:	85a6                	mv	a1,s1
    8005effe:	8526                	mv	a0,s1
