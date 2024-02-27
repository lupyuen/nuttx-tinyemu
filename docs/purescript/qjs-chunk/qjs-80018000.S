    80017002:	da82                	sw	zero,116(sp)
    80017004:	d8be                	sw	a5,112(sp)
    80017006:	77c6                	ld	a5,112(sp)
    80017008:	bf59                	j	80016f9e <JS_GetPropertyValue+0x8e>
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7921
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    8001700a:	4038                	lw	a4,64(s0)
    8001700c:	0ce6fd63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7922
            return JS_NewInt32(ctx, p->u.array.u.int32_ptr[idx]);
    80017010:	7c1c                	ld	a5,56(s0)
    80017012:	02069713          	slli	a4,a3,0x20
    80017016:	01e75693          	srli	a3,a4,0x1e
    8001701a:	96be                	add	a3,a3,a5
    8001701c:	429c                	lw	a5,0(a3)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001701e:	c302                	sw	zero,132(sp)
    80017020:	c13e                	sw	a5,128(sp)
    80017022:	678a                	ld	a5,128(sp)
    80017024:	bfad                	j	80016f9e <JS_GetPropertyValue+0x8e>
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7924
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    80017026:	4038                	lw	a4,64(s0)
    80017028:	0ae6ff63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7925
            return JS_NewUint32(ctx, p->u.array.u.uint32_ptr[idx]);
    8001702c:	7c1c                	ld	a5,56(s0)
    8001702e:	02069713          	slli	a4,a3,0x20
    80017032:	01e75693          	srli	a3,a4,0x1e
    80017036:	96be                	add	a3,a3,a5
    80017038:	4298                	lw	a4,0(a3)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    8001703a:	0007079b          	sext.w	a5,a4
    8001703e:	00074c63          	bltz	a4,80017056 <JS_GetPropertyValue+0x146>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80017042:	cb02                	sw	zero,148(sp)
    80017044:	c93e                	sw	a5,144(sp)
    80017046:	674a                	ld	a4,144(sp)
    80017048:	f13a                	sd	a4,160(sp)
    8001704a:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    8001704c:	d13e                	sw	a5,160(sp)
    8001704e:	378a                	fld	fa5,160(sp)
    80017050:	fc3a                	sd	a4,56(sp)
    80017052:	b83e                	fsd	fa5,48(sp)
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7925
    80017054:	b7b9                	j	80016fa2 <JS_GetPropertyValue+0x92>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80017056:	d21707d3          	fcvt.d.wu	fa5,a4
    8001705a:	471d                	li	a4,7
    8001705c:	e20787d3          	fmv.x.d	a5,fa5
JS_GetPropertyValue():
quickjs-nuttx/quickjs.h:230
    return v;
    80017060:	b13e                	fsd	fa5,160(sp)
    80017062:	2781                	sext.w	a5,a5
    80017064:	b7e5                	j	8001704c <JS_GetPropertyValue+0x13c>
quickjs-nuttx/quickjs.c:7927
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    80017066:	4038                	lw	a4,64(s0)
    80017068:	06e6ff63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7928
            return JS_NewBigInt64(ctx, p->u.array.u.int64_ptr[idx]);
    8001706c:	7c1c                	ld	a5,56(s0)
    8001706e:	02069713          	slli	a4,a3,0x20
    80017072:	01d75693          	srli	a3,a4,0x1d
quickjs-nuttx/quickjs.c:7951
}
    80017076:	644e                	ld	s0,208(sp)
quickjs-nuttx/quickjs.c:7928
            return JS_NewBigInt64(ctx, p->u.array.u.int64_ptr[idx]);
    80017078:	96be                	add	a3,a3,a5
quickjs-nuttx/quickjs.c:7951
}
    8001707a:	60ee                	ld	ra,216(sp)
    8001707c:	64ae                	ld	s1,200(sp)
    8001707e:	690e                	ld	s2,192(sp)
    80017080:	346a                	fld	fs0,184(sp)
quickjs-nuttx/quickjs.c:7928
            return JS_NewBigInt64(ctx, p->u.array.u.int64_ptr[idx]);
    80017082:	628c                	ld	a1,0(a3)
quickjs-nuttx/quickjs.c:7951
}
    80017084:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:7928
            return JS_NewBigInt64(ctx, p->u.array.u.int64_ptr[idx]);
    80017086:	0240706f          	j	8001e0aa <JS_NewBigInt64>
quickjs-nuttx/quickjs.c:7930
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    8001708a:	4038                	lw	a4,64(s0)
    8001708c:	04e6fd63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7931
            return JS_NewBigUint64(ctx, p->u.array.u.uint64_ptr[idx]);
    80017090:	7c1c                	ld	a5,56(s0)
    80017092:	02069713          	slli	a4,a3,0x20
    80017096:	01d75693          	srli	a3,a4,0x1d
quickjs-nuttx/quickjs.c:7951
}
    8001709a:	644e                	ld	s0,208(sp)
quickjs-nuttx/quickjs.c:7931
            return JS_NewBigUint64(ctx, p->u.array.u.uint64_ptr[idx]);
    8001709c:	96be                	add	a3,a3,a5
quickjs-nuttx/quickjs.c:7951
}
    8001709e:	60ee                	ld	ra,216(sp)
    800170a0:	64ae                	ld	s1,200(sp)
    800170a2:	690e                	ld	s2,192(sp)
    800170a4:	346a                	fld	fs0,184(sp)
quickjs-nuttx/quickjs.c:7931
            return JS_NewBigUint64(ctx, p->u.array.u.uint64_ptr[idx]);
    800170a6:	628c                	ld	a1,0(a3)
quickjs-nuttx/quickjs.c:7951
}
    800170a8:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs.c:7931
            return JS_NewBigUint64(ctx, p->u.array.u.uint64_ptr[idx]);
    800170aa:	0660706f          	j	8001e110 <JS_NewBigUint64>
quickjs-nuttx/quickjs.c:7933
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    800170ae:	4038                	lw	a4,64(s0)
    800170b0:	02e6fb63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7934
            return __JS_NewFloat64(ctx, p->u.array.u.float_ptr[idx]);
    800170b4:	7c1c                	ld	a5,56(s0)
    800170b6:	02069713          	slli	a4,a3,0x20
    800170ba:	01e75693          	srli	a3,a4,0x1e
    800170be:	96be                	add	a3,a3,a5
    800170c0:	0006a787          	flw	fa5,0(a3)
    800170c4:	420787d3          	fcvt.d.s	fa5,fa5
    800170c8:	b83e                	fsd	fa5,48(sp)
    800170ca:	479d                	li	a5,7
quickjs-nuttx/quickjs.c:7946
            return JS_EXCEPTION;
    800170cc:	fc3e                	sd	a5,56(sp)
    800170ce:	bdd1                	j	80016fa2 <JS_GetPropertyValue+0x92>
quickjs-nuttx/quickjs.c:7936
            if (unlikely(idx >= p->u.array.count)) goto slow_path;
    800170d0:	4038                	lw	a4,64(s0)
    800170d2:	00e6fa63          	bgeu	a3,a4,800170e6 <JS_GetPropertyValue+0x1d6>
quickjs-nuttx/quickjs.c:7937
            return __JS_NewFloat64(ctx, p->u.array.u.double_ptr[idx]);
    800170d6:	7c1c                	ld	a5,56(s0)
    800170d8:	02069713          	slli	a4,a3,0x20
    800170dc:	01d75693          	srli	a3,a4,0x1d
    800170e0:	96be                	add	a3,a3,a5
    800170e2:	229c                	fld	fa5,0(a3)
    800170e4:	b7d5                	j	800170c8 <JS_GetPropertyValue+0x1b8>
quickjs-nuttx/quickjs.c:7943
        atom = JS_ValueToAtom(ctx, prop);
    800170e6:	65c2                	ld	a1,16(sp)
    800170e8:	6662                	ld	a2,24(sp)
    800170ea:	8526                	mv	a0,s1
    800170ec:	e43e                	sd	a5,8(sp)
    800170ee:	724110ef          	jal	ra,80028812 <JS_ValueToAtom>
quickjs-nuttx/quickjs.c:7944
        JS_FreeValue(ctx, prop);
    800170f2:	65c2                	ld	a1,16(sp)
    800170f4:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:7943
        atom = JS_ValueToAtom(ctx, prop);
    800170f6:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:7944
        JS_FreeValue(ctx, prop);
    800170fa:	8526                	mv	a0,s1
    800170fc:	ea2f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7945
        if (unlikely(atom == JS_ATOM_NULL))
    80017100:	67a2                	ld	a5,8(sp)
    80017102:	00091563          	bnez	s2,8001710c <JS_GetPropertyValue+0x1fc>
quickjs-nuttx/quickjs.c:7946
            return JS_EXCEPTION;
    80017106:	f802                	sd	zero,48(sp)
    80017108:	4799                	li	a5,6
    8001710a:	b7c9                	j	800170cc <JS_GetPropertyValue+0x1bc>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001710c:	8722                	mv	a4,s0
    8001710e:	4801                	li	a6,0
    80017110:	86ca                	mv	a3,s2
    80017112:	85a2                	mv	a1,s0
    80017114:	863e                	mv	a2,a5
    80017116:	8526                	mv	a0,s1
    80017118:	e922                	sd	s0,144(sp)
    8001711a:	ed3e                	sd	a5,152(sp)
    8001711c:	98fff0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80017120:	f2050453          	fmv.d.x	fs0,a0
    80017124:	842e                	mv	s0,a1
    80017126:	f12a                	sd	a0,160(sp)
    80017128:	f52e                	sd	a1,168(sp)
JS_GetPropertyValue():
quickjs-nuttx/quickjs.c:7948
        JS_FreeAtom(ctx, atom);
    8001712a:	8526                	mv	a0,s1
    8001712c:	85ca                	mv	a1,s2
    8001712e:	81af40ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:7949
        return ret;
    80017132:	b822                	fsd	fs0,48(sp)
    80017134:	fc22                	sd	s0,56(sp)
    80017136:	b5b5                	j	80016fa2 <JS_GetPropertyValue+0x92>

