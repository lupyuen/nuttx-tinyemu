    80005000:	03f79513          	slli	a0,a5,0x3f
    80005004:	8205                	srli	a2,a2,0x1
    80005006:	8d51                	or	a0,a0,a2
    80005008:	8385                	srli	a5,a5,0x1
    8000500a:	85c6                	mv	a1,a7
    8000500c:	4681                	li	a3,0
    8000500e:	bf09                	j	80004f20 <__addtf3+0x27a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 166)
    80005010:	c491                	beqz	s1,8000501c <__addtf3+0x376>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 169)
    80005012:	478d                	li	a5,3
    80005014:	00f49663          	bne	s1,a5,80005020 <__addtf3+0x37a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 170)
    80005018:	00091963          	bnez	s2,8000502a <__addtf3+0x384>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000501c:	85c6                	mv	a1,a7
    8000501e:	a0b1                	j	8000506a <__addtf3+0x3c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 173)
    80005020:	4789                	li	a5,2
    80005022:	00f49463          	bne	s1,a5,8000502a <__addtf3+0x384>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 174)
    80005026:	fe091be3          	bnez	s2,8000501c <__addtf3+0x376>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000502a:	57fd                	li	a5,-1
    8000502c:	557d                	li	a0,-1
    8000502e:	85b6                	mv	a1,a3
    80005030:	4695                	li	a3,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 37)
    80005032:	4709                	li	a4,2
    80005034:	0016e693          	ori	a3,a3,1
    80005038:	44e48e63          	beq	s1,a4,80005494 <__addtf3+0x7ee>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    8000503c:	470d                	li	a4,3
    8000503e:	44e48663          	beq	s1,a4,8000548a <__addtf3+0x7e4>
    80005042:	44049b63          	bnez	s1,80005498 <__addtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 40)
    80005046:	00f57713          	andi	a4,a0,15
    8000504a:	4611                	li	a2,4
    8000504c:	44c70663          	beq	a4,a2,80005498 <__addtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 44)
    80005050:	00450713          	addi	a4,a0,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 55)
    80005054:	00a73533          	sltu	a0,a4,a0
    80005058:	97aa                	add	a5,a5,a0
    8000505a:	853a                	mv	a0,a4
    8000505c:	a935                	j	80005498 <__addtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 184)
    8000505e:	c491                	beqz	s1,8000506a <__addtf3+0x3c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 187)
    80005060:	478d                	li	a5,3
    80005062:	00f49863          	bne	s1,a5,80005072 <__addtf3+0x3cc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 188)
    80005066:	00091b63          	bnez	s2,8000507c <__addtf3+0x3d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000506a:	4781                	li	a5,0
    8000506c:	4501                	li	a0,0
    8000506e:	4695                	li	a3,5
    80005070:	bf19                	j	80004f86 <__addtf3+0x2e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 191)
    80005072:	4789                	li	a5,2
    80005074:	00f49463          	bne	s1,a5,8000507c <__addtf3+0x3d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 192)
    80005078:	fe0919e3          	bnez	s2,8000506a <__addtf3+0x3c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000507c:	57fd                	li	a5,-1
    8000507e:	557d                	li	a0,-1
    80005080:	ffe68593          	addi	a1,a3,-2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    80005084:	4801                	li	a6,0
    80005086:	b76d                	j	80005030 <__addtf3+0x38a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 8)
    80005088:	0b005e63          	blez	a6,80005144 <__addtf3+0x49e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 200)
    8000508c:	edad                	bnez	a1,80005106 <__addtf3+0x460>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 202)
    8000508e:	00c765b3          	or	a1,a4,a2
    80005092:	e591                	bnez	a1,8000509e <__addtf3+0x3f8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 204)
    80005094:	cfc400e3          	beq	s0,t3,80004d74 <__addtf3+0xce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:44
    80005098:	873e                	mv	a4,a5
    8000509a:	85a2                	mv	a1,s0
    8000509c:	ae9d                	j	80005412 <__addtf3+0x76c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 205)
    8000509e:	fff6881b          	addiw	a6,a3,-1
    800050a2:	02081663          	bnez	a6,800050ce <__addtf3+0x428>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 255)
    800050a6:	40c50633          	sub	a2,a0,a2
    800050aa:	00c53533          	sltu	a0,a0,a2
    800050ae:	40e78733          	sub	a4,a5,a4
    800050b2:	8f09                	sub	a4,a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:44 (discriminator 255)
    800050b4:	85a2                	mv	a1,s0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 255)
    800050b6:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 313)
    800050b8:	03375793          	srli	a5,a4,0x33
    800050bc:	8b85                	andi	a5,a5,1
    800050be:	34078a63          	beqz	a5,80005412 <__addtf3+0x76c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 373)
    800050c2:	0736                	slli	a4,a4,0xd
    800050c4:	00d75993          	srli	s3,a4,0xd
    800050c8:	8a2a                	mv	s4,a0
    800050ca:	842e                	mv	s0,a1
    800050cc:	ac41                	j	8000535c <__addtf3+0x6b6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 215)
    800050ce:	cbc403e3          	beq	s0,t3,80004d74 <__addtf3+0xce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 238)
    800050d2:	07400693          	li	a3,116
    800050d6:	0706c363          	blt	a3,a6,8000513c <__addtf3+0x496>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 239)
    800050da:	03f00693          	li	a3,63
    800050de:	0306ca63          	blt	a3,a6,80005112 <__addtf3+0x46c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 241)
    800050e2:	04000593          	li	a1,64
    800050e6:	410585bb          	subw	a1,a1,a6
    800050ea:	00b716b3          	sll	a3,a4,a1
    800050ee:	010658b3          	srl	a7,a2,a6
    800050f2:	00b61633          	sll	a2,a2,a1
    800050f6:	0116e6b3          	or	a3,a3,a7
    800050fa:	00c03633          	snez	a2,a2
    800050fe:	8e55                	or	a2,a2,a3
    80005100:	01075733          	srl	a4,a4,a6
    80005104:	b74d                	j	800050a6 <__addtf3+0x400>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 203)
    80005106:	c7c407e3          	beq	s0,t3,80004d74 <__addtf3+0xce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 229)
    8000510a:	4685                	li	a3,1
    8000510c:	16ce                	slli	a3,a3,0x33
    8000510e:	8f55                	or	a4,a4,a3
    80005110:	b7c9                	j	800050d2 <__addtf3+0x42c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 242)
    80005112:	fc08069b          	addiw	a3,a6,-64
    80005116:	04000893          	li	a7,64
    8000511a:	00d756b3          	srl	a3,a4,a3
    8000511e:	4581                	li	a1,0
    80005120:	01180863          	beq	a6,a7,80005130 <__addtf3+0x48a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 249)
    80005124:	08000593          	li	a1,128
    80005128:	410585bb          	subw	a1,a1,a6
    8000512c:	00b715b3          	sll	a1,a4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 252)
    80005130:	8e4d                	or	a2,a2,a1
    80005132:	00c03633          	snez	a2,a2
    80005136:	8e55                	or	a2,a2,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 240)
    80005138:	4701                	li	a4,0
    8000513a:	b7b5                	j	800050a6 <__addtf3+0x400>
    8000513c:	8e59                	or	a2,a2,a4
    8000513e:	00c03633          	snez	a2,a2
    80005142:	bfdd                	j	80005138 <__addtf3+0x492>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 201)
    80005144:	0e080763          	beqz	a6,80005232 <__addtf3+0x58c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 257)
    80005148:	ec39                	bnez	s0,800051a6 <__addtf3+0x500>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 259)
    8000514a:	00a7e833          	or	a6,a5,a0
    8000514e:	02081163          	bnez	a6,80005170 <__addtf3+0x4ca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 261)
    80005152:	2dc59463          	bne	a1,t3,8000541a <__addtf3+0x774>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 263)
    80005156:	00c76533          	or	a0,a4,a2
    8000515a:	30050563          	beqz	a0,80005464 <__addtf3+0x7be>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 265)
    8000515e:	03275793          	srli	a5,a4,0x32
    80005162:	8b85                	andi	a5,a5,1
    80005164:	30079363          	bnez	a5,8000546a <__addtf3+0x7c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80005168:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    8000516a:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000516c:	8946                	mv	s2,a7
    8000516e:	b945                	j	80004e1e <__addtf3+0x178>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 262)
    80005170:	fff6c693          	not	a3,a3
    80005174:	2681                	sext.w	a3,a3
    80005176:	ea89                	bnez	a3,80005188 <__addtf3+0x4e2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 271)
    80005178:	40a60533          	sub	a0,a2,a0
    8000517c:	8f1d                	sub	a4,a4,a5
    8000517e:	00a63633          	sltu	a2,a2,a0
    80005182:	8f11                	sub	a4,a4,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 312)
    80005184:	8946                	mv	s2,a7
    80005186:	bf0d                	j	800050b8 <__addtf3+0x412>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 272)
    80005188:	03c59763          	bne	a1,t3,800051b6 <__addtf3+0x510>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 287)
    8000518c:	00c76533          	or	a0,a4,a2
    80005190:	2c050a63          	beqz	a0,80005464 <__addtf3+0x7be>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 289)
    80005194:	03275793          	srli	a5,a4,0x32
    80005198:	8b85                	andi	a5,a5,1
    8000519a:	2c079863          	bnez	a5,8000546a <__addtf3+0x7c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000519e:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    800051a0:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    800051a2:	8946                	mv	s2,a7
    800051a4:	b175                	j	80004e50 <__addtf3+0x1aa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 260)
    800051a6:	ffc583e3          	beq	a1,t3,8000518c <__addtf3+0x4e6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 286)
    800051aa:	4805                	li	a6,1
    800051ac:	184e                	slli	a6,a6,0x33
    800051ae:	40d006bb          	negw	a3,a3
    800051b2:	0107e7b3          	or	a5,a5,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 295)
    800051b6:	07400813          	li	a6,116
    800051ba:	06d84863          	blt	a6,a3,8000522a <__addtf3+0x584>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 296)
    800051be:	03f00813          	li	a6,63
    800051c2:	02d84d63          	blt	a6,a3,800051fc <__addtf3+0x556>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 298)
    800051c6:	04000313          	li	t1,64
    800051ca:	40d3033b          	subw	t1,t1,a3
    800051ce:	00679833          	sll	a6,a5,t1
    800051d2:	00d55e33          	srl	t3,a0,a3
    800051d6:	00651533          	sll	a0,a0,t1
    800051da:	01c86833          	or	a6,a6,t3
    800051de:	00a03533          	snez	a0,a0
    800051e2:	00a86533          	or	a0,a6,a0
    800051e6:	00d7d7b3          	srl	a5,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 312)
    800051ea:	40a60533          	sub	a0,a2,a0
    800051ee:	40f707b3          	sub	a5,a4,a5
    800051f2:	00a63633          	sltu	a2,a2,a0
    800051f6:	40c78733          	sub	a4,a5,a2
    800051fa:	b769                	j	80005184 <__addtf3+0x4de>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 299)
    800051fc:	fc06881b          	addiw	a6,a3,-64
    80005200:	04000e13          	li	t3,64
    80005204:	0107d833          	srl	a6,a5,a6
    80005208:	4301                	li	t1,0
    8000520a:	01c68863          	beq	a3,t3,8000521a <__addtf3+0x574>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 306)
    8000520e:	08000313          	li	t1,128
    80005212:	40d306bb          	subw	a3,t1,a3
    80005216:	00d79333          	sll	t1,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 309)
    8000521a:	00a36533          	or	a0,t1,a0
    8000521e:	00a03533          	snez	a0,a0
    80005222:	00a86533          	or	a0,a6,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 297)
    80005226:	4781                	li	a5,0
    80005228:	b7c9                	j	800051ea <__addtf3+0x544>
    8000522a:	8d5d                	or	a0,a0,a5
    8000522c:	00a03533          	snez	a0,a0
    80005230:	bfdd                	j	80005226 <__addtf3+0x580>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 258)
    80005232:	00140e93          	addi	t4,s0,1
    80005236:	ffe30693          	addi	a3,t1,-2
    8000523a:	00def6b3          	and	a3,t4,a3
    8000523e:	eafd                	bnez	a3,80005334 <__addtf3+0x68e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 314)
    80005240:	00a7eeb3          	or	t4,a5,a0
    80005244:	00c76333          	or	t1,a4,a2
    80005248:	e445                	bnez	s0,800052f0 <__addtf3+0x64a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 316)
    8000524a:	060e9063          	bnez	t4,800052aa <__addtf3+0x604>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 318)
    8000524e:	1c031c63          	bnez	t1,80005426 <__addtf3+0x780>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 320)
    80005252:	ffe48913          	addi	s2,s1,-2
    80005256:	00193913          	seqz	s2,s2
    8000525a:	4781                	li	a5,0
    8000525c:	4501                	li	a0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 1)
    8000525e:	00f56733          	or	a4,a0,a5
    80005262:	22070063          	beqz	a4,80005482 <__addtf3+0x7dc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    80005266:	03f55713          	srli	a4,a0,0x3f
    8000526a:	00179813          	slli	a6,a5,0x1
    8000526e:	983a                	add	a6,a6,a4
    80005270:	00151713          	slli	a4,a0,0x1
    80005274:	00777613          	andi	a2,a4,7
    80005278:	4681                	li	a3,0
    8000527a:	c205                	beqz	a2,8000529a <__addtf3+0x5f4>
    8000527c:	4689                	li	a3,2
    8000527e:	1cd48563          	beq	s1,a3,80005448 <__addtf3+0x7a2>
    80005282:	468d                	li	a3,3
    80005284:	1ad48763          	beq	s1,a3,80005432 <__addtf3+0x78c>
    80005288:	4685                	li	a3,1
    8000528a:	e881                	bnez	s1,8000529a <__addtf3+0x5f4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 16)
    8000528c:	00f77613          	andi	a2,a4,15
    80005290:	4591                	li	a1,4
    80005292:	ffc73713          	sltiu	a4,a4,-4
    80005296:	1ab61363          	bne	a2,a1,8000543c <__addtf3+0x796>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 23)
    8000529a:	03485813          	srli	a6,a6,0x34
    8000529e:	00184813          	xori	a6,a6,1
    800052a2:	00187813          	andi	a6,a6,1
    800052a6:	4581                	li	a1,0
    800052a8:	b9a5                	j	80004f20 <__addtf3+0x27a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 319)
    800052aa:	fa030ae3          	beqz	t1,8000525e <__addtf3+0x5b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 326)
    800052ae:	40c505b3          	sub	a1,a0,a2
    800052b2:	00b53833          	sltu	a6,a0,a1
    800052b6:	40e786b3          	sub	a3,a5,a4
    800052ba:	410686b3          	sub	a3,a3,a6
    800052be:	0336d813          	srli	a6,a3,0x33
    800052c2:	00187813          	andi	a6,a6,1
    800052c6:	00080b63          	beqz	a6,800052dc <__addtf3+0x636>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 328)
    800052ca:	40a60533          	sub	a0,a2,a0
    800052ce:	40f707b3          	sub	a5,a4,a5
    800052d2:	00a63633          	sltu	a2,a2,a0
    800052d6:	8f91                	sub	a5,a5,a2
    800052d8:	8946                	mv	s2,a7
    800052da:	b751                	j	8000525e <__addtf3+0x5b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 329)
    800052dc:	00d5e533          	or	a0,a1,a3
    800052e0:	14051663          	bnez	a0,8000542c <__addtf3+0x786>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 369)
    800052e4:	ffe48913          	addi	s2,s1,-2
    800052e8:	00193913          	seqz	s2,s2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 417)
    800052ec:	4781                	li	a5,0
    800052ee:	bf85                	j	8000525e <__addtf3+0x5b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 317)
    800052f0:	03c41463          	bne	s0,t3,80005318 <__addtf3+0x672>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 335)
    800052f4:	1c0e8963          	beqz	t4,800054c6 <__addtf3+0x820>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 337)
    800052f8:	0327d693          	srli	a3,a5,0x32
    800052fc:	8a85                	andi	a3,a3,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:37 (discriminator 337)
    800052fe:	0016b693          	seqz	a3,a3
    80005302:	0692                	slli	a3,a3,0x4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 337)
    80005304:	02859563          	bne	a1,s0,8000532e <__addtf3+0x688>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 342)
    80005308:	00030b63          	beqz	t1,8000531e <__addtf3+0x678>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 344)
    8000530c:	03275593          	srli	a1,a4,0x32
    80005310:	8985                	andi	a1,a1,1
    80005312:	e591                	bnez	a1,8000531e <__addtf3+0x678>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80005314:	46c1                	li	a3,16
    80005316:	a021                	j	8000531e <__addtf3+0x678>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:37 (discriminator 341)
    80005318:	4681                	li	a3,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 341)
    8000531a:	ffc587e3          	beq	a1,t3,80005308 <__addtf3+0x662>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 348)
    8000531e:	000e9863          	bnez	t4,8000532e <__addtf3+0x688>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 349)
    80005322:	14030863          	beqz	t1,80005472 <__addtf3+0x7cc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80005326:	87ba                	mv	a5,a4
    80005328:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000532a:	8946                	mv	s2,a7
    8000532c:	b191                	j	80004f70 <__addtf3+0x2ca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 350)
    8000532e:	c40301e3          	beqz	t1,80004f70 <__addtf3+0x2ca>
    80005332:	b1a1                	j	80004f7a <__addtf3+0x2d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 315)
    80005334:	40c50a33          	sub	s4,a0,a2
    80005338:	014536b3          	sltu	a3,a0,s4
    8000533c:	40e789b3          	sub	s3,a5,a4
    80005340:	40d989b3          	sub	s3,s3,a3
    80005344:	0339d693          	srli	a3,s3,0x33
    80005348:	8a85                	andi	a3,a3,1
    8000534a:	cabd                	beqz	a3,800053c0 <__addtf3+0x71a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 366)
    8000534c:	40a60a33          	sub	s4,a2,a0
    80005350:	8f1d                	sub	a4,a4,a5
    80005352:	01463633          	sltu	a2,a2,s4
    80005356:	40c709b3          	sub	s3,a4,a2
    8000535a:	8946                	mv	s2,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 375)
    8000535c:	06098663          	beqz	s3,800053c8 <__addtf3+0x722>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 381)
    80005360:	854e                	mv	a0,s3
    80005362:	b35fe0ef          	jal	ra,80003e96 <__clzdi2>
    80005366:	2501                	sext.w	a0,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 392)
    80005368:	ff45059b          	addiw	a1,a0,-12
    8000536c:	03f00793          	li	a5,63
    80005370:	86ae                	mv	a3,a1
    80005372:	06b7c163          	blt	a5,a1,800053d4 <__addtf3+0x72e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 398)
    80005376:	04000713          	li	a4,64
    8000537a:	9f0d                	subw	a4,a4,a1
    8000537c:	00b999b3          	sll	s3,s3,a1
    80005380:	00ea5733          	srl	a4,s4,a4
    80005384:	01376733          	or	a4,a4,s3
    80005388:	00ba1533          	sll	a0,s4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 402)
    8000538c:	0685cd63          	blt	a1,s0,80005406 <__addtf3+0x760>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 403)
    80005390:	4086843b          	subw	s0,a3,s0
    80005394:	0014079b          	addiw	a5,s0,1
    80005398:	03f00693          	li	a3,63
    8000539c:	04f6c263          	blt	a3,a5,800053e0 <__addtf3+0x73a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 405)
    800053a0:	04000693          	li	a3,64
    800053a4:	9e9d                	subw	a3,a3,a5
    800053a6:	00f555b3          	srl	a1,a0,a5
    800053aa:	00d71633          	sll	a2,a4,a3
    800053ae:	00d51533          	sll	a0,a0,a3
    800053b2:	8e4d                	or	a2,a2,a1
    800053b4:	00a03533          	snez	a0,a0
    800053b8:	8d51                	or	a0,a0,a2
    800053ba:	00f757b3          	srl	a5,a4,a5
    800053be:	b545                	j	8000525e <__addtf3+0x5b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 367)
    800053c0:	013a6533          	or	a0,s4,s3
    800053c4:	fd41                	bnez	a0,8000535c <__addtf3+0x6b6>
    800053c6:	bf39                	j	800052e4 <__addtf3+0x63e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 388)
    800053c8:	8552                	mv	a0,s4
    800053ca:	acdfe0ef          	jal	ra,80003e96 <__clzdi2>
    800053ce:	0405051b          	addiw	a0,a0,64
    800053d2:	bf59                	j	80005368 <__addtf3+0x6c2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 394)
    800053d4:	fb45071b          	addiw	a4,a0,-76
    800053d8:	00ea1733          	sll	a4,s4,a4
    800053dc:	4501                	li	a0,0
    800053de:	b77d                	j	8000538c <__addtf3+0x6e6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 406)
    800053e0:	fc14041b          	addiw	s0,s0,-63
    800053e4:	04000593          	li	a1,64
    800053e8:	00875433          	srl	s0,a4,s0
    800053ec:	4681                	li	a3,0
    800053ee:	00b78763          	beq	a5,a1,800053fc <__addtf3+0x756>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 414)
    800053f2:	08000693          	li	a3,128
    800053f6:	9e9d                	subw	a3,a3,a5
    800053f8:	00d716b3          	sll	a3,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 417)
    800053fc:	8d55                	or	a0,a0,a3
    800053fe:	00a03533          	snez	a0,a0
    80005402:	8d41                	or	a0,a0,s0
    80005404:	b5e5                	j	800052ec <__addtf3+0x646>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46 (discriminator 404)
    80005406:	57fd                	li	a5,-1
    80005408:	17ce                	slli	a5,a5,0x33
    8000540a:	17fd                	addi	a5,a5,-1
    8000540c:	40b405b3          	sub	a1,s0,a1
    80005410:	8f7d                	and	a4,a4,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 421)
    80005412:	87ba                	mv	a5,a4
    80005414:	e40585e3          	beqz	a1,8000525e <__addtf3+0x5b8>
    80005418:	ba91                	j	80004d6c <__addtf3+0xc6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    8000541a:	8532                	mv	a0,a2
    8000541c:	8946                	mv	s2,a7
    8000541e:	bfd5                	j	80005412 <__addtf3+0x76c>
    80005420:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80005422:	8532                	mv	a0,a2
    80005424:	bd2d                	j	8000525e <__addtf3+0x5b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80005426:	87ba                	mv	a5,a4
    80005428:	8532                	mv	a0,a2
    8000542a:	b57d                	j	800052d8 <__addtf3+0x632>
    8000542c:	87b6                	mv	a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    8000542e:	852e                	mv	a0,a1
    80005430:	b53d                	j	8000525e <__addtf3+0x5b8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 19)
    80005432:	4685                	li	a3,1
    80005434:	e60913e3          	bnez	s2,8000529a <__addtf3+0x5f4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 31)
    80005438:	ff873713          	sltiu	a4,a4,-8
    8000543c:	00174713          	xori	a4,a4,1
    80005440:	1702                	slli	a4,a4,0x20
    80005442:	9301                	srli	a4,a4,0x20
    80005444:	983a                	add	a6,a6,a4
    80005446:	bd91                	j	8000529a <__addtf3+0x5f4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 18)
    80005448:	4685                	li	a3,1
    8000544a:	e40908e3          	beqz	s2,8000529a <__addtf3+0x5f4>
    8000544e:	b7ed                	j	80005438 <__addtf3+0x792>
    80005450:	4781                	li	a5,0
    80005452:	4681                	li	a3,0
    80005454:	be0d                	j	80004f86 <__addtf3+0x2e0>
    80005456:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    80005458:	8532                	mv	a0,a2
    8000545a:	ba09                	j	80004d6c <__addtf3+0xc6>
    8000545c:	4781                	li	a5,0
    8000545e:	4501                	li	a0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80005460:	85a2                	mv	a1,s0
    80005462:	bfc5                	j	80005452 <__addtf3+0x7ac>
    80005464:	4781                	li	a5,0
    80005466:	8946                	mv	s2,a7
    80005468:	b7ed                	j	80005452 <__addtf3+0x7ac>
    8000546a:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:45
    8000546c:	8532                	mv	a0,a2
    8000546e:	8946                	mv	s2,a7
    80005470:	b8f5                	j	80004d6c <__addtf3+0xc6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    80005472:	4785                	li	a5,1
    80005474:	65a1                	lui	a1,0x8
    80005476:	4501                	li	a0,0
    80005478:	4901                	li	s2,0
    8000547a:	17ca                	slli	a5,a5,0x32
    8000547c:	15fd                	addi	a1,a1,-1
    8000547e:	46c1                	li	a3,16
    80005480:	b619                	j	80004f86 <__addtf3+0x2e0>
    80005482:	4781                	li	a5,0
    80005484:	4501                	li	a0,0
    80005486:	4581                	li	a1,0
    80005488:	b7e9                	j	80005452 <__addtf3+0x7ac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 43)
    8000548a:	00091763          	bnez	s2,80005498 <__addtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 55)
    8000548e:	00850713          	addi	a4,a0,8
    80005492:	b6c9                	j	80005054 <__addtf3+0x3ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 42)
    80005494:	fe091de3          	bnez	s2,8000548e <__addtf3+0x7e8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    80005498:	a8081de3          	bnez	a6,80004f32 <__addtf3+0x28c>
    8000549c:	b4ed                	j	80004f86 <__addtf3+0x2e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 65)
    8000549e:	4501                	li	a0,0
    800054a0:	cc99                	beqz	s1,800054be <__addtf3+0x818>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 68)
    800054a2:	478d                	li	a5,3
    800054a4:	00f49863          	bne	s1,a5,800054b4 <__addtf3+0x80e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 69)
    800054a8:	00090b63          	beqz	s2,800054be <__addtf3+0x818>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47
    800054ac:	557d                	li	a0,-1
    800054ae:	ffe70593          	addi	a1,a4,-2 # 7ffe <asinh-0x7fff8002>
    800054b2:	a031                	j	800054be <__addtf3+0x818>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 72)
    800054b4:	4789                	li	a5,2
    800054b6:	fef49be3          	bne	s1,a5,800054ac <__addtf3+0x806>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 73)
    800054ba:	fe0909e3          	beqz	s2,800054ac <__addtf3+0x806>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:47 (discriminator 78)
    800054be:	0056e693          	ori	a3,a3,5
    800054c2:	87aa                	mv	a5,a0
    800054c4:	bcf9                	j	80004fa2 <__addtf3+0x2fc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:37
    800054c6:	4681                	li	a3,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/addtf3.c:46
    800054c8:	e4859de3          	bne	a1,s0,80005322 <__addtf3+0x67c>
    800054cc:	bd35                	j	80005308 <__addtf3+0x662>
    800054ce:	4681                	li	a3,0
    800054d0:	a8859ee3          	bne	a1,s0,80004f6c <__addtf3+0x2c6>
    800054d4:	bcb5                	j	80004f50 <__addtf3+0x2aa>

