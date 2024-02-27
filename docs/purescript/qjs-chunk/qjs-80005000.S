    80004000:	00e8d7b3          	srl	a5,a7,a4
    80004004:	0ff7f793          	zext.b	a5,a5
    80004008:	e399                	bnez	a5,8000400e <__divti3+0x118>
    8000400a:	1761                	addi	a4,a4,-8
    8000400c:	fb75                	bnez	a4,80004000 <__divti3+0x10a>
    8000400e:	00e8d6b3          	srl	a3,a7,a4
    80004012:	00061797          	auipc	a5,0x61
    80004016:	e3678793          	addi	a5,a5,-458 # 80064e48 <__clz_tab>
    8000401a:	97b6                	add	a5,a5,a3
    8000401c:	0007c783          	lbu	a5,0(a5)
    80004020:	04000693          	li	a3,64
    80004024:	97ba                	add	a5,a5,a4
    80004026:	40f68733          	sub	a4,a3,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1096
    8000402a:	08f69863          	bne	a3,a5,800040ba <__divti3+0x1c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1105
    8000402e:	411585b3          	sub	a1,a1,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1106
    80004032:	4305                	li	t1,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1124
    80004034:	0208d513          	srli	a0,a7,0x20
    80004038:	02089613          	slli	a2,a7,0x20
    8000403c:	9201                	srli	a2,a2,0x20
    8000403e:	020e5713          	srli	a4,t3,0x20
    80004042:	02a5d7b3          	divu	a5,a1,a0
    80004046:	02a5f6b3          	remu	a3,a1,a0
    8000404a:	02f605b3          	mul	a1,a2,a5
    8000404e:	1682                	slli	a3,a3,0x20
    80004050:	8f55                	or	a4,a4,a3
    80004052:	86be                	mv	a3,a5
    80004054:	00b77c63          	bgeu	a4,a1,8000406c <__divti3+0x176>
    80004058:	9746                	add	a4,a4,a7
    8000405a:	fff78693          	addi	a3,a5,-1
    8000405e:	01176763          	bltu	a4,a7,8000406c <__divti3+0x176>
    80004062:	00b77563          	bgeu	a4,a1,8000406c <__divti3+0x176>
    80004066:	ffe78693          	addi	a3,a5,-2
    8000406a:	9746                	add	a4,a4,a7
    8000406c:	8f0d                	sub	a4,a4,a1
    8000406e:	02a777b3          	remu	a5,a4,a0
    80004072:	1e02                	slli	t3,t3,0x20
    80004074:	020e5e13          	srli	t3,t3,0x20
    80004078:	02a75733          	divu	a4,a4,a0
    8000407c:	1782                	slli	a5,a5,0x20
    8000407e:	01c7ee33          	or	t3,a5,t3
    80004082:	02e60633          	mul	a2,a2,a4
    80004086:	87ba                	mv	a5,a4
    80004088:	00ce7b63          	bgeu	t3,a2,8000409e <__divti3+0x1a8>
    8000408c:	9e46                	add	t3,t3,a7
    8000408e:	fff70793          	addi	a5,a4,-1
    80004092:	011e6663          	bltu	t3,a7,8000409e <__divti3+0x1a8>
    80004096:	00ce7463          	bgeu	t3,a2,8000409e <__divti3+0x1a8>
    8000409a:	ffe70793          	addi	a5,a4,-2
    8000409e:	02069513          	slli	a0,a3,0x20
    800040a2:	8d5d                	or	a0,a0,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1224
    800040a4:	859a                	mv	a1,t1
__divti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1246
    800040a6:	00080963          	beqz	a6,800040b8 <__divti3+0x1c2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1247
    800040aa:	00a037b3          	snez	a5,a0
    800040ae:	406005b3          	neg	a1,t1
    800040b2:	8d9d                	sub	a1,a1,a5
    800040b4:	40a00533          	neg	a0,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1250
    800040b8:	8082                	ret
__udivmodti4():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1114
    800040ba:	00e898b3          	sll	a7,a7,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1115
    800040be:	00f5d533          	srl	a0,a1,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1117
    800040c2:	00ee9e33          	sll	t3,t4,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1116
    800040c6:	00e595b3          	sll	a1,a1,a4
    800040ca:	00fed7b3          	srl	a5,t4,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    800040ce:	0208de93          	srli	t4,a7,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1116
    800040d2:	00b7e633          	or	a2,a5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    800040d6:	03d557b3          	divu	a5,a0,t4
    800040da:	02089593          	slli	a1,a7,0x20
    800040de:	9181                	srli	a1,a1,0x20
    800040e0:	03d57733          	remu	a4,a0,t4
    800040e4:	02065513          	srli	a0,a2,0x20
    800040e8:	833e                	mv	t1,a5
    800040ea:	02f586b3          	mul	a3,a1,a5
    800040ee:	1702                	slli	a4,a4,0x20
    800040f0:	8f49                	or	a4,a4,a0
    800040f2:	00d77c63          	bgeu	a4,a3,8000410a <__divti3+0x214>
    800040f6:	9746                	add	a4,a4,a7
    800040f8:	fff78313          	addi	t1,a5,-1
    800040fc:	01176763          	bltu	a4,a7,8000410a <__divti3+0x214>
    80004100:	00d77563          	bgeu	a4,a3,8000410a <__divti3+0x214>
    80004104:	ffe78313          	addi	t1,a5,-2
    80004108:	9746                	add	a4,a4,a7
    8000410a:	40d706b3          	sub	a3,a4,a3
    8000410e:	03d6f733          	remu	a4,a3,t4
    80004112:	1602                	slli	a2,a2,0x20
    80004114:	9201                	srli	a2,a2,0x20
    80004116:	03d6d6b3          	divu	a3,a3,t4
    8000411a:	1702                	slli	a4,a4,0x20
    8000411c:	02d587b3          	mul	a5,a1,a3
    80004120:	00c765b3          	or	a1,a4,a2
    80004124:	8736                	mv	a4,a3
    80004126:	00f5fc63          	bgeu	a1,a5,8000413e <__divti3+0x248>
    8000412a:	95c6                	add	a1,a1,a7
    8000412c:	fff68713          	addi	a4,a3,-1
    80004130:	0115e763          	bltu	a1,a7,8000413e <__divti3+0x248>
    80004134:	00f5f563          	bgeu	a1,a5,8000413e <__divti3+0x248>
    80004138:	ffe68713          	addi	a4,a3,-2
    8000413c:	95c6                	add	a1,a1,a7
    8000413e:	1302                	slli	t1,t1,0x20
    80004140:	8d9d                	sub	a1,a1,a5
    80004142:	00e36333          	or	t1,t1,a4
    80004146:	b5fd                	j	80004034 <__divti3+0x13e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1140
    80004148:	14d5e163          	bltu	a1,a3,8000428a <__divti3+0x394>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1159
    8000414c:	03800713          	li	a4,56
    80004150:	00e6d7b3          	srl	a5,a3,a4
    80004154:	0ff7f793          	zext.b	a5,a5
    80004158:	e399                	bnez	a5,8000415e <__divti3+0x268>
    8000415a:	1761                	addi	a4,a4,-8
    8000415c:	fb75                	bnez	a4,80004150 <__divti3+0x25a>
    8000415e:	00e6d533          	srl	a0,a3,a4
    80004162:	00061797          	auipc	a5,0x61
    80004166:	ce678793          	addi	a5,a5,-794 # 80064e48 <__clz_tab>
    8000416a:	97aa                	add	a5,a5,a0
    8000416c:	0007c783          	lbu	a5,0(a5)
    80004170:	97ba                	add	a5,a5,a4
    80004172:	04000713          	li	a4,64
    80004176:	40f70333          	sub	t1,a4,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1160
    8000417a:	00f71c63          	bne	a4,a5,80004192 <__divti3+0x29c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1172
    8000417e:	4505                	li	a0,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1170
    80004180:	f2b6e2e3          	bltu	a3,a1,800040a4 <__divti3+0x1ae>
    80004184:	00ceb533          	sltu	a0,t4,a2
    80004188:	00154513          	xori	a0,a0,1
    8000418c:	1502                	slli	a0,a0,0x20
    8000418e:	9101                	srli	a0,a0,0x20
    80004190:	bf11                	j	800040a4 <__divti3+0x1ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    80004192:	00f65733          	srl	a4,a2,a5
    80004196:	006696b3          	sll	a3,a3,t1
    8000419a:	8ed9                	or	a3,a3,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1196
    8000419c:	00f5d533          	srl	a0,a1,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    800041a0:	0206df13          	srli	t5,a3,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    800041a4:	006595b3          	sll	a1,a1,t1
    800041a8:	00fed7b3          	srl	a5,t4,a5
    800041ac:	00b7e8b3          	or	a7,a5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    800041b0:	03e555b3          	divu	a1,a0,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    800041b4:	00030e1b          	sext.w	t3,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1195
    800041b8:	00661633          	sll	a2,a2,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    800041bc:	02069313          	slli	t1,a3,0x20
    800041c0:	02035313          	srli	t1,t1,0x20
    800041c4:	0208d793          	srli	a5,a7,0x20
    800041c8:	03e57733          	remu	a4,a0,t5
    800041cc:	02b30533          	mul	a0,t1,a1
    800041d0:	1702                	slli	a4,a4,0x20
    800041d2:	8fd9                	or	a5,a5,a4
    800041d4:	872e                	mv	a4,a1
    800041d6:	00a7fc63          	bgeu	a5,a0,800041ee <__divti3+0x2f8>
    800041da:	97b6                	add	a5,a5,a3
    800041dc:	fff58713          	addi	a4,a1,-1
    800041e0:	00d7e763          	bltu	a5,a3,800041ee <__divti3+0x2f8>
    800041e4:	00a7f563          	bgeu	a5,a0,800041ee <__divti3+0x2f8>
    800041e8:	ffe58713          	addi	a4,a1,-2
    800041ec:	97b6                	add	a5,a5,a3
    800041ee:	8f89                	sub	a5,a5,a0
    800041f0:	03e7f5b3          	remu	a1,a5,t5
    800041f4:	1882                	slli	a7,a7,0x20
    800041f6:	0208d893          	srli	a7,a7,0x20
    800041fa:	03e7d7b3          	divu	a5,a5,t5
    800041fe:	1582                	slli	a1,a1,0x20
    80004200:	0115e5b3          	or	a1,a1,a7
    80004204:	02f30333          	mul	t1,t1,a5
    80004208:	88be                	mv	a7,a5
    8000420a:	0065fc63          	bgeu	a1,t1,80004222 <__divti3+0x32c>
    8000420e:	95b6                	add	a1,a1,a3
    80004210:	fff78893          	addi	a7,a5,-1
    80004214:	00d5e763          	bltu	a1,a3,80004222 <__divti3+0x32c>
    80004218:	0065f563          	bgeu	a1,t1,80004222 <__divti3+0x32c>
    8000421c:	ffe78893          	addi	a7,a5,-2
    80004220:	95b6                	add	a1,a1,a3
    80004222:	02071513          	slli	a0,a4,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    80004226:	577d                	li	a4,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004228:	01156533          	or	a0,a0,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    8000422c:	9301                	srli	a4,a4,0x20
    8000422e:	02055693          	srli	a3,a0,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004232:	406587b3          	sub	a5,a1,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    80004236:	00e575b3          	and	a1,a0,a4
    8000423a:	8f71                	and	a4,a4,a2
    8000423c:	9201                	srli	a2,a2,0x20
    8000423e:	02e588b3          	mul	a7,a1,a4
    80004242:	02e68733          	mul	a4,a3,a4
    80004246:	02c585b3          	mul	a1,a1,a2
    8000424a:	02c686b3          	mul	a3,a3,a2
    8000424e:	95ba                	add	a1,a1,a4
    80004250:	0208d613          	srli	a2,a7,0x20
    80004254:	962e                	add	a2,a2,a1
    80004256:	00e67563          	bgeu	a2,a4,80004260 <__divti3+0x36a>
    8000425a:	4705                	li	a4,1
    8000425c:	1702                	slli	a4,a4,0x20
    8000425e:	96ba                	add	a3,a3,a4
    80004260:	02065713          	srli	a4,a2,0x20
    80004264:	96ba                	add	a3,a3,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    80004266:	02d7e063          	bltu	a5,a3,80004286 <__divti3+0x390>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1209
    8000426a:	4301                	li	t1,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    8000426c:	e2d79ce3          	bne	a5,a3,800040a4 <__divti3+0x1ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    80004270:	57fd                	li	a5,-1
    80004272:	9381                	srli	a5,a5,0x20
    80004274:	8e7d                	and	a2,a2,a5
    80004276:	1602                	slli	a2,a2,0x20
    80004278:	00f8f8b3          	and	a7,a7,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1198
    8000427c:	01ce9eb3          	sll	t4,t4,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    80004280:	9646                	add	a2,a2,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    80004282:	e2cef1e3          	bgeu	t4,a2,800040a4 <__divti3+0x1ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1205
    80004286:	157d                	addi	a0,a0,-1
    80004288:	b3a5                	j	80003ff0 <__divti3+0xfa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1145
    8000428a:	4301                	li	t1,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1144
    8000428c:	4501                	li	a0,0
    8000428e:	bd19                	j	800040a4 <__divti3+0x1ae>

