    80016000:	9381                	srli	a5,a5,0x20
    80016002:	0785                	addi	a5,a5,1
    80016004:	02d787b3          	mul	a5,a5,a3
    80016008:	97ba                	add	a5,a5,a4
    8001600a:	0007e983          	lwu	s3,0(a5)
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8001600e:	040007b7          	lui	a5,0x4000
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80016012:	04070713          	addi	a4,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80016016:	17fd                	addi	a5,a5,-1
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80016018:	00099863          	bnez	s3,80016028 <JS_CallInternal+0x70ba>
js_operator_private_in():
quickjs-nuttx/quickjs.c:14536
        JS_FreeAtom(ctx, atom);
    8001601c:	8526                	mv	a0,s1
    8001601e:	92af50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:14537
        ret = (prs != NULL);
    80016022:	013039b3          	snez	s3,s3
    80016026:	bfa1                	j	80015f7e <JS_CallInternal+0x7010>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80016028:	098e                	slli	s3,s3,0x3
    8001602a:	19e1                	addi	s3,s3,-8
    8001602c:	99ba                	add	s3,s3,a4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    8001602e:	0049a683          	lw	a3,4(s3)
    80016032:	feb685e3          	beq	a3,a1,8001601c <JS_CallInternal+0x70ae>
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80016036:	0009a983          	lw	s3,0(s3)
    8001603a:	00f9f9b3          	and	s3,s3,a5
    8001603e:	1982                	slli	s3,s3,0x20
    80016040:	0209d993          	srli	s3,s3,0x20
    80016044:	bfd1                	j	80016018 <JS_CallInternal+0x70aa>
js_operator_instanceof():
quickjs-nuttx/quickjs.c:14568
    op1 = sp[-2];
    80016046:	fe0cb583          	ld	a1,-32(s9)
quickjs-nuttx/quickjs.c:14570
    ret = JS_IsInstanceOf(ctx, op1, op2);
    8001604a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:14568
    op1 = sp[-2];
    8001604c:	e8b43823          	sd	a1,-368(s0)
    80016050:	fe8cb603          	ld	a2,-24(s9)
    80016054:	e8c43c23          	sd	a2,-360(s0)
quickjs-nuttx/quickjs.c:14569
    op2 = sp[-1];
    80016058:	ff0cb683          	ld	a3,-16(s9)
    8001605c:	ecd43823          	sd	a3,-304(s0)
    80016060:	ff8cb703          	ld	a4,-8(s9)
    80016064:	ece43c23          	sd	a4,-296(s0)
quickjs-nuttx/quickjs.c:14570
    ret = JS_IsInstanceOf(ctx, op1, op2);
    80016068:	793030ef          	jal	ra,80019ffa <JS_IsInstanceOf>
    8001606c:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:14571
    if (ret < 0)
    8001606e:	00055463          	bgez	a0,80016076 <JS_CallInternal+0x7108>
    80016072:	f8cf906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14573
    JS_FreeValue(ctx, op1);
    80016076:	e9043583          	ld	a1,-368(s0)
    8001607a:	e9843603          	ld	a2,-360(s0)
    8001607e:	8526                	mv	a0,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80016080:	013039b3          	snez	s3,s3
js_operator_instanceof():
quickjs-nuttx/quickjs.c:14573
    80016084:	f1af50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14574
    JS_FreeValue(ctx, op2);
    80016088:	ed043583          	ld	a1,-304(s0)
    8001608c:	ed843603          	ld	a2,-296(s0)
    80016090:	8526                	mv	a0,s1
JS_CallInternal():
quickjs-nuttx/quickjs.c:18278
            sp--;
    80016092:	1cc1                	addi	s9,s9,-16
js_operator_instanceof():
quickjs-nuttx/quickjs.c:14574
    JS_FreeValue(ctx, op2);
    80016094:	f0af50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80016098:	e6042223          	sw	zero,-412(s0)
    8001609c:	e7342023          	sw	s3,-416(s0)
    800160a0:	e6043783          	ld	a5,-416(s0)
    800160a4:	4705                	li	a4,1
    800160a6:	eee43c23          	sd	a4,-264(s0)
    800160aa:	eef43823          	sd	a5,-272(s0)