00000000800054d6 <__divtf3>:
__divtf3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:36
    800054d6:	711d                	addi	sp,sp,-96
    800054d8:	f456                	sd	s5,40(sp)
    800054da:	e466                	sd	s9,8(sp)
    800054dc:	ec86                	sd	ra,88(sp)
    800054de:	e8a2                	sd	s0,80(sp)
    800054e0:	e4a6                	sd	s1,72(sp)
    800054e2:	e0ca                	sd	s2,64(sp)
    800054e4:	fc4e                	sd	s3,56(sp)
    800054e6:	f852                	sd	s4,48(sp)
    800054e8:	f05a                	sd	s6,32(sp)
    800054ea:	ec5e                	sd	s7,24(sp)
    800054ec:	e862                	sd	s8,16(sp)
    800054ee:	8cb2                	mv	s9,a2
    800054f0:	8ab6                	mv	s5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:43
    800054f2:	002029f3          	frrm	s3
    800054f6:	01059793          	slli	a5,a1,0x10
    800054fa:	0107db13          	srli	s6,a5,0x10
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44
    800054fe:	67a1                	lui	a5,0x8
    80005500:	0305db93          	srli	s7,a1,0x30
    80005504:	17fd                	addi	a5,a5,-1
    80005506:	00fbf733          	and	a4,s7,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:43
    8000550a:	2981                	sext.w	s3,s3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44
    8000550c:	03f5da13          	srli	s4,a1,0x3f
    80005510:	cb05                	beqz	a4,80005540 <__divtf3+0x6a>
    80005512:	84aa                	mv	s1,a0
    80005514:	0007069b          	sext.w	a3,a4
    80005518:	08f70563          	beq	a4,a5,800055a2 <__divtf3+0xcc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 1)
    8000551c:	03d55693          	srli	a3,a0,0x3d
    80005520:	0b0e                	slli	s6,s6,0x3
    80005522:	0166eb33          	or	s6,a3,s6
    80005526:	4785                	li	a5,1
    80005528:	76f1                	lui	a3,0xffffc
    8000552a:	17ce                	slli	a5,a5,0x33
    8000552c:	0685                	addi	a3,a3,1
    8000552e:	00fb6b33          	or	s6,s6,a5
    80005532:	00351493          	slli	s1,a0,0x3
    80005536:	00d70bb3          	add	s7,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 41)
    8000553a:	4c01                	li	s8,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:37
    8000553c:	4901                	li	s2,0
    8000553e:	a8a5                	j	800055b6 <__divtf3+0xe0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 2)
    80005540:	016567b3          	or	a5,a0,s6
    80005544:	842a                	mv	s0,a0
    80005546:	cbf1                	beqz	a5,8000561a <__divtf3+0x144>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 13)
    80005548:	040b0263          	beqz	s6,8000558c <__divtf3+0xb6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 20)
    8000554c:	855a                	mv	a0,s6
    8000554e:	949fe0ef          	jal	ra,80003e96 <__clzdi2>
    80005552:	0005071b          	sext.w	a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 31)
    80005556:	ff170793          	addi	a5,a4,-15
    8000555a:	03c00613          	li	a2,60
    8000555e:	0007869b          	sext.w	a3,a5
    80005562:	02f64a63          	blt	a2,a5,80005596 <__divtf3+0xc0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 32)
    80005566:	03d00613          	li	a2,61
    8000556a:	0036849b          	addiw	s1,a3,3
    8000556e:	40d606bb          	subw	a3,a2,a3
    80005572:	009b17b3          	sll	a5,s6,s1
    80005576:	00d456b3          	srl	a3,s0,a3
    8000557a:	00f6eb33          	or	s6,a3,a5
    8000557e:	009414b3          	sll	s1,s0,s1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 41)
    80005582:	76f1                	lui	a3,0xffffc
    80005584:	06c5                	addi	a3,a3,17
    80005586:	40e68bb3          	sub	s7,a3,a4
    8000558a:	bf45                	j	8000553a <__divtf3+0x64>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 27)
    8000558c:	90bfe0ef          	jal	ra,80003e96 <__clzdi2>
    80005590:	0405071b          	addiw	a4,a0,64
    80005594:	b7c9                	j	80005556 <__divtf3+0x80>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 33)
    80005596:	fc36879b          	addiw	a5,a3,-61
    8000559a:	00f41b33          	sll	s6,s0,a5
    8000559e:	4481                	li	s1,0
    800055a0:	b7cd                	j	80005582 <__divtf3+0xac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 3)
    800055a2:	016567b3          	or	a5,a0,s6
    800055a6:	cfbd                	beqz	a5,80005624 <__divtf3+0x14e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44 (discriminator 44)
    800055a8:	02fb5793          	srli	a5,s6,0x2f
    800055ac:	8b85                	andi	a5,a5,1
    800055ae:	8bb6                	mv	s7,a3
    800055b0:	4c0d                	li	s8,3
    800055b2:	4941                	li	s2,16
    800055b4:	f7c1                	bnez	a5,8000553c <__divtf3+0x66>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 8)
    800055b6:	6621                	lui	a2,0x8
    800055b8:	030ad513          	srli	a0,s5,0x30
    800055bc:	167d                	addi	a2,a2,-1
    800055be:	010a9413          	slli	s0,s5,0x10
    800055c2:	00c57733          	and	a4,a0,a2
    800055c6:	87e6                	mv	a5,s9
    800055c8:	8041                	srli	s0,s0,0x10
    800055ca:	03fada93          	srli	s5,s5,0x3f
    800055ce:	c325                	beqz	a4,8000562e <__divtf3+0x158>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45
    800055d0:	0007069b          	sext.w	a3,a4
    800055d4:	0ac70b63          	beq	a4,a2,8000568a <__divtf3+0x1b4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 1)
    800055d8:	040e                	slli	s0,s0,0x3
    800055da:	03dcd693          	srli	a3,s9,0x3d
    800055de:	8ec1                	or	a3,a3,s0
    800055e0:	7571                	lui	a0,0xffffc
    800055e2:	4405                	li	s0,1
    800055e4:	144e                	slli	s0,s0,0x33
    800055e6:	0505                	addi	a0,a0,1
    800055e8:	8c55                	or	s0,s0,a3
    800055ea:	003c9793          	slli	a5,s9,0x3
    800055ee:	953a                	add	a0,a0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 41)
    800055f0:	4601                	li	a2,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 8)
    800055f2:	002c1713          	slli	a4,s8,0x2
    800055f6:	8f51                	or	a4,a4,a2
    800055f8:	40ab86b3          	sub	a3,s7,a0
    800055fc:	177d                	addi	a4,a4,-1
    800055fe:	4539                	li	a0,14
    80005600:	015a45b3          	xor	a1,s4,s5
    80005604:	0ce56863          	bltu	a0,a4,800056d4 <__divtf3+0x1fe>
    80005608:	0005f517          	auipc	a0,0x5f
    8000560c:	7c850513          	addi	a0,a0,1992 # 80064dd0 <PIo2+0x40>
    80005610:	070a                	slli	a4,a4,0x2
    80005612:	972a                	add	a4,a4,a0
    80005614:	4318                	lw	a4,0(a4)
    80005616:	972a                	add	a4,a4,a0
    80005618:	8702                	jr	a4
    8000561a:	4b01                	li	s6,0
    8000561c:	4481                	li	s1,0
    8000561e:	4b81                	li	s7,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44
    80005620:	4c05                	li	s8,1
    80005622:	bf29                	j	8000553c <__divtf3+0x66>
    80005624:	4b01                	li	s6,0
    80005626:	4481                	li	s1,0
    80005628:	8bb6                	mv	s7,a3
    8000562a:	4c09                	li	s8,2
    8000562c:	bf01                	j	8000553c <__divtf3+0x66>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 2)
    8000562e:	008ce7b3          	or	a5,s9,s0
    80005632:	c7bd                	beqz	a5,800056a0 <__divtf3+0x1ca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 13)
    80005634:	cc1d                	beqz	s0,80005672 <__divtf3+0x19c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 20)
    80005636:	8522                	mv	a0,s0
    80005638:	85ffe0ef          	jal	ra,80003e96 <__clzdi2>
    8000563c:	0005069b          	sext.w	a3,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 31)
    80005640:	ff168793          	addi	a5,a3,-15 # ffffffffffffbff1 <_ebss+0xffffffff7fefae8b>
    80005644:	03c00613          	li	a2,60
    80005648:	0007871b          	sext.w	a4,a5
    8000564c:	02f64963          	blt	a2,a5,8000567e <__divtf3+0x1a8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 32)
    80005650:	03d00613          	li	a2,61
    80005654:	0037079b          	addiw	a5,a4,3
    80005658:	40e6073b          	subw	a4,a2,a4
    8000565c:	00f41433          	sll	s0,s0,a5
    80005660:	00ecd733          	srl	a4,s9,a4
    80005664:	8c59                	or	s0,s0,a4
    80005666:	00fc97b3          	sll	a5,s9,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 41)
    8000566a:	7571                	lui	a0,0xffffc
    8000566c:	0545                	addi	a0,a0,17
    8000566e:	8d15                	sub	a0,a0,a3
    80005670:	b741                	j	800055f0 <__divtf3+0x11a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 27)
    80005672:	8566                	mv	a0,s9
    80005674:	823fe0ef          	jal	ra,80003e96 <__clzdi2>
    80005678:	0405069b          	addiw	a3,a0,64
    8000567c:	b7d1                	j	80005640 <__divtf3+0x16a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 33)
    8000567e:	fc37071b          	addiw	a4,a4,-61
    80005682:	00ec9433          	sll	s0,s9,a4
    80005686:	4781                	li	a5,0
    80005688:	b7cd                	j	8000566a <__divtf3+0x194>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 3)
    8000568a:	008ce733          	or	a4,s9,s0
    8000568e:	cf11                	beqz	a4,800056aa <__divtf3+0x1d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45 (discriminator 44)
    80005690:	02f45713          	srli	a4,s0,0x2f
    80005694:	8b05                	andi	a4,a4,1
    80005696:	8536                	mv	a0,a3
    80005698:	460d                	li	a2,3
    8000569a:	ff21                	bnez	a4,800055f2 <__divtf3+0x11c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:45
    8000569c:	4941                	li	s2,16
    8000569e:	bf91                	j	800055f2 <__divtf3+0x11c>
    800056a0:	4401                	li	s0,0
    800056a2:	4781                	li	a5,0
    800056a4:	4501                	li	a0,0
    800056a6:	4605                	li	a2,1
    800056a8:	b7a9                	j	800055f2 <__divtf3+0x11c>
    800056aa:	4401                	li	s0,0
    800056ac:	4781                	li	a5,0
    800056ae:	8536                	mv	a0,a3
    800056b0:	4609                	li	a2,2
    800056b2:	b781                	j	800055f2 <__divtf3+0x11c>
    800056b4:	85d6                	mv	a1,s5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46
    800056b6:	8c32                	mv	s8,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 108)
    800056b8:	470d                	li	a4,3
    800056ba:	4aec0c63          	beq	s8,a4,80005b72 <__divtf3+0x69c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    800056be:	4705                	li	a4,1
    800056c0:	4aec0663          	beq	s8,a4,80005b6c <__divtf3+0x696>
    800056c4:	4709                	li	a4,2
    800056c6:	24ec1563          	bne	s8,a4,80005910 <__divtf3+0x43a>
    800056ca:	a471                	j	80005956 <__divtf3+0x480>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:44
    800056cc:	85d2                	mv	a1,s4
    800056ce:	845a                	mv	s0,s6
    800056d0:	87a6                	mv	a5,s1
    800056d2:	b7dd                	j	800056b8 <__divtf3+0x1e2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 2)
    800056d4:	01646663          	bltu	s0,s6,800056e0 <__divtf3+0x20a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 11)
    800056d8:	268b1a63          	bne	s6,s0,8000594c <__divtf3+0x476>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 12)
    800056dc:	26f4e863          	bltu	s1,a5,8000594c <__divtf3+0x476>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 14)
    800056e0:	03fb1613          	slli	a2,s6,0x3f
    800056e4:	0014d713          	srli	a4,s1,0x1
    800056e8:	03f49f13          	slli	t5,s1,0x3f
    800056ec:	001b5b13          	srli	s6,s6,0x1
    800056f0:	00e664b3          	or	s1,a2,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 19)
    800056f4:	00c41813          	slli	a6,s0,0xc
    800056f8:	0347d713          	srli	a4,a5,0x34
    800056fc:	01076733          	or	a4,a4,a6
    80005700:	02085813          	srli	a6,a6,0x20
    80005704:	030b5e33          	divu	t3,s6,a6
    80005708:	00c79613          	slli	a2,a5,0xc
    8000570c:	02071893          	slli	a7,a4,0x20
    80005710:	0208d893          	srli	a7,a7,0x20
    80005714:	0204d513          	srli	a0,s1,0x20
    80005718:	030b77b3          	remu	a5,s6,a6
    8000571c:	03c88333          	mul	t1,a7,t3
    80005720:	1782                	slli	a5,a5,0x20
    80005722:	8fc9                	or	a5,a5,a0
    80005724:	8572                	mv	a0,t3
    80005726:	0067fc63          	bgeu	a5,t1,8000573e <__divtf3+0x268>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 22)
    8000572a:	97ba                	add	a5,a5,a4
    8000572c:	fffe0513          	addi	a0,t3,-1
    80005730:	00e7e763          	bltu	a5,a4,8000573e <__divtf3+0x268>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 24)
    80005734:	0067f563          	bgeu	a5,t1,8000573e <__divtf3+0x268>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 26)
    80005738:	ffee0513          	addi	a0,t3,-2
    8000573c:	97ba                	add	a5,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 28)
    8000573e:	406787b3          	sub	a5,a5,t1
    80005742:	0307de33          	divu	t3,a5,a6
    80005746:	1482                	slli	s1,s1,0x20
    80005748:	9081                	srli	s1,s1,0x20
    8000574a:	0307f7b3          	remu	a5,a5,a6
    8000574e:	03c88333          	mul	t1,a7,t3
    80005752:	1782                	slli	a5,a5,0x20
    80005754:	8cdd                	or	s1,s1,a5
    80005756:	87f2                	mv	a5,t3
    80005758:	0064fc63          	bgeu	s1,t1,80005770 <__divtf3+0x29a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 29)
    8000575c:	94ba                	add	s1,s1,a4
    8000575e:	fffe0793          	addi	a5,t3,-1
    80005762:	00e4e763          	bltu	s1,a4,80005770 <__divtf3+0x29a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 31)
    80005766:	0064f563          	bgeu	s1,t1,80005770 <__divtf3+0x29a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 33)
    8000576a:	ffee0793          	addi	a5,t3,-2
    8000576e:	94ba                	add	s1,s1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 35)
    80005770:	406484b3          	sub	s1,s1,t1
    80005774:	1502                	slli	a0,a0,0x20
    80005776:	537d                	li	t1,-1
    80005778:	8d5d                	or	a0,a0,a5
    8000577a:	02035313          	srli	t1,t1,0x20
    8000577e:	00657eb3          	and	t4,a0,t1
    80005782:	02055f93          	srli	t6,a0,0x20
    80005786:	02065e13          	srli	t3,a2,0x20
    8000578a:	00667333          	and	t1,a2,t1
    8000578e:	026e83b3          	mul	t2,t4,t1
    80005792:	026f87b3          	mul	a5,t6,t1
    80005796:	03de0eb3          	mul	t4,t3,t4
    8000579a:	00fe82b3          	add	t0,t4,a5
    8000579e:	0203de93          	srli	t4,t2,0x20
    800057a2:	9e96                	add	t4,t4,t0
    800057a4:	03cf8fb3          	mul	t6,t6,t3
    800057a8:	00fef563          	bgeu	t4,a5,800057b2 <__divtf3+0x2dc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 36)
    800057ac:	4785                	li	a5,1
    800057ae:	1782                	slli	a5,a5,0x20
    800057b0:	9fbe                	add	t6,t6,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 38)
    800057b2:	52fd                	li	t0,-1
    800057b4:	020ed793          	srli	a5,t4,0x20
    800057b8:	0202d293          	srli	t0,t0,0x20
    800057bc:	9fbe                	add	t6,t6,a5
    800057be:	005ef7b3          	and	a5,t4,t0
    800057c2:	1782                	slli	a5,a5,0x20
    800057c4:	0053f3b3          	and	t2,t2,t0
    800057c8:	979e                	add	a5,a5,t2
    800057ca:	01f4e763          	bltu	s1,t6,800057d8 <__divtf3+0x302>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 40)
    800057ce:	842a                	mv	s0,a0
    800057d0:	03f49e63          	bne	s1,t6,8000580c <__divtf3+0x336>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 41)
    800057d4:	02ff7c63          	bgeu	t5,a5,8000580c <__divtf3+0x336>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 43)
    800057d8:	9f32                	add	t5,t5,a2
    800057da:	00cf3eb3          	sltu	t4,t5,a2
    800057de:	9eba                	add	t4,t4,a4
    800057e0:	94f6                	add	s1,s1,t4
    800057e2:	fff50413          	addi	s0,a0,-1 # ffffffffffffbfff <_ebss+0xffffffff7fefae99>
    800057e6:	00976663          	bltu	a4,s1,800057f2 <__divtf3+0x31c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 46)
    800057ea:	02971163          	bne	a4,s1,8000580c <__divtf3+0x336>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 47)
    800057ee:	00cf6f63          	bltu	t5,a2,8000580c <__divtf3+0x336>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 49)
    800057f2:	01f4e663          	bltu	s1,t6,800057fe <__divtf3+0x328>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 52)
    800057f6:	009f9b63          	bne	t6,s1,8000580c <__divtf3+0x336>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 53)
    800057fa:	00ff7963          	bgeu	t5,a5,8000580c <__divtf3+0x336>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 55)
    800057fe:	9f32                	add	t5,t5,a2
    80005800:	ffe50413          	addi	s0,a0,-2
    80005804:	00cf3533          	sltu	a0,t5,a2
    80005808:	953a                	add	a0,a0,a4
    8000580a:	94aa                	add	s1,s1,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 57)
    8000580c:	40ff0eb3          	sub	t4,t5,a5
    80005810:	41f484b3          	sub	s1,s1,t6
    80005814:	01df3533          	sltu	a0,t5,t4
    80005818:	8c89                	sub	s1,s1,a0
    8000581a:	57fd                	li	a5,-1
    8000581c:	0e970a63          	beq	a4,s1,80005910 <__divtf3+0x43a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 59)
    80005820:	0304dfb3          	divu	t6,s1,a6
    80005824:	020ed793          	srli	a5,t4,0x20
    80005828:	0304f4b3          	remu	s1,s1,a6
    8000582c:	857e                	mv	a0,t6
    8000582e:	03f88f33          	mul	t5,a7,t6
    80005832:	1482                	slli	s1,s1,0x20
    80005834:	8cdd                	or	s1,s1,a5
    80005836:	01e4fc63          	bgeu	s1,t5,8000584e <__divtf3+0x378>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 61)
    8000583a:	94ba                	add	s1,s1,a4
    8000583c:	ffff8513          	addi	a0,t6,-1
    80005840:	00e4e763          	bltu	s1,a4,8000584e <__divtf3+0x378>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 63)
    80005844:	01e4f563          	bgeu	s1,t5,8000584e <__divtf3+0x378>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 65)
    80005848:	ffef8513          	addi	a0,t6,-2
    8000584c:	94ba                	add	s1,s1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 67)
    8000584e:	41e484b3          	sub	s1,s1,t5
    80005852:	0304df33          	divu	t5,s1,a6
    80005856:	020e9793          	slli	a5,t4,0x20
    8000585a:	9381                	srli	a5,a5,0x20
    8000585c:	0304f4b3          	remu	s1,s1,a6
    80005860:	03e888b3          	mul	a7,a7,t5
    80005864:	1482                	slli	s1,s1,0x20
    80005866:	8cdd                	or	s1,s1,a5
    80005868:	87fa                	mv	a5,t5
    8000586a:	0114fc63          	bgeu	s1,a7,80005882 <__divtf3+0x3ac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 68)
    8000586e:	94ba                	add	s1,s1,a4
    80005870:	ffff0793          	addi	a5,t5,-1
    80005874:	00e4e763          	bltu	s1,a4,80005882 <__divtf3+0x3ac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 70)
    80005878:	0114f563          	bgeu	s1,a7,80005882 <__divtf3+0x3ac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 72)
    8000587c:	ffef0793          	addi	a5,t5,-2
    80005880:	94ba                	add	s1,s1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 74)
    80005882:	1502                	slli	a0,a0,0x20
    80005884:	8d5d                	or	a0,a0,a5
    80005886:	02051793          	slli	a5,a0,0x20
    8000588a:	9381                	srli	a5,a5,0x20
    8000588c:	411484b3          	sub	s1,s1,a7
    80005890:	02055893          	srli	a7,a0,0x20
    80005894:	02f30f33          	mul	t5,t1,a5
    80005898:	031e0eb3          	mul	t4,t3,a7
    8000589c:	02688333          	mul	t1,a7,t1
    800058a0:	02fe0e33          	mul	t3,t3,a5
    800058a4:	020f5793          	srli	a5,t5,0x20
    800058a8:	9e1a                	add	t3,t3,t1
    800058aa:	97f2                	add	a5,a5,t3
    800058ac:	0067f563          	bgeu	a5,t1,800058b6 <__divtf3+0x3e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 75)
    800058b0:	4805                	li	a6,1
    800058b2:	1802                	slli	a6,a6,0x20
    800058b4:	9ec2                	add	t4,t4,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 77)
    800058b6:	537d                	li	t1,-1
    800058b8:	02035313          	srli	t1,t1,0x20
    800058bc:	0207d893          	srli	a7,a5,0x20
    800058c0:	0067f833          	and	a6,a5,t1
    800058c4:	1802                	slli	a6,a6,0x20
    800058c6:	006f7f33          	and	t5,t5,t1
    800058ca:	98f6                	add	a7,a7,t4
    800058cc:	987a                	add	a6,a6,t5
    800058ce:	0114e763          	bltu	s1,a7,800058dc <__divtf3+0x406>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 79)
    800058d2:	2b149863          	bne	s1,a7,80005b82 <__divtf3+0x6ac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 80)
    800058d6:	87aa                	mv	a5,a0
    800058d8:	02080c63          	beqz	a6,80005910 <__divtf3+0x43a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 82)
    800058dc:	94ba                	add	s1,s1,a4
    800058de:	fff50793          	addi	a5,a0,-1
    800058e2:	02e4e163          	bltu	s1,a4,80005904 <__divtf3+0x42e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 88)
    800058e6:	0114e663          	bltu	s1,a7,800058f2 <__divtf3+0x41c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 91)
    800058ea:	29149b63          	bne	s1,a7,80005b80 <__divtf3+0x6aa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 92)
    800058ee:	01067d63          	bgeu	a2,a6,80005908 <__divtf3+0x432>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 94)
    800058f2:	ffe50793          	addi	a5,a0,-2
    800058f6:	00161513          	slli	a0,a2,0x1
    800058fa:	00c53633          	sltu	a2,a0,a2
    800058fe:	9732                	add	a4,a4,a2
    80005900:	94ba                	add	s1,s1,a4
    80005902:	862a                	mv	a2,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 96)
    80005904:	01149463          	bne	s1,a7,8000590c <__divtf3+0x436>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 98)
    80005908:	01060463          	beq	a2,a6,80005910 <__divtf3+0x43a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 99)
    8000590c:	0017e793          	ori	a5,a5,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 2)
    80005910:	6711                	lui	a4,0x4
    80005912:	177d                	addi	a4,a4,-1
    80005914:	9736                	add	a4,a4,a3
    80005916:	0ee05663          	blez	a4,80005a02 <__divtf3+0x52c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 6)
    8000591a:	0077f613          	andi	a2,a5,7
    8000591e:	ce21                	beqz	a2,80005976 <__divtf3+0x4a0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 8)
    80005920:	4609                	li	a2,2
    80005922:	00196913          	ori	s2,s2,1
    80005926:	04c98763          	beq	s3,a2,80005974 <__divtf3+0x49e>
    8000592a:	460d                	li	a2,3
    8000592c:	04c98063          	beq	s3,a2,8000596c <__divtf3+0x496>
    80005930:	04099363          	bnez	s3,80005976 <__divtf3+0x4a0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005934:	00f7f613          	andi	a2,a5,15
    80005938:	4511                	li	a0,4
    8000593a:	02a60e63          	beq	a2,a0,80005976 <__divtf3+0x4a0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 10)
    8000593e:	00478613          	addi	a2,a5,4 # 8004 <asinh-0x7fff7ffc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 21)
    80005942:	00f637b3          	sltu	a5,a2,a5
    80005946:	943e                	add	s0,s0,a5
    80005948:	87b2                	mv	a5,a2
    8000594a:	a035                	j	80005976 <__divtf3+0x4a0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 15)
    8000594c:	16fd                	addi	a3,a3,-1
    8000594e:	4f01                	li	t5,0
    80005950:	b355                	j	800056f4 <__divtf3+0x21e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46 (discriminator 3)
    80005952:	00896913          	ori	s2,s2,8
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005956:	6721                	lui	a4,0x8
    80005958:	4401                	li	s0,0
    8000595a:	4501                	li	a0,0
    8000595c:	177d                	addi	a4,a4,-1
    8000595e:	a081                	j	8000599e <__divtf3+0x4c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46
    80005960:	4405                	li	s0,1
    80005962:	143e                	slli	s0,s0,0x2f
    80005964:	4781                	li	a5,0
    80005966:	4581                	li	a1,0
    80005968:	4c0d                	li	s8,3
    8000596a:	b3b9                	j	800056b8 <__divtf3+0x1e2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    8000596c:	e589                	bnez	a1,80005976 <__divtf3+0x4a0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 21)
    8000596e:	00878613          	addi	a2,a5,8
    80005972:	bfc1                	j	80005942 <__divtf3+0x46c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005974:	fded                	bnez	a1,8000596e <__divtf3+0x498>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 9)
    80005976:	03445613          	srli	a2,s0,0x34
    8000597a:	8a05                	andi	a2,a2,1
    8000597c:	c619                	beqz	a2,8000598a <__divtf3+0x4b4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 24)
    8000597e:	577d                	li	a4,-1
    80005980:	1752                	slli	a4,a4,0x34
    80005982:	177d                	addi	a4,a4,-1
    80005984:	8c79                	and	s0,s0,a4
    80005986:	6711                	lui	a4,0x4
    80005988:	9736                	add	a4,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 26)
    8000598a:	66a1                	lui	a3,0x8
    8000598c:	ffe68613          	addi	a2,a3,-2 # 7ffe <asinh-0x7fff8002>
    80005990:	04e64163          	blt	a2,a4,800059d2 <__divtf3+0x4fc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005994:	03d41513          	slli	a0,s0,0x3d
    80005998:	838d                	srli	a5,a5,0x3
    8000599a:	8d5d                	or	a0,a0,a5
    8000599c:	800d                	srli	s0,s0,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 119)
    8000599e:	1746                	slli	a4,a4,0x31
    800059a0:	05be                	slli	a1,a1,0xf
    800059a2:	9345                	srli	a4,a4,0x31
    800059a4:	8f4d                	or	a4,a4,a1
    800059a6:	0442                	slli	s0,s0,0x10
    800059a8:	1742                	slli	a4,a4,0x30
    800059aa:	01045593          	srli	a1,s0,0x10
    800059ae:	8dd9                	or	a1,a1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:48 (discriminator 119)
    800059b0:	00090463          	beqz	s2,800059b8 <__divtf3+0x4e2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:48 (discriminator 1)
    800059b4:	00192073          	csrs	fflags,s2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:51
    800059b8:	60e6                	ld	ra,88(sp)
    800059ba:	6446                	ld	s0,80(sp)
    800059bc:	64a6                	ld	s1,72(sp)
    800059be:	6906                	ld	s2,64(sp)
    800059c0:	79e2                	ld	s3,56(sp)
    800059c2:	7a42                	ld	s4,48(sp)
    800059c4:	7aa2                	ld	s5,40(sp)
    800059c6:	7b02                	ld	s6,32(sp)
    800059c8:	6be2                	ld	s7,24(sp)
    800059ca:	6c42                	ld	s8,16(sp)
    800059cc:	6ca2                	ld	s9,8(sp)
    800059ce:	6125                	addi	sp,sp,96
    800059d0:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    800059d2:	4789                	li	a5,2
    800059d4:	02f98263          	beq	s3,a5,800059f8 <__divtf3+0x522>
    800059d8:	478d                	li	a5,3
    800059da:	fff68713          	addi	a4,a3,-1
    800059de:	00f98663          	beq	s3,a5,800059ea <__divtf3+0x514>
    800059e2:	00099563          	bnez	s3,800059ec <__divtf3+0x516>
    800059e6:	4501                	li	a0,0
    800059e8:	a021                	j	800059f0 <__divtf3+0x51a>
    800059ea:	ddf5                	beqz	a1,800059e6 <__divtf3+0x510>
    800059ec:	557d                	li	a0,-1
    800059ee:	8732                	mv	a4,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 38)
    800059f0:	00596913          	ori	s2,s2,5
    800059f4:	842a                	mv	s0,a0
    800059f6:	b765                	j	8000599e <__divtf3+0x4c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    800059f8:	d9f5                	beqz	a1,800059ec <__divtf3+0x516>
    800059fa:	4501                	li	a0,0
    800059fc:	fff68713          	addi	a4,a3,-1
    80005a00:	bfc5                	j	800059f0 <__divtf3+0x51a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 7)
    80005a02:	4805                	li	a6,1
    80005a04:	e731                	bnez	a4,80005a50 <__divtf3+0x57a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 39)
    80005a06:	0077f613          	andi	a2,a5,7
    80005a0a:	86a2                	mv	a3,s0
    80005a0c:	ce0d                	beqz	a2,80005a46 <__divtf3+0x570>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 41)
    80005a0e:	4609                	li	a2,2
    80005a10:	00196913          	ori	s2,s2,1
    80005a14:	02c98863          	beq	s3,a2,80005a44 <__divtf3+0x56e>
    80005a18:	460d                	li	a2,3
    80005a1a:	02c98163          	beq	s3,a2,80005a3c <__divtf3+0x566>
    80005a1e:	02099463          	bnez	s3,80005a46 <__divtf3+0x570>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005a22:	00f7f613          	andi	a2,a5,15
    80005a26:	4511                	li	a0,4
    80005a28:	00a60f63          	beq	a2,a0,80005a46 <__divtf3+0x570>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 43)
    80005a2c:	ffc7b693          	sltiu	a3,a5,-4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 54)
    80005a30:	0016c693          	xori	a3,a3,1
    80005a34:	1682                	slli	a3,a3,0x20
    80005a36:	9281                	srli	a3,a3,0x20
    80005a38:	96a2                	add	a3,a3,s0
    80005a3a:	a031                	j	80005a46 <__divtf3+0x570>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005a3c:	e589                	bnez	a1,80005a46 <__divtf3+0x570>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 54)
    80005a3e:	ff87b693          	sltiu	a3,a5,-8
    80005a42:	b7fd                	j	80005a30 <__divtf3+0x55a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005a44:	fded                	bnez	a1,80005a3e <__divtf3+0x568>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 42)
    80005a46:	92d1                	srli	a3,a3,0x34
    80005a48:	0016c693          	xori	a3,a3,1
    80005a4c:	0016f813          	andi	a6,a3,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 59)
    80005a50:	4685                	li	a3,1
    80005a52:	40e68733          	sub	a4,a3,a4
    80005a56:	07400693          	li	a3,116
    80005a5a:	0ce6c463          	blt	a3,a4,80005b22 <__divtf3+0x64c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 60)
    80005a5e:	03f00613          	li	a2,63
    80005a62:	0007069b          	sext.w	a3,a4
    80005a66:	04e64a63          	blt	a2,a4,80005aba <__divtf3+0x5e4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 62)
    80005a6a:	04000713          	li	a4,64
    80005a6e:	9f15                	subw	a4,a4,a3
    80005a70:	00e41533          	sll	a0,s0,a4
    80005a74:	00d7d633          	srl	a2,a5,a3
    80005a78:	00e797b3          	sll	a5,a5,a4
    80005a7c:	8d51                	or	a0,a0,a2
    80005a7e:	00f037b3          	snez	a5,a5
    80005a82:	8d5d                	or	a0,a0,a5
    80005a84:	00d45433          	srl	s0,s0,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 75)
    80005a88:	00757793          	andi	a5,a0,7
    80005a8c:	c3a5                	beqz	a5,80005aec <__divtf3+0x616>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 76)
    80005a8e:	4789                	li	a5,2
    80005a90:	00196913          	ori	s2,s2,1
    80005a94:	04f98b63          	beq	s3,a5,80005aea <__divtf3+0x614>
    80005a98:	478d                	li	a5,3
    80005a9a:	04f98463          	beq	s3,a5,80005ae2 <__divtf3+0x60c>
    80005a9e:	04099763          	bnez	s3,80005aec <__divtf3+0x616>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005aa2:	00f57793          	andi	a5,a0,15
    80005aa6:	4711                	li	a4,4
    80005aa8:	04e78263          	beq	a5,a4,80005aec <__divtf3+0x616>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 78)
    80005aac:	00450793          	addi	a5,a0,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 89)
    80005ab0:	00a7b533          	sltu	a0,a5,a0
    80005ab4:	942a                	add	s0,s0,a0
    80005ab6:	853e                	mv	a0,a5
    80005ab8:	a815                	j	80005aec <__divtf3+0x616>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 63)
    80005aba:	fc06851b          	addiw	a0,a3,-64
    80005abe:	04000893          	li	a7,64
    80005ac2:	00a45533          	srl	a0,s0,a0
    80005ac6:	4601                	li	a2,0
    80005ac8:	01170763          	beq	a4,a7,80005ad6 <__divtf3+0x600>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 71)
    80005acc:	08000613          	li	a2,128
    80005ad0:	9e15                	subw	a2,a2,a3
    80005ad2:	00c41633          	sll	a2,s0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 74)
    80005ad6:	8fd1                	or	a5,a5,a2
    80005ad8:	00f037b3          	snez	a5,a5
    80005adc:	8d5d                	or	a0,a0,a5
    80005ade:	4401                	li	s0,0
    80005ae0:	b765                	j	80005a88 <__divtf3+0x5b2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005ae2:	e589                	bnez	a1,80005aec <__divtf3+0x616>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 89)
    80005ae4:	00850793          	addi	a5,a0,8
    80005ae8:	b7e1                	j	80005ab0 <__divtf3+0x5da>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005aea:	fded                	bnez	a1,80005ae4 <__divtf3+0x60e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 77)
    80005aec:	03345793          	srli	a5,s0,0x33
    80005af0:	8b85                	andi	a5,a5,1
    80005af2:	cb99                	beqz	a5,80005b08 <__divtf3+0x632>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 92)
    80005af4:	00196913          	ori	s2,s2,1
    80005af8:	4401                	li	s0,0
    80005afa:	4501                	li	a0,0
    80005afc:	4705                	li	a4,1
    80005afe:	ea0800e3          	beqz	a6,8000599e <__divtf3+0x4c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 97)
    80005b02:	00296913          	ori	s2,s2,2
    80005b06:	bd61                	j	8000599e <__divtf3+0x4c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 93)
    80005b08:	03d41793          	slli	a5,s0,0x3d
    80005b0c:	810d                	srli	a0,a0,0x3
    80005b0e:	8d5d                	or	a0,a0,a5
    80005b10:	800d                	srli	s0,s0,0x3
    80005b12:	4701                	li	a4,0
    80005b14:	e80805e3          	beqz	a6,8000599e <__divtf3+0x4c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 96)
    80005b18:	00197793          	andi	a5,s2,1
    80005b1c:	e80781e3          	beqz	a5,8000599e <__divtf3+0x4c8>
    80005b20:	b7cd                	j	80005b02 <__divtf3+0x62c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 61)
    80005b22:	0087e533          	or	a0,a5,s0
    80005b26:	cd19                	beqz	a0,80005b44 <__divtf3+0x66e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 100)
    80005b28:	4789                	li	a5,2
    80005b2a:	00196913          	ori	s2,s2,1
    80005b2e:	02f98463          	beq	s3,a5,80005b56 <__divtf3+0x680>
    80005b32:	478d                	li	a5,3
    80005b34:	00f98d63          	beq	s3,a5,80005b4e <__divtf3+0x678>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005b38:	4785                	li	a5,1
    80005b3a:	00099363          	bnez	s3,80005b40 <__divtf3+0x66a>
    80005b3e:	4795                	li	a5,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 101)
    80005b40:	0037d513          	srli	a0,a5,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47 (discriminator 116)
    80005b44:	00296913          	ori	s2,s2,2
    80005b48:	4401                	li	s0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005b4a:	4701                	li	a4,0
    80005b4c:	bd89                	j	8000599e <__divtf3+0x4c8>
    80005b4e:	47a5                	li	a5,9
    80005b50:	d9e5                	beqz	a1,80005b40 <__divtf3+0x66a>
    80005b52:	4785                	li	a5,1
    80005b54:	b7f5                	j	80005b40 <__divtf3+0x66a>
    80005b56:	47a5                	li	a5,9
    80005b58:	f5e5                	bnez	a1,80005b40 <__divtf3+0x66a>
    80005b5a:	bfe5                	j	80005b52 <__divtf3+0x67c>
    80005b5c:	4405                	li	s0,1
    80005b5e:	6721                	lui	a4,0x8
    80005b60:	143e                	slli	s0,s0,0x2f
    80005b62:	4501                	li	a0,0
    80005b64:	177d                	addi	a4,a4,-1
    80005b66:	4581                	li	a1,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46
    80005b68:	4941                	li	s2,16
    80005b6a:	bd15                	j	8000599e <__divtf3+0x4c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:47
    80005b6c:	4401                	li	s0,0
    80005b6e:	4501                	li	a0,0
    80005b70:	bfe9                	j	80005b4a <__divtf3+0x674>
    80005b72:	4405                	li	s0,1
    80005b74:	6721                	lui	a4,0x8
    80005b76:	143e                	slli	s0,s0,0x2f
    80005b78:	4501                	li	a0,0
    80005b7a:	177d                	addi	a4,a4,-1
    80005b7c:	4581                	li	a1,0
    80005b7e:	b505                	j	8000599e <__divtf3+0x4c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/divtf3.c:46
    80005b80:	853e                	mv	a0,a5
    80005b82:	87aa                	mv	a5,a0
    80005b84:	b361                	j	8000590c <__divtf3+0x436>