0000000080004290 <__modti3>:
__modti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1256
    80004290:	8eaa                	mv	t4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1257
    80004292:	4881                	li	a7,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1262
    80004294:	0005da63          	bgez	a1,800042a8 <__modti3+0x18>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1264
    80004298:	00a037b3          	snez	a5,a0
    8000429c:	40b005b3          	neg	a1,a1
    800042a0:	8d9d                	sub	a1,a1,a5
    800042a2:	40a00eb3          	neg	t4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1263
    800042a6:	58fd                	li	a7,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1265
    800042a8:	0006d963          	bgez	a3,800042ba <__modti3+0x2a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1266
    800042ac:	00c03733          	snez	a4,a2
    800042b0:	40d006b3          	neg	a3,a3
    800042b4:	8e99                	sub	a3,a3,a4
    800042b6:	40c00633          	neg	a2,a2
__udivmodti4():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1024
    800042ba:	8332                	mv	t1,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1026
    800042bc:	8576                	mv	a0,t4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1027
    800042be:	882e                	mv	a6,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1064
    800042c0:	1c069f63          	bnez	a3,8000449e <__modti3+0x20e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1066
    800042c4:	0cc5f563          	bgeu	a1,a2,8000438e <__modti3+0xfe>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1070
    800042c8:	03800713          	li	a4,56
    800042cc:	00e657b3          	srl	a5,a2,a4
    800042d0:	0ff7f793          	zext.b	a5,a5
    800042d4:	e399                	bnez	a5,800042da <__modti3+0x4a>
    800042d6:	1761                	addi	a4,a4,-8
    800042d8:	fb75                	bnez	a4,800042cc <__modti3+0x3c>
    800042da:	00e656b3          	srl	a3,a2,a4
    800042de:	00061797          	auipc	a5,0x61
    800042e2:	b6a78793          	addi	a5,a5,-1174 # 80064e48 <__clz_tab>
    800042e6:	97b6                	add	a5,a5,a3
    800042e8:	0007c683          	lbu	a3,0(a5)
    800042ec:	04000793          	li	a5,64
    800042f0:	40e78733          	sub	a4,a5,a4
    800042f4:	40d70e33          	sub	t3,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1072
    800042f8:	02d70063          	beq	a4,a3,80004318 <__modti3+0x88>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    800042fc:	04000813          	li	a6,64
    80004300:	41c8083b          	subw	a6,a6,t3
    80004304:	01c595b3          	sll	a1,a1,t3
    80004308:	010ed833          	srl	a6,t4,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1077
    8000430c:	01c61333          	sll	t1,a2,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    80004310:	00b86833          	or	a6,a6,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1079
    80004314:	01ce9533          	sll	a0,t4,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1082
    80004318:	02035693          	srli	a3,t1,0x20
    8000431c:	02d855b3          	divu	a1,a6,a3
    80004320:	02031613          	slli	a2,t1,0x20
    80004324:	9201                	srli	a2,a2,0x20
    80004326:	02055793          	srli	a5,a0,0x20
    8000432a:	02d87733          	remu	a4,a6,a3
    8000432e:	02b605b3          	mul	a1,a2,a1
    80004332:	1702                	slli	a4,a4,0x20
    80004334:	8fd9                	or	a5,a5,a4
    80004336:	00b7f863          	bgeu	a5,a1,80004346 <__modti3+0xb6>
    8000433a:	979a                	add	a5,a5,t1
    8000433c:	0067e563          	bltu	a5,t1,80004346 <__modti3+0xb6>
    80004340:	00b7f363          	bgeu	a5,a1,80004346 <__modti3+0xb6>
    80004344:	979a                	add	a5,a5,t1
    80004346:	8f8d                	sub	a5,a5,a1
    80004348:	02d7f733          	remu	a4,a5,a3
    8000434c:	02d7d7b3          	divu	a5,a5,a3
    80004350:	1702                	slli	a4,a4,0x20
    80004352:	02f60833          	mul	a6,a2,a5
    80004356:	02051793          	slli	a5,a0,0x20
    8000435a:	9381                	srli	a5,a5,0x20
    8000435c:	00f76533          	or	a0,a4,a5
    80004360:	01057863          	bgeu	a0,a6,80004370 <__modti3+0xe0>
    80004364:	951a                	add	a0,a0,t1
    80004366:	00656563          	bltu	a0,t1,80004370 <__modti3+0xe0>
    8000436a:	01057363          	bgeu	a0,a6,80004370 <__modti3+0xe0>
    8000436e:	951a                	add	a0,a0,t1
    80004370:	41050533          	sub	a0,a0,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1131
    80004374:	01c55533          	srl	a0,a0,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1133
    80004378:	4581                	li	a1,0
__modti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1269
    8000437a:	00088963          	beqz	a7,8000438c <__modti3+0xfc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1270
    8000437e:	00a037b3          	snez	a5,a0
    80004382:	40b005b3          	neg	a1,a1
    80004386:	8d9d                	sub	a1,a1,a5
    80004388:	40a00533          	neg	a0,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1273
    8000438c:	8082                	ret
