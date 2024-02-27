    80006000:	1702                	slli	a4,a4,0x20
    80006002:	007f33b3          	sltu	t2,t5,t2
    80006006:	011f3fb3          	sltu	t6,t5,a7
    8000600a:	9722                	add	a4,a4,s0
    8000600c:	41c888b3          	sub	a7,a7,t3
    80006010:	951e                	add	a0,a0,t2
    80006012:	4e01                	li	t3,0
    80006014:	0066f663          	bgeu	a3,t1,80006020 <__multf3+0x360>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 18)
    80006018:	41ee8f33          	sub	t5,t4,t5
    8000601c:	001f3e13          	seqz	t3,t5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 23)
    80006020:	01fe6f33          	or	t5,t3,t6
    80006024:	40e30e33          	sub	t3,t1,a4
    80006028:	40f886b3          	sub	a3,a7,a5
    8000602c:	953e                	add	a0,a0,a5
    8000602e:	01c337b3          	sltu	a5,t1,t3
    80006032:	00d8b8b3          	sltu	a7,a7,a3
    80006036:	40f707b3          	sub	a5,a4,a5
    8000603a:	4e81                	li	t4,0
    8000603c:	01c37463          	bgeu	t1,t3,80006044 <__multf3+0x384>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 24)
    80006040:	0016be93          	seqz	t4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 29)
    80006044:	96be                	add	a3,a3,a5
    80006046:	00e6b733          	sltu	a4,a3,a4
    8000604a:	972a                	add	a4,a4,a0
    8000604c:	41e70733          	sub	a4,a4,t5
    80006050:	011ee8b3          	or	a7,t4,a7
    80006054:	41170733          	sub	a4,a4,a7
    80006058:	00de1793          	slli	a5,t3,0xd
    8000605c:	0736                	slli	a4,a4,0xd
    8000605e:	0336d413          	srli	s0,a3,0x33
    80006062:	8fcd                	or	a5,a5,a1
    80006064:	8c59                	or	s0,s0,a4
    80006066:	00f037b3          	snez	a5,a5
    8000606a:	033e5513          	srli	a0,t3,0x33
    8000606e:	9351                	srli	a4,a4,0x34
    80006070:	8fc9                	or	a5,a5,a0
    80006072:	06b6                	slli	a3,a3,0xd
    80006074:	8b05                	andi	a4,a4,1
    80006076:	8fd5                	or	a5,a5,a3
    80006078:	cb2d                	beqz	a4,800060ea <__multf3+0x42a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 47)
    8000607a:	0017d713          	srli	a4,a5,0x1
    8000607e:	8b85                	andi	a5,a5,1
    80006080:	03f41513          	slli	a0,s0,0x3f
    80006084:	8fd9                	or	a5,a5,a4
    80006086:	8fc9                	or	a5,a5,a0
    80006088:	8005                	srli	s0,s0,0x1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 2)
    8000608a:	6711                	lui	a4,0x4
    8000608c:	177d                	addi	a4,a4,-1
    8000608e:	9742                	add	a4,a4,a6
    80006090:	0ce05163          	blez	a4,80006152 <__multf3+0x492>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 6)
    80006094:	0077f693          	andi	a3,a5,7
    80006098:	c2a5                	beqz	a3,800060f8 <__multf3+0x438>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 8)
    8000609a:	4689                	li	a3,2
    8000609c:	0014e493          	ori	s1,s1,1
    800060a0:	04d90b63          	beq	s2,a3,800060f6 <__multf3+0x436>
    800060a4:	468d                	li	a3,3
    800060a6:	04d90463          	beq	s2,a3,800060ee <__multf3+0x42e>
    800060aa:	04091763          	bnez	s2,800060f8 <__multf3+0x438>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    800060ae:	00f7f693          	andi	a3,a5,15
    800060b2:	4591                	li	a1,4
    800060b4:	04b68263          	beq	a3,a1,800060f8 <__multf3+0x438>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 10)
    800060b8:	00478693          	addi	a3,a5,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 21)
    800060bc:	00f6b7b3          	sltu	a5,a3,a5
    800060c0:	943e                	add	s0,s0,a5
    800060c2:	87b6                	mv	a5,a3
    800060c4:	a815                	j	800060f8 <__multf3+0x438>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:44 (discriminator 7)
    800060c6:	865e                	mv	a2,s7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 7)
    800060c8:	844e                	mv	s0,s3
    800060ca:	87d2                	mv	a5,s4
    800060cc:	8762                	mv	a4,s8
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 56)
    800060ce:	4689                	li	a3,2
    800060d0:	1cd70f63          	beq	a4,a3,800062ae <__multf3+0x5ee>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    800060d4:	468d                	li	a3,3
    800060d6:	1ed70163          	beq	a4,a3,800062b8 <__multf3+0x5f8>
    800060da:	4685                	li	a3,1
    800060dc:	fad717e3          	bne	a4,a3,8000608a <__multf3+0x3ca>
    800060e0:	4401                	li	s0,0
    800060e2:	4501                	li	a0,0
    800060e4:	aa65                	j	8000629c <__multf3+0x5dc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:45 (discriminator 4)
    800060e6:	865a                	mv	a2,s6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46 (discriminator 4)
    800060e8:	b7dd                	j	800060ce <__multf3+0x40e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:46
    800060ea:	8856                	mv	a6,s5
    800060ec:	bf79                	j	8000608a <__multf3+0x3ca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    800060ee:	e609                	bnez	a2,800060f8 <__multf3+0x438>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 21)
    800060f0:	00878693          	addi	a3,a5,8
    800060f4:	b7e1                	j	800060bc <__multf3+0x3fc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    800060f6:	fe6d                	bnez	a2,800060f0 <__multf3+0x430>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 9)
    800060f8:	03445693          	srli	a3,s0,0x34
    800060fc:	8a85                	andi	a3,a3,1
    800060fe:	c699                	beqz	a3,8000610c <__multf3+0x44c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 24)
    80006100:	577d                	li	a4,-1
    80006102:	1752                	slli	a4,a4,0x34
    80006104:	177d                	addi	a4,a4,-1
    80006106:	8c79                	and	s0,s0,a4
    80006108:	6711                	lui	a4,0x4
    8000610a:	9742                	add	a4,a4,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 26)
    8000610c:	66a1                	lui	a3,0x8
    8000610e:	ffe68593          	addi	a1,a3,-2 # 7ffe <asinh-0x7fff8002>
    80006112:	00e5c863          	blt	a1,a4,80006122 <__multf3+0x462>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    80006116:	03d41513          	slli	a0,s0,0x3d
    8000611a:	838d                	srli	a5,a5,0x3
    8000611c:	8d5d                	or	a0,a0,a5
    8000611e:	800d                	srli	s0,s0,0x3
    80006120:	b361                	j	80005ea8 <__multf3+0x1e8>
    80006122:	4789                	li	a5,2
    80006124:	02f90263          	beq	s2,a5,80006148 <__multf3+0x488>
    80006128:	478d                	li	a5,3
    8000612a:	fff68713          	addi	a4,a3,-1
    8000612e:	00f90663          	beq	s2,a5,8000613a <__multf3+0x47a>
    80006132:	00091563          	bnez	s2,8000613c <__multf3+0x47c>
    80006136:	4501                	li	a0,0
    80006138:	a021                	j	80006140 <__multf3+0x480>
    8000613a:	de75                	beqz	a2,80006136 <__multf3+0x476>
    8000613c:	557d                	li	a0,-1
    8000613e:	872e                	mv	a4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 38)
    80006140:	0054e493          	ori	s1,s1,5
    80006144:	842a                	mv	s0,a0
    80006146:	b38d                	j	80005ea8 <__multf3+0x1e8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    80006148:	da75                	beqz	a2,8000613c <__multf3+0x47c>
    8000614a:	4501                	li	a0,0
    8000614c:	fff68713          	addi	a4,a3,-1
    80006150:	bfc5                	j	80006140 <__multf3+0x480>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 7)
    80006152:	4685                	li	a3,1
    80006154:	e729                	bnez	a4,8000619e <__multf3+0x4de>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 39)
    80006156:	0077f593          	andi	a1,a5,7
    8000615a:	86a2                	mv	a3,s0
    8000615c:	cd8d                	beqz	a1,80006196 <__multf3+0x4d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 41)
    8000615e:	4589                	li	a1,2
    80006160:	0014e493          	ori	s1,s1,1
    80006164:	02b90863          	beq	s2,a1,80006194 <__multf3+0x4d4>
    80006168:	458d                	li	a1,3
    8000616a:	02b90163          	beq	s2,a1,8000618c <__multf3+0x4cc>
    8000616e:	02091463          	bnez	s2,80006196 <__multf3+0x4d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    80006172:	00f7f593          	andi	a1,a5,15
    80006176:	4511                	li	a0,4
    80006178:	00a58f63          	beq	a1,a0,80006196 <__multf3+0x4d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 43)
    8000617c:	ffc7b693          	sltiu	a3,a5,-4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 54)
    80006180:	0016c693          	xori	a3,a3,1
    80006184:	1682                	slli	a3,a3,0x20
    80006186:	9281                	srli	a3,a3,0x20
    80006188:	96a2                	add	a3,a3,s0
    8000618a:	a031                	j	80006196 <__multf3+0x4d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    8000618c:	e609                	bnez	a2,80006196 <__multf3+0x4d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 54)
    8000618e:	ff87b693          	sltiu	a3,a5,-8
    80006192:	b7fd                	j	80006180 <__multf3+0x4c0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    80006194:	fe6d                	bnez	a2,8000618e <__multf3+0x4ce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 42)
    80006196:	92d1                	srli	a3,a3,0x34
    80006198:	0016c693          	xori	a3,a3,1
    8000619c:	8a85                	andi	a3,a3,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 59)
    8000619e:	4805                	li	a6,1
    800061a0:	40e80833          	sub	a6,a6,a4
    800061a4:	07400713          	li	a4,116
    800061a8:	0d074663          	blt	a4,a6,80006274 <__multf3+0x5b4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 60)
    800061ac:	03f00593          	li	a1,63
    800061b0:	0008071b          	sext.w	a4,a6
    800061b4:	0505cb63          	blt	a1,a6,8000620a <__multf3+0x54a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 62)
    800061b8:	04000593          	li	a1,64
    800061bc:	9d99                	subw	a1,a1,a4
    800061be:	00b41533          	sll	a0,s0,a1
    800061c2:	00e7d833          	srl	a6,a5,a4
    800061c6:	00b797b3          	sll	a5,a5,a1
    800061ca:	01056533          	or	a0,a0,a6
    800061ce:	00f037b3          	snez	a5,a5
    800061d2:	8d5d                	or	a0,a0,a5
    800061d4:	00e45433          	srl	s0,s0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 75)
    800061d8:	00757793          	andi	a5,a0,7
    800061dc:	c3ad                	beqz	a5,8000623e <__multf3+0x57e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 76)
    800061de:	4789                	li	a5,2
    800061e0:	0014e493          	ori	s1,s1,1
    800061e4:	04f90c63          	beq	s2,a5,8000623c <__multf3+0x57c>
    800061e8:	478d                	li	a5,3
    800061ea:	04f90563          	beq	s2,a5,80006234 <__multf3+0x574>
    800061ee:	04091863          	bnez	s2,8000623e <__multf3+0x57e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    800061f2:	00f57793          	andi	a5,a0,15
    800061f6:	4711                	li	a4,4
    800061f8:	04e78363          	beq	a5,a4,8000623e <__multf3+0x57e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 78)
    800061fc:	00450793          	addi	a5,a0,4 # ffffffffffffc004 <_ebss+0xffffffff7fefae9e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 89)
    80006200:	00a7b533          	sltu	a0,a5,a0
    80006204:	942a                	add	s0,s0,a0
    80006206:	853e                	mv	a0,a5
    80006208:	a81d                	j	8000623e <__multf3+0x57e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 63)
    8000620a:	fc07051b          	addiw	a0,a4,-64
    8000620e:	04000893          	li	a7,64
    80006212:	00a45533          	srl	a0,s0,a0
    80006216:	4581                	li	a1,0
    80006218:	01180863          	beq	a6,a7,80006228 <__multf3+0x568>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 71)
    8000621c:	08000593          	li	a1,128
    80006220:	40e5873b          	subw	a4,a1,a4
    80006224:	00e415b3          	sll	a1,s0,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 74)
    80006228:	8fcd                	or	a5,a5,a1
    8000622a:	00f037b3          	snez	a5,a5
    8000622e:	8d5d                	or	a0,a0,a5
    80006230:	4401                	li	s0,0
    80006232:	b75d                	j	800061d8 <__multf3+0x518>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    80006234:	e609                	bnez	a2,8000623e <__multf3+0x57e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 89)
    80006236:	00850793          	addi	a5,a0,8
    8000623a:	b7d9                	j	80006200 <__multf3+0x540>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    8000623c:	fe6d                	bnez	a2,80006236 <__multf3+0x576>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 77)
    8000623e:	03345793          	srli	a5,s0,0x33
    80006242:	8b85                	andi	a5,a5,1
    80006244:	cb99                	beqz	a5,8000625a <__multf3+0x59a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 92)
    80006246:	0014e493          	ori	s1,s1,1
    8000624a:	4401                	li	s0,0
    8000624c:	4501                	li	a0,0
    8000624e:	4705                	li	a4,1
    80006250:	c4068ce3          	beqz	a3,80005ea8 <__multf3+0x1e8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 97)
    80006254:	0024e493          	ori	s1,s1,2
    80006258:	b981                	j	80005ea8 <__multf3+0x1e8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 93)
    8000625a:	03d41793          	slli	a5,s0,0x3d
    8000625e:	810d                	srli	a0,a0,0x3
    80006260:	8d5d                	or	a0,a0,a5
    80006262:	800d                	srli	s0,s0,0x3
    80006264:	4701                	li	a4,0
    80006266:	c40681e3          	beqz	a3,80005ea8 <__multf3+0x1e8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 96)
    8000626a:	0014f793          	andi	a5,s1,1
    8000626e:	c2078de3          	beqz	a5,80005ea8 <__multf3+0x1e8>
    80006272:	b7cd                	j	80006254 <__multf3+0x594>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 61)
    80006274:	0087e533          	or	a0,a5,s0
    80006278:	cd19                	beqz	a0,80006296 <__multf3+0x5d6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 100)
    8000627a:	4789                	li	a5,2
    8000627c:	0014e493          	ori	s1,s1,1
    80006280:	02f90463          	beq	s2,a5,800062a8 <__multf3+0x5e8>
    80006284:	478d                	li	a5,3
    80006286:	00f90d63          	beq	s2,a5,800062a0 <__multf3+0x5e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    8000628a:	4785                	li	a5,1
    8000628c:	00091363          	bnez	s2,80006292 <__multf3+0x5d2>
    80006290:	4795                	li	a5,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 101)
    80006292:	0037d513          	srli	a0,a5,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47 (discriminator 116)
    80006296:	0024e493          	ori	s1,s1,2
    8000629a:	4401                	li	s0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/multf3.c:47
    8000629c:	4701                	li	a4,0
    8000629e:	b129                	j	80005ea8 <__multf3+0x1e8>
    800062a0:	47a5                	li	a5,9
    800062a2:	da65                	beqz	a2,80006292 <__multf3+0x5d2>
    800062a4:	4785                	li	a5,1
    800062a6:	b7f5                	j	80006292 <__multf3+0x5d2>
    800062a8:	47a5                	li	a5,9
    800062aa:	f665                	bnez	a2,80006292 <__multf3+0x5d2>
    800062ac:	bfe5                	j	800062a4 <__multf3+0x5e4>
    800062ae:	6721                	lui	a4,0x8
    800062b0:	4401                	li	s0,0
    800062b2:	4501                	li	a0,0
    800062b4:	177d                	addi	a4,a4,-1
    800062b6:	becd                	j	80005ea8 <__multf3+0x1e8>
    800062b8:	4405                	li	s0,1
    800062ba:	6721                	lui	a4,0x8
    800062bc:	143e                	slli	s0,s0,0x2f
    800062be:	4501                	li	a0,0
    800062c0:	177d                	addi	a4,a4,-1
    800062c2:	4601                	li	a2,0
    800062c4:	b6d5                	j	80005ea8 <__multf3+0x1e8>

