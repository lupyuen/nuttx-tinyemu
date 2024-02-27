    80012000:	97a2                	add	a5,a5,s0
    80012002:	639c                	ld	a5,0(a5)
    80012004:	862a                	mv	a2,a0
    80012006:	86ae                	mv	a3,a1
    80012008:	8526                	mv	a0,s1
    8001200a:	01078593          	addi	a1,a5,16
    8001200e:	c31f90ef          	jal	ra,8000bc3e <set_value>
    80012012:	fffd4b03          	lbu	s6,-1(s10)
    80012016:	0005d797          	auipc	a5,0x5d
    8001201a:	e1a78793          	addi	a5,a5,-486 # 8006ee30 <dispatch_table.4>
    8001201e:	003b1713          	slli	a4,s6,0x3
    80012022:	97ba                	add	a5,a5,a4
    80012024:	639c                	ld	a5,0(a5)
    80012026:	980fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16918
        CASE(OP_set_arg2): set_value(ctx, &arg_buf[2], JS_DupValue(ctx, sp[-1])); BREAK;
    8001202a:	ff0cb503          	ld	a0,-16(s9)
    8001202e:	ff8cb583          	ld	a1,-8(s9)
    80012032:	0d05                	addi	s10,s10,1
    80012034:	be6f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012038:	f8040793          	addi	a5,s0,-128
    8001203c:	97ca                	add	a5,a5,s2
    8001203e:	7ea7b823          	sd	a0,2032(a5)
    80012042:	7eb7bc23          	sd	a1,2040(a5)
    80012046:	77fd                	lui	a5,0xfffff
    80012048:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    8001204c:	97a2                	add	a5,a5,s0
    8001204e:	639c                	ld	a5,0(a5)
    80012050:	862a                	mv	a2,a0
    80012052:	86ae                	mv	a3,a1
    80012054:	8526                	mv	a0,s1
    80012056:	02078593          	addi	a1,a5,32
    8001205a:	be5f90ef          	jal	ra,8000bc3e <set_value>
    8001205e:	fffd4b03          	lbu	s6,-1(s10)
    80012062:	0005d797          	auipc	a5,0x5d
    80012066:	dce78793          	addi	a5,a5,-562 # 8006ee30 <dispatch_table.4>
    8001206a:	003b1713          	slli	a4,s6,0x3
    8001206e:	97ba                	add	a5,a5,a4
    80012070:	639c                	ld	a5,0(a5)
    80012072:	934fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16919
        CASE(OP_set_arg3): set_value(ctx, &arg_buf[3], JS_DupValue(ctx, sp[-1])); BREAK;
    80012076:	ff0cb503          	ld	a0,-16(s9)
    8001207a:	ff8cb583          	ld	a1,-8(s9)
    8001207e:	0d05                	addi	s10,s10,1
    80012080:	b9af80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012084:	777d                	lui	a4,0xfffff
    80012086:	78070793          	addi	a5,a4,1920 # fffffffffffff780 <_ebss+0xffffffff7fefe61a>
    8001208a:	97a2                	add	a5,a5,s0
    8001208c:	e388                	sd	a0,0(a5)
    8001208e:	78870793          	addi	a5,a4,1928
    80012092:	97a2                	add	a5,a5,s0
    80012094:	e38c                	sd	a1,0(a5)
    80012096:	77fd                	lui	a5,0xfffff
    80012098:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    8001209c:	97a2                	add	a5,a5,s0
    8001209e:	639c                	ld	a5,0(a5)
    800120a0:	862a                	mv	a2,a0
    800120a2:	86ae                	mv	a3,a1
    800120a4:	8526                	mv	a0,s1
    800120a6:	03078593          	addi	a1,a5,48
    800120aa:	b95f90ef          	jal	ra,8000bc3e <set_value>
    800120ae:	fffd4b03          	lbu	s6,-1(s10)
    800120b2:	0005d797          	auipc	a5,0x5d
    800120b6:	d7e78793          	addi	a5,a5,-642 # 8006ee30 <dispatch_table.4>
    800120ba:	003b1713          	slli	a4,s6,0x3
    800120be:	97ba                	add	a5,a5,a4
    800120c0:	639c                	ld	a5,0(a5)
    800120c2:	8e4fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16920
        CASE(OP_get_var_ref0): *sp++ = JS_DupValue(ctx, *var_refs[0]->pvalue); BREAK;
    800120c6:	77fd                	lui	a5,0xfffff
    800120c8:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800120cc:	97a2                	add	a5,a5,s0
    800120ce:	639c                	ld	a5,0(a5)
    800120d0:	010c8993          	addi	s3,s9,16
    800120d4:	0d05                	addi	s10,s10,1
    800120d6:	639c                	ld	a5,0(a5)
    800120d8:	6f9c                	ld	a5,24(a5)
    800120da:	6388                	ld	a0,0(a5)
    800120dc:	678c                	ld	a1,8(a5)
    800120de:	b3cf80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800120e2:	00acb023          	sd	a0,0(s9)
    800120e6:	00bcb423          	sd	a1,8(s9)
    800120ea:	fffd4b03          	lbu	s6,-1(s10)
    800120ee:	0005d797          	auipc	a5,0x5d
    800120f2:	d4278793          	addi	a5,a5,-702 # 8006ee30 <dispatch_table.4>
    800120f6:	8cce                	mv	s9,s3
    800120f8:	003b1713          	slli	a4,s6,0x3
    800120fc:	97ba                	add	a5,a5,a4
    800120fe:	639c                	ld	a5,0(a5)
    80012100:	8a6fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16921
        CASE(OP_get_var_ref1): *sp++ = JS_DupValue(ctx, *var_refs[1]->pvalue); BREAK;
    80012104:	77fd                	lui	a5,0xfffff
    80012106:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8001210a:	97a2                	add	a5,a5,s0
    8001210c:	639c                	ld	a5,0(a5)
    8001210e:	010c8993          	addi	s3,s9,16
    80012112:	0d05                	addi	s10,s10,1
    80012114:	679c                	ld	a5,8(a5)
    80012116:	6f9c                	ld	a5,24(a5)
    80012118:	6388                	ld	a0,0(a5)
    8001211a:	678c                	ld	a1,8(a5)
    8001211c:	afef80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012120:	00acb023          	sd	a0,0(s9)
    80012124:	00bcb423          	sd	a1,8(s9)
    80012128:	fffd4b03          	lbu	s6,-1(s10)
    8001212c:	0005d797          	auipc	a5,0x5d
    80012130:	d0478793          	addi	a5,a5,-764 # 8006ee30 <dispatch_table.4>
    80012134:	8cce                	mv	s9,s3
    80012136:	003b1713          	slli	a4,s6,0x3
    8001213a:	97ba                	add	a5,a5,a4
    8001213c:	639c                	ld	a5,0(a5)
    8001213e:	868fd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16922
        CASE(OP_get_var_ref2): *sp++ = JS_DupValue(ctx, *var_refs[2]->pvalue); BREAK;
    80012142:	77fd                	lui	a5,0xfffff
    80012144:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    80012148:	97a2                	add	a5,a5,s0
    8001214a:	639c                	ld	a5,0(a5)
    8001214c:	010c8993          	addi	s3,s9,16
    80012150:	0d05                	addi	s10,s10,1
    80012152:	6b9c                	ld	a5,16(a5)
    80012154:	6f9c                	ld	a5,24(a5)
    80012156:	6388                	ld	a0,0(a5)
    80012158:	678c                	ld	a1,8(a5)
    8001215a:	ac0f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001215e:	00acb023          	sd	a0,0(s9)
    80012162:	00bcb423          	sd	a1,8(s9)
    80012166:	fffd4b03          	lbu	s6,-1(s10)
    8001216a:	0005d797          	auipc	a5,0x5d
    8001216e:	cc678793          	addi	a5,a5,-826 # 8006ee30 <dispatch_table.4>
    80012172:	8cce                	mv	s9,s3
    80012174:	003b1713          	slli	a4,s6,0x3
    80012178:	97ba                	add	a5,a5,a4
    8001217a:	639c                	ld	a5,0(a5)
    8001217c:	82afd06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16923
        CASE(OP_get_var_ref3): *sp++ = JS_DupValue(ctx, *var_refs[3]->pvalue); BREAK;
    80012180:	77fd                	lui	a5,0xfffff
    80012182:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    80012186:	97a2                	add	a5,a5,s0
    80012188:	639c                	ld	a5,0(a5)
    8001218a:	010c8993          	addi	s3,s9,16
    8001218e:	0d05                	addi	s10,s10,1
    80012190:	6f9c                	ld	a5,24(a5)
    80012192:	6f9c                	ld	a5,24(a5)
    80012194:	6388                	ld	a0,0(a5)
    80012196:	678c                	ld	a1,8(a5)
    80012198:	a82f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001219c:	00acb023          	sd	a0,0(s9)
    800121a0:	00bcb423          	sd	a1,8(s9)
    800121a4:	fffd4b03          	lbu	s6,-1(s10)
    800121a8:	0005d797          	auipc	a5,0x5d
    800121ac:	c8878793          	addi	a5,a5,-888 # 8006ee30 <dispatch_table.4>
    800121b0:	8cce                	mv	s9,s3
    800121b2:	003b1713          	slli	a4,s6,0x3
    800121b6:	97ba                	add	a5,a5,a4
    800121b8:	639c                	ld	a5,0(a5)
    800121ba:	fedfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16924
        CASE(OP_put_var_ref0): set_value(ctx, var_refs[0]->pvalue, *--sp); BREAK;
    800121be:	77fd                	lui	a5,0xfffff
    800121c0:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800121c4:	97a2                	add	a5,a5,s0
    800121c6:	639c                	ld	a5,0(a5)
    800121c8:	ff0cb603          	ld	a2,-16(s9)
    800121cc:	ff8cb683          	ld	a3,-8(s9)
    800121d0:	639c                	ld	a5,0(a5)
    800121d2:	8526                	mv	a0,s1
    800121d4:	1cc1                	addi	s9,s9,-16
    800121d6:	6f8c                	ld	a1,24(a5)
    800121d8:	0d05                	addi	s10,s10,1
    800121da:	a65f90ef          	jal	ra,8000bc3e <set_value>
    800121de:	fffd4b03          	lbu	s6,-1(s10)
    800121e2:	0005d797          	auipc	a5,0x5d
    800121e6:	c4e78793          	addi	a5,a5,-946 # 8006ee30 <dispatch_table.4>
    800121ea:	003b1713          	slli	a4,s6,0x3
    800121ee:	97ba                	add	a5,a5,a4
    800121f0:	639c                	ld	a5,0(a5)
    800121f2:	fb5fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16925
        CASE(OP_put_var_ref1): set_value(ctx, var_refs[1]->pvalue, *--sp); BREAK;
    800121f6:	77fd                	lui	a5,0xfffff
    800121f8:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800121fc:	97a2                	add	a5,a5,s0
    800121fe:	639c                	ld	a5,0(a5)
    80012200:	ff0cb603          	ld	a2,-16(s9)
    80012204:	ff8cb683          	ld	a3,-8(s9)
    80012208:	679c                	ld	a5,8(a5)
    8001220a:	8526                	mv	a0,s1
    8001220c:	1cc1                	addi	s9,s9,-16
    8001220e:	6f8c                	ld	a1,24(a5)
    80012210:	0d05                	addi	s10,s10,1
    80012212:	a2df90ef          	jal	ra,8000bc3e <set_value>
    80012216:	fffd4b03          	lbu	s6,-1(s10)
    8001221a:	0005d797          	auipc	a5,0x5d
    8001221e:	c1678793          	addi	a5,a5,-1002 # 8006ee30 <dispatch_table.4>
    80012222:	003b1713          	slli	a4,s6,0x3
    80012226:	97ba                	add	a5,a5,a4
    80012228:	639c                	ld	a5,0(a5)
    8001222a:	f7dfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16926
        CASE(OP_put_var_ref2): set_value(ctx, var_refs[2]->pvalue, *--sp); BREAK;
    8001222e:	77fd                	lui	a5,0xfffff
    80012230:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    80012234:	97a2                	add	a5,a5,s0
    80012236:	639c                	ld	a5,0(a5)
    80012238:	ff0cb603          	ld	a2,-16(s9)
    8001223c:	ff8cb683          	ld	a3,-8(s9)
    80012240:	6b9c                	ld	a5,16(a5)
    80012242:	8526                	mv	a0,s1
    80012244:	1cc1                	addi	s9,s9,-16
    80012246:	6f8c                	ld	a1,24(a5)
    80012248:	0d05                	addi	s10,s10,1
    8001224a:	9f5f90ef          	jal	ra,8000bc3e <set_value>
    8001224e:	fffd4b03          	lbu	s6,-1(s10)
    80012252:	0005d797          	auipc	a5,0x5d
    80012256:	bde78793          	addi	a5,a5,-1058 # 8006ee30 <dispatch_table.4>
    8001225a:	003b1713          	slli	a4,s6,0x3
    8001225e:	97ba                	add	a5,a5,a4
    80012260:	639c                	ld	a5,0(a5)
    80012262:	f45fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16927
        CASE(OP_put_var_ref3): set_value(ctx, var_refs[3]->pvalue, *--sp); BREAK;
    80012266:	77fd                	lui	a5,0xfffff
    80012268:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8001226c:	97a2                	add	a5,a5,s0
    8001226e:	639c                	ld	a5,0(a5)
    80012270:	ff0cb603          	ld	a2,-16(s9)
    80012274:	ff8cb683          	ld	a3,-8(s9)
    80012278:	6f9c                	ld	a5,24(a5)
    8001227a:	8526                	mv	a0,s1
    8001227c:	1cc1                	addi	s9,s9,-16
    8001227e:	6f8c                	ld	a1,24(a5)
    80012280:	0d05                	addi	s10,s10,1
    80012282:	9bdf90ef          	jal	ra,8000bc3e <set_value>
    80012286:	fffd4b03          	lbu	s6,-1(s10)
    8001228a:	0005d797          	auipc	a5,0x5d
    8001228e:	ba678793          	addi	a5,a5,-1114 # 8006ee30 <dispatch_table.4>
    80012292:	003b1713          	slli	a4,s6,0x3
    80012296:	97ba                	add	a5,a5,a4
    80012298:	639c                	ld	a5,0(a5)
    8001229a:	f0dfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16928
        CASE(OP_set_var_ref0): set_value(ctx, var_refs[0]->pvalue, JS_DupValue(ctx, sp[-1])); BREAK;
    8001229e:	77fd                	lui	a5,0xfffff
    800122a0:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800122a4:	97a2                	add	a5,a5,s0
    800122a6:	639c                	ld	a5,0(a5)
    800122a8:	ff0cb503          	ld	a0,-16(s9)
    800122ac:	ff8cb583          	ld	a1,-8(s9)
    800122b0:	639c                	ld	a5,0(a5)
    800122b2:	0d05                	addi	s10,s10,1
    800122b4:	0187b983          	ld	s3,24(a5)
    800122b8:	962f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800122bc:	777d                	lui	a4,0xfffff
    800122be:	79070793          	addi	a5,a4,1936 # fffffffffffff790 <_ebss+0xffffffff7fefe62a>
    800122c2:	97a2                	add	a5,a5,s0
    800122c4:	e388                	sd	a0,0(a5)
    800122c6:	79870793          	addi	a5,a4,1944
    800122ca:	97a2                	add	a5,a5,s0
    800122cc:	e38c                	sd	a1,0(a5)
    800122ce:	862a                	mv	a2,a0
    800122d0:	86ae                	mv	a3,a1
    800122d2:	8526                	mv	a0,s1
    800122d4:	85ce                	mv	a1,s3
    800122d6:	969f90ef          	jal	ra,8000bc3e <set_value>
    800122da:	fffd4b03          	lbu	s6,-1(s10)
    800122de:	0005d797          	auipc	a5,0x5d
    800122e2:	b5278793          	addi	a5,a5,-1198 # 8006ee30 <dispatch_table.4>
    800122e6:	003b1713          	slli	a4,s6,0x3
    800122ea:	97ba                	add	a5,a5,a4
    800122ec:	639c                	ld	a5,0(a5)
    800122ee:	eb9fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16929
        CASE(OP_set_var_ref1): set_value(ctx, var_refs[1]->pvalue, JS_DupValue(ctx, sp[-1])); BREAK;
    800122f2:	77fd                	lui	a5,0xfffff
    800122f4:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800122f8:	97a2                	add	a5,a5,s0
    800122fa:	639c                	ld	a5,0(a5)
    800122fc:	ff0cb503          	ld	a0,-16(s9)
    80012300:	ff8cb583          	ld	a1,-8(s9)
    80012304:	679c                	ld	a5,8(a5)
    80012306:	0d05                	addi	s10,s10,1
    80012308:	0187b983          	ld	s3,24(a5)
    8001230c:	90ef80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012310:	777d                	lui	a4,0xfffff
    80012312:	7a070793          	addi	a5,a4,1952 # fffffffffffff7a0 <_ebss+0xffffffff7fefe63a>
    80012316:	97a2                	add	a5,a5,s0
    80012318:	e388                	sd	a0,0(a5)
    8001231a:	7a870793          	addi	a5,a4,1960
    8001231e:	97a2                	add	a5,a5,s0
    80012320:	e38c                	sd	a1,0(a5)
    80012322:	862a                	mv	a2,a0
    80012324:	86ae                	mv	a3,a1
    80012326:	8526                	mv	a0,s1
    80012328:	85ce                	mv	a1,s3
    8001232a:	915f90ef          	jal	ra,8000bc3e <set_value>
    8001232e:	fffd4b03          	lbu	s6,-1(s10)
    80012332:	0005d797          	auipc	a5,0x5d
    80012336:	afe78793          	addi	a5,a5,-1282 # 8006ee30 <dispatch_table.4>
    8001233a:	003b1713          	slli	a4,s6,0x3
    8001233e:	97ba                	add	a5,a5,a4
    80012340:	639c                	ld	a5,0(a5)
    80012342:	e65fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16930
        CASE(OP_set_var_ref2): set_value(ctx, var_refs[2]->pvalue, JS_DupValue(ctx, sp[-1])); BREAK;
    80012346:	77fd                	lui	a5,0xfffff
    80012348:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8001234c:	97a2                	add	a5,a5,s0
    8001234e:	639c                	ld	a5,0(a5)
    80012350:	ff0cb503          	ld	a0,-16(s9)
    80012354:	ff8cb583          	ld	a1,-8(s9)
    80012358:	6b9c                	ld	a5,16(a5)
    8001235a:	0d05                	addi	s10,s10,1
    8001235c:	0187b983          	ld	s3,24(a5)
    80012360:	8baf80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012364:	777d                	lui	a4,0xfffff
    80012366:	7b070793          	addi	a5,a4,1968 # fffffffffffff7b0 <_ebss+0xffffffff7fefe64a>
    8001236a:	97a2                	add	a5,a5,s0
    8001236c:	e388                	sd	a0,0(a5)
    8001236e:	7b870793          	addi	a5,a4,1976
    80012372:	97a2                	add	a5,a5,s0
    80012374:	e38c                	sd	a1,0(a5)
    80012376:	862a                	mv	a2,a0
    80012378:	86ae                	mv	a3,a1
    8001237a:	8526                	mv	a0,s1
    8001237c:	85ce                	mv	a1,s3
    8001237e:	8c1f90ef          	jal	ra,8000bc3e <set_value>
    80012382:	fffd4b03          	lbu	s6,-1(s10)
    80012386:	0005d797          	auipc	a5,0x5d
    8001238a:	aaa78793          	addi	a5,a5,-1366 # 8006ee30 <dispatch_table.4>
    8001238e:	003b1713          	slli	a4,s6,0x3
    80012392:	97ba                	add	a5,a5,a4
    80012394:	639c                	ld	a5,0(a5)
    80012396:	e11fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16931
        CASE(OP_set_var_ref3): set_value(ctx, var_refs[3]->pvalue, JS_DupValue(ctx, sp[-1])); BREAK;
    8001239a:	77fd                	lui	a5,0xfffff
    8001239c:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800123a0:	97a2                	add	a5,a5,s0
    800123a2:	639c                	ld	a5,0(a5)
    800123a4:	ff0cb503          	ld	a0,-16(s9)
    800123a8:	ff8cb583          	ld	a1,-8(s9)
    800123ac:	6f9c                	ld	a5,24(a5)
    800123ae:	0d05                	addi	s10,s10,1
    800123b0:	0187b983          	ld	s3,24(a5)
    800123b4:	866f80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800123b8:	777d                	lui	a4,0xfffff
    800123ba:	7c070793          	addi	a5,a4,1984 # fffffffffffff7c0 <_ebss+0xffffffff7fefe65a>
    800123be:	97a2                	add	a5,a5,s0
    800123c0:	e388                	sd	a0,0(a5)
    800123c2:	7c870793          	addi	a5,a4,1992
    800123c6:	97a2                	add	a5,a5,s0
    800123c8:	e38c                	sd	a1,0(a5)
    800123ca:	862a                	mv	a2,a0
    800123cc:	86ae                	mv	a3,a1
    800123ce:	8526                	mv	a0,s1
    800123d0:	85ce                	mv	a1,s3
    800123d2:	86df90ef          	jal	ra,8000bc3e <set_value>
    800123d6:	fffd4b03          	lbu	s6,-1(s10)
    800123da:	0005d797          	auipc	a5,0x5d
    800123de:	a5678793          	addi	a5,a5,-1450 # 8006ee30 <dispatch_table.4>
    800123e2:	003b1713          	slli	a4,s6,0x3
    800123e6:	97ba                	add	a5,a5,a4
    800123e8:	639c                	ld	a5,0(a5)
    800123ea:	dbdfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    800123ee:	001d4783          	lbu	a5,1(s10)
    800123f2:	000d4703          	lbu	a4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16942
                sp++;
    800123f6:	0cc1                	addi	s9,s9,16