__udivmodti4():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1091
    8000438e:	e601                	bnez	a2,80004396 <__modti3+0x106>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1092
    80004390:	4305                	li	t1,1
    80004392:	02d35333          	divu	t1,t1,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1094
    80004396:	03800793          	li	a5,56
    8000439a:	00f35733          	srl	a4,t1,a5
    8000439e:	0ff77713          	zext.b	a4,a4
    800043a2:	e319                	bnez	a4,800043a8 <__modti3+0x118>
    800043a4:	17e1                	addi	a5,a5,-8
    800043a6:	fbf5                	bnez	a5,8000439a <__modti3+0x10a>
    800043a8:	00f356b3          	srl	a3,t1,a5
    800043ac:	00061717          	auipc	a4,0x61
    800043b0:	a9c70713          	addi	a4,a4,-1380 # 80064e48 <__clz_tab>
    800043b4:	9736                	add	a4,a4,a3
    800043b6:	00074703          	lbu	a4,0(a4)
    800043ba:	973e                	add	a4,a4,a5
    800043bc:	04000793          	li	a5,64
    800043c0:	40e78e33          	sub	t3,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1096
    800043c4:	06e79463          	bne	a5,a4,8000442c <__modti3+0x19c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1105
    800043c8:	406585b3          	sub	a1,a1,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1124
    800043cc:	02035693          	srli	a3,t1,0x20
    800043d0:	02031713          	slli	a4,t1,0x20
    800043d4:	9301                	srli	a4,a4,0x20
    800043d6:	02055613          	srli	a2,a0,0x20
    800043da:	02d5f7b3          	remu	a5,a1,a3
    800043de:	02d5d5b3          	divu	a1,a1,a3
    800043e2:	1782                	slli	a5,a5,0x20
    800043e4:	8fd1                	or	a5,a5,a2
    800043e6:	02b705b3          	mul	a1,a4,a1
    800043ea:	00b7f863          	bgeu	a5,a1,800043fa <__modti3+0x16a>
    800043ee:	979a                	add	a5,a5,t1
    800043f0:	0067e563          	bltu	a5,t1,800043fa <__modti3+0x16a>
    800043f4:	00b7f363          	bgeu	a5,a1,800043fa <__modti3+0x16a>
    800043f8:	979a                	add	a5,a5,t1
    800043fa:	40b785b3          	sub	a1,a5,a1
    800043fe:	02d5f7b3          	remu	a5,a1,a3
    80004402:	02d5d5b3          	divu	a1,a1,a3
    80004406:	02b705b3          	mul	a1,a4,a1
    8000440a:	02079713          	slli	a4,a5,0x20
    8000440e:	02051793          	slli	a5,a0,0x20
    80004412:	9381                	srli	a5,a5,0x20
    80004414:	00f76533          	or	a0,a4,a5
    80004418:	00b57863          	bgeu	a0,a1,80004428 <__modti3+0x198>
    8000441c:	951a                	add	a0,a0,t1
    8000441e:	00656563          	bltu	a0,t1,80004428 <__modti3+0x198>
    80004422:	00b57363          	bgeu	a0,a1,80004428 <__modti3+0x198>
    80004426:	951a                	add	a0,a0,t1
    80004428:	8d0d                	sub	a0,a0,a1
    8000442a:	b7a9                	j	80004374 <__modti3+0xe4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1114
    8000442c:	01c31333          	sll	t1,t1,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1115
    80004430:	00e5d633          	srl	a2,a1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    80004434:	02035813          	srli	a6,t1,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1116
    80004438:	01c595b3          	sll	a1,a1,t3
    8000443c:	00eed733          	srl	a4,t4,a4
    80004440:	00b766b3          	or	a3,a4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    80004444:	03067733          	remu	a4,a2,a6
    80004448:	02031593          	slli	a1,t1,0x20
    8000444c:	9181                	srli	a1,a1,0x20
    8000444e:	0206d793          	srli	a5,a3,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1117
    80004452:	01ce9533          	sll	a0,t4,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    80004456:	03065633          	divu	a2,a2,a6
    8000445a:	1702                	slli	a4,a4,0x20
    8000445c:	8fd9                	or	a5,a5,a4
    8000445e:	02c58633          	mul	a2,a1,a2
    80004462:	00c7f863          	bgeu	a5,a2,80004472 <__modti3+0x1e2>
    80004466:	979a                	add	a5,a5,t1
    80004468:	0067e563          	bltu	a5,t1,80004472 <__modti3+0x1e2>
    8000446c:	00c7f363          	bgeu	a5,a2,80004472 <__modti3+0x1e2>
    80004470:	979a                	add	a5,a5,t1
    80004472:	8f91                	sub	a5,a5,a2
    80004474:	0307f733          	remu	a4,a5,a6
    80004478:	1682                	slli	a3,a3,0x20
    8000447a:	9281                	srli	a3,a3,0x20
    8000447c:	0307d7b3          	divu	a5,a5,a6
    80004480:	1702                	slli	a4,a4,0x20
    80004482:	02f587b3          	mul	a5,a1,a5
    80004486:	00d765b3          	or	a1,a4,a3
    8000448a:	00f5f863          	bgeu	a1,a5,8000449a <__modti3+0x20a>
    8000448e:	959a                	add	a1,a1,t1
    80004490:	0065e563          	bltu	a1,t1,8000449a <__modti3+0x20a>
    80004494:	00f5f363          	bgeu	a1,a5,8000449a <__modti3+0x20a>
    80004498:	959a                	add	a1,a1,t1
    8000449a:	8d9d                	sub	a1,a1,a5
    8000449c:	bf05                	j	800043cc <__modti3+0x13c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1140
    8000449e:	ecd5eee3          	bltu	a1,a3,8000437a <__modti3+0xea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1159
    800044a2:	03800713          	li	a4,56
    800044a6:	00e6d7b3          	srl	a5,a3,a4
    800044aa:	0ff7f793          	zext.b	a5,a5
    800044ae:	e399                	bnez	a5,800044b4 <__modti3+0x224>
    800044b0:	1761                	addi	a4,a4,-8
    800044b2:	fb75                	bnez	a4,800044a6 <__modti3+0x216>
    800044b4:	00e6d333          	srl	t1,a3,a4
    800044b8:	00061797          	auipc	a5,0x61
    800044bc:	99078793          	addi	a5,a5,-1648 # 80064e48 <__clz_tab>
    800044c0:	979a                	add	a5,a5,t1
    800044c2:	0007cf03          	lbu	t5,0(a5)
    800044c6:	04000793          	li	a5,64
    800044ca:	9f3a                	add	t5,t5,a4
    800044cc:	41e782b3          	sub	t0,a5,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1160
    800044d0:	01e79f63          	bne	a5,t5,800044ee <__modti3+0x25e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1170
    800044d4:	00b6e463          	bltu	a3,a1,800044dc <__modti3+0x24c>
    800044d8:	00cee963          	bltu	t4,a2,800044ea <__modti3+0x25a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1173
    800044dc:	40ce8533          	sub	a0,t4,a2
    800044e0:	8d95                	sub	a1,a1,a3
    800044e2:	00aeb833          	sltu	a6,t4,a0
    800044e6:	41058833          	sub	a6,a1,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1184
    800044ea:	85c2                	mv	a1,a6
    800044ec:	b579                	j	8000437a <__modti3+0xea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    800044ee:	01e65733          	srl	a4,a2,t5
    800044f2:	005696b3          	sll	a3,a3,t0
    800044f6:	00d76833          	or	a6,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1196
    800044fa:	01e5dfb3          	srl	t6,a1,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1195
    800044fe:	005617b3          	sll	a5,a2,t0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    80004502:	005595b3          	sll	a1,a1,t0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1198
    80004506:	005e9533          	sll	a0,t4,t0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    8000450a:	00028e1b          	sext.w	t3,t0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    8000450e:	02085293          	srli	t0,a6,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    80004512:	000f031b          	sext.w	t1,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    80004516:	01eedf33          	srl	t5,t4,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    8000451a:	025fdeb3          	divu	t4,t6,t0
    8000451e:	02081713          	slli	a4,a6,0x20
    80004522:	9301                	srli	a4,a4,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    80004524:	00bf65b3          	or	a1,t5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004528:	0205d693          	srli	a3,a1,0x20
    8000452c:	025ff633          	remu	a2,t6,t0
    80004530:	03d70f33          	mul	t5,a4,t4
    80004534:	1602                	slli	a2,a2,0x20
    80004536:	8ed1                	or	a3,a3,a2
    80004538:	8676                	mv	a2,t4
    8000453a:	01e6fc63          	bgeu	a3,t5,80004552 <__modti3+0x2c2>
    8000453e:	96c2                	add	a3,a3,a6
    80004540:	fffe8613          	addi	a2,t4,-1 # 7fefffff <asinh-0x100001>
    80004544:	0106e763          	bltu	a3,a6,80004552 <__modti3+0x2c2>
    80004548:	01e6f563          	bgeu	a3,t5,80004552 <__modti3+0x2c2>
    8000454c:	ffee8613          	addi	a2,t4,-2
    80004550:	96c2                	add	a3,a3,a6
    80004552:	41e686b3          	sub	a3,a3,t5
    80004556:	0256ff33          	remu	t5,a3,t0
    8000455a:	1582                	slli	a1,a1,0x20
    8000455c:	9181                	srli	a1,a1,0x20
    8000455e:	0256d6b3          	divu	a3,a3,t0
    80004562:	1f02                	slli	t5,t5,0x20
    80004564:	00bf65b3          	or	a1,t5,a1
    80004568:	02d70733          	mul	a4,a4,a3
    8000456c:	8eb6                	mv	t4,a3
    8000456e:	00e5fc63          	bgeu	a1,a4,80004586 <__modti3+0x2f6>
    80004572:	95c2                	add	a1,a1,a6
    80004574:	fff68e93          	addi	t4,a3,-1
    80004578:	0105e763          	bltu	a1,a6,80004586 <__modti3+0x2f6>
    8000457c:	00e5f563          	bgeu	a1,a4,80004586 <__modti3+0x2f6>
    80004580:	ffe68e93          	addi	t4,a3,-2
    80004584:	95c2                	add	a1,a1,a6
    80004586:	1602                	slli	a2,a2,0x20
    80004588:	01d66633          	or	a2,a2,t4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    8000458c:	5efd                	li	t4,-1
    8000458e:	020ede93          	srli	t4,t4,0x20
    80004592:	01d67f33          	and	t5,a2,t4
    80004596:	0207d693          	srli	a3,a5,0x20
    8000459a:	9201                	srli	a2,a2,0x20
    8000459c:	01d7feb3          	and	t4,a5,t4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    800045a0:	8d99                	sub	a1,a1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    800045a2:	03df0733          	mul	a4,t5,t4
    800045a6:	03d60eb3          	mul	t4,a2,t4
    800045aa:	02df0f33          	mul	t5,t5,a3
    800045ae:	02d60633          	mul	a2,a2,a3
    800045b2:	9f76                	add	t5,t5,t4
    800045b4:	02075693          	srli	a3,a4,0x20
    800045b8:	96fa                	add	a3,a3,t5
    800045ba:	01d6f563          	bgeu	a3,t4,800045c4 <__modti3+0x334>
    800045be:	4e85                	li	t4,1
    800045c0:	1e82                	slli	t4,t4,0x20
    800045c2:	9676                	add	a2,a2,t4
    800045c4:	0206de93          	srli	t4,a3,0x20
    800045c8:	9676                	add	a2,a2,t4
    800045ca:	5efd                	li	t4,-1
    800045cc:	020ede93          	srli	t4,t4,0x20
    800045d0:	01d6f6b3          	and	a3,a3,t4
    800045d4:	1682                	slli	a3,a3,0x20
    800045d6:	01d77733          	and	a4,a4,t4
    800045da:	9736                	add	a4,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    800045dc:	00c5e663          	bltu	a1,a2,800045e8 <__modti3+0x358>
    800045e0:	00c59b63          	bne	a1,a2,800045f6 <__modti3+0x366>
    800045e4:	00e57963          	bgeu	a0,a4,800045f6 <__modti3+0x366>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1206
    800045e8:	40f707b3          	sub	a5,a4,a5
    800045ec:	00f73733          	sltu	a4,a4,a5
    800045f0:	9742                	add	a4,a4,a6
    800045f2:	8e19                	sub	a2,a2,a4
    800045f4:	873e                	mv	a4,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1214
    800045f6:	40e50733          	sub	a4,a0,a4
    800045fa:	00e53533          	sltu	a0,a0,a4
    800045fe:	8d91                	sub	a1,a1,a2
    80004600:	8d89                	sub	a1,a1,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1215
    80004602:	00659533          	sll	a0,a1,t1
    80004606:	01c75733          	srl	a4,a4,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1217
    8000460a:	8d59                	or	a0,a0,a4
    8000460c:	01c5d5b3          	srl	a1,a1,t3
    80004610:	b3ad                	j	8000437a <__modti3+0xea>

