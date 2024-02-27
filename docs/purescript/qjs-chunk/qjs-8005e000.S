    8005d002:	0485                	addi	s1,s1,1
    8005d004:	8085                	srli	s1,s1,0x1
    8005d006:	89aa                	mv	s3,a0
    8005d008:	8aba                	mv	s5,a4
    8005d00a:	8c42                	mv	s8,a6
quickjs-nuttx/libbf.c:2727
        n1 = n - n2;
    8005d00c:	40960cb3          	sub	s9,a2,s1
quickjs-nuttx/libbf.c:2729
        B = &pow_tab[level];
    8005d010:	00d80933          	add	s2,a6,a3
quickjs-nuttx/libbf.c:2730
        if (B->len == 0) {
    8005d014:	01893783          	ld	a5,24(s2)
    8005d018:	cbb5                	beqz	a5,8005d08c <bf_integer_from_radix_rec+0xde>
quickjs-nuttx/libbf.c:2735
        ret = bf_integer_from_radix_rec(r, tab + n2, n1, level + 1, n0,
    8005d01a:	00349593          	slli	a1,s1,0x3
    8005d01e:	8862                	mv	a6,s8
    8005d020:	87da                	mv	a5,s6
    8005d022:	8756                	mv	a4,s5
    8005d024:	86de                	mv	a3,s7
    8005d026:	8666                	mv	a2,s9
    8005d028:	95d2                	add	a1,a1,s4
    8005d02a:	854e                	mv	a0,s3
    8005d02c:	f83ff0ef          	jal	ra,8005cfae <bf_integer_from_radix_rec>
    8005d030:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2737
        if (ret)
    8005d032:	e53d                	bnez	a0,8005d0a0 <bf_integer_from_radix_rec+0xf2>
quickjs-nuttx/libbf.c:2739
        ret = bf_mul(r, r, B, BF_PREC_INF, BF_RNDZ);
    8005d034:	5cfd                	li	s9,-1
    8005d036:	4705                	li	a4,1
    8005d038:	002cd693          	srli	a3,s9,0x2
    8005d03c:	864a                	mv	a2,s2
    8005d03e:	85ce                	mv	a1,s3
    8005d040:	854e                	mv	a0,s3
    8005d042:	eeeff0ef          	jal	ra,8005c730 <bf_mul>
    8005d046:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2740
        if (ret)
    8005d048:	ed21                	bnez	a0,8005d0a0 <bf_integer_from_radix_rec+0xf2>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d04a:	0009b783          	ld	a5,0(s3)
bf_integer_from_radix_rec():
quickjs-nuttx/libbf.c:2743
        ret = bf_integer_from_radix_rec(T, tab, n2, level + 1, n0,
    8005d04e:	8862                	mv	a6,s8
    8005d050:	8756                	mv	a4,s5
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d052:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d054:	03fc9793          	slli	a5,s9,0x3f
    8005d058:	ec3e                	sd	a5,24(sp)
bf_integer_from_radix_rec():
quickjs-nuttx/libbf.c:2743
        ret = bf_integer_from_radix_rec(T, tab, n2, level + 1, n0,
    8005d05a:	86de                	mv	a3,s7
    8005d05c:	87da                	mv	a5,s6
    8005d05e:	8626                	mv	a2,s1
    8005d060:	85d2                	mv	a1,s4
    8005d062:	0028                	addi	a0,sp,8
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005d064:	c802                	sw	zero,16(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005d066:	f002                	sd	zero,32(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005d068:	f402                	sd	zero,40(sp)
bf_integer_from_radix_rec():
quickjs-nuttx/libbf.c:2743
        ret = bf_integer_from_radix_rec(T, tab, n2, level + 1, n0,
    8005d06a:	f45ff0ef          	jal	ra,8005cfae <bf_integer_from_radix_rec>
    8005d06e:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2745
        if (!ret)
    8005d070:	e911                	bnez	a0,8005d084 <bf_integer_from_radix_rec+0xd6>
quickjs-nuttx/libbf.c:2746
            ret = bf_add(r, r, T, BF_PREC_INF, BF_RNDZ);
    8005d072:	4705                	li	a4,1
    8005d074:	002cd693          	srli	a3,s9,0x2
    8005d078:	0030                	addi	a2,sp,8
    8005d07a:	85ce                	mv	a1,s3
    8005d07c:	854e                	mv	a0,s3
    8005d07e:	abffb0ef          	jal	ra,80058b3c <bf_add>
    8005d082:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2747
        bf_delete(T);
    8005d084:	0028                	addi	a0,sp,8
    8005d086:	a25f90ef          	jal	ra,80056aaa <bf_delete>
    8005d08a:	a819                	j	8005d0a0 <bf_integer_from_radix_rec+0xf2>
quickjs-nuttx/libbf.c:2731
            ret = bf_pow_ui_ui(B, radix, n2, BF_PREC_INF, BF_RNDZ);
    8005d08c:	56fd                	li	a3,-1
    8005d08e:	4705                	li	a4,1
    8005d090:	8289                	srli	a3,a3,0x2
    8005d092:	8626                	mv	a2,s1
    8005d094:	85da                	mv	a1,s6
    8005d096:	854a                	mv	a0,s2
    8005d098:	c87ff0ef          	jal	ra,8005cd1e <bf_pow_ui_ui>
    8005d09c:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:2732
            if (ret)
    8005d09e:	dd35                	beqz	a0,8005d01a <bf_integer_from_radix_rec+0x6c>
quickjs-nuttx/libbf.c:2751
}
    8005d0a0:	60aa                	ld	ra,136(sp)
    8005d0a2:	8522                	mv	a0,s0
    8005d0a4:	640a                	ld	s0,128(sp)
    8005d0a6:	74e6                	ld	s1,120(sp)
    8005d0a8:	7946                	ld	s2,112(sp)
    8005d0aa:	79a6                	ld	s3,104(sp)
    8005d0ac:	7a06                	ld	s4,96(sp)
    8005d0ae:	6ae6                	ld	s5,88(sp)
    8005d0b0:	6b46                	ld	s6,80(sp)
    8005d0b2:	6ba6                	ld	s7,72(sp)
    8005d0b4:	6c06                	ld	s8,64(sp)
    8005d0b6:	7ce2                	ld	s9,56(sp)
    8005d0b8:	6149                	addi	sp,sp,144
    8005d0ba:	8082                	ret

000000008005d0bc <bf_atof_internal>:
bf_atof_internal():
quickjs-nuttx/libbf.c:2903
{
    8005d0bc:	716d                	addi	sp,sp,-272
    8005d0be:	fda6                	sd	s1,248(sp)
    8005d0c0:	f5ce                	sd	s3,232(sp)
    8005d0c2:	edd6                	sd	s5,216(sp)
    8005d0c4:	e1e2                	sd	s8,192(sp)
    8005d0c6:	fd66                	sd	s9,184(sp)
    8005d0c8:	e606                	sd	ra,264(sp)
    8005d0ca:	e222                	sd	s0,256(sp)
    8005d0cc:	f9ca                	sd	s2,240(sp)
    8005d0ce:	f1d2                	sd	s4,224(sp)
    8005d0d0:	e9da                	sd	s6,208(sp)
    8005d0d2:	e5de                	sd	s7,200(sp)
    8005d0d4:	f96a                	sd	s10,176(sp)
    8005d0d6:	f56e                	sd	s11,168(sp)
    8005d0d8:	e83e                	sd	a5,16(sp)
quickjs-nuttx/libbf.c:2913
    if (!(flags & BF_ATOF_NO_NAN_INF) && radix <= 16 &&
    8005d0da:	000407b7          	lui	a5,0x40
quickjs-nuttx/libbf.c:2903
{
    8005d0de:	ec2e                	sd	a1,24(sp)
    8005d0e0:	f036                	sd	a3,32(sp)
quickjs-nuttx/libbf.c:2911
    *pexponent = 0;
    8005d0e2:	0005b023          	sd	zero,0(a1)
quickjs-nuttx/libbf.c:2913
    if (!(flags & BF_ATOF_NO_NAN_INF) && radix <= 16 &&
    8005d0e6:	00f877b3          	and	a5,a6,a5
quickjs-nuttx/libbf.c:2903
{
    8005d0ea:	89aa                	mv	s3,a0
    8005d0ec:	8cb2                	mv	s9,a2
    8005d0ee:	84ba                	mv	s1,a4
    8005d0f0:	8ac2                	mv	s5,a6
    8005d0f2:	8c46                	mv	s8,a7
quickjs-nuttx/libbf.c:2913
    if (!(flags & BF_ATOF_NO_NAN_INF) && radix <= 16 &&
    8005d0f4:	e3a1                	bnez	a5,8005d134 <bf_atof_internal+0x78>
quickjs-nuttx/libbf.c:2913 (discriminator 1)
    8005d0f6:	4741                	li	a4,16
    8005d0f8:	02974e63          	blt	a4,s1,8005d134 <bf_atof_internal+0x78>
    8005d0fc:	8432                	mv	s0,a2
strcasestart():
quickjs-nuttx/libbf.c:2888
    q = val;
    8005d0fe:	00023697          	auipc	a3,0x23
    8005d102:	64268693          	addi	a3,a3,1602 # 80080740 <std_name.0+0x198>
bf_tolower():
quickjs-nuttx/libbf.c:2879
    if (c >= 'A' && c <= 'Z')
    8005d106:	4565                	li	a0,25
    8005d108:	a839                	j	8005d126 <bf_atof_internal+0x6a>
strcasestart():
quickjs-nuttx/libbf.c:2890
        if (bf_tolower(*p) != *q)
    8005d10a:	00044703          	lbu	a4,0(s0)
    8005d10e:	0007061b          	sext.w	a2,a4
bf_tolower():
quickjs-nuttx/libbf.c:2879
    if (c >= 'A' && c <= 'Z')
    8005d112:	fbf7071b          	addiw	a4,a4,-65
    8005d116:	00e56463          	bltu	a0,a4,8005d11e <bf_atof_internal+0x62>
quickjs-nuttx/libbf.c:2880
        c = c - 'A' + 'a';
    8005d11a:	02060613          	addi	a2,a2,32
strcasestart():
quickjs-nuttx/libbf.c:2890
        if (bf_tolower(*p) != *q)
    8005d11e:	00c59b63          	bne	a1,a2,8005d134 <bf_atof_internal+0x78>
quickjs-nuttx/libbf.c:2892
        p++;
    8005d122:	0405                	addi	s0,s0,1
quickjs-nuttx/libbf.c:2893
        q++;
    8005d124:	0685                	addi	a3,a3,1
quickjs-nuttx/libbf.c:2889
    while (*q != '\0') {
    8005d126:	0006c583          	lbu	a1,0(a3)
    8005d12a:	f1e5                	bnez	a1,8005d10a <bf_atof_internal+0x4e>
bf_atof_internal():
quickjs-nuttx/libbf.c:2915
        bf_set_nan(r);
    8005d12c:	854e                	mv	a0,s3
    8005d12e:	a91fa0ef          	jal	ra,80057bbe <bf_set_nan>
    8005d132:	a8e5                	j	8005d22a <bf_atof_internal+0x16e>
quickjs-nuttx/libbf.c:2921
    if (p[0] == '+') {
    8005d134:	000cc703          	lbu	a4,0(s9)
    8005d138:	02b00693          	li	a3,43
    8005d13c:	06d71363          	bne	a4,a3,8005d1a2 <bf_atof_internal+0xe6>
quickjs-nuttx/libbf.c:2922
        p++;
    8005d140:	0c85                	addi	s9,s9,1
quickjs-nuttx/libbf.c:2919
    is_neg = 0;
    8005d142:	4b01                	li	s6,0
quickjs-nuttx/libbf.c:2931
    if (p[0] == '0') {
    8005d144:	000cc683          	lbu	a3,0(s9)
    8005d148:	03000713          	li	a4,48
    8005d14c:	08e69f63          	bne	a3,a4,8005d1ea <bf_atof_internal+0x12e>
quickjs-nuttx/libbf.c:2932
        if ((p[1] == 'x' || p[1] == 'X') &&
    8005d150:	001cc783          	lbu	a5,1(s9)
    8005d154:	05800713          	li	a4,88
    8005d158:	0df7f793          	andi	a5,a5,223
    8005d15c:	04e79b63          	bne	a5,a4,8005d1b2 <bf_atof_internal+0xf6>
quickjs-nuttx/libbf.c:2934 (discriminator 3)
            !(flags & BF_ATOF_NO_HEX)) {
    8005d160:	67c1                	lui	a5,0x10
    8005d162:	00faf7b3          	and	a5,s5,a5
quickjs-nuttx/libbf.c:2932 (discriminator 3)
        if ((p[1] == 'x' || p[1] == 'X') &&
    8005d166:	fef4f713          	andi	a4,s1,-17
quickjs-nuttx/libbf.c:2933 (discriminator 3)
            (radix == 0 || radix == 16) &&
    8005d16a:	8fd9                	or	a5,a5,a4
    8005d16c:	2781                	sext.w	a5,a5
    8005d16e:	e3e1                	bnez	a5,8005d22e <bf_atof_internal+0x172>
quickjs-nuttx/libbf.c:2936
            p += 2;
    8005d170:	002c8413          	addi	s0,s9,2
quickjs-nuttx/libbf.c:2935
            radix = 16;
    8005d174:	44c1                	li	s1,16
quickjs-nuttx/libbf.c:2949
        if (to_digit((uint8_t)*p) >= radix) {
    8005d176:	00044503          	lbu	a0,0(s0)
    8005d17a:	b09f90ef          	jal	ra,80056c82 <to_digit>
    8005d17e:	fa9557e3          	bge	a0,s1,8005d12c <bf_atof_internal+0x70>
quickjs-nuttx/libbf.c:2966
    if (is_dec) {
    8005d182:	0a0c0a63          	beqz	s8,8005d236 <bf_atof_internal+0x17a>
quickjs-nuttx/libbf.c:2967
        assert(radix == 10);
    8005d186:	47a9                	li	a5,10
    8005d188:	894e                	mv	s2,s3
    8005d18a:	0cf48663          	beq	s1,a5,8005d256 <bf_atof_internal+0x19a>
quickjs-nuttx/libbf.c:2967 (discriminator 1)
    8005d18e:	6585                	lui	a1,0x1
    8005d190:	4601                	li	a2,0
    8005d192:	b9758593          	addi	a1,a1,-1129 # b97 <asinh-0x7ffff469>
    8005d196:	00023517          	auipc	a0,0x23
    8005d19a:	42a50513          	addi	a0,a0,1066 # 800805c0 <std_name.0+0x18>
    8005d19e:	7be030ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/libbf.c:2924
    } else if (p[0] == '-') {
    8005d1a2:	02d00693          	li	a3,45
quickjs-nuttx/libbf.c:2919
    is_neg = 0;
    8005d1a6:	4b01                	li	s6,0
quickjs-nuttx/libbf.c:2924
    } else if (p[0] == '-') {
    8005d1a8:	f8d71ee3          	bne	a4,a3,8005d144 <bf_atof_internal+0x88>
quickjs-nuttx/libbf.c:2926
        p++;
    8005d1ac:	0c85                	addi	s9,s9,1
quickjs-nuttx/libbf.c:2925
        is_neg = 1;
    8005d1ae:	4b05                	li	s6,1
    8005d1b0:	bf51                	j	8005d144 <bf_atof_internal+0x88>
quickjs-nuttx/libbf.c:2937 (discriminator 2)
        } else if ((p[1] == 'o' || p[1] == 'O') &&
    8005d1b2:	04f00713          	li	a4,79
    8005d1b6:	00e79c63          	bne	a5,a4,8005d1ce <bf_atof_internal+0x112>
quickjs-nuttx/libbf.c:2937 (discriminator 3)
    8005d1ba:	eca5                	bnez	s1,8005d232 <bf_atof_internal+0x176>
quickjs-nuttx/libbf.c:2938
                   radix == 0 && (flags & BF_ATOF_BIN_OCT)) {
    8005d1bc:	011ad793          	srli	a5,s5,0x11
    8005d1c0:	8b85                	andi	a5,a5,1
    8005d1c2:	42078d63          	beqz	a5,8005d5fc <bf_atof_internal+0x540>
quickjs-nuttx/libbf.c:2939
            p += 2;
    8005d1c6:	002c8413          	addi	s0,s9,2
quickjs-nuttx/libbf.c:2940
            radix = 8;
    8005d1ca:	44a1                	li	s1,8
    8005d1cc:	b76d                	j	8005d176 <bf_atof_internal+0xba>
quickjs-nuttx/libbf.c:2941 (discriminator 2)
        } else if ((p[1] == 'b' || p[1] == 'B') &&
    8005d1ce:	04200713          	li	a4,66
    8005d1d2:	04e79e63          	bne	a5,a4,8005d22e <bf_atof_internal+0x172>
quickjs-nuttx/libbf.c:2941 (discriminator 3)
    8005d1d6:	ecb1                	bnez	s1,8005d232 <bf_atof_internal+0x176>
quickjs-nuttx/libbf.c:2942
                   radix == 0 && (flags & BF_ATOF_BIN_OCT)) {
    8005d1d8:	011ad793          	srli	a5,s5,0x11
    8005d1dc:	8b85                	andi	a5,a5,1
    8005d1de:	40078f63          	beqz	a5,8005d5fc <bf_atof_internal+0x540>
quickjs-nuttx/libbf.c:2943
            p += 2;
    8005d1e2:	002c8413          	addi	s0,s9,2
quickjs-nuttx/libbf.c:2944
            radix = 2;
    8005d1e6:	4489                	li	s1,2
    8005d1e8:	b779                	j	8005d176 <bf_atof_internal+0xba>
quickjs-nuttx/libbf.c:2956
        if (!(flags & BF_ATOF_NO_NAN_INF) && radix <= 16 &&
    8005d1ea:	e3b1                	bnez	a5,8005d22e <bf_atof_internal+0x172>
quickjs-nuttx/libbf.c:2956 (discriminator 1)
    8005d1ec:	47c1                	li	a5,16
    8005d1ee:	8466                	mv	s0,s9
    8005d1f0:	f897c9e3          	blt	a5,s1,8005d182 <bf_atof_internal+0xc6>
strcasestart():
quickjs-nuttx/libbf.c:2888
    q = val;
    8005d1f4:	00023717          	auipc	a4,0x23
    8005d1f8:	55470713          	addi	a4,a4,1364 # 80080748 <std_name.0+0x1a0>
bf_tolower():
quickjs-nuttx/libbf.c:2879
    if (c >= 'A' && c <= 'Z')
    8005d1fc:	45e5                	li	a1,25
    8005d1fe:	a839                	j	8005d21c <bf_atof_internal+0x160>
strcasestart():
quickjs-nuttx/libbf.c:2890
        if (bf_tolower(*p) != *q)
    8005d200:	00044783          	lbu	a5,0(s0)
    8005d204:	0007869b          	sext.w	a3,a5
bf_tolower():
quickjs-nuttx/libbf.c:2879
    if (c >= 'A' && c <= 'Z')
    8005d208:	fbf7879b          	addiw	a5,a5,-65
    8005d20c:	00f5e463          	bltu	a1,a5,8005d214 <bf_atof_internal+0x158>
quickjs-nuttx/libbf.c:2880
        c = c - 'A' + 'a';
    8005d210:	02068693          	addi	a3,a3,32
strcasestart():
quickjs-nuttx/libbf.c:2890
        if (bf_tolower(*p) != *q)
    8005d214:	00d61d63          	bne	a2,a3,8005d22e <bf_atof_internal+0x172>
quickjs-nuttx/libbf.c:2892
        p++;
    8005d218:	0405                	addi	s0,s0,1
quickjs-nuttx/libbf.c:2893
        q++;
    8005d21a:	0705                	addi	a4,a4,1
quickjs-nuttx/libbf.c:2889
    while (*q != '\0') {
    8005d21c:	00074603          	lbu	a2,0(a4)
    8005d220:	f265                	bnez	a2,8005d200 <bf_atof_internal+0x144>
bf_atof_internal():
quickjs-nuttx/libbf.c:2958
            bf_set_inf(r, is_neg);
    8005d222:	85da                	mv	a1,s6
    8005d224:	854e                	mv	a0,s3
    8005d226:	a5ffa0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:2916
        ret = 0;
    8005d22a:	4481                	li	s1,0
quickjs-nuttx/libbf.c:2917
        goto done;
    8005d22c:	a299                	j	8005d372 <bf_atof_internal+0x2b6>
quickjs-nuttx/libbf.c:2964
    if (radix == 0)
    8005d22e:	3c048763          	beqz	s1,8005d5fc <bf_atof_internal+0x540>
    8005d232:	8466                	mv	s0,s9
    8005d234:	b7b9                	j	8005d182 <bf_atof_internal+0xc6>
quickjs-nuttx/libbf.c:2970
    } else if ((radix & (radix - 1)) != 0) {
    8005d236:	fff4879b          	addiw	a5,s1,-1
    8005d23a:	8fe5                	and	a5,a5,s1
    8005d23c:	2781                	sext.w	a5,a5
    8005d23e:	cf91                	beqz	a5,8005d25a <bf_atof_internal+0x19e>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d240:	0009b783          	ld	a5,0(s3)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005d244:	cc82                	sw	zero,88(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005d246:	f482                	sd	zero,104(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d248:	e8be                	sd	a5,80(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d24a:	57fd                	li	a5,-1
    8005d24c:	17fe                	slli	a5,a5,0x3f
    8005d24e:	f0be                	sd	a5,96(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005d250:	f882                	sd	zero,112(sp)
bf_atof_internal():
quickjs-nuttx/libbf.c:2972
        a = &a_s;
    8005d252:	05010913          	addi	s2,sp,80
quickjs-nuttx/libbf.c:2968
        radix_bits = 0;
    8005d256:	4a01                	li	s4,0
    8005d258:	a031                	j	8005d264 <bf_atof_internal+0x1a8>
quickjs-nuttx/libbf.c:2975
        radix_bits = ceil_log2(radix);
    8005d25a:	8526                	mv	a0,s1
    8005d25c:	ccdf90ef          	jal	ra,80056f28 <ceil_log2>
    8005d260:	8a2a                	mv	s4,a0
    8005d262:	894e                	mv	s2,s3
quickjs-nuttx/libbf.c:2981
    while (*p == '0')
    8005d264:	03000793          	li	a5,48
    8005d268:	a011                	j	8005d26c <bf_atof_internal+0x1b0>
quickjs-nuttx/libbf.c:2982
        p++;
    8005d26a:	0405                	addi	s0,s0,1
quickjs-nuttx/libbf.c:2981
    while (*p == '0')
    8005d26c:	00044703          	lbu	a4,0(s0)
    8005d270:	fef70de3          	beq	a4,a5,8005d26a <bf_atof_internal+0x1ae>
quickjs-nuttx/libbf.c:2985
        shift = digits_per_limb = LIMB_BITS;
    8005d274:	04000d13          	li	s10,64
quickjs-nuttx/libbf.c:2984
    if (radix_bits) {
    8005d278:	000a1b63          	bnez	s4,8005d28e <bf_atof_internal+0x1d2>
quickjs-nuttx/libbf.c:2988
        shift = digits_per_limb = digits_per_limb_table[radix - 2];
    8005d27c:	ffe4871b          	addiw	a4,s1,-2
    8005d280:	00023797          	auipc	a5,0x23
    8005d284:	53078793          	addi	a5,a5,1328 # 800807b0 <digits_per_limb_table>
    8005d288:	97ba                	add	a5,a5,a4
    8005d28a:	0007cd03          	lbu	s10,0(a5)
quickjs-nuttx/libbf.c:2991
    bf_resize(a, 1);
    8005d28e:	4585                	li	a1,1
    8005d290:	854a                	mv	a0,s2
    8005d292:	8f3fa0ef          	jal	ra,80057b84 <bf_resize>
quickjs-nuttx/libbf.c:2992
    pos = 0;
    8005d296:	87ea                	mv	a5,s10
    8005d298:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:2993
    has_decpt = FALSE;
    8005d29a:	e402                	sd	zero,8(sp)
quickjs-nuttx/libbf.c:2994
    int_len = digit_count = 0;
    8005d29c:	4d81                	li	s11,0
    8005d29e:	4b81                	li	s7,0
quickjs-nuttx/libbf.c:2990
    cur_limb = 0;
    8005d2a0:	4601                	li	a2,0
quickjs-nuttx/libbf.c:2997
        if (*p == '.' && (p > p_start || to_digit(p[1]) < radix)) {
    8005d2a2:	00044703          	lbu	a4,0(s0)
    8005d2a6:	02e00693          	li	a3,46
    8005d2aa:	02d71463          	bne	a4,a3,8005d2d2 <bf_atof_internal+0x216>
quickjs-nuttx/libbf.c:2997 (discriminator 1)
    8005d2ae:	008cec63          	bltu	s9,s0,8005d2c6 <bf_atof_internal+0x20a>
quickjs-nuttx/libbf.c:2997 (discriminator 2)
    8005d2b2:	00144503          	lbu	a0,1(s0)
    8005d2b6:	f832                	sd	a2,48(sp)
    8005d2b8:	f43e                	sd	a5,40(sp)
    8005d2ba:	9c9f90ef          	jal	ra,80056c82 <to_digit>
    8005d2be:	77a2                	ld	a5,40(sp)
    8005d2c0:	7642                	ld	a2,48(sp)
    8005d2c2:	00955863          	bge	a0,s1,8005d2d2 <bf_atof_internal+0x216>
quickjs-nuttx/libbf.c:2998
            if (has_decpt)
    8005d2c6:	6722                	ld	a4,8(sp)
    8005d2c8:	e351                	bnez	a4,8005d34c <bf_atof_internal+0x290>
quickjs-nuttx/libbf.c:3000
            has_decpt = TRUE;
    8005d2ca:	4705                	li	a4,1
quickjs-nuttx/libbf.c:3002
            p++;
    8005d2cc:	0405                	addi	s0,s0,1
    8005d2ce:	8bee                	mv	s7,s11
quickjs-nuttx/libbf.c:3000
            has_decpt = TRUE;
    8005d2d0:	e43a                	sd	a4,8(sp)
quickjs-nuttx/libbf.c:3004
        c = to_digit(*p);
    8005d2d2:	00044503          	lbu	a0,0(s0)
    8005d2d6:	f832                	sd	a2,48(sp)
    8005d2d8:	f43e                	sd	a5,40(sp)
    8005d2da:	9a9f90ef          	jal	ra,80056c82 <to_digit>
quickjs-nuttx/libbf.c:3005
        if (c >= radix)
    8005d2de:	77a2                	ld	a5,40(sp)
    8005d2e0:	7642                	ld	a2,48(sp)
    8005d2e2:	06957263          	bgeu	a0,s1,8005d346 <bf_atof_internal+0x28a>
quickjs-nuttx/libbf.c:3007
        digit_count++;
    8005d2e6:	0d85                	addi	s11,s11,1
quickjs-nuttx/libbf.c:3008
        p++;
    8005d2e8:	0405                	addi	s0,s0,1
quickjs-nuttx/libbf.c:3009
        if (radix_bits) {
    8005d2ea:	040a0263          	beqz	s4,8005d32e <bf_atof_internal+0x272>
quickjs-nuttx/libbf.c:3010
            shift -= radix_bits;
    8005d2ee:	414786bb          	subw	a3,a5,s4
quickjs-nuttx/libbf.c:3011
            if (shift <= 0) {
    8005d2f2:	02d04963          	bgtz	a3,8005d324 <bf_atof_internal+0x268>
quickjs-nuttx/libbf.c:3012
                cur_limb |= c >> (-shift);
    8005d2f6:	40fa07bb          	subw	a5,s4,a5
    8005d2fa:	00f557b3          	srl	a5,a0,a5
    8005d2fe:	f42a                	sd	a0,40(sp)
quickjs-nuttx/libbf.c:3013
                if (bf_add_limb(a, &pos, cur_limb))
    8005d300:	8e5d                	or	a2,a2,a5
    8005d302:	00ac                	addi	a1,sp,72
    8005d304:	854a                	mv	a0,s2
    8005d306:	de36                	sw	a3,60(sp)
    8005d308:	f836                	sd	a3,48(sp)
    8005d30a:	dd7f90ef          	jal	ra,800570e0 <bf_add_limb>
    8005d30e:	ed29                	bnez	a0,8005d368 <bf_atof_internal+0x2ac>
quickjs-nuttx/libbf.c:3016
                    cur_limb = c << (LIMB_BITS + shift);
    8005d310:	5872                	lw	a6,60(sp)
quickjs-nuttx/libbf.c:3015
                if (shift < 0)
    8005d312:	76c2                	ld	a3,48(sp)
quickjs-nuttx/libbf.c:3018
                    cur_limb = 0;
    8005d314:	4601                	li	a2,0
quickjs-nuttx/libbf.c:3016
                    cur_limb = c << (LIMB_BITS + shift);
    8005d316:	0408079b          	addiw	a5,a6,64
quickjs-nuttx/libbf.c:3015
                if (shift < 0)
    8005d31a:	d6c1                	beqz	a3,8005d2a2 <bf_atof_internal+0x1e6>
quickjs-nuttx/libbf.c:3016
                    cur_limb = c << (LIMB_BITS + shift);
    8005d31c:	7722                	ld	a4,40(sp)
    8005d31e:	00f71633          	sll	a2,a4,a5
    8005d322:	b741                	j	8005d2a2 <bf_atof_internal+0x1e6>
quickjs-nuttx/libbf.c:3021
                cur_limb |= c << shift;
    8005d324:	00d51733          	sll	a4,a0,a3
    8005d328:	8e59                	or	a2,a2,a4
    8005d32a:	87b6                	mv	a5,a3
    8005d32c:	bf9d                	j	8005d2a2 <bf_atof_internal+0x1e6>
quickjs-nuttx/libbf.c:3024
            cur_limb = cur_limb * radix + c;
    8005d32e:	02c48633          	mul	a2,s1,a2
quickjs-nuttx/libbf.c:3025
            shift--;
    8005d332:	37fd                	addiw	a5,a5,-1
quickjs-nuttx/libbf.c:3024
            cur_limb = cur_limb * radix + c;
    8005d334:	962a                	add	a2,a2,a0
quickjs-nuttx/libbf.c:3026
            if (shift == 0) {
    8005d336:	f7b5                	bnez	a5,8005d2a2 <bf_atof_internal+0x1e6>
quickjs-nuttx/libbf.c:3027
                if (bf_add_limb(a, &pos, cur_limb))
    8005d338:	00ac                	addi	a1,sp,72
    8005d33a:	854a                	mv	a0,s2
    8005d33c:	da5f90ef          	jal	ra,800570e0 <bf_add_limb>
    8005d340:	e10d                	bnez	a0,8005d362 <bf_atof_internal+0x2a6>
    8005d342:	87ea                	mv	a5,s10
    8005d344:	bfb1                	j	8005d2a0 <bf_atof_internal+0x1e4>
quickjs-nuttx/libbf.c:3034
    if (!has_decpt)
    8005d346:	6722                	ld	a4,8(sp)
    8005d348:	e311                	bnez	a4,8005d34c <bf_atof_internal+0x290>
    8005d34a:	8bee                	mv	s7,s11
quickjs-nuttx/libbf.c:3038
    if (shift != digits_per_limb) {
    8005d34c:	04fd0b63          	beq	s10,a5,8005d3a2 <bf_atof_internal+0x2e6>
quickjs-nuttx/libbf.c:3039
        if (radix_bits == 0) {
    8005d350:	040a0763          	beqz	s4,8005d39e <bf_atof_internal+0x2e2>
quickjs-nuttx/libbf.c:3045
        if (bf_add_limb(a, &pos, cur_limb)) {
    8005d354:	00ac                	addi	a1,sp,72
    8005d356:	854a                	mv	a0,s2
    8005d358:	d89f90ef          	jal	ra,800570e0 <bf_add_limb>
    8005d35c:	c139                	beqz	a0,8005d3a2 <bf_atof_internal+0x2e6>
quickjs-nuttx/libbf.c:3048
            if (!radix_bits)
    8005d35e:	000a1563          	bnez	s4,8005d368 <bf_atof_internal+0x2ac>
quickjs-nuttx/libbf.c:3049
                bf_delete(a);
    8005d362:	854a                	mv	a0,s2
    8005d364:	f46f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3050
            bf_set_nan(r);
    8005d368:	854e                	mv	a0,s3
    8005d36a:	855fa0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:3047
            ret = BF_ST_MEM_ERROR;
    8005d36e:	02000493          	li	s1,32
quickjs-nuttx/libbf.c:3146
    if (pnext)
    8005d372:	7782                	ld	a5,32(sp)
    8005d374:	c391                	beqz	a5,8005d378 <bf_atof_internal+0x2bc>
quickjs-nuttx/libbf.c:3147
        *pnext = p;
    8005d376:	e380                	sd	s0,0(a5)
quickjs-nuttx/libbf.c:3149
}
    8005d378:	60b2                	ld	ra,264(sp)
    8005d37a:	6412                	ld	s0,256(sp)
    8005d37c:	794e                	ld	s2,240(sp)
    8005d37e:	79ae                	ld	s3,232(sp)
    8005d380:	7a0e                	ld	s4,224(sp)
    8005d382:	6aee                	ld	s5,216(sp)
    8005d384:	6b4e                	ld	s6,208(sp)
    8005d386:	6bae                	ld	s7,200(sp)
    8005d388:	6c0e                	ld	s8,192(sp)
    8005d38a:	7cea                	ld	s9,184(sp)
    8005d38c:	7d4a                	ld	s10,176(sp)
    8005d38e:	7daa                	ld	s11,168(sp)
    8005d390:	8526                	mv	a0,s1
    8005d392:	74ee                	ld	s1,248(sp)
    8005d394:	6151                	addi	sp,sp,272
    8005d396:	8082                	ret
quickjs-nuttx/libbf.c:3041
                cur_limb *= radix;
    8005d398:	02960633          	mul	a2,a2,s1
quickjs-nuttx/libbf.c:3042
                shift--;
    8005d39c:	37fd                	addiw	a5,a5,-1
quickjs-nuttx/libbf.c:3040
            while (shift != 0) {
    8005d39e:	ffed                	bnez	a5,8005d398 <bf_atof_internal+0x2dc>
    8005d3a0:	bf55                	j	8005d354 <bf_atof_internal+0x298>
quickjs-nuttx/libbf.c:3057
    memset(a->tab, 0, (pos + 1) * sizeof(limb_t));
    8005d3a2:	6626                	ld	a2,72(sp)
    8005d3a4:	02093503          	ld	a0,32(s2)
    8005d3a8:	4581                	li	a1,0
    8005d3aa:	0605                	addi	a2,a2,1
    8005d3ac:	060e                	slli	a2,a2,0x3
    8005d3ae:	095060ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:3059
    if (p == p_start) {
    8005d3b2:	008c9863          	bne	s9,s0,8005d3c2 <bf_atof_internal+0x306>
quickjs-nuttx/libbf.c:3061
        if (!radix_bits)
    8005d3b6:	d60a1be3          	bnez	s4,8005d12c <bf_atof_internal+0x70>
quickjs-nuttx/libbf.c:3062
            bf_delete(a);
    8005d3ba:	854a                	mv	a0,s2
    8005d3bc:	eeef90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3063
        bf_set_nan(r);
    8005d3c0:	b3b5                	j	8005d12c <bf_atof_internal+0x70>
quickjs-nuttx/libbf.c:3070
    if (((radix == 10 && (*p == 'e' || *p == 'E')) ||
    8005d3c2:	4729                	li	a4,10
    8005d3c4:	00044783          	lbu	a5,0(s0)
    8005d3c8:	00e49b63          	bne	s1,a4,8005d3de <bf_atof_internal+0x322>
quickjs-nuttx/libbf.c:3070 (discriminator 1)
    8005d3cc:	0df7f713          	andi	a4,a5,223
    8005d3d0:	04500693          	li	a3,69
    8005d3d4:	02d70163          	beq	a4,a3,8005d3f6 <bf_atof_internal+0x33a>
quickjs-nuttx/libbf.c:3069
    is_bin_exp = FALSE;
    8005d3d8:	4d81                	li	s11,0
quickjs-nuttx/libbf.c:3068
    expn = 0;
    8005d3da:	4c81                	li	s9,0
    8005d3dc:	a861                	j	8005d474 <bf_atof_internal+0x3b8>
quickjs-nuttx/libbf.c:3071
         (radix != 10 && (*p == '@' ||
    8005d3de:	04000713          	li	a4,64
    8005d3e2:	00e78a63          	beq	a5,a4,8005d3f6 <bf_atof_internal+0x33a>
quickjs-nuttx/libbf.c:3071 (discriminator 1)
    8005d3e6:	1e0a0663          	beqz	s4,8005d5d2 <bf_atof_internal+0x516>
quickjs-nuttx/libbf.c:3072 (discriminator 2)
                          (radix_bits && (*p == 'p' || *p == 'P'))))) &&
    8005d3ea:	0df7f713          	andi	a4,a5,223
    8005d3ee:	05000693          	li	a3,80
    8005d3f2:	1cd71b63          	bne	a4,a3,8005d5c8 <bf_atof_internal+0x50c>
quickjs-nuttx/libbf.c:3072 (discriminator 3)
    8005d3f6:	fe8cf1e3          	bgeu	s9,s0,8005d3d8 <bf_atof_internal+0x31c>
quickjs-nuttx/libbf.c:3074
        is_bin_exp = (*p == 'p' || *p == 'P');
    8005d3fa:	0df7fd93          	andi	s11,a5,223
quickjs-nuttx/libbf.c:3077
        if (*p == '+') {
    8005d3fe:	00144783          	lbu	a5,1(s0)
quickjs-nuttx/libbf.c:3074
        is_bin_exp = (*p == 'p' || *p == 'P');
    8005d402:	fb0d8d93          	addi	s11,s11,-80
quickjs-nuttx/libbf.c:3077
        if (*p == '+') {
    8005d406:	02b00713          	li	a4,43
    8005d40a:	001dbd93          	seqz	s11,s11
    8005d40e:	02e79d63          	bne	a5,a4,8005d448 <bf_atof_internal+0x38c>
quickjs-nuttx/libbf.c:3078
            p++;
    8005d412:	0409                	addi	s0,s0,2
quickjs-nuttx/libbf.c:3076
        exp_is_neg = 0;
    8005d414:	4781                	li	a5,0
    8005d416:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:3085
            c = to_digit(*p);
    8005d418:	00044503          	lbu	a0,0(s0)
    8005d41c:	e43e                	sd	a5,8(sp)
    8005d41e:	865f90ef          	jal	ra,80056c82 <to_digit>
quickjs-nuttx/libbf.c:3086
            if (c >= 10)
    8005d422:	46a5                	li	a3,9
    8005d424:	67a2                	ld	a5,8(sp)
    8005d426:	04a6c463          	blt	a3,a0,8005d46e <bf_atof_internal+0x3b2>
quickjs-nuttx/libbf.c:3088
            if (unlikely(expn > ((BF_RAW_EXP_MAX - 2 - 9) / 10))) {
    8005d42a:	00037717          	auipc	a4,0x37
    8005d42e:	8de70713          	addi	a4,a4,-1826 # 80093d08 <_erodata+0x196>
    8005d432:	6310                	ld	a2,0(a4)
    8005d434:	4729                	li	a4,10
    8005d436:	03965663          	bge	a2,s9,8005d462 <bf_atof_internal+0x3a6>
quickjs-nuttx/libbf.c:3091
                    bf_set_zero(r, is_neg);
    8005d43a:	85da                	mv	a1,s6
    8005d43c:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:3090
                if (exp_is_neg) {
    8005d43e:	cf91                	beqz	a5,8005d45a <bf_atof_internal+0x39e>
quickjs-nuttx/libbf.c:3091
                    bf_set_zero(r, is_neg);
    8005d440:	821fa0ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/libbf.c:3092
                    ret = BF_ST_UNDERFLOW | BF_ST_INEXACT;
    8005d444:	44e1                	li	s1,24
    8005d446:	b735                	j	8005d372 <bf_atof_internal+0x2b6>
quickjs-nuttx/libbf.c:3079
        } else if (*p == '-') {
    8005d448:	02d00713          	li	a4,45
    8005d44c:	00e78463          	beq	a5,a4,8005d454 <bf_atof_internal+0x398>
quickjs-nuttx/libbf.c:3075
        p++;
    8005d450:	0405                	addi	s0,s0,1
    8005d452:	b7c9                	j	8005d414 <bf_atof_internal+0x358>
quickjs-nuttx/libbf.c:3081
            p++;
    8005d454:	0409                	addi	s0,s0,2
quickjs-nuttx/libbf.c:3080
            exp_is_neg = 1;
    8005d456:	4785                	li	a5,1
    8005d458:	bf7d                	j	8005d416 <bf_atof_internal+0x35a>
quickjs-nuttx/libbf.c:3094
                    bf_set_inf(r, is_neg);
    8005d45a:	82bfa0ef          	jal	ra,80057c84 <bf_set_inf>
quickjs-nuttx/libbf.c:3095
                    ret = BF_ST_OVERFLOW | BF_ST_INEXACT;
    8005d45e:	44d1                	li	s1,20
    8005d460:	bf09                	j	8005d372 <bf_atof_internal+0x2b6>
quickjs-nuttx/libbf.c:3100
            expn = expn * 10 + c;
    8005d462:	02ec88b3          	mul	a7,s9,a4
quickjs-nuttx/libbf.c:3099
            p++;
    8005d466:	0405                	addi	s0,s0,1
quickjs-nuttx/libbf.c:3100
            expn = expn * 10 + c;
    8005d468:	01150cb3          	add	s9,a0,a7
quickjs-nuttx/libbf.c:3083
        for(;;) {
    8005d46c:	b775                	j	8005d418 <bf_atof_internal+0x35c>
quickjs-nuttx/libbf.c:3102
        if (exp_is_neg)
    8005d46e:	c399                	beqz	a5,8005d474 <bf_atof_internal+0x3b8>
quickjs-nuttx/libbf.c:3103
            expn = -expn;
    8005d470:	41900cb3          	neg	s9,s9
quickjs-nuttx/libbf.c:3105
    if (is_dec) {
    8005d474:	000c0f63          	beqz	s8,8005d492 <bf_atof_internal+0x3d6>
quickjs-nuttx/libbf.c:3108
        ret = bfdec_normalize_and_round((bfdec_t *)a, prec, flags);
    8005d478:	65c2                	ld	a1,16(sp)
quickjs-nuttx/libbf.c:3106
        a->expn = expn + int_len;
    8005d47a:	019b88b3          	add	a7,s7,s9
    8005d47e:	01193823          	sd	a7,16(s2)
quickjs-nuttx/libbf.c:3107
        a->sign = is_neg;
    8005d482:	01692423          	sw	s6,8(s2)
quickjs-nuttx/libbf.c:3108
        ret = bfdec_normalize_and_round((bfdec_t *)a, prec, flags);
    8005d486:	8656                	mv	a2,s5
    8005d488:	854a                	mv	a0,s2
    8005d48a:	abefd0ef          	jal	ra,8005a748 <bfdec_normalize_and_round>
quickjs-nuttx/libbf.c:3115
        ret = bf_normalize_and_round(a, prec, flags);
    8005d48e:	84aa                	mv	s1,a0
    8005d490:	b5cd                	j	8005d372 <bf_atof_internal+0x2b6>
quickjs-nuttx/libbf.c:3109
    } else if (radix_bits) {
    8005d492:	140a0363          	beqz	s4,8005d5d8 <bf_atof_internal+0x51c>
quickjs-nuttx/libbf.c:3111
        if (!is_bin_exp)
    8005d496:	000d9463          	bnez	s11,8005d49e <bf_atof_internal+0x3e2>
quickjs-nuttx/libbf.c:3112
            expn *= radix_bits; 
    8005d49a:	034c8cb3          	mul	s9,s9,s4
quickjs-nuttx/libbf.c:3115
        ret = bf_normalize_and_round(a, prec, flags);
    8005d49e:	65c2                	ld	a1,16(sp)
quickjs-nuttx/libbf.c:3114
        a->sign = is_neg;
    8005d4a0:	01692423          	sw	s6,8(s2)
quickjs-nuttx/libbf.c:3115
        ret = bf_normalize_and_round(a, prec, flags);
    8005d4a4:	8656                	mv	a2,s5
    8005d4a6:	854a                	mv	a0,s2
quickjs-nuttx/libbf.c:3113
        a->expn = expn + (int_len * radix_bits);
    8005d4a8:	037a0a33          	mul	s4,s4,s7
    8005d4ac:	019a08b3          	add	a7,s4,s9
    8005d4b0:	01193823          	sd	a7,16(s2)
quickjs-nuttx/libbf.c:3115
        ret = bf_normalize_and_round(a, prec, flags);
    8005d4b4:	c41fa0ef          	jal	ra,800580f4 <bf_normalize_and_round>
    8005d4b8:	bfd9                	j	8005d48e <bf_atof_internal+0x3d2>
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d4ba:	57fd                	li	a5,-1
    8005d4bc:	17fe                	slli	a5,a5,0x3f
bf_atof_internal():
quickjs-nuttx/libbf.c:3127
            bf_init(r->ctx, T);
    8005d4be:	0009bd83          	ld	s11,0(s3)
quickjs-nuttx/libbf.c:3128
            if (bf_integer_from_radix(T, a->tab + pos, l, radix)) {
    8005d4c2:	02093303          	ld	t1,32(s2)
get_limb_radix():
quickjs-nuttx/libbf.c:2707
    k = digits_per_limb_table[radix - 2];
    8005d4c6:	ffe4871b          	addiw	a4,s1,-2
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d4ca:	e53e                	sd	a5,136(sp)
get_limb_radix():
quickjs-nuttx/libbf.c:2707
    k = digits_per_limb_table[radix - 2];
    8005d4cc:	00023797          	auipc	a5,0x23
    8005d4d0:	2e478793          	addi	a5,a5,740 # 800807b0 <digits_per_limb_table>
    8005d4d4:	97ba                	add	a5,a5,a4
bf_atof_internal():
quickjs-nuttx/libbf.c:3128
            if (bf_integer_from_radix(T, a->tab + pos, l, radix)) {
    8005d4d6:	058e                	slli	a1,a1,0x3
get_limb_radix():
quickjs-nuttx/libbf.c:2707
    k = digits_per_limb_table[radix - 2];
    8005d4d8:	0007c683          	lbu	a3,0(a5)
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d4dc:	fcee                	sd	s11,120(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005d4de:	c102                	sw	zero,128(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005d4e0:	e902                	sd	zero,144(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005d4e2:	ed02                	sd	zero,152(sp)
bf_atof_internal():
quickjs-nuttx/libbf.c:3128
            if (bf_integer_from_radix(T, a->tab + pos, l, radix)) {
    8005d4e4:	932e                	add	t1,t1,a1
get_limb_radix():
quickjs-nuttx/libbf.c:2708
    radixl = radix;
    8005d4e6:	87a6                	mv	a5,s1
quickjs-nuttx/libbf.c:2709
    for(i = 1; i < k; i++)
    8005d4e8:	4705                	li	a4,1
    8005d4ea:	08d74363          	blt	a4,a3,8005d570 <bf_atof_internal+0x4b4>
bf_integer_from_radix():
quickjs-nuttx/libbf.c:2763
    pow_tab_len = ceil_log2(n) + 2; /* XXX: check */
    8005d4ee:	8552                	mv	a0,s4
    8005d4f0:	f43e                	sd	a5,40(sp)
    8005d4f2:	e41a                	sd	t1,8(sp)
    8005d4f4:	a35f90ef          	jal	ra,80056f28 <ceil_log2>
    8005d4f8:	00250c1b          	addiw	s8,a0,2
quickjs-nuttx/libbf.c:2764
    pow_tab = bf_malloc(s, sizeof(pow_tab[0]) * pow_tab_len);
    8005d4fc:	02800593          	li	a1,40
    8005d500:	02bc05b3          	mul	a1,s8,a1
    8005d504:	856e                	mv	a0,s11
    8005d506:	d92f90ef          	jal	ra,80056a98 <bf_malloc>
    8005d50a:	882a                	mv	a6,a0
quickjs-nuttx/libbf.c:2765
    if (!pow_tab)
    8005d50c:	c535                	beqz	a0,8005d578 <bf_atof_internal+0x4bc>
    8005d50e:	6322                	ld	t1,8(sp)
    8005d510:	77a2                	ld	a5,40(sp)
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d512:	567d                	li	a2,-1
bf_integer_from_radix():
quickjs-nuttx/libbf.c:2765
    if (!pow_tab)
    8005d514:	872a                	mv	a4,a0
quickjs-nuttx/libbf.c:2767
    for(i = 0; i < pow_tab_len; i++)
    8005d516:	4681                	li	a3,0
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d518:	167e                	slli	a2,a2,0x3f
bf_integer_from_radix():
quickjs-nuttx/libbf.c:2767
    for(i = 0; i < pow_tab_len; i++)
    8005d51a:	0786c863          	blt	a3,s8,8005d58a <bf_atof_internal+0x4ce>
quickjs-nuttx/libbf.c:2769
    ret = bf_integer_from_radix_rec(r, tab, n, 0, n, radixl, pow_tab);
    8005d51e:	8752                	mv	a4,s4
    8005d520:	4681                	li	a3,0
    8005d522:	8652                	mv	a2,s4
    8005d524:	859a                	mv	a1,t1
    8005d526:	18a8                	addi	a0,sp,120
    8005d528:	f442                	sd	a6,40(sp)
    8005d52a:	a85ff0ef          	jal	ra,8005cfae <bf_integer_from_radix_rec>
    8005d52e:	e42a                	sd	a0,8(sp)
quickjs-nuttx/libbf.c:2770
    for(i = 0; i < pow_tab_len; i++) {
    8005d530:	4781                	li	a5,0
    8005d532:	0007871b          	sext.w	a4,a5
    8005d536:	7822                	ld	a6,40(sp)
    8005d538:	02800693          	li	a3,40
    8005d53c:	07874463          	blt	a4,s8,8005d5a4 <bf_atof_internal+0x4e8>
quickjs-nuttx/libbf.c:2773
    bf_free(s, pow_tab);
    8005d540:	85c2                	mv	a1,a6
    8005d542:	856e                	mv	a0,s11
    8005d544:	d5cf90ef          	jal	ra,80056aa0 <bf_free>
bf_atof_internal():
quickjs-nuttx/libbf.c:3128
            if (bf_integer_from_radix(T, a->tab + pos, l, radix)) {
    8005d548:	67a2                	ld	a5,8(sp)
    8005d54a:	e79d                	bnez	a5,8005d578 <bf_atof_internal+0x4bc>
quickjs-nuttx/libbf.c:3126
            expn -= l * digits_per_limb - int_len;
    8005d54c:	034d06b3          	mul	a3,s10,s4
quickjs-nuttx/libbf.c:3133
                if (flags & BF_ATOF_EXPONENT) {
    8005d550:	013ad793          	srli	a5,s5,0x13
quickjs-nuttx/libbf.c:3132
                T->sign = is_neg;
    8005d554:	c15a                	sw	s6,128(sp)
quickjs-nuttx/libbf.c:3133
                if (flags & BF_ATOF_EXPONENT) {
    8005d556:	8b85                	andi	a5,a5,1
quickjs-nuttx/libbf.c:3126
            expn -= l * digits_per_limb - int_len;
    8005d558:	40db86b3          	sub	a3,s7,a3
    8005d55c:	96e6                	add	a3,a3,s9
quickjs-nuttx/libbf.c:3133
                if (flags & BF_ATOF_EXPONENT) {
    8005d55e:	cfa9                	beqz	a5,8005d5b8 <bf_atof_internal+0x4fc>
quickjs-nuttx/libbf.c:3135
                    *pexponent = expn;
    8005d560:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:3136
                    ret = bf_set(r, T);
    8005d562:	18ac                	addi	a1,sp,120
    8005d564:	854e                	mv	a0,s3
quickjs-nuttx/libbf.c:3135
                    *pexponent = expn;
    8005d566:	e394                	sd	a3,0(a5)
quickjs-nuttx/libbf.c:3136
                    ret = bf_set(r, T);
    8005d568:	abbfa0ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/libbf.c:3138
                    ret = bf_mul_pow_radix(r, T, radix, expn, prec, flags);
    8005d56c:	84aa                	mv	s1,a0
    8005d56e:	a811                	j	8005d582 <bf_atof_internal+0x4c6>
get_limb_radix():
quickjs-nuttx/libbf.c:2710
        radixl *= radix;
    8005d570:	029787b3          	mul	a5,a5,s1
quickjs-nuttx/libbf.c:2709
    for(i = 1; i < k; i++)
    8005d574:	2705                	addiw	a4,a4,1
    8005d576:	bf95                	j	8005d4ea <bf_atof_internal+0x42e>
bf_atof_internal():
quickjs-nuttx/libbf.c:3129
                bf_set_nan(r);
    8005d578:	854e                	mv	a0,s3
    8005d57a:	e44fa0ef          	jal	ra,80057bbe <bf_set_nan>
quickjs-nuttx/libbf.c:3130
                ret = BF_ST_MEM_ERROR;
    8005d57e:	02000493          	li	s1,32
quickjs-nuttx/libbf.c:3141
            bf_delete(T);
    8005d582:	18a8                	addi	a0,sp,120
    8005d584:	d26f90ef          	jal	ra,80056aaa <bf_delete>
    8005d588:	a0b5                	j	8005d5f4 <bf_atof_internal+0x538>
bf_integer_from_radix():
quickjs-nuttx/libbf.c:2768
        bf_init(r->ctx, &pow_tab[i]);
    8005d58a:	75e6                	ld	a1,120(sp)
quickjs-nuttx/libbf.c:2767
    for(i = 0; i < pow_tab_len; i++)
    8005d58c:	2685                	addiw	a3,a3,1
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005d58e:	00072423          	sw	zero,8(a4)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d592:	e30c                	sd	a1,0(a4)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d594:	eb10                	sd	a2,16(a4)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005d596:	00073c23          	sd	zero,24(a4)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005d59a:	02073023          	sd	zero,32(a4)
bf_integer_from_radix():
quickjs-nuttx/libbf.c:2767
    for(i = 0; i < pow_tab_len; i++)
    8005d59e:	02870713          	addi	a4,a4,40
    8005d5a2:	bfa5                	j	8005d51a <bf_atof_internal+0x45e>
quickjs-nuttx/libbf.c:2771
        bf_delete(&pow_tab[i]);
    8005d5a4:	02d78533          	mul	a0,a5,a3
    8005d5a8:	f83e                	sd	a5,48(sp)
    8005d5aa:	f442                	sd	a6,40(sp)
    8005d5ac:	9542                	add	a0,a0,a6
    8005d5ae:	cfcf90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:2770
    for(i = 0; i < pow_tab_len; i++) {
    8005d5b2:	77c2                	ld	a5,48(sp)
    8005d5b4:	0785                	addi	a5,a5,1
    8005d5b6:	bfb5                	j	8005d532 <bf_atof_internal+0x476>
bf_atof_internal():
quickjs-nuttx/libbf.c:3138
                    ret = bf_mul_pow_radix(r, T, radix, expn, prec, flags);
    8005d5b8:	6742                	ld	a4,16(sp)
    8005d5ba:	87d6                	mv	a5,s5
    8005d5bc:	8626                	mv	a2,s1
    8005d5be:	18ac                	addi	a1,sp,120
    8005d5c0:	854e                	mv	a0,s3
    8005d5c2:	879ff0ef          	jal	ra,8005ce3a <bf_mul_pow_radix>
    8005d5c6:	b75d                	j	8005d56c <bf_atof_internal+0x4b0>
quickjs-nuttx/libbf.c:3068
    expn = 0;
    8005d5c8:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:3105
    if (is_dec) {
    8005d5ca:	ec0c08e3          	beqz	s8,8005d49a <bf_atof_internal+0x3de>
quickjs-nuttx/libbf.c:3068
    expn = 0;
    8005d5ce:	4c81                	li	s9,0
    8005d5d0:	b565                	j	8005d478 <bf_atof_internal+0x3bc>
    8005d5d2:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:3105
    if (is_dec) {
    8005d5d4:	fe0c1de3          	bnez	s8,8005d5ce <bf_atof_internal+0x512>
quickjs-nuttx/libbf.c:3118
        pos++;
    8005d5d8:	65a6                	ld	a1,72(sp)
quickjs-nuttx/libbf.c:3119
        l = a->len - pos; /* number of limbs */
    8005d5da:	01893783          	ld	a5,24(s2)
quickjs-nuttx/libbf.c:3118
        pos++;
    8005d5de:	0585                	addi	a1,a1,1
    8005d5e0:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/libbf.c:3119
        l = a->len - pos; /* number of limbs */
    8005d5e2:	40b78a33          	sub	s4,a5,a1
quickjs-nuttx/libbf.c:3120
        if (l == 0) {
    8005d5e6:	ecb79ae3          	bne	a5,a1,8005d4ba <bf_atof_internal+0x3fe>
quickjs-nuttx/libbf.c:3121
            bf_set_zero(r, is_neg);
    8005d5ea:	85da                	mv	a1,s6
    8005d5ec:	854e                	mv	a0,s3
    8005d5ee:	e72fa0ef          	jal	ra,80057c60 <bf_set_zero>
quickjs-nuttx/libbf.c:3122
            ret = 0;
    8005d5f2:	4481                	li	s1,0
quickjs-nuttx/libbf.c:3143
        bf_delete(a);
    8005d5f4:	854a                	mv	a0,s2
    8005d5f6:	cb4f90ef          	jal	ra,80056aaa <bf_delete>
    8005d5fa:	bba5                	j	8005d372 <bf_atof_internal+0x2b6>
quickjs-nuttx/libbf.c:2966
    if (is_dec) {
    8005d5fc:	8466                	mv	s0,s9
    8005d5fe:	44a9                	li	s1,10
    8005d600:	c40c00e3          	beqz	s8,8005d240 <bf_atof_internal+0x184>
    8005d604:	894e                	mv	s2,s3
    8005d606:	44a9                	li	s1,10
    8005d608:	b1b9                	j	8005d256 <bf_atof_internal+0x19a>

000000008005d60a <bf_atof2>:
bf_atof2():
quickjs-nuttx/libbf.c:3163
    return bf_atof_internal(r, pexponent, str, pnext, radix, prec, flags,
    8005d60a:	4881                	li	a7,0
    8005d60c:	ab1ff06f          	j	8005d0bc <bf_atof_internal>

000000008005d610 <bf_atof>:
bf_atof():
quickjs-nuttx/libbf.c:3169
{
    8005d610:	1101                	addi	sp,sp,-32
quickjs-nuttx/libbf.c:3171
    return bf_atof_internal(r, &dummy_exp, str, pnext, radix, prec, flags, FALSE);
    8005d612:	883e                	mv	a6,a5
    8005d614:	4881                	li	a7,0
    8005d616:	87ba                	mv	a5,a4
    8005d618:	8736                	mv	a4,a3
    8005d61a:	86b2                	mv	a3,a2
    8005d61c:	862e                	mv	a2,a1
    8005d61e:	002c                	addi	a1,sp,8
quickjs-nuttx/libbf.c:3169
{
    8005d620:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libbf.c:3171
    return bf_atof_internal(r, &dummy_exp, str, pnext, radix, prec, flags, FALSE);
    8005d622:	a9bff0ef          	jal	ra,8005d0bc <bf_atof_internal>
quickjs-nuttx/libbf.c:3172
}
    8005d626:	60e2                	ld	ra,24(sp)
    8005d628:	6105                	addi	sp,sp,32
    8005d62a:	8082                	ret

000000008005d62c <bfdec_atof>:
bfdec_atof():
quickjs-nuttx/libbf.c:7235
{
    8005d62c:	1101                	addi	sp,sp,-32
    8005d62e:	87b6                	mv	a5,a3
quickjs-nuttx/libbf.c:7237
    return bf_atof_internal((bf_t *)r, &dummy_exp, str, pnext, 10, prec,
    8005d630:	883a                	mv	a6,a4
    8005d632:	86b2                	mv	a3,a2
    8005d634:	4885                	li	a7,1
    8005d636:	862e                	mv	a2,a1
    8005d638:	4729                	li	a4,10
    8005d63a:	002c                	addi	a1,sp,8
quickjs-nuttx/libbf.c:7235
{
    8005d63c:	ec06                	sd	ra,24(sp)
quickjs-nuttx/libbf.c:7237
    return bf_atof_internal((bf_t *)r, &dummy_exp, str, pnext, 10, prec,
    8005d63e:	a7fff0ef          	jal	ra,8005d0bc <bf_atof_internal>
quickjs-nuttx/libbf.c:7239
}
    8005d642:	60e2                	ld	ra,24(sp)
    8005d644:	6105                	addi	sp,sp,32
    8005d646:	8082                	ret

000000008005d648 <bf_convert_to_radix>:
bf_convert_to_radix():
quickjs-nuttx/libbf.c:3513
{
    8005d648:	7115                	addi	sp,sp,-224
    8005d64a:	fd4e                	sd	s3,184(sp)
    8005d64c:	f556                	sd	s5,168(sp)
    8005d64e:	ed86                	sd	ra,216(sp)
    8005d650:	e9a2                	sd	s0,208(sp)
    8005d652:	e5a6                	sd	s1,200(sp)
    8005d654:	e1ca                	sd	s2,192(sp)
    8005d656:	f952                	sd	s4,176(sp)
    8005d658:	f15a                	sd	s6,160(sp)
    8005d65a:	ed5e                	sd	s7,152(sp)
    8005d65c:	e962                	sd	s8,144(sp)
    8005d65e:	e566                	sd	s9,136(sp)
    8005d660:	e16a                	sd	s10,128(sp)
    8005d662:	fcee                	sd	s11,120(sp)
    8005d664:	e03e                	sd	a5,0(sp)
quickjs-nuttx/libbf.c:3518
    if (a->len == 0) {
    8005d666:	6e1c                	ld	a5,24(a2)
quickjs-nuttx/libbf.c:3513
{
    8005d668:	e442                	sd	a6,8(sp)
    8005d66a:	8aae                	mv	s5,a1
    8005d66c:	89b2                	mv	s3,a2
quickjs-nuttx/libbf.c:3518
    if (a->len == 0) {
    8005d66e:	e785                	bnez	a5,8005d696 <bf_convert_to_radix+0x4e>
quickjs-nuttx/libbf.c:3520
        *pE = 0;
    8005d670:	0005b023          	sd	zero,0(a1)
quickjs-nuttx/libbf.c:3590
}
    8005d674:	644e                	ld	s0,208(sp)
    8005d676:	60ee                	ld	ra,216(sp)
    8005d678:	64ae                	ld	s1,200(sp)
    8005d67a:	690e                	ld	s2,192(sp)
    8005d67c:	79ea                	ld	s3,184(sp)
    8005d67e:	7a4a                	ld	s4,176(sp)
    8005d680:	7aaa                	ld	s5,168(sp)
    8005d682:	7b0a                	ld	s6,160(sp)
    8005d684:	6bea                	ld	s7,152(sp)
    8005d686:	6c4a                	ld	s8,144(sp)
    8005d688:	6caa                	ld	s9,136(sp)
    8005d68a:	6d0a                	ld	s10,128(sp)
    8005d68c:	7de6                	ld	s11,120(sp)
quickjs-nuttx/libbf.c:3521
        return bf_set(r, a);
    8005d68e:	85b2                	mv	a1,a2
quickjs-nuttx/libbf.c:3590
}
    8005d690:	612d                	addi	sp,sp,224
quickjs-nuttx/libbf.c:3521
        return bf_set(r, a);
    8005d692:	991fa06f          	j	80058022 <bf_set>
quickjs-nuttx/libbf.c:3541
        prec0 = bf_mul_log2_radix(P, radix, FALSE, TRUE);
    8005d696:	0006879b          	sext.w	a5,a3
    8005d69a:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:3524
    if (is_fixed_exponent) {
    8005d69c:	67a2                	ld	a5,8(sp)
    8005d69e:	842a                	mv	s0,a0
    8005d6a0:	8b36                	mv	s6,a3
    8005d6a2:	8a3a                	mv	s4,a4
    8005d6a4:	c3dd                	beqz	a5,8005d74a <bf_convert_to_radix+0x102>
quickjs-nuttx/libbf.c:3525
        E = *pE;
    8005d6a6:	0005b903          	ld	s2,0(a1)
quickjs-nuttx/libbf.c:3565
                ret = bf_rint(r, rnd_mode);
    8005d6aa:	4782                	lw	a5,0(sp)
    8005d6ac:	412a0933          	sub	s2,s4,s2
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d6b0:	5cfd                	li	s9,-1
bf_convert_to_radix():
quickjs-nuttx/libbf.c:3565
                ret = bf_rint(r, rnd_mode);
    8005d6b2:	f83e                	sd	a5,48(sp)
    8005d6b4:	412a0733          	sub	a4,s4,s2
    8005d6b8:	f03a                	sd	a4,32(sp)
quickjs-nuttx/libbf.c:3534
        e = P - E;
    8005d6ba:	412007b3          	neg	a5,s2
    8005d6be:	8c4a                	mv	s8,s2
quickjs-nuttx/libbf.c:3535
        e_sign = 0;
    8005d6c0:	4d01                	li	s10,0
quickjs-nuttx/libbf.c:3536
        if (e < 0) {
    8005d6c2:	00095463          	bgez	s2,8005d6ca <bf_convert_to_radix+0x82>
quickjs-nuttx/libbf.c:3537
            e = -e;
    8005d6c6:	8c3e                	mv	s8,a5
quickjs-nuttx/libbf.c:3538
            e_sign = 1;
    8005d6c8:	4d05                	li	s10,1
quickjs-nuttx/libbf.c:3541
        prec0 = bf_mul_log2_radix(P, radix, FALSE, TRUE);
    8005d6ca:	75a2                	ld	a1,40(sp)
    8005d6cc:	4685                	li	a3,1
    8005d6ce:	4601                	li	a2,0
    8005d6d0:	8552                	mv	a0,s4
    8005d6d2:	a9ffb0ef          	jal	ra,80059170 <bf_mul_log2_radix>
    8005d6d6:	e82a                	sd	a0,16(sp)
quickjs-nuttx/libbf.c:3546
            extra_bits = ceil_log2(e) * 2 + 1;
    8005d6d8:	8562                	mv	a0,s8
    8005d6da:	84ff90ef          	jal	ra,80056f28 <ceil_log2>
    8005d6de:	0015151b          	slliw	a0,a0,0x1
    8005d6e2:	0015079b          	addiw	a5,a0,1
    8005d6e6:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/libbf.c:3542
        ziv_extra_bits = 16;
    8005d6e8:	4bc1                	li	s7,16
quickjs-nuttx/libbf.c:3544
            prec = prec0 + ziv_extra_bits;
    8005d6ea:	67c2                	ld	a5,16(sp)
quickjs-nuttx/libbf.c:3547
            ret = bf_pow_ui_ui(r, radix, e, prec + extra_bits,
    8005d6ec:	7e000713          	li	a4,2016
    8005d6f0:	8662                	mv	a2,s8
quickjs-nuttx/libbf.c:3544
            prec = prec0 + ziv_extra_bits;
    8005d6f2:	00fb8db3          	add	s11,s7,a5
quickjs-nuttx/libbf.c:3547
            ret = bf_pow_ui_ui(r, radix, e, prec + extra_bits,
    8005d6f6:	67e2                	ld	a5,24(sp)
    8005d6f8:	85da                	mv	a1,s6
    8005d6fa:	8522                	mv	a0,s0
    8005d6fc:	00fd86b3          	add	a3,s11,a5
    8005d700:	fc36                	sd	a3,56(sp)
    8005d702:	e1cff0ef          	jal	ra,8005cd1e <bf_pow_ui_ui>
quickjs-nuttx/libbf.c:3549
            if (!e_sign)
    8005d706:	76e2                	ld	a3,56(sp)
quickjs-nuttx/libbf.c:3547
            ret = bf_pow_ui_ui(r, radix, e, prec + extra_bits,
    8005d708:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:3550
                ret |= bf_mul(r, r, a, prec + extra_bits,
    8005d70a:	7e000713          	li	a4,2016
quickjs-nuttx/libbf.c:3549
            if (!e_sign)
    8005d70e:	040d1963          	bnez	s10,8005d760 <bf_convert_to_radix+0x118>
quickjs-nuttx/libbf.c:3550
                ret |= bf_mul(r, r, a, prec + extra_bits,
    8005d712:	864e                	mv	a2,s3
    8005d714:	85a2                	mv	a1,s0
    8005d716:	8522                	mv	a0,s0
    8005d718:	818ff0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:3553
                ret |= bf_div(r, a, r, prec + extra_bits,
    8005d71c:	8cc9                	or	s1,s1,a0
    8005d71e:	2481                	sext.w	s1,s1
quickjs-nuttx/libbf.c:3555
            if (ret & BF_ST_MEM_ERROR)
    8005d720:	0204f793          	andi	a5,s1,32
    8005d724:	c7a1                	beqz	a5,8005d76c <bf_convert_to_radix+0x124>
quickjs-nuttx/libbf.c:3556
                return BF_ST_MEM_ERROR;
    8005d726:	02000493          	li	s1,32
quickjs-nuttx/libbf.c:3590
}
    8005d72a:	60ee                	ld	ra,216(sp)
    8005d72c:	644e                	ld	s0,208(sp)
    8005d72e:	690e                	ld	s2,192(sp)
    8005d730:	79ea                	ld	s3,184(sp)
    8005d732:	7a4a                	ld	s4,176(sp)
    8005d734:	7aaa                	ld	s5,168(sp)
    8005d736:	7b0a                	ld	s6,160(sp)
    8005d738:	6bea                	ld	s7,152(sp)
    8005d73a:	6c4a                	ld	s8,144(sp)
    8005d73c:	6caa                	ld	s9,136(sp)
    8005d73e:	6d0a                	ld	s10,128(sp)
    8005d740:	7de6                	ld	s11,120(sp)
    8005d742:	8526                	mv	a0,s1
    8005d744:	64ae                	ld	s1,200(sp)
    8005d746:	612d                	addi	sp,sp,224
    8005d748:	8082                	ret
quickjs-nuttx/libbf.c:3528
        E = 1 + bf_mul_log2_radix(a->expn - 1, radix, TRUE, FALSE);
    8005d74a:	6a08                	ld	a0,16(a2)
    8005d74c:	4681                	li	a3,0
    8005d74e:	4605                	li	a2,1
    8005d750:	000b059b          	sext.w	a1,s6
    8005d754:	157d                	addi	a0,a0,-1
    8005d756:	a1bfb0ef          	jal	ra,80059170 <bf_mul_log2_radix>
    8005d75a:	00150913          	addi	s2,a0,1
    8005d75e:	b7b1                	j	8005d6aa <bf_convert_to_radix+0x62>
quickjs-nuttx/libbf.c:3553
                ret |= bf_div(r, a, r, prec + extra_bits,
    8005d760:	8622                	mv	a2,s0
    8005d762:	85ce                	mv	a1,s3
    8005d764:	8522                	mv	a0,s0
    8005d766:	c4afb0ef          	jal	ra,80058bb0 <bf_div>
    8005d76a:	bf4d                	j	8005d71c <bf_convert_to_radix+0xd4>
quickjs-nuttx/libbf.c:3559
            if ((ret & BF_ST_INEXACT) &&
    8005d76c:	88c1                	andi	s1,s1,16
    8005d76e:	cc89                	beqz	s1,8005d788 <bf_convert_to_radix+0x140>
quickjs-nuttx/libbf.c:3560 (discriminator 1)
                !bf_can_round(r, r->expn, rnd_mode, prec)) {
    8005d770:	6602                	ld	a2,0(sp)
    8005d772:	680c                	ld	a1,16(s0)
    8005d774:	86ee                	mv	a3,s11
    8005d776:	8522                	mv	a0,s0
    8005d778:	a29fa0ef          	jal	ra,800581a0 <bf_can_round>
quickjs-nuttx/libbf.c:3559 (discriminator 1)
            if ((ret & BF_ST_INEXACT) &&
    8005d77c:	e511                	bnez	a0,8005d788 <bf_convert_to_radix+0x140>
quickjs-nuttx/libbf.c:3562
                ziv_extra_bits = ziv_extra_bits  + (ziv_extra_bits / 2);
    8005d77e:	4789                	li	a5,2
    8005d780:	02fbc7b3          	div	a5,s7,a5
    8005d784:	9bbe                	add	s7,s7,a5
quickjs-nuttx/libbf.c:3544
            prec = prec0 + ziv_extra_bits;
    8005d786:	b795                	j	8005d6ea <bf_convert_to_radix+0xa2>
quickjs-nuttx/libbf.c:3565
                ret = bf_rint(r, rnd_mode);
    8005d788:	75c2                	ld	a1,48(sp)
    8005d78a:	8522                	mv	a0,s0
    8005d78c:	eacfb0ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/libbf.c:3566
                if (ret & BF_ST_MEM_ERROR)
    8005d790:	02057493          	andi	s1,a0,32
    8005d794:	f8c9                	bnez	s1,8005d726 <bf_convert_to_radix+0xde>
quickjs-nuttx/libbf.c:3571
        if (is_fixed_exponent)
    8005d796:	67a2                	ld	a5,8(sp)
    8005d798:	e3b9                	bnez	a5,8005d7de <bf_convert_to_radix+0x196>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d79a:	601c                	ld	a5,0(s0)
bf_convert_to_radix():
quickjs-nuttx/libbf.c:3576
        ret = bf_pow_ui_ui(B, radix, P, BF_PREC_INF, BF_RNDZ);
    8005d79c:	4705                	li	a4,1
    8005d79e:	002cd693          	srli	a3,s9,0x2
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d7a2:	e4be                	sd	a5,72(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d7a4:	57fd                	li	a5,-1
    8005d7a6:	17fe                	slli	a5,a5,0x3f
bf_convert_to_radix():
quickjs-nuttx/libbf.c:3576
        ret = bf_pow_ui_ui(B, radix, P, BF_PREC_INF, BF_RNDZ);
    8005d7a8:	8652                	mv	a2,s4
    8005d7aa:	85da                	mv	a1,s6
    8005d7ac:	00a8                	addi	a0,sp,72
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005d7ae:	c882                	sw	zero,80(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d7b0:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005d7b2:	f082                	sd	zero,96(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005d7b4:	f482                	sd	zero,104(sp)
bf_convert_to_radix():
quickjs-nuttx/libbf.c:3576
        ret = bf_pow_ui_ui(B, radix, P, BF_PREC_INF, BF_RNDZ);
    8005d7b6:	d68ff0ef          	jal	ra,8005cd1e <bf_pow_ui_ui>
    8005d7ba:	8baa                	mv	s7,a0
quickjs-nuttx/libbf.c:3577
        if (ret) {
    8005d7bc:	c511                	beqz	a0,8005d7c8 <bf_convert_to_radix+0x180>
quickjs-nuttx/libbf.c:3578
            bf_delete(B);
    8005d7be:	00a8                	addi	a0,sp,72
    8005d7c0:	aeaf90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3576
        ret = bf_pow_ui_ui(B, radix, P, BF_PREC_INF, BF_RNDZ);
    8005d7c4:	84de                	mv	s1,s7
quickjs-nuttx/libbf.c:3579
            return ret;
    8005d7c6:	b795                	j	8005d72a <bf_convert_to_radix+0xe2>
quickjs-nuttx/libbf.c:3581
        res = bf_cmpu(r, B);
    8005d7c8:	00ac                	addi	a1,sp,72
    8005d7ca:	8522                	mv	a0,s0
    8005d7cc:	ce3fa0ef          	jal	ra,800584ae <bf_cmpu>
    8005d7d0:	8baa                	mv	s7,a0
quickjs-nuttx/libbf.c:3582
        bf_delete(B);
    8005d7d2:	00a8                	addi	a0,sp,72
    8005d7d4:	ad6f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3583
        if (res < 0)
    8005d7d8:	197d                	addi	s2,s2,-1
    8005d7da:	ec0bdde3          	bgez	s7,8005d6b4 <bf_convert_to_radix+0x6c>
quickjs-nuttx/libbf.c:3588
    *pE = E;
    8005d7de:	7782                	ld	a5,32(sp)
    8005d7e0:	00fab023          	sd	a5,0(s5)
quickjs-nuttx/libbf.c:3589
    return 0;
    8005d7e4:	b799                	j	8005d72a <bf_convert_to_radix+0xe2>

000000008005d7e6 <bf_integer_to_radix_rec>:
bf_integer_to_radix_rec():
quickjs-nuttx/libbf.c:3399
{
    8005d7e6:	7155                	addi	sp,sp,-208
    8005d7e8:	e586                	sd	ra,200(sp)
    8005d7ea:	e1a2                	sd	s0,192(sp)
    8005d7ec:	fd26                	sd	s1,184(sp)
    8005d7ee:	f94a                	sd	s2,176(sp)
    8005d7f0:	f54e                	sd	s3,168(sp)
    8005d7f2:	f152                	sd	s4,160(sp)
    8005d7f4:	ed56                	sd	s5,152(sp)
    8005d7f6:	e95a                	sd	s6,144(sp)
    8005d7f8:	e55e                	sd	s7,136(sp)
    8005d7fa:	e162                	sd	s8,128(sp)
    8005d7fc:	fce6                	sd	s9,120(sp)
    8005d7fe:	f8ea                	sd	s10,112(sp)
    8005d800:	f4ee                	sd	s11,104(sp)
quickjs-nuttx/libbf.c:3403
    assert(n >= 1);
    8005d802:	ea99                	bnez	a3,8005d818 <bf_integer_to_radix_rec+0x32>
quickjs-nuttx/libbf.c:3403 (discriminator 1)
    8005d804:	6585                	lui	a1,0x1
    8005d806:	4601                	li	a2,0
    8005d808:	d4b58593          	addi	a1,a1,-693 # d4b <asinh-0x7ffff2b5>
    8005d80c:	00023517          	auipc	a0,0x23
    8005d810:	db450513          	addi	a0,a0,-588 # 800805c0 <std_name.0+0x18>
    8005d814:	148030ef          	jal	ra,8006095c <__assert>
    8005d818:	8c3e                	mv	s8,a5
quickjs-nuttx/libbf.c:3404 (discriminator 2)
    if (n == 1) {
    8005d81a:	4785                	li	a5,1
    8005d81c:	8a2e                	mv	s4,a1
    8005d81e:	8ab2                	mv	s5,a2
    8005d820:	02f69f63          	bne	a3,a5,8005d85e <bf_integer_to_radix_rec+0x78>
quickjs-nuttx/libbf.c:3405
        out[0] = get_bits(a->tab, a->len, a->len * LIMB_BITS - a->expn);
    8005d824:	6e0c                	ld	a1,24(a2)
    8005d826:	010ab783          	ld	a5,16(s5)
    8005d82a:	020ab503          	ld	a0,32(s5)
    8005d82e:	00659613          	slli	a2,a1,0x6
    8005d832:	8e1d                	sub	a2,a2,a5
    8005d834:	ab6f90ef          	jal	ra,80056aea <get_bits>
    8005d838:	00aa3023          	sd	a0,0(s4)
quickjs-nuttx/libbf.c:3477
    return 0;
    8005d83c:	4401                	li	s0,0
quickjs-nuttx/libbf.c:3478
}
    8005d83e:	60ae                	ld	ra,200(sp)
    8005d840:	8522                	mv	a0,s0
    8005d842:	640e                	ld	s0,192(sp)
    8005d844:	74ea                	ld	s1,184(sp)
    8005d846:	794a                	ld	s2,176(sp)
    8005d848:	79aa                	ld	s3,168(sp)
    8005d84a:	7a0a                	ld	s4,160(sp)
    8005d84c:	6aea                	ld	s5,152(sp)
    8005d84e:	6b4a                	ld	s6,144(sp)
    8005d850:	6baa                	ld	s7,136(sp)
    8005d852:	6c0a                	ld	s8,128(sp)
    8005d854:	7ce6                	ld	s9,120(sp)
    8005d856:	7d46                	ld	s10,112(sp)
    8005d858:	7da6                	ld	s11,104(sp)
    8005d85a:	6169                	addi	sp,sp,208
    8005d85c:	8082                	ret
quickjs-nuttx/libbf.c:3406
    } else if (n == 2) {
    8005d85e:	4789                	li	a5,2
    8005d860:	8b42                	mv	s6,a6
    8005d862:	06f69e63          	bne	a3,a5,8005d8de <bf_integer_to_radix_rec+0xf8>
quickjs-nuttx/libbf.c:3409
        pos = a->len * LIMB_BITS - a->expn;
    8005d866:	6e0c                	ld	a1,24(a2)
    8005d868:	6a1c                	ld	a5,16(a2)
quickjs-nuttx/libbf.c:3410
        t = ((dlimb_t)get_bits(a->tab, a->len, pos + LIMB_BITS) << LIMB_BITS) |
    8005d86a:	02063903          	ld	s2,32(a2)
quickjs-nuttx/libbf.c:3409
        pos = a->len * LIMB_BITS - a->expn;
    8005d86e:	00659493          	slli	s1,a1,0x6
    8005d872:	8c9d                	sub	s1,s1,a5
quickjs-nuttx/libbf.c:3410
        t = ((dlimb_t)get_bits(a->tab, a->len, pos + LIMB_BITS) << LIMB_BITS) |
    8005d874:	04048613          	addi	a2,s1,64
    8005d878:	854a                	mv	a0,s2
    8005d87a:	e42e                	sd	a1,8(sp)
    8005d87c:	a6ef90ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:3411
            get_bits(a->tab, a->len, pos);
    8005d880:	65a2                	ld	a1,8(sp)
    8005d882:	8626                	mv	a2,s1
quickjs-nuttx/libbf.c:3410
        t = ((dlimb_t)get_bits(a->tab, a->len, pos + LIMB_BITS) << LIMB_BITS) |
    8005d884:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:3411
            get_bits(a->tab, a->len, pos);
    8005d886:	854a                	mv	a0,s2
    8005d888:	a62f90ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:3412
        if (likely(radixl == RADIXL_10)) {
    8005d88c:	00036797          	auipc	a5,0x36
    8005d890:	3fc7b783          	ld	a5,1020(a5) # 80093c88 <_erodata+0x116>
quickjs-nuttx/libbf.c:3411
            get_bits(a->tab, a->len, pos);
    8005d894:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:3412
        if (likely(radixl == RADIXL_10)) {
    8005d896:	02fb1a63          	bne	s6,a5,8005d8ca <bf_integer_to_radix_rec+0xe4>
quickjs-nuttx/libbf.c:3414
            out[0] = t % RADIXL_10;
    8005d89a:	00023917          	auipc	s2,0x23
    8005d89e:	f0690913          	addi	s2,s2,-250 # 800807a0 <std_name.0+0x1f8>
    8005d8a2:	00093603          	ld	a2,0(s2)
    8005d8a6:	00893683          	ld	a3,8(s2)
    8005d8aa:	85a2                	mv	a1,s0
    8005d8ac:	8b2a70ef          	jal	ra,8000495e <__umodti3>
quickjs-nuttx/libbf.c:3415
            out[1] = t / RADIXL_10;
    8005d8b0:	00093603          	ld	a2,0(s2)
    8005d8b4:	00893683          	ld	a3,8(s2)
quickjs-nuttx/libbf.c:3414
            out[0] = t % RADIXL_10;
    8005d8b8:	00aa3023          	sd	a0,0(s4)
quickjs-nuttx/libbf.c:3418
            out[1] = t / radixl;
    8005d8bc:	8526                	mv	a0,s1
    8005d8be:	85a2                	mv	a1,s0
    8005d8c0:	d53a60ef          	jal	ra,80004612 <__udivti3>
    8005d8c4:	00aa3423          	sd	a0,8(s4)
    8005d8c8:	bf95                	j	8005d83c <bf_integer_to_radix_rec+0x56>
quickjs-nuttx/libbf.c:3417
            out[0] = t % radixl;
    8005d8ca:	865a                	mv	a2,s6
    8005d8cc:	4681                	li	a3,0
    8005d8ce:	85a2                	mv	a1,s0
    8005d8d0:	88ea70ef          	jal	ra,8000495e <__umodti3>
    8005d8d4:	00aa3023          	sd	a0,0(s4)
quickjs-nuttx/libbf.c:3418
            out[1] = t / radixl;
    8005d8d8:	865a                	mv	a2,s6
    8005d8da:	4681                	li	a3,0
    8005d8dc:	b7c5                	j	8005d8bc <bf_integer_to_radix_rec+0xd6>
quickjs-nuttx/libbf.c:3427
        B = &pow_tab[2 * level];
    8005d8de:	0017199b          	slliw	s3,a4,0x1
    8005d8e2:	02800493          	li	s1,40
quickjs-nuttx/libbf.c:3425
        n2 = (((n0 * 2) >> (level + 1)) + 1) / 2;
    8005d8e6:	00170d1b          	addiw	s10,a4,1
quickjs-nuttx/libbf.c:3427
        B = &pow_tab[2 * level];
    8005d8ea:	874e                	mv	a4,s3
    8005d8ec:	029989b3          	mul	s3,s3,s1
quickjs-nuttx/libbf.c:3428
        B_inv = &pow_tab[2 * level + 1];
    8005d8f0:	2705                	addiw	a4,a4,1
quickjs-nuttx/libbf.c:3425
        n2 = (((n0 * 2) >> (level + 1)) + 1) / 2;
    8005d8f2:	001c1913          	slli	s2,s8,0x1
    8005d8f6:	01a95933          	srl	s2,s2,s10
quickjs-nuttx/libbf.c:3423
        bf_init(a->ctx, &Q);
    8005d8fa:	620c                	ld	a1,0(a2)
quickjs-nuttx/libbf.c:3425
        n2 = (((n0 * 2) >> (level + 1)) + 1) / 2;
    8005d8fc:	0905                	addi	s2,s2,1
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d8fe:	57fd                	li	a5,-1
bf_integer_to_radix_rec():
quickjs-nuttx/libbf.c:3425
        n2 = (((n0 * 2) >> (level + 1)) + 1) / 2;
    8005d900:	00195913          	srli	s2,s2,0x1
bf_init():
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d904:	03f79613          	slli	a2,a5,0x3f
bf_integer_to_radix_rec():
quickjs-nuttx/libbf.c:3426
        n1 = n - n2;
    8005d908:	412686b3          	sub	a3,a3,s2
quickjs-nuttx/libbf.c:3428
        B_inv = &pow_tab[2 * level + 1];
    8005d90c:	029704b3          	mul	s1,a4,s1
quickjs-nuttx/libbf.c:3427
        B = &pow_tab[2 * level];
    8005d910:	99aa                	add	s3,s3,a0
quickjs-nuttx/libbf.c:3430
        if (B->len == 0) {
    8005d912:	0189b703          	ld	a4,24(s3)
quickjs-nuttx/libbf.c:3436
            ret |= bf_div(B_inv, &R, B, (n2 + 1) * radixl_bits + 2, BF_RNDN);
    8005d916:	02089d93          	slli	s11,a7,0x20
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d91a:	e82e                	sd	a1,16(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005d91c:	cc02                	sw	zero,24(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d91e:	f032                	sd	a2,32(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005d920:	f402                	sd	zero,40(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005d922:	f802                	sd	zero,48(sp)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005d924:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005d926:	c082                	sw	zero,64(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005d928:	e4b2                	sd	a2,72(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005d92a:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005d92c:	ec82                	sd	zero,88(sp)
bf_integer_to_radix_rec():
quickjs-nuttx/libbf.c:3426
        n1 = n - n2;
    8005d92e:	e436                	sd	a3,8(sp)
    8005d930:	8baa                	mv	s7,a0
    8005d932:	8cc6                	mv	s9,a7
quickjs-nuttx/libbf.c:3428
        B_inv = &pow_tab[2 * level + 1];
    8005d934:	94aa                	add	s1,s1,a0
quickjs-nuttx/libbf.c:3436
            ret |= bf_div(B_inv, &R, B, (n2 + 1) * radixl_bits + 2, BF_RNDN);
    8005d936:	020ddd93          	srli	s11,s11,0x20
quickjs-nuttx/libbf.c:3429
        ret = 0;
    8005d93a:	4401                	li	s0,0
quickjs-nuttx/libbf.c:3430
        if (B->len == 0) {
    8005d93c:	ef0d                	bnez	a4,8005d976 <bf_integer_to_radix_rec+0x190>
quickjs-nuttx/libbf.c:3432
            ret |= bf_pow_ui_ui(B, radixl, n2, BF_PREC_INF, BF_RNDZ);
    8005d93e:	0027d693          	srli	a3,a5,0x2
    8005d942:	85c2                	mv	a1,a6
    8005d944:	4705                	li	a4,1
    8005d946:	864a                	mv	a2,s2
    8005d948:	854e                	mv	a0,s3
    8005d94a:	bd4ff0ef          	jal	ra,8005cd1e <bf_pow_ui_ui>
    8005d94e:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:3435
            ret |= bf_set_ui(&R, 1);
    8005d950:	4585                	li	a1,1
    8005d952:	1828                	addi	a0,sp,56
    8005d954:	a8afa0ef          	jal	ra,80057bde <bf_set_ui>
quickjs-nuttx/libbf.c:3436
            ret |= bf_div(B_inv, &R, B, (n2 + 1) * radixl_bits + 2, BF_RNDN);
    8005d958:	00190693          	addi	a3,s2,1
    8005d95c:	03b686b3          	mul	a3,a3,s11
quickjs-nuttx/libbf.c:3435
            ret |= bf_set_ui(&R, 1);
    8005d960:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:3436
            ret |= bf_div(B_inv, &R, B, (n2 + 1) * radixl_bits + 2, BF_RNDN);
    8005d962:	4701                	li	a4,0
    8005d964:	864e                	mv	a2,s3
    8005d966:	182c                	addi	a1,sp,56
    8005d968:	8526                	mv	a0,s1
quickjs-nuttx/libbf.c:3435
            ret |= bf_set_ui(&R, 1);
    8005d96a:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:3436
            ret |= bf_div(B_inv, &R, B, (n2 + 1) * radixl_bits + 2, BF_RNDN);
    8005d96c:	0689                	addi	a3,a3,2
    8005d96e:	a42fb0ef          	jal	ra,80058bb0 <bf_div>
    8005d972:	8c49                	or	s0,s0,a0
    8005d974:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:3440
        ret |= bf_mul(&Q, a, B_inv, q_prec, BF_RNDN);
    8005d976:	67a2                	ld	a5,8(sp)
    8005d978:	8626                	mv	a2,s1
    8005d97a:	4701                	li	a4,0
    8005d97c:	02fd86b3          	mul	a3,s11,a5
    8005d980:	85d6                	mv	a1,s5
    8005d982:	0808                	addi	a0,sp,16
quickjs-nuttx/libbf.c:3443
        ret |= bf_mul(&R, &Q, B, BF_PREC_INF, BF_RNDZ);
    8005d984:	54fd                	li	s1,-1
quickjs-nuttx/libbf.c:3440
        ret |= bf_mul(&Q, a, B_inv, q_prec, BF_RNDN);
    8005d986:	dabfe0ef          	jal	ra,8005c730 <bf_mul>
    8005d98a:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:3441
        ret |= bf_rint(&Q, BF_RNDZ);
    8005d98c:	4585                	li	a1,1
    8005d98e:	0808                	addi	a0,sp,16
    8005d990:	ca8fb0ef          	jal	ra,80058e38 <bf_rint>
quickjs-nuttx/libbf.c:3440
        ret |= bf_mul(&Q, a, B_inv, q_prec, BF_RNDN);
    8005d994:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:3443
        ret |= bf_mul(&R, &Q, B, BF_PREC_INF, BF_RNDZ);
    8005d996:	0024d693          	srli	a3,s1,0x2
quickjs-nuttx/libbf.c:3441
        ret |= bf_rint(&Q, BF_RNDZ);
    8005d99a:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:3443
        ret |= bf_mul(&R, &Q, B, BF_PREC_INF, BF_RNDZ);
    8005d99c:	4705                	li	a4,1
    8005d99e:	864e                	mv	a2,s3
    8005d9a0:	080c                	addi	a1,sp,16
    8005d9a2:	1828                	addi	a0,sp,56
    8005d9a4:	d8dfe0ef          	jal	ra,8005c730 <bf_mul>
quickjs-nuttx/libbf.c:3444
        ret |= bf_sub(&R, a, &R, BF_PREC_INF, BF_RNDZ);
    8005d9a8:	1830                	addi	a2,sp,56
quickjs-nuttx/libbf.c:3441
        ret |= bf_rint(&Q, BF_RNDZ);
    8005d9aa:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:3443
        ret |= bf_mul(&R, &Q, B, BF_PREC_INF, BF_RNDZ);
    8005d9ac:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:3444
        ret |= bf_sub(&R, a, &R, BF_PREC_INF, BF_RNDZ);
    8005d9ae:	0024d693          	srli	a3,s1,0x2
    8005d9b2:	4705                	li	a4,1
    8005d9b4:	85d6                	mv	a1,s5
    8005d9b6:	8532                	mv	a0,a2
quickjs-nuttx/libbf.c:3443
        ret |= bf_mul(&R, &Q, B, BF_PREC_INF, BF_RNDZ);
    8005d9b8:	2401                	sext.w	s0,s0
quickjs-nuttx/libbf.c:3444
        ret |= bf_sub(&R, a, &R, BF_PREC_INF, BF_RNDZ);
    8005d9ba:	9eafb0ef          	jal	ra,80058ba4 <bf_sub>
    8005d9be:	8c49                	or	s0,s0,a0
quickjs-nuttx/libbf.c:3446
        if (ret & BF_ST_MEM_ERROR)
    8005d9c0:	02047413          	andi	s0,s0,32
quickjs-nuttx/libbf.c:3451
            if (bf_add(&R, &R, B, BF_PREC_INF, BF_RNDZ))
    8005d9c4:	8089                	srli	s1,s1,0x2
quickjs-nuttx/libbf.c:3446
        if (ret & BF_ST_MEM_ERROR)
    8005d9c6:	c015                	beqz	s0,8005d9ea <bf_integer_to_radix_rec+0x204>
quickjs-nuttx/libbf.c:3470
            bf_delete(&Q);
    8005d9c8:	0808                	addi	a0,sp,16
    8005d9ca:	8e0f90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3471
            bf_delete(&R);
    8005d9ce:	1828                	addi	a0,sp,56
    8005d9d0:	8daf90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3472
            return -1;
    8005d9d4:	547d                	li	s0,-1
    8005d9d6:	b5a5                	j	8005d83e <bf_integer_to_radix_rec+0x58>
quickjs-nuttx/libbf.c:3451
            if (bf_add(&R, &R, B, BF_PREC_INF, BF_RNDZ))
    8005d9d8:	182c                	addi	a1,sp,56
    8005d9da:	4705                	li	a4,1
    8005d9dc:	86a6                	mv	a3,s1
    8005d9de:	864e                	mv	a2,s3
    8005d9e0:	852e                	mv	a0,a1
    8005d9e2:	95afb0ef          	jal	ra,80058b3c <bf_add>
    8005d9e6:	f16d                	bnez	a0,8005d9c8 <bf_integer_to_radix_rec+0x1e2>
quickjs-nuttx/libbf.c:3453
            q_add--;
    8005d9e8:	347d                	addiw	s0,s0,-1
quickjs-nuttx/libbf.c:3450
        while (R.sign && R.len != 0) {
    8005d9ea:	4786                	lw	a5,64(sp)
    8005d9ec:	c399                	beqz	a5,8005d9f2 <bf_integer_to_radix_rec+0x20c>
quickjs-nuttx/libbf.c:3450 (discriminator 1)
    8005d9ee:	67c6                	ld	a5,80(sp)
    8005d9f0:	f7e5                	bnez	a5,8005d9d8 <bf_integer_to_radix_rec+0x1f2>
quickjs-nuttx/libbf.c:3456
            if (bf_sub(&R, &R, B, BF_PREC_INF, BF_RNDZ))
    8005d9f2:	54fd                	li	s1,-1
    8005d9f4:	8089                	srli	s1,s1,0x2
    8005d9f6:	a811                	j	8005da0a <bf_integer_to_radix_rec+0x224>
    8005d9f8:	182c                	addi	a1,sp,56
    8005d9fa:	4705                	li	a4,1
    8005d9fc:	86a6                	mv	a3,s1
    8005d9fe:	864e                	mv	a2,s3
    8005da00:	852e                	mv	a0,a1
    8005da02:	9a2fb0ef          	jal	ra,80058ba4 <bf_sub>
    8005da06:	f169                	bnez	a0,8005d9c8 <bf_integer_to_radix_rec+0x1e2>
quickjs-nuttx/libbf.c:3458
            q_add++;
    8005da08:	2405                	addiw	s0,s0,1
quickjs-nuttx/libbf.c:3455
        while (bf_cmpu(&R, B) >= 0) {
    8005da0a:	85ce                	mv	a1,s3
    8005da0c:	1828                	addi	a0,sp,56
    8005da0e:	aa1fa0ef          	jal	ra,800584ae <bf_cmpu>
    8005da12:	fe0553e3          	bgez	a0,8005d9f8 <bf_integer_to_radix_rec+0x212>
quickjs-nuttx/libbf.c:3460
        if (q_add != 0) {
    8005da16:	e029                	bnez	s0,8005da58 <bf_integer_to_radix_rec+0x272>
quickjs-nuttx/libbf.c:3464
        if (bf_integer_to_radix_rec(pow_tab, out + n2, &Q, n1, level + 1, n0,
    8005da18:	66a2                	ld	a3,8(sp)
    8005da1a:	00391593          	slli	a1,s2,0x3
    8005da1e:	88e6                	mv	a7,s9
    8005da20:	885a                	mv	a6,s6
    8005da22:	87e2                	mv	a5,s8
    8005da24:	876a                	mv	a4,s10
    8005da26:	0810                	addi	a2,sp,16
    8005da28:	95d2                	add	a1,a1,s4
    8005da2a:	855e                	mv	a0,s7
    8005da2c:	dbbff0ef          	jal	ra,8005d7e6 <bf_integer_to_radix_rec>
    8005da30:	fd41                	bnez	a0,8005d9c8 <bf_integer_to_radix_rec+0x1e2>
quickjs-nuttx/libbf.c:3467
        if (bf_integer_to_radix_rec(pow_tab, out, &R, n2, level + 1, n0,
    8005da32:	88e6                	mv	a7,s9
    8005da34:	885a                	mv	a6,s6
    8005da36:	87e2                	mv	a5,s8
    8005da38:	876a                	mv	a4,s10
    8005da3a:	86ca                	mv	a3,s2
    8005da3c:	1830                	addi	a2,sp,56
    8005da3e:	85d2                	mv	a1,s4
    8005da40:	855e                	mv	a0,s7
    8005da42:	da5ff0ef          	jal	ra,8005d7e6 <bf_integer_to_radix_rec>
    8005da46:	842a                	mv	s0,a0
    8005da48:	f141                	bnez	a0,8005d9c8 <bf_integer_to_radix_rec+0x1e2>
quickjs-nuttx/libbf.c:3474
        bf_delete(&Q);
    8005da4a:	0808                	addi	a0,sp,16
    8005da4c:	85ef90ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3475
        bf_delete(&R);
    8005da50:	1828                	addi	a0,sp,56
    8005da52:	858f90ef          	jal	ra,80056aaa <bf_delete>
    8005da56:	b3e5                	j	8005d83e <bf_integer_to_radix_rec+0x58>
quickjs-nuttx/libbf.c:3461
            if (bf_add_si(&Q, &Q, q_add, BF_PREC_INF, BF_RNDZ))
    8005da58:	56fd                	li	a3,-1
    8005da5a:	080c                	addi	a1,sp,16
    8005da5c:	4705                	li	a4,1
    8005da5e:	8289                	srli	a3,a3,0x2
    8005da60:	8622                	mv	a2,s0
    8005da62:	852e                	mv	a0,a1
    8005da64:	958fb0ef          	jal	ra,80058bbc <bf_add_si>
    8005da68:	d945                	beqz	a0,8005da18 <bf_integer_to_radix_rec+0x232>
    8005da6a:	bfb9                	j	8005d9c8 <bf_integer_to_radix_rec+0x1e2>

000000008005da6c <output_digits>:
output_digits():
quickjs-nuttx/libbf.c:3640
{
    8005da6c:	716d                	addi	sp,sp,-272
    8005da6e:	fda6                	sd	s1,248(sp)
    8005da70:	f9ca                	sd	s2,240(sp)
    8005da72:	edd6                	sd	s5,216(sp)
    8005da74:	e1e2                	sd	s8,192(sp)
    8005da76:	e606                	sd	ra,264(sp)
    8005da78:	e222                	sd	s0,256(sp)
    8005da7a:	f5ce                	sd	s3,232(sp)
    8005da7c:	f1d2                	sd	s4,224(sp)
    8005da7e:	e9da                	sd	s6,208(sp)
    8005da80:	e5de                	sd	s7,200(sp)
    8005da82:	fd66                	sd	s9,184(sp)
    8005da84:	f96a                	sd	s10,176(sp)
    8005da86:	f56e                	sd	s11,168(sp)
    8005da88:	e02a                	sd	a0,0(sp)
    8005da8a:	892e                	mv	s2,a1
    8005da8c:	84b2                	mv	s1,a2
    8005da8e:	8ab6                	mv	s5,a3
    8005da90:	8c3a                	mv	s8,a4
quickjs-nuttx/libbf.c:3647
    if (is_dec) {
    8005da92:	cb89                	beqz	a5,8005daa4 <output_digits+0x38>
quickjs-nuttx/libbf.c:3651
        pos = a->len;
    8005da94:	0185b983          	ld	s3,24(a1)
quickjs-nuttx/libbf.c:3653
        first_buf_pos = 0;
    8005da98:	8dae                	mv	s11,a1
    8005da9a:	4b81                	li	s7,0
quickjs-nuttx/libbf.c:3650
        radix_bits = 0;
    8005da9c:	4401                	li	s0,0
quickjs-nuttx/libbf.c:3648
        digits_per_limb = LIMB_DIGITS;
    8005da9e:	4a4d                	li	s4,19
quickjs-nuttx/libbf.c:3680
        pos_incr = 1;
    8005daa0:	4d05                	li	s10,1
    8005daa2:	a091                	j	8005dae6 <output_digits+0x7a>
quickjs-nuttx/libbf.c:3654
    } else if ((radix & (radix - 1)) == 0) {
    8005daa4:	fff6071b          	addiw	a4,a2,-1
    8005daa8:	8f71                	and	a4,a4,a2
    8005daaa:	00070b9b          	sext.w	s7,a4
    8005daae:	080b9363          	bnez	s7,8005db34 <output_digits+0xc8>
quickjs-nuttx/libbf.c:3656
        radix_bits = ceil_log2(radix);
    8005dab2:	8532                	mv	a0,a2
    8005dab4:	c74f90ef          	jal	ra,80056f28 <ceil_log2>
quickjs-nuttx/libbf.c:3660
        pos = a->len * LIMB_BITS + smod(-a->expn, radix_bits);
    8005dab8:	01893783          	ld	a5,24(s2)
quickjs-nuttx/libbf.c:3657
        digits_per_limb = LIMB_BITS / radix_bits;
    8005dabc:	04000993          	li	s3,64
    8005dac0:	02a9ca3b          	divw	s4,s3,a0
quickjs-nuttx/libbf.c:3660
        pos = a->len * LIMB_BITS + smod(-a->expn, radix_bits);
    8005dac4:	00679693          	slli	a3,a5,0x6
    8005dac8:	01093783          	ld	a5,16(s2)
quickjs-nuttx/libbf.c:3656
        radix_bits = ceil_log2(radix);
    8005dacc:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:3660
        pos = a->len * LIMB_BITS + smod(-a->expn, radix_bits);
    8005dace:	40f007b3          	neg	a5,a5
smod():
quickjs-nuttx/libbf.c:152
    a = a % (slimb_t)b;
    8005dad2:	02a7e7b3          	rem	a5,a5,a0
output_digits():
quickjs-nuttx/libbf.c:3658
        pos_incr = digits_per_limb * radix_bits;
    8005dad6:	02aa0d3b          	mulw	s10,s4,a0
smod():
quickjs-nuttx/libbf.c:153
    if (a < 0)
    8005dada:	0007d363          	bgez	a5,8005dae0 <output_digits+0x74>
quickjs-nuttx/libbf.c:154
        a += b;
    8005dade:	97aa                	add	a5,a5,a0
output_digits():
quickjs-nuttx/libbf.c:3660
        pos = a->len * LIMB_BITS + smod(-a->expn, radix_bits);
    8005dae0:	00d789b3          	add	s3,a5,a3
quickjs-nuttx/libbf.c:3661
        first_buf_pos = 0;
    8005dae4:	8dca                	mv	s11,s2
limb_to_a2():
quickjs-nuttx/libbf.c:3622
    mask = (1 << radix_bits) - 1;
    8005dae6:	4605                	li	a2,1
output_digits():
quickjs-nuttx/libbf.c:3693
                limb_to_a2(buf, v, radix_bits, digits_per_limb);
    8005dae8:	0004079b          	sext.w	a5,s0
limb_to_a2():
quickjs-nuttx/libbf.c:3622
    mask = (1 << radix_bits) - 1;
    8005daec:	0086163b          	sllw	a2,a2,s0
output_digits():
quickjs-nuttx/libbf.c:3693
                limb_to_a2(buf, v, radix_bits, digits_per_limb);
    8005daf0:	e83e                	sd	a5,16(sp)
limb_to_a2():
quickjs-nuttx/libbf.c:3622
    mask = (1 << radix_bits) - 1;
    8005daf2:	fff6079b          	addiw	a5,a2,-1
    8005daf6:	ec3e                	sd	a5,24(sp)
output_digits():
quickjs-nuttx/libbf.c:3690
                limb_to_a(buf, v, radix, digits_per_limb);
    8005daf8:	0004879b          	sext.w	a5,s1
    8005dafc:	f03e                	sd	a5,32(sp)
limb_to_a():
quickjs-nuttx/libbf.c:3605
            digit = (limb_t)n % radix;
    8005dafe:	02049793          	slli	a5,s1,0x20
    8005db02:	9381                	srli	a5,a5,0x20
output_digits():
quickjs-nuttx/libbf.c:3685
    while (i < n_digits) {
    8005db04:	85d2                	mv	a1,s4
quickjs-nuttx/libbf.c:3684
    i = 0;
    8005db06:	4b01                	li	s6,0
limb_to_a():
quickjs-nuttx/libbf.c:3598
        for(i = len - 1; i >= 0; i--) {
    8005db08:	fffa0c9b          	addiw	s9,s4,-1
quickjs-nuttx/libbf.c:3605
            digit = (limb_t)n % radix;
    8005db0c:	e43e                	sd	a5,8(sp)
output_digits():
quickjs-nuttx/libbf.c:3685
    while (i < n_digits) {
    8005db0e:	135b6263          	bltu	s6,s5,8005dc32 <output_digits+0x1c6>
quickjs-nuttx/libbf.c:3711
    if (a != a1)
    8005db12:	072d9863          	bne	s11,s2,8005db82 <output_digits+0x116>
quickjs-nuttx/libbf.c:3713
}
    8005db16:	60b2                	ld	ra,264(sp)
    8005db18:	6412                	ld	s0,256(sp)
    8005db1a:	74ee                	ld	s1,248(sp)
    8005db1c:	794e                	ld	s2,240(sp)
    8005db1e:	79ae                	ld	s3,232(sp)
    8005db20:	7a0e                	ld	s4,224(sp)
    8005db22:	6aee                	ld	s5,216(sp)
    8005db24:	6b4e                	ld	s6,208(sp)
    8005db26:	6bae                	ld	s7,200(sp)
    8005db28:	6c0e                	ld	s8,192(sp)
    8005db2a:	7cea                	ld	s9,184(sp)
    8005db2c:	7d4a                	ld	s10,176(sp)
    8005db2e:	7daa                	ld	s11,168(sp)
    8005db30:	6151                	addi	sp,sp,272
    8005db32:	8082                	ret
quickjs-nuttx/libbf.c:3665
        digits_per_limb = digits_per_limb_table[radix - 2];
    8005db34:	ffe6071b          	addiw	a4,a2,-2
    8005db38:	00023797          	auipc	a5,0x23
    8005db3c:	c7878793          	addi	a5,a5,-904 # 800807b0 <digits_per_limb_table>
    8005db40:	97ba                	add	a5,a5,a4
    8005db42:	0007cd03          	lbu	s10,0(a5)
get_limb_radix():
quickjs-nuttx/libbf.c:2708
    radixl = radix;
    8005db46:	8bb2                	mv	s7,a2
quickjs-nuttx/libbf.c:2709
    for(i = 1; i < k; i++)
    8005db48:	4785                	li	a5,1
output_digits():
quickjs-nuttx/libbf.c:3665
        digits_per_limb = digits_per_limb_table[radix - 2];
    8005db4a:	000d0a1b          	sext.w	s4,s10
get_limb_radix():
quickjs-nuttx/libbf.c:2709
    for(i = 1; i < k; i++)
    8005db4e:	0347ce63          	blt	a5,s4,8005db8a <output_digits+0x11e>
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005db52:	00093783          	ld	a5,0(s2)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005db56:	547d                	li	s0,-1
    8005db58:	147e                	slli	s0,s0,0x3f
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005db5a:	f83e                	sd	a5,48(sp)
output_digits():
quickjs-nuttx/libbf.c:3669
        n = (n_digits + digits_per_limb - 1) / digits_per_limb;
    8005db5c:	fffa8793          	addi	a5,s5,-1
    8005db60:	97ea                	add	a5,a5,s10
    8005db62:	03a7d9b3          	divu	s3,a5,s10
quickjs-nuttx/libbf.c:3670
        if (bf_resize(a, n)) {
    8005db66:	1808                	addi	a0,sp,48
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005db68:	dc02                	sw	zero,56(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005db6a:	e0a2                	sd	s0,64(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005db6c:	e482                	sd	zero,72(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005db6e:	e882                	sd	zero,80(sp)
output_digits():
quickjs-nuttx/libbf.c:3670
        if (bf_resize(a, n)) {
    8005db70:	85ce                	mv	a1,s3
    8005db72:	812fa0ef          	jal	ra,80057b84 <bf_resize>
    8005db76:	cd11                	beqz	a0,8005db92 <output_digits+0x126>
dbuf_set_error():
quickjs-nuttx/cutils.h:276
    s->error = TRUE;
    8005db78:	6702                	ld	a4,0(sp)
    8005db7a:	4785                	li	a5,1
output_digits():
quickjs-nuttx/libbf.c:3672
            goto done;
    8005db7c:	03010d93          	addi	s11,sp,48
dbuf_set_error():
quickjs-nuttx/cutils.h:276
    8005db80:	cf1c                	sw	a5,24(a4)
output_digits():
quickjs-nuttx/libbf.c:3712
        bf_delete(a);
    8005db82:	856e                	mv	a0,s11
    8005db84:	f27f80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3713
}
    8005db88:	b779                	j	8005db16 <output_digits+0xaa>
get_limb_radix():
quickjs-nuttx/libbf.c:2710
        radixl *= radix;
    8005db8a:	029b8bb3          	mul	s7,s7,s1
quickjs-nuttx/libbf.c:2709
    for(i = 1; i < k; i++)
    8005db8e:	2785                	addiw	a5,a5,1
    8005db90:	bf7d                	j	8005db4e <output_digits+0xe2>
bf_integer_to_radix():
quickjs-nuttx/libbf.c:3488
    r_len = r->len;
    8005db92:	67a6                	ld	a5,72(sp)
    8005db94:	e82a                	sd	a0,16(sp)
quickjs-nuttx/libbf.c:3483
    bf_context_t *s = r->ctx;
    8005db96:	7dc2                	ld	s11,48(sp)
quickjs-nuttx/libbf.c:3489
    pow_tab_len = (ceil_log2(r_len) + 2) * 2; /* XXX: check */
    8005db98:	853e                	mv	a0,a5
    8005db9a:	e43e                	sd	a5,8(sp)
    8005db9c:	b8cf90ef          	jal	ra,80056f28 <ceil_log2>
    8005dba0:	00250c9b          	addiw	s9,a0,2
    8005dba4:	001c9c9b          	slliw	s9,s9,0x1
quickjs-nuttx/libbf.c:3490
    pow_tab = bf_malloc(s, sizeof(pow_tab[0]) * pow_tab_len);
    8005dba8:	02800593          	li	a1,40
    8005dbac:	02bc85b3          	mul	a1,s9,a1
    8005dbb0:	856e                	mv	a0,s11
    8005dbb2:	ee7f80ef          	jal	ra,80056a98 <bf_malloc>
    8005dbb6:	8b2a                	mv	s6,a0
quickjs-nuttx/libbf.c:3491
    if (!pow_tab)
    8005dbb8:	d161                	beqz	a0,8005db78 <output_digits+0x10c>
    8005dbba:	67a2                	ld	a5,8(sp)
    8005dbbc:	66c2                	ld	a3,16(sp)
    8005dbbe:	872a                	mv	a4,a0
quickjs-nuttx/libbf.c:3493
    for(i = 0; i < pow_tab_len; i++)
    8005dbc0:	0596c563          	blt	a3,s9,8005dc0a <output_digits+0x19e>
quickjs-nuttx/libbf.c:3497
                                  ceil_log2(radixl));
    8005dbc4:	855e                	mv	a0,s7
    8005dbc6:	e43e                	sd	a5,8(sp)
    8005dbc8:	b60f90ef          	jal	ra,80056f28 <ceil_log2>
quickjs-nuttx/libbf.c:3496
    ret = bf_integer_to_radix_rec(pow_tab, r->tab, a, r_len, 0, r_len, radixl,
    8005dbcc:	67a2                	ld	a5,8(sp)
    8005dbce:	65c6                	ld	a1,80(sp)
    8005dbd0:	0005089b          	sext.w	a7,a0
    8005dbd4:	885e                	mv	a6,s7
    8005dbd6:	4701                	li	a4,0
    8005dbd8:	86be                	mv	a3,a5
    8005dbda:	864a                	mv	a2,s2
    8005dbdc:	855a                	mv	a0,s6
    8005dbde:	c09ff0ef          	jal	ra,8005d7e6 <bf_integer_to_radix_rec>
    8005dbe2:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:3499
    for(i = 0; i < pow_tab_len; i++) {
    8005dbe4:	4b81                	li	s7,0
    8005dbe6:	000b871b          	sext.w	a4,s7
    8005dbea:	02800693          	li	a3,40
    8005dbee:	03974b63          	blt	a4,s9,8005dc24 <output_digits+0x1b8>
quickjs-nuttx/libbf.c:3502
    bf_free(s, pow_tab);
    8005dbf2:	85da                	mv	a1,s6
    8005dbf4:	856e                	mv	a0,s11
    8005dbf6:	eabf80ef          	jal	ra,80056aa0 <bf_free>
output_digits():
quickjs-nuttx/libbf.c:3674
        if (bf_integer_to_radix(a, a1, radixl)) {
    8005dbfa:	fc3d                	bnez	s0,8005db78 <output_digits+0x10c>
quickjs-nuttx/libbf.c:3681
        first_buf_pos = pos * digits_per_limb - n_digits;
    8005dbfc:	03a9873b          	mulw	a4,s3,s10
quickjs-nuttx/libbf.c:3667
        a = &a_s;
    8005dc00:	03010d93          	addi	s11,sp,48
quickjs-nuttx/libbf.c:3681
        first_buf_pos = pos * digits_per_limb - n_digits;
    8005dc04:	41570bbb          	subw	s7,a4,s5
    8005dc08:	bd61                	j	8005daa0 <output_digits+0x34>
bf_integer_to_radix():
quickjs-nuttx/libbf.c:3494
        bf_init(r->ctx, &pow_tab[i]);
    8005dc0a:	7642                	ld	a2,48(sp)
quickjs-nuttx/libbf.c:3493
    for(i = 0; i < pow_tab_len; i++)
    8005dc0c:	2685                	addiw	a3,a3,1
bf_init():
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005dc0e:	00072423          	sw	zero,8(a4)
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005dc12:	e310                	sd	a2,0(a4)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005dc14:	eb00                	sd	s0,16(a4)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005dc16:	00073c23          	sd	zero,24(a4)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005dc1a:	02073023          	sd	zero,32(a4)
bf_integer_to_radix():
quickjs-nuttx/libbf.c:3493
    for(i = 0; i < pow_tab_len; i++)
    8005dc1e:	02870713          	addi	a4,a4,40
    8005dc22:	bf79                	j	8005dbc0 <output_digits+0x154>
quickjs-nuttx/libbf.c:3500
        bf_delete(&pow_tab[i]);
    8005dc24:	02db8533          	mul	a0,s7,a3
    8005dc28:	0b85                	addi	s7,s7,1
    8005dc2a:	955a                	add	a0,a0,s6
    8005dc2c:	e7ff80ef          	jal	ra,80056aaa <bf_delete>
quickjs-nuttx/libbf.c:3499
    for(i = 0; i < pow_tab_len; i++) {
    8005dc30:	bf5d                	j	8005dbe6 <output_digits+0x17a>
output_digits():
quickjs-nuttx/libbf.c:3686
        if (buf_pos == digits_per_limb) {
    8005dc32:	0eba1963          	bne	s4,a1,8005dd24 <output_digits+0x2b8>
quickjs-nuttx/libbf.c:3687
            pos -= pos_incr;
    8005dc36:	41a989b3          	sub	s3,s3,s10
limb_to_a():
quickjs-nuttx/libbf.c:3598
        for(i = len - 1; i >= 0; i--) {
    8005dc3a:	84e6                	mv	s1,s9
output_digits():
quickjs-nuttx/libbf.c:3688
            if (radix_bits == 0) {
    8005dc3c:	e445                	bnez	s0,8005dce4 <output_digits+0x278>
quickjs-nuttx/libbf.c:3689
                v = get_limbz(a, pos);
    8005dc3e:	85ce                	mv	a1,s3
    8005dc40:	856e                	mv	a0,s11
    8005dc42:	e95f80ef          	jal	ra,80056ad6 <get_limbz>
limb_to_a():
quickjs-nuttx/libbf.c:3596
    if (radix == 10) {
    8005dc46:	7782                	ld	a5,32(sp)
    8005dc48:	4629                	li	a2,10
    8005dc4a:	02c78763          	beq	a5,a2,8005dc78 <output_digits+0x20c>
    8005dc4e:	08bc                	addi	a5,sp,88
    8005dc50:	019785b3          	add	a1,a5,s9
quickjs-nuttx/libbf.c:3604
        for(i = len - 1; i >= 0; i--) {
    8005dc54:	0204c863          	bltz	s1,8005dc84 <output_digits+0x218>
quickjs-nuttx/libbf.c:3605
            digit = (limb_t)n % radix;
    8005dc58:	67a2                	ld	a5,8(sp)
    8005dc5a:	02f57633          	remu	a2,a0,a5
quickjs-nuttx/libbf.c:3606
            n = (limb_t)n / radix;
    8005dc5e:	02f55533          	divu	a0,a0,a5
quickjs-nuttx/libbf.c:3605
            digit = (limb_t)n % radix;
    8005dc62:	2601                	sext.w	a2,a2
quickjs-nuttx/libbf.c:3607
            if (digit < 10)
    8005dc64:	47a5                	li	a5,9
    8005dc66:	06c7cc63          	blt	a5,a2,8005dcde <output_digits+0x272>
quickjs-nuttx/libbf.c:3608
                digit += '0';
    8005dc6a:	0306061b          	addiw	a2,a2,48
quickjs-nuttx/libbf.c:3611
            buf[i] = digit;
    8005dc6e:	00c58023          	sb	a2,0(a1)
quickjs-nuttx/libbf.c:3604
        for(i = len - 1; i >= 0; i--) {
    8005dc72:	34fd                	addiw	s1,s1,-1
    8005dc74:	15fd                	addi	a1,a1,-1
    8005dc76:	bff9                	j	8005dc54 <output_digits+0x1e8>
    8005dc78:	08bc                	addi	a5,sp,88
    8005dc7a:	01978633          	add	a2,a5,s9
quickjs-nuttx/libbf.c:3599
            digit = (limb_t)n % 10;
    8005dc7e:	48a9                	li	a7,10
quickjs-nuttx/libbf.c:3598
        for(i = len - 1; i >= 0; i--) {
    8005dc80:	0404d463          	bgez	s1,8005dcc8 <output_digits+0x25c>
output_digits():
quickjs-nuttx/libbf.c:3696
            first_buf_pos = 0;
    8005dc84:	4481                	li	s1,0
quickjs-nuttx/libbf.c:3698
        if (i < dot_pos) {
    8005dc86:	8662                	mv	a2,s8
    8005dc88:	018b6c63          	bltu	s6,s8,8005dca0 <output_digits+0x234>
quickjs-nuttx/libbf.c:3701
            if (i == dot_pos)
    8005dc8c:	8656                	mv	a2,s5
    8005dc8e:	018b1963          	bne	s6,s8,8005dca0 <output_digits+0x234>
quickjs-nuttx/libbf.c:3702
                dbuf_putc(s, '.');
    8005dc92:	6502                	ld	a0,0(sp)
    8005dc94:	02e00593          	li	a1,46
    8005dc98:	f456                	sd	s5,40(sp)
    8005dc9a:	e49f30ef          	jal	ra,80051ae2 <dbuf_putc>
    8005dc9e:	7622                	ld	a2,40(sp)
quickjs-nuttx/libbf.c:3705
        l = bf_min(digits_per_limb - buf_pos, l - i);
    8005dca0:	416605b3          	sub	a1,a2,s6
    8005dca4:	417a063b          	subw	a2,s4,s7
    8005dca8:	00c5d363          	bge	a1,a2,8005dcae <output_digits+0x242>
    8005dcac:	862e                	mv	a2,a1
quickjs-nuttx/libbf.c:3706
        dbuf_put(s, (uint8_t *)(buf + buf_pos), l);
    8005dcae:	6502                	ld	a0,0(sp)
    8005dcb0:	08bc                	addi	a5,sp,88
    8005dcb2:	017785b3          	add	a1,a5,s7
    8005dcb6:	f432                	sd	a2,40(sp)
    8005dcb8:	d99f30ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/libbf.c:3707
        buf_pos += l;
    8005dcbc:	7622                	ld	a2,40(sp)
    8005dcbe:	017605bb          	addw	a1,a2,s7
quickjs-nuttx/libbf.c:3708
        i += l;
    8005dcc2:	9b32                	add	s6,s6,a2
    8005dcc4:	8ba6                	mv	s7,s1
    8005dcc6:	b5a1                	j	8005db0e <output_digits+0xa2>
limb_to_a():
quickjs-nuttx/libbf.c:3599
            digit = (limb_t)n % 10;
    8005dcc8:	031575b3          	remu	a1,a0,a7
quickjs-nuttx/libbf.c:3598
        for(i = len - 1; i >= 0; i--) {
    8005dccc:	34fd                	addiw	s1,s1,-1
    8005dcce:	167d                	addi	a2,a2,-1
quickjs-nuttx/libbf.c:3601
            buf[i] = digit + '0';
    8005dcd0:	0305859b          	addiw	a1,a1,48
    8005dcd4:	00b600a3          	sb	a1,1(a2)
quickjs-nuttx/libbf.c:3600
            n = (limb_t)n / 10;
    8005dcd8:	03155533          	divu	a0,a0,a7
quickjs-nuttx/libbf.c:3598
        for(i = len - 1; i >= 0; i--) {
    8005dcdc:	b755                	j	8005dc80 <output_digits+0x214>
quickjs-nuttx/libbf.c:3610
                digit += 'a' - 10;
    8005dcde:	0576061b          	addiw	a2,a2,87
    8005dce2:	b771                	j	8005dc6e <output_digits+0x202>
output_digits():
quickjs-nuttx/libbf.c:3692
                v = get_bits(a->tab, a->len, pos);
    8005dce4:	018db583          	ld	a1,24(s11)
    8005dce8:	020db503          	ld	a0,32(s11)
    8005dcec:	864e                	mv	a2,s3
    8005dcee:	dfdf80ef          	jal	ra,80056aea <get_bits>
limb_to_a2():
quickjs-nuttx/libbf.c:3623
    for(i = len - 1; i >= 0; i--) {
    8005dcf2:	08bc                	addi	a5,sp,88
    8005dcf4:	019785b3          	add	a1,a5,s9
    8005dcf8:	f804c6e3          	bltz	s1,8005dc84 <output_digits+0x218>
quickjs-nuttx/libbf.c:3624
        digit = n & mask;
    8005dcfc:	67e2                	ld	a5,24(sp)
    8005dcfe:	00f57633          	and	a2,a0,a5
quickjs-nuttx/libbf.c:3625
        n >>= radix_bits;
    8005dd02:	67c2                	ld	a5,16(sp)
quickjs-nuttx/libbf.c:3624
        digit = n & mask;
    8005dd04:	2601                	sext.w	a2,a2
quickjs-nuttx/libbf.c:3625
        n >>= radix_bits;
    8005dd06:	00f55533          	srl	a0,a0,a5
quickjs-nuttx/libbf.c:3626
        if (digit < 10)
    8005dd0a:	47a5                	li	a5,9
    8005dd0c:	00c7c963          	blt	a5,a2,8005dd1e <output_digits+0x2b2>
quickjs-nuttx/libbf.c:3627
            digit += '0';
    8005dd10:	0306061b          	addiw	a2,a2,48
quickjs-nuttx/libbf.c:3630
        buf[i] = digit;
    8005dd14:	00c58023          	sb	a2,0(a1)
quickjs-nuttx/libbf.c:3623
    for(i = len - 1; i >= 0; i--) {
    8005dd18:	34fd                	addiw	s1,s1,-1
    8005dd1a:	15fd                	addi	a1,a1,-1
    8005dd1c:	bff1                	j	8005dcf8 <output_digits+0x28c>
quickjs-nuttx/libbf.c:3629
            digit += 'a' - 10;
    8005dd1e:	0576061b          	addiw	a2,a2,87
    8005dd22:	bfcd                	j	8005dd14 <output_digits+0x2a8>
output_digits():
quickjs-nuttx/libbf.c:3629
    8005dd24:	84de                	mv	s1,s7
    8005dd26:	8bae                	mv	s7,a1
    8005dd28:	bfb9                	j	8005dc86 <output_digits+0x21a>

000000008005dd2a <bf_ftoa_internal>:
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3724
{
    8005dd2a:	714d                	addi	sp,sp,-336
    8005dd2c:	e2a2                	sd	s0,320(sp)
    8005dd2e:	fe26                	sd	s1,312(sp)
    8005dd30:	f64e                	sd	s3,296(sp)
    8005dd32:	f252                	sd	s4,288(sp)
    8005dd34:	ee56                	sd	s5,280(sp)
    8005dd36:	ea5a                	sd	s6,272(sp)
    8005dd38:	e686                	sd	ra,328(sp)
    8005dd3a:	fa4a                	sd	s2,304(sp)
    8005dd3c:	e65e                	sd	s7,264(sp)
    8005dd3e:	e262                	sd	s8,256(sp)
    8005dd40:	fde6                	sd	s9,248(sp)
    8005dd42:	f9ea                	sd	s10,240(sp)
    8005dd44:	f5ee                	sd	s11,232(sp)
    8005dd46:	8a3e                	mv	s4,a5
quickjs-nuttx/libbf.c:3725
    bf_context_t *ctx = a2->ctx;
    8005dd48:	619c                	ld	a5,0(a1)
quickjs-nuttx/libbf.c:3724
{
    8005dd4a:	8aae                	mv	s5,a1
    8005dd4c:	8b2a                	mv	s6,a0
quickjs-nuttx/libbf.c:3731
    dbuf_init2(s, ctx, bf_dbuf_realloc);
    8005dd4e:	85be                	mv	a1,a5
quickjs-nuttx/libbf.c:3724
{
    8005dd50:	8432                	mv	s0,a2
quickjs-nuttx/libbf.c:3731
    dbuf_init2(s, ctx, bf_dbuf_realloc);
    8005dd52:	1908                	addi	a0,sp,176
    8005dd54:	ffff9617          	auipc	a2,0xffff9
    8005dd58:	f6460613          	addi	a2,a2,-156 # 80056cb8 <bf_dbuf_realloc>
quickjs-nuttx/libbf.c:3724
{
    8005dd5c:	84ba                	mv	s1,a4
quickjs-nuttx/libbf.c:3725
    bf_context_t *ctx = a2->ctx;
    8005dd5e:	e43e                	sd	a5,8(sp)
quickjs-nuttx/libbf.c:3724
{
    8005dd60:	89b6                	mv	s3,a3
quickjs-nuttx/libbf.c:3731
    dbuf_init2(s, ctx, bf_dbuf_realloc);
    8005dd62:	c0ff30ef          	jal	ra,80051970 <dbuf_init2>
quickjs-nuttx/libbf.c:3732
    if (a2->expn == BF_EXP_NAN) {
    8005dd66:	010ab703          	ld	a4,16(s5)
    8005dd6a:	57fd                	li	a5,-1
    8005dd6c:	8385                	srli	a5,a5,0x1
quickjs-nuttx/libbf.c:3733
        dbuf_putstr(s, "NaN");
    8005dd6e:	0000d597          	auipc	a1,0xd
    8005dd72:	be258593          	addi	a1,a1,-1054 # 8006a950 <qjsc_repl+0x53a0>
quickjs-nuttx/libbf.c:3732
    if (a2->expn == BF_EXP_NAN) {
    8005dd76:	02f70b63          	beq	a4,a5,8005ddac <bf_ftoa_internal+0x82>
quickjs-nuttx/libbf.c:3735
        if (a2->sign)
    8005dd7a:	008aa783          	lw	a5,8(s5)
    8005dd7e:	c791                	beqz	a5,8005dd8a <bf_ftoa_internal+0x60>
quickjs-nuttx/libbf.c:3736
            dbuf_putc(s, '-');
    8005dd80:	02d00593          	li	a1,45
    8005dd84:	1908                	addi	a0,sp,176
    8005dd86:	d5df30ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libbf.c:3737
        if (a2->expn == BF_EXP_INF) {
    8005dd8a:	010abc83          	ld	s9,16(s5)
    8005dd8e:	57f5                	li	a5,-3
    8005dd90:	8385                	srli	a5,a5,0x1
    8005dd92:	04fc9e63          	bne	s9,a5,8005ddee <bf_ftoa_internal+0xc4>
quickjs-nuttx/libbf.c:3738
            if (flags & BF_FTOA_JS_QUIRKS)
    8005dd96:	80d9                	srli	s1,s1,0x16
    8005dd98:	8885                	andi	s1,s1,1
quickjs-nuttx/libbf.c:3741
                dbuf_putstr(s, "Inf");
    8005dd9a:	00023597          	auipc	a1,0x23
    8005dd9e:	86658593          	addi	a1,a1,-1946 # 80080600 <std_name.0+0x58>
quickjs-nuttx/libbf.c:3738
            if (flags & BF_FTOA_JS_QUIRKS)
    8005dda2:	c489                	beqz	s1,8005ddac <bf_ftoa_internal+0x82>
quickjs-nuttx/libbf.c:3739
                dbuf_putstr(s, "Infinity");
    8005dda4:	0000d597          	auipc	a1,0xd
    8005dda8:	a0c58593          	addi	a1,a1,-1524 # 8006a7b0 <qjsc_repl+0x5200>
    8005ddac:	1908                	addi	a0,sp,176
    8005ddae:	d4df30ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/libbf.c:4003
    dbuf_putc(s, '\0');
    8005ddb2:	4581                	li	a1,0
    8005ddb4:	1908                	addi	a0,sp,176
    8005ddb6:	d2df30ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libbf.c:4004
    if (dbuf_error(s))
    8005ddba:	47ae                	lw	a5,200(sp)
    8005ddbc:	40079363          	bnez	a5,8005e1c2 <bf_ftoa_internal+0x498>
quickjs-nuttx/libbf.c:4006
    if (plen)
    8005ddc0:	000b0663          	beqz	s6,8005ddcc <bf_ftoa_internal+0xa2>
quickjs-nuttx/libbf.c:4007
        *plen = s->size - 1;
    8005ddc4:	77ea                	ld	a5,184(sp)
    8005ddc6:	17fd                	addi	a5,a5,-1
    8005ddc8:	00fb3023          	sd	a5,0(s6)
quickjs-nuttx/libbf.c:4008
    return (char *)s->buf;
    8005ddcc:	7b4a                	ld	s6,176(sp)
quickjs-nuttx/libbf.c:4014
}
    8005ddce:	60b6                	ld	ra,328(sp)
    8005ddd0:	6416                	ld	s0,320(sp)
    8005ddd2:	74f2                	ld	s1,312(sp)
    8005ddd4:	7952                	ld	s2,304(sp)
    8005ddd6:	79b2                	ld	s3,296(sp)
    8005ddd8:	7a12                	ld	s4,288(sp)
    8005ddda:	6af2                	ld	s5,280(sp)
    8005dddc:	6bb2                	ld	s7,264(sp)
    8005ddde:	6c12                	ld	s8,256(sp)
    8005dde0:	7cee                	ld	s9,248(sp)
    8005dde2:	7d4e                	ld	s10,240(sp)
    8005dde4:	7dae                	ld	s11,232(sp)
    8005dde6:	855a                	mv	a0,s6
    8005dde8:	6b52                	ld	s6,272(sp)
    8005ddea:	6171                	addi	sp,sp,336
    8005ddec:	8082                	ret
quickjs-nuttx/libbf.c:3747
            if ((radix & (radix - 1)) != 0)
    8005ddee:	fff4079b          	addiw	a5,s0,-1
    8005ddf2:	8fe1                	and	a5,a5,s0
    8005ddf4:	2781                	sext.w	a5,a5
quickjs-nuttx/libbf.c:3748
                radix_bits = 0;
    8005ddf6:	4901                	li	s2,0
quickjs-nuttx/libbf.c:3747
            if ((radix & (radix - 1)) != 0)
    8005ddf8:	e789                	bnez	a5,8005de02 <bf_ftoa_internal+0xd8>
quickjs-nuttx/libbf.c:3750
                radix_bits = ceil_log2(radix);
    8005ddfa:	8522                	mv	a0,s0
    8005ddfc:	92cf90ef          	jal	ra,80056f28 <ceil_log2>
    8005de00:	892a                	mv	s2,a0
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005de02:	67a2                	ld	a5,8(sp)
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3752
            fmt = flags & BF_FTOA_FORMAT_MASK;
    8005de04:	00030bb7          	lui	s7,0x30
    8005de08:	0174fbb3          	and	s7,s1,s7
bf_init():
quickjs-nuttx/libbf.c:203
    r->ctx = s;
    8005de0c:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005de0e:	57fd                	li	a5,-1
    8005de10:	03f79d93          	slli	s11,a5,0x3f
quickjs-nuttx/libbf.c:204
    r->sign = 0;
    8005de14:	c082                	sw	zero,64(sp)
quickjs-nuttx/libbf.c:205
    r->expn = BF_EXP_ZERO;
    8005de16:	e4ee                	sd	s11,72(sp)
quickjs-nuttx/libbf.c:206
    r->len = 0;
    8005de18:	e882                	sd	zero,80(sp)
quickjs-nuttx/libbf.c:207
    r->tab = NULL;
    8005de1a:	ec82                	sd	zero,88(sp)
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3754
            if (fmt == BF_FTOA_FORMAT_FRAC) {
    8005de1c:	6741                	lui	a4,0x10
    8005de1e:	1aeb9f63          	bne	s7,a4,8005dfdc <bf_ftoa_internal+0x2b2>
quickjs-nuttx/libbf.c:3755 (discriminator 1)
                if (is_dec || radix_bits != 0) {
    8005de22:	014967b3          	or	a5,s2,s4
    8005de26:	2781                	sext.w	a5,a5
    8005de28:	10078d63          	beqz	a5,8005df42 <bf_ftoa_internal+0x218>
quickjs-nuttx/libbf.c:3756
                    if (bf_set(a1, a2))
    8005de2c:	85d6                	mv	a1,s5
    8005de2e:	1828                	addi	a0,sp,56
    8005de30:	9f2fa0ef          	jal	ra,80058022 <bf_set>
    8005de34:	38051463          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3760
                        if (bfdec_round((bfdec_t *)a1, prec, (flags & BF_RND_MASK) | BF_FLAG_RADPNT_PREC) & BF_ST_MEM_ERROR)
    8005de38:	0074f613          	andi	a2,s1,7
    8005de3c:	01066613          	ori	a2,a2,16
quickjs-nuttx/libbf.c:3759
                    if (is_dec) {
    8005de40:	080a0963          	beqz	s4,8005ded2 <bf_ftoa_internal+0x1a8>
quickjs-nuttx/libbf.c:3760
                        if (bfdec_round((bfdec_t *)a1, prec, (flags & BF_RND_MASK) | BF_FLAG_RADPNT_PREC) & BF_ST_MEM_ERROR)
    8005de44:	85ce                	mv	a1,s3
    8005de46:	1828                	addi	a0,sp,56
    8005de48:	8f5fc0ef          	jal	ra,8005a73c <bfdec_round>
    8005de4c:	02057513          	andi	a0,a0,32
    8005de50:	36051663          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3762
                        n = a1->expn;
    8005de54:	67a6                	ld	a5,72(sp)
    8005de56:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:3770
                    if (flags & BF_FTOA_ADD_PREFIX) {
    8005de58:	80d5                	srli	s1,s1,0x15
    8005de5a:	8885                	andi	s1,s1,1
    8005de5c:	c88d                	beqz	s1,8005de8e <bf_ftoa_internal+0x164>
quickjs-nuttx/libbf.c:3771
                        if (radix == 16)
    8005de5e:	47c1                	li	a5,16
quickjs-nuttx/libbf.c:3772
                            dbuf_putstr(s, "0x");
    8005de60:	00023597          	auipc	a1,0x23
    8005de64:	90858593          	addi	a1,a1,-1784 # 80080768 <std_name.0+0x1c0>
quickjs-nuttx/libbf.c:3771
                        if (radix == 16)
    8005de68:	02f40063          	beq	s0,a5,8005de88 <bf_ftoa_internal+0x15e>
quickjs-nuttx/libbf.c:3773
                        else if (radix == 8)
    8005de6c:	47a1                	li	a5,8
quickjs-nuttx/libbf.c:3774
                            dbuf_putstr(s, "0o");
    8005de6e:	00023597          	auipc	a1,0x23
    8005de72:	90258593          	addi	a1,a1,-1790 # 80080770 <std_name.0+0x1c8>
quickjs-nuttx/libbf.c:3773
                        else if (radix == 8)
    8005de76:	00f40963          	beq	s0,a5,8005de88 <bf_ftoa_internal+0x15e>
quickjs-nuttx/libbf.c:3775
                        else if (radix == 2)
    8005de7a:	4789                	li	a5,2
    8005de7c:	00f41963          	bne	s0,a5,8005de8e <bf_ftoa_internal+0x164>
quickjs-nuttx/libbf.c:3776
                            dbuf_putstr(s, "0b");
    8005de80:	00023597          	auipc	a1,0x23
    8005de84:	8f858593          	addi	a1,a1,-1800 # 80080778 <std_name.0+0x1d0>
    8005de88:	1908                	addi	a0,sp,176
    8005de8a:	c71f30ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/libbf.c:3778
                    if (a1->expn == BF_EXP_ZERO) {
    8005de8e:	6726                	ld	a4,72(sp)
    8005de90:	57fd                	li	a5,-1
    8005de92:	17fe                	slli	a5,a5,0x3f
    8005de94:	06f71163          	bne	a4,a5,8005def6 <bf_ftoa_internal+0x1cc>
quickjs-nuttx/libbf.c:3779
                        dbuf_putstr(s, "0");
    8005de98:	0002b597          	auipc	a1,0x2b
    8005de9c:	df058593          	addi	a1,a1,-528 # 80088c88 <qjsc_qjscalc+0x7db0>
    8005dea0:	1908                	addi	a0,sp,176
    8005dea2:	c59f30ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/libbf.c:3780
                        if (prec > 0) {
    8005dea6:	02098263          	beqz	s3,8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3781
                            dbuf_putstr(s, ".");
    8005deaa:	0000d597          	auipc	a1,0xd
    8005deae:	a0e58593          	addi	a1,a1,-1522 # 8006a8b8 <qjsc_repl+0x5308>
    8005deb2:	1908                	addi	a0,sp,176
    8005deb4:	c47f30ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/libbf.c:3782
                            for(i = 0; i < prec; i++) {
    8005deb8:	4401                	li	s0,0
quickjs-nuttx/libbf.c:3783 (discriminator 3)
                                dbuf_putc(s, '0');
    8005deba:	03000593          	li	a1,48
    8005debe:	1908                	addi	a0,sp,176
quickjs-nuttx/libbf.c:3782 (discriminator 3)
                            for(i = 0; i < prec; i++) {
    8005dec0:	0405                	addi	s0,s0,1
quickjs-nuttx/libbf.c:3783 (discriminator 3)
                                dbuf_putc(s, '0');
    8005dec2:	c21f30ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libbf.c:3782 (discriminator 3)
                            for(i = 0; i < prec; i++) {
    8005dec6:	fe899ae3          	bne	s3,s0,8005deba <bf_ftoa_internal+0x190>
quickjs-nuttx/libbf.c:4000 (discriminator 5)
            bf_delete(a1);
    8005deca:	1828                	addi	a0,sp,56
    8005decc:	bdff80ef          	jal	ra,80056aaa <bf_delete>
    8005ded0:	b5cd                	j	8005ddb2 <bf_ftoa_internal+0x88>
quickjs-nuttx/libbf.c:3766
                        if (bf_round(a1, prec * radix_bits, (flags & BF_RND_MASK) | BF_FLAG_RADPNT_PREC) & BF_ST_MEM_ERROR)
    8005ded2:	033905b3          	mul	a1,s2,s3
    8005ded6:	1828                	addi	a0,sp,56
    8005ded8:	c1afa0ef          	jal	ra,800582f2 <bf_round>
    8005dedc:	02057513          	andi	a0,a0,32
    8005dee0:	2c051e63          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3768
                        n = ceil_div(a1->expn, radix_bits);
    8005dee4:	6526                	ld	a0,72(sp)
ceil_div():
quickjs-nuttx/libbf.c:133
    if (a >= 0)
    8005dee6:	00054463          	bltz	a0,8005deee <bf_ftoa_internal+0x1c4>
quickjs-nuttx/libbf.c:134
        return (a + b - 1) / b;
    8005deea:	157d                	addi	a0,a0,-1
    8005deec:	954a                	add	a0,a0,s2
quickjs-nuttx/libbf.c:136
        return a / b;
    8005deee:	03254933          	div	s2,a0,s2
bf_ftoa_internal():
quickjs-nuttx/libbf.c:3768
                        n = ceil_div(a1->expn, radix_bits);
    8005def2:	f44a                	sd	s2,40(sp)
    8005def4:	b795                	j	8005de58 <bf_ftoa_internal+0x12e>
quickjs-nuttx/libbf.c:3787
                        n_digits = prec + n;
    8005def6:	7722                	ld	a4,40(sp)
    8005def8:	99ba                	add	s3,s3,a4
quickjs-nuttx/libbf.c:3788
                        if (n <= 0) {
    8005defa:	02e04c63          	bgtz	a4,8005df32 <bf_ftoa_internal+0x208>
quickjs-nuttx/libbf.c:3790
                            dbuf_putstr(s, "0.");
    8005defe:	00022597          	auipc	a1,0x22
    8005df02:	73a58593          	addi	a1,a1,1850 # 80080638 <std_name.0+0x90>
    8005df06:	1908                	addi	a0,sp,176
    8005df08:	bf3f30ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/libbf.c:3791
                            for(i = 0; i < -n; i++) {
    8005df0c:	4481                	li	s1,0
quickjs-nuttx/libbf.c:3791 (discriminator 1)
    8005df0e:	77a2                	ld	a5,40(sp)
    8005df10:	40f007b3          	neg	a5,a5
    8005df14:	00f4c863          	blt	s1,a5,8005df24 <bf_ftoa_internal+0x1fa>
quickjs-nuttx/libbf.c:3794
                            if (n_digits > 0) {
    8005df18:	fb3059e3          	blez	s3,8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3795
                                output_digits(s, a1, radix, n_digits, n_digits, is_dec);
    8005df1c:	87d2                	mv	a5,s4
    8005df1e:	874e                	mv	a4,s3
quickjs-nuttx/libbf.c:3987
                        output_digits(s, a1, radix, n_digits, n_digits, is_dec);
    8005df20:	86ba                	mv	a3,a4
    8005df22:	a811                	j	8005df36 <bf_ftoa_internal+0x20c>
quickjs-nuttx/libbf.c:3792 (discriminator 3)
                                dbuf_putc(s, '0');
    8005df24:	03000593          	li	a1,48
    8005df28:	1908                	addi	a0,sp,176
    8005df2a:	bb9f30ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libbf.c:3791 (discriminator 3)
                            for(i = 0; i < -n; i++) {
    8005df2e:	0485                	addi	s1,s1,1
    8005df30:	bff9                	j	8005df0e <bf_ftoa_internal+0x1e4>
quickjs-nuttx/libbf.c:3798
                            output_digits(s, a1, radix, n_digits, n, is_dec);
    8005df32:	87d2                	mv	a5,s4
    8005df34:	86ce                	mv	a3,s3
quickjs-nuttx/libbf.c:3995
                            output_digits(s, a1, radix, n_digits, n, is_dec);
    8005df36:	8622                	mv	a2,s0
    8005df38:	182c                	addi	a1,sp,56
    8005df3a:	1908                	addi	a0,sp,176
    8005df3c:	b31ff0ef          	jal	ra,8005da6c <output_digits>
    8005df40:	b769                	j	8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3806
                    a->tab = a2->tab;
    8005df42:	020ab783          	ld	a5,32(s5)
quickjs-nuttx/libbf.c:3808
                    a->expn = a2->expn;
    8005df46:	ed66                	sd	s9,152(sp)
quickjs-nuttx/libbf.c:3809
                    a->sign = 0;
    8005df48:	c902                	sw	zero,144(sp)
quickjs-nuttx/libbf.c:3806
                    a->tab = a2->tab;
    8005df4a:	f53e                	sd	a5,168(sp)
quickjs-nuttx/libbf.c:3807
                    a->len = a2->len;
    8005df4c:	018ab783          	ld	a5,24(s5)
quickjs-nuttx/libbf.c:3812
                    n = 1 + bf_mul_log2_radix(bf_max(a->expn, 0), radix, TRUE, TRUE);
    8005df50:	0004059b          	sext.w	a1,s0
    8005df54:	8566                	mv	a0,s9
quickjs-nuttx/libbf.c:3807
                    a->len = a2->len;
    8005df56:	f13e                	sd	a5,160(sp)
quickjs-nuttx/libbf.c:3812
                    n = 1 + bf_mul_log2_radix(bf_max(a->expn, 0), radix, TRUE, TRUE);
    8005df58:	000cd363          	bgez	s9,8005df5e <bf_ftoa_internal+0x234>
    8005df5c:	4501                	li	a0,0
    8005df5e:	4685                	li	a3,1
    8005df60:	4605                	li	a2,1
    8005df62:	a0efb0ef          	jal	ra,80059170 <bf_mul_log2_radix>
    8005df66:	0505                	addi	a0,a0,1
quickjs-nuttx/libbf.c:3813
                    n_digits = n + prec;
    8005df68:	99aa                	add	s3,s3,a0
quickjs-nuttx/libbf.c:3812
                    n = 1 + bf_mul_log2_radix(bf_max(a->expn, 0), radix, TRUE, TRUE);
    8005df6a:	f42a                	sd	a0,40(sp)
quickjs-nuttx/libbf.c:3814
                    n1 = n;
    8005df6c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/libbf.c:3815
                    if (bf_convert_to_radix(a1, &n1, a, radix, n_digits,
    8005df6e:	4805                	li	a6,1
    8005df70:	0074f793          	andi	a5,s1,7
    8005df74:	874e                	mv	a4,s3
    8005df76:	86a2                	mv	a3,s0
    8005df78:	0130                	addi	a2,sp,136
    8005df7a:	180c                	addi	a1,sp,48
    8005df7c:	1828                	addi	a0,sp,56
    8005df7e:	ecaff0ef          	jal	ra,8005d648 <bf_convert_to_radix>
    8005df82:	22051d63          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3819
                    output_digits(s, a1, radix, n_digits, n, is_dec);
    8005df86:	7722                	ld	a4,40(sp)
    8005df88:	4781                	li	a5,0
    8005df8a:	86ce                	mv	a3,s3
    8005df8c:	8622                	mv	a2,s0
    8005df8e:	182c                	addi	a1,sp,56
    8005df90:	1908                	addi	a0,sp,176
quickjs-nuttx/libbf.c:3818
                    start = s->size;
    8005df92:	74ea                	ld	s1,184(sp)
quickjs-nuttx/libbf.c:3819
                    output_digits(s, a1, radix, n_digits, n, is_dec);
    8005df94:	ad9ff0ef          	jal	ra,8005da6c <output_digits>
quickjs-nuttx/libbf.c:3822
                    while ((pos + 1) < s->size && s->buf[pos] == '0' &&
    8005df98:	75ca                	ld	a1,176(sp)
    8005df9a:	766a                	ld	a2,184(sp)
quickjs-nuttx/libbf.c:3818
                    start = s->size;
    8005df9c:	8726                	mv	a4,s1
    8005df9e:	00958533          	add	a0,a1,s1
    8005dfa2:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:3822
                    while ((pos + 1) < s->size && s->buf[pos] == '0' &&
    8005dfa4:	03000893          	li	a7,48
    8005dfa8:	02e00693          	li	a3,46
    8005dfac:	843a                	mv	s0,a4
    8005dfae:	0705                	addi	a4,a4,1
    8005dfb0:	00c77b63          	bgeu	a4,a2,8005dfc6 <bf_ftoa_internal+0x29c>
quickjs-nuttx/libbf.c:3822 (discriminator 1)
    8005dfb4:	0007c803          	lbu	a6,0(a5)
    8005dfb8:	01181763          	bne	a6,a7,8005dfc6 <bf_ftoa_internal+0x29c>
quickjs-nuttx/libbf.c:3822 (discriminator 2)
    8005dfbc:	0017c803          	lbu	a6,1(a5)
    8005dfc0:	0785                	addi	a5,a5,1
    8005dfc2:	fed815e3          	bne	a6,a3,8005dfac <bf_ftoa_internal+0x282>
quickjs-nuttx/libbf.c:3825
                    if (pos > start) {
    8005dfc6:	f084f2e3          	bgeu	s1,s0,8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3826
                        memmove(s->buf + start, s->buf + pos, s->size - pos);
    8005dfca:	8e01                	sub	a2,a2,s0
    8005dfcc:	95a2                	add	a1,a1,s0
    8005dfce:	433050ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/libbf.c:3827
                        s->size -= (pos - start);
    8005dfd2:	77ea                	ld	a5,184(sp)
    8005dfd4:	94be                	add	s1,s1,a5
    8005dfd6:	8c81                	sub	s1,s1,s0
    8005dfd8:	fd26                	sd	s1,184(sp)
    8005dfda:	bdc5                	j	8005deca <bf_ftoa_internal+0x1a0>
quickjs-nuttx/libbf.c:3832
                if (is_dec) {
    8005dfdc:	080a0263          	beqz	s4,8005e060 <bf_ftoa_internal+0x336>
quickjs-nuttx/libbf.c:3833
                    if (bf_set(a1, a2))
    8005dfe0:	85d6                	mv	a1,s5
    8005dfe2:	1828                	addi	a0,sp,56
    8005dfe4:	83efa0ef          	jal	ra,80058022 <bf_set>
    8005dfe8:	1c051a63          	bnez	a0,8005e1bc <bf_ftoa_internal+0x492>
quickjs-nuttx/libbf.c:3835
                    if (fmt == BF_FTOA_FORMAT_FIXED) {
    8005dfec:	040b9563          	bnez	s7,8005e036 <bf_ftoa_internal+0x30c>
quickjs-nuttx/libbf.c:3838
                        if (bfdec_round((bfdec_t *)a1, prec, (flags & BF_RND_MASK)) & BF_ST_MEM_ERROR)
    8005dff0:	0074f613          	andi	a2,s1,7
    8005dff4:	85ce                	mv	a1,s3
    8005dff6:	1828                	addi	a0,sp,56
    8005dff8:	f44fc0ef          	jal	ra,8005a73c <bfdec_round>
    8005dffc:	02057513          	andi	a0,a0,32