get_u16():
quickjs-nuttx/cutils.h:185
    800123f8:	07a2                	slli	a5,a5,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16940
                val = *var_refs[idx]->pvalue;
    800123fa:	8fd9                	or	a5,a5,a4
    800123fc:	777d                	lui	a4,0xfffff
    800123fe:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    80012402:	9722                	add	a4,a4,s0
    80012404:	6318                	ld	a4,0(a4)
    80012406:	078e                	slli	a5,a5,0x3
quickjs-nuttx/quickjs.c:16944
            BREAK;
    80012408:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16940
                val = *var_refs[idx]->pvalue;
    8001240a:	97ba                	add	a5,a5,a4
    8001240c:	639c                	ld	a5,0(a5)
    8001240e:	6f9c                	ld	a5,24(a5)
    80012410:	6388                	ld	a0,0(a5)
    80012412:	eea43823          	sd	a0,-272(s0)
    80012416:	678c                	ld	a1,8(a5)
    80012418:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:16941
                sp[0] = JS_DupValue(ctx, val);
    8001241c:	ffff70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012420:	feacb823          	sd	a0,-16(s9)
    80012424:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:16944
            BREAK;
    80012428:	fffd4b03          	lbu	s6,-1(s10)
    8001242c:	0005d797          	auipc	a5,0x5d
    80012430:	a0478793          	addi	a5,a5,-1532 # 8006ee30 <dispatch_table.4>
    80012434:	003b1713          	slli	a4,s6,0x3
    80012438:	97ba                	add	a5,a5,a4
    8001243a:	639c                	ld	a5,0(a5)
    8001243c:	d6bfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80012440:	001d4783          	lbu	a5,1(s10)
    80012444:	000d4703          	lbu	a4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16950
                set_value(ctx, var_refs[idx]->pvalue, sp[-1]);
    80012448:	ff0cb603          	ld	a2,-16(s9)
get_u16():
quickjs-nuttx/cutils.h:185
    8001244c:	07a2                	slli	a5,a5,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16950
    8001244e:	8fd9                	or	a5,a5,a4
    80012450:	777d                	lui	a4,0xfffff
    80012452:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    80012456:	9722                	add	a4,a4,s0
    80012458:	6318                	ld	a4,0(a4)
    8001245a:	078e                	slli	a5,a5,0x3
    8001245c:	ff8cb683          	ld	a3,-8(s9)
    80012460:	97ba                	add	a5,a5,a4
    80012462:	639c                	ld	a5,0(a5)
    80012464:	8526                	mv	a0,s1
    80012466:	1cc1                	addi	s9,s9,-16
    80012468:	6f8c                	ld	a1,24(a5)
quickjs-nuttx/quickjs.c:16953
            BREAK;
    8001246a:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16950
                set_value(ctx, var_refs[idx]->pvalue, sp[-1]);
    8001246c:	fd2f90ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:16953
            BREAK;
    80012470:	fffd4b03          	lbu	s6,-1(s10)
    80012474:	0005d797          	auipc	a5,0x5d
    80012478:	9bc78793          	addi	a5,a5,-1604 # 8006ee30 <dispatch_table.4>
    8001247c:	003b1713          	slli	a4,s6,0x3
    80012480:	97ba                	add	a5,a5,a4
    80012482:	639c                	ld	a5,0(a5)
    80012484:	d23fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80012488:	001d4783          	lbu	a5,1(s10)
    8001248c:	000d4703          	lbu	a4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16959
                set_value(ctx, var_refs[idx]->pvalue, JS_DupValue(ctx, sp[-1]));
    80012490:	ff0cb503          	ld	a0,-16(s9)
