    8005a000:	97f2                	add	a5,a5,t3
quickjs-nuttx/libbf.c:5708 (discriminator 2)
        tabr[i] = a;
    8005a002:	00f33023          	sd	a5,0(t1)
quickjs-nuttx/libbf.c:5707 (discriminator 2)
        l += c;
    8005a006:	00e88533          	add	a0,a7,a4
quickjs-nuttx/libbf.c:5697 (discriminator 2)
    for(i = 0; i < n; i++) {
    8005a00a:	0e85                	addi	t4,t4,1
    8005a00c:	0321                	addi	t1,t1,8
    8005a00e:	b7b5                	j	80059f7a <mp_sub_mul1_dec+0x1e>

000000008005a010 <mp_mul_basecase_dec>:
mp_mul_basecase_dec():
quickjs-nuttx/libbf.c:5717
{
    8005a010:	7139                	addi	sp,sp,-64
    8005a012:	f822                	sd	s0,48(sp)
    8005a014:	f426                	sd	s1,40(sp)
    8005a016:	f04a                	sd	s2,32(sp)
    8005a018:	ec4e                	sd	s3,24(sp)
    8005a01a:	e852                	sd	s4,16(sp)
    8005a01c:	e456                	sd	s5,8(sp)
    8005a01e:	e05a                	sd	s6,0(sp)
    8005a020:	fc06                	sd	ra,56(sp)
    8005a022:	89b6                	mv	s3,a3
quickjs-nuttx/libbf.c:5721
    result[op1_size] = mp_mul1_dec(result, op1, op1_size, op2[0], 0);
    8005a024:	6294                	ld	a3,0(a3)
    8005a026:	00361b13          	slli	s6,a2,0x3
quickjs-nuttx/libbf.c:5717
{
    8005a02a:	8a3a                	mv	s4,a4
quickjs-nuttx/libbf.c:5721
    result[op1_size] = mp_mul1_dec(result, op1, op1_size, op2[0], 0);
    8005a02c:	4701                	li	a4,0
    8005a02e:	016504b3          	add	s1,a0,s6
quickjs-nuttx/libbf.c:5717
{
    8005a032:	842a                	mv	s0,a0
    8005a034:	8aae                	mv	s5,a1
    8005a036:	8932                	mv	s2,a2
quickjs-nuttx/libbf.c:5721
    result[op1_size] = mp_mul1_dec(result, op1, op1_size, op2[0], 0);
    8005a038:	ddfff0ef          	jal	ra,80059e16 <mp_mul1_dec>
    8005a03c:	e088                	sd	a0,0(s1)
quickjs-nuttx/libbf.c:5723
    for(i=1;i<op2_size;i++) {
    8005a03e:	0421                	addi	s0,s0,8
    8005a040:	4485                	li	s1,1
quickjs-nuttx/libbf.c:5723 (discriminator 1)
    8005a042:	0144cc63          	blt	s1,s4,8005a05a <mp_mul_basecase_dec+0x4a>
quickjs-nuttx/libbf.c:5727
}
    8005a046:	70e2                	ld	ra,56(sp)
    8005a048:	7442                	ld	s0,48(sp)
    8005a04a:	74a2                	ld	s1,40(sp)
    8005a04c:	7902                	ld	s2,32(sp)
    8005a04e:	69e2                	ld	s3,24(sp)
    8005a050:	6a42                	ld	s4,16(sp)
    8005a052:	6aa2                	ld	s5,8(sp)
    8005a054:	6b02                	ld	s6,0(sp)
    8005a056:	6121                	addi	sp,sp,64
    8005a058:	8082                	ret
quickjs-nuttx/libbf.c:5724 (discriminator 3)
        r = mp_add_mul1_dec(result + i, op1, op1_size, op2[i]);
    8005a05a:	00349793          	slli	a5,s1,0x3
    8005a05e:	97ce                	add	a5,a5,s3
    8005a060:	6394                	ld	a3,0(a5)
    8005a062:	8522                	mv	a0,s0
    8005a064:	864a                	mv	a2,s2
    8005a066:	85d6                	mv	a1,s5
    8005a068:	e4dff0ef          	jal	ra,80059eb4 <mp_add_mul1_dec>
quickjs-nuttx/libbf.c:5725 (discriminator 3)
        result[i + op1_size] = r;
    8005a06c:	016407b3          	add	a5,s0,s6
    8005a070:	e388                	sd	a0,0(a5)
quickjs-nuttx/libbf.c:5723 (discriminator 3)
    for(i=1;i<op2_size;i++) {
    8005a072:	0485                	addi	s1,s1,1
    8005a074:	0421                	addi	s0,s0,8
    8005a076:	b7f1                	j	8005a042 <mp_mul_basecase_dec+0x32>

000000008005a078 <mp_div1_dec>:
mp_div1_dec():
quickjs-nuttx/libbf.c:5733
{
    8005a078:	7159                	addi	sp,sp,-112
    8005a07a:	f0a2                	sd	s0,96(sp)
    8005a07c:	e8ca                	sd	s2,80(sp)
    8005a07e:	e4ce                	sd	s3,72(sp)
    8005a080:	e0d2                	sd	s4,64(sp)
    8005a082:	f486                	sd	ra,104(sp)
    8005a084:	eca6                	sd	s1,88(sp)
    8005a086:	fc56                	sd	s5,56(sp)
    8005a088:	f85a                	sd	s6,48(sp)
    8005a08a:	f45e                	sd	s7,40(sp)
    8005a08c:	f062                	sd	s8,32(sp)
    8005a08e:	ec66                	sd	s9,24(sp)
    8005a090:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libbf.c:5740
    if (b == 2) {
    8005a092:	4789                	li	a5,2
quickjs-nuttx/libbf.c:5733
{
    8005a094:	89aa                	mv	s3,a0
    8005a096:	8a2e                	mv	s4,a1
quickjs-nuttx/libbf.c:5744
        if (r)
    8005a098:	893a                	mv	s2,a4
quickjs-nuttx/libbf.c:5746
        for(i = na - 1; i >= 0; i--) {
    8005a09a:	fff60413          	addi	s0,a2,-1
quickjs-nuttx/libbf.c:5740
    if (b == 2) {
    8005a09e:	06f69563          	bne	a3,a5,8005a108 <mp_div1_dec+0x90>
quickjs-nuttx/libbf.c:5744
        if (r)
    8005a0a2:	c711                	beqz	a4,8005a0ae <mp_div1_dec+0x36>
quickjs-nuttx/libbf.c:5745
            r = base_div2;
    8005a0a4:	0003a797          	auipc	a5,0x3a
    8005a0a8:	bfc7b783          	ld	a5,-1028(a5) # 80093ca0 <_erodata+0x12e>
    8005a0ac:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:5746
        for(i = na - 1; i >= 0; i--) {
    8005a0ae:	67a2                	ld	a5,8(sp)
    8005a0b0:	4701                	li	a4,0
quickjs-nuttx/libbf.c:5751
                r = base_div2;
    8005a0b2:	0003a597          	auipc	a1,0x3a
    8005a0b6:	bee5b583          	ld	a1,-1042(a1) # 80093ca0 <_erodata+0x12e>
quickjs-nuttx/libbf.c:5746 (discriminator 1)
        for(i = na - 1; i >= 0; i--) {
    8005a0ba:	02045663          	bgez	s0,8005a0e6 <mp_div1_dec+0x6e>
    8005a0be:	c311                	beqz	a4,8005a0c2 <mp_div1_dec+0x4a>
    8005a0c0:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:5753
        if (r)
    8005a0c2:	67a2                	ld	a5,8(sp)
    8005a0c4:	c399                	beqz	a5,8005a0ca <mp_div1_dec+0x52>
quickjs-nuttx/libbf.c:5754
            r = 1;
    8005a0c6:	4785                	li	a5,1
    8005a0c8:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:5792
}
    8005a0ca:	70a6                	ld	ra,104(sp)
    8005a0cc:	7406                	ld	s0,96(sp)
    8005a0ce:	6522                	ld	a0,8(sp)
    8005a0d0:	64e6                	ld	s1,88(sp)
    8005a0d2:	6946                	ld	s2,80(sp)
    8005a0d4:	69a6                	ld	s3,72(sp)
    8005a0d6:	6a06                	ld	s4,64(sp)
    8005a0d8:	7ae2                	ld	s5,56(sp)
    8005a0da:	7b42                	ld	s6,48(sp)
    8005a0dc:	7ba2                	ld	s7,40(sp)
    8005a0de:	7c02                	ld	s8,32(sp)
    8005a0e0:	6ce2                	ld	s9,24(sp)
    8005a0e2:	6165                	addi	sp,sp,112
    8005a0e4:	8082                	ret
quickjs-nuttx/libbf.c:5747
            t0 = taba[i];
    8005a0e6:	00341713          	slli	a4,s0,0x3
    8005a0ea:	00ea06b3          	add	a3,s4,a4
    8005a0ee:	6290                	ld	a2,0(a3)
quickjs-nuttx/libbf.c:5748
            tabr[i] = (t0 >> 1) + r;
    8005a0f0:	974e                	add	a4,a4,s3
    8005a0f2:	00165693          	srli	a3,a2,0x1
    8005a0f6:	97b6                	add	a5,a5,a3
    8005a0f8:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:5750
            if (t0 & 1)
    8005a0fa:	00167793          	andi	a5,a2,1
    8005a0fe:	c391                	beqz	a5,8005a102 <mp_div1_dec+0x8a>
quickjs-nuttx/libbf.c:5751
                r = base_div2;
    8005a100:	87ae                	mv	a5,a1
quickjs-nuttx/libbf.c:5746 (discriminator 2)
        for(i = na - 1; i >= 0; i--) {
    8005a102:	147d                	addi	s0,s0,-1
    8005a104:	4705                	li	a4,1
    8005a106:	bf55                	j	8005a0ba <mp_div1_dec+0x42>
    8005a108:	84b6                	mv	s1,a3
quickjs-nuttx/libbf.c:5757
    if (na >= UDIV1NORM_THRESHOLD) {
    8005a10a:	10c7dd63          	bge	a5,a2,8005a224 <mp_div1_dec+0x1ac>
clz():
quickjs-nuttx/libbf.c:98
    if (a == 0) {
    8005a10e:	0003aa97          	auipc	s5,0x3a
    8005a112:	b7aaba83          	ld	s5,-1158(s5) # 80093c88 <_erodata+0x116>
    8005a116:	cab9                	beqz	a3,8005a16c <mp_div1_dec+0xf4>
clz64():
quickjs-nuttx/cutils.h:126
    8005a118:	8536                	mv	a0,a3
    8005a11a:	d7da90ef          	jal	ra,80003e96 <__clzdi2>
    8005a11e:	0005091b          	sext.w	s2,a0
mp_div1_dec():
quickjs-nuttx/libbf.c:5759
        if (shift == 0) {
    8005a122:	04091763          	bnez	s2,8005a170 <mp_div1_dec+0xf8>
udiv1norm_init():
quickjs-nuttx/libbf.c:1236
    return (((dlimb_t)a1 << LIMB_BITS) | a0) / d;
    8005a126:	8626                	mv	a2,s1
    8005a128:	4681                	li	a3,0
    8005a12a:	557d                	li	a0,-1
    8005a12c:	fff4c593          	not	a1,s1
    8005a130:	ce2aa0ef          	jal	ra,80004612 <__udivti3>
    8005a134:	8b2a                	mv	s6,a0
mp_div1_dec():
quickjs-nuttx/libbf.c:5763
            for(i = na - 1; i >= 0; i--) {
    8005a136:	5bfd                	li	s7,-1
quickjs-nuttx/libbf.c:5764 (discriminator 3)
                muldq(t1, t0, r, base);
    8005a138:	65a2                	ld	a1,8(sp)
    8005a13a:	00341913          	slli	s2,s0,0x3
quickjs-nuttx/libbf.c:5765 (discriminator 3)
                adddq(t1, t0, 0, taba[i]);
    8005a13e:	012a0733          	add	a4,s4,s2
quickjs-nuttx/libbf.c:5764 (discriminator 3)
                muldq(t1, t0, r, base);
    8005a142:	035587b3          	mul	a5,a1,s5
quickjs-nuttx/libbf.c:5765 (discriminator 3)
                adddq(t1, t0, 0, taba[i]);
    8005a146:	6310                	ld	a2,0(a4)
quickjs-nuttx/libbf.c:5766 (discriminator 3)
                q = udiv1norm(&r, t1, t0, b, b_inv);
    8005a148:	86a6                	mv	a3,s1
    8005a14a:	875a                	mv	a4,s6
    8005a14c:	0028                	addi	a0,sp,8
quickjs-nuttx/libbf.c:5767 (discriminator 3)
                tabr[i] = q;
    8005a14e:	994e                	add	s2,s2,s3
quickjs-nuttx/libbf.c:5763 (discriminator 3)
            for(i = na - 1; i >= 0; i--) {
    8005a150:	147d                	addi	s0,s0,-1
quickjs-nuttx/libbf.c:5764 (discriminator 3)
                muldq(t1, t0, r, base);
    8005a152:	0355b5b3          	mulhu	a1,a1,s5
quickjs-nuttx/libbf.c:5765 (discriminator 3)
                adddq(t1, t0, 0, taba[i]);
    8005a156:	963e                	add	a2,a2,a5
    8005a158:	00f637b3          	sltu	a5,a2,a5
quickjs-nuttx/libbf.c:5766 (discriminator 3)
                q = udiv1norm(&r, t1, t0, b, b_inv);
    8005a15c:	95be                	add	a1,a1,a5
    8005a15e:	a25fc0ef          	jal	ra,80056b82 <udiv1norm>
quickjs-nuttx/libbf.c:5767 (discriminator 3)
                tabr[i] = q;
    8005a162:	00a93023          	sd	a0,0(s2)
quickjs-nuttx/libbf.c:5763 (discriminator 3)
            for(i = na - 1; i >= 0; i--) {
    8005a166:	fd7419e3          	bne	s0,s7,8005a138 <mp_div1_dec+0xc0>
    8005a16a:	b785                	j	8005a0ca <mp_div1_dec+0x52>
clz():
quickjs-nuttx/libbf.c:99
        return LIMB_BITS;
    8005a16c:	04000913          	li	s2,64
mp_div1_dec():
quickjs-nuttx/libbf.c:5771
            b <<= shift;
    8005a170:	012494b3          	sll	s1,s1,s2
udiv1norm_init():
quickjs-nuttx/libbf.c:1236
    return (((dlimb_t)a1 << LIMB_BITS) | a0) / d;
    8005a174:	8626                	mv	a2,s1
    8005a176:	4681                	li	a3,0
    8005a178:	557d                	li	a0,-1
    8005a17a:	fff4c593          	not	a1,s1
    8005a17e:	c94aa0ef          	jal	ra,80004612 <__udivti3>
mp_div1_dec():
quickjs-nuttx/libbf.c:5776
                t1 = (t1 << shift) | (t0 >> (LIMB_BITS - shift));
    8005a182:	04000c13          	li	s8,64
udiv1norm_init():
quickjs-nuttx/libbf.c:1236
    return (((dlimb_t)a1 << LIMB_BITS) | a0) / d;
    8005a186:	8baa                	mv	s7,a0
mp_div1_dec():
quickjs-nuttx/libbf.c:5776
                t1 = (t1 << shift) | (t0 >> (LIMB_BITS - shift));
    8005a188:	412c0c3b          	subw	s8,s8,s2
quickjs-nuttx/libbf.c:5773
            for(i = na - 1; i >= 0; i--) {
    8005a18c:	5cfd                	li	s9,-1
quickjs-nuttx/libbf.c:5774 (discriminator 3)
                muldq(t1, t0, r, base);
    8005a18e:	65a2                	ld	a1,8(sp)
    8005a190:	00341b13          	slli	s6,s0,0x3
quickjs-nuttx/libbf.c:5775 (discriminator 3)
                adddq(t1, t0, 0, taba[i]);
    8005a194:	016a0733          	add	a4,s4,s6
quickjs-nuttx/libbf.c:5774 (discriminator 3)
                muldq(t1, t0, r, base);
    8005a198:	035587b3          	mul	a5,a1,s5
quickjs-nuttx/libbf.c:5775 (discriminator 3)
                adddq(t1, t0, 0, taba[i]);
    8005a19c:	6310                	ld	a2,0(a4)
quickjs-nuttx/libbf.c:5778 (discriminator 3)
                q = udiv1norm(&r, t1, t0, b, b_inv);
    8005a19e:	86a6                	mv	a3,s1
    8005a1a0:	875e                	mv	a4,s7
    8005a1a2:	0028                	addi	a0,sp,8
quickjs-nuttx/libbf.c:5780 (discriminator 3)
                tabr[i] = q;
    8005a1a4:	9b4e                	add	s6,s6,s3
quickjs-nuttx/libbf.c:5773 (discriminator 3)
            for(i = na - 1; i >= 0; i--) {
    8005a1a6:	147d                	addi	s0,s0,-1
quickjs-nuttx/libbf.c:5774 (discriminator 3)
                muldq(t1, t0, r, base);
    8005a1a8:	0355b5b3          	mulhu	a1,a1,s5
quickjs-nuttx/libbf.c:5775 (discriminator 3)
                adddq(t1, t0, 0, taba[i]);
    8005a1ac:	963e                	add	a2,a2,a5
    8005a1ae:	00f637b3          	sltu	a5,a2,a5
    8005a1b2:	97ae                	add	a5,a5,a1
quickjs-nuttx/libbf.c:5776 (discriminator 3)
                t1 = (t1 << shift) | (t0 >> (LIMB_BITS - shift));
    8005a1b4:	012797b3          	sll	a5,a5,s2
    8005a1b8:	018655b3          	srl	a1,a2,s8
quickjs-nuttx/libbf.c:5778 (discriminator 3)
                q = udiv1norm(&r, t1, t0, b, b_inv);
    8005a1bc:	8ddd                	or	a1,a1,a5
    8005a1be:	01261633          	sll	a2,a2,s2
    8005a1c2:	9c1fc0ef          	jal	ra,80056b82 <udiv1norm>
quickjs-nuttx/libbf.c:5779 (discriminator 3)
                r >>= shift;
    8005a1c6:	67a2                	ld	a5,8(sp)
quickjs-nuttx/libbf.c:5780 (discriminator 3)
                tabr[i] = q;
    8005a1c8:	00ab3023          	sd	a0,0(s6)
quickjs-nuttx/libbf.c:5779 (discriminator 3)
                r >>= shift;
    8005a1cc:	0127d7b3          	srl	a5,a5,s2
    8005a1d0:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:5773 (discriminator 3)
            for(i = na - 1; i >= 0; i--) {
    8005a1d2:	fb941ee3          	bne	s0,s9,8005a18e <mp_div1_dec+0x116>
    8005a1d6:	bdd5                	j	8005a0ca <mp_div1_dec+0x52>
quickjs-nuttx/libbf.c:5785 (discriminator 3)
            muldq(t1, t0, r, base);
    8005a1d8:	03890ab3          	mul	s5,s2,s8
    8005a1dc:	00341b93          	slli	s7,s0,0x3
quickjs-nuttx/libbf.c:5786 (discriminator 3)
            adddq(t1, t0, 0, taba[i]);
    8005a1e0:	017a07b3          	add	a5,s4,s7
    8005a1e4:	0007bb03          	ld	s6,0(a5)
quickjs-nuttx/libbf.c:5787 (discriminator 3)
            divdq(q, r, t1, t0, b);
    8005a1e8:	8626                	mv	a2,s1
    8005a1ea:	4681                	li	a3,0
quickjs-nuttx/libbf.c:5788 (discriminator 3)
            tabr[i] = q;
    8005a1ec:	9bce                	add	s7,s7,s3
quickjs-nuttx/libbf.c:5784 (discriminator 3)
        for(i = na - 1; i >= 0; i--) {
    8005a1ee:	147d                	addi	s0,s0,-1
quickjs-nuttx/libbf.c:5785 (discriminator 3)
            muldq(t1, t0, r, base);
    8005a1f0:	03893933          	mulhu	s2,s2,s8
quickjs-nuttx/libbf.c:5786 (discriminator 3)
            adddq(t1, t0, 0, taba[i]);
    8005a1f4:	9b56                	add	s6,s6,s5
    8005a1f6:	015b3ab3          	sltu	s5,s6,s5
quickjs-nuttx/libbf.c:5787 (discriminator 3)
            divdq(q, r, t1, t0, b);
    8005a1fa:	855a                	mv	a0,s6
quickjs-nuttx/libbf.c:5786 (discriminator 3)
            adddq(t1, t0, 0, taba[i]);
    8005a1fc:	9aca                	add	s5,s5,s2
quickjs-nuttx/libbf.c:5787 (discriminator 3)
            divdq(q, r, t1, t0, b);
    8005a1fe:	85d6                	mv	a1,s5
    8005a200:	f5eaa0ef          	jal	ra,8000495e <__umodti3>
    8005a204:	892a                	mv	s2,a0
    8005a206:	8626                	mv	a2,s1
    8005a208:	4681                	li	a3,0
    8005a20a:	855a                	mv	a0,s6
    8005a20c:	85d6                	mv	a1,s5
    8005a20e:	c04aa0ef          	jal	ra,80004612 <__udivti3>
    8005a212:	00abb023          	sd	a0,0(s7)
quickjs-nuttx/libbf.c:5784 (discriminator 3)
        for(i = na - 1; i >= 0; i--) {
    8005a216:	4785                	li	a5,1
quickjs-nuttx/libbf.c:5784 (discriminator 1)
    8005a218:	fc0450e3          	bgez	s0,8005a1d8 <mp_div1_dec+0x160>
    8005a21c:	ea0787e3          	beqz	a5,8005a0ca <mp_div1_dec+0x52>
    8005a220:	e44a                	sd	s2,8(sp)
    8005a222:	b565                	j	8005a0ca <mp_div1_dec+0x52>
    8005a224:	4781                	li	a5,0
quickjs-nuttx/libbf.c:5785
            muldq(t1, t0, r, base);
    8005a226:	0003ac17          	auipc	s8,0x3a
    8005a22a:	a62c3c03          	ld	s8,-1438(s8) # 80093c88 <_erodata+0x116>
    8005a22e:	b7ed                	j	8005a218 <mp_div1_dec+0x1a0>

000000008005a230 <mp_div_dec>:
mp_div_dec():
quickjs-nuttx/libbf.c:5841
{
    8005a230:	7111                	addi	sp,sp,-256
    8005a232:	e5d6                	sd	s5,200(sp)
    8005a234:	8aae                	mv	s5,a1
quickjs-nuttx/libbf.c:5853
    r = tabb1[nb - 1];
    8005a236:	00379593          	slli	a1,a5,0x3
quickjs-nuttx/libbf.c:5841
{
    8005a23a:	e1da                	sd	s6,192(sp)
quickjs-nuttx/libbf.c:5853
    r = tabb1[nb - 1];
    8005a23c:	ff858b13          	addi	s6,a1,-8
quickjs-nuttx/libbf.c:5841
{
    8005a240:	f9a2                	sd	s0,240(sp)
    8005a242:	fd86                	sd	ra,248(sp)
    8005a244:	f5a6                	sd	s1,232(sp)
    8005a246:	f1ca                	sd	s2,224(sp)
    8005a248:	edce                	sd	s3,216(sp)
    8005a24a:	e9d2                	sd	s4,208(sp)
    8005a24c:	fd5e                	sd	s7,184(sp)
    8005a24e:	f962                	sd	s8,176(sp)
    8005a250:	f566                	sd	s9,168(sp)
    8005a252:	f16a                	sd	s10,160(sp)
    8005a254:	ed6e                	sd	s11,152(sp)
    8005a256:	843e                	mv	s0,a5
quickjs-nuttx/libbf.c:5853
    r = tabb1[nb - 1];
    8005a258:	016707b3          	add	a5,a4,s6
    8005a25c:	0007bc03          	ld	s8,0(a5)
quickjs-nuttx/libbf.c:5841
{
    8005a260:	e42a                	sd	a0,8(sp)
quickjs-nuttx/libbf.c:5854
    assert(r != 0);
    8005a262:	000c1c63          	bnez	s8,8005a27a <mp_div_dec+0x4a>
quickjs-nuttx/libbf.c:5854 (discriminator 1)
    8005a266:	6585                	lui	a1,0x1
    8005a268:	4601                	li	a2,0
    8005a26a:	6de58593          	addi	a1,a1,1758 # 16de <asinh-0x7fffe922>
    8005a26e:	00026517          	auipc	a0,0x26
    8005a272:	35250513          	addi	a0,a0,850 # 800805c0 <std_name.0+0x18>
    8005a276:	6e6060ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:5856 (discriminator 2)
    if (r >= BF_DEC_BASE / 2) {
    8005a27a:	0003a797          	auipc	a5,0x3a
    8005a27e:	a367b783          	ld	a5,-1482(a5) # 80093cb0 <_erodata+0x13e>
    8005a282:	89b2                	mv	s3,a2
    8005a284:	8cb6                	mv	s9,a3
    8005a286:	84ba                	mv	s1,a4
quickjs-nuttx/libbf.c:5855 (discriminator 2)
    i = na - nb;
    8005a288:	40868a33          	sub	s4,a3,s0
quickjs-nuttx/libbf.c:5856 (discriminator 2)
    if (r >= BF_DEC_BASE / 2) {
    8005a28c:	0787f363          	bgeu	a5,s8,8005a2f2 <mp_div_dec+0xc2>
quickjs-nuttx/libbf.c:5860
        for(j = nb - 1; j >= 0; j--) {
    8005a290:	003a1713          	slli	a4,s4,0x3
    8005a294:	fff40693          	addi	a3,s0,-1
    8005a298:	00e605b3          	add	a1,a2,a4
quickjs-nuttx/libbf.c:5860 (discriminator 1)
    8005a29c:	0006d463          	bgez	a3,8005a2a4 <mp_div_dec+0x74>
quickjs-nuttx/libbf.c:5859
        q = 1;
    8005a2a0:	4785                	li	a5,1
    8005a2a2:	a005                	j	8005a2c2 <mp_div_dec+0x92>
quickjs-nuttx/libbf.c:5861
            if (taba[i + j] != tabb[j]) {
    8005a2a4:	00369613          	slli	a2,a3,0x3
    8005a2a8:	00c587b3          	add	a5,a1,a2
    8005a2ac:	9626                	add	a2,a2,s1
    8005a2ae:	639c                	ld	a5,0(a5)
    8005a2b0:	6210                	ld	a2,0(a2)
    8005a2b2:	02c78e63          	beq	a5,a2,8005a2ee <mp_div_dec+0xbe>
quickjs-nuttx/libbf.c:5862
                if (taba[i + j] < tabb[j])
    8005a2b6:	00c7b7b3          	sltu	a5,a5,a2
    8005a2ba:	0017c793          	xori	a5,a5,1
    8005a2be:	1782                	slli	a5,a5,0x20
    8005a2c0:	9381                	srli	a5,a5,0x20
quickjs-nuttx/libbf.c:5867
        tabq[i] = q;
    8005a2c2:	9756                	add	a4,a4,s5
    8005a2c4:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:5868
        if (q) {
    8005a2c6:	c799                	beqz	a5,8005a2d4 <mp_div_dec+0xa4>
quickjs-nuttx/libbf.c:5869
            mp_sub_dec(taba + i, taba + i, tabb, nb, 0);
    8005a2c8:	4701                	li	a4,0
    8005a2ca:	86a2                	mv	a3,s0
    8005a2cc:	8626                	mv	a2,s1
    8005a2ce:	852e                	mv	a0,a1
    8005a2d0:	ad1ff0ef          	jal	ra,80059da0 <mp_sub_dec>
quickjs-nuttx/libbf.c:5871
        i--;
    8005a2d4:	1a7d                	addi	s4,s4,-1
quickjs-nuttx/libbf.c:5858
        tabb = (limb_t *)tabb1;
    8005a2d6:	8926                	mv	s2,s1
quickjs-nuttx/libbf.c:5857
        mult = 1;
    8005a2d8:	4c05                	li	s8,1
    8005a2da:	014404b3          	add	s1,s0,s4
    8005a2de:	048e                	slli	s1,s1,0x3
    8005a2e0:	94ce                	add	s1,s1,s3
quickjs-nuttx/libbf.c:5892 (discriminator 1)
        if (unlikely(taba[i + nb] >= tabb[nb - 1])) {
    8005a2e2:	9b4a                	add	s6,s6,s2
quickjs-nuttx/libbf.c:5896 (discriminator 1)
            muldq(t1, t0, taba[i + nb], base);
    8005a2e4:	0003ac97          	auipc	s9,0x3a
    8005a2e8:	9a4cbc83          	ld	s9,-1628(s9) # 80093c88 <_erodata+0x116>
    8005a2ec:	a8c1                	j	8005a3bc <mp_div_dec+0x18c>
quickjs-nuttx/libbf.c:5860 (discriminator 2)
        for(j = nb - 1; j >= 0; j--) {
    8005a2ee:	16fd                	addi	a3,a3,-1
    8005a2f0:	b775                	j	8005a29c <mp_div_dec+0x6c>
quickjs-nuttx/libbf.c:5873
        mult = base / (r + 1);
    8005a2f2:	0003a797          	auipc	a5,0x3a
    8005a2f6:	9967b783          	ld	a5,-1642(a5) # 80093c88 <_erodata+0x116>
    8005a2fa:	0c05                	addi	s8,s8,1
    8005a2fc:	0387dc33          	divu	s8,a5,s8
quickjs-nuttx/libbf.c:5874
        if (likely(nb <= DIV_STATIC_ALLOC_LEN)) {
    8005a300:	47c1                	li	a5,16
quickjs-nuttx/libbf.c:5875
            tabb = static_tabb;
    8005a302:	01010913          	addi	s2,sp,16
quickjs-nuttx/libbf.c:5874
        if (likely(nb <= DIV_STATIC_ALLOC_LEN)) {
    8005a306:	0087d863          	bge	a5,s0,8005a316 <mp_div_dec+0xe6>
quickjs-nuttx/libbf.c:5877
            tabb = bf_malloc(s, sizeof(limb_t) * nb);
    8005a30a:	f8efc0ef          	jal	ra,80056a98 <bf_malloc>
    8005a30e:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:5879
                return -1;
    8005a310:	557d                	li	a0,-1
quickjs-nuttx/libbf.c:5878
            if (!tabb)
    8005a312:	0a090b63          	beqz	s2,8005a3c8 <mp_div_dec+0x198>
quickjs-nuttx/libbf.c:5881
        mp_mul1_dec(tabb, tabb1, nb, mult, 0);
    8005a316:	85a6                	mv	a1,s1
    8005a318:	4701                	li	a4,0
    8005a31a:	86e2                	mv	a3,s8
    8005a31c:	8622                	mv	a2,s0
    8005a31e:	854a                	mv	a0,s2
    8005a320:	af7ff0ef          	jal	ra,80059e16 <mp_mul1_dec>
quickjs-nuttx/libbf.c:5882
        taba[na] = mp_mul1_dec(taba, taba, na, mult, 0);
    8005a324:	003c9493          	slli	s1,s9,0x3
    8005a328:	4701                	li	a4,0
    8005a32a:	86e2                	mv	a3,s8
    8005a32c:	8666                	mv	a2,s9
    8005a32e:	85ce                	mv	a1,s3
    8005a330:	854e                	mv	a0,s3
    8005a332:	94ce                	add	s1,s1,s3
    8005a334:	ae3ff0ef          	jal	ra,80059e16 <mp_mul1_dec>
    8005a338:	e088                	sd	a0,0(s1)
    8005a33a:	b745                	j	8005a2da <mp_div_dec+0xaa>
quickjs-nuttx/libbf.c:5892
        if (unlikely(taba[i + nb] >= tabb[nb - 1])) {
    8005a33c:	608c                	ld	a1,0(s1)
    8005a33e:	000b3603          	ld	a2,0(s6)
    8005a342:	0ac5f263          	bgeu	a1,a2,8005a3e6 <mp_div_dec+0x1b6>
quickjs-nuttx/libbf.c:5896
            muldq(t1, t0, taba[i + nb], base);
    8005a346:	039587b3          	mul	a5,a1,s9
quickjs-nuttx/libbf.c:5897
            adddq(t1, t0, 0, taba[i + nb - 1]);
    8005a34a:	ff84b503          	ld	a0,-8(s1)
quickjs-nuttx/libbf.c:5898
            divdq(q, r, t1, t0, tabb[nb - 1]);
    8005a34e:	4681                	li	a3,0
quickjs-nuttx/libbf.c:5896
            muldq(t1, t0, taba[i + nb], base);
    8005a350:	0395b5b3          	mulhu	a1,a1,s9
quickjs-nuttx/libbf.c:5897
            adddq(t1, t0, 0, taba[i + nb - 1]);
    8005a354:	953e                	add	a0,a0,a5
    8005a356:	00f537b3          	sltu	a5,a0,a5
quickjs-nuttx/libbf.c:5898
            divdq(q, r, t1, t0, tabb[nb - 1]);
    8005a35a:	95be                	add	a1,a1,a5
    8005a35c:	ab6aa0ef          	jal	ra,80004612 <__udivti3>
    8005a360:	8baa                	mv	s7,a0
quickjs-nuttx/libbf.c:5902 (discriminator 1)
        r = mp_sub_mul1_dec(taba + i, tabb, nb, q);
    8005a362:	003a1d13          	slli	s10,s4,0x3
    8005a366:	01a98db3          	add	s11,s3,s10
    8005a36a:	86de                	mv	a3,s7
    8005a36c:	8622                	mv	a2,s0
    8005a36e:	85ca                	mv	a1,s2
    8005a370:	856e                	mv	a0,s11
    8005a372:	bebff0ef          	jal	ra,80059f5c <mp_sub_mul1_dec>
quickjs-nuttx/libbf.c:5906 (discriminator 1)
        v = taba[i + nb];
    8005a376:	6098                	ld	a4,0(s1)
quickjs-nuttx/libbf.c:5907 (discriminator 1)
        a = v - r;
    8005a378:	40a70533          	sub	a0,a4,a0
quickjs-nuttx/libbf.c:5909 (discriminator 1)
        if (c)
    8005a37c:	86aa                	mv	a3,a0
    8005a37e:	00a77463          	bgeu	a4,a0,8005a386 <mp_div_dec+0x156>
quickjs-nuttx/libbf.c:5910
            a += base;
    8005a382:	019506b3          	add	a3,a0,s9
quickjs-nuttx/libbf.c:5911
        taba[i + nb] = a;
    8005a386:	e094                	sd	a3,0(s1)
quickjs-nuttx/libbf.c:5913
        if (c != 0) {
    8005a388:	02a77563          	bgeu	a4,a0,8005a3b2 <mp_div_dec+0x182>
quickjs-nuttx/libbf.c:5917
                c = mp_add_dec(taba + i, taba + i, tabb, nb, 0);
    8005a38c:	4701                	li	a4,0
    8005a38e:	86a2                	mv	a3,s0
    8005a390:	864a                	mv	a2,s2
    8005a392:	85ee                	mv	a1,s11
    8005a394:	856e                	mv	a0,s11
quickjs-nuttx/libbf.c:5916
                q--;
    8005a396:	1bfd                	addi	s7,s7,-1
quickjs-nuttx/libbf.c:5917
                c = mp_add_dec(taba + i, taba + i, tabb, nb, 0);
    8005a398:	e80ff0ef          	jal	ra,80059a18 <mp_add_dec>
quickjs-nuttx/libbf.c:5919
                if (c != 0) {
    8005a39c:	d965                	beqz	a0,8005a38c <mp_div_dec+0x15c>
quickjs-nuttx/libbf.c:5920
                    if (++taba[i + nb] == base) {
    8005a39e:	6098                	ld	a4,0(s1)
    8005a3a0:	0003a797          	auipc	a5,0x3a
    8005a3a4:	8e878793          	addi	a5,a5,-1816 # 80093c88 <_erodata+0x116>
    8005a3a8:	639c                	ld	a5,0(a5)
    8005a3aa:	0705                	addi	a4,a4,1
    8005a3ac:	e098                	sd	a4,0(s1)
    8005a3ae:	fcf71fe3          	bne	a4,a5,8005a38c <mp_div_dec+0x15c>
quickjs-nuttx/libbf.c:5926
        tabq[i] = q;
    8005a3b2:	9d56                	add	s10,s10,s5
    8005a3b4:	017d3023          	sd	s7,0(s10)
quickjs-nuttx/libbf.c:5891
    for(; i >= 0; i--) {
    8005a3b8:	1a7d                	addi	s4,s4,-1
    8005a3ba:	14e1                	addi	s1,s1,-8
quickjs-nuttx/libbf.c:5891 (discriminator 1)
    8005a3bc:	f80a50e3          	bgez	s4,8005a33c <mp_div_dec+0x10c>
quickjs-nuttx/libbf.c:5935
    if (mult != 1) {
    8005a3c0:	4785                	li	a5,1
    8005a3c2:	02fc1763          	bne	s8,a5,8005a3f0 <mp_div_dec+0x1c0>
quickjs-nuttx/libbf.c:5940
    return 0;
    8005a3c6:	4501                	li	a0,0
quickjs-nuttx/libbf.c:5941
}
    8005a3c8:	70ee                	ld	ra,248(sp)
    8005a3ca:	744e                	ld	s0,240(sp)
    8005a3cc:	74ae                	ld	s1,232(sp)
    8005a3ce:	790e                	ld	s2,224(sp)
    8005a3d0:	69ee                	ld	s3,216(sp)
    8005a3d2:	6a4e                	ld	s4,208(sp)
    8005a3d4:	6aae                	ld	s5,200(sp)
    8005a3d6:	6b0e                	ld	s6,192(sp)
    8005a3d8:	7bea                	ld	s7,184(sp)
    8005a3da:	7c4a                	ld	s8,176(sp)
    8005a3dc:	7caa                	ld	s9,168(sp)
    8005a3de:	7d0a                	ld	s10,160(sp)
    8005a3e0:	6dea                	ld	s11,152(sp)
    8005a3e2:	6111                	addi	sp,sp,256
    8005a3e4:	8082                	ret
quickjs-nuttx/libbf.c:5894
            q = base - 1;
    8005a3e6:	0003ab97          	auipc	s7,0x3a
    8005a3ea:	8c2bbb83          	ld	s7,-1854(s7) # 80093ca8 <_erodata+0x136>
    8005a3ee:	bf95                	j	8005a362 <mp_div_dec+0x132>
quickjs-nuttx/libbf.c:5936
        mp_div1_dec(taba, taba, nb, mult, 0);
    8005a3f0:	4701                	li	a4,0
    8005a3f2:	86e2                	mv	a3,s8
    8005a3f4:	8622                	mv	a2,s0
    8005a3f6:	85ce                	mv	a1,s3
    8005a3f8:	854e                	mv	a0,s3
    8005a3fa:	c7fff0ef          	jal	ra,8005a078 <mp_div1_dec>
quickjs-nuttx/libbf.c:5937
        if (unlikely(tabb != static_tabb))
    8005a3fe:	081c                	addi	a5,sp,16
    8005a400:	fcf903e3          	beq	s2,a5,8005a3c6 <mp_div_dec+0x196>
quickjs-nuttx/libbf.c:5938
            bf_free(s, tabb);
    8005a404:	6522                	ld	a0,8(sp)
    8005a406:	85ca                	mv	a1,s2
    8005a408:	e98fc0ef          	jal	ra,80056aa0 <bf_free>
    8005a40c:	bf6d                	j	8005a3c6 <mp_div_dec+0x196>

000000008005a40e <mp_sqrtrem_rec_dec>:
mp_sqrtrem_rec_dec():
quickjs-nuttx/libbf.c:6006
{
    8005a40e:	7119                	addi	sp,sp,-128
    8005a410:	f4a6                	sd	s1,104(sp)
    8005a412:	f0ca                	sd	s2,96(sp)
    8005a414:	ecce                	sd	s3,88(sp)
    8005a416:	fc86                	sd	ra,120(sp)
    8005a418:	f8a2                	sd	s0,112(sp)
    8005a41a:	e8d2                	sd	s4,80(sp)
    8005a41c:	e4d6                	sd	s5,72(sp)
    8005a41e:	e0da                	sd	s6,64(sp)
    8005a420:	fc5e                	sd	s7,56(sp)
    8005a422:	f862                	sd	s8,48(sp)
    8005a424:	f466                	sd	s9,40(sp)
    8005a426:	f06a                	sd	s10,32(sp)
quickjs-nuttx/libbf.c:6009
    if (n == 1)
    8005a428:	4785                	li	a5,1
quickjs-nuttx/libbf.c:6006
{
    8005a42a:	892a                	mv	s2,a0
    8005a42c:	84ae                	mv	s1,a1
    8005a42e:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:6009
    if (n == 1)
    8005a430:	0ef61763          	bne	a2,a5,8005a51e <mp_sqrtrem_rec_dec+0x110>
mp_sqrtrem2_dec():
quickjs-nuttx/libbf.c:5986
    a = (dlimb_t)taba[1] * BF_DEC_BASE + taba[0];
    8005a434:	6580                	ld	s0,8(a1)
    8005a436:	0003aa97          	auipc	s5,0x3a
    8005a43a:	852aba83          	ld	s5,-1966(s5) # 80093c88 <_erodata+0x116>
    8005a43e:	0005bb03          	ld	s6,0(a1)
    8005a442:	03540733          	mul	a4,s0,s5
clz():
quickjs-nuttx/libbf.c:99
        return LIMB_BITS;
    8005a446:	04000a13          	li	s4,64
mp_sqrtrem2_dec():
quickjs-nuttx/libbf.c:5986
    a = (dlimb_t)taba[1] * BF_DEC_BASE + taba[0];
    8005a44a:	03543433          	mulhu	s0,s0,s5
    8005a44e:	9b3a                	add	s6,s6,a4
    8005a450:	00eb3733          	sltu	a4,s6,a4
    8005a454:	943a                	add	s0,s0,a4
clz():
quickjs-nuttx/libbf.c:98
    if (a == 0) {
    8005a456:	c411                	beqz	s0,8005a462 <mp_sqrtrem_rec_dec+0x54>
clz64():
quickjs-nuttx/cutils.h:126
    8005a458:	8522                	mv	a0,s0
    8005a45a:	a3da90ef          	jal	ra,80003e96 <__clzdi2>
    8005a45e:	00050a1b          	sext.w	s4,a0
mp_sqrtrem2_dec():
quickjs-nuttx/libbf.c:5987
    k = clz(a >> LIMB_BITS) & ~1;
    8005a462:	ffea7a13          	andi	s4,s4,-2
quickjs-nuttx/libbf.c:5988
    b = a << k;
    8005a466:	020a1613          	slli	a2,s4,0x20
    8005a46a:	9201                	srli	a2,a2,0x20
    8005a46c:	855a                	mv	a0,s6
    8005a46e:	85a2                	mv	a1,s0
    8005a470:	9f9a90ef          	jal	ra,80003e68 <__ashlti3>
quickjs-nuttx/libbf.c:5989
    taba1[0] = b;
    8005a474:	e82a                	sd	a0,16(sp)
quickjs-nuttx/libbf.c:5990
    taba1[1] = b >> LIMB_BITS;
    8005a476:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/libbf.c:5991
    mp_sqrtrem2(&s, taba1);
    8005a478:	0028                	addi	a0,sp,8
    8005a47a:	080c                	addi	a1,sp,16
    8005a47c:	acffc0ef          	jal	ra,80056f4a <mp_sqrtrem2>
quickjs-nuttx/libbf.c:5992
    s >>= (k >> 1);
    8005a480:	67a2                	ld	a5,8(sp)
    8005a482:	401a5a1b          	sraiw	s4,s4,0x1
    8005a486:	0147da33          	srl	s4,a5,s4
quickjs-nuttx/libbf.c:5994
    r = a - (dlimb_t)s * (dlimb_t)s;
    8005a48a:	034a0733          	mul	a4,s4,s4
    8005a48e:	034a37b3          	mulhu	a5,s4,s4
    8005a492:	40eb0733          	sub	a4,s6,a4
    8005a496:	00eb3b33          	sltu	s6,s6,a4
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    8005a49a:	03f75693          	srli	a3,a4,0x3f
mp_sqrtrem2_dec():
quickjs-nuttx/libbf.c:5994
    r = a - (dlimb_t)s * (dlimb_t)s;
    8005a49e:	8c1d                	sub	s0,s0,a5
    8005a4a0:	416407b3          	sub	a5,s0,s6
shld():
quickjs-nuttx/libbf.c:179
        return (a1 << shift) | (a0 >> (LIMB_BITS - shift));
    8005a4a4:	00179413          	slli	s0,a5,0x1
    8005a4a8:	8c55                	or	s0,s0,a3
mp_sqrtrem2_dec():
quickjs-nuttx/libbf.c:5995
    divdq_base(r1, r0, r >> LIMB_BITS, r);
    8005a4aa:	00039697          	auipc	a3,0x39
    8005a4ae:	7e66b683          	ld	a3,2022(a3) # 80093c90 <_erodata+0x11e>
    8005a4b2:	02d43433          	mulhu	s0,s0,a3
    8005a4b6:	035406b3          	mul	a3,s0,s5
    8005a4ba:	03543633          	mulhu	a2,s0,s5
    8005a4be:	40d706b3          	sub	a3,a4,a3
    8005a4c2:	8f91                	sub	a5,a5,a2
    8005a4c4:	00d73633          	sltu	a2,a4,a3
    8005a4c8:	00039717          	auipc	a4,0x39
    8005a4cc:	7d073703          	ld	a4,2000(a4) # 80093c98 <_erodata+0x126>
    8005a4d0:	9736                	add	a4,a4,a3
    8005a4d2:	8f91                	sub	a5,a5,a2
    8005a4d4:	00e6f363          	bgeu	a3,a4,8005a4da <mp_sqrtrem_rec_dec+0xcc>
    8005a4d8:	4989                	li	s3,2
    8005a4da:	41378633          	sub	a2,a5,s3
    8005a4de:	40165793          	srai	a5,a2,0x1
    8005a4e2:	0409                	addi	s0,s0,2
    8005a4e4:	943e                	add	s0,s0,a5
    8005a4e6:	0157f7b3          	and	a5,a5,s5
    8005a4ea:	97ba                	add	a5,a5,a4
    8005a4ec:	00e7b733          	sltu	a4,a5,a4
    8005a4f0:	963a                	add	a2,a2,a4
    8005a4f2:	9432                	add	s0,s0,a2
    8005a4f4:	01567633          	and	a2,a2,s5
    8005a4f8:	963e                	add	a2,a2,a5
quickjs-nuttx/libbf.c:5996
    taba[0] = r0;
    8005a4fa:	e090                	sd	a2,0(s1)
quickjs-nuttx/libbf.c:5997
    tabs[0] = s;
    8005a4fc:	01493023          	sd	s4,0(s2)
mp_sqrtrem_rec_dec():
quickjs-nuttx/libbf.c:6064
}
    8005a500:	70e6                	ld	ra,120(sp)
    8005a502:	8522                	mv	a0,s0
    8005a504:	7446                	ld	s0,112(sp)
    8005a506:	74a6                	ld	s1,104(sp)
    8005a508:	7906                	ld	s2,96(sp)
    8005a50a:	69e6                	ld	s3,88(sp)
    8005a50c:	6a46                	ld	s4,80(sp)
    8005a50e:	6aa6                	ld	s5,72(sp)
    8005a510:	6b06                	ld	s6,64(sp)
    8005a512:	7be2                	ld	s7,56(sp)
    8005a514:	7c42                	ld	s8,48(sp)
    8005a516:	7ca2                	ld	s9,40(sp)
    8005a518:	7d02                	ld	s10,32(sp)
    8005a51a:	6109                	addi	sp,sp,128
    8005a51c:	8082                	ret
quickjs-nuttx/libbf.c:6014
    l = n / 2;
    8005a51e:	00165b13          	srli	s6,a2,0x1
quickjs-nuttx/libbf.c:6016
    qh = mp_sqrtrem_rec_dec(tabs + l, taba + 2 * l, h, tmp_buf);
    8005a522:	003b1d13          	slli	s10,s6,0x3
    8005a526:	004b1a93          	slli	s5,s6,0x4
quickjs-nuttx/libbf.c:6015
    h = n - l;
    8005a52a:	41660c33          	sub	s8,a2,s6
quickjs-nuttx/libbf.c:6016
    qh = mp_sqrtrem_rec_dec(tabs + l, taba + 2 * l, h, tmp_buf);
    8005a52e:	01a50bb3          	add	s7,a0,s10
    8005a532:	9aae                	add	s5,s5,a1
    8005a534:	8662                	mv	a2,s8
    8005a536:	85d6                	mv	a1,s5
    8005a538:	855e                	mv	a0,s7
    8005a53a:	8436                	mv	s0,a3
    8005a53c:	ed3ff0ef          	jal	ra,8005a40e <mp_sqrtrem_rec_dec>
    8005a540:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:6024
    if (qh) {
    8005a542:	c901                	beqz	a0,8005a552 <mp_sqrtrem_rec_dec+0x144>
quickjs-nuttx/libbf.c:6025
        mp_sub_dec(taba + 2 * l, taba + 2 * l, tabs + l, h, 0);
    8005a544:	4701                	li	a4,0
    8005a546:	86e2                	mv	a3,s8
    8005a548:	865e                	mv	a2,s7
    8005a54a:	85d6                	mv	a1,s5
    8005a54c:	8556                	mv	a0,s5
    8005a54e:	853ff0ef          	jal	ra,80059da0 <mp_sub_dec>
quickjs-nuttx/libbf.c:6029
    mp_div_dec(NULL, tmp_buf, taba + l, n, tabs + l, h);
    8005a552:	01a48cb3          	add	s9,s1,s10
    8005a556:	87e2                	mv	a5,s8
    8005a558:	875e                	mv	a4,s7
    8005a55a:	86ce                	mv	a3,s3
    8005a55c:	8666                	mv	a2,s9
    8005a55e:	85a2                	mv	a1,s0
    8005a560:	4501                	li	a0,0
    8005a562:	ccfff0ef          	jal	ra,8005a230 <mp_div_dec>
quickjs-nuttx/libbf.c:6030
    qh += tmp_buf[l];
    8005a566:	01a407b3          	add	a5,s0,s10
    8005a56a:	6388                	ld	a0,0(a5)
quickjs-nuttx/libbf.c:6031
    for(i = 0; i < l; i++)
    8005a56c:	4781                	li	a5,0
quickjs-nuttx/libbf.c:6030
    qh += tmp_buf[l];
    8005a56e:	9a2a                	add	s4,s4,a0
quickjs-nuttx/libbf.c:6031 (discriminator 1)
    for(i = 0; i < l; i++)
    8005a570:	08fd1d63          	bne	s10,a5,8005a60a <mp_sqrtrem_rec_dec+0x1fc>
quickjs-nuttx/libbf.c:6033
    ql = mp_div1_dec(tabs, tabs, l, 2, qh & 1);
    8005a574:	001a7713          	andi	a4,s4,1
    8005a578:	4689                	li	a3,2
    8005a57a:	865a                	mv	a2,s6
    8005a57c:	85ca                	mv	a1,s2
    8005a57e:	854a                	mv	a0,s2
    8005a580:	af9ff0ef          	jal	ra,8005a078 <mp_div1_dec>
    8005a584:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:6034
    qh = qh >> 1; /* 0 or 1 */
    8005a586:	001a5a13          	srli	s4,s4,0x1
quickjs-nuttx/libbf.c:6035
    if (ql)
    8005a58a:	c909                	beqz	a0,8005a59c <mp_sqrtrem_rec_dec+0x18e>
quickjs-nuttx/libbf.c:6036
        rh = mp_add_dec(taba + l, taba + l, tabs + l, h, 0);
    8005a58c:	4701                	li	a4,0
    8005a58e:	86e2                	mv	a3,s8
    8005a590:	865e                	mv	a2,s7
    8005a592:	85e6                	mv	a1,s9
    8005a594:	8566                	mv	a0,s9
    8005a596:	c82ff0ef          	jal	ra,80059a18 <mp_add_dec>
    8005a59a:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:6044
    mp_add_ui_dec(tabs + l, qh, h);
    8005a59c:	8662                	mv	a2,s8
    8005a59e:	85d2                	mv	a1,s4
    8005a5a0:	855e                	mv	a0,s7
    8005a5a2:	cc4ff0ef          	jal	ra,80059a66 <mp_add_ui_dec>
quickjs-nuttx/libbf.c:6051
    if (qh) {
    8005a5a6:	020a1563          	bnez	s4,8005a5d0 <mp_sqrtrem_rec_dec+0x1c2>
quickjs-nuttx/libbf.c:6054
        mp_mul_basecase_dec(taba + n, tabs, l, tabs, l);
    8005a5aa:	00399a13          	slli	s4,s3,0x3
    8005a5ae:	9a26                	add	s4,s4,s1
    8005a5b0:	8552                	mv	a0,s4
    8005a5b2:	875a                	mv	a4,s6
    8005a5b4:	86ca                	mv	a3,s2
    8005a5b6:	865a                	mv	a2,s6
    8005a5b8:	85ca                	mv	a1,s2
    8005a5ba:	a57ff0ef          	jal	ra,8005a010 <mp_mul_basecase_dec>
quickjs-nuttx/libbf.c:6055
        c = mp_sub_dec(taba, taba, taba + n, 2 * l, 0);
    8005a5be:	8652                	mv	a2,s4
    8005a5c0:	4701                	li	a4,0
    8005a5c2:	ffe9f693          	andi	a3,s3,-2
    8005a5c6:	85a6                	mv	a1,s1
    8005a5c8:	8526                	mv	a0,s1
    8005a5ca:	fd6ff0ef          	jal	ra,80059da0 <mp_sub_dec>
    8005a5ce:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:6057
    rh -= mp_sub_ui_dec(taba + 2 * l, c, n - 2 * l);
    8005a5d0:	0019f613          	andi	a2,s3,1
    8005a5d4:	85d2                	mv	a1,s4
    8005a5d6:	8556                	mv	a0,s5
    8005a5d8:	809ff0ef          	jal	ra,80059de0 <mp_sub_ui_dec>
    8005a5dc:	8c09                	sub	s0,s0,a0
quickjs-nuttx/libbf.c:6058
    if ((slimb_t)rh < 0) {
    8005a5de:	f20451e3          	bgez	s0,8005a500 <mp_sqrtrem_rec_dec+0xf2>
quickjs-nuttx/libbf.c:6059
        mp_sub_ui_dec(tabs, 1, n);
    8005a5e2:	864e                	mv	a2,s3
    8005a5e4:	4585                	li	a1,1
    8005a5e6:	854a                	mv	a0,s2
    8005a5e8:	ff8ff0ef          	jal	ra,80059de0 <mp_sub_ui_dec>
quickjs-nuttx/libbf.c:6060
        rh += mp_add_mul1_dec(taba, tabs, n, 2);
    8005a5ec:	85ca                	mv	a1,s2
    8005a5ee:	4689                	li	a3,2
    8005a5f0:	864e                	mv	a2,s3
    8005a5f2:	8526                	mv	a0,s1
    8005a5f4:	8c1ff0ef          	jal	ra,80059eb4 <mp_add_mul1_dec>
    8005a5f8:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:6061
        rh += mp_add_ui_dec(taba, 1, n);
    8005a5fa:	864e                	mv	a2,s3
    8005a5fc:	4585                	li	a1,1
    8005a5fe:	8526                	mv	a0,s1
    8005a600:	c66ff0ef          	jal	ra,80059a66 <mp_add_ui_dec>
    8005a604:	992a                	add	s2,s2,a0
    8005a606:	944a                	add	s0,s0,s2
    8005a608:	bde5                	j	8005a500 <mp_sqrtrem_rec_dec+0xf2>
quickjs-nuttx/libbf.c:6032 (discriminator 3)
        tabs[i] = tmp_buf[i];
    8005a60a:	00f40733          	add	a4,s0,a5
    8005a60e:	6314                	ld	a3,0(a4)
    8005a610:	00f90733          	add	a4,s2,a5
    8005a614:	07a1                	addi	a5,a5,8
    8005a616:	e314                	sd	a3,0(a4)
quickjs-nuttx/libbf.c:6031 (discriminator 3)
    for(i = 0; i < l; i++)
    8005a618:	bfa1                	j	8005a570 <mp_sqrtrem_rec_dec+0x162>

000000008005a61a <mp_sqrtrem_dec>:
mp_sqrtrem_dec():
quickjs-nuttx/libbf.c:6071
{
    8005a61a:	7119                	addi	sp,sp,-128
quickjs-nuttx/libbf.c:6075
    n2 = n / 2 + 1;
    8005a61c:	0016d793          	srli	a5,a3,0x1
quickjs-nuttx/libbf.c:6071
{
    8005a620:	f4a6                	sd	s1,104(sp)
    8005a622:	f0ca                	sd	s2,96(sp)
    8005a624:	ecce                	sd	s3,88(sp)
    8005a626:	e4d6                	sd	s5,72(sp)
    8005a628:	fc86                	sd	ra,120(sp)
    8005a62a:	f8a2                	sd	s0,112(sp)
    8005a62c:	e8d2                	sd	s4,80(sp)
quickjs-nuttx/libbf.c:6075
    n2 = n / 2 + 1;
    8005a62e:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:6076
    if (n2 <= countof(tmp_buf1)) {
    8005a630:	4721                	li	a4,8
quickjs-nuttx/libbf.c:6071
{
    8005a632:	89aa                	mv	s3,a0
    8005a634:	8aae                	mv	s5,a1
    8005a636:	8932                	mv	s2,a2
    8005a638:	84b6                	mv	s1,a3
quickjs-nuttx/libbf.c:6076
    if (n2 <= countof(tmp_buf1)) {
    8005a63a:	02f77363          	bgeu	a4,a5,8005a660 <mp_sqrtrem_dec+0x46>
quickjs-nuttx/libbf.c:6079
        tmp_buf = bf_malloc(s, sizeof(limb_t) * n2);
    8005a63e:	00379593          	slli	a1,a5,0x3
    8005a642:	c56fc0ef          	jal	ra,80056a98 <bf_malloc>
    8005a646:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:6081
            return -1;
    8005a648:	5a7d                	li	s4,-1
quickjs-nuttx/libbf.c:6080
        if (!tmp_buf)
    8005a64a:	ed01                	bnez	a0,8005a662 <mp_sqrtrem_dec+0x48>
quickjs-nuttx/libbf.c:6087
}
    8005a64c:	70e6                	ld	ra,120(sp)
    8005a64e:	7446                	ld	s0,112(sp)
    8005a650:	74a6                	ld	s1,104(sp)
    8005a652:	7906                	ld	s2,96(sp)
    8005a654:	69e6                	ld	s3,88(sp)
    8005a656:	6aa6                	ld	s5,72(sp)
    8005a658:	8552                	mv	a0,s4
    8005a65a:	6a46                	ld	s4,80(sp)
    8005a65c:	6109                	addi	sp,sp,128
    8005a65e:	8082                	ret
quickjs-nuttx/libbf.c:6077
        tmp_buf = tmp_buf1;
    8005a660:	840a                	mv	s0,sp
quickjs-nuttx/libbf.c:6083
    taba[n] = mp_sqrtrem_rec_dec(tabs, taba, n, tmp_buf);
    8005a662:	00349a13          	slli	s4,s1,0x3
    8005a666:	86a2                	mv	a3,s0
    8005a668:	8626                	mv	a2,s1
    8005a66a:	85ca                	mv	a1,s2
    8005a66c:	8556                	mv	a0,s5
    8005a66e:	9a4a                	add	s4,s4,s2
    8005a670:	d9fff0ef          	jal	ra,8005a40e <mp_sqrtrem_rec_dec>
    8005a674:	00aa3023          	sd	a0,0(s4)
quickjs-nuttx/libbf.c:6084
    if (tmp_buf != tmp_buf1)
    8005a678:	878a                	mv	a5,sp
quickjs-nuttx/libbf.c:6086
    return 0;
    8005a67a:	4a01                	li	s4,0
quickjs-nuttx/libbf.c:6084
    if (tmp_buf != tmp_buf1)
    8005a67c:	fcf408e3          	beq	s0,a5,8005a64c <mp_sqrtrem_dec+0x32>
quickjs-nuttx/libbf.c:6085
        bf_free(s, tmp_buf);
    8005a680:	85a2                	mv	a1,s0
    8005a682:	854e                	mv	a0,s3
    8005a684:	c1cfc0ef          	jal	ra,80056aa0 <bf_free>
    8005a688:	b7d1                	j	8005a64c <mp_sqrtrem_dec+0x32>

000000008005a68a <bfdec_print_str>:
bfdec_print_str():
quickjs-nuttx/libbf.c:6278
{
    8005a68a:	1101                	addi	sp,sp,-32
    8005a68c:	e822                	sd	s0,16(sp)
    8005a68e:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:6280
    printf("%s=", str);
    8005a690:	85aa                	mv	a1,a0
    8005a692:	00026517          	auipc	a0,0x26
    8005a696:	f6650513          	addi	a0,a0,-154 # 800805f8 <std_name.0+0x50>
quickjs-nuttx/libbf.c:6278
{
    8005a69a:	ec06                	sd	ra,24(sp)
    8005a69c:	e426                	sd	s1,8(sp)
    8005a69e:	e04a                	sd	s2,0(sp)
quickjs-nuttx/libbf.c:6280
    printf("%s=", str);
    8005a6a0:	339060ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:6282
    if (a->expn == BF_EXP_NAN) {
    8005a6a4:	6818                	ld	a4,16(s0)
    8005a6a6:	57fd                	li	a5,-1
    8005a6a8:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:6283
        printf("NaN");
    8005a6aa:	00010517          	auipc	a0,0x10
    8005a6ae:	2a650513          	addi	a0,a0,678 # 8006a950 <qjsc_repl+0x53a0>
quickjs-nuttx/libbf.c:6282
    if (a->expn == BF_EXP_NAN) {
    8005a6b2:	04f70163          	beq	a4,a5,8005a6f4 <bfdec_print_str+0x6a>
quickjs-nuttx/libbf.c:6285
        if (a->sign)
    8005a6b6:	441c                	lw	a5,8(s0)
    8005a6b8:	c789                	beqz	a5,8005a6c2 <bfdec_print_str+0x38>
quickjs-nuttx/libbf.c:6286
            putchar('-');
    8005a6ba:	02d00513          	li	a0,45
    8005a6be:	427060ef          	jal	ra,800612e4 <putchar>
quickjs-nuttx/libbf.c:6287
        if (a->expn == BF_EXP_ZERO) {
    8005a6c2:	6818                	ld	a4,16(s0)
    8005a6c4:	57fd                	li	a5,-1
    8005a6c6:	17fe                	slli	a5,a5,0x3f
    8005a6c8:	00f71e63          	bne	a4,a5,8005a6e4 <bfdec_print_str+0x5a>
quickjs-nuttx/libbf.c:6288
            putchar('0');
    8005a6cc:	03000513          	li	a0,48
    8005a6d0:	415060ef          	jal	ra,800612e4 <putchar>
quickjs-nuttx/libbf.c:6299
}
    8005a6d4:	6442                	ld	s0,16(sp)
    8005a6d6:	60e2                	ld	ra,24(sp)
    8005a6d8:	64a2                	ld	s1,8(sp)
    8005a6da:	6902                	ld	s2,0(sp)
quickjs-nuttx/libbf.c:6298
    printf("\n");
    8005a6dc:	4529                	li	a0,10
quickjs-nuttx/libbf.c:6299
}
    8005a6de:	6105                	addi	sp,sp,32
quickjs-nuttx/libbf.c:6298
    printf("\n");
    8005a6e0:	4050606f          	j	800612e4 <putchar>
quickjs-nuttx/libbf.c:6289
        } else if (a->expn == BF_EXP_INF) {
    8005a6e4:	57f5                	li	a5,-3
    8005a6e6:	8385                	srli	a5,a5,0x1
    8005a6e8:	00f71963          	bne	a4,a5,8005a6fa <bfdec_print_str+0x70>
quickjs-nuttx/libbf.c:6290
            printf("Inf");
    8005a6ec:	00026517          	auipc	a0,0x26
    8005a6f0:	f1450513          	addi	a0,a0,-236 # 80080600 <std_name.0+0x58>
    8005a6f4:	2e5060ef          	jal	ra,800611d8 <printf>
    8005a6f8:	bff1                	j	8005a6d4 <bfdec_print_str+0x4a>
quickjs-nuttx/libbf.c:6292
            printf("0.");
    8005a6fa:	00026517          	auipc	a0,0x26
    8005a6fe:	f3e50513          	addi	a0,a0,-194 # 80080638 <std_name.0+0x90>
    8005a702:	2d7060ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:6293
            for(i = a->len - 1; i >= 0; i--)
    8005a706:	6c04                	ld	s1,24(s0)
quickjs-nuttx/libbf.c:6294
                printf("%0*" PRIu_LIMB, LIMB_DIGITS, a->tab[i]);
    8005a708:	00026917          	auipc	s2,0x26
    8005a70c:	f3890913          	addi	s2,s2,-200 # 80080640 <std_name.0+0x98>
quickjs-nuttx/libbf.c:6293
            for(i = a->len - 1; i >= 0; i--)
    8005a710:	14fd                	addi	s1,s1,-1
quickjs-nuttx/libbf.c:6293 (discriminator 1)
    8005a712:	0004da63          	bgez	s1,8005a726 <bfdec_print_str+0x9c>
quickjs-nuttx/libbf.c:6295
            printf("e%" PRId_LIMB, a->expn);
    8005a716:	680c                	ld	a1,16(s0)
    8005a718:	00026517          	auipc	a0,0x26
    8005a71c:	f3050513          	addi	a0,a0,-208 # 80080648 <std_name.0+0xa0>
    8005a720:	2b9060ef          	jal	ra,800611d8 <printf>
    8005a724:	bf45                	j	8005a6d4 <bfdec_print_str+0x4a>
quickjs-nuttx/libbf.c:6294 (discriminator 3)
                printf("%0*" PRIu_LIMB, LIMB_DIGITS, a->tab[i]);
    8005a726:	701c                	ld	a5,32(s0)
    8005a728:	00349713          	slli	a4,s1,0x3
    8005a72c:	45cd                	li	a1,19
    8005a72e:	97ba                	add	a5,a5,a4
    8005a730:	6390                	ld	a2,0(a5)
    8005a732:	854a                	mv	a0,s2
quickjs-nuttx/libbf.c:6293 (discriminator 3)
            for(i = a->len - 1; i >= 0; i--)
    8005a734:	14fd                	addi	s1,s1,-1
quickjs-nuttx/libbf.c:6294 (discriminator 3)
                printf("%0*" PRIu_LIMB, LIMB_DIGITS, a->tab[i]);
    8005a736:	2a3060ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/libbf.c:6293 (discriminator 3)
            for(i = a->len - 1; i >= 0; i--)
    8005a73a:	bfe1                	j	8005a712 <bfdec_print_str+0x88>

000000008005a73c <bfdec_round>:
bfdec_round():
quickjs-nuttx/libbf.c:6528
    if (r->len == 0)
    8005a73c:	6d14                	ld	a3,24(a0)
    8005a73e:	c299                	beqz	a3,8005a744 <bfdec_round+0x8>
quickjs-nuttx/libbf.c:6530
    return __bfdec_round(r, prec, flags, r->len);
    8005a740:	b66ff06f          	j	80059aa6 <__bfdec_round>
quickjs-nuttx/libbf.c:6531
}
    8005a744:	4501                	li	a0,0
    8005a746:	8082                	ret

000000008005a748 <bfdec_normalize_and_round>:
bfdec_normalize_and_round():
quickjs-nuttx/libbf.c:6535
{
    8005a748:	7159                	addi	sp,sp,-112
    8005a74a:	e8ca                	sd	s2,80(sp)
    8005a74c:	e0d2                	sd	s4,64(sp)
    8005a74e:	fc56                	sd	s5,56(sp)
    8005a750:	f85a                	sd	s6,48(sp)
    8005a752:	f486                	sd	ra,104(sp)
    8005a754:	f0a2                	sd	s0,96(sp)
    8005a756:	eca6                	sd	s1,88(sp)
    8005a758:	e4ce                	sd	s3,72(sp)
    8005a75a:	f45e                	sd	s7,40(sp)
    8005a75c:	f062                	sd	s8,32(sp)
    8005a75e:	ec66                	sd	s9,24(sp)
    8005a760:	e86a                	sd	s10,16(sp)
    8005a762:	e46e                	sd	s11,8(sp)
quickjs-nuttx/libbf.c:6540
    l = r->len;
    8005a764:	6d18                	ld	a4,24(a0)
quickjs-nuttx/libbf.c:6535
{
    8005a766:	892a                	mv	s2,a0
    8005a768:	8a2e                	mv	s4,a1
    8005a76a:	8ab2                	mv	s5,a2
quickjs-nuttx/libbf.c:6540
    l = r->len;
    8005a76c:	8b3a                	mv	s6,a4
quickjs-nuttx/libbf.c:6541
    while (l > 0 && r->tab[l - 1] == 0)
    8005a76e:	240b0363          	beqz	s6,8005a9b4 <bfdec_normalize_and_round+0x26c>
quickjs-nuttx/libbf.c:6541 (discriminator 1)
    8005a772:	02093b83          	ld	s7,32(s2)
    8005a776:	003b1793          	slli	a5,s6,0x3
    8005a77a:	17e1                	addi	a5,a5,-8
    8005a77c:	97de                	add	a5,a5,s7
    8005a77e:	6394                	ld	a3,0(a5)
    8005a780:	c285                	beqz	a3,8005a7a0 <bfdec_normalize_and_round+0x58>
quickjs-nuttx/libbf.c:6549
        r->expn -= (r->len - l) * LIMB_DIGITS;
    8005a782:	46cd                	li	a3,19
    8005a784:	41670733          	sub	a4,a4,s6
    8005a788:	02d70733          	mul	a4,a4,a3
    8005a78c:	01093683          	ld	a3,16(s2)
    8005a790:	40e68733          	sub	a4,a3,a4
    8005a794:	00e93823          	sd	a4,16(s2)
quickjs-nuttx/libbf.c:6551
        v = r->tab[l - 1];
    8005a798:	6384                	ld	s1,0(a5)
clz_dec():
quickjs-nuttx/libbf.c:6092
    if (a == 0)
    8005a79a:	e489                	bnez	s1,8005a7a4 <bfdec_normalize_and_round+0x5c>
quickjs-nuttx/libbf.c:6093
        return LIMB_DIGITS;
    8005a79c:	444d                	li	s0,19
    8005a79e:	a089                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
bfdec_normalize_and_round():
quickjs-nuttx/libbf.c:6542
        l--;
    8005a7a0:	1b7d                	addi	s6,s6,-1
    8005a7a2:	b7f1                	j	8005a76e <bfdec_normalize_and_round+0x26>
clz64():
quickjs-nuttx/cutils.h:126
    8005a7a4:	8526                	mv	a0,s1
    8005a7a6:	ef0a90ef          	jal	ra,80003e96 <__clzdi2>
clz_dec():
quickjs-nuttx/libbf.c:6094
    switch(LIMB_BITS - 1 - clz(a)) {
    8005a7aa:	03f00793          	li	a5,63
    8005a7ae:	40a7853b          	subw	a0,a5,a0
    8005a7b2:	0005071b          	sext.w	a4,a0
    8005a7b6:	03b00793          	li	a5,59
    8005a7ba:	18e7e763          	bltu	a5,a4,8005a948 <bfdec_normalize_and_round+0x200>
    8005a7be:	02051793          	slli	a5,a0,0x20
    8005a7c2:	01e7d513          	srli	a0,a5,0x1e
    8005a7c6:	00026717          	auipc	a4,0x26
    8005a7ca:	e8a70713          	addi	a4,a4,-374 # 80080650 <std_name.0+0xa8>
    8005a7ce:	953a                	add	a0,a0,a4
    8005a7d0:	411c                	lw	a5,0(a0)
    8005a7d2:	97ba                	add	a5,a5,a4
    8005a7d4:	8782                	jr	a5
quickjs-nuttx/libbf.c:6102
        if (a < 10)
    8005a7d6:	47a5                	li	a5,9
quickjs-nuttx/libbf.c:6103
            return LIMB_DIGITS - 1;
    8005a7d8:	4449                	li	s0,18
quickjs-nuttx/libbf.c:6102
        if (a < 10)
    8005a7da:	0097f363          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6107
        return LIMB_DIGITS - 2;
    8005a7de:	4445                	li	s0,17
mp_shl_dec():
quickjs-nuttx/libbf.c:5968
    assert(shift >= 1 && shift < LIMB_DIGITS);
    8005a7e0:	47cd                	li	a5,19
    8005a7e2:	18f40963          	beq	s0,a5,8005a974 <bfdec_normalize_and_round+0x22c>
quickjs-nuttx/libbf.c:5972
        fast_shr_rem_dec(q, r, a, LIMB_DIGITS - shift);
    8005a7e6:	45cd                	li	a1,19
    8005a7e8:	9d81                	subw	a1,a1,s0
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005a7ea:	02059713          	slli	a4,a1,0x20
mp_shl_dec():
quickjs-nuttx/libbf.c:5972
        fast_shr_rem_dec(q, r, a, LIMB_DIGITS - shift);
    8005a7ee:	408784b3          	sub	s1,a5,s0
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005a7f2:	01c75593          	srli	a1,a4,0x1c
    8005a7f6:	00026d17          	auipc	s10,0x26
    8005a7fa:	342d0d13          	addi	s10,s10,834 # 80080b38 <mp_pow_div>
mp_shl_dec():
quickjs-nuttx/libbf.c:5972
        fast_shr_rem_dec(q, r, a, LIMB_DIGITS - shift);
    8005a7fe:	00026717          	auipc	a4,0x26
    8005a802:	29a70713          	addi	a4,a4,666 # 80080a98 <mp_pow_dec>
    8005a806:	048e                	slli	s1,s1,0x3
quickjs-nuttx/libbf.c:5973
        tab_r[i] = r * mp_pow_dec[shift] + l;
    8005a808:	00341c13          	slli	s8,s0,0x3
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005a80c:	9d2e                	add	s10,s10,a1
mp_shl_dec():
quickjs-nuttx/libbf.c:5969
    l = low;
    8005a80e:	4d81                	li	s11,0
quickjs-nuttx/libbf.c:5970
    for(i = 0; i < n; i++) {
    8005a810:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:5972
        fast_shr_rem_dec(q, r, a, LIMB_DIGITS - shift);
    8005a812:	94ba                	add	s1,s1,a4
quickjs-nuttx/libbf.c:5973
        tab_r[i] = r * mp_pow_dec[shift] + l;
    8005a814:	9c3a                	add	s8,s8,a4
quickjs-nuttx/libbf.c:5970
    for(i = 0; i < n; i++) {
    8005a816:	176cc963          	blt	s9,s6,8005a988 <bfdec_normalize_and_round+0x240>
bfdec_normalize_and_round():
quickjs-nuttx/libbf.c:6555
            r->expn -= shift;
    8005a81a:	01093783          	ld	a5,16(s2)
    8005a81e:	40878433          	sub	s0,a5,s0
    8005a822:	00893823          	sd	s0,16(s2)
    8005a826:	a20d                	j	8005a948 <bfdec_normalize_and_round+0x200>
clz_dec():
quickjs-nuttx/libbf.c:6111
        if (a < 100)
    8005a828:	06300793          	li	a5,99
quickjs-nuttx/libbf.c:6112
            return LIMB_DIGITS - 2;
    8005a82c:	4445                	li	s0,17
quickjs-nuttx/libbf.c:6111
        if (a < 100)
    8005a82e:	fa97f9e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6116
        return LIMB_DIGITS - 3;
    8005a832:	4441                	li	s0,16
    8005a834:	b775                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6120
        if (a < 1000)
    8005a836:	3e700793          	li	a5,999
quickjs-nuttx/libbf.c:6121
            return LIMB_DIGITS - 3;
    8005a83a:	4441                	li	s0,16
quickjs-nuttx/libbf.c:6120
        if (a < 1000)
    8005a83c:	fa97f2e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6125
        return LIMB_DIGITS - 4;
    8005a840:	443d                	li	s0,15
    8005a842:	bf79                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6131
        if (a < 10000)
    8005a844:	6789                	lui	a5,0x2
    8005a846:	70f78793          	addi	a5,a5,1807 # 270f <asinh-0x7fffd8f1>
quickjs-nuttx/libbf.c:6132
            return LIMB_DIGITS - 4;
    8005a84a:	443d                	li	s0,15
quickjs-nuttx/libbf.c:6131
        if (a < 10000)
    8005a84c:	f897fae3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6136
        return LIMB_DIGITS - 5;
    8005a850:	4439                	li	s0,14
    8005a852:	b779                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6140
        if (a < 100000)
    8005a854:	67e1                	lui	a5,0x18
    8005a856:	69f78793          	addi	a5,a5,1695 # 1869f <asinh-0x7ffe7961>
quickjs-nuttx/libbf.c:6141
            return LIMB_DIGITS - 5;
    8005a85a:	4439                	li	s0,14
quickjs-nuttx/libbf.c:6140
        if (a < 100000)
    8005a85c:	f897f2e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6145
        return LIMB_DIGITS - 6;
    8005a860:	4435                	li	s0,13
    8005a862:	bfbd                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6149
        if (a < 1000000)
    8005a864:	000f47b7          	lui	a5,0xf4
    8005a868:	23f78793          	addi	a5,a5,575 # f423f <asinh-0x7ff0bdc1>
quickjs-nuttx/libbf.c:6150
            return LIMB_DIGITS - 6;
    8005a86c:	4435                	li	s0,13
quickjs-nuttx/libbf.c:6149
        if (a < 1000000)
    8005a86e:	f697f9e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6154
        return LIMB_DIGITS - 7;
    8005a872:	4431                	li	s0,12
    8005a874:	b7b5                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6160
        if (a < 10000000)
    8005a876:	009897b7          	lui	a5,0x989
    8005a87a:	67f78793          	addi	a5,a5,1663 # 98967f <asinh-0x7f676981>
quickjs-nuttx/libbf.c:6161
            return LIMB_DIGITS - 7;
    8005a87e:	4431                	li	s0,12
quickjs-nuttx/libbf.c:6160
        if (a < 10000000)
    8005a880:	f697f0e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6165
        return LIMB_DIGITS - 8;
    8005a884:	442d                	li	s0,11
    8005a886:	bfa9                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6169
        if (a < 100000000)
    8005a888:	05f5e7b7          	lui	a5,0x5f5e
    8005a88c:	0ff78793          	addi	a5,a5,255 # 5f5e0ff <asinh-0x7a0a1f01>
quickjs-nuttx/libbf.c:6170
            return LIMB_DIGITS - 8;
    8005a890:	442d                	li	s0,11
quickjs-nuttx/libbf.c:6169
        if (a < 100000000)
    8005a892:	f497f7e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6175
        return LIMB_DIGITS - 9;
    8005a896:	4429                	li	s0,10
    8005a898:	b7a1                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6179
        if (a < 1000000000)
    8005a89a:	3b9ad7b7          	lui	a5,0x3b9ad
    8005a89e:	9ff78793          	addi	a5,a5,-1537 # 3b9ac9ff <asinh-0x44653601>
quickjs-nuttx/libbf.c:6180
            return LIMB_DIGITS - 9;
    8005a8a2:	4429                	li	s0,10
quickjs-nuttx/libbf.c:6179
        if (a < 1000000000)
    8005a8a4:	f297fee3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6184
        return LIMB_DIGITS - 10;
    8005a8a8:	4425                	li	s0,9
    8005a8aa:	bf1d                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6190
        if (a < 10000000000)
    8005a8ac:	00039797          	auipc	a5,0x39
    8005a8b0:	40c7b783          	ld	a5,1036(a5) # 80093cb8 <_erodata+0x146>
quickjs-nuttx/libbf.c:6191
            return LIMB_DIGITS - 10;
    8005a8b4:	4425                	li	s0,9
quickjs-nuttx/libbf.c:6190
        if (a < 10000000000)
    8005a8b6:	f297f5e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6195
        return LIMB_DIGITS - 11;
    8005a8ba:	4421                	li	s0,8
    8005a8bc:	b715                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6199
        if (a < 100000000000)
    8005a8be:	00039797          	auipc	a5,0x39
    8005a8c2:	4027b783          	ld	a5,1026(a5) # 80093cc0 <_erodata+0x14e>
quickjs-nuttx/libbf.c:6200
            return LIMB_DIGITS - 11;
    8005a8c6:	4421                	li	s0,8
quickjs-nuttx/libbf.c:6199
        if (a < 100000000000)
    8005a8c8:	f097fce3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6204
        return LIMB_DIGITS - 12;
    8005a8cc:	441d                	li	s0,7
    8005a8ce:	bf09                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6208
        if (a < 1000000000000)
    8005a8d0:	00039797          	auipc	a5,0x39
    8005a8d4:	3f87b783          	ld	a5,1016(a5) # 80093cc8 <_erodata+0x156>
quickjs-nuttx/libbf.c:6209
            return LIMB_DIGITS - 12;
    8005a8d8:	441d                	li	s0,7
quickjs-nuttx/libbf.c:6208
        if (a < 1000000000000)
    8005a8da:	f097f3e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6211
            return LIMB_DIGITS - 13;
    8005a8de:	4419                	li	s0,6
    8005a8e0:	b701                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6219
        if (a < 10000000000000)
    8005a8e2:	00039797          	auipc	a5,0x39
    8005a8e6:	3ee7b783          	ld	a5,1006(a5) # 80093cd0 <_erodata+0x15e>
quickjs-nuttx/libbf.c:6220
            return LIMB_DIGITS - 13;
    8005a8ea:	4419                	li	s0,6
quickjs-nuttx/libbf.c:6219
        if (a < 10000000000000)
    8005a8ec:	ee97fae3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6224
        return LIMB_DIGITS - 14;
    8005a8f0:	4415                	li	s0,5
    8005a8f2:	b5fd                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6228
        if (a < 100000000000000)
    8005a8f4:	00039797          	auipc	a5,0x39
    8005a8f8:	3e47b783          	ld	a5,996(a5) # 80093cd8 <_erodata+0x166>
quickjs-nuttx/libbf.c:6229
            return LIMB_DIGITS - 14;
    8005a8fc:	4415                	li	s0,5
quickjs-nuttx/libbf.c:6228
        if (a < 100000000000000)
    8005a8fe:	ee97f1e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6233
        return LIMB_DIGITS - 15;
    8005a902:	4411                	li	s0,4
    8005a904:	bdf1                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6237
        if (a < 1000000000000000)
    8005a906:	00039797          	auipc	a5,0x39
    8005a90a:	3da7b783          	ld	a5,986(a5) # 80093ce0 <_erodata+0x16e>
quickjs-nuttx/libbf.c:6238
            return LIMB_DIGITS - 15;
    8005a90e:	4411                	li	s0,4
quickjs-nuttx/libbf.c:6237
        if (a < 1000000000000000)
    8005a910:	ec97f8e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6242
        return LIMB_DIGITS - 16;
    8005a914:	440d                	li	s0,3
    8005a916:	b5e9                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6248
        if (a < 10000000000000000)
    8005a918:	00039797          	auipc	a5,0x39
    8005a91c:	3d07b783          	ld	a5,976(a5) # 80093ce8 <_erodata+0x176>
quickjs-nuttx/libbf.c:6249
            return LIMB_DIGITS - 16;
    8005a920:	440d                	li	s0,3
quickjs-nuttx/libbf.c:6248
        if (a < 10000000000000000)
    8005a922:	ea97ffe3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6253
        return LIMB_DIGITS - 17;
    8005a926:	4409                	li	s0,2
    8005a928:	bd65                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6257
        if (a < 100000000000000000)
    8005a92a:	00039797          	auipc	a5,0x39
    8005a92e:	3c67b783          	ld	a5,966(a5) # 80093cf0 <_erodata+0x17e>
quickjs-nuttx/libbf.c:6258
            return LIMB_DIGITS - 17;
    8005a932:	4409                	li	s0,2
quickjs-nuttx/libbf.c:6257
        if (a < 100000000000000000)
    8005a934:	ea97f6e3          	bgeu	a5,s1,8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6267
            return LIMB_DIGITS - 18;
    8005a938:	4405                	li	s0,1
    8005a93a:	b55d                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
quickjs-nuttx/libbf.c:6266
        if (a < 1000000000000000000)
    8005a93c:	00039797          	auipc	a5,0x39
    8005a940:	3bc7b783          	ld	a5,956(a5) # 80093cf8 <_erodata+0x186>
    8005a944:	fe97fae3          	bgeu	a5,s1,8005a938 <bfdec_normalize_and_round+0x1f0>
bfdec_normalize_and_round():
quickjs-nuttx/libbf.c:6561
}
    8005a948:	7406                	ld	s0,96(sp)
    8005a94a:	70a6                	ld	ra,104(sp)
    8005a94c:	64e6                	ld	s1,88(sp)
    8005a94e:	69a6                	ld	s3,72(sp)
    8005a950:	7ba2                	ld	s7,40(sp)
    8005a952:	7c02                	ld	s8,32(sp)
    8005a954:	6ce2                	ld	s9,24(sp)
    8005a956:	6d42                	ld	s10,16(sp)
    8005a958:	6da2                	ld	s11,8(sp)
quickjs-nuttx/libbf.c:6557
        ret = __bfdec_round(r, prec1, flags, l);
    8005a95a:	86da                	mv	a3,s6
    8005a95c:	8656                	mv	a2,s5
quickjs-nuttx/libbf.c:6561
}
    8005a95e:	7b42                	ld	s6,48(sp)
    8005a960:	7ae2                	ld	s5,56(sp)
quickjs-nuttx/libbf.c:6557
        ret = __bfdec_round(r, prec1, flags, l);
    8005a962:	85d2                	mv	a1,s4
    8005a964:	854a                	mv	a0,s2
quickjs-nuttx/libbf.c:6561
}
    8005a966:	6a06                	ld	s4,64(sp)
    8005a968:	6946                	ld	s2,80(sp)
    8005a96a:	6165                	addi	sp,sp,112
quickjs-nuttx/libbf.c:6557
        ret = __bfdec_round(r, prec1, flags, l);
    8005a96c:	93aff06f          	j	80059aa6 <__bfdec_round>
clz_dec():
quickjs-nuttx/libbf.c:6096
        return LIMB_DIGITS - 1;
    8005a970:	4449                	li	s0,18
    8005a972:	b5bd                	j	8005a7e0 <bfdec_normalize_and_round+0x98>
mp_shl_dec():
quickjs-nuttx/libbf.c:5968
    assert(shift >= 1 && shift < LIMB_DIGITS);
    8005a974:	6585                	lui	a1,0x1
    8005a976:	4601                	li	a2,0
    8005a978:	75058593          	addi	a1,a1,1872 # 1750 <asinh-0x7fffe8b0>
    8005a97c:	00026517          	auipc	a0,0x26
    8005a980:	c4450513          	addi	a0,a0,-956 # 800805c0 <std_name.0+0x18>
    8005a984:	7d9050ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:5971
        a = tab[i];
    8005a988:	000bb983          	ld	s3,0(s7)
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005a98c:	85ea                	mv	a1,s10
mp_shl_dec():
quickjs-nuttx/libbf.c:5970
    for(i = 0; i < n; i++) {
    8005a98e:	0c85                	addi	s9,s9,1
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005a990:	854e                	mv	a0,s3
    8005a992:	b2afc0ef          	jal	ra,80056cbc <fast_udiv>
mp_shl_dec():
quickjs-nuttx/libbf.c:5972
        fast_shr_rem_dec(q, r, a, LIMB_DIGITS - shift);
    8005a996:	609c                	ld	a5,0(s1)
    8005a998:	0ba1                	addi	s7,s7,8
    8005a99a:	02f507b3          	mul	a5,a0,a5
    8005a99e:	40f989b3          	sub	s3,s3,a5
quickjs-nuttx/libbf.c:5973
        tab_r[i] = r * mp_pow_dec[shift] + l;
    8005a9a2:	000c3783          	ld	a5,0(s8)
    8005a9a6:	02f989b3          	mul	s3,s3,a5
    8005a9aa:	99ee                	add	s3,s3,s11
    8005a9ac:	ff3bbc23          	sd	s3,-8(s7)
quickjs-nuttx/libbf.c:5974
        l = q;
    8005a9b0:	8daa                	mv	s11,a0
    8005a9b2:	b595                	j	8005a816 <bfdec_normalize_and_round+0xce>
bfdec_normalize_and_round():
quickjs-nuttx/libbf.c:6545
        r->expn = BF_EXP_ZERO;
    8005a9b4:	57fd                	li	a5,-1
    8005a9b6:	17fe                	slli	a5,a5,0x3f
    8005a9b8:	00f93823          	sd	a5,16(s2)
bfdec_resize():
quickjs-nuttx/libbf.h:531
    8005a9bc:	854a                	mv	a0,s2
    8005a9be:	4581                	li	a1,0
    8005a9c0:	9c4fd0ef          	jal	ra,80057b84 <bf_resize>
bfdec_normalize_and_round():
quickjs-nuttx/libbf.c:6561
}
    8005a9c4:	70a6                	ld	ra,104(sp)
    8005a9c6:	7406                	ld	s0,96(sp)
    8005a9c8:	64e6                	ld	s1,88(sp)
    8005a9ca:	6946                	ld	s2,80(sp)
    8005a9cc:	69a6                	ld	s3,72(sp)
    8005a9ce:	6a06                	ld	s4,64(sp)
    8005a9d0:	7ae2                	ld	s5,56(sp)
    8005a9d2:	7b42                	ld	s6,48(sp)
    8005a9d4:	7ba2                	ld	s7,40(sp)
    8005a9d6:	7c02                	ld	s8,32(sp)
    8005a9d8:	6ce2                	ld	s9,24(sp)
    8005a9da:	6d42                	ld	s10,16(sp)
    8005a9dc:	6da2                	ld	s11,8(sp)
    8005a9de:	4501                	li	a0,0
    8005a9e0:	6165                	addi	sp,sp,112
    8005a9e2:	8082                	ret

000000008005a9e4 <bfdec_add_internal>:
bfdec_add_internal():
quickjs-nuttx/libbf.c:6608
{
    8005a9e4:	7159                	addi	sp,sp,-112
    8005a9e6:	f0a2                	sd	s0,96(sp)
    8005a9e8:	eca6                	sd	s1,88(sp)
    8005a9ea:	e8ca                	sd	s2,80(sp)
    8005a9ec:	fc56                	sd	s5,56(sp)
    8005a9ee:	f85a                	sd	s6,48(sp)
    8005a9f0:	ec66                	sd	s9,24(sp)
    8005a9f2:	f486                	sd	ra,104(sp)
    8005a9f4:	e4ce                	sd	s3,72(sp)
    8005a9f6:	e0d2                	sd	s4,64(sp)
    8005a9f8:	f45e                	sd	s7,40(sp)
    8005a9fa:	f062                	sd	s8,32(sp)
    8005a9fc:	e86a                	sd	s10,16(sp)
    8005a9fe:	e46e                	sd	s11,8(sp)
    8005aa00:	8aba                	mv	s5,a4
quickjs-nuttx/libbf.c:6613
    b_sign = b->sign ^ b_neg;
    8005aa02:	4618                	lw	a4,8(a2)
quickjs-nuttx/libbf.c:6608
{
    8005aa04:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:6612
    a_sign = a->sign;
    8005aa06:	0085ab83          	lw	s7,8(a1)
quickjs-nuttx/libbf.c:6608
{
    8005aa0a:	842a                	mv	s0,a0
bfdec_cmpu():
quickjs-nuttx/libbf.h:477
    return bf_cmpu((const bf_t *)a, (const bf_t *)b);
    8005aa0c:	85b2                	mv	a1,a2
    8005aa0e:	854a                	mv	a0,s2
bfdec_add_internal():
quickjs-nuttx/libbf.c:6608
    8005aa10:	84b2                	mv	s1,a2
    8005aa12:	8cb6                	mv	s9,a3
quickjs-nuttx/libbf.c:6613
    b_sign = b->sign ^ b_neg;
    8005aa14:	00e7cb33          	xor	s6,a5,a4
bfdec_cmpu():
quickjs-nuttx/libbf.h:477
    8005aa18:	a97fd0ef          	jal	ra,800584ae <bf_cmpu>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6616
    if (cmp_res < 0) {
    8005aa1c:	04054563          	bltz	a0,8005aa66 <bfdec_add_internal+0x82>
    8005aa20:	89aa                	mv	s3,a0
quickjs-nuttx/libbf.c:6624
    if (cmp_res == 0 && is_sub && a->expn < BF_EXP_INF) {
    8005aa22:	ed25                	bnez	a0,8005aa9a <bfdec_add_internal+0xb6>
quickjs-nuttx/libbf.c:6624 (discriminator 1)
    8005aa24:	076b8b63          	beq	s7,s6,8005aa9a <bfdec_add_internal+0xb6>
quickjs-nuttx/libbf.c:6624 (discriminator 2)
    8005aa28:	01093703          	ld	a4,16(s2)
    8005aa2c:	57ed                	li	a5,-5
    8005aa2e:	8385                	srli	a5,a5,0x1
    8005aa30:	8a5e                	mv	s4,s7
    8005aa32:	02e7ce63          	blt	a5,a4,8005aa6e <bfdec_add_internal+0x8a>
quickjs-nuttx/libbf.c:6626
        bfdec_set_zero(r, (flags & BF_RND_MASK) == BF_RNDD);
    8005aa36:	007af593          	andi	a1,s5,7
    8005aa3a:	15f9                	addi	a1,a1,-2
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    8005aa3c:	0015b593          	seqz	a1,a1
    8005aa40:	8522                	mv	a0,s0
    8005aa42:	a1efd0ef          	jal	ra,80057c60 <bf_set_zero>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6720
}
    8005aa46:	70a6                	ld	ra,104(sp)
    8005aa48:	7406                	ld	s0,96(sp)
    8005aa4a:	64e6                	ld	s1,88(sp)
    8005aa4c:	6946                	ld	s2,80(sp)
    8005aa4e:	6a06                	ld	s4,64(sp)
    8005aa50:	7ae2                	ld	s5,56(sp)
    8005aa52:	7b42                	ld	s6,48(sp)
    8005aa54:	7ba2                	ld	s7,40(sp)
    8005aa56:	7c02                	ld	s8,32(sp)
    8005aa58:	6ce2                	ld	s9,24(sp)
    8005aa5a:	6d42                	ld	s10,16(sp)
    8005aa5c:	6da2                	ld	s11,8(sp)
    8005aa5e:	854e                	mv	a0,s3
    8005aa60:	69a6                	ld	s3,72(sp)
    8005aa62:	6165                	addi	sp,sp,112
    8005aa64:	8082                	ret
    8005aa66:	87ca                	mv	a5,s2
quickjs-nuttx/libbf.c:6613
    b_sign = b->sign ^ b_neg;
    8005aa68:	8a5a                	mv	s4,s6
    8005aa6a:	8926                	mv	s2,s1
    8005aa6c:	84be                	mv	s1,a5
quickjs-nuttx/libbf.c:6628
    } else if (a->len == 0 || b->len == 0) {
    8005aa6e:	01893783          	ld	a5,24(s2)
quickjs-nuttx/libbf.c:6656
        d = a->expn - b->expn;
    8005aa72:	01093703          	ld	a4,16(s2)
quickjs-nuttx/libbf.c:6628
    } else if (a->len == 0 || b->len == 0) {
    8005aa76:	c789                	beqz	a5,8005aa80 <bfdec_add_internal+0x9c>
quickjs-nuttx/libbf.c:6628 (discriminator 1)
    8005aa78:	0184b983          	ld	s3,24(s1)
    8005aa7c:	06099d63          	bnez	s3,8005aaf6 <bfdec_add_internal+0x112>
quickjs-nuttx/libbf.c:6630
        if (a->expn >= BF_EXP_INF) {
    8005aa80:	57ed                	li	a5,-5
    8005aa82:	8385                	srli	a5,a5,0x1
    8005aa84:	02e7de63          	bge	a5,a4,8005aac0 <bfdec_add_internal+0xdc>
quickjs-nuttx/libbf.c:6631
            if (a->expn == BF_EXP_NAN) {
    8005aa88:	57fd                	li	a5,-1
    8005aa8a:	8385                	srli	a5,a5,0x1
    8005aa8c:	00f71963          	bne	a4,a5,8005aa9e <bfdec_add_internal+0xba>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005aa90:	8522                	mv	a0,s0
    8005aa92:	92cfd0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6629
        ret = 0;
    8005aa96:	4981                	li	s3,0
bfdec_set_inf():
quickjs-nuttx/libbf.h:466
}
    8005aa98:	b77d                	j	8005aa46 <bfdec_add_internal+0x62>
bfdec_add_internal():
quickjs-nuttx/libbf.h:466
    8005aa9a:	8a5e                	mv	s4,s7
    8005aa9c:	bfc9                	j	8005aa6e <bfdec_add_internal+0x8a>
quickjs-nuttx/libbf.c:6635
            } else if (b->expn == BF_EXP_INF && is_sub) {
    8005aa9e:	6898                	ld	a4,16(s1)
    8005aaa0:	57f5                	li	a5,-3
    8005aaa2:	8385                	srli	a5,a5,0x1
    8005aaa4:	00f71963          	bne	a4,a5,8005aab6 <bfdec_add_internal+0xd2>
quickjs-nuttx/libbf.c:6635 (discriminator 1)
    8005aaa8:	016b8763          	beq	s7,s6,8005aab6 <bfdec_add_internal+0xd2>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005aaac:	8522                	mv	a0,s0
    8005aaae:	910fd0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6638
                ret = BF_ST_INVALID_OP;
    8005aab2:	4985                	li	s3,1
    8005aab4:	bf49                	j	8005aa46 <bfdec_add_internal+0x62>
bfdec_set_inf():
quickjs-nuttx/libbf.h:465
    bf_set_inf((bf_t *)r, is_neg);
    8005aab6:	85d2                	mv	a1,s4
    8005aab8:	8522                	mv	a0,s0
    8005aaba:	9cafd0ef          	jal	ra,80057c84 <bf_set_inf>
    8005aabe:	bfe1                	j	8005aa96 <bfdec_add_internal+0xb2>
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8005aac0:	85ca                	mv	a1,s2
    8005aac2:	8522                	mv	a0,s0
    8005aac4:	d5efd0ef          	jal	ra,80058022 <bf_set>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6644
            if (bfdec_set(r, a))
    8005aac8:	16051b63          	bnez	a0,8005ac3e <bfdec_add_internal+0x25a>
quickjs-nuttx/libbf.c:6646
            r->sign = a_sign;
    8005aacc:	01442423          	sw	s4,8(s0)
quickjs-nuttx/libbf.c:6714
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005aad0:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:6720
}
    8005aad2:	7406                	ld	s0,96(sp)
    8005aad4:	70a6                	ld	ra,104(sp)
    8005aad6:	64e6                	ld	s1,88(sp)
    8005aad8:	6946                	ld	s2,80(sp)
    8005aada:	69a6                	ld	s3,72(sp)
    8005aadc:	6a06                	ld	s4,64(sp)
    8005aade:	7b42                	ld	s6,48(sp)
    8005aae0:	7ba2                	ld	s7,40(sp)
    8005aae2:	7c02                	ld	s8,32(sp)
    8005aae4:	6d42                	ld	s10,16(sp)
    8005aae6:	6da2                	ld	s11,8(sp)
quickjs-nuttx/libbf.c:6714
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005aae8:	8656                	mv	a2,s5
    8005aaea:	85e6                	mv	a1,s9
quickjs-nuttx/libbf.c:6720
}
    8005aaec:	7ae2                	ld	s5,56(sp)
    8005aaee:	6ce2                	ld	s9,24(sp)
    8005aaf0:	6165                	addi	sp,sp,112
quickjs-nuttx/libbf.c:6714
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005aaf2:	c57ff06f          	j	8005a748 <bfdec_normalize_and_round>
quickjs-nuttx/libbf.c:6656
        d = a->expn - b->expn;
    8005aaf6:	0104bd83          	ld	s11,16(s1)
quickjs-nuttx/libbf.c:6609
    bf_context_t *s = r->ctx;
    8005aafa:	00043d03          	ld	s10,0(s0)
quickjs-nuttx/libbf.c:6656
        d = a->expn - b->expn;
    8005aafe:	41b70db3          	sub	s11,a4,s11
quickjs-nuttx/libbf.c:6660
        r_len = bf_max(a->len, b->len + (d + LIMB_DIGITS - 1) / LIMB_DIGITS);
    8005ab02:	012d8c13          	addi	s8,s11,18
    8005ab06:	474d                	li	a4,19
    8005ab08:	02ec4c33          	div	s8,s8,a4
    8005ab0c:	99e2                	add	s3,s3,s8
    8005ab0e:	00f9d363          	bge	s3,a5,8005ab14 <bfdec_add_internal+0x130>
    8005ab12:	89be                	mv	s3,a5
bfdec_resize():
quickjs-nuttx/libbf.h:531
    return bf_resize((bf_t *)r, len);
    8005ab14:	85ce                	mv	a1,s3
    8005ab16:	8522                	mv	a0,s0
    8005ab18:	86cfd0ef          	jal	ra,80057b84 <bf_resize>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6661
        if (bfdec_resize(r, r_len))
    8005ab1c:	10051e63          	bnez	a0,8005ac38 <bfdec_add_internal+0x254>
quickjs-nuttx/libbf.c:6663
        r->sign = a_sign;
    8005ab20:	01442423          	sw	s4,8(s0)
quickjs-nuttx/libbf.c:6664
        r->expn = a->expn;
    8005ab24:	01093783          	ld	a5,16(s2)
quickjs-nuttx/libbf.c:6667
        for(i = 0; i < a_offset; i++)
    8005ab28:	4701                	li	a4,0
quickjs-nuttx/libbf.c:6664
        r->expn = a->expn;
    8005ab2a:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:6666
        a_offset = r_len - a->len;
    8005ab2c:	01893783          	ld	a5,24(s2)
    8005ab30:	40f987b3          	sub	a5,s3,a5
quickjs-nuttx/libbf.c:6667 (discriminator 1)
        for(i = 0; i < a_offset; i++)
    8005ab34:	06f74763          	blt	a4,a5,8005aba2 <bfdec_add_internal+0x1be>
    8005ab38:	078e                	slli	a5,a5,0x3
quickjs-nuttx/libbf.c:6669
        for(i = 0; i < a->len; i++)
    8005ab3a:	4701                	li	a4,0
quickjs-nuttx/libbf.c:6669 (discriminator 1)
    8005ab3c:	01893683          	ld	a3,24(s2)
    8005ab40:	06d76963          	bltu	a4,a3,8005abb2 <bfdec_add_internal+0x1ce>
quickjs-nuttx/libbf.c:6672
        b_shift = d % LIMB_DIGITS;
    8005ab44:	494d                	li	s2,19
    8005ab46:	032de933          	rem	s2,s11,s2
quickjs-nuttx/libbf.c:6674
            b1_len = b->len;
    8005ab4a:	0184ba03          	ld	s4,24(s1)
quickjs-nuttx/libbf.c:6673
        if (b_shift == 0) {
    8005ab4e:	06091e63          	bnez	s2,8005abca <bfdec_add_internal+0x1e6>
quickjs-nuttx/libbf.c:6675
            b1_tab = (limb_t *)b->tab;
    8005ab52:	0204bd83          	ld	s11,32(s1)
quickjs-nuttx/libbf.c:6684
        b_offset = r_len - (b->len + (d + LIMB_DIGITS - 1) / LIMB_DIGITS);
    8005ab56:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/libbf.c:6687
            carry = mp_sub_dec(r->tab + b_offset, r->tab + b_offset,
    8005ab58:	700c                	ld	a1,32(s0)
    8005ab5a:	4701                	li	a4,0
    8005ab5c:	9c3e                	add	s8,s8,a5
quickjs-nuttx/libbf.c:6684
        b_offset = r_len - (b->len + (d + LIMB_DIGITS - 1) / LIMB_DIGITS);
    8005ab5e:	418984b3          	sub	s1,s3,s8
quickjs-nuttx/libbf.c:6687
            carry = mp_sub_dec(r->tab + b_offset, r->tab + b_offset,
    8005ab62:	00349793          	slli	a5,s1,0x3
    8005ab66:	95be                	add	a1,a1,a5
    8005ab68:	86d2                	mv	a3,s4
    8005ab6a:	866e                	mv	a2,s11
    8005ab6c:	852e                	mv	a0,a1
quickjs-nuttx/libbf.c:6686
        if (is_sub) {
    8005ab6e:	096b8c63          	beq	s7,s6,8005ac06 <bfdec_add_internal+0x222>
quickjs-nuttx/libbf.c:6687
            carry = mp_sub_dec(r->tab + b_offset, r->tab + b_offset,
    8005ab72:	a2eff0ef          	jal	ra,80059da0 <mp_sub_dec>
    8005ab76:	85aa                	mv	a1,a0
quickjs-nuttx/libbf.c:6689
            if (carry != 0) {
    8005ab78:	0c050f63          	beqz	a0,8005ac56 <bfdec_add_internal+0x272>
quickjs-nuttx/libbf.c:6690
                carry = mp_sub_ui_dec(r->tab + b_offset + b1_len, carry,
    8005ab7c:	7008                	ld	a0,32(s0)
    8005ab7e:	94d2                	add	s1,s1,s4
    8005ab80:	048e                	slli	s1,s1,0x3
    8005ab82:	414c0633          	sub	a2,s8,s4
    8005ab86:	9526                	add	a0,a0,s1
    8005ab88:	a58ff0ef          	jal	ra,80059de0 <mp_sub_ui_dec>
quickjs-nuttx/libbf.c:6692
                assert(carry == 0);
    8005ab8c:	c569                	beqz	a0,8005ac56 <bfdec_add_internal+0x272>
quickjs-nuttx/libbf.c:6692 (discriminator 1)
    8005ab8e:	6589                	lui	a1,0x2
    8005ab90:	4601                	li	a2,0
    8005ab92:	a2458593          	addi	a1,a1,-1500 # 1a24 <asinh-0x7fffe5dc>
    8005ab96:	00026517          	auipc	a0,0x26
    8005ab9a:	a2a50513          	addi	a0,a0,-1494 # 800805c0 <std_name.0+0x18>
    8005ab9e:	5bf050ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:6668 (discriminator 3)
            r->tab[i] = 0;
    8005aba2:	7014                	ld	a3,32(s0)
    8005aba4:	00371613          	slli	a2,a4,0x3
quickjs-nuttx/libbf.c:6667 (discriminator 3)
        for(i = 0; i < a_offset; i++)
    8005aba8:	0705                	addi	a4,a4,1
quickjs-nuttx/libbf.c:6668 (discriminator 3)
            r->tab[i] = 0;
    8005abaa:	96b2                	add	a3,a3,a2
    8005abac:	0006b023          	sd	zero,0(a3)
quickjs-nuttx/libbf.c:6667 (discriminator 3)
        for(i = 0; i < a_offset; i++)
    8005abb0:	b751                	j	8005ab34 <bfdec_add_internal+0x150>
quickjs-nuttx/libbf.c:6670 (discriminator 3)
            r->tab[a_offset + i] = a->tab[i];
    8005abb2:	02093683          	ld	a3,32(s2)
    8005abb6:	00371613          	slli	a2,a4,0x3
quickjs-nuttx/libbf.c:6669 (discriminator 3)
        for(i = 0; i < a->len; i++)
    8005abba:	0705                	addi	a4,a4,1
quickjs-nuttx/libbf.c:6670 (discriminator 3)
            r->tab[a_offset + i] = a->tab[i];
    8005abbc:	96b2                	add	a3,a3,a2
    8005abbe:	6290                	ld	a2,0(a3)
    8005abc0:	7014                	ld	a3,32(s0)
    8005abc2:	96be                	add	a3,a3,a5
    8005abc4:	e290                	sd	a2,0(a3)
quickjs-nuttx/libbf.c:6669 (discriminator 3)
        for(i = 0; i < a->len; i++)
    8005abc6:	07a1                	addi	a5,a5,8
    8005abc8:	bf95                	j	8005ab3c <bfdec_add_internal+0x158>
quickjs-nuttx/libbf.c:6677
            b1_len = b->len + 1;
    8005abca:	0a05                	addi	s4,s4,1
quickjs-nuttx/libbf.c:6678
            b1_tab = bf_malloc(s, sizeof(limb_t) * b1_len);
    8005abcc:	003a1593          	slli	a1,s4,0x3
    8005abd0:	856a                	mv	a0,s10
    8005abd2:	ec7fb0ef          	jal	ra,80056a98 <bf_malloc>
    8005abd6:	8daa                	mv	s11,a0
quickjs-nuttx/libbf.c:6679
            if (!b1_tab)
    8005abd8:	c125                	beqz	a0,8005ac38 <bfdec_add_internal+0x254>
quickjs-nuttx/libbf.c:6681
            b1_tab[0] = mp_shr_dec(b1_tab + 1, b->tab, b->len, b_shift, 0) *
    8005abda:	6c90                	ld	a2,24(s1)
    8005abdc:	708c                	ld	a1,32(s1)
    8005abde:	4701                	li	a4,0
    8005abe0:	86ca                	mv	a3,s2
    8005abe2:	0521                	addi	a0,a0,8
    8005abe4:	c44fc0ef          	jal	ra,80057028 <mp_shr_dec>
quickjs-nuttx/libbf.c:6682
                mp_pow_dec[LIMB_DIGITS - b_shift];
    8005abe8:	47cd                	li	a5,19
    8005abea:	412787bb          	subw	a5,a5,s2
    8005abee:	078e                	slli	a5,a5,0x3
    8005abf0:	00026717          	auipc	a4,0x26
    8005abf4:	ea870713          	addi	a4,a4,-344 # 80080a98 <mp_pow_dec>
    8005abf8:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:6681
            b1_tab[0] = mp_shr_dec(b1_tab + 1, b->tab, b->len, b_shift, 0) *
    8005abfa:	639c                	ld	a5,0(a5)
    8005abfc:	02a787b3          	mul	a5,a5,a0
    8005ac00:	00fdb023          	sd	a5,0(s11)
    8005ac04:	bf89                	j	8005ab56 <bfdec_add_internal+0x172>
quickjs-nuttx/libbf.c:6695
            carry = mp_add_dec(r->tab + b_offset, r->tab + b_offset,
    8005ac06:	e13fe0ef          	jal	ra,80059a18 <mp_add_dec>
    8005ac0a:	85aa                	mv	a1,a0
quickjs-nuttx/libbf.c:6697
            if (carry != 0) {
    8005ac0c:	c529                	beqz	a0,8005ac56 <bfdec_add_internal+0x272>
quickjs-nuttx/libbf.c:6698
                carry = mp_add_ui_dec(r->tab + b_offset + b1_len, carry,
    8005ac0e:	7008                	ld	a0,32(s0)
    8005ac10:	94d2                	add	s1,s1,s4
    8005ac12:	048e                	slli	s1,s1,0x3
    8005ac14:	414c0633          	sub	a2,s8,s4
    8005ac18:	9526                	add	a0,a0,s1
    8005ac1a:	e4dfe0ef          	jal	ra,80059a66 <mp_add_ui_dec>
quickjs-nuttx/libbf.c:6701
            if (carry != 0) {
    8005ac1e:	cd05                	beqz	a0,8005ac56 <bfdec_add_internal+0x272>
bfdec_resize():
quickjs-nuttx/libbf.h:531
    8005ac20:	00198593          	addi	a1,s3,1
    8005ac24:	8522                	mv	a0,s0
    8005ac26:	f5ffc0ef          	jal	ra,80057b84 <bf_resize>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6702
                if (bfdec_resize(r, r_len + 1)) {
    8005ac2a:	cd09                	beqz	a0,8005ac44 <bfdec_add_internal+0x260>
quickjs-nuttx/libbf.c:6703
                    if (b_shift != 0)
    8005ac2c:	00090663          	beqz	s2,8005ac38 <bfdec_add_internal+0x254>
quickjs-nuttx/libbf.c:6704
                        bf_free(s, b1_tab);
    8005ac30:	85ee                	mv	a1,s11
    8005ac32:	856a                	mv	a0,s10
    8005ac34:	e6dfb0ef          	jal	ra,80056aa0 <bf_free>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005ac38:	8522                	mv	a0,s0
    8005ac3a:	f85fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_add_internal():
quickjs-nuttx/libbf.c:6645
                return BF_ST_MEM_ERROR;
    8005ac3e:	02000993          	li	s3,32
    8005ac42:	b511                	j	8005aa46 <bfdec_add_internal+0x62>
quickjs-nuttx/libbf.c:6707
                r->tab[r_len] = 1;
    8005ac44:	701c                	ld	a5,32(s0)
    8005ac46:	098e                	slli	s3,s3,0x3
    8005ac48:	99be                	add	s3,s3,a5
    8005ac4a:	4785                	li	a5,1
    8005ac4c:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/libbf.c:6708
                r->expn += LIMB_DIGITS;
    8005ac50:	681c                	ld	a5,16(s0)
    8005ac52:	07cd                	addi	a5,a5,19
    8005ac54:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:6711
        if (b_shift != 0)
    8005ac56:	e6090de3          	beqz	s2,8005aad0 <bfdec_add_internal+0xec>
quickjs-nuttx/libbf.c:6712
            bf_free(s, b1_tab);
    8005ac5a:	85ee                	mv	a1,s11
    8005ac5c:	856a                	mv	a0,s10
    8005ac5e:	e43fb0ef          	jal	ra,80056aa0 <bf_free>
    8005ac62:	b5bd                	j	8005aad0 <bfdec_add_internal+0xec>

000000008005ac64 <__bfdec_add>:
__bfdec_add():
quickjs-nuttx/libbf.c:6725
    return bfdec_add_internal(r, a, b, prec, flags, 0);
    8005ac64:	4781                	li	a5,0
    8005ac66:	d7fff06f          	j	8005a9e4 <bfdec_add_internal>

000000008005ac6a <__bfdec_sub>:
__bfdec_sub():
quickjs-nuttx/libbf.c:6731
    return bfdec_add_internal(r, a, b, prec, flags, 1);
    8005ac6a:	4785                	li	a5,1
    8005ac6c:	d79ff06f          	j	8005a9e4 <bfdec_add_internal>

000000008005ac70 <__bfdec_div>:
__bfdec_div():
quickjs-nuttx/libbf.c:6835
{
    8005ac70:	711d                	addi	sp,sp,-96
    8005ac72:	e8a2                	sd	s0,80(sp)
    8005ac74:	fc4e                	sd	s3,56(sp)
    8005ac76:	f852                	sd	s4,48(sp)
    8005ac78:	ec86                	sd	ra,88(sp)
    8005ac7a:	e4a6                	sd	s1,72(sp)
    8005ac7c:	e0ca                	sd	s2,64(sp)
    8005ac7e:	f456                	sd	s5,40(sp)
    8005ac80:	f05a                	sd	s6,32(sp)
    8005ac82:	ec5e                	sd	s7,24(sp)
    8005ac84:	e862                	sd	s8,16(sp)
    8005ac86:	e466                	sd	s9,8(sp)
    8005ac88:	e06a                	sd	s10,0(sp)
quickjs-nuttx/libbf.c:6839
    r_sign = a->sign ^ b->sign;
    8005ac8a:	461c                	lw	a5,8(a2)
    8005ac8c:	4584                	lw	s1,8(a1)
quickjs-nuttx/libbf.c:6835
{
    8005ac8e:	8a36                	mv	s4,a3
quickjs-nuttx/libbf.c:6840
    if (a->expn >= BF_EXP_INF || b->expn >= BF_EXP_INF) {
    8005ac90:	56ed                	li	a3,-5
quickjs-nuttx/libbf.c:6839
    r_sign = a->sign ^ b->sign;
    8005ac92:	8cbd                	xor	s1,s1,a5
quickjs-nuttx/libbf.c:6840
    if (a->expn >= BF_EXP_INF || b->expn >= BF_EXP_INF) {
    8005ac94:	699c                	ld	a5,16(a1)
    8005ac96:	8285                	srli	a3,a3,0x1
quickjs-nuttx/libbf.c:6835
{
    8005ac98:	842a                	mv	s0,a0
    8005ac9a:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:6839
    r_sign = a->sign ^ b->sign;
    8005ac9c:	2481                	sext.w	s1,s1
quickjs-nuttx/libbf.c:6840
    if (a->expn >= BF_EXP_INF || b->expn >= BF_EXP_INF) {
    8005ac9e:	00f6cf63          	blt	a3,a5,8005acbc <__bfdec_div+0x4c>
    8005aca2:	8b3a                	mv	s6,a4
quickjs-nuttx/libbf.c:6840 (discriminator 1)
    8005aca4:	6a18                	ld	a4,16(a2)
    8005aca6:	00e6cf63          	blt	a3,a4,8005acc4 <__bfdec_div+0x54>
quickjs-nuttx/libbf.c:6854
    } else if (a->expn == BF_EXP_ZERO) {
    8005acaa:	56fd                	li	a3,-1
    8005acac:	03f69613          	slli	a2,a3,0x3f
    8005acb0:	06c79763          	bne	a5,a2,8005ad1e <__bfdec_div+0xae>
quickjs-nuttx/libbf.c:6855
        if (b->expn == BF_EXP_ZERO) {
    8005acb4:	02f70963          	beq	a4,a5,8005ace6 <__bfdec_div+0x76>
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    8005acb8:	85a6                	mv	a1,s1
    8005acba:	a8b9                	j	8005ad18 <__bfdec_div+0xa8>
__bfdec_div():
quickjs-nuttx/libbf.c:6841
        if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005acbc:	577d                	li	a4,-1
    8005acbe:	8305                	srli	a4,a4,0x1
    8005acc0:	00e78863          	beq	a5,a4,8005acd0 <__bfdec_div+0x60>
quickjs-nuttx/libbf.c:6841 (discriminator 1)
    8005acc4:	0109b683          	ld	a3,16(s3)
    8005acc8:	577d                	li	a4,-1
    8005acca:	8305                	srli	a4,a4,0x1
    8005accc:	00e69763          	bne	a3,a4,8005acda <__bfdec_div+0x6a>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005acd0:	8522                	mv	a0,s0
    8005acd2:	eedfc0ef          	jal	ra,80057bbe <bf_set_nan>
__bfdec_div():
quickjs-nuttx/libbf.c:6860
            return 0;
    8005acd6:	4501                	li	a0,0
    8005acd8:	a819                	j	8005acee <__bfdec_div+0x7e>
quickjs-nuttx/libbf.c:6844
        } else if (a->expn == BF_EXP_INF && b->expn == BF_EXP_INF) {
    8005acda:	5775                	li	a4,-3
    8005acdc:	8305                	srli	a4,a4,0x1
    8005acde:	02e79b63          	bne	a5,a4,8005ad14 <__bfdec_div+0xa4>
quickjs-nuttx/libbf.c:6844 (discriminator 1)
    8005ace2:	02f69463          	bne	a3,a5,8005ad0a <__bfdec_div+0x9a>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    8005ace6:	8522                	mv	a0,s0
    8005ace8:	ed7fc0ef          	jal	ra,80057bbe <bf_set_nan>
__bfdec_div():
quickjs-nuttx/libbf.c:6846
            return BF_ST_INVALID_OP;
    8005acec:	4505                	li	a0,1
quickjs-nuttx/libbf.c:6924
}
    8005acee:	60e6                	ld	ra,88(sp)
    8005acf0:	6446                	ld	s0,80(sp)
    8005acf2:	64a6                	ld	s1,72(sp)
    8005acf4:	6906                	ld	s2,64(sp)
    8005acf6:	79e2                	ld	s3,56(sp)
    8005acf8:	7a42                	ld	s4,48(sp)
    8005acfa:	7aa2                	ld	s5,40(sp)
    8005acfc:	7b02                	ld	s6,32(sp)
    8005acfe:	6be2                	ld	s7,24(sp)
    8005ad00:	6c42                	ld	s8,16(sp)
    8005ad02:	6ca2                	ld	s9,8(sp)
    8005ad04:	6d02                	ld	s10,0(sp)
    8005ad06:	6125                	addi	sp,sp,96
    8005ad08:	8082                	ret
bfdec_set_inf():
quickjs-nuttx/libbf.h:465
    bf_set_inf((bf_t *)r, is_neg);
    8005ad0a:	85a6                	mv	a1,s1
    8005ad0c:	8522                	mv	a0,s0
    8005ad0e:	f77fc0ef          	jal	ra,80057c84 <bf_set_inf>
__bfdec_div():
quickjs-nuttx/libbf.c:6849
            return 0;
    8005ad12:	b7d1                	j	8005acd6 <__bfdec_div+0x66>
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    8005ad14:	85a6                	mv	a1,s1
    8005ad16:	8522                	mv	a0,s0
    8005ad18:	f49fc0ef          	jal	ra,80057c60 <bf_set_zero>
    8005ad1c:	bf6d                	j	8005acd6 <__bfdec_div+0x66>
__bfdec_div():
quickjs-nuttx/libbf.c:6862
    } else if (b->expn == BF_EXP_ZERO) {
    8005ad1e:	00c71763          	bne	a4,a2,8005ad2c <__bfdec_div+0xbc>
bfdec_set_inf():
quickjs-nuttx/libbf.h:465
    bf_set_inf((bf_t *)r, is_neg);
    8005ad22:	85a6                	mv	a1,s1
    8005ad24:	f61fc0ef          	jal	ra,80057c84 <bf_set_inf>
__bfdec_div():
quickjs-nuttx/libbf.c:6864
        return BF_ST_DIVIDE_ZERO;
    8005ad28:	4509                	li	a0,2
    8005ad2a:	b7d1                	j	8005acee <__bfdec_div+0x7e>
quickjs-nuttx/libbf.c:6868
    if (prec == BF_PREC_INF) {
    8005ad2c:	8289                	srli	a3,a3,0x2
quickjs-nuttx/libbf.c:6867
    nb = b->len;
    8005ad2e:	0189ba83          	ld	s5,24(s3)
    8005ad32:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:6868
    if (prec == BF_PREC_INF) {
    8005ad34:	08da1063          	bne	s4,a3,8005adb4 <__bfdec_div+0x144>
quickjs-nuttx/libbf.c:6872
        precl = nb + 1;
    8005ad38:	001a8793          	addi	a5,s5,1
quickjs-nuttx/libbf.c:6882
    n = bf_max(a->len, precl);
    8005ad3c:	01893c83          	ld	s9,24(s2)
    8005ad40:	00fcd363          	bge	s9,a5,8005ad46 <__bfdec_div+0xd6>
    8005ad44:	8cbe                	mv	s9,a5
quickjs-nuttx/libbf.c:6889
        taba = bf_malloc(r->ctx, (na + 1) * sizeof(limb_t));
    8005ad46:	6008                	ld	a0,0(s0)
quickjs-nuttx/libbf.c:6888
        na = n + nb;
    8005ad48:	019a8d33          	add	s10,s5,s9
quickjs-nuttx/libbf.c:6889
        taba = bf_malloc(r->ctx, (na + 1) * sizeof(limb_t));
    8005ad4c:	001d0593          	addi	a1,s10,1
    8005ad50:	058e                	slli	a1,a1,0x3
    8005ad52:	d47fb0ef          	jal	ra,80056a98 <bf_malloc>
    8005ad56:	8baa                	mv	s7,a0
quickjs-nuttx/libbf.c:6890
        if (!taba)
    8005ad58:	c921                	beqz	a0,8005ada8 <__bfdec_div+0x138>
quickjs-nuttx/libbf.c:6892
        d = na - a->len;
    8005ad5a:	01893c03          	ld	s8,24(s2)
quickjs-nuttx/libbf.c:6893
        memset(taba, 0, d * sizeof(limb_t));
    8005ad5e:	4581                	li	a1,0
quickjs-nuttx/libbf.c:6892
        d = na - a->len;
    8005ad60:	418d0c33          	sub	s8,s10,s8
quickjs-nuttx/libbf.c:6893
        memset(taba, 0, d * sizeof(limb_t));
    8005ad64:	0c0e                	slli	s8,s8,0x3
    8005ad66:	8662                	mv	a2,s8
    8005ad68:	6db080ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:6894
        memcpy(taba + d, a->tab, a->len * sizeof(limb_t));
    8005ad6c:	01893603          	ld	a2,24(s2)
    8005ad70:	02093583          	ld	a1,32(s2)
    8005ad74:	018b8533          	add	a0,s7,s8
    8005ad78:	060e                	slli	a2,a2,0x3
    8005ad7a:	032090ef          	jal	ra,80063dac <memcpy>
bfdec_resize():
quickjs-nuttx/libbf.h:531
    return bf_resize((bf_t *)r, len);
    8005ad7e:	001c8593          	addi	a1,s9,1
    8005ad82:	8522                	mv	a0,s0
    8005ad84:	e01fc0ef          	jal	ra,80057b84 <bf_resize>
__bfdec_div():
quickjs-nuttx/libbf.c:6895
        if (bfdec_resize(r, n + 1))
    8005ad88:	ed01                	bnez	a0,8005ada0 <__bfdec_div+0x130>
quickjs-nuttx/libbf.c:6897
        if (mp_div_dec(r->ctx, r->tab, taba, na, b->tab, nb)) {
    8005ad8a:	0209b703          	ld	a4,32(s3)
    8005ad8e:	700c                	ld	a1,32(s0)
    8005ad90:	6008                	ld	a0,0(s0)
    8005ad92:	87d6                	mv	a5,s5
    8005ad94:	86ea                	mv	a3,s10
    8005ad96:	865e                	mv	a2,s7
    8005ad98:	c98ff0ef          	jal	ra,8005a230 <mp_div_dec>
quickjs-nuttx/libbf.c:6903
        for(i = 0; i < nb; i++) {
    8005ad9c:	4c01                	li	s8,0
quickjs-nuttx/libbf.c:6897
        if (mp_div_dec(r->ctx, r->tab, taba, na, b->tab, nb)) {
    8005ad9e:	c131                	beqz	a0,8005ade2 <__bfdec_div+0x172>
quickjs-nuttx/libbf.c:6899
            bf_free(r->ctx, taba);
    8005ada0:	6008                	ld	a0,0(s0)
    8005ada2:	85de                	mv	a1,s7
    8005ada4:	cfdfb0ef          	jal	ra,80056aa0 <bf_free>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005ada8:	8522                	mv	a0,s0
    8005adaa:	e15fc0ef          	jal	ra,80057bbe <bf_set_nan>
__bfdec_div():
quickjs-nuttx/libbf.c:6923
    return BF_ST_MEM_ERROR;
    8005adae:	02000513          	li	a0,32
    8005adb2:	bf35                	j	8005acee <__bfdec_div+0x7e>
quickjs-nuttx/libbf.c:6873
    } else if (flags & BF_FLAG_RADPNT_PREC) {
    8005adb4:	010b7693          	andi	a3,s6,16
    8005adb8:	ce81                	beqz	a3,8005add0 <__bfdec_div+0x160>
quickjs-nuttx/libbf.c:6876
        precl = (bf_max(a->expn - b->expn, 0) + 2 +
    8005adba:	8f99                	sub	a5,a5,a4
    8005adbc:	0007d363          	bgez	a5,8005adc2 <__bfdec_div+0x152>
    8005adc0:	4781                	li	a5,0
quickjs-nuttx/libbf.c:6877
                 prec + 2 + LIMB_DIGITS - 1) / LIMB_DIGITS;
    8005adc2:	016a0713          	addi	a4,s4,22
    8005adc6:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:6880
        precl = (prec + 2 + LIMB_DIGITS - 1) / LIMB_DIGITS;
    8005adc8:	474d                	li	a4,19
    8005adca:	02e7d7b3          	divu	a5,a5,a4
    8005adce:	b7bd                	j	8005ad3c <__bfdec_div+0xcc>
    8005add0:	014a0793          	addi	a5,s4,20
    8005add4:	bfd5                	j	8005adc8 <__bfdec_div+0x158>
quickjs-nuttx/libbf.c:6904
            if (taba[i] != 0)
    8005add6:	003c1793          	slli	a5,s8,0x3
    8005adda:	97de                	add	a5,a5,s7
    8005addc:	639c                	ld	a5,0(a5)
    8005adde:	e781                	bnez	a5,8005ade6 <__bfdec_div+0x176>
quickjs-nuttx/libbf.c:6903 (discriminator 2)
        for(i = 0; i < nb; i++) {
    8005ade0:	0c05                	addi	s8,s8,1
quickjs-nuttx/libbf.c:6903 (discriminator 1)
    8005ade2:	ff5c1ae3          	bne	s8,s5,8005add6 <__bfdec_div+0x166>
quickjs-nuttx/libbf.c:6907
        bf_free(r->ctx, taba);
    8005ade6:	6008                	ld	a0,0(s0)
    8005ade8:	85de                	mv	a1,s7
    8005adea:	cb7fb0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:6908
        if (i != nb) {
    8005adee:	015c0b63          	beq	s8,s5,8005ae04 <__bfdec_div+0x194>
quickjs-nuttx/libbf.c:6909
            if (prec == BF_PREC_INF) {
    8005adf2:	57fd                	li	a5,-1
    8005adf4:	8389                	srli	a5,a5,0x2
    8005adf6:	eefa08e3          	beq	s4,a5,8005ace6 <__bfdec_div+0x76>
quickjs-nuttx/libbf.c:6913
                r->tab[0] |= 1;
    8005adfa:	7018                	ld	a4,32(s0)
    8005adfc:	631c                	ld	a5,0(a4)
    8005adfe:	0017e793          	ori	a5,a5,1
    8005ae02:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:6916
        r->expn = a->expn - b->expn + LIMB_DIGITS;
    8005ae04:	01093783          	ld	a5,16(s2)
    8005ae08:	0109b703          	ld	a4,16(s3)
quickjs-nuttx/libbf.c:6918
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005ae0c:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:6917
        r->sign = r_sign;
    8005ae0e:	c404                	sw	s1,8(s0)
quickjs-nuttx/libbf.c:6916
        r->expn = a->expn - b->expn + LIMB_DIGITS;
    8005ae10:	8f99                	sub	a5,a5,a4
    8005ae12:	07cd                	addi	a5,a5,19
    8005ae14:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:6924
}
    8005ae16:	6446                	ld	s0,80(sp)
    8005ae18:	60e6                	ld	ra,88(sp)
    8005ae1a:	64a6                	ld	s1,72(sp)
    8005ae1c:	6906                	ld	s2,64(sp)
    8005ae1e:	79e2                	ld	s3,56(sp)
    8005ae20:	7aa2                	ld	s5,40(sp)
    8005ae22:	6be2                	ld	s7,24(sp)
    8005ae24:	6c42                	ld	s8,16(sp)
    8005ae26:	6ca2                	ld	s9,8(sp)
    8005ae28:	6d02                	ld	s10,0(sp)
quickjs-nuttx/libbf.c:6918
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005ae2a:	865a                	mv	a2,s6
    8005ae2c:	85d2                	mv	a1,s4
quickjs-nuttx/libbf.c:6924
}
    8005ae2e:	7b02                	ld	s6,32(sp)
    8005ae30:	7a42                	ld	s4,48(sp)
    8005ae32:	6125                	addi	sp,sp,96
quickjs-nuttx/libbf.c:6918
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005ae34:	915ff06f          	j	8005a748 <bfdec_normalize_and_round>

000000008005ae38 <bfdec_set_ui>:
bfdec_set_ui():
quickjs-nuttx/libbf.c:6564
{
    8005ae38:	1101                	addi	sp,sp,-32
    8005ae3a:	e822                	sd	s0,16(sp)
    8005ae3c:	e426                	sd	s1,8(sp)
    8005ae3e:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libbf.c:6576
    if (v >= BF_DEC_BASE) {
    8005ae40:	00039797          	auipc	a5,0x39
    8005ae44:	e687b783          	ld	a5,-408(a5) # 80093ca8 <_erodata+0x136>
quickjs-nuttx/libbf.c:6564
{
    8005ae48:	842a                	mv	s0,a0
    8005ae4a:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:6576
    if (v >= BF_DEC_BASE) {
    8005ae4c:	04b7f763          	bgeu	a5,a1,8005ae9a <bfdec_set_ui+0x62>
bfdec_resize():
quickjs-nuttx/libbf.h:531
    return bf_resize((bf_t *)r, len);
    8005ae50:	4589                	li	a1,2
    8005ae52:	d33fc0ef          	jal	ra,80057b84 <bf_resize>
bfdec_set_ui():
quickjs-nuttx/libbf.c:6577
        if (bfdec_resize(r, 2))
    8005ae56:	e931                	bnez	a0,8005aeaa <bfdec_set_ui+0x72>
quickjs-nuttx/libbf.c:6579
        r->tab[0] = v % BF_DEC_BASE;
    8005ae58:	00039797          	auipc	a5,0x39
    8005ae5c:	e307b783          	ld	a5,-464(a5) # 80093c88 <_erodata+0x116>
    8005ae60:	00f4b5b3          	sltu	a1,s1,a5
    8005ae64:	0015c593          	xori	a1,a1,1
    8005ae68:	1582                	slli	a1,a1,0x20
    8005ae6a:	9181                	srli	a1,a1,0x20
    8005ae6c:	02f585b3          	mul	a1,a1,a5
    8005ae70:	7018                	ld	a4,32(s0)
    8005ae72:	8c8d                	sub	s1,s1,a1
    8005ae74:	e304                	sd	s1,0(a4)
quickjs-nuttx/libbf.c:6580
        r->tab[1] = v / BF_DEC_BASE;
    8005ae76:	701c                	ld	a5,32(s0)
    8005ae78:	4705                	li	a4,1
    8005ae7a:	e798                	sd	a4,8(a5)
quickjs-nuttx/libbf.c:6581
        r->expn = 2 * LIMB_DIGITS;
    8005ae7c:	02600793          	li	a5,38
quickjs-nuttx/libbf.c:6586
        r->expn = LIMB_DIGITS;
    8005ae80:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:6588
    r->sign = 0;
    8005ae82:	00042423          	sw	zero,8(s0)
quickjs-nuttx/libbf.c:6589
    return bfdec_normalize_and_round(r, BF_PREC_INF, 0);
    8005ae86:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:6593
}
    8005ae88:	6442                	ld	s0,16(sp)
    8005ae8a:	60e2                	ld	ra,24(sp)
    8005ae8c:	64a2                	ld	s1,8(sp)
quickjs-nuttx/libbf.c:6589
    return bfdec_normalize_and_round(r, BF_PREC_INF, 0);
    8005ae8e:	55fd                	li	a1,-1
    8005ae90:	4601                	li	a2,0
    8005ae92:	8189                	srli	a1,a1,0x2
quickjs-nuttx/libbf.c:6593
}
    8005ae94:	6105                	addi	sp,sp,32
quickjs-nuttx/libbf.c:6589
    return bfdec_normalize_and_round(r, BF_PREC_INF, 0);
    8005ae96:	8b3ff06f          	j	8005a748 <bfdec_normalize_and_round>
bfdec_resize():
quickjs-nuttx/libbf.h:531
    8005ae9a:	4585                	li	a1,1
    8005ae9c:	ce9fc0ef          	jal	ra,80057b84 <bf_resize>
bfdec_set_ui():
quickjs-nuttx/libbf.c:6583
        if (bfdec_resize(r, 1))
    8005aea0:	e509                	bnez	a0,8005aeaa <bfdec_set_ui+0x72>
quickjs-nuttx/libbf.c:6585
        r->tab[0] = v;
    8005aea2:	701c                	ld	a5,32(s0)
    8005aea4:	e384                	sd	s1,0(a5)
quickjs-nuttx/libbf.c:6586
        r->expn = LIMB_DIGITS;
    8005aea6:	47cd                	li	a5,19
    8005aea8:	bfe1                	j	8005ae80 <bfdec_set_ui+0x48>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005aeaa:	8522                	mv	a0,s0
    8005aeac:	d13fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_set_ui():
quickjs-nuttx/libbf.c:6593
}
    8005aeb0:	60e2                	ld	ra,24(sp)
    8005aeb2:	6442                	ld	s0,16(sp)
    8005aeb4:	64a2                	ld	s1,8(sp)
    8005aeb6:	02000513          	li	a0,32
    8005aeba:	6105                	addi	sp,sp,32
    8005aebc:	8082                	ret

000000008005aebe <bfdec_set_si>:
bfdec_set_si():
quickjs-nuttx/libbf.c:6598
    if (v < 0) {
    8005aebe:	0005c463          	bltz	a1,8005aec6 <bfdec_set_si+0x8>
quickjs-nuttx/libbf.c:6602
        ret = bfdec_set_ui(r, v);
    8005aec2:	f77ff06f          	j	8005ae38 <bfdec_set_ui>
quickjs-nuttx/libbf.c:6596
{
    8005aec6:	1141                	addi	sp,sp,-16
quickjs-nuttx/libbf.c:6599
        ret = bfdec_set_ui(r, -v);
    8005aec8:	40b005b3          	neg	a1,a1
quickjs-nuttx/libbf.c:6596
{
    8005aecc:	e022                	sd	s0,0(sp)
    8005aece:	e406                	sd	ra,8(sp)
    8005aed0:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:6599
        ret = bfdec_set_ui(r, -v);
    8005aed2:	f67ff0ef          	jal	ra,8005ae38 <bfdec_set_ui>
quickjs-nuttx/libbf.c:6600
        r->sign = 1;
    8005aed6:	4785                	li	a5,1
    8005aed8:	c41c                	sw	a5,8(s0)
quickjs-nuttx/libbf.c:6605
}
    8005aeda:	60a2                	ld	ra,8(sp)
    8005aedc:	6402                	ld	s0,0(sp)
    8005aede:	0141                	addi	sp,sp,16
    8005aee0:	8082                	ret

000000008005aee2 <bfdec_add>:
bfdec_add():
quickjs-nuttx/libbf.c:6737
    return bf_op2((bf_t *)r, (bf_t *)a, (bf_t *)b, prec, flags,
    8005aee2:	00000797          	auipc	a5,0x0
    8005aee6:	d8278793          	addi	a5,a5,-638 # 8005ac64 <__bfdec_add>
    8005aeea:	9b4fd06f          	j	8005809e <bf_op2>

000000008005aeee <bfdec_sub>:
bfdec_sub():
quickjs-nuttx/libbf.c:6744
    return bf_op2((bf_t *)r, (bf_t *)a, (bf_t *)b, prec, flags,
    8005aeee:	00000797          	auipc	a5,0x0
    8005aef2:	d7c78793          	addi	a5,a5,-644 # 8005ac6a <__bfdec_sub>
    8005aef6:	9a8fd06f          	j	8005809e <bf_op2>

000000008005aefa <bfdec_mul>:
bfdec_mul():
quickjs-nuttx/libbf.c:6750
{
    8005aefa:	7135                	addi	sp,sp,-160
    8005aefc:	e922                	sd	s0,144(sp)
    8005aefe:	e526                	sd	s1,136(sp)
    8005af00:	e14a                	sd	s2,128(sp)
    8005af02:	f8d2                	sd	s4,112(sp)
    8005af04:	f4d6                	sd	s5,104(sp)
    8005af06:	ed06                	sd	ra,152(sp)
    8005af08:	fcce                	sd	s3,120(sp)
    8005af0a:	f0da                	sd	s6,96(sp)
    8005af0c:	ecde                	sd	s7,88(sp)
    8005af0e:	e8e2                	sd	s8,80(sp)
    8005af10:	8aba                	mv	s5,a4
quickjs-nuttx/libbf.c:6753
    if (a->len < b->len) {
    8005af12:	6e1c                	ld	a5,24(a2)
    8005af14:	6d98                	ld	a4,24(a1)
quickjs-nuttx/libbf.c:6750
{
    8005af16:	842a                	mv	s0,a0
    8005af18:	892e                	mv	s2,a1
    8005af1a:	84b2                	mv	s1,a2
    8005af1c:	8a36                	mv	s4,a3
quickjs-nuttx/libbf.c:6753
    if (a->len < b->len) {
    8005af1e:	00f77463          	bgeu	a4,a5,8005af26 <bfdec_mul+0x2c>
    8005af22:	8932                	mv	s2,a2
    8005af24:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:6758
    r_sign = a->sign ^ b->sign;
    8005af26:	00892983          	lw	s3,8(s2)
    8005af2a:	449c                	lw	a5,8(s1)
quickjs-nuttx/libbf.c:6760
    if (b->len == 0) {
    8005af2c:	6c98                	ld	a4,24(s1)
quickjs-nuttx/libbf.c:6758
    r_sign = a->sign ^ b->sign;
    8005af2e:	00f9c9b3          	xor	s3,s3,a5
    8005af32:	2981                	sext.w	s3,s3
quickjs-nuttx/libbf.c:6760
    if (b->len == 0) {
    8005af34:	e73d                	bnez	a4,8005afa2 <bfdec_mul+0xa8>
quickjs-nuttx/libbf.c:6761
        if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005af36:	01093683          	ld	a3,16(s2)
    8005af3a:	57fd                	li	a5,-1
    8005af3c:	0017d713          	srli	a4,a5,0x1
    8005af40:	00e68563          	beq	a3,a4,8005af4a <bfdec_mul+0x50>
quickjs-nuttx/libbf.c:6761 (discriminator 1)
    8005af44:	6890                	ld	a2,16(s1)
    8005af46:	00e61763          	bne	a2,a4,8005af54 <bfdec_mul+0x5a>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    8005af4a:	8522                	mv	a0,s0
    8005af4c:	c73fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_mul():
quickjs-nuttx/libbf.c:6771
                ret = 0;
    8005af50:	4481                	li	s1,0
    8005af52:	a01d                	j	8005af78 <bfdec_mul+0x7e>
quickjs-nuttx/libbf.c:6764
        } else if (a->expn == BF_EXP_INF || b->expn == BF_EXP_INF) {
    8005af54:	5775                	li	a4,-3
    8005af56:	8305                	srli	a4,a4,0x1
    8005af58:	00e68963          	beq	a3,a4,8005af6a <bfdec_mul+0x70>
quickjs-nuttx/libbf.c:6764 (discriminator 1)
    8005af5c:	02e60b63          	beq	a2,a4,8005af92 <bfdec_mul+0x98>
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    8005af60:	85ce                	mv	a1,s3
    8005af62:	8522                	mv	a0,s0
    8005af64:	cfdfc0ef          	jal	ra,80057c60 <bf_set_zero>
bfdec_mul():
quickjs-nuttx/libbf.c:6775
            ret = 0;
    8005af68:	b7e5                	j	8005af50 <bfdec_mul+0x56>
quickjs-nuttx/libbf.c:6765 (discriminator 1)
            if ((a->expn == BF_EXP_INF && b->expn == BF_EXP_ZERO) ||
    8005af6a:	17fe                	slli	a5,a5,0x3f
    8005af6c:	02f61663          	bne	a2,a5,8005af98 <bfdec_mul+0x9e>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005af70:	8522                	mv	a0,s0
    8005af72:	c4dfc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_mul():
quickjs-nuttx/libbf.c:6768
                ret = BF_ST_INVALID_OP;
    8005af76:	4485                	li	s1,1
quickjs-nuttx/libbf.c:6806
}
    8005af78:	60ea                	ld	ra,152(sp)
    8005af7a:	644a                	ld	s0,144(sp)
    8005af7c:	690a                	ld	s2,128(sp)
    8005af7e:	79e6                	ld	s3,120(sp)
    8005af80:	7a46                	ld	s4,112(sp)
    8005af82:	7aa6                	ld	s5,104(sp)
    8005af84:	7b06                	ld	s6,96(sp)
    8005af86:	6be6                	ld	s7,88(sp)
    8005af88:	6c46                	ld	s8,80(sp)
    8005af8a:	8526                	mv	a0,s1
    8005af8c:	64aa                	ld	s1,136(sp)
    8005af8e:	610d                	addi	sp,sp,160
    8005af90:	8082                	ret
quickjs-nuttx/libbf.c:6765 (discriminator 3)
            if ((a->expn == BF_EXP_INF && b->expn == BF_EXP_ZERO) ||
    8005af92:	17fe                	slli	a5,a5,0x3f
    8005af94:	fcf68ee3          	beq	a3,a5,8005af70 <bfdec_mul+0x76>
bfdec_set_inf():
quickjs-nuttx/libbf.h:465
    bf_set_inf((bf_t *)r, is_neg);
    8005af98:	85ce                	mv	a1,s3
    8005af9a:	8522                	mv	a0,s0
    8005af9c:	ce9fc0ef          	jal	ra,80057c84 <bf_set_inf>
    8005afa0:	bf45                	j	8005af50 <bfdec_mul+0x56>
bfdec_mul():
quickjs-nuttx/libbf.c:6782
        a_len = a->len;
    8005afa2:	01893603          	ld	a2,24(s2)
quickjs-nuttx/libbf.c:6784
        a_tab = a->tab;
    8005afa6:	02093c03          	ld	s8,32(s2)
quickjs-nuttx/libbf.c:6785
        b_tab = b->tab;
    8005afaa:	7094                	ld	a3,32(s1)
quickjs-nuttx/libbf.c:6787
        if (r == a || r == b) {
    8005afac:	02810b93          	addi	s7,sp,40
    8005afb0:	00890563          	beq	s2,s0,8005afba <bfdec_mul+0xc0>
quickjs-nuttx/libbf.c:6778 (discriminator 1)
        bfdec_t tmp, *r1 = NULL;
    8005afb4:	4b01                	li	s6,0
quickjs-nuttx/libbf.c:6787 (discriminator 1)
        if (r == a || r == b) {
    8005afb6:	00849c63          	bne	s1,s0,8005afce <bfdec_mul+0xd4>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005afba:	601c                	ld	a5,0(s0)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005afbc:	8b22                	mv	s6,s0
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005afbe:	d802                	sw	zero,48(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005afc0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005afc2:	57fd                	li	a5,-1
    8005afc4:	17fe                	slli	a5,a5,0x3f
    8005afc6:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005afc8:	e082                	sd	zero,64(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005afca:	e482                	sd	zero,72(sp)
bfdec_mul():
quickjs-nuttx/libbf.c:6790
            r = &tmp;
    8005afcc:	845e                	mv	s0,s7
bfdec_resize():
quickjs-nuttx/libbf.h:531
    return bf_resize((bf_t *)r, len);
    8005afce:	00c705b3          	add	a1,a4,a2
    8005afd2:	8522                	mv	a0,s0
    8005afd4:	ec36                	sd	a3,24(sp)
    8005afd6:	e832                	sd	a2,16(sp)
    8005afd8:	e43a                	sd	a4,8(sp)
    8005afda:	babfc0ef          	jal	ra,80057b84 <bf_resize>
bfdec_mul():
quickjs-nuttx/libbf.c:6792
        if (bfdec_resize(r, a_len + b_len)) {
    8005afde:	6722                	ld	a4,8(sp)
    8005afe0:	6642                	ld	a2,16(sp)
    8005afe2:	66e2                	ld	a3,24(sp)
    8005afe4:	cd09                	beqz	a0,8005affe <bfdec_mul+0x104>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005afe6:	8522                	mv	a0,s0
    8005afe8:	bd7fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_mul():
quickjs-nuttx/libbf.c:6794
            ret = BF_ST_MEM_ERROR;
    8005afec:	02000493          	li	s1,32
quickjs-nuttx/libbf.c:6802
        if (r == &tmp)
    8005aff0:	f97414e3          	bne	s0,s7,8005af78 <bfdec_mul+0x7e>
bfdec_move():
quickjs-nuttx/libbf.h:473
    bf_move((bf_t *)r, (bf_t *)a);
    8005aff4:	85a2                	mv	a1,s0
    8005aff6:	855a                	mv	a0,s6
    8005aff8:	876fd0ef          	jal	ra,8005806e <bf_move>
quickjs-nuttx/libbf.h:474
}
    8005affc:	bfb5                	j	8005af78 <bfdec_mul+0x7e>
bfdec_mul():
quickjs-nuttx/libbf.c:6797
        mp_mul_basecase_dec(r->tab, a_tab, a_len, b_tab, b_len);
    8005affe:	7008                	ld	a0,32(s0)
