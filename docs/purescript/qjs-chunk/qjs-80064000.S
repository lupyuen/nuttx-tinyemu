    80063000:	00140493          	addi	s1,s0,1
nuttx/libs/libc/stdlib/lib_strtold.c:701
  for (i = 0; i < 3 && (*s | 32) == "nan"[i]; i++)
    80063004:	02076713          	ori	a4,a4,32
    80063008:	6cd71e63          	bne	a4,a3,800636e4 <strtox+0x76e>
    8006300c:	00244703          	lbu	a4,2(s0)
nuttx/libs/libc/stdlib/lib_strtold.c:703
      s++;
    80063010:	00240493          	addi	s1,s0,2
nuttx/libs/libc/stdlib/lib_strtold.c:701
  for (i = 0; i < 3 && (*s | 32) == "nan"[i]; i++)
    80063014:	02076713          	ori	a4,a4,32
    80063018:	6cf71863          	bne	a4,a5,800636e8 <strtox+0x772>
nuttx/libs/libc/stdlib/lib_strtold.c:703 (discriminator 4)
      s++;
    8006301c:	040d                	addi	s0,s0,3
nuttx/libs/libc/stdlib/lib_strtold.c:708 (discriminator 4)
    }

  if (i == 3)
    {
      ifexist(endptr, s);
    8006301e:	0002f797          	auipc	a5,0x2f
    80063022:	27278793          	addi	a5,a5,626 # 80092290 <g_dtoa_scale_up+0x158>
    80063026:	00098463          	beqz	s3,8006302e <strtox+0xb8>
nuttx/libs/libc/stdlib/lib_strtold.c:708 (discriminator 1)
    8006302a:	0089b023          	sd	s0,0(s3)
nuttx/libs/libc/stdlib/lib_strtold.c:709
      return NAN;
    8006302e:	6384                	ld	s1,0(a5)
    80063030:	6780                	ld	s0,8(a5)
    80063032:	acc5                	j	80063322 <strtox+0x3ac>
nuttx/libs/libc/stdlib/lib_strtold.c:672
      s++;
    80063034:	0405                	addi	s0,s0,1
    80063036:	b795                	j	80062f9a <strtox+0x24>
nuttx/libs/libc/stdlib/lib_strtold.c:643
  bool negative = 0;
    80063038:	4c01                	li	s8,0
    8006303a:	b741                	j	80062fba <strtox+0x44>
nuttx/libs/libc/stdlib/lib_strtold.c:689 (discriminator 4)
  for (i = 0; i < 8 && (*s | 32) == "infinity"[i]; i++)
    8006303c:	0785                	addi	a5,a5,1
nuttx/libs/libc/stdlib/lib_strtold.c:691 (discriminator 4)
      s++;
    8006303e:	0405                	addi	s0,s0,1
nuttx/libs/libc/stdlib/lib_strtold.c:689 (discriminator 4)
  for (i = 0; i < 8 && (*s | 32) == "infinity"[i]; i++)
    80063040:	f8a794e3          	bne	a5,a0,80062fc8 <strtox+0x52>
nuttx/libs/libc/stdlib/lib_strtold.c:696
      ifexist(endptr, s);
    80063044:	00098463          	beqz	s3,8006304c <strtox+0xd6>
nuttx/libs/libc/stdlib/lib_strtold.c:696 (discriminator 1)
    80063048:	0089b023          	sd	s0,0(s3)
nuttx/libs/libc/stdlib/lib_strtold.c:697 (discriminator 3)
      return negative ? -INFINITY : INFINITY;
    8006304c:	0002f797          	auipc	a5,0x2f
    80063050:	25478793          	addi	a5,a5,596 # 800922a0 <g_dtoa_scale_up+0x168>
    80063054:	fc0c0de3          	beqz	s8,8006302e <strtox+0xb8>
nuttx/libs/libc/stdlib/lib_strtold.c:697
    80063058:	0002f797          	auipc	a5,0x2f
    8006305c:	22878793          	addi	a5,a5,552 # 80092280 <g_dtoa_scale_up+0x148>
    80063060:	b7f9                	j	8006302e <strtox+0xb8>
hexfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:459
  for (; c == '0'; c = shgetc(f))
    80063062:	77c2                	ld	a5,48(sp)
    80063064:	00178693          	addi	a3,a5,1
    80063068:	f836                	sd	a3,48(sp)
    8006306a:	0007c783          	lbu	a5,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:461
      gotdig = 1;
    8006306e:	4685                	li	a3,1
    80063070:	a511                	j	80063674 <strtox+0x6fe>
nuttx/libs/libc/stdlib/lib_strtold.c:471
      for (rp = 0; c == '0'; c = shgetc(f), rp--)
    80063072:	77c2                	ld	a5,48(sp)
    80063074:	1cfd                	addi	s9,s9,-1
    80063076:	00178693          	addi	a3,a5,1
    8006307a:	f836                	sd	a3,48(sp)
    8006307c:	0007c783          	lbu	a5,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:473
          gotdig = 1;
    80063080:	4685                	li	a3,1
    80063082:	ad01                	j	80063692 <strtox+0x71c>
nuttx/libs/libc/stdlib/lib_strtold.c:443
  int gotrad  = 0;
    80063084:	4d81                	li	s11,0
nuttx/libs/libc/stdlib/lib_strtold.c:449
  long_long rp = 0;
    80063086:	4c81                	li	s9,0
    80063088:	ad01                	j	80063698 <strtox+0x722>
nuttx/libs/libc/stdlib/lib_strtold.c:479
      if (c == '.')
    8006308a:	00e79f63          	bne	a5,a4,800630a8 <strtox+0x132>
nuttx/libs/libc/stdlib/lib_strtold.c:481
          if (gotrad)
    8006308e:	0a0d9d63          	bnez	s11,80063148 <strtox+0x1d2>
    80063092:	866a                	mv	a2,s10
nuttx/libs/libc/stdlib/lib_strtold.c:487
          gotrad = 1;
    80063094:	4d85                	li	s11,1
nuttx/libs/libc/stdlib/lib_strtold.c:477
  for (; isxdigit(c) || c == '.'; c = shgetc(f))
    80063096:	77c2                	ld	a5,48(sp)
    80063098:	8cea                	mv	s9,s10
    8006309a:	8d32                	mv	s10,a2
    8006309c:	00178593          	addi	a1,a5,1
    800630a0:	f82e                	sd	a1,48(sp)
    800630a2:	0007c783          	lbu	a5,0(a5)
    800630a6:	a531                	j	800636b2 <strtox+0x73c>
nuttx/libs/libc/stdlib/lib_strtold.c:492
          if (c > '9')
    800630a8:	03900713          	li	a4,57
    800630ac:	02f75263          	bge	a4,a5,800630d0 <strtox+0x15a>
nuttx/libs/libc/stdlib/lib_strtold.c:494
              d = (c | 32) + 10 - 'a';
    800630b0:	0207e793          	ori	a5,a5,32
    800630b4:	fa97879b          	addiw	a5,a5,-87
nuttx/libs/libc/stdlib/lib_strtold.c:501
          if (dc < 8)
    800630b8:	471d                	li	a4,7
    800630ba:	01a74e63          	blt	a4,s10,800630d6 <strtox+0x160>
nuttx/libs/libc/stdlib/lib_strtold.c:503
              x = x * 16 + d;
    800630be:	0049191b          	slliw	s2,s2,0x4
    800630c2:	00f9093b          	addw	s2,s2,a5
nuttx/libs/libc/stdlib/lib_strtold.c:515
          dc++;
    800630c6:	001d0613          	addi	a2,s10,1
nuttx/libs/libc/stdlib/lib_strtold.c:491
          gotdig = 1;
    800630ca:	4685                	li	a3,1
nuttx/libs/libc/stdlib/lib_strtold.c:515
          dc++;
    800630cc:	8d66                	mv	s10,s9
    800630ce:	b7e1                	j	80063096 <strtox+0x120>
nuttx/libs/libc/stdlib/lib_strtold.c:498
              d = c - '0';
    800630d0:	fd07879b          	addiw	a5,a5,-48
    800630d4:	b7d5                	j	800630b8 <strtox+0x142>
nuttx/libs/libc/stdlib/lib_strtold.c:505
          else if (dc < ldbl_mant_dig / 4 + 1)
    800630d6:	4771                	li	a4,28
    800630d8:	05a74063          	blt	a4,s10,80063118 <strtox+0x1a2>
    800630dc:	e83e                	sd	a5,16(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:507
              y += d * (scale /= 16);
    800630de:	0002f797          	auipc	a5,0x2f
    800630e2:	1d278793          	addi	a5,a5,466 # 800922b0 <g_dtoa_scale_up+0x178>
    800630e6:	6390                	ld	a2,0(a5)
    800630e8:	6794                	ld	a3,8(a5)
    800630ea:	855a                	mv	a0,s6
    800630ec:	85de                	mv	a1,s7
    800630ee:	bd3a20ef          	jal	ra,80005cc0 <__multf3>
    800630f2:	67c2                	ld	a5,16(sp)
    800630f4:	8b2a                	mv	s6,a0
    800630f6:	8bae                	mv	s7,a1
    800630f8:	853e                	mv	a0,a5
    800630fa:	9f9a30ef          	jal	ra,80006af2 <__floatsitf>
    800630fe:	865a                	mv	a2,s6
    80063100:	86de                	mv	a3,s7
    80063102:	bbfa20ef          	jal	ra,80005cc0 <__multf3>
    80063106:	862a                	mv	a2,a0
    80063108:	86ae                	mv	a3,a1
    8006310a:	8526                	mv	a0,s1
    8006310c:	85a2                	mv	a1,s0
    8006310e:	b99a10ef          	jal	ra,80004ca6 <__addtf3>
    80063112:	84aa                	mv	s1,a0
    80063114:	842e                	mv	s0,a1
    80063116:	bf45                	j	800630c6 <strtox+0x150>
nuttx/libs/libc/stdlib/lib_strtold.c:509
          else if (d && !gottail)
    80063118:	d7dd                	beqz	a5,800630c6 <strtox+0x150>
    8006311a:	67a2                	ld	a5,8(sp)
    8006311c:	f7cd                	bnez	a5,800630c6 <strtox+0x150>
nuttx/libs/libc/stdlib/lib_strtold.c:511
              y += 0.5 * scale;
    8006311e:	0002f797          	auipc	a5,0x2f
    80063122:	1a278793          	addi	a5,a5,418 # 800922c0 <g_dtoa_scale_up+0x188>
    80063126:	6390                	ld	a2,0(a5)
    80063128:	6794                	ld	a3,8(a5)
    8006312a:	855a                	mv	a0,s6
    8006312c:	85de                	mv	a1,s7
    8006312e:	b93a20ef          	jal	ra,80005cc0 <__multf3>
    80063132:	862a                	mv	a2,a0
    80063134:	86ae                	mv	a3,a1
    80063136:	8526                	mv	a0,s1
    80063138:	85a2                	mv	a1,s0
    8006313a:	b6da10ef          	jal	ra,80004ca6 <__addtf3>
nuttx/libs/libc/stdlib/lib_strtold.c:512
              gottail = 1;
    8006313e:	4785                	li	a5,1
nuttx/libs/libc/stdlib/lib_strtold.c:511
              y += 0.5 * scale;
    80063140:	84aa                	mv	s1,a0
    80063142:	842e                	mv	s0,a1
nuttx/libs/libc/stdlib/lib_strtold.c:512
              gottail = 1;
    80063144:	e43e                	sd	a5,8(sp)
    80063146:	b741                	j	800630c6 <strtox+0x150>
    80063148:	02e00793          	li	a5,46
    8006314c:	a341                	j	800636cc <strtox+0x756>
nuttx/libs/libc/stdlib/lib_strtold.c:524
          shunget(f);
    8006314e:	17f9                	addi	a5,a5,-2
    80063150:	a361                	j	800636d8 <strtox+0x762>
nuttx/libs/libc/stdlib/lib_strtold.c:527
      ifexist(endptr, f);
    80063152:	77c2                	ld	a5,48(sp)
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:344
          ifexist(endptr, f);
    80063154:	00f9b023          	sd	a5,0(s3)
    80063158:	a359                	j	800636de <strtox+0x768>
hexfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:531
  if (!gotrad)
    8006315a:	000d9363          	bnez	s11,80063160 <strtox+0x1ea>
    8006315e:	8cea                	mv	s9,s10
nuttx/libs/libc/stdlib/lib_strtold.c:536
  while (dc < 8)
    80063160:	469d                	li	a3,7
    80063162:	a021                	j	8006316a <strtox+0x1f4>
nuttx/libs/libc/stdlib/lib_strtold.c:538
      x *= 16, dc++;
    80063164:	0049191b          	slliw	s2,s2,0x4
    80063168:	0d05                	addi	s10,s10,1
nuttx/libs/libc/stdlib/lib_strtold.c:536
  while (dc < 8)
    8006316a:	ffa6dde3          	bge	a3,s10,80063164 <strtox+0x1ee>
nuttx/libs/libc/stdlib/lib_strtold.c:541
  if ((c | 32) == 'p')
    8006316e:	0207e793          	ori	a5,a5,32
    80063172:	07000713          	li	a4,112
    80063176:	00e79963          	bne	a5,a4,80063188 <strtox+0x212>
nuttx/libs/libc/stdlib/lib_strtold.c:543
      e2 = scanexp(&f, 1);
    8006317a:	1808                	addi	a0,sp,48
    8006317c:	d93ff0ef          	jal	ra,80062f0e <scanexp.constprop.0>
nuttx/libs/libc/stdlib/lib_strtold.c:544
      if (e2 == llong_min)
    80063180:	57fd                	li	a5,-1
    80063182:	17fe                	slli	a5,a5,0x3f
    80063184:	00f51663          	bne	a0,a5,80063190 <strtox+0x21a>
nuttx/libs/libc/stdlib/lib_strtold.c:552
      shunget(f);
    80063188:	77c2                	ld	a5,48(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:451
  long_long e2 = 0;
    8006318a:	4501                	li	a0,0
nuttx/libs/libc/stdlib/lib_strtold.c:552
      shunget(f);
    8006318c:	17fd                	addi	a5,a5,-1
    8006318e:	f83e                	sd	a5,48(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:555
  ifexist(endptr, f);
    80063190:	00098563          	beqz	s3,8006319a <strtox+0x224>
    80063194:	77c2                	ld	a5,48(sp)
    80063196:	00f9b023          	sd	a5,0(s3)
nuttx/libs/libc/stdlib/lib_strtold.c:557
  if (!x)
    8006319a:	54090263          	beqz	s2,800636de <strtox+0x768>
nuttx/libs/libc/stdlib/lib_strtold.c:556
  e2 += 4 * rp - 32;
    8006319e:	ff8c8993          	addi	s3,s9,-8 # eff8 <asinh-0x7fff1008>
    800631a2:	098a                	slli	s3,s3,0x2
    800631a4:	99aa                	add	s3,s3,a0
nuttx/libs/libc/stdlib/lib_strtold.c:562
  if (e2 > -emin)
    800631a6:	4140073b          	negw	a4,s4
    800631aa:	000a079b          	sext.w	a5,s4
    800631ae:	03375463          	bge	a4,s3,800631d6 <strtox+0x260>
nuttx/libs/libc/stdlib/lib_strtold.c:564
      set_errno(ERANGE);
    800631b2:	867fd0ef          	jal	ra,80060a18 <__errno>
    800631b6:	02200793          	li	a5,34
    800631ba:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/stdlib/lib_strtold.c:565
      return ldbl_max * ldbl_max;
    800631bc:	0002f797          	auipc	a5,0x2f
    800631c0:	11478793          	addi	a5,a5,276 # 800922d0 <g_dtoa_scale_up+0x198>
    800631c4:	6390                	ld	a2,0(a5)
    800631c6:	6794                	ld	a3,8(a5)
    800631c8:	8532                	mv	a0,a2
    800631ca:	85b6                	mv	a1,a3
    800631cc:	af5a20ef          	jal	ra,80005cc0 <__multf3>
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:398
      return x;
    800631d0:	84aa                	mv	s1,a0
    800631d2:	842e                	mv	s0,a1
    800631d4:	a291                	j	80063318 <strtox+0x3a2>
hexfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:568
  if (e2 < emin - 2 * ldbl_mant_dig)
    800631d6:	f1e7879b          	addiw	a5,a5,-226
nuttx/libs/libc/stdlib/lib_strtold.c:576
      if (y >= 0.5)
    800631da:	0002fb17          	auipc	s6,0x2f
    800631de:	0e6b0b13          	addi	s6,s6,230 # 800922c0 <g_dtoa_scale_up+0x188>
nuttx/libs/libc/stdlib/lib_strtold.c:568
  if (e2 < emin - 2 * ldbl_mant_dig)
    800631e2:	04f9d663          	bge	s3,a5,8006322e <strtox+0x2b8>
nuttx/libs/libc/stdlib/lib_strtold.c:570
      set_errno(ERANGE);
    800631e6:	833fd0ef          	jal	ra,80060a18 <__errno>
    800631ea:	02200793          	li	a5,34
    800631ee:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/stdlib/lib_strtold.c:571
      return ldbl_min * ldbl_min;
    800631f0:	a1fd                	j	800636de <strtox+0x768>
nuttx/libs/libc/stdlib/lib_strtold.c:576
      if (y >= 0.5)
    800631f2:	000b3603          	ld	a2,0(s6)
    800631f6:	008b3683          	ld	a3,8(s6)
    800631fa:	8526                	mv	a0,s1
    800631fc:	85a2                	mv	a1,s0
nuttx/libs/libc/stdlib/lib_strtold.c:578
          x += x + 1;
    800631fe:	0019191b          	slliw	s2,s2,0x1
nuttx/libs/libc/stdlib/lib_strtold.c:576
      if (y >= 0.5)
    80063202:	a19a20ef          	jal	ra,80005c1a <__getf2>
    80063206:	12054f63          	bltz	a0,80063344 <strtox+0x3ce>
nuttx/libs/libc/stdlib/lib_strtold.c:579
          y += y - 1;
    8006320a:	000ab603          	ld	a2,0(s5)
    8006320e:	008ab683          	ld	a3,8(s5)
    80063212:	8526                	mv	a0,s1
    80063214:	85a2                	mv	a1,s0
    80063216:	8b0a30ef          	jal	ra,800062c6 <__subtf3>
    8006321a:	862a                	mv	a2,a0
    8006321c:	86ae                	mv	a3,a1
nuttx/libs/libc/stdlib/lib_strtold.c:578
          x += x + 1;
    8006321e:	2905                	addiw	s2,s2,1
nuttx/libs/libc/stdlib/lib_strtold.c:579
          y += y - 1;
    80063220:	8526                	mv	a0,s1
    80063222:	85a2                	mv	a1,s0
nuttx/libs/libc/stdlib/lib_strtold.c:584
          y += y;
    80063224:	a83a10ef          	jal	ra,80004ca6 <__addtf3>
    80063228:	84aa                	mv	s1,a0
    8006322a:	842e                	mv	s0,a1
nuttx/libs/libc/stdlib/lib_strtold.c:587
      e2--;
    8006322c:	19fd                	addi	s3,s3,-1
nuttx/libs/libc/stdlib/lib_strtold.c:574
  while (x < 0x80000000)
    8006322e:	fc0952e3          	bgez	s2,800631f2 <strtox+0x27c>
nuttx/libs/libc/stdlib/lib_strtold.c:590
  if (bits > 32 + e2 - emin)
    80063232:	6702                	ld	a4,0(sp)
    80063234:	02098793          	addi	a5,s3,32
    80063238:	414787b3          	sub	a5,a5,s4
    8006323c:	0002fb17          	auipc	s6,0x2f
    80063240:	024b0b13          	addi	s6,s6,36 # 80092260 <g_dtoa_scale_up+0x128>
    80063244:	10e7c563          	blt	a5,a4,8006334e <strtox+0x3d8>
    80063248:	4a02                	lw	s4,0(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:599
  if (bits < ldbl_mant_dig)
    8006324a:	07000793          	li	a5,112
    8006324e:	1147c863          	blt	a5,s4,8006335e <strtox+0x3e8>
nuttx/libs/libc/stdlib/lib_strtold.c:601
      bias = scalbnx(1, 2., 32 + ldbl_mant_dig - bits - 1);
    80063252:	09000793          	li	a5,144
    80063256:	414787bb          	subw	a5,a5,s4
    8006325a:	41f7d71b          	sraiw	a4,a5,0x1f
    8006325e:	00f74bb3          	xor	s7,a4,a5
    80063262:	000abc83          	ld	s9,0(s5)
    80063266:	40eb8bbb          	subw	s7,s7,a4
    8006326a:	000b3603          	ld	a2,0(s6)
    8006326e:	008b3683          	ld	a3,8(s6)
    80063272:	008aba83          	ld	s5,8(s5)
    80063276:	1b82                	slli	s7,s7,0x20
    80063278:	020bdb93          	srli	s7,s7,0x20
scalbnx():
nuttx/libs/libc/stdlib/lib_strtold.c:247
      if (exp & 1)
    8006327c:	001bf793          	andi	a5,s7,1
    80063280:	cb99                	beqz	a5,80063296 <strtox+0x320>
nuttx/libs/libc/stdlib/lib_strtold.c:255
              number *= base;
    80063282:	8566                	mv	a0,s9
    80063284:	85d6                	mv	a1,s5
    80063286:	e432                	sd	a2,8(sp)
    80063288:	e036                	sd	a3,0(sp)
    8006328a:	a37a20ef          	jal	ra,80005cc0 <__multf3>
    8006328e:	6622                	ld	a2,8(sp)
    80063290:	6682                	ld	a3,0(sp)
    80063292:	8caa                	mv	s9,a0
    80063294:	8aae                	mv	s5,a1
nuttx/libs/libc/stdlib/lib_strtold.c:260
      base *= base;
    80063296:	8532                	mv	a0,a2
    80063298:	85b6                	mv	a1,a3
    8006329a:	a27a20ef          	jal	ra,80005cc0 <__multf3>
nuttx/libs/libc/stdlib/lib_strtold.c:259
      exp >>= 1;
    8006329e:	401bdb93          	srai	s7,s7,0x1
nuttx/libs/libc/stdlib/lib_strtold.c:260
      base *= base;
    800632a2:	862a                	mv	a2,a0
    800632a4:	86ae                	mv	a3,a1
nuttx/libs/libc/stdlib/lib_strtold.c:245
  while (exp)
    800632a6:	fc0b9be3          	bnez	s7,8006327c <strtox+0x306>
hexfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:604
  if (bits < 32 && y && !(x & 1))
    800632aa:	47fd                	li	a5,31
    800632ac:	0147cf63          	blt	a5,s4,800632ca <strtox+0x354>
    800632b0:	4601                	li	a2,0
    800632b2:	4681                	li	a3,0
    800632b4:	8526                	mv	a0,s1
    800632b6:	85a2                	mv	a1,s0
    800632b8:	8cfa20ef          	jal	ra,80005b86 <__eqtf2>
    800632bc:	c519                	beqz	a0,800632ca <strtox+0x354>
    800632be:	00197793          	andi	a5,s2,1
    800632c2:	e781                	bnez	a5,800632ca <strtox+0x354>
nuttx/libs/libc/stdlib/lib_strtold.c:606
      x++, y = 0;
    800632c4:	2905                	addiw	s2,s2,1
    800632c6:	4481                	li	s1,0
    800632c8:	4401                	li	s0,0
nuttx/libs/libc/stdlib/lib_strtold.c:609
  y = bias + x + y;
    800632ca:	854a                	mv	a0,s2
    800632cc:	87fa30ef          	jal	ra,80006b4a <__floatunsitf>
    800632d0:	8666                	mv	a2,s9
    800632d2:	86d6                	mv	a3,s5
    800632d4:	9d3a10ef          	jal	ra,80004ca6 <__addtf3>
    800632d8:	8626                	mv	a2,s1
    800632da:	86a2                	mv	a3,s0
    800632dc:	9cba10ef          	jal	ra,80004ca6 <__addtf3>
nuttx/libs/libc/stdlib/lib_strtold.c:610
  y -= bias;
    800632e0:	8666                	mv	a2,s9
    800632e2:	86d6                	mv	a3,s5
    800632e4:	fe3a20ef          	jal	ra,800062c6 <__subtf3>
nuttx/libs/libc/stdlib/lib_strtold.c:614
  if (!y)
    800632e8:	4601                	li	a2,0
    800632ea:	4681                	li	a3,0
nuttx/libs/libc/stdlib/lib_strtold.c:610
  y -= bias;
    800632ec:	84aa                	mv	s1,a0
    800632ee:	842e                	mv	s0,a1
nuttx/libs/libc/stdlib/lib_strtold.c:614
  if (!y)
    800632f0:	897a20ef          	jal	ra,80005b86 <__eqtf2>
    800632f4:	e511                	bnez	a0,80063300 <strtox+0x38a>
nuttx/libs/libc/stdlib/lib_strtold.c:616
      set_errno(ERANGE);
    800632f6:	f22fd0ef          	jal	ra,80060a18 <__errno>
    800632fa:	02200793          	li	a5,34
    800632fe:	c11c                	sw	a5,0(a0)
scalbnx():
nuttx/libs/libc/stdlib/lib_strtold.c:240
  if (e < 0)
    80063300:	43f9d793          	srai	a5,s3,0x3f
hexfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:606
      x++, y = 0;
    80063304:	000b3603          	ld	a2,0(s6)
    80063308:	008b3683          	ld	a3,8(s6)
    8006330c:	0137c933          	xor	s2,a5,s3
    80063310:	40f90933          	sub	s2,s2,a5
scalbnx():
nuttx/libs/libc/stdlib/lib_strtold.c:245
  while (exp)
    80063314:	04091863          	bnez	s2,80063364 <strtox+0x3ee>
strtox():
nuttx/libs/libc/stdlib/lib_strtold.c:730
    {
      ifexist(endptr, (FAR char *)str);
      return 0;
    }

  return negative ? -y : y;
    80063318:	000c0563          	beqz	s8,80063322 <strtox+0x3ac>
nuttx/libs/libc/stdlib/lib_strtold.c:730 (discriminator 1)
    8006331c:	57fd                	li	a5,-1
    8006331e:	17fe                	slli	a5,a5,0x3f
    80063320:	8c3d                	xor	s0,s0,a5
nuttx/libs/libc/stdlib/lib_strtold.c:731
}
    80063322:	60ee                	ld	ra,216(sp)
    80063324:	85a2                	mv	a1,s0
    80063326:	644e                	ld	s0,208(sp)
    80063328:	690e                	ld	s2,192(sp)
    8006332a:	79ea                	ld	s3,184(sp)
    8006332c:	7a4a                	ld	s4,176(sp)
    8006332e:	7aaa                	ld	s5,168(sp)
    80063330:	7b0a                	ld	s6,160(sp)
    80063332:	6bea                	ld	s7,152(sp)
    80063334:	6c4a                	ld	s8,144(sp)
    80063336:	6caa                	ld	s9,136(sp)
    80063338:	6d0a                	ld	s10,128(sp)
    8006333a:	7de6                	ld	s11,120(sp)
    8006333c:	8526                	mv	a0,s1
    8006333e:	64ae                	ld	s1,200(sp)
    80063340:	612d                	addi	sp,sp,224
    80063342:	8082                	ret
hexfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:584
          y += y;
    80063344:	8626                	mv	a2,s1
    80063346:	86a2                	mv	a3,s0
    80063348:	8526                	mv	a0,s1
    8006334a:	85a2                	mv	a1,s0
    8006334c:	bde1                	j	80063224 <strtox+0x2ae>
nuttx/libs/libc/stdlib/lib_strtold.c:592
      bits = 32 + e2 - emin;
    8006334e:	41498a3b          	subw	s4,s3,s4
    80063352:	020a0a1b          	addiw	s4,s4,32
nuttx/libs/libc/stdlib/lib_strtold.c:593
      if (bits < 0)
    80063356:	ee0a5ae3          	bgez	s4,8006324a <strtox+0x2d4>
nuttx/libs/libc/stdlib/lib_strtold.c:595
          bits = 0;
    8006335a:	4a01                	li	s4,0
    8006335c:	bddd                	j	80063252 <strtox+0x2dc>
nuttx/libs/libc/stdlib/lib_strtold.c:448
  long_double bias = 0;
    8006335e:	4c81                	li	s9,0
    80063360:	4a81                	li	s5,0
    80063362:	b7a5                	j	800632ca <strtox+0x354>
scalbnx():
nuttx/libs/libc/stdlib/lib_strtold.c:247
      if (exp & 1)
    80063364:	00197793          	andi	a5,s2,1
    80063368:	cf89                	beqz	a5,80063382 <strtox+0x40c>
nuttx/libs/libc/stdlib/lib_strtold.c:251
              number /= base;
    8006336a:	e432                	sd	a2,8(sp)
    8006336c:	e036                	sd	a3,0(sp)
    8006336e:	8526                	mv	a0,s1
    80063370:	85a2                	mv	a1,s0
nuttx/libs/libc/stdlib/lib_strtold.c:249
          if (e < 0)
    80063372:	0209d163          	bgez	s3,80063394 <strtox+0x41e>
nuttx/libs/libc/stdlib/lib_strtold.c:251
              number /= base;
    80063376:	960a20ef          	jal	ra,800054d6 <__divtf3>
    8006337a:	6682                	ld	a3,0(sp)
    8006337c:	6622                	ld	a2,8(sp)
    8006337e:	84aa                	mv	s1,a0
    80063380:	842e                	mv	s0,a1
nuttx/libs/libc/stdlib/lib_strtold.c:260
      base *= base;
    80063382:	8532                	mv	a0,a2
    80063384:	85b6                	mv	a1,a3
    80063386:	93ba20ef          	jal	ra,80005cc0 <__multf3>
nuttx/libs/libc/stdlib/lib_strtold.c:259
      exp >>= 1;
    8006338a:	40195913          	srai	s2,s2,0x1
nuttx/libs/libc/stdlib/lib_strtold.c:260
      base *= base;
    8006338e:	862a                	mv	a2,a0
    80063390:	86ae                	mv	a3,a1
    80063392:	b749                	j	80063314 <strtox+0x39e>
nuttx/libs/libc/stdlib/lib_strtold.c:255
              number *= base;
    80063394:	92da20ef          	jal	ra,80005cc0 <__multf3>
    80063398:	6622                	ld	a2,8(sp)
    8006339a:	6682                	ld	a3,0(sp)
    8006339c:	84aa                	mv	s1,a0
    8006339e:	842e                	mv	s0,a1
    800633a0:	b7cd                	j	80063382 <strtox+0x40c>
strtox():
nuttx/libs/libc/stdlib/lib_strtold.c:720
  else if (isdigit(*s) || (*s == '.' && isdigit(*(s + 1))))
    800633a2:	fd07871b          	addiw	a4,a5,-48
    800633a6:	46a5                	li	a3,9
    800633a8:	00e6fc63          	bgeu	a3,a4,800633c0 <strtox+0x44a>
nuttx/libs/libc/stdlib/lib_strtold.c:720 (discriminator 1)
    800633ac:	02e00713          	li	a4,46
    800633b0:	24e79e63          	bne	a5,a4,8006360c <strtox+0x696>
nuttx/libs/libc/stdlib/lib_strtold.c:720 (discriminator 2)
    800633b4:	0014c783          	lbu	a5,1(s1)
    800633b8:	fd07879b          	addiw	a5,a5,-48
    800633bc:	24f6e863          	bltu	a3,a5,8006360c <strtox+0x696>
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:295
  const long p10s[] =
    800633c0:	04000613          	li	a2,64
    800633c4:	00001597          	auipc	a1,0x1
    800633c8:	74458593          	addi	a1,a1,1860 # 80064b08 <_srodata+0xd8>
    800633cc:	1808                	addi	a0,sp,48
    800633ce:	1df000ef          	jal	ra,80063dac <memcpy>
nuttx/libs/libc/stdlib/lib_strtold.c:307
  ifallzero(&f, 1);
    800633d2:	1008                	addi	a0,sp,32
nuttx/libs/libc/stdlib/lib_strtold.c:301
  f = ptr;
    800633d4:	f026                	sd	s1,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:307
  ifallzero(&f, 1);
    800633d6:	b0fff0ef          	jal	ra,80062ee4 <ifallzero.constprop.0>
nuttx/libs/libc/stdlib/lib_strtold.c:308
  c = shgetc(f);
    800633da:	7782                	ld	a5,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:302
  num_digit = 0;
    800633dc:	4401                	li	s0,0
nuttx/libs/libc/stdlib/lib_strtold.c:312
  for (; isdigit(c); c = shgetc(f))
    800633de:	46a5                	li	a3,9
nuttx/libs/libc/stdlib/lib_strtold.c:308
  c = shgetc(f);
    800633e0:	00178713          	addi	a4,a5,1
    800633e4:	f03a                	sd	a4,32(sp)
    800633e6:	0007c703          	lbu	a4,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:312
  for (; isdigit(c); c = shgetc(f))
    800633ea:	fd07061b          	addiw	a2,a4,-48
    800633ee:	7782                	ld	a5,32(sp)
    800633f0:	02c6f663          	bgeu	a3,a2,8006341c <strtox+0x4a6>
nuttx/libs/libc/stdlib/lib_strtold.c:317
  if (c == '.')
    800633f4:	02e00693          	li	a3,46
    800633f8:	8ca2                	mv	s9,s0
    800633fa:	00d71f63          	bne	a4,a3,80063418 <strtox+0x4a2>
nuttx/libs/libc/stdlib/lib_strtold.c:321
      if (ifallzero(&f, 1))
    800633fe:	1008                	addi	a0,sp,32
nuttx/libs/libc/stdlib/lib_strtold.c:319
      s = f;
    80063400:	f43e                	sd	a5,40(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:321
      if (ifallzero(&f, 1))
    80063402:	ae3ff0ef          	jal	ra,80062ee4 <ifallzero.constprop.0>
    80063406:	c115                	beqz	a0,8006342a <strtox+0x4b4>
nuttx/libs/libc/stdlib/lib_strtold.c:323
          c = shgetc(f);
    80063408:	7782                	ld	a5,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:324
          num_digit++;
    8006340a:	00140c93          	addi	s9,s0,1
nuttx/libs/libc/stdlib/lib_strtold.c:323
          c = shgetc(f);
    8006340e:	00178713          	addi	a4,a5,1
    80063412:	f03a                	sd	a4,32(sp)
    80063414:	0007c703          	lbu	a4,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:303
  num_decimal = 0;
    80063418:	4a01                	li	s4,0
    8006341a:	a035                	j	80063446 <strtox+0x4d0>
nuttx/libs/libc/stdlib/lib_strtold.c:312
  for (; isdigit(c); c = shgetc(f))
    8006341c:	00178713          	addi	a4,a5,1
    80063420:	f03a                	sd	a4,32(sp)
    80063422:	0007c703          	lbu	a4,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:314
      num_digit++;
    80063426:	0405                	addi	s0,s0,1
nuttx/libs/libc/stdlib/lib_strtold.c:312
  for (; isdigit(c); c = shgetc(f))
    80063428:	b7c9                	j	800633ea <strtox+0x474>
nuttx/libs/libc/stdlib/lib_strtold.c:328
          f = s;
    8006342a:	77a2                	ld	a5,40(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:330
          for (; isdigit(c); c = shgetc(f))
    8006342c:	46a5                	li	a3,9
nuttx/libs/libc/stdlib/lib_strtold.c:329
          c = shgetc(f);
    8006342e:	00178713          	addi	a4,a5,1
    80063432:	f03a                	sd	a4,32(sp)
    80063434:	0007c703          	lbu	a4,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:330
          for (; isdigit(c); c = shgetc(f))
    80063438:	fd07061b          	addiw	a2,a4,-48
    8006343c:	7782                	ld	a5,32(sp)
    8006343e:	41940a33          	sub	s4,s0,s9
    80063442:	04c6f963          	bgeu	a3,a2,80063494 <strtox+0x51e>
nuttx/libs/libc/stdlib/lib_strtold.c:338
  if ((c | 32) == 'e' && (isdigit(*f) || ((*f == '+' || *f == '-') &&
    80063446:	02076713          	ori	a4,a4,32
    8006344a:	06500793          	li	a5,101
    8006344e:	7682                	ld	a3,32(sp)
    80063450:	04f71963          	bne	a4,a5,800634a2 <strtox+0x52c>
    80063454:	0006c703          	lbu	a4,0(a3)
    80063458:	4625                	li	a2,9
    8006345a:	fd07079b          	addiw	a5,a4,-48
    8006345e:	00f67d63          	bgeu	a2,a5,80063478 <strtox+0x502>
    80063462:	fd57071b          	addiw	a4,a4,-43
    80063466:	0fd77713          	andi	a4,a4,253
    8006346a:	ef05                	bnez	a4,800634a2 <strtox+0x52c>
nuttx/libs/libc/stdlib/lib_strtold.c:339
                                          (isdigit(*(f + 1))))))
    8006346c:	0016c783          	lbu	a5,1(a3)
nuttx/libs/libc/stdlib/lib_strtold.c:338
  if ((c | 32) == 'e' && (isdigit(*f) || ((*f == '+' || *f == '-') &&
    80063470:	fd07879b          	addiw	a5,a5,-48
    80063474:	02f66763          	bltu	a2,a5,800634a2 <strtox+0x52c>
nuttx/libs/libc/stdlib/lib_strtold.c:341
      num_decimal = scanexp(&f, 1) + num_decimal;
    80063478:	1008                	addi	a0,sp,32
    8006347a:	a95ff0ef          	jal	ra,80062f0e <scanexp.constprop.0>
    8006347e:	9a2a                	add	s4,s4,a0
nuttx/libs/libc/stdlib/lib_strtold.c:342
      if (num_decimal <= llong_min / 100)
    80063480:	00031797          	auipc	a5,0x31
    80063484:	8c07b783          	ld	a5,-1856(a5) # 80093d40 <_erodata+0x1ce>
    80063488:	00fa5f63          	bge	s4,a5,800634a6 <strtox+0x530>
nuttx/libs/libc/stdlib/lib_strtold.c:344
          ifexist(endptr, f);
    8006348c:	24098963          	beqz	s3,800636de <strtox+0x768>
    80063490:	7782                	ld	a5,32(sp)
    80063492:	b1c9                	j	80063154 <strtox+0x1de>
nuttx/libs/libc/stdlib/lib_strtold.c:330
          for (; isdigit(c); c = shgetc(f))
    80063494:	00178713          	addi	a4,a5,1
    80063498:	f03a                	sd	a4,32(sp)
    8006349a:	0007c703          	lbu	a4,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:332
              num_digit++;
    8006349e:	0c85                	addi	s9,s9,1
nuttx/libs/libc/stdlib/lib_strtold.c:330
          for (; isdigit(c); c = shgetc(f))
    800634a0:	bf61                	j	80063438 <strtox+0x4c2>
nuttx/libs/libc/stdlib/lib_strtold.c:350
      shunget(f);
    800634a2:	16fd                	addi	a3,a3,-1
    800634a4:	f036                	sd	a3,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:353
  ifexist(endptr, f);
    800634a6:	00098563          	beqz	s3,800634b0 <strtox+0x53a>
    800634aa:	7782                	ld	a5,32(sp)
    800634ac:	00f9b023          	sd	a5,0(s3)
nuttx/libs/libc/stdlib/lib_strtold.c:354
  if (num_digit == 0)
    800634b0:	220c8763          	beqz	s9,800636de <strtox+0x768>
nuttx/libs/libc/stdlib/lib_strtold.c:359
  f = ptr;
    800634b4:	f026                	sd	s1,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:364
  gotrad = 0;
    800634b6:	4d81                	li	s11,0
nuttx/libs/libc/stdlib/lib_strtold.c:361
  k = 0;
    800634b8:	4901                	li	s2,0
nuttx/libs/libc/stdlib/lib_strtold.c:362
  x = 0;
    800634ba:	4981                	li	s3,0
nuttx/libs/libc/stdlib/lib_strtold.c:363
  y = 0.;
    800634bc:	4481                	li	s1,0
    800634be:	4401                	li	s0,0
chtou():
nuttx/libs/libc/stdlib/lib_strtold.c:201
  if (isdigit(c))
    800634c0:	4d25                	li	s10,9
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:366
  while (chtou(*f, 10, &x) || *f == '.')
    800634c2:	02e00a93          	li	s5,46
chtou():
nuttx/libs/libc/stdlib/lib_strtold.c:219
  *number = *number * base + tmp;
    800634c6:	4ba9                	li	s7,10
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:391
          y = 1000000000 * y + x;
    800634c8:	0002fb17          	auipc	s6,0x2f
    800634cc:	e18b0b13          	addi	s6,s6,-488 # 800922e0 <g_dtoa_scale_up+0x1a8>
nuttx/libs/libc/stdlib/lib_strtold.c:366
  while (chtou(*f, 10, &x) || *f == '.')
    800634d0:	7702                	ld	a4,32(sp)
    800634d2:	00074783          	lbu	a5,0(a4)
chtou():
nuttx/libs/libc/stdlib/lib_strtold.c:201
  if (isdigit(c))
    800634d6:	fd07861b          	addiw	a2,a5,-48
    800634da:	06cd6b63          	bltu	s10,a2,80063550 <strtox+0x5da>
nuttx/libs/libc/stdlib/lib_strtold.c:214
  if (tmp >= base)
    800634de:	06cd4963          	blt	s10,a2,80063550 <strtox+0x5da>
nuttx/libs/libc/stdlib/lib_strtold.c:219
  *number = *number * base + tmp;
    800634e2:	033b89bb          	mulw	s3,s7,s3
    800634e6:	00c989bb          	addw	s3,s3,a2
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:368
      if (*f == '.')
    800634ea:	03579663          	bne	a5,s5,80063516 <strtox+0x5a0>
nuttx/libs/libc/stdlib/lib_strtold.c:370
          if (gotrad)
    800634ee:	000d9b63          	bnez	s11,80063504 <strtox+0x58e>
nuttx/libs/libc/stdlib/lib_strtold.c:375
          c = shgetc(f);
    800634f2:	0705                	addi	a4,a4,1
nuttx/libs/libc/stdlib/lib_strtold.c:377
          if (ifallzero(&s, 1))
    800634f4:	1028                	addi	a0,sp,40
nuttx/libs/libc/stdlib/lib_strtold.c:375
          c = shgetc(f);
    800634f6:	f03a                	sd	a4,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:376
          s = f;
    800634f8:	f43a                	sd	a4,40(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:377
          if (ifallzero(&s, 1))
    800634fa:	9ebff0ef          	jal	ra,80062ee4 <ifallzero.constprop.0>
    800634fe:	c539                	beqz	a0,8006354c <strtox+0x5d6>
nuttx/libs/libc/stdlib/lib_strtold.c:379
              f = s;
    80063500:	77a2                	ld	a5,40(sp)
    80063502:	f03e                	sd	a5,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:396
  if (num_digit < 9 && num_decimal == 0)
    80063504:	47a1                	li	a5,8
    80063506:	0597c863          	blt	a5,s9,80063556 <strtox+0x5e0>
    8006350a:	040a1663          	bnez	s4,80063556 <strtox+0x5e0>
nuttx/libs/libc/stdlib/lib_strtold.c:398
      return x;
    8006350e:	854e                	mv	a0,s3
    80063510:	e3aa30ef          	jal	ra,80006b4a <__floatunsitf>
    80063514:	b975                	j	800631d0 <strtox+0x25a>
nuttx/libs/libc/stdlib/lib_strtold.c:387
      f++;
    80063516:	0705                	addi	a4,a4,1
    80063518:	f03a                	sd	a4,32(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:388
      if (++k == 9)
    8006351a:	2905                	addiw	s2,s2,1
    8006351c:	fba91ae3          	bne	s2,s10,800634d0 <strtox+0x55a>
nuttx/libs/libc/stdlib/lib_strtold.c:391
          y = 1000000000 * y + x;
    80063520:	000b3603          	ld	a2,0(s6)
    80063524:	008b3683          	ld	a3,8(s6)
    80063528:	8526                	mv	a0,s1
    8006352a:	85a2                	mv	a1,s0
    8006352c:	f94a20ef          	jal	ra,80005cc0 <__multf3>
    80063530:	e42a                	sd	a0,8(sp)
    80063532:	854e                	mv	a0,s3
    80063534:	e02e                	sd	a1,0(sp)
    80063536:	e14a30ef          	jal	ra,80006b4a <__floatunsitf>
    8006353a:	6622                	ld	a2,8(sp)
    8006353c:	6682                	ld	a3,0(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:390
          k = 0;
    8006353e:	4901                	li	s2,0
nuttx/libs/libc/stdlib/lib_strtold.c:392
          x = 0;
    80063540:	4981                	li	s3,0
nuttx/libs/libc/stdlib/lib_strtold.c:391
          y = 1000000000 * y + x;
    80063542:	f64a10ef          	jal	ra,80004ca6 <__addtf3>
    80063546:	84aa                	mv	s1,a0
    80063548:	842e                	mv	s0,a1
nuttx/libs/libc/stdlib/lib_strtold.c:392
          x = 0;
    8006354a:	b759                	j	800634d0 <strtox+0x55a>
nuttx/libs/libc/stdlib/lib_strtold.c:383
          gotrad = 1;
    8006354c:	4d85                	li	s11,1
    8006354e:	b749                	j	800634d0 <strtox+0x55a>
nuttx/libs/libc/stdlib/lib_strtold.c:366
  while (chtou(*f, 10, &x) || *f == '.')
    80063550:	f9578fe3          	beq	a5,s5,800634ee <strtox+0x578>
    80063554:	bf45                	j	80063504 <strtox+0x58e>
nuttx/libs/libc/stdlib/lib_strtold.c:400
  else if (num_digit + num_decimal > ldbl_max_10_exp)
    80063556:	6705                	lui	a4,0x1
    80063558:	014c87b3          	add	a5,s9,s4
    8006355c:	34470713          	addi	a4,a4,836 # 1344 <asinh-0x7fffecbc>
    80063560:	00f75863          	bge	a4,a5,80063570 <strtox+0x5fa>
nuttx/libs/libc/stdlib/lib_strtold.c:406
      set_errno(ERANGE);
    80063564:	cb4fd0ef          	jal	ra,80060a18 <__errno>
    80063568:	02200793          	li	a5,34
    8006356c:	c11c                	sw	a5,0(a0)
    8006356e:	a031                	j	8006357a <strtox+0x604>
nuttx/libs/libc/stdlib/lib_strtold.c:404
  else if (num_digit + num_decimal < ldbl_min_10_exp)
    80063570:	777d                	lui	a4,0xfffff
    80063572:	cbd70713          	addi	a4,a4,-835 # ffffffffffffecbd <_ebss+0xffffffff7fefdb57>
    80063576:	fee7c7e3          	blt	a5,a4,80063564 <strtox+0x5ee>
nuttx/libs/libc/stdlib/lib_strtold.c:409
  if (k % 9)
    8006357a:	47a5                	li	a5,9
    8006357c:	02f967bb          	remw	a5,s2,a5
    80063580:	cb8d                	beqz	a5,800635b2 <strtox+0x63c>
nuttx/libs/libc/stdlib/lib_strtold.c:411
      y = y * p10s[k % 9 - 1] + x;
    80063582:	fff7891b          	addiw	s2,a5,-1
    80063586:	090e                	slli	s2,s2,0x3
    80063588:	189c                	addi	a5,sp,112
    8006358a:	993e                	add	s2,s2,a5
    8006358c:	fc093503          	ld	a0,-64(s2)
    80063590:	df4a30ef          	jal	ra,80006b84 <__floatditf>
    80063594:	8626                	mv	a2,s1
    80063596:	86a2                	mv	a3,s0
    80063598:	f28a20ef          	jal	ra,80005cc0 <__multf3>
    8006359c:	e42a                	sd	a0,8(sp)
    8006359e:	854e                	mv	a0,s3
    800635a0:	e02e                	sd	a1,0(sp)
    800635a2:	da8a30ef          	jal	ra,80006b4a <__floatunsitf>
    800635a6:	6622                	ld	a2,8(sp)
    800635a8:	6682                	ld	a3,0(sp)
    800635aa:	efca10ef          	jal	ra,80004ca6 <__addtf3>
    800635ae:	84aa                	mv	s1,a0
    800635b0:	842e                	mv	s0,a1
scalbnx():
nuttx/libs/libc/stdlib/lib_strtold.c:240
  if (e < 0)
    800635b2:	43fa5793          	srai	a5,s4,0x3f
    800635b6:	0147c933          	xor	s2,a5,s4
    800635ba:	40f90933          	sub	s2,s2,a5
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:363
  y = 0.;
    800635be:	0002f797          	auipc	a5,0x2f
    800635c2:	cb278793          	addi	a5,a5,-846 # 80092270 <g_dtoa_scale_up+0x138>
    800635c6:	6390                	ld	a2,0(a5)
    800635c8:	6794                	ld	a3,8(a5)
scalbnx():
nuttx/libs/libc/stdlib/lib_strtold.c:245
  while (exp)
    800635ca:	d40907e3          	beqz	s2,80063318 <strtox+0x3a2>
nuttx/libs/libc/stdlib/lib_strtold.c:247
      if (exp & 1)
    800635ce:	00197793          	andi	a5,s2,1
    800635d2:	cf89                	beqz	a5,800635ec <strtox+0x676>
nuttx/libs/libc/stdlib/lib_strtold.c:251
              number /= base;
    800635d4:	e432                	sd	a2,8(sp)
    800635d6:	e036                	sd	a3,0(sp)
    800635d8:	8526                	mv	a0,s1
    800635da:	85a2                	mv	a1,s0
nuttx/libs/libc/stdlib/lib_strtold.c:249
          if (e < 0)
    800635dc:	020a5163          	bgez	s4,800635fe <strtox+0x688>
nuttx/libs/libc/stdlib/lib_strtold.c:251
              number /= base;
    800635e0:	ef7a10ef          	jal	ra,800054d6 <__divtf3>
    800635e4:	6682                	ld	a3,0(sp)
    800635e6:	6622                	ld	a2,8(sp)
    800635e8:	84aa                	mv	s1,a0
    800635ea:	842e                	mv	s0,a1
nuttx/libs/libc/stdlib/lib_strtold.c:260
      base *= base;
    800635ec:	8532                	mv	a0,a2
    800635ee:	85b6                	mv	a1,a3
    800635f0:	ed0a20ef          	jal	ra,80005cc0 <__multf3>
nuttx/libs/libc/stdlib/lib_strtold.c:259
      exp >>= 1;
    800635f4:	40195913          	srai	s2,s2,0x1
nuttx/libs/libc/stdlib/lib_strtold.c:260
      base *= base;
    800635f8:	862a                	mv	a2,a0
    800635fa:	86ae                	mv	a3,a1
    800635fc:	b7f9                	j	800635ca <strtox+0x654>
nuttx/libs/libc/stdlib/lib_strtold.c:255
              number *= base;
    800635fe:	ec2a20ef          	jal	ra,80005cc0 <__multf3>
    80063602:	6622                	ld	a2,8(sp)
    80063604:	6682                	ld	a3,0(sp)
    80063606:	84aa                	mv	s1,a0
    80063608:	842e                	mv	s0,a1
    8006360a:	b7cd                	j	800635ec <strtox+0x676>
strtox():
nuttx/libs/libc/stdlib/lib_strtold.c:726
      ifexist(endptr, (FAR char *)str);
    8006360c:	00098463          	beqz	s3,80063614 <strtox+0x69e>
nuttx/libs/libc/stdlib/lib_strtold.c:726 (discriminator 1)
    80063610:	0149b023          	sd	s4,0(s3)
nuttx/libs/libc/stdlib/lib_strtold.c:727
      return 0;
    80063614:	4481                	li	s1,0
    80063616:	4401                	li	s0,0
    80063618:	b329                	j	80063322 <strtox+0x3ac>
nuttx/libs/libc/stdlib/lib_strtold.c:701
  for (i = 0; i < 3 && (*s | 32) == "nan"[i]; i++)
    8006361a:	4781                	li	a5,0
    8006361c:	84a2                	mv	s1,s0
nuttx/libs/libc/stdlib/lib_strtold.c:714
  s -= i;
    8006361e:	8c9d                	sub	s1,s1,a5
nuttx/libs/libc/stdlib/lib_strtold.c:715
  if (*s == '0' && (*(s + 1) | 32) == 'x')
    80063620:	0004c783          	lbu	a5,0(s1)
    80063624:	03000713          	li	a4,48
    80063628:	d6e79de3          	bne	a5,a4,800633a2 <strtox+0x42c>
nuttx/libs/libc/stdlib/lib_strtold.c:715 (discriminator 1)
    8006362c:	0014c783          	lbu	a5,1(s1)
    80063630:	07800713          	li	a4,120
    80063634:	0207e793          	ori	a5,a5,32
    80063638:	d8e794e3          	bne	a5,a4,800633c0 <strtox+0x44a>
    8006363c:	fff9061b          	addiw	a2,s2,-1
    80063640:	1602                	slli	a2,a2,0x20
    80063642:	9201                	srli	a2,a2,0x20
    80063644:	00031797          	auipc	a5,0x31
    80063648:	c0478793          	addi	a5,a5,-1020 # 80094248 <CSWTCH.70>
    8006364c:	97b2                	add	a5,a5,a2
    8006364e:	00078783          	lb	a5,0(a5)
    80063652:	0606                	slli	a2,a2,0x1
hexfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:444
  int gotdig  = 0;
    80063654:	4681                	li	a3,0
    80063656:	e03e                	sd	a5,0(sp)
    80063658:	00031797          	auipc	a5,0x31
    8006365c:	bf878793          	addi	a5,a5,-1032 # 80094250 <CSWTCH.71>
    80063660:	963e                	add	a2,a2,a5
nuttx/libs/libc/stdlib/lib_strtold.c:455
  c = shgetc(f);
    80063662:	00348793          	addi	a5,s1,3
    80063666:	f83e                	sd	a5,48(sp)
    80063668:	00061a03          	lh	s4,0(a2)
    8006366c:	0024c783          	lbu	a5,2(s1)
nuttx/libs/libc/stdlib/lib_strtold.c:459
  for (; c == '0'; c = shgetc(f))
    80063670:	03000713          	li	a4,48
    80063674:	9ee787e3          	beq	a5,a4,80063062 <strtox+0xec>
nuttx/libs/libc/stdlib/lib_strtold.c:464
  if (c == '.')
    80063678:	02e00713          	li	a4,46
    8006367c:	a0e794e3          	bne	a5,a4,80063084 <strtox+0x10e>
nuttx/libs/libc/stdlib/lib_strtold.c:467
      c = shgetc(f);
    80063680:	77c2                	ld	a5,48(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:471
      for (rp = 0; c == '0'; c = shgetc(f), rp--)
    80063682:	4c81                	li	s9,0
nuttx/libs/libc/stdlib/lib_strtold.c:467
      c = shgetc(f);
    80063684:	00178713          	addi	a4,a5,1
    80063688:	f83a                	sd	a4,48(sp)
    8006368a:	0007c783          	lbu	a5,0(a5)
nuttx/libs/libc/stdlib/lib_strtold.c:471
      for (rp = 0; c == '0'; c = shgetc(f), rp--)
    8006368e:	03000713          	li	a4,48
    80063692:	9ee780e3          	beq	a5,a4,80063072 <strtox+0xfc>
nuttx/libs/libc/stdlib/lib_strtold.c:466
      gotrad = 1;
    80063696:	4d85                	li	s11,1
nuttx/libs/libc/stdlib/lib_strtold.c:487
          gotrad = 1;
    80063698:	0002fa97          	auipc	s5,0x2f
    8006369c:	bb8a8a93          	addi	s5,s5,-1096 # 80092250 <g_dtoa_scale_up+0x118>
    800636a0:	000abb03          	ld	s6,0(s5)
    800636a4:	008abb83          	ld	s7,8(s5)
    800636a8:	e402                	sd	zero,8(sp)
    800636aa:	4d01                	li	s10,0
    800636ac:	4481                	li	s1,0
    800636ae:	4401                	li	s0,0
    800636b0:	4901                	li	s2,0
nuttx/libs/libc/stdlib/lib_strtold.c:477
  for (; isxdigit(c) || c == '.'; c = shgetc(f))
    800636b2:	853e                	mv	a0,a5
    800636b4:	ec36                	sd	a3,24(sp)
    800636b6:	e83e                	sd	a5,16(sp)
    800636b8:	3d7000ef          	jal	ra,8006428e <isxdigit>
    800636bc:	67c2                	ld	a5,16(sp)
    800636be:	66e2                	ld	a3,24(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:479
      if (c == '.')
    800636c0:	02e00713          	li	a4,46
nuttx/libs/libc/stdlib/lib_strtold.c:477
  for (; isxdigit(c) || c == '.'; c = shgetc(f))
    800636c4:	9c0513e3          	bnez	a0,8006308a <strtox+0x114>
    800636c8:	9ce783e3          	beq	a5,a4,8006308e <strtox+0x118>
nuttx/libs/libc/stdlib/lib_strtold.c:519
  if (!gotdig)
    800636cc:	a80697e3          	bnez	a3,8006315a <strtox+0x1e4>
nuttx/libs/libc/stdlib/lib_strtold.c:521
      shunget(f);
    800636d0:	77c2                	ld	a5,48(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:522
      if (gotrad)
    800636d2:	a60d9ee3          	bnez	s11,8006314e <strtox+0x1d8>
nuttx/libs/libc/stdlib/lib_strtold.c:521
      shunget(f);
    800636d6:	17fd                	addi	a5,a5,-1
nuttx/libs/libc/stdlib/lib_strtold.c:524
          shunget(f);
    800636d8:	f83e                	sd	a5,48(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:527
      ifexist(endptr, f);
    800636da:	a6099ce3          	bnez	s3,80063152 <strtox+0x1dc>
decfloat():
nuttx/libs/libc/stdlib/lib_strtold.c:345
          return zero;
    800636de:	4481                	li	s1,0
    800636e0:	4401                	li	s0,0
    800636e2:	b91d                	j	80063318 <strtox+0x3a2>
strtox():
nuttx/libs/libc/stdlib/lib_strtold.c:701
  for (i = 0; i < 3 && (*s | 32) == "nan"[i]; i++)
    800636e4:	4785                	li	a5,1
    800636e6:	bf25                	j	8006361e <strtox+0x6a8>
    800636e8:	4789                	li	a5,2
    800636ea:	bf15                	j	8006361e <strtox+0x6a8>

00000000800636ec <strtof>:
strtof():
nuttx/libs/libc/stdlib/lib_strtold.c:753
 *   A float number about str
 *
 ****************************************************************************/

float strtof(FAR const char *str, FAR char **endptr)
{
    800636ec:	1141                	addi	sp,sp,-16
nuttx/libs/libc/stdlib/lib_strtold.c:754
  return strtox(str, endptr, 1);
    800636ee:	4605                	li	a2,1
nuttx/libs/libc/stdlib/lib_strtold.c:753
{
    800636f0:	e406                	sd	ra,8(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:754
  return strtox(str, endptr, 1);
    800636f2:	885ff0ef          	jal	ra,80062f76 <strtox>
    800636f6:	d12a30ef          	jal	ra,80006c08 <__trunctfsf2>
nuttx/libs/libc/stdlib/lib_strtold.c:755
}
    800636fa:	60a2                	ld	ra,8(sp)
    800636fc:	0141                	addi	sp,sp,16
    800636fe:	8082                	ret

0000000080063700 <strtod>:
strtod():
nuttx/libs/libc/stdlib/lib_strtold.c:775
 ****************************************************************************/

#ifdef CONFIG_HAVE_DOUBLE

double strtod(FAR const char *str, FAR char **endptr)
{
    80063700:	1141                	addi	sp,sp,-16
nuttx/libs/libc/stdlib/lib_strtold.c:776
  return strtox(str, endptr, 2);
    80063702:	4609                	li	a2,2
nuttx/libs/libc/stdlib/lib_strtold.c:775
{
    80063704:	e406                	sd	ra,8(sp)
nuttx/libs/libc/stdlib/lib_strtold.c:776
  return strtox(str, endptr, 2);
    80063706:	871ff0ef          	jal	ra,80062f76 <strtox>
    8006370a:	ed8a30ef          	jal	ra,80006de2 <__trunctfdf2>
nuttx/libs/libc/stdlib/lib_strtold.c:777
}
    8006370e:	60a2                	ld	ra,8(sp)
    80063710:	0141                	addi	sp,sp,16
    80063712:	8082                	ret

0000000080063714 <strtold>:
strtold():
nuttx/libs/libc/stdlib/lib_strtold.c:800

#ifdef CONFIG_HAVE_LONG_DOUBLE

long double strtold(FAR const char *str, FAR char **endptr)
{
  return strtox(str, endptr, 3);
    80063714:	460d                	li	a2,3
    80063716:	861ff06f          	j	80062f76 <strtox>

000000008006371a <lib_checkbase>:
lib_checkbase():
nuttx/libs/libc/stdlib/lib_checkbase.c:55
 *   - if base is invalid (<2 or >36), return -1.
 *
 ****************************************************************************/

int lib_checkbase(int base, FAR const char **pptr)
{
    8006371a:	1101                	addi	sp,sp,-32
    8006371c:	e426                	sd	s1,8(sp)
    8006371e:	ec06                	sd	ra,24(sp)
    80063720:	e822                	sd	s0,16(sp)
    80063722:	e04a                	sd	s2,0(sp)
nuttx/libs/libc/stdlib/lib_checkbase.c:56
  FAR const char *ptr = *pptr;
    80063724:	6180                	ld	s0,0(a1)
nuttx/libs/libc/stdlib/lib_checkbase.c:55
{
    80063726:	84ae                	mv	s1,a1
nuttx/libs/libc/stdlib/lib_checkbase.c:60

  /* Check for unspecified base */

  if (!base)
    80063728:	ed15                	bnez	a0,80063764 <lib_checkbase+0x4a>
nuttx/libs/libc/stdlib/lib_checkbase.c:70

      /* Check for leading '0' - that would signify octal
       * or hex (or binary)
       */

      if (*ptr == '0')
    8006372a:	00044683          	lbu	a3,0(s0)
    8006372e:	03000713          	li	a4,48
nuttx/libs/libc/stdlib/lib_checkbase.c:64
      base = 10;
    80063732:	47a9                	li	a5,10
nuttx/libs/libc/stdlib/lib_checkbase.c:70
      if (*ptr == '0')
    80063734:	02e69563          	bne	a3,a4,8006375e <lib_checkbase+0x44>
nuttx/libs/libc/stdlib/lib_checkbase.c:79
          base = 8;
          ptr++;

          /* Check for hexadecimal */

          if ((*ptr == 'X' || *ptr == 'x') &&
    80063738:	00144783          	lbu	a5,1(s0)
    8006373c:	05800713          	li	a4,88
nuttx/libs/libc/stdlib/lib_checkbase.c:75
          ptr++;
    80063740:	00140913          	addi	s2,s0,1
nuttx/libs/libc/stdlib/lib_checkbase.c:79
          if ((*ptr == 'X' || *ptr == 'x') &&
    80063744:	0df7f793          	andi	a5,a5,223
    80063748:	04e79e63          	bne	a5,a4,800637a4 <lib_checkbase+0x8a>
nuttx/libs/libc/stdlib/lib_checkbase.c:80 (discriminator 3)
              lib_isbasedigit(ptr[1], 16, NULL))
    8006374c:	00244503          	lbu	a0,2(s0)
    80063750:	4601                	li	a2,0
    80063752:	45c1                	li	a1,16
    80063754:	2ec000ef          	jal	ra,80063a40 <lib_isbasedigit>
nuttx/libs/libc/stdlib/lib_checkbase.c:79 (discriminator 3)
          if ((*ptr == 'X' || *ptr == 'x') &&
    80063758:	c531                	beqz	a0,800637a4 <lib_checkbase+0x8a>
nuttx/libs/libc/stdlib/lib_checkbase.c:83
            {
              base = 16;
              ptr++;
    8006375a:	0409                	addi	s0,s0,2
nuttx/libs/libc/stdlib/lib_checkbase.c:82
              base = 16;
    8006375c:	47c1                	li	a5,16
nuttx/libs/libc/stdlib/lib_checkbase.c:109
      return -1; /* Means incorrect base */
    }

  /* Return the updated pointer and base */

  *pptr = ptr;
    8006375e:	e080                	sd	s0,0(s1)
nuttx/libs/libc/stdlib/lib_checkbase.c:110
  return base;
    80063760:	853e                	mv	a0,a5
    80063762:	a81d                	j	80063798 <lib_checkbase+0x7e>
nuttx/libs/libc/stdlib/lib_checkbase.c:92
  else if (base == 16)
    80063764:	4741                	li	a4,16
    80063766:	87aa                	mv	a5,a0
    80063768:	02e51263          	bne	a0,a4,8006378c <lib_checkbase+0x72>
nuttx/libs/libc/stdlib/lib_checkbase.c:94
      if (ptr[0] == '0' && (ptr[1] == 'X' || ptr[1] == 'x'))
    8006376c:	00044683          	lbu	a3,0(s0)
    80063770:	03000713          	li	a4,48
    80063774:	fee695e3          	bne	a3,a4,8006375e <lib_checkbase+0x44>
nuttx/libs/libc/stdlib/lib_checkbase.c:94 (discriminator 1)
    80063778:	00144703          	lbu	a4,1(s0)
    8006377c:	05800693          	li	a3,88
    80063780:	0df77713          	andi	a4,a4,223
    80063784:	fcd71de3          	bne	a4,a3,8006375e <lib_checkbase+0x44>
nuttx/libs/libc/stdlib/lib_checkbase.c:96
          ptr += 2;
    80063788:	0409                	addi	s0,s0,2
    8006378a:	bfd1                	j	8006375e <lib_checkbase+0x44>
nuttx/libs/libc/stdlib/lib_checkbase.c:102
  else if (base < 2 || base > 26)
    8006378c:	ffe5071b          	addiw	a4,a0,-2
    80063790:	46e1                	li	a3,24
nuttx/libs/libc/stdlib/lib_checkbase.c:104
      return -1; /* Means incorrect base */
    80063792:	557d                	li	a0,-1
nuttx/libs/libc/stdlib/lib_checkbase.c:102
  else if (base < 2 || base > 26)
    80063794:	fce6f5e3          	bgeu	a3,a4,8006375e <lib_checkbase+0x44>
nuttx/libs/libc/stdlib/lib_checkbase.c:111
}
    80063798:	60e2                	ld	ra,24(sp)
    8006379a:	6442                	ld	s0,16(sp)
    8006379c:	64a2                	ld	s1,8(sp)
    8006379e:	6902                	ld	s2,0(sp)
    800637a0:	6105                	addi	sp,sp,32
    800637a2:	8082                	ret
nuttx/libs/libc/stdlib/lib_checkbase.c:75
          ptr++;
    800637a4:	844a                	mv	s0,s2
nuttx/libs/libc/stdlib/lib_checkbase.c:74
          base = 8;
    800637a6:	47a1                	li	a5,8
    800637a8:	bf5d                	j	8006375e <lib_checkbase+0x44>

00000000800637aa <mkstemp>:
mkstemp():
nuttx/libs/libc/stdlib/lib_mkstemp.c:63
 *   Otherwise, -1 is returned if no suitable file could be created.
 *
 ****************************************************************************/

int mkstemp(FAR char *path_template)
{
    800637aa:	1141                	addi	sp,sp,-16
    800637ac:	e406                	sd	ra,8(sp)
nuttx/libs/libc/stdlib/lib_mkstemp.c:64
  FAR char *path = mktemp(path_template);
    800637ae:	3d9000ef          	jal	ra,80064386 <mktemp>
nuttx/libs/libc/stdlib/lib_mkstemp.c:67
  int ret = ERROR;

  if (path)
    800637b2:	c901                	beqz	a0,800637c2 <mkstemp+0x18>
nuttx/libs/libc/stdlib/lib_mkstemp.c:73
    {
      ret = open(path, O_RDWR | O_CREAT | O_EXCL, 0666);
    }

  return ret;
}
    800637b4:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/stdlib/lib_mkstemp.c:69
      ret = open(path, O_RDWR | O_CREAT | O_EXCL, 0666);
    800637b6:	1b600613          	li	a2,438
    800637ba:	45bd                	li	a1,15
nuttx/libs/libc/stdlib/lib_mkstemp.c:73
}
    800637bc:	0141                	addi	sp,sp,16
nuttx/libs/libc/stdlib/lib_mkstemp.c:69
      ret = open(path, O_RDWR | O_CREAT | O_EXCL, 0666);
    800637be:	0540106f          	j	80064812 <open>
nuttx/libs/libc/stdlib/lib_mkstemp.c:73
}
    800637c2:	60a2                	ld	ra,8(sp)
    800637c4:	557d                	li	a0,-1
    800637c6:	0141                	addi	sp,sp,16
    800637c8:	8082                	ret

00000000800637ca <atexit>:
atexit():
nuttx/libs/libc/stdlib/lib_atexit.c:188
 ****************************************************************************/

int atexit(CODE void (*func)(void))
{
  return atexit_register(ATTYPE_ATEXIT, func, NULL, NULL);
}
    800637ca:	4501                	li	a0,0
    800637cc:	8082                	ret

00000000800637ce <at_quick_exit>:
at_quick_exit():
    800637ce:	4501                	li	a0,0
    800637d0:	8082                	ret

00000000800637d2 <on_exit>:
on_exit():
nuttx/libs/libc/stdlib/lib_atexit.c:245

int on_exit(CODE void (*func)(int, FAR void *), FAR void *arg)
{
  return atexit_register(ATTYPE_ONEXIT, (CODE void (*)(void))func, arg,
                         NULL);
}
    800637d2:	4501                	li	a0,0
    800637d4:	8082                	ret

00000000800637d6 <__cxa_atexit>:
__cxa_atexit():
nuttx/libs/libc/stdlib/lib_atexit.c:270
int __cxa_atexit(CODE void (*func)(FAR void *), FAR void *arg,
                 FAR void *dso_handle)
{
  return atexit_register(ATTYPE_CXA, (CODE void (*)(void))func, arg,
                         dso_handle);
}
    800637d6:	4501                	li	a0,0
    800637d8:	8082                	ret

00000000800637da <memoutstream_puts>:
memoutstream_puts():
nuttx/libs/libc/stream/lib_memoutstream.c:39
 * Name: memoutstream_puts
 ****************************************************************************/

static int memoutstream_puts(FAR struct lib_outstream_s *self,
                             FAR const void *buf, int len)
{
    800637da:	1101                	addi	sp,sp,-32
    800637dc:	ec06                	sd	ra,24(sp)
    800637de:	e822                	sd	s0,16(sp)
    800637e0:	e426                	sd	s1,8(sp)
nuttx/libs/libc/stream/lib_memoutstream.c:44
  FAR struct lib_memoutstream_s *stream =
                                (FAR struct lib_memoutstream_s *)self;
  int ncopy;

  DEBUGASSERT(self);
    800637e2:	ed09                	bnez	a0,800637fc <memoutstream_puts+0x22>
    800637e4:	0002f617          	auipc	a2,0x2f
    800637e8:	b0c60613          	addi	a2,a2,-1268 # 800922f0 <g_dtoa_scale_up+0x1b8>
    800637ec:	02c00593          	li	a1,44
    800637f0:	0002f517          	auipc	a0,0x2f
    800637f4:	b0850513          	addi	a0,a0,-1272 # 800922f8 <g_dtoa_scale_up+0x1c0>
    800637f8:	964fd0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/stream/lib_memoutstream.c:51 (discriminator 2)
  /* If this will not overrun the buffer, then write the character to the
   * buffer.  Note that buflen was pre-decremented when the stream was
   * created so it is okay to write past the end of the buflen by one.
   */

  ncopy = stream->buflen - self->nput >= len ?
    800637fc:	411c                	lw	a5,0(a0)
    800637fe:	7500                	ld	s0,40(a0)
    80063800:	84aa                	mv	s1,a0
    80063802:	8c1d                	sub	s0,s0,a5
nuttx/libs/libc/stream/lib_memoutstream.c:52 (discriminator 2)
          len : stream->buflen - self->nput;
    80063804:	00867363          	bgeu	a2,s0,8006380a <memoutstream_puts+0x30>
    80063808:	8432                	mv	s0,a2
nuttx/libs/libc/stream/lib_memoutstream.c:51 (discriminator 2)
  ncopy = stream->buflen - self->nput >= len ?
    8006380a:	2401                	sext.w	s0,s0
nuttx/libs/libc/stream/lib_memoutstream.c:53 (discriminator 2)
  if (ncopy > 0)
    8006380c:	00805f63          	blez	s0,8006382a <memoutstream_puts+0x50>
nuttx/libs/libc/stream/lib_memoutstream.c:55
    {
      memcpy(stream->buffer + self->nput, buf, ncopy);
    80063810:	7088                	ld	a0,32(s1)
    80063812:	8622                	mv	a2,s0
    80063814:	953e                	add	a0,a0,a5
    80063816:	596000ef          	jal	ra,80063dac <memcpy>
nuttx/libs/libc/stream/lib_memoutstream.c:56
      self->nput += ncopy;
    8006381a:	409c                	lw	a5,0(s1)
    8006381c:	0087873b          	addw	a4,a5,s0
nuttx/libs/libc/stream/lib_memoutstream.c:57
      stream->buffer[self->nput] = '\0';
    80063820:	709c                	ld	a5,32(s1)
nuttx/libs/libc/stream/lib_memoutstream.c:56
      self->nput += ncopy;
    80063822:	c098                	sw	a4,0(s1)
nuttx/libs/libc/stream/lib_memoutstream.c:57
      stream->buffer[self->nput] = '\0';
    80063824:	97ba                	add	a5,a5,a4
    80063826:	00078023          	sb	zero,0(a5)
nuttx/libs/libc/stream/lib_memoutstream.c:61
    }

  return ncopy;
}
    8006382a:	60e2                	ld	ra,24(sp)
    8006382c:	8522                	mv	a0,s0
    8006382e:	6442                	ld	s0,16(sp)
    80063830:	64a2                	ld	s1,8(sp)
    80063832:	6105                	addi	sp,sp,32
    80063834:	8082                	ret

0000000080063836 <memoutstream_putc>:
memoutstream_putc():
nuttx/libs/libc/stream/lib_memoutstream.c:68
/****************************************************************************
 * Name: memoutstream_putc
 ****************************************************************************/

static void memoutstream_putc(FAR struct lib_outstream_s *self, int ch)
{
    80063836:	1101                	addi	sp,sp,-32
nuttx/libs/libc/stream/lib_memoutstream.c:69
  char tmp = ch;
    80063838:	00b107a3          	sb	a1,15(sp)
nuttx/libs/libc/stream/lib_memoutstream.c:70
  memoutstream_puts(self, &tmp, 1);
    8006383c:	4605                	li	a2,1
    8006383e:	00f10593          	addi	a1,sp,15
nuttx/libs/libc/stream/lib_memoutstream.c:68
{
    80063842:	ec06                	sd	ra,24(sp)
nuttx/libs/libc/stream/lib_memoutstream.c:70
  memoutstream_puts(self, &tmp, 1);
    80063844:	f97ff0ef          	jal	ra,800637da <memoutstream_puts>
nuttx/libs/libc/stream/lib_memoutstream.c:71
}
    80063848:	60e2                	ld	ra,24(sp)
    8006384a:	6105                	addi	sp,sp,32
    8006384c:	8082                	ret

000000008006384e <lib_memoutstream>:
lib_memoutstream():
nuttx/libs/libc/stream/lib_memoutstream.c:97
 ****************************************************************************/

void lib_memoutstream(FAR struct lib_memoutstream_s *outstream,
                      FAR char *bufstart, int buflen)
{
  outstream->common.putc  = memoutstream_putc;
    8006384e:	00000797          	auipc	a5,0x0
    80063852:	fe878793          	addi	a5,a5,-24 # 80063836 <memoutstream_putc>
    80063856:	e51c                	sd	a5,8(a0)
nuttx/libs/libc/stream/lib_memoutstream.c:98
  outstream->common.puts  = memoutstream_puts;
    80063858:	00000797          	auipc	a5,0x0
    8006385c:	f8278793          	addi	a5,a5,-126 # 800637da <memoutstream_puts>
    80063860:	e91c                	sd	a5,16(a0)
nuttx/libs/libc/stream/lib_memoutstream.c:102
  outstream->common.flush = lib_noflush;
  outstream->common.nput  = 0;          /* Will be buffer index */
  outstream->buffer       = bufstart;   /* Start of buffer */
  outstream->buflen       = buflen - 1; /* Save space for null terminator */
    80063862:	367d                	addiw	a2,a2,-1
nuttx/libs/libc/stream/lib_memoutstream.c:99
  outstream->common.flush = lib_noflush;
    80063864:	00000797          	auipc	a5,0x0
    80063868:	08c78793          	addi	a5,a5,140 # 800638f0 <lib_noflush>
    8006386c:	ed1c                	sd	a5,24(a0)
nuttx/libs/libc/stream/lib_memoutstream.c:100
  outstream->common.nput  = 0;          /* Will be buffer index */
    8006386e:	00052023          	sw	zero,0(a0)
nuttx/libs/libc/stream/lib_memoutstream.c:101
  outstream->buffer       = bufstart;   /* Start of buffer */
    80063872:	f10c                	sd	a1,32(a0)
nuttx/libs/libc/stream/lib_memoutstream.c:102
  outstream->buflen       = buflen - 1; /* Save space for null terminator */
    80063874:	f510                	sd	a2,40(a0)
nuttx/libs/libc/stream/lib_memoutstream.c:103
  outstream->buffer[0]    = '\0';       /* Start with an empty string */
    80063876:	00058023          	sb	zero,0(a1)
nuttx/libs/libc/stream/lib_memoutstream.c:104
}
    8006387a:	8082                	ret

000000008006387c <nulloutstream_puts>:
nulloutstream_puts():
nuttx/libs/libc/stream/lib_nulloutstream.c:44
  self->nput++;
}

static int nulloutstream_puts(FAR struct lib_outstream_s *self,
                              FAR const void *buffer, int len)
{
    8006387c:	87aa                	mv	a5,a0
nuttx/libs/libc/stream/lib_nulloutstream.c:47
  UNUSED(buffer);
  UNUSED(len);
  DEBUGASSERT(self);
    8006387e:	ed19                	bnez	a0,8006389c <nulloutstream_puts+0x20>
nuttx/libs/libc/stream/lib_nulloutstream.c:44
{
    80063880:	1141                	addi	sp,sp,-16
nuttx/libs/libc/stream/lib_nulloutstream.c:47
  DEBUGASSERT(self);
    80063882:	0002f617          	auipc	a2,0x2f
    80063886:	a6e60613          	addi	a2,a2,-1426 # 800922f0 <g_dtoa_scale_up+0x1b8>
    8006388a:	02f00593          	li	a1,47
    8006388e:	0002f517          	auipc	a0,0x2f
    80063892:	a8a50513          	addi	a0,a0,-1398 # 80092318 <g_dtoa_scale_up+0x1e0>
nuttx/libs/libc/stream/lib_nulloutstream.c:44
{
    80063896:	e406                	sd	ra,8(sp)
nuttx/libs/libc/stream/lib_nulloutstream.c:47
  DEBUGASSERT(self);
    80063898:	8c4fd0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/stream/lib_nulloutstream.c:48 (discriminator 2)
  self->nput += len;
    8006389c:	4398                	lw	a4,0(a5)
    8006389e:	8532                	mv	a0,a2
    800638a0:	9f31                	addw	a4,a4,a2
    800638a2:	c398                	sw	a4,0(a5)
nuttx/libs/libc/stream/lib_nulloutstream.c:50 (discriminator 2)
  return len;
}
    800638a4:	8082                	ret

00000000800638a6 <nulloutstream_putc>:
nulloutstream_putc():
nuttx/libs/libc/stream/lib_nulloutstream.c:38
  DEBUGASSERT(self);
    800638a6:	ed19                	bnez	a0,800638c4 <nulloutstream_putc+0x1e>
nuttx/libs/libc/stream/lib_nulloutstream.c:36
{
    800638a8:	1141                	addi	sp,sp,-16
nuttx/libs/libc/stream/lib_nulloutstream.c:38
  DEBUGASSERT(self);
    800638aa:	0002f617          	auipc	a2,0x2f
    800638ae:	a4660613          	addi	a2,a2,-1466 # 800922f0 <g_dtoa_scale_up+0x1b8>
    800638b2:	02600593          	li	a1,38
    800638b6:	0002f517          	auipc	a0,0x2f
    800638ba:	a6250513          	addi	a0,a0,-1438 # 80092318 <g_dtoa_scale_up+0x1e0>
nuttx/libs/libc/stream/lib_nulloutstream.c:36
{
    800638be:	e406                	sd	ra,8(sp)
nuttx/libs/libc/stream/lib_nulloutstream.c:38
  DEBUGASSERT(self);
    800638c0:	89cfd0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/stream/lib_nulloutstream.c:39 (discriminator 2)
  self->nput++;
    800638c4:	411c                	lw	a5,0(a0)
    800638c6:	2785                	addiw	a5,a5,1
    800638c8:	c11c                	sw	a5,0(a0)
    800638ca:	8082                	ret

00000000800638cc <lib_nulloutstream>:
lib_nulloutstream():
nuttx/libs/libc/stream/lib_nulloutstream.c:74
 *
 ****************************************************************************/

void lib_nulloutstream(FAR struct lib_outstream_s *stream)
{
  stream->putc  = nulloutstream_putc;
    800638cc:	00000797          	auipc	a5,0x0
    800638d0:	fda78793          	addi	a5,a5,-38 # 800638a6 <nulloutstream_putc>
    800638d4:	e51c                	sd	a5,8(a0)
nuttx/libs/libc/stream/lib_nulloutstream.c:75
  stream->puts  = nulloutstream_puts;
    800638d6:	00000797          	auipc	a5,0x0
    800638da:	fa678793          	addi	a5,a5,-90 # 8006387c <nulloutstream_puts>
    800638de:	e91c                	sd	a5,16(a0)
nuttx/libs/libc/stream/lib_nulloutstream.c:76
  stream->flush = lib_noflush;
    800638e0:	00000797          	auipc	a5,0x0
    800638e4:	01078793          	addi	a5,a5,16 # 800638f0 <lib_noflush>
    800638e8:	ed1c                	sd	a5,24(a0)
nuttx/libs/libc/stream/lib_nulloutstream.c:77
  stream->nput  = 0;
    800638ea:	00052023          	sw	zero,0(a0)
nuttx/libs/libc/stream/lib_nulloutstream.c:78
}
    800638ee:	8082                	ret

00000000800638f0 <lib_noflush>:
lib_noflush():
nuttx/libs/libc/stream/lib_libnoflush.c:57

int lib_noflush(FAR struct lib_outstream_s *self)
{
  UNUSED(self);
  return OK;
}
    800638f0:	4501                	li	a0,0
    800638f2:	8082                	ret

00000000800638f4 <stdoutstream_flush>:
stdoutstream_flush():
nuttx/libs/libc/stream/lib_stdoutstream.c:111
 * Name: stdoutstream_flush
 ****************************************************************************/

#ifndef CONFIG_STDIO_DISABLE_BUFFERING
static int stdoutstream_flush(FAR struct lib_outstream_s *self)
{
    800638f4:	1141                	addi	sp,sp,-16
    800638f6:	e406                	sd	ra,8(sp)
nuttx/libs/libc/stream/lib_stdoutstream.c:115
  FAR struct lib_stdoutstream_s *stream =
                                (FAR struct lib_stdoutstream_s *)self;

  DEBUGASSERT(stream != NULL && stream->handle != NULL);
    800638f8:	c119                	beqz	a0,800638fe <stdoutstream_flush+0xa>
nuttx/libs/libc/stream/lib_stdoutstream.c:115 (discriminator 2)
    800638fa:	7108                	ld	a0,32(a0)
    800638fc:	ed09                	bnez	a0,80063916 <stdoutstream_flush+0x22>
nuttx/libs/libc/stream/lib_stdoutstream.c:115
    800638fe:	0002f617          	auipc	a2,0x2f
    80063902:	a3a60613          	addi	a2,a2,-1478 # 80092338 <g_dtoa_scale_up+0x200>
    80063906:	07300593          	li	a1,115
    8006390a:	0002f517          	auipc	a0,0x2f
    8006390e:	a6650513          	addi	a0,a0,-1434 # 80092370 <g_dtoa_scale_up+0x238>
    80063912:	84afd0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/stream/lib_stdoutstream.c:116 (discriminator 4)
  return lib_fflush(stream->handle);
    80063916:	f63fe0ef          	jal	ra,80062878 <lib_fflush>
nuttx/libs/libc/stream/lib_stdoutstream.c:117 (discriminator 4)
}
    8006391a:	60a2                	ld	ra,8(sp)
    8006391c:	2501                	sext.w	a0,a0
    8006391e:	0141                	addi	sp,sp,16
    80063920:	8082                	ret

0000000080063922 <stdoutstream_puts>:
stdoutstream_puts():
nuttx/libs/libc/stream/lib_stdoutstream.c:74
{
    80063922:	7179                	addi	sp,sp,-48
    80063924:	f406                	sd	ra,40(sp)
    80063926:	f022                	sd	s0,32(sp)
    80063928:	ec26                	sd	s1,24(sp)
    8006392a:	e84a                	sd	s2,16(sp)
    8006392c:	e44e                	sd	s3,8(sp)
nuttx/libs/libc/stream/lib_stdoutstream.c:79
  DEBUGASSERT(self && stream->handle);
    8006392e:	c519                	beqz	a0,8006393c <stdoutstream_puts+0x1a>
nuttx/libs/libc/stream/lib_stdoutstream.c:79 (discriminator 2)
    80063930:	711c                	ld	a5,32(a0)
    80063932:	842a                	mv	s0,a0
    80063934:	84ae                	mv	s1,a1
    80063936:	8932                	mv	s2,a2
nuttx/libs/libc/stream/lib_stdoutstream.c:100 (discriminator 2)
  while (result == -EINTR);
    80063938:	4991                	li	s3,4
nuttx/libs/libc/stream/lib_stdoutstream.c:79 (discriminator 2)
  DEBUGASSERT(self && stream->handle);
    8006393a:	ef89                	bnez	a5,80063954 <stdoutstream_puts+0x32>
nuttx/libs/libc/stream/lib_stdoutstream.c:79 (discriminator 3)
    8006393c:	0002f617          	auipc	a2,0x2f
    80063940:	a5460613          	addi	a2,a2,-1452 # 80092390 <g_dtoa_scale_up+0x258>
    80063944:	04f00593          	li	a1,79
    80063948:	0002f517          	auipc	a0,0x2f
    8006394c:	a2850513          	addi	a0,a0,-1496 # 80092370 <g_dtoa_scale_up+0x238>
    80063950:	80cfd0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/stream/lib_stdoutstream.c:87
      result = fwrite(buffer, len, 1, stream->handle);
    80063954:	7014                	ld	a3,32(s0)
    80063956:	4605                	li	a2,1
    80063958:	85ca                	mv	a1,s2
    8006395a:	8526                	mv	a0,s1
    8006395c:	c09fe0ef          	jal	ra,80062564 <fwrite>
    80063960:	2501                	sext.w	a0,a0
nuttx/libs/libc/stream/lib_stdoutstream.c:88
      if (result >= 0)
    80063962:	00054c63          	bltz	a0,8006397a <stdoutstream_puts+0x58>
nuttx/libs/libc/stream/lib_stdoutstream.c:90
          self->nput += result;
    80063966:	401c                	lw	a5,0(s0)
    80063968:	9fa9                	addw	a5,a5,a0
    8006396a:	c01c                	sw	a5,0(s0)
nuttx/libs/libc/stream/lib_stdoutstream.c:103
}
    8006396c:	70a2                	ld	ra,40(sp)
    8006396e:	7402                	ld	s0,32(sp)
    80063970:	64e2                	ld	s1,24(sp)
    80063972:	6942                	ld	s2,16(sp)
    80063974:	69a2                	ld	s3,8(sp)
    80063976:	6145                	addi	sp,sp,48
    80063978:	8082                	ret
nuttx/libs/libc/stream/lib_stdoutstream.c:94
      result = _NX_GETERRVAL(result);
    8006397a:	89efd0ef          	jal	ra,80060a18 <__errno>
    8006397e:	411c                	lw	a5,0(a0)
nuttx/libs/libc/stream/lib_stdoutstream.c:100
  while (result == -EINTR);
    80063980:	fd378ae3          	beq	a5,s3,80063954 <stdoutstream_puts+0x32>
nuttx/libs/libc/stream/lib_stdoutstream.c:94
      result = _NX_GETERRVAL(result);
    80063984:	40f0053b          	negw	a0,a5
    80063988:	b7d5                	j	8006396c <stdoutstream_puts+0x4a>

000000008006398a <stdoutstream_putc>:
stdoutstream_putc():
nuttx/libs/libc/stream/lib_stdoutstream.c:41
{
    8006398a:	7179                	addi	sp,sp,-48
    8006398c:	f406                	sd	ra,40(sp)
    8006398e:	f022                	sd	s0,32(sp)
    80063990:	ec26                	sd	s1,24(sp)
    80063992:	e84a                	sd	s2,16(sp)
    80063994:	e44e                	sd	s3,8(sp)
nuttx/libs/libc/stream/lib_stdoutstream.c:46
  DEBUGASSERT(self && stream->handle);
    80063996:	c51d                	beqz	a0,800639c4 <stdoutstream_putc+0x3a>
nuttx/libs/libc/stream/lib_stdoutstream.c:46 (discriminator 2)
    80063998:	711c                	ld	a5,32(a0)
    8006399a:	842a                	mv	s0,a0
    8006399c:	c785                	beqz	a5,800639c4 <stdoutstream_putc+0x3a>
    8006399e:	84ae                	mv	s1,a1
nuttx/libs/libc/stream/lib_stdoutstream.c:55
      if (result != EOF)
    800639a0:	59fd                	li	s3,-1
nuttx/libs/libc/stream/lib_stdoutstream.c:65
  while (get_errno() == EINTR);
    800639a2:	4911                	li	s2,4
nuttx/libs/libc/stream/lib_stdoutstream.c:54
      result = fputc(ch, stream->handle);
    800639a4:	700c                	ld	a1,32(s0)
    800639a6:	8526                	mv	a0,s1
    800639a8:	fcbfe0ef          	jal	ra,80062972 <fputc>
nuttx/libs/libc/stream/lib_stdoutstream.c:55
      if (result != EOF)
    800639ac:	03350863          	beq	a0,s3,800639dc <stdoutstream_putc+0x52>
nuttx/libs/libc/stream/lib_stdoutstream.c:57
          self->nput++;
    800639b0:	401c                	lw	a5,0(s0)
    800639b2:	2785                	addiw	a5,a5,1
    800639b4:	c01c                	sw	a5,0(s0)
nuttx/libs/libc/stream/lib_stdoutstream.c:66
}
    800639b6:	70a2                	ld	ra,40(sp)
    800639b8:	7402                	ld	s0,32(sp)
    800639ba:	64e2                	ld	s1,24(sp)
    800639bc:	6942                	ld	s2,16(sp)
    800639be:	69a2                	ld	s3,8(sp)
    800639c0:	6145                	addi	sp,sp,48
    800639c2:	8082                	ret
nuttx/libs/libc/stream/lib_stdoutstream.c:46 (discriminator 3)
  DEBUGASSERT(self && stream->handle);
    800639c4:	0002f617          	auipc	a2,0x2f
    800639c8:	9cc60613          	addi	a2,a2,-1588 # 80092390 <g_dtoa_scale_up+0x258>
    800639cc:	02e00593          	li	a1,46
    800639d0:	0002f517          	auipc	a0,0x2f
    800639d4:	9a050513          	addi	a0,a0,-1632 # 80092370 <g_dtoa_scale_up+0x238>
    800639d8:	f85fc0ef          	jal	ra,8006095c <__assert>
nuttx/libs/libc/stream/lib_stdoutstream.c:65
  while (get_errno() == EINTR);
    800639dc:	83cfd0ef          	jal	ra,80060a18 <__errno>
    800639e0:	411c                	lw	a5,0(a0)
    800639e2:	fd2781e3          	beq	a5,s2,800639a4 <stdoutstream_putc+0x1a>
    800639e6:	bfc1                	j	800639b6 <stdoutstream_putc+0x2c>

00000000800639e8 <lib_stdoutstream>:
lib_stdoutstream():
nuttx/libs/libc/stream/lib_stdoutstream.c:146
void lib_stdoutstream(FAR struct lib_stdoutstream_s *stream,
                      FAR FILE *handle)
{
  /* Select the putc operation */

  stream->common.putc = stdoutstream_putc;
    800639e8:	00000797          	auipc	a5,0x0
    800639ec:	fa278793          	addi	a5,a5,-94 # 8006398a <stdoutstream_putc>
    800639f0:	e51c                	sd	a5,8(a0)
nuttx/libs/libc/stream/lib_stdoutstream.c:147
  stream->common.puts = stdoutstream_puts;
    800639f2:	00000797          	auipc	a5,0x0
    800639f6:	f3078793          	addi	a5,a5,-208 # 80063922 <stdoutstream_puts>
    800639fa:	e91c                	sd	a5,16(a0)
nuttx/libs/libc/stream/lib_stdoutstream.c:157
   * opened in binary mode.  In binary mode, the newline has no special
   * meaning.
   */

#ifndef CONFIG_STDIO_DISABLE_BUFFERING
  if (handle->fs_bufstart != NULL && (handle->fs_oflags & O_TEXT) != 0)
    800639fc:	6db8                	ld	a4,88(a1)
nuttx/libs/libc/stream/lib_stdoutstream.c:164
      stream->common.flush = stdoutstream_flush;
    }
  else
#endif
    {
      stream->common.flush = lib_noflush;
    800639fe:	00000797          	auipc	a5,0x0
    80063a02:	ef278793          	addi	a5,a5,-270 # 800638f0 <lib_noflush>
nuttx/libs/libc/stream/lib_stdoutstream.c:157
  if (handle->fs_bufstart != NULL && (handle->fs_oflags & O_TEXT) != 0)
    80063a06:	cb11                	beqz	a4,80063a1a <lib_stdoutstream+0x32>
nuttx/libs/libc/stream/lib_stdoutstream.c:157 (discriminator 1)
    80063a08:	0b85d703          	lhu	a4,184(a1)
    80063a0c:	10077713          	andi	a4,a4,256
    80063a10:	c709                	beqz	a4,80063a1a <lib_stdoutstream+0x32>
nuttx/libs/libc/stream/lib_stdoutstream.c:159
      stream->common.flush = stdoutstream_flush;
    80063a12:	00000797          	auipc	a5,0x0
    80063a16:	ee278793          	addi	a5,a5,-286 # 800638f4 <stdoutstream_flush>
    80063a1a:	ed1c                	sd	a5,24(a0)
nuttx/libs/libc/stream/lib_stdoutstream.c:169
    }

  /* Set the number of bytes put to zero and remember the handle */

  stream->common.nput = 0;
    80063a1c:	00052023          	sw	zero,0(a0)
nuttx/libs/libc/stream/lib_stdoutstream.c:170
  stream->handle      = handle;
    80063a20:	f10c                	sd	a1,32(a0)
nuttx/libs/libc/stream/lib_stdoutstream.c:171
}
    80063a22:	8082                	ret

0000000080063a24 <flsl>:
flsl():
nuttx/libs/libc/string/lib_flsl.c:56

int flsl(long j)
{
  int ret = 0;

  if (j != 0)
    80063a24:	cd01                	beqz	a0,80063a3c <flsl+0x18>
nuttx/libs/libc/string/lib_flsl.c:53
{
    80063a26:	1141                	addi	sp,sp,-16
    80063a28:	e406                	sd	ra,8(sp)
nuttx/libs/libc/string/lib_flsl.c:61
    {
#ifdef CONFIG_HAVE_BUILTIN_CLZ
      /* Count leading zeros function can be used to implement fls. */

      ret = NBITS - __builtin_clzl(j);
    80063a2a:	c6ca00ef          	jal	ra,80003e96 <__clzdi2>
nuttx/libs/libc/string/lib_flsl.c:78
        }
#endif
    }

  return ret;
}
    80063a2e:	60a2                	ld	ra,8(sp)
nuttx/libs/libc/string/lib_flsl.c:61
      ret = NBITS - __builtin_clzl(j);
    80063a30:	04000793          	li	a5,64
    80063a34:	40a7853b          	subw	a0,a5,a0
nuttx/libs/libc/string/lib_flsl.c:78
}
    80063a38:	0141                	addi	sp,sp,16
    80063a3a:	8082                	ret
nuttx/libs/libc/string/lib_flsl.c:54
  int ret = 0;
    80063a3c:	4501                	li	a0,0
nuttx/libs/libc/string/lib_flsl.c:78
}
    80063a3e:	8082                	ret

0000000080063a40 <lib_isbasedigit>:
lib_isbasedigit():
nuttx/libs/libc/string/lib_isbasedigit.c:56
bool lib_isbasedigit(int ch, int base, int *value)
{
  bool ret = false;
  int  tmp = 0;

  if (base <= 10)
    80063a40:	47a9                	li	a5,10
    80063a42:	02b7c063          	blt	a5,a1,80063a62 <lib_isbasedigit+0x22>
nuttx/libs/libc/string/lib_isbasedigit.c:58
    {
      if (ch >= '0' && ch <= base + '0' - 1)
    80063a46:	02f00793          	li	a5,47
    80063a4a:	04a7db63          	bge	a5,a0,80063aa0 <lib_isbasedigit+0x60>
nuttx/libs/libc/string/lib_isbasedigit.c:58 (discriminator 1)
    80063a4e:	02f5859b          	addiw	a1,a1,47
    80063a52:	04a5c763          	blt	a1,a0,80063aa0 <lib_isbasedigit+0x60>
nuttx/libs/libc/string/lib_isbasedigit.c:60
        {
          tmp = ch - '0';
    80063a56:	fd05079b          	addiw	a5,a0,-48
nuttx/libs/libc/string/lib_isbasedigit.c:79
          ret = true;
        }
      else if (ch >= 'A' && ch <= 'A' + base - 11)
        {
          tmp = ch - 'A' + 10;
          ret = true;
    80063a5a:	4505                	li	a0,1
nuttx/libs/libc/string/lib_isbasedigit.c:83
        }
    }

  if (value)
    80063a5c:	c211                	beqz	a2,80063a60 <lib_isbasedigit+0x20>
nuttx/libs/libc/string/lib_isbasedigit.c:85
    {
      *value = tmp;
    80063a5e:	c21c                	sw	a5,0(a2)
nuttx/libs/libc/string/lib_isbasedigit.c:89
    }

  return ret;
}
    80063a60:	8082                	ret
nuttx/libs/libc/string/lib_isbasedigit.c:64
  else if (base <= 36)
    80063a62:	02400793          	li	a5,36
    80063a66:	02b7cd63          	blt	a5,a1,80063aa0 <lib_isbasedigit+0x60>
nuttx/libs/libc/string/lib_isbasedigit.c:66
      if (ch >= '0' && ch <= '9')
    80063a6a:	fd05079b          	addiw	a5,a0,-48
    80063a6e:	4725                	li	a4,9
    80063a70:	fef773e3          	bgeu	a4,a5,80063a56 <lib_isbasedigit+0x16>
nuttx/libs/libc/string/lib_isbasedigit.c:71
      else if (ch >= 'a' && ch <= 'a' + base - 11)
    80063a74:	06000793          	li	a5,96
    80063a78:	00a7d963          	bge	a5,a0,80063a8a <lib_isbasedigit+0x4a>
nuttx/libs/libc/string/lib_isbasedigit.c:71 (discriminator 1)
    80063a7c:	0565859b          	addiw	a1,a1,86
    80063a80:	02a5c063          	blt	a1,a0,80063aa0 <lib_isbasedigit+0x60>
nuttx/libs/libc/string/lib_isbasedigit.c:73
          tmp = ch - 'a' + 10;
    80063a84:	fa95079b          	addiw	a5,a0,-87
nuttx/libs/libc/string/lib_isbasedigit.c:74
          ret = true;
    80063a88:	bfc9                	j	80063a5a <lib_isbasedigit+0x1a>
nuttx/libs/libc/string/lib_isbasedigit.c:76
      else if (ch >= 'A' && ch <= 'A' + base - 11)
    80063a8a:	04000793          	li	a5,64
    80063a8e:	00a7d963          	bge	a5,a0,80063aa0 <lib_isbasedigit+0x60>
nuttx/libs/libc/string/lib_isbasedigit.c:76 (discriminator 1)
    80063a92:	0365859b          	addiw	a1,a1,54
    80063a96:	00a5c563          	blt	a1,a0,80063aa0 <lib_isbasedigit+0x60>
nuttx/libs/libc/string/lib_isbasedigit.c:78
          tmp = ch - 'A' + 10;
    80063a9a:	fc95079b          	addiw	a5,a0,-55
    80063a9e:	bf75                	j	80063a5a <lib_isbasedigit+0x1a>
nuttx/libs/libc/string/lib_isbasedigit.c:54
  int  tmp = 0;
    80063aa0:	4781                	li	a5,0
nuttx/libs/libc/string/lib_isbasedigit.c:53
  bool ret = false;
    80063aa2:	4501                	li	a0,0
    80063aa4:	bf65                	j	80063a5c <lib_isbasedigit+0x1c>

0000000080063aa6 <lib_skipspace>:
lib_skipspace():
nuttx/libs/libc/string/lib_skipspace.c:48
 *   Skip over leading whitespace
 *
 ****************************************************************************/

void lib_skipspace(FAR const char **pptr)
{
    80063aa6:	1101                	addi	sp,sp,-32
    80063aa8:	e822                	sd	s0,16(sp)
    80063aaa:	ec06                	sd	ra,24(sp)
    80063aac:	e426                	sd	s1,8(sp)
nuttx/libs/libc/string/lib_skipspace.c:49
  FAR const char *ptr = *pptr;
    80063aae:	6104                	ld	s1,0(a0)
nuttx/libs/libc/string/lib_skipspace.c:48
{
    80063ab0:	842a                	mv	s0,a0
nuttx/libs/libc/string/lib_skipspace.c:50 (discriminator 1)
  while (isspace(*ptr)) ptr++;
    80063ab2:	0004c503          	lbu	a0,0(s1)
    80063ab6:	7c0000ef          	jal	ra,80064276 <isspace>
    80063aba:	e519                	bnez	a0,80063ac8 <lib_skipspace+0x22>
nuttx/libs/libc/string/lib_skipspace.c:51
  *pptr = ptr;
    80063abc:	e004                	sd	s1,0(s0)
nuttx/libs/libc/string/lib_skipspace.c:52
}
    80063abe:	60e2                	ld	ra,24(sp)
    80063ac0:	6442                	ld	s0,16(sp)
    80063ac2:	64a2                	ld	s1,8(sp)
    80063ac4:	6105                	addi	sp,sp,32
    80063ac6:	8082                	ret
nuttx/libs/libc/string/lib_skipspace.c:50 (discriminator 2)
  while (isspace(*ptr)) ptr++;
    80063ac8:	0485                	addi	s1,s1,1
    80063aca:	b7e5                	j	80063ab2 <lib_skipspace+0xc>

0000000080063acc <strcat>:
strcat():
nuttx/libs/libc/string/lib_strcat.c:38
 ****************************************************************************/

#if !defined(CONFIG_LIBC_ARCH_STRCAT) && defined(LIBC_BUILD_STRCAT)
#undef strcat /* See mm/README.txt */
FAR char *strcat(FAR char *dest, FAR const char *src)
{
    80063acc:	1101                	addi	sp,sp,-32
    80063ace:	e822                	sd	s0,16(sp)
    80063ad0:	e426                	sd	s1,8(sp)
    80063ad2:	ec06                	sd	ra,24(sp)
    80063ad4:	84aa                	mv	s1,a0
    80063ad6:	842e                	mv	s0,a1
nuttx/libs/libc/string/lib_strcat.c:41
  FAR char *ret = dest;

  dest += strlen(dest);
    80063ad8:	2aa000ef          	jal	ra,80063d82 <strlen>
    80063adc:	00a487b3          	add	a5,s1,a0
nuttx/libs/libc/string/lib_strcat.c:42
  while (*src != '\0')
    80063ae0:	00044703          	lbu	a4,0(s0)
    80063ae4:	eb09                	bnez	a4,80063af6 <strcat+0x2a>
nuttx/libs/libc/string/lib_strcat.c:47
    {
      *dest++ = *src++;
    }

  *dest = '\0';
    80063ae6:	00078023          	sb	zero,0(a5)
nuttx/libs/libc/string/lib_strcat.c:50

  return ret;
}
    80063aea:	60e2                	ld	ra,24(sp)
    80063aec:	6442                	ld	s0,16(sp)
    80063aee:	8526                	mv	a0,s1
    80063af0:	64a2                	ld	s1,8(sp)
    80063af2:	6105                	addi	sp,sp,32
    80063af4:	8082                	ret
nuttx/libs/libc/string/lib_strcat.c:44
      *dest++ = *src++;
    80063af6:	0785                	addi	a5,a5,1
    80063af8:	0405                	addi	s0,s0,1
    80063afa:	fee78fa3          	sb	a4,-1(a5)
    80063afe:	b7cd                	j	80063ae0 <strcat+0x14>

0000000080063b00 <strdup>:
strdup():
nuttx/libs/libc/string/lib_strdup.c:37
 * Public Functions
 ****************************************************************************/

#undef strdup /* See mm/README.txt */
FAR char *strdup(FAR const char *s)
{
    80063b00:	1101                	addi	sp,sp,-32
    80063b02:	ec06                	sd	ra,24(sp)
    80063b04:	e822                	sd	s0,16(sp)
    80063b06:	e42a                	sd	a0,8(sp)
nuttx/libs/libc/string/lib_strdup.c:38
  size_t size = strlen(s) + 1;
    80063b08:	27a000ef          	jal	ra,80063d82 <strlen>
    80063b0c:	00150613          	addi	a2,a0,1
nuttx/libs/libc/string/lib_strdup.c:39
  FAR char *news = (FAR char *)lib_malloc(size);
    80063b10:	8532                	mv	a0,a2
    80063b12:	e032                	sd	a2,0(sp)
    80063b14:	9aefc0ef          	jal	ra,8005fcc2 <malloc>
    80063b18:	842a                	mv	s0,a0
nuttx/libs/libc/string/lib_strdup.c:41

  if (news)
    80063b1a:	c509                	beqz	a0,80063b24 <strdup+0x24>
nuttx/libs/libc/string/lib_strdup.c:43
    {
      strlcpy(news, s, size);
    80063b1c:	6602                	ld	a2,0(sp)
    80063b1e:	65a2                	ld	a1,8(sp)
    80063b20:	22a000ef          	jal	ra,80063d4a <strlcpy>
nuttx/libs/libc/string/lib_strdup.c:47
    }

  return news;
}
    80063b24:	60e2                	ld	ra,24(sp)
    80063b26:	8522                	mv	a0,s0
    80063b28:	6442                	ld	s0,16(sp)
    80063b2a:	6105                	addi	sp,sp,32
    80063b2c:	8082                	ret

0000000080063b2e <strerror>:
strerror():
nuttx/libs/libc/string/lib_strerror.c:379
#ifdef CONFIG_LIBC_STRERROR_ERRNUM
  static char s_err[STRERROR_BUFSIZE];
#endif
#ifdef CONFIG_LIBC_STRERROR
  int ndxlow = 0;
  int ndxhi  = NERRNO_STRS - 1;
    80063b2e:	08a00693          	li	a3,138
nuttx/libs/libc/string/lib_strerror.c:378
  int ndxlow = 0;
    80063b32:	4601                	li	a2,0
nuttx/libs/libc/string/lib_strerror.c:385
  int ndxmid;

  do
    {
      ndxmid = (ndxlow + ndxhi) >> 1;
      if (errnum > g_errnomap[ndxmid].errnum)
    80063b34:	0002f817          	auipc	a6,0x2f
    80063b38:	70480813          	addi	a6,a6,1796 # 80093238 <g_errnomap>
nuttx/libs/libc/string/lib_strerror.c:384
      ndxmid = (ndxlow + ndxhi) >> 1;
    80063b3c:	00d6073b          	addw	a4,a2,a3
    80063b40:	4017579b          	sraiw	a5,a4,0x1
    80063b44:	873e                	mv	a4,a5
nuttx/libs/libc/string/lib_strerror.c:385
      if (errnum > g_errnomap[ndxmid].errnum)
    80063b46:	0792                	slli	a5,a5,0x4
    80063b48:	97c2                	add	a5,a5,a6
    80063b4a:	0007c583          	lbu	a1,0(a5)
    80063b4e:	00a5db63          	bge	a1,a0,80063b64 <strerror+0x36>
nuttx/libs/libc/string/lib_strerror.c:387
        {
          ndxlow = ndxmid + 1;
    80063b52:	0017061b          	addiw	a2,a4,1
nuttx/libs/libc/string/lib_strerror.c:398
      else
        {
          return g_errnomap[ndxmid].str;
        }
    }
  while (ndxlow <= ndxhi);
    80063b56:	fec6d3e3          	bge	a3,a2,80063b3c <strerror+0xe>
nuttx/libs/libc/string/lib_strerror.c:410
    }
#elif !defined(CONFIG_LIBC_STRERROR)
  UNUSED(errnum);
#endif

  return STRERROR_UNKNOWN;
    80063b5a:	0002f517          	auipc	a0,0x2f
    80063b5e:	84e50513          	addi	a0,a0,-1970 # 800923a8 <g_dtoa_scale_up+0x270>
nuttx/libs/libc/string/lib_strerror.c:411
}
    80063b62:	8082                	ret
nuttx/libs/libc/string/lib_strerror.c:389
      else if (errnum < g_errnomap[ndxmid].errnum)
    80063b64:	00b55563          	bge	a0,a1,80063b6e <strerror+0x40>
nuttx/libs/libc/string/lib_strerror.c:391
          ndxhi = ndxmid - 1;
    80063b68:	fff7069b          	addiw	a3,a4,-1
    80063b6c:	b7ed                	j	80063b56 <strerror+0x28>
nuttx/libs/libc/string/lib_strerror.c:395
          return g_errnomap[ndxmid].str;
    80063b6e:	6788                	ld	a0,8(a5)
    80063b70:	8082                	ret

0000000080063b72 <strrchr>:
strrchr():
nuttx/libs/libc/string/lib_strrchr.c:42
 */

#if !defined(CONFIG_LIBC_ARCH_STRRCHR) && defined(LIBC_BUILD_STRRCHR)
#undef strrchr /* See mm/README.txt */
FAR char *strrchr(FAR const char *s, int c)
{
    80063b72:	87aa                	mv	a5,a0
nuttx/libs/libc/string/lib_strrchr.c:43
  FAR const char *r = NULL;
    80063b74:	4501                	li	a0,0
nuttx/libs/libc/string/lib_strrchr.c:47

  do
    {
      if (*s == c)
    80063b76:	0007c703          	lbu	a4,0(a5)
    80063b7a:	00b71363          	bne	a4,a1,80063b80 <strrchr+0xe>
    80063b7e:	853e                	mv	a0,a5
nuttx/libs/libc/string/lib_strrchr.c:52
        {
          r = s;
        }
    }
  while (*s++ != '\0');
    80063b80:	0785                	addi	a5,a5,1
    80063b82:	fb75                	bnez	a4,80063b76 <strrchr+0x4>
nuttx/libs/libc/string/lib_strrchr.c:55

  return (FAR char *)r;
}
    80063b84:	8082                	ret

0000000080063b86 <strspn>:
strspn():
nuttx/libs/libc/string/lib_strspn.c:44
 *
 ****************************************************************************/

#undef strspn /* See mm/README.txt */
size_t strspn(const char *s, const char *accept)
{
    80063b86:	1101                	addi	sp,sp,-32
    80063b88:	e822                	sd	s0,16(sp)
    80063b8a:	e426                	sd	s1,8(sp)
    80063b8c:	e04a                	sd	s2,0(sp)
    80063b8e:	ec06                	sd	ra,24(sp)
    80063b90:	892a                	mv	s2,a0
    80063b92:	84ae                	mv	s1,a1
nuttx/libs/libc/string/lib_strspn.c:46
  size_t i;
  for (i = 0; s[i] && strchr(accept, s[i]) != NULL; i++);
    80063b94:	4401                	li	s0,0
nuttx/libs/libc/string/lib_strspn.c:46 (discriminator 1)
    80063b96:	008907b3          	add	a5,s2,s0
    80063b9a:	0007c583          	lbu	a1,0(a5)
    80063b9e:	c589                	beqz	a1,80063ba8 <strspn+0x22>
nuttx/libs/libc/string/lib_strspn.c:46 (discriminator 3)
    80063ba0:	8526                	mv	a0,s1
    80063ba2:	16c000ef          	jal	ra,80063d0e <strchr>
    80063ba6:	e901                	bnez	a0,80063bb6 <strspn+0x30>
nuttx/libs/libc/string/lib_strspn.c:48
  return i;
}
    80063ba8:	60e2                	ld	ra,24(sp)
    80063baa:	8522                	mv	a0,s0
    80063bac:	6442                	ld	s0,16(sp)
    80063bae:	64a2                	ld	s1,8(sp)
    80063bb0:	6902                	ld	s2,0(sp)
    80063bb2:	6105                	addi	sp,sp,32
    80063bb4:	8082                	ret
nuttx/libs/libc/string/lib_strspn.c:46 (discriminator 4)
  for (i = 0; s[i] && strchr(accept, s[i]) != NULL; i++);
    80063bb6:	0405                	addi	s0,s0,1
    80063bb8:	bff9                	j	80063b96 <strspn+0x10>

0000000080063bba <memchr>:
memchr():
nuttx/libs/libc/string/lib_memchr.c:55
#undef memchr /* See mm/README.txt */
FAR void *memchr(FAR const void *s, int c, size_t n)
{
  FAR const unsigned char *p = (FAR const unsigned char *)s;

  while (n--)
    80063bba:	962a                	add	a2,a2,a0
nuttx/libs/libc/string/lib_memchr.c:57
    {
      if (*p == (unsigned char)c)
    80063bbc:	0ff5f593          	zext.b	a1,a1
nuttx/libs/libc/string/lib_memchr.c:55
  while (n--)
    80063bc0:	00c51463          	bne	a0,a2,80063bc8 <memchr+0xe>
nuttx/libs/libc/string/lib_memchr.c:65
        }

      p++;
    }

  return NULL;
    80063bc4:	4501                	li	a0,0
nuttx/libs/libc/string/lib_memchr.c:66
}
    80063bc6:	8082                	ret
nuttx/libs/libc/string/lib_memchr.c:57
      if (*p == (unsigned char)c)
    80063bc8:	00054783          	lbu	a5,0(a0)
    80063bcc:	feb78de3          	beq	a5,a1,80063bc6 <memchr+0xc>
nuttx/libs/libc/string/lib_memchr.c:62
      p++;
    80063bd0:	0505                	addi	a0,a0,1
    80063bd2:	b7fd                	j	80063bc0 <memchr+0x6>

0000000080063bd4 <memcmp>:
memcmp():
nuttx/libs/libc/string/lib_memcmp.c:43
int memcmp(FAR const void *s1, FAR const void *s2, size_t n)
{
  FAR unsigned char *p1 = (FAR unsigned char *)s1;
  FAR unsigned char *p2 = (FAR unsigned char *)s2;

  while (n-- > 0)
    80063bd4:	4781                	li	a5,0
    80063bd6:	00f61463          	bne	a2,a5,80063bde <memcmp+0xa>
nuttx/libs/libc/string/lib_memcmp.c:58

      p1++;
      p2++;
    }

  return 0;
    80063bda:	4501                	li	a0,0
    80063bdc:	8082                	ret
nuttx/libs/libc/string/lib_memcmp.c:45
      if (*p1 < *p2)
    80063bde:	00f50733          	add	a4,a0,a5
    80063be2:	00074683          	lbu	a3,0(a4)
    80063be6:	00f58733          	add	a4,a1,a5
    80063bea:	00074703          	lbu	a4,0(a4)
    80063bee:	00e6e763          	bltu	a3,a4,80063bfc <memcmp+0x28>
nuttx/libs/libc/string/lib_memcmp.c:49
      else if (*p1 > *p2)
    80063bf2:	0785                	addi	a5,a5,1
    80063bf4:	fed771e3          	bgeu	a4,a3,80063bd6 <memcmp+0x2>
nuttx/libs/libc/string/lib_memcmp.c:51
          return 1;
    80063bf8:	4505                	li	a0,1
nuttx/libs/libc/string/lib_memcmp.c:59
}
    80063bfa:	8082                	ret
nuttx/libs/libc/string/lib_memcmp.c:47
          return -1;
    80063bfc:	557d                	li	a0,-1
    80063bfe:	8082                	ret

0000000080063c00 <memmove>:
memmove():
nuttx/libs/libc/string/lib_memmove.c:43
FAR void *memmove(FAR void *dest, FAR const void *src, size_t count)
{
  FAR char *tmp;
  FAR char *s;

  if (dest <= src)
    80063c00:	02a5f563          	bgeu	a1,a0,80063c2a <memmove+0x2a>
nuttx/libs/libc/string/lib_memmove.c:58
  else
    {
      tmp = (FAR char *) dest + count;
      s   = (FAR char *) src + count;

      while (count--)
    80063c04:	fff64693          	not	a3,a2
    80063c08:	4781                	li	a5,0
    80063c0a:	17fd                	addi	a5,a5,-1
    80063c0c:	02f69163          	bne	a3,a5,80063c2e <memmove+0x2e>
nuttx/libs/libc/string/lib_memmove.c:65
          *--tmp = *--s;
        }
    }

  return dest;
}
    80063c10:	8082                	ret
nuttx/libs/libc/string/lib_memmove.c:50
          *tmp++ = *s++;
    80063c12:	00f58733          	add	a4,a1,a5
    80063c16:	00074683          	lbu	a3,0(a4)
    80063c1a:	00f50733          	add	a4,a0,a5
    80063c1e:	0785                	addi	a5,a5,1
    80063c20:	00d70023          	sb	a3,0(a4)
nuttx/libs/libc/string/lib_memmove.c:48
      while (count--)
    80063c24:	fec797e3          	bne	a5,a2,80063c12 <memmove+0x12>
    80063c28:	8082                	ret
    80063c2a:	4781                	li	a5,0
    80063c2c:	bfe5                	j	80063c24 <memmove+0x24>
nuttx/libs/libc/string/lib_memmove.c:60
          *--tmp = *--s;
    80063c2e:	00f60733          	add	a4,a2,a5
    80063c32:	00e58833          	add	a6,a1,a4
    80063c36:	00084803          	lbu	a6,0(a6)
    80063c3a:	972a                	add	a4,a4,a0
    80063c3c:	01070023          	sb	a6,0(a4)
    80063c40:	b7e9                	j	80063c0a <memmove+0xa>

0000000080063c42 <memset>:
memset():
nuttx/libs/libc/string/lib_memset.c:71
  uint64_t  val64 = ((uint64_t)val32 << 32) | (uint64_t)val32;
#endif

  /* Make sure that there is something to be cleared */

  if (n > 0)
    80063c42:	c669                	beqz	a2,80063d0c <memset+0xca>
nuttx/libs/libc/string/lib_memset.c:75
    {
      /* Align to a 16-bit boundary */

      if ((addr & 1) != 0)
    80063c44:	00157713          	andi	a4,a0,1
nuttx/libs/libc/string/lib_memset.c:62
  uintptr_t addr  = (uintptr_t)s;
    80063c48:	87aa                	mv	a5,a0
nuttx/libs/libc/string/lib_memset.c:75
      if ((addr & 1) != 0)
    80063c4a:	cf4d                	beqz	a4,80063d04 <memset+0xc2>
nuttx/libs/libc/string/lib_memset.c:77
        {
          *(FAR uint8_t *)addr = (uint8_t)c;
    80063c4c:	00b50023          	sb	a1,0(a0)
nuttx/libs/libc/string/lib_memset.c:79
          addr += 1;
          n    -= 1;
    80063c50:	167d                	addi	a2,a2,-1
nuttx/libs/libc/string/lib_memset.c:84
        }

      /* Check if there are at least 16-bits left to be written */

      if (n >= 2)
    80063c52:	4705                	li	a4,1
nuttx/libs/libc/string/lib_memset.c:78
          addr += 1;
    80063c54:	00150793          	addi	a5,a0,1
nuttx/libs/libc/string/lib_memset.c:84
      if (n >= 2)
    80063c58:	08c77863          	bgeu	a4,a2,80063ce8 <memset+0xa6>
nuttx/libs/libc/string/lib_memset.c:63
  uint16_t  val16 = ((uint16_t)c << 8) | (uint16_t)c;
    80063c5c:	010006b7          	lui	a3,0x1000
    80063c60:	f0068693          	addi	a3,a3,-256 # ffff00 <asinh-0x7f000100>
    80063c64:	0085971b          	slliw	a4,a1,0x8
    80063c68:	8f75                	and	a4,a4,a3
    80063c6a:	8f4d                	or	a4,a4,a1
    80063c6c:	1742                	slli	a4,a4,0x30
nuttx/libs/libc/string/lib_memset.c:90
        {
          /* Align to a 32-bit boundary (we know that the destination
           * address is already aligned to at least a 16-bit boundary).
           */

          if ((addr & 3) != 0)
    80063c6e:	0037f693          	andi	a3,a5,3
nuttx/libs/libc/string/lib_memset.c:63
  uint16_t  val16 = ((uint16_t)c << 8) | (uint16_t)c;
    80063c72:	9341                	srli	a4,a4,0x30
nuttx/libs/libc/string/lib_memset.c:90
          if ((addr & 3) != 0)
    80063c74:	c6c1                	beqz	a3,80063cfc <memset+0xba>
nuttx/libs/libc/string/lib_memset.c:92
            {
              *(FAR uint16_t *)addr = val16;
    80063c76:	00e79023          	sh	a4,0(a5)
nuttx/libs/libc/string/lib_memset.c:94
              addr += 2;
              n    -= 2;
    80063c7a:	1679                	addi	a2,a2,-2
nuttx/libs/libc/string/lib_memset.c:109
              n    -= 4;
            }
#else
          /* Check if there are at least 32-bits left to be written */

          if (n >= 4)
    80063c7c:	468d                	li	a3,3
nuttx/libs/libc/string/lib_memset.c:93
              addr += 2;
    80063c7e:	0789                	addi	a5,a5,2
nuttx/libs/libc/string/lib_memset.c:109
          if (n >= 4)
    80063c80:	04c6fd63          	bgeu	a3,a2,80063cda <memset+0x98>
nuttx/libs/libc/string/lib_memset.c:64
  uint32_t  val32 = ((uint32_t)val16 << 16) | (uint32_t)val16;
    80063c84:	0107181b          	slliw	a6,a4,0x10
    80063c88:	01076833          	or	a6,a4,a6
nuttx/libs/libc/string/lib_memset.c:115
            {
              /* Align to a 64-bit boundary (we know that the destination
               * address is already aligned to at least a 32-bit boundary).
               */

              if ((addr & 7) != 0)
    80063c8c:	0077f893          	andi	a7,a5,7
nuttx/libs/libc/string/lib_memset.c:64
  uint32_t  val32 = ((uint32_t)val16 << 16) | (uint32_t)val16;
    80063c90:	2801                	sext.w	a6,a6
nuttx/libs/libc/string/lib_memset.c:115
              if ((addr & 7) != 0)
    80063c92:	86b2                	mv	a3,a2
    80063c94:	00088663          	beqz	a7,80063ca0 <memset+0x5e>
nuttx/libs/libc/string/lib_memset.c:117
                {
                  *(FAR uint32_t *)addr = val32;
    80063c98:	0107a023          	sw	a6,0(a5)
nuttx/libs/libc/string/lib_memset.c:119
                  addr += 4;
                  n    -= 4;
    80063c9c:	16f1                	addi	a3,a3,-4
nuttx/libs/libc/string/lib_memset.c:118
                  addr += 4;
    80063c9e:	0791                	addi	a5,a5,4
nuttx/libs/libc/string/lib_memset.c:66
  uint64_t  val64 = ((uint64_t)val32 << 32) | (uint64_t)val32;
    80063ca0:	02081893          	slli	a7,a6,0x20
    80063ca4:	02081613          	slli	a2,a6,0x20
    80063ca8:	0208d893          	srli	a7,a7,0x20
    80063cac:	011668b3          	or	a7,a2,a7
nuttx/libs/libc/string/lib_memset.c:124
                }

              /* Loop while there are at least 64-bits left to be written */

              while (n >= 8)
    80063cb0:	431d                	li	t1,7
nuttx/libs/libc/string/lib_memset.c:66
  uint64_t  val64 = ((uint64_t)val32 << 32) | (uint64_t)val32;
    80063cb2:	8636                	mv	a2,a3
nuttx/libs/libc/string/lib_memset.c:126
                {
                  *(FAR uint64_t *)addr = val64;
    80063cb4:	00d78e33          	add	t3,a5,a3
nuttx/libs/libc/string/lib_memset.c:124
              while (n >= 8)
    80063cb8:	02c36c63          	bltu	t1,a2,80063cf0 <memset+0xae>
    80063cbc:	0036d613          	srli	a2,a3,0x3
    80063cc0:	58e1                	li	a7,-8
    80063cc2:	03160633          	mul	a2,a2,a7
    80063cc6:	9636                	add	a2,a2,a3
    80063cc8:	9ae1                	andi	a3,a3,-8
    80063cca:	97b6                	add	a5,a5,a3
nuttx/libs/libc/string/lib_memset.c:139
#ifdef CONFIG_MEMSET_64BIT
      /* We may get here with n in the range 0..7.  If n >= 4, then we should
       * have 64-bit alignment.
       */

      if (n >= 4)
    80063ccc:	468d                	li	a3,3
    80063cce:	00c6f663          	bgeu	a3,a2,80063cda <memset+0x98>
nuttx/libs/libc/string/lib_memset.c:141
        {
          *(FAR uint32_t *)addr = val32;
    80063cd2:	0107a023          	sw	a6,0(a5)
nuttx/libs/libc/string/lib_memset.c:143
          addr += 4;
          n    -= 4;
    80063cd6:	1671                	addi	a2,a2,-4
nuttx/libs/libc/string/lib_memset.c:142
          addr += 4;
    80063cd8:	0791                	addi	a5,a5,4
nuttx/libs/libc/string/lib_memset.c:155
       *   n = 1, addr is aligned to at least a 16-bit boundary
       *   n = 2, addr is aligned to a 32-bit boundary
       *   n = 3, addr is aligned to a 32-bit boundary
       */

      if (n >= 2)
    80063cda:	4685                	li	a3,1
    80063cdc:	00c6f663          	bgeu	a3,a2,80063ce8 <memset+0xa6>
nuttx/libs/libc/string/lib_memset.c:157
        {
          *(FAR uint16_t *)addr = val16;
    80063ce0:	00e79023          	sh	a4,0(a5)
nuttx/libs/libc/string/lib_memset.c:159
          addr += 2;
          n    -= 2;
    80063ce4:	1679                	addi	a2,a2,-2
nuttx/libs/libc/string/lib_memset.c:158
          addr += 2;
    80063ce6:	0789                	addi	a5,a5,2
nuttx/libs/libc/string/lib_memset.c:162
        }

      if (n >= 1)
    80063ce8:	c215                	beqz	a2,80063d0c <memset+0xca>
nuttx/libs/libc/string/lib_memset.c:164
        {
          *(FAR uint8_t *)addr = (uint8_t)c;
    80063cea:	00b78023          	sb	a1,0(a5)
nuttx/libs/libc/string/lib_memset.c:173
  /* This version is optimized for size */

  FAR unsigned char *p = (FAR unsigned char *)s;
  while (n-- > 0) *p++ = c;
#endif
  return s;
    80063cee:	8082                	ret
nuttx/libs/libc/string/lib_memset.c:126
                  *(FAR uint64_t *)addr = val64;
    80063cf0:	40ce0eb3          	sub	t4,t3,a2
    80063cf4:	011eb023          	sd	a7,0(t4)
nuttx/libs/libc/string/lib_memset.c:128
                  n    -= 8;
    80063cf8:	1661                	addi	a2,a2,-8
    80063cfa:	bf7d                	j	80063cb8 <memset+0x76>
nuttx/libs/libc/string/lib_memset.c:109
          if (n >= 4)
    80063cfc:	468d                	li	a3,3
    80063cfe:	f8c6e3e3          	bltu	a3,a2,80063c84 <memset+0x42>
    80063d02:	bff9                	j	80063ce0 <memset+0x9e>
nuttx/libs/libc/string/lib_memset.c:84
      if (n >= 2)
    80063d04:	4705                	li	a4,1
    80063d06:	f4e61be3          	bne	a2,a4,80063c5c <memset+0x1a>
    80063d0a:	b7c5                	j	80063cea <memset+0xa8>
nuttx/libs/libc/string/lib_memset.c:174
}
    80063d0c:	8082                	ret

0000000080063d0e <strchr>:
strchr():
nuttx/libs/libc/string/lib_strchr.c:55 (discriminator 1)
#undef strchr /* See mm/README.txt */
FAR char *strchr(FAR const char *s, int c)
{
  for (; ; s++)
    {
      if (*s == c)
    80063d0e:	00054783          	lbu	a5,0(a0)
    80063d12:	00b78663          	beq	a5,a1,80063d1e <strchr+0x10>
nuttx/libs/libc/string/lib_strchr.c:60
        {
          return (FAR char *)s;
        }

      if (*s == '\0')
    80063d16:	c399                	beqz	a5,80063d1c <strchr+0xe>
nuttx/libs/libc/string/lib_strchr.c:53
  for (; ; s++)
    80063d18:	0505                	addi	a0,a0,1
nuttx/libs/libc/string/lib_strchr.c:55
      if (*s == c)
    80063d1a:	bfd5                	j	80063d0e <strchr>
nuttx/libs/libc/string/lib_strchr.c:66
        {
          break;
        }
    }

  return NULL;
    80063d1c:	4501                	li	a0,0
nuttx/libs/libc/string/lib_strchr.c:67
}
    80063d1e:	8082                	ret

0000000080063d20 <strcmp>:
strcmp():
nuttx/libs/libc/string/lib_strcmp.c:38
 ****************************************************************************/

#if !defined(CONFIG_LIBC_ARCH_STRCMP) && defined(LIBC_BUILD_STRCMP)
#undef strcmp /* See mm/README.txt */
int strcmp(FAR const char *cs, FAR const char *ct)
{
    80063d20:	87aa                	mv	a5,a0
nuttx/libs/libc/string/lib_strcmp.c:42
  register int result;
  for (; ; )
    {
      if ((result = (unsigned char)*cs - (unsigned char)*ct++) != 0 ||
    80063d22:	0007c703          	lbu	a4,0(a5)
    80063d26:	0005c503          	lbu	a0,0(a1)
    80063d2a:	0585                	addi	a1,a1,1
    80063d2c:	40a7053b          	subw	a0,a4,a0
    80063d30:	e119                	bnez	a0,80063d36 <strcmp+0x16>
nuttx/libs/libc/string/lib_strcmp.c:43 (discriminator 1)
          *cs++ == '\0')
    80063d32:	0785                	addi	a5,a5,1
nuttx/libs/libc/string/lib_strcmp.c:42 (discriminator 1)
      if ((result = (unsigned char)*cs - (unsigned char)*ct++) != 0 ||
    80063d34:	f77d                	bnez	a4,80063d22 <strcmp+0x2>
nuttx/libs/libc/string/lib_strcmp.c:50
          break;
        }
    }

  return result;
}
    80063d36:	8082                	ret

0000000080063d38 <strcpy>:
strcpy():
nuttx/libs/libc/string/lib_strcpy.c:52
#if !defined(CONFIG_LIBC_ARCH_STRCPY) && defined(LIBC_BUILD_STRCPY)
#undef strcpy /* See mm/README.txt */
FAR char *strcpy(FAR char *dest, FAR const char *src)
{
  FAR char *tmp = dest;
  while ((*dest++ = *src++) != '\0');
    80063d38:	87aa                	mv	a5,a0
nuttx/libs/libc/string/lib_strcpy.c:52 (discriminator 1)
    80063d3a:	0005c703          	lbu	a4,0(a1)
    80063d3e:	0585                	addi	a1,a1,1
    80063d40:	0785                	addi	a5,a5,1
    80063d42:	fee78fa3          	sb	a4,-1(a5)
    80063d46:	fb75                	bnez	a4,80063d3a <strcpy+0x2>
nuttx/libs/libc/string/lib_strcpy.c:54
  return tmp;
}
    80063d48:	8082                	ret

0000000080063d4a <strlcpy>:
strlcpy():
nuttx/libs/libc/string/lib_strlcpy.c:51
 ****************************************************************************/

#if !defined(CONFIG_LIBC_ARCH_STRLCPY) && defined(LIBC_BUILD_STRLCPY)
#undef strlcpy /* See mm/README.txt */
size_t strlcpy(FAR char *dst, FAR const char *src, size_t dsize)
{
    80063d4a:	872a                	mv	a4,a0
nuttx/libs/libc/string/lib_strlcpy.c:55
  FAR const char *osrc = src;
  size_t nleft = dsize;

  if (nleft != 0)
    80063d4c:	c60d                	beqz	a2,80063d76 <strlcpy+0x2c>
    80063d4e:	962e                	add	a2,a2,a1
    80063d50:	87ae                	mv	a5,a1
nuttx/libs/libc/string/lib_strlcpy.c:57
    {
      while (--nleft != 0)
    80063d52:	86be                	mv	a3,a5
nuttx/libs/libc/string/lib_strlcpy.c:59
        {
          if ((*dst++ = *src++) == '\0')
    80063d54:	0785                	addi	a5,a5,1
nuttx/libs/libc/string/lib_strlcpy.c:57
      while (--nleft != 0)
    80063d56:	00c79663          	bne	a5,a2,80063d62 <strlcpy+0x18>
nuttx/libs/libc/string/lib_strlcpy.c:70

  if (nleft == 0)
    {
      if (dsize != 0)
        {
          *dst = '\0';
    80063d5a:	00070023          	sb	zero,0(a4)
    80063d5e:	87b6                	mv	a5,a3
    80063d60:	a821                	j	80063d78 <strlcpy+0x2e>
nuttx/libs/libc/string/lib_strlcpy.c:59
          if ((*dst++ = *src++) == '\0')
    80063d62:	fff7c683          	lbu	a3,-1(a5)
    80063d66:	0705                	addi	a4,a4,1
    80063d68:	fed70fa3          	sb	a3,-1(a4)
    80063d6c:	f2fd                	bnez	a3,80063d52 <strlcpy+0x8>
nuttx/libs/libc/string/lib_strlcpy.c:76
        }

      while (*src++ != '\0');
    }

  return src - osrc - 1;
    80063d6e:	40b78533          	sub	a0,a5,a1
    80063d72:	157d                	addi	a0,a0,-1
nuttx/libs/libc/string/lib_strlcpy.c:77
}
    80063d74:	8082                	ret
    80063d76:	87ae                	mv	a5,a1
nuttx/libs/libc/string/lib_strlcpy.c:73 (discriminator 1)
      while (*src++ != '\0');
    80063d78:	0007c703          	lbu	a4,0(a5)
    80063d7c:	0785                	addi	a5,a5,1
    80063d7e:	ff6d                	bnez	a4,80063d78 <strlcpy+0x2e>
    80063d80:	b7fd                	j	80063d6e <strlcpy+0x24>

0000000080063d82 <strlen>:
strlen():
nuttx/libs/libc/string/lib_strlen.c:40
#if !defined(CONFIG_LIBC_ARCH_STRLEN) && defined(LIBC_BUILD_STRLEN)
#undef strlen /* See mm/README.txt */
size_t strlen(FAR const char *s)
{
  FAR const char *sc;
  for (sc = s; *sc != '\0'; ++sc);
    80063d82:	87aa                	mv	a5,a0
nuttx/libs/libc/string/lib_strlen.c:40 (discriminator 1)
    80063d84:	0007c703          	lbu	a4,0(a5)
    80063d88:	e701                	bnez	a4,80063d90 <strlen+0xe>
nuttx/libs/libc/string/lib_strlen.c:42
  return sc - s;
}
    80063d8a:	40a78533          	sub	a0,a5,a0
    80063d8e:	8082                	ret
nuttx/libs/libc/string/lib_strlen.c:40 (discriminator 3)
  for (sc = s; *sc != '\0'; ++sc);
    80063d90:	0785                	addi	a5,a5,1
    80063d92:	bfcd                	j	80063d84 <strlen+0x2>

0000000080063d94 <strnlen>:
strnlen():
nuttx/libs/libc/string/lib_strnlen.c:40
#if !defined(CONFIG_LIBC_ARCH_STRNLEN) && defined(LIBC_BUILD_STRNLEN)
#undef strnlen /* See mm/README.txt */
size_t strnlen(FAR const char *s, size_t maxlen)
{
  FAR const char *sc;
  for (sc = s; maxlen != 0 && *sc != '\0'; maxlen--, ++sc);
    80063d94:	95aa                	add	a1,a1,a0
    80063d96:	87aa                	mv	a5,a0
nuttx/libs/libc/string/lib_strnlen.c:40 (discriminator 1)
    80063d98:	00b78563          	beq	a5,a1,80063da2 <strnlen+0xe>
nuttx/libs/libc/string/lib_strnlen.c:40 (discriminator 3)
    80063d9c:	0007c703          	lbu	a4,0(a5)
    80063da0:	e701                	bnez	a4,80063da8 <strnlen+0x14>
nuttx/libs/libc/string/lib_strnlen.c:41
  return sc - s;
    80063da2:	40a78533          	sub	a0,a5,a0
nuttx/libs/libc/string/lib_strnlen.c:42
}
    80063da6:	8082                	ret
nuttx/libs/libc/string/lib_strnlen.c:40 (discriminator 4)
  for (sc = s; maxlen != 0 && *sc != '\0'; maxlen--, ++sc);
    80063da8:	0785                	addi	a5,a5,1
    80063daa:	b7fd                	j	80063d98 <strnlen+0x4>

0000000080063dac <memcpy>:
memcpy():
nuttx/libs/libc/string/lib_memcpy.c:46
no_builtin("memcpy")
FAR void *memcpy(FAR void *dest, FAR const void *src, size_t n)
{
  FAR unsigned char *pout = (FAR unsigned char *)dest;
  FAR unsigned char *pin  = (FAR unsigned char *)src;
  while (n-- > 0)
    80063dac:	4781                	li	a5,0
    80063dae:	00f61363          	bne	a2,a5,80063db4 <memcpy+0x8>
nuttx/libs/libc/string/lib_memcpy.c:52
    {
      *pout++ = *pin++;
    }

  return dest;
}
    80063db2:	8082                	ret
nuttx/libs/libc/string/lib_memcpy.c:48
      *pout++ = *pin++;
    80063db4:	00f58733          	add	a4,a1,a5
    80063db8:	00074683          	lbu	a3,0(a4)
    80063dbc:	00f50733          	add	a4,a0,a5
    80063dc0:	0785                	addi	a5,a5,1
    80063dc2:	00d70023          	sb	a3,0(a4)
    80063dc6:	b7e5                	j	80063dae <memcpy+0x2>

0000000080063dc8 <isatty>:
isatty():
nuttx/libs/libc/termios/lib_isatty.c:53
 *   the NuttX TCGETS ioctl command.
 *
 ****************************************************************************/

int isatty(int fd)
{
    80063dc8:	7139                	addi	sp,sp,-64
nuttx/libs/libc/termios/lib_isatty.c:55
  struct termios ts;
  return (tcgetattr(fd, &ts) >= 0);
    80063dca:	002c                	addi	a1,sp,8
nuttx/libs/libc/termios/lib_isatty.c:53
{
    80063dcc:	fc06                	sd	ra,56(sp)
nuttx/libs/libc/termios/lib_isatty.c:55
  return (tcgetattr(fd, &ts) >= 0);
    80063dce:	012000ef          	jal	ra,80063de0 <tcgetattr>
nuttx/libs/libc/termios/lib_isatty.c:56
}
    80063dd2:	70e2                	ld	ra,56(sp)
nuttx/libs/libc/termios/lib_isatty.c:55
  return (tcgetattr(fd, &ts) >= 0);
    80063dd4:	fff54513          	not	a0,a0
nuttx/libs/libc/termios/lib_isatty.c:56
}
    80063dd8:	01f5551b          	srliw	a0,a0,0x1f
    80063ddc:	6121                	addi	sp,sp,64
    80063dde:	8082                	ret

0000000080063de0 <tcgetattr>:
tcgetattr():
nuttx/libs/libc/termios/lib_tcgetattr.c:62
 *   - ENOTTY: The file associated with 'fd' is not a terminal.
 *
 ****************************************************************************/

int tcgetattr(int fd, FAR struct termios *termiosp)
{
    80063de0:	862e                	mv	a2,a1
nuttx/libs/libc/termios/lib_tcgetattr.c:63
  return ioctl(fd, TCGETS, (unsigned long)(uintptr_t)termiosp);
    80063de2:	10100593          	li	a1,257
    80063de6:	12d0006f          	j	80064712 <ioctl>

0000000080063dea <tcsetattr>:
tcsetattr():
nuttx/libs/libc/termios/lib_tcsetattr.c:85
 *   - ENOTTY: The file associated with 'fd' is not a terminal.
 *
 ****************************************************************************/

int tcsetattr(int fd, int options, FAR const struct termios *termiosp)
{
    80063dea:	1101                	addi	sp,sp,-32
    80063dec:	e822                	sd	s0,16(sp)
    80063dee:	e04a                	sd	s2,0(sp)
    80063df0:	ec06                	sd	ra,24(sp)
    80063df2:	e426                	sd	s1,8(sp)
    80063df4:	842a                	mv	s0,a0
    80063df6:	8932                	mv	s2,a2
nuttx/libs/libc/termios/lib_tcsetattr.c:86
  if (options != TCSANOW)
    80063df8:	c999                	beqz	a1,80063e0e <tcsetattr+0x24>
    80063dfa:	84ae                	mv	s1,a1
nuttx/libs/libc/termios/lib_tcsetattr.c:88
    {
      tcdrain(fd);
    80063dfc:	770000ef          	jal	ra,8006456c <tcdrain>
nuttx/libs/libc/termios/lib_tcsetattr.c:91
    }

  if (options == TCSAFLUSH)
    80063e00:	4789                	li	a5,2
    80063e02:	00f49663          	bne	s1,a5,80063e0e <tcsetattr+0x24>
nuttx/libs/libc/termios/lib_tcsetattr.c:93
    {
      tcflush(fd, TCIFLUSH);
    80063e06:	4581                	li	a1,0
    80063e08:	8522                	mv	a0,s0
    80063e0a:	75a000ef          	jal	ra,80064564 <tcflush>
nuttx/libs/libc/termios/lib_tcsetattr.c:96
    }

  return ioctl(fd, TCSETS, (unsigned long)(uintptr_t)termiosp);
    80063e0e:	8522                	mv	a0,s0
nuttx/libs/libc/termios/lib_tcsetattr.c:97
}
    80063e10:	6442                	ld	s0,16(sp)
    80063e12:	60e2                	ld	ra,24(sp)
    80063e14:	64a2                	ld	s1,8(sp)
nuttx/libs/libc/termios/lib_tcsetattr.c:96
  return ioctl(fd, TCSETS, (unsigned long)(uintptr_t)termiosp);
    80063e16:	864a                	mv	a2,s2
nuttx/libs/libc/termios/lib_tcsetattr.c:97
}
    80063e18:	6902                	ld	s2,0(sp)
nuttx/libs/libc/termios/lib_tcsetattr.c:96
  return ioctl(fd, TCSETS, (unsigned long)(uintptr_t)termiosp);
    80063e1a:	10200593          	li	a1,258
nuttx/libs/libc/termios/lib_tcsetattr.c:97
}
    80063e1e:	6105                	addi	sp,sp,32
nuttx/libs/libc/termios/lib_tcsetattr.c:96
  return ioctl(fd, TCSETS, (unsigned long)(uintptr_t)termiosp);
    80063e20:	0f30006f          	j	80064712 <ioctl>

0000000080063e24 <gettimeofday>:
gettimeofday():
nuttx/libs/libc/time/lib_gettimeofday.c:59
 *   set appropriately.
 *
 ****************************************************************************/

int gettimeofday(FAR struct timeval *tv, FAR struct timezone *tz)
{
    80063e24:	1101                	addi	sp,sp,-32
    80063e26:	ec06                	sd	ra,24(sp)
    80063e28:	e822                	sd	s0,16(sp)
nuttx/libs/libc/time/lib_gettimeofday.c:66
  int ret;

  UNUSED(tz);

#ifdef CONFIG_DEBUG_FEATURES
  if (!tv)
    80063e2a:	e911                	bnez	a0,80063e3e <gettimeofday+0x1a>
nuttx/libs/libc/time/lib_gettimeofday.c:68
    {
      set_errno(EINVAL);
    80063e2c:	bedfc0ef          	jal	ra,80060a18 <__errno>
    80063e30:	47d9                	li	a5,22
    80063e32:	c11c                	sw	a5,0(a0)
nuttx/libs/libc/time/lib_gettimeofday.c:69
      return ERROR;
    80063e34:	557d                	li	a0,-1
nuttx/libs/libc/time/lib_gettimeofday.c:85
      tv->tv_sec  = ts.tv_sec;
      tv->tv_usec = ts.tv_nsec / NSEC_PER_USEC;
    }

  return ret;
}
    80063e36:	60e2                	ld	ra,24(sp)
    80063e38:	6442                	ld	s0,16(sp)
    80063e3a:	6105                	addi	sp,sp,32
    80063e3c:	8082                	ret
    80063e3e:	842a                	mv	s0,a0
nuttx/libs/libc/time/lib_gettimeofday.c:75
  ret = clock_gettime(CLOCK_REALTIME, &ts);
    80063e40:	858a                	mv	a1,sp
    80063e42:	4501                	li	a0,0
    80063e44:	7f0000ef          	jal	ra,80064634 <clock_gettime>
nuttx/libs/libc/time/lib_gettimeofday.c:76
  if (ret == OK)
    80063e48:	f57d                	bnez	a0,80063e36 <gettimeofday+0x12>
nuttx/libs/libc/time/lib_gettimeofday.c:80
      tv->tv_sec  = ts.tv_sec;
    80063e4a:	4782                	lw	a5,0(sp)
nuttx/libs/libc/time/lib_gettimeofday.c:81
      tv->tv_usec = ts.tv_nsec / NSEC_PER_USEC;
    80063e4c:	3e800713          	li	a4,1000
nuttx/libs/libc/time/lib_gettimeofday.c:80
      tv->tv_sec  = ts.tv_sec;
    80063e50:	c01c                	sw	a5,0(s0)
nuttx/libs/libc/time/lib_gettimeofday.c:81
      tv->tv_usec = ts.tv_nsec / NSEC_PER_USEC;
    80063e52:	67a2                	ld	a5,8(sp)
    80063e54:	02e7c7b3          	div	a5,a5,a4
    80063e58:	e41c                	sd	a5,8(s0)
    80063e5a:	bff1                	j	80063e36 <gettimeofday+0x12>

0000000080063e5c <nanosleep>:
nanosleep():
nuttx/libs/libc/time/lib_nanosleep.c:83
 *       implementation.
 *
 ****************************************************************************/

int nanosleep(FAR const struct timespec *rqtp, FAR struct timespec *rmtp)
{
    80063e5c:	1141                	addi	sp,sp,-16
    80063e5e:	862a                	mv	a2,a0
    80063e60:	86ae                	mv	a3,a1
nuttx/libs/libc/time/lib_nanosleep.c:94
   * As clock_nanosleep() method return errno on fail, which is not
   * compatible with nanosleep(), the nanosleep() need to return -1 on fail,
   * so we need to convert the return value.
   */

  ret = clock_nanosleep(CLOCK_REALTIME, 0, rqtp, rmtp);
    80063e62:	4501                	li	a0,0
    80063e64:	4581                	li	a1,0
nuttx/libs/libc/time/lib_nanosleep.c:83
{
    80063e66:	e022                	sd	s0,0(sp)
    80063e68:	e406                	sd	ra,8(sp)
nuttx/libs/libc/time/lib_nanosleep.c:94
  ret = clock_nanosleep(CLOCK_REALTIME, 0, rqtp, rmtp);
    80063e6a:	7de000ef          	jal	ra,80064648 <clock_nanosleep>
    80063e6e:	842a                	mv	s0,a0
nuttx/libs/libc/time/lib_nanosleep.c:95
  if (ret != 0)
    80063e70:	c509                	beqz	a0,80063e7a <nanosleep+0x1e>
nuttx/libs/libc/time/lib_nanosleep.c:97
    {
      set_errno(ret);
    80063e72:	ba7fc0ef          	jal	ra,80060a18 <__errno>
    80063e76:	c100                	sw	s0,0(a0)
nuttx/libs/libc/time/lib_nanosleep.c:98
      ret = ERROR;
    80063e78:	547d                	li	s0,-1
nuttx/libs/libc/time/lib_nanosleep.c:102
    }

  return ret;
}
    80063e7a:	60a2                	ld	ra,8(sp)
    80063e7c:	8522                	mv	a0,s0
    80063e7e:	6402                	ld	s0,0(sp)
    80063e80:	0141                	addi	sp,sp,16
    80063e82:	8082                	ret

0000000080063e84 <gmtime_r>:
gmtime_r():
nuttx/libs/libc/time/lib_gmtimer.c:287
 *  Time conversion (based on the POSIX API)
 *
 ****************************************************************************/

FAR struct tm *gmtime_r(FAR const time_t *timep, FAR struct tm *result)
{
    80063e84:	7119                	addi	sp,sp,-128
    80063e86:	f4a6                	sd	s1,104(sp)
    80063e88:	ecce                	sd	s3,88(sp)
    80063e8a:	e8d2                	sd	s4,80(sp)
    80063e8c:	e4d6                	sd	s5,72(sp)
    80063e8e:	e0da                	sd	s6,64(sp)
    80063e90:	fc86                	sd	ra,120(sp)
    80063e92:	f8a2                	sd	s0,112(sp)
    80063e94:	f0ca                	sd	s2,96(sp)
    80063e96:	fc5e                	sd	s7,56(sp)
    80063e98:	f862                	sd	s8,48(sp)
    80063e9a:	f466                	sd	s9,40(sp)
    80063e9c:	f06a                	sd	s10,32(sp)
    80063e9e:	ec6e                	sd	s11,24(sp)
nuttx/libs/libc/time/lib_gmtimer.c:299
  int    min;
  int    sec;

  /* Get the seconds since the EPOCH */

  epoch = *timep;
    80063ea0:	4100                	lw	s0,0(a0)
nuttx/libs/libc/time/lib_gmtimer.c:305
  linfo("timer=%d\n", (int)epoch);

  /* Convert to days, hours, minutes, and seconds since the EPOCH */

  jdn    = epoch / SEC_PER_DAY;
  epoch -= SEC_PER_DAY * jdn;
    80063ea2:	6755                	lui	a4,0x15
    80063ea4:	1807071b          	addiw	a4,a4,384
    80063ea8:	02e479bb          	remuw	s3,s0,a4
nuttx/libs/libc/time/lib_gmtimer.c:307

  hour   = epoch / SEC_PER_HOUR;
    80063eac:	6785                	lui	a5,0x1
    80063eae:	e107879b          	addiw	a5,a5,-496
clock_utc2calendar():
nuttx/libs/libc/time/lib_gmtimer.c:162
  value   = days  / (4 * DAYSPERNYEAR + 1); /* Number of 4-years periods since the epoch */
    80063eb2:	07862537          	lui	a0,0x7862
    80063eb6:	f805051b          	addiw	a0,a0,-128
gmtime_r():
nuttx/libs/libc/time/lib_gmtimer.c:287
{
    80063eba:	84ae                	mv	s1,a1
nuttx/libs/libc/time/lib_gmtimer.c:307
  hour   = epoch / SEC_PER_HOUR;
    80063ebc:	02f9db3b          	divuw	s6,s3,a5
nuttx/libs/libc/time/lib_gmtimer.c:308
  epoch -= SEC_PER_HOUR * hour;
    80063ec0:	02fb07bb          	mulw	a5,s6,a5
    80063ec4:	40f987bb          	subw	a5,s3,a5
nuttx/libs/libc/time/lib_gmtimer.c:310

  min    = epoch / SEC_PER_MIN;
    80063ec8:	03c00993          	li	s3,60
    80063ecc:	0337dabb          	divuw	s5,a5,s3
clock_utc2calendar():
nuttx/libs/libc/time/lib_gmtimer.c:162
  value   = days  / (4 * DAYSPERNYEAR + 1); /* Number of 4-years periods since the epoch */
    80063ed0:	02a4553b          	divuw	a0,s0,a0
gmtime_r():
nuttx/libs/libc/time/lib_gmtimer.c:304
  jdn    = epoch / SEC_PER_DAY;
    80063ed4:	02e4543b          	divuw	s0,s0,a4
clock_utc2calendar():
nuttx/libs/libc/time/lib_gmtimer.c:164
  value <<= 2;                              /* Years since the epoch */
    80063ed8:	00251a1b          	slliw	s4,a0,0x2
gmtime_r():
nuttx/libs/libc/time/lib_gmtimer.c:311
  epoch -= SEC_PER_MIN * min;
    80063edc:	035989bb          	mulw	s3,s3,s5
    80063ee0:	413789bb          	subw	s3,a5,s3
clock_utc2calendar():
nuttx/libs/libc/time/lib_gmtimer.c:163
  days   -= value * (4 * DAYSPERNYEAR + 1); /* Remaining days */
    80063ee4:	5b500793          	li	a5,1461
    80063ee8:	02a787bb          	mulw	a5,a5,a0
nuttx/libs/libc/time/lib_gmtimer.c:171
  leapyear = clock_isleapyear(value + EPOCH_YEAR);
    80063eec:	7b2a051b          	addiw	a0,s4,1970
nuttx/libs/libc/time/lib_gmtimer.c:163
  days   -= value * (4 * DAYSPERNYEAR + 1); /* Remaining days */
    80063ef0:	9c1d                	subw	s0,s0,a5
nuttx/libs/libc/time/lib_gmtimer.c:171
  leapyear = clock_isleapyear(value + EPOCH_YEAR);
    80063ef2:	6a2000ef          	jal	ra,80064594 <clock_isleapyear>
nuttx/libs/libc/time/lib_gmtimer.c:175
  tmp = (leapyear ? DAYSPERLYEAR : DAYSPERNYEAR);
    80063ef6:	e161                	bnez	a0,80063fb6 <gmtime_r+0x132>
    80063ef8:	4581                	li	a1,0
    80063efa:	16d00793          	li	a5,365
nuttx/libs/libc/time/lib_gmtimer.c:179
  while (days >= tmp)
    80063efe:	0007871b          	sext.w	a4,a5
    80063f02:	0af47e63          	bgeu	s0,a5,80063fbe <gmtime_r+0x13a>
nuttx/libs/libc/time/lib_gmtimer.c:200
  *year = EPOCH_YEAR + value;
    80063f06:	7b2a0c1b          	addiw	s8,s4,1970
nuttx/libs/libc/time/lib_gmtimer.c:205
  max = 11;
    80063f0a:	4cad                	li	s9,11
nuttx/libs/libc/time/lib_gmtimer.c:204
  min = 0;
    80063f0c:	4901                	li	s2,0
nuttx/libs/libc/time/lib_gmtimer.c:211
      value = (min + max) >> 1;
    80063f0e:	01990bbb          	addw	s7,s2,s9
    80063f12:	401bdd1b          	sraiw	s10,s7,0x1
nuttx/libs/libc/time/lib_gmtimer.c:217
      tmp = clock_daysbeforemonth(value + 1, leapyear);
    80063f16:	001d0d9b          	addiw	s11,s10,1
    80063f1a:	856e                	mv	a0,s11
    80063f1c:	e42e                	sd	a1,8(sp)
    80063f1e:	656000ef          	jal	ra,80064574 <clock_daysbeforemonth>
nuttx/libs/libc/time/lib_gmtimer.c:223
      if (tmp > days)
    80063f22:	2501                	sext.w	a0,a0
    80063f24:	65a2                	ld	a1,8(sp)
    80063f26:	0aa47d63          	bgeu	s0,a0,80063fe0 <gmtime_r+0x15c>
nuttx/libs/libc/time/lib_gmtimer.c:229
          tmp = clock_daysbeforemonth(value, leapyear);
    80063f2a:	856a                	mv	a0,s10
    80063f2c:	648000ef          	jal	ra,80064574 <clock_daysbeforemonth>
nuttx/libs/libc/time/lib_gmtimer.c:230
          if (tmp > days)
    80063f30:	2501                	sext.w	a0,a0
    80063f32:	65a2                	ld	a1,8(sp)
    80063f34:	0aa47863          	bgeu	s0,a0,80063fe4 <gmtime_r+0x160>
nuttx/libs/libc/time/lib_gmtimer.c:234
              max = value - 1;
    80063f38:	fffd0c9b          	addiw	s9,s10,-1
nuttx/libs/libc/time/lib_gmtimer.c:256
  while (min < max);
    80063f3c:	fd9949e3          	blt	s2,s9,80063f0e <gmtime_r+0x8a>
nuttx/libs/libc/time/lib_gmtimer.c:262
  days -= clock_daysbeforemonth(value, leapyear);
    80063f40:	854a                	mv	a0,s2
    80063f42:	632000ef          	jal	ra,80064574 <clock_daysbeforemonth>
    80063f46:	9c09                	subw	s0,s0,a0
nuttx/libs/libc/time/lib_gmtimer.c:269
  *day   = days + 1;  /* 1-based */
    80063f48:	0014051b          	addiw	a0,s0,1
gmtime_r():
nuttx/libs/libc/time/lib_gmtimer.c:325

  linfo("jdn=%d year=%d month=%d day=%d\n", (int)jdn, year, month, day);

  /* Then return the struct tm contents */

  result->tm_year   = year - TM_YEAR_BASE; /* Relative to 1900 */
    80063f4c:	046a0a1b          	addiw	s4,s4,70
nuttx/libs/libc/time/lib_gmtimer.c:332
  result->tm_mday   = day;                 /* one-based */
  result->tm_hour   = hour;
  result->tm_min    = min;
  result->tm_sec    = sec;

  result->tm_wday   = clock_dayoftheweek(day, month, year);
    80063f50:	8662                	mv	a2,s8
    80063f52:	0019059b          	addiw	a1,s2,1
nuttx/libs/libc/time/lib_gmtimer.c:325
  result->tm_year   = year - TM_YEAR_BASE; /* Relative to 1900 */
    80063f56:	0144aa23          	sw	s4,20(s1)
nuttx/libs/libc/time/lib_gmtimer.c:326
  result->tm_mon    = month - 1;           /* zero-based */
    80063f5a:	0124a823          	sw	s2,16(s1)
nuttx/libs/libc/time/lib_gmtimer.c:328
  result->tm_hour   = hour;
    80063f5e:	0164a423          	sw	s6,8(s1)
nuttx/libs/libc/time/lib_gmtimer.c:329
  result->tm_min    = min;
    80063f62:	0154a223          	sw	s5,4(s1)
nuttx/libs/libc/time/lib_gmtimer.c:330
  result->tm_sec    = sec;
    80063f66:	0134a023          	sw	s3,0(s1)
nuttx/libs/libc/time/lib_gmtimer.c:327
  result->tm_mday   = day;                 /* one-based */
    80063f6a:	c4c8                	sw	a0,12(s1)
nuttx/libs/libc/time/lib_gmtimer.c:332
  result->tm_wday   = clock_dayoftheweek(day, month, year);
    80063f6c:	64a000ef          	jal	ra,800645b6 <clock_dayoftheweek>
nuttx/libs/libc/time/lib_gmtimer.c:334
  result->tm_yday   = day - 1 +
                      clock_daysbeforemonth(result->tm_mon,
    80063f70:	0104a903          	lw	s2,16(s1)
nuttx/libs/libc/time/lib_gmtimer.c:332
  result->tm_wday   = clock_dayoftheweek(day, month, year);
    80063f74:	cc88                	sw	a0,24(s1)
nuttx/libs/libc/time/lib_gmtimer.c:335
                                            clock_isleapyear(year));
    80063f76:	8562                	mv	a0,s8
    80063f78:	61c000ef          	jal	ra,80064594 <clock_isleapyear>
nuttx/libs/libc/time/lib_gmtimer.c:334
                      clock_daysbeforemonth(result->tm_mon,
    80063f7c:	00a035b3          	snez	a1,a0
    80063f80:	854a                	mv	a0,s2
    80063f82:	5f2000ef          	jal	ra,80064574 <clock_daysbeforemonth>
nuttx/libs/libc/time/lib_gmtimer.c:333
  result->tm_yday   = day - 1 +
    80063f86:	9c29                	addw	s0,s0,a0
    80063f88:	ccc0                	sw	s0,28(s1)
nuttx/libs/libc/time/lib_gmtimer.c:341
  result->tm_isdst  = 0;
  result->tm_gmtoff = 0;
  result->tm_zone   = NULL;

  return result;
}
    80063f8a:	70e6                	ld	ra,120(sp)
    80063f8c:	7446                	ld	s0,112(sp)
nuttx/libs/libc/time/lib_gmtimer.c:336
  result->tm_isdst  = 0;
    80063f8e:	0204a023          	sw	zero,32(s1)
nuttx/libs/libc/time/lib_gmtimer.c:337
  result->tm_gmtoff = 0;
    80063f92:	0204b423          	sd	zero,40(s1)
nuttx/libs/libc/time/lib_gmtimer.c:338
  result->tm_zone   = NULL;
    80063f96:	0204b823          	sd	zero,48(s1)
nuttx/libs/libc/time/lib_gmtimer.c:341
}
    80063f9a:	7906                	ld	s2,96(sp)
    80063f9c:	69e6                	ld	s3,88(sp)
    80063f9e:	6a46                	ld	s4,80(sp)
    80063fa0:	6aa6                	ld	s5,72(sp)
    80063fa2:	6b06                	ld	s6,64(sp)
    80063fa4:	7be2                	ld	s7,56(sp)
    80063fa6:	7c42                	ld	s8,48(sp)
    80063fa8:	7ca2                	ld	s9,40(sp)
    80063faa:	7d02                	ld	s10,32(sp)
    80063fac:	6de2                	ld	s11,24(sp)
    80063fae:	8526                	mv	a0,s1
    80063fb0:	74a6                	ld	s1,104(sp)
    80063fb2:	6109                	addi	sp,sp,128
    80063fb4:	8082                	ret
clock_utc2calendar():
nuttx/libs/libc/time/lib_gmtimer.c:341
    80063fb6:	4585                	li	a1,1
nuttx/libs/libc/time/lib_gmtimer.c:175
  tmp = (leapyear ? DAYSPERLYEAR : DAYSPERNYEAR);
    80063fb8:	16e00793          	li	a5,366
    80063fbc:	b789                	j	80063efe <gmtime_r+0x7a>
nuttx/libs/libc/time/lib_gmtimer.c:188
      leapyear = clock_isleapyear(value + EPOCH_YEAR);
    80063fbe:	7b3a051b          	addiw	a0,s4,1971
nuttx/libs/libc/time/lib_gmtimer.c:183
      value++;
    80063fc2:	001a091b          	addiw	s2,s4,1
nuttx/libs/libc/time/lib_gmtimer.c:184
      days -= tmp;
    80063fc6:	9c19                	subw	s0,s0,a4
nuttx/libs/libc/time/lib_gmtimer.c:188
      leapyear = clock_isleapyear(value + EPOCH_YEAR);
    80063fc8:	5cc000ef          	jal	ra,80064594 <clock_isleapyear>
nuttx/libs/libc/time/lib_gmtimer.c:192
      tmp = (leapyear ? DAYSPERLYEAR : DAYSPERNYEAR);
    80063fcc:	e511                	bnez	a0,80063fd8 <gmtime_r+0x154>
    80063fce:	4581                	li	a1,0
    80063fd0:	16d00793          	li	a5,365
    80063fd4:	8a4a                	mv	s4,s2
    80063fd6:	b725                	j	80063efe <gmtime_r+0x7a>
    80063fd8:	4585                	li	a1,1
    80063fda:	16e00793          	li	a5,366
    80063fde:	bfdd                	j	80063fd4 <gmtime_r+0x150>
nuttx/libs/libc/time/lib_gmtimer.c:247
          min = value + 1;
    80063fe0:	896e                	mv	s2,s11
    80063fe2:	bfa9                	j	80063f3c <gmtime_r+0xb8>
nuttx/libs/libc/time/lib_gmtimer.c:211
      value = (min + max) >> 1;
    80063fe4:	896a                	mv	s2,s10
    80063fe6:	bfa9                	j	80063f40 <gmtime_r+0xbc>

0000000080063fe8 <localtime_r>:
localtime_r():
nuttx/libs/libc/time/lib_gmtimer.c:345

FAR struct tm *localtime_r(FAR const time_t *timep, FAR struct tm *result)
{
  return gmtime_r(timep, result);
    80063fe8:	e9dff06f          	j	80063e84 <gmtime_r>

0000000080063fec <task_get_info>:
task_get_info():
nuttx/libs/libc/tls/task_getinfo.c:50
 *
 ****************************************************************************/

FAR struct task_info_s *task_get_info(void)
{
  FAR struct tls_info_s *info = tls_get_info();
    80063fec:	7779                	lui	a4,0xffffe
up_getsp():
nuttx/include/arch/irq.h:601
    80063fee:	878a                	mv	a5,sp
task_get_info():
nuttx/libs/libc/tls/task_getinfo.c:50
    80063ff0:	8ff9                	and	a5,a5,a4
nuttx/libs/libc/tls/task_getinfo.c:53

  return info->tl_task;
}
    80063ff2:	6388                	ld	a0,0(a5)
    80063ff4:	8082                	ret

0000000080063ff6 <sysconf>:
sysconf():
nuttx/libs/libc/unistd/lib_sysconf.c:216
   * It was originally created to support only the functionality of
   * getdtablesize() but can be extended to support as much of the standard
   * POSIX sysconf() as is necessary.
   */

  switch (name)
    80063ff6:	03c00713          	li	a4,60
nuttx/libs/libc/unistd/lib_sysconf.c:207
{
    80063ffa:	87aa                	mv	a5,a0
nuttx/libs/libc/unistd/lib_sysconf.c:216
  switch (name)
    80063ffc:	06a74a63          	blt	a4,a0,80064070 <sysconf+0x7a>
