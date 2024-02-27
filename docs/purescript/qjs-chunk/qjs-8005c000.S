    8005b000:	85e2                	mv	a1,s8
    8005b002:	80eff0ef          	jal	ra,8005a010 <mp_mul_basecase_dec>
quickjs-nuttx/libbf.c:6798
        r->sign = r_sign;
    8005b006:	01342423          	sw	s3,8(s0)
quickjs-nuttx/libbf.c:6799
        r->expn = a->expn + b->expn;
    8005b00a:	6898                	ld	a4,16(s1)
    8005b00c:	01093783          	ld	a5,16(s2)
quickjs-nuttx/libbf.c:6800
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005b010:	8656                	mv	a2,s5
    8005b012:	85d2                	mv	a1,s4
quickjs-nuttx/libbf.c:6799
        r->expn = a->expn + b->expn;
    8005b014:	97ba                	add	a5,a5,a4
    8005b016:	e81c                	sd	a5,16(s0)
quickjs-nuttx/libbf.c:6800
        ret = bfdec_normalize_and_round(r, prec, flags);
    8005b018:	8522                	mv	a0,s0
    8005b01a:	f2eff0ef          	jal	ra,8005a748 <bfdec_normalize_and_round>
    8005b01e:	84aa                	mv	s1,a0
    8005b020:	bfc1                	j	8005aff0 <bfdec_mul+0xf6>