0000000080017138 <JS_GetPropertyUint32>:
JS_GetPropertyUint32():
quickjs-nuttx/quickjs.c:7955
{
    80017138:	7139                	addi	sp,sp,-64
    8001713a:	e02e                	sd	a1,0(sp)
    8001713c:	e432                	sd	a2,8(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    8001713e:	0206c163          	bltz	a3,80017160 <JS_GetPropertyUint32+0x28>
    80017142:	0006879b          	sext.w	a5,a3
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80017146:	da02                	sw	zero,52(sp)
    80017148:	d83e                	sw	a5,48(sp)
    8001714a:	7742                	ld	a4,48(sp)
    8001714c:	f03a                	sd	a4,32(sp)
    8001714e:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80017150:	d03e                	sw	a5,32(sp)
JS_GetPropertyUint32():
quickjs-nuttx/quickjs.c:7956
    return JS_GetPropertyValue(ctx, this_obj, JS_NewUint32(ctx, idx));
    80017152:	7682                	ld	a3,32(sp)
    80017154:	6582                	ld	a1,0(sp)
    80017156:	6622                	ld	a2,8(sp)
    80017158:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:7957
}
    8001715a:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:7956
    return JS_GetPropertyValue(ctx, this_obj, JS_NewUint32(ctx, idx));
    8001715c:	db5ff06f          	j	80016f10 <JS_GetPropertyValue>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80017160:	d21687d3          	fcvt.d.wu	fa5,a3
    80017164:	471d                	li	a4,7
    80017166:	e20787d3          	fmv.x.d	a5,fa5
JS_GetPropertyUint32():
quickjs-nuttx/quickjs.h:230
    return v;
    8001716a:	b03e                	fsd	fa5,32(sp)
    8001716c:	2781                	sext.w	a5,a5
    8001716e:	b7cd                	j	80017150 <JS_GetPropertyUint32+0x18>

0000000080017170 <JS_GetOwnPropertyInternal>:
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7698
{
    80017170:	7159                	addi	sp,sp,-112
    80017172:	e4ce                	sd	s3,72(sp)
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017174:	040009b7          	lui	s3,0x4000
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7698
{
    80017178:	f0a2                	sd	s0,96(sp)
    8001717a:	eca6                	sd	s1,88(sp)
    8001717c:	e8ca                	sd	s2,80(sp)
    8001717e:	e0d2                	sd	s4,64(sp)
    80017180:	fc56                	sd	s5,56(sp)
    80017182:	f85a                	sd	s6,48(sp)
    80017184:	f45e                	sd	s7,40(sp)
    80017186:	842e                	mv	s0,a1
    80017188:	f486                	sd	ra,104(sp)
    8001718a:	892a                	mv	s2,a0
    8001718c:	85b2                	mv	a1,a2
    8001718e:	84b6                	mv	s1,a3
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017190:	5af1                	li	s5,-4
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017192:	19fd                	addi	s3,s3,-1
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7707
            desc->getter = JS_UNDEFINED;
    80017194:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:7711
                if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    80017196:	4b41                	li	s6,16
quickjs-nuttx/quickjs.c:7717
                } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017198:	02000b93          	li	s7,32
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    8001719c:	6d98                	ld	a4,24(a1)
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001719e:	531c                	lw	a5,32(a4)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    800171a0:	04070613          	addi	a2,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    800171a4:	8fe5                	and	a5,a5,s1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    800171a6:	1782                	slli	a5,a5,0x20
    800171a8:	9381                	srli	a5,a5,0x20
    800171aa:	0785                	addi	a5,a5,1
    800171ac:	035787b3          	mul	a5,a5,s5
    800171b0:	97ba                	add	a5,a5,a4
    800171b2:	0007e683          	lwu	a3,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    800171b6:	ea89                	bnez	a3,800171c8 <JS_GetOwnPropertyInternal+0x58>
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7746
    if (p->is_exotic) {
    800171b8:	0055c783          	lbu	a5,5(a1)
    800171bc:	0047f713          	andi	a4,a5,4
    800171c0:	10071563          	bnez	a4,800172ca <JS_GetOwnPropertyInternal+0x15a>
quickjs-nuttx/quickjs.c:7771
    return FALSE;
    800171c4:	4501                	li	a0,0
    800171c6:	a849                	j	80017258 <JS_GetOwnPropertyInternal+0xe8>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    800171c8:	00369713          	slli	a4,a3,0x3
    800171cc:	1761                	addi	a4,a4,-8
    800171ce:	9732                	add	a4,a4,a2
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    800171d0:	4348                	lw	a0,4(a4)
    800171d2:	431c                	lw	a5,0(a4)
    800171d4:	02951863          	bne	a0,s1,80017204 <JS_GetOwnPropertyInternal+0x94>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    800171d8:	0692                	slli	a3,a3,0x4
    800171da:	ff068613          	addi	a2,a3,-16
    800171de:	7194                	ld	a3,32(a1)
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7706
            desc->flags = prs->flags & JS_PROP_C_W_E;
    800171e0:	01a7d79b          	srliw	a5,a5,0x1a
find_own_property():
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    800171e4:	96b2                	add	a3,a3,a2
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7705
        if (desc) {
    800171e6:	e40d                	bnez	s0,80017210 <JS_GetOwnPropertyInternal+0xa0>
quickjs-nuttx/quickjs.c:7735
            if (unlikely((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF)) {
    800171e8:	0307f793          	andi	a5,a5,48
    800171ec:	02000713          	li	a4,32
    800171f0:	06e79363          	bne	a5,a4,80017256 <JS_GetOwnPropertyInternal+0xe6>
quickjs-nuttx/quickjs.c:7736
                if (unlikely(JS_IsUninitialized(*pr->u.var_ref->pvalue))) {
    800171f4:	629c                	ld	a5,0(a3)
JS_IsUninitialized():
quickjs-nuttx/quickjs.h:615
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_UNINITIALIZED);
    800171f6:	6f9c                	ld	a5,24(a5)
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7736
    800171f8:	4798                	lw	a4,8(a5)
    800171fa:	4791                	li	a5,4
    800171fc:	04f71d63          	bne	a4,a5,80017256 <JS_GetOwnPropertyInternal+0xe6>
quickjs-nuttx/quickjs.c:7737
                    JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    80017200:	85a6                	mv	a1,s1
    80017202:	a859                	j	80017298 <JS_GetOwnPropertyInternal+0x128>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017204:	00f9f7b3          	and	a5,s3,a5
    80017208:	02079693          	slli	a3,a5,0x20
    8001720c:	9281                	srli	a3,a3,0x20
    8001720e:	b765                	j	800171b6 <JS_GetOwnPropertyInternal+0x46>
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7706
            desc->flags = prs->flags & JS_PROP_C_W_E;
    80017210:	8b9d                	andi	a5,a5,7
    80017212:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:7707
            desc->getter = JS_UNDEFINED;
    80017214:	00043c23          	sd	zero,24(s0)
    80017218:	03443023          	sd	s4,32(s0)
quickjs-nuttx/quickjs.c:7708
            desc->setter = JS_UNDEFINED;
    8001721c:	02043423          	sd	zero,40(s0)
    80017220:	03443823          	sd	s4,48(s0)
quickjs-nuttx/quickjs.c:7709
            desc->value = JS_UNDEFINED;
    80017224:	00043423          	sd	zero,8(s0)
    80017228:	01443823          	sd	s4,16(s0)
quickjs-nuttx/quickjs.c:7710
            if (unlikely(prs->flags & JS_PROP_TMASK)) {
    8001722c:	4310                	lw	a2,0(a4)
    8001722e:	01a6561b          	srliw	a2,a2,0x1a
    80017232:	03067613          	andi	a2,a2,48
    80017236:	c259                	beqz	a2,800172bc <JS_GetOwnPropertyInternal+0x14c>
quickjs-nuttx/quickjs.c:7711
                if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    80017238:	05661263          	bne	a2,s6,8001727c <JS_GetOwnPropertyInternal+0x10c>
quickjs-nuttx/quickjs.c:7712
                    desc->flags |= JS_PROP_GETSET;
    8001723c:	0107e793          	ori	a5,a5,16
    80017240:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:7713
                    if (pr->u.getset.getter)
    80017242:	629c                	ld	a5,0(a3)
    80017244:	c799                	beqz	a5,80017252 <JS_GetOwnPropertyInternal+0xe2>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80017246:	4398                	lw	a4,0(a5)
    80017248:	2705                	addiw	a4,a4,1
    8001724a:	c398                	sw	a4,0(a5)
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7714
                        desc->getter = JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.getter));
    8001724c:	ec1c                	sd	a5,24(s0)
    8001724e:	57fd                	li	a5,-1
    80017250:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:7715
                    if (pr->u.getset.setter)
    80017252:	669c                	ld	a5,8(a3)
    80017254:	ef89                	bnez	a5,8001726e <JS_GetOwnPropertyInternal+0xfe>
quickjs-nuttx/quickjs.c:7744
        return TRUE;
    80017256:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:7772
}
    80017258:	70a6                	ld	ra,104(sp)
    8001725a:	7406                	ld	s0,96(sp)
    8001725c:	64e6                	ld	s1,88(sp)
    8001725e:	6946                	ld	s2,80(sp)
    80017260:	69a6                	ld	s3,72(sp)
    80017262:	6a06                	ld	s4,64(sp)
    80017264:	7ae2                	ld	s5,56(sp)
    80017266:	7b42                	ld	s6,48(sp)
    80017268:	7ba2                	ld	s7,40(sp)
    8001726a:	6165                	addi	sp,sp,112
    8001726c:	8082                	ret
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8001726e:	4398                	lw	a4,0(a5)
    80017270:	2705                	addiw	a4,a4,1
    80017272:	c398                	sw	a4,0(a5)
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7716
                        desc->setter = JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.setter));
    80017274:	f41c                	sd	a5,40(s0)
    80017276:	57fd                	li	a5,-1
    80017278:	f81c                	sd	a5,48(s0)
    8001727a:	bff1                	j	80017256 <JS_GetOwnPropertyInternal+0xe6>
quickjs-nuttx/quickjs.c:7717
                } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    8001727c:	03761263          	bne	a2,s7,800172a0 <JS_GetOwnPropertyInternal+0x130>
quickjs-nuttx/quickjs.c:7718
                    JSValue val = *pr->u.var_ref->pvalue;
    80017280:	629c                	ld	a5,0(a3)
    80017282:	6f9c                	ld	a5,24(a5)
    80017284:	678c                	ld	a1,8(a5)
    80017286:	6388                	ld	a0,0(a5)
quickjs-nuttx/quickjs.c:7719
                    if (unlikely(JS_IsUninitialized(val))) {
    80017288:	4791                	li	a5,4
quickjs-nuttx/quickjs.c:7718
                    JSValue val = *pr->u.var_ref->pvalue;
    8001728a:	ec2e                	sd	a1,24(sp)
    8001728c:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:7719
                    if (unlikely(JS_IsUninitialized(val))) {
    8001728e:	0005869b          	sext.w	a3,a1
    80017292:	02f69763          	bne	a3,a5,800172c0 <JS_GetOwnPropertyInternal+0x150>
quickjs-nuttx/quickjs.c:7720
                        JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    80017296:	434c                	lw	a1,4(a4)
quickjs-nuttx/quickjs.c:7737
                    JS_ThrowReferenceErrorUninitialized(ctx, prs->atom);
    80017298:	854a                	mv	a0,s2
    8001729a:	5b2020ef          	jal	ra,8001984c <JS_ThrowReferenceErrorUninitialized>
quickjs-nuttx/quickjs.c:7738
                    return -1;
    8001729e:	a829                	j	800172b8 <JS_GetOwnPropertyInternal+0x148>
quickjs-nuttx/quickjs.c:7724
                } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    800172a0:	03000793          	li	a5,48
    800172a4:	faf619e3          	bne	a2,a5,80017256 <JS_GetOwnPropertyInternal+0xe6>
quickjs-nuttx/quickjs.c:7726
                    if (JS_AutoInitProperty(ctx, p, prop, pr, prs))
    800172a8:	8626                	mv	a2,s1
    800172aa:	854a                	mv	a0,s2
    800172ac:	e42e                	sd	a1,8(sp)
    800172ae:	230030ef          	jal	ra,8001a4de <JS_AutoInitProperty>
    800172b2:	65a2                	ld	a1,8(sp)
    800172b4:	ee0504e3          	beqz	a0,8001719c <JS_GetOwnPropertyInternal+0x2c>
    800172b8:	557d                	li	a0,-1
    800172ba:	bf79                	j	80017258 <JS_GetOwnPropertyInternal+0xe8>
quickjs-nuttx/quickjs.c:7731
                desc->value = JS_DupValue(ctx, pr->u.value);
    800172bc:	6288                	ld	a0,0(a3)
    800172be:	668c                	ld	a1,8(a3)
    800172c0:	95af30ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:7758
                        desc->value = JS_GetPropertyUint32(ctx, JS_MKPTR(JS_TAG_OBJECT, p), idx);
    800172c4:	e408                	sd	a0,8(s0)
    800172c6:	e80c                	sd	a1,16(s0)
    800172c8:	b779                	j	80017256 <JS_GetOwnPropertyInternal+0xe6>
quickjs-nuttx/quickjs.c:7747
        if (p->fast_array) {
    800172ca:	8ba1                	andi	a5,a5,8
    800172cc:	cf85                	beqz	a5,80017304 <JS_GetOwnPropertyInternal+0x194>
quickjs-nuttx/quickjs.c:7771
    return FALSE;
    800172ce:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:7749
            if (__JS_AtomIsTaggedInt(prop)) {
    800172d0:	f804d4e3          	bgez	s1,80017258 <JS_GetOwnPropertyInternal+0xe8>
quickjs-nuttx/quickjs.c:7752
                if (idx < p->u.array.count) {
    800172d4:	41bc                	lw	a5,64(a1)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    800172d6:	02149693          	slli	a3,s1,0x21
    800172da:	9285                	srli	a3,a3,0x21
JS_GetOwnPropertyInternal():
quickjs-nuttx/quickjs.c:7752
                if (idx < p->u.array.count) {
    800172dc:	f6f6fee3          	bgeu	a3,a5,80017258 <JS_GetOwnPropertyInternal+0xe8>
quickjs-nuttx/quickjs.c:7753
                    if (desc) {
    800172e0:	d83d                	beqz	s0,80017256 <JS_GetOwnPropertyInternal+0xe6>
quickjs-nuttx/quickjs.c:7754
                        desc->flags = JS_PROP_WRITABLE | JS_PROP_ENUMERABLE |
    800172e2:	479d                	li	a5,7
    800172e4:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:7756
                        desc->getter = JS_UNDEFINED;
    800172e6:	478d                	li	a5,3
    800172e8:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:7757
                        desc->setter = JS_UNDEFINED;
    800172ea:	f81c                	sd	a5,48(s0)
quickjs-nuttx/quickjs.c:7756
                        desc->getter = JS_UNDEFINED;
    800172ec:	00043c23          	sd	zero,24(s0)
quickjs-nuttx/quickjs.c:7758
                        desc->value = JS_GetPropertyUint32(ctx, JS_MKPTR(JS_TAG_OBJECT, p), idx);
    800172f0:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:7757
                        desc->setter = JS_UNDEFINED;
    800172f2:	02043423          	sd	zero,40(s0)
quickjs-nuttx/quickjs.c:7758
                        desc->value = JS_GetPropertyUint32(ctx, JS_MKPTR(JS_TAG_OBJECT, p), idx);
    800172f6:	567d                	li	a2,-1
    800172f8:	854a                	mv	a0,s2
    800172fa:	e82e                	sd	a1,16(sp)
    800172fc:	ec3e                	sd	a5,24(sp)
    800172fe:	e3bff0ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    80017302:	b7c9                	j	800172c4 <JS_GetOwnPropertyInternal+0x154>
quickjs-nuttx/quickjs.c:7764
            const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    80017304:	0065d703          	lhu	a4,6(a1)
    80017308:	02800693          	li	a3,40
    8001730c:	01893783          	ld	a5,24(s2)
    80017310:	02d70733          	mul	a4,a4,a3
    80017314:	7bbc                	ld	a5,112(a5)
    80017316:	97ba                	add	a5,a5,a4
    80017318:	739c                	ld	a5,32(a5)
quickjs-nuttx/quickjs.c:7765
            if (em && em->get_own_property) {
    8001731a:	ea0785e3          	beqz	a5,800171c4 <JS_GetOwnPropertyInternal+0x54>
quickjs-nuttx/quickjs.c:7765 (discriminator 1)
    8001731e:	639c                	ld	a5,0(a5)
    80017320:	ea0782e3          	beqz	a5,800171c4 <JS_GetOwnPropertyInternal+0x54>
quickjs-nuttx/quickjs.c:7767
                                            JS_MKPTR(JS_TAG_OBJECT, p), prop);
    80017324:	e82e                	sd	a1,16(sp)
    80017326:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:7766
                return em->get_own_property(ctx, desc,
    80017328:	862e                	mv	a2,a1
    8001732a:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:7772
}
    8001732c:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:7767
                                            JS_MKPTR(JS_TAG_OBJECT, p), prop);
    8001732e:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:7772
}
    80017330:	70a6                	ld	ra,104(sp)
    80017332:	69a6                	ld	s3,72(sp)
    80017334:	6a06                	ld	s4,64(sp)
    80017336:	7ae2                	ld	s5,56(sp)
    80017338:	7b42                	ld	s6,48(sp)
    8001733a:	7ba2                	ld	s7,40(sp)
quickjs-nuttx/quickjs.c:7766
                return em->get_own_property(ctx, desc,
    8001733c:	8726                	mv	a4,s1
    8001733e:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:7772
}
    80017340:	64e6                	ld	s1,88(sp)
    80017342:	6946                	ld	s2,80(sp)
quickjs-nuttx/quickjs.c:7766
                return em->get_own_property(ctx, desc,
    80017344:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:7772
}
    80017346:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:7766
                return em->get_own_property(ctx, desc,
    80017348:	8782                	jr	a5

000000008001734a <JS_SetPropertyInternal>:
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8393
{
    8001734a:	7169                	addi	sp,sp,-304
    8001734c:	ee26                	sd	s1,280(sp)
    8001734e:	e64e                	sd	s3,264(sp)
    80017350:	fdd6                	sd	s5,248(sp)
    80017352:	f9da                	sd	s6,240(sp)
    80017354:	f446                	sd	a7,40(sp)
    80017356:	f606                	sd	ra,296(sp)
    80017358:	f222                	sd	s0,288(sp)
    8001735a:	ea4a                	sd	s2,272(sp)
    8001735c:	e252                	sd	s4,256(sp)
    8001735e:	f5de                	sd	s7,232(sp)
    80017360:	f1e2                	sd	s8,224(sp)
    80017362:	ede6                	sd	s9,216(sp)
    80017364:	e0ae                	sd	a1,64(sp)
    80017366:	e4b2                	sd	a2,72(sp)
    80017368:	f83a                	sd	a4,48(sp)
    8001736a:	fc3e                	sd	a5,56(sp)
    8001736c:	f042                	sd	a6,32(sp)
quickjs-nuttx/quickjs.c:8403
    tag = JS_VALUE_GET_TAG(this_obj);
    8001736e:	2881                	sext.w	a7,a7
quickjs-nuttx/quickjs.c:8404
    if (unlikely(tag != JS_TAG_OBJECT)) {
    80017370:	537d                	li	t1,-1
quickjs-nuttx/quickjs.c:8393
{
    80017372:	13012a83          	lw	s5,304(sp)
    80017376:	84aa                	mv	s1,a0
    80017378:	89b6                	mv	s3,a3
    8001737a:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:8404
    if (unlikely(tag != JS_TAG_OBJECT)) {
    8001737c:	06688f63          	beq	a7,t1,800173fa <JS_SetPropertyInternal+0xb0>
quickjs-nuttx/quickjs.c:8405
        if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80017380:	0006069b          	sext.w	a3,a2
    80017384:	3a668163          	beq	a3,t1,80017726 <JS_SetPropertyInternal+0x3dc>
quickjs-nuttx/quickjs.c:8410
            switch(tag) {
    80017388:	4689                	li	a3,2
    8001738a:	00d88c63          	beq	a7,a3,800173a2 <JS_SetPropertyInternal+0x58>
    8001738e:	468d                	li	a3,3
    80017390:	04d88863          	beq	a7,a3,800173e0 <JS_SetPropertyInternal+0x96>
quickjs-nuttx/quickjs.c:8422
                p1 = JS_VALUE_GET_OBJ(JS_GetPrototypePrimitive(ctx, obj));
    80017394:	9f7f00ef          	jal	ra,80007d8a <JS_GetPrototypePrimitive>
    80017398:	892a                	mv	s2,a0
    8001739a:	f4aa                	sd	a0,104(sp)
    8001739c:	f8ae                	sd	a1,112(sp)
quickjs-nuttx/quickjs.c:8406
            p = NULL;
    8001739e:	4a01                	li	s4,0
    800173a0:	a69d                	j	80017706 <JS_SetPropertyInternal+0x3bc>
quickjs-nuttx/quickjs.c:8412
                JS_FreeValue(ctx, val);
    800173a2:	863e                	mv	a2,a5
    800173a4:	85ba                	mv	a1,a4
    800173a6:	bf8f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8413
                JS_ThrowTypeErrorAtom(ctx, "cannot set property '%s' of null", prop);
    800173aa:	00052697          	auipc	a3,0x52
    800173ae:	7de68693          	addi	a3,a3,2014 # 80069b88 <qjsc_repl+0x45d8>
    800173b2:	00053617          	auipc	a2,0x53
    800173b6:	c9660613          	addi	a2,a2,-874 # 8006a048 <qjsc_repl+0x4a98>
quickjs-nuttx/quickjs.c:8417
                JS_ThrowTypeErrorAtom(ctx, "cannot set property '%s' of undefined", prop);
    800173ba:	85ce                	mv	a1,s3
    800173bc:	8526                	mv	a0,s1
    800173be:	38a010ef          	jal	ra,80018748 <__JS_ThrowTypeErrorAtom>
quickjs-nuttx/quickjs.c:8418
                return -1;
    800173c2:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:8659 (discriminator 6)
}
    800173c4:	70b2                	ld	ra,296(sp)
    800173c6:	8522                	mv	a0,s0
    800173c8:	7412                	ld	s0,288(sp)
    800173ca:	64f2                	ld	s1,280(sp)
    800173cc:	6952                	ld	s2,272(sp)
    800173ce:	69b2                	ld	s3,264(sp)
    800173d0:	6a12                	ld	s4,256(sp)
    800173d2:	7aee                	ld	s5,248(sp)
    800173d4:	7b4e                	ld	s6,240(sp)
    800173d6:	7bae                	ld	s7,232(sp)
    800173d8:	7c0e                	ld	s8,224(sp)
    800173da:	6cee                	ld	s9,216(sp)
    800173dc:	6155                	addi	sp,sp,304
    800173de:	8082                	ret
quickjs-nuttx/quickjs.c:8416
                JS_FreeValue(ctx, val);
    800173e0:	863e                	mv	a2,a5
    800173e2:	85ba                	mv	a1,a4
    800173e4:	bbaf40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8417
                JS_ThrowTypeErrorAtom(ctx, "cannot set property '%s' of undefined", prop);
    800173e8:	00052697          	auipc	a3,0x52
    800173ec:	7a068693          	addi	a3,a3,1952 # 80069b88 <qjsc_repl+0x45d8>
    800173f0:	00053617          	auipc	a2,0x53
    800173f4:	c8060613          	addi	a2,a2,-896 # 8006a070 <qjsc_repl+0x4ac0>
    800173f8:	b7c9                	j	800173ba <JS_SetPropertyInternal+0x70>
quickjs-nuttx/quickjs.c:8427
        p = JS_VALUE_GET_OBJ(this_obj);
    800173fa:	8a42                	mv	s4,a6
quickjs-nuttx/quickjs.c:8429
        if (unlikely(p != p1))
    800173fc:	32b81763          	bne	a6,a1,8001772a <JS_SetPropertyInternal+0x3e0>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017400:	04000437          	lui	s0,0x4000
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017404:	5bf1                	li	s7,-4
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017406:	147d                	addi	s0,s0,-1
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8437
        if (likely((prs->flags & (JS_PROP_TMASK | JS_PROP_WRITABLE |
    80017408:	4909                	li	s2,2
quickjs-nuttx/quickjs.c:8446
        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    8001740a:	4c41                	li	s8,16
quickjs-nuttx/quickjs.c:8448
        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    8001740c:	02000c93          	li	s9,32
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80017410:	018b3703          	ld	a4,24(s6)
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80017414:	531c                	lw	a5,32(a4)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80017416:	04070693          	addi	a3,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001741a:	00f9f7b3          	and	a5,s3,a5
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8001741e:	1782                	slli	a5,a5,0x20
    80017420:	9381                	srli	a5,a5,0x20
    80017422:	0785                	addi	a5,a5,1
    80017424:	037787b3          	mul	a5,a5,s7
    80017428:	97ba                	add	a5,a5,a4
    8001742a:	0007e583          	lwu	a1,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    8001742e:	e5b9                	bnez	a1,8001747c <JS_SetPropertyInternal+0x132>
    80017430:	895a                	mv	s2,s6
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8469
        if (p1->is_exotic) {
    80017432:	00594783          	lbu	a5,5(s2)
    80017436:	0047f713          	andi	a4,a5,4
    8001743a:	2c070263          	beqz	a4,800176fe <JS_SetPropertyInternal+0x3b4>
quickjs-nuttx/quickjs.c:8470
            if (p1->fast_array) {
    8001743e:	8ba1                	andi	a5,a5,8
    80017440:	1a078d63          	beqz	a5,800175fa <JS_SetPropertyInternal+0x2b0>
quickjs-nuttx/quickjs.c:8471
                if (__JS_AtomIsTaggedInt(prop)) {
    80017444:	1609d963          	bgez	s3,800175b6 <JS_SetPropertyInternal+0x26c>
quickjs-nuttx/quickjs.c:8473
                    if (idx < p1->u.array.count) {
    80017448:	04092703          	lw	a4,64(s2)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    8001744c:	02199793          	slli	a5,s3,0x21
    80017450:	9385                	srli	a5,a5,0x21
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8473
                    if (idx < p1->u.array.count) {
    80017452:	12e7f863          	bgeu	a5,a4,80017582 <JS_SetPropertyInternal+0x238>
quickjs-nuttx/quickjs.c:8474
                        if (unlikely(p == p1))
    80017456:	2b2a1a63          	bne	s4,s2,8001770a <JS_SetPropertyInternal+0x3c0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8001745a:	e502                	sd	zero,136(sp)
    8001745c:	c53e                	sw	a5,136(sp)
    8001745e:	66aa                	ld	a3,136(sp)
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8475
                            return JS_SetPropertyValue(ctx, this_obj, JS_NewInt32(ctx, idx), val, flags);
    80017460:	77c2                	ld	a5,48(sp)
    80017462:	7862                	ld	a6,56(sp)
    80017464:	7582                	ld	a1,32(sp)
    80017466:	7622                	ld	a2,40(sp)
    80017468:	88d6                	mv	a7,s5
    8001746a:	4701                	li	a4,0
    8001746c:	8526                	mv	a0,s1
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001746e:	e902                	sd	zero,144(sp)
    80017470:	fcb6                	sd	a3,120(sp)
    80017472:	e102                	sd	zero,128(sp)
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8475
    80017474:	480000ef          	jal	ra,800178f4 <JS_SetPropertyValue>
quickjs-nuttx/quickjs.c:8603
                    return add_fast_array_element(ctx, p, val, flags);
    80017478:	842a                	mv	s0,a0
    8001747a:	b7a9                	j	800173c4 <JS_SetPropertyInternal+0x7a>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    8001747c:	00359713          	slli	a4,a1,0x3
    80017480:	1761                	addi	a4,a4,-8
    80017482:	9736                	add	a4,a4,a3
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80017484:	4350                	lw	a2,4(a4)
    80017486:	431c                	lw	a5,0(a4)
    80017488:	03361e63          	bne	a2,s3,800174c4 <JS_SetPropertyInternal+0x17a>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    8001748c:	020b3683          	ld	a3,32(s6)
    80017490:	0592                	slli	a1,a1,0x4
    80017492:	15c1                	addi	a1,a1,-16
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8437
        if (likely((prs->flags & (JS_PROP_TMASK | JS_PROP_WRITABLE |
    80017494:	01a7d79b          	srliw	a5,a5,0x1a
find_own_property():
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80017498:	95b6                	add	a1,a1,a3
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8437
        if (likely((prs->flags & (JS_PROP_TMASK | JS_PROP_WRITABLE |
    8001749a:	03a7f693          	andi	a3,a5,58
    8001749e:	03268863          	beq	a3,s2,800174ce <JS_SetPropertyInternal+0x184>
quickjs-nuttx/quickjs.c:8442
        } else if (prs->flags & JS_PROP_LENGTH) {
    800174a2:	0087f693          	andi	a3,a5,8
    800174a6:	c6bd                	beqz	a3,80017514 <JS_SetPropertyInternal+0x1ca>
quickjs-nuttx/quickjs.c:8443
            assert(p->class_id == JS_CLASS_ARRAY);
    800174a8:	006a5783          	lhu	a5,6(s4)
    800174ac:	03278863          	beq	a5,s2,800174dc <JS_SetPropertyInternal+0x192>
quickjs-nuttx/quickjs.c:8443 (discriminator 1)
    800174b0:	6589                	lui	a1,0x2
    800174b2:	4601                	li	a2,0
    800174b4:	0fb58593          	addi	a1,a1,251 # 20fb <asinh-0x7fffdf05>
quickjs-nuttx/quickjs.c:8444 (discriminator 1)
            assert(prop == JS_ATOM_length);
    800174b8:	00052517          	auipc	a0,0x52
    800174bc:	0e050513          	addi	a0,a0,224 # 80069598 <qjsc_repl+0x3fe8>
    800174c0:	49c490ef          	jal	ra,8006095c <__assert>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    800174c4:	8fe1                	and	a5,a5,s0
    800174c6:	02079593          	slli	a1,a5,0x20
    800174ca:	9181                	srli	a1,a1,0x20
    800174cc:	b78d                	j	8001742e <JS_SetPropertyInternal+0xe4>
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8440
            set_value(ctx, &pr->u.value, val);
    800174ce:	7642                	ld	a2,48(sp)
    800174d0:	76e2                	ld	a3,56(sp)
quickjs-nuttx/quickjs.c:8454
            set_value(ctx, pr->u.var_ref->pvalue, val);
    800174d2:	8526                	mv	a0,s1
    800174d4:	f6af40ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:8617
            return TRUE;
    800174d8:	4405                	li	s0,1
    800174da:	b5ed                	j	800173c4 <JS_SetPropertyInternal+0x7a>
quickjs-nuttx/quickjs.c:8444 (discriminator 2)
            assert(prop == JS_ATOM_length);
    800174dc:	03000793          	li	a5,48
    800174e0:	00f98763          	beq	s3,a5,800174ee <JS_SetPropertyInternal+0x1a4>
quickjs-nuttx/quickjs.c:8444 (discriminator 1)
    800174e4:	6589                	lui	a1,0x2
    800174e6:	4601                	li	a2,0
    800174e8:	0fc58593          	addi	a1,a1,252 # 20fc <asinh-0x7fffdf04>
    800174ec:	b7f1                	j	800174b8 <JS_SetPropertyInternal+0x16e>
quickjs-nuttx/quickjs.c:8659 (discriminator 2)
}
    800174ee:	7412                	ld	s0,288(sp)
quickjs-nuttx/quickjs.c:8445 (discriminator 2)
            return set_array_length(ctx, p, val, flags);
    800174f0:	7642                	ld	a2,48(sp)
    800174f2:	76e2                	ld	a3,56(sp)
quickjs-nuttx/quickjs.c:8659 (discriminator 2)
}
    800174f4:	70b2                	ld	ra,296(sp)
    800174f6:	6952                	ld	s2,272(sp)
    800174f8:	69b2                	ld	s3,264(sp)
    800174fa:	7b4e                	ld	s6,240(sp)
    800174fc:	7bae                	ld	s7,232(sp)
    800174fe:	7c0e                	ld	s8,224(sp)
    80017500:	6cee                	ld	s9,216(sp)
quickjs-nuttx/quickjs.c:8445 (discriminator 2)
            return set_array_length(ctx, p, val, flags);
    80017502:	8756                	mv	a4,s5
    80017504:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:8659 (discriminator 2)
}
    80017506:	7aee                	ld	s5,248(sp)
    80017508:	6a12                	ld	s4,256(sp)
quickjs-nuttx/quickjs.c:8445 (discriminator 2)
            return set_array_length(ctx, p, val, flags);
    8001750a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:8659 (discriminator 2)
}
    8001750c:	64f2                	ld	s1,280(sp)
    8001750e:	6155                	addi	sp,sp,304
quickjs-nuttx/quickjs.c:8445 (discriminator 2)
            return set_array_length(ctx, p, val, flags);
    80017510:	65f0b06f          	j	8002336e <set_array_length>
quickjs-nuttx/quickjs.c:8446
        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    80017514:	0307f793          	andi	a5,a5,48
    80017518:	03879763          	bne	a5,s8,80017546 <JS_SetPropertyInternal+0x1fc>
quickjs-nuttx/quickjs.c:8659
}
    8001751c:	7412                	ld	s0,288(sp)
quickjs-nuttx/quickjs.c:8447
            return call_setter(ctx, pr->u.getset.setter, this_obj, val, flags);
    8001751e:	7742                	ld	a4,48(sp)
    80017520:	77e2                	ld	a5,56(sp)
    80017522:	7602                	ld	a2,32(sp)
    80017524:	76a2                	ld	a3,40(sp)
quickjs-nuttx/quickjs.c:8659
}
    80017526:	70b2                	ld	ra,296(sp)
    80017528:	6952                	ld	s2,272(sp)
    8001752a:	69b2                	ld	s3,264(sp)
    8001752c:	6a12                	ld	s4,256(sp)
    8001752e:	7b4e                	ld	s6,240(sp)
    80017530:	7bae                	ld	s7,232(sp)
    80017532:	7c0e                	ld	s8,224(sp)
    80017534:	6cee                	ld	s9,216(sp)
quickjs-nuttx/quickjs.c:8447
            return call_setter(ctx, pr->u.getset.setter, this_obj, val, flags);
    80017536:	658c                	ld	a1,8(a1)
    80017538:	8856                	mv	a6,s5
    8001753a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:8659
}
    8001753c:	7aee                	ld	s5,248(sp)
    8001753e:	64f2                	ld	s1,280(sp)
    80017540:	6155                	addi	sp,sp,304
quickjs-nuttx/quickjs.c:8447
            return call_setter(ctx, pr->u.getset.setter, this_obj, val, flags);
    80017542:	1540106f          	j	80018696 <call_setter>
quickjs-nuttx/quickjs.c:8448
        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017546:	01979c63          	bne	a5,s9,8001755e <JS_SetPropertyInternal+0x214>
quickjs-nuttx/quickjs.c:8452
            if (p->class_id == JS_CLASS_MODULE_NS)
    8001754a:	006a5703          	lhu	a4,6(s4)
    8001754e:	47ad                	li	a5,11
    80017550:	26f70563          	beq	a4,a5,800177ba <JS_SetPropertyInternal+0x470>
quickjs-nuttx/quickjs.c:8454
            set_value(ctx, pr->u.var_ref->pvalue, val);
    80017554:	619c                	ld	a5,0(a1)
    80017556:	7642                	ld	a2,48(sp)
    80017558:	76e2                	ld	a3,56(sp)
    8001755a:	6f8c                	ld	a1,24(a5)
    8001755c:	bf9d                	j	800174d2 <JS_SetPropertyInternal+0x188>
quickjs-nuttx/quickjs.c:8456
        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    8001755e:	03000693          	li	a3,48
    80017562:	24d79c63          	bne	a5,a3,800177ba <JS_SetPropertyInternal+0x470>
quickjs-nuttx/quickjs.c:8458
            if (JS_AutoInitProperty(ctx, p, prop, pr, prs)) {
    80017566:	86ae                	mv	a3,a1
    80017568:	864e                	mv	a2,s3
    8001756a:	85d2                	mv	a1,s4
    8001756c:	8526                	mv	a0,s1
    8001756e:	771020ef          	jal	ra,8001a4de <JS_AutoInitProperty>
    80017572:	e8050fe3          	beqz	a0,80017410 <JS_SetPropertyInternal+0xc6>
quickjs-nuttx/quickjs.c:8459
                JS_FreeValue(ctx, val);
    80017576:	75c2                	ld	a1,48(sp)
    80017578:	7662                	ld	a2,56(sp)
    8001757a:	8526                	mv	a0,s1
    8001757c:	a22f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8460
                return -1;
    80017580:	b589                	j	800173c2 <JS_SetPropertyInternal+0x78>
quickjs-nuttx/quickjs.c:8478
                    } else if (p1->class_id >= JS_CLASS_UINT8C_ARRAY &&
    80017582:	00695783          	lhu	a5,6(s2)
    80017586:	4729                	li	a4,10
    80017588:	37ad                	addiw	a5,a5,-21
    8001758a:	17c2                	slli	a5,a5,0x30
    8001758c:	93c1                	srli	a5,a5,0x30
    8001758e:	16f76863          	bltu	a4,a5,800176fe <JS_SetPropertyInternal+0x3b4>
quickjs-nuttx/quickjs.c:8492
                        if (p1->class_id == JS_CLASS_BIG_INT64_ARRAY ||
    80017592:	00695783          	lhu	a5,6(s2)
    80017596:	4705                	li	a4,1
    80017598:	3791                	addiw	a5,a5,-28
    8001759a:	17c2                	slli	a5,a5,0x30
    8001759c:	93c1                	srli	a5,a5,0x30
    8001759e:	02f76d63          	bltu	a4,a5,800175d8 <JS_SetPropertyInternal+0x28e>
quickjs-nuttx/quickjs.c:8495
                            if (JS_ToBigInt64Free(ctx, &v, val))
    800175a2:	7642                	ld	a2,48(sp)
    800175a4:	76e2                	ld	a3,56(sp)
    800175a6:	012c                	addi	a1,sp,136
    800175a8:	8526                	mv	a0,s1
    800175aa:	3370e0ef          	jal	ra,800260e0 <JS_ToBigInt64Free>
quickjs-nuttx/quickjs.c:8503
                        return TRUE;
    800175ae:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:8495
                            if (JS_ToBigInt64Free(ctx, &v, val))
    800175b0:	e0050ae3          	beqz	a0,800173c4 <JS_SetPropertyInternal+0x7a>
    800175b4:	b539                	j	800173c2 <JS_SetPropertyInternal+0x78>
quickjs-nuttx/quickjs.c:8482
                } else if (p1->class_id >= JS_CLASS_UINT8C_ARRAY &&
    800175b6:	00695783          	lhu	a5,6(s2)
    800175ba:	4729                	li	a4,10
    800175bc:	37ad                	addiw	a5,a5,-21
    800175be:	17c2                	slli	a5,a5,0x30
    800175c0:	93c1                	srli	a5,a5,0x30
    800175c2:	12f76e63          	bltu	a4,a5,800176fe <JS_SetPropertyInternal+0x3b4>
quickjs-nuttx/quickjs.c:8484
                    ret = JS_AtomIsNumericIndex(ctx, prop);
    800175c6:	85ce                	mv	a1,s3
    800175c8:	8526                	mv	a0,s1
    800175ca:	4c3100ef          	jal	ra,8002828c <JS_AtomIsNumericIndex>
quickjs-nuttx/quickjs.c:8485
                    if (ret != 0) {
    800175ce:	12050863          	beqz	a0,800176fe <JS_SetPropertyInternal+0x3b4>
quickjs-nuttx/quickjs.c:8486
                        if (ret < 0) {
    800175d2:	fc0550e3          	bgez	a0,80017592 <JS_SetPropertyInternal+0x248>
    800175d6:	b745                	j	80017576 <JS_SetPropertyInternal+0x22c>
quickjs-nuttx/quickjs.c:8498
                            val = JS_ToNumberFree(ctx, val);
    800175d8:	7662                	ld	a2,56(sp)
    800175da:	75c2                	ld	a1,48(sp)
    800175dc:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:8503
                        return TRUE;
    800175de:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:8498
                            val = JS_ToNumberFree(ctx, val);
    800175e0:	4ab0a0ef          	jal	ra,8002228a <JS_ToNumberFree>
    800175e4:	862e                	mv	a2,a1
    800175e6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:8499
                            JS_FreeValue(ctx, val);
    800175e8:	85aa                	mv	a1,a0
    800175ea:	8526                	mv	a0,s1
    800175ec:	9b2f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8500
                            if (JS_IsException(val))
    800175f0:	5762                	lw	a4,56(sp)
    800175f2:	4799                	li	a5,6
    800175f4:	dcf718e3          	bne	a4,a5,800173c4 <JS_SetPropertyInternal+0x7a>
    800175f8:	b3e9                	j	800173c2 <JS_SetPropertyInternal+0x78>
quickjs-nuttx/quickjs.c:8507
                const JSClassExoticMethods *em = ctx->rt->class_array[p1->class_id].exotic;
    800175fa:	00695703          	lhu	a4,6(s2)
    800175fe:	02800693          	li	a3,40
    80017602:	6c9c                	ld	a5,24(s1)
    80017604:	02d70733          	mul	a4,a4,a3
    80017608:	7bbc                	ld	a5,112(a5)
    8001760a:	97ba                	add	a5,a5,a4
    8001760c:	739c                	ld	a5,32(a5)
quickjs-nuttx/quickjs.c:8508
                if (em) {
    8001760e:	0e078863          	beqz	a5,800176fe <JS_SetPropertyInternal+0x3b4>
quickjs-nuttx/quickjs.c:8510
                    if (em->set_property) {
    80017612:	7b98                	ld	a4,48(a5)
    80017614:	cf15                	beqz	a4,80017650 <JS_SetPropertyInternal+0x306>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80017616:	00092703          	lw	a4,0(s2)
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8513
                        ret = em->set_property(ctx, obj1, prop,
    8001761a:	7802                	ld	a6,32(sp)
    8001761c:	78a2                	ld	a7,40(sp)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8001761e:	2705                	addiw	a4,a4,1
    80017620:	00e92023          	sw	a4,0(s2)
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8513
    80017624:	e056                	sd	s5,0(sp)
    80017626:	577d                	li	a4,-1
    80017628:	0307b303          	ld	t1,48(a5)
    8001762c:	f0ba                	sd	a4,96(sp)
    8001762e:	77e2                	ld	a5,56(sp)
    80017630:	7742                	ld	a4,48(sp)
    80017632:	85ca                	mv	a1,s2
    80017634:	567d                	li	a2,-1
    80017636:	86ce                	mv	a3,s3
    80017638:	8526                	mv	a0,s1
    8001763a:	ecca                	sd	s2,88(sp)
    8001763c:	9302                	jalr	t1
quickjs-nuttx/quickjs.c:8515
                        JS_FreeValue(ctx, obj1);
    8001763e:	65e6                	ld	a1,88(sp)
    80017640:	7606                	ld	a2,96(sp)
quickjs-nuttx/quickjs.c:8513
                        ret = em->set_property(ctx, obj1, prop,
    80017642:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:8515
                        JS_FreeValue(ctx, obj1);
    80017644:	8526                	mv	a0,s1
    80017646:	958f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8655
            JS_FreeValue(ctx, val);
    8001764a:	75c2                	ld	a1,48(sp)
    8001764c:	7662                	ld	a2,56(sp)
    8001764e:	a0a5                	j	800176b6 <JS_SetPropertyInternal+0x36c>
quickjs-nuttx/quickjs.c:8519
                    if (em->get_own_property) {
    80017650:	6398                	ld	a4,0(a5)
    80017652:	c755                	beqz	a4,800176fe <JS_SetPropertyInternal+0x3b4>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80017654:	00092703          	lw	a4,0(s2)
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8522
                        ret = em->get_own_property(ctx, &desc,
    80017658:	864a                	mv	a2,s2
    8001765a:	092c                	addi	a1,sp,152
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8001765c:	2705                	addiw	a4,a4,1
    8001765e:	00e92023          	sw	a4,0(s2)
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8522
    80017662:	639c                	ld	a5,0(a5)
    80017664:	577d                	li	a4,-1
    80017666:	f0ba                	sd	a4,96(sp)
    80017668:	56fd                	li	a3,-1
    8001766a:	874e                	mv	a4,s3
    8001766c:	8526                	mv	a0,s1
    8001766e:	ecca                	sd	s2,88(sp)
    80017670:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:8524
                        JS_FreeValue(ctx, obj1);
    80017672:	65e6                	ld	a1,88(sp)
    80017674:	7606                	ld	a2,96(sp)
quickjs-nuttx/quickjs.c:8522
                        ret = em->get_own_property(ctx, &desc,
    80017676:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:8524
                        JS_FreeValue(ctx, obj1);
    80017678:	8526                	mv	a0,s1
    8001767a:	924f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8525
                        if (ret < 0) {
    8001767e:	fc0446e3          	bltz	s0,8001764a <JS_SetPropertyInternal+0x300>
quickjs-nuttx/quickjs.c:8529
                        if (ret) {
    80017682:	cc35                	beqz	s0,800176fe <JS_SetPropertyInternal+0x3b4>
quickjs-nuttx/quickjs.c:8530
                            if (desc.flags & JS_PROP_GETSET) {
    80017684:	47ea                	lw	a5,152(sp)
    80017686:	8bc1                	andi	a5,a5,16
    80017688:	cb9d                	beqz	a5,800176be <JS_SetPropertyInternal+0x374>
quickjs-nuttx/quickjs.c:8532
                                if (JS_IsUndefined(desc.setter))
    8001768a:	472e                	lw	a4,200(sp)
    8001768c:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:8533
                                    setter = NULL;
    8001768e:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:8532
                                if (JS_IsUndefined(desc.setter))
    80017690:	00f70363          	beq	a4,a5,80017696 <JS_SetPropertyInternal+0x34c>
quickjs-nuttx/quickjs.c:8535
                                    setter = JS_VALUE_GET_OBJ(desc.setter);
    80017694:	658e                	ld	a1,192(sp)
quickjs-nuttx/quickjs.c:8536
                                ret = call_setter(ctx, setter, this_obj, val, flags);
    80017696:	7742                	ld	a4,48(sp)
    80017698:	77e2                	ld	a5,56(sp)
    8001769a:	7602                	ld	a2,32(sp)
    8001769c:	76a2                	ld	a3,40(sp)
    8001769e:	8856                	mv	a6,s5
    800176a0:	8526                	mv	a0,s1
    800176a2:	7f5000ef          	jal	ra,80018696 <call_setter>
quickjs-nuttx/quickjs.c:8537
                                JS_FreeValue(ctx, desc.getter);
    800176a6:	75ca                	ld	a1,176(sp)
    800176a8:	766a                	ld	a2,184(sp)
quickjs-nuttx/quickjs.c:8536
                                ret = call_setter(ctx, setter, this_obj, val, flags);
    800176aa:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:8537
                                JS_FreeValue(ctx, desc.getter);
    800176ac:	8526                	mv	a0,s1
    800176ae:	8f0f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8538
                                JS_FreeValue(ctx, desc.setter);
    800176b2:	658e                	ld	a1,192(sp)
    800176b4:	662e                	ld	a2,200(sp)
quickjs-nuttx/quickjs.c:8655
            JS_FreeValue(ctx, val);
    800176b6:	8526                	mv	a0,s1
    800176b8:	8e6f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8656
            return ret;
    800176bc:	b321                	j	800173c4 <JS_SetPropertyInternal+0x7a>
quickjs-nuttx/quickjs.c:8541
                                JS_FreeValue(ctx, desc.value);
    800176be:	758a                	ld	a1,160(sp)
    800176c0:	762a                	ld	a2,168(sp)
    800176c2:	8526                	mv	a0,s1
    800176c4:	8daf40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8542
                                if (!(desc.flags & JS_PROP_WRITABLE))
    800176c8:	47ea                	lw	a5,152(sp)
    800176ca:	8b89                	andi	a5,a5,2
    800176cc:	0e078763          	beqz	a5,800177ba <JS_SetPropertyInternal+0x470>
quickjs-nuttx/quickjs.c:8544
                                if (likely(p == p1)) {
    800176d0:	032a1d63          	bne	s4,s2,8001770a <JS_SetPropertyInternal+0x3c0>
quickjs-nuttx/quickjs.c:8642
                                    JS_UNDEFINED, JS_UNDEFINED,
    800176d4:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:8641
            ret = JS_DefineProperty(ctx, this_obj, prop, val,
    800176d6:	6709                	lui	a4,0x2
quickjs-nuttx/quickjs.c:8642
                                    JS_UNDEFINED, JS_UNDEFINED,
    800176d8:	e13e                	sd	a5,128(sp)
    800176da:	e93e                	sd	a5,144(sp)
quickjs-nuttx/quickjs.c:8641
            ret = JS_DefineProperty(ctx, this_obj, prop, val,
    800176dc:	e83a                	sd	a4,16(sp)
    800176de:	e43e                	sd	a5,8(sp)
    800176e0:	7742                	ld	a4,48(sp)
    800176e2:	77e2                	ld	a5,56(sp)
    800176e4:	7582                	ld	a1,32(sp)
    800176e6:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:8642
                                    JS_UNDEFINED, JS_UNDEFINED,
    800176e8:	fc82                	sd	zero,120(sp)
    800176ea:	e502                	sd	zero,136(sp)
quickjs-nuttx/quickjs.c:8641
            ret = JS_DefineProperty(ctx, this_obj, prop, val,
    800176ec:	e002                	sd	zero,0(sp)
    800176ee:	4801                	li	a6,0
    800176f0:	488d                	li	a7,3
    800176f2:	86ce                	mv	a3,s3
    800176f4:	8526                	mv	a0,s1
    800176f6:	458000ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:8648
            ret = JS_CreateProperty(ctx, p, prop, val, JS_UNDEFINED, JS_UNDEFINED,
    800176fa:	842a                	mv	s0,a0
    800176fc:	b7b9                	j	8001764a <JS_SetPropertyInternal+0x300>
quickjs-nuttx/quickjs.c:8559
        p1 = p1->shape->proto;
    800176fe:	01893783          	ld	a5,24(s2)
    80017702:	0387b903          	ld	s2,56(a5)
quickjs-nuttx/quickjs.c:8561
        if (!p1)
    80017706:	02091363          	bnez	s2,8001772c <JS_SetPropertyInternal+0x3e2>
quickjs-nuttx/quickjs.c:8580
    if (unlikely(flags & JS_PROP_NO_ADD)) {
    8001770a:	010ad793          	srli	a5,s5,0x10
    8001770e:	8b85                	andi	a5,a5,1
    80017710:	c3e1                	beqz	a5,800177d0 <JS_SetPropertyInternal+0x486>
quickjs-nuttx/quickjs.c:8581
        JS_FreeValue(ctx, val);
    80017712:	75c2                	ld	a1,48(sp)
    80017714:	7662                	ld	a2,56(sp)
    80017716:	8526                	mv	a0,s1
    80017718:	886f40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8582
        JS_ThrowReferenceErrorNotDefined(ctx, prop);
    8001771c:	85ce                	mv	a1,s3
    8001771e:	8526                	mv	a0,s1
    80017720:	186020ef          	jal	ra,800198a6 <JS_ThrowReferenceErrorNotDefined>
quickjs-nuttx/quickjs.c:8583
        return -1;
    80017724:	b979                	j	800173c2 <JS_SetPropertyInternal+0x78>
    80017726:	892e                	mv	s2,a1
    80017728:	b99d                	j	8001739e <JS_SetPropertyInternal+0x54>
    8001772a:	892e                	mv	s2,a1
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8001772c:	04000437          	lui	s0,0x4000
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017730:	5bf1                	li	s7,-4
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017732:	147d                	addi	s0,s0,-1
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8567
            if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    80017734:	4c41                	li	s8,16
quickjs-nuttx/quickjs.c:8569
            } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    80017736:	03000c93          	li	s9,48
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    8001773a:	01893703          	ld	a4,24(s2)
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001773e:	531c                	lw	a5,32(a4)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80017740:	04070613          	addi	a2,a4,64 # 2040 <asinh-0x7fffdfc0>
find_own_property():
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80017744:	00f9f7b3          	and	a5,s3,a5
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017748:	1782                	slli	a5,a5,0x20
    8001774a:	9381                	srli	a5,a5,0x20
    8001774c:	0785                	addi	a5,a5,1
    8001774e:	037787b3          	mul	a5,a5,s7
    80017752:	97ba                	add	a5,a5,a4
    80017754:	0007e683          	lwu	a3,0(a5)
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80017758:	cc068de3          	beqz	a3,80017432 <JS_SetPropertyInternal+0xe8>
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    8001775c:	00369713          	slli	a4,a3,0x3
    80017760:	1761                	addi	a4,a4,-8
    80017762:	9732                	add	a4,a4,a2
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80017764:	434c                	lw	a1,4(a4)
    80017766:	431c                	lw	a5,0(a4)
    80017768:	03359763          	bne	a1,s3,80017796 <JS_SetPropertyInternal+0x44c>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    8001776c:	02093583          	ld	a1,32(s2)
    80017770:	0692                	slli	a3,a3,0x4
    80017772:	16c1                	addi	a3,a3,-16
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8567
            if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    80017774:	01a7d79b          	srliw	a5,a5,0x1a
find_own_property():
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80017778:	95b6                	add	a1,a1,a3
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8567
            if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    8001777a:	0307f693          	andi	a3,a5,48
    8001777e:	03869163          	bne	a3,s8,800177a0 <JS_SetPropertyInternal+0x456>
quickjs-nuttx/quickjs.c:8568
                return call_setter(ctx, pr->u.getset.setter, this_obj, val, flags);
    80017782:	7742                	ld	a4,48(sp)
    80017784:	77e2                	ld	a5,56(sp)
    80017786:	7602                	ld	a2,32(sp)
    80017788:	76a2                	ld	a3,40(sp)
    8001778a:	658c                	ld	a1,8(a1)
    8001778c:	8856                	mv	a6,s5
    8001778e:	8526                	mv	a0,s1
    80017790:	707000ef          	jal	ra,80018696 <call_setter>
    80017794:	b1d5                	j	80017478 <JS_SetPropertyInternal+0x12e>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017796:	8fe1                	and	a5,a5,s0
    80017798:	02079693          	slli	a3,a5,0x20
    8001779c:	9281                	srli	a3,a3,0x20
    8001779e:	bf6d                	j	80017758 <JS_SetPropertyInternal+0x40e>
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8569
            } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    800177a0:	01969a63          	bne	a3,s9,800177b4 <JS_SetPropertyInternal+0x46a>
quickjs-nuttx/quickjs.c:8571
                if (JS_AutoInitProperty(ctx, p1, prop, pr, prs))
    800177a4:	86ae                	mv	a3,a1
    800177a6:	864e                	mv	a2,s3
    800177a8:	85ca                	mv	a1,s2
    800177aa:	8526                	mv	a0,s1
    800177ac:	533020ef          	jal	ra,8001a4de <JS_AutoInitProperty>
    800177b0:	d549                	beqz	a0,8001773a <JS_SetPropertyInternal+0x3f0>
    800177b2:	b901                	j	800173c2 <JS_SetPropertyInternal+0x78>
quickjs-nuttx/quickjs.c:8574
            } else if (!(prs->flags & JS_PROP_WRITABLE)) {
    800177b4:	8b89                	andi	a5,a5,2
    800177b6:	c6079ee3          	bnez	a5,80017432 <JS_SetPropertyInternal+0xe8>
quickjs-nuttx/quickjs.c:8637
                    JS_FreeValue(ctx, val);
    800177ba:	75c2                	ld	a1,48(sp)
    800177bc:	7662                	ld	a2,56(sp)
    800177be:	8526                	mv	a0,s1
    800177c0:	fdff30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8638
                    return JS_ThrowTypeErrorReadOnly(ctx, flags, prop);
    800177c4:	864e                	mv	a2,s3
    800177c6:	85d6                	mv	a1,s5
    800177c8:	8526                	mv	a0,s1
    800177ca:	7b5000ef          	jal	ra,8001877e <JS_ThrowTypeErrorReadOnly>
    800177ce:	b16d                	j	80017478 <JS_SetPropertyInternal+0x12e>
quickjs-nuttx/quickjs.c:8586
    if (unlikely(!p)) {
    800177d0:	020a1063          	bnez	s4,800177f0 <JS_SetPropertyInternal+0x4a6>
quickjs-nuttx/quickjs.c:8587
        JS_FreeValue(ctx, val);
    800177d4:	7662                	ld	a2,56(sp)
    800177d6:	75c2                	ld	a1,48(sp)
    800177d8:	8526                	mv	a0,s1
    800177da:	fc5f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8588
        return JS_ThrowTypeErrorOrFalse(ctx, flags, "not an object");
    800177de:	00053617          	auipc	a2,0x53
    800177e2:	e4260613          	addi	a2,a2,-446 # 8006a620 <qjsc_repl+0x5070>
quickjs-nuttx/quickjs.c:8593
        return JS_ThrowTypeErrorOrFalse(ctx, flags, "object is not extensible");
    800177e6:	85d6                	mv	a1,s5
    800177e8:	8526                	mv	a0,s1
    800177ea:	355000ef          	jal	ra,8001833e <JS_ThrowTypeErrorOrFalse>
    800177ee:	b169                	j	80017478 <JS_SetPropertyInternal+0x12e>
quickjs-nuttx/quickjs.c:8591
    if (unlikely(!p->extensible)) {
    800177f0:	005a4783          	lbu	a5,5(s4)
    800177f4:	0017f713          	andi	a4,a5,1
    800177f8:	eb19                	bnez	a4,8001780e <JS_SetPropertyInternal+0x4c4>
quickjs-nuttx/quickjs.c:8592
        JS_FreeValue(ctx, val);
    800177fa:	7662                	ld	a2,56(sp)
    800177fc:	75c2                	ld	a1,48(sp)
    800177fe:	8526                	mv	a0,s1
    80017800:	f9ff30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8593
        return JS_ThrowTypeErrorOrFalse(ctx, flags, "object is not extensible");
    80017804:	00053617          	auipc	a2,0x53
    80017808:	89460613          	addi	a2,a2,-1900 # 8006a098 <qjsc_repl+0x4ae8>
    8001780c:	bfe9                	j	800177e6 <JS_SetPropertyInternal+0x49c>
quickjs-nuttx/quickjs.c:8596
    if (likely(p == JS_VALUE_GET_OBJ(obj))) {
    8001780e:	056a1c63          	bne	s4,s6,80017866 <JS_SetPropertyInternal+0x51c>
quickjs-nuttx/quickjs.c:8597
        if (p->is_exotic) {
    80017812:	8b91                	andi	a5,a5,4
    80017814:	cf85                	beqz	a5,8001784c <JS_SetPropertyInternal+0x502>
quickjs-nuttx/quickjs.c:8598
            if (p->class_id == JS_CLASS_ARRAY && p->fast_array &&
    80017816:	000a3703          	ld	a4,0(s4)
    8001781a:	5785                	li	a5,-31
    8001781c:	17ae                	slli	a5,a5,0x2b
    8001781e:	8f7d                	and	a4,a4,a5
    80017820:	04100793          	li	a5,65
    80017824:	17ae                	slli	a5,a5,0x2b
    80017826:	0af71063          	bne	a4,a5,800178c6 <JS_SetPropertyInternal+0x57c>
    8001782a:	0809de63          	bgez	s3,800178c6 <JS_SetPropertyInternal+0x57c>
quickjs-nuttx/quickjs.c:8601
                if (idx == p->u.array.count) {
    8001782e:	040a2703          	lw	a4,64(s4)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    80017832:	02199793          	slli	a5,s3,0x21
JS_SetPropertyInternal():
quickjs-nuttx/quickjs.c:8601
                if (idx == p->u.array.count) {
    80017836:	9385                	srli	a5,a5,0x21
    80017838:	08f71763          	bne	a4,a5,800178c6 <JS_SetPropertyInternal+0x57c>
quickjs-nuttx/quickjs.c:8603
                    return add_fast_array_element(ctx, p, val, flags);
    8001783c:	7642                	ld	a2,48(sp)
    8001783e:	76e2                	ld	a3,56(sp)
    80017840:	8756                	mv	a4,s5
    80017842:	85d2                	mv	a1,s4
    80017844:	8526                	mv	a0,s1
    80017846:	7d9040ef          	jal	ra,8001c81e <add_fast_array_element>
    8001784a:	b13d                	j	80017478 <JS_SetPropertyInternal+0x12e>
quickjs-nuttx/quickjs.c:8611
            pr = add_property(ctx, p, prop, JS_PROP_C_W_E);
    8001784c:	469d                	li	a3,7
    8001784e:	864e                	mv	a2,s3
    80017850:	85d2                	mv	a1,s4
    80017852:	8526                	mv	a0,s1
    80017854:	7cf030ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:8612
            if (unlikely(!pr)) {
    80017858:	d0050fe3          	beqz	a0,80017576 <JS_SetPropertyInternal+0x22c>
quickjs-nuttx/quickjs.c:8616
            pr->u.value = val;
    8001785c:	77c2                	ld	a5,48(sp)
    8001785e:	e11c                	sd	a5,0(a0)
    80017860:	77e2                	ld	a5,56(sp)
    80017862:	e51c                	sd	a5,8(a0)
    80017864:	b995                	j	800174d8 <JS_SetPropertyInternal+0x18e>
quickjs-nuttx/quickjs.c:8621
        ret = JS_GetOwnPropertyInternal(ctx, &desc, p, prop);
    80017866:	86ce                	mv	a3,s3
    80017868:	8652                	mv	a2,s4
    8001786a:	092c                	addi	a1,sp,152
    8001786c:	8526                	mv	a0,s1
    8001786e:	903ff0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
    80017872:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:8622
        if (ret < 0) {
    80017874:	dc054be3          	bltz	a0,8001764a <JS_SetPropertyInternal+0x300>
quickjs-nuttx/quickjs.c:8626
        if (ret) {
    80017878:	c539                	beqz	a0,800178c6 <JS_SetPropertyInternal+0x57c>
quickjs-nuttx/quickjs.c:8627
            if (desc.flags & JS_PROP_GETSET) {
    8001787a:	47ea                	lw	a5,152(sp)
    8001787c:	8bc1                	andi	a5,a5,16
    8001787e:	c78d                	beqz	a5,800178a8 <JS_SetPropertyInternal+0x55e>
quickjs-nuttx/quickjs.c:8628
                JS_FreeValue(ctx, desc.getter);
    80017880:	75ca                	ld	a1,176(sp)
    80017882:	766a                	ld	a2,184(sp)
    80017884:	8526                	mv	a0,s1
    80017886:	f19f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8629
                JS_FreeValue(ctx, desc.setter);
    8001788a:	658e                	ld	a1,192(sp)
    8001788c:	662e                	ld	a2,200(sp)
    8001788e:	8526                	mv	a0,s1
    80017890:	f0ff30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8630
                JS_FreeValue(ctx, val);
    80017894:	7662                	ld	a2,56(sp)
    80017896:	75c2                	ld	a1,48(sp)
    80017898:	8526                	mv	a0,s1
    8001789a:	f05f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8631
                return JS_ThrowTypeErrorOrFalse(ctx, flags, "setter is forbidden");
    8001789e:	00053617          	auipc	a2,0x53
    800178a2:	81a60613          	addi	a2,a2,-2022 # 8006a0b8 <qjsc_repl+0x4b08>
    800178a6:	b781                	j	800177e6 <JS_SetPropertyInternal+0x49c>
quickjs-nuttx/quickjs.c:8633
                JS_FreeValue(ctx, desc.value);
    800178a8:	758a                	ld	a1,160(sp)
    800178aa:	762a                	ld	a2,168(sp)
    800178ac:	8526                	mv	a0,s1
    800178ae:	ef1f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8634
                if (!(desc.flags & JS_PROP_WRITABLE) ||
    800178b2:	47ea                	lw	a5,152(sp)
    800178b4:	8b89                	andi	a5,a5,2
    800178b6:	f00782e3          	beqz	a5,800177ba <JS_SetPropertyInternal+0x470>
quickjs-nuttx/quickjs.c:8634 (discriminator 1)
    800178ba:	006a5703          	lhu	a4,6(s4)
    800178be:	47ad                	li	a5,11
    800178c0:	eef70de3          	beq	a4,a5,800177ba <JS_SetPropertyInternal+0x470>
    800178c4:	bd01                	j	800176d4 <JS_SetPropertyInternal+0x38a>
quickjs-nuttx/quickjs.c:8648
            ret = JS_CreateProperty(ctx, p, prop, val, JS_UNDEFINED, JS_UNDEFINED,
    800178c6:	6709                	lui	a4,0x2
    800178c8:	70770713          	addi	a4,a4,1799 # 2707 <asinh-0x7fffd8f9>
    800178cc:	00eaeab3          	or	s5,s5,a4
    800178d0:	76c2                	ld	a3,48(sp)
    800178d2:	7762                	ld	a4,56(sp)
    800178d4:	478d                	li	a5,3
    800178d6:	e13e                	sd	a5,128(sp)
    800178d8:	e93e                	sd	a5,144(sp)
    800178da:	e03e                	sd	a5,0(sp)
    800178dc:	e456                	sd	s5,8(sp)
    800178de:	4881                	li	a7,0
    800178e0:	4781                	li	a5,0
    800178e2:	480d                	li	a6,3
    800178e4:	864e                	mv	a2,s3
    800178e6:	85d2                	mv	a1,s4
    800178e8:	8526                	mv	a0,s1
    800178ea:	fc82                	sd	zero,120(sp)
    800178ec:	e502                	sd	zero,136(sp)
    800178ee:	1d7100ef          	jal	ra,800282c4 <JS_CreateProperty>
    800178f2:	b521                	j	800176fa <JS_SetPropertyInternal+0x3b0>

00000000800178f4 <JS_SetPropertyValue>:
JS_SetPropertyValue():
quickjs-nuttx/quickjs.c:8664
{
    800178f4:	7119                	addi	sp,sp,-128
    800178f6:	f0ca                	sd	s2,96(sp)
    800178f8:	ecce                	sd	s3,88(sp)
    800178fa:	e8d2                	sd	s4,80(sp)
    800178fc:	e83e                	sd	a5,16(sp)
    800178fe:	fc86                	sd	ra,120(sp)
    80017900:	f8a2                	sd	s0,112(sp)
    80017902:	f4a6                	sd	s1,104(sp)
    80017904:	f82e                	sd	a1,48(sp)
    80017906:	fc32                	sd	a2,56(sp)
    80017908:	f036                	sd	a3,32(sp)
    8001790a:	f43a                	sd	a4,40(sp)
    8001790c:	ec42                	sd	a6,24(sp)
quickjs-nuttx/quickjs.c:8665
    if (likely(JS_VALUE_GET_TAG(this_obj) == JS_TAG_OBJECT &&
    8001790e:	0006091b          	sext.w	s2,a2
    80017912:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:8664
{
    80017914:	89aa                	mv	s3,a0
    80017916:	8a46                	mv	s4,a7
quickjs-nuttx/quickjs.c:8665
    if (likely(JS_VALUE_GET_TAG(this_obj) == JS_TAG_OBJECT &&
    80017918:	08f91063          	bne	s2,a5,80017998 <JS_SetPropertyValue+0xa4>
quickjs-nuttx/quickjs.c:8665 (discriminator 1)
    8001791c:	2701                	sext.w	a4,a4
    8001791e:	ef2d                	bnez	a4,80017998 <JS_SetPropertyValue+0xa4>
quickjs-nuttx/quickjs.c:8673
        p = JS_VALUE_GET_OBJ(this_obj);
    80017920:	0065d783          	lhu	a5,6(a1)
    80017924:	4775                	li	a4,29
quickjs-nuttx/quickjs.c:8674
        idx = JS_VALUE_GET_INT(prop);
    80017926:	5402                	lw	s0,32(sp)
    80017928:	37f9                	addiw	a5,a5,-2
    8001792a:	03079693          	slli	a3,a5,0x30
    8001792e:	92c1                	srli	a3,a3,0x30
quickjs-nuttx/quickjs.c:8673
        p = JS_VALUE_GET_OBJ(this_obj);
    80017930:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:8675
        switch(p->class_id) {
    80017932:	06d76363          	bltu	a4,a3,80017998 <JS_SetPropertyValue+0xa4>
    80017936:	00052717          	auipc	a4,0x52
    8001793a:	79670713          	addi	a4,a4,1942 # 8006a0cc <qjsc_repl+0x4b1c>
    8001793e:	00269793          	slli	a5,a3,0x2
    80017942:	97ba                	add	a5,a5,a4
    80017944:	439c                	lw	a5,0(a5)
    80017946:	97ba                	add	a5,a5,a4
    80017948:	8782                	jr	a5
quickjs-nuttx/quickjs.c:8677
            if (unlikely(idx >= (uint32_t)p->u.array.count)) {
    8001794a:	41bc                	lw	a5,64(a1)
    8001794c:	08f46563          	bltu	s0,a5,800179d6 <JS_SetPropertyValue+0xe2>
quickjs-nuttx/quickjs.c:8682
                if (idx != (uint32_t)p->u.array.count ||
    80017950:	04879463          	bne	a5,s0,80017998 <JS_SetPropertyValue+0xa4>
quickjs-nuttx/quickjs.c:8683
                    !p->fast_array || !p->extensible)
    80017954:	6198                	ld	a4,0(a1)
    80017956:	47a5                	li	a5,9
    80017958:	17a2                	slli	a5,a5,0x28
    8001795a:	8f7d                	and	a4,a4,a5
    8001795c:	02f71e63          	bne	a4,a5,80017998 <JS_SetPropertyValue+0xa4>
quickjs-nuttx/quickjs.c:8686
                p1 = p->shape->proto;
    80017960:	6d9c                	ld	a5,24(a1)
quickjs-nuttx/quickjs.c:8689
                    if (p1->class_id == JS_CLASS_ARRAY) {
    80017962:	4609                	li	a2,2
quickjs-nuttx/quickjs.c:8692
                    } else if (p1->class_id == JS_CLASS_OBJECT) {
    80017964:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:8686
                p1 = p->shape->proto;
    80017966:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:8687
                while (p1 != NULL) {
    80017968:	ef99                	bnez	a5,80017986 <JS_SetPropertyValue+0x92>
quickjs-nuttx/quickjs.c:8789
}
    8001796a:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:8701
                return add_fast_array_element(ctx, p, val, flags);
    8001796c:	6642                	ld	a2,16(sp)
    8001796e:	66e2                	ld	a3,24(sp)
quickjs-nuttx/quickjs.c:8789
}
    80017970:	70e6                	ld	ra,120(sp)
    80017972:	7906                	ld	s2,96(sp)
quickjs-nuttx/quickjs.c:8701
                return add_fast_array_element(ctx, p, val, flags);
    80017974:	8752                	mv	a4,s4
    80017976:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:8789
}
    80017978:	6a46                	ld	s4,80(sp)
    8001797a:	74a6                	ld	s1,104(sp)
quickjs-nuttx/quickjs.c:8701
                return add_fast_array_element(ctx, p, val, flags);
    8001797c:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:8789
}
    8001797e:	69e6                	ld	s3,88(sp)
    80017980:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs.c:8701
                return add_fast_array_element(ctx, p, val, flags);
    80017982:	69d0406f          	j	8001c81e <add_fast_array_element>
quickjs-nuttx/quickjs.c:8689
                    if (p1->class_id == JS_CLASS_ARRAY) {
    80017986:	0067d683          	lhu	a3,6(a5)
quickjs-nuttx/quickjs.c:8688
                    sh1 = p1->shape;
    8001798a:	6f98                	ld	a4,24(a5)
quickjs-nuttx/quickjs.c:8689
                    if (p1->class_id == JS_CLASS_ARRAY) {
    8001798c:	02c69b63          	bne	a3,a2,800179c2 <JS_SetPropertyValue+0xce>
quickjs-nuttx/quickjs.c:8690
                        if (unlikely(!p1->fast_array))
    80017990:	0057c783          	lbu	a5,5(a5)
    80017994:	8ba1                	andi	a5,a5,8
    80017996:	eb9d                	bnez	a5,800179cc <JS_SetPropertyValue+0xd8>
quickjs-nuttx/quickjs.c:8779
        atom = JS_ValueToAtom(ctx, prop);
    80017998:	7582                	ld	a1,32(sp)
    8001799a:	7622                	ld	a2,40(sp)
    8001799c:	854e                	mv	a0,s3
    8001799e:	675100ef          	jal	ra,80028812 <JS_ValueToAtom>
quickjs-nuttx/quickjs.c:8780
        JS_FreeValue(ctx, prop);
    800179a2:	7582                	ld	a1,32(sp)
    800179a4:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:8779
        atom = JS_ValueToAtom(ctx, prop);
    800179a6:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:8780
        JS_FreeValue(ctx, prop);
    800179aa:	854e                	mv	a0,s3
    800179ac:	df3f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8781
        if (unlikely(atom == JS_ATOM_NULL)) {
    800179b0:	12041d63          	bnez	s0,80017aea <JS_SetPropertyValue+0x1f6>
quickjs-nuttx/quickjs.c:8782
            JS_FreeValue(ctx, val);
    800179b4:	65c2                	ld	a1,16(sp)
    800179b6:	6662                	ld	a2,24(sp)
    800179b8:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:8783
            return -1;
    800179ba:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:8782
            JS_FreeValue(ctx, val);
    800179bc:	de3f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8783
            return -1;
    800179c0:	a03d                	j	800179ee <JS_SetPropertyValue+0xfa>
quickjs-nuttx/quickjs.c:8692
                    } else if (p1->class_id == JS_CLASS_OBJECT) {
    800179c2:	fcb69be3          	bne	a3,a1,80017998 <JS_SetPropertyValue+0xa4>
quickjs-nuttx/quickjs.c:8693
                        if (unlikely(sh1->has_small_array_index))
    800179c6:	01974783          	lbu	a5,25(a4)
    800179ca:	f7f9                	bnez	a5,80017998 <JS_SetPropertyValue+0xa4>
quickjs-nuttx/quickjs.c:8698
                    p1 = sh1->proto;
    800179cc:	7f1c                	ld	a5,56(a4)
    800179ce:	bf69                	j	80017968 <JS_SetPropertyValue+0x74>
quickjs-nuttx/quickjs.c:8706
            if (unlikely(idx >= (uint32_t)p->u.array.count))
    800179d0:	41bc                	lw	a5,64(a1)
    800179d2:	fcf473e3          	bgeu	s0,a5,80017998 <JS_SetPropertyValue+0xa4>
quickjs-nuttx/quickjs.c:8708
            set_value(ctx, &p->u.array.u.values[idx], val);
    800179d6:	7c8c                	ld	a1,56(s1)
    800179d8:	02041793          	slli	a5,s0,0x20
    800179dc:	6642                	ld	a2,16(sp)
    800179de:	66e2                	ld	a3,24(sp)
    800179e0:	01c7d413          	srli	s0,a5,0x1c
    800179e4:	95a2                	add	a1,a1,s0
    800179e6:	854e                	mv	a0,s3
    800179e8:	a56f40ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:8774
        return TRUE;
    800179ec:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:8789
}
    800179ee:	70e6                	ld	ra,120(sp)
    800179f0:	7446                	ld	s0,112(sp)
    800179f2:	74a6                	ld	s1,104(sp)
    800179f4:	69e6                	ld	s3,88(sp)
    800179f6:	6a46                	ld	s4,80(sp)
    800179f8:	854a                	mv	a0,s2
    800179fa:	7906                	ld	s2,96(sp)
    800179fc:	6109                	addi	sp,sp,128
    800179fe:	8082                	ret
quickjs-nuttx/quickjs.c:8711
            if (JS_ToUint8ClampFree(ctx, &v, val))
    80017a00:	6642                	ld	a2,16(sp)
    80017a02:	66e2                	ld	a3,24(sp)
    80017a04:	00ac                	addi	a1,sp,72
    80017a06:	3930a0ef          	jal	ra,80022598 <JS_ToUint8ClampFree>
quickjs-nuttx/quickjs.c:8721
            if (JS_ToInt32Free(ctx, &v, val))
    80017a0a:	f175                	bnez	a0,800179ee <JS_SetPropertyValue+0xfa>
quickjs-nuttx/quickjs.c:8723
            if (unlikely(idx >= (uint32_t)p->u.array.count))
    80017a0c:	40bc                	lw	a5,64(s1)
    80017a0e:	fcf47fe3          	bgeu	s0,a5,800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8725
            p->u.array.u.uint8_ptr[idx] = v;
    80017a12:	7c9c                	ld	a5,56(s1)
    80017a14:	1402                	slli	s0,s0,0x20
    80017a16:	9001                	srli	s0,s0,0x20
    80017a18:	943e                	add	s0,s0,a5
    80017a1a:	47a6                	lw	a5,72(sp)
    80017a1c:	00f40023          	sb	a5,0(s0) # 4000000 <asinh-0x7c000000>
quickjs-nuttx/quickjs.c:8726
            break;
    80017a20:	b7f1                	j	800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8721
            if (JS_ToInt32Free(ctx, &v, val))
    80017a22:	6642                	ld	a2,16(sp)
    80017a24:	66e2                	ld	a3,24(sp)
    80017a26:	00ac                	addi	a1,sp,72
    80017a28:	06d0a0ef          	jal	ra,80022294 <JS_ToInt32Free>
    80017a2c:	bff9                	j	80017a0a <JS_SetPropertyValue+0x116>
quickjs-nuttx/quickjs.c:8729
            if (JS_ToInt32Free(ctx, &v, val))
    80017a2e:	6642                	ld	a2,16(sp)
    80017a30:	66e2                	ld	a3,24(sp)
    80017a32:	00ac                	addi	a1,sp,72
    80017a34:	0610a0ef          	jal	ra,80022294 <JS_ToInt32Free>
    80017a38:	f95d                	bnez	a0,800179ee <JS_SetPropertyValue+0xfa>
quickjs-nuttx/quickjs.c:8731
            if (unlikely(idx >= (uint32_t)p->u.array.count))
    80017a3a:	40bc                	lw	a5,64(s1)
    80017a3c:	faf478e3          	bgeu	s0,a5,800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8733
            p->u.array.u.uint16_ptr[idx] = v;
    80017a40:	7c9c                	ld	a5,56(s1)
    80017a42:	02041713          	slli	a4,s0,0x20
    80017a46:	01f75413          	srli	s0,a4,0x1f
    80017a4a:	943e                	add	s0,s0,a5
    80017a4c:	47a6                	lw	a5,72(sp)
    80017a4e:	00f41023          	sh	a5,0(s0)
quickjs-nuttx/quickjs.c:8734
            break;
    80017a52:	bf69                	j	800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8737
            if (JS_ToInt32Free(ctx, &v, val))
    80017a54:	6642                	ld	a2,16(sp)
    80017a56:	66e2                	ld	a3,24(sp)
    80017a58:	00ac                	addi	a1,sp,72
    80017a5a:	03b0a0ef          	jal	ra,80022294 <JS_ToInt32Free>
    80017a5e:	f941                	bnez	a0,800179ee <JS_SetPropertyValue+0xfa>
quickjs-nuttx/quickjs.c:8739
            if (unlikely(idx >= (uint32_t)p->u.array.count))
    80017a60:	40bc                	lw	a5,64(s1)
    80017a62:	f8f475e3          	bgeu	s0,a5,800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8741
            p->u.array.u.uint32_ptr[idx] = v;
    80017a66:	7c9c                	ld	a5,56(s1)
    80017a68:	02041713          	slli	a4,s0,0x20
    80017a6c:	01e75413          	srli	s0,a4,0x1e
    80017a70:	943e                	add	s0,s0,a5
    80017a72:	47a6                	lw	a5,72(sp)
    80017a74:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:8742
            break;
    80017a76:	bf9d                	j	800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8748
                if (JS_ToBigInt64Free(ctx, &v, val))
    80017a78:	6642                	ld	a2,16(sp)
    80017a7a:	66e2                	ld	a3,24(sp)
    80017a7c:	00ac                	addi	a1,sp,72
    80017a7e:	6620e0ef          	jal	ra,800260e0 <JS_ToBigInt64Free>
    80017a82:	f535                	bnez	a0,800179ee <JS_SetPropertyValue+0xfa>
quickjs-nuttx/quickjs.c:8750
                if (unlikely(idx >= (uint32_t)p->u.array.count))
    80017a84:	40bc                	lw	a5,64(s1)
    80017a86:	f6f473e3          	bgeu	s0,a5,800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8752
                p->u.array.u.uint64_ptr[idx] = v;
    80017a8a:	7c9c                	ld	a5,56(s1)
    80017a8c:	02041713          	slli	a4,s0,0x20
    80017a90:	01d75413          	srli	s0,a4,0x1d
    80017a94:	943e                	add	s0,s0,a5
    80017a96:	67a6                	ld	a5,72(sp)
    80017a98:	e01c                	sd	a5,0(s0)
quickjs-nuttx/quickjs.c:8754
            break;
    80017a9a:	bf89                	j	800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8756
            if (JS_ToFloat64Free(ctx, &d, val))
    80017a9c:	6642                	ld	a2,16(sp)
    80017a9e:	66e2                	ld	a3,24(sp)
    80017aa0:	00ac                	addi	a1,sp,72
    80017aa2:	3f50a0ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80017aa6:	f521                	bnez	a0,800179ee <JS_SetPropertyValue+0xfa>
quickjs-nuttx/quickjs.c:8758
            if (unlikely(idx >= (uint32_t)p->u.array.count))
    80017aa8:	40bc                	lw	a5,64(s1)
    80017aaa:	f4f471e3          	bgeu	s0,a5,800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8760
            p->u.array.u.float_ptr[idx] = d;
    80017aae:	27a6                	fld	fa5,72(sp)
    80017ab0:	7c9c                	ld	a5,56(s1)
    80017ab2:	02041713          	slli	a4,s0,0x20
    80017ab6:	4017f7d3          	fcvt.s.d	fa5,fa5
    80017aba:	01e75413          	srli	s0,a4,0x1e
    80017abe:	943e                	add	s0,s0,a5
    80017ac0:	00f42027          	fsw	fa5,0(s0)
quickjs-nuttx/quickjs.c:8761
            break;
    80017ac4:	b725                	j	800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8763
            if (JS_ToFloat64Free(ctx, &d, val))
    80017ac6:	6642                	ld	a2,16(sp)
    80017ac8:	66e2                	ld	a3,24(sp)
    80017aca:	00ac                	addi	a1,sp,72
    80017acc:	3cb0a0ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80017ad0:	fd19                	bnez	a0,800179ee <JS_SetPropertyValue+0xfa>
quickjs-nuttx/quickjs.c:8765
            if (unlikely(idx >= (uint32_t)p->u.array.count)) {
    80017ad2:	40bc                	lw	a5,64(s1)
    80017ad4:	f0f47ce3          	bgeu	s0,a5,800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8769
            p->u.array.u.double_ptr[idx] = d;
    80017ad8:	7c8c                	ld	a1,56(s1)
    80017ada:	27a6                	fld	fa5,72(sp)
    80017adc:	02041793          	slli	a5,s0,0x20
    80017ae0:	01d7d413          	srli	s0,a5,0x1d
    80017ae4:	942e                	add	s0,s0,a1
    80017ae6:	a01c                	fsd	fa5,0(s0)
    80017ae8:	b711                	j	800179ec <JS_SetPropertyValue+0xf8>
quickjs-nuttx/quickjs.c:8785
        ret = JS_SetPropertyInternal(ctx, this_obj, atom, val, this_obj, flags);
    80017aea:	7842                	ld	a6,48(sp)
    80017aec:	78e2                	ld	a7,56(sp)
    80017aee:	6742                	ld	a4,16(sp)
    80017af0:	67e2                	ld	a5,24(sp)
    80017af2:	85c2                	mv	a1,a6
    80017af4:	e052                	sd	s4,0(sp)
    80017af6:	86a2                	mv	a3,s0
    80017af8:	8646                	mv	a2,a7
    80017afa:	854e                	mv	a0,s3
    80017afc:	84fff0ef          	jal	ra,8001734a <JS_SetPropertyInternal>
    80017b00:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:8786
        JS_FreeAtom(ctx, atom);
    80017b02:	85a2                	mv	a1,s0
    80017b04:	854e                	mv	a0,s3
    80017b06:	e42f30ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:8787
        return ret;
    80017b0a:	b5d5                	j	800179ee <JS_SetPropertyValue+0xfa>

0000000080017b0c <JS_SetPropertyUint32>:
JS_SetPropertyUint32():
quickjs-nuttx/quickjs.c:8793
{
    80017b0c:	7139                	addi	sp,sp,-64
    80017b0e:	e82e                	sd	a1,16(sp)
    80017b10:	ec32                	sd	a2,24(sp)
    80017b12:	e03a                	sd	a4,0(sp)
    80017b14:	e43e                	sd	a5,8(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80017b16:	0206c463          	bltz	a3,80017b3e <JS_SetPropertyUint32+0x32>
    80017b1a:	0006879b          	sext.w	a5,a3
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80017b1e:	da02                	sw	zero,52(sp)
    80017b20:	d83e                	sw	a5,48(sp)
    80017b22:	7742                	ld	a4,48(sp)
    80017b24:	f03a                	sd	a4,32(sp)
    80017b26:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80017b28:	d03e                	sw	a5,32(sp)
JS_SetPropertyUint32():
quickjs-nuttx/quickjs.c:8794
    return JS_SetPropertyValue(ctx, this_obj, JS_NewUint32(ctx, idx), val,
    80017b2a:	6822                	ld	a6,8(sp)
    80017b2c:	6782                	ld	a5,0(sp)
    80017b2e:	7682                	ld	a3,32(sp)
    80017b30:	65c2                	ld	a1,16(sp)
    80017b32:	6662                	ld	a2,24(sp)
    80017b34:	f43a                	sd	a4,40(sp)
    80017b36:	6891                	lui	a7,0x4
quickjs-nuttx/quickjs.c:8796
}
    80017b38:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:8794
    return JS_SetPropertyValue(ctx, this_obj, JS_NewUint32(ctx, idx), val,
    80017b3a:	dbbff06f          	j	800178f4 <JS_SetPropertyValue>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80017b3e:	d21687d3          	fcvt.d.wu	fa5,a3
    80017b42:	471d                	li	a4,7
    80017b44:	e20787d3          	fmv.x.d	a5,fa5
JS_SetPropertyUint32():
quickjs-nuttx/quickjs.h:230
    return v;
    80017b48:	b03e                	fsd	fa5,32(sp)
    80017b4a:	2781                	sext.w	a5,a5
    80017b4c:	bff1                	j	80017b28 <JS_SetPropertyUint32+0x1c>

0000000080017b4e <JS_DefineProperty>:
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9037
{
    80017b4e:	710d                	addi	sp,sp,-352
    80017b50:	e6a6                	sd	s1,328(sp)
    80017b52:	fe4e                	sd	s3,312(sp)
    80017b54:	e4be                	sd	a5,72(sp)
    80017b56:	ee86                	sd	ra,344(sp)
    80017b58:	eaa2                	sd	s0,336(sp)
    80017b5a:	e2ca                	sd	s2,320(sp)
    80017b5c:	fa52                	sd	s4,304(sp)
    80017b5e:	f656                	sd	s5,296(sp)
    80017b60:	f25a                	sd	s6,288(sp)
    80017b62:	ee5e                	sd	s7,280(sp)
    80017b64:	ea62                	sd	s8,272(sp)
    80017b66:	e666                	sd	s9,264(sp)
    80017b68:	e26a                	sd	s10,256(sp)
    80017b6a:	fdee                	sd	s11,248(sp)
    80017b6c:	e8ae                	sd	a1,80(sp)
    80017b6e:	ecb2                	sd	a2,88(sp)
    80017b70:	e0ba                	sd	a4,64(sp)
    80017b72:	f842                	sd	a6,48(sp)
    80017b74:	fc46                	sd	a7,56(sp)
quickjs-nuttx/quickjs.c:9043
    if (JS_VALUE_GET_TAG(this_obj) != JS_TAG_OBJECT) {
    80017b76:	0006099b          	sext.w	s3,a2
    80017b7a:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:9037
{
    80017b7c:	17012483          	lw	s1,368(sp)
quickjs-nuttx/quickjs.c:9043
    if (JS_VALUE_GET_TAG(this_obj) != JS_TAG_OBJECT) {
    80017b80:	02f98563          	beq	s3,a5,80017baa <JS_DefineProperty+0x5c>
quickjs-nuttx/quickjs.c:9044
        JS_ThrowTypeErrorNotAnObject(ctx);
    80017b84:	0a6010ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:9045
        return -1;
    80017b88:	597d                	li	s2,-1
quickjs-nuttx/quickjs.c:9304
}
    80017b8a:	60f6                	ld	ra,344(sp)
    80017b8c:	6456                	ld	s0,336(sp)
    80017b8e:	64b6                	ld	s1,328(sp)
    80017b90:	79f2                	ld	s3,312(sp)
    80017b92:	7a52                	ld	s4,304(sp)
    80017b94:	7ab2                	ld	s5,296(sp)
    80017b96:	7b12                	ld	s6,288(sp)
    80017b98:	6bf2                	ld	s7,280(sp)
    80017b9a:	6c52                	ld	s8,272(sp)
    80017b9c:	6cb2                	ld	s9,264(sp)
    80017b9e:	6d12                	ld	s10,256(sp)
    80017ba0:	7dee                	ld	s11,248(sp)
    80017ba2:	854a                	mv	a0,s2
    80017ba4:	6916                	ld	s2,320(sp)
    80017ba6:	6135                	addi	sp,sp,352
    80017ba8:	8082                	ret
quickjs-nuttx/quickjs.c:9242
                    if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    80017baa:	6c89                	lui	s9,0x2
get_prop_flags():
quickjs-nuttx/quickjs.c:8837
    mask = (flags >> JS_PROP_HAS_SHIFT) & JS_PROP_C_W_E;
    80017bac:	4084db1b          	sraiw	s6,s1,0x8
    80017bb0:	0074ca93          	xori	s5,s1,7
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9236
            if (__JS_AtomIsTaggedInt(prop)) {
    80017bb4:	0006879b          	sext.w	a5,a3
quickjs-nuttx/quickjs.c:9242
                    if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    80017bb8:	800c8c93          	addi	s9,s9,-2048 # 1800 <asinh-0x7fffe800>
    80017bbc:	016afab3          	and	s5,s5,s6
quickjs-nuttx/quickjs.c:9053
        if ((prs->flags & JS_PROP_LENGTH) && (flags & JS_PROP_HAS_VALUE)) {
    80017bc0:	6d09                	lui	s10,0x2
quickjs-nuttx/quickjs.c:9242
                    if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    80017bc2:	0194fcb3          	and	s9,s1,s9
    80017bc6:	007afa93          	andi	s5,s5,7
quickjs-nuttx/quickjs.c:9236
            if (__JS_AtomIsTaggedInt(prop)) {
    80017bca:	ec3e                	sd	a5,24(sp)
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    80017bcc:	02169c13          	slli	s8,a3,0x21
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9053
        if ((prs->flags & JS_PROP_LENGTH) && (flags & JS_PROP_HAS_VALUE)) {
    80017bd0:	01a4f7b3          	and	a5,s1,s10
    80017bd4:	842a                	mv	s0,a0
    80017bd6:	8db6                	mv	s11,a3
quickjs-nuttx/quickjs.c:9047
    p = JS_VALUE_GET_OBJ(this_obj);
    80017bd8:	8a2e                	mv	s4,a1
    80017bda:	015ceab3          	or	s5,s9,s5
__JS_AtomToUInt32():
quickjs-nuttx/quickjs.c:2417
    return atom & ~JS_ATOM_TAG_INT;
    80017bde:	021c5c13          	srli	s8,s8,0x21
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9053
        if ((prs->flags & JS_PROP_LENGTH) && (flags & JS_PROP_HAS_VALUE)) {
    80017be2:	f03e                	sd	a5,32(sp)
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80017be4:	018a3703          	ld	a4,24(s4)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017be8:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80017bea:	531c                	lw	a5,32(a4)
    80017bec:	00fdf7b3          	and	a5,s11,a5
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017bf0:	1782                	slli	a5,a5,0x20
    80017bf2:	9381                	srli	a5,a5,0x20
    80017bf4:	0785                	addi	a5,a5,1
    80017bf6:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017bfa:	040006b7          	lui	a3,0x4000
    80017bfe:	16fd                	addi	a3,a3,-1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017c00:	97ba                	add	a5,a5,a4
    80017c02:	0007e903          	lwu	s2,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80017c06:	04070713          	addi	a4,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80017c0a:	00091463          	bnez	s2,80017c12 <JS_DefineProperty+0xc4>
quickjs-nuttx/quickjs.c:5234
    return NULL;
    80017c0e:	4781                	li	a5,0
    80017c10:	a829                	j	80017c2a <JS_DefineProperty+0xdc>
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80017c12:	00391793          	slli	a5,s2,0x3
    80017c16:	17e1                	addi	a5,a5,-8
    80017c18:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80017c1a:	43d0                	lw	a2,4(a5)
    80017c1c:	05b61163          	bne	a2,s11,80017c5e <JS_DefineProperty+0x110>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80017c20:	020a3703          	ld	a4,32(s4)
    80017c24:	0912                	slli	s2,s2,0x4
    80017c26:	1941                	addi	s2,s2,-16
    80017c28:	993a                	add	s2,s2,a4
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9050
    prs = find_own_property(&pr, p, prop);
    80017c2a:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:9051
    if (prs) {
    80017c2c:	44078a63          	beqz	a5,80018080 <JS_DefineProperty+0x532>
quickjs-nuttx/quickjs.c:9053
        if ((prs->flags & JS_PROP_LENGTH) && (flags & JS_PROP_HAS_VALUE)) {
    80017c30:	439c                	lw	a5,0(a5)
    80017c32:	01a7d79b          	srliw	a5,a5,0x1a
    80017c36:	8ba1                	andi	a5,a5,8
    80017c38:	cbf1                	beqz	a5,80017d0c <JS_DefineProperty+0x1be>
quickjs-nuttx/quickjs.c:9053 (discriminator 1)
    80017c3a:	7782                	ld	a5,32(sp)
    80017c3c:	cbe1                	beqz	a5,80017d0c <JS_DefineProperty+0x1be>
quickjs-nuttx/quickjs.c:9055
            if (JS_ToArrayLengthFree(ctx, &array_length,
    80017c3e:	6506                	ld	a0,64(sp)
    80017c40:	65a6                	ld	a1,72(sp)
    80017c42:	fd8f20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80017c46:	862a                	mv	a2,a0
    80017c48:	86ae                	mv	a3,a1
    80017c4a:	f8aa                	sd	a0,112(sp)
    80017c4c:	fcae                	sd	a1,120(sp)
    80017c4e:	4701                	li	a4,0
    80017c50:	018c                	addi	a1,sp,192
    80017c52:	8522                	mv	a0,s0
    80017c54:	6060b0ef          	jal	ra,8002325a <JS_ToArrayLengthFree>
    80017c58:	c919                	beqz	a0,80017c6e <JS_DefineProperty+0x120>
quickjs-nuttx/quickjs.c:9266 (discriminator 1)
                    return -1;
    80017c5a:	894e                	mv	s2,s3
    80017c5c:	b73d                	j	80017b8a <JS_DefineProperty+0x3c>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017c5e:	0007a903          	lw	s2,0(a5)
    80017c62:	00d97933          	and	s2,s2,a3
    80017c66:	1902                	slli	s2,s2,0x20
    80017c68:	02095913          	srli	s2,s2,0x20
    80017c6c:	bf79                	j	80017c0a <JS_DefineProperty+0xbc>
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9060
            val = (JSValueConst)JS_NewUint32(ctx, array_length);
    80017c6e:	470e                	lw	a4,192(sp)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80017c70:	0007079b          	sext.w	a5,a4
    80017c74:	04074463          	bltz	a4,80017cbc <JS_DefineProperty+0x16e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80017c78:	cb82                	sw	zero,212(sp)
    80017c7a:	c9be                	sw	a5,208(sp)
    80017c7c:	674e                	ld	a4,208(sp)
    80017c7e:	ed82                	sd	zero,216(sp)
    80017c80:	f582                	sd	zero,232(sp)
    80017c82:	f1ba                	sd	a4,224(sp)
    80017c84:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80017c86:	e4ba                	sd	a4,72(sp)
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80017c88:	018a3703          	ld	a4,24(s4)
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    80017c8c:	d1be                	sw	a5,224(sp)
find_own_property():
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017c8e:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80017c90:	531c                	lw	a5,32(a4)
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    80017c92:	378e                	fld	fa5,224(sp)
find_own_property():
quickjs-nuttx/quickjs.c:5221
    80017c94:	00fdf7b3          	and	a5,s11,a5
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017c98:	1782                	slli	a5,a5,0x20
    80017c9a:	9381                	srli	a5,a5,0x20
    80017c9c:	0785                	addi	a5,a5,1
    80017c9e:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017ca2:	040006b7          	lui	a3,0x4000
    80017ca6:	a0be                	fsd	fa5,64(sp)
    80017ca8:	16fd                	addi	a3,a3,-1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80017caa:	97ba                	add	a5,a5,a4
    80017cac:	0007e903          	lwu	s2,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80017cb0:	04070713          	addi	a4,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5224
    while (h) {
    80017cb4:	00091c63          	bnez	s2,80017ccc <JS_DefineProperty+0x17e>
quickjs-nuttx/quickjs.c:5234
    return NULL;
    80017cb8:	4781                	li	a5,0
    80017cba:	a02d                	j	80017ce4 <JS_DefineProperty+0x196>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    80017cbc:	d21707d3          	fcvt.d.wu	fa5,a4
    80017cc0:	471d                	li	a4,7
    80017cc2:	e20787d3          	fmv.x.d	a5,fa5
JS_DefineProperty():
quickjs-nuttx/quickjs.h:230
    return v;
    80017cc6:	b1be                	fsd	fa5,224(sp)
    80017cc8:	2781                	sext.w	a5,a5
    80017cca:	bf75                	j	80017c86 <JS_DefineProperty+0x138>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    80017ccc:	00391793          	slli	a5,s2,0x3
    80017cd0:	17e1                	addi	a5,a5,-8
    80017cd2:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    80017cd4:	43d0                	lw	a2,4(a5)
    80017cd6:	03b61363          	bne	a2,s11,80017cfc <JS_DefineProperty+0x1ae>
quickjs-nuttx/quickjs.c:5227
            *ppr = &p->prop[h - 1];
    80017cda:	020a3703          	ld	a4,32(s4)
    80017cde:	0912                	slli	s2,s2,0x4
    80017ce0:	1941                	addi	s2,s2,-16
    80017ce2:	993a                	add	s2,s2,a4
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9062
            prs = find_own_property(&pr, p, prop);
    80017ce4:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:9063
            assert(prs != NULL);
    80017ce6:	e39d                	bnez	a5,80017d0c <JS_DefineProperty+0x1be>
quickjs-nuttx/quickjs.c:9063 (discriminator 1)
    80017ce8:	6589                	lui	a1,0x2
    80017cea:	4601                	li	a2,0
    80017cec:	36758593          	addi	a1,a1,871 # 2367 <asinh-0x7fffdc99>
    80017cf0:	00052517          	auipc	a0,0x52
    80017cf4:	8a850513          	addi	a0,a0,-1880 # 80069598 <qjsc_repl+0x3fe8>
    80017cf8:	465480ef          	jal	ra,8006095c <__assert>
find_own_property():
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    80017cfc:	0007a903          	lw	s2,0(a5)
    80017d00:	00d97933          	and	s2,s2,a3
    80017d04:	1902                	slli	s2,s2,0x20
    80017d06:	02095913          	srli	s2,s2,0x20
    80017d0a:	b76d                	j	80017cb4 <JS_DefineProperty+0x166>
JS_DefineProperty():
quickjs-nuttx/quickjs.c:9066
        if (!check_define_prop_flags(prs->flags, flags)) {
    80017d0c:	7726                	ld	a4,104(sp)
    80017d0e:	85a6                	mv	a1,s1
    80017d10:	4308                	lw	a0,0(a4)
    80017d12:	f43a                	sd	a4,40(sp)
    80017d14:	01a55b9b          	srliw	s7,a0,0x1a
    80017d18:	855e                	mv	a0,s7
    80017d1a:	82ff10ef          	jal	ra,80009548 <check_define_prop_flags>
    80017d1e:	7722                	ld	a4,40(sp)
    80017d20:	e919                	bnez	a0,80017d36 <JS_DefineProperty+0x1e8>
quickjs-nuttx/quickjs.c:9068
            return JS_ThrowTypeErrorOrFalse(ctx, flags, "property is not configurable");
    80017d22:	00052617          	auipc	a2,0x52
    80017d26:	42660613          	addi	a2,a2,1062 # 8006a148 <qjsc_repl+0x4b98>
    80017d2a:	85a6                	mv	a1,s1
    80017d2c:	8522                	mv	a0,s0
    80017d2e:	610000ef          	jal	ra,8001833e <JS_ThrowTypeErrorOrFalse>
quickjs-nuttx/quickjs.c:9303
    return JS_CreateProperty(ctx, p, prop, val, getter, setter, flags);
    80017d32:	892a                	mv	s2,a0
    80017d34:	bd99                	j	80017b8a <JS_DefineProperty+0x3c>
quickjs-nuttx/quickjs.c:9071
        if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    80017d36:	030bfd13          	andi	s10,s7,48
    80017d3a:	03000793          	li	a5,48
    80017d3e:	00fd1b63          	bne	s10,a5,80017d54 <JS_DefineProperty+0x206>
quickjs-nuttx/quickjs.c:9073
            if (JS_AutoInitProperty(ctx, p, prop, pr, prs))
    80017d42:	86ca                	mv	a3,s2
    80017d44:	866e                	mv	a2,s11
    80017d46:	85d2                	mv	a1,s4
    80017d48:	8522                	mv	a0,s0
    80017d4a:	794020ef          	jal	ra,8001a4de <JS_AutoInitProperty>
quickjs-nuttx/quickjs.c:9244
                        if (convert_fast_array_to_array(ctx, p))
    80017d4e:	e8050be3          	beqz	a0,80017be4 <JS_DefineProperty+0x96>
    80017d52:	b721                	j	80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9078
        if (flags & (JS_PROP_HAS_VALUE | JS_PROP_HAS_WRITABLE |
    80017d54:	6791                	lui	a5,0x4
    80017d56:	a0078793          	addi	a5,a5,-1536 # 3a00 <asinh-0x7fffc600>
    80017d5a:	8fe5                	and	a5,a5,s1
    80017d5c:	cbe9                	beqz	a5,80017e2e <JS_DefineProperty+0x2e0>
quickjs-nuttx/quickjs.c:9080
            if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    80017d5e:	120c8b63          	beqz	s9,80017e94 <JS_DefineProperty+0x346>
quickjs-nuttx/quickjs.c:9083
                if (JS_IsFunction(ctx, getter)) {
    80017d62:	75c2                	ld	a1,48(sp)
    80017d64:	7662                	ld	a2,56(sp)
    80017d66:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:9086
                    new_getter = NULL;
    80017d68:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:9083
                if (JS_IsFunction(ctx, getter)) {
    80017d6a:	f38f60ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80017d6e:	c111                	beqz	a0,80017d72 <JS_DefineProperty+0x224>
quickjs-nuttx/quickjs.c:9084
                    new_getter = JS_VALUE_GET_OBJ(getter);
    80017d70:	7c42                	ld	s8,48(sp)
quickjs-nuttx/quickjs.c:9088
                if (JS_IsFunction(ctx, setter)) {
    80017d72:	7596                	ld	a1,352(sp)
    80017d74:	7636                	ld	a2,360(sp)
    80017d76:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:9091
                    new_setter = NULL;
    80017d78:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:9088
                if (JS_IsFunction(ctx, setter)) {
    80017d7a:	f28f60ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80017d7e:	c111                	beqz	a0,80017d82 <JS_DefineProperty+0x234>
quickjs-nuttx/quickjs.c:9089
                    new_setter = JS_VALUE_GET_OBJ(setter);
    80017d80:	7a96                	ld	s5,352(sp)
quickjs-nuttx/quickjs.c:9094
                if ((prs->flags & JS_PROP_TMASK) != JS_PROP_GETSET) {
    80017d82:	47c1                	li	a5,16
    80017d84:	0efd0363          	beq	s10,a5,80017e6a <JS_DefineProperty+0x31c>
quickjs-nuttx/quickjs.c:9095
                    if (js_shape_prepare_update(ctx, p, &prs))
    80017d88:	10b0                	addi	a2,sp,104
    80017d8a:	85d2                	mv	a1,s4
    80017d8c:	8522                	mv	a0,s0
    80017d8e:	6c4020ef          	jal	ra,8001a452 <js_shape_prepare_update>
    80017d92:	ec0514e3          	bnez	a0,80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9098
                    if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017d96:	77a6                	ld	a5,104(sp)
    80017d98:	02000713          	li	a4,32
quickjs-nuttx/quickjs.c:9099
                        free_var_ref(ctx->rt, pr->u.var_ref);
    80017d9c:	00093583          	ld	a1,0(s2)
quickjs-nuttx/quickjs.c:9098
                    if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017da0:	439c                	lw	a5,0(a5)
    80017da2:	01a7d79b          	srliw	a5,a5,0x1a
    80017da6:	0307f793          	andi	a5,a5,48
    80017daa:	0ae79a63          	bne	a5,a4,80017e5e <JS_DefineProperty+0x310>
quickjs-nuttx/quickjs.c:9099
                        free_var_ref(ctx->rt, pr->u.var_ref);
    80017dae:	6c08                	ld	a0,24(s0)
    80017db0:	ebcf40ef          	jal	ra,8000c46c <free_var_ref>
quickjs-nuttx/quickjs.c:9103
                    prs->flags = (prs->flags &
    80017db4:	76a6                	ld	a3,104(sp)
    80017db6:	429c                	lw	a5,0(a3)
    80017db8:	01a7d71b          	srliw	a4,a5,0x1a
    80017dbc:	8b15                	andi	a4,a4,5
    80017dbe:	01076713          	ori	a4,a4,16
    80017dc2:	179a                	slli	a5,a5,0x26
    80017dc4:	01a7171b          	slliw	a4,a4,0x1a
    80017dc8:	9399                	srli	a5,a5,0x26
    80017dca:	8fd9                	or	a5,a5,a4
    80017dcc:	c29c                	sw	a5,0(a3)
quickjs-nuttx/quickjs.c:9106
                    pr->u.getset.getter = NULL;
    80017dce:	00093023          	sd	zero,0(s2)
quickjs-nuttx/quickjs.c:9107
                    pr->u.getset.setter = NULL;
    80017dd2:	00093423          	sd	zero,8(s2)
quickjs-nuttx/quickjs.c:9120
                if (flags & JS_PROP_HAS_GET) {
    80017dd6:	00b4d793          	srli	a5,s1,0xb
    80017dda:	8b85                	andi	a5,a5,1
    80017ddc:	c39d                	beqz	a5,80017e02 <JS_DefineProperty+0x2b4>
quickjs-nuttx/quickjs.c:9121
                    if (pr->u.getset.getter)
    80017dde:	00093583          	ld	a1,0(s2)
    80017de2:	c981                	beqz	a1,80017df2 <JS_DefineProperty+0x2a4>
quickjs-nuttx/quickjs.c:9122
                        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.getter));
    80017de4:	57fd                	li	a5,-1
    80017de6:	567d                	li	a2,-1
    80017de8:	8522                	mv	a0,s0
    80017dea:	f1ae                	sd	a1,224(sp)
    80017dec:	f5be                	sd	a5,232(sp)
    80017dee:	9b1f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9123
                    if (new_getter)
    80017df2:	000c0663          	beqz	s8,80017dfe <JS_DefineProperty+0x2b0>
quickjs-nuttx/quickjs.c:9124
                        JS_DupValue(ctx, getter);
    80017df6:	7542                	ld	a0,48(sp)
    80017df8:	75e2                	ld	a1,56(sp)
    80017dfa:	e20f20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:9125
                    pr->u.getset.getter = new_getter;
    80017dfe:	01893023          	sd	s8,0(s2)
quickjs-nuttx/quickjs.c:9127
                if (flags & JS_PROP_HAS_SET) {
    80017e02:	00c4d793          	srli	a5,s1,0xc
    80017e06:	8b85                	andi	a5,a5,1
    80017e08:	c39d                	beqz	a5,80017e2e <JS_DefineProperty+0x2e0>
quickjs-nuttx/quickjs.c:9128
                    if (pr->u.getset.setter)
    80017e0a:	00893583          	ld	a1,8(s2)
    80017e0e:	c981                	beqz	a1,80017e1e <JS_DefineProperty+0x2d0>
quickjs-nuttx/quickjs.c:9129
                        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.setter));
    80017e10:	57fd                	li	a5,-1
    80017e12:	567d                	li	a2,-1
    80017e14:	8522                	mv	a0,s0
    80017e16:	f1ae                	sd	a1,224(sp)
    80017e18:	f5be                	sd	a5,232(sp)
    80017e1a:	985f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9130
                    if (new_setter)
    80017e1e:	000a8663          	beqz	s5,80017e2a <JS_DefineProperty+0x2dc>
quickjs-nuttx/quickjs.c:9131
                        JS_DupValue(ctx, setter);
    80017e22:	7516                	ld	a0,352(sp)
    80017e24:	75b6                	ld	a1,360(sp)
    80017e26:	df4f20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:9132
                    pr->u.getset.setter = new_setter;
    80017e2a:	01593423          	sd	s5,8(s2)
quickjs-nuttx/quickjs.c:9223
        if (flags & JS_PROP_HAS_ENUMERABLE)
    80017e2e:	4004f793          	andi	a5,s1,1024
quickjs-nuttx/quickjs.c:9222
            mask |= JS_PROP_CONFIGURABLE;
    80017e32:	001b7b13          	andi	s6,s6,1
quickjs-nuttx/quickjs.c:9223
        if (flags & JS_PROP_HAS_ENUMERABLE)
    80017e36:	c399                	beqz	a5,80017e3c <JS_DefineProperty+0x2ee>
quickjs-nuttx/quickjs.c:9224
            mask |= JS_PROP_ENUMERABLE;
    80017e38:	004b6b13          	ori	s6,s6,4
quickjs-nuttx/quickjs.c:9226
                                     (prs->flags & ~mask) | (flags & mask)))
    80017e3c:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:9225
        if (js_update_property_flags(ctx, p, &prs,
    80017e3e:	10b0                	addi	a2,sp,104
    80017e40:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:9226
                                     (prs->flags & ~mask) | (flags & mask)))
    80017e42:	4394                	lw	a3,0(a5)
quickjs-nuttx/quickjs.c:9225
        if (js_update_property_flags(ctx, p, &prs,
    80017e44:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:9226
                                     (prs->flags & ~mask) | (flags & mask)))
    80017e46:	01a6d69b          	srliw	a3,a3,0x1a
quickjs-nuttx/quickjs.c:9225
        if (js_update_property_flags(ctx, p, &prs,
    80017e4a:	8cb5                	xor	s1,s1,a3
    80017e4c:	009b7b33          	and	s6,s6,s1
    80017e50:	00db46b3          	xor	a3,s6,a3
    80017e54:	1a5020ef          	jal	ra,8001a7f8 <js_update_property_flags>
    80017e58:	16050663          	beqz	a0,80017fc4 <JS_DefineProperty+0x476>
    80017e5c:	bbfd                	j	80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9101
                        JS_FreeValue(ctx, pr->u.value);
    80017e5e:	00893603          	ld	a2,8(s2)
    80017e62:	8522                	mv	a0,s0
    80017e64:	93bf30ef          	jal	ra,8000b79e <JS_FreeValue>
    80017e68:	b7b1                	j	80017db4 <JS_DefineProperty+0x266>
quickjs-nuttx/quickjs.c:9109
                    if (!(prs->flags & JS_PROP_CONFIGURABLE)) {
    80017e6a:	001bfb93          	andi	s7,s7,1
    80017e6e:	f60b94e3          	bnez	s7,80017dd6 <JS_DefineProperty+0x288>
quickjs-nuttx/quickjs.c:9110
                        if ((flags & JS_PROP_HAS_GET) &&
    80017e72:	00b4d793          	srli	a5,s1,0xb
    80017e76:	8b85                	andi	a5,a5,1
    80017e78:	c789                	beqz	a5,80017e82 <JS_DefineProperty+0x334>
quickjs-nuttx/quickjs.c:9110 (discriminator 1)
    80017e7a:	00093783          	ld	a5,0(s2)
    80017e7e:	eb8792e3          	bne	a5,s8,80017d22 <JS_DefineProperty+0x1d4>
quickjs-nuttx/quickjs.c:9114
                        if ((flags & JS_PROP_HAS_SET) &&
    80017e82:	00c4d793          	srli	a5,s1,0xc
    80017e86:	8b85                	andi	a5,a5,1
    80017e88:	d7b9                	beqz	a5,80017dd6 <JS_DefineProperty+0x288>
quickjs-nuttx/quickjs.c:9114 (discriminator 1)
    80017e8a:	00893783          	ld	a5,8(s2)
    80017e8e:	f55784e3          	beq	a5,s5,80017dd6 <JS_DefineProperty+0x288>
    80017e92:	bd41                	j	80017d22 <JS_DefineProperty+0x1d4>
quickjs-nuttx/quickjs.c:9135
                if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    80017e94:	47c1                	li	a5,16
    80017e96:	10fd1063          	bne	s10,a5,80017f96 <JS_DefineProperty+0x448>
quickjs-nuttx/quickjs.c:9137
                    if (js_shape_prepare_update(ctx, p, &prs))
    80017e9a:	10b0                	addi	a2,sp,104
    80017e9c:	85d2                	mv	a1,s4
    80017e9e:	8522                	mv	a0,s0
    80017ea0:	5b2020ef          	jal	ra,8001a452 <js_shape_prepare_update>
    80017ea4:	da051be3          	bnez	a0,80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9139
                    if (pr->u.getset.getter)
    80017ea8:	00093583          	ld	a1,0(s2)
    80017eac:	c981                	beqz	a1,80017ebc <JS_DefineProperty+0x36e>
quickjs-nuttx/quickjs.c:9140
                        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.getter));
    80017eae:	57fd                	li	a5,-1
    80017eb0:	567d                	li	a2,-1
    80017eb2:	8522                	mv	a0,s0
    80017eb4:	f1ae                	sd	a1,224(sp)
    80017eb6:	f5be                	sd	a5,232(sp)
    80017eb8:	8e7f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9141
                    if (pr->u.getset.setter)
    80017ebc:	00893583          	ld	a1,8(s2)
    80017ec0:	c981                	beqz	a1,80017ed0 <JS_DefineProperty+0x382>
quickjs-nuttx/quickjs.c:9142
                        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.setter));
    80017ec2:	57fd                	li	a5,-1
    80017ec4:	567d                	li	a2,-1
    80017ec6:	8522                	mv	a0,s0
    80017ec8:	f1ae                	sd	a1,224(sp)
    80017eca:	f5be                	sd	a5,232(sp)
    80017ecc:	8d3f30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9143 (discriminator 1)
                    prs->flags &= ~(JS_PROP_TMASK | JS_PROP_WRITABLE);
    80017ed0:	76a6                	ld	a3,104(sp)
    80017ed2:	34000737          	lui	a4,0x34000
    80017ed6:	429c                	lw	a5,0(a3)
    80017ed8:	8f7d                	and	a4,a4,a5
    80017eda:	179a                	slli	a5,a5,0x26
    80017edc:	9399                	srli	a5,a5,0x26
    80017ede:	8fd9                	or	a5,a5,a4
    80017ee0:	c29c                	sw	a5,0(a3)
quickjs-nuttx/quickjs.c:9144 (discriminator 1)
                    pr->u.value = JS_UNDEFINED;
    80017ee2:	478d                	li	a5,3
    80017ee4:	00093023          	sd	zero,0(s2)
    80017ee8:	00f93423          	sd	a5,8(s2)
quickjs-nuttx/quickjs.c:9157
                if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017eec:	77a6                	ld	a5,104(sp)
quickjs-nuttx/quickjs.c:9053
        if ((prs->flags & JS_PROP_LENGTH) && (flags & JS_PROP_HAS_VALUE)) {
    80017eee:	6709                	lui	a4,0x2
quickjs-nuttx/quickjs.c:9157
                if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017ef0:	02000693          	li	a3,32
    80017ef4:	439c                	lw	a5,0(a5)
quickjs-nuttx/quickjs.c:9053
        if ((prs->flags & JS_PROP_LENGTH) && (flags & JS_PROP_HAS_VALUE)) {
    80017ef6:	8f65                	and	a4,a4,s1
quickjs-nuttx/quickjs.c:9157
                if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017ef8:	01a7d79b          	srliw	a5,a5,0x1a
    80017efc:	0307f613          	andi	a2,a5,48
    80017f00:	0ed61163          	bne	a2,a3,80017fe2 <JS_DefineProperty+0x494>
quickjs-nuttx/quickjs.c:9158
                    if (flags & JS_PROP_HAS_VALUE) {
    80017f04:	c70d                	beqz	a4,80017f2e <JS_DefineProperty+0x3e0>
quickjs-nuttx/quickjs.c:9163
                            if (!js_same_value(ctx, val, *pr->u.var_ref->pvalue))
    80017f06:	00093783          	ld	a5,0(s2)
quickjs-nuttx/quickjs.c:9159
                        if (p->class_id == JS_CLASS_MODULE_NS) {
    80017f0a:	006a5703          	lhu	a4,6(s4)
quickjs-nuttx/quickjs.c:9163
                            if (!js_same_value(ctx, val, *pr->u.var_ref->pvalue))
    80017f0e:	0187ba83          	ld	s5,24(a5)
quickjs-nuttx/quickjs.c:9159
                        if (p->class_id == JS_CLASS_MODULE_NS) {
    80017f12:	47ad                	li	a5,11
    80017f14:	0af71a63          	bne	a4,a5,80017fc8 <JS_DefineProperty+0x47a>
quickjs-nuttx/quickjs.c:9163
                            if (!js_same_value(ctx, val, *pr->u.var_ref->pvalue))
    80017f18:	000ab683          	ld	a3,0(s5) # 4000000 <asinh-0x7c000000>
    80017f1c:	008ab703          	ld	a4,8(s5)
    80017f20:	6586                	ld	a1,64(sp)
    80017f22:	6626                	ld	a2,72(sp)
    80017f24:	8522                	mv	a0,s0
    80017f26:	a4df30ef          	jal	ra,8000b972 <js_same_value>
    80017f2a:	de050ce3          	beqz	a0,80017d22 <JS_DefineProperty+0x1d4>
quickjs-nuttx/quickjs.c:9173
                    if ((flags & (JS_PROP_HAS_WRITABLE | JS_PROP_WRITABLE)) == JS_PROP_HAS_WRITABLE) {
    80017f2e:	2024f793          	andi	a5,s1,514
    80017f32:	20000713          	li	a4,512
    80017f36:	eee79ce3          	bne	a5,a4,80017e2e <JS_DefineProperty+0x2e0>
quickjs-nuttx/quickjs.c:9175
                        if (p->class_id == JS_CLASS_MODULE_NS) {
    80017f3a:	006a5703          	lhu	a4,6(s4)
    80017f3e:	47ad                	li	a5,11
quickjs-nuttx/quickjs.c:9176
                            return JS_ThrowTypeErrorOrFalse(ctx, flags, "module namespace properties have writable = false");
    80017f40:	00052617          	auipc	a2,0x52
    80017f44:	22860613          	addi	a2,a2,552 # 8006a168 <qjsc_repl+0x4bb8>
quickjs-nuttx/quickjs.c:9175
                        if (p->class_id == JS_CLASS_MODULE_NS) {
    80017f48:	1ef70463          	beq	a4,a5,80018130 <JS_DefineProperty+0x5e2>
quickjs-nuttx/quickjs.c:9178
                        if (js_shape_prepare_update(ctx, p, &prs))
    80017f4c:	10b0                	addi	a2,sp,104
    80017f4e:	85d2                	mv	a1,s4
    80017f50:	8522                	mv	a0,s0
    80017f52:	500020ef          	jal	ra,8001a452 <js_shape_prepare_update>
    80017f56:	d00512e3          	bnez	a0,80017c5a <JS_DefineProperty+0x10c>
quickjs-nuttx/quickjs.c:9180
                        val1 = JS_DupValue(ctx, *pr->u.var_ref->pvalue);
    80017f5a:	00093783          	ld	a5,0(s2)
    80017f5e:	6f9c                	ld	a5,24(a5)
    80017f60:	6388                	ld	a0,0(a5)
    80017f62:	678c                	ld	a1,8(a5)
    80017f64:	cb6f20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80017f68:	f1aa                	sd	a0,224(sp)
    80017f6a:	f5ae                	sd	a1,232(sp)
quickjs-nuttx/quickjs.c:9181
                        free_var_ref(ctx->rt, pr->u.var_ref);
    80017f6c:	6c08                	ld	a0,24(s0)
    80017f6e:	00093583          	ld	a1,0(s2)
    80017f72:	cfaf40ef          	jal	ra,8000c46c <free_var_ref>
quickjs-nuttx/quickjs.c:9182
                        pr->u.value = val1;
    80017f76:	778e                	ld	a5,224(sp)
quickjs-nuttx/quickjs.c:9183
                        prs->flags &= ~(JS_PROP_TMASK | JS_PROP_WRITABLE);
    80017f78:	34000737          	lui	a4,0x34000
quickjs-nuttx/quickjs.c:9182
                        pr->u.value = val1;
    80017f7c:	00f93023          	sd	a5,0(s2)
    80017f80:	77ae                	ld	a5,232(sp)
quickjs-nuttx/quickjs.c:9183
                        prs->flags &= ~(JS_PROP_TMASK | JS_PROP_WRITABLE);
    80017f82:	76a6                	ld	a3,104(sp)
quickjs-nuttx/quickjs.c:9182
                        pr->u.value = val1;
    80017f84:	00f93423          	sd	a5,8(s2)
quickjs-nuttx/quickjs.c:9183
                        prs->flags &= ~(JS_PROP_TMASK | JS_PROP_WRITABLE);
    80017f88:	429c                	lw	a5,0(a3)
    80017f8a:	8f7d                	and	a4,a4,a5
    80017f8c:	179a                	slli	a5,a5,0x26
    80017f8e:	9399                	srli	a5,a5,0x26
    80017f90:	8fd9                	or	a5,a5,a4
    80017f92:	c29c                	sw	a5,0(a3)
    80017f94:	bd69                	j	80017e2e <JS_DefineProperty+0x2e0>
quickjs-nuttx/quickjs.c:9145
                } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    80017f96:	02000793          	li	a5,32
    80017f9a:	f4fd09e3          	beq	s10,a5,80017eec <JS_DefineProperty+0x39e>
quickjs-nuttx/quickjs.c:9148
                    if ((prs->flags & (JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)) == 0 &&
    80017f9e:	003bfb93          	andi	s7,s7,3
    80017fa2:	f40b95e3          	bnez	s7,80017eec <JS_DefineProperty+0x39e>
quickjs-nuttx/quickjs.c:9053 (discriminator 1)
        if ((prs->flags & JS_PROP_LENGTH) && (flags & JS_PROP_HAS_VALUE)) {
    80017fa6:	00d4d793          	srli	a5,s1,0xd
quickjs-nuttx/quickjs.c:9148 (discriminator 1)
                    if ((prs->flags & (JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)) == 0 &&
    80017faa:	8b85                	andi	a5,a5,1
    80017fac:	d3a1                	beqz	a5,80017eec <JS_DefineProperty+0x39e>
quickjs-nuttx/quickjs.c:9150
                        if (!js_same_value(ctx, val, pr->u.value)) {
    80017fae:	00093683          	ld	a3,0(s2)
    80017fb2:	00893703          	ld	a4,8(s2)
    80017fb6:	6586                	ld	a1,64(sp)
    80017fb8:	6626                	ld	a2,72(sp)
    80017fba:	8522                	mv	a0,s0
    80017fbc:	9b7f30ef          	jal	ra,8000b972 <js_same_value>
    80017fc0:	d60501e3          	beqz	a0,80017d22 <JS_DefineProperty+0x1d4>
quickjs-nuttx/quickjs.c:9252
                    return TRUE;
    80017fc4:	4905                	li	s2,1
    80017fc6:	b6d1                	j	80017b8a <JS_DefineProperty+0x3c>
quickjs-nuttx/quickjs.c:9167
                            set_value(ctx, pr->u.var_ref->pvalue,
    80017fc8:	6506                	ld	a0,64(sp)
    80017fca:	65a6                	ld	a1,72(sp)
    80017fcc:	c4ef20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80017fd0:	862a                	mv	a2,a0
    80017fd2:	86ae                	mv	a3,a1
    80017fd4:	e12a                	sd	a0,128(sp)
    80017fd6:	e52e                	sd	a1,136(sp)
    80017fd8:	8522                	mv	a0,s0
    80017fda:	85d6                	mv	a1,s5
    80017fdc:	c63f30ef          	jal	ra,8000bc3e <set_value>
    80017fe0:	b7b9                	j	80017f2e <JS_DefineProperty+0x3e0>
quickjs-nuttx/quickjs.c:9185
                } else if (prs->flags & JS_PROP_LENGTH) {
    80017fe2:	8ba1                	andi	a5,a5,8
    80017fe4:	cba9                	beqz	a5,80018036 <JS_DefineProperty+0x4e8>
quickjs-nuttx/quickjs.c:9192
                        res = TRUE;
    80017fe6:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:9186
                    if (flags & JS_PROP_HAS_VALUE) {
    80017fe8:	cf19                	beqz	a4,80018006 <JS_DefineProperty+0x4b8>
quickjs-nuttx/quickjs.c:9189
                        res = set_array_length(ctx, p, JS_DupValue(ctx, val),
    80017fea:	6506                	ld	a0,64(sp)
    80017fec:	65a6                	ld	a1,72(sp)
    80017fee:	c2cf20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80017ff2:	862a                	mv	a2,a0
    80017ff4:	86ae                	mv	a3,a1
    80017ff6:	e92a                	sd	a0,144(sp)
    80017ff8:	ed2e                	sd	a1,152(sp)
    80017ffa:	8726                	mv	a4,s1
    80017ffc:	85d2                	mv	a1,s4
    80017ffe:	8522                	mv	a0,s0