0000000080004612 <__udivti3>:
__udivti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1319
    80004612:	832a                	mv	t1,a0
    80004614:	87ae                	mv	a5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1024
    80004616:	8832                	mv	a6,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1026
    80004618:	88aa                	mv	a7,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1064
    8000461a:	20069163          	bnez	a3,8000481c <__udivti3+0x20a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1066
    8000461e:	0ac5ff63          	bgeu	a1,a2,800046dc <__udivti3+0xca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1070
    80004622:	03800713          	li	a4,56
    80004626:	00e656b3          	srl	a3,a2,a4
    8000462a:	0ff6f693          	zext.b	a3,a3
    8000462e:	e299                	bnez	a3,80004634 <__udivti3+0x22>
    80004630:	1761                	addi	a4,a4,-8
    80004632:	fb75                	bnez	a4,80004626 <__udivti3+0x14>
    80004634:	00e65533          	srl	a0,a2,a4
    80004638:	00061697          	auipc	a3,0x61
    8000463c:	81068693          	addi	a3,a3,-2032 # 80064e48 <__clz_tab>
    80004640:	96aa                	add	a3,a3,a0
    80004642:	0006ce03          	lbu	t3,0(a3)
    80004646:	04000693          	li	a3,64
    8000464a:	40e68733          	sub	a4,a3,a4
    8000464e:	41c70533          	sub	a0,a4,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1072
    80004652:	01c70c63          	beq	a4,t3,8000466a <__udivti3+0x58>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    80004656:	9e89                	subw	a3,a3,a0
    80004658:	00a795b3          	sll	a1,a5,a0
    8000465c:	00d356b3          	srl	a3,t1,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1077
    80004660:	00a61833          	sll	a6,a2,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    80004664:	8dd5                	or	a1,a1,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1079
    80004666:	00a318b3          	sll	a7,t1,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1082
    8000466a:	02085313          	srli	t1,a6,0x20
    8000466e:	0265d6b3          	divu	a3,a1,t1
    80004672:	02081613          	slli	a2,a6,0x20
    80004676:	9201                	srli	a2,a2,0x20
    80004678:	0208d793          	srli	a5,a7,0x20
    8000467c:	0265f733          	remu	a4,a1,t1
    80004680:	8536                	mv	a0,a3
    80004682:	02d605b3          	mul	a1,a2,a3
    80004686:	1702                	slli	a4,a4,0x20
    80004688:	8fd9                	or	a5,a5,a4
    8000468a:	00b7fc63          	bgeu	a5,a1,800046a2 <__udivti3+0x90>
    8000468e:	97c2                	add	a5,a5,a6
    80004690:	fff68513          	addi	a0,a3,-1
    80004694:	0107e763          	bltu	a5,a6,800046a2 <__udivti3+0x90>
    80004698:	00b7f563          	bgeu	a5,a1,800046a2 <__udivti3+0x90>
    8000469c:	ffe68513          	addi	a0,a3,-2
    800046a0:	97c2                	add	a5,a5,a6
    800046a2:	8f8d                	sub	a5,a5,a1
    800046a4:	0267f733          	remu	a4,a5,t1
    800046a8:	1882                	slli	a7,a7,0x20
    800046aa:	0208d893          	srli	a7,a7,0x20
    800046ae:	0267d7b3          	divu	a5,a5,t1
    800046b2:	1702                	slli	a4,a4,0x20
    800046b4:	011768b3          	or	a7,a4,a7
    800046b8:	02f606b3          	mul	a3,a2,a5
    800046bc:	873e                	mv	a4,a5
    800046be:	00d8fb63          	bgeu	a7,a3,800046d4 <__udivti3+0xc2>
    800046c2:	98c2                	add	a7,a7,a6
    800046c4:	fff78713          	addi	a4,a5,-1
    800046c8:	0108e663          	bltu	a7,a6,800046d4 <__udivti3+0xc2>
    800046cc:	00d8f463          	bgeu	a7,a3,800046d4 <__udivti3+0xc2>
    800046d0:	ffe78713          	addi	a4,a5,-2
    800046d4:	1502                	slli	a0,a0,0x20
    800046d6:	8d59                	or	a0,a0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1209
    800046d8:	4581                	li	a1,0
    800046da:	a84d                	j	8000478c <__udivti3+0x17a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1091
    800046dc:	e601                	bnez	a2,800046e4 <__udivti3+0xd2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1092
    800046de:	4705                	li	a4,1
    800046e0:	02c75833          	divu	a6,a4,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1094
    800046e4:	03800693          	li	a3,56
    800046e8:	00d85733          	srl	a4,a6,a3
    800046ec:	0ff77713          	zext.b	a4,a4
    800046f0:	e319                	bnez	a4,800046f6 <__udivti3+0xe4>
    800046f2:	16e1                	addi	a3,a3,-8
    800046f4:	faf5                	bnez	a3,800046e8 <__udivti3+0xd6>
    800046f6:	00d85633          	srl	a2,a6,a3
    800046fa:	00060717          	auipc	a4,0x60
    800046fe:	74e70713          	addi	a4,a4,1870 # 80064e48 <__clz_tab>
    80004702:	9732                	add	a4,a4,a2
    80004704:	00074703          	lbu	a4,0(a4)
    80004708:	04000613          	li	a2,64
    8000470c:	9736                	add	a4,a4,a3
    8000470e:	40e606b3          	sub	a3,a2,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1096
    80004712:	06e61e63          	bne	a2,a4,8000478e <__udivti3+0x17c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1105
    80004716:	410787b3          	sub	a5,a5,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1106
    8000471a:	4585                	li	a1,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1124
    8000471c:	02085313          	srli	t1,a6,0x20
    80004720:	02081613          	slli	a2,a6,0x20
    80004724:	9201                	srli	a2,a2,0x20
    80004726:	0208d713          	srli	a4,a7,0x20
    8000472a:	0267f6b3          	remu	a3,a5,t1
    8000472e:	0267d7b3          	divu	a5,a5,t1
    80004732:	1682                	slli	a3,a3,0x20
    80004734:	8f55                	or	a4,a4,a3
    80004736:	02f60e33          	mul	t3,a2,a5
    8000473a:	853e                	mv	a0,a5
    8000473c:	01c77c63          	bgeu	a4,t3,80004754 <__udivti3+0x142>
    80004740:	9742                	add	a4,a4,a6
    80004742:	fff78513          	addi	a0,a5,-1
    80004746:	01076763          	bltu	a4,a6,80004754 <__udivti3+0x142>
    8000474a:	01c77563          	bgeu	a4,t3,80004754 <__udivti3+0x142>
    8000474e:	ffe78513          	addi	a0,a5,-2
    80004752:	9742                	add	a4,a4,a6
    80004754:	41c70733          	sub	a4,a4,t3
    80004758:	026777b3          	remu	a5,a4,t1
    8000475c:	1882                	slli	a7,a7,0x20
    8000475e:	0208d893          	srli	a7,a7,0x20
    80004762:	02675733          	divu	a4,a4,t1
    80004766:	1782                	slli	a5,a5,0x20
    80004768:	0117e8b3          	or	a7,a5,a7
    8000476c:	02e606b3          	mul	a3,a2,a4
    80004770:	87ba                	mv	a5,a4
    80004772:	00d8fb63          	bgeu	a7,a3,80004788 <__udivti3+0x176>
    80004776:	98c2                	add	a7,a7,a6
    80004778:	fff70793          	addi	a5,a4,-1
    8000477c:	0108e663          	bltu	a7,a6,80004788 <__udivti3+0x176>
    80004780:	00d8f463          	bgeu	a7,a3,80004788 <__udivti3+0x176>
    80004784:	ffe70793          	addi	a5,a4,-2
    80004788:	1502                	slli	a0,a0,0x20
    8000478a:	8d5d                	or	a0,a0,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1321
    8000478c:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1114
    8000478e:	00d81833          	sll	a6,a6,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1115
    80004792:	00e7d533          	srl	a0,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1117
    80004796:	00d318b3          	sll	a7,t1,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1116
    8000479a:	00d797b3          	sll	a5,a5,a3
    8000479e:	00e35733          	srl	a4,t1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    800047a2:	02085313          	srli	t1,a6,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1116
    800047a6:	00f765b3          	or	a1,a4,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    800047aa:	02657733          	remu	a4,a0,t1
    800047ae:	02081793          	slli	a5,a6,0x20
    800047b2:	9381                	srli	a5,a5,0x20
    800047b4:	0205d613          	srli	a2,a1,0x20
    800047b8:	02655533          	divu	a0,a0,t1
    800047bc:	1702                	slli	a4,a4,0x20
    800047be:	8f51                	or	a4,a4,a2
    800047c0:	02a786b3          	mul	a3,a5,a0
    800047c4:	862a                	mv	a2,a0
    800047c6:	00d77c63          	bgeu	a4,a3,800047de <__udivti3+0x1cc>
    800047ca:	9742                	add	a4,a4,a6
    800047cc:	fff50613          	addi	a2,a0,-1
    800047d0:	01076763          	bltu	a4,a6,800047de <__udivti3+0x1cc>
    800047d4:	00d77563          	bgeu	a4,a3,800047de <__udivti3+0x1cc>
    800047d8:	ffe50613          	addi	a2,a0,-2
    800047dc:	9742                	add	a4,a4,a6
    800047de:	40d706b3          	sub	a3,a4,a3
    800047e2:	0266f733          	remu	a4,a3,t1
    800047e6:	1582                	slli	a1,a1,0x20
    800047e8:	9181                	srli	a1,a1,0x20
    800047ea:	0266d6b3          	divu	a3,a3,t1
    800047ee:	1702                	slli	a4,a4,0x20
    800047f0:	02d78533          	mul	a0,a5,a3
    800047f4:	00b767b3          	or	a5,a4,a1
    800047f8:	8736                	mv	a4,a3
    800047fa:	00a7fc63          	bgeu	a5,a0,80004812 <__udivti3+0x200>
    800047fe:	97c2                	add	a5,a5,a6
    80004800:	fff68713          	addi	a4,a3,-1
    80004804:	0107e763          	bltu	a5,a6,80004812 <__udivti3+0x200>
    80004808:	00a7f563          	bgeu	a5,a0,80004812 <__udivti3+0x200>
    8000480c:	ffe68713          	addi	a4,a3,-2
    80004810:	97c2                	add	a5,a5,a6
    80004812:	02061593          	slli	a1,a2,0x20
    80004816:	8f89                	sub	a5,a5,a0
    80004818:	8dd9                	or	a1,a1,a4
    8000481a:	b709                	j	8000471c <__udivti3+0x10a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1140
    8000481c:	12d5ee63          	bltu	a1,a3,80004958 <__udivti3+0x346>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1159
    80004820:	03800593          	li	a1,56
    80004824:	00b6d733          	srl	a4,a3,a1
    80004828:	0ff77713          	zext.b	a4,a4
    8000482c:	e319                	bnez	a4,80004832 <__udivti3+0x220>
    8000482e:	15e1                	addi	a1,a1,-8
    80004830:	f9f5                	bnez	a1,80004824 <__udivti3+0x212>
    80004832:	00b6d533          	srl	a0,a3,a1
    80004836:	00060717          	auipc	a4,0x60
    8000483a:	61270713          	addi	a4,a4,1554 # 80064e48 <__clz_tab>
    8000483e:	972a                	add	a4,a4,a0
    80004840:	00074703          	lbu	a4,0(a4)
    80004844:	04000513          	li	a0,64
    80004848:	972e                	add	a4,a4,a1
    8000484a:	40e505b3          	sub	a1,a0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1160
    8000484e:	00e51c63          	bne	a0,a4,80004866 <__udivti3+0x254>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1172
    80004852:	4505                	li	a0,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1170
    80004854:	f2f6ece3          	bltu	a3,a5,8000478c <__udivti3+0x17a>
    80004858:	00c33533          	sltu	a0,t1,a2
    8000485c:	00154513          	xori	a0,a0,1
    80004860:	1502                	slli	a0,a0,0x20
    80004862:	9101                	srli	a0,a0,0x20
    80004864:	b725                	j	8000478c <__udivti3+0x17a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    80004866:	00b696b3          	sll	a3,a3,a1
    8000486a:	00e65833          	srl	a6,a2,a4
    8000486e:	00d86833          	or	a6,a6,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1196
    80004872:	00e7de33          	srl	t3,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004876:	02085e93          	srli	t4,a6,0x20
    8000487a:	03de76b3          	remu	a3,t3,t4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    8000487e:	0005889b          	sext.w	a7,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1195
    80004882:	00b61633          	sll	a2,a2,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    80004886:	00b795b3          	sll	a1,a5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    8000488a:	02081793          	slli	a5,a6,0x20
    8000488e:	9381                	srli	a5,a5,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    80004890:	00e35733          	srl	a4,t1,a4
    80004894:	8dd9                	or	a1,a1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004896:	0205d713          	srli	a4,a1,0x20
    8000489a:	03de5e33          	divu	t3,t3,t4
    8000489e:	1682                	slli	a3,a3,0x20
    800048a0:	8f55                	or	a4,a4,a3
    800048a2:	03c78f33          	mul	t5,a5,t3
    800048a6:	8572                	mv	a0,t3
    800048a8:	01e77c63          	bgeu	a4,t5,800048c0 <__udivti3+0x2ae>
    800048ac:	9742                	add	a4,a4,a6
    800048ae:	fffe0513          	addi	a0,t3,-1
    800048b2:	01076763          	bltu	a4,a6,800048c0 <__udivti3+0x2ae>
    800048b6:	01e77563          	bgeu	a4,t5,800048c0 <__udivti3+0x2ae>
    800048ba:	ffee0513          	addi	a0,t3,-2
    800048be:	9742                	add	a4,a4,a6
    800048c0:	41e70733          	sub	a4,a4,t5
    800048c4:	03d776b3          	remu	a3,a4,t4
    800048c8:	1582                	slli	a1,a1,0x20
    800048ca:	9181                	srli	a1,a1,0x20
    800048cc:	03d75733          	divu	a4,a4,t4
    800048d0:	1682                	slli	a3,a3,0x20
    800048d2:	02e78e33          	mul	t3,a5,a4
    800048d6:	00b6e7b3          	or	a5,a3,a1
    800048da:	86ba                	mv	a3,a4
    800048dc:	01c7fc63          	bgeu	a5,t3,800048f4 <__udivti3+0x2e2>
    800048e0:	97c2                	add	a5,a5,a6
    800048e2:	fff70693          	addi	a3,a4,-1
    800048e6:	0107e763          	bltu	a5,a6,800048f4 <__udivti3+0x2e2>
    800048ea:	01c7f563          	bgeu	a5,t3,800048f4 <__udivti3+0x2e2>
    800048ee:	ffe70693          	addi	a3,a4,-2
    800048f2:	97c2                	add	a5,a5,a6
    800048f4:	1502                	slli	a0,a0,0x20
    800048f6:	8d55                	or	a0,a0,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    800048f8:	56fd                	li	a3,-1
    800048fa:	9281                	srli	a3,a3,0x20
    800048fc:	00d57833          	and	a6,a0,a3
    80004900:	02055593          	srli	a1,a0,0x20
    80004904:	8ef1                	and	a3,a3,a2
    80004906:	9201                	srli	a2,a2,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004908:	41c787b3          	sub	a5,a5,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    8000490c:	02d80e33          	mul	t3,a6,a3
    80004910:	02d586b3          	mul	a3,a1,a3
    80004914:	020e5713          	srli	a4,t3,0x20
    80004918:	02c80833          	mul	a6,a6,a2
    8000491c:	9836                	add	a6,a6,a3
    8000491e:	9742                	add	a4,a4,a6
    80004920:	02c585b3          	mul	a1,a1,a2
    80004924:	00d77563          	bgeu	a4,a3,8000492e <__udivti3+0x31c>
    80004928:	4685                	li	a3,1
    8000492a:	1682                	slli	a3,a3,0x20
    8000492c:	95b6                	add	a1,a1,a3
    8000492e:	02075693          	srli	a3,a4,0x20
    80004932:	96ae                	add	a3,a3,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    80004934:	02d7e063          	bltu	a5,a3,80004954 <__udivti3+0x342>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1209
    80004938:	4581                	li	a1,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    8000493a:	e4d799e3          	bne	a5,a3,8000478c <__udivti3+0x17a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    8000493e:	57fd                	li	a5,-1
    80004940:	9381                	srli	a5,a5,0x20
    80004942:	8f7d                	and	a4,a4,a5
    80004944:	1702                	slli	a4,a4,0x20
    80004946:	00fe7e33          	and	t3,t3,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1198
    8000494a:	01131333          	sll	t1,t1,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    8000494e:	9772                	add	a4,a4,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    80004950:	e2e37ee3          	bgeu	t1,a4,8000478c <__udivti3+0x17a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1205
    80004954:	157d                	addi	a0,a0,-1
    80004956:	b349                	j	800046d8 <__udivti3+0xc6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1145
    80004958:	4581                	li	a1,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1144
    8000495a:	4501                	li	a0,0
    8000495c:	bd05                	j	8000478c <__udivti3+0x17a>