00000000800062c6 <__subtf3>:
__subtf3():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:36
    800062c6:	7179                	addi	sp,sp,-48
    800062c8:	f406                	sd	ra,40(sp)
    800062ca:	f022                	sd	s0,32(sp)
    800062cc:	ec26                	sd	s1,24(sp)
    800062ce:	e84a                	sd	s2,16(sp)
    800062d0:	e44e                	sd	s3,8(sp)
    800062d2:	e052                	sd	s4,0(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:43
    800062d4:	00202473          	frrm	s0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    800062d8:	577d                	li	a4,-1
    800062da:	8341                	srli	a4,a4,0x10
    800062dc:	6821                	lui	a6,0x8
    800062de:	0305d893          	srli	a7,a1,0x30
    800062e2:	187d                	addi	a6,a6,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    800062e4:	0306de93          	srli	t4,a3,0x30
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    800062e8:	03f5d493          	srli	s1,a1,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    800062ec:	03f6d313          	srli	t1,a3,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    800062f0:	8df9                	and	a1,a1,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    800062f2:	8ef9                	and	a3,a3,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    800062f4:	058e                	slli	a1,a1,0x3
    800062f6:	03d55793          	srli	a5,a0,0x3d
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    800062fa:	03d65713          	srli	a4,a2,0x3d
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    800062fe:	0108f8b3          	and	a7,a7,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    80006302:	010efeb3          	and	t4,t4,a6
    80006306:	068e                	slli	a3,a3,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    80006308:	8fcd                	or	a5,a5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:43
    8000630a:	2401                	sext.w	s0,s0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    8000630c:	89c6                	mv	s3,a7
    8000630e:	050e                	slli	a0,a0,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    80006310:	85f6                	mv	a1,t4
    80006312:	8f55                	or	a4,a4,a3
    80006314:	060e                	slli	a2,a2,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006316:	010e9563          	bne	t4,a6,80006320 <__subtf3+0x5a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 2)
    8000631a:	00c766b3          	or	a3,a4,a2
    8000631e:	e299                	bnez	a3,80006324 <__subtf3+0x5e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 3)
    80006320:	00134313          	xori	t1,t1,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 11)
    80006324:	41d886bb          	subw	a3,a7,t4
    80006328:	6e21                	lui	t3,0x8
    8000632a:	0006881b          	sext.w	a6,a3
    8000632e:	fffe0f13          	addi	t5,t3,-1 # 7fff <asinh-0x7fff8001>
    80006332:	36931f63          	bne	t1,s1,800066b0 <__subtf3+0x3ea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 12)
    80006336:	0f005663          	blez	a6,80006422 <__subtf3+0x15c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 14)
    8000633a:	060e9c63          	bnez	t4,800063b2 <__subtf3+0xec>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 16)
    8000633e:	00c765b3          	or	a1,a4,a2
    80006342:	e591                	bnez	a1,8000634e <__subtf3+0x88>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 209)
    80006344:	05e88b63          	beq	a7,t5,8000639a <__subtf3+0xd4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44
    80006348:	873e                	mv	a4,a5
    8000634a:	85c6                	mv	a1,a7
    8000634c:	a5ed                	j	80006a36 <__subtf3+0x770>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 19)
    8000634e:	fff6881b          	addiw	a6,a3,-1
    80006352:	04081263          	bnez	a6,80006396 <__subtf3+0xd0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 69)
    80006356:	962a                	add	a2,a2,a0
    80006358:	00a63533          	sltu	a0,a2,a0
    8000635c:	973e                	add	a4,a4,a5
    8000635e:	972a                	add	a4,a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44 (discriminator 69)
    80006360:	85c6                	mv	a1,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 69)
    80006362:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 127)
    80006364:	03375793          	srli	a5,a4,0x33
    80006368:	8b85                	andi	a5,a5,1
    8000636a:	6c078663          	beqz	a5,80006a36 <__subtf3+0x770>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 187)
    8000636e:	66a1                	lui	a3,0x8
    80006370:	0585                	addi	a1,a1,1
    80006372:	fff68793          	addi	a5,a3,-1 # 7fff <asinh-0x7fff8001>
    80006376:	30f58d63          	beq	a1,a5,80006690 <__subtf3+0x3ca>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000637a:	57fd                	li	a5,-1
    8000637c:	17ce                	slli	a5,a5,0x33
    8000637e:	17fd                	addi	a5,a5,-1
    80006380:	8ff9                	and	a5,a5,a4
    80006382:	00155713          	srli	a4,a0,0x1
    80006386:	8905                	andi	a0,a0,1
    80006388:	8d59                	or	a0,a0,a4
    8000638a:	03f79713          	slli	a4,a5,0x3f
    8000638e:	8d59                	or	a0,a0,a4
    80006390:	8385                	srli	a5,a5,0x1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    80006392:	4801                	li	a6,0
    80006394:	a46d                	j	8000663e <__subtf3+0x378>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 29)
    80006396:	03e89363          	bne	a7,t5,800063bc <__subtf3+0xf6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 235)
    8000639a:	00a7e733          	or	a4,a5,a0
    8000639e:	6e070163          	beqz	a4,80006a80 <__subtf3+0x7ba>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 237)
    800063a2:	0327d713          	srli	a4,a5,0x32
    800063a6:	8b05                	andi	a4,a4,1
    800063a8:	85c6                	mv	a1,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 237)
    800063aa:	4801                	li	a6,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 237)
    800063ac:	28071963          	bnez	a4,8000663e <__subtf3+0x378>
    800063b0:	a879                	j	8000644e <__subtf3+0x188>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 17)
    800063b2:	ffe884e3          	beq	a7,t5,8000639a <__subtf3+0xd4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 43)
    800063b6:	4685                	li	a3,1
    800063b8:	16ce                	slli	a3,a3,0x33
    800063ba:	8f55                	or	a4,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 52)
    800063bc:	07400693          	li	a3,116
    800063c0:	0506cd63          	blt	a3,a6,8000641a <__subtf3+0x154>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 53)
    800063c4:	03f00693          	li	a3,63
    800063c8:	0306c463          	blt	a3,a6,800063f0 <__subtf3+0x12a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 55)
    800063cc:	04000593          	li	a1,64
    800063d0:	410585bb          	subw	a1,a1,a6
    800063d4:	00b716b3          	sll	a3,a4,a1
    800063d8:	01065333          	srl	t1,a2,a6
    800063dc:	00b61633          	sll	a2,a2,a1
    800063e0:	0066e6b3          	or	a3,a3,t1
    800063e4:	00c03633          	snez	a2,a2
    800063e8:	8e55                	or	a2,a2,a3
    800063ea:	01075733          	srl	a4,a4,a6
    800063ee:	b7a5                	j	80006356 <__subtf3+0x90>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 56)
    800063f0:	fc08069b          	addiw	a3,a6,-64
    800063f4:	04000313          	li	t1,64
    800063f8:	00d756b3          	srl	a3,a4,a3
    800063fc:	4581                	li	a1,0
    800063fe:	00680863          	beq	a6,t1,8000640e <__subtf3+0x148>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 63)
    80006402:	08000593          	li	a1,128
    80006406:	410585bb          	subw	a1,a1,a6
    8000640a:	00b715b3          	sll	a1,a4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 66)
    8000640e:	8e4d                	or	a2,a2,a1
    80006410:	00c03633          	snez	a2,a2
    80006414:	8e55                	or	a2,a2,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 54)
    80006416:	4701                	li	a4,0
    80006418:	bf3d                	j	80006356 <__subtf3+0x90>
    8000641a:	8e59                	or	a2,a2,a4
    8000641c:	00c03633          	snez	a2,a2
    80006420:	bfdd                	j	80006416 <__subtf3+0x150>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 15)
    80006422:	0e080563          	beqz	a6,8000650c <__subtf3+0x246>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 71)
    80006426:	04089f63          	bnez	a7,80006484 <__subtf3+0x1be>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 73)
    8000642a:	00a7e833          	or	a6,a5,a0
    8000642e:	02081263          	bnez	a6,80006452 <__subtf3+0x18c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45 (discriminator 75)
    80006432:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 75)
    80006434:	61ee9163          	bne	t4,t5,80006a36 <__subtf3+0x770>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 77)
    80006438:	00c76533          	or	a0,a4,a2
    8000643c:	62050c63          	beqz	a0,80006a74 <__subtf3+0x7ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 79)
    80006440:	03275793          	srli	a5,a4,0x32
    80006444:	8b85                	andi	a5,a5,1
    80006446:	62079a63          	bnez	a5,80006a7a <__subtf3+0x7b4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000644a:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    8000644c:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000644e:	46c1                	li	a3,16
    80006450:	a209                	j	80006552 <__subtf3+0x28c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 76)
    80006452:	fff6c693          	not	a3,a3
    80006456:	2681                	sext.w	a3,a3
    80006458:	e699                	bnez	a3,80006466 <__subtf3+0x1a0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 85)
    8000645a:	9532                	add	a0,a0,a2
    8000645c:	973e                	add	a4,a4,a5
    8000645e:	00c53633          	sltu	a2,a0,a2
    80006462:	9732                	add	a4,a4,a2
    80006464:	b701                	j	80006364 <__subtf3+0x9e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 86)
    80006466:	03ee9763          	bne	t4,t5,80006494 <__subtf3+0x1ce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 101)
    8000646a:	00c76533          	or	a0,a4,a2
    8000646e:	60050363          	beqz	a0,80006a74 <__subtf3+0x7ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 103)
    80006472:	03275793          	srli	a5,a4,0x32
    80006476:	8b85                	andi	a5,a5,1
    80006478:	60079163          	bnez	a5,80006a7a <__subtf3+0x7b4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000647c:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    8000647e:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    80006480:	4801                	li	a6,0
    80006482:	b7f1                	j	8000644e <__subtf3+0x188>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 74)
    80006484:	ffee83e3          	beq	t4,t5,8000646a <__subtf3+0x1a4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 100)
    80006488:	4805                	li	a6,1
    8000648a:	184e                	slli	a6,a6,0x33
    8000648c:	40d006bb          	negw	a3,a3
    80006490:	0107e7b3          	or	a5,a5,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 109)
    80006494:	07400813          	li	a6,116
    80006498:	06d84663          	blt	a6,a3,80006504 <__subtf3+0x23e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 110)
    8000649c:	03f00813          	li	a6,63
    800064a0:	02d84b63          	blt	a6,a3,800064d6 <__subtf3+0x210>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 112)
    800064a4:	04000893          	li	a7,64
    800064a8:	40d888bb          	subw	a7,a7,a3
    800064ac:	00d55333          	srl	t1,a0,a3
    800064b0:	01179833          	sll	a6,a5,a7
    800064b4:	01151533          	sll	a0,a0,a7
    800064b8:	00686833          	or	a6,a6,t1
    800064bc:	00a03533          	snez	a0,a0
    800064c0:	00a86533          	or	a0,a6,a0
    800064c4:	00d7d6b3          	srl	a3,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 126)
    800064c8:	9532                	add	a0,a0,a2
    800064ca:	96ba                	add	a3,a3,a4
    800064cc:	00c53633          	sltu	a2,a0,a2
    800064d0:	00c68733          	add	a4,a3,a2
    800064d4:	bd41                	j	80006364 <__subtf3+0x9e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 113)
    800064d6:	fc06881b          	addiw	a6,a3,-64
    800064da:	04000313          	li	t1,64
    800064de:	0107d833          	srl	a6,a5,a6
    800064e2:	4881                	li	a7,0
    800064e4:	00668863          	beq	a3,t1,800064f4 <__subtf3+0x22e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 120)
    800064e8:	08000893          	li	a7,128
    800064ec:	40d886bb          	subw	a3,a7,a3
    800064f0:	00d798b3          	sll	a7,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 123)
    800064f4:	00a8e533          	or	a0,a7,a0
    800064f8:	00a03533          	snez	a0,a0
    800064fc:	00a86533          	or	a0,a6,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 111)
    80006500:	4681                	li	a3,0
    80006502:	b7d9                	j	800064c8 <__subtf3+0x202>
    80006504:	8d5d                	or	a0,a0,a5
    80006506:	00a03533          	snez	a0,a0
    8000650a:	bfdd                	j	80006500 <__subtf3+0x23a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 72)
    8000650c:	00188593          	addi	a1,a7,1 # ffffffffbff00001 <_ebss+0xffffffff3fdfee9b>
    80006510:	ffee0693          	addi	a3,t3,-2
    80006514:	00d5f333          	and	t1,a1,a3
    80006518:	10031763          	bnez	t1,80006626 <__subtf3+0x360>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 128)
    8000651c:	00a7e5b3          	or	a1,a5,a0
    80006520:	04089563          	bnez	a7,8000656a <__subtf3+0x2a4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 130)
    80006524:	52058063          	beqz	a1,80006a44 <__subtf3+0x77e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 133)
    80006528:	00c766b3          	or	a3,a4,a2
    8000652c:	34068b63          	beqz	a3,80006882 <__subtf3+0x5bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 139)
    80006530:	962a                	add	a2,a2,a0
    80006532:	97ba                	add	a5,a5,a4
    80006534:	00a63533          	sltu	a0,a2,a0
    80006538:	97aa                	add	a5,a5,a0
    8000653a:	0337d713          	srli	a4,a5,0x33
    8000653e:	8b05                	andi	a4,a4,1
    80006540:	50070363          	beqz	a4,80006a46 <__subtf3+0x780>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 141)
    80006544:	577d                	li	a4,-1
    80006546:	174e                	slli	a4,a4,0x33
    80006548:	177d                	addi	a4,a4,-1
    8000654a:	8ff9                	and	a5,a5,a4
    8000654c:	8532                	mv	a0,a2
    8000654e:	4681                	li	a3,0
    80006550:	4585                	li	a1,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 36)
    80006552:	00757713          	andi	a4,a0,7
    80006556:	10071763          	bnez	a4,80006664 <__subtf3+0x39e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 47)
    8000655a:	06080163          	beqz	a6,800065bc <__subtf3+0x2f6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 58)
    8000655e:	0016f713          	andi	a4,a3,1
    80006562:	cf29                	beqz	a4,800065bc <__subtf3+0x2f6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 60)
    80006564:	0026e693          	ori	a3,a3,2
    80006568:	a891                	j	800065bc <__subtf3+0x2f6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 131)
    8000656a:	03e89863          	bne	a7,t5,8000659a <__subtf3+0x2d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 145)
    8000656e:	56058e63          	beqz	a1,80006aea <__subtf3+0x824>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 147)
    80006572:	0327d693          	srli	a3,a5,0x32
    80006576:	8a85                	andi	a3,a3,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:37 (discriminator 147)
    80006578:	0016b693          	seqz	a3,a3
    8000657c:	0692                	slli	a3,a3,0x4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 147)
    8000657e:	031e9763          	bne	t4,a7,800065ac <__subtf3+0x2e6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 152)
    80006582:	00c768b3          	or	a7,a4,a2
    80006586:	00088d63          	beqz	a7,800065a0 <__subtf3+0x2da>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 154)
    8000658a:	03275893          	srli	a7,a4,0x32
    8000658e:	0018f893          	andi	a7,a7,1
    80006592:	00089763          	bnez	a7,800065a0 <__subtf3+0x2da>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006596:	46c1                	li	a3,16
    80006598:	a021                	j	800065a0 <__subtf3+0x2da>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 151)
    8000659a:	4681                	li	a3,0
    8000659c:	ffee83e3          	beq	t4,t5,80006582 <__subtf3+0x2bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 158)
    800065a0:	e591                	bnez	a1,800065ac <__subtf3+0x2e6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    800065a2:	87ba                	mv	a5,a4
    800065a4:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    800065a6:	65a1                	lui	a1,0x8
    800065a8:	15fd                	addi	a1,a1,-1
    800065aa:	b765                	j	80006552 <__subtf3+0x28c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 160)
    800065ac:	8e59                	or	a2,a2,a4
    800065ae:	de65                	beqz	a2,800065a6 <__subtf3+0x2e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    800065b0:	4785                	li	a5,1
    800065b2:	65a1                	lui	a1,0x8
    800065b4:	4481                	li	s1,0
    800065b6:	17ca                	slli	a5,a5,0x32
    800065b8:	4501                	li	a0,0
    800065ba:	15fd                	addi	a1,a1,-1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 62)
    800065bc:	0337d713          	srli	a4,a5,0x33
    800065c0:	8b05                	andi	a4,a4,1
    800065c2:	cb19                	beqz	a4,800065d8 <__subtf3+0x312>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 63)
    800065c4:	6721                	lui	a4,0x8
    800065c6:	0585                	addi	a1,a1,1
    800065c8:	fff70613          	addi	a2,a4,-1 # 7fff <asinh-0x7fff8001>
    800065cc:	4ec58963          	beq	a1,a2,80006abe <__subtf3+0x7f8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    800065d0:	577d                	li	a4,-1
    800065d2:	174e                	slli	a4,a4,0x33
    800065d4:	177d                	addi	a4,a4,-1
    800065d6:	8ff9                	and	a5,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 79)
    800065d8:	00355713          	srli	a4,a0,0x3
    800065dc:	03d79513          	slli	a0,a5,0x3d
    800065e0:	8d59                	or	a0,a0,a4
    800065e2:	6721                	lui	a4,0x8
    800065e4:	177d                	addi	a4,a4,-1
    800065e6:	838d                	srli	a5,a5,0x3
    800065e8:	00e59963          	bne	a1,a4,800065fa <__subtf3+0x334>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 80)
    800065ec:	8d5d                	or	a0,a0,a5
    800065ee:	4781                	li	a5,0
    800065f0:	c509                	beqz	a0,800065fa <__subtf3+0x334>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    800065f2:	4785                	li	a5,1
    800065f4:	17be                	slli	a5,a5,0x2f
    800065f6:	4501                	li	a0,0
    800065f8:	4481                	li	s1,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 90)
    800065fa:	15c6                	slli	a1,a1,0x31
    800065fc:	00f4949b          	slliw	s1,s1,0xf
    80006600:	91c5                	srli	a1,a1,0x31
    80006602:	8dc5                	or	a1,a1,s1
    80006604:	07c2                	slli	a5,a5,0x10
    80006606:	03059493          	slli	s1,a1,0x30
    8000660a:	0107d593          	srli	a1,a5,0x10
    8000660e:	8dc5                	or	a1,a1,s1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:48 (discriminator 90)
    80006610:	c299                	beqz	a3,80006616 <__subtf3+0x350>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:48 (discriminator 1)
    80006612:	0016a073          	csrs	fflags,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:51
    80006616:	70a2                	ld	ra,40(sp)
    80006618:	7402                	ld	s0,32(sp)
    8000661a:	64e2                	ld	s1,24(sp)
    8000661c:	6942                	ld	s2,16(sp)
    8000661e:	69a2                	ld	s3,8(sp)
    80006620:	6a02                	ld	s4,0(sp)
    80006622:	6145                	addi	sp,sp,48
    80006624:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 129)
    80006626:	01e58e63          	beq	a1,t5,80006642 <__subtf3+0x37c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000662a:	962a                	add	a2,a2,a0
    8000662c:	00a63533          	sltu	a0,a2,a0
    80006630:	97ba                	add	a5,a5,a4
    80006632:	97aa                	add	a5,a5,a0
    80006634:	03f79513          	slli	a0,a5,0x3f
    80006638:	8205                	srli	a2,a2,0x1
    8000663a:	8d51                	or	a0,a0,a2
    8000663c:	8385                	srli	a5,a5,0x1
    8000663e:	4681                	li	a3,0
    80006640:	bf09                	j	80006552 <__subtf3+0x28c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 171)
    80006642:	c409                	beqz	s0,8000664c <__subtf3+0x386>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 174)
    80006644:	478d                	li	a5,3
    80006646:	00f41763          	bne	s0,a5,80006654 <__subtf3+0x38e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 175)
    8000664a:	e889                	bnez	s1,8000665c <__subtf3+0x396>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000664c:	4781                	li	a5,0
    8000664e:	4501                	li	a0,0
    80006650:	4695                	li	a3,5
    80006652:	b7ad                	j	800065bc <__subtf3+0x2f6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 178)
    80006654:	4789                	li	a5,2
    80006656:	00f41363          	bne	s0,a5,8000665c <__subtf3+0x396>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 179)
    8000665a:	f8ed                	bnez	s1,8000664c <__subtf3+0x386>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000665c:	57fd                	li	a5,-1
    8000665e:	557d                	li	a0,-1
    80006660:	85b6                	mv	a1,a3
    80006662:	4695                	li	a3,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 37)
    80006664:	4709                	li	a4,2
    80006666:	0016e693          	ori	a3,a3,1
    8000666a:	44e40663          	beq	s0,a4,80006ab6 <__subtf3+0x7f0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    8000666e:	470d                	li	a4,3
    80006670:	42e40f63          	beq	s0,a4,80006aae <__subtf3+0x7e8>
    80006674:	44041263          	bnez	s0,80006ab8 <__subtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 40)
    80006678:	00f57713          	andi	a4,a0,15
    8000667c:	4611                	li	a2,4
    8000667e:	42c70d63          	beq	a4,a2,80006ab8 <__subtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 44)
    80006682:	00450713          	addi	a4,a0,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 55)
    80006686:	00a73533          	sltu	a0,a4,a0
    8000668a:	97aa                	add	a5,a5,a0
    8000668c:	853a                	mv	a0,a4
    8000668e:	a12d                	j	80006ab8 <__subtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 189)
    80006690:	dc55                	beqz	s0,8000664c <__subtf3+0x386>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 192)
    80006692:	478d                	li	a5,3
    80006694:	00f41963          	bne	s0,a5,800066a6 <__subtf3+0x3e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 193)
    80006698:	d8d5                	beqz	s1,8000664c <__subtf3+0x386>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000669a:	57fd                	li	a5,-1
    8000669c:	557d                	li	a0,-1
    8000669e:	ffe68593          	addi	a1,a3,-2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    800066a2:	4801                	li	a6,0
    800066a4:	bf7d                	j	80006662 <__subtf3+0x39c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 196)
    800066a6:	4789                	li	a5,2
    800066a8:	fef419e3          	bne	s0,a5,8000669a <__subtf3+0x3d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 197)
    800066ac:	f0c5                	bnez	s1,8000664c <__subtf3+0x386>
    800066ae:	b7f5                	j	8000669a <__subtf3+0x3d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 13)
    800066b0:	0b005b63          	blez	a6,80006766 <__subtf3+0x4a0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 205)
    800066b4:	060e9a63          	bnez	t4,80006728 <__subtf3+0x462>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 207)
    800066b8:	00c765b3          	or	a1,a4,a2
    800066bc:	c80584e3          	beqz	a1,80006344 <__subtf3+0x7e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 210)
    800066c0:	fff6881b          	addiw	a6,a3,-1
    800066c4:	02081663          	bnez	a6,800066f0 <__subtf3+0x42a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 260)
    800066c8:	40c50633          	sub	a2,a0,a2
    800066cc:	00c53533          	sltu	a0,a0,a2
    800066d0:	40e78733          	sub	a4,a5,a4
    800066d4:	8f09                	sub	a4,a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:44 (discriminator 260)
    800066d6:	85c6                	mv	a1,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 260)
    800066d8:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 318)
    800066da:	03375793          	srli	a5,a4,0x33
    800066de:	8b85                	andi	a5,a5,1
    800066e0:	34078b63          	beqz	a5,80006a36 <__subtf3+0x770>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 378)
    800066e4:	0736                	slli	a4,a4,0xd
    800066e6:	00d75913          	srli	s2,a4,0xd
    800066ea:	8a2a                	mv	s4,a0
    800066ec:	89ae                	mv	s3,a1
    800066ee:	ac49                	j	80006980 <__subtf3+0x6ba>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 220)
    800066f0:	cbe885e3          	beq	a7,t5,8000639a <__subtf3+0xd4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 243)
    800066f4:	07400693          	li	a3,116
    800066f8:	0706c363          	blt	a3,a6,8000675e <__subtf3+0x498>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 244)
    800066fc:	03f00693          	li	a3,63
    80006700:	0306ca63          	blt	a3,a6,80006734 <__subtf3+0x46e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 246)
    80006704:	04000593          	li	a1,64
    80006708:	410585bb          	subw	a1,a1,a6
    8000670c:	00b716b3          	sll	a3,a4,a1
    80006710:	01065333          	srl	t1,a2,a6
    80006714:	00b61633          	sll	a2,a2,a1
    80006718:	0066e6b3          	or	a3,a3,t1
    8000671c:	00c03633          	snez	a2,a2
    80006720:	8e55                	or	a2,a2,a3
    80006722:	01075733          	srl	a4,a4,a6
    80006726:	b74d                	j	800066c8 <__subtf3+0x402>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 208)
    80006728:	c7e889e3          	beq	a7,t5,8000639a <__subtf3+0xd4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 234)
    8000672c:	4685                	li	a3,1
    8000672e:	16ce                	slli	a3,a3,0x33
    80006730:	8f55                	or	a4,a4,a3
    80006732:	b7c9                	j	800066f4 <__subtf3+0x42e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 247)
    80006734:	fc08069b          	addiw	a3,a6,-64
    80006738:	04000313          	li	t1,64
    8000673c:	00d756b3          	srl	a3,a4,a3
    80006740:	4581                	li	a1,0
    80006742:	00680863          	beq	a6,t1,80006752 <__subtf3+0x48c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 254)
    80006746:	08000593          	li	a1,128
    8000674a:	410585bb          	subw	a1,a1,a6
    8000674e:	00b715b3          	sll	a1,a4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 257)
    80006752:	8e4d                	or	a2,a2,a1
    80006754:	00c03633          	snez	a2,a2
    80006758:	8e55                	or	a2,a2,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 245)
    8000675a:	4701                	li	a4,0
    8000675c:	b7b5                	j	800066c8 <__subtf3+0x402>
    8000675e:	8e59                	or	a2,a2,a4
    80006760:	00c03633          	snez	a2,a2
    80006764:	bfdd                	j	8000675a <__subtf3+0x494>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 206)
    80006766:	0e080863          	beqz	a6,80006856 <__subtf3+0x590>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 262)
    8000676a:	06089063          	bnez	a7,800067ca <__subtf3+0x504>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 264)
    8000676e:	00a7e833          	or	a6,a5,a0
    80006772:	02081163          	bnez	a6,80006794 <__subtf3+0x4ce>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 266)
    80006776:	2dee9463          	bne	t4,t5,80006a3e <__subtf3+0x778>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 268)
    8000677a:	00c76533          	or	a0,a4,a2
    8000677e:	30050563          	beqz	a0,80006a88 <__subtf3+0x7c2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 270)
    80006782:	03275793          	srli	a5,a4,0x32
    80006786:	8b85                	andi	a5,a5,1
    80006788:	30079363          	bnez	a5,80006a8e <__subtf3+0x7c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000678c:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    8000678e:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006790:	849a                	mv	s1,t1
    80006792:	b975                	j	8000644e <__subtf3+0x188>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 267)
    80006794:	fff6c693          	not	a3,a3
    80006798:	2681                	sext.w	a3,a3
    8000679a:	ea89                	bnez	a3,800067ac <__subtf3+0x4e6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 276)
    8000679c:	40a60533          	sub	a0,a2,a0
    800067a0:	8f1d                	sub	a4,a4,a5
    800067a2:	00a63633          	sltu	a2,a2,a0
    800067a6:	8f11                	sub	a4,a4,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 317)
    800067a8:	849a                	mv	s1,t1
    800067aa:	bf05                	j	800066da <__subtf3+0x414>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 277)
    800067ac:	03ee9763          	bne	t4,t5,800067da <__subtf3+0x514>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 292)
    800067b0:	00c76533          	or	a0,a4,a2
    800067b4:	2c050a63          	beqz	a0,80006a88 <__subtf3+0x7c2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 294)
    800067b8:	03275793          	srli	a5,a4,0x32
    800067bc:	8b85                	andi	a5,a5,1
    800067be:	2c079863          	bnez	a5,80006a8e <__subtf3+0x7c8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    800067c2:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    800067c4:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    800067c6:	849a                	mv	s1,t1
    800067c8:	b965                	j	80006480 <__subtf3+0x1ba>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 265)
    800067ca:	ffee83e3          	beq	t4,t5,800067b0 <__subtf3+0x4ea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 291)
    800067ce:	4805                	li	a6,1
    800067d0:	184e                	slli	a6,a6,0x33
    800067d2:	40d006bb          	negw	a3,a3
    800067d6:	0107e7b3          	or	a5,a5,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 300)
    800067da:	07400813          	li	a6,116
    800067de:	06d84863          	blt	a6,a3,8000684e <__subtf3+0x588>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 301)
    800067e2:	03f00813          	li	a6,63
    800067e6:	02d84d63          	blt	a6,a3,80006820 <__subtf3+0x55a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 303)
    800067ea:	04000893          	li	a7,64
    800067ee:	40d888bb          	subw	a7,a7,a3
    800067f2:	01179833          	sll	a6,a5,a7
    800067f6:	00d55e33          	srl	t3,a0,a3
    800067fa:	01151533          	sll	a0,a0,a7
    800067fe:	01c86833          	or	a6,a6,t3
    80006802:	00a03533          	snez	a0,a0
    80006806:	00a86533          	or	a0,a6,a0
    8000680a:	00d7d7b3          	srl	a5,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 317)
    8000680e:	40a60533          	sub	a0,a2,a0
    80006812:	40f707b3          	sub	a5,a4,a5
    80006816:	00a63633          	sltu	a2,a2,a0
    8000681a:	40c78733          	sub	a4,a5,a2
    8000681e:	b769                	j	800067a8 <__subtf3+0x4e2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 304)
    80006820:	fc06881b          	addiw	a6,a3,-64
    80006824:	04000e13          	li	t3,64
    80006828:	0107d833          	srl	a6,a5,a6
    8000682c:	4881                	li	a7,0
    8000682e:	01c68863          	beq	a3,t3,8000683e <__subtf3+0x578>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 311)
    80006832:	08000893          	li	a7,128
    80006836:	40d886bb          	subw	a3,a7,a3
    8000683a:	00d798b3          	sll	a7,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 314)
    8000683e:	00a8e533          	or	a0,a7,a0
    80006842:	00a03533          	snez	a0,a0
    80006846:	00a86533          	or	a0,a6,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 302)
    8000684a:	4781                	li	a5,0
    8000684c:	b7c9                	j	8000680e <__subtf3+0x548>
    8000684e:	8d5d                	or	a0,a0,a5
    80006850:	00a03533          	snez	a0,a0
    80006854:	bfdd                	j	8000684a <__subtf3+0x584>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 263)
    80006856:	00188593          	addi	a1,a7,1
    8000685a:	ffee0693          	addi	a3,t3,-2
    8000685e:	8eed                	and	a3,a3,a1
    80006860:	eee5                	bnez	a3,80006958 <__subtf3+0x692>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 319)
    80006862:	00a7ee33          	or	t3,a5,a0
    80006866:	00c765b3          	or	a1,a4,a2
    8000686a:	0a089463          	bnez	a7,80006912 <__subtf3+0x64c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 321)
    8000686e:	060e1063          	bnez	t3,800068ce <__subtf3+0x608>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 323)
    80006872:	1c059c63          	bnez	a1,80006a4a <__subtf3+0x784>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 325)
    80006876:	ffe40493          	addi	s1,s0,-2
    8000687a:	0014b493          	seqz	s1,s1
    8000687e:	4781                	li	a5,0
    80006880:	4501                	li	a0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 1)
    80006882:	00f56733          	or	a4,a0,a5
    80006886:	22070063          	beqz	a4,80006aa6 <__subtf3+0x7e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    8000688a:	03f55713          	srli	a4,a0,0x3f
    8000688e:	00179813          	slli	a6,a5,0x1
    80006892:	983a                	add	a6,a6,a4
    80006894:	00151713          	slli	a4,a0,0x1
    80006898:	00777613          	andi	a2,a4,7
    8000689c:	4681                	li	a3,0
    8000689e:	c205                	beqz	a2,800068be <__subtf3+0x5f8>
    800068a0:	4689                	li	a3,2
    800068a2:	1cd40563          	beq	s0,a3,80006a6c <__subtf3+0x7a6>
    800068a6:	468d                	li	a3,3
    800068a8:	1ad40763          	beq	s0,a3,80006a56 <__subtf3+0x790>
    800068ac:	4685                	li	a3,1
    800068ae:	e801                	bnez	s0,800068be <__subtf3+0x5f8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 16)
    800068b0:	00f77613          	andi	a2,a4,15
    800068b4:	4591                	li	a1,4
    800068b6:	ffc73713          	sltiu	a4,a4,-4
    800068ba:	1ab61363          	bne	a2,a1,80006a60 <__subtf3+0x79a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 23)
    800068be:	03485813          	srli	a6,a6,0x34
    800068c2:	00184813          	xori	a6,a6,1
    800068c6:	00187813          	andi	a6,a6,1
    800068ca:	4581                	li	a1,0
    800068cc:	b159                	j	80006552 <__subtf3+0x28c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 324)
    800068ce:	d9d5                	beqz	a1,80006882 <__subtf3+0x5bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 331)
    800068d0:	40c505b3          	sub	a1,a0,a2
    800068d4:	00b53833          	sltu	a6,a0,a1
    800068d8:	40e786b3          	sub	a3,a5,a4
    800068dc:	410686b3          	sub	a3,a3,a6
    800068e0:	0336d813          	srli	a6,a3,0x33
    800068e4:	00187813          	andi	a6,a6,1
    800068e8:	00080b63          	beqz	a6,800068fe <__subtf3+0x638>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 333)
    800068ec:	40a60533          	sub	a0,a2,a0
    800068f0:	40f707b3          	sub	a5,a4,a5
    800068f4:	00a63633          	sltu	a2,a2,a0
    800068f8:	8f91                	sub	a5,a5,a2
    800068fa:	849a                	mv	s1,t1
    800068fc:	b759                	j	80006882 <__subtf3+0x5bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 334)
    800068fe:	00d5e533          	or	a0,a1,a3
    80006902:	14051763          	bnez	a0,80006a50 <__subtf3+0x78a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 374)
    80006906:	ffe40493          	addi	s1,s0,-2
    8000690a:	0014b493          	seqz	s1,s1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 422)
    8000690e:	4781                	li	a5,0
    80006910:	bf8d                	j	80006882 <__subtf3+0x5bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 322)
    80006912:	03e89563          	bne	a7,t5,8000693c <__subtf3+0x676>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 340)
    80006916:	1c0e0663          	beqz	t3,80006ae2 <__subtf3+0x81c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 342)
    8000691a:	0327d693          	srli	a3,a5,0x32
    8000691e:	8a85                	andi	a3,a3,1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:37 (discriminator 342)
    80006920:	0016b693          	seqz	a3,a3
    80006924:	0692                	slli	a3,a3,0x4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 342)
    80006926:	031e9663          	bne	t4,a7,80006952 <__subtf3+0x68c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 347)
    8000692a:	cd81                	beqz	a1,80006942 <__subtf3+0x67c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 349)
    8000692c:	03275893          	srli	a7,a4,0x32
    80006930:	0018f893          	andi	a7,a7,1
    80006934:	00089763          	bnez	a7,80006942 <__subtf3+0x67c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006938:	46c1                	li	a3,16
    8000693a:	a021                	j	80006942 <__subtf3+0x67c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:37 (discriminator 346)
    8000693c:	4681                	li	a3,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 346)
    8000693e:	ffee86e3          	beq	t4,t5,8000692a <__subtf3+0x664>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 353)
    80006942:	000e1863          	bnez	t3,80006952 <__subtf3+0x68c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 354)
    80006946:	14058863          	beqz	a1,80006a96 <__subtf3+0x7d0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    8000694a:	87ba                	mv	a5,a4
    8000694c:	8532                	mv	a0,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    8000694e:	849a                	mv	s1,t1
    80006950:	b999                	j	800065a6 <__subtf3+0x2e0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 355)
    80006952:	c4058ae3          	beqz	a1,800065a6 <__subtf3+0x2e0>
    80006956:	b9a9                	j	800065b0 <__subtf3+0x2ea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 320)
    80006958:	40c50a33          	sub	s4,a0,a2
    8000695c:	014536b3          	sltu	a3,a0,s4
    80006960:	40e78933          	sub	s2,a5,a4
    80006964:	40d90933          	sub	s2,s2,a3
    80006968:	03395693          	srli	a3,s2,0x33
    8000696c:	8a85                	andi	a3,a3,1
    8000696e:	cabd                	beqz	a3,800069e4 <__subtf3+0x71e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 371)
    80006970:	40a60a33          	sub	s4,a2,a0
    80006974:	8f1d                	sub	a4,a4,a5
    80006976:	01463633          	sltu	a2,a2,s4
    8000697a:	40c70933          	sub	s2,a4,a2
    8000697e:	849a                	mv	s1,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 380)
    80006980:	06090663          	beqz	s2,800069ec <__subtf3+0x726>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 386)
    80006984:	854a                	mv	a0,s2
    80006986:	d10fd0ef          	jal	ra,80003e96 <__clzdi2>
    8000698a:	2501                	sext.w	a0,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 397)
    8000698c:	ff45059b          	addiw	a1,a0,-12
    80006990:	03f00793          	li	a5,63
    80006994:	86ae                	mv	a3,a1
    80006996:	06b7c163          	blt	a5,a1,800069f8 <__subtf3+0x732>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 403)
    8000699a:	04000713          	li	a4,64
    8000699e:	9f0d                	subw	a4,a4,a1
    800069a0:	00b91933          	sll	s2,s2,a1
    800069a4:	00ea5733          	srl	a4,s4,a4
    800069a8:	01276733          	or	a4,a4,s2
    800069ac:	00ba1533          	sll	a0,s4,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 407)
    800069b0:	0735cd63          	blt	a1,s3,80006a2a <__subtf3+0x764>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 408)
    800069b4:	413686bb          	subw	a3,a3,s3
    800069b8:	0016879b          	addiw	a5,a3,1
    800069bc:	03f00613          	li	a2,63
    800069c0:	04f64263          	blt	a2,a5,80006a04 <__subtf3+0x73e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 410)
    800069c4:	04000693          	li	a3,64
    800069c8:	9e9d                	subw	a3,a3,a5
    800069ca:	00f555b3          	srl	a1,a0,a5
    800069ce:	00d71633          	sll	a2,a4,a3
    800069d2:	00d51533          	sll	a0,a0,a3
    800069d6:	8e4d                	or	a2,a2,a1
    800069d8:	00a03533          	snez	a0,a0
    800069dc:	8d51                	or	a0,a0,a2
    800069de:	00f757b3          	srl	a5,a4,a5
    800069e2:	b545                	j	80006882 <__subtf3+0x5bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 372)
    800069e4:	012a6533          	or	a0,s4,s2
    800069e8:	fd41                	bnez	a0,80006980 <__subtf3+0x6ba>
    800069ea:	bf31                	j	80006906 <__subtf3+0x640>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 393)
    800069ec:	8552                	mv	a0,s4
    800069ee:	ca8fd0ef          	jal	ra,80003e96 <__clzdi2>
    800069f2:	0405051b          	addiw	a0,a0,64
    800069f6:	bf59                	j	8000698c <__subtf3+0x6c6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 399)
    800069f8:	fb45071b          	addiw	a4,a0,-76
    800069fc:	00ea1733          	sll	a4,s4,a4
    80006a00:	4501                	li	a0,0
    80006a02:	b77d                	j	800069b0 <__subtf3+0x6ea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 411)
    80006a04:	fc16869b          	addiw	a3,a3,-63
    80006a08:	04000813          	li	a6,64
    80006a0c:	00d75633          	srl	a2,a4,a3
    80006a10:	4681                	li	a3,0
    80006a12:	01078763          	beq	a5,a6,80006a20 <__subtf3+0x75a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 419)
    80006a16:	08000693          	li	a3,128
    80006a1a:	9e9d                	subw	a3,a3,a5
    80006a1c:	00d716b3          	sll	a3,a4,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 422)
    80006a20:	8d55                	or	a0,a0,a3
    80006a22:	00a03533          	snez	a0,a0
    80006a26:	8d51                	or	a0,a0,a2
    80006a28:	b5dd                	j	8000690e <__subtf3+0x648>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46 (discriminator 409)
    80006a2a:	57fd                	li	a5,-1
    80006a2c:	17ce                	slli	a5,a5,0x33
    80006a2e:	17fd                	addi	a5,a5,-1
    80006a30:	40b985b3          	sub	a1,s3,a1
    80006a34:	8f7d                	and	a4,a4,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 426)
    80006a36:	87ba                	mv	a5,a4
    80006a38:	e40585e3          	beqz	a1,80006882 <__subtf3+0x5bc>
    80006a3c:	ba99                	j	80006392 <__subtf3+0xcc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    80006a3e:	8532                	mv	a0,a2
    80006a40:	849a                	mv	s1,t1
    80006a42:	bfd5                	j	80006a36 <__subtf3+0x770>
    80006a44:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006a46:	8532                	mv	a0,a2
    80006a48:	bd2d                	j	80006882 <__subtf3+0x5bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    80006a4a:	87ba                	mv	a5,a4
    80006a4c:	8532                	mv	a0,a2
    80006a4e:	b575                	j	800068fa <__subtf3+0x634>
    80006a50:	87b6                	mv	a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006a52:	852e                	mv	a0,a1
    80006a54:	b53d                	j	80006882 <__subtf3+0x5bc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 19)
    80006a56:	4685                	li	a3,1
    80006a58:	e60493e3          	bnez	s1,800068be <__subtf3+0x5f8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 31)
    80006a5c:	ff873713          	sltiu	a4,a4,-8
    80006a60:	00174713          	xori	a4,a4,1
    80006a64:	1702                	slli	a4,a4,0x20
    80006a66:	9301                	srli	a4,a4,0x20
    80006a68:	983a                	add	a6,a6,a4
    80006a6a:	bd91                	j	800068be <__subtf3+0x5f8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 18)
    80006a6c:	4685                	li	a3,1
    80006a6e:	e40488e3          	beqz	s1,800068be <__subtf3+0x5f8>
    80006a72:	b7ed                	j	80006a5c <__subtf3+0x796>
    80006a74:	4781                	li	a5,0
    80006a76:	4681                	li	a3,0
    80006a78:	b691                	j	800065bc <__subtf3+0x2f6>
    80006a7a:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    80006a7c:	8532                	mv	a0,a2
    80006a7e:	ba11                	j	80006392 <__subtf3+0xcc>
    80006a80:	4781                	li	a5,0
    80006a82:	4501                	li	a0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006a84:	85c6                	mv	a1,a7
    80006a86:	bfc5                	j	80006a76 <__subtf3+0x7b0>
    80006a88:	4781                	li	a5,0
    80006a8a:	849a                	mv	s1,t1
    80006a8c:	b7ed                	j	80006a76 <__subtf3+0x7b0>
    80006a8e:	87ba                	mv	a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:45
    80006a90:	8532                	mv	a0,a2
    80006a92:	849a                	mv	s1,t1
    80006a94:	b8fd                	j	80006392 <__subtf3+0xcc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006a96:	4785                	li	a5,1
    80006a98:	65a1                	lui	a1,0x8
    80006a9a:	4501                	li	a0,0
    80006a9c:	4481                	li	s1,0
    80006a9e:	17ca                	slli	a5,a5,0x32
    80006aa0:	15fd                	addi	a1,a1,-1
    80006aa2:	46c1                	li	a3,16
    80006aa4:	be21                	j	800065bc <__subtf3+0x2f6>
    80006aa6:	4781                	li	a5,0
    80006aa8:	4501                	li	a0,0
    80006aaa:	4581                	li	a1,0
    80006aac:	b7e9                	j	80006a76 <__subtf3+0x7b0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 43)
    80006aae:	e489                	bnez	s1,80006ab8 <__subtf3+0x7f2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 55)
    80006ab0:	00850713          	addi	a4,a0,8
    80006ab4:	bec9                	j	80006686 <__subtf3+0x3c0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 42)
    80006ab6:	fced                	bnez	s1,80006ab0 <__subtf3+0x7ea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    80006ab8:	aa0816e3          	bnez	a6,80006564 <__subtf3+0x29e>
    80006abc:	b601                	j	800065bc <__subtf3+0x2f6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 65)
    80006abe:	4501                	li	a0,0
    80006ac0:	cc09                	beqz	s0,80006ada <__subtf3+0x814>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 68)
    80006ac2:	478d                	li	a5,3
    80006ac4:	00f41763          	bne	s0,a5,80006ad2 <__subtf3+0x80c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 69)
    80006ac8:	c889                	beqz	s1,80006ada <__subtf3+0x814>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47
    80006aca:	557d                	li	a0,-1
    80006acc:	ffe70593          	addi	a1,a4,-2 # 7ffe <asinh-0x7fff8002>
    80006ad0:	a029                	j	80006ada <__subtf3+0x814>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 72)
    80006ad2:	4789                	li	a5,2
    80006ad4:	fef41be3          	bne	s0,a5,80006aca <__subtf3+0x804>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 73)
    80006ad8:	d8ed                	beqz	s1,80006aca <__subtf3+0x804>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:47 (discriminator 78)
    80006ada:	0056e693          	ori	a3,a3,5
    80006ade:	87aa                	mv	a5,a0
    80006ae0:	bce5                	j	800065d8 <__subtf3+0x312>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:37
    80006ae2:	4681                	li	a3,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/subtf3.c:46
    80006ae4:	e71e91e3          	bne	t4,a7,80006946 <__subtf3+0x680>
    80006ae8:	b589                	j	8000692a <__subtf3+0x664>
    80006aea:	4681                	li	a3,0
    80006aec:	ab1e9be3          	bne	t4,a7,800065a2 <__subtf3+0x2dc>
    80006af0:	bc49                	j	80006582 <__subtf3+0x2bc>