0000000080005b86 <__eqtf2>:
__eqtf2():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:36
    80005b86:	882a                	mv	a6,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:42
    80005b88:	002027f3          	frrm	a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:43
    80005b8c:	6521                	lui	a0,0x8
    80005b8e:	0305d893          	srli	a7,a1,0x30
    80005b92:	157d                	addi	a0,a0,-1
    80005b94:	57fd                	li	a5,-1
    80005b96:	83c1                	srli	a5,a5,0x10
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:44
    80005b98:	0306d313          	srli	t1,a3,0x30
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:43
    80005b9c:	00a8f8b3          	and	a7,a7,a0
    80005ba0:	00f5f733          	and	a4,a1,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:44
    80005ba4:	00a37333          	and	t1,t1,a0
    80005ba8:	8ff5                	and	a5,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:43
    80005baa:	91fd                	srli	a1,a1,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:44
    80005bac:	92fd                	srli	a3,a3,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45
    80005bae:	00a89863          	bne	a7,a0,80005bbe <__eqtf2+0x38>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 20)
    80005bb2:	01076533          	or	a0,a4,a6
    80005bb6:	e105                	bnez	a0,80005bd6 <__eqtf2+0x50>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45
    80005bb8:	03131a63          	bne	t1,a7,80005bec <__eqtf2+0x66>
    80005bbc:	a019                	j	80005bc2 <__eqtf2+0x3c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 23)
    80005bbe:	02a31963          	bne	t1,a0,80005bf0 <__eqtf2+0x6a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 24)
    80005bc2:	00c7e533          	or	a0,a5,a2
    80005bc6:	c50d                	beqz	a0,80005bf0 <__eqtf2+0x6a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 26)
    80005bc8:	66a1                	lui	a3,0x8
    80005bca:	16fd                	addi	a3,a3,-1
    80005bcc:	00d89e63          	bne	a7,a3,80005be8 <__eqtf2+0x62>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 52)
    80005bd0:	01076533          	or	a0,a4,a6
    80005bd4:	c911                	beqz	a0,80005be8 <__eqtf2+0x62>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 54)
    80005bd6:	933d                	srli	a4,a4,0x2f
    80005bd8:	cf15                	beqz	a4,80005c14 <__eqtf2+0x8e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 60)
    80005bda:	6721                	lui	a4,0x8
    80005bdc:	177d                	addi	a4,a4,-1
    80005bde:	4505                	li	a0,1
    80005be0:	00e31763          	bne	t1,a4,80005bee <__eqtf2+0x68>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 61)
    80005be4:	8e5d                	or	a2,a2,a5
    80005be6:	c601                	beqz	a2,80005bee <__eqtf2+0x68>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 63)
    80005be8:	93bd                	srli	a5,a5,0x2f
    80005bea:	c78d                	beqz	a5,80005c14 <__eqtf2+0x8e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45
    80005bec:	4505                	li	a0,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:49
    80005bee:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 78)
    80005bf0:	4505                	li	a0,1
    80005bf2:	fe689ee3          	bne	a7,t1,80005bee <__eqtf2+0x68>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 80)
    80005bf6:	fef71ce3          	bne	a4,a5,80005bee <__eqtf2+0x68>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 82)
    80005bfa:	fec81ae3          	bne	a6,a2,80005bee <__eqtf2+0x68>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 84)
    80005bfe:	00d58963          	beq	a1,a3,80005c10 <__eqtf2+0x8a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 85)
    80005c02:	fe0896e3          	bnez	a7,80005bee <__eqtf2+0x68>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45 (discriminator 88)
    80005c06:	01076533          	or	a0,a4,a6
    80005c0a:	00a03533          	snez	a0,a0
    80005c0e:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:45
    80005c10:	4501                	li	a0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:46
    80005c12:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/eqtf2.c:46 (discriminator 1)
    80005c14:	00186073          	csrsi	fflags,16
    80005c18:	bfd1                	j	80005bec <__eqtf2+0x66>