000000008000495e <__umodti3>:
__umodti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1307
    8000495e:	87aa                	mv	a5,a0
__udivmodti4():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1024
    80004960:	88b2                	mv	a7,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1027
    80004962:	882e                	mv	a6,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1064
    80004964:	1c069663          	bnez	a3,80004b30 <__umodti3+0x1d2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1066
    80004968:	0ac5fd63          	bgeu	a1,a2,80004a22 <__umodti3+0xc4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1070
    8000496c:	03800693          	li	a3,56
    80004970:	00d65733          	srl	a4,a2,a3
    80004974:	0ff77713          	zext.b	a4,a4
    80004978:	e319                	bnez	a4,8000497e <__umodti3+0x20>
    8000497a:	16e1                	addi	a3,a3,-8
    8000497c:	faf5                	bnez	a3,80004970 <__umodti3+0x12>
    8000497e:	00d65333          	srl	t1,a2,a3
    80004982:	00060717          	auipc	a4,0x60
    80004986:	4c670713          	addi	a4,a4,1222 # 80064e48 <__clz_tab>
    8000498a:	971a                	add	a4,a4,t1
    8000498c:	00074e03          	lbu	t3,0(a4)
    80004990:	04000713          	li	a4,64
    80004994:	40d706b3          	sub	a3,a4,a3
    80004998:	41c68333          	sub	t1,a3,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1072
    8000499c:	03c68063          	beq	a3,t3,800049bc <__umodti3+0x5e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    800049a0:	04000813          	li	a6,64
    800049a4:	4068083b          	subw	a6,a6,t1
    800049a8:	006595b3          	sll	a1,a1,t1
    800049ac:	0107d833          	srl	a6,a5,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1077
    800049b0:	006618b3          	sll	a7,a2,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1078
    800049b4:	00b86833          	or	a6,a6,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1079
    800049b8:	00679533          	sll	a0,a5,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1082
    800049bc:	0208d613          	srli	a2,a7,0x20
    800049c0:	02c876b3          	remu	a3,a6,a2
    800049c4:	02089793          	slli	a5,a7,0x20
    800049c8:	9381                	srli	a5,a5,0x20
    800049ca:	02055713          	srli	a4,a0,0x20
    800049ce:	02c85833          	divu	a6,a6,a2
    800049d2:	1682                	slli	a3,a3,0x20
    800049d4:	8f55                	or	a4,a4,a3
    800049d6:	03078833          	mul	a6,a5,a6
    800049da:	01077863          	bgeu	a4,a6,800049ea <__umodti3+0x8c>
    800049de:	9746                	add	a4,a4,a7
    800049e0:	01176563          	bltu	a4,a7,800049ea <__umodti3+0x8c>
    800049e4:	01077363          	bgeu	a4,a6,800049ea <__umodti3+0x8c>
    800049e8:	9746                	add	a4,a4,a7
    800049ea:	41070733          	sub	a4,a4,a6
    800049ee:	02c776b3          	remu	a3,a4,a2
    800049f2:	02c75733          	divu	a4,a4,a2
    800049f6:	02e78833          	mul	a6,a5,a4
    800049fa:	02051713          	slli	a4,a0,0x20
    800049fe:	02069793          	slli	a5,a3,0x20
    80004a02:	9301                	srli	a4,a4,0x20
    80004a04:	8fd9                	or	a5,a5,a4
    80004a06:	0107f863          	bgeu	a5,a6,80004a16 <__umodti3+0xb8>
    80004a0a:	97c6                	add	a5,a5,a7
    80004a0c:	0117e563          	bltu	a5,a7,80004a16 <__umodti3+0xb8>
    80004a10:	0107f363          	bgeu	a5,a6,80004a16 <__umodti3+0xb8>
    80004a14:	97c6                	add	a5,a5,a7
    80004a16:	410787b3          	sub	a5,a5,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1131
    80004a1a:	0067d533          	srl	a0,a5,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1133
    80004a1e:	4581                	li	a1,0
__umodti3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1313
    80004a20:	8082                	ret