0000000080006af2 <__floatsitf>:
__floatsitf():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:37
    80006af2:	1101                	addi	sp,sp,-32
    80006af4:	ec06                	sd	ra,24(sp)
    80006af6:	e822                	sd	s0,16(sp)
    80006af8:	e426                	sd	s1,8(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:41
    80006afa:	c521                	beqz	a0,80006b42 <__floatsitf+0x50>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:41 (discriminator 1)
    80006afc:	0005079b          	sext.w	a5,a0
    80006b00:	03f55493          	srli	s1,a0,0x3f
    80006b04:	00055463          	bgez	a0,80006b0c <__floatsitf+0x1a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:41 (discriminator 3)
    80006b08:	40f007bb          	negw	a5,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:41 (discriminator 9)
    80006b0c:	02079413          	slli	s0,a5,0x20
    80006b10:	9001                	srli	s0,s0,0x20
    80006b12:	8522                	mv	a0,s0
    80006b14:	b82fd0ef          	jal	ra,80003e96 <__clzdi2>
    80006b18:	6591                	lui	a1,0x4
    80006b1a:	03e5859b          	addiw	a1,a1,62
    80006b1e:	ff15079b          	addiw	a5,a0,-15
    80006b22:	9d89                	subw	a1,a1,a0
    80006b24:	00f417b3          	sll	a5,s0,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:45 (discriminator 126)
    80006b28:	60e2                	ld	ra,24(sp)
    80006b2a:	6442                	ld	s0,16(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:42 (discriminator 126)
    80006b2c:	00f4949b          	slliw	s1,s1,0xf
    80006b30:	8dc5                	or	a1,a1,s1
    80006b32:	07c2                	slli	a5,a5,0x10
    80006b34:	15c2                	slli	a1,a1,0x30
    80006b36:	83c1                	srli	a5,a5,0x10
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:45 (discriminator 126)
    80006b38:	64a2                	ld	s1,8(sp)
    80006b3a:	4501                	li	a0,0
    80006b3c:	8ddd                	or	a1,a1,a5
    80006b3e:	6105                	addi	sp,sp,32
    80006b40:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatsitf.c:41
    80006b42:	4781                	li	a5,0
    80006b44:	4581                	li	a1,0
    80006b46:	4481                	li	s1,0
    80006b48:	b7c5                	j	80006b28 <__floatsitf+0x36>

0000000080006b4a <__floatunsitf>:
__floatunsitf():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatunsitf.c:37
    80006b4a:	1141                	addi	sp,sp,-16
    80006b4c:	e406                	sd	ra,8(sp)
    80006b4e:	e022                	sd	s0,0(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatunsitf.c:41
    80006b50:	c51d                	beqz	a0,80006b7e <__floatunsitf+0x34>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatunsitf.c:41 (discriminator 9)
    80006b52:	02051413          	slli	s0,a0,0x20
    80006b56:	9001                	srli	s0,s0,0x20
    80006b58:	8522                	mv	a0,s0
    80006b5a:	b3cfd0ef          	jal	ra,80003e96 <__clzdi2>
    80006b5e:	6591                	lui	a1,0x4
    80006b60:	03e5859b          	addiw	a1,a1,62
    80006b64:	9d89                	subw	a1,a1,a0
    80006b66:	3545                	addiw	a0,a0,-15
    80006b68:	00a41433          	sll	s0,s0,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatunsitf.c:42 (discriminator 126)
    80006b6c:	0442                	slli	s0,s0,0x10
    80006b6e:	8041                	srli	s0,s0,0x10
    80006b70:	15c2                	slli	a1,a1,0x30
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatunsitf.c:45 (discriminator 126)
    80006b72:	60a2                	ld	ra,8(sp)
    80006b74:	8dc1                	or	a1,a1,s0
    80006b76:	6402                	ld	s0,0(sp)
    80006b78:	4501                	li	a0,0
    80006b7a:	0141                	addi	sp,sp,16
    80006b7c:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatunsitf.c:41
    80006b7e:	4401                	li	s0,0
    80006b80:	4581                	li	a1,0
    80006b82:	b7ed                	j	80006b6c <__floatunsitf+0x22>

0000000080006b84 <__floatditf>:
__floatditf():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:37
    80006b84:	872a                	mv	a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41
    80006b86:	c535                	beqz	a0,80006bf2 <__floatditf+0x6e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41 (discriminator 1)
    80006b88:	43f55793          	srai	a5,a0,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:37 (discriminator 1)
    80006b8c:	1101                	addi	sp,sp,-32
    80006b8e:	e822                	sd	s0,16(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41 (discriminator 1)
    80006b90:	00a7c433          	xor	s0,a5,a0
    80006b94:	8c1d                	sub	s0,s0,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:37 (discriminator 1)
    80006b96:	e426                	sd	s1,8(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41 (discriminator 1)
    80006b98:	03f55493          	srli	s1,a0,0x3f
    80006b9c:	8522                	mv	a0,s0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:37 (discriminator 1)
    80006b9e:	ec06                	sd	ra,24(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41 (discriminator 1)
    80006ba0:	af6fd0ef          	jal	ra,80003e96 <__clzdi2>
    80006ba4:	6591                	lui	a1,0x4
    80006ba6:	03e5859b          	addiw	a1,a1,62
    80006baa:	6791                	lui	a5,0x4
    80006bac:	9d89                	subw	a1,a1,a0
    80006bae:	06f78793          	addi	a5,a5,111 # 406f <asinh-0x7fffbf91>
    80006bb2:	8f8d                	sub	a5,a5,a1
    80006bb4:	03f00713          	li	a4,63
    80006bb8:	02f74763          	blt	a4,a5,80006be6 <__floatditf+0x62>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41 (discriminator 23)
    80006bbc:	47bd                	li	a5,15
    80006bbe:	9f89                	subw	a5,a5,a0
    80006bc0:	0315051b          	addiw	a0,a0,49
    80006bc4:	00f457b3          	srl	a5,s0,a5
    80006bc8:	00a41533          	sll	a0,s0,a0
    80006bcc:	8726                	mv	a4,s1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:45 (discriminator 126)
    80006bce:	60e2                	ld	ra,24(sp)
    80006bd0:	6442                	ld	s0,16(sp)
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:42 (discriminator 126)
    80006bd2:	00f7171b          	slliw	a4,a4,0xf
    80006bd6:	07c2                	slli	a5,a5,0x10
    80006bd8:	8dd9                	or	a1,a1,a4
    80006bda:	15c2                	slli	a1,a1,0x30
    80006bdc:	83c1                	srli	a5,a5,0x10
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:45 (discriminator 126)
    80006bde:	64a2                	ld	s1,8(sp)
    80006be0:	8ddd                	or	a1,a1,a5
    80006be2:	6105                	addi	sp,sp,32
    80006be4:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41 (discriminator 24)
    80006be6:	3545                	addiw	a0,a0,-15
    80006be8:	00a417b3          	sll	a5,s0,a0
    80006bec:	8726                	mv	a4,s1
    80006bee:	4501                	li	a0,0
    80006bf0:	bff9                	j	80006bce <__floatditf+0x4a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:42
    80006bf2:	00f7171b          	slliw	a4,a4,0xf
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41
    80006bf6:	4581                	li	a1,0
    80006bf8:	4781                	li	a5,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:42
    80006bfa:	8dd9                	or	a1,a1,a4
    80006bfc:	07c2                	slli	a5,a5,0x10
    80006bfe:	83c1                	srli	a5,a5,0x10
    80006c00:	15c2                	slli	a1,a1,0x30
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:41
    80006c02:	4501                	li	a0,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/floatditf.c:45
    80006c04:	8ddd                	or	a1,a1,a5
    80006c06:	8082                	ret

0000000080006c08 <__trunctfsf2>:
__trunctfsf2():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:43
    80006c08:	002028f3          	frrm	a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:44
    80006c0c:	66a1                	lui	a3,0x8
    80006c0e:	0305d813          	srli	a6,a1,0x30
    80006c12:	fff68313          	addi	t1,a3,-1 # 7fff <asinh-0x7fff8001>
    80006c16:	00687833          	and	a6,a6,t1
    80006c1a:	03f5d613          	srli	a2,a1,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006c1e:	00180793          	addi	a5,a6,1 # 8001 <asinh-0x7fff7fff>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:44
    80006c22:	05c2                	slli	a1,a1,0x10
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006c24:	16f9                	addi	a3,a3,-2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:44
    80006c26:	03d55713          	srli	a4,a0,0x3d
    80006c2a:	81b5                	srli	a1,a1,0xd
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006c2c:	8efd                	and	a3,a3,a5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:43
    80006c2e:	2881                	sext.w	a7,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:44
    80006c30:	8f4d                	or	a4,a4,a1
    80006c32:	050e                	slli	a0,a0,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006c34:	12068963          	beqz	a3,80006d66 <__trunctfsf2+0x15e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 1)
    80006c38:	77f1                	lui	a5,0xffffc
    80006c3a:	08078793          	addi	a5,a5,128 # ffffffffffffc080 <_ebss+0xffffffff7fefaf1a>
    80006c3e:	983e                	add	a6,a6,a5
    80006c40:	0fe00793          	li	a5,254
    80006c44:	0b07d063          	bge	a5,a6,80006ce4 <__trunctfsf2+0xdc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 3)
    80006c48:	04088363          	beqz	a7,80006c8e <__trunctfsf2+0x86>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 6)
    80006c4c:	478d                	li	a5,3
    80006c4e:	02f89c63          	bne	a7,a5,80006c86 <__trunctfsf2+0x7e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 7)
    80006c52:	ce15                	beqz	a2,80006c8e <__trunctfsf2+0x86>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006c54:	57fd                	li	a5,-1
    80006c56:	0fe00813          	li	a6,254
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50
    80006c5a:	4701                	li	a4,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006c5c:	4695                	li	a3,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 37)
    80006c5e:	4589                	li	a1,2
    80006c60:	0016e693          	ori	a3,a3,1
    80006c64:	14b88a63          	beq	a7,a1,80006db8 <__trunctfsf2+0x1b0>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50
    80006c68:	458d                	li	a1,3
    80006c6a:	14b88363          	beq	a7,a1,80006db0 <__trunctfsf2+0x1a8>
    80006c6e:	00089863          	bnez	a7,80006c7e <__trunctfsf2+0x76>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 40)
    80006c72:	00f7f593          	andi	a1,a5,15
    80006c76:	4511                	li	a0,4
    80006c78:	00a58363          	beq	a1,a0,80006c7e <__trunctfsf2+0x76>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 44)
    80006c7c:	0791                	addi	a5,a5,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 58)
    80006c7e:	cf01                	beqz	a4,80006c96 <__trunctfsf2+0x8e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 60)
    80006c80:	0026e693          	ori	a3,a3,2
    80006c84:	a809                	j	80006c96 <__trunctfsf2+0x8e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 10)
    80006c86:	4789                	li	a5,2
    80006c88:	fcf896e3          	bne	a7,a5,80006c54 <__trunctfsf2+0x4c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 11)
    80006c8c:	d661                	beqz	a2,80006c54 <__trunctfsf2+0x4c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006c8e:	4781                	li	a5,0
    80006c90:	0ff00813          	li	a6,255
    80006c94:	4695                	li	a3,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 62)
    80006c96:	04000737          	lui	a4,0x4000
    80006c9a:	8f7d                	and	a4,a4,a5
    80006c9c:	cb11                	beqz	a4,80006cb0 <__trunctfsf2+0xa8>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 63)
    80006c9e:	0805                	addi	a6,a6,1
    80006ca0:	0ff00713          	li	a4,255
    80006ca4:	10e80d63          	beq	a6,a4,80006dbe <__trunctfsf2+0x1b6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50
    80006ca8:	fc000737          	lui	a4,0xfc000
    80006cac:	177d                	addi	a4,a4,-1
    80006cae:	8ff9                	and	a5,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 79)
    80006cb0:	0ff00713          	li	a4,255
    80006cb4:	838d                	srli	a5,a5,0x3
    80006cb6:	00e81663          	bne	a6,a4,80006cc2 <__trunctfsf2+0xba>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 80)
    80006cba:	c781                	beqz	a5,80006cc2 <__trunctfsf2+0xba>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50
    80006cbc:	004007b7          	lui	a5,0x400
    80006cc0:	4601                	li	a2,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 90)
    80006cc2:	0ff87813          	zext.b	a6,a6
    80006cc6:	17a6                	slli	a5,a5,0x29
    80006cc8:	0178181b          	slliw	a6,a6,0x17
    80006ccc:	93a5                	srli	a5,a5,0x29
    80006cce:	0107e7b3          	or	a5,a5,a6
    80006cd2:	01f6161b          	slliw	a2,a2,0x1f
    80006cd6:	8fd1                	or	a5,a5,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:51 (discriminator 90)
    80006cd8:	c299                	beqz	a3,80006cde <__trunctfsf2+0xd6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:51 (discriminator 1)
    80006cda:	0016a073          	csrs	fflags,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:54
    80006cde:	f0078553          	fmv.w.x	fa0,a5
    80006ce2:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 4)
    80006ce4:	07004163          	bgtz	a6,80006d46 <__trunctfsf2+0x13e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 17)
    80006ce8:	56a5                	li	a3,-23
    80006cea:	4785                	li	a5,1
    80006cec:	02d84263          	blt	a6,a3,80006d10 <__trunctfsf2+0x108>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 20)
    80006cf0:	17ce                	slli	a5,a5,0x33
    80006cf2:	8f5d                	or	a4,a4,a5
    80006cf4:	0268069b          	addiw	a3,a6,38
    80006cf8:	00d716b3          	sll	a3,a4,a3
    80006cfc:	47e9                	li	a5,26
    80006cfe:	410787bb          	subw	a5,a5,a6
    80006d02:	8d55                	or	a0,a0,a3
    80006d04:	00a03533          	snez	a0,a0
    80006d08:	00f75733          	srl	a4,a4,a5
    80006d0c:	00a767b3          	or	a5,a4,a0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50
    80006d10:	00179713          	slli	a4,a5,0x1
    80006d14:	00777593          	andi	a1,a4,7
    80006d18:	4681                	li	a3,0
    80006d1a:	c185                	beqz	a1,80006d3a <__trunctfsf2+0x132>
    80006d1c:	4689                	li	a3,2
    80006d1e:	08d88363          	beq	a7,a3,80006da4 <__trunctfsf2+0x19c>
    80006d22:	468d                	li	a3,3
    80006d24:	06d88c63          	beq	a7,a3,80006d9c <__trunctfsf2+0x194>
    80006d28:	4685                	li	a3,1
    80006d2a:	00089863          	bnez	a7,80006d3a <__trunctfsf2+0x132>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 16)
    80006d2e:	00f77593          	andi	a1,a4,15
    80006d32:	4511                	li	a0,4
    80006d34:	00a58363          	beq	a1,a0,80006d3a <__trunctfsf2+0x132>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 20)
    80006d38:	0711                	addi	a4,a4,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 23)
    80006d3a:	836d                	srli	a4,a4,0x1b
    80006d3c:	00174713          	xori	a4,a4,1
    80006d40:	8b05                	andi	a4,a4,1
    80006d42:	4801                	li	a6,0
    80006d44:	a811                	j	80006d58 <__trunctfsf2+0x150>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 18)
    80006d46:	02771793          	slli	a5,a4,0x27
    80006d4a:	8fc9                	or	a5,a5,a0
    80006d4c:	8365                	srli	a4,a4,0x19
    80006d4e:	00f037b3          	snez	a5,a5
    80006d52:	8fd9                	or	a5,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:38 (discriminator 18)
    80006d54:	4681                	li	a3,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 18)
    80006d56:	4701                	li	a4,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 36)
    80006d58:	0077f593          	andi	a1,a5,7
    80006d5c:	f189                	bnez	a1,80006c5e <__trunctfsf2+0x56>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 47)
    80006d5e:	df05                	beqz	a4,80006c96 <__trunctfsf2+0x8e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 58)
    80006d60:	0016f713          	andi	a4,a3,1
    80006d64:	bf29                	j	80006c7e <__trunctfsf2+0x76>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 2)
    80006d66:	00a767b3          	or	a5,a4,a0
    80006d6a:	00081563          	bnez	a6,80006d74 <__trunctfsf2+0x16c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 42)
    80006d6e:	e78d                	bnez	a5,80006d98 <__trunctfsf2+0x190>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:38
    80006d70:	4681                	li	a3,0
    80006d72:	b715                	j	80006c96 <__trunctfsf2+0x8e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 39)
    80006d74:	cb9d                	beqz	a5,80006daa <__trunctfsf2+0x1a2>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:38 (discriminator 48)
    80006d76:	4681                	li	a3,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 48)
    80006d78:	00681763          	bne	a6,t1,80006d86 <__trunctfsf2+0x17e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 52)
    80006d7c:	03275693          	srli	a3,a4,0x32
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:38 (discriminator 52)
    80006d80:	0016b693          	seqz	a3,a3
    80006d84:	0692                	slli	a3,a3,0x4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48 (discriminator 56)
    80006d86:	8365                	srli	a4,a4,0x19
    80006d88:	9b61                	andi	a4,a4,-8
    80006d8a:	020007b7          	lui	a5,0x2000
    80006d8e:	8fd9                	or	a5,a5,a4
    80006d90:	0ff00813          	li	a6,255
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 56)
    80006d94:	4701                	li	a4,0
    80006d96:	b7c9                	j	80006d58 <__trunctfsf2+0x150>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006d98:	4785                	li	a5,1
    80006d9a:	bf9d                	j	80006d10 <__trunctfsf2+0x108>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 19)
    80006d9c:	4685                	li	a3,1
    80006d9e:	fe51                	bnez	a2,80006d3a <__trunctfsf2+0x132>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 31)
    80006da0:	0721                	addi	a4,a4,8
    80006da2:	bf61                	j	80006d3a <__trunctfsf2+0x132>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 18)
    80006da4:	4685                	li	a3,1
    80006da6:	da51                	beqz	a2,80006d3a <__trunctfsf2+0x132>
    80006da8:	bfe5                	j	80006da0 <__trunctfsf2+0x198>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:48
    80006daa:	0ff00813          	li	a6,255
    80006dae:	b7c9                	j	80006d70 <__trunctfsf2+0x168>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 43)
    80006db0:	ec0617e3          	bnez	a2,80006c7e <__trunctfsf2+0x76>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 55)
    80006db4:	07a1                	addi	a5,a5,8
    80006db6:	b5e1                	j	80006c7e <__trunctfsf2+0x76>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 42)
    80006db8:	ec0603e3          	beqz	a2,80006c7e <__trunctfsf2+0x76>
    80006dbc:	bfe5                	j	80006db4 <__trunctfsf2+0x1ac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 65)
    80006dbe:	4781                	li	a5,0
    80006dc0:	00088e63          	beqz	a7,80006ddc <__trunctfsf2+0x1d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 68)
    80006dc4:	470d                	li	a4,3
    80006dc6:	00e89763          	bne	a7,a4,80006dd4 <__trunctfsf2+0x1cc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 69)
    80006dca:	ca09                	beqz	a2,80006ddc <__trunctfsf2+0x1d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50
    80006dcc:	57fd                	li	a5,-1
    80006dce:	0fe00813          	li	a6,254
    80006dd2:	a029                	j	80006ddc <__trunctfsf2+0x1d4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 72)
    80006dd4:	4709                	li	a4,2
    80006dd6:	fee89be3          	bne	a7,a4,80006dcc <__trunctfsf2+0x1c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 73)
    80006dda:	da6d                	beqz	a2,80006dcc <__trunctfsf2+0x1c4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfsf2.c:50 (discriminator 78)
    80006ddc:	0056e693          	ori	a3,a3,5
    80006de0:	bdc1                	j	80006cb0 <__trunctfsf2+0xa8>