0000000080005c1a <__getf2>:
__getf2():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:36
    80005c1a:	88aa                	mv	a7,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:42
    80005c1c:	002027f3          	frrm	a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:43
    80005c20:	6321                	lui	t1,0x8
    80005c22:	137d                	addi	t1,t1,-1
    80005c24:	57fd                	li	a5,-1
    80005c26:	0305d813          	srli	a6,a1,0x30
    80005c2a:	83c1                	srli	a5,a5,0x10
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:44
    80005c2c:	0306d713          	srli	a4,a3,0x30
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:43
    80005c30:	00687833          	and	a6,a6,t1
    80005c34:	00f5fe33          	and	t3,a1,a5
    80005c38:	03f5d513          	srli	a0,a1,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:44
    80005c3c:	8ff5                	and	a5,a5,a3
    80005c3e:	00677733          	and	a4,a4,t1
    80005c42:	92fd                	srli	a3,a3,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45
    80005c44:	00681963          	bne	a6,t1,80005c56 <__getf2+0x3c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 20)
    80005c48:	011e65b3          	or	a1,t3,a7
    80005c4c:	c5ad                	beqz	a1,80005cb6 <__getf2+0x9c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:46 (discriminator 1)
    80005c4e:	00186073          	csrsi	fflags,16
    80005c52:	5579                	li	a0,-2
    80005c54:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 23)
    80005c56:	00671563          	bne	a4,t1,80005c60 <__getf2+0x46>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 24)
    80005c5a:	00c7e5b3          	or	a1,a5,a2
    80005c5e:	f9e5                	bnez	a1,80005c4e <__getf2+0x34>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 62)
    80005c60:	04081d63          	bnez	a6,80005cba <__getf2+0xa0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 63)
    80005c64:	011e65b3          	or	a1,t3,a7
    80005c68:	0015b593          	seqz	a1,a1
    80005c6c:	eb0d                	bnez	a4,80005c9e <__getf2+0x84>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 69)
    80005c6e:	00c7e333          	or	t1,a5,a2
    80005c72:	02031663          	bnez	t1,80005c9e <__getf2+0x84>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 74)
    80005c76:	e185                	bnez	a1,80005c96 <__getf2+0x7c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 119)
    80005c78:	c10d                	beqz	a0,80005c9a <__getf2+0x80>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45
    80005c7a:	557d                	li	a0,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:48
    80005c7c:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 80)
    80005c7e:	557d                	li	a0,-1
    80005c80:	c69d                	beqz	a3,80005cae <__getf2+0x94>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45
    80005c82:	8536                	mv	a0,a3
    80005c84:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 109)
    80005c86:	ffc7e9e3          	bltu	a5,t3,80005c78 <__getf2+0x5e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 116)
    80005c8a:	02fe1363          	bne	t3,a5,80005cb0 <__getf2+0x96>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 117)
    80005c8e:	ff1665e3          	bltu	a2,a7,80005c78 <__getf2+0x5e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 128)
    80005c92:	00c8ed63          	bltu	a7,a2,80005cac <__getf2+0x92>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45
    80005c96:	4501                	li	a0,0
    80005c98:	8082                	ret
    80005c9a:	4505                	li	a0,1
    80005c9c:	8082                	ret
    80005c9e:	f1e5                	bnez	a1,80005c7e <__getf2+0x64>
    80005ca0:	fcd51ce3          	bne	a0,a3,80005c78 <__getf2+0x5e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 95)
    80005ca4:	fd074ae3          	blt	a4,a6,80005c78 <__getf2+0x5e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 102)
    80005ca8:	fce85fe3          	bge	a6,a4,80005c86 <__getf2+0x6c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45 (discriminator 130)
    80005cac:	d579                	beqz	a0,80005c7a <__getf2+0x60>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:49
    80005cae:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/getf2.c:45
    80005cb0:	fefe6ee3          	bltu	t3,a5,80005cac <__getf2+0x92>
    80005cb4:	b7cd                	j	80005c96 <__getf2+0x7c>
    80005cb6:	fb0702e3          	beq	a4,a6,80005c5a <__getf2+0x40>
    80005cba:	f37d                	bnez	a4,80005ca0 <__getf2+0x86>
    80005cbc:	4581                	li	a1,0
    80005cbe:	bf45                	j	80005c6e <__getf2+0x54>