__udivmodti4():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1091
    80004a22:	e601                	bnez	a2,80004a2a <__umodti3+0xcc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1092
    80004a24:	4705                	li	a4,1
    80004a26:	02c758b3          	divu	a7,a4,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1094
    80004a2a:	03800713          	li	a4,56
    80004a2e:	00e8d6b3          	srl	a3,a7,a4
    80004a32:	0ff6f693          	zext.b	a3,a3
    80004a36:	e299                	bnez	a3,80004a3c <__umodti3+0xde>
    80004a38:	1761                	addi	a4,a4,-8
    80004a3a:	fb75                	bnez	a4,80004a2e <__umodti3+0xd0>
    80004a3c:	00e8d633          	srl	a2,a7,a4
    80004a40:	00060697          	auipc	a3,0x60
    80004a44:	40868693          	addi	a3,a3,1032 # 80064e48 <__clz_tab>
    80004a48:	96b2                	add	a3,a3,a2
    80004a4a:	0006c683          	lbu	a3,0(a3)
    80004a4e:	96ba                	add	a3,a3,a4
    80004a50:	04000713          	li	a4,64
    80004a54:	40d70333          	sub	t1,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1096
    80004a58:	06d71363          	bne	a4,a3,80004abe <__umodti3+0x160>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1105
    80004a5c:	411585b3          	sub	a1,a1,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1124
    80004a60:	0208d693          	srli	a3,a7,0x20
    80004a64:	02089793          	slli	a5,a7,0x20
    80004a68:	9381                	srli	a5,a5,0x20
    80004a6a:	02055613          	srli	a2,a0,0x20
    80004a6e:	02d5f733          	remu	a4,a1,a3
    80004a72:	02d5d5b3          	divu	a1,a1,a3
    80004a76:	1702                	slli	a4,a4,0x20
    80004a78:	8f51                	or	a4,a4,a2
    80004a7a:	02b785b3          	mul	a1,a5,a1
    80004a7e:	00b77863          	bgeu	a4,a1,80004a8e <__umodti3+0x130>
    80004a82:	9746                	add	a4,a4,a7
    80004a84:	01176563          	bltu	a4,a7,80004a8e <__umodti3+0x130>
    80004a88:	00b77363          	bgeu	a4,a1,80004a8e <__umodti3+0x130>
    80004a8c:	9746                	add	a4,a4,a7
    80004a8e:	40b705b3          	sub	a1,a4,a1
    80004a92:	02d5f733          	remu	a4,a1,a3
    80004a96:	02d5d5b3          	divu	a1,a1,a3
    80004a9a:	02b785b3          	mul	a1,a5,a1
    80004a9e:	02071793          	slli	a5,a4,0x20
    80004aa2:	02051713          	slli	a4,a0,0x20
    80004aa6:	9301                	srli	a4,a4,0x20
    80004aa8:	8fd9                	or	a5,a5,a4
    80004aaa:	00b7f863          	bgeu	a5,a1,80004aba <__umodti3+0x15c>
    80004aae:	97c6                	add	a5,a5,a7
    80004ab0:	0117e563          	bltu	a5,a7,80004aba <__umodti3+0x15c>
    80004ab4:	00b7f363          	bgeu	a5,a1,80004aba <__umodti3+0x15c>
    80004ab8:	97c6                	add	a5,a5,a7
    80004aba:	8f8d                	sub	a5,a5,a1
    80004abc:	bfb9                	j	80004a1a <__umodti3+0xbc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1114
    80004abe:	006898b3          	sll	a7,a7,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1115
    80004ac2:	00d5d833          	srl	a6,a1,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    80004ac6:	0208de13          	srli	t3,a7,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1116
    80004aca:	00d7d6b3          	srl	a3,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1117
    80004ace:	00679533          	sll	a0,a5,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    80004ad2:	03c857b3          	divu	a5,a6,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1116
    80004ad6:	006595b3          	sll	a1,a1,t1
    80004ada:	00b6e633          	or	a2,a3,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1119
    80004ade:	02089593          	slli	a1,a7,0x20
    80004ae2:	9181                	srli	a1,a1,0x20
    80004ae4:	02065713          	srli	a4,a2,0x20
    80004ae8:	03c876b3          	remu	a3,a6,t3
    80004aec:	02f587b3          	mul	a5,a1,a5
    80004af0:	1682                	slli	a3,a3,0x20
    80004af2:	8f55                	or	a4,a4,a3
    80004af4:	00f77863          	bgeu	a4,a5,80004b04 <__umodti3+0x1a6>
    80004af8:	9746                	add	a4,a4,a7
    80004afa:	01176563          	bltu	a4,a7,80004b04 <__umodti3+0x1a6>
    80004afe:	00f77363          	bgeu	a4,a5,80004b04 <__umodti3+0x1a6>
    80004b02:	9746                	add	a4,a4,a7
    80004b04:	8f1d                	sub	a4,a4,a5
    80004b06:	03c776b3          	remu	a3,a4,t3
    80004b0a:	1602                	slli	a2,a2,0x20
    80004b0c:	9201                	srli	a2,a2,0x20
    80004b0e:	03c75733          	divu	a4,a4,t3
    80004b12:	1682                	slli	a3,a3,0x20
    80004b14:	02e58733          	mul	a4,a1,a4
    80004b18:	00c6e5b3          	or	a1,a3,a2
    80004b1c:	00e5f863          	bgeu	a1,a4,80004b2c <__umodti3+0x1ce>
    80004b20:	95c6                	add	a1,a1,a7
    80004b22:	0115e563          	bltu	a1,a7,80004b2c <__umodti3+0x1ce>
    80004b26:	00e5f363          	bgeu	a1,a4,80004b2c <__umodti3+0x1ce>
    80004b2a:	95c6                	add	a1,a1,a7
    80004b2c:	8d99                	sub	a1,a1,a4
    80004b2e:	bf0d                	j	80004a60 <__umodti3+0x102>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1140
    80004b30:	eed5e8e3          	bltu	a1,a3,80004a20 <__umodti3+0xc2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1159
    80004b34:	03800893          	li	a7,56
    80004b38:	0116d733          	srl	a4,a3,a7
    80004b3c:	0ff77713          	zext.b	a4,a4
    80004b40:	e701                	bnez	a4,80004b48 <__umodti3+0x1ea>
    80004b42:	18e1                	addi	a7,a7,-8
    80004b44:	fe089ae3          	bnez	a7,80004b38 <__umodti3+0x1da>
    80004b48:	0116d333          	srl	t1,a3,a7
    80004b4c:	00060717          	auipc	a4,0x60
    80004b50:	2fc70713          	addi	a4,a4,764 # 80064e48 <__clz_tab>
    80004b54:	971a                	add	a4,a4,t1
    80004b56:	00074303          	lbu	t1,0(a4)
    80004b5a:	04000713          	li	a4,64
    80004b5e:	9346                	add	t1,t1,a7
    80004b60:	40670f33          	sub	t5,a4,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1160
    80004b64:	02671063          	bne	a4,t1,80004b84 <__umodti3+0x226>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1170
    80004b68:	00b6e463          	bltu	a3,a1,80004b70 <__umodti3+0x212>
    80004b6c:	00c7ea63          	bltu	a5,a2,80004b80 <__umodti3+0x222>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1173
    80004b70:	40c78733          	sub	a4,a5,a2
    80004b74:	00e7b533          	sltu	a0,a5,a4
    80004b78:	8d95                	sub	a1,a1,a3
    80004b7a:	40a58833          	sub	a6,a1,a0
    80004b7e:	853a                	mv	a0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1184
    80004b80:	85c2                	mv	a1,a6
    80004b82:	bd79                	j	80004a20 <__umodti3+0xc2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    80004b84:	01e696b3          	sll	a3,a3,t5
    80004b88:	00665eb3          	srl	t4,a2,t1
    80004b8c:	00deeeb3          	or	t4,t4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1195
    80004b90:	01e61733          	sll	a4,a2,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1196
    80004b94:	0065d6b3          	srl	a3,a1,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1198
    80004b98:	01e79533          	sll	a0,a5,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    80004b9c:	01e595b3          	sll	a1,a1,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1194
    80004ba0:	000f081b          	sext.w	a6,t5
    80004ba4:	0003089b          	sext.w	a7,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004ba8:	020edf13          	srli	t5,t4,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1197
    80004bac:	0067d333          	srl	t1,a5,t1
    80004bb0:	00b36e33          	or	t3,t1,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004bb4:	03e6f333          	remu	t1,a3,t5
    80004bb8:	020e9793          	slli	a5,t4,0x20
    80004bbc:	9381                	srli	a5,a5,0x20
    80004bbe:	020e5613          	srli	a2,t3,0x20
    80004bc2:	03e6d6b3          	divu	a3,a3,t5
    80004bc6:	1302                	slli	t1,t1,0x20
    80004bc8:	00c36633          	or	a2,t1,a2
    80004bcc:	02d785b3          	mul	a1,a5,a3
    80004bd0:	8336                	mv	t1,a3
    80004bd2:	00b67c63          	bgeu	a2,a1,80004bea <__umodti3+0x28c>
    80004bd6:	9676                	add	a2,a2,t4
    80004bd8:	fff68313          	addi	t1,a3,-1
    80004bdc:	01d66763          	bltu	a2,t4,80004bea <__umodti3+0x28c>
    80004be0:	00b67563          	bgeu	a2,a1,80004bea <__umodti3+0x28c>
    80004be4:	ffe68313          	addi	t1,a3,-2
    80004be8:	9676                	add	a2,a2,t4
    80004bea:	8e0d                	sub	a2,a2,a1
    80004bec:	03e675b3          	remu	a1,a2,t5
    80004bf0:	1e02                	slli	t3,t3,0x20
    80004bf2:	020e5e13          	srli	t3,t3,0x20
    80004bf6:	03e65633          	divu	a2,a2,t5
    80004bfa:	1582                	slli	a1,a1,0x20
    80004bfc:	01c5ee33          	or	t3,a1,t3
    80004c00:	02c787b3          	mul	a5,a5,a2
    80004c04:	85b2                	mv	a1,a2
    80004c06:	00fe7c63          	bgeu	t3,a5,80004c1e <__umodti3+0x2c0>
    80004c0a:	9e76                	add	t3,t3,t4
    80004c0c:	fff60593          	addi	a1,a2,-1 # ffffffff800fffff <_ebss+0xfffffffeffffee99>
    80004c10:	01de6763          	bltu	t3,t4,80004c1e <__umodti3+0x2c0>
    80004c14:	00fe7563          	bgeu	t3,a5,80004c1e <__umodti3+0x2c0>
    80004c18:	ffe60593          	addi	a1,a2,-2
    80004c1c:	9e76                	add	t3,t3,t4
    80004c1e:	40fe0e33          	sub	t3,t3,a5
    80004c22:	1302                	slli	t1,t1,0x20
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    80004c24:	57fd                	li	a5,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1200
    80004c26:	00b36333          	or	t1,t1,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1201
    80004c2a:	9381                	srli	a5,a5,0x20
    80004c2c:	00f375b3          	and	a1,t1,a5
    80004c30:	02075613          	srli	a2,a4,0x20
    80004c34:	02035313          	srli	t1,t1,0x20
    80004c38:	8ff9                	and	a5,a5,a4
    80004c3a:	02f586b3          	mul	a3,a1,a5
    80004c3e:	02f307b3          	mul	a5,t1,a5
    80004c42:	02c585b3          	mul	a1,a1,a2
    80004c46:	02c30333          	mul	t1,t1,a2
    80004c4a:	95be                	add	a1,a1,a5
    80004c4c:	0206d613          	srli	a2,a3,0x20
    80004c50:	962e                	add	a2,a2,a1
    80004c52:	00f67563          	bgeu	a2,a5,80004c5c <__umodti3+0x2fe>
    80004c56:	4785                	li	a5,1
    80004c58:	1782                	slli	a5,a5,0x20
    80004c5a:	933e                	add	t1,t1,a5
    80004c5c:	57fd                	li	a5,-1
    80004c5e:	9381                	srli	a5,a5,0x20
    80004c60:	02065593          	srli	a1,a2,0x20
    80004c64:	8e7d                	and	a2,a2,a5
    80004c66:	1602                	slli	a2,a2,0x20
    80004c68:	8efd                	and	a3,a3,a5
    80004c6a:	959a                	add	a1,a1,t1
    80004c6c:	96b2                	add	a3,a3,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1203
    80004c6e:	00be6663          	bltu	t3,a1,80004c7a <__umodti3+0x31c>
    80004c72:	00be1b63          	bne	t3,a1,80004c88 <__umodti3+0x32a>
    80004c76:	00d57963          	bgeu	a0,a3,80004c88 <__umodti3+0x32a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1206
    80004c7a:	40e68733          	sub	a4,a3,a4
    80004c7e:	00e6b6b3          	sltu	a3,a3,a4
    80004c82:	96f6                	add	a3,a3,t4
    80004c84:	8d95                	sub	a1,a1,a3
    80004c86:	86ba                	mv	a3,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1214
    80004c88:	40d506b3          	sub	a3,a0,a3
    80004c8c:	00d53533          	sltu	a0,a0,a3
    80004c90:	40be05b3          	sub	a1,t3,a1
    80004c94:	8d89                	sub	a1,a1,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1215
    80004c96:	01159533          	sll	a0,a1,a7
    80004c9a:	0106d6b3          	srl	a3,a3,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/libgcc2.c:1217
    80004c9e:	8d55                	or	a0,a0,a3
    80004ca0:	0105d5b3          	srl	a1,a1,a6
    80004ca4:	bbb5                	j	80004a20 <__umodti3+0xc2>