0000000080006de2 <__trunctfdf2>:
__trunctfdf2():
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:43
    80006de2:	00202873          	frrm	a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:44
    80006de6:	6321                	lui	t1,0x8
    80006de8:	0305d713          	srli	a4,a1,0x30
    80006dec:	fff30e13          	addi	t3,t1,-1 # 7fff <asinh-0x7fff8001>
    80006df0:	01c77633          	and	a2,a4,t3
    80006df4:	03f5d693          	srli	a3,a1,0x3f
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006df8:	00160793          	addi	a5,a2,1 # 8001 <asinh-0x7fff7fff>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:44
    80006dfc:	05c2                	slli	a1,a1,0x10
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006dfe:	1379                	addi	t1,t1,-2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:44
    80006e00:	81b5                	srli	a1,a1,0xd
    80006e02:	03d55713          	srli	a4,a0,0x3d
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006e06:	0067f333          	and	t1,a5,t1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:43
    80006e0a:	2801                	sext.w	a6,a6
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:44
    80006e0c:	8f4d                	or	a4,a4,a1
    80006e0e:	00351e93          	slli	t4,a0,0x3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006e12:	16030f63          	beqz	t1,80006f90 <__trunctfdf2+0x1ae>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 1)
    80006e16:	77f1                	lui	a5,0xffffc
    80006e18:	40078793          	addi	a5,a5,1024 # ffffffffffffc400 <_ebss+0xffffffff7fefb29a>
    80006e1c:	963e                	add	a2,a2,a5
    80006e1e:	7fe00793          	li	a5,2046
    80006e22:	08c7de63          	bge	a5,a2,80006ebe <__trunctfdf2+0xdc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 3)
    80006e26:	04080363          	beqz	a6,80006e6c <__trunctfdf2+0x8a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 6)
    80006e2a:	478d                	li	a5,3
    80006e2c:	02f81c63          	bne	a6,a5,80006e64 <__trunctfdf2+0x82>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 7)
    80006e30:	ce95                	beqz	a3,80006e6c <__trunctfdf2+0x8a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006e32:	57fd                	li	a5,-1
    80006e34:	7fe00613          	li	a2,2046
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50
    80006e38:	4701                	li	a4,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006e3a:	4895                	li	a7,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 37)
    80006e3c:	4589                	li	a1,2
    80006e3e:	0018e893          	ori	a7,a7,1
    80006e42:	1ab80163          	beq	a6,a1,80006fe4 <__trunctfdf2+0x202>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50
    80006e46:	458d                	li	a1,3
    80006e48:	18b80a63          	beq	a6,a1,80006fdc <__trunctfdf2+0x1fa>
    80006e4c:	00081863          	bnez	a6,80006e5c <__trunctfdf2+0x7a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 40)
    80006e50:	00f7f593          	andi	a1,a5,15
    80006e54:	4511                	li	a0,4
    80006e56:	00a58363          	beq	a1,a0,80006e5c <__trunctfdf2+0x7a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 44)
    80006e5a:	0791                	addi	a5,a5,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 58)
    80006e5c:	cf01                	beqz	a4,80006e74 <__trunctfdf2+0x92>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 60)
    80006e5e:	0028e893          	ori	a7,a7,2
    80006e62:	a809                	j	80006e74 <__trunctfdf2+0x92>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 10)
    80006e64:	4789                	li	a5,2
    80006e66:	fcf816e3          	bne	a6,a5,80006e32 <__trunctfdf2+0x50>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 11)
    80006e6a:	d6e1                	beqz	a3,80006e32 <__trunctfdf2+0x50>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006e6c:	4781                	li	a5,0
    80006e6e:	7ff00613          	li	a2,2047
    80006e72:	4895                	li	a7,5
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 62)
    80006e74:	0377d713          	srli	a4,a5,0x37
    80006e78:	8b05                	andi	a4,a4,1
    80006e7a:	cb11                	beqz	a4,80006e8e <__trunctfdf2+0xac>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 63)
    80006e7c:	0605                	addi	a2,a2,1
    80006e7e:	7ff00713          	li	a4,2047
    80006e82:	16e60463          	beq	a2,a4,80006fea <__trunctfdf2+0x208>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50
    80006e86:	55fd                	li	a1,-1
    80006e88:	15de                	slli	a1,a1,0x37
    80006e8a:	15fd                	addi	a1,a1,-1
    80006e8c:	8fed                	and	a5,a5,a1
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 79)
    80006e8e:	7ff00713          	li	a4,2047
    80006e92:	838d                	srli	a5,a5,0x3
    80006e94:	00e61663          	bne	a2,a4,80006ea0 <__trunctfdf2+0xbe>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 80)
    80006e98:	c781                	beqz	a5,80006ea0 <__trunctfdf2+0xbe>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50
    80006e9a:	4785                	li	a5,1
    80006e9c:	17ce                	slli	a5,a5,0x33
    80006e9e:	4681                	li	a3,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 90)
    80006ea0:	7ff67713          	andi	a4,a2,2047
    80006ea4:	07b2                	slli	a5,a5,0xc
    80006ea6:	1752                	slli	a4,a4,0x34
    80006ea8:	83b1                	srli	a5,a5,0xc
    80006eaa:	8fd9                	or	a5,a5,a4
    80006eac:	16fe                	slli	a3,a3,0x3f
    80006eae:	8fd5                	or	a5,a5,a3
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:51 (discriminator 90)
    80006eb0:	00088463          	beqz	a7,80006eb8 <__trunctfdf2+0xd6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:51 (discriminator 1)
    80006eb4:	0018a073          	csrs	fflags,a7
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:54
    80006eb8:	f2078553          	fmv.d.x	fa0,a5
    80006ebc:	8082                	ret
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 4)
    80006ebe:	0ac04563          	bgtz	a2,80006f68 <__trunctfdf2+0x186>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 17)
    80006ec2:	fcc00793          	li	a5,-52
    80006ec6:	10f64063          	blt	a2,a5,80006fc6 <__trunctfdf2+0x1e4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 20)
    80006eca:	4785                	li	a5,1
    80006ecc:	17ce                	slli	a5,a5,0x33
    80006ece:	03d00e13          	li	t3,61
    80006ed2:	8f5d                	or	a4,a4,a5
    80006ed4:	40ce0e33          	sub	t3,t3,a2
    80006ed8:	03f00793          	li	a5,63
    80006edc:	0006089b          	sext.w	a7,a2
    80006ee0:	05c7cf63          	blt	a5,t3,80006f3e <__trunctfdf2+0x15c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 22)
    80006ee4:	0038859b          	addiw	a1,a7,3
    80006ee8:	03d00613          	li	a2,61
    80006eec:	4116063b          	subw	a2,a2,a7
    80006ef0:	00be97b3          	sll	a5,t4,a1
    80006ef4:	00ced633          	srl	a2,t4,a2
    80006ef8:	00f037b3          	snez	a5,a5
    80006efc:	8fd1                	or	a5,a5,a2
    80006efe:	00b71733          	sll	a4,a4,a1
    80006f02:	8fd9                	or	a5,a5,a4
    80006f04:	4601                	li	a2,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 1)
    80006f06:	cbc9                	beqz	a5,80006f98 <__trunctfdf2+0x1b6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50
    80006f08:	00179713          	slli	a4,a5,0x1
    80006f0c:	00777613          	andi	a2,a4,7
    80006f10:	4881                	li	a7,0
    80006f12:	c205                	beqz	a2,80006f32 <__trunctfdf2+0x150>
    80006f14:	4609                	li	a2,2
    80006f16:	0ac80d63          	beq	a6,a2,80006fd0 <__trunctfdf2+0x1ee>
    80006f1a:	460d                	li	a2,3
    80006f1c:	4885                	li	a7,1
    80006f1e:	0ac80663          	beq	a6,a2,80006fca <__trunctfdf2+0x1e8>
    80006f22:	00081863          	bnez	a6,80006f32 <__trunctfdf2+0x150>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 16)
    80006f26:	00f77613          	andi	a2,a4,15
    80006f2a:	4591                	li	a1,4
    80006f2c:	00b60363          	beq	a2,a1,80006f32 <__trunctfdf2+0x150>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 20)
    80006f30:	0711                	addi	a4,a4,4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 23)
    80006f32:	9361                	srli	a4,a4,0x38
    80006f34:	00174713          	xori	a4,a4,1
    80006f38:	8b05                	andi	a4,a4,1
    80006f3a:	4601                	li	a2,0
    80006f3c:	a089                	j	80006f7e <__trunctfdf2+0x19c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 23)
    80006f3e:	5375                	li	t1,-3
    80006f40:	4113033b          	subw	t1,t1,a7
    80006f44:	04000793          	li	a5,64
    80006f48:	00675333          	srl	t1,a4,t1
    80006f4c:	4581                	li	a1,0
    80006f4e:	00fe0663          	beq	t3,a5,80006f5a <__trunctfdf2+0x178>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 31)
    80006f52:	0438861b          	addiw	a2,a7,67
    80006f56:	00c715b3          	sll	a1,a4,a2
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 34)
    80006f5a:	01d5e5b3          	or	a1,a1,t4
    80006f5e:	00b035b3          	snez	a1,a1
    80006f62:	00b367b3          	or	a5,t1,a1
    80006f66:	bf79                	j	80006f04 <__trunctfdf2+0x122>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 18)
    80006f68:	00751793          	slli	a5,a0,0x7
    80006f6c:	00f037b3          	snez	a5,a5
    80006f70:	03ced593          	srli	a1,t4,0x3c
    80006f74:	0712                	slli	a4,a4,0x4
    80006f76:	8fcd                	or	a5,a5,a1
    80006f78:	8fd9                	or	a5,a5,a4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:38 (discriminator 18)
    80006f7a:	4881                	li	a7,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 18)
    80006f7c:	4701                	li	a4,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 36)
    80006f7e:	0077f593          	andi	a1,a5,7
    80006f82:	ea059de3          	bnez	a1,80006e3c <__trunctfdf2+0x5a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 47)
    80006f86:	ee0707e3          	beqz	a4,80006e74 <__trunctfdf2+0x92>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 58)
    80006f8a:	0018f713          	andi	a4,a7,1
    80006f8e:	b5f9                	j	80006e5c <__trunctfdf2+0x7a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 2)
    80006f90:	01d767b3          	or	a5,a4,t4
    80006f94:	e601                	bnez	a2,80006f9c <__trunctfdf2+0x1ba>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 42)
    80006f96:	eb85                	bnez	a5,80006fc6 <__trunctfdf2+0x1e4>
    80006f98:	4881                	li	a7,0
    80006f9a:	bde9                	j	80006e74 <__trunctfdf2+0x92>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 39)
    80006f9c:	cf8d                	beqz	a5,80006fd6 <__trunctfdf2+0x1f4>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:38 (discriminator 48)
    80006f9e:	4881                	li	a7,0
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 48)
    80006fa0:	01c61763          	bne	a2,t3,80006fae <__trunctfdf2+0x1cc>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 52)
    80006fa4:	03275893          	srli	a7,a4,0x32
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:38 (discriminator 52)
    80006fa8:	0018b893          	seqz	a7,a7
    80006fac:	0892                	slli	a7,a7,0x4
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48 (discriminator 56)
    80006fae:	03ced793          	srli	a5,t4,0x3c
    80006fb2:	0712                	slli	a4,a4,0x4
    80006fb4:	8f5d                	or	a4,a4,a5
    80006fb6:	4785                	li	a5,1
    80006fb8:	9b61                	andi	a4,a4,-8
    80006fba:	17da                	slli	a5,a5,0x36
    80006fbc:	8fd9                	or	a5,a5,a4
    80006fbe:	7ff00613          	li	a2,2047
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 56)
    80006fc2:	4701                	li	a4,0
    80006fc4:	bf6d                	j	80006f7e <__trunctfdf2+0x19c>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006fc6:	4785                	li	a5,1
    80006fc8:	b781                	j	80006f08 <__trunctfdf2+0x126>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 19)
    80006fca:	f6a5                	bnez	a3,80006f32 <__trunctfdf2+0x150>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 31)
    80006fcc:	0721                	addi	a4,a4,8
    80006fce:	b795                	j	80006f32 <__trunctfdf2+0x150>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 18)
    80006fd0:	4885                	li	a7,1
    80006fd2:	d2a5                	beqz	a3,80006f32 <__trunctfdf2+0x150>
    80006fd4:	bfe5                	j	80006fcc <__trunctfdf2+0x1ea>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:48
    80006fd6:	7ff00613          	li	a2,2047
    80006fda:	bf7d                	j	80006f98 <__trunctfdf2+0x1b6>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 43)
    80006fdc:	e80690e3          	bnez	a3,80006e5c <__trunctfdf2+0x7a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 55)
    80006fe0:	07a1                	addi	a5,a5,8
    80006fe2:	bdad                	j	80006e5c <__trunctfdf2+0x7a>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 42)
    80006fe4:	e6068ce3          	beqz	a3,80006e5c <__trunctfdf2+0x7a>
    80006fe8:	bfe5                	j	80006fe0 <__trunctfdf2+0x1fe>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 65)
    80006fea:	4781                	li	a5,0
    80006fec:	00080e63          	beqz	a6,80007008 <__trunctfdf2+0x226>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 68)
    80006ff0:	470d                	li	a4,3
    80006ff2:	00e81763          	bne	a6,a4,80007000 <__trunctfdf2+0x21e>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 69)
    80006ff6:	ca89                	beqz	a3,80007008 <__trunctfdf2+0x226>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50
    80006ff8:	57fd                	li	a5,-1
    80006ffa:	7fe00613          	li	a2,2046
    80006ffe:	a029                	j	80007008 <__trunctfdf2+0x226>
/scratch/jenkins/workspace/tpp-freedom-tools/tpp01--build-binary-packages--parameterized/obj/x86_64-apple-darwin/build/riscv64-unknown-elf-gcc/build-gcc-stage2/riscv64-unknown-elf/rv64imafdc/lp64d/libgcc/../../../../../riscv-gcc/libgcc/soft-fp/trunctfdf2.c:50 (discriminator 72)