js_operator_instanceof():
quickjs-nuttx/quickjs.c:14575
    sp[-2] = JS_NewBool(ctx, ret);
    800160ae:	fefcb823          	sd	a5,-16(s9)
    800160b2:	ef843783          	ld	a5,-264(s0)
    800160b6:	e6e43423          	sd	a4,-408(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18279
            BREAK;
    800160ba:	0d05                	addi	s10,s10,1
js_operator_instanceof():
quickjs-nuttx/quickjs.c:14575
    sp[-2] = JS_NewBool(ctx, ret);
    800160bc:	fefcbc23          	sd	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18279
            BREAK;
    800160c0:	fffd4b03          	lbu	s6,-1(s10)
    800160c4:	00059797          	auipc	a5,0x59
    800160c8:	d6c78793          	addi	a5,a5,-660 # 8006ee30 <dispatch_table.4>
    800160cc:	003b1713          	slli	a4,s6,0x3
    800160d0:	97ba                	add	a5,a5,a4
    800160d2:	639c                	ld	a5,0(a5)
    800160d4:	8d2f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18285
                op1 = sp[-1];
    800160d8:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:18286
                atom = js_operator_typeof(ctx, op1);
    800160dc:	77fd                	lui	a5,0xfffff
    800160de:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
quickjs-nuttx/quickjs.c:18285
                op1 = sp[-1];
    800160e2:	eeb43823          	sd	a1,-272(s0)
quickjs-nuttx/quickjs.c:18286
                atom = js_operator_typeof(ctx, op1);
    800160e6:	97a2                	add	a5,a5,s0
quickjs-nuttx/quickjs.c:18285
                op1 = sp[-1];
    800160e8:	ff8cb603          	ld	a2,-8(s9)
quickjs-nuttx/quickjs.c:18286
                atom = js_operator_typeof(ctx, op1);
    800160ec:	e38c                	sd	a1,0(a5)
    800160ee:	77fd                	lui	a5,0xfffff
    800160f0:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    800160f4:	97a2                	add	a5,a5,s0
    800160f6:	8526                	mv	a0,s1
    800160f8:	e390                	sd	a2,0(a5)
quickjs-nuttx/quickjs.c:18285
                op1 = sp[-1];
    800160fa:	eec43c23          	sd	a2,-264(s0)
quickjs-nuttx/quickjs.c:18286
                atom = js_operator_typeof(ctx, op1);
    800160fe:	bf0f80ef          	jal	ra,8000e4ee <js_operator_typeof>
quickjs-nuttx/quickjs.c:18287
                JS_FreeValue(ctx, op1);
    80016102:	77fd                	lui	a5,0xfffff
    80016104:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    80016108:	97a2                	add	a5,a5,s0
    8001610a:	638c                	ld	a1,0(a5)
    8001610c:	77fd                	lui	a5,0xfffff
    8001610e:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    80016112:	97a2                	add	a5,a5,s0
    80016114:	6390                	ld	a2,0(a5)
quickjs-nuttx/quickjs.c:18286
                atom = js_operator_typeof(ctx, op1);
    80016116:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:18287
                JS_FreeValue(ctx, op1);
    80016118:	8526                	mv	a0,s1
    8001611a:	e84f50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18288
                sp[-1] = JS_AtomToString(ctx, atom);
    8001611e:	0009859b          	sext.w	a1,s3
    80016122:	8526                	mv	a0,s1
    80016124:	1af090ef          	jal	ra,8001fad2 <JS_AtomToString>
    80016128:	feacb823          	sd	a0,-16(s9)
    8001612c:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:18290
            BREAK;
    80016130:	000d4b03          	lbu	s6,0(s10)
    80016134:	00059797          	auipc	a5,0x59
    80016138:	cfc78793          	addi	a5,a5,-772 # 8006ee30 <dispatch_table.4>
    8001613c:	0d05                	addi	s10,s10,1
    8001613e:	003b1713          	slli	a4,s6,0x3
    80016142:	97ba                	add	a5,a5,a4
    80016144:	639c                	ld	a5,0(a5)
    80016146:	860f906f          	j	8000f1a6 <JS_CallInternal+0x238>
js_operator_delete():
quickjs-nuttx/quickjs.c:14642
    op1 = sp[-2];
    8001614a:	fe0cb783          	ld	a5,-32(s9)
quickjs-nuttx/quickjs.c:14644
    atom = JS_ValueToAtom(ctx, op2);
    8001614e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:14642
    op1 = sp[-2];
    80016150:	e8f43823          	sd	a5,-368(s0)
    80016154:	fe8cb783          	ld	a5,-24(s9)
    80016158:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:14643
    op2 = sp[-1];
    8001615c:	ff0cb583          	ld	a1,-16(s9)
    80016160:	ecb43823          	sd	a1,-304(s0)
    80016164:	ff8cb603          	ld	a2,-8(s9)
    80016168:	ecc43c23          	sd	a2,-296(s0)
quickjs-nuttx/quickjs.c:14644
    atom = JS_ValueToAtom(ctx, op2);
    8001616c:	6a6120ef          	jal	ra,80028812 <JS_ValueToAtom>
    80016170:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:14645
    if (unlikely(atom == JS_ATOM_NULL))
    80016174:	000a1463          	bnez	s4,8001617c <JS_CallInternal+0x720e>
    80016178:	e86f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14647
    ret = JS_DeleteProperty(ctx, op1, atom, JS_PROP_THROW_STRICT);
    8001617c:	e9043583          	ld	a1,-368(s0)
    80016180:	e9843603          	ld	a2,-360(s0)
    80016184:	6721                	lui	a4,0x8
    80016186:	86d2                	mv	a3,s4
    80016188:	8526                	mv	a0,s1
    8001618a:	1701a0ef          	jal	ra,800302fa <JS_DeleteProperty>
    8001618e:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:14648
    JS_FreeAtom(ctx, atom);
    80016190:	85d2                	mv	a1,s4
    80016192:	8526                	mv	a0,s1
    80016194:	fb5f40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:14649
    if (unlikely(ret < 0))
    80016198:	0009d463          	bgez	s3,800161a0 <JS_CallInternal+0x7232>
    8001619c:	e62f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14651
    JS_FreeValue(ctx, op1);
    800161a0:	e9043583          	ld	a1,-368(s0)
    800161a4:	e9843603          	ld	a2,-360(s0)
    800161a8:	8526                	mv	a0,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    800161aa:	013039b3          	snez	s3,s3
js_operator_delete():
quickjs-nuttx/quickjs.c:14651
    800161ae:	df0f50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14652
    JS_FreeValue(ctx, op2);
    800161b2:	ed043583          	ld	a1,-304(s0)
    800161b6:	ed843603          	ld	a2,-296(s0)
    800161ba:	8526                	mv	a0,s1
JS_CallInternal():
quickjs-nuttx/quickjs.c:18294
            sp--;
    800161bc:	1cc1                	addi	s9,s9,-16
js_operator_delete():
quickjs-nuttx/quickjs.c:14652
    JS_FreeValue(ctx, op2);
    800161be:	de0f50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    800161c2:	e6042a23          	sw	zero,-396(s0)
    800161c6:	e7342823          	sw	s3,-400(s0)
    800161ca:	e7043783          	ld	a5,-400(s0)
    800161ce:	4705                	li	a4,1
    800161d0:	eee43c23          	sd	a4,-264(s0)
    800161d4:	eef43823          	sd	a5,-272(s0)
js_operator_delete():
quickjs-nuttx/quickjs.c:14653
    sp[-2] = JS_NewBool(ctx, ret);
    800161d8:	fefcb823          	sd	a5,-16(s9)
    800161dc:	ef843783          	ld	a5,-264(s0)
    800161e0:	e6e43c23          	sd	a4,-392(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18295
            BREAK;
    800161e4:	0d05                	addi	s10,s10,1
js_operator_delete():
quickjs-nuttx/quickjs.c:14653
    sp[-2] = JS_NewBool(ctx, ret);
    800161e6:	fefcbc23          	sd	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18295
            BREAK;
    800161ea:	fffd4b03          	lbu	s6,-1(s10)
    800161ee:	00059797          	auipc	a5,0x59
    800161f2:	c4278793          	addi	a5,a5,-958 # 8006ee30 <dispatch_table.4>
    800161f6:	003b1713          	slli	a4,s6,0x3
    800161fa:	97ba                	add	a5,a5,a4
    800161fc:	639c                	ld	a5,0(a5)
    800161fe:	fa9f806f          	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    80016202:	001d4783          	lbu	a5,1(s10)
    80016206:	000d4683          	lbu	a3,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18304
                ret = JS_DeleteProperty(ctx, ctx->global_obj, atom, 0);
    8001620a:	1684b583          	ld	a1,360(s1)
get_u32():
quickjs-nuttx/cutils.h:170
    8001620e:	07a2                	slli	a5,a5,0x8
    80016210:	8fd5                	or	a5,a5,a3
    80016212:	002d4683          	lbu	a3,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18304
    80016216:	1704b603          	ld	a2,368(s1)
    8001621a:	4701                	li	a4,0
get_u32():
quickjs-nuttx/cutils.h:170
    8001621c:	06c2                	slli	a3,a3,0x10
    8001621e:	8fd5                	or	a5,a5,a3
    80016220:	003d4683          	lbu	a3,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18304
    80016224:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:18302
                pc += 4;
    80016226:	004d0993          	addi	s3,s10,4
get_u32():
quickjs-nuttx/cutils.h:170
    8001622a:	06e2                	slli	a3,a3,0x18
    8001622c:	8edd                	or	a3,a3,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:18304
                ret = JS_DeleteProperty(ctx, ctx->global_obj, atom, 0);
    8001622e:	2681                	sext.w	a3,a3
    80016230:	0ca1a0ef          	jal	ra,800302fa <JS_DeleteProperty>
quickjs-nuttx/quickjs.c:18305
                if (unlikely(ret < 0))
    80016234:	72054463          	bltz	a0,8001695c <JS_CallInternal+0x79ee>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80016238:	00a03533          	snez	a0,a0
    8001623c:	aa042a23          	sw	zero,-1356(s0)
    80016240:	aaa42823          	sw	a0,-1360(s0)
    80016244:	ab043783          	ld	a5,-1360(s0)
    80016248:	4705                	li	a4,1
    8001624a:	eee43c23          	sd	a4,-264(s0)
    8001624e:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18307
                *sp++ = JS_NewBool(ctx, ret);
    80016252:	00fcb023          	sd	a5,0(s9)
    80016256:	ef843783          	ld	a5,-264(s0)
    8001625a:	aae43c23          	sd	a4,-1352(s0)
    8001625e:	0cc1                	addi	s9,s9,16
    80016260:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18309
            BREAK;
    80016264:	004d4b03          	lbu	s6,4(s10)
    80016268:	00059797          	auipc	a5,0x59
    8001626c:	bc878793          	addi	a5,a5,-1080 # 8006ee30 <dispatch_table.4>
    80016270:	0d15                	addi	s10,s10,5
    80016272:	003b1713          	slli	a4,s6,0x3
    80016276:	97ba                	add	a5,a5,a4
    80016278:	639c                	ld	a5,0(a5)
    8001627a:	f2df806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18312
            if (JS_VALUE_GET_TAG(sp[-1]) != JS_TAG_OBJECT) {
    8001627e:	ff8ca703          	lw	a4,-8(s9)
    80016282:	57fd                	li	a5,-1
    80016284:	04f70663          	beq	a4,a5,800162d0 <JS_CallInternal+0x7362>
quickjs-nuttx/quickjs.c:18313
                ret_val = JS_ToObject(ctx, sp[-1]);
    80016288:	ff0cb583          	ld	a1,-16(s9)
    8001628c:	ff8cb603          	ld	a2,-8(s9)
    80016290:	8526                	mv	a0,s1
    80016292:	629190ef          	jal	ra,800300ba <JS_ToObject>
    80016296:	f8040793          	addi	a5,s0,-128
    8001629a:	012789b3          	add	s3,a5,s2
    8001629e:	72b9b423          	sd	a1,1832(s3)
    800162a2:	72a9b023          	sd	a0,1824(s3)
quickjs-nuttx/quickjs.c:18314
                if (JS_IsException(ret_val))
    800162a6:	2581                	sext.w	a1,a1
    800162a8:	4799                	li	a5,6
    800162aa:	00f59463          	bne	a1,a5,800162b2 <JS_CallInternal+0x7344>
    800162ae:	d50f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18316
                JS_FreeValue(ctx, sp[-1]);
    800162b2:	ff0cb583          	ld	a1,-16(s9)
    800162b6:	ff8cb603          	ld	a2,-8(s9)
    800162ba:	8526                	mv	a0,s1
    800162bc:	ce2f50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18317
                sp[-1] = ret_val;
    800162c0:	7209b783          	ld	a5,1824(s3)
    800162c4:	fefcb823          	sd	a5,-16(s9)
    800162c8:	7289b783          	ld	a5,1832(s3)
    800162cc:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18319
            BREAK;
    800162d0:	000d4b03          	lbu	s6,0(s10)
    800162d4:	00059797          	auipc	a5,0x59
    800162d8:	b5c78793          	addi	a5,a5,-1188 # 8006ee30 <dispatch_table.4>
    800162dc:	0d05                	addi	s10,s10,1
    800162de:	003b1713          	slli	a4,s6,0x3
    800162e2:	97ba                	add	a5,a5,a4
    800162e4:	639c                	ld	a5,0(a5)
    800162e6:	ec1f806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18322
            switch (JS_VALUE_GET_TAG(sp[-1])) {
    800162ea:	ff8ca783          	lw	a5,-8(s9)
    800162ee:	5769                	li	a4,-6
    800162f0:	02e7d263          	bge	a5,a4,80016314 <JS_CallInternal+0x73a6>
    800162f4:	5761                	li	a4,-8
    800162f6:	02e7c063          	blt	a5,a4,80016316 <JS_CallInternal+0x73a8>
quickjs-nuttx/quickjs.c:18335
            BREAK;
    800162fa:	000d4b03          	lbu	s6,0(s10)
    800162fe:	00059797          	auipc	a5,0x59
    80016302:	b3278793          	addi	a5,a5,-1230 # 8006ee30 <dispatch_table.4>
    80016306:	0d05                	addi	s10,s10,1
    80016308:	003b1713          	slli	a4,s6,0x3
    8001630c:	97ba                	add	a5,a5,a4
    8001630e:	639c                	ld	a5,0(a5)
    80016310:	e97f806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18322
            switch (JS_VALUE_GET_TAG(sp[-1])) {
    80016314:	d3fd                	beqz	a5,800162fa <JS_CallInternal+0x738c>
quickjs-nuttx/quickjs.c:18328
                ret_val = JS_ToPropertyKey(ctx, sp[-1]);
    80016316:	ff0cb583          	ld	a1,-16(s9)
    8001631a:	ff8cb603          	ld	a2,-8(s9)
    8001631e:	8526                	mv	a0,s1
    80016320:	4e8120ef          	jal	ra,80028808 <JS_ToPropertyKey>
    80016324:	f8040793          	addi	a5,s0,-128
    80016328:	012789b3          	add	s3,a5,s2
    8001632c:	72b9b423          	sd	a1,1832(s3)
    80016330:	72a9b023          	sd	a0,1824(s3)
quickjs-nuttx/quickjs.c:18329
                if (JS_IsException(ret_val))
    80016334:	2581                	sext.w	a1,a1
    80016336:	4799                	li	a5,6
    80016338:	00f59463          	bne	a1,a5,80016340 <JS_CallInternal+0x73d2>
    8001633c:	cc2f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18331
                JS_FreeValue(ctx, sp[-1]);
    80016340:	ff0cb583          	ld	a1,-16(s9)
    80016344:	ff8cb603          	ld	a2,-8(s9)
    80016348:	8526                	mv	a0,s1
    8001634a:	c54f50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18332
                sp[-1] = ret_val;
    8001634e:	7209b783          	ld	a5,1824(s3)
    80016352:	fefcb823          	sd	a5,-16(s9)
    80016356:	7289b783          	ld	a5,1832(s3)
    8001635a:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18333
                break;
    8001635e:	bf71                	j	800162fa <JS_CallInternal+0x738c>
quickjs-nuttx/quickjs.c:18339
            if (unlikely(JS_IsUndefined(sp[-2]) || JS_IsNull(sp[-2]))) {
    80016360:	fe8cb783          	ld	a5,-24(s9)
    80016364:	4705                	li	a4,1
    80016366:	37f9                	addiw	a5,a5,-2
    80016368:	00f76b63          	bltu	a4,a5,8001637e <JS_CallInternal+0x7410>
quickjs-nuttx/quickjs.c:18340
                JS_ThrowTypeError(ctx, "value has no property");
    8001636c:	8526                	mv	a0,s1
    8001636e:	00054597          	auipc	a1,0x54
    80016372:	b2a58593          	addi	a1,a1,-1238 # 80069e98 <qjsc_repl+0x48e8>
    80016376:	2f6020ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:18341
                goto exception;
    8001637a:	c84f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18343
            switch (JS_VALUE_GET_TAG(sp[-1])) {
    8001637e:	ff8ca783          	lw	a5,-8(s9)
    80016382:	5769                	li	a4,-6
    80016384:	02e7d263          	bge	a5,a4,800163a8 <JS_CallInternal+0x743a>
    80016388:	5761                	li	a4,-8
    8001638a:	02e7c063          	blt	a5,a4,800163aa <JS_CallInternal+0x743c>
quickjs-nuttx/quickjs.c:18356
            BREAK;
    8001638e:	000d4b03          	lbu	s6,0(s10)
    80016392:	00059797          	auipc	a5,0x59
    80016396:	a9e78793          	addi	a5,a5,-1378 # 8006ee30 <dispatch_table.4>
    8001639a:	0d05                	addi	s10,s10,1
    8001639c:	003b1713          	slli	a4,s6,0x3
    800163a0:	97ba                	add	a5,a5,a4
    800163a2:	639c                	ld	a5,0(a5)
    800163a4:	e03f806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18343
            switch (JS_VALUE_GET_TAG(sp[-1])) {
    800163a8:	d3fd                	beqz	a5,8001638e <JS_CallInternal+0x7420>
quickjs-nuttx/quickjs.c:18349
                ret_val = JS_ToPropertyKey(ctx, sp[-1]);
    800163aa:	ff0cb583          	ld	a1,-16(s9)
    800163ae:	ff8cb603          	ld	a2,-8(s9)
    800163b2:	8526                	mv	a0,s1
    800163b4:	454120ef          	jal	ra,80028808 <JS_ToPropertyKey>
    800163b8:	f8040793          	addi	a5,s0,-128
    800163bc:	012789b3          	add	s3,a5,s2
    800163c0:	72b9b423          	sd	a1,1832(s3)
    800163c4:	72a9b023          	sd	a0,1824(s3)
quickjs-nuttx/quickjs.c:18350
                if (JS_IsException(ret_val))
    800163c8:	2581                	sext.w	a1,a1
    800163ca:	4799                	li	a5,6
    800163cc:	00f59463          	bne	a1,a5,800163d4 <JS_CallInternal+0x7466>
    800163d0:	c2ef906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18352
                JS_FreeValue(ctx, sp[-1]);
    800163d4:	ff0cb583          	ld	a1,-16(s9)
    800163d8:	ff8cb603          	ld	a2,-8(s9)
    800163dc:	8526                	mv	a0,s1
    800163de:	bc0f50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18353
                sp[-1] = ret_val;
    800163e2:	7209b783          	ld	a5,1824(s3)
    800163e6:	fefcb823          	sd	a5,-16(s9)
    800163ea:	7289b783          	ld	a5,1832(s3)
    800163ee:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18354
                break;
    800163f2:	bf71                	j	8001638e <JS_CallInternal+0x7420>
get_u32():
quickjs-nuttx/cutils.h:170
    800163f4:	001d4783          	lbu	a5,1(s10)
    800163f8:	000d4a83          	lbu	s5,0(s10)
    800163fc:	004d4a03          	lbu	s4,4(s10)
    80016400:	07a2                	slli	a5,a5,0x8
    80016402:	0157e7b3          	or	a5,a5,s5
    80016406:	002d4a83          	lbu	s5,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18384
                obj = sp[-1];
    8001640a:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:18381
                is_with = pc[8];
    8001640e:	008d4983          	lbu	s3,8(s10)
get_u32():
quickjs-nuttx/cutils.h:170
    80016412:	0ac2                	slli	s5,s5,0x10
    80016414:	00fae7b3          	or	a5,s5,a5
    80016418:	003d4a83          	lbu	s5,3(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18385
                ret = JS_HasProperty(ctx, obj, atom);
    8001641c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:18382
                pc += 9;
    8001641e:	0d25                	addi	s10,s10,9
get_u32():
quickjs-nuttx/cutils.h:170
    80016420:	0ae2                	slli	s5,s5,0x18
    80016422:	00faeab3          	or	s5,s5,a5
    80016426:	ffcd4783          	lbu	a5,-4(s10)
    8001642a:	2a81                	sext.w	s5,s5
JS_CallInternal():
quickjs-nuttx/quickjs.c:18385
                ret = JS_HasProperty(ctx, obj, atom);
    8001642c:	86d6                	mv	a3,s5
get_u32():
quickjs-nuttx/cutils.h:170
    8001642e:	07a2                	slli	a5,a5,0x8
    80016430:	0147e7b3          	or	a5,a5,s4
    80016434:	ffdd4a03          	lbu	s4,-3(s10)
    80016438:	0a42                	slli	s4,s4,0x10
    8001643a:	00fa67b3          	or	a5,s4,a5
    8001643e:	ffed4a03          	lbu	s4,-2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18384
                obj = sp[-1];
    80016442:	deb43023          	sd	a1,-544(s0)
    80016446:	ff8cb603          	ld	a2,-8(s9)
get_u32():
quickjs-nuttx/cutils.h:170
    8001644a:	0a62                	slli	s4,s4,0x18
    8001644c:	00fa6a33          	or	s4,s4,a5
    80016450:	2a01                	sext.w	s4,s4
JS_CallInternal():
quickjs-nuttx/quickjs.c:18384
    80016452:	dec43423          	sd	a2,-536(s0)
quickjs-nuttx/quickjs.c:18385
                ret = JS_HasProperty(ctx, obj, atom);
    80016456:	0a0220ef          	jal	ra,800384f6 <JS_HasProperty>
quickjs-nuttx/quickjs.c:18386
                if (unlikely(ret < 0))
    8001645a:	00055463          	bgez	a0,80016462 <JS_CallInternal+0x74f4>
    8001645e:	ba0f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18388
                if (ret) {
    80016462:	c971                	beqz	a0,80016536 <JS_CallInternal+0x75c8>
quickjs-nuttx/quickjs.c:18389
                    if (is_with) {
    80016464:	02099a63          	bnez	s3,80016498 <JS_CallInternal+0x752a>
quickjs-nuttx/quickjs.c:18396
                    switch (opcode) {
    80016468:	f8cb099b          	addiw	s3,s6,-116
    8001646c:	0009871b          	sext.w	a4,s3
    80016470:	4795                	li	a5,5
    80016472:	12e7e063          	bltu	a5,a4,80016592 <JS_CallInternal+0x7624>
    80016476:	02099793          	slli	a5,s3,0x20
    8001647a:	01e7d993          	srli	s3,a5,0x1e
    8001647e:	00054717          	auipc	a4,0x54
    80016482:	aea70713          	addi	a4,a4,-1302 # 80069f68 <qjsc_repl+0x49b8>
    80016486:	99ba                	add	s3,s3,a4
    80016488:	0009a783          	lw	a5,0(s3)
    8001648c:	97ba                	add	a5,a5,a4
    8001648e:	8782                	jr	a5
    80016490:	b795                	j	800163f4 <JS_CallInternal+0x7486>
    80016492:	b78d                	j	800163f4 <JS_CallInternal+0x7486>
    80016494:	b785                	j	800163f4 <JS_CallInternal+0x7486>
    80016496:	bfb9                	j	800163f4 <JS_CallInternal+0x7486>
quickjs-nuttx/quickjs.c:18390
                        ret = js_has_unscopable(ctx, obj, atom);
    80016498:	de043703          	ld	a4,-544(s0)
    8001649c:	de843783          	ld	a5,-536(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800164a0:	0e000693          	li	a3,224
    800164a4:	85ba                	mv	a1,a4
    800164a6:	863e                	mv	a2,a5
    800164a8:	4801                	li	a6,0
    800164aa:	8526                	mv	a0,s1
    800164ac:	e8e43023          	sd	a4,-384(s0)
    800164b0:	e8f43423          	sd	a5,-376(s0)
js_has_unscopable():
quickjs-nuttx/quickjs.c:14551
    arr = JS_GetProperty(ctx, obj, JS_ATOM_Symbol_unscopables);
    800164b4:	eee43823          	sd	a4,-272(s0)
    800164b8:	eef43c23          	sd	a5,-264(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800164bc:	5ee000ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800164c0:	eaa43823          	sd	a0,-336(s0)
    800164c4:	eab43c23          	sd	a1,-328(s0)
    800164c8:	e8a43823          	sd	a0,-368(s0)
    800164cc:	e8b43c23          	sd	a1,-360(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800164d0:	0005869b          	sext.w	a3,a1
js_has_unscopable():
quickjs-nuttx/quickjs.c:14552
    if (JS_IsException(arr))
    800164d4:	4619                	li	a2,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800164d6:	872a                	mv	a4,a0
    800164d8:	87ae                	mv	a5,a1
js_has_unscopable():
quickjs-nuttx/quickjs.c:14552
    800164da:	00c69463          	bne	a3,a2,800164e2 <JS_CallInternal+0x7574>
    800164de:	b20f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14555
    if (JS_IsObject(arr)) {
    800164e2:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:14554
    ret = 0;
    800164e4:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:14555
    if (JS_IsObject(arr)) {
    800164e6:	02c69b63          	bne	a3,a2,8001651c <JS_CallInternal+0x75ae>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800164ea:	863e                	mv	a2,a5
    800164ec:	eea43823          	sd	a0,-272(s0)
    800164f0:	eeb43c23          	sd	a1,-264(s0)
    800164f4:	4801                	li	a6,0
    800164f6:	86d6                	mv	a3,s5
    800164f8:	85aa                	mv	a1,a0
    800164fa:	8526                	mv	a0,s1
    800164fc:	5ae000ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80016500:	862e                	mv	a2,a1
    80016502:	eaa43023          	sd	a0,-352(s0)
    80016506:	eab43423          	sd	a1,-344(s0)
    8001650a:	eca43823          	sd	a0,-304(s0)
    8001650e:	ecb43c23          	sd	a1,-296(s0)
js_has_unscopable():
quickjs-nuttx/quickjs.c:14557
        ret = JS_ToBoolFree(ctx, val);
    80016512:	85aa                	mv	a1,a0
    80016514:	8526                	mv	a0,s1
    80016516:	dfef50ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    8001651a:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:14559
    JS_FreeValue(ctx, arr);
    8001651c:	e9043583          	ld	a1,-368(s0)
    80016520:	e9843603          	ld	a2,-360(s0)
    80016524:	8526                	mv	a0,s1
    80016526:	a78f50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_CallInternal():
quickjs-nuttx/quickjs.c:18391
                        if (unlikely(ret < 0))
    8001652a:	0009d463          	bgez	s3,80016532 <JS_CallInternal+0x75c4>
    8001652e:	ad0f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18393
                        if (ret)
    80016532:	f2098be3          	beqz	s3,80016468 <JS_CallInternal+0x74fa>
quickjs-nuttx/quickjs.c:18444
                    JS_FreeValue(ctx, sp[-1]);
    80016536:	ff0cb583          	ld	a1,-16(s9)
    8001653a:	ff8cb603          	ld	a2,-8(s9)
    8001653e:	8526                	mv	a0,s1
    80016540:	1cc1                	addi	s9,s9,-16
    80016542:	a5cf50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18445
                    sp--;
    80016546:	a881                	j	80016596 <JS_CallInternal+0x7628>
quickjs-nuttx/quickjs.c:18398
                        val = JS_GetProperty(ctx, obj, atom);
    80016548:	de043703          	ld	a4,-544(s0)
    8001654c:	de843783          	ld	a5,-536(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80016550:	86d6                	mv	a3,s5
    80016552:	85ba                	mv	a1,a4
    80016554:	863e                	mv	a2,a5
    80016556:	4801                	li	a6,0
    80016558:	8526                	mv	a0,s1
    8001655a:	eee43823          	sd	a4,-272(s0)
    8001655e:	eef43c23          	sd	a5,-264(s0)
    80016562:	548000ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80016566:	aca43023          	sd	a0,-1344(s0)
    8001656a:	acb43423          	sd	a1,-1336(s0)
    8001656e:	eca43823          	sd	a0,-304(s0)
    80016572:	ecb43c23          	sd	a1,-296(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18399
                        if (unlikely(JS_IsException(val)))
    80016576:	0005871b          	sext.w	a4,a1
    8001657a:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8001657c:	862a                	mv	a2,a0
    8001657e:	86ae                	mv	a3,a1
JS_CallInternal():
quickjs-nuttx/quickjs.c:18399
    80016580:	00f71463          	bne	a4,a5,80016588 <JS_CallInternal+0x761a>
    80016584:	a7af906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18401
                        set_value(ctx, &sp[-1], val);
    80016588:	ff0c8593          	addi	a1,s9,-16
    8001658c:	8526                	mv	a0,s1
    8001658e:	eb0f50ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:18440
                    pc += diff - 5;
    80016592:	3a6d                	addiw	s4,s4,-5
    80016594:	9d52                	add	s10,s10,s4
quickjs-nuttx/quickjs.c:18448
            BREAK;
    80016596:	000d4b03          	lbu	s6,0(s10)
    8001659a:	00059797          	auipc	a5,0x59
    8001659e:	89678793          	addi	a5,a5,-1898 # 8006ee30 <dispatch_table.4>
    800165a2:	0d05                	addi	s10,s10,1
    800165a4:	003b1713          	slli	a4,s6,0x3
    800165a8:	97ba                	add	a5,a5,a4
    800165aa:	639c                	ld	a5,0(a5)
    800165ac:	bfbf806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18405
                        ret = JS_SetPropertyInternal(ctx, obj, atom, sp[-2], obj,
    800165b0:	67a1                	lui	a5,0x8
    800165b2:	de043803          	ld	a6,-544(s0)
    800165b6:	de843883          	ld	a7,-536(s0)
    800165ba:	e03e                	sd	a5,0(sp)
    800165bc:	fe0cb703          	ld	a4,-32(s9)
    800165c0:	fe8cb783          	ld	a5,-24(s9)
    800165c4:	85c2                	mv	a1,a6
    800165c6:	8646                	mv	a2,a7
    800165c8:	86d6                	mv	a3,s5
    800165ca:	8526                	mv	a0,s1
    800165cc:	57f000ef          	jal	ra,8001734a <JS_SetPropertyInternal>
quickjs-nuttx/quickjs.c:18407
                        JS_FreeValue(ctx, sp[-1]);
    800165d0:	ff0cb583          	ld	a1,-16(s9)
    800165d4:	ff8cb603          	ld	a2,-8(s9)
quickjs-nuttx/quickjs.c:18405
                        ret = JS_SetPropertyInternal(ctx, obj, atom, sp[-2], obj,
    800165d8:	fe0c8b13          	addi	s6,s9,-32
    800165dc:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:18407
                        JS_FreeValue(ctx, sp[-1]);
    800165de:	8526                	mv	a0,s1
    800165e0:	9bef50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18409
                        if (unlikely(ret < 0))
    800165e4:	8cda                	mv	s9,s6
    800165e6:	fa09d6e3          	bgez	s3,80016592 <JS_CallInternal+0x7624>
    800165ea:	a14f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18413
                        ret = JS_DeleteProperty(ctx, obj, atom, 0);
    800165ee:	de043583          	ld	a1,-544(s0)
    800165f2:	de843603          	ld	a2,-536(s0)
    800165f6:	4701                	li	a4,0
    800165f8:	86d6                	mv	a3,s5
    800165fa:	8526                	mv	a0,s1
    800165fc:	4ff190ef          	jal	ra,800302fa <JS_DeleteProperty>
    80016600:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:18414
                        if (unlikely(ret < 0))
    80016602:	00055463          	bgez	a0,8001660a <JS_CallInternal+0x769c>
    80016606:	9f8f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18416
                        JS_FreeValue(ctx, sp[-1]);
    8001660a:	ff0cb583          	ld	a1,-16(s9)
    8001660e:	ff8cb603          	ld	a2,-8(s9)
    80016612:	8526                	mv	a0,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80016614:	013039b3          	snez	s3,s3
JS_CallInternal():
quickjs-nuttx/quickjs.c:18416
    80016618:	986f50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8001661c:	ac042a23          	sw	zero,-1324(s0)
    80016620:	ad342823          	sw	s3,-1328(s0)
    80016624:	ad043783          	ld	a5,-1328(s0)
    80016628:	4705                	li	a4,1
    8001662a:	eee43c23          	sd	a4,-264(s0)
    8001662e:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18417
                        sp[-1] = JS_NewBool(ctx, ret);
    80016632:	fefcb823          	sd	a5,-16(s9)
    80016636:	ef843783          	ld	a5,-264(s0)
    8001663a:	ace43c23          	sd	a4,-1320(s0)
    8001663e:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18418
                        break;
    80016642:	bf81                	j	80016592 <JS_CallInternal+0x7624>
quickjs-nuttx/quickjs.c:18421
                        *sp++ = JS_AtomToValue(ctx, atom);
    80016644:	85d6                	mv	a1,s5
    80016646:	8526                	mv	a0,s1
    80016648:	480090ef          	jal	ra,8001fac8 <JS_AtomToValue>
    8001664c:	010c8993          	addi	s3,s9,16
    80016650:	00acb023          	sd	a0,0(s9)
    80016654:	00bcb423          	sd	a1,8(s9)
    80016658:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:18422
                        break;
    8001665a:	bf25                	j	80016592 <JS_CallInternal+0x7624>
quickjs-nuttx/quickjs.c:18425
                        val = JS_GetProperty(ctx, obj, atom);
    8001665c:	de843783          	ld	a5,-536(s0)
    80016660:	de043703          	ld	a4,-544(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80016664:	4801                	li	a6,0
    80016666:	863e                	mv	a2,a5
    80016668:	86d6                	mv	a3,s5
    8001666a:	85ba                	mv	a1,a4
    8001666c:	8526                	mv	a0,s1
    8001666e:	eef43c23          	sd	a5,-264(s0)
    80016672:	eee43823          	sd	a4,-272(s0)
    80016676:	434000ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001667a:	aeb43423          	sd	a1,-1304(s0)
    8001667e:	ecb43c23          	sd	a1,-296(s0)
    80016682:	aea43023          	sd	a0,-1312(s0)
    80016686:	eca43823          	sd	a0,-304(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18426
                        if (unlikely(JS_IsException(val)))
    8001668a:	2581                	sext.w	a1,a1
    8001668c:	4799                	li	a5,6
    8001668e:	00f59463          	bne	a1,a5,80016696 <JS_CallInternal+0x7728>
    80016692:	96cf906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18428
                        *sp++ = val;
    80016696:	00acb023          	sd	a0,0(s9)
quickjs-nuttx/quickjs.c:18437
                        *sp++ = val;
    8001669a:	ed843783          	ld	a5,-296(s0)
    8001669e:	0cc1                	addi	s9,s9,16
    800166a0:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18438
                        break;
    800166a4:	b5fd                	j	80016592 <JS_CallInternal+0x7624>
quickjs-nuttx/quickjs.c:18432
                        val = JS_GetProperty(ctx, obj, atom);
    800166a6:	de843783          	ld	a5,-536(s0)
    800166aa:	de043703          	ld	a4,-544(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800166ae:	4801                	li	a6,0
    800166b0:	863e                	mv	a2,a5
    800166b2:	86d6                	mv	a3,s5
    800166b4:	85ba                	mv	a1,a4
    800166b6:	8526                	mv	a0,s1
    800166b8:	eef43c23          	sd	a5,-264(s0)
    800166bc:	eee43823          	sd	a4,-272(s0)
    800166c0:	3ea000ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800166c4:	aeb43c23          	sd	a1,-1288(s0)
    800166c8:	ecb43c23          	sd	a1,-296(s0)
    800166cc:	aea43823          	sd	a0,-1296(s0)
    800166d0:	eca43823          	sd	a0,-304(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18433
                        if (unlikely(JS_IsException(val)))
    800166d4:	2581                	sext.w	a1,a1
    800166d6:	4799                	li	a5,6
    800166d8:	00f59463          	bne	a1,a5,800166e0 <JS_CallInternal+0x7772>
    800166dc:	922f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18435
                        JS_FreeValue(ctx, sp[-1]);
    800166e0:	ff0cb583          	ld	a1,-16(s9)
    800166e4:	ff8cb603          	ld	a2,-8(s9)
    800166e8:	8526                	mv	a0,s1
    800166ea:	8b4f50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18436
                        sp[-1] = JS_UNDEFINED;
    800166ee:	478d                	li	a5,3
    800166f0:	fe0cb823          	sd	zero,-16(s9)
    800166f4:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18437
                        *sp++ = val;
    800166f8:	ed043783          	ld	a5,-304(s0)
    800166fc:	00fcb023          	sd	a5,0(s9)
    80016700:	bf69                	j	8001669a <JS_CallInternal+0x772c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80016702:	77fd                	lui	a5,0xfffff
    80016704:	f8040713          	addi	a4,s0,-128
    80016708:	97ba                	add	a5,a5,a4
    8001670a:	e8043023          	sd	zero,-384(s0)
    8001670e:	e8043423          	sd	zero,-376(s0)
    80016712:	7207b023          	sd	zero,1824(a5) # fffffffffffff720 <_ebss+0xffffffff7fefe5ba>
    80016716:	7207b423          	sd	zero,1832(a5)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18452
            goto done_generator;
    8001671a:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:18554
        sf->cur_pc = pc;
    8001671c:	77fd                	lui	a5,0xfffff
    8001671e:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80016722:	97a2                	add	a5,a5,s0
    80016724:	639c                	ld	a5,0(a5)
    80016726:	03a7bc23          	sd	s10,56(a5)
quickjs-nuttx/quickjs.c:18555
        sf->cur_sp = sp;
    8001672a:	77fd                	lui	a5,0xfffff
    8001672c:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80016730:	97a2                	add	a5,a5,s0
    80016732:	639c                	ld	a5,0(a5)
    80016734:	0597b423          	sd	s9,72(a5)
quickjs-nuttx/quickjs.c:18567
    rt->current_stack_frame = sf->prev_frame;
    80016738:	77fd                	lui	a5,0xfffff
    8001673a:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8001673e:	97a2                	add	a5,a5,s0
    80016740:	639c                	ld	a5,0(a5)
    80016742:	777d                	lui	a4,0xfffff
    80016744:	64870713          	addi	a4,a4,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    80016748:	9722                	add	a4,a4,s0
    8001674a:	639c                	ld	a5,0(a5)
    8001674c:	6318                	ld	a4,0(a4)
    8001674e:	ff7c                	sd	a5,248(a4)
quickjs-nuttx/quickjs.c:18568
    return ret_val;
    80016750:	f8040713          	addi	a4,s0,-128
    80016754:	77fd                	lui	a5,0xfffff
    80016756:	97ba                	add	a5,a5,a4
    80016758:	777d                	lui	a4,0xfffff
    8001675a:	62870713          	addi	a4,a4,1576 # fffffffffffff628 <_ebss+0xffffffff7fefe4c2>
    8001675e:	9722                	add	a4,a4,s0
    80016760:	6318                	ld	a4,0(a4)
    80016762:	df343423          	sd	s3,-536(s0)
    80016766:	72e7a023          	sw	a4,1824(a5) # fffffffffffff720 <_ebss+0xffffffff7fefe5ba>
    8001676a:	7207b783          	ld	a5,1824(a5)
    8001676e:	def43023          	sd	a5,-544(s0)
    80016772:	8bff806f          	j	8000f030 <JS_CallInternal+0xc2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80016776:	77fd                	lui	a5,0xfffff
    80016778:	f8040693          	addi	a3,s0,-128
    8001677c:	97b6                	add	a5,a5,a3
    8001677e:	4705                	li	a4,1
    80016780:	72e7b023          	sd	a4,1824(a5) # fffffffffffff720 <_ebss+0xffffffff7fefe5ba>
    80016784:	7207b423          	sd	zero,1832(a5)
    80016788:	e8e43823          	sd	a4,-368(s0)
    8001678c:	e8043c23          	sd	zero,-360(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18455
            goto done_generator;
    80016790:	4981                	li	s3,0
    80016792:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:18459
            goto done_generator;
    80016794:	777d                	lui	a4,0xfffff
    80016796:	62870713          	addi	a4,a4,1576 # fffffffffffff628 <_ebss+0xffffffff7fefe4c2>
    8001679a:	9722                	add	a4,a4,s0
    8001679c:	e31c                	sd	a5,0(a4)
    8001679e:	bfbd                	j	8001671c <JS_CallInternal+0x77ae>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800167a0:	77fd                	lui	a5,0xfffff
    800167a2:	f8040693          	addi	a3,s0,-128
    800167a6:	97b6                	add	a5,a5,a3
    800167a8:	4709                	li	a4,2
    800167aa:	72e7b023          	sd	a4,1824(a5) # fffffffffffff720 <_ebss+0xffffffff7fefe5ba>
    800167ae:	7207b423          	sd	zero,1832(a5)
    800167b2:	ece43823          	sd	a4,-304(s0)
    800167b6:	ec043c23          	sd	zero,-296(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18459
    800167ba:	4981                	li	s3,0
    800167bc:	4789                	li	a5,2
    800167be:	bfd9                	j	80016794 <JS_CallInternal+0x7826>
quickjs-nuttx/quickjs.c:18461
            ret_val = JS_UNDEFINED;
    800167c0:	77fd                	lui	a5,0xfffff
    800167c2:	f8040713          	addi	a4,s0,-128
    800167c6:	97ba                	add	a5,a5,a4
    800167c8:	7207a223          	sw	zero,1828(a5) # fffffffffffff724 <_ebss+0xffffffff7fefe5be>
    800167cc:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:18462
            goto done_generator;
    800167ce:	b7b9                	j	8001671c <JS_CallInternal+0x77ae>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800167d0:	77fd                	lui	a5,0xfffff
    800167d2:	f8040693          	addi	a3,s0,-128
    800167d6:	97b6                	add	a5,a5,a3
    800167d8:	470d                	li	a4,3
    800167da:	72e7b023          	sd	a4,1824(a5) # fffffffffffff720 <_ebss+0xffffffff7fefe5ba>
    800167de:	7207b423          	sd	zero,1832(a5)
    800167e2:	eee43823          	sd	a4,-272(s0)
    800167e6:	ee043c23          	sd	zero,-264(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18465
            goto done_generator;
    800167ea:	4981                	li	s3,0
    800167ec:	478d                	li	a5,3
    800167ee:	b75d                	j	80016794 <JS_CallInternal+0x7826>
quickjs-nuttx/quickjs.c:18468
            BREAK;
    800167f0:	000d4b03          	lbu	s6,0(s10)
    800167f4:	00058797          	auipc	a5,0x58
    800167f8:	63c78793          	addi	a5,a5,1596 # 8006ee30 <dispatch_table.4>
    800167fc:	0d05                	addi	s10,s10,1
    800167fe:	003b1713          	slli	a4,s6,0x3
    80016802:	97ba                	add	a5,a5,a4
    80016804:	639c                	ld	a5,0(a5)
    80016806:	9a1f806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18470
            if (JS_VALUE_GET_TAG(sp[-1]) == JS_TAG_UNDEFINED ||
    8001680a:	ff8cb783          	ld	a5,-8(s9)
    8001680e:	4705                	li	a4,1
    80016810:	37f9                	addiw	a5,a5,-2
    80016812:	02f76b63          	bltu	a4,a5,80016848 <JS_CallInternal+0x78da>
quickjs-nuttx/quickjs.c:18507
            sp[-1] = JS_TRUE;
    80016816:	4785                	li	a5,1
    80016818:	fe0cb823          	sd	zero,-16(s9)
    8001681c:	fefca823          	sw	a5,-16(s9)
    80016820:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18508
            BREAK;
    80016824:	000d4b03          	lbu	s6,0(s10)
    80016828:	00058797          	auipc	a5,0x58
    8001682c:	60878793          	addi	a5,a5,1544 # 8006ee30 <dispatch_table.4>
    80016830:	0d05                	addi	s10,s10,1
    80016832:	003b1713          	slli	a4,s6,0x3
    80016836:	97ba                	add	a5,a5,a4
    80016838:	639c                	ld	a5,0(a5)
    8001683a:	96df806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18478
            if (JS_VALUE_GET_TAG(sp[-1]) == JS_TAG_UNDEFINED) {
    8001683e:	ff8ca703          	lw	a4,-8(s9)
    80016842:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:18484
            if (JS_VALUE_GET_TAG(sp[-1]) == JS_TAG_NULL) {
    80016844:	fcf709e3          	beq	a4,a5,80016816 <JS_CallInternal+0x78a8>
quickjs-nuttx/quickjs.c:18510
            JS_FreeValue(ctx, sp[-1]);
    80016848:	ff0cb583          	ld	a1,-16(s9)
    8001684c:	ff8cb603          	ld	a2,-8(s9)
    80016850:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:18512
            BREAK;
    80016852:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:18510
            JS_FreeValue(ctx, sp[-1]);
    80016854:	f4bf40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18511
            sp[-1] = JS_FALSE;
    80016858:	4785                	li	a5,1
    8001685a:	fefcbc23          	sd	a5,-8(s9)
    8001685e:	fe0cb823          	sd	zero,-16(s9)
quickjs-nuttx/quickjs.c:18512
            BREAK;
    80016862:	fffd4b03          	lbu	s6,-1(s10)
    80016866:	00058797          	auipc	a5,0x58
    8001686a:	5ca78793          	addi	a5,a5,1482 # 8006ee30 <dispatch_table.4>
    8001686e:	003b1713          	slli	a4,s6,0x3
    80016872:	97ba                	add	a5,a5,a4
    80016874:	639c                	ld	a5,0(a5)
    80016876:	931f806f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18484
            if (JS_VALUE_GET_TAG(sp[-1]) == JS_TAG_NULL) {
    8001687a:	ff8ca703          	lw	a4,-8(s9)
    8001687e:	4789                	li	a5,2
    80016880:	b7d1                	j	80016844 <JS_CallInternal+0x78d6>
quickjs-nuttx/quickjs.c:18492
            if (js_operator_typeof(ctx, sp[-1]) == JS_ATOM_undefined) {
    80016882:	ff0cb583          	ld	a1,-16(s9)
    80016886:	ff8cb603          	ld	a2,-8(s9)
    8001688a:	8526                	mv	a0,s1
    8001688c:	c63f70ef          	jal	ra,8000e4ee <js_operator_typeof>
    80016890:	04600793          	li	a5,70
quickjs-nuttx/quickjs.c:18498
            if (js_operator_typeof(ctx, sp[-1]) == JS_ATOM_function) {
    80016894:	faf51ae3          	bne	a0,a5,80016848 <JS_CallInternal+0x78da>
quickjs-nuttx/quickjs.c:18504
            JS_FreeValue(ctx, sp[-1]);
    80016898:	ff0cb583          	ld	a1,-16(s9)
    8001689c:	ff8cb603          	ld	a2,-8(s9)
    800168a0:	8526                	mv	a0,s1
    800168a2:	efdf40ef          	jal	ra,8000b79e <JS_FreeValue>
    800168a6:	bf85                	j	80016816 <JS_CallInternal+0x78a8>
quickjs-nuttx/quickjs.c:18498
            if (js_operator_typeof(ctx, sp[-1]) == JS_ATOM_function) {
    800168a8:	ff0cb583          	ld	a1,-16(s9)
    800168ac:	ff8cb603          	ld	a2,-8(s9)
    800168b0:	8526                	mv	a0,s1
    800168b2:	c3df70ef          	jal	ra,8000e4ee <js_operator_typeof>
    800168b6:	47ed                	li	a5,27
    800168b8:	bff1                	j	80016894 <JS_CallInternal+0x7926>
quickjs-nuttx/quickjs.c:18516
                                  (int)(pc - b->byte_code_buf - 1), opcode);
    800168ba:	020db603          	ld	a2,32(s11)
quickjs-nuttx/quickjs.c:18515
            JS_ThrowInternalError(ctx, "invalid opcode: pc=%u opcode=0x%02x",
    800168be:	86da                	mv	a3,s6
    800168c0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:18516
                                  (int)(pc - b->byte_code_buf - 1), opcode);
    800168c2:	40cd0633          	sub	a2,s10,a2
quickjs-nuttx/quickjs.c:18515
            JS_ThrowInternalError(ctx, "invalid opcode: pc=%u opcode=0x%02x",
    800168c6:	367d                	addiw	a2,a2,-1
    800168c8:	00053597          	auipc	a1,0x53
    800168cc:	5e858593          	addi	a1,a1,1512 # 80069eb0 <qjsc_repl+0x4900>
    800168d0:	028030ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:18517
            goto exception;
    800168d4:	f2bf806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16084
            local_buf = arg_buf = sf->arg_buf;
    800168d8:	77fd                	lui	a5,0xfffff
    800168da:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    800168de:	97a2                	add	a5,a5,s0
    800168e0:	639c                	ld	a5,0(a5)
    800168e2:	777d                	lui	a4,0xfffff
    800168e4:	65870713          	addi	a4,a4,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    800168e8:	9722                	add	a4,a4,s0
    800168ea:	e31c                	sd	a5,0(a4)
    800168ec:	f13f806f          	j	8000f7fe <JS_CallInternal+0x890>
    800168f0:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16193
            *sp++ = js_closure(ctx, JS_DupValue(ctx, b->cpool[*pc++]), var_refs, sf);
    800168f2:	8d52                	mv	s10,s4
    800168f4:	f0bf806f          	j	8000f7fe <JS_CallInternal+0x890>
    800168f8:	8cce                	mv	s9,s3
    800168fa:	f05f806f          	j	8000f7fe <JS_CallInternal+0x890>
    800168fe:	8cd2                	mv	s9,s4
quickjs-nuttx/quickjs.c:16304
                pc += 2;
    80016900:	8d56                	mv	s10,s5
    80016902:	efdf806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16494
                pc += 2;
    80016906:	8d56                	mv	s10,s5
    80016908:	ef7f806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16532
                pc += 2;
    8001690c:	8d52                	mv	s10,s4
    8001690e:	ef1f806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16555
                pc += 2;
    80016912:	8d5a                	mv	s10,s6
    80016914:	eebf806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16774
                pc += 4;
    80016918:	8d4e                	mv	s10,s3
    8001691a:	ee5f806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16788
                pc += 4;
    8001691e:	8d4e                	mv	s10,s3
    80016920:	edff806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17297
            JS_FreeValue(ctx, sp[-1]); /* drop the next method */
    80016924:	8cce                	mv	s9,s3
    80016926:	ed9f806f          	j	8000f7fe <JS_CallInternal+0x890>
    8001692a:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:17419
                pc += 4;
    8001692c:	8d52                	mv	s10,s4
    8001692e:	ed1f806f          	j	8000f7fe <JS_CallInternal+0x890>
    80016932:	8cce                	mv	s9,s3
    80016934:	ecbf806f          	j	8000f7fe <JS_CallInternal+0x890>
    80016938:	8cd2                	mv	s9,s4
    8001693a:	ec5f806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17486
                pc += 4;
    8001693e:	8d4e                	mv	s10,s3
    80016940:	ebff806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17501
                pc += 4;
    80016944:	8d4e                	mv	s10,s3
    80016946:	eb9f806f          	j	8000f7fe <JS_CallInternal+0x890>
    8001694a:	8cce                	mv	s9,s3
    8001694c:	eb3f806f          	j	8000f7fe <JS_CallInternal+0x890>
    80016950:	8cce                	mv	s9,s3
    80016952:	eadf806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17759
                mask = *pc++;
    80016956:	8d4e                	mv	s10,s3
    80016958:	ea7f806f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18302
                pc += 4;
    8001695c:	8d4e                	mv	s10,s3
    8001695e:	ea1f806f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property1():
quickjs-nuttx/quickjs.c:5204
        pr = &prop[h - 1];
    80016962:	078e                	slli	a5,a5,0x3
    80016964:	17e1                	addi	a5,a5,-8
    80016966:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    80016968:	43cc                	lw	a1,4(a5)
    8001696a:	00c59463          	bne	a1,a2,80016972 <JS_CallInternal+0x7a04>
    8001696e:	f1ff806f          	j	8000f88c <JS_CallInternal+0x91e>
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    80016972:	439c                	lw	a5,0(a5)
    80016974:	8ff5                	and	a5,a5,a3
    80016976:	1782                	slli	a5,a5,0x20
    80016978:	9381                	srli	a5,a5,0x20
    8001697a:	edbf806f          	j	8000f854 <JS_CallInternal+0x8e6>
JS_CallInternal():
quickjs-nuttx/quickjs.c:18530
            JSValue val = *--sp;
    8001697e:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:18531
            JS_FreeValue(ctx, val);
    80016982:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:18530
            JSValue val = *--sp;
    80016984:	eeb43823          	sd	a1,-272(s0)
    80016988:	ff8cb603          	ld	a2,-8(s9)
    8001698c:	eec43c23          	sd	a2,-264(s0)
    80016990:	ff8cb983          	ld	s3,-8(s9)
    80016994:	ff0caa03          	lw	s4,-16(s9)
quickjs-nuttx/quickjs.c:18531
            JS_FreeValue(ctx, val);
    80016998:	e07f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18532
            if (JS_VALUE_GET_TAG(val) == JS_TAG_CATCH_OFFSET) {
    8001699c:	0009879b          	sext.w	a5,s3
quickjs-nuttx/quickjs.c:18530
            JSValue val = *--sp;
    800169a0:	ff0c8993          	addi	s3,s9,-16
quickjs-nuttx/quickjs.c:18532
            if (JS_VALUE_GET_TAG(val) == JS_TAG_CATCH_OFFSET) {
    800169a4:	03279563          	bne	a5,s2,800169ce <JS_CallInternal+0x7a60>
quickjs-nuttx/quickjs.c:18534
                if (pos == 0) {
    800169a8:	020a1d63          	bnez	s4,800169e2 <JS_CallInternal+0x7a74>
quickjs-nuttx/quickjs.c:18536
                    JS_FreeValue(ctx, sp[-1]); /* drop the next method */
    800169ac:	fe0cb583          	ld	a1,-32(s9)
    800169b0:	fe8cb603          	ld	a2,-24(s9)
    800169b4:	8526                	mv	a0,s1
    800169b6:	fe0c8993          	addi	s3,s9,-32
    800169ba:	de5f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18538
                    JS_IteratorClose(ctx, sp[-1], TRUE);
    800169be:	fd0cb583          	ld	a1,-48(s9)
    800169c2:	fd8cb603          	ld	a2,-40(s9)
    800169c6:	4685                	li	a3,1
    800169c8:	8526                	mv	a0,s1
    800169ca:	270020ef          	jal	ra,80018c3a <JS_IteratorClose>
    800169ce:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:18529
        while (sp > stack_buf) {
    800169d0:	77fd                	lui	a5,0xfffff
    800169d2:	60078793          	addi	a5,a5,1536 # fffffffffffff600 <_ebss+0xffffffff7fefe49a>
    800169d6:	97a2                	add	a5,a5,s0
    800169d8:	639c                	ld	a5,0(a5)
    800169da:	fb97e2e3          	bltu	a5,s9,8001697e <JS_CallInternal+0x7a10>
    800169de:	eeff806f          	j	8000f8cc <JS_CallInternal+0x95e>
quickjs-nuttx/quickjs.c:18540
                    *sp++ = rt->current_exception;
    800169e2:	77fd                	lui	a5,0xfffff
    800169e4:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    800169e8:	97a2                	add	a5,a5,s0
    800169ea:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:18541
                    rt->current_exception = JS_NULL;
    800169ec:	777d                	lui	a4,0xfffff
    800169ee:	64870713          	addi	a4,a4,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
quickjs-nuttx/quickjs.c:18540
                    *sp++ = rt->current_exception;
    800169f2:	73fc                	ld	a5,224(a5)
quickjs-nuttx/quickjs.c:18541
                    rt->current_exception = JS_NULL;
    800169f4:	9722                	add	a4,a4,s0
    800169f6:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:18540
                    *sp++ = rt->current_exception;
    800169f8:	fefcb823          	sd	a5,-16(s9)
    800169fc:	77fd                	lui	a5,0xfffff
    800169fe:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    80016a02:	97a2                	add	a5,a5,s0
    80016a04:	639c                	ld	a5,0(a5)
    80016a06:	77fc                	ld	a5,232(a5)
    80016a08:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18541
                    rt->current_exception = JS_NULL;
    80016a0c:	77fd                	lui	a5,0xfffff
    80016a0e:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    80016a12:	97a2                	add	a5,a5,s0
    80016a14:	639c                	ld	a5,0(a5)
    80016a16:	0e07b023          	sd	zero,224(a5)
    80016a1a:	4789                	li	a5,2
    80016a1c:	f77c                	sd	a5,232(a4)
quickjs-nuttx/quickjs.c:18542
                    pc = b->byte_code_buf + pos;
    80016a1e:	020dbe03          	ld	t3,32(s11)
    80016a22:	014e0d33          	add	s10,t3,s4
quickjs-nuttx/quickjs.c:18543
                    goto restart;
    80016a26:	f2ef806f          	j	8000f154 <JS_CallInternal+0x1e6>
quickjs-nuttx/quickjs.c:18532
            if (JS_VALUE_GET_TAG(val) == JS_TAG_CATCH_OFFSET) {
    80016a2a:	4915                	li	s2,5
    80016a2c:	b755                	j	800169d0 <JS_CallInternal+0x7a62>
JS_DefineGlobalFunction():
quickjs-nuttx/quickjs.c:9559
    if (!prs || (prs->flags & JS_PROP_CONFIGURABLE)) {
    80016a2e:	01a7d79b          	srliw	a5,a5,0x1a
    80016a32:	8b85                	andi	a5,a5,1
    80016a34:	c399                	beqz	a5,80016a3a <JS_CallInternal+0x7acc>
    80016a36:	d39fa06f          	j	8001176e <JS_CallInternal+0x2800>
quickjs-nuttx/quickjs.c:9558
    flags = JS_PROP_HAS_VALUE | JS_PROP_THROW;
    80016a3a:	6719                	lui	a4,0x6
    80016a3c:	d3bfa06f          	j	80011776 <JS_CallInternal+0x2808>
JS_DefinePrivateField():
quickjs-nuttx/quickjs.c:7287
        JS_ThrowTypeErrorAtom(ctx, "private class field '%s' already exists",
    80016a40:	00053697          	auipc	a3,0x53
    80016a44:	14868693          	addi	a3,a3,328 # 80069b88 <qjsc_repl+0x45d8>
    80016a48:	00053617          	auipc	a2,0x53
    80016a4c:	4b860613          	addi	a2,a2,1208 # 80069f00 <qjsc_repl+0x4950>
    80016a50:	8526                	mv	a0,s1
    80016a52:	4f7010ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
quickjs-nuttx/quickjs.c:7289
        goto fail;
    80016a56:	a9cfd06f          	j	80013cf2 <JS_CallInternal+0x4d84>
JS_AddBrand():
quickjs-nuttx/quickjs.c:7390
            JS_FreeAtom(ctx, brand_atom);
    80016a5a:	85de                	mv	a1,s7
    80016a5c:	8526                	mv	a0,s1
    80016a5e:	eeaf40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:7391
            JS_ThrowTypeError(ctx, "private method is already present");
    80016a62:	8526                	mv	a0,s1
    80016a64:	00053597          	auipc	a1,0x53
    80016a68:	4c458593          	addi	a1,a1,1220 # 80069f28 <qjsc_repl+0x4978>
    80016a6c:	401010ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:7392
            return -1;
    80016a70:	d8ff806f          	j	8000f7fe <JS_CallInternal+0x890>

0000000080016a74 <JS_CallFree>:
JS_CallFree():
quickjs-nuttx/quickjs.c:18580
{
    80016a74:	7159                	addi	sp,sp,-112
quickjs-nuttx/quickjs.c:18581
    JSValue res = JS_CallInternal(ctx, func_obj, this_obj, JS_UNDEFINED,
    80016a76:	4889                	li	a7,2
    80016a78:	e446                	sd	a7,8(sp)
    80016a7a:	e042                	sd	a6,0(sp)
    80016a7c:	88be                	mv	a7,a5
    80016a7e:	480d                	li	a6,3
    80016a80:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:18580
{
    80016a82:	f486                	sd	ra,104(sp)
    80016a84:	f0a2                	sd	s0,96(sp)
    80016a86:	f432                	sd	a2,40(sp)
    80016a88:	842a                	mv	s0,a0
    80016a8a:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:18581
    JSValue res = JS_CallInternal(ctx, func_obj, this_obj, JS_UNDEFINED,
    80016a8c:	ce2f80ef          	jal	ra,8000ef6e <JS_CallInternal>
    80016a90:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:18583
    JS_FreeValue(ctx, func_obj);
    80016a92:	7622                	ld	a2,40(sp)
    80016a94:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:18581
    JSValue res = JS_CallInternal(ctx, func_obj, this_obj, JS_UNDEFINED,
    80016a96:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:18583
    JS_FreeValue(ctx, func_obj);
    80016a98:	8522                	mv	a0,s0
    80016a9a:	d05f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18585
}
    80016a9e:	70a6                	ld	ra,104(sp)
    80016aa0:	7406                	ld	s0,96(sp)
    80016aa2:	7542                	ld	a0,48(sp)
    80016aa4:	75e2                	ld	a1,56(sp)
    80016aa6:	6165                	addi	sp,sp,112
    80016aa8:	8082                	ret

0000000080016aaa <JS_GetPropertyInternal>:
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7115
{
    80016aaa:	7155                	addi	sp,sp,-208
    80016aac:	e1a2                	sd	s0,192(sp)
    80016aae:	fd26                	sd	s1,184(sp)
    80016ab0:	f94a                	sd	s2,176(sp)
    80016ab2:	f152                	sd	s4,160(sp)
    80016ab4:	ec32                	sd	a2,24(sp)
    80016ab6:	e43e                	sd	a5,8(sp)
    80016ab8:	e586                	sd	ra,200(sp)
    80016aba:	f54e                	sd	s3,168(sp)
    80016abc:	ed56                	sd	s5,152(sp)
    80016abe:	e95a                	sd	s6,144(sp)
    80016ac0:	e82e                	sd	a1,16(sp)
    80016ac2:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:7121
    tag = JS_VALUE_GET_TAG(obj);
    80016ac4:	2601                	sext.w	a2,a2
quickjs-nuttx/quickjs.c:7122
    if (unlikely(tag != JS_TAG_OBJECT)) {
    80016ac6:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:7115
{
    80016ac8:	84aa                	mv	s1,a0
    80016aca:	8936                	mv	s2,a3
    80016acc:	8a42                	mv	s4,a6
    80016ace:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:7122
    if (unlikely(tag != JS_TAG_OBJECT)) {
    80016ad0:	06f61963          	bne	a2,a5,80016b42 <JS_GetPropertyInternal+0x98>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80016ad4:	04000ab7          	lui	s5,0x4000
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    80016ad8:	02191993          	slli	s3,s2,0x21
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80016adc:	1afd                	addi	s5,s5,-1
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    80016ade:	0219d993          	srli	s3,s3,0x21
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80016ae2:	6c18                	ld	a4,24(s0)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80016ae4:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80016ae6:	531c                	lw	a5,32(a4)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80016ae8:	04070613          	addi	a2,a4,64 # 6040 <asinh-0x7fff9fc0>
find_own_property():
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80016aec:	00f977b3          	and	a5,s2,a5
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80016af0:	1782                	slli	a5,a5,0x20
    80016af2:	9381                	srli	a5,a5,0x20
    80016af4:	0785                	addi	a5,a5,1
    80016af6:	02d787b3          	mul	a5,a5,a3
    80016afa:	97ba                	add	a5,a5,a4
    80016afc:	0007e683          	lwu	a3,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80016b00:	12069b63          	bnez	a3,80016c36 <JS_GetPropertyInternal+0x18c>
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7188
        if (unlikely(p->is_exotic)) {
    80016b04:	00544783          	lbu	a5,5(s0)
    80016b08:	0047f713          	andi	a4,a5,4
    80016b0c:	20070663          	beqz	a4,80016d18 <JS_GetPropertyInternal+0x26e>
quickjs-nuttx/quickjs.c:7190
            if (p->fast_array) {
    80016b10:	8ba1                	andi	a5,a5,8
    80016b12:	24078663          	beqz	a5,80016d5e <JS_GetPropertyInternal+0x2b4>
quickjs-nuttx/quickjs.c:7191
                if (__JS_AtomIsTaggedInt(prop)) {
    80016b16:	22095463          	bgez	s2,80016d3e <JS_GetPropertyInternal+0x294>
quickjs-nuttx/quickjs.c:7193
                    if (idx < p->u.array.count) {
    80016b1a:	403c                	lw	a5,64(s0)
    80016b1c:	1ef9f663          	bgeu	s3,a5,80016d08 <JS_GetPropertyInternal+0x25e>
quickjs-nuttx/quickjs.c:7195
                        return JS_GetPropertyUint32(ctx, JS_MKPTR(JS_TAG_OBJECT, p), idx);
    80016b20:	eca2                	sd	s0,88(sp)
    80016b22:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:7256
}
    80016b24:	640e                	ld	s0,192(sp)
    80016b26:	60ae                	ld	ra,200(sp)
    80016b28:	794a                	ld	s2,176(sp)
    80016b2a:	7a0a                	ld	s4,160(sp)
    80016b2c:	6aea                	ld	s5,152(sp)
    80016b2e:	6b4a                	ld	s6,144(sp)
quickjs-nuttx/quickjs.c:7195
                        return JS_GetPropertyUint32(ctx, JS_MKPTR(JS_TAG_OBJECT, p), idx);
    80016b30:	57fd                	li	a5,-1
    80016b32:	86ce                	mv	a3,s3
    80016b34:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:7256
}
    80016b36:	79aa                	ld	s3,168(sp)
    80016b38:	74ea                	ld	s1,184(sp)
quickjs-nuttx/quickjs.c:7195
                        return JS_GetPropertyUint32(ctx, JS_MKPTR(JS_TAG_OBJECT, p), idx);
    80016b3a:	f0be                	sd	a5,96(sp)
    80016b3c:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:7256
}
    80016b3e:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:7195
                        return JS_GetPropertyUint32(ctx, JS_MKPTR(JS_TAG_OBJECT, p), idx);
    80016b40:	abe5                	j	80017138 <JS_GetPropertyUint32>
quickjs-nuttx/quickjs.c:7123
        switch(tag) {
    80016b42:	4799                	li	a5,6
    80016b44:	0af60a63          	beq	a2,a5,80016bf8 <JS_GetPropertyInternal+0x14e>
    80016b48:	02c7e563          	bltu	a5,a2,80016b72 <JS_GetPropertyInternal+0xc8>
    80016b4c:	4789                	li	a5,2
    80016b4e:	06f60863          	beq	a2,a5,80016bbe <JS_GetPropertyInternal+0x114>
    80016b52:	478d                	li	a5,3
    80016b54:	08f60963          	beq	a2,a5,80016be6 <JS_GetPropertyInternal+0x13c>
quickjs-nuttx/quickjs.c:7152
        p = JS_VALUE_GET_OBJ(JS_GetPrototypePrimitive(ctx, obj));
    80016b58:	65c2                	ld	a1,16(sp)
    80016b5a:	6662                	ld	a2,24(sp)
    80016b5c:	8526                	mv	a0,s1
    80016b5e:	a2cf10ef          	jal	ra,80007d8a <JS_GetPrototypePrimitive>
    80016b62:	e4aa                	sd	a0,72(sp)
    80016b64:	e8ae                	sd	a1,80(sp)
    80016b66:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:7153
        if (!p)
    80016b68:	f535                	bnez	a0,80016ad4 <JS_GetPropertyInternal+0x2a>
quickjs-nuttx/quickjs.c:7154
            return JS_UNDEFINED;
    80016b6a:	fc02                	sd	zero,56(sp)
    80016b6c:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:7240
                                return desc.value;
    80016b6e:	e0be                	sd	a5,64(sp)
    80016b70:	a071                	j	80016bfc <JS_GetPropertyInternal+0x152>
quickjs-nuttx/quickjs.c:7123
        switch(tag) {
    80016b72:	57e5                	li	a5,-7
    80016b74:	fef612e3          	bne	a2,a5,80016b58 <JS_GetPropertyInternal+0xae>
quickjs-nuttx/quickjs.c:7133
                if (__JS_AtomIsTaggedInt(prop)) {
    80016b78:	0a06d263          	bgez	a3,80016c1c <JS_GetPropertyInternal+0x172>
quickjs-nuttx/quickjs.c:7136
                    if (idx < p1->len) {
    80016b7c:	4058                	lw	a4,4(s0)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    80016b7e:	800007b7          	lui	a5,0x80000
    80016b82:	fff7c793          	not	a5,a5
    80016b86:	00f6f5b3          	and	a1,a3,a5
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7136
                    if (idx < p1->len) {
    80016b8a:	8ff9                	and	a5,a5,a4
    80016b8c:	2781                	sext.w	a5,a5
    80016b8e:	fcf5f5e3          	bgeu	a1,a5,80016b58 <JS_GetPropertyInternal+0xae>
quickjs-nuttx/quickjs.c:7137
                        if (p1->is_wide_char)
    80016b92:	1582                	slli	a1,a1,0x20
    80016b94:	2701                	sext.w	a4,a4
    80016b96:	9181                	srli	a1,a1,0x20
    80016b98:	06075e63          	bgez	a4,80016c14 <JS_GetPropertyInternal+0x16a>
quickjs-nuttx/quickjs.c:7138
                            ch = p1->u.str16[idx];
    80016b9c:	05a1                	addi	a1,a1,8
    80016b9e:	0586                	slli	a1,a1,0x1
    80016ba0:	942e                	add	s0,s0,a1
    80016ba2:	00045583          	lhu	a1,0(s0)
quickjs-nuttx/quickjs.c:7256
}
    80016ba6:	640e                	ld	s0,192(sp)
    80016ba8:	60ae                	ld	ra,200(sp)
    80016baa:	794a                	ld	s2,176(sp)
    80016bac:	79aa                	ld	s3,168(sp)
    80016bae:	7a0a                	ld	s4,160(sp)
    80016bb0:	6aea                	ld	s5,152(sp)
    80016bb2:	6b4a                	ld	s6,144(sp)
quickjs-nuttx/quickjs.c:7141
                        return js_new_string_char(ctx, ch);
    80016bb4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:7256
}
    80016bb6:	74ea                	ld	s1,184(sp)
    80016bb8:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:7141
                        return js_new_string_char(ctx, ch);
    80016bba:	3e00906f          	j	8001ff9a <js_new_string_char>
quickjs-nuttx/quickjs.c:7125
            return JS_ThrowTypeErrorAtom(ctx, "cannot read property '%s' of null", prop);
    80016bbe:	00053697          	auipc	a3,0x53
    80016bc2:	fca68693          	addi	a3,a3,-54 # 80069b88 <qjsc_repl+0x45d8>
    80016bc6:	00053617          	auipc	a2,0x53
    80016bca:	3ba60613          	addi	a2,a2,954 # 80069f80 <qjsc_repl+0x49d0>
quickjs-nuttx/quickjs.c:7256
}
    80016bce:	640e                	ld	s0,192(sp)
    80016bd0:	60ae                	ld	ra,200(sp)
    80016bd2:	74ea                	ld	s1,184(sp)
    80016bd4:	79aa                	ld	s3,168(sp)
    80016bd6:	7a0a                	ld	s4,160(sp)
    80016bd8:	6aea                	ld	s5,152(sp)
    80016bda:	6b4a                	ld	s6,144(sp)
quickjs-nuttx/quickjs.c:7127
            return JS_ThrowTypeErrorAtom(ctx, "cannot read property '%s' of undefined", prop);
    80016bdc:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:7256
}
    80016bde:	794a                	ld	s2,176(sp)
    80016be0:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:7127
            return JS_ThrowTypeErrorAtom(ctx, "cannot read property '%s' of undefined", prop);
    80016be2:	3670106f          	j	80018748 <__JS_ThrowTypeErrorAtom>
    80016be6:	00053697          	auipc	a3,0x53
    80016bea:	fa268693          	addi	a3,a3,-94 # 80069b88 <qjsc_repl+0x45d8>
    80016bee:	00053617          	auipc	a2,0x53
    80016bf2:	3ba60613          	addi	a2,a2,954 # 80069fa8 <qjsc_repl+0x49f8>
    80016bf6:	bfe1                	j	80016bce <JS_GetPropertyInternal+0x124>
quickjs-nuttx/quickjs.c:7129
            return JS_EXCEPTION;
    80016bf8:	fc02                	sd	zero,56(sp)
    80016bfa:	e0b2                	sd	a2,64(sp)
quickjs-nuttx/quickjs.c:7256 (discriminator 14)
}
    80016bfc:	60ae                	ld	ra,200(sp)
    80016bfe:	640e                	ld	s0,192(sp)
    80016c00:	7562                	ld	a0,56(sp)
    80016c02:	6586                	ld	a1,64(sp)
    80016c04:	74ea                	ld	s1,184(sp)
    80016c06:	794a                	ld	s2,176(sp)
    80016c08:	79aa                	ld	s3,168(sp)
    80016c0a:	7a0a                	ld	s4,160(sp)
    80016c0c:	6aea                	ld	s5,152(sp)
    80016c0e:	6b4a                	ld	s6,144(sp)
    80016c10:	6169                	addi	sp,sp,208
    80016c12:	8082                	ret
quickjs-nuttx/quickjs.c:7140
                            ch = p1->u.str8[idx];
    80016c14:	95a2                	add	a1,a1,s0
    80016c16:	0105c583          	lbu	a1,16(a1)
    80016c1a:	b771                	j	80016ba6 <JS_GetPropertyInternal+0xfc>
quickjs-nuttx/quickjs.c:7143
                } else if (prop == JS_ATOM_length) {
    80016c1c:	03000793          	li	a5,48
    80016c20:	f2f69ce3          	bne	a3,a5,80016b58 <JS_GetPropertyInternal+0xae>
quickjs-nuttx/quickjs.c:7144
                    return JS_NewInt32(ctx, p1->len);
    80016c24:	41dc                	lw	a5,4(a1)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80016c26:	ce82                	sw	zero,92(sp)
    80016c28:	e082                	sd	zero,64(sp)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7144
    80016c2a:	1786                	slli	a5,a5,0x21
    80016c2c:	9385                	srli	a5,a5,0x21
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80016c2e:	ccbe                	sw	a5,88(sp)
    80016c30:	67e6                	ld	a5,88(sp)
    80016c32:	fc3e                	sd	a5,56(sp)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7144
    80016c34:	b7e1                	j	80016bfc <JS_GetPropertyInternal+0x152>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80016c36:	00369713          	slli	a4,a3,0x3
    80016c3a:	1761                	addi	a4,a4,-8
    80016c3c:	9732                	add	a4,a4,a2
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80016c3e:	434c                	lw	a1,4(a4)
    80016c40:	431c                	lw	a5,0(a4)
    80016c42:	05259763          	bne	a1,s2,80016c90 <JS_GetPropertyInternal+0x1e6>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80016c46:	7010                	ld	a2,32(s0)
    80016c48:	0692                	slli	a3,a3,0x4
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7163
            if (unlikely(prs->flags & JS_PROP_TMASK)) {
    80016c4a:	01a7d79b          	srliw	a5,a5,0x1a
find_own_property():
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80016c4e:	16c1                	addi	a3,a3,-16
    80016c50:	0307f793          	andi	a5,a5,48
    80016c54:	96b2                	add	a3,a3,a2
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7163
            if (unlikely(prs->flags & JS_PROP_TMASK)) {
    80016c56:	cfc1                	beqz	a5,80016cee <JS_GetPropertyInternal+0x244>
quickjs-nuttx/quickjs.c:7164
                if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    80016c58:	4641                	li	a2,16
    80016c5a:	04c79163          	bne	a5,a2,80016c9c <JS_GetPropertyInternal+0x1f2>
quickjs-nuttx/quickjs.c:7165
                    if (unlikely(!pr->u.getset.getter)) {
    80016c5e:	628c                	ld	a1,0(a3)
    80016c60:	d589                	beqz	a1,80016b6a <JS_GetPropertyInternal+0xc0>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80016c62:	419c                	lw	a5,0(a1)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7171
                        return JS_CallFree(ctx, func, this_obj, 0, NULL);
    80016c64:	6682                	ld	a3,0(sp)
    80016c66:	6722                	ld	a4,8(sp)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80016c68:	2785                	addiw	a5,a5,1
    80016c6a:	c19c                	sw	a5,0(a1)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7256
}
    80016c6c:	640e                	ld	s0,192(sp)
    80016c6e:	60ae                	ld	ra,200(sp)
    80016c70:	794a                	ld	s2,176(sp)
    80016c72:	79aa                	ld	s3,168(sp)
    80016c74:	7a0a                	ld	s4,160(sp)
    80016c76:	6aea                	ld	s5,152(sp)
    80016c78:	6b4a                	ld	s6,144(sp)
    80016c7a:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:7171
                        return JS_CallFree(ctx, func, this_obj, 0, NULL);
    80016c7c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:7256
}
    80016c7e:	74ea                	ld	s1,184(sp)
    80016c80:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:7171
                        return JS_CallFree(ctx, func, this_obj, 0, NULL);
    80016c82:	ecae                	sd	a1,88(sp)
    80016c84:	4801                	li	a6,0
    80016c86:	4781                	li	a5,0
    80016c88:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:7256
}
    80016c8a:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:7171
                        return JS_CallFree(ctx, func, this_obj, 0, NULL);
    80016c8c:	de9ff06f          	j	80016a74 <JS_CallFree>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80016c90:	00faf7b3          	and	a5,s5,a5
    80016c94:	02079693          	slli	a3,a5,0x20
    80016c98:	9281                	srli	a3,a3,0x20
    80016c9a:	b59d                	j	80016b00 <JS_GetPropertyInternal+0x56>
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7173
                } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80016c9c:	02000613          	li	a2,32
    80016ca0:	02c79963          	bne	a5,a2,80016cd2 <JS_GetPropertyInternal+0x228>
quickjs-nuttx/quickjs.c:7174
                    JSValue val = *pr->u.var_ref->pvalue;
    80016ca4:	629c                	ld	a5,0(a3)
    80016ca6:	6f9c                	ld	a5,24(a5)
    80016ca8:	6388                	ld	a0,0(a5)
    80016caa:	ecaa                	sd	a0,88(sp)
    80016cac:	678c                	ld	a1,8(a5)
    80016cae:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:7175
                    if (unlikely(JS_IsUninitialized(val)))
    80016cb0:	4798                	lw	a4,8(a5)
    80016cb2:	4791                	li	a5,4
    80016cb4:	02f71f63          	bne	a4,a5,80016cf2 <JS_GetPropertyInternal+0x248>
quickjs-nuttx/quickjs.c:7256
}
    80016cb8:	640e                	ld	s0,192(sp)
    80016cba:	60ae                	ld	ra,200(sp)
    80016cbc:	79aa                	ld	s3,168(sp)
    80016cbe:	7a0a                	ld	s4,160(sp)
    80016cc0:	6aea                	ld	s5,152(sp)
    80016cc2:	6b4a                	ld	s6,144(sp)
quickjs-nuttx/quickjs.c:7176
                        return JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    80016cc4:	85ca                	mv	a1,s2
    80016cc6:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:7256
}
    80016cc8:	794a                	ld	s2,176(sp)
    80016cca:	74ea                	ld	s1,184(sp)
    80016ccc:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:7176
                        return JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    80016cce:	37f0206f          	j	8001984c <JS_ThrowReferenceErrorUninitialized>
quickjs-nuttx/quickjs.c:7178
                } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    80016cd2:	03000613          	li	a2,48
    80016cd6:	e2c797e3          	bne	a5,a2,80016b04 <JS_GetPropertyInternal+0x5a>
quickjs-nuttx/quickjs.c:7180
                    if (JS_AutoInitProperty(ctx, p, prop, pr, prs))
    80016cda:	864a                	mv	a2,s2
    80016cdc:	85a2                	mv	a1,s0
    80016cde:	8526                	mv	a0,s1
    80016ce0:	7fe030ef          	jal	ra,8001a4de <JS_AutoInitProperty>
    80016ce4:	de050fe3          	beqz	a0,80016ae2 <JS_GetPropertyInternal+0x38>
quickjs-nuttx/quickjs.c:7234
                            return JS_EXCEPTION;
    80016ce8:	fc02                	sd	zero,56(sp)
    80016cea:	4799                	li	a5,6
    80016cec:	b549                	j	80016b6e <JS_GetPropertyInternal+0xc4>
quickjs-nuttx/quickjs.c:7185
                return JS_DupValue(ctx, pr->u.value);
    80016cee:	6288                	ld	a0,0(a3)
    80016cf0:	668c                	ld	a1,8(a3)
quickjs-nuttx/quickjs.c:7256
}
    80016cf2:	640e                	ld	s0,192(sp)
    80016cf4:	60ae                	ld	ra,200(sp)
    80016cf6:	74ea                	ld	s1,184(sp)
    80016cf8:	794a                	ld	s2,176(sp)
    80016cfa:	79aa                	ld	s3,168(sp)
    80016cfc:	7a0a                	ld	s4,160(sp)
    80016cfe:	6aea                	ld	s5,152(sp)
    80016d00:	6b4a                	ld	s6,144(sp)
    80016d02:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:7185
                return JS_DupValue(ctx, pr->u.value);
    80016d04:	f16f306f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:7196
                    } else if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    80016d08:	00645783          	lhu	a5,6(s0)
    80016d0c:	4729                	li	a4,10
    80016d0e:	37ad                	addiw	a5,a5,-21
    80016d10:	17c2                	slli	a5,a5,0x30
    80016d12:	93c1                	srli	a5,a5,0x30
    80016d14:	e4f77be3          	bgeu	a4,a5,80016b6a <JS_GetPropertyInternal+0xc0>
quickjs-nuttx/quickjs.c:7247
        p = p->shape->proto;
    80016d18:	6c1c                	ld	a5,24(s0)
    80016d1a:	7f80                	ld	s0,56(a5)
quickjs-nuttx/quickjs.c:7248
        if (!p)
    80016d1c:	dc0413e3          	bnez	s0,80016ae2 <JS_GetPropertyInternal+0x38>
quickjs-nuttx/quickjs.c:7251
    if (unlikely(throw_ref_error)) {
    80016d20:	e40a05e3          	beqz	s4,80016b6a <JS_GetPropertyInternal+0xc0>
quickjs-nuttx/quickjs.c:7256
}
    80016d24:	640e                	ld	s0,192(sp)
    80016d26:	60ae                	ld	ra,200(sp)
    80016d28:	79aa                	ld	s3,168(sp)
    80016d2a:	7a0a                	ld	s4,160(sp)
    80016d2c:	6aea                	ld	s5,152(sp)
    80016d2e:	6b4a                	ld	s6,144(sp)
quickjs-nuttx/quickjs.c:7252
        return JS_ThrowReferenceErrorNotDefined(ctx, prop);
    80016d30:	85ca                	mv	a1,s2
    80016d32:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:7256
}
    80016d34:	794a                	ld	s2,176(sp)
    80016d36:	74ea                	ld	s1,184(sp)
    80016d38:	6169                	addi	sp,sp,208
quickjs-nuttx/quickjs.c:7252
        return JS_ThrowReferenceErrorNotDefined(ctx, prop);
    80016d3a:	36d0206f          	j	800198a6 <JS_ThrowReferenceErrorNotDefined>
quickjs-nuttx/quickjs.c:7200
                } else if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    80016d3e:	00645783          	lhu	a5,6(s0)
    80016d42:	4729                	li	a4,10
    80016d44:	37ad                	addiw	a5,a5,-21
    80016d46:	17c2                	slli	a5,a5,0x30
    80016d48:	93c1                	srli	a5,a5,0x30
    80016d4a:	fcf767e3          	bltu	a4,a5,80016d18 <JS_GetPropertyInternal+0x26e>
quickjs-nuttx/quickjs.c:7203
                    ret = JS_AtomIsNumericIndex(ctx, prop);
    80016d4e:	85ca                	mv	a1,s2
    80016d50:	8526                	mv	a0,s1
    80016d52:	53a110ef          	jal	ra,8002828c <JS_AtomIsNumericIndex>
quickjs-nuttx/quickjs.c:7204
                    if (ret != 0) {
    80016d56:	d169                	beqz	a0,80016d18 <JS_GetPropertyInternal+0x26e>
quickjs-nuttx/quickjs.c:7205
                        if (ret < 0)
    80016d58:	e00559e3          	bgez	a0,80016b6a <JS_GetPropertyInternal+0xc0>
    80016d5c:	b771                	j	80016ce8 <JS_GetPropertyInternal+0x23e>
quickjs-nuttx/quickjs.c:7211
                const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    80016d5e:	00645703          	lhu	a4,6(s0)
    80016d62:	02800693          	li	a3,40
    80016d66:	6c9c                	ld	a5,24(s1)
    80016d68:	02d70733          	mul	a4,a4,a3
    80016d6c:	7bbc                	ld	a5,112(a5)
    80016d6e:	97ba                	add	a5,a5,a4
    80016d70:	739c                	ld	a5,32(a5)
quickjs-nuttx/quickjs.c:7212
                if (em) {
    80016d72:	d3dd                	beqz	a5,80016d18 <JS_GetPropertyInternal+0x26e>
quickjs-nuttx/quickjs.c:7213
                    if (em->get_property) {
    80016d74:	7798                	ld	a4,40(a5)
    80016d76:	cb1d                	beqz	a4,80016dac <JS_GetPropertyInternal+0x302>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80016d78:	4018                	lw	a4,0(s0)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7219
                        retval = em->get_property(ctx, obj1, prop, this_obj);
    80016d7a:	86ca                	mv	a3,s2
    80016d7c:	567d                	li	a2,-1
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80016d7e:	2705                	addiw	a4,a4,1
    80016d80:	c018                	sw	a4,0(s0)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    80016d82:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:7219
    80016d84:	0287b803          	ld	a6,40(a5) # ffffffff80000028 <_ebss+0xfffffffeffefeec2>
    80016d88:	f83a                	sd	a4,48(sp)
    80016d8a:	67a2                	ld	a5,8(sp)
    80016d8c:	6702                	ld	a4,0(sp)
    80016d8e:	85a2                	mv	a1,s0
    80016d90:	8526                	mv	a0,s1
    80016d92:	f422                	sd	s0,40(sp)
    80016d94:	9802                	jalr	a6
    80016d96:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:7220
                        JS_FreeValue(ctx, obj1);
    80016d98:	7642                	ld	a2,48(sp)
    80016d9a:	75a2                	ld	a1,40(sp)
quickjs-nuttx/quickjs.c:7219
                        retval = em->get_property(ctx, obj1, prop, this_obj);
    80016d9c:	ecaa                	sd	a0,88(sp)
quickjs-nuttx/quickjs.c:7220
                        JS_FreeValue(ctx, obj1);
    80016d9e:	8526                	mv	a0,s1
    80016da0:	9fff40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7221
                        return retval;
    80016da4:	67e6                	ld	a5,88(sp)
    80016da6:	fc3e                	sd	a5,56(sp)
    80016da8:	7786                	ld	a5,96(sp)
    80016daa:	b3d1                	j	80016b6e <JS_GetPropertyInternal+0xc4>
quickjs-nuttx/quickjs.c:7223
                    if (em->get_own_property) {
    80016dac:	6398                	ld	a4,0(a5)
    80016dae:	d72d                	beqz	a4,80016d18 <JS_GetPropertyInternal+0x26e>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80016db0:	4018                	lw	a4,0(s0)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7231
                        ret = em->get_own_property(ctx, &desc, obj1, prop);
    80016db2:	8622                	mv	a2,s0
    80016db4:	08ac                	addi	a1,sp,88
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80016db6:	2705                	addiw	a4,a4,1
    80016db8:	c018                	sw	a4,0(s0)
JS_GetPropertyInternal():
quickjs-nuttx/quickjs.c:7231
    80016dba:	639c                	ld	a5,0(a5)
    80016dbc:	577d                	li	a4,-1
    80016dbe:	f83a                	sd	a4,48(sp)
    80016dc0:	56fd                	li	a3,-1
    80016dc2:	874a                	mv	a4,s2
    80016dc4:	8526                	mv	a0,s1
    80016dc6:	f422                	sd	s0,40(sp)
    80016dc8:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:7232
                        JS_FreeValue(ctx, obj1);
    80016dca:	75a2                	ld	a1,40(sp)
    80016dcc:	7642                	ld	a2,48(sp)
quickjs-nuttx/quickjs.c:7231
                        ret = em->get_own_property(ctx, &desc, obj1, prop);
    80016dce:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:7232
                        JS_FreeValue(ctx, obj1);
    80016dd0:	8526                	mv	a0,s1
    80016dd2:	9cdf40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7233
                        if (ret < 0)
    80016dd6:	f00b49e3          	bltz	s6,80016ce8 <JS_GetPropertyInternal+0x23e>
quickjs-nuttx/quickjs.c:7235
                        if (ret) {
    80016dda:	f20b0fe3          	beqz	s6,80016d18 <JS_GetPropertyInternal+0x26e>
quickjs-nuttx/quickjs.c:7236
                            if (desc.flags & JS_PROP_GETSET) {
    80016dde:	47e6                	lw	a5,88(sp)
    80016de0:	8bc1                	andi	a5,a5,16
    80016de2:	c395                	beqz	a5,80016e06 <JS_GetPropertyInternal+0x35c>
quickjs-nuttx/quickjs.c:7237
                                JS_FreeValue(ctx, desc.setter);
    80016de4:	658a                	ld	a1,128(sp)
    80016de6:	662a                	ld	a2,136(sp)
    80016de8:	8526                	mv	a0,s1
    80016dea:	9b5f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7238
                                return JS_CallFree(ctx, desc.getter, this_obj, 0, NULL);
    80016dee:	6682                	ld	a3,0(sp)
    80016df0:	6722                	ld	a4,8(sp)
    80016df2:	75c6                	ld	a1,112(sp)
    80016df4:	7666                	ld	a2,120(sp)
    80016df6:	4801                	li	a6,0
    80016df8:	4781                	li	a5,0
    80016dfa:	8526                	mv	a0,s1
    80016dfc:	c79ff0ef          	jal	ra,80016a74 <JS_CallFree>
    80016e00:	fc2a                	sd	a0,56(sp)
    80016e02:	e0ae                	sd	a1,64(sp)
    80016e04:	bbe5                	j	80016bfc <JS_GetPropertyInternal+0x152>
quickjs-nuttx/quickjs.c:7240
                                return desc.value;
    80016e06:	7786                	ld	a5,96(sp)
    80016e08:	fc3e                	sd	a5,56(sp)
    80016e0a:	77a6                	ld	a5,104(sp)
    80016e0c:	b38d                	j	80016b6e <JS_GetPropertyInternal+0xc4>

0000000080016e0e <JS_IteratorGetCompleteValue>:
JS_IteratorGetCompleteValue():
quickjs-nuttx/quickjs.c:15283
{
    80016e0e:	7175                	addi	sp,sp,-144
    80016e10:	e122                	sd	s0,128(sp)
    80016e12:	87b2                	mv	a5,a2
    80016e14:	8436                	mv	s0,a3
    80016e16:	872e                	mv	a4,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80016e18:	4801                	li	a6,0
    80016e1a:	06a00693          	li	a3,106
JS_IteratorGetCompleteValue():
quickjs-nuttx/quickjs.c:15283
    80016e1e:	fca6                	sd	s1,120(sp)
    80016e20:	f4ce                	sd	s3,104(sp)
    80016e22:	e506                	sd	ra,136(sp)
    80016e24:	f8ca                	sd	s2,112(sp)
    80016e26:	84aa                	mv	s1,a0
    80016e28:	e02e                	sd	a1,0(sp)
    80016e2a:	e432                	sd	a2,8(sp)
    80016e2c:	e8ae                	sd	a1,80(sp)
    80016e2e:	ecb2                	sd	a2,88(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80016e30:	c7bff0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_IteratorGetCompleteValue():
quickjs-nuttx/quickjs.c:15287
    if (JS_IsException(done_val))
    80016e34:	0005879b          	sext.w	a5,a1
    80016e38:	4999                	li	s3,6
    80016e3a:	05378563          	beq	a5,s3,80016e84 <JS_IteratorGetCompleteValue+0x76>
    80016e3e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:15289
    done = JS_ToBoolFree(ctx, done_val);
    80016e40:	85aa                	mv	a1,a0
    80016e42:	8526                	mv	a0,s1
    80016e44:	cd1f40ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80016e48:	67a2                	ld	a5,8(sp)
    80016e4a:	6702                	ld	a4,0(sp)
    80016e4c:	892a                	mv	s2,a0
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80016e4e:	863e                	mv	a2,a5
    80016e50:	4801                	li	a6,0
    80016e52:	04100693          	li	a3,65
    80016e56:	85ba                	mv	a1,a4
    80016e58:	8526                	mv	a0,s1
    80016e5a:	e4be                	sd	a5,72(sp)
    80016e5c:	e0ba                	sd	a4,64(sp)
    80016e5e:	c4dff0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_IteratorGetCompleteValue():
quickjs-nuttx/quickjs.c:15291
    if (JS_IsException(value))
    80016e62:	0005879b          	sext.w	a5,a1
    80016e66:	01378f63          	beq	a5,s3,80016e84 <JS_IteratorGetCompleteValue+0x76>
quickjs-nuttx/quickjs.c:15293
    *pdone = done;
    80016e6a:	01242023          	sw	s2,0(s0)
quickjs-nuttx/quickjs.c:15294
    return value;
    80016e6e:	e0aa                	sd	a0,64(sp)
    80016e70:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:15298
}
    80016e72:	60aa                	ld	ra,136(sp)
    80016e74:	640a                	ld	s0,128(sp)
    80016e76:	6506                	ld	a0,64(sp)
    80016e78:	65a6                	ld	a1,72(sp)
    80016e7a:	74e6                	ld	s1,120(sp)
    80016e7c:	7946                	ld	s2,112(sp)
    80016e7e:	79a6                	ld	s3,104(sp)
    80016e80:	6149                	addi	sp,sp,144
    80016e82:	8082                	ret
quickjs-nuttx/quickjs.c:15297
    return JS_EXCEPTION;
    80016e84:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:15296
    *pdone = FALSE;
    80016e86:	00042023          	sw	zero,0(s0)
quickjs-nuttx/quickjs.c:15297
    return JS_EXCEPTION;
    80016e8a:	e082                	sd	zero,64(sp)
    80016e8c:	e4be                	sd	a5,72(sp)
    80016e8e:	b7d5                	j	80016e72 <JS_IteratorGetCompleteValue+0x64>

0000000080016e90 <js_is_regexp>:
js_is_regexp():
quickjs-nuttx/quickjs.c:43411
{
    80016e90:	711d                	addi	sp,sp,-96
    80016e92:	e8a2                	sd	s0,80(sp)
    80016e94:	ec86                	sd	ra,88(sp)
    80016e96:	e4a6                	sd	s1,72(sp)
    80016e98:	e0ca                	sd	s2,64(sp)
    80016e9a:	e02e                	sd	a1,0(sp)
    80016e9c:	e432                	sd	a2,8(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    80016e9e:	0006041b          	sext.w	s0,a2
js_is_regexp():
quickjs-nuttx/quickjs.c:43414
    if (!JS_IsObject(obj))
    80016ea2:	577d                	li	a4,-1
    80016ea4:	06e41463          	bne	s0,a4,80016f0c <js_is_regexp+0x7c>
    80016ea8:	87b2                	mv	a5,a2
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80016eaa:	872e                	mv	a4,a1
    80016eac:	4801                	li	a6,0
    80016eae:	0d700693          	li	a3,215
    80016eb2:	f432                	sd	a2,40(sp)
    80016eb4:	892a                	mv	s2,a0
    80016eb6:	84ae                	mv	s1,a1
    80016eb8:	f02e                	sd	a1,32(sp)
    80016eba:	bf1ff0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80016ebe:	f82a                	sd	a0,48(sp)
    80016ec0:	fc2e                	sd	a1,56(sp)
    80016ec2:	e82a                	sd	a0,16(sp)
    80016ec4:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80016ec6:	0005879b          	sext.w	a5,a1
js_is_regexp():
quickjs-nuttx/quickjs.c:43417
    if (JS_IsException(m))
    80016eca:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80016ecc:	862e                	mv	a2,a1
js_is_regexp():
quickjs-nuttx/quickjs.c:43417
    80016ece:	02e78863          	beq	a5,a4,80016efe <js_is_regexp+0x6e>
quickjs-nuttx/quickjs.c:43419
    if (!JS_IsUndefined(m))
    80016ed2:	470d                	li	a4,3
    80016ed4:	00e78b63          	beq	a5,a4,80016eea <js_is_regexp+0x5a>
quickjs-nuttx/quickjs.c:43422
}
    80016ed8:	6446                	ld	s0,80(sp)
    80016eda:	60e6                	ld	ra,88(sp)
    80016edc:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:43420
        return JS_ToBoolFree(ctx, m);
    80016ede:	85aa                	mv	a1,a0
    80016ee0:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:43422
}
    80016ee2:	6906                	ld	s2,64(sp)
    80016ee4:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:43420
        return JS_ToBoolFree(ctx, m);
    80016ee6:	c2ff406f          	j	8000bb14 <JS_ToBoolFree>
js_get_regexp():
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    80016eea:	0064d703          	lhu	a4,6(s1)
    80016eee:	47c9                	li	a5,18
quickjs-nuttx/quickjs.c:43406
    return NULL;
    80016ef0:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    80016ef2:	00f71463          	bne	a4,a5,80016efa <js_is_regexp+0x6a>
quickjs-nuttx/quickjs.c:43401
            return &p->u.regexp;
    80016ef6:	03048413          	addi	s0,s1,48
js_is_regexp():
quickjs-nuttx/quickjs.c:43421
    return js_get_regexp(ctx, obj, FALSE) != NULL;
    80016efa:	00803433          	snez	s0,s0
quickjs-nuttx/quickjs.c:43422
}
    80016efe:	60e6                	ld	ra,88(sp)
    80016f00:	8522                	mv	a0,s0
    80016f02:	6446                	ld	s0,80(sp)
    80016f04:	64a6                	ld	s1,72(sp)
    80016f06:	6906                	ld	s2,64(sp)
    80016f08:	6125                	addi	sp,sp,96
    80016f0a:	8082                	ret
quickjs-nuttx/quickjs.c:43415
        return FALSE;
    80016f0c:	4401                	li	s0,0
    80016f0e:	bfc5                	j	80016efe <js_is_regexp+0x6e>

0000000080016f10 <JS_GetPropertyValue>:
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7891
{
    80016f10:	7115                	addi	sp,sp,-224
    80016f12:	e9a2                	sd	s0,208(sp)
    80016f14:	e5a6                	sd	s1,200(sp)
    80016f16:	f432                	sd	a2,40(sp)
    80016f18:	e836                	sd	a3,16(sp)
    80016f1a:	87b2                	mv	a5,a2
    80016f1c:	ed86                	sd	ra,216(sp)
    80016f1e:	e1ca                	sd	s2,192(sp)
    80016f20:	bd22                	fsd	fs0,184(sp)
    80016f22:	f02e                	sd	a1,32(sp)
    80016f24:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:7895
    if (likely(JS_VALUE_GET_TAG(this_obj) == JS_TAG_OBJECT &&
    80016f26:	2601                	sext.w	a2,a2
    80016f28:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:7891
{
    80016f2a:	84aa                	mv	s1,a0
    80016f2c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:7895
    if (likely(JS_VALUE_GET_TAG(this_obj) == JS_TAG_OBJECT &&
    80016f2e:	1ad61c63          	bne	a2,a3,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7895 (discriminator 1)
    80016f32:	2701                	sext.w	a4,a4
    80016f34:	1a071963          	bnez	a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7901
        idx = JS_VALUE_GET_INT(prop);
    80016f38:	0065d703          	lhu	a4,6(a1)
    80016f3c:	4675                	li	a2,29
    80016f3e:	46c2                	lw	a3,16(sp)
quickjs-nuttx/quickjs.c:7902
        switch(p->class_id) {
    80016f40:	3779                	addiw	a4,a4,-2
    80016f42:	03071593          	slli	a1,a4,0x30
    80016f46:	91c1                	srli	a1,a1,0x30
    80016f48:	18b66f63          	bltu	a2,a1,800170e6 <JS_GetPropertyValue+0x1d6>
    80016f4c:	00053617          	auipc	a2,0x53
    80016f50:	08460613          	addi	a2,a2,132 # 80069fd0 <qjsc_repl+0x4a20>
    80016f54:	00259713          	slli	a4,a1,0x2
    80016f58:	9732                	add	a4,a4,a2
    80016f5a:	4318                	lw	a4,0(a4)
    80016f5c:	9732                	add	a4,a4,a2
    80016f5e:	8702                	jr	a4
quickjs-nuttx/quickjs.c:7905
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    80016f60:	4038                	lw	a4,64(s0)
    80016f62:	18e6f263          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7906
            return JS_DupValue(ctx, p->u.array.u.values[idx]);
    80016f66:	7c1c                	ld	a5,56(s0)
    80016f68:	02069713          	slli	a4,a3,0x20
    80016f6c:	01c75693          	srli	a3,a4,0x1c
quickjs-nuttx/quickjs.c:7951
}
    80016f70:	644e                	ld	s0,208(sp)
quickjs-nuttx/quickjs.c:7906
            return JS_DupValue(ctx, p->u.array.u.values[idx]);
    80016f72:	96be                	add	a3,a3,a5
quickjs-nuttx/quickjs.c:7951
}
    80016f74:	60ee                	ld	ra,216(sp)
    80016f76:	64ae                	ld	s1,200(sp)
    80016f78:	690e                	ld	s2,192(sp)
    80016f7a:	346a                	fld	fs0,184(sp)
quickjs-nuttx/quickjs.c:7906
            return JS_DupValue(ctx, p->u.array.u.values[idx]);
    80016f7c:	6288                	ld	a0,0(a3)
    80016f7e:	668c                	ld	a1,8(a3)
quickjs-nuttx/quickjs.c:7951
}
    80016f80:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:7906
            return JS_DupValue(ctx, p->u.array.u.values[idx]);
    80016f82:	c98f306f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:7908
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    80016f86:	4038                	lw	a4,64(s0)
    80016f88:	14e6ff63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7909
            return JS_NewInt32(ctx, p->u.array.u.int8_ptr[idx]);
    80016f8c:	7c1c                	ld	a5,56(s0)
    80016f8e:	1682                	slli	a3,a3,0x20
    80016f90:	9281                	srli	a3,a3,0x20
    80016f92:	96be                	add	a3,a3,a5
    80016f94:	00068783          	lb	a5,0(a3)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80016f98:	c282                	sw	zero,68(sp)
    80016f9a:	c0be                	sw	a5,64(sp)
    80016f9c:	6786                	ld	a5,64(sp)
    80016f9e:	f83e                	sd	a5,48(sp)
    80016fa0:	fc02                	sd	zero,56(sp)
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7951 (discriminator 1)
}
    80016fa2:	60ee                	ld	ra,216(sp)
    80016fa4:	644e                	ld	s0,208(sp)
    80016fa6:	7542                	ld	a0,48(sp)
    80016fa8:	75e2                	ld	a1,56(sp)
    80016faa:	64ae                	ld	s1,200(sp)
    80016fac:	690e                	ld	s2,192(sp)
    80016fae:	346a                	fld	fs0,184(sp)
    80016fb0:	612d                	addi	sp,sp,224
    80016fb2:	8082                	ret
quickjs-nuttx/quickjs.c:7912
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    80016fb4:	4038                	lw	a4,64(s0)
    80016fb6:	12e6f863          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7913
            return JS_NewInt32(ctx, p->u.array.u.uint8_ptr[idx]);
    80016fba:	7c1c                	ld	a5,56(s0)
    80016fbc:	1682                	slli	a3,a3,0x20
    80016fbe:	9281                	srli	a3,a3,0x20
    80016fc0:	96be                	add	a3,a3,a5
    80016fc2:	0006c783          	lbu	a5,0(a3)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80016fc6:	ca82                	sw	zero,84(sp)
    80016fc8:	c8be                	sw	a5,80(sp)
    80016fca:	67c6                	ld	a5,80(sp)
    80016fcc:	bfc9                	j	80016f9e <JS_GetPropertyValue+0x8e>
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7915
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    80016fce:	4038                	lw	a4,64(s0)
    80016fd0:	10e6fb63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7916
            return JS_NewInt32(ctx, p->u.array.u.int16_ptr[idx]);
    80016fd4:	7c1c                	ld	a5,56(s0)
    80016fd6:	02069713          	slli	a4,a3,0x20
    80016fda:	01f75693          	srli	a3,a4,0x1f
    80016fde:	96be                	add	a3,a3,a5
    80016fe0:	00069783          	lh	a5,0(a3)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80016fe4:	d282                	sw	zero,100(sp)
    80016fe6:	d0be                	sw	a5,96(sp)
    80016fe8:	7786                	ld	a5,96(sp)
    80016fea:	bf55                	j	80016f9e <JS_GetPropertyValue+0x8e>
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7918
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    80016fec:	4038                	lw	a4,64(s0)
    80016fee:	0ee6fc63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7919
            return JS_NewInt32(ctx, p->u.array.u.uint16_ptr[idx]);
    80016ff2:	7c1c                	ld	a5,56(s0)
    80016ff4:	02069713          	slli	a4,a3,0x20
    80016ff8:	01f75693          	srli	a3,a4,0x1f
    80016ffc:	96be                	add	a3,a3,a5
    80016ffe:	0006d783          	lhu	a5,0(a3)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