get_u16():
quickjs-nuttx/cutils.h:185
    80012494:	07a2                	slli	a5,a5,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:16959
    80012496:	8fd9                	or	a5,a5,a4
    80012498:	777d                	lui	a4,0xfffff
    8001249a:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8001249e:	9722                	add	a4,a4,s0
    800124a0:	6318                	ld	a4,0(a4)
    800124a2:	078e                	slli	a5,a5,0x3
    800124a4:	ff8cb583          	ld	a1,-8(s9)
    800124a8:	97ba                	add	a5,a5,a4
    800124aa:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16961
            BREAK;
    800124ac:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16959
                set_value(ctx, var_refs[idx]->pvalue, JS_DupValue(ctx, sp[-1]));
    800124ae:	0187b983          	ld	s3,24(a5)
    800124b2:	f69f70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800124b6:	777d                	lui	a4,0xfffff
    800124b8:	7d070793          	addi	a5,a4,2000 # fffffffffffff7d0 <_ebss+0xffffffff7fefe66a>
    800124bc:	97a2                	add	a5,a5,s0
    800124be:	e388                	sd	a0,0(a5)
    800124c0:	7d870793          	addi	a5,a4,2008
    800124c4:	97a2                	add	a5,a5,s0
    800124c6:	e38c                	sd	a1,0(a5)
    800124c8:	862a                	mv	a2,a0
    800124ca:	86ae                	mv	a3,a1
    800124cc:	8526                	mv	a0,s1
    800124ce:	85ce                	mv	a1,s3
    800124d0:	f6ef90ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:16961
            BREAK;
    800124d4:	fffd4b03          	lbu	s6,-1(s10)
    800124d8:	0005d797          	auipc	a5,0x5d
    800124dc:	95878793          	addi	a5,a5,-1704 # 8006ee30 <dispatch_table.4>
    800124e0:	003b1713          	slli	a4,s6,0x3
    800124e4:	97ba                	add	a5,a5,a4
    800124e6:	639c                	ld	a5,0(a5)
    800124e8:	cbffc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    800124ec:	001d4603          	lbu	a2,1(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16968
                val = *var_refs[idx]->pvalue;
    800124f0:	777d                	lui	a4,0xfffff
get_u16():
quickjs-nuttx/cutils.h:185
    800124f2:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16968
    800124f6:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800124fa:	9722                	add	a4,a4,s0
    800124fc:	6318                	ld	a4,0(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    800124fe:	0622                	slli	a2,a2,0x8
    80012500:	8e5d                	or	a2,a2,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16968
    80012502:	00361793          	slli	a5,a2,0x3
    80012506:	97ba                	add	a5,a5,a4
    80012508:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16967
                pc += 2;
    8001250a:	002d0993          	addi	s3,s10,2
quickjs-nuttx/quickjs.c:16968
                val = *var_refs[idx]->pvalue;
    8001250e:	6f9c                	ld	a5,24(a5)
    80012510:	6388                	ld	a0,0(a5)
    80012512:	eea43823          	sd	a0,-272(s0)
    80012516:	678c                	ld	a1,8(a5)
    80012518:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:16969
                if (unlikely(JS_IsUninitialized(val))) {
    8001251c:	4798                	lw	a4,8(a5)
    8001251e:	4791                	li	a5,4
    80012520:	00f71a63          	bne	a4,a5,80012534 <JS_CallInternal+0x35c6>
quickjs-nuttx/quickjs.c:16970
                    JS_ThrowReferenceErrorUninitialized2(ctx, b, idx, TRUE);
    80012524:	4685                	li	a3,1
    80012526:	85ee                	mv	a1,s11
    80012528:	8526                	mv	a0,s1
    8001252a:	354070ef          	jal	ra,8001987e <JS_ThrowReferenceErrorUninitialized2>
quickjs-nuttx/quickjs.c:16967
                pc += 2;
    8001252e:	8d4e                	mv	s10,s3
    80012530:	acefd06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16973
                sp[0] = JS_DupValue(ctx, val);
    80012534:	ee7f70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012538:	00acb023          	sd	a0,0(s9)
    8001253c:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16976
            BREAK;
    80012540:	002d4b03          	lbu	s6,2(s10)
    80012544:	0005d797          	auipc	a5,0x5d
    80012548:	8ec78793          	addi	a5,a5,-1812 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16974
                sp++;
    8001254c:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16976
            BREAK;
    8001254e:	003b1713          	slli	a4,s6,0x3
    80012552:	97ba                	add	a5,a5,a4
    80012554:	639c                	ld	a5,0(a5)
    80012556:	0d0d                	addi	s10,s10,3
    80012558:	c4ffc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    8001255c:	001d4603          	lbu	a2,1(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16982
                if (unlikely(JS_IsUninitialized(*var_refs[idx]->pvalue))) {
    80012560:	777d                	lui	a4,0xfffff
get_u16():
quickjs-nuttx/cutils.h:185
    80012562:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16982
    80012566:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8001256a:	9722                	add	a4,a4,s0
    8001256c:	6318                	ld	a4,0(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    8001256e:	0622                	slli	a2,a2,0x8
    80012570:	8e5d                	or	a2,a2,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16982
    80012572:	00361793          	slli	a5,a2,0x3
    80012576:	97ba                	add	a5,a5,a4
    80012578:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16981
                pc += 2;
    8001257a:	002d0993          	addi	s3,s10,2
quickjs-nuttx/quickjs.c:16982
                if (unlikely(JS_IsUninitialized(*var_refs[idx]->pvalue))) {
    8001257e:	6f8c                	ld	a1,24(a5)
    80012580:	4791                	li	a5,4
    80012582:	4598                	lw	a4,8(a1)
    80012584:	00f71a63          	bne	a4,a5,80012598 <JS_CallInternal+0x362a>
quickjs-nuttx/quickjs.c:16983
                    JS_ThrowReferenceErrorUninitialized2(ctx, b, idx, TRUE);
    80012588:	4685                	li	a3,1
    8001258a:	85ee                	mv	a1,s11
    8001258c:	8526                	mv	a0,s1
    8001258e:	2f0070ef          	jal	ra,8001987e <JS_ThrowReferenceErrorUninitialized2>
quickjs-nuttx/quickjs.c:16981
                pc += 2;
    80012592:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:16984
                    goto exception;
    80012594:	a6afd06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16986
                set_value(ctx, var_refs[idx]->pvalue, sp[-1]);
    80012598:	ff0cb603          	ld	a2,-16(s9)
    8001259c:	ff8cb683          	ld	a3,-8(s9)
    800125a0:	8526                	mv	a0,s1
    800125a2:	1cc1                	addi	s9,s9,-16
    800125a4:	e9af90ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:16989
            BREAK;
    800125a8:	002d4b03          	lbu	s6,2(s10)
    800125ac:	0005d797          	auipc	a5,0x5d
    800125b0:	88478793          	addi	a5,a5,-1916 # 8006ee30 <dispatch_table.4>
    800125b4:	0d0d                	addi	s10,s10,3
    800125b6:	003b1713          	slli	a4,s6,0x3
    800125ba:	97ba                	add	a5,a5,a4
    800125bc:	639c                	ld	a5,0(a5)
    800125be:	be9fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    800125c2:	001d4603          	lbu	a2,1(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16995
                if (unlikely(!JS_IsUninitialized(*var_refs[idx]->pvalue))) {
    800125c6:	777d                	lui	a4,0xfffff
get_u16():
quickjs-nuttx/cutils.h:185
    800125c8:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16995
    800125cc:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    800125d0:	9722                	add	a4,a4,s0
    800125d2:	6318                	ld	a4,0(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    800125d4:	0622                	slli	a2,a2,0x8
    800125d6:	8e5d                	or	a2,a2,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16995
    800125d8:	00361793          	slli	a5,a2,0x3
    800125dc:	97ba                	add	a5,a5,a4
    800125de:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16994
                pc += 2;
    800125e0:	002d0993          	addi	s3,s10,2
quickjs-nuttx/quickjs.c:16995
                if (unlikely(!JS_IsUninitialized(*var_refs[idx]->pvalue))) {
    800125e4:	6f8c                	ld	a1,24(a5)
    800125e6:	4791                	li	a5,4
    800125e8:	4598                	lw	a4,8(a1)
    800125ea:	00f70a63          	beq	a4,a5,800125fe <JS_CallInternal+0x3690>
quickjs-nuttx/quickjs.c:16996
                    JS_ThrowReferenceErrorUninitialized2(ctx, b, idx, TRUE);
    800125ee:	4685                	li	a3,1
    800125f0:	85ee                	mv	a1,s11
    800125f2:	8526                	mv	a0,s1
    800125f4:	28a070ef          	jal	ra,8001987e <JS_ThrowReferenceErrorUninitialized2>
quickjs-nuttx/quickjs.c:16994
                pc += 2;
    800125f8:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:16997
                    goto exception;
    800125fa:	a04fd06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16999
                set_value(ctx, var_refs[idx]->pvalue, sp[-1]);
    800125fe:	ff0cb603          	ld	a2,-16(s9)
    80012602:	ff8cb683          	ld	a3,-8(s9)
    80012606:	8526                	mv	a0,s1
    80012608:	1cc1                	addi	s9,s9,-16
    8001260a:	e34f90ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:17002
            BREAK;
    8001260e:	002d4b03          	lbu	s6,2(s10)
    80012612:	0005d797          	auipc	a5,0x5d
    80012616:	81e78793          	addi	a5,a5,-2018 # 8006ee30 <dispatch_table.4>
    8001261a:	0d0d                	addi	s10,s10,3
    8001261c:	003b1713          	slli	a4,s6,0x3
    80012620:	97ba                	add	a5,a5,a4
    80012622:	639c                	ld	a5,0(a5)
    80012624:	b83fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80012628:	001d4583          	lbu	a1,1(s10)
    8001262c:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17008
                set_value(ctx, &var_buf[idx], JS_UNINITIALIZED);
    80012630:	4601                	li	a2,0
get_u16():
quickjs-nuttx/cutils.h:185
    80012632:	05a2                	slli	a1,a1,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:17008
    80012634:	8ddd                	or	a1,a1,a5
    80012636:	4791                	li	a5,4
    80012638:	eef43c23          	sd	a5,-264(s0)
    8001263c:	77fd                	lui	a5,0xfffff
    8001263e:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80012642:	97a2                	add	a5,a5,s0
    80012644:	639c                	ld	a5,0(a5)
    80012646:	0592                	slli	a1,a1,0x4
    80012648:	4691                	li	a3,4
    8001264a:	95be                	add	a1,a1,a5
    8001264c:	8526                	mv	a0,s1
    8001264e:	ee043823          	sd	zero,-272(s0)
    80012652:	decf90ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:17010
            BREAK;
    80012656:	002d4b03          	lbu	s6,2(s10)
    8001265a:	0005c797          	auipc	a5,0x5c
    8001265e:	7d678793          	addi	a5,a5,2006 # 8006ee30 <dispatch_table.4>
    80012662:	0d0d                	addi	s10,s10,3
    80012664:	003b1713          	slli	a4,s6,0x3
    80012668:	97ba                	add	a5,a5,a4
    8001266a:	639c                	ld	a5,0(a5)
    8001266c:	b3bfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80012670:	001d4603          	lbu	a2,1(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17016
                if (unlikely(JS_IsUninitialized(var_buf[idx]))) {
    80012674:	777d                	lui	a4,0xfffff
get_u16():
quickjs-nuttx/cutils.h:185
    80012676:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17016
    8001267a:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8001267e:	9722                	add	a4,a4,s0
    80012680:	6318                	ld	a4,0(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    80012682:	0622                	slli	a2,a2,0x8
    80012684:	8e5d                	or	a2,a2,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17016
    80012686:	00461793          	slli	a5,a2,0x4
    8001268a:	97ba                	add	a5,a5,a4
JS_IsUninitialized():
quickjs-nuttx/quickjs.h:615
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_UNINITIALIZED);
    8001268c:	678c                	ld	a1,8(a5)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17016
    8001268e:	4711                	li	a4,4
quickjs-nuttx/quickjs.c:17015
                pc += 2;
    80012690:	002d0993          	addi	s3,s10,2
quickjs-nuttx/quickjs.c:17016
                if (unlikely(JS_IsUninitialized(var_buf[idx]))) {
    80012694:	0005869b          	sext.w	a3,a1
    80012698:	00e69a63          	bne	a3,a4,800126ac <JS_CallInternal+0x373e>
quickjs-nuttx/quickjs.c:17017
                    JS_ThrowReferenceErrorUninitialized2(ctx, b, idx, FALSE);
    8001269c:	4681                	li	a3,0
    8001269e:	85ee                	mv	a1,s11
    800126a0:	8526                	mv	a0,s1
    800126a2:	1dc070ef          	jal	ra,8001987e <JS_ThrowReferenceErrorUninitialized2>
quickjs-nuttx/quickjs.c:17015
                pc += 2;
    800126a6:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:17018
                    goto exception;
    800126a8:	956fd06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17020
                sp[0] = JS_DupValue(ctx, var_buf[idx]);
    800126ac:	6388                	ld	a0,0(a5)
quickjs-nuttx/quickjs.c:17021
                sp++;
    800126ae:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:17023
            BREAK;
    800126b0:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:17020
                sp[0] = JS_DupValue(ctx, var_buf[idx]);
    800126b2:	d69f70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800126b6:	feacb823          	sd	a0,-16(s9)
    800126ba:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:17023
            BREAK;
    800126be:	fffd4b03          	lbu	s6,-1(s10)
    800126c2:	0005c797          	auipc	a5,0x5c
    800126c6:	76e78793          	addi	a5,a5,1902 # 8006ee30 <dispatch_table.4>
    800126ca:	003b1713          	slli	a4,s6,0x3
    800126ce:	97ba                	add	a5,a5,a4
    800126d0:	639c                	ld	a5,0(a5)
    800126d2:	ad5fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    800126d6:	001d4603          	lbu	a2,1(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17029
                if (unlikely(JS_IsUninitialized(var_buf[idx]))) {
    800126da:	777d                	lui	a4,0xfffff
get_u16():
quickjs-nuttx/cutils.h:185
    800126dc:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17029
    800126e0:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    800126e4:	9722                	add	a4,a4,s0
    800126e6:	6318                	ld	a4,0(a4)
get_u16():
quickjs-nuttx/cutils.h:185
    800126e8:	0622                	slli	a2,a2,0x8
    800126ea:	8e5d                	or	a2,a2,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17029
    800126ec:	00461793          	slli	a5,a2,0x4
    800126f0:	97ba                	add	a5,a5,a4
JS_IsUninitialized():
quickjs-nuttx/quickjs.h:615
    800126f2:	678c                	ld	a1,8(a5)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17029
    800126f4:	4711                	li	a4,4
quickjs-nuttx/quickjs.c:17028
                pc += 2;
    800126f6:	002d0993          	addi	s3,s10,2
quickjs-nuttx/quickjs.c:17029
                if (unlikely(JS_IsUninitialized(var_buf[idx]))) {
    800126fa:	0005869b          	sext.w	a3,a1
    800126fe:	00e69e63          	bne	a3,a4,8001271a <JS_CallInternal+0x37ac>
quickjs-nuttx/quickjs.c:17030
                    JS_ThrowReferenceErrorUninitialized2(caller_ctx, b, idx, FALSE);
    80012702:	77fd                	lui	a5,0xfffff
    80012704:	62078793          	addi	a5,a5,1568 # fffffffffffff620 <_ebss+0xffffffff7fefe4ba>
    80012708:	97a2                	add	a5,a5,s0
    8001270a:	6388                	ld	a0,0(a5)
    8001270c:	4681                	li	a3,0
    8001270e:	85ee                	mv	a1,s11
    80012710:	16e070ef          	jal	ra,8001987e <JS_ThrowReferenceErrorUninitialized2>
quickjs-nuttx/quickjs.c:17028
                pc += 2;
    80012714:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:17031
                    goto exception;
    80012716:	8e8fd06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17033
                sp[0] = JS_DupValue(ctx, var_buf[idx]);
    8001271a:	6388                	ld	a0,0(a5)
quickjs-nuttx/quickjs.c:17034
                sp++;
    8001271c:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:17036
            BREAK;
    8001271e:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:17033
                sp[0] = JS_DupValue(ctx, var_buf[idx]);
    80012720:	cfbf70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012724:	feacb823          	sd	a0,-16(s9)
    80012728:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:17036
            BREAK;
    8001272c:	fffd4b03          	lbu	s6,-1(s10)
    80012730:	0005c797          	auipc	a5,0x5c
    80012734:	70078793          	addi	a5,a5,1792 # 8006ee30 <dispatch_table.4>
    80012738:	003b1713          	slli	a4,s6,0x3
    8001273c:	97ba                	add	a5,a5,a4
    8001273e:	639c                	ld	a5,0(a5)
    80012740:	a67fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    80012744:	001d4603          	lbu	a2,1(s10)
    80012748:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17041
                pc += 2;
    8001274c:	002d0993          	addi	s3,s10,2
get_u16():
quickjs-nuttx/cutils.h:185
    80012750:	0622                	slli	a2,a2,0x8
    80012752:	8e5d                	or	a2,a2,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17042
                if (unlikely(JS_IsUninitialized(var_buf[idx]))) {
    80012754:	77fd                	lui	a5,0xfffff
    80012756:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8001275a:	97a2                	add	a5,a5,s0
    8001275c:	639c                	ld	a5,0(a5)
    8001275e:	00461593          	slli	a1,a2,0x4
    80012762:	95be                	add	a1,a1,a5
    80012764:	4598                	lw	a4,8(a1)
    80012766:	4791                	li	a5,4
    80012768:	00f71a63          	bne	a4,a5,8001277c <JS_CallInternal+0x380e>
quickjs-nuttx/quickjs.c:17043
                    JS_ThrowReferenceErrorUninitialized2(ctx, b, idx, FALSE);
    8001276c:	4681                	li	a3,0
    8001276e:	85ee                	mv	a1,s11
    80012770:	8526                	mv	a0,s1
    80012772:	10c070ef          	jal	ra,8001987e <JS_ThrowReferenceErrorUninitialized2>
quickjs-nuttx/quickjs.c:17041
                pc += 2;
    80012776:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:17044
                    goto exception;
    80012778:	886fd06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17046
                set_value(ctx, &var_buf[idx], sp[-1]);
    8001277c:	ff0cb603          	ld	a2,-16(s9)
    80012780:	ff8cb683          	ld	a3,-8(s9)
    80012784:	8526                	mv	a0,s1
    80012786:	1cc1                	addi	s9,s9,-16
    80012788:	cb6f90ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:17049
            BREAK;
    8001278c:	002d4b03          	lbu	s6,2(s10)
    80012790:	0005c797          	auipc	a5,0x5c
    80012794:	6a078793          	addi	a5,a5,1696 # 8006ee30 <dispatch_table.4>
    80012798:	0d0d                	addi	s10,s10,3
    8001279a:	003b1713          	slli	a4,s6,0x3
    8001279e:	97ba                	add	a5,a5,a4
    800127a0:	639c                	ld	a5,0(a5)
    800127a2:	a05fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    800127a6:	001d4583          	lbu	a1,1(s10)
    800127aa:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17054
                pc += 2;
    800127ae:	002d0993          	addi	s3,s10,2
get_u16():
quickjs-nuttx/cutils.h:185
    800127b2:	05a2                	slli	a1,a1,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:17055
                if (unlikely(!JS_IsUninitialized(var_buf[idx]))) {
    800127b4:	8ddd                	or	a1,a1,a5
    800127b6:	77fd                	lui	a5,0xfffff
    800127b8:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    800127bc:	97a2                	add	a5,a5,s0
    800127be:	639c                	ld	a5,0(a5)
    800127c0:	0592                	slli	a1,a1,0x4
    800127c2:	95be                	add	a1,a1,a5
    800127c4:	4598                	lw	a4,8(a1)
    800127c6:	4791                	li	a5,4
    800127c8:	00f70c63          	beq	a4,a5,800127e0 <JS_CallInternal+0x3872>
quickjs-nuttx/quickjs.c:17056
                    JS_ThrowReferenceError(ctx, "'this' can be initialized only once");
    800127cc:	00057597          	auipc	a1,0x57
    800127d0:	5ac58593          	addi	a1,a1,1452 # 80069d78 <qjsc_repl+0x47c8>
    800127d4:	8526                	mv	a0,s1
    800127d6:	04c070ef          	jal	ra,80019822 <JS_ThrowReferenceError>
quickjs-nuttx/quickjs.c:17054
                pc += 2;
    800127da:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:17057
                    goto exception;
    800127dc:	822fd06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17059
                set_value(ctx, &var_buf[idx], sp[-1]);
    800127e0:	ff0cb603          	ld	a2,-16(s9)
    800127e4:	ff8cb683          	ld	a3,-8(s9)
    800127e8:	8526                	mv	a0,s1
    800127ea:	1cc1                	addi	s9,s9,-16
    800127ec:	c52f90ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:17062
            BREAK;
    800127f0:	002d4b03          	lbu	s6,2(s10)
    800127f4:	0005c797          	auipc	a5,0x5c
    800127f8:	63c78793          	addi	a5,a5,1596 # 8006ee30 <dispatch_table.4>
    800127fc:	0d0d                	addi	s10,s10,3
    800127fe:	003b1713          	slli	a4,s6,0x3
    80012802:	97ba                	add	a5,a5,a4
    80012804:	639c                	ld	a5,0(a5)
    80012806:	9a1fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    8001280a:	001d4983          	lbu	s3,1(s10)
    8001280e:	000d4783          	lbu	a5,0(s10)
    80012812:	09a2                	slli	s3,s3,0x8
    80012814:	00f9e9b3          	or	s3,s3,a5
close_lexical_var():
quickjs-nuttx/quickjs.c:15829
    list_for_each_safe(el, el1, &sf->var_ref_list) {
    80012818:	77fd                	lui	a5,0xfffff
    8001281a:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8001281e:	97a2                	add	a5,a5,s0
    80012820:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:15835
            var_ref->value = JS_DupValue(ctx, sf->var_buf[var_idx]);
    80012822:	00499b13          	slli	s6,s3,0x4
quickjs-nuttx/quickjs.c:15831
        if (var_idx == var_ref->var_idx && var_ref->is_arg == is_arg) {
    80012826:	2981                	sext.w	s3,s3
quickjs-nuttx/quickjs.c:15829
    list_for_each_safe(el, el1, &sf->var_ref_list) {
    80012828:	0307bb83          	ld	s7,48(a5)
    8001282c:	77fd                	lui	a5,0xfffff
    8001282e:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80012832:	97a2                	add	a5,a5,s0
    80012834:	639c                	ld	a5,0(a5)
    80012836:	008bba03          	ld	s4,8(s7)
    8001283a:	02878a93          	addi	s5,a5,40
    8001283e:	015b9f63          	bne	s7,s5,8001285c <JS_CallInternal+0x38ee>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17070
            BREAK;
    80012842:	002d4b03          	lbu	s6,2(s10)
    80012846:	0005c797          	auipc	a5,0x5c
    8001284a:	5ea78793          	addi	a5,a5,1514 # 8006ee30 <dispatch_table.4>
    8001284e:	0d0d                	addi	s10,s10,3
    80012850:	003b1713          	slli	a4,s6,0x3
    80012854:	97ba                	add	a5,a5,a4
    80012856:	639c                	ld	a5,0(a5)
    80012858:	94ffc06f          	j	8000f1a6 <JS_CallInternal+0x238>
close_lexical_var():
quickjs-nuttx/quickjs.c:15831
        if (var_idx == var_ref->var_idx && var_ref->is_arg == is_arg) {
    8001285c:	fe6bd783          	lhu	a5,-26(s7)
    80012860:	05379763          	bne	a5,s3,800128ae <JS_CallInternal+0x3940>
    80012864:	fe0bb783          	ld	a5,-32(s7)
    80012868:	93a5                	srli	a5,a5,0x29
    8001286a:	8b85                	andi	a5,a5,1
    8001286c:	e3a9                	bnez	a5,800128ae <JS_CallInternal+0x3940>
quickjs-nuttx/quickjs.c:15832
            list_del(&var_ref->var_ref_link);
    8001286e:	855e                	mv	a0,s7
    80012870:	ad4f50ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:15833
            if (var_ref->async_func)
    80012874:	010bb583          	ld	a1,16(s7)
    80012878:	c581                	beqz	a1,80012880 <JS_CallInternal+0x3912>
quickjs-nuttx/quickjs.c:15834
                async_func_free(ctx->rt, var_ref->async_func);
    8001287a:	6c88                	ld	a0,24(s1)
    8001287c:	8f5f90ef          	jal	ra,8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:15835
            var_ref->value = JS_DupValue(ctx, sf->var_buf[var_idx]);
    80012880:	77fd                	lui	a5,0xfffff
    80012882:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80012886:	97a2                	add	a5,a5,s0
    80012888:	639c                	ld	a5,0(a5)
    8001288a:	739c                	ld	a5,32(a5)
    8001288c:	97da                	add	a5,a5,s6
    8001288e:	6388                	ld	a0,0(a5)
    80012890:	678c                	ld	a1,8(a5)
    80012892:	b89f70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:15838
            var_ref->is_detached = TRUE;
    80012896:	fe5bc783          	lbu	a5,-27(s7)
quickjs-nuttx/quickjs.c:15835
            var_ref->value = JS_DupValue(ctx, sf->var_buf[var_idx]);
    8001289a:	00abb023          	sd	a0,0(s7)
    8001289e:	00bbb423          	sd	a1,8(s7)
quickjs-nuttx/quickjs.c:15838
            var_ref->is_detached = TRUE;
    800128a2:	0017e793          	ori	a5,a5,1
quickjs-nuttx/quickjs.c:15836
            var_ref->pvalue = &var_ref->value;
    800128a6:	ff7bbc23          	sd	s7,-8(s7)
quickjs-nuttx/quickjs.c:15838
            var_ref->is_detached = TRUE;
    800128aa:	fefb82a3          	sb	a5,-27(s7)
quickjs-nuttx/quickjs.c:15829
    list_for_each_safe(el, el1, &sf->var_ref_list) {
    800128ae:	8bd2                	mv	s7,s4
    800128b0:	008a3a03          	ld	s4,8(s4)
    800128b4:	b769                	j	8001283e <JS_CallInternal+0x38d0>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    800128b6:	001d4783          	lbu	a5,1(s10)
    800128ba:	000d4983          	lbu	s3,0(s10)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    800128be:	005d4b83          	lbu	s7,5(s10)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    800128c2:	07a2                	slli	a5,a5,0x8
    800128c4:	0137e7b3          	or	a5,a5,s3
    800128c8:	002d4983          	lbu	s3,2(s10)
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    800128cc:	0ba2                	slli	s7,s7,0x8
JS_CallInternal():
quickjs-nuttx/quickjs.c:17083
                *sp++ = JS_NewObjectProto(ctx, JS_NULL);
    800128ce:	4581                	li	a1,0
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    800128d0:	09c2                	slli	s3,s3,0x10
    800128d2:	00f9e7b3          	or	a5,s3,a5
    800128d6:	003d4983          	lbu	s3,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17083
    800128da:	4609                	li	a2,2
    800128dc:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    800128de:	09e2                	slli	s3,s3,0x18
    800128e0:	00f9e9b3          	or	s3,s3,a5
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    800128e4:	004d4783          	lbu	a5,4(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17083
    800128e8:	ee043823          	sd	zero,-272(s0)
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    800128ec:	2981                	sext.w	s3,s3
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    800128ee:	00fbebb3          	or	s7,s7,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:17083
    800128f2:	4789                	li	a5,2
    800128f4:	eef43c23          	sd	a5,-264(s0)
    800128f8:	6d2090ef          	jal	ra,8001bfca <JS_NewObjectProto>
    800128fc:	00bcb423          	sd	a1,8(s9)
    80012900:	00acb023          	sd	a0,0(s9)
quickjs-nuttx/quickjs.c:17084
                if (unlikely(JS_IsException(sp[-1])))
    80012904:	2581                	sext.w	a1,a1
    80012906:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:17082
                pc += 6;
    80012908:	006d0a93          	addi	s5,s10,6
quickjs-nuttx/quickjs.c:17083
                *sp++ = JS_NewObjectProto(ctx, JS_NULL);
    8001290c:	010c8a13          	addi	s4,s9,16
quickjs-nuttx/quickjs.c:17084
                if (unlikely(JS_IsException(sp[-1])))
    80012910:	06f58663          	beq	a1,a5,8001297c <JS_CallInternal+0x3a0e>
quickjs-nuttx/quickjs.c:17086
                if (opcode == OP_make_var_ref_ref) {
    80012914:	07c00793          	li	a5,124
    80012918:	04fb1363          	bne	s6,a5,8001295e <JS_CallInternal+0x39f0>
quickjs-nuttx/quickjs.c:17087
                    var_ref = var_refs[idx];
    8001291c:	77fd                	lui	a5,0xfffff
    8001291e:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    80012922:	97a2                	add	a5,a5,s0
    80012924:	639c                	ld	a5,0(a5)
    80012926:	0b8e                	slli	s7,s7,0x3
    80012928:	9bbe                	add	s7,s7,a5
    8001292a:	000bbb03          	ld	s6,0(s7)
quickjs-nuttx/quickjs.c:17088
                    var_ref->header.ref_count++;
    8001292e:	000b2783          	lw	a5,0(s6)
    80012932:	2785                	addiw	a5,a5,1
    80012934:	00fb2023          	sw	a5,0(s6)
quickjs-nuttx/quickjs.c:17094
                pr = add_property(ctx, JS_VALUE_GET_OBJ(sp[-1]), atom,
    80012938:	000cb583          	ld	a1,0(s9)
    8001293c:	02200693          	li	a3,34
    80012940:	864e                	mv	a2,s3
    80012942:	8526                	mv	a0,s1
    80012944:	6df080ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:17096
                if (!pr) {
    80012948:	ed15                	bnez	a0,80012984 <JS_CallInternal+0x3a16>
quickjs-nuttx/quickjs.c:17097
                    free_var_ref(rt, var_ref);
    8001294a:	77fd                	lui	a5,0xfffff
    8001294c:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    80012950:	97a2                	add	a5,a5,s0
    80012952:	6388                	ld	a0,0(a5)
    80012954:	85da                	mv	a1,s6
    80012956:	b17f90ef          	jal	ra,8000c46c <free_var_ref>
quickjs-nuttx/quickjs.c:17098
                    goto exception;
    8001295a:	a00d                	j	8001297c <JS_CallInternal+0x3a0e>
    8001295c:	bfa9                	j	800128b6 <JS_CallInternal+0x3948>
quickjs-nuttx/quickjs.c:17090
                    var_ref = get_var_ref(ctx, sf, idx, opcode == OP_make_arg_ref);
    8001295e:	77fd                	lui	a5,0xfffff
    80012960:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80012964:	97a2                	add	a5,a5,s0
    80012966:	638c                	ld	a1,0(a5)
    80012968:	f85b0693          	addi	a3,s6,-123
    8001296c:	0016b693          	seqz	a3,a3
    80012970:	865e                	mv	a2,s7
    80012972:	8526                	mv	a0,s1
    80012974:	165070ef          	jal	ra,8001a2d8 <get_var_ref>
    80012978:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:17091
                    if (!var_ref)
    8001297a:	fd5d                	bnez	a0,80012938 <JS_CallInternal+0x39ca>
quickjs-nuttx/quickjs.c:17085 (discriminator 1)
                    goto exception;
    8001297c:	8cd2                	mv	s9,s4
    8001297e:	8d56                	mv	s10,s5
    80012980:	e7ffc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17100
                pr->u.var_ref = var_ref;
    80012984:	01653023          	sd	s6,0(a0) # 4000000 <asinh-0x7c000000>
quickjs-nuttx/quickjs.c:17101
                *sp++ = JS_AtomToValue(ctx, atom);
    80012988:	85ce                	mv	a1,s3
    8001298a:	8526                	mv	a0,s1
    8001298c:	13c0d0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80012990:	00aa3023          	sd	a0,0(s4)
    80012994:	00ba3423          	sd	a1,8(s4)
quickjs-nuttx/quickjs.c:17103
            BREAK;
    80012998:	006d4b03          	lbu	s6,6(s10)
    8001299c:	0005c797          	auipc	a5,0x5c
    800129a0:	49478793          	addi	a5,a5,1172 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17101
                *sp++ = JS_AtomToValue(ctx, atom);
    800129a4:	020c8c93          	addi	s9,s9,32
quickjs-nuttx/quickjs.c:17103
            BREAK;
    800129a8:	003b1713          	slli	a4,s6,0x3
    800129ac:	97ba                	add	a5,a5,a4
    800129ae:	639c                	ld	a5,0(a5)
    800129b0:	0d1d                	addi	s10,s10,7
    800129b2:	ff4fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    800129b6:	001d4703          	lbu	a4,1(s10)
    800129ba:	000d4783          	lbu	a5,0(s10)
JS_GetGlobalVarRef():
quickjs-nuttx/quickjs.c:9597
    p = JS_VALUE_GET_OBJ(ctx->global_var_obj);
    800129be:	1784b683          	ld	a3,376(s1)
get_u32():
quickjs-nuttx/cutils.h:170
    800129c2:	0722                	slli	a4,a4,0x8
    800129c4:	8f5d                	or	a4,a4,a5
    800129c6:	002d4783          	lbu	a5,2(s10)
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    800129ca:	040005b7          	lui	a1,0x4000
JS_CallInternal():
quickjs-nuttx/quickjs.c:17108
                pc += 4;
    800129ce:	004d0993          	addi	s3,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    800129d2:	07c2                	slli	a5,a5,0x10
    800129d4:	8f5d                	or	a4,a4,a5
    800129d6:	003d4783          	lbu	a5,3(s10)
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    800129da:	15fd                	addi	a1,a1,-1
get_u32():
quickjs-nuttx/cutils.h:170
    800129dc:	07e2                	slli	a5,a5,0x18
    800129de:	8fd9                	or	a5,a5,a4
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    800129e0:	6e98                	ld	a4,24(a3)
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    800129e2:	00078a1b          	sext.w	s4,a5
    800129e6:	5310                	lw	a2,32(a4)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    800129e8:	8ff1                	and	a5,a5,a2
    800129ea:	0785                	addi	a5,a5,1
    800129ec:	5671                	li	a2,-4
    800129ee:	02c787b3          	mul	a5,a5,a2
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    800129f2:	04070613          	addi	a2,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    800129f6:	97ba                	add	a5,a5,a4
    800129f8:	0007e783          	lwu	a5,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    800129fc:	ef91                	bnez	a5,80012a18 <JS_CallInternal+0x3aaa>
JS_GetGlobalVarRef():
quickjs-nuttx/quickjs.c:9613
        ret = JS_HasProperty(ctx, ctx->global_obj, prop);
    800129fe:	1684b583          	ld	a1,360(s1)
    80012a02:	1704b603          	ld	a2,368(s1)
    80012a06:	86d2                	mv	a3,s4
    80012a08:	8526                	mv	a0,s1
    80012a0a:	2ed250ef          	jal	ra,800384f6 <JS_HasProperty>
quickjs-nuttx/quickjs.c:9614
        if (ret < 0)
    80012a0e:	0a055563          	bgez	a0,80012ab8 <JS_CallInternal+0x3b4a>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17108
                pc += 4;
    80012a12:	8d4e                	mv	s10,s3
    80012a14:	debfc06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80012a18:	00379713          	slli	a4,a5,0x3
    80012a1c:	1761                	addi	a4,a4,-8
    80012a1e:	9732                	add	a4,a4,a2
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80012a20:	4348                	lw	a0,4(a4)
    80012a22:	02aa1163          	bne	s4,a0,80012a44 <JS_CallInternal+0x3ad6>
JS_IsUninitialized():
quickjs-nuttx/quickjs.h:615
    80012a26:	7294                	ld	a3,32(a3)
    80012a28:	0792                	slli	a5,a5,0x4
    80012a2a:	97b6                	add	a5,a5,a3
JS_GetGlobalVarRef():
quickjs-nuttx/quickjs.c:9603
        if (unlikely(JS_IsUninitialized(pr->u.value))) {
    80012a2c:	ff87a683          	lw	a3,-8(a5)
    80012a30:	4791                	li	a5,4
    80012a32:	00f69e63          	bne	a3,a5,80012a4e <JS_CallInternal+0x3ae0>
quickjs-nuttx/quickjs.c:9604
            JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    80012a36:	85d2                	mv	a1,s4
    80012a38:	8526                	mv	a0,s1
    80012a3a:	613060ef          	jal	ra,8001984c <JS_ThrowReferenceErrorUninitialized>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17108
                pc += 4;
    80012a3e:	8d4e                	mv	s10,s3
    80012a40:	dbffc06f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80012a44:	431c                	lw	a5,0(a4)
    80012a46:	8fed                	and	a5,a5,a1
    80012a48:	1782                	slli	a5,a5,0x20
    80012a4a:	9381                	srli	a5,a5,0x20
    80012a4c:	bf45                	j	800129fc <JS_CallInternal+0x3a8e>
JS_GetGlobalVarRef():
quickjs-nuttx/quickjs.c:9607
        if (unlikely(!(prs->flags & JS_PROP_WRITABLE))) {
    80012a4e:	431c                	lw	a5,0(a4)
    80012a50:	01a7d79b          	srliw	a5,a5,0x1a
    80012a54:	8b89                	andi	a5,a5,2
    80012a56:	e385                	bnez	a5,80012a76 <JS_CallInternal+0x3b08>
JS_ThrowTypeErrorReadOnly():
quickjs-nuttx/quickjs.c:6707
        JS_ThrowTypeErrorAtom(ctx, "'%s' is read-only", atom);
    80012a58:	00057697          	auipc	a3,0x57
    80012a5c:	13068693          	addi	a3,a3,304 # 80069b88 <qjsc_repl+0x45d8>
    80012a60:	00057617          	auipc	a2,0x57
    80012a64:	25860613          	addi	a2,a2,600 # 80069cb8 <qjsc_repl+0x4708>
    80012a68:	85d2                	mv	a1,s4
    80012a6a:	8526                	mv	a0,s1
    80012a6c:	4dd050ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17108
                pc += 4;
    80012a70:	8d4e                	mv	s10,s3
    80012a72:	d8dfc06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_GetGlobalVarRef():
quickjs-nuttx/quickjs.c:9610
        sp[0] = JS_DupValue(ctx, ctx->global_var_obj);
    80012a76:	1784b503          	ld	a0,376(s1)
    80012a7a:	1804b583          	ld	a1,384(s1)
quickjs-nuttx/quickjs.c:9617
            sp[0] = JS_DupValue(ctx, ctx->global_obj);
    80012a7e:	99df70ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80012a82:	00acb023          	sd	a0,0(s9)
    80012a86:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:9622
    sp[1] = JS_AtomToValue(ctx, prop);
    80012a8a:	85d2                	mv	a1,s4
    80012a8c:	8526                	mv	a0,s1
    80012a8e:	03a0d0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80012a92:	00acb823          	sd	a0,16(s9)
    80012a96:	00bcbc23          	sd	a1,24(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17114
            BREAK;
    80012a9a:	004d4b03          	lbu	s6,4(s10)
    80012a9e:	0005c797          	auipc	a5,0x5c
    80012aa2:	39278793          	addi	a5,a5,914 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17112
                sp += 2;
    80012aa6:	020c8c93          	addi	s9,s9,32
quickjs-nuttx/quickjs.c:17114
            BREAK;
    80012aaa:	003b1713          	slli	a4,s6,0x3
    80012aae:	97ba                	add	a5,a5,a4
    80012ab0:	639c                	ld	a5,0(a5)
    80012ab2:	0d15                	addi	s10,s10,5
    80012ab4:	ef2fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
JS_GetGlobalVarRef():
quickjs-nuttx/quickjs.c:9616
        if (ret) {
    80012ab8:	c511                	beqz	a0,80012ac4 <JS_CallInternal+0x3b56>
quickjs-nuttx/quickjs.c:9617
            sp[0] = JS_DupValue(ctx, ctx->global_obj);
    80012aba:	1684b503          	ld	a0,360(s1)
    80012abe:	1704b583          	ld	a1,368(s1)
    80012ac2:	bf75                	j	80012a7e <JS_CallInternal+0x3b10>
quickjs-nuttx/quickjs.c:9619
            sp[0] = JS_UNDEFINED;
    80012ac4:	478d                	li	a5,3
    80012ac6:	000cb023          	sd	zero,0(s9)
    80012aca:	00fcb423          	sd	a5,8(s9)
    80012ace:	bf75                	j	80012a8a <JS_CallInternal+0x3b1c>
get_u32():
quickjs-nuttx/cutils.h:170
    80012ad0:	001d4703          	lbu	a4,1(s10)
    80012ad4:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17118
            if (unlikely(js_poll_interrupts(ctx)))
    80012ad8:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    80012ada:	0722                	slli	a4,a4,0x8
    80012adc:	8f5d                	or	a4,a4,a5
    80012ade:	002d4783          	lbu	a5,2(s10)
    80012ae2:	07c2                	slli	a5,a5,0x10
    80012ae4:	8f5d                	or	a4,a4,a5
    80012ae6:	003d4783          	lbu	a5,3(s10)
    80012aea:	07e2                	slli	a5,a5,0x18
    80012aec:	8fd9                	or	a5,a5,a4
JS_CallInternal():
quickjs-nuttx/quickjs.c:17117
            pc += (int32_t)get_u32(pc);
    80012aee:	2781                	sext.w	a5,a5
    80012af0:	9d3e                	add	s10,s10,a5
quickjs-nuttx/quickjs.c:17118
            if (unlikely(js_poll_interrupts(ctx)))
    80012af2:	3c0070ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80012af6:	c119                	beqz	a0,80012afc <JS_CallInternal+0x3b8e>
    80012af8:	d07fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17120
            BREAK;
    80012afc:	000d4b03          	lbu	s6,0(s10)
    80012b00:	0005c797          	auipc	a5,0x5c
    80012b04:	33078793          	addi	a5,a5,816 # 8006ee30 <dispatch_table.4>
    80012b08:	0d05                	addi	s10,s10,1
    80012b0a:	003b1713          	slli	a4,s6,0x3
    80012b0e:	97ba                	add	a5,a5,a4
    80012b10:	639c                	ld	a5,0(a5)
    80012b12:	e94fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    80012b16:	001d4783          	lbu	a5,1(s10)
    80012b1a:	000d4703          	lbu	a4,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17124
            if (unlikely(js_poll_interrupts(ctx)))
    80012b1e:	8526                	mv	a0,s1
get_u16():
quickjs-nuttx/cutils.h:185
    80012b20:	07a2                	slli	a5,a5,0x8
    80012b22:	8fd9                	or	a5,a5,a4
JS_CallInternal():
quickjs-nuttx/quickjs.c:17123
            pc += (int16_t)get_u16(pc);
    80012b24:	0107979b          	slliw	a5,a5,0x10
    80012b28:	4107d79b          	sraiw	a5,a5,0x10
    80012b2c:	9d3e                	add	s10,s10,a5
quickjs-nuttx/quickjs.c:17124
            if (unlikely(js_poll_interrupts(ctx)))
    80012b2e:	384070ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80012b32:	c119                	beqz	a0,80012b38 <JS_CallInternal+0x3bca>
    80012b34:	ccbfc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17126
            BREAK;
    80012b38:	000d4b03          	lbu	s6,0(s10)
    80012b3c:	0005c797          	auipc	a5,0x5c
    80012b40:	2f478793          	addi	a5,a5,756 # 8006ee30 <dispatch_table.4>
    80012b44:	0d05                	addi	s10,s10,1
    80012b46:	003b1713          	slli	a4,s6,0x3
    80012b4a:	97ba                	add	a5,a5,a4
    80012b4c:	639c                	ld	a5,0(a5)
    80012b4e:	e58fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17128
            pc += (int8_t)pc[0];
    80012b52:	000d0783          	lb	a5,0(s10)
quickjs-nuttx/quickjs.c:17129
            if (unlikely(js_poll_interrupts(ctx)))
    80012b56:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:17128
            pc += (int8_t)pc[0];
    80012b58:	9d3e                	add	s10,s10,a5
quickjs-nuttx/quickjs.c:17129
            if (unlikely(js_poll_interrupts(ctx)))
    80012b5a:	358070ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80012b5e:	c119                	beqz	a0,80012b64 <JS_CallInternal+0x3bf6>
    80012b60:	c9ffc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17131
            BREAK;
    80012b64:	000d4b03          	lbu	s6,0(s10)
    80012b68:	0005c797          	auipc	a5,0x5c
    80012b6c:	2c878793          	addi	a5,a5,712 # 8006ee30 <dispatch_table.4>
    80012b70:	0d05                	addi	s10,s10,1
    80012b72:	003b1713          	slli	a4,s6,0x3
    80012b76:	97ba                	add	a5,a5,a4
    80012b78:	639c                	ld	a5,0(a5)
    80012b7a:	e2cfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17138
                op1 = sp[-1];
    80012b7e:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:17140
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012b82:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:17139
                pc += 4;
    80012b84:	004d0993          	addi	s3,s10,4
quickjs-nuttx/quickjs.c:17138
                op1 = sp[-1];
    80012b88:	eeb43823          	sd	a1,-272(s0)
    80012b8c:	ff8cb603          	ld	a2,-8(s9)
    80012b90:	eec43c23          	sd	a2,-264(s0)
quickjs-nuttx/quickjs.c:17140
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012b94:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:17138
                op1 = sp[-1];
    80012b98:	ff0ca503          	lw	a0,-16(s9)
quickjs-nuttx/quickjs.c:17140
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012b9c:	00e7f563          	bgeu	a5,a4,80012ba6 <JS_CallInternal+0x3c38>
quickjs-nuttx/quickjs.c:17143
                    res = JS_ToBoolFree(ctx, op1);
    80012ba0:	8526                	mv	a0,s1
    80012ba2:	f73f80ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:17145
                sp--;
    80012ba6:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17146
                if (res) {
    80012ba8:	c10d                	beqz	a0,80012bca <JS_CallInternal+0x3c5c>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80012baa:	001d4703          	lbu	a4,1(s10)
    80012bae:	000d4783          	lbu	a5,0(s10)
    80012bb2:	0722                	slli	a4,a4,0x8
    80012bb4:	8f5d                	or	a4,a4,a5
    80012bb6:	002d4783          	lbu	a5,2(s10)
    80012bba:	07c2                	slli	a5,a5,0x10
    80012bbc:	8f5d                	or	a4,a4,a5
    80012bbe:	003d4783          	lbu	a5,3(s10)
    80012bc2:	07e2                	slli	a5,a5,0x18
    80012bc4:	8fd9                	or	a5,a5,a4
JS_CallInternal():
quickjs-nuttx/quickjs.c:17147
                    pc += (int32_t)get_u32(pc - 4) - 4;
    80012bc6:	37f1                	addiw	a5,a5,-4
    80012bc8:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:17149
                if (unlikely(js_poll_interrupts(ctx)))
    80012bca:	8526                	mv	a0,s1
    80012bcc:	2e6070ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80012bd0:	c501                	beqz	a0,80012bd8 <JS_CallInternal+0x3c6a>
quickjs-nuttx/quickjs.c:17150
                    goto exception;
    80012bd2:	8d4e                	mv	s10,s3
    80012bd4:	c2bfc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17152
            BREAK;
    80012bd8:	0009cb03          	lbu	s6,0(s3)
    80012bdc:	0005c797          	auipc	a5,0x5c
    80012be0:	25478793          	addi	a5,a5,596 # 8006ee30 <dispatch_table.4>
    80012be4:	00198d13          	addi	s10,s3,1
    80012be8:	003b1713          	slli	a4,s6,0x3
    80012bec:	97ba                	add	a5,a5,a4
    80012bee:	639c                	ld	a5,0(a5)
    80012bf0:	db6fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17158
                op1 = sp[-1];
    80012bf4:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:17160
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012bf8:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:17159
                pc += 4;
    80012bfa:	004d0993          	addi	s3,s10,4
quickjs-nuttx/quickjs.c:17158
                op1 = sp[-1];
    80012bfe:	eeb43823          	sd	a1,-272(s0)
    80012c02:	ff8cb603          	ld	a2,-8(s9)
    80012c06:	eec43c23          	sd	a2,-264(s0)
quickjs-nuttx/quickjs.c:17160
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012c0a:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:17158
                op1 = sp[-1];
    80012c0e:	ff0ca503          	lw	a0,-16(s9)
quickjs-nuttx/quickjs.c:17160
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012c12:	00e7f563          	bgeu	a5,a4,80012c1c <JS_CallInternal+0x3cae>
quickjs-nuttx/quickjs.c:17163
                    res = JS_ToBoolFree(ctx, op1);
    80012c16:	8526                	mv	a0,s1
    80012c18:	efdf80ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:17165
                sp--;
    80012c1c:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17166
                if (!res) {
    80012c1e:	e10d                	bnez	a0,80012c40 <JS_CallInternal+0x3cd2>
get_u32():
quickjs-nuttx/cutils.h:170
    80012c20:	001d4703          	lbu	a4,1(s10)
    80012c24:	000d4783          	lbu	a5,0(s10)
    80012c28:	0722                	slli	a4,a4,0x8
    80012c2a:	8f5d                	or	a4,a4,a5
    80012c2c:	002d4783          	lbu	a5,2(s10)
    80012c30:	07c2                	slli	a5,a5,0x10
    80012c32:	8f5d                	or	a4,a4,a5
    80012c34:	003d4783          	lbu	a5,3(s10)
    80012c38:	07e2                	slli	a5,a5,0x18
    80012c3a:	8fd9                	or	a5,a5,a4
JS_CallInternal():
quickjs-nuttx/quickjs.c:17167
                    pc += (int32_t)get_u32(pc - 4) - 4;
    80012c3c:	37f1                	addiw	a5,a5,-4
    80012c3e:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:17169
                if (unlikely(js_poll_interrupts(ctx)))
    80012c40:	8526                	mv	a0,s1
    80012c42:	270070ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80012c46:	c501                	beqz	a0,80012c4e <JS_CallInternal+0x3ce0>
quickjs-nuttx/quickjs.c:17170
                    goto exception;
    80012c48:	8d4e                	mv	s10,s3
    80012c4a:	bb5fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17172
            BREAK;
    80012c4e:	0009cb03          	lbu	s6,0(s3)
    80012c52:	0005c797          	auipc	a5,0x5c
    80012c56:	1de78793          	addi	a5,a5,478 # 8006ee30 <dispatch_table.4>
    80012c5a:	00198d13          	addi	s10,s3,1
    80012c5e:	003b1713          	slli	a4,s6,0x3
    80012c62:	97ba                	add	a5,a5,a4
    80012c64:	639c                	ld	a5,0(a5)
    80012c66:	d40fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17179
                op1 = sp[-1];
    80012c6a:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:17181
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012c6e:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:17180
                pc += 1;
    80012c70:	001d0993          	addi	s3,s10,1
quickjs-nuttx/quickjs.c:17179
                op1 = sp[-1];
    80012c74:	eeb43823          	sd	a1,-272(s0)
    80012c78:	ff8cb603          	ld	a2,-8(s9)
    80012c7c:	eec43c23          	sd	a2,-264(s0)
quickjs-nuttx/quickjs.c:17181
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012c80:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:17179
                op1 = sp[-1];
    80012c84:	ff0ca503          	lw	a0,-16(s9)
quickjs-nuttx/quickjs.c:17181
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012c88:	00e7f563          	bgeu	a5,a4,80012c92 <JS_CallInternal+0x3d24>
quickjs-nuttx/quickjs.c:17184
                    res = JS_ToBoolFree(ctx, op1);
    80012c8c:	8526                	mv	a0,s1
    80012c8e:	e87f80ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:17186
                sp--;
    80012c92:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17187
                if (res) {
    80012c94:	c509                	beqz	a0,80012c9e <JS_CallInternal+0x3d30>
quickjs-nuttx/quickjs.c:17188
                    pc += (int8_t)pc[-1] - 1;
    80012c96:	000d0783          	lb	a5,0(s10)
    80012c9a:	37fd                	addiw	a5,a5,-1
    80012c9c:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:17190
                if (unlikely(js_poll_interrupts(ctx)))
    80012c9e:	8526                	mv	a0,s1
    80012ca0:	212070ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80012ca4:	c501                	beqz	a0,80012cac <JS_CallInternal+0x3d3e>
quickjs-nuttx/quickjs.c:17191
                    goto exception;
    80012ca6:	8d4e                	mv	s10,s3
    80012ca8:	b57fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17193
            BREAK;
    80012cac:	0009cb03          	lbu	s6,0(s3)
    80012cb0:	0005c797          	auipc	a5,0x5c
    80012cb4:	18078793          	addi	a5,a5,384 # 8006ee30 <dispatch_table.4>
    80012cb8:	00198d13          	addi	s10,s3,1
    80012cbc:	003b1713          	slli	a4,s6,0x3
    80012cc0:	97ba                	add	a5,a5,a4
    80012cc2:	639c                	ld	a5,0(a5)
    80012cc4:	ce2fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17199
                op1 = sp[-1];
    80012cc8:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:17201
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012ccc:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:17200
                pc += 1;
    80012cce:	001d0993          	addi	s3,s10,1
quickjs-nuttx/quickjs.c:17199
                op1 = sp[-1];
    80012cd2:	eeb43823          	sd	a1,-272(s0)
    80012cd6:	ff8cb603          	ld	a2,-8(s9)
    80012cda:	eec43c23          	sd	a2,-264(s0)
quickjs-nuttx/quickjs.c:17201
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012cde:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:17199
                op1 = sp[-1];
    80012ce2:	ff0ca503          	lw	a0,-16(s9)
quickjs-nuttx/quickjs.c:17201
                if ((uint32_t)JS_VALUE_GET_TAG(op1) <= JS_TAG_UNDEFINED) {
    80012ce6:	00e7f563          	bgeu	a5,a4,80012cf0 <JS_CallInternal+0x3d82>
quickjs-nuttx/quickjs.c:17204
                    res = JS_ToBoolFree(ctx, op1);
    80012cea:	8526                	mv	a0,s1
    80012cec:	e29f80ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:17206
                sp--;
    80012cf0:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17207
                if (!res) {
    80012cf2:	e509                	bnez	a0,80012cfc <JS_CallInternal+0x3d8e>
quickjs-nuttx/quickjs.c:17208
                    pc += (int8_t)pc[-1] - 1;
    80012cf4:	000d0783          	lb	a5,0(s10)
    80012cf8:	37fd                	addiw	a5,a5,-1
    80012cfa:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:17210
                if (unlikely(js_poll_interrupts(ctx)))
    80012cfc:	8526                	mv	a0,s1
    80012cfe:	1b4070ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80012d02:	c501                	beqz	a0,80012d0a <JS_CallInternal+0x3d9c>
quickjs-nuttx/quickjs.c:17211
                    goto exception;
    80012d04:	8d4e                	mv	s10,s3
    80012d06:	af9fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17213
            BREAK;
    80012d0a:	0009cb03          	lbu	s6,0(s3)
    80012d0e:	0005c797          	auipc	a5,0x5c
    80012d12:	12278793          	addi	a5,a5,290 # 8006ee30 <dispatch_table.4>
    80012d16:	00198d13          	addi	s10,s3,1
    80012d1a:	003b1713          	slli	a4,s6,0x3
    80012d1e:	97ba                	add	a5,a5,a4
    80012d20:	639c                	ld	a5,0(a5)
    80012d22:	c84fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    80012d26:	001d4703          	lbu	a4,1(s10)
    80012d2a:	000d4783          	lbu	a5,0(s10)
JS_NewCatchOffset():
quickjs-nuttx/quickjs.h:520
    return JS_MKVAL(JS_TAG_CATCH_OFFSET, val);
    80012d2e:	86042a23          	sw	zero,-1932(s0)
get_u32():
quickjs-nuttx/cutils.h:170
    80012d32:	0722                	slli	a4,a4,0x8
    80012d34:	8f5d                	or	a4,a4,a5
    80012d36:	002d4783          	lbu	a5,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17220
                sp++;
    80012d3a:	0cc1                	addi	s9,s9,16
get_u32():
quickjs-nuttx/cutils.h:170
    80012d3c:	07c2                	slli	a5,a5,0x10
    80012d3e:	8f5d                	or	a4,a4,a5
    80012d40:	003d4783          	lbu	a5,3(s10)
    80012d44:	07e2                	slli	a5,a5,0x18
    80012d46:	8fd9                	or	a5,a5,a4
JS_CallInternal():
quickjs-nuttx/quickjs.c:17219
                sp[0] = JS_NewCatchOffset(ctx, pc + diff - b->byte_code_buf);
    80012d48:	020db703          	ld	a4,32(s11)
    80012d4c:	01a787bb          	addw	a5,a5,s10
quickjs-nuttx/quickjs.c:17223
            BREAK;
    80012d50:	0d15                	addi	s10,s10,5
quickjs-nuttx/quickjs.c:17219
                sp[0] = JS_NewCatchOffset(ctx, pc + diff - b->byte_code_buf);
    80012d52:	9f99                	subw	a5,a5,a4
JS_NewCatchOffset():
quickjs-nuttx/quickjs.h:520
    80012d54:	86f42823          	sw	a5,-1936(s0)
    80012d58:	87043783          	ld	a5,-1936(s0)
    80012d5c:	4715                	li	a4,5
    80012d5e:	eee43c23          	sd	a4,-264(s0)
    80012d62:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17219
    80012d66:	fefcb823          	sd	a5,-16(s9)
    80012d6a:	ef843783          	ld	a5,-264(s0)
    80012d6e:	86e43c23          	sd	a4,-1928(s0)
    80012d72:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17223
            BREAK;
    80012d76:	fffd4b03          	lbu	s6,-1(s10)
    80012d7a:	0005c797          	auipc	a5,0x5c
    80012d7e:	0b678793          	addi	a5,a5,182 # 8006ee30 <dispatch_table.4>
    80012d82:	003b1713          	slli	a4,s6,0x3
    80012d86:	97ba                	add	a5,a5,a4
    80012d88:	639c                	ld	a5,0(a5)
    80012d8a:	c1cfc06f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    80012d8e:	001d4703          	lbu	a4,1(s10)
    80012d92:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17229
                sp[0] = JS_NewInt32(ctx, pc + 4 - b->byte_code_buf);
    80012d96:	020db683          	ld	a3,32(s11)
get_u32():
quickjs-nuttx/cutils.h:170
    80012d9a:	0722                	slli	a4,a4,0x8
    80012d9c:	8f5d                	or	a4,a4,a5
    80012d9e:	002d4783          	lbu	a5,2(s10)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80012da2:	88043023          	sd	zero,-1920(s0)
    80012da6:	88043423          	sd	zero,-1912(s0)
get_u32():
quickjs-nuttx/cutils.h:170
    80012daa:	07c2                	slli	a5,a5,0x10
    80012dac:	8f5d                	or	a4,a4,a5
    80012dae:	003d4783          	lbu	a5,3(s10)
    80012db2:	ee043c23          	sd	zero,-264(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17230
                sp++;
    80012db6:	0cc1                	addi	s9,s9,16
get_u32():
quickjs-nuttx/cutils.h:170
    80012db8:	07e2                	slli	a5,a5,0x18
    80012dba:	8fd9                	or	a5,a5,a4
JS_CallInternal():
quickjs-nuttx/quickjs.c:17229
                sp[0] = JS_NewInt32(ctx, pc + 4 - b->byte_code_buf);
    80012dbc:	004d0713          	addi	a4,s10,4
    80012dc0:	9f15                	subw	a4,a4,a3
    80012dc2:	88e42023          	sw	a4,-1920(s0)
    80012dc6:	88043703          	ld	a4,-1920(s0)
quickjs-nuttx/quickjs.c:17227
                diff = get_u32(pc);
    80012dca:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:17231
                pc += diff;
    80012dcc:	97ea                	add	a5,a5,s10
    80012dce:	eee43823          	sd	a4,-272(s0)
quickjs-nuttx/quickjs.c:17229
                sp[0] = JS_NewInt32(ctx, pc + 4 - b->byte_code_buf);
    80012dd2:	feecb823          	sd	a4,-16(s9)
    80012dd6:	ef843703          	ld	a4,-264(s0)
quickjs-nuttx/quickjs.c:17233
            BREAK;
    80012dda:	00178d13          	addi	s10,a5,1
quickjs-nuttx/quickjs.c:17229
                sp[0] = JS_NewInt32(ctx, pc + 4 - b->byte_code_buf);
    80012dde:	feecbc23          	sd	a4,-8(s9)
quickjs-nuttx/quickjs.c:17233
            BREAK;
    80012de2:	0007cb03          	lbu	s6,0(a5)
    80012de6:	0005c797          	auipc	a5,0x5c
    80012dea:	04a78793          	addi	a5,a5,74 # 8006ee30 <dispatch_table.4>
    80012dee:	003b1713          	slli	a4,s6,0x3
    80012df2:	97ba                	add	a5,a5,a4
    80012df4:	639c                	ld	a5,0(a5)
    80012df6:	bb0fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17239
                if (unlikely(JS_VALUE_GET_TAG(op1) != JS_TAG_INT))
    80012dfa:	ff8ca783          	lw	a5,-8(s9)
quickjs-nuttx/quickjs.c:17238
                op1 = sp[-1];
    80012dfe:	ff0ca703          	lw	a4,-16(s9)
quickjs-nuttx/quickjs.c:17239
                if (unlikely(JS_VALUE_GET_TAG(op1) != JS_TAG_INT))
    80012e02:	e799                	bnez	a5,80012e10 <JS_CallInternal+0x3ea2>
quickjs-nuttx/quickjs.c:17242
                if (unlikely(pos >= b->byte_code_len)) {
    80012e04:	028da683          	lw	a3,40(s11)
quickjs-nuttx/quickjs.c:17241
                pos = JS_VALUE_GET_INT(op1);
    80012e08:	0007079b          	sext.w	a5,a4
quickjs-nuttx/quickjs.c:17242
                if (unlikely(pos >= b->byte_code_len)) {
    80012e0c:	00d76b63          	bltu	a4,a3,80012e22 <JS_CallInternal+0x3eb4>
quickjs-nuttx/quickjs.c:17244
                    JS_ThrowInternalError(ctx, "invalid ret value");
    80012e10:	8526                	mv	a0,s1
    80012e12:	00057597          	auipc	a1,0x57
    80012e16:	f8e58593          	addi	a1,a1,-114 # 80069da0 <qjsc_repl+0x47f0>
    80012e1a:	2df060ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:17245
                    goto exception;
    80012e1e:	9e1fc06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17248
                pc = b->byte_code_buf + pos;
    80012e22:	02079713          	slli	a4,a5,0x20
    80012e26:	020db783          	ld	a5,32(s11)
    80012e2a:	9301                	srli	a4,a4,0x20
quickjs-nuttx/quickjs.c:17247
                sp--;
    80012e2c:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17248
                pc = b->byte_code_buf + pos;
    80012e2e:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:17250
            BREAK;
    80012e30:	0007cb03          	lbu	s6,0(a5)
    80012e34:	00178d13          	addi	s10,a5,1
    80012e38:	0005c797          	auipc	a5,0x5c
    80012e3c:	ff878793          	addi	a5,a5,-8 # 8006ee30 <dispatch_table.4>
    80012e40:	003b1713          	slli	a4,s6,0x3
    80012e44:	97ba                	add	a5,a5,a4
    80012e46:	639c                	ld	a5,0(a5)
    80012e48:	b5efc06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_for_in_start():
quickjs-nuttx/quickjs.c:14907
    sp[-1] = build_for_in_iterator(ctx, sp[-1]);
    80012e4c:	ff8cbb03          	ld	s6,-8(s9)
    80012e50:	ff0cba83          	ld	s5,-16(s9)
build_for_in_iterator():
quickjs-nuttx/quickjs.c:14851
    if (tag != JS_TAG_OBJECT && tag != JS_TAG_NULL && tag != JS_TAG_UNDEFINED) {
    80012e54:	57fd                	li	a5,-1
    80012e56:	c5643423          	sd	s6,-952(s0)
    80012e5a:	c5543023          	sd	s5,-960(s0)
quickjs-nuttx/quickjs.c:14850
    tag = JS_VALUE_GET_TAG(obj);
    80012e5e:	000b099b          	sext.w	s3,s6
js_for_in_start():
quickjs-nuttx/quickjs.c:14907
    sp[-1] = build_for_in_iterator(ctx, sp[-1]);
    80012e62:	ff0c8a13          	addi	s4,s9,-16
build_for_in_iterator():
quickjs-nuttx/quickjs.c:14851
    if (tag != JS_TAG_OBJECT && tag != JS_TAG_NULL && tag != JS_TAG_UNDEFINED) {
    80012e66:	04f98363          	beq	s3,a5,80012eac <JS_CallInternal+0x3f3e>
    80012e6a:	ffe9879b          	addiw	a5,s3,-2
    80012e6e:	4705                	li	a4,1
    80012e70:	02f77e63          	bgeu	a4,a5,80012eac <JS_CallInternal+0x3f3e>
JS_ToObjectFree():
quickjs-nuttx/quickjs.c:36999
    JSValue obj = JS_ToObject(ctx, val);
    80012e74:	865a                	mv	a2,s6
    80012e76:	85d6                	mv	a1,s5
    80012e78:	8526                	mv	a0,s1
    80012e7a:	ed543823          	sd	s5,-304(s0)
    80012e7e:	ed643c23          	sd	s6,-296(s0)
    80012e82:	2381d0ef          	jal	ra,800300ba <JS_ToObject>
    80012e86:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:37000
    JS_FreeValue(ctx, val);
    80012e8a:	ed843603          	ld	a2,-296(s0)
    80012e8e:	ed043583          	ld	a1,-304(s0)
quickjs-nuttx/quickjs.c:36999
    JSValue obj = JS_ToObject(ctx, val);
    80012e92:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:37000
    JS_FreeValue(ctx, val);
    80012e96:	8526                	mv	a0,s1
    80012e98:	907f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37001
    return obj;
    80012e9c:	ef043a83          	ld	s5,-272(s0)
    80012ea0:	ef843b03          	ld	s6,-264(s0)
    80012ea4:	c7543823          	sd	s5,-912(s0)
    80012ea8:	c7643c23          	sd	s6,-904(s0)
build_for_in_iterator():
quickjs-nuttx/quickjs.c:14855
    it = js_malloc(ctx, sizeof(*it));
    80012eac:	02800593          	li	a1,40
    80012eb0:	8526                	mv	a0,s1
    80012eb2:	252070ef          	jal	ra,8001a104 <js_malloc>
    80012eb6:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:14856
    if (!it) {
    80012eb8:	ed39                	bnez	a0,80012f16 <JS_CallInternal+0x3fa8>
quickjs-nuttx/quickjs.c:14863
        JS_FreeValue(ctx, obj);
    80012eba:	c5543023          	sd	s5,-960(s0)
    80012ebe:	c5643423          	sd	s6,-952(s0)
    80012ec2:	85d6                	mv	a1,s5
    80012ec4:	865a                	mv	a2,s6
    80012ec6:	8526                	mv	a0,s1
    80012ec8:	8d7f80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14864
        return JS_EXCEPTION;
    80012ecc:	4c19                	li	s8,6
    80012ece:	c6043023          	sd	zero,-928(s0)
    80012ed2:	c6043783          	ld	a5,-928(s0)
    80012ed6:	ef843c23          	sd	s8,-264(s0)
    80012eda:	c7843423          	sd	s8,-920(s0)
    80012ede:	eef43823          	sd	a5,-272(s0)
js_for_in_start():
quickjs-nuttx/quickjs.c:14907
    sp[-1] = build_for_in_iterator(ctx, sp[-1]);
    80012ee2:	00fa3023          	sd	a5,0(s4)
    80012ee6:	ef843783          	ld	a5,-264(s0)
    80012eea:	00fa3423          	sd	a5,8(s4)
quickjs-nuttx/quickjs.c:14908
    if (JS_IsException(sp[-1]))
    80012eee:	ff8ca703          	lw	a4,-8(s9)
    80012ef2:	4799                	li	a5,6
    80012ef4:	00f71463          	bne	a4,a5,80012efc <JS_CallInternal+0x3f8e>
    80012ef8:	907fc06f          	j	8000f7fe <JS_CallInternal+0x890>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17255
            BREAK;
    80012efc:	000d4b03          	lbu	s6,0(s10)
    80012f00:	0005c797          	auipc	a5,0x5c
    80012f04:	f3078793          	addi	a5,a5,-208 # 8006ee30 <dispatch_table.4>
    80012f08:	0d05                	addi	s10,s10,1
    80012f0a:	003b1713          	slli	a4,s6,0x3
    80012f0e:	97ba                	add	a5,a5,a4
    80012f10:	639c                	ld	a5,0(a5)
    80012f12:	a94fc06f          	j	8000f1a6 <JS_CallInternal+0x238>
build_for_in_iterator():
quickjs-nuttx/quickjs.c:14860
    enum_obj = JS_NewObjectProtoClass(ctx, JS_NULL, JS_CLASS_FOR_IN_ITERATOR);
    80012f16:	4789                	li	a5,2
    80012f18:	46c5                	li	a3,17
    80012f1a:	4581                	li	a1,0
    80012f1c:	4609                	li	a2,2
    80012f1e:	8526                	mv	a0,s1
    80012f20:	eef43c23          	sd	a5,-264(s0)
    80012f24:	ee043823          	sd	zero,-272(s0)
    80012f28:	4bd080ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    80012f2c:	c4a43823          	sd	a0,-944(s0)
    80012f30:	c4b43c23          	sd	a1,-936(s0)
quickjs-nuttx/quickjs.c:14861
    if (JS_IsException(enum_obj)) {
    80012f34:	0005871b          	sext.w	a4,a1
    80012f38:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:14860
    enum_obj = JS_NewObjectProtoClass(ctx, JS_NULL, JS_CLASS_FOR_IN_ITERATOR);
    80012f3a:	882a                	mv	a6,a0
    80012f3c:	8c2e                	mv	s8,a1
quickjs-nuttx/quickjs.c:14861
    if (JS_IsException(enum_obj)) {
    80012f3e:	00f71763          	bne	a4,a5,80012f4c <JS_CallInternal+0x3fde>
quickjs-nuttx/quickjs.c:14862
        js_free(ctx, it);
    80012f42:	85de                	mv	a1,s7
    80012f44:	8526                	mv	a0,s1
    80012f46:	8b0f80ef          	jal	ra,8000aff6 <js_free>
    80012f4a:	bf85                	j	80012eba <JS_CallInternal+0x3f4c>
quickjs-nuttx/quickjs.c:14867
    it->obj = obj;
    80012f4c:	015bb023          	sd	s5,0(s7)
    80012f50:	016bb423          	sd	s6,8(s7)
quickjs-nuttx/quickjs.c:14869
    it->tab_atom = NULL;
    80012f54:	020bb023          	sd	zero,32(s7)
quickjs-nuttx/quickjs.c:14868
    it->idx = 0;
    80012f58:	000bb823          	sd	zero,16(s7)
quickjs-nuttx/quickjs.c:14871
    it->in_prototype_chain = FALSE;
    80012f5c:	000b9c23          	sh	zero,24(s7)
quickjs-nuttx/quickjs.c:14873
    p1->u.for_in_iterator = it;
    80012f60:	03753823          	sd	s7,48(a0)
quickjs-nuttx/quickjs.c:14875
    if (tag == JS_TAG_NULL || tag == JS_TAG_UNDEFINED)
    80012f64:	39f9                	addiw	s3,s3,-2
    80012f66:	4785                	li	a5,1
    80012f68:	0137e563          	bltu	a5,s3,80012f72 <JS_CallInternal+0x4004>
quickjs-nuttx/quickjs.c:14901
    return enum_obj;
    80012f6c:	c7043023          	sd	a6,-928(s0)
    80012f70:	b78d                	j	80012ed2 <JS_CallInternal+0x3f64>
quickjs-nuttx/quickjs.c:14879
    if (p->fast_array) {
    80012f72:	005ac783          	lbu	a5,5(s5)
    80012f76:	8ba1                	andi	a5,a5,8
    80012f78:	cb8d                	beqz	a5,80012faa <JS_CallInternal+0x403c>
quickjs-nuttx/quickjs.c:14883
        sh = p->shape;
    80012f7a:	018ab783          	ld	a5,24(s5)
quickjs-nuttx/quickjs.c:14884
        for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    80012f7e:	4701                	li	a4,0
    80012f80:	5790                	lw	a2,40(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80012f82:	04078693          	addi	a3,a5,64
build_for_in_iterator():
quickjs-nuttx/quickjs.c:14884
        for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    80012f86:	00c74a63          	blt	a4,a2,80012f9a <JS_CallInternal+0x402c>
quickjs-nuttx/quickjs.c:14889
        it->is_array = TRUE;
    80012f8a:	4785                	li	a5,1
    80012f8c:	00fb8ca3          	sb	a5,25(s7)
quickjs-nuttx/quickjs.c:14890
        it->atom_count = p->u.array.count;
    80012f90:	040aa783          	lw	a5,64(s5)
quickjs-nuttx/quickjs.c:14899
        it->atom_count = tab_atom_count;
    80012f94:	00fbaa23          	sw	a5,20(s7)
    80012f98:	bfd1                	j	80012f6c <JS_CallInternal+0x3ffe>
quickjs-nuttx/quickjs.c:14885
            if (prs->flags & JS_PROP_ENUMERABLE)
    80012f9a:	429c                	lw	a5,0(a3)
    80012f9c:	01a7d79b          	srliw	a5,a5,0x1a
    80012fa0:	8b91                	andi	a5,a5,4
    80012fa2:	e781                	bnez	a5,80012faa <JS_CallInternal+0x403c>
quickjs-nuttx/quickjs.c:14884
        for(i = 0, prs = get_shape_prop(sh); i < sh->prop_count; i++, prs++) {
    80012fa4:	2705                	addiw	a4,a4,1
    80012fa6:	06a1                	addi	a3,a3,8
    80012fa8:	bff9                	j	80012f86 <JS_CallInternal+0x4018>
    80012faa:	77fd                	lui	a5,0xfffff
    80012fac:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80012fb0:	97a2                	add	a5,a5,s0
quickjs-nuttx/quickjs.c:14893
        if (JS_GetOwnPropertyNamesInternal(ctx, &tab_atom, &tab_atom_count, p,
    80012fb2:	02100713          	li	a4,33
    80012fb6:	86d6                	mv	a3,s5
    80012fb8:	e9040613          	addi	a2,s0,-368
    80012fbc:	ed040593          	addi	a1,s0,-304
    80012fc0:	8526                	mv	a0,s1
    80012fc2:	0107b023          	sd	a6,0(a5)
    80012fc6:	0f8250ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    80012fca:	77fd                	lui	a5,0xfffff
    80012fcc:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80012fd0:	97a2                	add	a5,a5,s0
    80012fd2:	0007b803          	ld	a6,0(a5)
    80012fd6:	c511                	beqz	a0,80012fe2 <JS_CallInternal+0x4074>
quickjs-nuttx/quickjs.c:14895
            JS_FreeValue(ctx, enum_obj);
    80012fd8:	c5043583          	ld	a1,-944(s0)
    80012fdc:	c5843603          	ld	a2,-936(s0)
    80012fe0:	b5dd                	j	80012ec6 <JS_CallInternal+0x3f58>
quickjs-nuttx/quickjs.c:14898
        it->tab_atom = tab_atom;
    80012fe2:	ed043783          	ld	a5,-304(s0)
    80012fe6:	02fbb023          	sd	a5,32(s7)
quickjs-nuttx/quickjs.c:14899
        it->atom_count = tab_atom_count;
    80012fea:	e9042783          	lw	a5,-368(s0)
    80012fee:	b75d                	j	80012f94 <JS_CallInternal+0x4026>
js_for_in_next():
quickjs-nuttx/quickjs.c:14987
    enum_obj = sp[-1];
    80012ff0:	ff8cbb03          	ld	s6,-8(s9)
    80012ff4:	ff0cba83          	ld	s5,-16(s9)
quickjs-nuttx/quickjs.c:14989
    if (JS_VALUE_GET_TAG(enum_obj) != JS_TAG_OBJECT)
    80012ff8:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:14987
    enum_obj = sp[-1];
    80012ffa:	c9643423          	sd	s6,-888(s0)
    80012ffe:	c9543023          	sd	s5,-896(s0)
quickjs-nuttx/quickjs.c:14989
    if (JS_VALUE_GET_TAG(enum_obj) != JS_TAG_OBJECT)