0000000080004ca6 <__addtf3>:
__addtf3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:36
    80004ca6:	7179                	addi	sp,sp,-48
    80004ca8:	f406                	sd	ra,40(sp)
    80004caa:	f022                	sd	s0,32(sp)
    80004cac:	ec26                	sd	s1,24(sp)
    80004cae:	e84a                	sd	s2,16(sp)
    80004cb0:	e44e                	sd	s3,8(sp)
    80004cb2:	e052                	sd	s4,0(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:43
    80004cb4:	002024f3          	frrm	s1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:44
    80004cb8:	5efd                	li	t4,-1
    80004cba:	010ed713          	srli	a4,t4,0x10
    80004cbe:	0305d413          	srli	s0,a1,0x30
    80004cc2:	03f5d913          	srli	s2,a1,0x3f
    80004cc6:	8df9                	and	a1,a1,a4
    80004cc8:	058e                	slli	a1,a1,0x3
    80004cca:	03d55793          	srli	a5,a0,0x3d
    80004cce:	6321                	lui	t1,0x8
    80004cd0:	fff30e13          	addi	t3,t1,-1 # 7fff <asinh-0x7fff8001>
    80004cd4:	8fcd                	or	a5,a5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80004cd6:	03f6d893          	srli	a7,a3,0x3f
    80004cda:	0306d593          	srli	a1,a3,0x30
    80004cde:	8ef9                	and	a3,a3,a4
    80004ce0:	068e                	slli	a3,a3,0x3
    80004ce2:	03d65713          	srli	a4,a2,0x3d
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:44
    80004ce6:	01c47433          	and	s0,s0,t3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80004cea:	01c5f5b3          	and	a1,a1,t3
    80004cee:	8f55                	or	a4,a4,a3
    80004cf0:	40b406bb          	subw	a3,s0,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:43
    80004cf4:	2481                	sext.w	s1,s1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:44
    80004cf6:	050e                	slli	a0,a0,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80004cf8:	060e                	slli	a2,a2,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004cfa:	0006881b          	sext.w	a6,a3
    80004cfe:	39191563          	bne	s2,a7,80005088 <__addtf3+0x3e2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 7)
    80004d02:	0f005963          	blez	a6,80004df4 <__addtf3+0x14e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 9)
    80004d06:	edbd                	bnez	a1,80004d84 <__addtf3+0xde>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 11)
    80004d08:	00c765b3          	or	a1,a4,a2
    80004d0c:	ed91                	bnez	a1,80004d28 <__addtf3+0x82>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 13)
    80004d0e:	39c41563          	bne	s0,t3,80005098 <__addtf3+0x3f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 15)
    80004d12:	00a7e733          	or	a4,a5,a0
    80004d16:	74070363          	beqz	a4,8000545c <__addtf3+0x7b6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 17)
    80004d1a:	0327d713          	srli	a4,a5,0x32
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 232)
    80004d1e:	85a2                	mv	a1,s0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 232)
    80004d20:	4801                	li	a6,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 232)
    80004d22:	2e071563          	bnez	a4,8000500c <__addtf3+0x366>
    80004d26:	a8e5                	j	80004e1e <__addtf3+0x178>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 14)
    80004d28:	fff6881b          	addiw	a6,a3,-1
    80004d2c:	04081263          	bnez	a6,80004d70 <__addtf3+0xca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 64)
    80004d30:	962a                	add	a2,a2,a0
    80004d32:	00a63533          	sltu	a0,a2,a0
    80004d36:	973e                	add	a4,a4,a5
    80004d38:	972a                	add	a4,a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:44 (discriminator 64)
    80004d3a:	85a2                	mv	a1,s0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 64)
    80004d3c:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 122)
    80004d3e:	03375793          	srli	a5,a4,0x33
    80004d42:	8b85                	andi	a5,a5,1
    80004d44:	6c078763          	beqz	a5,80005412 <__addtf3+0x76c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 182)
    80004d48:	66a1                	lui	a3,0x8
    80004d4a:	0585                	addi	a1,a1,1
    80004d4c:	fff68793          	addi	a5,a3,-1 # 7fff <asinh-0x7fff8001>
    80004d50:	30f58763          	beq	a1,a5,8000505e <__addtf3+0x3b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004d54:	57fd                	li	a5,-1
    80004d56:	17ce                	slli	a5,a5,0x33
    80004d58:	17fd                	addi	a5,a5,-1
    80004d5a:	8ff9                	and	a5,a5,a4
    80004d5c:	00155713          	srli	a4,a0,0x1
    80004d60:	8905                	andi	a0,a0,1
    80004d62:	8d59                	or	a0,a0,a4
    80004d64:	03f79713          	slli	a4,a5,0x3f
    80004d68:	8d59                	or	a0,a0,a4
    80004d6a:	8385                	srli	a5,a5,0x1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    80004d6c:	4801                	li	a6,0
    80004d6e:	ac79                	j	8000500c <__addtf3+0x366>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 24)
    80004d70:	01c41f63          	bne	s0,t3,80004d8e <__addtf3+0xe8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 230)
    80004d74:	00a7e733          	or	a4,a5,a0
    80004d78:	6e070263          	beqz	a4,8000545c <__addtf3+0x7b6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 232)
    80004d7c:	0327d713          	srli	a4,a5,0x32
    80004d80:	8b05                	andi	a4,a4,1
    80004d82:	bf71                	j	80004d1e <__addtf3+0x78>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 12)
    80004d84:	ffc408e3          	beq	s0,t3,80004d74 <__addtf3+0xce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 38)
    80004d88:	4685                	li	a3,1
    80004d8a:	16ce                	slli	a3,a3,0x33
    80004d8c:	8f55                	or	a4,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 47)
    80004d8e:	07400693          	li	a3,116
    80004d92:	0506cd63          	blt	a3,a6,80004dec <__addtf3+0x146>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 48)
    80004d96:	03f00693          	li	a3,63
    80004d9a:	0306c463          	blt	a3,a6,80004dc2 <__addtf3+0x11c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 50)
    80004d9e:	04000593          	li	a1,64
    80004da2:	410585bb          	subw	a1,a1,a6
    80004da6:	00b716b3          	sll	a3,a4,a1
    80004daa:	010658b3          	srl	a7,a2,a6
    80004dae:	00b61633          	sll	a2,a2,a1
    80004db2:	0116e6b3          	or	a3,a3,a7
    80004db6:	00c03633          	snez	a2,a2
    80004dba:	8e55                	or	a2,a2,a3
    80004dbc:	01075733          	srl	a4,a4,a6
    80004dc0:	bf85                	j	80004d30 <__addtf3+0x8a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 51)
    80004dc2:	fc08069b          	addiw	a3,a6,-64
    80004dc6:	04000893          	li	a7,64
    80004dca:	00d756b3          	srl	a3,a4,a3
    80004dce:	4581                	li	a1,0
    80004dd0:	01180863          	beq	a6,a7,80004de0 <__addtf3+0x13a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 58)
    80004dd4:	08000593          	li	a1,128
    80004dd8:	410585bb          	subw	a1,a1,a6
    80004ddc:	00b715b3          	sll	a1,a4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 61)
    80004de0:	8e4d                	or	a2,a2,a1
    80004de2:	00c03633          	snez	a2,a2
    80004de6:	8e55                	or	a2,a2,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 49)
    80004de8:	4701                	li	a4,0
    80004dea:	b799                	j	80004d30 <__addtf3+0x8a>
    80004dec:	8e59                	or	a2,a2,a4
    80004dee:	00c03633          	snez	a2,a2
    80004df2:	bfdd                	j	80004de8 <__addtf3+0x142>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 10)
    80004df4:	0e080463          	beqz	a6,80004edc <__addtf3+0x236>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 66)
    80004df8:	ec31                	bnez	s0,80004e54 <__addtf3+0x1ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 68)
    80004dfa:	00a7e833          	or	a6,a5,a0
    80004dfe:	02081263          	bnez	a6,80004e22 <__addtf3+0x17c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45 (discriminator 70)
    80004e02:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 70)
    80004e04:	61c59763          	bne	a1,t3,80005412 <__addtf3+0x76c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 72)
    80004e08:	00c76533          	or	a0,a4,a2
    80004e0c:	64050263          	beqz	a0,80005450 <__addtf3+0x7aa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 74)
    80004e10:	03275793          	srli	a5,a4,0x32
    80004e14:	8b85                	andi	a5,a5,1
    80004e16:	64079063          	bnez	a5,80005456 <__addtf3+0x7b0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004e1a:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80004e1c:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004e1e:	46c1                	li	a3,16
    80004e20:	a201                	j	80004f20 <__addtf3+0x27a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 71)
    80004e22:	fff6c693          	not	a3,a3
    80004e26:	2681                	sext.w	a3,a3
    80004e28:	e699                	bnez	a3,80004e36 <__addtf3+0x190>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 80)
    80004e2a:	9532                	add	a0,a0,a2
    80004e2c:	973e                	add	a4,a4,a5
    80004e2e:	00c53633          	sltu	a2,a0,a2
    80004e32:	9732                	add	a4,a4,a2
    80004e34:	b729                	j	80004d3e <__addtf3+0x98>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 81)
    80004e36:	03c59763          	bne	a1,t3,80004e64 <__addtf3+0x1be>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 96)
    80004e3a:	00c76533          	or	a0,a4,a2
    80004e3e:	60050963          	beqz	a0,80005450 <__addtf3+0x7aa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 98)
    80004e42:	03275793          	srli	a5,a4,0x32
    80004e46:	8b85                	andi	a5,a5,1
    80004e48:	60079763          	bnez	a5,80005456 <__addtf3+0x7b0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004e4c:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80004e4e:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    80004e50:	4801                	li	a6,0
    80004e52:	b7f1                	j	80004e1e <__addtf3+0x178>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 69)
    80004e54:	ffc583e3          	beq	a1,t3,80004e3a <__addtf3+0x194>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 95)
    80004e58:	4805                	li	a6,1
    80004e5a:	184e                	slli	a6,a6,0x33
    80004e5c:	40d006bb          	negw	a3,a3
    80004e60:	0107e7b3          	or	a5,a5,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 104)
    80004e64:	07400813          	li	a6,116
    80004e68:	06d84663          	blt	a6,a3,80004ed4 <__addtf3+0x22e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 105)
    80004e6c:	03f00813          	li	a6,63
    80004e70:	02d84b63          	blt	a6,a3,80004ea6 <__addtf3+0x200>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 107)
    80004e74:	04000893          	li	a7,64
    80004e78:	40d888bb          	subw	a7,a7,a3
    80004e7c:	00d55333          	srl	t1,a0,a3
    80004e80:	01179833          	sll	a6,a5,a7
    80004e84:	01151533          	sll	a0,a0,a7
    80004e88:	00686833          	or	a6,a6,t1
    80004e8c:	00a03533          	snez	a0,a0
    80004e90:	00a86533          	or	a0,a6,a0
    80004e94:	00d7d6b3          	srl	a3,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 121)
    80004e98:	9532                	add	a0,a0,a2
    80004e9a:	96ba                	add	a3,a3,a4
    80004e9c:	00c53633          	sltu	a2,a0,a2
    80004ea0:	00c68733          	add	a4,a3,a2
    80004ea4:	bd69                	j	80004d3e <__addtf3+0x98>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 108)
    80004ea6:	fc06881b          	addiw	a6,a3,-64
    80004eaa:	04000313          	li	t1,64
    80004eae:	0107d833          	srl	a6,a5,a6
    80004eb2:	4881                	li	a7,0
    80004eb4:	00668863          	beq	a3,t1,80004ec4 <__addtf3+0x21e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 115)
    80004eb8:	08000893          	li	a7,128
    80004ebc:	40d886bb          	subw	a3,a7,a3
    80004ec0:	00d798b3          	sll	a7,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 118)
    80004ec4:	00a8e533          	or	a0,a7,a0
    80004ec8:	00a03533          	snez	a0,a0
    80004ecc:	00a86533          	or	a0,a6,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 106)
    80004ed0:	4681                	li	a3,0
    80004ed2:	b7d9                	j	80004e98 <__addtf3+0x1f2>
    80004ed4:	8d5d                	or	a0,a0,a5
    80004ed6:	00a03533          	snez	a0,a0
    80004eda:	bfdd                	j	80004ed0 <__addtf3+0x22a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 67)
    80004edc:	00140893          	addi	a7,s0,1
    80004ee0:	ffe30693          	addi	a3,t1,-2
    80004ee4:	00d8f333          	and	t1,a7,a3
    80004ee8:	10031563          	bnez	t1,80004ff2 <__addtf3+0x34c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 123)
    80004eec:	00a7e8b3          	or	a7,a5,a0
    80004ef0:	e421                	bnez	s0,80004f38 <__addtf3+0x292>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 125)
    80004ef2:	52088763          	beqz	a7,80005420 <__addtf3+0x77a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 128)
    80004ef6:	00c766b3          	or	a3,a4,a2
    80004efa:	36068263          	beqz	a3,8000525e <__addtf3+0x5b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 134)
    80004efe:	962a                	add	a2,a2,a0
    80004f00:	97ba                	add	a5,a5,a4
    80004f02:	00a63533          	sltu	a0,a2,a0
    80004f06:	97aa                	add	a5,a5,a0
    80004f08:	0337d713          	srli	a4,a5,0x33
    80004f0c:	8b05                	andi	a4,a4,1
    80004f0e:	50070a63          	beqz	a4,80005422 <__addtf3+0x77c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 136)
    80004f12:	033e9713          	slli	a4,t4,0x33
    80004f16:	177d                	addi	a4,a4,-1
    80004f18:	8ff9                	and	a5,a5,a4
    80004f1a:	8532                	mv	a0,a2
    80004f1c:	4681                	li	a3,0
    80004f1e:	4585                	li	a1,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 36)
    80004f20:	00757713          	andi	a4,a0,7
    80004f24:	10071763          	bnez	a4,80005032 <__addtf3+0x38c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 47)
    80004f28:	04080f63          	beqz	a6,80004f86 <__addtf3+0x2e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 58)
    80004f2c:	0016f713          	andi	a4,a3,1
    80004f30:	cb39                	beqz	a4,80004f86 <__addtf3+0x2e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 60)
    80004f32:	0026e693          	ori	a3,a3,2
    80004f36:	a881                	j	80004f86 <__addtf3+0x2e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 126)
    80004f38:	03c41563          	bne	s0,t3,80004f62 <__addtf3+0x2bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 140)
    80004f3c:	58088963          	beqz	a7,800054ce <__addtf3+0x828>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 142)
    80004f40:	0327d693          	srli	a3,a5,0x32
    80004f44:	8a85                	andi	a3,a3,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:37 (discriminator 142)
    80004f46:	0016b693          	seqz	a3,a3
    80004f4a:	0692                	slli	a3,a3,0x4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 142)
    80004f4c:	02859563          	bne	a1,s0,80004f76 <__addtf3+0x2d0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 147)
    80004f50:	00c765b3          	or	a1,a4,a2
    80004f54:	c991                	beqz	a1,80004f68 <__addtf3+0x2c2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 149)
    80004f56:	03275593          	srli	a1,a4,0x32
    80004f5a:	8985                	andi	a1,a1,1
    80004f5c:	e591                	bnez	a1,80004f68 <__addtf3+0x2c2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004f5e:	46c1                	li	a3,16
    80004f60:	a021                	j	80004f68 <__addtf3+0x2c2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 146)
    80004f62:	4681                	li	a3,0
    80004f64:	ffc586e3          	beq	a1,t3,80004f50 <__addtf3+0x2aa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 153)
    80004f68:	00089763          	bnez	a7,80004f76 <__addtf3+0x2d0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80004f6c:	87ba                	mv	a5,a4
    80004f6e:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004f70:	65a1                	lui	a1,0x8
    80004f72:	15fd                	addi	a1,a1,-1
    80004f74:	b775                	j	80004f20 <__addtf3+0x27a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 155)
    80004f76:	8e59                	or	a2,a2,a4
    80004f78:	de65                	beqz	a2,80004f70 <__addtf3+0x2ca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004f7a:	4785                	li	a5,1
    80004f7c:	65a1                	lui	a1,0x8
    80004f7e:	4901                	li	s2,0
    80004f80:	17ca                	slli	a5,a5,0x32
    80004f82:	4501                	li	a0,0
    80004f84:	15fd                	addi	a1,a1,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 62)
    80004f86:	0337d713          	srli	a4,a5,0x33
    80004f8a:	8b05                	andi	a4,a4,1
    80004f8c:	cb19                	beqz	a4,80004fa2 <__addtf3+0x2fc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 63)
    80004f8e:	6721                	lui	a4,0x8
    80004f90:	0585                	addi	a1,a1,1
    80004f92:	fff70613          	addi	a2,a4,-1 # 7fff <asinh-0x7fff8001>
    80004f96:	50c58463          	beq	a1,a2,8000549e <__addtf3+0x7f8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    80004f9a:	577d                	li	a4,-1
    80004f9c:	174e                	slli	a4,a4,0x33
    80004f9e:	177d                	addi	a4,a4,-1
    80004fa0:	8ff9                	and	a5,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 79)
    80004fa2:	00355713          	srli	a4,a0,0x3
    80004fa6:	03d79513          	slli	a0,a5,0x3d
    80004faa:	8d59                	or	a0,a0,a4
    80004fac:	6721                	lui	a4,0x8
    80004fae:	177d                	addi	a4,a4,-1
    80004fb0:	838d                	srli	a5,a5,0x3
    80004fb2:	00e59963          	bne	a1,a4,80004fc4 <__addtf3+0x31e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 80)
    80004fb6:	8d5d                	or	a0,a0,a5
    80004fb8:	4781                	li	a5,0
    80004fba:	c509                	beqz	a0,80004fc4 <__addtf3+0x31e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    80004fbc:	4785                	li	a5,1
    80004fbe:	17be                	slli	a5,a5,0x2f
    80004fc0:	4501                	li	a0,0
    80004fc2:	4901                	li	s2,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 90)
    80004fc4:	15c6                	slli	a1,a1,0x31
    80004fc6:	093e                	slli	s2,s2,0xf
    80004fc8:	91c5                	srli	a1,a1,0x31
    80004fca:	00b965b3          	or	a1,s2,a1
    80004fce:	07c2                	slli	a5,a5,0x10
    80004fd0:	03059913          	slli	s2,a1,0x30
    80004fd4:	0107d593          	srli	a1,a5,0x10
    80004fd8:	0125e5b3          	or	a1,a1,s2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:48 (discriminator 90)
    80004fdc:	c299                	beqz	a3,80004fe2 <__addtf3+0x33c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:48 (discriminator 1)
    80004fde:	0016a073          	csrs	fflags,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:51
    80004fe2:	70a2                	ld	ra,40(sp)
    80004fe4:	7402                	ld	s0,32(sp)
    80004fe6:	64e2                	ld	s1,24(sp)
    80004fe8:	6942                	ld	s2,16(sp)
    80004fea:	69a2                	ld	s3,8(sp)
    80004fec:	6a02                	ld	s4,0(sp)
    80004fee:	6145                	addi	sp,sp,48
    80004ff0:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 124)
    80004ff2:	01c88f63          	beq	a7,t3,80005010 <__addtf3+0x36a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80004ff6:	962a                	add	a2,a2,a0
    80004ff8:	00a63533          	sltu	a0,a2,a0
    80004ffc:	97ba                	add	a5,a5,a4
    80004ffe:	97aa                	add	a5,a5,a0