000000008005b022 <bfdec_mul_si>:
bfdec_mul_si():
quickjs-nuttx/libbf.c:6810
{
    8005b022:	711d                	addi	sp,sp,-96
    8005b024:	ec86                	sd	ra,88(sp)
    8005b026:	e8a2                	sd	s0,80(sp)
    8005b028:	e4a6                	sd	s1,72(sp)
    8005b02a:	e0ca                	sd	s2,64(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005b02c:	611c                	ld	a5,0(a0)
bfdec_mul_si():
quickjs-nuttx/libbf.c:6810
{
    8005b02e:	84aa                	mv	s1,a0
    8005b030:	892e                	mv	s2,a1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005b032:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b034:	57fd                	li	a5,-1
    8005b036:	17fe                	slli	a5,a5,0x3f
bfdec_mul_si():
quickjs-nuttx/libbf.c:6814
    ret = bfdec_set_si(&b, b1);
    8005b038:	85b2                	mv	a1,a2
    8005b03a:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b03c:	f43e                	sd	a5,40(sp)
bfdec_mul_si():
quickjs-nuttx/libbf.c:6810
{
    8005b03e:	e436                	sd	a3,8(sp)
    8005b040:	e03a                	sd	a4,0(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005b042:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005b044:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005b046:	fc02                	sd	zero,56(sp)
bfdec_mul_si():
quickjs-nuttx/libbf.c:6814
    ret = bfdec_set_si(&b, b1);
    8005b048:	e77ff0ef          	jal	ra,8005aebe <bfdec_set_si>
quickjs-nuttx/libbf.c:6815
    ret |= bfdec_mul(r, a, &b, prec, flags);
    8005b04c:	6702                	ld	a4,0(sp)
    8005b04e:	66a2                	ld	a3,8(sp)
    8005b050:	0830                	addi	a2,sp,24
    8005b052:	85ca                	mv	a1,s2
quickjs-nuttx/libbf.c:6814
    ret = bfdec_set_si(&b, b1);
    8005b054:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:6815
    ret |= bfdec_mul(r, a, &b, prec, flags);
    8005b056:	8526                	mv	a0,s1
    8005b058:	ea3ff0ef          	jal	ra,8005aefa <bfdec_mul>
    8005b05c:	8c49                	or	s0,s0,a0
bfdec_delete():
quickjs-nuttx/libbf.h:424
    bf_delete((bf_t *)r);
    8005b05e:	0828                	addi	a0,sp,24
    8005b060:	a4bfb0ef          	jal	ra,80056aaa <bf_delete>
bfdec_mul_si():
quickjs-nuttx/libbf.c:6815
    8005b064:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:6818
}
    8005b066:	60e6                	ld	ra,88(sp)
    8005b068:	8522                	mv	a0,s0
    8005b06a:	6446                	ld	s0,80(sp)
    8005b06c:	64a6                	ld	s1,72(sp)
    8005b06e:	6906                	ld	s2,64(sp)
    8005b070:	6125                	addi	sp,sp,96
    8005b072:	8082                	ret

000000008005b074 <bfdec_add_si>:
bfdec_add_si():
quickjs-nuttx/libbf.c:6822
{
    8005b074:	711d                	addi	sp,sp,-96
    8005b076:	ec86                	sd	ra,88(sp)
    8005b078:	e8a2                	sd	s0,80(sp)
    8005b07a:	e4a6                	sd	s1,72(sp)
    8005b07c:	e0ca                	sd	s2,64(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005b07e:	611c                	ld	a5,0(a0)
bfdec_add_si():
quickjs-nuttx/libbf.c:6822
{
    8005b080:	84aa                	mv	s1,a0
    8005b082:	892e                	mv	s2,a1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005b084:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b086:	57fd                	li	a5,-1
    8005b088:	17fe                	slli	a5,a5,0x3f
bfdec_add_si():
quickjs-nuttx/libbf.c:6827
    ret = bfdec_set_si(&b, b1);
    8005b08a:	85b2                	mv	a1,a2
    8005b08c:	0828                	addi	a0,sp,24
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b08e:	f43e                	sd	a5,40(sp)
bfdec_add_si():
quickjs-nuttx/libbf.c:6822
{
    8005b090:	e436                	sd	a3,8(sp)
    8005b092:	e03a                	sd	a4,0(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005b094:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005b096:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005b098:	fc02                	sd	zero,56(sp)
bfdec_add_si():
quickjs-nuttx/libbf.c:6827
    ret = bfdec_set_si(&b, b1);
    8005b09a:	e25ff0ef          	jal	ra,8005aebe <bfdec_set_si>
quickjs-nuttx/libbf.c:6828
    ret |= bfdec_add(r, a, &b, prec, flags);
    8005b09e:	6702                	ld	a4,0(sp)
    8005b0a0:	66a2                	ld	a3,8(sp)
    8005b0a2:	0830                	addi	a2,sp,24
    8005b0a4:	85ca                	mv	a1,s2
quickjs-nuttx/libbf.c:6827
    ret = bfdec_set_si(&b, b1);
    8005b0a6:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:6828
    ret |= bfdec_add(r, a, &b, prec, flags);
    8005b0a8:	8526                	mv	a0,s1
    8005b0aa:	e39ff0ef          	jal	ra,8005aee2 <bfdec_add>
    8005b0ae:	8c49                	or	s0,s0,a0
bfdec_delete():
quickjs-nuttx/libbf.h:424
    8005b0b0:	0828                	addi	a0,sp,24
    8005b0b2:	9f9fb0ef          	jal	ra,80056aaa <bf_delete>
bfdec_add_si():
quickjs-nuttx/libbf.c:6828
    8005b0b6:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:6831
}
    8005b0b8:	60e6                	ld	ra,88(sp)
    8005b0ba:	8522                	mv	a0,s0
    8005b0bc:	6446                	ld	s0,80(sp)
    8005b0be:	64a6                	ld	s1,72(sp)
    8005b0c0:	6906                	ld	s2,64(sp)
    8005b0c2:	6125                	addi	sp,sp,96
    8005b0c4:	8082                	ret

000000008005b0c6 <bfdec_div>:
bfdec_div():
quickjs-nuttx/libbf.c:6929
    return bf_op2((bf_t *)r, (bf_t *)a, (bf_t *)b, prec, flags,
    8005b0c6:	00000797          	auipc	a5,0x0
    8005b0ca:	baa78793          	addi	a5,a5,-1110 # 8005ac70 <__bfdec_div>
    8005b0ce:	fd1fc06f          	j	8005809e <bf_op2>

000000008005b0d2 <bfdec_divrem>:
bfdec_divrem():
quickjs-nuttx/libbf.c:6958
{
    8005b0d2:	7151                	addi	sp,sp,-240
    8005b0d4:	f586                	sd	ra,232(sp)
    8005b0d6:	f1a2                	sd	s0,224(sp)
    8005b0d8:	eda6                	sd	s1,216(sp)
    8005b0da:	e9ca                	sd	s2,208(sp)
    8005b0dc:	e5ce                	sd	s3,200(sp)
    8005b0de:	e1d2                	sd	s4,192(sp)
    8005b0e0:	fd56                	sd	s5,184(sp)
    8005b0e2:	f95a                	sd	s6,176(sp)
    8005b0e4:	f55e                	sd	s7,168(sp)
    8005b0e6:	f162                	sd	s8,160(sp)
    8005b0e8:	ed66                	sd	s9,152(sp)
    8005b0ea:	e96a                	sd	s10,144(sp)
    8005b0ec:	e56e                	sd	s11,136(sp)
quickjs-nuttx/libbf.c:6966
    assert(q != a && q != b);
    8005b0ee:	00c50663          	beq	a0,a2,8005b0fa <bfdec_divrem+0x28>
    8005b0f2:	84aa                	mv	s1,a0
    8005b0f4:	8a36                	mv	s4,a3
quickjs-nuttx/libbf.c:6966 (discriminator 2)
    8005b0f6:	00d51c63          	bne	a0,a3,8005b10e <bfdec_divrem+0x3c>
quickjs-nuttx/libbf.c:6966 (discriminator 3)
    8005b0fa:	6589                	lui	a1,0x2
    8005b0fc:	4601                	li	a2,0
    8005b0fe:	b3658593          	addi	a1,a1,-1226 # 1b36 <asinh-0x7fffe4ca>
quickjs-nuttx/libbf.c:6967 (discriminator 3)
    assert(r != a && r != b);
    8005b102:	00025517          	auipc	a0,0x25
    8005b106:	4be50513          	addi	a0,a0,1214 # 800805c0 <std_name.0+0x18>
    8005b10a:	053050ef          	jal	ra,8006095c <__assert>
    8005b10e:	842e                	mv	s0,a1
    8005b110:	8932                	mv	s2,a2
quickjs-nuttx/libbf.c:6967 (discriminator 4)
    8005b112:	00b60463          	beq	a2,a1,8005b11a <bfdec_divrem+0x48>
quickjs-nuttx/libbf.c:6967 (discriminator 2)
    8005b116:	00b69763          	bne	a3,a1,8005b124 <bfdec_divrem+0x52>
quickjs-nuttx/libbf.c:6967 (discriminator 3)
    8005b11a:	6589                	lui	a1,0x2
    8005b11c:	4601                	li	a2,0
    8005b11e:	b3758593          	addi	a1,a1,-1225 # 1b37 <asinh-0x7fffe4c9>
    8005b122:	b7c5                	j	8005b102 <bfdec_divrem+0x30>
quickjs-nuttx/libbf.c:6968 (discriminator 4)
    assert(q != r);
    8005b124:	00b51763          	bne	a0,a1,8005b132 <bfdec_divrem+0x60>
quickjs-nuttx/libbf.c:6968 (discriminator 1)
    8005b128:	6589                	lui	a1,0x2
    8005b12a:	4601                	li	a2,0
    8005b12c:	b3858593          	addi	a1,a1,-1224 # 1b38 <asinh-0x7fffe4c8>
    8005b130:	bfc9                	j	8005b102 <bfdec_divrem+0x30>
    8005b132:	8bba                	mv	s7,a4
quickjs-nuttx/libbf.c:6970 (discriminator 2)
    if (a->len == 0 || b->len == 0) {
    8005b134:	6e18                	ld	a4,24(a2)
    8005b136:	8c3e                	mv	s8,a5
    8005b138:	c319                	beqz	a4,8005b13e <bfdec_divrem+0x6c>
quickjs-nuttx/libbf.c:6970 (discriminator 1)
    8005b13a:	6e9c                	ld	a5,24(a3)
    8005b13c:	e7d1                	bnez	a5,8005b1c8 <bfdec_divrem+0xf6>
bfdec_set_zero():
quickjs-nuttx/libbf.h:461
    bf_set_zero((bf_t *)r, is_neg);
    8005b13e:	4581                	li	a1,0
    8005b140:	8526                	mv	a0,s1
    8005b142:	b1ffc0ef          	jal	ra,80057c60 <bf_set_zero>
bfdec_divrem():
quickjs-nuttx/libbf.c:6972
        if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005b146:	01093603          	ld	a2,16(s2)
    8005b14a:	57fd                	li	a5,-1
    8005b14c:	0017d713          	srli	a4,a5,0x1
    8005b150:	00e60663          	beq	a2,a4,8005b15c <bfdec_divrem+0x8a>
quickjs-nuttx/libbf.c:6972 (discriminator 1)
    8005b154:	010a3683          	ld	a3,16(s4)
    8005b158:	02e69563          	bne	a3,a4,8005b182 <bfdec_divrem+0xb0>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005b15c:	8522                	mv	a0,s0
    8005b15e:	a61fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_divrem():
quickjs-nuttx/libbf.c:6974
            return 0;
    8005b162:	4501                	li	a0,0
quickjs-nuttx/libbf.c:7059
}
    8005b164:	70ae                	ld	ra,232(sp)
    8005b166:	740e                	ld	s0,224(sp)
    8005b168:	64ee                	ld	s1,216(sp)
    8005b16a:	694e                	ld	s2,208(sp)
    8005b16c:	69ae                	ld	s3,200(sp)
    8005b16e:	6a0e                	ld	s4,192(sp)
    8005b170:	7aea                	ld	s5,184(sp)
    8005b172:	7b4a                	ld	s6,176(sp)
    8005b174:	7baa                	ld	s7,168(sp)
    8005b176:	7c0a                	ld	s8,160(sp)
    8005b178:	6cea                	ld	s9,152(sp)
    8005b17a:	6d4a                	ld	s10,144(sp)
    8005b17c:	6daa                	ld	s11,136(sp)
    8005b17e:	616d                	addi	sp,sp,240
    8005b180:	8082                	ret
quickjs-nuttx/libbf.c:6975
        } else if (a->expn == BF_EXP_INF || b->expn == BF_EXP_ZERO) {
    8005b182:	5775                	li	a4,-3
    8005b184:	8305                	srli	a4,a4,0x1
    8005b186:	00e60563          	beq	a2,a4,8005b190 <bfdec_divrem+0xbe>
quickjs-nuttx/libbf.c:6975 (discriminator 1)
    8005b18a:	17fe                	slli	a5,a5,0x3f
    8005b18c:	00f69763          	bne	a3,a5,8005b19a <bfdec_divrem+0xc8>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    8005b190:	8522                	mv	a0,s0
    8005b192:	a2dfc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_divrem():
quickjs-nuttx/libbf.c:6977
            return BF_ST_INVALID_OP;
    8005b196:	4505                	li	a0,1
    8005b198:	b7f1                	j	8005b164 <bfdec_divrem+0x92>
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8005b19a:	85ca                	mv	a1,s2
    8005b19c:	8522                	mv	a0,s0
    8005b19e:	e85fc0ef          	jal	ra,80058022 <bf_set>
bfdec_divrem():
quickjs-nuttx/libbf.c:6980
            return bfdec_round(r, prec, flags);
    8005b1a2:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:7059
}
    8005b1a4:	740e                	ld	s0,224(sp)
    8005b1a6:	70ae                	ld	ra,232(sp)
    8005b1a8:	64ee                	ld	s1,216(sp)
    8005b1aa:	694e                	ld	s2,208(sp)
    8005b1ac:	69ae                	ld	s3,200(sp)
    8005b1ae:	6a0e                	ld	s4,192(sp)
    8005b1b0:	7aea                	ld	s5,184(sp)
    8005b1b2:	7b4a                	ld	s6,176(sp)
    8005b1b4:	6cea                	ld	s9,152(sp)
    8005b1b6:	6d4a                	ld	s10,144(sp)
    8005b1b8:	6daa                	ld	s11,136(sp)
quickjs-nuttx/libbf.c:6980
            return bfdec_round(r, prec, flags);
    8005b1ba:	8662                	mv	a2,s8
    8005b1bc:	85de                	mv	a1,s7
quickjs-nuttx/libbf.c:7059
}
    8005b1be:	7c0a                	ld	s8,160(sp)
    8005b1c0:	7baa                	ld	s7,168(sp)
    8005b1c2:	616d                	addi	sp,sp,240
quickjs-nuttx/libbf.c:6980
            return bfdec_round(r, prec, flags);
    8005b1c4:	d78ff06f          	j	8005a73c <bfdec_round>
quickjs-nuttx/libbf.c:6984
    q_sign = a->sign ^ b->sign;
    8005b1c8:	00862a83          	lw	s5,8(a2)
    8005b1cc:	0086ab03          	lw	s6,8(a3)
    8005b1d0:	89c2                	mv	s3,a6
    8005b1d2:	016acb33          	xor	s6,s5,s6
quickjs-nuttx/libbf.c:6985
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    8005b1d6:	0a080063          	beqz	a6,8005b276 <bfdec_divrem+0x1a4>
quickjs-nuttx/libbf.c:6985 (discriminator 2)
    8005b1da:	ffc80c93          	addi	s9,a6,-4
quickjs-nuttx/libbf.c:6986 (discriminator 2)
    switch(rnd_mode) {
    8005b1de:	468d                	li	a3,3
quickjs-nuttx/libbf.c:6985 (discriminator 2)
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    8005b1e0:	001cbc93          	seqz	s9,s9
quickjs-nuttx/libbf.c:6986 (discriminator 2)
    switch(rnd_mode) {
    8005b1e4:	08d80663          	beq	a6,a3,8005b270 <bfdec_divrem+0x19e>
quickjs-nuttx/libbf.c:6986
    8005b1e8:	0706cf63          	blt	a3,a6,8005b266 <bfdec_divrem+0x194>
    8005b1ec:	4689                	li	a3,2
quickjs-nuttx/libbf.c:6994
        is_ceil = q_sign;
    8005b1ee:	8ada                	mv	s5,s6
quickjs-nuttx/libbf.c:6986
    switch(rnd_mode) {
    8005b1f0:	00d98363          	beq	s3,a3,8005b1f6 <bfdec_divrem+0x124>
    8005b1f4:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:7007
    a1->expn = a->expn;
    8005b1f6:	01093683          	ld	a3,16(s2)
quickjs-nuttx/libbf.c:7009
    a1->len = a->len;
    8005b1fa:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libbf.c:7012
    b1->expn = b->expn;
    8005b1fc:	010a3703          	ld	a4,16(s4)
quickjs-nuttx/libbf.c:7007
    a1->expn = a->expn;
    8005b200:	ec36                	sd	a3,24(sp)
quickjs-nuttx/libbf.c:7008
    a1->tab = a->tab;
    8005b202:	02093683          	ld	a3,32(s2)
quickjs-nuttx/libbf.c:7012
    b1->expn = b->expn;
    8005b206:	e0ba                	sd	a4,64(sp)
quickjs-nuttx/libbf.c:7013
    b1->tab = b->tab;
    8005b208:	020a3703          	ld	a4,32(s4)
bfdec_cmpu():
quickjs-nuttx/libbf.h:477
    return bf_cmpu((const bf_t *)a, (const bf_t *)b);
    8005b20c:	180c                	addi	a1,sp,48
    8005b20e:	0028                	addi	a0,sp,8
bfdec_divrem():
quickjs-nuttx/libbf.c:6959
    bf_context_t *s = q->ctx;
    8005b210:	0004bd83          	ld	s11,0(s1)
quickjs-nuttx/libbf.c:7008
    a1->tab = a->tab;
    8005b214:	f436                	sd	a3,40(sp)
quickjs-nuttx/libbf.c:7010
    a1->sign = 0;
    8005b216:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:7013
    b1->tab = b->tab;
    8005b218:	e8ba                	sd	a4,80(sp)
quickjs-nuttx/libbf.c:7014
    b1->len = b->len;
    8005b21a:	e4be                	sd	a5,72(sp)
quickjs-nuttx/libbf.c:7015
    b1->sign = 0;
    8005b21c:	dc02                	sw	zero,56(sp)
bfdec_cmpu():
quickjs-nuttx/libbf.h:477
    8005b21e:	a90fd0ef          	jal	ra,800584ae <bf_cmpu>
bfdec_tdivremu():
quickjs-nuttx/libbf.c:6938
    if (bfdec_cmpu(a, b) < 0) {
    8005b222:	04055f63          	bgez	a0,8005b280 <bfdec_divrem+0x1ae>
quickjs-nuttx/libbf.c:6939
        bfdec_set_ui(q, 0);
    8005b226:	4581                	li	a1,0
    8005b228:	8526                	mv	a0,s1
    8005b22a:	c0fff0ef          	jal	ra,8005ae38 <bfdec_set_ui>
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8005b22e:	002c                	addi	a1,sp,8
    8005b230:	8522                	mv	a0,s0
    8005b232:	df1fc0ef          	jal	ra,80058022 <bf_set>
bfdec_divrem():
quickjs-nuttx/libbf.c:7021
    if (bfdec_is_nan(q) || bfdec_is_nan(r))
    8005b236:	6898                	ld	a4,16(s1)
    8005b238:	5d7d                	li	s10,-1
    8005b23a:	001d5793          	srli	a5,s10,0x1
    8005b23e:	0af70463          	beq	a4,a5,8005b2e6 <bfdec_divrem+0x214>
    8005b242:	6818                	ld	a4,16(s0)
    8005b244:	0af70163          	beq	a4,a5,8005b2e6 <bfdec_divrem+0x214>
quickjs-nuttx/libbf.c:7026
    if (r->len != 0) {
    8005b248:	6c1c                	ld	a5,24(s0)
    8005b24a:	e7a5                	bnez	a5,8005b2b2 <bfdec_divrem+0x1e0>
quickjs-nuttx/libbf.c:7052
    r->sign ^= a->sign;
    8005b24c:	441c                	lw	a5,8(s0)
    8005b24e:	00892703          	lw	a4,8(s2)
quickjs-nuttx/libbf.c:7054
    return bfdec_round(r, prec, flags);
    8005b252:	8662                	mv	a2,s8
    8005b254:	85de                	mv	a1,s7
quickjs-nuttx/libbf.c:7052
    r->sign ^= a->sign;
    8005b256:	8fb9                	xor	a5,a5,a4
    8005b258:	c41c                	sw	a5,8(s0)
quickjs-nuttx/libbf.c:7053
    q->sign = q_sign;
    8005b25a:	0164a423          	sw	s6,8(s1)
quickjs-nuttx/libbf.c:7054
    return bfdec_round(r, prec, flags);
    8005b25e:	8522                	mv	a0,s0
    8005b260:	cdcff0ef          	jal	ra,8005a73c <bfdec_round>
    8005b264:	b701                	j	8005b164 <bfdec_divrem+0x92>
quickjs-nuttx/libbf.c:6986
    switch(rnd_mode) {
    8005b266:	4695                	li	a3,5
    8005b268:	00d80a63          	beq	a6,a3,8005b27c <bfdec_divrem+0x1aa>
    8005b26c:	4699                	li	a3,6
    8005b26e:	b749                	j	8005b1f0 <bfdec_divrem+0x11e>
quickjs-nuttx/libbf.c:6997
        is_ceil = q_sign ^ 1;
    8005b270:	001b4a93          	xori	s5,s6,1
quickjs-nuttx/libbf.c:6998
        break;
    8005b274:	b749                	j	8005b1f6 <bfdec_divrem+0x124>
quickjs-nuttx/libbf.c:6991
        is_ceil = FALSE;
    8005b276:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:6985
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    8005b278:	4c85                	li	s9,1
    8005b27a:	bfb5                	j	8005b1f6 <bfdec_divrem+0x124>
quickjs-nuttx/libbf.c:7000
        is_ceil = TRUE;
    8005b27c:	4a85                	li	s5,1
    8005b27e:	bfa5                	j	8005b1f6 <bfdec_divrem+0x124>
bfdec_tdivremu():
quickjs-nuttx/libbf.c:6942
        bfdec_div(q, a, b, 0, BF_RNDZ | BF_FLAG_RADPNT_PREC);
    8005b280:	1810                	addi	a2,sp,48
    8005b282:	002c                	addi	a1,sp,8
    8005b284:	4745                	li	a4,17
    8005b286:	4681                	li	a3,0
    8005b288:	8526                	mv	a0,s1
    8005b28a:	e3dff0ef          	jal	ra,8005b0c6 <bfdec_div>
quickjs-nuttx/libbf.c:6943
        bfdec_mul(r, q, b, BF_PREC_INF, BF_RNDZ);
    8005b28e:	5d7d                	li	s10,-1
    8005b290:	002d5693          	srli	a3,s10,0x2
    8005b294:	1810                	addi	a2,sp,48
    8005b296:	85a6                	mv	a1,s1
    8005b298:	4705                	li	a4,1
    8005b29a:	8522                	mv	a0,s0
    8005b29c:	c5fff0ef          	jal	ra,8005aefa <bfdec_mul>
quickjs-nuttx/libbf.c:6944
        bfdec_sub(r, a, r, BF_PREC_INF, BF_RNDZ);
    8005b2a0:	4705                	li	a4,1
    8005b2a2:	002d5693          	srli	a3,s10,0x2
    8005b2a6:	8622                	mv	a2,s0
    8005b2a8:	002c                	addi	a1,sp,8
    8005b2aa:	8522                	mv	a0,s0
    8005b2ac:	c43ff0ef          	jal	ra,8005aeee <bfdec_sub>
    8005b2b0:	b759                	j	8005b236 <bfdec_divrem+0x164>
bfdec_divrem():
quickjs-nuttx/libbf.c:7027
        if (is_rndn) {
    8005b2b2:	0a0c8963          	beqz	s9,8005b364 <bfdec_divrem+0x292>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b2b6:	03fd1793          	slli	a5,s10,0x3f
bfdec_set():
quickjs-nuttx/libbf.h:469
    8005b2ba:	85a2                	mv	a1,s0
    8005b2bc:	08a8                	addi	a0,sp,88
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005b2be:	ecee                	sd	s11,88(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005b2c0:	d082                	sw	zero,96(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b2c2:	f4be                	sd	a5,104(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005b2c4:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005b2c6:	fc82                	sd	zero,120(sp)
bfdec_set():
quickjs-nuttx/libbf.h:469
    8005b2c8:	d5bfc0ef          	jal	ra,80058022 <bf_set>
bfdec_divrem():
quickjs-nuttx/libbf.c:7029
            if (bfdec_set(r1, r))
    8005b2cc:	ed09                	bnez	a0,8005b2e6 <bfdec_divrem+0x214>
quickjs-nuttx/libbf.c:7031
            if (bfdec_mul_si(r1, r1, 2, BF_PREC_INF, BF_RNDZ)) {
    8005b2ce:	08ac                	addi	a1,sp,88
    8005b2d0:	4705                	li	a4,1
    8005b2d2:	002d5693          	srli	a3,s10,0x2
    8005b2d6:	4609                	li	a2,2
    8005b2d8:	852e                	mv	a0,a1
    8005b2da:	d49ff0ef          	jal	ra,8005b022 <bfdec_mul_si>
    8005b2de:	cd09                	beqz	a0,8005b2f8 <bfdec_divrem+0x226>
bfdec_delete():
quickjs-nuttx/libbf.h:424
    bf_delete((bf_t *)r);
    8005b2e0:	08a8                	addi	a0,sp,88
    8005b2e2:	fc8fb0ef          	jal	ra,80056aaa <bf_delete>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005b2e6:	8526                	mv	a0,s1
    8005b2e8:	8d7fc0ef          	jal	ra,80057bbe <bf_set_nan>
    8005b2ec:	8522                	mv	a0,s0
    8005b2ee:	8d1fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_divrem():
quickjs-nuttx/libbf.c:7058
    return BF_ST_MEM_ERROR;
    8005b2f2:	02000513          	li	a0,32
    8005b2f6:	b5bd                	j	8005b164 <bfdec_divrem+0x92>
bfdec_cmpu():
quickjs-nuttx/libbf.h:477
    return bf_cmpu((const bf_t *)a, (const bf_t *)b);
    8005b2f8:	85d2                	mv	a1,s4
    8005b2fa:	08a8                	addi	a0,sp,88
    8005b2fc:	9b2fd0ef          	jal	ra,800584ae <bf_cmpu>
    8005b300:	8a2a                	mv	s4,a0
bfdec_delete():
quickjs-nuttx/libbf.h:424
    bf_delete((bf_t *)r);
    8005b302:	08a8                	addi	a0,sp,88
    8005b304:	fa6fb0ef          	jal	ra,80056aaa <bf_delete>
bfdec_divrem():
quickjs-nuttx/libbf.c:7037
            if (res > 0 ||
    8005b308:	03405b63          	blez	s4,8005b33e <bfdec_divrem+0x26c>
quickjs-nuttx/libbf.c:7045
            res = bfdec_add_si(q, q, 1, BF_PREC_INF, BF_RNDZ);
    8005b30c:	5a7d                	li	s4,-1
    8005b30e:	4705                	li	a4,1
    8005b310:	002a5693          	srli	a3,s4,0x2
    8005b314:	4605                	li	a2,1
    8005b316:	85a6                	mv	a1,s1
    8005b318:	8526                	mv	a0,s1
    8005b31a:	d5bff0ef          	jal	ra,8005b074 <bfdec_add_si>
    8005b31e:	89aa                	mv	s3,a0
quickjs-nuttx/libbf.c:7046
            res |= bfdec_sub(r, r, b1, BF_PREC_INF, BF_RNDZ);
    8005b320:	4705                	li	a4,1
    8005b322:	002a5693          	srli	a3,s4,0x2
    8005b326:	1810                	addi	a2,sp,48
    8005b328:	85a2                	mv	a1,s0
    8005b32a:	8522                	mv	a0,s0
    8005b32c:	bc3ff0ef          	jal	ra,8005aeee <bfdec_sub>
    8005b330:	00a9e9b3          	or	s3,s3,a0
quickjs-nuttx/libbf.c:7047
            if (res & BF_ST_MEM_ERROR)
    8005b334:	0209f993          	andi	s3,s3,32
    8005b338:	f0098ae3          	beqz	s3,8005b24c <bfdec_divrem+0x17a>
    8005b33c:	b76d                	j	8005b2e6 <bfdec_divrem+0x214>
quickjs-nuttx/libbf.c:7037 (discriminator 1)
            if (res > 0 ||
    8005b33e:	f00a17e3          	bnez	s4,8005b24c <bfdec_divrem+0x17a>
quickjs-nuttx/libbf.c:7038
                (res == 0 &&
    8005b342:	4791                	li	a5,4
    8005b344:	fcf984e3          	beq	s3,a5,8005b30c <bfdec_divrem+0x23a>
quickjs-nuttx/libbf.c:7040
                  (get_digit(q->tab, q->len, q->len * LIMB_DIGITS - q->expn) & 1) != 0))) {
    8005b348:	6c8c                	ld	a1,24(s1)
    8005b34a:	47cd                	li	a5,19
    8005b34c:	6890                	ld	a2,16(s1)
    8005b34e:	02f587b3          	mul	a5,a1,a5
    8005b352:	7088                	ld	a0,32(s1)
    8005b354:	40c78633          	sub	a2,a5,a2
    8005b358:	981fb0ef          	jal	ra,80056cd8 <get_digit>
    8005b35c:	8905                	andi	a0,a0,1
quickjs-nuttx/libbf.c:7039
                 (rnd_mode == BF_RNDNA ||
    8005b35e:	ee0507e3          	beqz	a0,8005b24c <bfdec_divrem+0x17a>
    8005b362:	b76d                	j	8005b30c <bfdec_divrem+0x23a>
quickjs-nuttx/libbf.c:7043
        } else if (is_ceil) {
    8005b364:	fa0a94e3          	bnez	s5,8005b30c <bfdec_divrem+0x23a>
    8005b368:	b5d5                	j	8005b24c <bfdec_divrem+0x17a>

000000008005b36a <bfdec_rem>:
bfdec_rem():
quickjs-nuttx/libbf.c:7063
{
    8005b36a:	7139                	addi	sp,sp,-64
    8005b36c:	fc06                	sd	ra,56(sp)
    8005b36e:	f822                	sd	s0,48(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005b370:	00053803          	ld	a6,0(a0)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b374:	58fd                	li	a7,-1
    8005b376:	18fe                	slli	a7,a7,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005b378:	e442                	sd	a6,8(sp)
bfdec_rem():
quickjs-nuttx/libbf.c:7068
    ret = bfdec_divrem(q, r, a, b, prec, flags, rnd_mode);
    8005b37a:	883e                	mv	a6,a5
    8005b37c:	87ba                	mv	a5,a4
    8005b37e:	8736                	mv	a4,a3
    8005b380:	86b2                	mv	a3,a2
    8005b382:	862e                	mv	a2,a1
    8005b384:	85aa                	mv	a1,a0
    8005b386:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005b388:	ec46                	sd	a7,24(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005b38a:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005b38c:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005b38e:	f402                	sd	zero,40(sp)
bfdec_rem():
quickjs-nuttx/libbf.c:7068
    ret = bfdec_divrem(q, r, a, b, prec, flags, rnd_mode);
    8005b390:	d43ff0ef          	jal	ra,8005b0d2 <bfdec_divrem>
    8005b394:	842a                	mv	s0,a0
bfdec_delete():
quickjs-nuttx/libbf.h:424
    8005b396:	0028                	addi	a0,sp,8
    8005b398:	f12fb0ef          	jal	ra,80056aaa <bf_delete>
bfdec_rem():
quickjs-nuttx/libbf.c:7071
}
    8005b39c:	70e2                	ld	ra,56(sp)
    8005b39e:	8522                	mv	a0,s0
    8005b3a0:	7442                	ld	s0,48(sp)
    8005b3a2:	6121                	addi	sp,sp,64
    8005b3a4:	8082                	ret

000000008005b3a6 <bfdec_rint>:
bfdec_rint():
quickjs-nuttx/libbf.c:7076
    return bfdec_round(r, 0, rnd_mode | BF_FLAG_RADPNT_PREC);
    8005b3a6:	0105e613          	ori	a2,a1,16
    8005b3aa:	4581                	li	a1,0
    8005b3ac:	b90ff06f          	j	8005a73c <bfdec_round>

000000008005b3b0 <bfdec_sqrt>:
bfdec_sqrt():
quickjs-nuttx/libbf.c:7080
{
    8005b3b0:	7119                	addi	sp,sp,-128
    8005b3b2:	fc86                	sd	ra,120(sp)
    8005b3b4:	f8a2                	sd	s0,112(sp)
    8005b3b6:	f4a6                	sd	s1,104(sp)
    8005b3b8:	f0ca                	sd	s2,96(sp)
    8005b3ba:	ecce                	sd	s3,88(sp)
    8005b3bc:	e8d2                	sd	s4,80(sp)
    8005b3be:	e4d6                	sd	s5,72(sp)
    8005b3c0:	e0da                	sd	s6,64(sp)
    8005b3c2:	fc5e                	sd	s7,56(sp)
    8005b3c4:	f862                	sd	s8,48(sp)
    8005b3c6:	f466                	sd	s9,40(sp)
    8005b3c8:	f06a                	sd	s10,32(sp)
    8005b3ca:	ec6e                	sd	s11,24(sp)
quickjs-nuttx/libbf.c:7087
    assert(r != a);
    8005b3cc:	00a59c63          	bne	a1,a0,8005b3e4 <bfdec_sqrt+0x34>
quickjs-nuttx/libbf.c:7087 (discriminator 1)
    8005b3d0:	6589                	lui	a1,0x2
    8005b3d2:	4601                	li	a2,0
    8005b3d4:	baf58593          	addi	a1,a1,-1105 # 1baf <asinh-0x7fffe451>
    8005b3d8:	00025517          	auipc	a0,0x25
    8005b3dc:	1e850513          	addi	a0,a0,488 # 800805c0 <std_name.0+0x18>
    8005b3e0:	57c050ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:7089 (discriminator 2)
    if (a->len == 0) {
    8005b3e4:	6d9c                	ld	a5,24(a1)
    8005b3e6:	89aa                	mv	s3,a0
    8005b3e8:	842e                	mv	s0,a1
    8005b3ea:	e3b9                	bnez	a5,8005b430 <bfdec_sqrt+0x80>
quickjs-nuttx/libbf.c:7090
        if (a->expn == BF_EXP_NAN) {
    8005b3ec:	6998                	ld	a4,16(a1)
    8005b3ee:	57fd                	li	a5,-1
    8005b3f0:	8385                	srli	a5,a5,0x1
    8005b3f2:	02f71463          	bne	a4,a5,8005b41a <bfdec_sqrt+0x6a>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005b3f6:	fc8fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_sqrt():
quickjs-nuttx/libbf.c:7097
        ret = 0;
    8005b3fa:	4501                	li	a0,0
quickjs-nuttx/libbf.c:7159
}
    8005b3fc:	70e6                	ld	ra,120(sp)
    8005b3fe:	7446                	ld	s0,112(sp)
    8005b400:	74a6                	ld	s1,104(sp)
    8005b402:	7906                	ld	s2,96(sp)
    8005b404:	69e6                	ld	s3,88(sp)
    8005b406:	6a46                	ld	s4,80(sp)
    8005b408:	6aa6                	ld	s5,72(sp)
    8005b40a:	6b06                	ld	s6,64(sp)
    8005b40c:	7be2                	ld	s7,56(sp)
    8005b40e:	7c42                	ld	s8,48(sp)
    8005b410:	7ca2                	ld	s9,40(sp)
    8005b412:	7d02                	ld	s10,32(sp)
    8005b414:	6de2                	ld	s11,24(sp)
    8005b416:	6109                	addi	sp,sp,128
    8005b418:	8082                	ret
quickjs-nuttx/libbf.c:7092
        } else if (a->expn == BF_EXP_INF && a->sign) {
    8005b41a:	57f5                	li	a5,-3
    8005b41c:	8385                	srli	a5,a5,0x1
    8005b41e:	00f71463          	bne	a4,a5,8005b426 <bfdec_sqrt+0x76>
quickjs-nuttx/libbf.c:7092 (discriminator 1)
    8005b422:	459c                	lw	a5,8(a1)
    8005b424:	ef89                	bnez	a5,8005b43e <bfdec_sqrt+0x8e>
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8005b426:	85a2                	mv	a1,s0
    8005b428:	854e                	mv	a0,s3
    8005b42a:	bf9fc0ef          	jal	ra,80058022 <bf_set>
    8005b42e:	b7f1                	j	8005b3fa <bfdec_sqrt+0x4a>
bfdec_sqrt():
quickjs-nuttx/libbf.c:7098
    } else if (a->sign || prec == BF_PREC_INF) {
    8005b430:	459c                	lw	a5,8(a1)
    8005b432:	e791                	bnez	a5,8005b43e <bfdec_sqrt+0x8e>
quickjs-nuttx/libbf.c:7098 (discriminator 1)
    8005b434:	57fd                	li	a5,-1
    8005b436:	8389                	srli	a5,a5,0x2
    8005b438:	8b32                	mv	s6,a2
    8005b43a:	00f61763          	bne	a2,a5,8005b448 <bfdec_sqrt+0x98>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005b43e:	854e                	mv	a0,s3
    8005b440:	f7efc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_sqrt():
quickjs-nuttx/libbf.c:7101
        ret = BF_ST_INVALID_OP;
    8005b444:	4505                	li	a0,1
    8005b446:	bf5d                	j	8005b3fc <bfdec_sqrt+0x4c>
quickjs-nuttx/libbf.c:7103
        if (flags & BF_FLAG_RADPNT_PREC) {
    8005b448:	0106f713          	andi	a4,a3,16
    8005b44c:	8bb6                	mv	s7,a3
quickjs-nuttx/libbf.c:7106
            prec1 = prec;
    8005b44e:	87b2                	mv	a5,a2
quickjs-nuttx/libbf.c:7103
        if (flags & BF_FLAG_RADPNT_PREC) {
    8005b450:	cf01                	beqz	a4,8005b468 <bfdec_sqrt+0xb8>
quickjs-nuttx/libbf.c:7104
            prec1 = bf_max(floor_div(a->expn + 1, 2) + prec, 1);
    8005b452:	699c                	ld	a5,16(a1)
    8005b454:	00178713          	addi	a4,a5,1
floor_div():
quickjs-nuttx/libbf.c:142
    if (a >= 0) {
    8005b458:	0e074463          	bltz	a4,8005b540 <bfdec_sqrt+0x190>
quickjs-nuttx/libbf.c:143
        return a / b;
    8005b45c:	40175793          	srai	a5,a4,0x1
bfdec_sqrt():
quickjs-nuttx/libbf.c:7104
            prec1 = bf_max(floor_div(a->expn + 1, 2) + prec, 1);
    8005b460:	97da                	add	a5,a5,s6
    8005b462:	00f04363          	bgtz	a5,8005b468 <bfdec_sqrt+0xb8>
    8005b466:	4785                	li	a5,1
quickjs-nuttx/libbf.c:7110
        n = (2 * (prec1 + 2) + 2 * LIMB_DIGITS - 1) / (2 * LIMB_DIGITS);
    8005b468:	0786                	slli	a5,a5,0x1
    8005b46a:	02978793          	addi	a5,a5,41
    8005b46e:	02600c13          	li	s8,38
    8005b472:	0387cc33          	div	s8,a5,s8
bfdec_resize():
quickjs-nuttx/libbf.h:531
    return bf_resize((bf_t *)r, len);
    8005b476:	854e                	mv	a0,s3
bfdec_sqrt():
quickjs-nuttx/libbf.c:7081
    bf_context_t *s = a->ctx;
    8005b478:	00043c83          	ld	s9,0(s0)
quickjs-nuttx/libbf.c:7110
        n = (2 * (prec1 + 2) + 2 * LIMB_DIGITS - 1) / (2 * LIMB_DIGITS);
    8005b47c:	e43e                	sd	a5,8(sp)
bfdec_resize():
quickjs-nuttx/libbf.h:531
    8005b47e:	85e2                	mv	a1,s8
    8005b480:	f04fc0ef          	jal	ra,80057b84 <bf_resize>
    8005b484:	8a2a                	mv	s4,a0
bfdec_sqrt():
quickjs-nuttx/libbf.c:7111
        if (bfdec_resize(r, n))
    8005b486:	e55d                	bnez	a0,8005b534 <bfdec_sqrt+0x184>
quickjs-nuttx/libbf.c:7113
        a1 = bf_malloc(s, sizeof(limb_t) * 2 * n);
    8005b488:	004c1d93          	slli	s11,s8,0x4
    8005b48c:	85ee                	mv	a1,s11
    8005b48e:	8566                	mv	a0,s9
    8005b490:	e08fb0ef          	jal	ra,80056a98 <bf_malloc>
    8005b494:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:7114
        if (!a1)
    8005b496:	cd59                	beqz	a0,8005b534 <bfdec_sqrt+0x184>
quickjs-nuttx/libbf.c:7116
        n1 = bf_min(2 * n, a->len);
    8005b498:	01843d03          	ld	s10,24(s0)
    8005b49c:	001c1913          	slli	s2,s8,0x1
quickjs-nuttx/libbf.h:188
    if (a < b)
    8005b4a0:	01a95363          	bge	s2,s10,8005b4a6 <bfdec_sqrt+0xf6>
    8005b4a4:	8d4a                	mv	s10,s2
quickjs-nuttx/libbf.c:7117
        memset(a1, 0, (2 * n - n1) * sizeof(limb_t));
    8005b4a6:	41a90633          	sub	a2,s2,s10
    8005b4aa:	060e                	slli	a2,a2,0x3
    8005b4ac:	4581                	li	a1,0
    8005b4ae:	8526                	mv	a0,s1
    8005b4b0:	792080ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:7118
        memcpy(a1 + 2 * n - n1, a->tab + a->len - n1, n1 * sizeof(limb_t));
    8005b4b4:	6c18                	ld	a4,24(s0)
    8005b4b6:	700c                	ld	a1,32(s0)
    8005b4b8:	003d1613          	slli	a2,s10,0x3
    8005b4bc:	41a70733          	sub	a4,a4,s10
    8005b4c0:	070e                	slli	a4,a4,0x3
    8005b4c2:	40cd8533          	sub	a0,s11,a2
    8005b4c6:	95ba                	add	a1,a1,a4
    8005b4c8:	9526                	add	a0,a0,s1
    8005b4ca:	0e3080ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/libbf.c:7119
        if (a->expn & 1) {
    8005b4ce:	6818                	ld	a4,16(s0)
quickjs-nuttx/libbf.c:7122
            res = 0;
    8005b4d0:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:7119
        if (a->expn & 1) {
    8005b4d2:	8b05                	andi	a4,a4,1
    8005b4d4:	cb09                	beqz	a4,8005b4e6 <bfdec_sqrt+0x136>
quickjs-nuttx/libbf.c:7120
            res = mp_shr_dec(a1, a1, 2 * n, 1, 0);
    8005b4d6:	4701                	li	a4,0
    8005b4d8:	4685                	li	a3,1
    8005b4da:	864a                	mv	a2,s2
    8005b4dc:	85a6                	mv	a1,s1
    8005b4de:	8526                	mv	a0,s1
    8005b4e0:	b49fb0ef          	jal	ra,80057028 <mp_shr_dec>
    8005b4e4:	8aaa                	mv	s5,a0
quickjs-nuttx/libbf.c:7127
        if (n > 1) {
    8005b4e6:	67a2                	ld	a5,8(sp)
    8005b4e8:	04b00713          	li	a4,75
    8005b4ec:	02f75863          	bge	a4,a5,8005b51c <bfdec_sqrt+0x16c>
quickjs-nuttx/libbf.c:7128
            v = a1[2 * n - 1];
    8005b4f0:	9da6                	add	s11,s11,s1
    8005b4f2:	ff8db703          	ld	a4,-8(s11)
quickjs-nuttx/libbf.c:7129
            while (v < BF_DEC_BASE / 4) {
    8005b4f6:	00039697          	auipc	a3,0x39
    8005b4fa:	80a6b683          	ld	a3,-2038(a3) # 80093d00 <_erodata+0x18e>
    8005b4fe:	04e6f563          	bgeu	a3,a4,8005b548 <bfdec_sqrt+0x198>
quickjs-nuttx/libbf.c:7133
            if (k != 0)
    8005b502:	000a0d63          	beqz	s4,8005b51c <bfdec_sqrt+0x16c>
quickjs-nuttx/libbf.c:7134
                mp_mul1_dec(a1, a1, 2 * n, 1 << (2 * k), 0);
    8005b506:	4605                	li	a2,1
    8005b508:	001a169b          	slliw	a3,s4,0x1
    8005b50c:	00d616bb          	sllw	a3,a2,a3
    8005b510:	4701                	li	a4,0
    8005b512:	864a                	mv	a2,s2
    8005b514:	85a6                	mv	a1,s1
    8005b516:	8526                	mv	a0,s1
    8005b518:	8fffe0ef          	jal	ra,80059e16 <mp_mul1_dec>
quickjs-nuttx/libbf.c:7136
        if (mp_sqrtrem_dec(s, r->tab, a1, n)) {
    8005b51c:	0209b583          	ld	a1,32(s3)
    8005b520:	86e2                	mv	a3,s8
    8005b522:	8626                	mv	a2,s1
    8005b524:	8566                	mv	a0,s9
    8005b526:	8f4ff0ef          	jal	ra,8005a61a <mp_sqrtrem_dec>
    8005b52a:	c115                	beqz	a0,8005b54e <bfdec_sqrt+0x19e>
quickjs-nuttx/libbf.c:7137
            bf_free(s, a1);
    8005b52c:	85a6                	mv	a1,s1
    8005b52e:	8566                	mv	a0,s9
    8005b530:	d70fb0ef          	jal	ra,80056aa0 <bf_free>
bfdec_set_nan():
quickjs-nuttx/libbf.h:457
    bf_set_nan((bf_t *)r);
    8005b534:	854e                	mv	a0,s3
    8005b536:	e88fc0ef          	jal	ra,80057bbe <bf_set_nan>
bfdec_sqrt():
quickjs-nuttx/libbf.c:7158
    return BF_ST_MEM_ERROR;
    8005b53a:	02000513          	li	a0,32
    8005b53e:	bd7d                	j	8005b3fc <bfdec_sqrt+0x4c>
floor_div():
quickjs-nuttx/libbf.c:145
        return (a - b + 1) / b;
    8005b540:	4709                	li	a4,2
    8005b542:	02e7c7b3          	div	a5,a5,a4
    8005b546:	bf29                	j	8005b460 <bfdec_sqrt+0xb0>
bfdec_sqrt():
quickjs-nuttx/libbf.c:7130
                k++;
    8005b548:	2a05                	addiw	s4,s4,1
quickjs-nuttx/libbf.c:7131
                v *= 4;
    8005b54a:	070a                	slli	a4,a4,0x2
    8005b54c:	bf4d                	j	8005b4fe <bfdec_sqrt+0x14e>
quickjs-nuttx/libbf.c:7140
        if (k != 0)
    8005b54e:	000a0c63          	beqz	s4,8005b566 <bfdec_sqrt+0x1b6>
quickjs-nuttx/libbf.c:7141
            mp_div1_dec(r->tab, r->tab, n, 1 << k, 0);
    8005b552:	0209b583          	ld	a1,32(s3)
    8005b556:	4685                	li	a3,1
    8005b558:	4701                	li	a4,0
    8005b55a:	014696bb          	sllw	a3,a3,s4
    8005b55e:	8662                	mv	a2,s8
    8005b560:	852e                	mv	a0,a1
    8005b562:	b17fe0ef          	jal	ra,8005a078 <mp_div1_dec>
quickjs-nuttx/libbf.c:7142
        if (!res) {
    8005b566:	000a9863          	bnez	s5,8005b576 <bfdec_sqrt+0x1c6>
quickjs-nuttx/libbf.c:7143
            res = mp_scan_nz(a1, n + 1);
    8005b56a:	001c0593          	addi	a1,s8,1
    8005b56e:	8526                	mv	a0,s1
    8005b570:	df6fb0ef          	jal	ra,80056b66 <mp_scan_nz>
    8005b574:	8aaa                	mv	s5,a0
quickjs-nuttx/libbf.c:7145
        bf_free(s, a1);
    8005b576:	85a6                	mv	a1,s1
    8005b578:	8566                	mv	a0,s9
    8005b57a:	d26fb0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:7146
        if (!res) {
    8005b57e:	000a9963          	bnez	s5,8005b590 <bfdec_sqrt+0x1e0>
quickjs-nuttx/libbf.c:7147
            res = mp_scan_nz(a->tab, a->len - n1);
    8005b582:	6c0c                	ld	a1,24(s0)
    8005b584:	7008                	ld	a0,32(s0)
    8005b586:	41a585b3          	sub	a1,a1,s10
    8005b58a:	ddcfb0ef          	jal	ra,80056b66 <mp_scan_nz>
quickjs-nuttx/libbf.c:7149
        if (res != 0)
    8005b58e:	c519                	beqz	a0,8005b59c <bfdec_sqrt+0x1ec>
quickjs-nuttx/libbf.c:7150
            r->tab[0] |= 1;
    8005b590:	0209b703          	ld	a4,32(s3)
    8005b594:	631c                	ld	a5,0(a4)
    8005b596:	0017e793          	ori	a5,a5,1
    8005b59a:	e31c                	sd	a5,0(a4)
quickjs-nuttx/libbf.c:7151
        r->sign = 0;
    8005b59c:	0009a423          	sw	zero,8(s3)
quickjs-nuttx/libbf.c:7152
        r->expn = (a->expn + 1) >> 1;
    8005b5a0:	681c                	ld	a5,16(s0)
quickjs-nuttx/libbf.c:7153
        ret = bfdec_round(r, prec, flags);
    8005b5a2:	865e                	mv	a2,s7
    8005b5a4:	85da                	mv	a1,s6
quickjs-nuttx/libbf.c:7152
        r->expn = (a->expn + 1) >> 1;
    8005b5a6:	0785                	addi	a5,a5,1
    8005b5a8:	8785                	srai	a5,a5,0x1
    8005b5aa:	00f9b823          	sd	a5,16(s3)
quickjs-nuttx/libbf.c:7159
}
    8005b5ae:	7446                	ld	s0,112(sp)
    8005b5b0:	70e6                	ld	ra,120(sp)
    8005b5b2:	74a6                	ld	s1,104(sp)
    8005b5b4:	7906                	ld	s2,96(sp)
    8005b5b6:	6a46                	ld	s4,80(sp)
    8005b5b8:	6aa6                	ld	s5,72(sp)
    8005b5ba:	6b06                	ld	s6,64(sp)
    8005b5bc:	7be2                	ld	s7,56(sp)
    8005b5be:	7c42                	ld	s8,48(sp)
    8005b5c0:	7ca2                	ld	s9,40(sp)
    8005b5c2:	7d02                	ld	s10,32(sp)
    8005b5c4:	6de2                	ld	s11,24(sp)
quickjs-nuttx/libbf.c:7153
        ret = bfdec_round(r, prec, flags);
    8005b5c6:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:7159
}
    8005b5c8:	69e6                	ld	s3,88(sp)
    8005b5ca:	6109                	addi	sp,sp,128
quickjs-nuttx/libbf.c:7153
        ret = bfdec_round(r, prec, flags);
    8005b5cc:	970ff06f          	j	8005a73c <bfdec_round>

000000008005b5d0 <bfdec_get_int32>:
bfdec_get_int32():
quickjs-nuttx/libbf.c:7164
{
    8005b5d0:	1101                	addi	sp,sp,-32
    8005b5d2:	e822                	sd	s0,16(sp)
    8005b5d4:	e426                	sd	s1,8(sp)
    8005b5d6:	ec06                	sd	ra,24(sp)
    8005b5d8:	842e                	mv	s0,a1
quickjs-nuttx/libbf.c:7167
    if (a->expn >= BF_EXP_INF) {
    8005b5da:	698c                	ld	a1,16(a1)
    8005b5dc:	57ed                	li	a5,-5
    8005b5de:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:7164
{
    8005b5e0:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:7167
    if (a->expn >= BF_EXP_INF) {
    8005b5e2:	02b7d363          	bge	a5,a1,8005b608 <bfdec_get_int32+0x38>
quickjs-nuttx/libbf.c:7169
        if (a->expn == BF_EXP_INF) {
    8005b5e6:	57f5                	li	a5,-3
    8005b5e8:	8385                	srli	a5,a5,0x1
    8005b5ea:	0af59363          	bne	a1,a5,8005b690 <bfdec_get_int32+0xc0>
quickjs-nuttx/libbf.c:7170
            v = (uint32_t)INT32_MAX + a->sign;
    8005b5ee:	441c                	lw	a5,8(s0)
    8005b5f0:	80000537          	lui	a0,0x80000
    8005b5f4:	fff54513          	not	a0,a0
    8005b5f8:	9fa9                	addw	a5,a5,a0
quickjs-nuttx/libbf.c:7200
            ret = 0;
    8005b5fa:	4501                	li	a0,0
quickjs-nuttx/libbf.c:7208
}
    8005b5fc:	60e2                	ld	ra,24(sp)
    8005b5fe:	6442                	ld	s0,16(sp)
quickjs-nuttx/libbf.c:7206
    *pres = v;
    8005b600:	c09c                	sw	a5,0(s1)
quickjs-nuttx/libbf.c:7208
}
    8005b602:	64a2                	ld	s1,8(sp)
    8005b604:	6105                	addi	sp,sp,32
    8005b606:	8082                	ret
quickjs-nuttx/libbf.c:7175
    } else if (a->expn <= 0) {
    8005b608:	08b05a63          	blez	a1,8005b69c <bfdec_get_int32+0xcc>
quickjs-nuttx/libbf.c:7178
    } else if (a->expn <= 9) {
    8005b60c:	47a5                	li	a5,9
    8005b60e:	02b7ca63          	blt	a5,a1,8005b642 <bfdec_get_int32+0x72>
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005b612:	47cd                	li	a5,19
bfdec_get_int32():
quickjs-nuttx/libbf.c:7179
        v = fast_shr_dec(a->tab[a->len - 1], LIMB_DIGITS - a->expn);
    8005b614:	6c18                	ld	a4,24(s0)
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005b616:	40b785bb          	subw	a1,a5,a1
bfdec_get_int32():
quickjs-nuttx/libbf.c:7179
        v = fast_shr_dec(a->tab[a->len - 1], LIMB_DIGITS - a->expn);
    8005b61a:	701c                	ld	a5,32(s0)
    8005b61c:	070e                	slli	a4,a4,0x3
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005b61e:	0592                	slli	a1,a1,0x4
bfdec_get_int32():
quickjs-nuttx/libbf.c:7179
        v = fast_shr_dec(a->tab[a->len - 1], LIMB_DIGITS - a->expn);
    8005b620:	97ba                	add	a5,a5,a4
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005b622:	ff87b503          	ld	a0,-8(a5)
    8005b626:	00025717          	auipc	a4,0x25
    8005b62a:	51270713          	addi	a4,a4,1298 # 80080b38 <mp_pow_div>
    8005b62e:	95ba                	add	a1,a1,a4
    8005b630:	e8cfb0ef          	jal	ra,80056cbc <fast_udiv>
bfdec_get_int32():
quickjs-nuttx/libbf.c:7179
        v = fast_shr_dec(a->tab[a->len - 1], LIMB_DIGITS - a->expn);
    8005b634:	0005079b          	sext.w	a5,a0
quickjs-nuttx/libbf.c:7180
        if (a->sign)
    8005b638:	4408                	lw	a0,8(s0)
quickjs-nuttx/libbf.c:7198
            if (a->sign)
    8005b63a:	d169                	beqz	a0,8005b5fc <bfdec_get_int32+0x2c>
quickjs-nuttx/libbf.c:7199
                v = -v;
    8005b63c:	40f007bb          	negw	a5,a5
    8005b640:	bf6d                	j	8005b5fa <bfdec_get_int32+0x2a>
quickjs-nuttx/libbf.c:7183
    } else if (a->expn == 10) {
    8005b642:	47a9                	li	a5,10
    8005b644:	02f59e63          	bne	a1,a5,8005b680 <bfdec_get_int32+0xb0>
quickjs-nuttx/libbf.c:7187
        v1 = fast_shr_dec(a->tab[a->len - 1], LIMB_DIGITS - a->expn);
    8005b648:	6c18                	ld	a4,24(s0)
    8005b64a:	701c                	ld	a5,32(s0)
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005b64c:	00025597          	auipc	a1,0x25
    8005b650:	57c58593          	addi	a1,a1,1404 # 80080bc8 <mp_pow_div+0x90>
bfdec_get_int32():
quickjs-nuttx/libbf.c:7187
        v1 = fast_shr_dec(a->tab[a->len - 1], LIMB_DIGITS - a->expn);
    8005b654:	070e                	slli	a4,a4,0x3
    8005b656:	97ba                	add	a5,a5,a4
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    8005b658:	ff87b503          	ld	a0,-8(a5)
    8005b65c:	e60fb0ef          	jal	ra,80056cbc <fast_udiv>
    8005b660:	86aa                	mv	a3,a0
bfdec_get_int32():
quickjs-nuttx/libbf.c:7192
        v_max = (uint32_t)INT32_MAX + a->sign;
    8005b662:	4408                	lw	a0,8(s0)
    8005b664:	80000737          	lui	a4,0x80000
    8005b668:	fff74713          	not	a4,a4
    8005b66c:	9f29                	addw	a4,a4,a0
    8005b66e:	0007079b          	sext.w	a5,a4
quickjs-nuttx/libbf.c:7193
        if (v1 > v_max) {
    8005b672:	1702                	slli	a4,a4,0x20
    8005b674:	9301                	srli	a4,a4,0x20
    8005b676:	00d76b63          	bltu	a4,a3,8005b68c <bfdec_get_int32+0xbc>
quickjs-nuttx/libbf.c:7197
            v = v1;
    8005b67a:	0006879b          	sext.w	a5,a3
    8005b67e:	bf75                	j	8005b63a <bfdec_get_int32+0x6a>
quickjs-nuttx/libbf.c:7203
        v = (uint32_t)INT32_MAX + a->sign;
    8005b680:	441c                	lw	a5,8(s0)
    8005b682:	80000537          	lui	a0,0x80000
    8005b686:	fff54513          	not	a0,a0
    8005b68a:	9fa9                	addw	a5,a5,a0
quickjs-nuttx/libbf.c:7195
            ret = BF_ST_OVERFLOW;
    8005b68c:	4511                	li	a0,4
    8005b68e:	b7bd                	j	8005b5fc <bfdec_get_int32+0x2c>
quickjs-nuttx/libbf.c:7173
            v = INT32_MAX;
    8005b690:	800007b7          	lui	a5,0x80000
quickjs-nuttx/libbf.c:7168
        ret = 0;
    8005b694:	4501                	li	a0,0
quickjs-nuttx/libbf.c:7173
            v = INT32_MAX;
    8005b696:	fff7c793          	not	a5,a5
    8005b69a:	b78d                	j	8005b5fc <bfdec_get_int32+0x2c>
quickjs-nuttx/libbf.c:7177
        ret = 0;
    8005b69c:	4501                	li	a0,0
quickjs-nuttx/libbf.c:7176
        v = 0;
    8005b69e:	4781                	li	a5,0
    8005b6a0:	bfb1                	j	8005b5fc <bfdec_get_int32+0x2c>

000000008005b6a2 <bfdec_pow_ui>:
bfdec_pow_ui():
quickjs-nuttx/libbf.c:7212
{
    8005b6a2:	7139                	addi	sp,sp,-64
    8005b6a4:	fc06                	sd	ra,56(sp)
    8005b6a6:	f822                	sd	s0,48(sp)
    8005b6a8:	f426                	sd	s1,40(sp)
    8005b6aa:	f04a                	sd	s2,32(sp)
    8005b6ac:	ec4e                	sd	s3,24(sp)
    8005b6ae:	e852                	sd	s4,16(sp)
    8005b6b0:	e456                	sd	s5,8(sp)
    8005b6b2:	e05a                	sd	s6,0(sp)
quickjs-nuttx/libbf.c:7215
    assert(r != a);
    8005b6b4:	00b51c63          	bne	a0,a1,8005b6cc <bfdec_pow_ui+0x2a>
quickjs-nuttx/libbf.c:7215 (discriminator 1)
    8005b6b8:	6589                	lui	a1,0x2
    8005b6ba:	4601                	li	a2,0
    8005b6bc:	c2f58593          	addi	a1,a1,-977 # 1c2f <asinh-0x7fffe3d1>
    8005b6c0:	00025517          	auipc	a0,0x25
    8005b6c4:	f0050513          	addi	a0,a0,-256 # 800805c0 <std_name.0+0x18>
    8005b6c8:	294050ef          	jal	ra,8006095c <__assert>
    8005b6cc:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:7216 (discriminator 2)
    if (b == 0)
    8005b6ce:	ee09                	bnez	a2,8005b6e8 <bfdec_pow_ui+0x46>
quickjs-nuttx/libbf.c:7226
}
    8005b6d0:	7442                	ld	s0,48(sp)
    8005b6d2:	70e2                	ld	ra,56(sp)
    8005b6d4:	74a2                	ld	s1,40(sp)
    8005b6d6:	7902                	ld	s2,32(sp)
    8005b6d8:	69e2                	ld	s3,24(sp)
    8005b6da:	6a42                	ld	s4,16(sp)
    8005b6dc:	6aa2                	ld	s5,8(sp)
    8005b6de:	6b02                	ld	s6,0(sp)
quickjs-nuttx/libbf.c:7217
        return bfdec_set_ui(r, 1);
    8005b6e0:	4585                	li	a1,1
quickjs-nuttx/libbf.c:7226
}
    8005b6e2:	6121                	addi	sp,sp,64
quickjs-nuttx/libbf.c:7217
        return bfdec_set_ui(r, 1);
    8005b6e4:	f54ff06f          	j	8005ae38 <bfdec_set_ui>
    8005b6e8:	8a2e                	mv	s4,a1
quickjs-nuttx/libbf.c:7218
    ret = bfdec_set(r, a);
    8005b6ea:	84aa                	mv	s1,a0
bfdec_set():
quickjs-nuttx/libbf.h:469
    return bf_set((bf_t *)r, (bf_t *)a);
    8005b6ec:	937fc0ef          	jal	ra,80058022 <bf_set>
    8005b6f0:	842a                	mv	s0,a0
clz64():
quickjs-nuttx/cutils.h:126
    8005b6f2:	854e                	mv	a0,s3
    8005b6f4:	fa2a80ef          	jal	ra,80003e96 <__clzdi2>
bfdec_pow_ui():
quickjs-nuttx/libbf.c:7220
    for(i = n_bits - 2; i >= 0; i--) {
    8005b6f8:	03e00913          	li	s2,62
    8005b6fc:	5afd                	li	s5,-1
    8005b6fe:	40a9093b          	subw	s2,s2,a0
quickjs-nuttx/libbf.c:7221
        ret |= bfdec_mul(r, r, r, BF_PREC_INF, BF_RNDZ);
    8005b702:	002adb13          	srli	s6,s5,0x2
quickjs-nuttx/libbf.c:7220 (discriminator 1)
    for(i = n_bits - 2; i >= 0; i--) {
    8005b706:	01591d63          	bne	s2,s5,8005b720 <bfdec_pow_ui+0x7e>
quickjs-nuttx/libbf.c:7226
}
    8005b70a:	70e2                	ld	ra,56(sp)
    8005b70c:	8522                	mv	a0,s0
    8005b70e:	7442                	ld	s0,48(sp)
    8005b710:	74a2                	ld	s1,40(sp)
    8005b712:	7902                	ld	s2,32(sp)
    8005b714:	69e2                	ld	s3,24(sp)
    8005b716:	6a42                	ld	s4,16(sp)
    8005b718:	6aa2                	ld	s5,8(sp)
    8005b71a:	6b02                	ld	s6,0(sp)
    8005b71c:	6121                	addi	sp,sp,64
    8005b71e:	8082                	ret
quickjs-nuttx/libbf.c:7221
        ret |= bfdec_mul(r, r, r, BF_PREC_INF, BF_RNDZ);
    8005b720:	4705                	li	a4,1
    8005b722:	86da                	mv	a3,s6
    8005b724:	8626                	mv	a2,s1
    8005b726:	85a6                	mv	a1,s1
    8005b728:	8526                	mv	a0,s1
    8005b72a:	fd0ff0ef          	jal	ra,8005aefa <bfdec_mul>
quickjs-nuttx/libbf.c:7222
        if ((b >> i) & 1)
    8005b72e:	0129d7b3          	srl	a5,s3,s2
quickjs-nuttx/libbf.c:7221
        ret |= bfdec_mul(r, r, r, BF_PREC_INF, BF_RNDZ);
    8005b732:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:7222
        if ((b >> i) & 1)
    8005b734:	8b85                	andi	a5,a5,1
quickjs-nuttx/libbf.c:7221
        ret |= bfdec_mul(r, r, r, BF_PREC_INF, BF_RNDZ);
    8005b736:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:7222
        if ((b >> i) & 1)
    8005b738:	cb91                	beqz	a5,8005b74c <bfdec_pow_ui+0xaa>
quickjs-nuttx/libbf.c:7223
            ret |= bfdec_mul(r, r, a, BF_PREC_INF, BF_RNDZ);
    8005b73a:	4705                	li	a4,1
    8005b73c:	86da                	mv	a3,s6
    8005b73e:	8652                	mv	a2,s4
    8005b740:	85a6                	mv	a1,s1
    8005b742:	8526                	mv	a0,s1
    8005b744:	fb6ff0ef          	jal	ra,8005aefa <bfdec_mul>
    8005b748:	8c49                	or	s0,s0,a0
    8005b74a:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:7220 (discriminator 2)
    for(i = n_bits - 2; i >= 0; i--) {
    8005b74c:	397d                	addiw	s2,s2,-1
    8005b74e:	bf65                	j	8005b706 <bfdec_pow_ui+0x64>

000000008005b750 <bf_get_fft_size>:
bf_get_fft_size():
quickjs-nuttx/libbf.c:8316
    }
    return 0;
}

int bf_get_fft_size(int *pdpl, int *pnb_mods, limb_t len)
{
    8005b750:	7119                	addi	sp,sp,-128
    8005b752:	ecce                	sd	s3,88(sp)
quickjs-nuttx/libbf.c:8330
    for(nb_mods = 3; nb_mods <= NB_MODS; nb_mods++) {
        int_bits = ntt_int_bits[NB_MODS - nb_mods];
        dpl = bf_min((int_bits - 4) / 2,
                     2 * LIMB_BITS + 2 * NTT_MOD_LOG2_MIN - NTT_MOD_LOG2_MAX);
        for(;;) {
            fft_len_log2 = ceil_log2((len * LIMB_BITS + dpl - 1) / dpl);
    8005b754:	00661993          	slli	s3,a2,0x6
quickjs-nuttx/libbf.c:8316
{
    8005b758:	f4a6                	sd	s1,104(sp)
    8005b75a:	f0ca                	sd	s2,96(sp)
    8005b75c:	e8d2                	sd	s4,80(sp)
    8005b75e:	e4d6                	sd	s5,72(sp)
    8005b760:	e0da                	sd	s6,64(sp)
    8005b762:	fc5e                	sd	s7,56(sp)
    8005b764:	f862                	sd	s8,48(sp)
    8005b766:	f466                	sd	s9,40(sp)
    8005b768:	ec6e                	sd	s11,24(sp)
    8005b76a:	8b2e                	mv	s6,a1
    8005b76c:	fc86                	sd	ra,120(sp)
    8005b76e:	f8a2                	sd	s0,112(sp)
    8005b770:	f06a                	sd	s10,32(sp)
    8005b772:	8aaa                	mv	s5,a0
    8005b774:	fff98713          	addi	a4,s3,-1
    8005b778:	00025b97          	auipc	s7,0x25
    8005b77c:	500b8b93          	addi	s7,s7,1280 # 80080c78 <ntt_int_bits>
quickjs-nuttx/libbf.c:8330
            fft_len_log2 = ceil_log2((len * LIMB_BITS + dpl - 1) / dpl);
    8005b780:	490d                	li	s2,3
quickjs-nuttx/libbf.c:8321
    min_cost = -1;
    8005b782:	5cfd                	li	s9,-1
quickjs-nuttx/libbf.c:8323
    nb_mods_found = 4;
    8005b784:	4c11                	li	s8,4
quickjs-nuttx/libbf.c:8324
    fft_len_log2_found = 0;
    8005b786:	4a01                	li	s4,0
quickjs-nuttx/libbf.c:8322
    dpl_found = 0;
    8005b788:	4481                	li	s1,0
bf_min():
quickjs-nuttx/libbf.h:188
    if (a < b)
    8005b78a:	17700693          	li	a3,375
bf_get_fft_size():
quickjs-nuttx/libbf.c:8327
        dpl = bf_min((int_bits - 4) / 2,
    8005b78e:	4589                	li	a1,2
quickjs-nuttx/libbf.c:8325
    for(nb_mods = 3; nb_mods <= NB_MODS; nb_mods++) {
    8005b790:	4d99                	li	s11,6
quickjs-nuttx/libbf.c:8326
        int_bits = ntt_int_bits[NB_MODS - nb_mods];
    8005b792:	008bad03          	lw	s10,8(s7)
    8005b796:	0009081b          	sext.w	a6,s2
bf_min():
quickjs-nuttx/libbf.c:8327
        dpl = bf_min((int_bits - 4) / 2,
    8005b79a:	0bc00413          	li	s0,188
bf_get_fft_size():
quickjs-nuttx/libbf.c:8327
    8005b79e:	ffcd051b          	addiw	a0,s10,-4
bf_min():
quickjs-nuttx/libbf.h:188
    8005b7a2:	00a6c463          	blt	a3,a0,8005b7aa <bf_get_fft_size+0x5a>
bf_get_fft_size():
quickjs-nuttx/libbf.c:8327
    8005b7a6:	02b5443b          	divw	s0,a0,a1
quickjs-nuttx/libbf.c:8330
            fft_len_log2 = ceil_log2((len * LIMB_BITS + dpl - 1) / dpl);
    8005b7aa:	00e40533          	add	a0,s0,a4
    8005b7ae:	e03a                	sd	a4,0(sp)
    8005b7b0:	e442                	sd	a6,8(sp)
    8005b7b2:	02855533          	divu	a0,a0,s0
    8005b7b6:	f72fb0ef          	jal	ra,80056f28 <ceil_log2>
quickjs-nuttx/libbf.c:8331
            if (fft_len_log2 > NTT_PROOT_2EXP)
    8005b7ba:	03300613          	li	a2,51
    8005b7be:	6702                	ld	a4,0(sp)
    8005b7c0:	17700693          	li	a3,375
    8005b7c4:	4589                	li	a1,2
    8005b7c6:	02a64463          	blt	a2,a0,8005b7ee <bf_get_fft_size+0x9e>
quickjs-nuttx/libbf.c:8333
                goto next;
            n_bits = fft_len_log2 + 2 * dpl;
    8005b7ca:	0014179b          	slliw	a5,s0,0x1
quickjs-nuttx/libbf.c:8334
            if (n_bits <= int_bits) {
    8005b7ce:	9fa9                	addw	a5,a5,a0
    8005b7d0:	6822                	ld	a6,8(sp)
    8005b7d2:	02fd4563          	blt	s10,a5,8005b7fc <bf_get_fft_size+0xac>
quickjs-nuttx/libbf.c:8335
                cost = ((limb_t)(fft_len_log2 + 1) << fft_len_log2) * nb_mods;
    8005b7d6:	0015079b          	addiw	a5,a0,1
    8005b7da:	00a797b3          	sll	a5,a5,a0
    8005b7de:	032787b3          	mul	a5,a5,s2
quickjs-nuttx/libbf.c:8337
                //                printf("n=%d dpl=%d: cost=%" PRId64 "\n", nb_mods, dpl, (int64_t)cost);
                if (cost < min_cost) {
    8005b7e2:	0197f663          	bgeu	a5,s9,8005b7ee <bf_get_fft_size+0x9e>
    8005b7e6:	8cbe                	mv	s9,a5
    8005b7e8:	8c42                	mv	s8,a6
quickjs-nuttx/libbf.c:8330
            fft_len_log2 = ceil_log2((len * LIMB_BITS + dpl - 1) / dpl);
    8005b7ea:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:8337
                if (cost < min_cost) {
    8005b7ec:	84a2                	mv	s1,s0
quickjs-nuttx/libbf.c:8325 (discriminator 2)
    for(nb_mods = 3; nb_mods <= NB_MODS; nb_mods++) {
    8005b7ee:	0905                	addi	s2,s2,1
    8005b7f0:	1bf1                	addi	s7,s7,-4
    8005b7f2:	fbb910e3          	bne	s2,s11,8005b792 <bf_get_fft_size+0x42>
quickjs-nuttx/libbf.c:8351
            if (dpl == 0)
                break;
        }
    next: ;
    }
    if (!dpl_found)
    8005b7f6:	e491                	bnez	s1,8005b802 <bf_get_fft_size+0xb2>
quickjs-nuttx/libbf.c:8352
        abort();
    8005b7f8:	38a070ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/libbf.c:8345
            dpl--;
    8005b7fc:	347d                	addiw	s0,s0,-1
quickjs-nuttx/libbf.c:8346
            if (dpl == 0)
    8005b7fe:	f455                	bnez	s0,8005b7aa <bf_get_fft_size+0x5a>
quickjs-nuttx/libbf.c:8349
    next: ;
    8005b800:	b7fd                	j	8005b7ee <bf_get_fft_size+0x9e>
quickjs-nuttx/libbf.c:8354
    /* limit dpl if possible to reduce fixed cost of limb/NTT conversion */
    if (dpl_found > (LIMB_BITS + NTT_MOD_LOG2_MIN) &&
    8005b802:	07d00793          	li	a5,125
    8005b806:	0097d863          	bge	a5,s1,8005b816 <bf_get_fft_size+0xc6>
quickjs-nuttx/libbf.c:8355 (discriminator 1)
        ((limb_t)(LIMB_BITS + NTT_MOD_LOG2_MIN) << fft_len_log2_found) >=
    8005b80a:	014797b3          	sll	a5,a5,s4
quickjs-nuttx/libbf.c:8354 (discriminator 1)
    if (dpl_found > (LIMB_BITS + NTT_MOD_LOG2_MIN) &&
    8005b80e:	0137e463          	bltu	a5,s3,8005b816 <bf_get_fft_size+0xc6>
quickjs-nuttx/libbf.c:8357
        len * LIMB_BITS) {
        dpl_found = LIMB_BITS + NTT_MOD_LOG2_MIN;
    8005b812:	07d00493          	li	s1,125
quickjs-nuttx/libbf.c:8362
    }
    *pnb_mods = nb_mods_found;
    *pdpl = dpl_found;
    return fft_len_log2_found;
}
    8005b816:	70e6                	ld	ra,120(sp)
    8005b818:	7446                	ld	s0,112(sp)
quickjs-nuttx/libbf.c:8359
    *pnb_mods = nb_mods_found;
    8005b81a:	018b2023          	sw	s8,0(s6)
quickjs-nuttx/libbf.c:8360
    *pdpl = dpl_found;
    8005b81e:	009aa023          	sw	s1,0(s5)
quickjs-nuttx/libbf.c:8362
}
    8005b822:	7906                	ld	s2,96(sp)
    8005b824:	74a6                	ld	s1,104(sp)
    8005b826:	69e6                	ld	s3,88(sp)
    8005b828:	6aa6                	ld	s5,72(sp)
    8005b82a:	6b06                	ld	s6,64(sp)
    8005b82c:	7be2                	ld	s7,56(sp)
    8005b82e:	7c42                	ld	s8,48(sp)
    8005b830:	7ca2                	ld	s9,40(sp)
    8005b832:	7d02                	ld	s10,32(sp)
    8005b834:	6de2                	ld	s11,24(sp)
    8005b836:	8552                	mv	a0,s4
    8005b838:	6a46                	ld	s4,80(sp)
    8005b83a:	6109                	addi	sp,sp,128
    8005b83c:	8082                	ret

000000008005b83e <fft_mul>:
fft_mul():
quickjs-nuttx/libbf.c:8368

/* return 0 if OK, -1 if memory error */
static no_inline int fft_mul(bf_context_t *s1,
                             bf_t *res, limb_t *a_tab, limb_t a_len,
                             limb_t *b_tab, limb_t b_len, int mul_flags)
{
    8005b83e:	7155                	addi	sp,sp,-208
    8005b840:	e1a2                	sd	s0,192(sp)
    8005b842:	fd26                	sd	s1,184(sp)
    8005b844:	f54e                	sd	s3,168(sp)
    8005b846:	f152                	sd	s4,160(sp)
    8005b848:	ed56                	sd	s5,152(sp)
    8005b84a:	e95a                	sd	s6,144(sp)
    8005b84c:	e586                	sd	ra,200(sp)
    8005b84e:	f94a                	sd	s2,176(sp)
    8005b850:	e55e                	sd	s7,136(sp)
    8005b852:	e162                	sd	s8,128(sp)
    8005b854:	fce6                	sd	s9,120(sp)
    8005b856:	f8ea                	sd	s10,112(sp)
    8005b858:	f4ee                	sd	s11,104(sp)
    8005b85a:	89be                	mv	s3,a5
ntt_static_init():
quickjs-nuttx/libbf.c:8259
    if (s1->ntt_state)
    8005b85c:	793c                	ld	a5,112(a0)
fft_mul():
quickjs-nuttx/libbf.c:8368
{
    8005b85e:	e032                	sd	a2,0(sp)
    8005b860:	8b2a                	mv	s6,a0
    8005b862:	84ae                	mv	s1,a1
    8005b864:	8ab6                	mv	s5,a3
    8005b866:	8a3a                	mv	s4,a4
    8005b868:	8442                	mv	s0,a6
ntt_static_init():
quickjs-nuttx/libbf.c:8259
    if (s1->ntt_state)
    8005b86a:	cf8d                	beqz	a5,8005b8a4 <fft_mul+0x66>
fft_mul():
quickjs-nuttx/libbf.c:8382
    if (ntt_static_init(s1))
        return -1;
    s = s1->ntt_state;
    
    /* find the optimal number of digits per limb (dpl) */
    len = a_len + b_len;
    8005b86c:	013a8d33          	add	s10,s5,s3
quickjs-nuttx/libbf.c:8383
    fft_len_log2 = bf_get_fft_size(&dpl, &nb_mods, len);
    8005b870:	866a                	mv	a2,s10
    8005b872:	08ec                	addi	a1,sp,92
    8005b874:	08a8                	addi	a0,sp,88
quickjs-nuttx/libbf.c:8379
    s = s1->ntt_state;
    8005b876:	070b3c03          	ld	s8,112(s6)
quickjs-nuttx/libbf.c:8384
    fft_len = (uint64_t)1 << fft_len_log2;
    8005b87a:	4d85                	li	s11,1
quickjs-nuttx/libbf.c:8383
    fft_len_log2 = bf_get_fft_size(&dpl, &nb_mods, len);
    8005b87c:	ed5ff0ef          	jal	ra,8005b750 <bf_get_fft_size>
quickjs-nuttx/libbf.c:8390
    //    printf("len=%" PRId64 " fft_len_log2=%d dpl=%d\n", len, fft_len_log2, dpl);
#if defined(USE_MUL_CHECK)
    ha = mp_mod1(a_tab, a_len, BF_CHKSUM_MOD, 0);
    hb = mp_mod1(b_tab, b_len, BF_CHKSUM_MOD, 0);
#endif
    if ((mul_flags & (FFT_MUL_R_OVERLAP_A | FFT_MUL_R_OVERLAP_B)) == 0) {
    8005b880:	00347913          	andi	s2,s0,3
quickjs-nuttx/libbf.c:8383
    fft_len_log2 = bf_get_fft_size(&dpl, &nb_mods, len);
    8005b884:	8b2a                	mv	s6,a0
quickjs-nuttx/libbf.c:8384
    fft_len = (uint64_t)1 << fft_len_log2;
    8005b886:	00ad9db3          	sll	s11,s11,a0
quickjs-nuttx/libbf.c:8390
    if ((mul_flags & (FFT_MUL_R_OVERLAP_A | FFT_MUL_R_OVERLAP_B)) == 0) {
    8005b88a:	1e090663          	beqz	s2,8005ba76 <fft_mul+0x238>
quickjs-nuttx/libbf.c:8393
        if (!(mul_flags & FFT_MUL_R_NORESIZE))
            bf_resize(res, 0);
    } else if (mul_flags & FFT_MUL_R_OVERLAP_B) {
    8005b88e:	00247793          	andi	a5,s0,2
    8005b892:	1e078963          	beqz	a5,8005ba84 <fft_mul+0x246>
    8005b896:	87d6                	mv	a5,s5
quickjs-nuttx/libbf.c:8400
        /* it is better to free 'b' first */
        tmp_tab = a_tab;
        a_tab = b_tab;
        b_tab = tmp_tab;
        tmp_len = a_len;
        a_len = b_len;
    8005b898:	8ace                	mv	s5,s3
quickjs-nuttx/libbf.c:8401
        b_len = tmp_len;
    8005b89a:	89be                	mv	s3,a5
    8005b89c:	6782                	ld	a5,0(sp)
quickjs-nuttx/libbf.c:8397
        a_tab = b_tab;
    8005b89e:	e052                	sd	s4,0(sp)
quickjs-nuttx/libbf.c:8398
        b_tab = tmp_tab;
    8005b8a0:	8a3e                	mv	s4,a5
    8005b8a2:	a2cd                	j	8005ba84 <fft_mul+0x246>
ntt_static_init():
quickjs-nuttx/libbf.c:8264
    s = bf_malloc(s1, sizeof(*s));
    8005b8a4:	6c0d                	lui	s8,0x3
    8005b8a6:	780c0593          	addi	a1,s8,1920 # 3780 <asinh-0x7fffc880>
    8005b8aa:	9eefb0ef          	jal	ra,80056a98 <bf_malloc>
    8005b8ae:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:8266
    if (!s)
    8005b8b0:	e119                	bnez	a0,8005b8b6 <fft_mul+0x78>
fft_mul():
quickjs-nuttx/libbf.c:8463
#endif    
    return 0;
 fail:
    ntt_free(s, buf1);
    ntt_free(s, buf2);
    return -1;
    8005b8b2:	557d                	li	a0,-1
    8005b8b4:	ac49                	j	8005bb46 <fft_mul+0x308>
ntt_static_init():
quickjs-nuttx/libbf.c:8268
    memset(s, 0, sizeof(*s));
    8005b8b6:	780c0613          	addi	a2,s8,1920
    8005b8ba:	4581                	li	a1,0
    8005b8bc:	386080ef          	jal	ra,80063c42 <memset>
init_mul_mod_fast():
quickjs-nuttx/libbf.c:7428
    assert(m < (limb_t)1 << NTT_MOD_LOG2_MAX);
    8005b8c0:	57fd                	li	a5,-1
quickjs-nuttx/libbf.c:7429
    assert(m >= (limb_t)1 << NTT_MOD_LOG2_MIN);
    8005b8c2:	838d                	srli	a5,a5,0x3
    8005b8c4:	e83e                	sd	a5,16(sp)
    8005b8c6:	6789                	lui	a5,0x2
    8005b8c8:	6f078793          	addi	a5,a5,1776 # 26f0 <asinh-0x7fffd910>
    8005b8cc:	ec3e                	sd	a5,24(sp)
ntt_static_init():
quickjs-nuttx/libbf.c:8292
                s->ntt_proot_pow_inv[j][inverse][NTT_PROOT_2EXP - i] =
    8005b8ce:	6785                	lui	a5,0x1
quickjs-nuttx/libbf.c:8269
    s1->ntt_state = s;
    8005b8d0:	072b3823          	sd	s2,112(s6)
quickjs-nuttx/libbf.c:8292
                s->ntt_proot_pow_inv[j][inverse][NTT_PROOT_2EXP - i] =
    8005b8d4:	20878793          	addi	a5,a5,520 # 1208 <asinh-0x7fffedf8>
quickjs-nuttx/libbf.c:8270
    s->ctx = s1;
    8005b8d8:	01693023          	sd	s6,0(s2)
quickjs-nuttx/libbf.c:8272
    for(j = 0; j < NB_MODS; j++) {
    8005b8dc:	8cca                	mv	s9,s2
quickjs-nuttx/libbf.c:8270
    s->ctx = s1;
    8005b8de:	4d81                	li	s11,0
quickjs-nuttx/libbf.c:8292
                s->ntt_proot_pow_inv[j][inverse][NTT_PROOT_2EXP - i] =
    8005b8e0:	f03e                	sd	a5,32(sp)
quickjs-nuttx/libbf.c:8273
        m = ntt_mods[j];
    8005b8e2:	00025797          	auipc	a5,0x25
    8005b8e6:	3ae78793          	addi	a5,a5,942 # 80080c90 <ntt_mods>
    8005b8ea:	97ee                	add	a5,a5,s11
    8005b8ec:	0007bb83          	ld	s7,0(a5)
init_mul_mod_fast():
quickjs-nuttx/libbf.c:7428
    assert(m < (limb_t)1 << NTT_MOD_LOG2_MAX);
    8005b8f0:	57fd                	li	a5,-1
    8005b8f2:	8389                	srli	a5,a5,0x2
    8005b8f4:	0177fc63          	bgeu	a5,s7,8005b90c <fft_mul+0xce>
    8005b8f8:	6589                	lui	a1,0x2
    8005b8fa:	4601                	li	a2,0
    8005b8fc:	d0458593          	addi	a1,a1,-764 # 1d04 <asinh-0x7fffe2fc>
quickjs-nuttx/libbf.c:7429
    assert(m >= (limb_t)1 << NTT_MOD_LOG2_MIN);
    8005b900:	00025517          	auipc	a0,0x25
    8005b904:	cc050513          	addi	a0,a0,-832 # 800805c0 <std_name.0+0x18>
    8005b908:	054050ef          	jal	ra,8006095c <__assert>
    8005b90c:	67c2                	ld	a5,16(sp)
    8005b90e:	0177e763          	bltu	a5,s7,8005b91c <fft_mul+0xde>
    8005b912:	6589                	lui	a1,0x2
    8005b914:	4601                	li	a2,0
    8005b916:	d0558593          	addi	a1,a1,-763 # 1d05 <asinh-0x7fffe2fb>
    8005b91a:	b7dd                	j	8005b900 <fft_mul+0xc2>
quickjs-nuttx/libbf.c:7431
    return t / m;
    8005b91c:	00025797          	auipc	a5,0x25
    8005b920:	e7478793          	addi	a5,a5,-396 # 80080790 <std_name.0+0x1e8>
    8005b924:	6388                	ld	a0,0(a5)
    8005b926:	678c                	ld	a1,8(a5)
    8005b928:	865e                	mv	a2,s7
    8005b92a:	4681                	li	a3,0
    8005b92c:	ce7a80ef          	jal	ra,80004612 <__udivti3>
ntt_static_init():
quickjs-nuttx/libbf.c:8275
        s->ntt_mods_div[j] = m_inv;
    8005b930:	01b907b3          	add	a5,s2,s11
quickjs-nuttx/libbf.c:8280
        c_inv2 = (m + 1) / 2; /* 1/2 */
    8005b934:	001b8d13          	addi	s10,s7,1
quickjs-nuttx/libbf.c:8275
        s->ntt_mods_div[j] = m_inv;
    8005b938:	e788                	sd	a0,8(a5)
quickjs-nuttx/libbf.c:8280
        c_inv2 = (m + 1) / 2; /* 1/2 */
    8005b93a:	001d5793          	srli	a5,s10,0x1
    8005b93e:	e43e                	sd	a5,8(sp)
    8005b940:	67e2                	ld	a5,24(sp)
init_mul_mod_fast():
quickjs-nuttx/libbf.c:7431
    return t / m;
    8005b942:	8c2a                	mv	s8,a0
ntt_static_init():
quickjs-nuttx/libbf.c:8280
        c_inv2 = (m + 1) / 2; /* 1/2 */
    8005b944:	03400893          	li	a7,52
    8005b948:	00fc8d33          	add	s10,s9,a5
quickjs-nuttx/libbf.c:8281
        c_inv = 1;
    8005b94c:	4785                	li	a5,1
quickjs-nuttx/libbf.c:8283
            s->ntt_len_inv[j][i][0] = c_inv;
    8005b94e:	00fd3023          	sd	a5,0(s10)
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005b952:	865e                	mv	a2,s7
    8005b954:	4681                	li	a3,0
    8005b956:	85be                	mv	a1,a5
    8005b958:	4501                	li	a0,0
    8005b95a:	f846                	sd	a7,48(sp)
    8005b95c:	f43e                	sd	a5,40(sp)
    8005b95e:	cb5a80ef          	jal	ra,80004612 <__udivti3>
mul_mod_fast():
quickjs-nuttx/libbf.c:7421
    r = (dlimb_t)a * (dlimb_t)b;
    8005b962:	77a2                	ld	a5,40(sp)
    8005b964:	6722                	ld	a4,8(sp)
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005b966:	00ad3423          	sd	a0,8(s10)
mul_mod_fast():
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    8005b96a:	86e2                	mv	a3,s8
quickjs-nuttx/libbf.c:7421
    r = (dlimb_t)a * (dlimb_t)b;
    8005b96c:	02e7b5b3          	mulhu	a1,a5,a4
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    8005b970:	865e                	mv	a2,s7
ntt_static_init():
quickjs-nuttx/libbf.c:8282
        for(i = 0; i <= NTT_PROOT_2EXP; i++) {
    8005b972:	0d41                	addi	s10,s10,16
mul_mod_fast():
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    8005b974:	02e78533          	mul	a0,a5,a4
    8005b978:	bfafb0ef          	jal	ra,80056d72 <mod_fast>
ntt_static_init():
quickjs-nuttx/libbf.c:8282
        for(i = 0; i <= NTT_PROOT_2EXP; i++) {
    8005b97c:	78c2                	ld	a7,48(sp)
mul_mod_fast():
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    8005b97e:	87aa                	mv	a5,a0
ntt_static_init():
quickjs-nuttx/libbf.c:8282
        for(i = 0; i <= NTT_PROOT_2EXP; i++) {
    8005b980:	38fd                	addiw	a7,a7,-1
    8005b982:	fc0896e3          	bnez	a7,8005b94e <fft_mul+0x110>
    8005b986:	00025797          	auipc	a5,0x25
    8005b98a:	38278793          	addi	a5,a5,898 # 80080d08 <ntt_proot>
    8005b98e:	01b788b3          	add	a7,a5,s11
    8005b992:	8866                	mv	a6,s9
    8005b994:	4e09                	li	t3,2
quickjs-nuttx/libbf.c:8289
            c = ntt_proot[inverse][j];
    8005b996:	0008bd03          	ld	s10,0(a7)
    8005b99a:	87c2                	mv	a5,a6
    8005b99c:	03300313          	li	t1,51
quickjs-nuttx/libbf.c:8292
                s->ntt_proot_pow_inv[j][inverse][NTT_PROOT_2EXP - i] =
    8005b9a0:	7702                	ld	a4,32(sp)
quickjs-nuttx/libbf.c:8291
                s->ntt_proot_pow[j][inverse][NTT_PROOT_2EXP - i] = c;
    8005b9a2:	1da7b423          	sd	s10,456(a5)
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005b9a6:	865e                	mv	a2,s7
ntt_static_init():
quickjs-nuttx/libbf.c:8292
                s->ntt_proot_pow_inv[j][inverse][NTT_PROOT_2EXP - i] =
    8005b9a8:	00e78eb3          	add	t4,a5,a4
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005b9ac:	4681                	li	a3,0
    8005b9ae:	85ea                	mv	a1,s10
    8005b9b0:	4501                	li	a0,0
    8005b9b2:	e49a                	sd	t1,72(sp)
    8005b9b4:	e0f2                	sd	t3,64(sp)
    8005b9b6:	fc46                	sd	a7,56(sp)
    8005b9b8:	f842                	sd	a6,48(sp)
ntt_static_init():
quickjs-nuttx/libbf.c:8292
                s->ntt_proot_pow_inv[j][inverse][NTT_PROOT_2EXP - i] =
    8005b9ba:	f43e                	sd	a5,40(sp)
    8005b9bc:	e476                	sd	t4,8(sp)
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005b9be:	c55a80ef          	jal	ra,80004612 <__udivti3>
    8005b9c2:	6ea2                	ld	t4,8(sp)
mul_mod_fast():
quickjs-nuttx/libbf.c:7421
    r = (dlimb_t)a * (dlimb_t)b;
    8005b9c4:	03ad35b3          	mulhu	a1,s10,s10
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    8005b9c8:	86e2                	mv	a3,s8
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005b9ca:	00aeb023          	sd	a0,0(t4)
mul_mod_fast():
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    8005b9ce:	865e                	mv	a2,s7
    8005b9d0:	03ad0533          	mul	a0,s10,s10
    8005b9d4:	b9efb0ef          	jal	ra,80056d72 <mod_fast>
ntt_static_init():
quickjs-nuttx/libbf.c:8290
            for(i = 0; i < NTT_PROOT_2EXP; i++) {
    8005b9d8:	6326                	ld	t1,72(sp)
    8005b9da:	77a2                	ld	a5,40(sp)
    8005b9dc:	7842                	ld	a6,48(sp)
    8005b9de:	337d                	addiw	t1,t1,-1
    8005b9e0:	78e2                	ld	a7,56(sp)
    8005b9e2:	6e06                	ld	t3,64(sp)
mul_mod_fast():
quickjs-nuttx/libbf.c:7422
    return mod_fast(r, m, m_inv);
    8005b9e4:	8d2a                	mv	s10,a0
ntt_static_init():
quickjs-nuttx/libbf.c:8290
            for(i = 0; i < NTT_PROOT_2EXP; i++) {
    8005b9e6:	17e1                	addi	a5,a5,-8
    8005b9e8:	fa031ce3          	bnez	t1,8005b9a0 <fft_mul+0x162>
quickjs-nuttx/libbf.c:8288
        for(inverse = 0; inverse < 2; inverse++) {
    8005b9ec:	4785                	li	a5,1
    8005b9ee:	02888893          	addi	a7,a7,40
    8005b9f2:	1a080813          	addi	a6,a6,416
    8005b9f6:	06fe1e63          	bne	t3,a5,8005ba72 <fft_mul+0x234>
quickjs-nuttx/libbf.c:8272
    for(j = 0; j < NB_MODS; j++) {
    8005b9fa:	0da1                	addi	s11,s11,8
    8005b9fc:	02800793          	li	a5,40
    8005ba00:	340c8c93          	addi	s9,s9,832
    8005ba04:	ecfd9fe3          	bne	s11,a5,8005b8e2 <fft_mul+0xa4>
quickjs-nuttx/libbf.c:8299
    l = 0;
    8005ba08:	4781                	li	a5,0
quickjs-nuttx/libbf.c:8300
    for(j = 0; j < NB_MODS - 1; j++) {
    8005ba0a:	4c01                	li	s8,0
quickjs-nuttx/libbf.c:8306
            s->ntt_mods_cr_inv[l] = init_mul_mod_fast2(ntt_mods_cr[l],
    8005ba0c:	00025317          	auipc	t1,0x25
    8005ba10:	2ac30313          	addi	t1,t1,684 # 80080cb8 <ntt_mods_cr>
quickjs-nuttx/libbf.c:8301
        for(k = j + 1; k < NB_MODS; k++) {
    8005ba14:	8762                	mv	a4,s8
    8005ba16:	2c05                	addiw	s8,s8,1
    8005ba18:	8d62                	mv	s10,s8
    8005ba1a:	8dbe                	mv	s11,a5
    8005ba1c:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:8306
            s->ntt_mods_cr_inv[l] = init_mul_mod_fast2(ntt_mods_cr[l],
    8005ba1e:	003d9593          	slli	a1,s11,0x3
    8005ba22:	00025797          	auipc	a5,0x25
    8005ba26:	26e78793          	addi	a5,a5,622 # 80080c90 <ntt_mods>
    8005ba2a:	003d1693          	slli	a3,s10,0x3
    8005ba2e:	96be                	add	a3,a3,a5
    8005ba30:	959a                	add	a1,a1,t1
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005ba32:	6290                	ld	a2,0(a3)
    8005ba34:	618c                	ld	a1,0(a1)
ntt_static_init():
quickjs-nuttx/libbf.c:8306
            s->ntt_mods_cr_inv[l] = init_mul_mod_fast2(ntt_mods_cr[l],
    8005ba36:	6e6d8c93          	addi	s9,s11,1766
    8005ba3a:	0c8e                	slli	s9,s9,0x3
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005ba3c:	4681                	li	a3,0
    8005ba3e:	4501                	li	a0,0
    8005ba40:	e83a                	sd	a4,16(sp)
ntt_static_init():
quickjs-nuttx/libbf.c:8306
            s->ntt_mods_cr_inv[l] = init_mul_mod_fast2(ntt_mods_cr[l],
    8005ba42:	9cca                	add	s9,s9,s2
init_mul_mod_fast2():
quickjs-nuttx/libbf.c:7463
    return ((dlimb_t)b << LIMB_BITS) / m;
    8005ba44:	bcfa80ef          	jal	ra,80004612 <__udivti3>
    8005ba48:	00acb023          	sd	a0,0(s9)
ntt_static_init():
quickjs-nuttx/libbf.c:8301
        for(k = j + 1; k < NB_MODS; k++) {
    8005ba4c:	2d05                	addiw	s10,s10,1
    8005ba4e:	4e15                	li	t3,5
    8005ba50:	67a2                	ld	a5,8(sp)
    8005ba52:	6742                	ld	a4,16(sp)
quickjs-nuttx/libbf.c:8309
            l++;
    8005ba54:	2d85                	addiw	s11,s11,1
quickjs-nuttx/libbf.c:8301
        for(k = j + 1; k < NB_MODS; k++) {
    8005ba56:	00025317          	auipc	t1,0x25
    8005ba5a:	26230313          	addi	t1,t1,610 # 80080cb8 <ntt_mods_cr>
    8005ba5e:	4891                	li	a7,4
    8005ba60:	4811                	li	a6,4
    8005ba62:	fbcd1de3          	bne	s10,t3,8005ba1c <fft_mul+0x1de>
quickjs-nuttx/libbf.c:8309
            l++;
    8005ba66:	40e8873b          	subw	a4,a7,a4
    8005ba6a:	9fb9                	addw	a5,a5,a4
quickjs-nuttx/libbf.c:8300
    for(j = 0; j < NB_MODS - 1; j++) {
    8005ba6c:	fb0c14e3          	bne	s8,a6,8005ba14 <fft_mul+0x1d6>
    8005ba70:	bbf5                	j	8005b86c <fft_mul+0x2e>
    8005ba72:	4e05                	li	t3,1
    8005ba74:	b70d                	j	8005b996 <fft_mul+0x158>
fft_mul():
quickjs-nuttx/libbf.c:8391
        if (!(mul_flags & FFT_MUL_R_NORESIZE))
    8005ba76:	00447793          	andi	a5,s0,4
    8005ba7a:	e789                	bnez	a5,8005ba84 <fft_mul+0x246>
quickjs-nuttx/libbf.c:8392
            bf_resize(res, 0);
    8005ba7c:	4581                	li	a1,0
    8005ba7e:	8526                	mv	a0,s1
    8005ba80:	904fc0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:8403
    buf1 = ntt_malloc(s, sizeof(NTTLimb) * fft_len * nb_mods);
    8005ba84:	45f6                	lw	a1,92(sp)
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    8005ba86:	000c3503          	ld	a0,0(s8)
fft_mul():
quickjs-nuttx/libbf.c:8403
    buf1 = ntt_malloc(s, sizeof(NTTLimb) * fft_len * nb_mods);
    8005ba8a:	016595b3          	sll	a1,a1,s6
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    8005ba8e:	058e                	slli	a1,a1,0x3
    8005ba90:	808fb0ef          	jal	ra,80056a98 <bf_malloc>
    8005ba94:	8caa                	mv	s9,a0
fft_mul():
quickjs-nuttx/libbf.c:8404
    if (!buf1)
    8005ba96:	e0050ee3          	beqz	a0,8005b8b2 <fft_mul+0x74>
quickjs-nuttx/libbf.c:8406
    limb_to_ntt(s, buf1, fft_len, a_tab, a_len, dpl,
    8005ba9a:	48f6                	lw	a7,92(sp)
    8005ba9c:	47e6                	lw	a5,88(sp)
    8005ba9e:	6682                	ld	a3,0(sp)
    8005baa0:	4815                	li	a6,5
    8005baa2:	85aa                	mv	a1,a0
    8005baa4:	4118083b          	subw	a6,a6,a7
    8005baa8:	8756                	mv	a4,s5
    8005baaa:	866e                	mv	a2,s11
    8005baac:	8562                	mv	a0,s8
    8005baae:	b0cfb0ef          	jal	ra,80056dba <limb_to_ntt>
quickjs-nuttx/libbf.c:8408
    if ((mul_flags & (FFT_MUL_R_OVERLAP_A | FFT_MUL_R_OVERLAP_B)) == 
    8005bab2:	4785                	li	a5,1
    8005bab4:	00f91963          	bne	s2,a5,8005bac6 <fft_mul+0x288>
quickjs-nuttx/libbf.c:8410
        if (!(mul_flags & FFT_MUL_R_NORESIZE))
    8005bab8:	00447793          	andi	a5,s0,4
    8005babc:	e789                	bnez	a5,8005bac6 <fft_mul+0x288>
quickjs-nuttx/libbf.c:8411
            bf_resize(res, 0);
    8005babe:	4581                	li	a1,0
    8005bac0:	8526                	mv	a0,s1
    8005bac2:	8c2fc0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:8414
    if (!reduced_mem) {
    8005bac6:	47b5                	li	a5,13
    8005bac8:	000c3503          	ld	a0,0(s8)
    8005bacc:	0967cc63          	blt	a5,s6,8005bb64 <fft_mul+0x326>
quickjs-nuttx/libbf.c:8415
        buf2 = ntt_malloc(s, sizeof(NTTLimb) * fft_len * nb_mods);
    8005bad0:	45f6                	lw	a1,92(sp)
    8005bad2:	016595b3          	sll	a1,a1,s6
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    8005bad6:	058e                	slli	a1,a1,0x3
    8005bad8:	fc1fa0ef          	jal	ra,80056a98 <bf_malloc>
    8005badc:	892a                	mv	s2,a0
fft_mul():
quickjs-nuttx/libbf.c:8416
        if (!buf2)
    8005bade:	c951                	beqz	a0,8005bb72 <fft_mul+0x334>
quickjs-nuttx/libbf.c:8418
        limb_to_ntt(s, buf2, fft_len, b_tab, b_len, dpl,
    8005bae0:	48f6                	lw	a7,92(sp)
    8005bae2:	47e6                	lw	a5,88(sp)
    8005bae4:	4815                	li	a6,5
    8005bae6:	85aa                	mv	a1,a0
    8005bae8:	4118083b          	subw	a6,a6,a7
    8005baec:	874e                	mv	a4,s3
    8005baee:	86d2                	mv	a3,s4
    8005baf0:	866e                	mv	a2,s11
    8005baf2:	8562                	mv	a0,s8
    8005baf4:	ac6fb0ef          	jal	ra,80056dba <limb_to_ntt>
quickjs-nuttx/libbf.c:8420
        if (!(mul_flags & FFT_MUL_R_NORESIZE))
    8005baf8:	00447793          	andi	a5,s0,4
    8005bafc:	e789                	bnez	a5,8005bb06 <fft_mul+0x2c8>
quickjs-nuttx/libbf.c:8421
            bf_resize(res, 0); /* in case res == b */
    8005bafe:	4581                	li	a1,0
    8005bb00:	8526                	mv	a0,s1
    8005bb02:	882fc0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:8427
    for(j = 0; j < nb_mods; j++) {
    8005bb06:	4b81                	li	s7,0
quickjs-nuttx/libbf.c:8429
            limb_to_ntt(s, buf2, fft_len, b_tab, b_len, dpl,
    8005bb08:	4a95                	li	s5,5
quickjs-nuttx/libbf.c:8427 (discriminator 1)
    for(j = 0; j < nb_mods; j++) {
    8005bb0a:	4876                	lw	a6,92(sp)
    8005bb0c:	070bcf63          	blt	s7,a6,8005bb8a <fft_mul+0x34c>
quickjs-nuttx/libbf.c:8439
    if (!(mul_flags & FFT_MUL_R_NORESIZE))
    8005bb10:	8811                	andi	s0,s0,4
    8005bb12:	e409                	bnez	s0,8005bb1c <fft_mul+0x2de>
quickjs-nuttx/libbf.c:8440
        bf_resize(res, 0); /* in case res == b and reduced mem */
    8005bb14:	4581                	li	a1,0
    8005bb16:	8526                	mv	a0,s1
    8005bb18:	86cfc0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:8441
    ntt_free(s, buf2);
    8005bb1c:	000c3503          	ld	a0,0(s8)
    8005bb20:	85ca                	mv	a1,s2
    8005bb22:	edcfb0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:8443
    if (!(mul_flags & FFT_MUL_R_NORESIZE)) {
    8005bb26:	c84d                	beqz	s0,8005bbd8 <fft_mul+0x39a>
quickjs-nuttx/libbf.c:8447
    ntt_to_limb(s, res->tab, len, buf1, fft_len_log2, dpl, nb_mods);
    8005bb28:	4876                	lw	a6,92(sp)
    8005bb2a:	47e6                	lw	a5,88(sp)
    8005bb2c:	708c                	ld	a1,32(s1)
    8005bb2e:	875a                	mv	a4,s6
    8005bb30:	86e6                	mv	a3,s9
    8005bb32:	866a                	mv	a2,s10
    8005bb34:	8562                	mv	a0,s8
    8005bb36:	eccfb0ef          	jal	ra,80057202 <ntt_to_limb>
quickjs-nuttx/libbf.c:8448
    ntt_free(s, buf1);
    8005bb3a:	000c3503          	ld	a0,0(s8)
    8005bb3e:	85e6                	mv	a1,s9
    8005bb40:	ebefb0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:8459
    return 0;
    8005bb44:	4501                	li	a0,0
quickjs-nuttx/libbf.c:8464
}
    8005bb46:	60ae                	ld	ra,200(sp)
    8005bb48:	640e                	ld	s0,192(sp)
    8005bb4a:	74ea                	ld	s1,184(sp)
    8005bb4c:	794a                	ld	s2,176(sp)
    8005bb4e:	79aa                	ld	s3,168(sp)
    8005bb50:	7a0a                	ld	s4,160(sp)
    8005bb52:	6aea                	ld	s5,152(sp)
    8005bb54:	6b4a                	ld	s6,144(sp)
    8005bb56:	6baa                	ld	s7,136(sp)
    8005bb58:	6c0a                	ld	s8,128(sp)
    8005bb5a:	7ce6                	ld	s9,120(sp)
    8005bb5c:	7d46                	ld	s10,112(sp)
    8005bb5e:	7da6                	ld	s11,104(sp)
    8005bb60:	6169                	addi	sp,sp,208
    8005bb62:	8082                	ret
ntt_malloc():
quickjs-nuttx/libbf.c:7708
    return bf_malloc(s->ctx, size);
    8005bb64:	45a1                	li	a1,8
    8005bb66:	016595b3          	sll	a1,a1,s6
    8005bb6a:	f2ffa0ef          	jal	ra,80056a98 <bf_malloc>
    8005bb6e:	892a                	mv	s2,a0
fft_mul():
quickjs-nuttx/libbf.c:8424
        if (!buf2)
    8005bb70:	f959                	bnez	a0,8005bb06 <fft_mul+0x2c8>
quickjs-nuttx/libbf.c:8415
        buf2 = ntt_malloc(s, sizeof(NTTLimb) * fft_len * nb_mods);
    8005bb72:	4901                	li	s2,0
quickjs-nuttx/libbf.c:8461
    ntt_free(s, buf1);
    8005bb74:	000c3503          	ld	a0,0(s8)
    8005bb78:	85e6                	mv	a1,s9
    8005bb7a:	e84fb0ef          	jal	ra,800571fe <ntt_free.isra.0>
quickjs-nuttx/libbf.c:8462
    ntt_free(s, buf2);
    8005bb7e:	000c3503          	ld	a0,0(s8)
    8005bb82:	85ca                	mv	a1,s2
    8005bb84:	e7afb0ef          	jal	ra,800571fe <ntt_free.isra.0>
    8005bb88:	b32d                	j	8005b8b2 <fft_mul+0x74>
quickjs-nuttx/libbf.c:8433
            ptr = buf2 + fft_len * j;
    8005bb8a:	016b9e33          	sll	t3,s7,s6
    8005bb8e:	0e0e                	slli	t3,t3,0x3
quickjs-nuttx/libbf.c:8428
        if (reduced_mem) {
    8005bb90:	47b5                	li	a5,13
quickjs-nuttx/libbf.c:8433
            ptr = buf2 + fft_len * j;
    8005bb92:	01c90633          	add	a2,s2,t3
quickjs-nuttx/libbf.c:8428
        if (reduced_mem) {
    8005bb96:	0367d263          	bge	a5,s6,8005bbba <fft_mul+0x37c>
quickjs-nuttx/libbf.c:8429
            limb_to_ntt(s, buf2, fft_len, b_tab, b_len, dpl,
    8005bb9a:	47e6                	lw	a5,88(sp)
    8005bb9c:	410a883b          	subw	a6,s5,a6
    8005bba0:	866e                	mv	a2,s11
    8005bba2:	4885                	li	a7,1
    8005bba4:	0178083b          	addw	a6,a6,s7
    8005bba8:	874e                	mv	a4,s3
    8005bbaa:	86d2                	mv	a3,s4
    8005bbac:	85ca                	mv	a1,s2
    8005bbae:	8562                	mv	a0,s8
    8005bbb0:	e072                	sd	t3,0(sp)
    8005bbb2:	a08fb0ef          	jal	ra,80056dba <limb_to_ntt>
quickjs-nuttx/libbf.c:8431
            ptr = buf2;
    8005bbb6:	6e02                	ld	t3,0(sp)
    8005bbb8:	864a                	mv	a2,s2
quickjs-nuttx/libbf.c:8436
                     fft_len_log2, fft_len_log2, j + NB_MODS - nb_mods))
    8005bbba:	47f6                	lw	a5,92(sp)
quickjs-nuttx/libbf.c:8435
        if (ntt_conv(s, buf1 + fft_len * j, ptr,
    8005bbbc:	875a                	mv	a4,s6
    8005bbbe:	86da                	mv	a3,s6
quickjs-nuttx/libbf.c:8436
                     fft_len_log2, fft_len_log2, j + NB_MODS - nb_mods))
    8005bbc0:	40fa87bb          	subw	a5,s5,a5
quickjs-nuttx/libbf.c:8435
        if (ntt_conv(s, buf1 + fft_len * j, ptr,
    8005bbc4:	017787bb          	addw	a5,a5,s7
    8005bbc8:	01cc85b3          	add	a1,s9,t3
    8005bbcc:	8562                	mv	a0,s8
    8005bbce:	e07fb0ef          	jal	ra,800579d4 <ntt_conv>
    8005bbd2:	f14d                	bnez	a0,8005bb74 <fft_mul+0x336>
quickjs-nuttx/libbf.c:8427 (discriminator 2)
    for(j = 0; j < nb_mods; j++) {
    8005bbd4:	2b85                	addiw	s7,s7,1
    8005bbd6:	bf15                	j	8005bb0a <fft_mul+0x2cc>
quickjs-nuttx/libbf.c:8444
        if (bf_resize(res, len))
    8005bbd8:	85ea                	mv	a1,s10
    8005bbda:	8526                	mv	a0,s1
    8005bbdc:	fa9fb0ef          	jal	ra,80057b84 <bf_resize>
    8005bbe0:	d521                	beqz	a0,8005bb28 <fft_mul+0x2ea>
    8005bbe2:	bf41                	j	8005bb72 <fft_mul+0x334>

000000008005bbe4 <mp_mul>:
mp_mul():
quickjs-nuttx/libbf.c:1196
{
    8005bbe4:	7139                	addi	sp,sp,-64
    8005bbe6:	882e                	mv	a6,a1
    8005bbe8:	fc06                	sd	ra,56(sp)
    8005bbea:	85b2                	mv	a1,a2
    8005bbec:	8636                	mv	a2,a3
    8005bbee:	86ba                	mv	a3,a4
quickjs-nuttx/libbf.c:1198
    if (unlikely(bf_min(op1_size, op2_size) >= FFT_MUL_THRESHOLD)) {
    8005bbf0:	873e                	mv	a4,a5
    8005bbf2:	00c7c363          	blt	a5,a2,8005bbf8 <mp_mul+0x14>
    8005bbf6:	8732                	mv	a4,a2
    8005bbf8:	06300893          	li	a7,99
    8005bbfc:	00e8df63          	bge	a7,a4,8005bc1a <mp_mul+0x36>
quickjs-nuttx/libbf.c:1200
        r->tab = result;
    8005bc00:	f442                	sd	a6,40(sp)
quickjs-nuttx/libbf.c:1202
        if (fft_mul(s, r, (limb_t *)op1, op1_size,
    8005bc02:	8736                	mv	a4,a3
    8005bc04:	4811                	li	a6,4
    8005bc06:	86b2                	mv	a3,a2
    8005bc08:	862e                	mv	a2,a1
    8005bc0a:	002c                	addi	a1,sp,8
    8005bc0c:	c33ff0ef          	jal	ra,8005b83e <fft_mul>
    8005bc10:	c111                	beqz	a0,8005bc14 <mp_mul+0x30>
quickjs-nuttx/libbf.c:1204
            return -1;
    8005bc12:	557d                	li	a0,-1
quickjs-nuttx/libbf.c:1211
}
    8005bc14:	70e2                	ld	ra,56(sp)
    8005bc16:	6121                	addi	sp,sp,64
    8005bc18:	8082                	ret
quickjs-nuttx/libbf.c:1208
        mp_mul_basecase(result, op1, op1_size, op2, op2_size);
    8005bc1a:	8542                	mv	a0,a6
    8005bc1c:	873e                	mv	a4,a5
    8005bc1e:	d42fb0ef          	jal	ra,80057160 <mp_mul_basecase>
quickjs-nuttx/libbf.c:1210
    return 0;
    8005bc22:	4501                	li	a0,0
    8005bc24:	bfc5                	j	8005bc14 <mp_mul+0x30>

000000008005bc26 <mp_divnorm>:
mp_divnorm():
quickjs-nuttx/libbf.c:1294
{
    8005bc26:	7175                	addi	sp,sp,-144
    8005bc28:	e0e2                	sd	s8,64(sp)
quickjs-nuttx/libbf.c:1298
    b1 = tabb[nb - 1];
    8005bc2a:	00379c13          	slli	s8,a5,0x3
quickjs-nuttx/libbf.c:1294
{
    8005bc2e:	e122                	sd	s0,128(sp)
    8005bc30:	fca6                	sd	s1,120(sp)
    8005bc32:	f4ce                	sd	s3,104(sp)
    8005bc34:	e4de                	sd	s7,72(sp)
    8005bc36:	e506                	sd	ra,136(sp)
    8005bc38:	f8ca                	sd	s2,112(sp)
    8005bc3a:	f0d2                	sd	s4,96(sp)
    8005bc3c:	ecd6                	sd	s5,88(sp)
    8005bc3e:	e8da                	sd	s6,80(sp)
    8005bc40:	fc66                	sd	s9,56(sp)
    8005bc42:	f86a                	sd	s10,48(sp)
    8005bc44:	f46e                	sd	s11,40(sp)
    8005bc46:	84be                	mv	s1,a5
quickjs-nuttx/libbf.c:1298
    b1 = tabb[nb - 1];
    8005bc48:	018707b3          	add	a5,a4,s8
    8005bc4c:	ff87bb03          	ld	s6,-8(a5)
quickjs-nuttx/libbf.c:1299
    if (nb == 1) {
    8005bc50:	4785                	li	a5,1
quickjs-nuttx/libbf.c:1294
{
    8005bc52:	8bae                	mv	s7,a1
    8005bc54:	89b2                	mv	s3,a2
    8005bc56:	8436                	mv	s0,a3
quickjs-nuttx/libbf.c:1299
    if (nb == 1) {
    8005bc58:	0af49663          	bne	s1,a5,8005bd04 <mp_divnorm+0xde>
quickjs-nuttx/libbf.c:1300
        taba[0] = mp_div1norm(tabq, taba, na, b1, 0);
    8005bc5c:	ec02                	sd	zero,24(sp)
mp_div1norm():
quickjs-nuttx/libbf.c:1267
    if (n >= UDIV1NORM_THRESHOLD) {
    8005bc5e:	4789                	li	a5,2
quickjs-nuttx/libbf.c:1270
        for(i = n - 1; i >= 0; i--) {
    8005bc60:	fff68493          	addi	s1,a3,-1
quickjs-nuttx/libbf.c:1267
    if (n >= UDIV1NORM_THRESHOLD) {
    8005bc64:	00d7ed63          	bltu	a5,a3,8005bc7e <mp_divnorm+0x58>
    8005bc68:	00369413          	slli	s0,a3,0x3
    8005bc6c:	4781                	li	a5,0
    8005bc6e:	4481                	li	s1,0
quickjs-nuttx/libbf.c:1275
        for(i = n - 1; i >= 0; i--) {
    8005bc70:	5a61                	li	s4,-8
    8005bc72:	1461                	addi	s0,s0,-8
    8005bc74:	07441163          	bne	s0,s4,8005bcd6 <mp_divnorm+0xb0>
    8005bc78:	cf91                	beqz	a5,8005bc94 <mp_divnorm+0x6e>
    8005bc7a:	ec26                	sd	s1,24(sp)
    8005bc7c:	a821                	j	8005bc94 <mp_divnorm+0x6e>
udiv1norm_init():
quickjs-nuttx/libbf.c:1236
    return (((dlimb_t)a1 << LIMB_BITS) | a0) / d;
    8005bc7e:	865a                	mv	a2,s6
    8005bc80:	4681                	li	a3,0
    8005bc82:	557d                	li	a0,-1
    8005bc84:	fffb4593          	not	a1,s6
    8005bc88:	98ba80ef          	jal	ra,80004612 <__udivti3>
    8005bc8c:	892a                	mv	s2,a0
mp_div1norm():
quickjs-nuttx/libbf.c:1271
            tabr[i] = udiv1norm(&r, r, taba[i], b, b_inv);
    8005bc8e:	65e2                	ld	a1,24(sp)
quickjs-nuttx/libbf.c:1270
        for(i = n - 1; i >= 0; i--) {
    8005bc90:	0204d563          	bgez	s1,8005bcba <mp_divnorm+0x94>
mp_divnorm():
quickjs-nuttx/libbf.c:1300
        taba[0] = mp_div1norm(tabq, taba, na, b1, 0);
    8005bc94:	67e2                	ld	a5,24(sp)
    8005bc96:	00f9b023          	sd	a5,0(s3)
mp_divnorm_large():
quickjs-nuttx/libbf.c:1534
    return 0;
    8005bc9a:	4501                	li	a0,0
mp_divnorm():
quickjs-nuttx/libbf.c:1361
}
    8005bc9c:	60aa                	ld	ra,136(sp)
    8005bc9e:	640a                	ld	s0,128(sp)
    8005bca0:	74e6                	ld	s1,120(sp)
    8005bca2:	7946                	ld	s2,112(sp)
    8005bca4:	79a6                	ld	s3,104(sp)
    8005bca6:	7a06                	ld	s4,96(sp)
    8005bca8:	6ae6                	ld	s5,88(sp)
    8005bcaa:	6b46                	ld	s6,80(sp)
    8005bcac:	6ba6                	ld	s7,72(sp)
    8005bcae:	6c06                	ld	s8,64(sp)
    8005bcb0:	7ce2                	ld	s9,56(sp)
    8005bcb2:	7d42                	ld	s10,48(sp)
    8005bcb4:	7da2                	ld	s11,40(sp)
    8005bcb6:	6149                	addi	sp,sp,144
    8005bcb8:	8082                	ret
mp_div1norm():
quickjs-nuttx/libbf.c:1271
            tabr[i] = udiv1norm(&r, r, taba[i], b, b_inv);
    8005bcba:	00349413          	slli	s0,s1,0x3
    8005bcbe:	008987b3          	add	a5,s3,s0
    8005bcc2:	6390                	ld	a2,0(a5)
    8005bcc4:	874a                	mv	a4,s2
    8005bcc6:	86da                	mv	a3,s6
    8005bcc8:	0828                	addi	a0,sp,24
    8005bcca:	eb9fa0ef          	jal	ra,80056b82 <udiv1norm>
    8005bcce:	945e                	add	s0,s0,s7
    8005bcd0:	e008                	sd	a0,0(s0)
quickjs-nuttx/libbf.c:1270
        for(i = n - 1; i >= 0; i--) {
    8005bcd2:	14fd                	addi	s1,s1,-1
    8005bcd4:	bf6d                	j	8005bc8e <mp_divnorm+0x68>
quickjs-nuttx/libbf.c:1276
            a1 = ((dlimb_t)r << LIMB_BITS) | taba[i];
    8005bcd6:	008987b3          	add	a5,s3,s0
    8005bcda:	0007b903          	ld	s2,0(a5)
quickjs-nuttx/libbf.c:1277
            tabr[i] = a1 / b;
    8005bcde:	865a                	mv	a2,s6
    8005bce0:	4681                	li	a3,0
    8005bce2:	85a6                	mv	a1,s1
    8005bce4:	854a                	mv	a0,s2
    8005bce6:	92da80ef          	jal	ra,80004612 <__udivti3>
    8005bcea:	008b8ab3          	add	s5,s7,s0
    8005bcee:	00aab023          	sd	a0,0(s5)
quickjs-nuttx/libbf.c:1278
            r = a1 % b;
    8005bcf2:	85a6                	mv	a1,s1
    8005bcf4:	865a                	mv	a2,s6
    8005bcf6:	4681                	li	a3,0
    8005bcf8:	854a                	mv	a0,s2
    8005bcfa:	c65a80ef          	jal	ra,8000495e <__umodti3>
    8005bcfe:	84aa                	mv	s1,a0
    8005bd00:	4785                	li	a5,1
    8005bd02:	bf85                	j	8005bc72 <mp_divnorm+0x4c>
mp_divnorm():
quickjs-nuttx/libbf.c:1303
    n = na - nb;
    8005bd04:	40968db3          	sub	s11,a3,s1
    8005bd08:	8aba                	mv	s5,a4
quickjs-nuttx/libbf.h:188
    8005bd0a:	8a2a                	mv	s4,a0
quickjs-nuttx/libbf.c:1304
    if (bf_min(n, nb) >= DIVNORM_LARGE_THRESHOLD) {
    8005bd0c:	876e                	mv	a4,s11
    8005bd0e:	01b4d363          	bge	s1,s11,8005bd14 <mp_divnorm+0xee>
    8005bd12:	8726                	mv	a4,s1
    8005bd14:	03100693          	li	a3,49
    8005bd18:	1ae6d863          	bge	a3,a4,8005bec8 <mp_divnorm+0x2a2>
mp_divnorm_large():
quickjs-nuttx/libbf.c:1461
    assert(nq >= 1);
    8005bd1c:	000d9b63          	bnez	s11,8005bd32 <mp_divnorm+0x10c>
    8005bd20:	4601                	li	a2,0
    8005bd22:	5b500593          	li	a1,1461
    8005bd26:	00025517          	auipc	a0,0x25
    8005bd2a:	89a50513          	addi	a0,a0,-1894 # 800805c0 <std_name.0+0x18>
    8005bd2e:	42f040ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:1464
        n++; 
    8005bd32:	001d8793          	addi	a5,s11,1
    8005bd36:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:1463
    if (nq < nb)
    8005bd38:	009df363          	bgeu	s11,s1,8005bd3e <mp_divnorm+0x118>
quickjs-nuttx/libbf.c:1464
        n++; 
    8005bd3c:	8dbe                	mv	s11,a5
quickjs-nuttx/libbf.c:1465
    tabb_inv = bf_malloc(s, sizeof(limb_t) * (n + 1));
    8005bd3e:	001d8c93          	addi	s9,s11,1
    8005bd42:	003c9d13          	slli	s10,s9,0x3
    8005bd46:	85ea                	mv	a1,s10
    8005bd48:	8552                	mv	a0,s4
    8005bd4a:	d4ffa0ef          	jal	ra,80056a98 <bf_malloc>
    8005bd4e:	8b2a                	mv	s6,a0
quickjs-nuttx/libbf.c:1466
    tabt = bf_malloc(s, sizeof(limb_t) * 2 * (n + 1));
    8005bd50:	004c9593          	slli	a1,s9,0x4
    8005bd54:	8552                	mv	a0,s4
    8005bd56:	d43fa0ef          	jal	ra,80056a98 <bf_malloc>
    8005bd5a:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:1467
    if (!tabb_inv || !tabt)
    8005bd5c:	020b0663          	beqz	s6,8005bd88 <mp_divnorm+0x162>
    8005bd60:	c505                	beqz	a0,8005bd88 <mp_divnorm+0x162>
quickjs-nuttx/libbf.c:1470
    if (n >= nb) {
    8005bd62:	049de663          	bltu	s11,s1,8005bdae <mp_divnorm+0x188>
quickjs-nuttx/libbf.c:1472
            tabt[i] = 0;
    8005bd66:	409d8d33          	sub	s10,s11,s1
    8005bd6a:	0d0e                	slli	s10,s10,0x3
    8005bd6c:	866a                	mv	a2,s10
    8005bd6e:	4581                	li	a1,0
    8005bd70:	6d3070ef          	jal	ra,80063c42 <memset>
    8005bd74:	4701                	li	a4,0
quickjs-nuttx/libbf.c:1473
        for(i = 0; i < nb; i++)
    8005bd76:	02ec1363          	bne	s8,a4,8005bd9c <mp_divnorm+0x176>
quickjs-nuttx/libbf.c:1487
    if (mp_recip(s, tabb_inv, tabt, n))
    8005bd7a:	86ee                	mv	a3,s11
    8005bd7c:	864a                	mv	a2,s2
    8005bd7e:	85da                	mv	a1,s6
    8005bd80:	8552                	mv	a0,s4
    8005bd82:	254000ef          	jal	ra,8005bfd6 <mp_recip>
    8005bd86:	c135                	beqz	a0,8005bdea <mp_divnorm+0x1c4>
quickjs-nuttx/libbf.c:1536
    bf_free(s, tabb_inv);
    8005bd88:	85da                	mv	a1,s6
    8005bd8a:	8552                	mv	a0,s4
    8005bd8c:	d15fa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1537
    bf_free(s, tabt);
    8005bd90:	8552                	mv	a0,s4
    8005bd92:	85ca                	mv	a1,s2
    8005bd94:	d0dfa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1538
    return -1;
    8005bd98:	557d                	li	a0,-1
    8005bd9a:	b709                	j	8005bc9c <mp_divnorm+0x76>
quickjs-nuttx/libbf.c:1474
            tabt[i + n - nb] = tabb[i];
    8005bd9c:	00ea86b3          	add	a3,s5,a4
    8005bda0:	6290                	ld	a2,0(a3)
    8005bda2:	01a706b3          	add	a3,a4,s10
    8005bda6:	96ca                	add	a3,a3,s2
    8005bda8:	e290                	sd	a2,0(a3)
quickjs-nuttx/libbf.c:1473
        for(i = 0; i < nb; i++)
    8005bdaa:	0721                	addi	a4,a4,8
    8005bdac:	b7e9                	j	8005bd76 <mp_divnorm+0x150>
    8005bdae:	41b48733          	sub	a4,s1,s11
    8005bdb2:	070e                	slli	a4,a4,0x3
    8005bdb4:	9756                	add	a4,a4,s5
quickjs-nuttx/libbf.c:1478
        for(i = 0; i < n; i++)
    8005bdb6:	4681                	li	a3,0
quickjs-nuttx/libbf.c:1479
            tabt[i] = tabb[i + nb - n];
    8005bdb8:	630c                	ld	a1,0(a4)
    8005bdba:	00369613          	slli	a2,a3,0x3
    8005bdbe:	964a                	add	a2,a2,s2
    8005bdc0:	e20c                	sd	a1,0(a2)
quickjs-nuttx/libbf.c:1478
        for(i = 0; i < n; i++)
    8005bdc2:	0685                	addi	a3,a3,1
    8005bdc4:	0721                	addi	a4,a4,8
    8005bdc6:	fedd99e3          	bne	s11,a3,8005bdb8 <mp_divnorm+0x192>
quickjs-nuttx/libbf.c:1480
        if (mp_add_ui(tabt, 1, n)) {
    8005bdca:	866e                	mv	a2,s11
    8005bdcc:	4585                	li	a1,1
    8005bdce:	854a                	mv	a0,s2
    8005bdd0:	c33fc0ef          	jal	ra,80058a02 <mp_add_ui>
    8005bdd4:	d15d                	beqz	a0,8005bd7a <mp_divnorm+0x154>
quickjs-nuttx/libbf.c:1482
            memset(tabb_inv, 0, n * sizeof(limb_t));
    8005bdd6:	1d61                	addi	s10,s10,-8
    8005bdd8:	866a                	mv	a2,s10
    8005bdda:	4581                	li	a1,0
    8005bddc:	855a                	mv	a0,s6
    8005bdde:	665070ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:1483
            tabb_inv[n] = 1;
    8005bde2:	9d5a                	add	s10,s10,s6
    8005bde4:	4705                	li	a4,1
    8005bde6:	00ed3023          	sd	a4,0(s10)
quickjs-nuttx/libbf.c:1491
    if (mp_mul(s, tabt, tabb_inv, n + 1, taba + na - (n + 1), n + 1))
    8005bdea:	41b40733          	sub	a4,s0,s11
    8005bdee:	070e                	slli	a4,a4,0x3
    8005bdf0:	1761                	addi	a4,a4,-8
    8005bdf2:	87e6                	mv	a5,s9
    8005bdf4:	974e                	add	a4,a4,s3
    8005bdf6:	86e6                	mv	a3,s9
    8005bdf8:	865a                	mv	a2,s6
    8005bdfa:	85ca                	mv	a1,s2
    8005bdfc:	8552                	mv	a0,s4
    8005bdfe:	de7ff0ef          	jal	ra,8005bbe4 <mp_mul>
    8005be02:	f159                	bnez	a0,8005bd88 <mp_divnorm+0x162>
    8005be04:	fff44793          	not	a5,s0
    8005be08:	97a6                	add	a5,a5,s1
quickjs-nuttx/libbf.c:1495
        tabq[i] = tabt[i + 2 * (n + 1) - (nq + 1)];
    8005be0a:	0c86                	slli	s9,s9,0x1
    8005be0c:	9cbe                	add	s9,s9,a5
    8005be0e:	0c8e                	slli	s9,s9,0x3
    8005be10:	9cca                	add	s9,s9,s2
quickjs-nuttx/libbf.c:1494
    for(i = 0; i < nq + 1; i++)
    8005be12:	4781                	li	a5,0
    8005be14:	6722                	ld	a4,8(sp)
    8005be16:	08e7ec63          	bltu	a5,a4,8005beae <mp_divnorm+0x288>
quickjs-nuttx/libbf.c:1500
    bf_free(s, tabt);
    8005be1a:	85ca                	mv	a1,s2
    8005be1c:	8552                	mv	a0,s4
    8005be1e:	c83fa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1501
    bf_free(s, tabb_inv);
    8005be22:	85da                	mv	a1,s6
    8005be24:	8552                	mv	a0,s4
    8005be26:	c7bfa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1505
    tabt = bf_malloc(s, sizeof(limb_t) * (na + 1));
    8005be2a:	00140593          	addi	a1,s0,1
    8005be2e:	058e                	slli	a1,a1,0x3
    8005be30:	8552                	mv	a0,s4
    8005be32:	c67fa0ef          	jal	ra,80056a98 <bf_malloc>
    8005be36:	892a                	mv	s2,a0
quickjs-nuttx/libbf.c:1506
    if (!tabt)
    8005be38:	c551                	beqz	a0,8005bec4 <mp_divnorm+0x29e>
quickjs-nuttx/libbf.c:1508
    if (mp_mul(s, tabt, tabq, nq + 1, tabb, nb))
    8005be3a:	66a2                	ld	a3,8(sp)
    8005be3c:	85aa                	mv	a1,a0
    8005be3e:	87a6                	mv	a5,s1
    8005be40:	8756                	mv	a4,s5
    8005be42:	865e                	mv	a2,s7
    8005be44:	8552                	mv	a0,s4
    8005be46:	d9fff0ef          	jal	ra,8005bbe4 <mp_mul>
    8005be4a:	ed2d                	bnez	a0,8005bec4 <mp_divnorm+0x29e>
quickjs-nuttx/libbf.c:1511
    mp_sub(taba, taba, tabt, nb + 1, 0);
    8005be4c:	4701                	li	a4,0
    8005be4e:	00148693          	addi	a3,s1,1
    8005be52:	864a                	mv	a2,s2
    8005be54:	85ce                	mv	a1,s3
    8005be56:	854e                	mv	a0,s3
    8005be58:	bcbfc0ef          	jal	ra,80058a22 <mp_sub>
quickjs-nuttx/libbf.c:1512
    bf_free(s, tabt);
    8005be5c:	85ca                	mv	a1,s2
    8005be5e:	8552                	mv	a0,s4
    8005be60:	c41fa0ef          	jal	ra,80056aa0 <bf_free>
quickjs-nuttx/libbf.c:1520
        if (taba[nb] == 0 && mp_cmp(taba, tabb, nb) < 0)
    8005be64:	9c4e                	add	s8,s8,s3
    8005be66:	000c3783          	ld	a5,0(s8)
    8005be6a:	e385                	bnez	a5,8005be8a <mp_divnorm+0x264>
mp_cmp():
quickjs-nuttx/libbf.c:1435
    for(i = n - 1; i >= 0; i--) {
    8005be6c:	fff48793          	addi	a5,s1,-1
    8005be70:	0007cd63          	bltz	a5,8005be8a <mp_divnorm+0x264>
quickjs-nuttx/libbf.c:1436
        if (taba[i] != tabb[i]) {
    8005be74:	00379713          	slli	a4,a5,0x3
    8005be78:	00e986b3          	add	a3,s3,a4
    8005be7c:	9756                	add	a4,a4,s5
    8005be7e:	6294                	ld	a3,0(a3)
    8005be80:	6318                	ld	a4,0(a4)
    8005be82:	02e68f63          	beq	a3,a4,8005bec0 <mp_divnorm+0x29a>
quickjs-nuttx/libbf.c:1437
            if (taba[i] < tabb[i])
    8005be86:	e0e6eae3          	bltu	a3,a4,8005bc9a <mp_divnorm+0x74>
mp_divnorm_large():
quickjs-nuttx/libbf.c:1522
        taba[nb] -= mp_sub(taba, taba, tabb, nb, 0);
    8005be8a:	8656                	mv	a2,s5
    8005be8c:	85ce                	mv	a1,s3
    8005be8e:	4701                	li	a4,0
    8005be90:	86a6                	mv	a3,s1
    8005be92:	854e                	mv	a0,s3
    8005be94:	b8ffc0ef          	jal	ra,80058a22 <mp_sub>
    8005be98:	000c3783          	ld	a5,0(s8)
quickjs-nuttx/libbf.c:1523
        mp_add_ui(tabq, 1, nq + 1);
    8005be9c:	6622                	ld	a2,8(sp)
    8005be9e:	4585                	li	a1,1
quickjs-nuttx/libbf.c:1522
        taba[nb] -= mp_sub(taba, taba, tabb, nb, 0);
    8005bea0:	8f89                	sub	a5,a5,a0
    8005bea2:	00fc3023          	sd	a5,0(s8)
quickjs-nuttx/libbf.c:1523
        mp_add_ui(tabq, 1, nq + 1);
    8005bea6:	855e                	mv	a0,s7
    8005bea8:	b5bfc0ef          	jal	ra,80058a02 <mp_add_ui>
quickjs-nuttx/libbf.c:1520
        if (taba[nb] == 0 && mp_cmp(taba, tabb, nb) < 0)
    8005beac:	bf6d                	j	8005be66 <mp_divnorm+0x240>
quickjs-nuttx/libbf.c:1495
        tabq[i] = tabt[i + 2 * (n + 1) - (nq + 1)];
    8005beae:	000cb683          	ld	a3,0(s9)
    8005beb2:	00379713          	slli	a4,a5,0x3
    8005beb6:	975e                	add	a4,a4,s7
    8005beb8:	e314                	sd	a3,0(a4)
quickjs-nuttx/libbf.c:1494
    for(i = 0; i < nq + 1; i++)
    8005beba:	0785                	addi	a5,a5,1
    8005bebc:	0ca1                	addi	s9,s9,8
    8005bebe:	bf99                	j	8005be14 <mp_divnorm+0x1ee>
mp_cmp():
quickjs-nuttx/libbf.c:1435
    for(i = n - 1; i >= 0; i--) {
    8005bec0:	17fd                	addi	a5,a5,-1
    8005bec2:	b77d                	j	8005be70 <mp_divnorm+0x24a>
mp_divnorm_large():
quickjs-nuttx/libbf.c:1502
    tabb_inv = NULL;
    8005bec4:	4b01                	li	s6,0
    8005bec6:	b5c9                	j	8005bd88 <mp_divnorm+0x162>
mp_divnorm():
quickjs-nuttx/libbf.c:1308
    if (n >= UDIV1NORM_THRESHOLD)
    8005bec8:	4709                	li	a4,2
quickjs-nuttx/libbf.c:1311
        b1_inv = 0;
    8005beca:	4a01                	li	s4,0
quickjs-nuttx/libbf.c:1308
    if (n >= UDIV1NORM_THRESHOLD)
    8005becc:	01b77a63          	bgeu	a4,s11,8005bee0 <mp_divnorm+0x2ba>
udiv1norm_init():
quickjs-nuttx/libbf.c:1236
    return (((dlimb_t)a1 << LIMB_BITS) | a0) / d;
    8005bed0:	865a                	mv	a2,s6
    8005bed2:	4681                	li	a3,0
    8005bed4:	557d                	li	a0,-1
    8005bed6:	fffb4593          	not	a1,s6
    8005beda:	f38a80ef          	jal	ra,80004612 <__udivti3>
    8005bede:	8a2a                	mv	s4,a0
mp_divnorm():
quickjs-nuttx/libbf.c:1315
    for(j = nb - 1; j >= 0; j--) {
    8005bee0:	003d9693          	slli	a3,s11,0x3
    8005bee4:	fff48613          	addi	a2,s1,-1
    8005bee8:	00d985b3          	add	a1,s3,a3
quickjs-nuttx/libbf.c:1315 (discriminator 1)
    8005beec:	00065463          	bgez	a2,8005bef4 <mp_divnorm+0x2ce>
quickjs-nuttx/libbf.c:1314
    q = 1;
    8005bef0:	4705                	li	a4,1
    8005bef2:	a005                	j	8005bf12 <mp_divnorm+0x2ec>
quickjs-nuttx/libbf.c:1316
        if (taba[n + j] != tabb[j]) {
    8005bef4:	00361513          	slli	a0,a2,0x3
    8005bef8:	00a58733          	add	a4,a1,a0
    8005befc:	9556                	add	a0,a0,s5
    8005befe:	6318                	ld	a4,0(a4)
    8005bf00:	6108                	ld	a0,0(a0)
    8005bf02:	08a70c63          	beq	a4,a0,8005bf9a <mp_divnorm+0x374>
quickjs-nuttx/libbf.c:1317
            if (taba[n + j] < tabb[j])
    8005bf06:	00a73733          	sltu	a4,a4,a0
    8005bf0a:	00174713          	xori	a4,a4,1
    8005bf0e:	1702                	slli	a4,a4,0x20
    8005bf10:	9301                	srli	a4,a4,0x20
quickjs-nuttx/libbf.c:1322
    tabq[n] = q;
    8005bf12:	96de                	add	a3,a3,s7
    8005bf14:	e298                	sd	a4,0(a3)
quickjs-nuttx/libbf.c:1323
    if (q) {
    8005bf16:	c719                	beqz	a4,8005bf24 <mp_divnorm+0x2fe>
quickjs-nuttx/libbf.c:1324
        mp_sub(taba + n, taba + n, tabb, nb, 0);
    8005bf18:	4701                	li	a4,0
    8005bf1a:	86a6                	mv	a3,s1
    8005bf1c:	8656                	mv	a2,s5
    8005bf1e:	852e                	mv	a0,a1
    8005bf20:	b03fc0ef          	jal	ra,80058a22 <mp_sub>
quickjs-nuttx/libbf.c:1327
    for(i = n - 1; i >= 0; i--) {
    8005bf24:	040e                	slli	s0,s0,0x3
    8005bf26:	fffd8913          	addi	s2,s11,-1
    8005bf2a:	944e                	add	s0,s0,s3
quickjs-nuttx/libbf.c:1327 (discriminator 1)
    8005bf2c:	d60947e3          	bltz	s2,8005bc9a <mp_divnorm+0x74>
quickjs-nuttx/libbf.c:1328
        if (unlikely(taba[i + nb] >= b1)) {
    8005bf30:	ff843583          	ld	a1,-8(s0)
quickjs-nuttx/libbf.c:1329
            q = -1;
    8005bf34:	5cfd                	li	s9,-1
quickjs-nuttx/libbf.c:1328
        if (unlikely(taba[i + nb] >= b1)) {
    8005bf36:	0165fd63          	bgeu	a1,s6,8005bf50 <mp_divnorm+0x32a>
quickjs-nuttx/libbf.c:1331
            q = udiv1norm(&dummy_r, taba[i + nb], taba[i + nb - 1], b1, b1_inv);
    8005bf3a:	ff043503          	ld	a0,-16(s0)
quickjs-nuttx/libbf.c:1330
        } else if (b1_inv) {
    8005bf3e:	060a0063          	beqz	s4,8005bf9e <mp_divnorm+0x378>
quickjs-nuttx/libbf.c:1331
            q = udiv1norm(&dummy_r, taba[i + nb], taba[i + nb - 1], b1, b1_inv);
    8005bf42:	862a                	mv	a2,a0
    8005bf44:	8752                	mv	a4,s4
    8005bf46:	86da                	mv	a3,s6
    8005bf48:	0828                	addi	a0,sp,24
    8005bf4a:	c39fa0ef          	jal	ra,80056b82 <udiv1norm>
quickjs-nuttx/libbf.c:1335
            q = al / b1;
    8005bf4e:	8caa                	mv	s9,a0
quickjs-nuttx/libbf.c:1338
        r = mp_sub_mul1(taba + i, tabb, nb, q);
    8005bf50:	00391d13          	slli	s10,s2,0x3
    8005bf54:	01a98db3          	add	s11,s3,s10
mp_sub_mul1():
quickjs-nuttx/libbf.c:1222
    for(i = 0; i < n; i++) {
    8005bf58:	4681                	li	a3,0
quickjs-nuttx/libbf.c:1221
    l = 0;
    8005bf5a:	4781                	li	a5,0
quickjs-nuttx/libbf.c:1222
    for(i = 0; i < n; i++) {
    8005bf5c:	04dc1663          	bne	s8,a3,8005bfa8 <mp_divnorm+0x382>
mp_divnorm():
quickjs-nuttx/libbf.c:1340
        v = taba[i + nb];
    8005bf60:	ff843703          	ld	a4,-8(s0)
quickjs-nuttx/libbf.c:1341
        a = v - r;
    8005bf64:	40f707b3          	sub	a5,a4,a5
quickjs-nuttx/libbf.c:1343
        taba[i + nb] = a;
    8005bf68:	fef43c23          	sd	a5,-8(s0)
quickjs-nuttx/libbf.c:1345
        if (c != 0) {
    8005bf6c:	02f77163          	bgeu	a4,a5,8005bf8e <mp_divnorm+0x368>
quickjs-nuttx/libbf.c:1349
                c = mp_add(taba + i, taba + i, tabb, nb, 0);
    8005bf70:	4701                	li	a4,0
    8005bf72:	86a6                	mv	a3,s1
    8005bf74:	8656                	mv	a2,s5
    8005bf76:	85ee                	mv	a1,s11
    8005bf78:	856e                	mv	a0,s11
quickjs-nuttx/libbf.c:1348
                q--;
    8005bf7a:	1cfd                	addi	s9,s9,-1
quickjs-nuttx/libbf.c:1349
                c = mp_add(taba + i, taba + i, tabb, nb, 0);
    8005bf7c:	a49fc0ef          	jal	ra,800589c4 <mp_add>
quickjs-nuttx/libbf.c:1351
                if (c != 0) {
    8005bf80:	d965                	beqz	a0,8005bf70 <mp_divnorm+0x34a>
quickjs-nuttx/libbf.c:1352
                    if (++taba[i + nb] == 0) {
    8005bf82:	ff843783          	ld	a5,-8(s0)
    8005bf86:	0785                	addi	a5,a5,1
    8005bf88:	fef43c23          	sd	a5,-8(s0)
    8005bf8c:	f3f5                	bnez	a5,8005bf70 <mp_divnorm+0x34a>
quickjs-nuttx/libbf.c:1358 (discriminator 2)
        tabq[i] = q;
    8005bf8e:	9d5e                	add	s10,s10,s7
    8005bf90:	019d3023          	sd	s9,0(s10)
quickjs-nuttx/libbf.c:1327 (discriminator 2)
    for(i = n - 1; i >= 0; i--) {
    8005bf94:	197d                	addi	s2,s2,-1
    8005bf96:	1461                	addi	s0,s0,-8
    8005bf98:	bf51                	j	8005bf2c <mp_divnorm+0x306>
quickjs-nuttx/libbf.c:1315 (discriminator 2)
    for(j = nb - 1; j >= 0; j--) {
    8005bf9a:	167d                	addi	a2,a2,-1
    8005bf9c:	bf81                	j	8005beec <mp_divnorm+0x2c6>
quickjs-nuttx/libbf.c:1335
            q = al / b1;
    8005bf9e:	865a                	mv	a2,s6
    8005bfa0:	4681                	li	a3,0
    8005bfa2:	e70a80ef          	jal	ra,80004612 <__udivti3>
    8005bfa6:	b765                	j	8005bf4e <mp_divnorm+0x328>
mp_sub_mul1():
quickjs-nuttx/libbf.c:1223
        t = tabr[i] - (dlimb_t)taba[i] * (dlimb_t)b - l;
    8005bfa8:	00da8633          	add	a2,s5,a3
    8005bfac:	620c                	ld	a1,0(a2)
    8005bfae:	00dd8533          	add	a0,s11,a3
    8005bfb2:	6118                	ld	a4,0(a0)
    8005bfb4:	02bc8633          	mul	a2,s9,a1
    8005bfb8:	06a1                	addi	a3,a3,8
    8005bfba:	40f707b3          	sub	a5,a4,a5
    8005bfbe:	00f73733          	sltu	a4,a4,a5
    8005bfc2:	02bcb5b3          	mulhu	a1,s9,a1
    8005bfc6:	40c78633          	sub	a2,a5,a2
    8005bfca:	00c7b7b3          	sltu	a5,a5,a2
quickjs-nuttx/libbf.c:1224
        tabr[i] = t;
    8005bfce:	e110                	sd	a2,0(a0)
quickjs-nuttx/libbf.c:1223
        t = tabr[i] - (dlimb_t)taba[i] * (dlimb_t)b - l;
    8005bfd0:	972e                	add	a4,a4,a1
quickjs-nuttx/libbf.c:1225
        l = -(t >> LIMB_BITS);
    8005bfd2:	97ba                	add	a5,a5,a4
quickjs-nuttx/libbf.c:1222
    for(i = 0; i < n; i++) {
    8005bfd4:	b761                	j	8005bf5c <mp_divnorm+0x336>

000000008005bfd6 <mp_recip>:
mp_recip():
quickjs-nuttx/libbf.c:1369
{
    8005bfd6:	7135                	addi	sp,sp,-160
    8005bfd8:	e14a                	sd	s2,128(sp)
    8005bfda:	fcce                	sd	s3,120(sp)
    8005bfdc:	ecde                	sd	s7,88(sp)
    8005bfde:	e8e2                	sd	s8,80(sp)
    8005bfe0:	e4e6                	sd	s9,72(sp)
    8005bfe2:	ed06                	sd	ra,152(sp)
    8005bfe4:	e922                	sd	s0,144(sp)
    8005bfe6:	e526                	sd	s1,136(sp)
    8005bfe8:	f8d2                	sd	s4,112(sp)
    8005bfea:	f4d6                	sd	s5,104(sp)
    8005bfec:	f0da                	sd	s6,96(sp)
    8005bfee:	e0ea                	sd	s10,64(sp)
    8005bff0:	fc6e                	sd	s11,56(sp)
quickjs-nuttx/libbf.c:1373
    if (n <= 2) {
    8005bff2:	4789                	li	a5,2
quickjs-nuttx/libbf.c:1369
{
    8005bff4:	89aa                	mv	s3,a0
    8005bff6:	8bae                	mv	s7,a1
    8005bff8:	8c32                	mv	s8,a2
    8005bffa:	8936                	mv	s2,a3
quickjs-nuttx/libbf.c:1377
        tabt = bf_malloc(s, sizeof(limb_t) * (n + 2));
    8005bffc:	00268c93          	addi	s9,a3,2
quickjs-nuttx/libbf.c:1373
    if (n <= 2) {
