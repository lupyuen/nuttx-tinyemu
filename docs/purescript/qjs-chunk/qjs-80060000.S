    8005f000:	f30fd0ef          	jal	ra,8005c730 <bf_mul>
    8005f004:	bf25                	j	8005ef3c <chud_bs.constprop.0+0x10e>

000000008005f006 <bf_const_pi_internal>:
bf_const_pi_internal():
quickjs-nuttx/libbf.c:4147
{
    8005f006:	7159                	addi	sp,sp,-112
    8005f008:	f486                	sd	ra,104(sp)
    8005f00a:	f0a2                	sd	s0,96(sp)
    8005f00c:	eca6                	sd	s1,88(sp)
    8005f00e:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/libbf.c:4148
    bf_context_t *s = Q->ctx;
    8005f010:	6118                	ld	a4,0(a0)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f012:	57fd                	li	a5,-1
    8005f014:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f016:	e03a                	sd	a4,0(sp)
    8005f018:	f43a                	sd	a4,40(sp)
bf_const_pi_internal():
quickjs-nuttx/libbf.c:4153
    n = prec / CHUD_BITS_PER_TERM + 1;
    8005f01a:	02f00713          	li	a4,47
    8005f01e:	02e5d733          	divu	a4,a1,a4
quickjs-nuttx/libbf.c:4147
{
    8005f022:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:4155
    prec1 = prec + 32;
    8005f024:	02058913          	addi	s2,a1,32
quickjs-nuttx/libbf.c:4147
{
    8005f028:	84ae                	mv	s1,a1
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f02a:	e83e                	sd	a5,16(sp)
    8005f02c:	fc3e                	sd	a5,56(sp)
bf_const_pi_internal():
quickjs-nuttx/libbf.c:4160
    chud_bs(&P, Q, &G, 0, n, 0, BF_PREC_INF);
    8005f02e:	1030                	addi	a2,sp,40
    8005f030:	4781                	li	a5,0
    8005f032:	85aa                	mv	a1,a0
    8005f034:	4681                	li	a3,0
    8005f036:	850a                	mv	a0,sp
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f038:	c402                	sw	zero,8(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f03a:	ec02                	sd	zero,24(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f03c:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f03e:	d802                	sw	zero,48(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f040:	e082                	sd	zero,64(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f042:	e482                	sd	zero,72(sp)
bf_const_pi_internal():
quickjs-nuttx/libbf.c:4160
    chud_bs(&P, Q, &G, 0, n, 0, BF_PREC_INF);
    8005f044:	0705                	addi	a4,a4,1
    8005f046:	de9ff0ef          	jal	ra,8005ee2e <chud_bs.constprop.0>
quickjs-nuttx/libbf.c:4162
    bf_mul_ui(&G, Q, CHUD_A, prec1, BF_RNDN);
    8005f04a:	00cf6637          	lui	a2,0xcf6
    8005f04e:	86ca                	mv	a3,s2
    8005f050:	85a2                	mv	a1,s0
    8005f052:	4701                	li	a4,0
    8005f054:	37160613          	addi	a2,a2,881 # cf6371 <asinh-0x7f309c8f>
    8005f058:	1028                	addi	a0,sp,40
    8005f05a:	957fd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4163
    bf_add(&P, &G, &P, prec1, BF_RNDN);
    8005f05e:	86ca                	mv	a3,s2
    8005f060:	860a                	mv	a2,sp
    8005f062:	102c                	addi	a1,sp,40
    8005f064:	4701                	li	a4,0
    8005f066:	850a                	mv	a0,sp
    8005f068:	ad5f90ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:4164
    bf_div(Q, Q, &P, prec1, BF_RNDF);
    8005f06c:	4719                	li	a4,6
    8005f06e:	86ca                	mv	a3,s2
    8005f070:	860a                	mv	a2,sp
    8005f072:	85a2                	mv	a1,s0
    8005f074:	8522                	mv	a0,s0
    8005f076:	b3bf90ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:4166
    bf_set_ui(&P, CHUD_C);
    8005f07a:	0009c5b7          	lui	a1,0x9c
    8005f07e:	54058593          	addi	a1,a1,1344 # 9c540 <asinh-0x7ff63ac0>
    8005f082:	850a                	mv	a0,sp
    8005f084:	b5bf80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4167
    bf_sqrt(&G, &P, prec1, BF_RNDF);
    8005f088:	864a                	mv	a2,s2
    8005f08a:	858a                	mv	a1,sp
    8005f08c:	4699                	li	a3,6
    8005f08e:	1028                	addi	a0,sp,40
    8005f090:	d0cfd0ef          	jal	ra,8005c59c <bf_sqrt>
quickjs-nuttx/libbf.c:4168
    bf_mul_ui(&G, &G, (uint64_t)CHUD_C / 12, prec1, BF_RNDF);
    8005f094:	102c                	addi	a1,sp,40
    8005f096:	6635                	lui	a2,0xd
    8005f098:	86ca                	mv	a3,s2
    8005f09a:	4719                	li	a4,6
    8005f09c:	07060613          	addi	a2,a2,112 # d070 <asinh-0x7fff2f90>
    8005f0a0:	852e                	mv	a0,a1
    8005f0a2:	90ffd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4169
    bf_mul(Q, Q, &G, prec, BF_RNDN);
    8005f0a6:	86a6                	mv	a3,s1
    8005f0a8:	1030                	addi	a2,sp,40
    8005f0aa:	85a2                	mv	a1,s0
    8005f0ac:	4701                	li	a4,0
    8005f0ae:	8522                	mv	a0,s0
    8005f0b0:	e80fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4170
    bf_delete(&P);
    8005f0b4:	850a                	mv	a0,sp
    8005f0b6:	9f5f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4171
    bf_delete(&G);
    8005f0ba:	1028                	addi	a0,sp,40
    8005f0bc:	9eff70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4172
}
    8005f0c0:	70a6                	ld	ra,104(sp)
    8005f0c2:	7406                	ld	s0,96(sp)
    8005f0c4:	64e6                	ld	s1,88(sp)
    8005f0c6:	6946                	ld	s2,80(sp)
    8005f0c8:	6165                	addi	sp,sp,112
    8005f0ca:	8082                	ret

000000008005f0cc <bf_const_log2_rec.constprop.0>:
bf_const_log2_rec():
quickjs-nuttx/libbf.c:4026
static void bf_const_log2_rec(bf_t *T, bf_t *P, bf_t *Q, limb_t n1,
    8005f0cc:	7155                	addi	sp,sp,-208
    8005f0ce:	e1a2                	sd	s0,192(sp)
    8005f0d0:	fd26                	sd	s1,184(sp)
    8005f0d2:	f94a                	sd	s2,176(sp)
    8005f0d4:	f54e                	sd	s3,168(sp)
    8005f0d6:	f152                	sd	s4,160(sp)
    8005f0d8:	ed56                	sd	s5,152(sp)
    8005f0da:	e586                	sd	ra,200(sp)
    8005f0dc:	8abe                	mv	s5,a5
    8005f0de:	e95a                	sd	s6,144(sp)
    8005f0e0:	e55e                	sd	s7,136(sp)
quickjs-nuttx/libbf.c:4030
    if ((n2 - n1) == 1) {
    8005f0e2:	40d70933          	sub	s2,a4,a3
    8005f0e6:	4785                	li	a5,1
quickjs-nuttx/libbf.c:4026
static void bf_const_log2_rec(bf_t *T, bf_t *P, bf_t *Q, limb_t n1,
    8005f0e8:	89aa                	mv	s3,a0
    8005f0ea:	84ae                	mv	s1,a1
    8005f0ec:	8a32                	mv	s4,a2
    8005f0ee:	8436                	mv	s0,a3
quickjs-nuttx/libbf.c:4030
    if ((n2 - n1) == 1) {
    8005f0f0:	04f91763          	bne	s2,a5,8005f13e <bf_const_log2_rec.constprop.0+0x72>
quickjs-nuttx/libbf.c:4031
        if (n1 == 0) {
    8005f0f4:	ee95                	bnez	a3,8005f130 <bf_const_log2_rec.constprop.0+0x64>
quickjs-nuttx/libbf.c:4032
            bf_set_ui(P, 3);
    8005f0f6:	458d                	li	a1,3
    8005f0f8:	8526                	mv	a0,s1
    8005f0fa:	ae5f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4037
        bf_set_ui(Q, 2 * n1 + 1);
    8005f0fe:	0406                	slli	s0,s0,0x1
    8005f100:	00140593          	addi	a1,s0,1
    8005f104:	8552                	mv	a0,s4
    8005f106:	ad9f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4038
        Q->expn += 2;
    8005f10a:	010a3783          	ld	a5,16(s4)
quickjs-nuttx/libbf.c:4062
}
    8005f10e:	640e                	ld	s0,192(sp)
    8005f110:	60ae                	ld	ra,200(sp)
quickjs-nuttx/libbf.c:4038
        Q->expn += 2;
    8005f112:	0789                	addi	a5,a5,2
quickjs-nuttx/libbf.c:4062
}
    8005f114:	794a                	ld	s2,176(sp)
    8005f116:	6aea                	ld	s5,152(sp)
    8005f118:	6b4a                	ld	s6,144(sp)
    8005f11a:	6baa                	ld	s7,136(sp)
quickjs-nuttx/libbf.c:4038
        Q->expn += 2;
    8005f11c:	00fa3823          	sd	a5,16(s4)
quickjs-nuttx/libbf.c:4039
        bf_set(T, P);
    8005f120:	85a6                	mv	a1,s1
quickjs-nuttx/libbf.c:4062
}
    8005f122:	7a0a                	ld	s4,160(sp)
    8005f124:	74ea                	ld	s1,184(sp)
quickjs-nuttx/libbf.c:4039
        bf_set(T, P);
    8005f126:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:4062
}
    8005f128:	79aa                	ld	s3,168(sp)
    8005f12a:	6169                	addi	sp,sp,208
quickjs-nuttx/libbf.c:4039
        bf_set(T, P);
    8005f12c:	ef7f806f          	j	80058022 <bf_set>
quickjs-nuttx/libbf.c:4034
            bf_set_ui(P, n1);
    8005f130:	85b6                	mv	a1,a3
    8005f132:	8526                	mv	a0,s1
    8005f134:	aabf80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4035
            P->sign = 1;
    8005f138:	0124a423          	sw	s2,8(s1)
    8005f13c:	b7c9                	j	8005f0fe <bf_const_log2_rec.constprop.0+0x32>
quickjs-nuttx/libbf.c:4046
        m = n1 + ((n2 - n1) >> 1);
    8005f13e:	00195913          	srli	s2,s2,0x1
    8005f142:	00d90433          	add	s0,s2,a3
    8005f146:	8b3a                	mv	s6,a4
quickjs-nuttx/libbf.c:4047
        bf_const_log2_rec(T, P, Q, n1, m, TRUE);
    8005f148:	4785                	li	a5,1
    8005f14a:	8722                	mv	a4,s0
quickjs-nuttx/libbf.c:4029
    bf_context_t *s = T->ctx;
    8005f14c:	00053b83          	ld	s7,0(a0)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f150:	597d                	li	s2,-1
bf_const_log2_rec():
quickjs-nuttx/libbf.c:4047
        bf_const_log2_rec(T, P, Q, n1, m, TRUE);
    8005f152:	f7bff0ef          	jal	ra,8005f0cc <bf_const_log2_rec.constprop.0>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f156:	03f91793          	slli	a5,s2,0x3f
    8005f15a:	ec3e                	sd	a5,24(sp)
    8005f15c:	e0be                	sd	a5,64(sp)
    8005f15e:	f4be                	sd	a5,104(sp)
bf_const_log2_rec():
quickjs-nuttx/libbf.c:4051
        bf_const_log2_rec(T1, P1, Q1, m, n2, need_P);
    8005f160:	875a                	mv	a4,s6
    8005f162:	87d6                	mv	a5,s5
    8005f164:	86a2                	mv	a3,s0
    8005f166:	08b0                	addi	a2,sp,88
    8005f168:	180c                	addi	a1,sp,48
    8005f16a:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f16c:	e45e                	sd	s7,8(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f16e:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f170:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f172:	f402                	sd	zero,40(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f174:	f85e                	sd	s7,48(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f176:	dc02                	sw	zero,56(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f178:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f17a:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f17c:	ecde                	sd	s7,88(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f17e:	d082                	sw	zero,96(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f180:	f882                	sd	zero,112(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f182:	fc82                	sd	zero,120(sp)
bf_const_log2_rec():
quickjs-nuttx/libbf.c:4051
        bf_const_log2_rec(T1, P1, Q1, m, n2, need_P);
    8005f184:	f49ff0ef          	jal	ra,8005f0cc <bf_const_log2_rec.constprop.0>
quickjs-nuttx/libbf.c:4052
        bf_mul(T, T, Q1, BF_PREC_INF, BF_RNDZ);
    8005f188:	4705                	li	a4,1
    8005f18a:	00295693          	srli	a3,s2,0x2
    8005f18e:	08b0                	addi	a2,sp,88
    8005f190:	85ce                	mv	a1,s3
    8005f192:	854e                	mv	a0,s3
    8005f194:	d9cfd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4053
        bf_mul(T1, T1, P, BF_PREC_INF, BF_RNDZ);
    8005f198:	002c                	addi	a1,sp,8
    8005f19a:	4705                	li	a4,1
    8005f19c:	00295693          	srli	a3,s2,0x2
    8005f1a0:	8626                	mv	a2,s1
    8005f1a2:	852e                	mv	a0,a1
    8005f1a4:	d8cfd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4054
        bf_add(T, T, T1, BF_PREC_INF, BF_RNDZ);
    8005f1a8:	4705                	li	a4,1
    8005f1aa:	00295693          	srli	a3,s2,0x2
    8005f1ae:	0030                	addi	a2,sp,8
    8005f1b0:	85ce                	mv	a1,s3
    8005f1b2:	854e                	mv	a0,s3
    8005f1b4:	989f90ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:4055
        if (need_P)
    8005f1b8:	000a8a63          	beqz	s5,8005f1cc <bf_const_log2_rec.constprop.0+0x100>
quickjs-nuttx/libbf.c:4056
            bf_mul(P, P, P1, BF_PREC_INF, BF_RNDZ);
    8005f1bc:	4705                	li	a4,1
    8005f1be:	00295693          	srli	a3,s2,0x2
    8005f1c2:	1810                	addi	a2,sp,48
    8005f1c4:	85a6                	mv	a1,s1
    8005f1c6:	8526                	mv	a0,s1
    8005f1c8:	d68fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4057
        bf_mul(Q, Q, Q1, BF_PREC_INF, BF_RNDZ);
    8005f1cc:	56fd                	li	a3,-1
    8005f1ce:	08b0                	addi	a2,sp,88
    8005f1d0:	85d2                	mv	a1,s4
    8005f1d2:	4705                	li	a4,1
    8005f1d4:	8289                	srli	a3,a3,0x2
    8005f1d6:	8552                	mv	a0,s4
    8005f1d8:	d58fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4058
        bf_delete(T1);
    8005f1dc:	0028                	addi	a0,sp,8
    8005f1de:	8cdf70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4059
        bf_delete(P1);
    8005f1e2:	1808                	addi	a0,sp,48
    8005f1e4:	8c7f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4060
        bf_delete(Q1);
    8005f1e8:	08a8                	addi	a0,sp,88
    8005f1ea:	8c1f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4062
}
    8005f1ee:	60ae                	ld	ra,200(sp)
    8005f1f0:	640e                	ld	s0,192(sp)
    8005f1f2:	74ea                	ld	s1,184(sp)
    8005f1f4:	794a                	ld	s2,176(sp)
    8005f1f6:	79aa                	ld	s3,168(sp)
    8005f1f8:	7a0a                	ld	s4,160(sp)
    8005f1fa:	6aea                	ld	s5,152(sp)
    8005f1fc:	6b4a                	ld	s6,144(sp)
    8005f1fe:	6baa                	ld	s7,136(sp)
    8005f200:	6169                	addi	sp,sp,208
    8005f202:	8082                	ret

000000008005f204 <bf_const_log2_internal>:
bf_const_log2_internal():
quickjs-nuttx/libbf.c:4066
{
    8005f204:	7159                	addi	sp,sp,-112
    8005f206:	f486                	sd	ra,104(sp)
    8005f208:	f0a2                	sd	s0,96(sp)
    8005f20a:	eca6                	sd	s1,88(sp)
quickjs-nuttx/libbf.c:4073
    bf_init(T->ctx, P);
    8005f20c:	6118                	ld	a4,0(a0)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f20e:	57fd                	li	a5,-1
    8005f210:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f212:	e03a                	sd	a4,0(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f214:	e83e                	sd	a5,16(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f216:	f43a                	sd	a4,40(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f218:	fc3e                	sd	a5,56(sp)
bf_const_log2_internal():
quickjs-nuttx/libbf.c:4071
    w = prec + 15;
    8005f21a:	00f58713          	addi	a4,a1,15
quickjs-nuttx/libbf.c:4072
    N = w / 3 + 1;
    8005f21e:	478d                	li	a5,3
    8005f220:	02f75733          	divu	a4,a4,a5
quickjs-nuttx/libbf.c:4066
{
    8005f224:	84ae                	mv	s1,a1
quickjs-nuttx/libbf.c:4075
    bf_const_log2_rec(T, P, Q, 0, N, FALSE);
    8005f226:	4781                	li	a5,0
    8005f228:	1030                	addi	a2,sp,40
    8005f22a:	858a                	mv	a1,sp
    8005f22c:	4681                	li	a3,0
quickjs-nuttx/libbf.c:4066
{
    8005f22e:	842a                	mv	s0,a0
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f230:	c402                	sw	zero,8(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f232:	ec02                	sd	zero,24(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f234:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f236:	d802                	sw	zero,48(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f238:	e082                	sd	zero,64(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f23a:	e482                	sd	zero,72(sp)
bf_const_log2_internal():
quickjs-nuttx/libbf.c:4075
    bf_const_log2_rec(T, P, Q, 0, N, FALSE);
    8005f23c:	0705                	addi	a4,a4,1
    8005f23e:	e8fff0ef          	jal	ra,8005f0cc <bf_const_log2_rec.constprop.0>
quickjs-nuttx/libbf.c:4076
    bf_div(T, T, Q, prec, BF_RNDN);
    8005f242:	86a6                	mv	a3,s1
    8005f244:	1030                	addi	a2,sp,40
    8005f246:	85a2                	mv	a1,s0
    8005f248:	4701                	li	a4,0
    8005f24a:	8522                	mv	a0,s0
    8005f24c:	965f90ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:4077
    bf_delete(P);
    8005f250:	850a                	mv	a0,sp
    8005f252:	859f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4078
    bf_delete(Q);
    8005f256:	1028                	addi	a0,sp,40
    8005f258:	853f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4079
}
    8005f25c:	70a6                	ld	ra,104(sp)
    8005f25e:	7406                	ld	s0,96(sp)
    8005f260:	64e6                	ld	s1,88(sp)
    8005f262:	6165                	addi	sp,sp,112
    8005f264:	8082                	ret

000000008005f266 <bf_divrem>:
bf_divrem():
quickjs-nuttx/libbf.c:1753
{
    8005f266:	7131                	addi	sp,sp,-192
    8005f268:	fd06                	sd	ra,184(sp)
    8005f26a:	f922                	sd	s0,176(sp)
    8005f26c:	f526                	sd	s1,168(sp)
    8005f26e:	f14a                	sd	s2,160(sp)
    8005f270:	ed4e                	sd	s3,152(sp)
    8005f272:	e952                	sd	s4,144(sp)
    8005f274:	e556                	sd	s5,136(sp)
    8005f276:	e15a                	sd	s6,128(sp)
    8005f278:	fcde                	sd	s7,120(sp)
    8005f27a:	f8e2                	sd	s8,112(sp)
    8005f27c:	f4e6                	sd	s9,104(sp)
    8005f27e:	f0ea                	sd	s10,96(sp)
    8005f280:	ecee                	sd	s11,88(sp)
quickjs-nuttx/libbf.c:1759
    assert(q != a && q != b);
    8005f282:	00c50663          	beq	a0,a2,8005f28e <bf_divrem+0x28>
    8005f286:	84aa                	mv	s1,a0
    8005f288:	8a36                	mv	s4,a3
quickjs-nuttx/libbf.c:1759 (discriminator 2)
    8005f28a:	00d51b63          	bne	a0,a3,8005f2a0 <bf_divrem+0x3a>
quickjs-nuttx/libbf.c:1759 (discriminator 3)
    8005f28e:	4601                	li	a2,0
    8005f290:	6df00593          	li	a1,1759
quickjs-nuttx/libbf.c:1760 (discriminator 3)
    assert(r != a && r != b);
    8005f294:	00021517          	auipc	a0,0x21
    8005f298:	32c50513          	addi	a0,a0,812 # 800805c0 <std_name.0+0x18>
    8005f29c:	6c0010ef          	jal	ra,8006095c <__assert>
    8005f2a0:	842e                	mv	s0,a1
    8005f2a2:	8932                	mv	s2,a2
quickjs-nuttx/libbf.c:1760 (discriminator 4)
    8005f2a4:	00b60463          	beq	a2,a1,8005f2ac <bf_divrem+0x46>
quickjs-nuttx/libbf.c:1760 (discriminator 2)
    8005f2a8:	00b69663          	bne	a3,a1,8005f2b4 <bf_divrem+0x4e>
quickjs-nuttx/libbf.c:1760 (discriminator 3)
    8005f2ac:	4601                	li	a2,0
    8005f2ae:	6e000593          	li	a1,1760
    8005f2b2:	b7cd                	j	8005f294 <bf_divrem+0x2e>
quickjs-nuttx/libbf.c:1761 (discriminator 4)
    assert(q != r);
    8005f2b4:	00b51663          	bne	a0,a1,8005f2c0 <bf_divrem+0x5a>
quickjs-nuttx/libbf.c:1761 (discriminator 1)
    8005f2b8:	4601                	li	a2,0
    8005f2ba:	6e100593          	li	a1,1761
    8005f2be:	bfd9                	j	8005f294 <bf_divrem+0x2e>
    8005f2c0:	8c3a                	mv	s8,a4
quickjs-nuttx/libbf.c:1763 (discriminator 2)
    if (a->len == 0 || b->len == 0) {
    8005f2c2:	6e18                	ld	a4,24(a2)
    8005f2c4:	8cbe                	mv	s9,a5
    8005f2c6:	c319                	beqz	a4,8005f2cc <bf_divrem+0x66>
quickjs-nuttx/libbf.c:1763 (discriminator 1)
    8005f2c8:	6e9c                	ld	a5,24(a3)
    8005f2ca:	e7d1                	bnez	a5,8005f356 <bf_divrem+0xf0>
quickjs-nuttx/libbf.c:1764
        bf_set_zero(q, 0);
    8005f2cc:	4581                	li	a1,0
    8005f2ce:	8526                	mv	a0,s1
    8005f2d0:	991f80ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/libbf.c:1765
        if (a->expn == BF_EXP_NAN || b->expn == BF_EXP_NAN) {
    8005f2d4:	01093603          	ld	a2,16(s2)
    8005f2d8:	57fd                	li	a5,-1
    8005f2da:	0017d713          	srli	a4,a5,0x1
    8005f2de:	00e60663          	beq	a2,a4,8005f2ea <bf_divrem+0x84>
quickjs-nuttx/libbf.c:1765 (discriminator 1)
    8005f2e2:	010a3683          	ld	a3,16(s4)
    8005f2e6:	02e69563          	bne	a3,a4,8005f310 <bf_divrem+0xaa>
quickjs-nuttx/libbf.c:1766
            bf_set_nan(r);
    8005f2ea:	8522                	mv	a0,s0
    8005f2ec:	8d3f80ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1767
            return 0;
    8005f2f0:	4501                	li	a0,0
quickjs-nuttx/libbf.c:1843
}
    8005f2f2:	70ea                	ld	ra,184(sp)
    8005f2f4:	744a                	ld	s0,176(sp)
    8005f2f6:	74aa                	ld	s1,168(sp)
    8005f2f8:	790a                	ld	s2,160(sp)
    8005f2fa:	69ea                	ld	s3,152(sp)
    8005f2fc:	6a4a                	ld	s4,144(sp)
    8005f2fe:	6aaa                	ld	s5,136(sp)
    8005f300:	6b0a                	ld	s6,128(sp)
    8005f302:	7be6                	ld	s7,120(sp)
    8005f304:	7c46                	ld	s8,112(sp)
    8005f306:	7ca6                	ld	s9,104(sp)
    8005f308:	7d06                	ld	s10,96(sp)
    8005f30a:	6de6                	ld	s11,88(sp)
    8005f30c:	6129                	addi	sp,sp,192
    8005f30e:	8082                	ret
quickjs-nuttx/libbf.c:1768
        } else if (a->expn == BF_EXP_INF || b->expn == BF_EXP_ZERO) {
    8005f310:	5775                	li	a4,-3
    8005f312:	8305                	srli	a4,a4,0x1
    8005f314:	00e60563          	beq	a2,a4,8005f31e <bf_divrem+0xb8>
quickjs-nuttx/libbf.c:1768 (discriminator 1)
    8005f318:	17fe                	slli	a5,a5,0x3f
    8005f31a:	00f69763          	bne	a3,a5,8005f328 <bf_divrem+0xc2>
quickjs-nuttx/libbf.c:1769
            bf_set_nan(r);
    8005f31e:	8522                	mv	a0,s0
    8005f320:	89ff80ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1770
            return BF_ST_INVALID_OP;
    8005f324:	4505                	li	a0,1
    8005f326:	b7f1                	j	8005f2f2 <bf_divrem+0x8c>
quickjs-nuttx/libbf.c:1772
            bf_set(r, a);
    8005f328:	85ca                	mv	a1,s2
    8005f32a:	8522                	mv	a0,s0
    8005f32c:	cf7f80ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:1773
            return bf_round(r, prec, flags);
    8005f330:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:1843
}
    8005f332:	744a                	ld	s0,176(sp)
    8005f334:	70ea                	ld	ra,184(sp)
    8005f336:	74aa                	ld	s1,168(sp)
    8005f338:	790a                	ld	s2,160(sp)
    8005f33a:	69ea                	ld	s3,152(sp)
    8005f33c:	6a4a                	ld	s4,144(sp)
    8005f33e:	6aaa                	ld	s5,136(sp)
    8005f340:	6b0a                	ld	s6,128(sp)
    8005f342:	7be6                	ld	s7,120(sp)
    8005f344:	7d06                	ld	s10,96(sp)
    8005f346:	6de6                	ld	s11,88(sp)
quickjs-nuttx/libbf.c:1773
            return bf_round(r, prec, flags);
    8005f348:	8666                	mv	a2,s9
    8005f34a:	85e2                	mv	a1,s8
quickjs-nuttx/libbf.c:1843
}
    8005f34c:	7ca6                	ld	s9,104(sp)
    8005f34e:	7c46                	ld	s8,112(sp)
    8005f350:	6129                	addi	sp,sp,192
quickjs-nuttx/libbf.c:1773
            return bf_round(r, prec, flags);
    8005f352:	fa1f806f          	j	800582f2 <bf_round>
quickjs-nuttx/libbf.c:1777
    q_sign = a->sign ^ b->sign;
    8005f356:	00862a83          	lw	s5,8(a2)
    8005f35a:	0086ab83          	lw	s7,8(a3)
    8005f35e:	89c2                	mv	s3,a6
    8005f360:	017acbb3          	xor	s7,s5,s7
quickjs-nuttx/libbf.c:1778
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    8005f364:	08080e63          	beqz	a6,8005f400 <bf_divrem+0x19a>
quickjs-nuttx/libbf.c:1778 (discriminator 2)
    8005f368:	ffc80d13          	addi	s10,a6,-4
quickjs-nuttx/libbf.c:1779 (discriminator 2)
    switch(rnd_mode) {
    8005f36c:	468d                	li	a3,3
quickjs-nuttx/libbf.c:1778 (discriminator 2)
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    8005f36e:	001d3d13          	seqz	s10,s10
quickjs-nuttx/libbf.c:1779 (discriminator 2)
    switch(rnd_mode) {
    8005f372:	08d80463          	beq	a6,a3,8005f3fa <bf_divrem+0x194>
quickjs-nuttx/libbf.c:1779
    8005f376:	0706cd63          	blt	a3,a6,8005f3f0 <bf_divrem+0x18a>
    8005f37a:	4689                	li	a3,2
quickjs-nuttx/libbf.c:1787
        is_ceil = q_sign;
    8005f37c:	8ade                	mv	s5,s7
quickjs-nuttx/libbf.c:1779
    switch(rnd_mode) {
    8005f37e:	00d98363          	beq	s3,a3,8005f384 <bf_divrem+0x11e>
    8005f382:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:1800
    a1->expn = a->expn;
    8005f384:	01093b03          	ld	s6,16(s2)
quickjs-nuttx/libbf.c:1801
    a1->tab = a->tab;
    8005f388:	02093683          	ld	a3,32(s2)
quickjs-nuttx/libbf.c:1805
    b1->expn = b->expn;
    8005f38c:	010a3d83          	ld	s11,16(s4)
quickjs-nuttx/libbf.c:1802
    a1->len = a->len;
    8005f390:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/libbf.c:1806
    b1->tab = b->tab;
    8005f392:	020a3703          	ld	a4,32(s4)
bf_tdivremu():
quickjs-nuttx/libbf.c:1660
    if (bf_cmpu(a, b) < 0) {
    8005f396:	102c                	addi	a1,sp,40
    8005f398:	850a                	mv	a0,sp
bf_divrem():
quickjs-nuttx/libbf.c:1800
    a1->expn = a->expn;
    8005f39a:	e85a                	sd	s6,16(sp)
quickjs-nuttx/libbf.c:1801
    a1->tab = a->tab;
    8005f39c:	f036                	sd	a3,32(sp)
quickjs-nuttx/libbf.c:1803
    a1->sign = 0;
    8005f39e:	c402                	sw	zero,8(sp)
quickjs-nuttx/libbf.c:1805
    b1->expn = b->expn;
    8005f3a0:	fc6e                	sd	s11,56(sp)
quickjs-nuttx/libbf.c:1806
    b1->tab = b->tab;
    8005f3a2:	e4ba                	sd	a4,72(sp)
quickjs-nuttx/libbf.c:1807
    b1->len = b->len;
    8005f3a4:	e0be                	sd	a5,64(sp)
quickjs-nuttx/libbf.c:1808
    b1->sign = 0;
    8005f3a6:	d802                	sw	zero,48(sp)
bf_tdivremu():
quickjs-nuttx/libbf.c:1660
    if (bf_cmpu(a, b) < 0) {
    8005f3a8:	906f90ef          	jal	ra,800584ae <bf_cmpu>
    8005f3ac:	04055f63          	bgez	a0,8005f40a <bf_divrem+0x1a4>
quickjs-nuttx/libbf.c:1661
        bf_set_ui(q, 0);
    8005f3b0:	4581                	li	a1,0
    8005f3b2:	8526                	mv	a0,s1
    8005f3b4:	82bf80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:1662
        bf_set(r, a);
    8005f3b8:	858a                	mv	a1,sp
    8005f3ba:	8522                	mv	a0,s0
    8005f3bc:	c67f80ef          	jal	ra,80058022 <bf_set>
bf_is_nan():
quickjs-nuttx/libbf.h:241
    return (a->expn == BF_EXP_NAN);
    8005f3c0:	0104ba03          	ld	s4,16(s1)
bf_divrem():
quickjs-nuttx/libbf.c:1812
    if (bf_is_nan(q) || bf_is_nan(r))
    8005f3c4:	57fd                	li	a5,-1
    8005f3c6:	8385                	srli	a5,a5,0x1
    8005f3c8:	0cfa0963          	beq	s4,a5,8005f49a <bf_divrem+0x234>
    8005f3cc:	6818                	ld	a4,16(s0)
    8005f3ce:	0cf70663          	beq	a4,a5,8005f49a <bf_divrem+0x234>
quickjs-nuttx/libbf.c:1815
    if (r->len != 0) {
    8005f3d2:	6c1c                	ld	a5,24(s0)
    8005f3d4:	efb5                	bnez	a5,8005f450 <bf_divrem+0x1ea>
quickjs-nuttx/libbf.c:1836
    r->sign ^= a->sign;
    8005f3d6:	441c                	lw	a5,8(s0)
    8005f3d8:	00892703          	lw	a4,8(s2)
quickjs-nuttx/libbf.c:1838
    return bf_round(r, prec, flags);
    8005f3dc:	8666                	mv	a2,s9
    8005f3de:	85e2                	mv	a1,s8
quickjs-nuttx/libbf.c:1836
    r->sign ^= a->sign;
    8005f3e0:	8fb9                	xor	a5,a5,a4
    8005f3e2:	c41c                	sw	a5,8(s0)
quickjs-nuttx/libbf.c:1837
    q->sign = q_sign;
    8005f3e4:	0174a423          	sw	s7,8(s1)
quickjs-nuttx/libbf.c:1838
    return bf_round(r, prec, flags);
    8005f3e8:	8522                	mv	a0,s0
    8005f3ea:	f09f80ef          	jal	ra,800582f2 <bf_round>
    8005f3ee:	b711                	j	8005f2f2 <bf_divrem+0x8c>
quickjs-nuttx/libbf.c:1779
    switch(rnd_mode) {
    8005f3f0:	4695                	li	a3,5
    8005f3f2:	00d80a63          	beq	a6,a3,8005f406 <bf_divrem+0x1a0>
    8005f3f6:	4699                	li	a3,6
    8005f3f8:	b759                	j	8005f37e <bf_divrem+0x118>
quickjs-nuttx/libbf.c:1790
        is_ceil = q_sign ^ 1;
    8005f3fa:	001bca93          	xori	s5,s7,1
quickjs-nuttx/libbf.c:1791
        break;
    8005f3fe:	b759                	j	8005f384 <bf_divrem+0x11e>
quickjs-nuttx/libbf.c:1784
        is_ceil = FALSE;
    8005f400:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:1778
    is_rndn = (rnd_mode == BF_RNDN || rnd_mode == BF_RNDNA);
    8005f402:	4d05                	li	s10,1
    8005f404:	b741                	j	8005f384 <bf_divrem+0x11e>
quickjs-nuttx/libbf.c:1793
        is_ceil = TRUE;
    8005f406:	4a85                	li	s5,1
    8005f408:	bfb5                	j	8005f384 <bf_divrem+0x11e>
bf_tdivremu():
quickjs-nuttx/libbf.c:1664
        bf_div(q, a, b, bf_max(a->expn - b->expn + 1, 2), BF_RNDZ);
    8005f40a:	41bb06b3          	sub	a3,s6,s11
    8005f40e:	0685                	addi	a3,a3,1
    8005f410:	4789                	li	a5,2
    8005f412:	00f6d363          	bge	a3,a5,8005f418 <bf_divrem+0x1b2>
    8005f416:	4689                	li	a3,2
    8005f418:	1030                	addi	a2,sp,40
    8005f41a:	4705                	li	a4,1
    8005f41c:	858a                	mv	a1,sp
    8005f41e:	8526                	mv	a0,s1
    8005f420:	f90f90ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:1665
        bf_rint(q, BF_RNDZ);
    8005f424:	4585                	li	a1,1
    8005f426:	8526                	mv	a0,s1
    8005f428:	a11f90ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/libbf.c:1666
        bf_mul(r, q, b, BF_PREC_INF, BF_RNDZ);
    8005f42c:	5a7d                	li	s4,-1
    8005f42e:	002a5693          	srli	a3,s4,0x2
    8005f432:	1030                	addi	a2,sp,40
    8005f434:	85a6                	mv	a1,s1
    8005f436:	4705                	li	a4,1
    8005f438:	8522                	mv	a0,s0
    8005f43a:	af6fd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:1667
        bf_sub(r, a, r, BF_PREC_INF, BF_RNDZ);
    8005f43e:	4705                	li	a4,1
    8005f440:	002a5693          	srli	a3,s4,0x2
    8005f444:	8622                	mv	a2,s0
    8005f446:	858a                	mv	a1,sp
    8005f448:	8522                	mv	a0,s0
    8005f44a:	f5af90ef          	jal	ra,80058ba4 <bf_sub>
    8005f44e:	bf8d                	j	8005f3c0 <bf_divrem+0x15a>
bf_divrem():
quickjs-nuttx/libbf.c:1816
        if (is_rndn) {
    8005f450:	060d0d63          	beqz	s10,8005f4ca <bf_divrem+0x264>
quickjs-nuttx/libbf.c:1818
            b1->expn--;
    8005f454:	7ae2                	ld	s5,56(sp)
quickjs-nuttx/libbf.c:1819
            res = bf_cmpu(r, b1);
    8005f456:	102c                	addi	a1,sp,40
    8005f458:	8522                	mv	a0,s0
quickjs-nuttx/libbf.c:1818
            b1->expn--;
    8005f45a:	fffa8793          	addi	a5,s5,-1
    8005f45e:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/libbf.c:1819
            res = bf_cmpu(r, b1);
    8005f460:	84ef90ef          	jal	ra,800584ae <bf_cmpu>
quickjs-nuttx/libbf.c:1820
            b1->expn++;
    8005f464:	fc56                	sd	s5,56(sp)
quickjs-nuttx/libbf.c:1821
            if (res > 0 ||
    8005f466:	04a05363          	blez	a0,8005f4ac <bf_divrem+0x246>
quickjs-nuttx/libbf.c:1829
            ret = bf_add_si(q, q, 1, BF_PREC_INF, BF_RNDZ);
    8005f46a:	5a7d                	li	s4,-1
    8005f46c:	4705                	li	a4,1
    8005f46e:	002a5693          	srli	a3,s4,0x2
    8005f472:	4605                	li	a2,1
    8005f474:	85a6                	mv	a1,s1
    8005f476:	8526                	mv	a0,s1
    8005f478:	f44f90ef          	jal	ra,80058bbc <bf_add_si>
    8005f47c:	89aa                	mv	s3,a0
quickjs-nuttx/libbf.c:1830
            ret |= bf_sub(r, r, b1, BF_PREC_INF, BF_RNDZ);
    8005f47e:	4705                	li	a4,1
    8005f480:	002a5693          	srli	a3,s4,0x2
    8005f484:	1030                	addi	a2,sp,40
    8005f486:	85a2                	mv	a1,s0
    8005f488:	8522                	mv	a0,s0
    8005f48a:	f1af90ef          	jal	ra,80058ba4 <bf_sub>
    8005f48e:	00a9e9b3          	or	s3,s3,a0
quickjs-nuttx/libbf.c:1831
            if (ret & BF_ST_MEM_ERROR)
    8005f492:	0209f993          	andi	s3,s3,32
    8005f496:	f40980e3          	beqz	s3,8005f3d6 <bf_divrem+0x170>
quickjs-nuttx/libbf.c:1840
    bf_set_nan(q);
    8005f49a:	8526                	mv	a0,s1
    8005f49c:	f22f80ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1841
    bf_set_nan(r);
    8005f4a0:	8522                	mv	a0,s0
    8005f4a2:	f1cf80ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:1842
    return BF_ST_MEM_ERROR;
    8005f4a6:	02000513          	li	a0,32
    8005f4aa:	b5a1                	j	8005f2f2 <bf_divrem+0x8c>
quickjs-nuttx/libbf.c:1821 (discriminator 1)
            if (res > 0 ||
    8005f4ac:	f50d                	bnez	a0,8005f3d6 <bf_divrem+0x170>
quickjs-nuttx/libbf.c:1822
                (res == 0 &&
    8005f4ae:	4791                	li	a5,4
    8005f4b0:	faf98de3          	beq	s3,a5,8005f46a <bf_divrem+0x204>
quickjs-nuttx/libbf.c:1824
                  get_bit(q->tab, q->len, q->len * LIMB_BITS - q->expn)))) {
    8005f4b4:	6c8c                	ld	a1,24(s1)
    8005f4b6:	7088                	ld	a0,32(s1)
    8005f4b8:	00659613          	slli	a2,a1,0x6
    8005f4bc:	41460633          	sub	a2,a2,s4
    8005f4c0:	e64f70ef          	jal	ra,80056b24 <get_bit>
quickjs-nuttx/libbf.c:1823
                 (rnd_mode == BF_RNDNA ||
    8005f4c4:	f00509e3          	beqz	a0,8005f3d6 <bf_divrem+0x170>
    8005f4c8:	b74d                	j	8005f46a <bf_divrem+0x204>
quickjs-nuttx/libbf.c:1827
        } else if (is_ceil) {
    8005f4ca:	fa0a90e3          	bnez	s5,8005f46a <bf_divrem+0x204>
    8005f4ce:	b721                	j	8005f3d6 <bf_divrem+0x170>

000000008005f4d0 <bf_rem>:
bf_rem():
quickjs-nuttx/libbf.c:1847
{
    8005f4d0:	7139                	addi	sp,sp,-64
    8005f4d2:	fc06                	sd	ra,56(sp)
    8005f4d4:	f822                	sd	s0,48(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f4d6:	00053803          	ld	a6,0(a0)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f4da:	58fd                	li	a7,-1
    8005f4dc:	18fe                	slli	a7,a7,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f4de:	e442                	sd	a6,8(sp)
bf_rem():
quickjs-nuttx/libbf.c:1852
    ret = bf_divrem(q, r, a, b, prec, flags, rnd_mode);
    8005f4e0:	883e                	mv	a6,a5
    8005f4e2:	87ba                	mv	a5,a4
    8005f4e4:	8736                	mv	a4,a3
    8005f4e6:	86b2                	mv	a3,a2
    8005f4e8:	862e                	mv	a2,a1
    8005f4ea:	85aa                	mv	a1,a0
    8005f4ec:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f4ee:	ec46                	sd	a7,24(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f4f0:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f4f2:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f4f4:	f402                	sd	zero,40(sp)
bf_rem():
quickjs-nuttx/libbf.c:1852
    ret = bf_divrem(q, r, a, b, prec, flags, rnd_mode);
    8005f4f6:	d71ff0ef          	jal	ra,8005f266 <bf_divrem>
    8005f4fa:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:1853
    bf_delete(q);
    8005f4fc:	0028                	addi	a0,sp,8
    8005f4fe:	dacf70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:1855
}
    8005f502:	70e2                	ld	ra,56(sp)
    8005f504:	8522                	mv	a0,s0
    8005f506:	7442                	ld	s0,48(sp)
    8005f508:	6121                	addi	sp,sp,64
    8005f50a:	8082                	ret

000000008005f50c <bf_remquo>:
bf_remquo():
quickjs-nuttx/libbf.c:1868
{
    8005f50c:	715d                	addi	sp,sp,-80
    8005f50e:	e486                	sd	ra,72(sp)
    8005f510:	e0a2                	sd	s0,64(sp)
    8005f512:	fc26                	sd	s1,56(sp)
    8005f514:	84aa                	mv	s1,a0
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f516:	6188                	ld	a0,0(a1)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f518:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f51a:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f51c:	e42a                	sd	a0,8(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f51e:	557d                	li	a0,-1
    8005f520:	157e                	slli	a0,a0,0x3f
    8005f522:	ec2a                	sd	a0,24(sp)
bf_remquo():
quickjs-nuttx/libbf.c:1873
    ret = bf_divrem(q, r, a, b, prec, flags, rnd_mode);
    8005f524:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f526:	f402                	sd	zero,40(sp)
bf_remquo():
quickjs-nuttx/libbf.c:1873
    ret = bf_divrem(q, r, a, b, prec, flags, rnd_mode);
    8005f528:	d3fff0ef          	jal	ra,8005f266 <bf_divrem>
    8005f52c:	842a                	mv	s0,a0
bf_get_limb():
quickjs-nuttx/libbf.c:1862
    return bf_get_int64(pres, a, flags);
    8005f52e:	002c                	addi	a1,sp,8
    8005f530:	4605                	li	a2,1
    8005f532:	8526                	mv	a0,s1
    8005f534:	b3bf90ef          	jal	ra,8005906e <bf_get_int64>
bf_remquo():
quickjs-nuttx/libbf.c:1875
    bf_delete(q);
    8005f538:	0028                	addi	a0,sp,8
    8005f53a:	d70f70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:1877
}
    8005f53e:	60a6                	ld	ra,72(sp)
    8005f540:	8522                	mv	a0,s0
    8005f542:	6406                	ld	s0,64(sp)
    8005f544:	74e2                	ld	s1,56(sp)
    8005f546:	6161                	addi	sp,sp,80
    8005f548:	8082                	ret

000000008005f54a <bf_sincos>:
bf_sincos():
quickjs-nuttx/libbf.c:4864
{
    8005f54a:	7111                	addi	sp,sp,-256
    8005f54c:	fd86                	sd	ra,248(sp)
    8005f54e:	f9a2                	sd	s0,240(sp)
    8005f550:	f5a6                	sd	s1,232(sp)
    8005f552:	f1ca                	sd	s2,224(sp)
    8005f554:	edce                	sd	s3,216(sp)
    8005f556:	e9d2                	sd	s4,208(sp)
    8005f558:	e5d6                	sd	s5,200(sp)
    8005f55a:	e1da                	sd	s6,192(sp)
    8005f55c:	fd5e                	sd	s7,184(sp)
    8005f55e:	f962                	sd	s8,176(sp)
    8005f560:	f566                	sd	s9,168(sp)
    8005f562:	f16a                	sd	s10,160(sp)
    8005f564:	ed6e                	sd	s11,152(sp)
quickjs-nuttx/libbf.c:4872
    assert(c != a && s != a);
    8005f566:	00b60663          	beq	a2,a1,8005f572 <bf_sincos+0x28>
    8005f56a:	84aa                	mv	s1,a0
    8005f56c:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:4872 (discriminator 2)
    8005f56e:	00a61c63          	bne	a2,a0,8005f586 <bf_sincos+0x3c>
quickjs-nuttx/libbf.c:4872 (discriminator 3)
    8005f572:	6585                	lui	a1,0x1
    8005f574:	4601                	li	a2,0
    8005f576:	30858593          	addi	a1,a1,776 # 1308 <asinh-0x7fffecf8>
    8005f57a:	00021517          	auipc	a0,0x21
    8005f57e:	04650513          	addi	a0,a0,70 # 800805c0 <std_name.0+0x18>
    8005f582:	3da010ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:4865
    bf_context_t *s1 = a->ctx;
    8005f586:	621c                	ld	a5,0(a2)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f588:	5bfd                	li	s7,-1
    8005f58a:	03fb9d13          	slli	s10,s7,0x3f
bf_sincos():
quickjs-nuttx/libbf.c:4879
    K = bf_isqrt(prec / 2);
    8005f58e:	0016d513          	srli	a0,a3,0x1
    8005f592:	8436                	mv	s0,a3
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f594:	ec3e                	sd	a5,24(sp)
    8005f596:	e0be                	sd	a5,64(sp)
    8005f598:	f4be                	sd	a5,104(sp)
    8005f59a:	892e                	mv	s2,a1
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f59c:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f59e:	f46a                	sd	s10,40(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f5a0:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f5a2:	fc02                	sd	zero,56(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f5a4:	c482                	sw	zero,72(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f5a6:	e8ea                	sd	s10,80(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f5a8:	ec82                	sd	zero,88(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f5aa:	f082                	sd	zero,96(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f5ac:	d882                	sw	zero,112(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f5ae:	fcea                	sd	s10,120(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f5b0:	e102                	sd	zero,128(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f5b2:	e502                	sd	zero,136(sp)
bf_sincos():
quickjs-nuttx/libbf.c:4879
    K = bf_isqrt(prec / 2);
    8005f5b4:	d54f90ef          	jal	ra,80058b08 <bf_isqrt>
quickjs-nuttx/libbf.c:4880
    l = prec / (2 * K) + 1;
    8005f5b8:	00151793          	slli	a5,a0,0x1
    8005f5bc:	02f45ab3          	divu	s5,s0,a5
quickjs-nuttx/libbf.c:4881
    prec1 = prec + 2 * K + l + 8;
    8005f5c0:	008786b3          	add	a3,a5,s0
quickjs-nuttx/libbf.c:4884
    if (a->expn <= -1) {
    8005f5c4:	0109b783          	ld	a5,16(s3)
quickjs-nuttx/libbf.c:4879
    K = bf_isqrt(prec / 2);
    8005f5c8:	8b2a                	mv	s6,a0
quickjs-nuttx/libbf.c:4880
    l = prec / (2 * K) + 1;
    8005f5ca:	0a85                	addi	s5,s5,1
quickjs-nuttx/libbf.c:4881
    prec1 = prec + 2 * K + l + 8;
    8005f5cc:	96d6                	add	a3,a3,s5
    8005f5ce:	00868413          	addi	s0,a3,8
quickjs-nuttx/libbf.c:4884
    if (a->expn <= -1) {
    8005f5d2:	0607c663          	bltz	a5,8005f63e <bf_sincos+0xf4>
quickjs-nuttx/libbf.c:4890
        cancel = 0;
    8005f5d6:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:4894
            bf_mul_2exp(U, -1, BF_PREC_INF, BF_RNDZ);
    8005f5d8:	002bdb93          	srli	s7,s7,0x2
quickjs-nuttx/libbf.c:4898
                             (T->expn + prec2) >= (prec1 - 1)))
    8005f5dc:	00768c13          	addi	s8,a3,7
quickjs-nuttx/libbf.c:4901
            cancel = bf_max(-T->expn, (cancel + 1) * 3 / 2);
    8005f5e0:	4d8d                	li	s11,3
quickjs-nuttx/libbf.c:4892
            prec2 = prec1 + a->expn + cancel;
    8005f5e2:	0109ba03          	ld	s4,16(s3)
quickjs-nuttx/libbf.c:4893
            bf_const_pi(U, prec2, BF_RNDF);
    8005f5e6:	4619                	li	a2,6
    8005f5e8:	0088                	addi	a0,sp,64
quickjs-nuttx/libbf.c:4892
            prec2 = prec1 + a->expn + cancel;
    8005f5ea:	9a22                	add	s4,s4,s0
    8005f5ec:	9a66                	add	s4,s4,s9
quickjs-nuttx/libbf.c:4893
            bf_const_pi(U, prec2, BF_RNDF);
    8005f5ee:	85d2                	mv	a1,s4
    8005f5f0:	c63f90ef          	jal	ra,80059252 <bf_const_pi>
quickjs-nuttx/libbf.c:4894
            bf_mul_2exp(U, -1, BF_PREC_INF, BF_RNDZ);
    8005f5f4:	4685                	li	a3,1
    8005f5f6:	865e                	mv	a2,s7
    8005f5f8:	55fd                	li	a1,-1
    8005f5fa:	0088                	addi	a0,sp,64
    8005f5fc:	c8af90ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4895
            bf_remquo(&mod, T, a, U, prec2, BF_RNDN, BF_RNDN);
    8005f600:	4781                	li	a5,0
    8005f602:	4801                	li	a6,0
    8005f604:	8752                	mv	a4,s4
    8005f606:	0094                	addi	a3,sp,64
    8005f608:	864e                	mv	a2,s3
    8005f60a:	082c                	addi	a1,sp,24
    8005f60c:	0808                	addi	a0,sp,16
    8005f60e:	effff0ef          	jal	ra,8005f50c <bf_remquo>
quickjs-nuttx/libbf.c:4897
            if (mod == 0 || (T->expn != BF_EXP_ZERO &&
    8005f612:	67c2                	ld	a5,16(sp)
    8005f614:	0e078863          	beqz	a5,8005f704 <bf_sincos+0x1ba>
quickjs-nuttx/libbf.c:4897 (discriminator 1)
    8005f618:	7722                	ld	a4,40(sp)
    8005f61a:	4889                	li	a7,2
    8005f61c:	01a70563          	beq	a4,s10,8005f626 <bf_sincos+0xdc>
quickjs-nuttx/libbf.c:4898 (discriminator 2)
                             (T->expn + prec2) >= (prec1 - 1)))
    8005f620:	9a3a                	add	s4,s4,a4
quickjs-nuttx/libbf.c:4897 (discriminator 2)
            if (mod == 0 || (T->expn != BF_EXP_ZERO &&
    8005f622:	0f8a5163          	bge	s4,s8,8005f704 <bf_sincos+0x1ba>
quickjs-nuttx/libbf.c:4901
            cancel = bf_max(-T->expn, (cancel + 1) * 3 / 2);
    8005f626:	001c8793          	addi	a5,s9,1
    8005f62a:	03b787b3          	mul	a5,a5,s11
    8005f62e:	40e00cb3          	neg	s9,a4
    8005f632:	0317c7b3          	div	a5,a5,a7
quickjs-nuttx/libbf.h:180
    if (a > b)
    8005f636:	fafcd6e3          	bge	s9,a5,8005f5e2 <bf_sincos+0x98>
    8005f63a:	8cbe                	mv	s9,a5
    8005f63c:	b75d                	j	8005f5e2 <bf_sincos+0x98>
quickjs-nuttx/libbf.c:4886
        bf_set(T, a);
    8005f63e:	85ce                	mv	a1,s3
    8005f640:	0828                	addi	a0,sp,24
    8005f642:	9e1f80ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:4887
        mod = 0;
    8005f646:	e802                	sd	zero,16(sp)
quickjs-nuttx/libbf.c:4909
    bf_mul(T, T, T, prec1, BF_RNDN);
    8005f648:	0830                	addi	a2,sp,24
    8005f64a:	4701                	li	a4,0
    8005f64c:	85b2                	mv	a1,a2
    8005f64e:	86a2                	mv	a3,s0
    8005f650:	8532                	mv	a0,a2
quickjs-nuttx/libbf.c:4906
    is_neg = T->sign;
    8005f652:	5a02                	lw	s4,32(sp)
quickjs-nuttx/libbf.c:4909
    bf_mul(T, T, T, prec1, BF_RNDN);
    8005f654:	8dcfd0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4910
    bf_mul_2exp(T, -2 * K, BF_PREC_INF, BF_RNDZ);
    8005f658:	55f9                	li	a1,-2
    8005f65a:	02bb05b3          	mul	a1,s6,a1
    8005f65e:	59fd                	li	s3,-1
    8005f660:	0029d613          	srli	a2,s3,0x2
    8005f664:	4685                	li	a3,1
    8005f666:	0828                	addi	a0,sp,24
quickjs-nuttx/libbf.c:4918
        bf_mul_ui(U, U, 2 * i, BF_PREC_INF, BF_RNDZ);
    8005f668:	0029d993          	srli	s3,s3,0x2
quickjs-nuttx/libbf.c:4910
    bf_mul_2exp(T, -2 * K, BF_PREC_INF, BF_RNDZ);
    8005f66c:	c1af90ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4915
    bf_set_ui(r, 1);
    8005f670:	4585                	li	a1,1
    8005f672:	10a8                	addi	a0,sp,104
    8005f674:	d6af80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4916 (discriminator 1)
    for(i = l ; i >= 1; i--) {
    8005f678:	09504963          	bgtz	s5,8005f70a <bf_sincos+0x1c0>
quickjs-nuttx/libbf.c:4925
    bf_delete(U);
    8005f67c:	0088                	addi	a0,sp,64
quickjs-nuttx/libbf.c:4932
        bf_mul_2exp(r, 1, BF_PREC_INF, BF_RNDZ);
    8005f67e:	59fd                	li	s3,-1
quickjs-nuttx/libbf.c:4925
    bf_delete(U);
    8005f680:	c2af70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4930
    for(i = 0; i < K; i++) {
    8005f684:	4a81                	li	s5,0
quickjs-nuttx/libbf.c:4932
        bf_mul_2exp(r, 1, BF_PREC_INF, BF_RNDZ);
    8005f686:	0029d993          	srli	s3,s3,0x2
quickjs-nuttx/libbf.c:4930 (discriminator 1)
    for(i = 0; i < K; i++) {
    8005f68a:	0d6acd63          	blt	s5,s6,8005f764 <bf_sincos+0x21a>
quickjs-nuttx/libbf.c:4936
    bf_delete(T);
    8005f68e:	0828                	addi	a0,sp,24
    8005f690:	c1af70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4938
    if (c) {
    8005f694:	02090463          	beqz	s2,8005f6bc <bf_sincos+0x172>
quickjs-nuttx/libbf.c:4939
        if ((mod & 1) == 0) {
    8005f698:	67c2                	ld	a5,16(sp)
    8005f69a:	8b85                	andi	a5,a5,1
    8005f69c:	10079063          	bnez	a5,8005f79c <bf_sincos+0x252>
quickjs-nuttx/libbf.c:4940
            bf_add_si(c, r, 1, prec1, BF_RNDN);
    8005f6a0:	4701                	li	a4,0
    8005f6a2:	86a2                	mv	a3,s0
    8005f6a4:	4605                	li	a2,1
    8005f6a6:	10ac                	addi	a1,sp,104
    8005f6a8:	854a                	mv	a0,s2
    8005f6aa:	d12f90ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4945
        c->sign ^= mod >> 1;
    8005f6ae:	67c2                	ld	a5,16(sp)
    8005f6b0:	00892703          	lw	a4,8(s2)
    8005f6b4:	8785                	srai	a5,a5,0x1
    8005f6b6:	8fb9                	xor	a5,a5,a4
    8005f6b8:	00f92423          	sw	a5,8(s2)
quickjs-nuttx/libbf.c:4947
    if (s) {
    8005f6bc:	c08d                	beqz	s1,8005f6de <bf_sincos+0x194>
quickjs-nuttx/libbf.c:4948
        if ((mod & 1) == 0) {
    8005f6be:	67c2                	ld	a5,16(sp)
    8005f6c0:	8b85                	andi	a5,a5,1
    8005f6c2:	0e079763          	bnez	a5,8005f7b0 <bf_sincos+0x266>
quickjs-nuttx/libbf.c:4949
            bf_sqrt_sin(s, r, prec1);
    8005f6c6:	8622                	mv	a2,s0
    8005f6c8:	10ac                	addi	a1,sp,104
    8005f6ca:	8526                	mv	a0,s1
    8005f6cc:	c4cff0ef          	jal	ra,8005eb18 <bf_sqrt_sin>
quickjs-nuttx/libbf.c:4950
            s->sign = is_neg;
    8005f6d0:	0144a423          	sw	s4,8(s1)
quickjs-nuttx/libbf.c:4954
        s->sign ^= mod >> 1;
    8005f6d4:	67c2                	ld	a5,16(sp)
    8005f6d6:	4498                	lw	a4,8(s1)
    8005f6d8:	8785                	srai	a5,a5,0x1
    8005f6da:	8fb9                	xor	a5,a5,a4
    8005f6dc:	c49c                	sw	a5,8(s1)
quickjs-nuttx/libbf.c:4956
    bf_delete(r);
    8005f6de:	10a8                	addi	a0,sp,104
    8005f6e0:	bcaf70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:4958
}
    8005f6e4:	70ee                	ld	ra,248(sp)
    8005f6e6:	744e                	ld	s0,240(sp)
    8005f6e8:	74ae                	ld	s1,232(sp)
    8005f6ea:	790e                	ld	s2,224(sp)
    8005f6ec:	69ee                	ld	s3,216(sp)
    8005f6ee:	6a4e                	ld	s4,208(sp)
    8005f6f0:	6aae                	ld	s5,200(sp)
    8005f6f2:	6b0e                	ld	s6,192(sp)
    8005f6f4:	7bea                	ld	s7,184(sp)
    8005f6f6:	7c4a                	ld	s8,176(sp)
    8005f6f8:	7caa                	ld	s9,168(sp)
    8005f6fa:	7d0a                	ld	s10,160(sp)
    8005f6fc:	6dea                	ld	s11,152(sp)
    8005f6fe:	4541                	li	a0,16
    8005f700:	6111                	addi	sp,sp,256
    8005f702:	8082                	ret
quickjs-nuttx/libbf.c:4903
        mod &= 3;
    8005f704:	8b8d                	andi	a5,a5,3
    8005f706:	e83e                	sd	a5,16(sp)
    8005f708:	b781                	j	8005f648 <bf_sincos+0xfe>
quickjs-nuttx/libbf.c:4917
        bf_set_ui(U, 2 * i - 1);
    8005f70a:	001a9613          	slli	a2,s5,0x1
    8005f70e:	fff60593          	addi	a1,a2,-1
    8005f712:	0088                	addi	a0,sp,64
    8005f714:	e432                	sd	a2,8(sp)
    8005f716:	cc8f80ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:4918
        bf_mul_ui(U, U, 2 * i, BF_PREC_INF, BF_RNDZ);
    8005f71a:	6622                	ld	a2,8(sp)
    8005f71c:	008c                	addi	a1,sp,64
    8005f71e:	4705                	li	a4,1
    8005f720:	86ce                	mv	a3,s3
    8005f722:	852e                	mv	a0,a1
    8005f724:	a8cfd0ef          	jal	ra,8005c9b0 <bf_mul_ui>
quickjs-nuttx/libbf.c:4919
        bf_div(U, T, U, prec1, BF_RNDN);
    8005f728:	0090                	addi	a2,sp,64
    8005f72a:	4701                	li	a4,0
    8005f72c:	86a2                	mv	a3,s0
    8005f72e:	082c                	addi	a1,sp,24
    8005f730:	8532                	mv	a0,a2
    8005f732:	c7ef90ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:4920
        bf_mul(r, r, U, prec1, BF_RNDN);
    8005f736:	10ac                	addi	a1,sp,104
    8005f738:	4701                	li	a4,0
    8005f73a:	86a2                	mv	a3,s0
    8005f73c:	0090                	addi	a2,sp,64
    8005f73e:	852e                	mv	a0,a1
    8005f740:	ff1fc0ef          	jal	ra,8005c730 <bf_mul>
bf_neg():
quickjs-nuttx/libbf.h:231
    r->sign ^= 1;
    8005f744:	57c6                	lw	a5,112(sp)
    8005f746:	0017c793          	xori	a5,a5,1
    8005f74a:	d8be                	sw	a5,112(sp)
bf_sincos():
quickjs-nuttx/libbf.c:4922
        if (i != 1)
    8005f74c:	4785                	li	a5,1
    8005f74e:	00fa8963          	beq	s5,a5,8005f760 <bf_sincos+0x216>
quickjs-nuttx/libbf.c:4923
            bf_add_si(r, r, 1, prec1, BF_RNDN);
    8005f752:	10ac                	addi	a1,sp,104
    8005f754:	4701                	li	a4,0
    8005f756:	86a2                	mv	a3,s0
    8005f758:	4605                	li	a2,1
    8005f75a:	852e                	mv	a0,a1
    8005f75c:	c60f90ef          	jal	ra,80058bbc <bf_add_si>
quickjs-nuttx/libbf.c:4916 (discriminator 2)
    for(i = l ; i >= 1; i--) {
    8005f760:	1afd                	addi	s5,s5,-1
    8005f762:	bf19                	j	8005f678 <bf_sincos+0x12e>
quickjs-nuttx/libbf.c:4931 (discriminator 3)
        bf_mul(T, r, r, prec1, BF_RNDN);
    8005f764:	10b0                	addi	a2,sp,104
    8005f766:	4701                	li	a4,0
    8005f768:	85b2                	mv	a1,a2
    8005f76a:	86a2                	mv	a3,s0
    8005f76c:	0828                	addi	a0,sp,24
    8005f76e:	fc3fc0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:4932 (discriminator 3)
        bf_mul_2exp(r, 1, BF_PREC_INF, BF_RNDZ);
    8005f772:	4685                	li	a3,1
    8005f774:	864e                	mv	a2,s3
    8005f776:	4585                	li	a1,1
    8005f778:	10a8                	addi	a0,sp,104
    8005f77a:	b0cf90ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4933 (discriminator 3)
        bf_add(r, r, T, prec1, BF_RNDN);
    8005f77e:	10ac                	addi	a1,sp,104
    8005f780:	4701                	li	a4,0
    8005f782:	86a2                	mv	a3,s0
    8005f784:	0830                	addi	a2,sp,24
    8005f786:	852e                	mv	a0,a1
    8005f788:	bb4f90ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/libbf.c:4934 (discriminator 3)
        bf_mul_2exp(r, 1, BF_PREC_INF, BF_RNDZ);
    8005f78c:	4685                	li	a3,1
    8005f78e:	864e                	mv	a2,s3
    8005f790:	4585                	li	a1,1
    8005f792:	10a8                	addi	a0,sp,104
    8005f794:	af2f90ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/libbf.c:4930 (discriminator 3)
    for(i = 0; i < K; i++) {
    8005f798:	0a85                	addi	s5,s5,1
    8005f79a:	bdc5                	j	8005f68a <bf_sincos+0x140>
quickjs-nuttx/libbf.c:4942
            bf_sqrt_sin(c, r, prec1);
    8005f79c:	8622                	mv	a2,s0
    8005f79e:	10ac                	addi	a1,sp,104
    8005f7a0:	854a                	mv	a0,s2
    8005f7a2:	b76ff0ef          	jal	ra,8005eb18 <bf_sqrt_sin>
quickjs-nuttx/libbf.c:4943
            c->sign = is_neg ^ 1;
    8005f7a6:	001a4793          	xori	a5,s4,1
    8005f7aa:	00f92423          	sw	a5,8(s2)
    8005f7ae:	b701                	j	8005f6ae <bf_sincos+0x164>
quickjs-nuttx/libbf.c:4952
            bf_add_si(s, r, 1, prec1, BF_RNDN);
    8005f7b0:	4701                	li	a4,0
    8005f7b2:	86a2                	mv	a3,s0
    8005f7b4:	4605                	li	a2,1
    8005f7b6:	10ac                	addi	a1,sp,104
    8005f7b8:	8526                	mv	a0,s1
    8005f7ba:	c02f90ef          	jal	ra,80058bbc <bf_add_si>
    8005f7be:	bf19                	j	8005f6d4 <bf_sincos+0x18a>

000000008005f7c0 <bf_cos_internal>:
bf_cos_internal():
quickjs-nuttx/libbf.c:4961
{
    8005f7c0:	86b2                	mv	a3,a2
quickjs-nuttx/libbf.c:4962
    return bf_sincos(NULL, r, a, prec);
    8005f7c2:	862e                	mv	a2,a1
    8005f7c4:	85aa                	mv	a1,a0
    8005f7c6:	4501                	li	a0,0
    8005f7c8:	d83ff06f          	j	8005f54a <bf_sincos>

000000008005f7cc <bf_sin_internal>:
bf_sin_internal():
quickjs-nuttx/libbf.c:4995
{
    8005f7cc:	86b2                	mv	a3,a2
quickjs-nuttx/libbf.c:4996
    return bf_sincos(r, NULL, a, prec);
    8005f7ce:	862e                	mv	a2,a1
    8005f7d0:	4581                	li	a1,0
    8005f7d2:	d79ff06f          	j	8005f54a <bf_sincos>

000000008005f7d6 <bf_tan_internal>:
bf_tan_internal():
quickjs-nuttx/libbf.c:5029
{
    8005f7d6:	715d                	addi	sp,sp,-80
    8005f7d8:	e486                	sd	ra,72(sp)
    8005f7da:	e0a2                	sd	s0,64(sp)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f7dc:	611c                	ld	a5,0(a0)
bf_tan_internal():
quickjs-nuttx/libbf.c:5035
    prec1 = prec + 8;
    8005f7de:	00860693          	addi	a3,a2,8
quickjs-nuttx/libbf.c:5037
    bf_sincos(r, T, a, prec1);
    8005f7e2:	862e                	mv	a2,a1
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005f7e4:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f7e6:	57fd                	li	a5,-1
    8005f7e8:	17fe                	slli	a5,a5,0x3f
bf_tan_internal():
quickjs-nuttx/libbf.c:5037
    bf_sincos(r, T, a, prec1);
    8005f7ea:	082c                	addi	a1,sp,24
quickjs-nuttx/libbf.c:5029
{
    8005f7ec:	842a                	mv	s0,a0
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005f7ee:	f43e                	sd	a5,40(sp)
bf_tan_internal():
quickjs-nuttx/libbf.c:5037
    bf_sincos(r, T, a, prec1);
    8005f7f0:	e436                	sd	a3,8(sp)
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005f7f2:	d002                	sw	zero,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005f7f4:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005f7f6:	fc02                	sd	zero,56(sp)
bf_tan_internal():
quickjs-nuttx/libbf.c:5037
    bf_sincos(r, T, a, prec1);
    8005f7f8:	d53ff0ef          	jal	ra,8005f54a <bf_sincos>
quickjs-nuttx/libbf.c:5038
    bf_div(r, r, T, prec1, BF_RNDF);
    8005f7fc:	66a2                	ld	a3,8(sp)
    8005f7fe:	0830                	addi	a2,sp,24
    8005f800:	85a2                	mv	a1,s0
    8005f802:	4719                	li	a4,6
    8005f804:	8522                	mv	a0,s0
    8005f806:	baaf90ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/libbf.c:5039
    bf_delete(T);
    8005f80a:	0828                	addi	a0,sp,24
    8005f80c:	a9ef70ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:5041
}
    8005f810:	60a6                	ld	ra,72(sp)
    8005f812:	6406                	ld	s0,64(sp)
    8005f814:	4541                	li	a0,16
    8005f816:	6161                	addi	sp,sp,80
    8005f818:	8082                	ret

000000008005f81a <spin_lock_irqsave>:
spin_lock_irqsave():
quickjs-nuttx/nuttx/arch_atomic.c:35
////#include <nuttx/spinlock.h>

//// Begin Patch
#define NULL 0
typedef int spinlock_t;
irqstate_t spin_lock_irqsave(spinlock_t *lock) { return 0; }
    8005f81a:	4501                	li	a0,0
    8005f81c:	8082                	ret

000000008005f81e <spin_unlock_irqrestore>:
spin_unlock_irqrestore():
quickjs-nuttx/nuttx/arch_atomic.c:36
void spin_unlock_irqrestore(spinlock_t *lock, irqstate_t flags) {}
    8005f81e:	8082                	ret

000000008005f820 <__atomic_store_1>:
__atomic_store_1():
quickjs-nuttx/nuttx/arch_atomic.c:333

/****************************************************************************
 * Name: __atomic_store_1
 ****************************************************************************/

STORE(1, uint8_t)
    8005f820:	00b50023          	sb	a1,0(a0)
    8005f824:	8082                	ret

000000008005f826 <__atomic_store_2>:
__atomic_store_2():
quickjs-nuttx/nuttx/arch_atomic.c:339

/****************************************************************************
 * Name: __atomic_store_2
 ****************************************************************************/

STORE(2, uint16_t)
    8005f826:	00b51023          	sh	a1,0(a0)
    8005f82a:	8082                	ret

000000008005f82c <__atomic_store_4>:
__atomic_store_4():
quickjs-nuttx/nuttx/arch_atomic.c:345

/****************************************************************************
 * Name: __atomic_store_4
 ****************************************************************************/

STORE(4, uint32_t)
    8005f82c:	c10c                	sw	a1,0(a0)
    8005f82e:	8082                	ret

000000008005f830 <__atomic_store_8>:
__atomic_store_8():
quickjs-nuttx/nuttx/arch_atomic.c:351

/****************************************************************************
 * Name: __atomic_store_8
 ****************************************************************************/

STORE(8, uint64_t)
    8005f830:	e10c                	sd	a1,0(a0)
    8005f832:	8082                	ret

000000008005f834 <__atomic_load_1>:
__atomic_load_1():
quickjs-nuttx/nuttx/arch_atomic.c:357

/****************************************************************************
 * Name: __atomic_load_1
 ****************************************************************************/

LOAD(1, uint8_t)
    8005f834:	00054503          	lbu	a0,0(a0)
    8005f838:	8082                	ret

000000008005f83a <__atomic_load_2>:
__atomic_load_2():
quickjs-nuttx/nuttx/arch_atomic.c:363

/****************************************************************************
 * Name: __atomic_load__2
 ****************************************************************************/

LOAD(2, uint16_t)
    8005f83a:	00055503          	lhu	a0,0(a0)
    8005f83e:	8082                	ret

000000008005f840 <__atomic_load_4>:
__atomic_load_4():
quickjs-nuttx/nuttx/arch_atomic.c:369

/****************************************************************************
 * Name: __atomic_load__4
 ****************************************************************************/

LOAD(4, uint32_t)
    8005f840:	4108                	lw	a0,0(a0)
    8005f842:	8082                	ret

000000008005f844 <__atomic_load_8>:
__atomic_load_8():
quickjs-nuttx/nuttx/arch_atomic.c:375

/****************************************************************************
 * Name: __atomic_load__8
 ****************************************************************************/

LOAD(8, uint64_t)
    8005f844:	6108                	ld	a0,0(a0)
    8005f846:	8082                	ret

000000008005f848 <__atomic_exchange_1>:
__atomic_exchange_1():
quickjs-nuttx/nuttx/arch_atomic.c:381

/****************************************************************************
 * Name: __atomic_exchange_1
 ****************************************************************************/

EXCHANGE(1, uint8_t)
    8005f848:	87aa                	mv	a5,a0
    8005f84a:	00054503          	lbu	a0,0(a0)
    8005f84e:	00b78023          	sb	a1,0(a5) # 30000 <asinh-0x7ffd0000>
    8005f852:	8082                	ret

000000008005f854 <__atomic_exchange_2>:
__atomic_exchange_2():
quickjs-nuttx/nuttx/arch_atomic.c:387

/****************************************************************************
 * Name: __atomic_exchange__2
 ****************************************************************************/

EXCHANGE(2, uint16_t)
    8005f854:	87aa                	mv	a5,a0
    8005f856:	00055503          	lhu	a0,0(a0)
    8005f85a:	00b79023          	sh	a1,0(a5)
    8005f85e:	8082                	ret

000000008005f860 <__atomic_exchange_4>:
__atomic_exchange_4():
quickjs-nuttx/nuttx/arch_atomic.c:393

/****************************************************************************
 * Name: __atomic_exchange__4
 ****************************************************************************/

EXCHANGE(4, uint32_t)
    8005f860:	87aa                	mv	a5,a0
    8005f862:	4108                	lw	a0,0(a0)
    8005f864:	c38c                	sw	a1,0(a5)
    8005f866:	8082                	ret

000000008005f868 <__atomic_exchange_8>:
__atomic_exchange_8():
quickjs-nuttx/nuttx/arch_atomic.c:399

/****************************************************************************
 * Name: __atomic_exchange__8
 ****************************************************************************/

EXCHANGE(8, uint64_t)
    8005f868:	87aa                	mv	a5,a0
    8005f86a:	6108                	ld	a0,0(a0)
    8005f86c:	e38c                	sd	a1,0(a5)
    8005f86e:	8082                	ret

000000008005f870 <__atomic_compare_exchange_1>:
__atomic_compare_exchange_1():
quickjs-nuttx/nuttx/arch_atomic.c:405

/****************************************************************************
 * Name: __atomic_compare_exchange_1
 ****************************************************************************/

CMP_EXCHANGE(1, uint8_t)
    8005f870:	00054783          	lbu	a5,0(a0)
    8005f874:	0005c703          	lbu	a4,0(a1)
    8005f878:	00f71663          	bne	a4,a5,8005f884 <__atomic_compare_exchange_1+0x14>
quickjs-nuttx/nuttx/arch_atomic.c:405 (discriminator 1)
    8005f87c:	00c50023          	sb	a2,0(a0)
    8005f880:	4505                	li	a0,1
    8005f882:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:405 (discriminator 2)
    8005f884:	00f58023          	sb	a5,0(a1)
    8005f888:	4501                	li	a0,0
    8005f88a:	8082                	ret

000000008005f88c <__atomic_compare_exchange_2>:
__atomic_compare_exchange_2():
quickjs-nuttx/nuttx/arch_atomic.c:411

/****************************************************************************
 * Name: __atomic_compare_exchange_2
 ****************************************************************************/

CMP_EXCHANGE(2, uint16_t)
    8005f88c:	00055783          	lhu	a5,0(a0)
    8005f890:	0005d703          	lhu	a4,0(a1)
    8005f894:	00f71663          	bne	a4,a5,8005f8a0 <__atomic_compare_exchange_2+0x14>
quickjs-nuttx/nuttx/arch_atomic.c:411 (discriminator 1)
    8005f898:	00c51023          	sh	a2,0(a0)
    8005f89c:	4505                	li	a0,1
    8005f89e:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:411 (discriminator 2)
    8005f8a0:	00f59023          	sh	a5,0(a1)
    8005f8a4:	4501                	li	a0,0
    8005f8a6:	8082                	ret

000000008005f8a8 <__atomic_compare_exchange_4>:
__atomic_compare_exchange_4():
quickjs-nuttx/nuttx/arch_atomic.c:417

/****************************************************************************
 * Name: __atomic_compare_exchange_4
 ****************************************************************************/

CMP_EXCHANGE(4, uint32_t)
    8005f8a8:	411c                	lw	a5,0(a0)
    8005f8aa:	4198                	lw	a4,0(a1)
    8005f8ac:	00f71563          	bne	a4,a5,8005f8b6 <__atomic_compare_exchange_4+0xe>
quickjs-nuttx/nuttx/arch_atomic.c:417 (discriminator 1)
    8005f8b0:	c110                	sw	a2,0(a0)
    8005f8b2:	4505                	li	a0,1
    8005f8b4:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:417 (discriminator 2)
    8005f8b6:	c19c                	sw	a5,0(a1)
    8005f8b8:	4501                	li	a0,0
    8005f8ba:	8082                	ret

000000008005f8bc <__atomic_compare_exchange_8>:
__atomic_compare_exchange_8():
quickjs-nuttx/nuttx/arch_atomic.c:423

/****************************************************************************
 * Name: __atomic_compare_exchange_8
 ****************************************************************************/

CMP_EXCHANGE(8, uint64_t)
    8005f8bc:	611c                	ld	a5,0(a0)
    8005f8be:	6198                	ld	a4,0(a1)
    8005f8c0:	00e79563          	bne	a5,a4,8005f8ca <__atomic_compare_exchange_8+0xe>
quickjs-nuttx/nuttx/arch_atomic.c:423 (discriminator 1)
    8005f8c4:	e110                	sd	a2,0(a0)
    8005f8c6:	4505                	li	a0,1
    8005f8c8:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:423 (discriminator 2)
    8005f8ca:	e19c                	sd	a5,0(a1)
    8005f8cc:	4501                	li	a0,0
    8005f8ce:	8082                	ret

000000008005f8d0 <__atomic_fetch_add_1>:
__atomic_fetch_add_1():
quickjs-nuttx/nuttx/arch_atomic.c:429

/****************************************************************************
 * Name: __atomic_fetch_add_1
 ****************************************************************************/

FETCH_ADD(1, uint8_t)
    8005f8d0:	87aa                	mv	a5,a0
    8005f8d2:	00054503          	lbu	a0,0(a0)
    8005f8d6:	9da9                	addw	a1,a1,a0
    8005f8d8:	00b78023          	sb	a1,0(a5)
    8005f8dc:	8082                	ret

000000008005f8de <__atomic_fetch_add_2>:
__atomic_fetch_add_2():
quickjs-nuttx/nuttx/arch_atomic.c:435

/****************************************************************************
 * Name: __atomic_fetch_add_2
 ****************************************************************************/

FETCH_ADD(2, uint16_t)
    8005f8de:	87aa                	mv	a5,a0
    8005f8e0:	00055503          	lhu	a0,0(a0)
    8005f8e4:	9da9                	addw	a1,a1,a0
    8005f8e6:	00b79023          	sh	a1,0(a5)
    8005f8ea:	8082                	ret

000000008005f8ec <__atomic_fetch_add_4>:
__atomic_fetch_add_4():
quickjs-nuttx/nuttx/arch_atomic.c:441

/****************************************************************************
 * Name: __atomic_fetch_add_4
 ****************************************************************************/

FETCH_ADD(4, uint32_t)
    8005f8ec:	87aa                	mv	a5,a0
    8005f8ee:	4108                	lw	a0,0(a0)
    8005f8f0:	9da9                	addw	a1,a1,a0
    8005f8f2:	c38c                	sw	a1,0(a5)
    8005f8f4:	8082                	ret

000000008005f8f6 <__atomic_fetch_add_8>:
__atomic_fetch_add_8():
quickjs-nuttx/nuttx/arch_atomic.c:447

/****************************************************************************
 * Name: __atomic_fetch_add_8
 ****************************************************************************/

FETCH_ADD(8, uint64_t)
    8005f8f6:	87aa                	mv	a5,a0
    8005f8f8:	6108                	ld	a0,0(a0)
    8005f8fa:	95aa                	add	a1,a1,a0
    8005f8fc:	e38c                	sd	a1,0(a5)
    8005f8fe:	8082                	ret

000000008005f900 <__atomic_fetch_sub_1>:
__atomic_fetch_sub_1():
quickjs-nuttx/nuttx/arch_atomic.c:453

/****************************************************************************
 * Name: __atomic_fetch_sub_1
 ****************************************************************************/

FETCH_SUB(1, uint8_t)
    8005f900:	87aa                	mv	a5,a0
    8005f902:	00054503          	lbu	a0,0(a0)
    8005f906:	40b505bb          	subw	a1,a0,a1
    8005f90a:	00b78023          	sb	a1,0(a5)
    8005f90e:	8082                	ret

000000008005f910 <__atomic_fetch_sub_2>:
__atomic_fetch_sub_2():
quickjs-nuttx/nuttx/arch_atomic.c:459

/****************************************************************************
 * Name: __atomic_fetch_sub_2
 ****************************************************************************/

FETCH_SUB(2, uint16_t)
    8005f910:	87aa                	mv	a5,a0
    8005f912:	00055503          	lhu	a0,0(a0)
    8005f916:	40b505bb          	subw	a1,a0,a1
    8005f91a:	00b79023          	sh	a1,0(a5)
    8005f91e:	8082                	ret

000000008005f920 <__atomic_fetch_sub_4>:
__atomic_fetch_sub_4():
quickjs-nuttx/nuttx/arch_atomic.c:465

/****************************************************************************
 * Name: __atomic_fetch_sub_4
 ****************************************************************************/

FETCH_SUB(4, uint32_t)
    8005f920:	87aa                	mv	a5,a0
    8005f922:	4108                	lw	a0,0(a0)
    8005f924:	40b505bb          	subw	a1,a0,a1
    8005f928:	c38c                	sw	a1,0(a5)
    8005f92a:	8082                	ret

000000008005f92c <__atomic_fetch_sub_8>:
__atomic_fetch_sub_8():
quickjs-nuttx/nuttx/arch_atomic.c:471

/****************************************************************************
 * Name: __atomic_fetch_sub_8
 ****************************************************************************/

FETCH_SUB(8, uint64_t)
    8005f92c:	87aa                	mv	a5,a0
    8005f92e:	6108                	ld	a0,0(a0)
    8005f930:	40b505b3          	sub	a1,a0,a1
    8005f934:	e38c                	sd	a1,0(a5)
    8005f936:	8082                	ret

000000008005f938 <__atomic_fetch_and_1>:
__atomic_fetch_and_1():
quickjs-nuttx/nuttx/arch_atomic.c:477

/****************************************************************************
 * Name: __atomic_fetch_and_1
 ****************************************************************************/

FETCH_AND(1, uint8_t)
    8005f938:	87aa                	mv	a5,a0
    8005f93a:	00054503          	lbu	a0,0(a0)
    8005f93e:	8de9                	and	a1,a1,a0
    8005f940:	00b78023          	sb	a1,0(a5)
    8005f944:	8082                	ret

000000008005f946 <__atomic_fetch_and_2>:
__atomic_fetch_and_2():
quickjs-nuttx/nuttx/arch_atomic.c:483

/****************************************************************************
 * Name: __atomic_fetch_and_2
 ****************************************************************************/

FETCH_AND(2, uint16_t)
    8005f946:	87aa                	mv	a5,a0
    8005f948:	00055503          	lhu	a0,0(a0)
    8005f94c:	8de9                	and	a1,a1,a0
    8005f94e:	00b79023          	sh	a1,0(a5)
    8005f952:	8082                	ret

000000008005f954 <__atomic_fetch_and_4>:
__atomic_fetch_and_4():
quickjs-nuttx/nuttx/arch_atomic.c:489

/****************************************************************************
 * Name: __atomic_fetch_and_4
 ****************************************************************************/

FETCH_AND(4, uint32_t)
    8005f954:	87aa                	mv	a5,a0
    8005f956:	4108                	lw	a0,0(a0)
    8005f958:	8de9                	and	a1,a1,a0
    8005f95a:	c38c                	sw	a1,0(a5)
    8005f95c:	8082                	ret

000000008005f95e <__atomic_fetch_and_8>:
__atomic_fetch_and_8():
quickjs-nuttx/nuttx/arch_atomic.c:495

/****************************************************************************
 * Name: __atomic_fetch_and_8
 ****************************************************************************/

FETCH_AND(8, uint64_t)
    8005f95e:	87aa                	mv	a5,a0
    8005f960:	6108                	ld	a0,0(a0)
    8005f962:	8de9                	and	a1,a1,a0
    8005f964:	e38c                	sd	a1,0(a5)
    8005f966:	8082                	ret

000000008005f968 <__atomic_fetch_or_1>:
__atomic_fetch_or_1():
quickjs-nuttx/nuttx/arch_atomic.c:501

/****************************************************************************
 * Name: __atomic_fetch_or_1
 ****************************************************************************/

FETCH_OR(1, uint8_t)
    8005f968:	87aa                	mv	a5,a0
    8005f96a:	00054503          	lbu	a0,0(a0)
    8005f96e:	8dc9                	or	a1,a1,a0
    8005f970:	00b78023          	sb	a1,0(a5)
    8005f974:	8082                	ret

000000008005f976 <__atomic_fetch_or_2>:
__atomic_fetch_or_2():
quickjs-nuttx/nuttx/arch_atomic.c:507

/****************************************************************************
 * Name: __atomic_fetch_or_2
 ****************************************************************************/

FETCH_OR(2, uint16_t)
    8005f976:	87aa                	mv	a5,a0
    8005f978:	00055503          	lhu	a0,0(a0)
    8005f97c:	8dc9                	or	a1,a1,a0
    8005f97e:	00b79023          	sh	a1,0(a5)
    8005f982:	8082                	ret

000000008005f984 <__atomic_fetch_or_4>:
__atomic_fetch_or_4():
quickjs-nuttx/nuttx/arch_atomic.c:513

/****************************************************************************
 * Name: __atomic_fetch_or_4
 ****************************************************************************/

FETCH_OR(4, uint32_t)
    8005f984:	87aa                	mv	a5,a0
    8005f986:	4108                	lw	a0,0(a0)
    8005f988:	8dc9                	or	a1,a1,a0
    8005f98a:	c38c                	sw	a1,0(a5)
    8005f98c:	8082                	ret

000000008005f98e <__atomic_fetch_or_8>:
__atomic_fetch_or_8():
quickjs-nuttx/nuttx/arch_atomic.c:519

/****************************************************************************
 * Name: __atomic_fetch_or_4
 ****************************************************************************/

FETCH_OR(8, uint64_t)
    8005f98e:	87aa                	mv	a5,a0
    8005f990:	6108                	ld	a0,0(a0)
    8005f992:	8dc9                	or	a1,a1,a0
    8005f994:	e38c                	sd	a1,0(a5)
    8005f996:	8082                	ret

000000008005f998 <__atomic_fetch_xor_1>:
__atomic_fetch_xor_1():
quickjs-nuttx/nuttx/arch_atomic.c:525

/****************************************************************************
 * Name: __atomic_fetch_xor_1
 ****************************************************************************/

FETCH_XOR(1, uint8_t)
    8005f998:	87aa                	mv	a5,a0
    8005f99a:	00054503          	lbu	a0,0(a0)
    8005f99e:	8da9                	xor	a1,a1,a0
    8005f9a0:	00b78023          	sb	a1,0(a5)
    8005f9a4:	8082                	ret

000000008005f9a6 <__atomic_fetch_xor_2>:
__atomic_fetch_xor_2():
quickjs-nuttx/nuttx/arch_atomic.c:531

/****************************************************************************
 * Name: __atomic_fetch_xor_2
 ****************************************************************************/

FETCH_XOR(2, uint16_t)
    8005f9a6:	87aa                	mv	a5,a0
    8005f9a8:	00055503          	lhu	a0,0(a0)
    8005f9ac:	8da9                	xor	a1,a1,a0
    8005f9ae:	00b79023          	sh	a1,0(a5)
    8005f9b2:	8082                	ret

000000008005f9b4 <__atomic_fetch_xor_4>:
__atomic_fetch_xor_4():
quickjs-nuttx/nuttx/arch_atomic.c:537

/****************************************************************************
 * Name: __atomic_fetch_xor_4
 ****************************************************************************/

FETCH_XOR(4, uint32_t)
    8005f9b4:	87aa                	mv	a5,a0
    8005f9b6:	4108                	lw	a0,0(a0)
    8005f9b8:	8da9                	xor	a1,a1,a0
    8005f9ba:	c38c                	sw	a1,0(a5)
    8005f9bc:	8082                	ret

000000008005f9be <__atomic_fetch_xor_8>:
__atomic_fetch_xor_8():
quickjs-nuttx/nuttx/arch_atomic.c:543

/****************************************************************************
 * Name: __atomic_fetch_xor_8
 ****************************************************************************/

FETCH_XOR(8, uint64_t)
    8005f9be:	87aa                	mv	a5,a0
    8005f9c0:	6108                	ld	a0,0(a0)
    8005f9c2:	8da9                	xor	a1,a1,a0
    8005f9c4:	e38c                	sd	a1,0(a5)
    8005f9c6:	8082                	ret

000000008005f9c8 <__sync_add_and_fetch_1>:
__sync_add_and_fetch_1():
quickjs-nuttx/nuttx/arch_atomic.c:555

/****************************************************************************
 * Name: __sync_add_and_fetch_1
 ****************************************************************************/

SYNC_ADD_FETCH(1, uint8_t)
    8005f9c8:	00054783          	lbu	a5,0(a0)
    8005f9cc:	872a                	mv	a4,a0
    8005f9ce:	9fad                	addw	a5,a5,a1
    8005f9d0:	0ff7f513          	zext.b	a0,a5
    8005f9d4:	00a70023          	sb	a0,0(a4)
    8005f9d8:	8082                	ret

000000008005f9da <__sync_add_and_fetch_2>:
__sync_add_and_fetch_2():
quickjs-nuttx/nuttx/arch_atomic.c:561

/****************************************************************************
 * Name: __sync_add_and_fetch_2
 ****************************************************************************/

SYNC_ADD_FETCH(2, uint16_t)
    8005f9da:	00055783          	lhu	a5,0(a0)
    8005f9de:	872a                	mv	a4,a0
    8005f9e0:	9fad                	addw	a5,a5,a1
    8005f9e2:	03079513          	slli	a0,a5,0x30
    8005f9e6:	9141                	srli	a0,a0,0x30
    8005f9e8:	00a71023          	sh	a0,0(a4)
    8005f9ec:	8082                	ret

000000008005f9ee <__sync_add_and_fetch_4>:
__sync_add_and_fetch_4():
quickjs-nuttx/nuttx/arch_atomic.c:567

/****************************************************************************
 * Name: __sync_add_and_fetch_4
 ****************************************************************************/

SYNC_ADD_FETCH(4, uint32_t)
    8005f9ee:	411c                	lw	a5,0(a0)
    8005f9f0:	9dbd                	addw	a1,a1,a5
    8005f9f2:	c10c                	sw	a1,0(a0)
    8005f9f4:	0005851b          	sext.w	a0,a1
    8005f9f8:	8082                	ret

000000008005f9fa <__sync_add_and_fetch_8>:
__sync_add_and_fetch_8():
quickjs-nuttx/nuttx/arch_atomic.c:573

/****************************************************************************
 * Name: __sync_add_and_fetch_8
 ****************************************************************************/

SYNC_ADD_FETCH(8, uint64_t)
    8005f9fa:	87aa                	mv	a5,a0
    8005f9fc:	6108                	ld	a0,0(a0)
    8005f9fe:	952e                	add	a0,a0,a1
    8005fa00:	e388                	sd	a0,0(a5)
    8005fa02:	8082                	ret

000000008005fa04 <__sync_sub_and_fetch_1>:
__sync_sub_and_fetch_1():
quickjs-nuttx/nuttx/arch_atomic.c:579

/****************************************************************************
 * Name: __sync_sub_and_fetch_1
 ****************************************************************************/

SYNC_SUB_FETCH(1, uint8_t)
    8005fa04:	00054783          	lbu	a5,0(a0)
    8005fa08:	872a                	mv	a4,a0
    8005fa0a:	9f8d                	subw	a5,a5,a1
    8005fa0c:	0ff7f513          	zext.b	a0,a5
    8005fa10:	00a70023          	sb	a0,0(a4)
    8005fa14:	8082                	ret

000000008005fa16 <__sync_sub_and_fetch_2>:
__sync_sub_and_fetch_2():
quickjs-nuttx/nuttx/arch_atomic.c:585

/****************************************************************************
 * Name: __sync_sub_and_fetch_2
 ****************************************************************************/

SYNC_SUB_FETCH(2, uint16_t)
    8005fa16:	00055783          	lhu	a5,0(a0)
    8005fa1a:	872a                	mv	a4,a0
    8005fa1c:	9f8d                	subw	a5,a5,a1
    8005fa1e:	03079513          	slli	a0,a5,0x30
    8005fa22:	9141                	srli	a0,a0,0x30
    8005fa24:	00a71023          	sh	a0,0(a4)
    8005fa28:	8082                	ret

000000008005fa2a <__sync_sub_and_fetch_4>:
__sync_sub_and_fetch_4():
quickjs-nuttx/nuttx/arch_atomic.c:591

/****************************************************************************
 * Name: __sync_sub_and_fetch_4
 ****************************************************************************/

SYNC_SUB_FETCH(4, uint32_t)
    8005fa2a:	411c                	lw	a5,0(a0)
    8005fa2c:	40b785bb          	subw	a1,a5,a1
    8005fa30:	c10c                	sw	a1,0(a0)
    8005fa32:	0005851b          	sext.w	a0,a1
    8005fa36:	8082                	ret

000000008005fa38 <__sync_sub_and_fetch_8>:
__sync_sub_and_fetch_8():
quickjs-nuttx/nuttx/arch_atomic.c:597

/****************************************************************************
 * Name: __sync_sub_and_fetch_8
 ****************************************************************************/

SYNC_SUB_FETCH(8, uint64_t)
    8005fa38:	611c                	ld	a5,0(a0)
    8005fa3a:	872a                	mv	a4,a0
    8005fa3c:	40b78533          	sub	a0,a5,a1
    8005fa40:	e308                	sd	a0,0(a4)
    8005fa42:	8082                	ret

000000008005fa44 <__sync_or_and_fetch_1>:
__sync_or_and_fetch_1():
quickjs-nuttx/nuttx/arch_atomic.c:603

/****************************************************************************
 * Name: __sync_or_and_fetch_1
 ****************************************************************************/

SYNC_OR_FETCH(1, uint8_t)
    8005fa44:	87aa                	mv	a5,a0
    8005fa46:	00054503          	lbu	a0,0(a0)
    8005fa4a:	8d4d                	or	a0,a0,a1
    8005fa4c:	00a78023          	sb	a0,0(a5)
    8005fa50:	8082                	ret

000000008005fa52 <__sync_or_and_fetch_2>:
__sync_or_and_fetch_2():
quickjs-nuttx/nuttx/arch_atomic.c:609

/****************************************************************************
 * Name: __sync_or_and_fetch_2
 ****************************************************************************/

SYNC_OR_FETCH(2, uint16_t)
    8005fa52:	87aa                	mv	a5,a0
    8005fa54:	00055503          	lhu	a0,0(a0)
    8005fa58:	8d4d                	or	a0,a0,a1
    8005fa5a:	00a79023          	sh	a0,0(a5)
    8005fa5e:	8082                	ret

000000008005fa60 <__sync_or_and_fetch_4>:
__sync_or_and_fetch_4():
quickjs-nuttx/nuttx/arch_atomic.c:615

/****************************************************************************
 * Name: __sync_or_and_fetch_4
 ****************************************************************************/

SYNC_OR_FETCH(4, uint32_t)
    8005fa60:	87aa                	mv	a5,a0
    8005fa62:	4108                	lw	a0,0(a0)
    8005fa64:	8d4d                	or	a0,a0,a1
    8005fa66:	c388                	sw	a0,0(a5)
    8005fa68:	8082                	ret

000000008005fa6a <__sync_or_and_fetch_8>:
__sync_or_and_fetch_8():
quickjs-nuttx/nuttx/arch_atomic.c:621

/****************************************************************************
 * Name: __sync_or_and_fetch_8
 ****************************************************************************/

SYNC_OR_FETCH(8, uint64_t)
    8005fa6a:	87aa                	mv	a5,a0
    8005fa6c:	6108                	ld	a0,0(a0)
    8005fa6e:	8d4d                	or	a0,a0,a1
    8005fa70:	e388                	sd	a0,0(a5)
    8005fa72:	8082                	ret

000000008005fa74 <__sync_and_and_fetch_1>:
__sync_and_and_fetch_1():
quickjs-nuttx/nuttx/arch_atomic.c:627

/****************************************************************************
 * Name: __sync_and_and_fetch_1
 ****************************************************************************/

SYNC_AND_FETCH(1, uint8_t)
    8005fa74:	87aa                	mv	a5,a0
    8005fa76:	00054503          	lbu	a0,0(a0)
    8005fa7a:	8d6d                	and	a0,a0,a1
    8005fa7c:	00a78023          	sb	a0,0(a5)
    8005fa80:	8082                	ret

000000008005fa82 <__sync_and_and_fetch_2>:
__sync_and_and_fetch_2():
quickjs-nuttx/nuttx/arch_atomic.c:633

/****************************************************************************
 * Name: __sync_and_and_fetch_2
 ****************************************************************************/

SYNC_AND_FETCH(2, uint16_t)
    8005fa82:	87aa                	mv	a5,a0
    8005fa84:	00055503          	lhu	a0,0(a0)
    8005fa88:	8d6d                	and	a0,a0,a1
    8005fa8a:	00a79023          	sh	a0,0(a5)
    8005fa8e:	8082                	ret

000000008005fa90 <__sync_and_and_fetch_4>:
__sync_and_and_fetch_4():
quickjs-nuttx/nuttx/arch_atomic.c:639

/****************************************************************************
 * Name: __sync_and_and_fetch_4
 ****************************************************************************/

SYNC_AND_FETCH(4, uint32_t)
    8005fa90:	87aa                	mv	a5,a0
    8005fa92:	4108                	lw	a0,0(a0)
    8005fa94:	8d6d                	and	a0,a0,a1
    8005fa96:	c388                	sw	a0,0(a5)
    8005fa98:	8082                	ret

000000008005fa9a <__sync_and_and_fetch_8>:
__sync_and_and_fetch_8():
quickjs-nuttx/nuttx/arch_atomic.c:645

/****************************************************************************
 * Name: __sync_and_and_fetch_8
 ****************************************************************************/

SYNC_AND_FETCH(8, uint64_t)
    8005fa9a:	87aa                	mv	a5,a0
    8005fa9c:	6108                	ld	a0,0(a0)
    8005fa9e:	8d6d                	and	a0,a0,a1
    8005faa0:	e388                	sd	a0,0(a5)
    8005faa2:	8082                	ret

000000008005faa4 <__sync_xor_and_fetch_1>:
__sync_xor_and_fetch_1():
quickjs-nuttx/nuttx/arch_atomic.c:651

/****************************************************************************
 * Name: __sync_xor_and_fetch_1
 ****************************************************************************/

SYNC_XOR_FETCH(1, uint8_t)
    8005faa4:	87aa                	mv	a5,a0
    8005faa6:	00054503          	lbu	a0,0(a0)
    8005faaa:	8d2d                	xor	a0,a0,a1
    8005faac:	00a78023          	sb	a0,0(a5)
    8005fab0:	8082                	ret

000000008005fab2 <__sync_xor_and_fetch_2>:
__sync_xor_and_fetch_2():
quickjs-nuttx/nuttx/arch_atomic.c:657

/****************************************************************************
 * Name: __sync_xor_and_fetch_2
 ****************************************************************************/

SYNC_XOR_FETCH(2, uint16_t)
    8005fab2:	87aa                	mv	a5,a0
    8005fab4:	00055503          	lhu	a0,0(a0)
    8005fab8:	8d2d                	xor	a0,a0,a1
    8005faba:	00a79023          	sh	a0,0(a5)
    8005fabe:	8082                	ret

000000008005fac0 <__sync_xor_and_fetch_4>:
__sync_xor_and_fetch_4():
quickjs-nuttx/nuttx/arch_atomic.c:663

/****************************************************************************
 * Name: __sync_xor_and_fetch_4
 ****************************************************************************/

SYNC_XOR_FETCH(4, uint32_t)
    8005fac0:	87aa                	mv	a5,a0
    8005fac2:	4108                	lw	a0,0(a0)
    8005fac4:	8d2d                	xor	a0,a0,a1
    8005fac6:	c388                	sw	a0,0(a5)
    8005fac8:	8082                	ret

000000008005faca <__sync_xor_and_fetch_8>:
__sync_xor_and_fetch_8():
quickjs-nuttx/nuttx/arch_atomic.c:669

/****************************************************************************
 * Name: __sync_xor_and_fetch_8
 ****************************************************************************/

SYNC_XOR_FETCH(8, uint64_t)
    8005faca:	87aa                	mv	a5,a0
    8005facc:	6108                	ld	a0,0(a0)
    8005face:	8d2d                	xor	a0,a0,a1
    8005fad0:	e388                	sd	a0,0(a5)
    8005fad2:	8082                	ret

000000008005fad4 <__sync_nand_and_fetch_1>:
__sync_nand_and_fetch_1():
quickjs-nuttx/nuttx/arch_atomic.c:675

/****************************************************************************
 * Name: __sync_nand_and_fetch_1
 ****************************************************************************/

SYNC_NAND_FETCH(1, uint8_t)
    8005fad4:	87aa                	mv	a5,a0
    8005fad6:	00054503          	lbu	a0,0(a0)
    8005fada:	8de9                	and	a1,a1,a0
    8005fadc:	fff5c593          	not	a1,a1
    8005fae0:	0ff5f513          	zext.b	a0,a1
    8005fae4:	00a78023          	sb	a0,0(a5)
    8005fae8:	8082                	ret

000000008005faea <__sync_nand_and_fetch_2>:
__sync_nand_and_fetch_2():
quickjs-nuttx/nuttx/arch_atomic.c:681

/****************************************************************************
 * Name: __sync_nand_and_fetch_2
 ****************************************************************************/

SYNC_NAND_FETCH(2, uint16_t)
    8005faea:	87aa                	mv	a5,a0
    8005faec:	00055503          	lhu	a0,0(a0)
    8005faf0:	8de9                	and	a1,a1,a0
    8005faf2:	fff5c593          	not	a1,a1
    8005faf6:	03059513          	slli	a0,a1,0x30
    8005fafa:	9141                	srli	a0,a0,0x30
    8005fafc:	00a79023          	sh	a0,0(a5)
    8005fb00:	8082                	ret

000000008005fb02 <__sync_nand_and_fetch_4>:
__sync_nand_and_fetch_4():
quickjs-nuttx/nuttx/arch_atomic.c:687

/****************************************************************************
 * Name: __sync_nand_and_fetch_4
 ****************************************************************************/

SYNC_NAND_FETCH(4, uint32_t)
    8005fb02:	87aa                	mv	a5,a0
    8005fb04:	4108                	lw	a0,0(a0)
    8005fb06:	8de9                	and	a1,a1,a0
    8005fb08:	fff5c593          	not	a1,a1
    8005fb0c:	0005851b          	sext.w	a0,a1
    8005fb10:	c388                	sw	a0,0(a5)
    8005fb12:	8082                	ret

000000008005fb14 <__sync_nand_and_fetch_8>:
__sync_nand_and_fetch_8():
quickjs-nuttx/nuttx/arch_atomic.c:693

/****************************************************************************
 * Name: __sync_nand_and_fetch_8
 ****************************************************************************/

SYNC_NAND_FETCH(8, uint64_t)
    8005fb14:	87aa                	mv	a5,a0
    8005fb16:	6108                	ld	a0,0(a0)
    8005fb18:	8de9                	and	a1,a1,a0
    8005fb1a:	fff5c513          	not	a0,a1
    8005fb1e:	e388                	sd	a0,0(a5)
    8005fb20:	8082                	ret

000000008005fb22 <__sync_bool_compare_and_swap_1>:
__sync_bool_compare_and_swap_1():
quickjs-nuttx/nuttx/arch_atomic.c:699

/****************************************************************************
 * Name: __sync_bool_compare_and_swap_1
 ****************************************************************************/

SYNC_BOOL_CMP_SWAP(1, uint8_t)
    8005fb22:	00054783          	lbu	a5,0(a0)
    8005fb26:	00b79663          	bne	a5,a1,8005fb32 <__sync_bool_compare_and_swap_1+0x10>
quickjs-nuttx/nuttx/arch_atomic.c:699 (discriminator 1)
    8005fb2a:	00c50023          	sb	a2,0(a0)
    8005fb2e:	4505                	li	a0,1
    8005fb30:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:699
    8005fb32:	4501                	li	a0,0
    8005fb34:	8082                	ret

000000008005fb36 <__sync_bool_compare_and_swap_2>:
__sync_bool_compare_and_swap_2():
quickjs-nuttx/nuttx/arch_atomic.c:705

/****************************************************************************
 * Name: __sync_bool_compare_and_swap_2
 ****************************************************************************/

SYNC_BOOL_CMP_SWAP(2, uint16_t)
    8005fb36:	00055783          	lhu	a5,0(a0)
    8005fb3a:	00b79663          	bne	a5,a1,8005fb46 <__sync_bool_compare_and_swap_2+0x10>
quickjs-nuttx/nuttx/arch_atomic.c:705 (discriminator 1)
    8005fb3e:	00c51023          	sh	a2,0(a0)
    8005fb42:	4505                	li	a0,1
    8005fb44:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:705
    8005fb46:	4501                	li	a0,0
    8005fb48:	8082                	ret

000000008005fb4a <__sync_bool_compare_and_swap_4>:
__sync_bool_compare_and_swap_4():
quickjs-nuttx/nuttx/arch_atomic.c:711

/****************************************************************************
 * Name: __sync_bool_compare_and_swap_4
 ****************************************************************************/

SYNC_BOOL_CMP_SWAP(4, uint32_t)
    8005fb4a:	411c                	lw	a5,0(a0)
    8005fb4c:	00b79563          	bne	a5,a1,8005fb56 <__sync_bool_compare_and_swap_4+0xc>
quickjs-nuttx/nuttx/arch_atomic.c:711 (discriminator 1)
    8005fb50:	c110                	sw	a2,0(a0)
    8005fb52:	4505                	li	a0,1
    8005fb54:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:711
    8005fb56:	4501                	li	a0,0
    8005fb58:	8082                	ret

000000008005fb5a <__sync_bool_compare_and_swap_8>:
__sync_bool_compare_and_swap_8():
quickjs-nuttx/nuttx/arch_atomic.c:717

/****************************************************************************
 * Name: __sync_bool_compare_and_swap_8
 ****************************************************************************/

SYNC_BOOL_CMP_SWAP(8, uint64_t)
    8005fb5a:	611c                	ld	a5,0(a0)
    8005fb5c:	00b79563          	bne	a5,a1,8005fb66 <__sync_bool_compare_and_swap_8+0xc>
quickjs-nuttx/nuttx/arch_atomic.c:717 (discriminator 1)
    8005fb60:	e110                	sd	a2,0(a0)
    8005fb62:	4505                	li	a0,1
    8005fb64:	8082                	ret
quickjs-nuttx/nuttx/arch_atomic.c:717
    8005fb66:	4501                	li	a0,0
    8005fb68:	8082                	ret

000000008005fb6a <__sync_val_compare_and_swap_1>:
__sync_val_compare_and_swap_1():
quickjs-nuttx/nuttx/arch_atomic.c:723

/****************************************************************************
 * Name: __sync_val_compare_and_swap_1
 ****************************************************************************/

SYNC_VAL_CMP_SWAP(1, uint8_t)
    8005fb6a:	87aa                	mv	a5,a0
    8005fb6c:	00054503          	lbu	a0,0(a0)
    8005fb70:	00b51463          	bne	a0,a1,8005fb78 <__sync_val_compare_and_swap_1+0xe>
quickjs-nuttx/nuttx/arch_atomic.c:723 (discriminator 1)
    8005fb74:	00c78023          	sb	a2,0(a5)
quickjs-nuttx/nuttx/arch_atomic.c:723 (discriminator 3)
    8005fb78:	8082                	ret

000000008005fb7a <__sync_val_compare_and_swap_2>:
__sync_val_compare_and_swap_2():
quickjs-nuttx/nuttx/arch_atomic.c:729

/****************************************************************************
 * Name: __sync_val_compare_and_swap_2
 ****************************************************************************/

SYNC_VAL_CMP_SWAP(2, uint16_t)
    8005fb7a:	87aa                	mv	a5,a0
    8005fb7c:	00055503          	lhu	a0,0(a0)
    8005fb80:	00b51463          	bne	a0,a1,8005fb88 <__sync_val_compare_and_swap_2+0xe>
quickjs-nuttx/nuttx/arch_atomic.c:729 (discriminator 1)
    8005fb84:	00c79023          	sh	a2,0(a5)
quickjs-nuttx/nuttx/arch_atomic.c:729 (discriminator 3)
    8005fb88:	8082                	ret

000000008005fb8a <__sync_val_compare_and_swap_4>:
__sync_val_compare_and_swap_4():
quickjs-nuttx/nuttx/arch_atomic.c:735

/****************************************************************************
 * Name: __sync_val_compare_and_swap_4
 ****************************************************************************/

SYNC_VAL_CMP_SWAP(4, uint32_t)
    8005fb8a:	87aa                	mv	a5,a0
    8005fb8c:	4108                	lw	a0,0(a0)
    8005fb8e:	00b51363          	bne	a0,a1,8005fb94 <__sync_val_compare_and_swap_4+0xa>
quickjs-nuttx/nuttx/arch_atomic.c:735 (discriminator 1)
    8005fb92:	c390                	sw	a2,0(a5)
quickjs-nuttx/nuttx/arch_atomic.c:735 (discriminator 3)
    8005fb94:	8082                	ret

000000008005fb96 <__sync_val_compare_and_swap_8>:
__sync_val_compare_and_swap_8():
quickjs-nuttx/nuttx/arch_atomic.c:741

/****************************************************************************
 * Name: __sync_val_compare_and_swap_8
 ****************************************************************************/

SYNC_VAL_CMP_SWAP(8, uint64_t)
    8005fb96:	87aa                	mv	a5,a0
    8005fb98:	6108                	ld	a0,0(a0)
    8005fb9a:	00b51363          	bne	a0,a1,8005fba0 <__sync_val_compare_and_swap_8+0xa>
quickjs-nuttx/nuttx/arch_atomic.c:741 (discriminator 1)
    8005fb9e:	e390                	sd	a2,0(a5)
quickjs-nuttx/nuttx/arch_atomic.c:741
    8005fba0:	8082                	ret

000000008005fba2 <dlclose>:
dlclose():
quickjs-nuttx/nuttx/stub.c:3
#include <stdlib.h>

void dlclose(void) { puts("TODO: dlclose"); exit(1); }
    8005fba2:	1141                	addi	sp,sp,-16
    8005fba4:	00029517          	auipc	a0,0x29
    8005fba8:	01450513          	addi	a0,a0,20 # 80088bb8 <qjsc_qjscalc+0x7ce0>
    8005fbac:	e406                	sd	ra,8(sp)
    8005fbae:	76e010ef          	jal	ra,8006131c <puts>
    8005fbb2:	4505                	li	a0,1
    8005fbb4:	7ed020ef          	jal	ra,80062ba0 <exit>

000000008005fbb8 <dlopen>:
dlopen():
quickjs-nuttx/nuttx/stub.c:4
void dlopen(void) { puts("TODO: dlopen"); exit(1); }
    8005fbb8:	1141                	addi	sp,sp,-16
    8005fbba:	00029517          	auipc	a0,0x29
    8005fbbe:	00e50513          	addi	a0,a0,14 # 80088bc8 <qjsc_qjscalc+0x7cf0>
    8005fbc2:	e406                	sd	ra,8(sp)
    8005fbc4:	758010ef          	jal	ra,8006131c <puts>
    8005fbc8:	4505                	li	a0,1
    8005fbca:	7d7020ef          	jal	ra,80062ba0 <exit>

000000008005fbce <dlsym>:
dlsym():
quickjs-nuttx/nuttx/stub.c:5
void dlsym(void) { puts("TODO: dlsym"); exit(1); }
    8005fbce:	1141                	addi	sp,sp,-16
    8005fbd0:	00029517          	auipc	a0,0x29
    8005fbd4:	00850513          	addi	a0,a0,8 # 80088bd8 <qjsc_qjscalc+0x7d00>
    8005fbd8:	e406                	sd	ra,8(sp)
    8005fbda:	742010ef          	jal	ra,8006131c <puts>
    8005fbde:	4505                	li	a0,1
    8005fbe0:	7c1020ef          	jal	ra,80062ba0 <exit>

000000008005fbe4 <fesetround>:
fesetround():
quickjs-nuttx/nuttx/stub.c:6
void fesetround(void) { puts("TODO: fesetround"); exit(1); }
    8005fbe4:	1141                	addi	sp,sp,-16
    8005fbe6:	00029517          	auipc	a0,0x29
    8005fbea:	00250513          	addi	a0,a0,2 # 80088be8 <qjsc_qjscalc+0x7d10>
    8005fbee:	e406                	sd	ra,8(sp)
    8005fbf0:	72c010ef          	jal	ra,8006131c <puts>
    8005fbf4:	4505                	li	a0,1
    8005fbf6:	7ab020ef          	jal	ra,80062ba0 <exit>

000000008005fbfa <hypot>:
hypot():
quickjs-nuttx/nuttx/stub.c:7
void hypot(void) { puts("TODO: hypot"); exit(1); }
    8005fbfa:	1141                	addi	sp,sp,-16
    8005fbfc:	00029517          	auipc	a0,0x29
    8005fc00:	00450513          	addi	a0,a0,4 # 80088c00 <qjsc_qjscalc+0x7d28>
    8005fc04:	e406                	sd	ra,8(sp)
    8005fc06:	716010ef          	jal	ra,8006131c <puts>
    8005fc0a:	4505                	li	a0,1
    8005fc0c:	795020ef          	jal	ra,80062ba0 <exit>

000000008005fc10 <log1p>:
log1p():
quickjs-nuttx/nuttx/stub.c:8
void log1p(void) { puts("TODO: log1p"); exit(1); }
    8005fc10:	1141                	addi	sp,sp,-16
    8005fc12:	00029517          	auipc	a0,0x29
    8005fc16:	ffe50513          	addi	a0,a0,-2 # 80088c10 <qjsc_qjscalc+0x7d38>
    8005fc1a:	e406                	sd	ra,8(sp)
    8005fc1c:	700010ef          	jal	ra,8006131c <puts>
    8005fc20:	4505                	li	a0,1
    8005fc22:	77f020ef          	jal	ra,80062ba0 <exit>

000000008005fc26 <lrint>:
lrint():
quickjs-nuttx/nuttx/stub.c:9
void lrint(void) { puts("TODO: lrint"); exit(1); }
    8005fc26:	1141                	addi	sp,sp,-16
    8005fc28:	00029517          	auipc	a0,0x29
    8005fc2c:	ff850513          	addi	a0,a0,-8 # 80088c20 <qjsc_qjscalc+0x7d48>
    8005fc30:	e406                	sd	ra,8(sp)
    8005fc32:	6ea010ef          	jal	ra,8006131c <puts>
    8005fc36:	4505                	li	a0,1
    8005fc38:	769020ef          	jal	ra,80062ba0 <exit>

000000008005fc3c <pclose>:
pclose():
quickjs-nuttx/nuttx/stub.c:10
void pclose(void) { puts("TODO: pclose"); exit(1); }
    8005fc3c:	1141                	addi	sp,sp,-16
    8005fc3e:	00029517          	auipc	a0,0x29
    8005fc42:	ff250513          	addi	a0,a0,-14 # 80088c30 <qjsc_qjscalc+0x7d58>
    8005fc46:	e406                	sd	ra,8(sp)
    8005fc48:	6d4010ef          	jal	ra,8006131c <puts>
    8005fc4c:	4505                	li	a0,1
    8005fc4e:	753020ef          	jal	ra,80062ba0 <exit>

000000008005fc52 <pipe2>:
pipe2():
quickjs-nuttx/nuttx/stub.c:11
void pipe2(void) { puts("TODO: pipe2"); exit(1); }
    8005fc52:	1141                	addi	sp,sp,-16
    8005fc54:	00029517          	auipc	a0,0x29
    8005fc58:	fec50513          	addi	a0,a0,-20 # 80088c40 <qjsc_qjscalc+0x7d68>
    8005fc5c:	e406                	sd	ra,8(sp)
    8005fc5e:	6be010ef          	jal	ra,8006131c <puts>
    8005fc62:	4505                	li	a0,1
    8005fc64:	73d020ef          	jal	ra,80062ba0 <exit>

000000008005fc68 <popen>:
popen():
quickjs-nuttx/nuttx/stub.c:12
void popen(void) { puts("TODO: popen"); exit(1); }
    8005fc68:	1141                	addi	sp,sp,-16
    8005fc6a:	00029517          	auipc	a0,0x29
    8005fc6e:	fe650513          	addi	a0,a0,-26 # 80088c50 <qjsc_qjscalc+0x7d78>
    8005fc72:	e406                	sd	ra,8(sp)
    8005fc74:	6a8010ef          	jal	ra,8006131c <puts>
    8005fc78:	4505                	li	a0,1
    8005fc7a:	727020ef          	jal	ra,80062ba0 <exit>

000000008005fc7e <readlink>:
readlink():
quickjs-nuttx/nuttx/stub.c:13
void readlink(void) { puts("TODO: readlink"); exit(1); }
    8005fc7e:	1141                	addi	sp,sp,-16
    8005fc80:	00029517          	auipc	a0,0x29
    8005fc84:	fe050513          	addi	a0,a0,-32 # 80088c60 <qjsc_qjscalc+0x7d88>
    8005fc88:	e406                	sd	ra,8(sp)
    8005fc8a:	692010ef          	jal	ra,8006131c <puts>
    8005fc8e:	4505                	li	a0,1
    8005fc90:	711020ef          	jal	ra,80062ba0 <exit>

000000008005fc94 <symlink>:
symlink():
quickjs-nuttx/nuttx/stub.c:14
void symlink(void) { puts("TODO: symlink"); exit(1); }
    8005fc94:	1141                	addi	sp,sp,-16
    8005fc96:	00029517          	auipc	a0,0x29
    8005fc9a:	fda50513          	addi	a0,a0,-38 # 80088c70 <qjsc_qjscalc+0x7d98>
    8005fc9e:	e406                	sd	ra,8(sp)
    8005fca0:	67c010ef          	jal	ra,8006131c <puts>
    8005fca4:	4505                	li	a0,1
    8005fca6:	6fb020ef          	jal	ra,80062ba0 <exit>

000000008005fcaa <malloc_size>:
malloc_size():
nuttx/mm/umm_heap/umm_malloc_size.c:40
 ****************************************************************************/

#undef malloc_size /* See mm/README.txt */
size_t malloc_size(FAR void *mem)
{
  return mm_malloc_size(USR_HEAP, mem);
    8005fcaa:	008017b7          	lui	a5,0x801
    8005fcae:	07a2                	slli	a5,a5,0x8
nuttx/mm/umm_heap/umm_malloc_size.c:39
{
    8005fcb0:	85aa                	mv	a1,a0
nuttx/mm/umm_heap/umm_malloc_size.c:40
  return mm_malloc_size(USR_HEAP, mem);
    8005fcb2:	6788                	ld	a0,8(a5)
    8005fcb4:	aa05                	j	8005fde4 <mm_malloc_size>

000000008005fcb6 <free>:
free():
nuttx/mm/umm_heap/umm_free.c:49
 ****************************************************************************/

#undef free /* See mm/README.txt */
void free(FAR void *mem)
{
  mm_free(USR_HEAP, mem);
    8005fcb6:	008017b7          	lui	a5,0x801
    8005fcba:	07a2                	slli	a5,a5,0x8
nuttx/mm/umm_heap/umm_free.c:48
{
    8005fcbc:	85aa                	mv	a1,a0
nuttx/mm/umm_heap/umm_free.c:49
  mm_free(USR_HEAP, mem);
    8005fcbe:	6788                	ld	a0,8(a5)
    8005fcc0:	a66d                	j	8006006a <mm_free>

000000008005fcc2 <malloc>:
malloc():
nuttx/mm/umm_heap/umm_malloc.c:54
 *
 ****************************************************************************/

#undef malloc /* See mm/README.txt */
FAR void *malloc(size_t size)
{
    8005fcc2:	85aa                	mv	a1,a0
nuttx/mm/umm_heap/umm_malloc.c:58
#if defined(CONFIG_ARCH_ADDRENV) && defined(CONFIG_BUILD_KERNEL)
  /* Use memalign() because it implements the sbrk() logic */

  return memalign(sizeof(FAR void *), size);
    8005fcc4:	4521                	li	a0,8
    8005fcc6:	a009                	j	8005fcc8 <memalign>

000000008005fcc8 <memalign>:
memalign():
nuttx/mm/umm_heap/umm_memalign.c:53
 *
 ****************************************************************************/

#undef memalign /* See mm/README.txt */
FAR void *memalign(size_t alignment, size_t size)
{
    8005fcc8:	7179                	addi	sp,sp,-48
    8005fcca:	e44e                	sd	s3,8(sp)
nuttx/mm/umm_heap/umm_memalign.c:75
   * allocated).
   */

  do
    {
      mem = mm_memalign(USR_HEAP, alignment, size);
    8005fccc:	008019b7          	lui	s3,0x801
nuttx/mm/umm_heap/umm_memalign.c:53
{
    8005fcd0:	f022                	sd	s0,32(sp)
    8005fcd2:	e84a                	sd	s2,16(sp)
    8005fcd4:	e052                	sd	s4,0(sp)
    8005fcd6:	f406                	sd	ra,40(sp)
    8005fcd8:	ec26                	sd	s1,24(sp)
    8005fcda:	892a                	mv	s2,a0
    8005fcdc:	842e                	mv	s0,a1
nuttx/mm/umm_heap/umm_memalign.c:75
      mem = mm_memalign(USR_HEAP, alignment, size);
    8005fcde:	09a2                	slli	s3,s3,0x8
nuttx/mm/umm_heap/umm_memalign.c:60
  umm_try_initialize();
    8005fce0:	03f000ef          	jal	ra,8006051e <umm_try_initialize>
nuttx/mm/umm_heap/umm_memalign.c:79
      if (!mem)
        {
          brkaddr = sbrk(size < 1 ? 1 : size);
          if (brkaddr == (FAR void *)-1)
    8005fce4:	5a7d                	li	s4,-1
nuttx/mm/umm_heap/umm_memalign.c:75
      mem = mm_memalign(USR_HEAP, alignment, size);
    8005fce6:	0089b503          	ld	a0,8(s3) # 801008 <asinh-0x7f7feff8>
    8005fcea:	8622                	mv	a2,s0
    8005fcec:	85ca                	mv	a1,s2
    8005fcee:	3bc000ef          	jal	ra,800600aa <mm_memalign>
    8005fcf2:	84aa                	mv	s1,a0
nuttx/mm/umm_heap/umm_memalign.c:76
      if (!mem)
    8005fcf4:	e901                	bnez	a0,8005fd04 <memalign+0x3c>
nuttx/mm/umm_heap/umm_memalign.c:78
          brkaddr = sbrk(size < 1 ? 1 : size);
    8005fcf6:	8522                	mv	a0,s0
    8005fcf8:	e011                	bnez	s0,8005fcfc <memalign+0x34>
    8005fcfa:	4505                	li	a0,1
    8005fcfc:	068000ef          	jal	ra,8005fd64 <sbrk>
nuttx/mm/umm_heap/umm_memalign.c:79
          if (brkaddr == (FAR void *)-1)
    8005fd00:	ff4513e3          	bne	a0,s4,8005fce6 <memalign+0x1e>
nuttx/mm/umm_heap/umm_memalign.c:99
      set_errno(ENOMEM);
    }

  return ret;
#endif
}
    8005fd04:	70a2                	ld	ra,40(sp)
    8005fd06:	7402                	ld	s0,32(sp)
    8005fd08:	6942                	ld	s2,16(sp)
    8005fd0a:	69a2                	ld	s3,8(sp)
    8005fd0c:	6a02                	ld	s4,0(sp)
    8005fd0e:	8526                	mv	a0,s1
    8005fd10:	64e2                	ld	s1,24(sp)
    8005fd12:	6145                	addi	sp,sp,48
    8005fd14:	8082                	ret

000000008005fd16 <realloc>:
realloc():
nuttx/mm/umm_heap/umm_realloc.c:55
 *
 ****************************************************************************/

#undef realloc /* See mm/README.txt */
FAR void *realloc(FAR void *oldmem, size_t size)
{
    8005fd16:	7179                	addi	sp,sp,-48
    8005fd18:	e44e                	sd	s3,8(sp)
nuttx/mm/umm_heap/umm_realloc.c:77
   * allocated).
   */

  do
    {
      mem = mm_realloc(USR_HEAP, oldmem, size);
    8005fd1a:	008019b7          	lui	s3,0x801
nuttx/mm/umm_heap/umm_realloc.c:55
{
    8005fd1e:	f022                	sd	s0,32(sp)
    8005fd20:	e84a                	sd	s2,16(sp)
    8005fd22:	e052                	sd	s4,0(sp)
    8005fd24:	f406                	sd	ra,40(sp)
    8005fd26:	ec26                	sd	s1,24(sp)
    8005fd28:	892a                	mv	s2,a0
    8005fd2a:	842e                	mv	s0,a1
nuttx/mm/umm_heap/umm_realloc.c:77
      mem = mm_realloc(USR_HEAP, oldmem, size);
    8005fd2c:	09a2                	slli	s3,s3,0x8
nuttx/mm/umm_heap/umm_realloc.c:62
  umm_try_initialize();
    8005fd2e:	7f0000ef          	jal	ra,8006051e <umm_try_initialize>
nuttx/mm/umm_heap/umm_realloc.c:81
      if (!mem)
        {
          brkaddr = sbrk(size < 1 ? 1 : size);
          if (brkaddr == (FAR void *)-1)
    8005fd32:	5a7d                	li	s4,-1
nuttx/mm/umm_heap/umm_realloc.c:77
      mem = mm_realloc(USR_HEAP, oldmem, size);
    8005fd34:	0089b503          	ld	a0,8(s3) # 801008 <asinh-0x7f7feff8>
    8005fd38:	8622                	mv	a2,s0
    8005fd3a:	85ca                	mv	a1,s2
    8005fd3c:	516000ef          	jal	ra,80060252 <mm_realloc>
    8005fd40:	84aa                	mv	s1,a0
nuttx/mm/umm_heap/umm_realloc.c:78
      if (!mem)
    8005fd42:	e901                	bnez	a0,8005fd52 <realloc+0x3c>
nuttx/mm/umm_heap/umm_realloc.c:80
          brkaddr = sbrk(size < 1 ? 1 : size);
    8005fd44:	8522                	mv	a0,s0
    8005fd46:	e011                	bnez	s0,8005fd4a <realloc+0x34>
    8005fd48:	4505                	li	a0,1
    8005fd4a:	01a000ef          	jal	ra,8005fd64 <sbrk>
nuttx/mm/umm_heap/umm_realloc.c:81
          if (brkaddr == (FAR void *)-1)
    8005fd4e:	ff4513e3          	bne	a0,s4,8005fd34 <realloc+0x1e>
nuttx/mm/umm_heap/umm_realloc.c:101
      set_errno(ENOMEM);
    }

  return ret;
#endif
}
    8005fd52:	70a2                	ld	ra,40(sp)
    8005fd54:	7402                	ld	s0,32(sp)
    8005fd56:	6942                	ld	s2,16(sp)
    8005fd58:	69a2                	ld	s3,8(sp)
    8005fd5a:	6a02                	ld	s4,0(sp)
    8005fd5c:	8526                	mv	a0,s1
    8005fd5e:	64e2                	ld	s1,24(sp)
    8005fd60:	6145                	addi	sp,sp,48
    8005fd62:	8082                	ret

000000008005fd64 <sbrk>:
sbrk():
nuttx/mm/umm_heap/umm_sbrk.c:74
 *        size.
 *
 ****************************************************************************/

FAR void *sbrk(intptr_t incr)
{
    8005fd64:	1101                	addi	sp,sp,-32
    8005fd66:	ec06                	sd	ra,24(sp)
    8005fd68:	e822                	sd	s0,16(sp)
    8005fd6a:	e426                	sd	s1,8(sp)
    8005fd6c:	e04a                	sd	s2,0(sp)
nuttx/mm/umm_heap/umm_sbrk.c:81
  uintptr_t allocbase;
  unsigned int pgincr;
  size_t bytesize;
  int errcode;

  DEBUGASSERT(incr >= 0);
    8005fd6e:	00055e63          	bgez	a0,8005fd8a <sbrk+0x26>
nuttx/mm/umm_heap/umm_sbrk.c:81 (discriminator 1)
    8005fd72:	00029617          	auipc	a2,0x29
    8005fd76:	f0e60613          	addi	a2,a2,-242 # 80088c80 <qjsc_qjscalc+0x7da8>
    8005fd7a:	05100593          	li	a1,81
    8005fd7e:	00029517          	auipc	a0,0x29
    8005fd82:	f1250513          	addi	a0,a0,-238 # 80088c90 <qjsc_qjscalc+0x7db8>
    8005fd86:	3d7000ef          	jal	ra,8006095c <__assert>
nuttx/mm/umm_heap/umm_sbrk.c:94

  umm_try_initialize();

  /* Get the current break address (NOTE: assumes region 0). */

  brkaddr = (uintptr_t)mm_brkaddr(USR_HEAP, 0);
    8005fd8a:	00801937          	lui	s2,0x801
    8005fd8e:	842a                	mv	s0,a0
    8005fd90:	0922                	slli	s2,s2,0x8
nuttx/mm/umm_heap/umm_sbrk.c:90
  umm_try_initialize();
    8005fd92:	78c000ef          	jal	ra,8006051e <umm_try_initialize>
nuttx/mm/umm_heap/umm_sbrk.c:94
  brkaddr = (uintptr_t)mm_brkaddr(USR_HEAP, 0);
    8005fd96:	00893503          	ld	a0,8(s2) # 801008 <asinh-0x7f7feff8>
    8005fd9a:	4581                	li	a1,0
    8005fd9c:	078000ef          	jal	ra,8005fe14 <mm_brkaddr>
    8005fda0:	84aa                	mv	s1,a0
nuttx/mm/umm_heap/umm_sbrk.c:95
  if (incr > 0)
    8005fda2:	c405                	beqz	s0,8005fdca <sbrk+0x66>
nuttx/mm/umm_heap/umm_sbrk.c:99
    {
      /* Convert the increment to multiples of the page size */

      pgincr = MM_NPAGES(incr);
    8005fda4:	6585                	lui	a1,0x1
    8005fda6:	15fd                	addi	a1,a1,-1
    8005fda8:	942e                	add	s0,s0,a1
    8005fdaa:	8031                	srli	s0,s0,0xc
    8005fdac:	2401                	sext.w	s0,s0
nuttx/mm/umm_heap/umm_sbrk.c:105

      /* Allocate the requested number of pages and map them to the
       * break address.
       */

      allocbase = pgalloc(brkaddr, pgincr);
    8005fdae:	85a2                	mv	a1,s0
    8005fdb0:	295040ef          	jal	ra,80064844 <pgalloc>
    8005fdb4:	85aa                	mv	a1,a0
nuttx/mm/umm_heap/umm_sbrk.c:106
      if (allocbase == 0)
    8005fdb6:	c10d                	beqz	a0,8005fdd8 <sbrk+0x74>
nuttx/mm/umm_heap/umm_sbrk.c:114
          goto errout;
        }

      /* Extend the heap (region 0) */

      bytesize = pgincr << MM_PGSHIFT;
    8005fdb8:	00c4161b          	slliw	a2,s0,0xc
nuttx/mm/umm_heap/umm_sbrk.c:115
      mm_extend(USR_HEAP, (FAR void *)allocbase, bytesize, 0);
    8005fdbc:	00893503          	ld	a0,8(s2)
    8005fdc0:	1602                	slli	a2,a2,0x20
    8005fdc2:	4681                	li	a3,0
    8005fdc4:	9201                	srli	a2,a2,0x20
    8005fdc6:	076000ef          	jal	ra,8005fe3c <mm_extend>
nuttx/mm/umm_heap/umm_sbrk.c:123
  return (FAR void *)brkaddr;

errout:
  set_errno(errcode);
  return (FAR void *)-1;
}
    8005fdca:	60e2                	ld	ra,24(sp)
    8005fdcc:	6442                	ld	s0,16(sp)
    8005fdce:	6902                	ld	s2,0(sp)
    8005fdd0:	8526                	mv	a0,s1
    8005fdd2:	64a2                	ld	s1,8(sp)
    8005fdd4:	6105                	addi	sp,sp,32
    8005fdd6:	8082                	ret
nuttx/mm/umm_heap/umm_sbrk.c:121
  set_errno(errcode);
    8005fdd8:	441000ef          	jal	ra,80060a18 <__errno>
    8005fddc:	47ad                	li	a5,11
    8005fdde:	c11c                	sw	a5,0(a0)
nuttx/mm/umm_heap/umm_sbrk.c:122
  return (FAR void *)-1;
    8005fde0:	54fd                	li	s1,-1
    8005fde2:	b7e5                	j	8005fdca <sbrk+0x66>

000000008005fde4 <mm_malloc_size>:
mm_malloc_size():
nuttx/mm/mm_heap/mm_malloc_size.c:52
    }
#endif

  /* Protect against attempts to query a NULL reference */

  if (!mem)
    8005fde4:	c595                	beqz	a1,8005fe10 <mm_malloc_size+0x2c>
nuttx/mm/mm_heap/mm_malloc_size.c:63

  node = (FAR struct mm_freenode_s *)((FAR char *)mem - MM_SIZEOF_ALLOCNODE);

  /* Sanity check against double-frees */

  DEBUGASSERT(MM_NODE_IS_ALLOC(node));
    8005fde6:	ff85b503          	ld	a0,-8(a1) # ff8 <asinh-0x7ffff008>
    8005fdea:	00157793          	andi	a5,a0,1
nuttx/mm/mm_heap/mm_malloc_size.c:65

  return MM_SIZEOF_NODE(node) - MM_ALLOCNODE_OVERHEAD;
    8005fdee:	9971                	andi	a0,a0,-4
    8005fdf0:	1561                	addi	a0,a0,-8
nuttx/mm/mm_heap/mm_malloc_size.c:63
  DEBUGASSERT(MM_NODE_IS_ALLOC(node));
    8005fdf2:	e385                	bnez	a5,8005fe12 <mm_malloc_size+0x2e>
nuttx/mm/mm_heap/mm_malloc_size.c:39 (discriminator 1)
{
    8005fdf4:	1141                	addi	sp,sp,-16
nuttx/mm/mm_heap/mm_malloc_size.c:63 (discriminator 1)
  DEBUGASSERT(MM_NODE_IS_ALLOC(node));
    8005fdf6:	00029617          	auipc	a2,0x29
    8005fdfa:	eb260613          	addi	a2,a2,-334 # 80088ca8 <qjsc_qjscalc+0x7dd0>
    8005fdfe:	03f00593          	li	a1,63
    8005fe02:	00029517          	auipc	a0,0x29
    8005fe06:	ec650513          	addi	a0,a0,-314 # 80088cc8 <qjsc_qjscalc+0x7df0>
nuttx/mm/mm_heap/mm_malloc_size.c:39 (discriminator 1)
{
    8005fe0a:	e406                	sd	ra,8(sp)
nuttx/mm/mm_heap/mm_malloc_size.c:63 (discriminator 1)
  DEBUGASSERT(MM_NODE_IS_ALLOC(node));
    8005fe0c:	351000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_malloc_size.c:54
      return 0;
    8005fe10:	4501                	li	a0,0
nuttx/mm/mm_heap/mm_malloc_size.c:66
}
    8005fe12:	8082                	ret

000000008005fe14 <mm_brkaddr>:
mm_brkaddr():
nuttx/mm/mm_heap/mm_brkaddr.c:53
  uintptr_t brkaddr;

#if CONFIG_MM_REGIONS > 1
  DEBUGASSERT(heap && region < heap->mm_nregions);
#else
  DEBUGASSERT(heap && region == 0);
    8005fe14:	c111                	beqz	a0,8005fe18 <mm_brkaddr+0x4>
nuttx/mm/mm_heap/mm_brkaddr.c:53 (discriminator 2)
    8005fe16:	cd99                	beqz	a1,8005fe34 <mm_brkaddr+0x20>
nuttx/mm/mm_heap/mm_brkaddr.c:47 (discriminator 3)
{
    8005fe18:	1141                	addi	sp,sp,-16
nuttx/mm/mm_heap/mm_brkaddr.c:53 (discriminator 3)
  DEBUGASSERT(heap && region == 0);
    8005fe1a:	00029617          	auipc	a2,0x29
    8005fe1e:	ece60613          	addi	a2,a2,-306 # 80088ce8 <qjsc_qjscalc+0x7e10>
    8005fe22:	03500593          	li	a1,53
    8005fe26:	00029517          	auipc	a0,0x29
    8005fe2a:	eda50513          	addi	a0,a0,-294 # 80088d00 <qjsc_qjscalc+0x7e28>
nuttx/mm/mm_heap/mm_brkaddr.c:47 (discriminator 3)
{
    8005fe2e:	e406                	sd	ra,8(sp)
nuttx/mm/mm_heap/mm_brkaddr.c:53 (discriminator 3)
  DEBUGASSERT(heap && region == 0);
    8005fe30:	32d000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_brkaddr.c:56 (discriminator 4)
#endif

  brkaddr = (uintptr_t)heap->mm_heapend[region];
    8005fe34:	6128                	ld	a0,64(a0)
nuttx/mm/mm_heap/mm_brkaddr.c:57 (discriminator 4)
  return brkaddr ? (FAR void *)(brkaddr + MM_SIZEOF_ALLOCNODE) : NULL;
    8005fe36:	c111                	beqz	a0,8005fe3a <mm_brkaddr+0x26>
nuttx/mm/mm_heap/mm_brkaddr.c:57 (discriminator 1)
    8005fe38:	0541                	addi	a0,a0,16
nuttx/mm/mm_heap/mm_brkaddr.c:58
}
    8005fe3a:	8082                	ret

000000008005fe3c <mm_extend>:
mm_extend():
nuttx/mm/mm_heap/mm_extend.c:54
 *
 ****************************************************************************/

void mm_extend(FAR struct mm_heap_s *heap, FAR void *mem, size_t size,
               int region)
{
    8005fe3c:	7139                	addi	sp,sp,-64
    8005fe3e:	fc06                	sd	ra,56(sp)
    8005fe40:	f822                	sd	s0,48(sp)
    8005fe42:	f426                	sd	s1,40(sp)
    8005fe44:	f04a                	sd	s2,32(sp)
    8005fe46:	ec4e                	sd	s3,24(sp)
nuttx/mm/mm_heap/mm_extend.c:62
  uintptr_t blockstart;
  uintptr_t blockend;

  /* Make sure that we were passed valid parameters */

  DEBUGASSERT(heap && mem);
    8005fe48:	c111                	beqz	a0,8005fe4c <mm_extend+0x10>
nuttx/mm/mm_heap/mm_extend.c:62 (discriminator 2)
    8005fe4a:	ed89                	bnez	a1,8005fe64 <mm_extend+0x28>
nuttx/mm/mm_heap/mm_extend.c:62 (discriminator 3)
    8005fe4c:	00029617          	auipc	a2,0x29
    8005fe50:	ecc60613          	addi	a2,a2,-308 # 80088d18 <qjsc_qjscalc+0x7e40>
    8005fe54:	03e00593          	li	a1,62
nuttx/mm/mm_heap/mm_extend.c:67 (discriminator 3)
#if CONFIG_MM_REGIONS > 1
  DEBUGASSERT(size >= MIN_EXTEND && region >= 0 &&
              region < heap->mm_nregions);
#else
  DEBUGASSERT(size >= MIN_EXTEND && region == 0);
    8005fe58:	00029517          	auipc	a0,0x29
    8005fe5c:	ed050513          	addi	a0,a0,-304 # 80088d28 <qjsc_qjscalc+0x7e50>
    8005fe60:	2fd000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_extend.c:67 (discriminator 4)
    8005fe64:	47fd                	li	a5,31
    8005fe66:	84b2                	mv	s1,a2
    8005fe68:	00c7f363          	bgeu	a5,a2,8005fe6e <mm_extend+0x32>
nuttx/mm/mm_heap/mm_extend.c:67 (discriminator 2)
    8005fe6c:	ca81                	beqz	a3,8005fe7c <mm_extend+0x40>
nuttx/mm/mm_heap/mm_extend.c:67 (discriminator 3)
    8005fe6e:	00029617          	auipc	a2,0x29
    8005fe72:	ed260613          	addi	a2,a2,-302 # 80088d40 <qjsc_qjscalc+0x7e68>
    8005fe76:	04300593          	li	a1,67
    8005fe7a:	bff9                	j	8005fe58 <mm_extend+0x1c>
nuttx/mm/mm_heap/mm_extend.c:75 (discriminator 4)
  /* Make sure that the memory region are properly aligned */

  blockstart = (uintptr_t)mem;
  blockend   = blockstart + size;

  DEBUGASSERT(MM_ALIGN_UP(blockstart) == blockstart);
    8005fe7c:	00f58993          	addi	s3,a1,15
    8005fe80:	ff09f993          	andi	s3,s3,-16
nuttx/mm/mm_heap/mm_extend.c:73 (discriminator 4)
  blockend   = blockstart + size;
    8005fe84:	00b607b3          	add	a5,a2,a1
nuttx/mm/mm_heap/mm_extend.c:75 (discriminator 4)
  DEBUGASSERT(MM_ALIGN_UP(blockstart) == blockstart);
    8005fe88:	00b98963          	beq	s3,a1,8005fe9a <mm_extend+0x5e>
nuttx/mm/mm_heap/mm_extend.c:75 (discriminator 1)
    8005fe8c:	00029617          	auipc	a2,0x29
    8005fe90:	ef460613          	addi	a2,a2,-268 # 80088d80 <qjsc_qjscalc+0x7ea8>
    8005fe94:	04b00593          	li	a1,75
    8005fe98:	b7c1                	j	8005fe58 <mm_extend+0x1c>
nuttx/mm/mm_heap/mm_extend.c:76 (discriminator 2)
  DEBUGASSERT(MM_ALIGN_DOWN(blockend) == blockend);
    8005fe9a:	ff07f913          	andi	s2,a5,-16
    8005fe9e:	00f90963          	beq	s2,a5,8005feb0 <mm_extend+0x74>
nuttx/mm/mm_heap/mm_extend.c:76 (discriminator 1)
    8005fea2:	00029617          	auipc	a2,0x29
    8005fea6:	f3e60613          	addi	a2,a2,-194 # 80088de0 <qjsc_qjscalc+0x7f08>
    8005feaa:	04c00593          	li	a1,76
    8005feae:	b76d                	j	8005fe58 <mm_extend+0x1c>
    8005feb0:	842a                	mv	s0,a0
nuttx/mm/mm_heap/mm_extend.c:80 (discriminator 2)

  /* Take the memory manager mutex */

  DEBUGVERIFY(mm_lock(heap));
    8005feb2:	7ae000ef          	jal	ra,80060660 <mm_lock>
    8005feb6:	00055963          	bgez	a0,8005fec8 <mm_extend+0x8c>
nuttx/mm/mm_heap/mm_extend.c:80 (discriminator 1)
    8005feba:	00029617          	auipc	a2,0x29
    8005febe:	f6660613          	addi	a2,a2,-154 # 80088e20 <qjsc_qjscalc+0x7f48>
    8005fec2:	05000593          	li	a1,80
    8005fec6:	bf49                	j	8005fe58 <mm_extend+0x1c>
nuttx/mm/mm_heap/mm_extend.c:86 (discriminator 2)

  /* Get the terminal node in the old heap.  The block to extend must
   * immediately follow this node.
   */

  oldnode = heap->mm_heapend[region];
    8005fec8:	6038                	ld	a4,64(s0)
nuttx/mm/mm_heap/mm_extend.c:87 (discriminator 2)
  DEBUGASSERT((uintptr_t)oldnode + MM_SIZEOF_ALLOCNODE == blockstart);
    8005feca:	01070593          	addi	a1,a4,16
    8005fece:	01358963          	beq	a1,s3,8005fee0 <mm_extend+0xa4>
nuttx/mm/mm_heap/mm_extend.c:87 (discriminator 1)
    8005fed2:	00029617          	auipc	a2,0x29
    8005fed6:	f5e60613          	addi	a2,a2,-162 # 80088e30 <qjsc_qjscalc+0x7f58>
    8005feda:	05700593          	li	a1,87
    8005fede:	bfad                	j	8005fe58 <mm_extend+0x1c>
nuttx/mm/mm_heap/mm_extend.c:95 (discriminator 2)
   * This is the old size (MM_SIZEOF_ALLOCNODE) plus the size of
   * the block (size) minus the size of the new terminal node
   * (MM_SIZEOF_ALLOCNODE) or simply:
   */

  oldnode->size = size | (oldnode->size & MM_MASK_BIT);
    8005fee0:	671c                	ld	a5,8(a4)
    8005fee2:	8b8d                	andi	a5,a5,3
    8005fee4:	8fc5                	or	a5,a5,s1
    8005fee6:	e71c                	sd	a5,8(a4)
nuttx/mm/mm_heap/mm_extend.c:99 (discriminator 2)

  /* The old node should already be marked as allocated */

  DEBUGASSERT(MM_NODE_IS_ALLOC(oldnode));
    8005fee8:	8b85                	andi	a5,a5,1
    8005feea:	eb81                	bnez	a5,8005fefa <mm_extend+0xbe>
nuttx/mm/mm_heap/mm_extend.c:99 (discriminator 1)
    8005feec:	00029617          	auipc	a2,0x29
    8005fef0:	f8c60613          	addi	a2,a2,-116 # 80088e78 <qjsc_qjscalc+0x7fa0>
    8005fef4:	06300593          	li	a1,99
    8005fef8:	b785                	j	8005fe58 <mm_extend+0x1c>
nuttx/mm/mm_heap/mm_extend.c:104 (discriminator 2)

  /* Get and initialize the new terminal node in the heap */

  newnode       = (FAR struct mm_allocnode_s *)
                  (blockend - MM_SIZEOF_ALLOCNODE);
    8005fefa:	1941                	addi	s2,s2,-16
nuttx/mm/mm_heap/mm_extend.c:105 (discriminator 2)
  newnode->size = MM_SIZEOF_ALLOCNODE | MM_ALLOC_BIT;
    8005fefc:	47c5                	li	a5,17
    8005fefe:	00f93423          	sd	a5,8(s2)
nuttx/mm/mm_heap/mm_extend.c:111 (discriminator 2)

  heap->mm_heapend[region] = newnode;

  /* Finally, increase the total heap size accordingly */

  heap->mm_heapsize += size;
    8005ff02:	7010                	ld	a2,32(s0)
nuttx/mm/mm_heap/mm_extend.c:107 (discriminator 2)
  heap->mm_heapend[region] = newnode;
    8005ff04:	05243023          	sd	s2,64(s0)
nuttx/mm/mm_heap/mm_extend.c:112 (discriminator 2)
  mm_unlock(heap);
    8005ff08:	8522                	mv	a0,s0
nuttx/mm/mm_heap/mm_extend.c:111 (discriminator 2)
  heap->mm_heapsize += size;
    8005ff0a:	94b2                	add	s1,s1,a2
    8005ff0c:	f004                	sd	s1,32(s0)
    8005ff0e:	e42e                	sd	a1,8(sp)
nuttx/mm/mm_heap/mm_extend.c:112 (discriminator 2)
  mm_unlock(heap);
    8005ff10:	774000ef          	jal	ra,80060684 <mm_unlock>
nuttx/mm/mm_heap/mm_extend.c:118 (discriminator 2)

  /* Finally "free" the new block of memory where the old terminal node was
   * located.
   */

  mm_free(heap, mem);
    8005ff14:	8522                	mv	a0,s0
nuttx/mm/mm_heap/mm_extend.c:119 (discriminator 2)
}
    8005ff16:	7442                	ld	s0,48(sp)
nuttx/mm/mm_heap/mm_extend.c:118 (discriminator 2)
  mm_free(heap, mem);
    8005ff18:	65a2                	ld	a1,8(sp)
nuttx/mm/mm_heap/mm_extend.c:119 (discriminator 2)
}
    8005ff1a:	70e2                	ld	ra,56(sp)
    8005ff1c:	74a2                	ld	s1,40(sp)
    8005ff1e:	7902                	ld	s2,32(sp)
    8005ff20:	69e2                	ld	s3,24(sp)
    8005ff22:	6121                	addi	sp,sp,64
nuttx/mm/mm_heap/mm_extend.c:118 (discriminator 2)
  mm_free(heap, mem);
    8005ff24:	a299                	j	8006006a <mm_free>

000000008005ff26 <mm_delayfree>:
mm_delayfree():
nuttx/mm/mm_heap/mm_free.c:74
 *   Delay free memory if `delay` is true, otherwise free it immediately.
 *
 ****************************************************************************/

void mm_delayfree(FAR struct mm_heap_s *heap, FAR void *mem, bool delay)
{
    8005ff26:	1101                	addi	sp,sp,-32
    8005ff28:	e822                	sd	s0,16(sp)
    8005ff2a:	e426                	sd	s1,8(sp)
    8005ff2c:	e04a                	sd	s2,0(sp)
    8005ff2e:	ec06                	sd	ra,24(sp)
    8005ff30:	84aa                	mv	s1,a0
    8005ff32:	842e                	mv	s0,a1
    8005ff34:	8932                	mv	s2,a2
nuttx/mm/mm_heap/mm_free.c:81
  FAR struct mm_freenode_s *prev;
  FAR struct mm_freenode_s *next;
  size_t nodesize;
  size_t prevsize;

  if (mm_lock(heap) < 0)
    8005ff36:	72a000ef          	jal	ra,80060660 <mm_lock>
    8005ff3a:	12054263          	bltz	a0,8006005e <mm_delayfree+0x138>
nuttx/mm/mm_heap/mm_free.c:98
  memset(mem, 0x55, mm_malloc_size(heap, mem));
#endif

  kasan_poison(mem, mm_malloc_size(heap, mem));

  if (delay)
    8005ff3e:	00090963          	beqz	s2,8005ff50 <mm_delayfree+0x2a>
nuttx/mm/mm_heap/mm_free.c:196

  /* Add the merged node to the nodelist */

  mm_addfreechunk(heap, node);
  mm_unlock(heap);
}
    8005ff42:	6442                	ld	s0,16(sp)
    8005ff44:	60e2                	ld	ra,24(sp)
    8005ff46:	6902                	ld	s2,0(sp)
nuttx/mm/mm_heap/mm_free.c:195
  mm_unlock(heap);
    8005ff48:	8526                	mv	a0,s1
nuttx/mm/mm_heap/mm_free.c:196
}
    8005ff4a:	64a2                	ld	s1,8(sp)
    8005ff4c:	6105                	addi	sp,sp,32
nuttx/mm/mm_heap/mm_free.c:195
  mm_unlock(heap);
    8005ff4e:	af1d                	j	80060684 <mm_unlock>
nuttx/mm/mm_heap/mm_free.c:108
  nodesize = MM_SIZEOF_NODE(node);
    8005ff50:	ff843783          	ld	a5,-8(s0)
nuttx/mm/mm_heap/mm_free.c:107
  node = (FAR struct mm_freenode_s *)((FAR char *)mem - MM_SIZEOF_ALLOCNODE);
    8005ff54:	ff040593          	addi	a1,s0,-16
nuttx/mm/mm_heap/mm_free.c:112
  DEBUGASSERT(MM_NODE_IS_ALLOC(node));
    8005ff58:	0017f693          	andi	a3,a5,1
nuttx/mm/mm_heap/mm_free.c:108
  nodesize = MM_SIZEOF_NODE(node);
    8005ff5c:	ffc7f713          	andi	a4,a5,-4
nuttx/mm/mm_heap/mm_free.c:112
  DEBUGASSERT(MM_NODE_IS_ALLOC(node));
    8005ff60:	ee89                	bnez	a3,8005ff7a <mm_delayfree+0x54>
    8005ff62:	00029617          	auipc	a2,0x29
    8005ff66:	d4660613          	addi	a2,a2,-698 # 80088ca8 <qjsc_qjscalc+0x7dd0>
    8005ff6a:	07000593          	li	a1,112
nuttx/mm/mm_heap/mm_free.c:177
      DEBUGASSERT(prev->blink);
    8005ff6e:	00029517          	auipc	a0,0x29
    8005ff72:	f2a50513          	addi	a0,a0,-214 # 80088e98 <qjsc_qjscalc+0x7fc0>
    8005ff76:	1e7000ef          	jal	ra,8006095c <__assert>
nuttx/mm/mm_heap/mm_free.c:114
  node->size &= ~MM_ALLOC_BIT;
    8005ff7a:	9bf9                	andi	a5,a5,-2
    8005ff7c:	fef43c23          	sd	a5,-8(s0)
nuttx/mm/mm_heap/mm_free.c:118
  heap->mm_curused -= nodesize;
    8005ff80:	789c                	ld	a5,48(s1)
nuttx/mm/mm_heap/mm_free.c:122
  next = (FAR struct mm_freenode_s *)((FAR char *)node + nodesize);
    8005ff82:	00e586b3          	add	a3,a1,a4
nuttx/mm/mm_heap/mm_free.c:118
  heap->mm_curused -= nodesize;
    8005ff86:	8f99                	sub	a5,a5,a4
    8005ff88:	f89c                	sd	a5,48(s1)
nuttx/mm/mm_heap/mm_free.c:123
  DEBUGASSERT(MM_PREVNODE_IS_ALLOC(next));
    8005ff8a:	669c                	ld	a5,8(a3)
    8005ff8c:	0027f613          	andi	a2,a5,2
    8005ff90:	ca01                	beqz	a2,8005ffa0 <mm_delayfree+0x7a>
    8005ff92:	00029617          	auipc	a2,0x29
    8005ff96:	f1e60613          	addi	a2,a2,-226 # 80088eb0 <qjsc_qjscalc+0x7fd8>
    8005ff9a:	07b00593          	li	a1,123
    8005ff9e:	bfc1                	j	8005ff6e <mm_delayfree+0x48>
nuttx/mm/mm_heap/mm_free.c:124
  if (MM_NODE_IS_FREE(next))
    8005ffa0:	0017f613          	andi	a2,a5,1
    8005ffa4:	ee3d                	bnez	a2,80060022 <mm_delayfree+0xfc>
nuttx/mm/mm_heap/mm_free.c:127
      size_t nextsize = MM_SIZEOF_NODE(next);
    8005ffa6:	9bf1                	andi	a5,a5,-4
nuttx/mm/mm_heap/mm_free.c:134
      andbeyond = (FAR struct mm_allocnode_s *)((FAR char *)next + nextsize);
    8005ffa8:	00f68633          	add	a2,a3,a5
nuttx/mm/mm_heap/mm_free.c:135
      DEBUGASSERT(MM_PREVNODE_IS_FREE(andbeyond) &&
    8005ffac:	6608                	ld	a0,8(a2)
    8005ffae:	8909                	andi	a0,a0,2
    8005ffb0:	c501                	beqz	a0,8005ffb8 <mm_delayfree+0x92>
    8005ffb2:	6208                	ld	a0,0(a2)
    8005ffb4:	00a78963          	beq	a5,a0,8005ffc6 <mm_delayfree+0xa0>
    8005ffb8:	00029617          	auipc	a2,0x29
    8005ffbc:	f1860613          	addi	a2,a2,-232 # 80088ed0 <qjsc_qjscalc+0x7ff8>
    8005ffc0:	08700593          	li	a1,135
    8005ffc4:	b76d                	j	8005ff6e <mm_delayfree+0x48>
nuttx/mm/mm_heap/mm_free.c:142
      DEBUGASSERT(next->blink);
    8005ffc6:	0186b803          	ld	a6,24(a3)
    8005ffca:	00081963          	bnez	a6,8005ffdc <mm_delayfree+0xb6>
    8005ffce:	00029617          	auipc	a2,0x29
    8005ffd2:	f4a60613          	addi	a2,a2,-182 # 80088f18 <qjsc_qjscalc+0x8040>
    8005ffd6:	08e00593          	li	a1,142
    8005ffda:	bf51                	j	8005ff6e <mm_delayfree+0x48>
nuttx/mm/mm_heap/mm_free.c:143
      next->blink->flink = next->flink;
    8005ffdc:	6a88                	ld	a0,16(a3)
    8005ffde:	00a83823          	sd	a0,16(a6)
nuttx/mm/mm_heap/mm_free.c:144
      if (next->flink)
    8005ffe2:	c119                	beqz	a0,8005ffe8 <mm_delayfree+0xc2>
nuttx/mm/mm_heap/mm_free.c:146
          next->flink->blink = next->blink;
    8005ffe4:	6e94                	ld	a3,24(a3)
    8005ffe6:	ed14                	sd	a3,24(a0)
nuttx/mm/mm_heap/mm_free.c:151
      nodesize            += nextsize;
    8005ffe8:	973e                	add	a4,a4,a5
nuttx/mm/mm_heap/mm_free.c:152
      node->size           = nodesize | (node->size & MM_MASK_BIT);
    8005ffea:	ff843783          	ld	a5,-8(s0)
    8005ffee:	8b8d                	andi	a5,a5,3
    8005fff0:	8fd9                	or	a5,a5,a4
    8005fff2:	fef43c23          	sd	a5,-8(s0)
nuttx/mm/mm_heap/mm_free.c:153
      andbeyond->preceding = nodesize;
    8005fff6:	e218                	sd	a4,0(a2)
nuttx/mm/mm_heap/mm_free.c:166
  if (MM_PREVNODE_IS_FREE(node))
    8005fff8:	ff843783          	ld	a5,-8(s0)
    8005fffc:	8b89                	andi	a5,a5,2
    8005fffe:	cfa1                	beqz	a5,80060056 <mm_delayfree+0x130>
nuttx/mm/mm_heap/mm_free.c:169
        ((FAR char *)node - node->preceding);