0000000080005cc0 <__multf3>:
__multf3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:36
    80005cc0:	711d                	addi	sp,sp,-96
    80005cc2:	f05a                	sd	s6,32(sp)
    80005cc4:	e466                	sd	s9,8(sp)
    80005cc6:	ec86                	sd	ra,88(sp)
    80005cc8:	e8a2                	sd	s0,80(sp)
    80005cca:	e4a6                	sd	s1,72(sp)
    80005ccc:	e0ca                	sd	s2,64(sp)
    80005cce:	fc4e                	sd	s3,56(sp)
    80005cd0:	f852                	sd	s4,48(sp)
    80005cd2:	f456                	sd	s5,40(sp)
    80005cd4:	ec5e                	sd	s7,24(sp)
    80005cd6:	e862                	sd	s8,16(sp)
    80005cd8:	8cb2                	mv	s9,a2
    80005cda:	8b36                	mv	s6,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:43
    80005cdc:	00202973          	frrm	s2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44
    80005ce0:	6721                	lui	a4,0x8
    80005ce2:	0305da93          	srli	s5,a1,0x30
    80005ce6:	177d                	addi	a4,a4,-1
    80005ce8:	01059993          	slli	s3,a1,0x10
    80005cec:	00eaf7b3          	and	a5,s5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:43
    80005cf0:	2901                	sext.w	s2,s2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44
    80005cf2:	0109d993          	srli	s3,s3,0x10
    80005cf6:	03f5db93          	srli	s7,a1,0x3f
    80005cfa:	c79d                	beqz	a5,80005d28 <__multf3+0x68>
    80005cfc:	8a2a                	mv	s4,a0
    80005cfe:	00078a9b          	sext.w	s5,a5
    80005d02:	08e78463          	beq	a5,a4,80005d8a <__multf3+0xca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 1)
    80005d06:	098e                	slli	s3,s3,0x3
    80005d08:	03d55713          	srli	a4,a0,0x3d
    80005d0c:	01376733          	or	a4,a4,s3
    80005d10:	7af1                	lui	s5,0xffffc
    80005d12:	4985                	li	s3,1
    80005d14:	19ce                	slli	s3,s3,0x33
    80005d16:	0a85                	addi	s5,s5,1
    80005d18:	013769b3          	or	s3,a4,s3
    80005d1c:	00351a13          	slli	s4,a0,0x3
    80005d20:	9abe                	add	s5,s5,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 41)
    80005d22:	4c01                	li	s8,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:37
    80005d24:	4481                	li	s1,0
    80005d26:	a89d                	j	80005d9c <__multf3+0xdc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 2)
    80005d28:	00a9e7b3          	or	a5,s3,a0
    80005d2c:	842a                	mv	s0,a0
    80005d2e:	cbf1                	beqz	a5,80005e02 <__multf3+0x142>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 13)
    80005d30:	04098263          	beqz	s3,80005d74 <__multf3+0xb4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 20)
    80005d34:	854e                	mv	a0,s3
    80005d36:	960fe0ef          	jal	ra,80003e96 <__clzdi2>
    80005d3a:	0005079b          	sext.w	a5,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 31)
    80005d3e:	ff178693          	addi	a3,a5,-15
    80005d42:	03c00613          	li	a2,60
    80005d46:	0006871b          	sext.w	a4,a3
    80005d4a:	02d64a63          	blt	a2,a3,80005d7e <__multf3+0xbe>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 32)
    80005d4e:	03d00693          	li	a3,61
    80005d52:	00370a1b          	addiw	s4,a4,3
    80005d56:	40e6873b          	subw	a4,a3,a4
    80005d5a:	014999b3          	sll	s3,s3,s4
    80005d5e:	00e45733          	srl	a4,s0,a4
    80005d62:	013769b3          	or	s3,a4,s3
    80005d66:	01441a33          	sll	s4,s0,s4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 41)
    80005d6a:	7af1                	lui	s5,0xffffc
    80005d6c:	0ac5                	addi	s5,s5,17
    80005d6e:	40fa8ab3          	sub	s5,s5,a5
    80005d72:	bf45                	j	80005d22 <__multf3+0x62>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 27)
    80005d74:	922fe0ef          	jal	ra,80003e96 <__clzdi2>
    80005d78:	0405079b          	addiw	a5,a0,64
    80005d7c:	b7c9                	j	80005d3e <__multf3+0x7e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 33)
    80005d7e:	fc37071b          	addiw	a4,a4,-61
    80005d82:	00e419b3          	sll	s3,s0,a4
    80005d86:	4a01                	li	s4,0
    80005d88:	b7cd                	j	80005d6a <__multf3+0xaa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 3)
    80005d8a:	00a9e7b3          	or	a5,s3,a0
    80005d8e:	cfbd                	beqz	a5,80005e0c <__multf3+0x14c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 44)
    80005d90:	02f9d793          	srli	a5,s3,0x2f
    80005d94:	8b85                	andi	a5,a5,1
    80005d96:	4c0d                	li	s8,3
    80005d98:	44c1                	li	s1,16
    80005d9a:	f7c9                	bnez	a5,80005d24 <__multf3+0x64>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 8)
    80005d9c:	66a1                	lui	a3,0x8
    80005d9e:	030b5513          	srli	a0,s6,0x30
    80005da2:	16fd                	addi	a3,a3,-1
    80005da4:	010b1413          	slli	s0,s6,0x10
    80005da8:	00d57733          	and	a4,a0,a3
    80005dac:	87e6                	mv	a5,s9
    80005dae:	8041                	srli	s0,s0,0x10
    80005db0:	03fb5b13          	srli	s6,s6,0x3f
    80005db4:	c325                	beqz	a4,80005e14 <__multf3+0x154>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45
    80005db6:	0007051b          	sext.w	a0,a4
    80005dba:	0ad70b63          	beq	a4,a3,80005e70 <__multf3+0x1b0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 1)
    80005dbe:	040e                	slli	s0,s0,0x3
    80005dc0:	03dcd693          	srli	a3,s9,0x3d
    80005dc4:	8ec1                	or	a3,a3,s0
    80005dc6:	7571                	lui	a0,0xffffc
    80005dc8:	4405                	li	s0,1
    80005dca:	144e                	slli	s0,s0,0x33
    80005dcc:	0505                	addi	a0,a0,1
    80005dce:	8c55                	or	s0,s0,a3
    80005dd0:	003c9793          	slli	a5,s9,0x3
    80005dd4:	953a                	add	a0,a0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 41)
    80005dd6:	4701                	li	a4,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 8)
    80005dd8:	002c1693          	slli	a3,s8,0x2
    80005ddc:	8ed9                	or	a3,a3,a4
    80005dde:	9aaa                	add	s5,s5,a0
    80005de0:	16fd                	addi	a3,a3,-1
    80005de2:	45b9                	li	a1,14
    80005de4:	016bc633          	xor	a2,s7,s6
    80005de8:	001a8813          	addi	a6,s5,1 # ffffffffffffc001 <_ebss+0xffffffff7fefae9b>
    80005dec:	0ed5e763          	bltu	a1,a3,80005eda <__multf3+0x21a>
    80005df0:	0005f597          	auipc	a1,0x5f
    80005df4:	01c58593          	addi	a1,a1,28 # 80064e0c <PIo2+0x7c>
    80005df8:	068a                	slli	a3,a3,0x2
    80005dfa:	96ae                	add	a3,a3,a1
    80005dfc:	4294                	lw	a3,0(a3)
    80005dfe:	96ae                	add	a3,a3,a1
    80005e00:	8682                	jr	a3
    80005e02:	4981                	li	s3,0
    80005e04:	4a01                	li	s4,0
    80005e06:	4a81                	li	s5,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44
    80005e08:	4c05                	li	s8,1
    80005e0a:	bf29                	j	80005d24 <__multf3+0x64>
    80005e0c:	4981                	li	s3,0
    80005e0e:	4a01                	li	s4,0
    80005e10:	4c09                	li	s8,2
    80005e12:	bf09                	j	80005d24 <__multf3+0x64>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 2)
    80005e14:	008ce7b3          	or	a5,s9,s0
    80005e18:	c7b5                	beqz	a5,80005e84 <__multf3+0x1c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 13)
    80005e1a:	cc1d                	beqz	s0,80005e58 <__multf3+0x198>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 20)
    80005e1c:	8522                	mv	a0,s0
    80005e1e:	878fe0ef          	jal	ra,80003e96 <__clzdi2>
    80005e22:	0005071b          	sext.w	a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 31)
    80005e26:	ff170793          	addi	a5,a4,-15 # 7ff1 <asinh-0x7fff800f>
    80005e2a:	03c00613          	li	a2,60
    80005e2e:	0007869b          	sext.w	a3,a5
    80005e32:	02f64963          	blt	a2,a5,80005e64 <__multf3+0x1a4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 32)
    80005e36:	03d00613          	li	a2,61
    80005e3a:	0036879b          	addiw	a5,a3,3
    80005e3e:	40d606bb          	subw	a3,a2,a3
    80005e42:	00f41433          	sll	s0,s0,a5
    80005e46:	00dcd6b3          	srl	a3,s9,a3
    80005e4a:	8c55                	or	s0,s0,a3
    80005e4c:	00fc97b3          	sll	a5,s9,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 41)
    80005e50:	7571                	lui	a0,0xffffc
    80005e52:	0545                	addi	a0,a0,17
    80005e54:	8d19                	sub	a0,a0,a4
    80005e56:	b741                	j	80005dd6 <__multf3+0x116>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 27)
    80005e58:	8566                	mv	a0,s9
    80005e5a:	83cfe0ef          	jal	ra,80003e96 <__clzdi2>
    80005e5e:	0405071b          	addiw	a4,a0,64
    80005e62:	b7d1                	j	80005e26 <__multf3+0x166>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 33)
    80005e64:	fc36869b          	addiw	a3,a3,-61
    80005e68:	00dc9433          	sll	s0,s9,a3
    80005e6c:	4781                	li	a5,0
    80005e6e:	b7cd                	j	80005e50 <__multf3+0x190>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 3)
    80005e70:	008ce733          	or	a4,s9,s0
    80005e74:	cf09                	beqz	a4,80005e8e <__multf3+0x1ce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 44)
    80005e76:	02f45713          	srli	a4,s0,0x2f
    80005e7a:	8b05                	andi	a4,a4,1
    80005e7c:	ef09                	bnez	a4,80005e96 <__multf3+0x1d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45
    80005e7e:	470d                	li	a4,3
    80005e80:	44c1                	li	s1,16
    80005e82:	bf99                	j	80005dd8 <__multf3+0x118>
    80005e84:	4401                	li	s0,0
    80005e86:	4781                	li	a5,0
    80005e88:	4501                	li	a0,0
    80005e8a:	4705                	li	a4,1
    80005e8c:	b7b1                	j	80005dd8 <__multf3+0x118>
    80005e8e:	4401                	li	s0,0
    80005e90:	4781                	li	a5,0
    80005e92:	4709                	li	a4,2
    80005e94:	b791                	j	80005dd8 <__multf3+0x118>
    80005e96:	470d                	li	a4,3
    80005e98:	b781                	j	80005dd8 <__multf3+0x118>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46
    80005e9a:	4405                	li	s0,1
    80005e9c:	6721                	lui	a4,0x8
    80005e9e:	143e                	slli	s0,s0,0x2f
    80005ea0:	4501                	li	a0,0
    80005ea2:	177d                	addi	a4,a4,-1
    80005ea4:	4601                	li	a2,0
    80005ea6:	44c1                	li	s1,16
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 119)
    80005ea8:	1746                	slli	a4,a4,0x31
    80005eaa:	9345                	srli	a4,a4,0x31
    80005eac:	063e                	slli	a2,a2,0xf
    80005eae:	0442                	slli	s0,s0,0x10
    80005eb0:	8f51                	or	a4,a4,a2
    80005eb2:	1742                	slli	a4,a4,0x30
    80005eb4:	01045593          	srli	a1,s0,0x10
    80005eb8:	8dd9                	or	a1,a1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:48 (discriminator 119)
    80005eba:	c099                	beqz	s1,80005ec0 <__multf3+0x200>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:48 (discriminator 1)
    80005ebc:	0014a073          	csrs	fflags,s1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:51
    80005ec0:	60e6                	ld	ra,88(sp)
    80005ec2:	6446                	ld	s0,80(sp)
    80005ec4:	64a6                	ld	s1,72(sp)
    80005ec6:	6906                	ld	s2,64(sp)
    80005ec8:	79e2                	ld	s3,56(sp)
    80005eca:	7a42                	ld	s4,48(sp)
    80005ecc:	7aa2                	ld	s5,40(sp)
    80005ece:	7b02                	ld	s6,32(sp)
    80005ed0:	6be2                	ld	s7,24(sp)
    80005ed2:	6c42                	ld	s8,16(sp)
    80005ed4:	6ca2                	ld	s9,8(sp)
    80005ed6:	6125                	addi	sp,sp,96
    80005ed8:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 2)
    80005eda:	557d                	li	a0,-1
    80005edc:	9101                	srli	a0,a0,0x20
    80005ede:	014983b3          	add	t2,s3,s4
    80005ee2:	00878f33          	add	t5,a5,s0
    80005ee6:	020a5e93          	srli	t4,s4,0x20
    80005eea:	0207d693          	srli	a3,a5,0x20
    80005eee:	0143bfb3          	sltu	t6,t2,s4
    80005ef2:	00ff32b3          	sltu	t0,t5,a5
    80005ef6:	00aa7a33          	and	s4,s4,a0
    80005efa:	8fe9                	and	a5,a5,a0
    80005efc:	03478533          	mul	a0,a5,s4
    80005f00:	8e7e                	mv	t3,t6
    80005f02:	8316                	mv	t1,t0
    80005f04:	02fe87b3          	mul	a5,t4,a5
    80005f08:	02de8733          	mul	a4,t4,a3
    80005f0c:	034686b3          	mul	a3,a3,s4
    80005f10:	02055a13          	srli	s4,a0,0x20
    80005f14:	96be                	add	a3,a3,a5
    80005f16:	9a36                	add	s4,s4,a3
    80005f18:	00fa7563          	bgeu	s4,a5,80005f22 <__multf3+0x262>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 9)
    80005f1c:	4785                	li	a5,1
    80005f1e:	1782                	slli	a5,a5,0x20
    80005f20:	973e                	add	a4,a4,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 11)
    80005f22:	56fd                	li	a3,-1
    80005f24:	9281                	srli	a3,a3,0x20
    80005f26:	00da75b3          	and	a1,s4,a3
    80005f2a:	8d75                	and	a0,a0,a3
    80005f2c:	1582                	slli	a1,a1,0x20
    80005f2e:	0203d893          	srli	a7,t2,0x20
    80005f32:	020f5793          	srli	a5,t5,0x20
    80005f36:	020a5e93          	srli	t4,s4,0x20
    80005f3a:	95aa                	add	a1,a1,a0
    80005f3c:	00d3f533          	and	a0,t2,a3
    80005f40:	00df76b3          	and	a3,t5,a3
    80005f44:	02f88b33          	mul	s6,a7,a5
    80005f48:	9eba                	add	t4,t4,a4
    80005f4a:	02a787b3          	mul	a5,a5,a0
    80005f4e:	02a68733          	mul	a4,a3,a0
    80005f52:	02d886b3          	mul	a3,a7,a3
    80005f56:	00d78533          	add	a0,a5,a3
    80005f5a:	02075793          	srli	a5,a4,0x20
    80005f5e:	97aa                	add	a5,a5,a0
    80005f60:	00d7f563          	bgeu	a5,a3,80005f6a <__multf3+0x2aa>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 12)
    80005f64:	4685                	li	a3,1
    80005f66:	1682                	slli	a3,a3,0x20
    80005f68:	9b36                	add	s6,s6,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 14)
    80005f6a:	58fd                	li	a7,-1
    80005f6c:	0208d893          	srli	a7,a7,0x20
    80005f70:	0117f6b3          	and	a3,a5,a7
    80005f74:	02045b93          	srli	s7,s0,0x20
    80005f78:	01177533          	and	a0,a4,a7
    80005f7c:	0207da13          	srli	s4,a5,0x20
    80005f80:	0209d793          	srli	a5,s3,0x20
    80005f84:	0119f9b3          	and	s3,s3,a7
    80005f88:	011478b3          	and	a7,s0,a7
    80005f8c:	03198433          	mul	s0,s3,a7
    80005f90:	1682                	slli	a3,a3,0x20
    80005f92:	9536                	add	a0,a0,a3
    80005f94:	031788b3          	mul	a7,a5,a7
    80005f98:	037787b3          	mul	a5,a5,s7
    80005f9c:	033b8bb3          	mul	s7,s7,s3
    80005fa0:	02045993          	srli	s3,s0,0x20
    80005fa4:	9bc6                	add	s7,s7,a7
    80005fa6:	99de                	add	s3,s3,s7
    80005fa8:	0119f563          	bgeu	s3,a7,80005fb2 <__multf3+0x2f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 15)
    80005fac:	4705                	li	a4,1
    80005fae:	1702                	slli	a4,a4,0x20
    80005fb0:	97ba                	add	a5,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 17)
    80005fb2:	0209d693          	srli	a3,s3,0x20
    80005fb6:	97b6                	add	a5,a5,a3
    80005fb8:	56fd                	li	a3,-1
    80005fba:	9281                	srli	a3,a3,0x20
    80005fbc:	00d9f733          	and	a4,s3,a3
    80005fc0:	8c75                	and	s0,s0,a3
    80005fc2:	01d506b3          	add	a3,a0,t4
    80005fc6:	01d6b533          	sltu	a0,a3,t4
    80005fca:	00aa08b3          	add	a7,s4,a0
    80005fce:	40600333          	neg	t1,t1
    80005fd2:	98da                	add	a7,a7,s6
    80005fd4:	007373b3          	and	t2,t1,t2
    80005fd8:	41c00e33          	neg	t3,t3
    80005fdc:	93c6                	add	t2,t2,a7
    80005fde:	01ee7f33          	and	t5,t3,t5
    80005fe2:	00a8b533          	sltu	a0,a7,a0
    80005fe6:	005fffb3          	and	t6,t6,t0
    80005fea:	9f1e                	add	t5,t5,t2
    80005fec:	0113b8b3          	sltu	a7,t2,a7
    80005ff0:	957e                	add	a0,a0,t6
    80005ff2:	40b68333          	sub	t1,a3,a1
    80005ff6:	9546                	add	a0,a0,a7
    80005ff8:	0066be33          	sltu	t3,a3,t1
    80005ffc:	41df08b3          	sub	a7,t5,t4
