    80019000:	feeff0ef          	jal	ra,800187ee <JS_GetOpaque2>
    80019004:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:12704
    if (!opset1)
    80019006:	c121                	beqz	a0,80019046 <js_call_unary_op_fallback+0xb2>
quickjs-nuttx/quickjs.c:12706
    if (opset1->is_primitive) {
    80019008:	415c                	lw	a5,4(a0)
    8001900a:	c799                	beqz	a5,80019018 <js_call_unary_op_fallback+0x84>
quickjs-nuttx/quickjs.c:12707
        JS_FreeValue(ctx, opset1_obj);
    8001900c:	65c2                	ld	a1,16(sp)
    8001900e:	6662                	ld	a2,24(sp)
    80019010:	8522                	mv	a0,s0
    80019012:	f8cf20ef          	jal	ra,8000b79e <JS_FreeValue>
    80019016:	bf61                	j	80018fae <js_call_unary_op_fallback+0x1a>
quickjs-nuttx/quickjs.c:12711
    ovop = get_ovop_from_opcode(op);
    80019018:	8556                	mv	a0,s5
    8001901a:	aafef0ef          	jal	ra,80008ac8 <get_ovop_from_opcode>
quickjs-nuttx/quickjs.c:12713
    p = opset1->self_ops[ovop];
    8001901e:	1502                	slli	a0,a0,0x20
    80019020:	9101                	srli	a0,a0,0x20
    80019022:	00351793          	slli	a5,a0,0x3
    80019026:	94be                	add	s1,s1,a5
    80019028:	648c                	ld	a1,8(s1)
quickjs-nuttx/quickjs.c:12714
    if (!p) {
    8001902a:	e995                	bnez	a1,8001905e <js_call_unary_op_fallback+0xca>
quickjs-nuttx/quickjs.c:12716
                          js_overloadable_operator_names[ovop]);
    8001902c:	050a                	slli	a0,a0,0x2
quickjs-nuttx/quickjs.c:12715
        JS_ThrowTypeError(ctx, "no overloaded operator %s",
    8001902e:	0005a617          	auipc	a2,0x5a
    80019032:	0fa60613          	addi	a2,a2,250 # 80073128 <js_overloadable_operator_names>
    80019036:	962a                	add	a2,a2,a0
    80019038:	00051597          	auipc	a1,0x51
    8001903c:	39058593          	addi	a1,a1,912 # 8006a3c8 <qjsc_repl+0x4e18>
    80019040:	8522                	mv	a0,s0
    80019042:	e2aff0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:12727
    JS_FreeValue(ctx, opset1_obj);
    80019046:	65c2                	ld	a1,16(sp)
    80019048:	6662                	ld	a2,24(sp)
    8001904a:	8522                	mv	a0,s0
    8001904c:	f52f20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12728
    *pret = JS_UNDEFINED;
    80019050:	478d                	li	a5,3
    80019052:	00093023          	sd	zero,0(s2)
    80019056:	00f93423          	sd	a5,8(s2)
quickjs-nuttx/quickjs.c:12729
    return -1;
    8001905a:	557d                	li	a0,-1
    8001905c:	bf91                	j	80018fb0 <js_call_unary_op_fallback+0x1c>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8001905e:	419c                	lw	a5,0(a1)
js_call_unary_op_fallback():
quickjs-nuttx/quickjs.c:12720
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 1, &op1);
    80019060:	880a                	mv	a6,sp
    80019062:	4681                	li	a3,0
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80019064:	2785                	addiw	a5,a5,1
    80019066:	c19c                	sw	a5,0(a1)
js_call_unary_op_fallback():
quickjs-nuttx/quickjs.c:12720
    80019068:	470d                	li	a4,3
    8001906a:	4785                	li	a5,1
    8001906c:	567d                	li	a2,-1
    8001906e:	8522                	mv	a0,s0
    80019070:	e082                	sd	zero,64(sp)
    80019072:	e4d2                	sd	s4,72(sp)
    80019074:	a01fd0ef          	jal	ra,80016a74 <JS_CallFree>
    80019078:	fc2e                	sd	a1,56(sp)
    8001907a:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:12721
    if (JS_IsException(ret))
    8001907c:	2581                	sext.w	a1,a1
    8001907e:	fd3584e3          	beq	a1,s3,80019046 <js_call_unary_op_fallback+0xb2>
quickjs-nuttx/quickjs.c:12723
    JS_FreeValue(ctx, opset1_obj);
    80019082:	65c2                	ld	a1,16(sp)
    80019084:	6662                	ld	a2,24(sp)
    80019086:	8522                	mv	a0,s0
    80019088:	f16f20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12724
    *pret = ret;
    8001908c:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:12725
    return 1;
    8001908e:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:12724
    *pret = ret;
    80019090:	00f93023          	sd	a5,0(s2)
    80019094:	77e2                	ld	a5,56(sp)
    80019096:	00f93423          	sd	a5,8(s2)
quickjs-nuttx/quickjs.c:12725
    return 1;
    8001909a:	bf19                	j	80018fb0 <js_call_unary_op_fallback+0x1c>

000000008001909c <JS_ThrowUnsupportedOperation>:
JS_ThrowUnsupportedOperation():
quickjs-nuttx/quickjs.c:1538
{
    8001909c:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:1539
    return JS_ThrowTypeError(ctx, "unsupported operation");
    8001909e:	00051597          	auipc	a1,0x51
    800190a2:	34a58593          	addi	a1,a1,842 # 8006a3e8 <qjsc_repl+0x4e38>
quickjs-nuttx/quickjs.c:1540
}
    800190a6:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:1539
    return JS_ThrowTypeError(ctx, "unsupported operation");
    800190a8:	dc4ff06f          	j	8001866c <JS_ThrowTypeError>

00000000800190ac <invalid_mul_pow10>:
invalid_mul_pow10():
quickjs-nuttx/quickjs.c:1577
{
    800190ac:	1141                	addi	sp,sp,-16
    800190ae:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:1578
    JS_ThrowUnsupportedOperation(ctx);
    800190b0:	fedff0ef          	jal	ra,8001909c <JS_ThrowUnsupportedOperation>
quickjs-nuttx/quickjs.c:1580
}
    800190b4:	60a2                	ld	ra,8(sp)
    800190b6:	557d                	li	a0,-1
    800190b8:	0141                	addi	sp,sp,16
    800190ba:	8082                	ret

00000000800190bc <invalid_mul_pow10_to_float64>:
invalid_mul_pow10_to_float64():
quickjs-nuttx/quickjs.c:1572
{
    800190bc:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:1574
}
    800190be:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:1573
    return JS_ThrowUnsupportedOperation(ctx);
    800190c0:	fddff06f          	j	8001909c <JS_ThrowUnsupportedOperation>

00000000800190c4 <invalid_binary_arith>:
invalid_binary_arith():
quickjs-nuttx/quickjs.c:1563
{
    800190c4:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:1564
    JS_FreeValue(ctx, op1);
    800190c6:	85b6                	mv	a1,a3
    800190c8:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:1563
{
    800190ca:	f406                	sd	ra,40(sp)
    800190cc:	f022                	sd	s0,32(sp)
    800190ce:	e03e                	sd	a5,0(sp)
    800190d0:	842a                	mv	s0,a0
    800190d2:	e442                	sd	a6,8(sp)
quickjs-nuttx/quickjs.c:1564
    JS_FreeValue(ctx, op1);
    800190d4:	ecaf20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:1565
    JS_FreeValue(ctx, op2);
    800190d8:	6582                	ld	a1,0(sp)
    800190da:	6622                	ld	a2,8(sp)
    800190dc:	8522                	mv	a0,s0
    800190de:	ec0f20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:1566
    JS_ThrowUnsupportedOperation(ctx);
    800190e2:	8522                	mv	a0,s0
    800190e4:	fb9ff0ef          	jal	ra,8001909c <JS_ThrowUnsupportedOperation>
quickjs-nuttx/quickjs.c:1568
}
    800190e8:	70a2                	ld	ra,40(sp)
    800190ea:	7402                	ld	s0,32(sp)
    800190ec:	557d                	li	a0,-1
    800190ee:	6145                	addi	sp,sp,48
    800190f0:	8082                	ret

00000000800190f2 <invalid_unary_arith>:
invalid_unary_arith():
quickjs-nuttx/quickjs.c:1555
{
    800190f2:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:1556
    JS_FreeValue(ctx, op1);
    800190f4:	85b6                	mv	a1,a3
    800190f6:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:1555
{
    800190f8:	ec06                	sd	ra,24(sp)
    800190fa:	e822                	sd	s0,16(sp)
    800190fc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1556
    JS_FreeValue(ctx, op1);
    800190fe:	ea0f20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:1557
    JS_ThrowUnsupportedOperation(ctx);
    80019102:	8522                	mv	a0,s0
    80019104:	f99ff0ef          	jal	ra,8001909c <JS_ThrowUnsupportedOperation>
quickjs-nuttx/quickjs.c:1559
}
    80019108:	60e2                	ld	ra,24(sp)
    8001910a:	6442                	ld	s0,16(sp)
    8001910c:	557d                	li	a0,-1
    8001910e:	6105                	addi	sp,sp,32
    80019110:	8082                	ret

0000000080019112 <invalid_to_string>:
invalid_to_string():
quickjs-nuttx/quickjs.c:1543
{
    80019112:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:1545
}
    80019114:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:1544
    return JS_ThrowUnsupportedOperation(ctx);
    80019116:	f87ff06f          	j	8001909c <JS_ThrowUnsupportedOperation>

000000008001911a <JS_SetThisTimeValue>:
JS_SetThisTimeValue():
quickjs-nuttx/quickjs.c:49319
{
    8001911a:	7139                	addi	sp,sp,-64
    8001911c:	e432                	sd	a2,8(sp)
    8001911e:	fc06                	sd	ra,56(sp)
    80019120:	f822                	sd	s0,48(sp)
    80019122:	f426                	sd	s1,40(sp)
    80019124:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:49320
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    80019126:	2601                	sext.w	a2,a2
    80019128:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:49319
{
    8001912a:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:49320
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    8001912c:	04e61c63          	bne	a2,a4,80019184 <JS_SetThisTimeValue+0x6a>
quickjs-nuttx/quickjs.c:49322
        if (p->class_id == JS_CLASS_DATE) {
    80019130:	0065d683          	lhu	a3,6(a1)
    80019134:	4729                	li	a4,10
quickjs-nuttx/quickjs.c:49321
        JSObject *p = JS_VALUE_GET_OBJ(this_val);
    80019136:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:49322
        if (p->class_id == JS_CLASS_DATE) {
    80019138:	04e69663          	bne	a3,a4,80019184 <JS_SetThisTimeValue+0x6a>
quickjs-nuttx/quickjs.c:49323
            JS_FreeValue(ctx, p->u.object_data);
    8001913c:	798c                	ld	a1,48(a1)
    8001913e:	7c10                	ld	a2,56(s0)
    80019140:	e20504d3          	fmv.x.d	s1,fa0
    80019144:	e5af20ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80019148:	f20487d3          	fmv.d.x	fa5,s1
    8001914c:	c20796d3          	fcvt.w.d	a3,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80019150:	d20687d3          	fcvt.d.w	fa5,a3
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80019154:	0006879b          	sext.w	a5,a3
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80019158:	e20786d3          	fmv.x.d	a3,fa5
    8001915c:	00d49f63          	bne	s1,a3,8001917a <JS_SetThisTimeValue+0x60>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    80019160:	ca02                	sw	zero,20(sp)
    80019162:	4581                	li	a1,0
quickjs-nuttx/quickjs.h:566
    return v;
    80019164:	c83e                	sw	a5,16(sp)
JS_SetThisTimeValue():
quickjs-nuttx/quickjs.c:49324
            p->u.object_data = JS_NewFloat64(ctx, v);
    80019166:	27c2                	fld	fa5,16(sp)
    80019168:	fc0c                	sd	a1,56(s0)
quickjs-nuttx/quickjs.c:49325
            return JS_DupValue(ctx, p->u.object_data);
    8001916a:	6542                	ld	a0,16(sp)
quickjs-nuttx/quickjs.c:49324
            p->u.object_data = JS_NewFloat64(ctx, v);
    8001916c:	b81c                	fsd	fa5,48(s0)
quickjs-nuttx/quickjs.c:49329
}
    8001916e:	7442                	ld	s0,48(sp)
    80019170:	70e2                	ld	ra,56(sp)
    80019172:	74a2                	ld	s1,40(sp)
    80019174:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:49325
            return JS_DupValue(ctx, p->u.object_data);
    80019176:	aa4f106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.h:230
    return v;
    8001917a:	e826                	sd	s1,16(sp)
    8001917c:	0004879b          	sext.w	a5,s1
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80019180:	459d                	li	a1,7
    80019182:	b7cd                	j	80019164 <JS_SetThisTimeValue+0x4a>
JS_SetThisTimeValue():
quickjs-nuttx/quickjs.c:49329
}
    80019184:	7442                	ld	s0,48(sp)
    80019186:	70e2                	ld	ra,56(sp)
    80019188:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:49328
    return JS_ThrowTypeError(ctx, "not a Date object");
    8001918a:	00051597          	auipc	a1,0x51
    8001918e:	27658593          	addi	a1,a1,630 # 8006a400 <qjsc_repl+0x4e50>
    80019192:	853e                	mv	a0,a5
quickjs-nuttx/quickjs.c:49329
}
    80019194:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:49328
    return JS_ThrowTypeError(ctx, "not a Date object");
    80019196:	cd6ff06f          	j	8001866c <JS_ThrowTypeError>

000000008001919a <js_thisBigIntValue>:
js_thisBigIntValue():
quickjs-nuttx/quickjs.c:50623
{
    8001919a:	1101                	addi	sp,sp,-32
    8001919c:	e02e                	sd	a1,0(sp)
    8001919e:	e432                	sd	a2,8(sp)
JS_IsBigInt():
quickjs-nuttx/quickjs.h:577
    int tag = JS_VALUE_GET_TAG(v);
    800191a0:	0006079b          	sext.w	a5,a2
js_thisBigIntValue():
quickjs-nuttx/quickjs.c:50624
    if (JS_IsBigInt(ctx, this_val))
    800191a4:	5759                	li	a4,-10
    800191a6:	00e79763          	bne	a5,a4,800191b4 <js_thisBigIntValue+0x1a>
quickjs-nuttx/quickjs.c:50625
        return JS_DupValue(ctx, this_val);
    800191aa:	852e                	mv	a0,a1
    800191ac:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:50635
}
    800191ae:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50631
                return JS_DupValue(ctx, p->u.object_data);
    800191b0:	a6af106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:50627
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    800191b4:	56fd                	li	a3,-1
    800191b6:	02d79063          	bne	a5,a3,800191d6 <js_thisBigIntValue+0x3c>
quickjs-nuttx/quickjs.c:50629
        if (p->class_id == JS_CLASS_BIG_INT) {
    800191ba:	0065d603          	lhu	a2,6(a1)
    800191be:	02100693          	li	a3,33
    800191c2:	87ae                	mv	a5,a1
    800191c4:	00d61963          	bne	a2,a3,800191d6 <js_thisBigIntValue+0x3c>
JS_IsBigInt():
quickjs-nuttx/quickjs.h:577
    800191c8:	7d8c                	ld	a1,56(a1)
js_thisBigIntValue():
quickjs-nuttx/quickjs.c:50630
            if (JS_IsBigInt(ctx, p->u.object_data))
    800191ca:	0005869b          	sext.w	a3,a1
    800191ce:	00e69463          	bne	a3,a4,800191d6 <js_thisBigIntValue+0x3c>
quickjs-nuttx/quickjs.c:50631
                return JS_DupValue(ctx, p->u.object_data);
    800191d2:	7b88                	ld	a0,48(a5)
    800191d4:	bfe9                	j	800191ae <js_thisBigIntValue+0x14>
quickjs-nuttx/quickjs.c:50634
    return JS_ThrowTypeError(ctx, "not a bigint");
    800191d6:	00051597          	auipc	a1,0x51
    800191da:	24258593          	addi	a1,a1,578 # 8006a418 <qjsc_repl+0x4e68>
quickjs-nuttx/quickjs.c:50635
}
    800191de:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50634
    return JS_ThrowTypeError(ctx, "not a bigint");
    800191e0:	c8cff06f          	j	8001866c <JS_ThrowTypeError>

00000000800191e4 <js_bigint_valueOf>:
js_bigint_valueOf():
quickjs-nuttx/quickjs.c:50664
{
    800191e4:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:50666
}
    800191e6:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50665
    return js_thisBigIntValue(ctx, this_val);
    800191e8:	fb3ff06f          	j	8001919a <js_thisBigIntValue>

00000000800191ec <js_thisBigFloatValue>:
js_thisBigFloatValue():
quickjs-nuttx/quickjs.c:50891
{
    800191ec:	1101                	addi	sp,sp,-32
    800191ee:	e02e                	sd	a1,0(sp)
    800191f0:	e432                	sd	a2,8(sp)
JS_IsBigFloat():
quickjs-nuttx/quickjs.h:583
    int tag = JS_VALUE_GET_TAG(v);
    800191f2:	0006079b          	sext.w	a5,a2
js_thisBigFloatValue():
quickjs-nuttx/quickjs.c:50892
    if (JS_IsBigFloat(this_val))
    800191f6:	575d                	li	a4,-9
    800191f8:	00e79763          	bne	a5,a4,80019206 <js_thisBigFloatValue+0x1a>
quickjs-nuttx/quickjs.c:50893
        return JS_DupValue(ctx, this_val);
    800191fc:	852e                	mv	a0,a1
    800191fe:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:50903
}
    80019200:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50899
                return JS_DupValue(ctx, p->u.object_data);
    80019202:	a18f106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:50895
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    80019206:	56fd                	li	a3,-1
    80019208:	02d79063          	bne	a5,a3,80019228 <js_thisBigFloatValue+0x3c>
quickjs-nuttx/quickjs.c:50897
        if (p->class_id == JS_CLASS_BIG_FLOAT) {
    8001920c:	0065d603          	lhu	a2,6(a1)
    80019210:	02200693          	li	a3,34
    80019214:	87ae                	mv	a5,a1
    80019216:	00d61963          	bne	a2,a3,80019228 <js_thisBigFloatValue+0x3c>
JS_IsBigFloat():
quickjs-nuttx/quickjs.h:583
    8001921a:	7d8c                	ld	a1,56(a1)
js_thisBigFloatValue():
quickjs-nuttx/quickjs.c:50898
            if (JS_IsBigFloat(p->u.object_data))
    8001921c:	0005869b          	sext.w	a3,a1
    80019220:	00e69463          	bne	a3,a4,80019228 <js_thisBigFloatValue+0x3c>
quickjs-nuttx/quickjs.c:50899
                return JS_DupValue(ctx, p->u.object_data);
    80019224:	7b88                	ld	a0,48(a5)
    80019226:	bfe9                	j	80019200 <js_thisBigFloatValue+0x14>
quickjs-nuttx/quickjs.c:50902
    return JS_ThrowTypeError(ctx, "not a bigfloat");
    80019228:	00051597          	auipc	a1,0x51
    8001922c:	20058593          	addi	a1,a1,512 # 8006a428 <qjsc_repl+0x4e78>
quickjs-nuttx/quickjs.c:50903
}
    80019230:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50902
    return JS_ThrowTypeError(ctx, "not a bigfloat");
    80019232:	c3aff06f          	j	8001866c <JS_ThrowTypeError>

0000000080019236 <js_bigfloat_valueOf>:
js_bigfloat_valueOf():
quickjs-nuttx/quickjs.c:50932
{
    80019236:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:50934
}
    80019238:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50933
    return js_thisBigFloatValue(ctx, this_val);
    8001923a:	fb3ff06f          	j	800191ec <js_thisBigFloatValue>

000000008001923e <js_thisBigDecimalValue>:
js_thisBigDecimalValue():
quickjs-nuttx/quickjs.c:51926
{
    8001923e:	1101                	addi	sp,sp,-32
    80019240:	e02e                	sd	a1,0(sp)
    80019242:	e432                	sd	a2,8(sp)
JS_IsBigDecimal():
quickjs-nuttx/quickjs.h:589
    int tag = JS_VALUE_GET_TAG(v);
    80019244:	0006079b          	sext.w	a5,a2
js_thisBigDecimalValue():
quickjs-nuttx/quickjs.c:51927
    if (JS_IsBigDecimal(this_val))
    80019248:	5755                	li	a4,-11
    8001924a:	00e79763          	bne	a5,a4,80019258 <js_thisBigDecimalValue+0x1a>
quickjs-nuttx/quickjs.c:51928
        return JS_DupValue(ctx, this_val);
    8001924e:	852e                	mv	a0,a1
    80019250:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:51938
}
    80019252:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:51934
                return JS_DupValue(ctx, p->u.object_data);
    80019254:	9c6f106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:51930
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    80019258:	56fd                	li	a3,-1
    8001925a:	02d79063          	bne	a5,a3,8001927a <js_thisBigDecimalValue+0x3c>
quickjs-nuttx/quickjs.c:51932
        if (p->class_id == JS_CLASS_BIG_DECIMAL) {
    8001925e:	0065d603          	lhu	a2,6(a1)
    80019262:	02400693          	li	a3,36
    80019266:	87ae                	mv	a5,a1
    80019268:	00d61963          	bne	a2,a3,8001927a <js_thisBigDecimalValue+0x3c>
JS_IsBigDecimal():
quickjs-nuttx/quickjs.h:589
    8001926c:	7d8c                	ld	a1,56(a1)
js_thisBigDecimalValue():
quickjs-nuttx/quickjs.c:51933
            if (JS_IsBigDecimal(p->u.object_data))
    8001926e:	0005869b          	sext.w	a3,a1
    80019272:	00e69463          	bne	a3,a4,8001927a <js_thisBigDecimalValue+0x3c>
quickjs-nuttx/quickjs.c:51934
                return JS_DupValue(ctx, p->u.object_data);
    80019276:	7b88                	ld	a0,48(a5)
    80019278:	bfe9                	j	80019252 <js_thisBigDecimalValue+0x14>
quickjs-nuttx/quickjs.c:51937
    return JS_ThrowTypeError(ctx, "not a bigdecimal");
    8001927a:	00051597          	auipc	a1,0x51
    8001927e:	1be58593          	addi	a1,a1,446 # 8006a438 <qjsc_repl+0x4e88>
quickjs-nuttx/quickjs.c:51938
}
    80019282:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:51937
    return JS_ThrowTypeError(ctx, "not a bigdecimal");
    80019284:	be8ff06f          	j	8001866c <JS_ThrowTypeError>

0000000080019288 <js_bigdecimal_valueOf>:
js_bigdecimal_valueOf():
quickjs-nuttx/quickjs.c:51953
{
    80019288:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:51955
}
    8001928a:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:51954
    return js_thisBigDecimalValue(ctx, this_val);
    8001928c:	fb3ff06f          	j	8001923e <js_thisBigDecimalValue>

0000000080019290 <js_symbol_keyFor>:
js_symbol_keyFor():
quickjs-nuttx/quickjs.c:46757
    if (!JS_IsSymbol(argv[0]))
    80019290:	4714                	lw	a3,8(a4)
quickjs-nuttx/quickjs.c:46754
{
    80019292:	7179                	addi	sp,sp,-48
    80019294:	e02e                	sd	a1,0(sp)
    80019296:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:46757
    if (!JS_IsSymbol(argv[0]))
    80019298:	57e1                	li	a5,-8
    8001929a:	00f68963          	beq	a3,a5,800192ac <js_symbol_keyFor+0x1c>
quickjs-nuttx/quickjs.c:46758
        return JS_ThrowTypeError(ctx, "not a symbol");
    8001929e:	00051597          	auipc	a1,0x51
    800192a2:	b4a58593          	addi	a1,a1,-1206 # 80069de8 <qjsc_repl+0x4838>
quickjs-nuttx/quickjs.c:46763
}
    800192a6:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:46758
        return JS_ThrowTypeError(ctx, "not a symbol");
    800192a8:	bc4ff06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:46759
    p = JS_VALUE_GET_PTR(argv[0]);
    800192ac:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:46760
    if (p->atom_type != JS_ATOM_TYPE_GLOBAL_SYMBOL)
    800192ae:	c00006b7          	lui	a3,0xc0000
    800192b2:	471c                	lw	a5,8(a4)
    800192b4:	8ff5                	and	a5,a5,a3
    800192b6:	2781                	sext.w	a5,a5
    800192b8:	800006b7          	lui	a3,0x80000
    800192bc:	00d78963          	beq	a5,a3,800192ce <js_symbol_keyFor+0x3e>
quickjs-nuttx/quickjs.c:46761
        return JS_UNDEFINED;
    800192c0:	e802                	sd	zero,16(sp)
    800192c2:	478d                	li	a5,3
    800192c4:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:46763
}
    800192c6:	6542                	ld	a0,16(sp)
    800192c8:	65e2                	ld	a1,24(sp)
    800192ca:	6145                	addi	sp,sp,48
    800192cc:	8082                	ret
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    800192ce:	431c                	lw	a5,0(a4)
    800192d0:	e83a                	sd	a4,16(sp)
    800192d2:	2785                	addiw	a5,a5,1
    800192d4:	c31c                	sw	a5,0(a4)
js_symbol_keyFor():
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    800192d6:	57e5                	li	a5,-7
    800192d8:	b7f5                	j	800192c4 <js_symbol_keyFor+0x34>

00000000800192da <js_thisSymbolValue>:
js_thisSymbolValue():
quickjs-nuttx/quickjs.c:46681
{
    800192da:	1101                	addi	sp,sp,-32
    800192dc:	e02e                	sd	a1,0(sp)
    800192de:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:46682
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_SYMBOL)
    800192e0:	0006079b          	sext.w	a5,a2
    800192e4:	5761                	li	a4,-8
    800192e6:	00e79763          	bne	a5,a4,800192f4 <js_thisSymbolValue+0x1a>
quickjs-nuttx/quickjs.c:46683
        return JS_DupValue(ctx, this_val);
    800192ea:	852e                	mv	a0,a1
    800192ec:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:46693
}
    800192ee:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:46689
                return JS_DupValue(ctx, p->u.object_data);
    800192f0:	92af106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:46685
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    800192f4:	56fd                	li	a3,-1
    800192f6:	00d79f63          	bne	a5,a3,80019314 <js_thisSymbolValue+0x3a>
quickjs-nuttx/quickjs.c:46687
        if (p->class_id == JS_CLASS_SYMBOL) {
    800192fa:	0065d603          	lhu	a2,6(a1)
    800192fe:	469d                	li	a3,7
quickjs-nuttx/quickjs.c:46686
        JSObject *p = JS_VALUE_GET_OBJ(this_val);
    80019300:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:46687
        if (p->class_id == JS_CLASS_SYMBOL) {
    80019302:	00d61963          	bne	a2,a3,80019314 <js_thisSymbolValue+0x3a>
quickjs-nuttx/quickjs.c:46688
            if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_SYMBOL)
    80019306:	7d8c                	ld	a1,56(a1)
    80019308:	0005869b          	sext.w	a3,a1
    8001930c:	00e69463          	bne	a3,a4,80019314 <js_thisSymbolValue+0x3a>
quickjs-nuttx/quickjs.c:46689
                return JS_DupValue(ctx, p->u.object_data);
    80019310:	7b88                	ld	a0,48(a5)
    80019312:	bff1                	j	800192ee <js_thisSymbolValue+0x14>
quickjs-nuttx/quickjs.c:46692
    return JS_ThrowTypeError(ctx, "not a symbol");
    80019314:	00051597          	auipc	a1,0x51
    80019318:	ad458593          	addi	a1,a1,-1324 # 80069de8 <qjsc_repl+0x4838>
quickjs-nuttx/quickjs.c:46693
}
    8001931c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:46692
    return JS_ThrowTypeError(ctx, "not a symbol");
    8001931e:	b4eff06f          	j	8001866c <JS_ThrowTypeError>

0000000080019322 <js_symbol_valueOf>:
js_symbol_valueOf():
quickjs-nuttx/quickjs.c:46710
{
    80019322:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:46712
}
    80019324:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:46711
    return js_thisSymbolValue(ctx, this_val);
    80019326:	fb5ff06f          	j	800192da <js_thisSymbolValue>

000000008001932a <js_string_toString>:
js_string_toString():
quickjs-nuttx/quickjs.c:42683
{
    8001932a:	7139                	addi	sp,sp,-64
    8001932c:	e02e                	sd	a1,0(sp)
    8001932e:	e432                	sd	a2,8(sp)
    80019330:	f02e                	sd	a1,32(sp)
    80019332:	f432                	sd	a2,40(sp)
js_thisStringValue():
quickjs-nuttx/quickjs.c:41252
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_STRING)
    80019334:	0006069b          	sext.w	a3,a2
    80019338:	5765                	li	a4,-7
    8001933a:	87ae                	mv	a5,a1
    8001933c:	00e69763          	bne	a3,a4,8001934a <js_string_toString+0x20>
    80019340:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:41253
        return JS_DupValue(ctx, this_val);
    80019342:	853e                	mv	a0,a5
js_string_toString():
quickjs-nuttx/quickjs.c:42685
}
    80019344:	6121                	addi	sp,sp,64
js_thisStringValue():
quickjs-nuttx/quickjs.c:41259
                return JS_DupValue(ctx, p->u.object_data);
    80019346:	8d4f106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:41255
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    8001934a:	567d                	li	a2,-1
    8001934c:	00c69e63          	bne	a3,a2,80019368 <js_string_toString+0x3e>
quickjs-nuttx/quickjs.c:41257
        if (p->class_id == JS_CLASS_STRING) {
    80019350:	0065d603          	lhu	a2,6(a1)
    80019354:	4695                	li	a3,5
    80019356:	00d61963          	bne	a2,a3,80019368 <js_string_toString+0x3e>
quickjs-nuttx/quickjs.c:41258
            if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_STRING)
    8001935a:	7d8c                	ld	a1,56(a1)
    8001935c:	0005869b          	sext.w	a3,a1
    80019360:	00e69463          	bne	a3,a4,80019368 <js_string_toString+0x3e>
quickjs-nuttx/quickjs.c:41259
                return JS_DupValue(ctx, p->u.object_data);
    80019364:	7b88                	ld	a0,48(a5)
    80019366:	bff9                	j	80019344 <js_string_toString+0x1a>
quickjs-nuttx/quickjs.c:41262
    return JS_ThrowTypeError(ctx, "not a string");
    80019368:	00051597          	auipc	a1,0x51
    8001936c:	0e858593          	addi	a1,a1,232 # 8006a450 <qjsc_repl+0x4ea0>
js_string_toString():
quickjs-nuttx/quickjs.c:42685
}
    80019370:	6121                	addi	sp,sp,64
js_thisStringValue():
quickjs-nuttx/quickjs.c:41262
    return JS_ThrowTypeError(ctx, "not a string");
    80019372:	afaff06f          	j	8001866c <JS_ThrowTypeError>

0000000080019376 <js_thisBooleanValue>:
js_thisBooleanValue():
quickjs-nuttx/quickjs.c:41091
{
    80019376:	1101                	addi	sp,sp,-32
    80019378:	e02e                	sd	a1,0(sp)
    8001937a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:41092
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_BOOL)
    8001937c:	0006079b          	sext.w	a5,a2
    80019380:	4705                	li	a4,1
    80019382:	00e79763          	bne	a5,a4,80019390 <js_thisBooleanValue+0x1a>
quickjs-nuttx/quickjs.c:41093
        return JS_DupValue(ctx, this_val);
    80019386:	852e                	mv	a0,a1
    80019388:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:41103
}
    8001938a:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:41093
        return JS_DupValue(ctx, this_val);
    8001938c:	88ef106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:41095
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    80019390:	56fd                	li	a3,-1
    80019392:	00d79d63          	bne	a5,a3,800193ac <js_thisBooleanValue+0x36>
quickjs-nuttx/quickjs.c:41097
        if (p->class_id == JS_CLASS_BOOLEAN) {
    80019396:	0065d603          	lhu	a2,6(a1)
    8001939a:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:41096
        JSObject *p = JS_VALUE_GET_OBJ(this_val);
    8001939c:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:41097
        if (p->class_id == JS_CLASS_BOOLEAN) {
    8001939e:	00d61763          	bne	a2,a3,800193ac <js_thisBooleanValue+0x36>
quickjs-nuttx/quickjs.c:41098
            if (JS_VALUE_GET_TAG(p->u.object_data) == JS_TAG_BOOL)
    800193a2:	7d8c                	ld	a1,56(a1)
    800193a4:	0005869b          	sext.w	a3,a1
    800193a8:	00e68963          	beq	a3,a4,800193ba <js_thisBooleanValue+0x44>
quickjs-nuttx/quickjs.c:41102
    return JS_ThrowTypeError(ctx, "not a boolean");
    800193ac:	00051597          	auipc	a1,0x51
    800193b0:	0b458593          	addi	a1,a1,180 # 8006a460 <qjsc_repl+0x4eb0>
quickjs-nuttx/quickjs.c:41103
}
    800193b4:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:41102
    return JS_ThrowTypeError(ctx, "not a boolean");
    800193b6:	ab6ff06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:41099
                return p->u.object_data;
    800193ba:	7b88                	ld	a0,48(a5)
quickjs-nuttx/quickjs.c:41103
}
    800193bc:	6105                	addi	sp,sp,32
    800193be:	8082                	ret

00000000800193c0 <js_boolean_valueOf>:
js_boolean_valueOf():
quickjs-nuttx/quickjs.c:41117
{
    800193c0:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:41119
}
    800193c2:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:41118
    return js_thisBooleanValue(ctx, this_val);
    800193c4:	fb3ff06f          	j	80019376 <js_thisBooleanValue>

00000000800193c8 <js_thisNumberValue>:
js_thisNumberValue():
quickjs-nuttx/quickjs.c:40889
{
    800193c8:	1101                	addi	sp,sp,-32
    800193ca:	e432                	sd	a2,8(sp)
    800193cc:	e02e                	sd	a1,0(sp)
JS_IsNumber():
quickjs-nuttx/quickjs.h:571
    int tag = JS_VALUE_GET_TAG(v);
    800193ce:	2601                	sext.w	a2,a2
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    800193d0:	ce11                	beqz	a2,800193ec <js_thisNumberValue+0x24>
    800193d2:	479d                	li	a5,7
    800193d4:	00f60c63          	beq	a2,a5,800193ec <js_thisNumberValue+0x24>
js_thisNumberValue():
quickjs-nuttx/quickjs.c:40893
    if (JS_VALUE_GET_TAG(this_val) == JS_TAG_OBJECT) {
    800193d8:	577d                	li	a4,-1
    800193da:	00e60e63          	beq	a2,a4,800193f6 <js_thisNumberValue+0x2e>
quickjs-nuttx/quickjs.c:40900
    return JS_ThrowTypeError(ctx, "not a number");
    800193de:	00051597          	auipc	a1,0x51
    800193e2:	09258593          	addi	a1,a1,146 # 8006a470 <qjsc_repl+0x4ec0>
quickjs-nuttx/quickjs.c:40901
}
    800193e6:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:40900
    return JS_ThrowTypeError(ctx, "not a number");
    800193e8:	a84ff06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:40891
        return JS_DupValue(ctx, this_val);
    800193ec:	6502                	ld	a0,0(sp)
    800193ee:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:40901
}
    800193f0:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:40897
                return JS_DupValue(ctx, p->u.object_data);
    800193f2:	828f106f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:40895
        if (p->class_id == JS_CLASS_NUMBER) {
    800193f6:	0065d683          	lhu	a3,6(a1)
    800193fa:	4711                	li	a4,4
    800193fc:	fee691e3          	bne	a3,a4,800193de <js_thisNumberValue+0x16>
JS_IsNumber():
quickjs-nuttx/quickjs.h:571
    int tag = JS_VALUE_GET_TAG(v);
    80019400:	5d98                	lw	a4,56(a1)
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    80019402:	c319                	beqz	a4,80019408 <js_thisNumberValue+0x40>
    80019404:	fcf71de3          	bne	a4,a5,800193de <js_thisNumberValue+0x16>
js_thisNumberValue():
quickjs-nuttx/quickjs.c:40897
                return JS_DupValue(ctx, p->u.object_data);
    80019408:	7988                	ld	a0,48(a1)
    8001940a:	7d8c                	ld	a1,56(a1)
    8001940c:	b7d5                	j	800193f0 <js_thisNumberValue+0x28>

000000008001940e <js_number_valueOf>:
js_number_valueOf():
quickjs-nuttx/quickjs.c:40905
{
    8001940e:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:40907
}
    80019410:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:40906
    return js_thisNumberValue(ctx, this_val);
    80019412:	fb7ff06f          	j	800193c8 <js_thisNumberValue>

0000000080019416 <get_typed_array>:
get_typed_array():
quickjs-nuttx/quickjs.c:52916
{
    80019416:	1101                	addi	sp,sp,-32
    80019418:	e432                	sd	a2,8(sp)
    8001941a:	ec06                	sd	ra,24(sp)
    8001941c:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:52918
    if (JS_VALUE_GET_TAG(this_val) != JS_TAG_OBJECT)
    8001941e:	2601                	sext.w	a2,a2
    80019420:	57fd                	li	a5,-1
    80019422:	02f61963          	bne	a2,a5,80019454 <get_typed_array+0x3e>
quickjs-nuttx/quickjs.c:52922
        if (p->class_id != JS_CLASS_DATAVIEW)
    80019426:	0065d783          	lhu	a5,6(a1)
quickjs-nuttx/quickjs.c:52921
    if (is_dataview) {
    8001942a:	ca91                	beqz	a3,8001943e <get_typed_array+0x28>
quickjs-nuttx/quickjs.c:52922
        if (p->class_id != JS_CLASS_DATAVIEW)
    8001942c:	02000713          	li	a4,32
    80019430:	02e78e63          	beq	a5,a4,8001946c <get_typed_array+0x56>
quickjs-nuttx/quickjs.c:52928
            JS_ThrowTypeError(ctx, "not a %s", is_dataview ? "DataView" : "TypedArray");
    80019434:	00051617          	auipc	a2,0x51
    80019438:	04c60613          	addi	a2,a2,76 # 8006a480 <qjsc_repl+0x4ed0>
    8001943c:	a00d                	j	8001945e <get_typed_array+0x48>
quickjs-nuttx/quickjs.c:52925
        if (!(p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    8001943e:	37ad                	addiw	a5,a5,-21
    80019440:	17c2                	slli	a5,a5,0x30
    80019442:	93c1                	srli	a5,a5,0x30
    80019444:	4729                	li	a4,10
    80019446:	02f77363          	bgeu	a4,a5,8001946c <get_typed_array+0x56>
quickjs-nuttx/quickjs.c:52928
            JS_ThrowTypeError(ctx, "not a %s", is_dataview ? "DataView" : "TypedArray");
    8001944a:	00052617          	auipc	a2,0x52
    8001944e:	81e60613          	addi	a2,a2,-2018 # 8006ac68 <qjsc_repl+0x56b8>
    80019452:	a031                	j	8001945e <get_typed_array+0x48>
    80019454:	00052617          	auipc	a2,0x52
    80019458:	81460613          	addi	a2,a2,-2028 # 8006ac68 <qjsc_repl+0x56b8>
    8001945c:	fee1                	bnez	a3,80019434 <get_typed_array+0x1e>
    8001945e:	00051597          	auipc	a1,0x51
    80019462:	03258593          	addi	a1,a1,50 # 8006a490 <qjsc_repl+0x4ee0>
    80019466:	a06ff0ef          	jal	ra,8001866c <JS_ThrowTypeError>
    8001946a:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:52933
}
    8001946c:	60e2                	ld	ra,24(sp)
    8001946e:	852e                	mv	a0,a1
    80019470:	6105                	addi	sp,sp,32
    80019472:	8082                	ret

0000000080019474 <js_typed_array_get_length_internal>:
js_typed_array_get_length_internal():
quickjs-nuttx/quickjs.c:53231
{
    80019474:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:53233
    p = get_typed_array(ctx, obj, 0);
    80019476:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:53231
{
    80019478:	e822                	sd	s0,16(sp)
    8001947a:	ec06                	sd	ra,24(sp)
    8001947c:	842a                	mv	s0,a0
    8001947e:	e02e                	sd	a1,0(sp)
    80019480:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:53233
    p = get_typed_array(ctx, obj, 0);
    80019482:	f95ff0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:53234
    if (!p)
    80019486:	c911                	beqz	a0,8001949a <js_typed_array_get_length_internal+0x26>
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80019488:	791c                	ld	a5,48(a0)
    8001948a:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    8001948c:	7b9c                	ld	a5,48(a5)
js_typed_array_get_length_internal():
quickjs-nuttx/quickjs.c:53236
    if (typed_array_is_detached(ctx, p)) {
    8001948e:	0047c783          	lbu	a5,4(a5) # 4000004 <asinh-0x7bfffffc>
    80019492:	c791                	beqz	a5,8001949e <js_typed_array_get_length_internal+0x2a>
quickjs-nuttx/quickjs.c:53237
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80019494:	8522                	mv	a0,s0
    80019496:	aefff0ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:53235
        return -1;
    8001949a:	557d                	li	a0,-1
    8001949c:	a011                	j	800194a0 <js_typed_array_get_length_internal+0x2c>
quickjs-nuttx/quickjs.c:53240
    return p->u.array.count;
    8001949e:	4128                	lw	a0,64(a0)
quickjs-nuttx/quickjs.c:53241
}
    800194a0:	60e2                	ld	ra,24(sp)
    800194a2:	6442                	ld	s0,16(sp)
    800194a4:	6105                	addi	sp,sp,32
    800194a6:	8082                	ret

00000000800194a8 <js_typed_array_reverse>:
js_typed_array_reverse():
quickjs-nuttx/quickjs.c:53926
{
    800194a8:	7179                	addi	sp,sp,-48
    800194aa:	f406                	sd	ra,40(sp)
    800194ac:	e02e                	sd	a1,0(sp)
    800194ae:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:53930
    len = js_typed_array_get_length_internal(ctx, this_val);
    800194b0:	fc5ff0ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
quickjs-nuttx/quickjs.c:53931
    if (len < 0)
    800194b4:	0a054d63          	bltz	a0,8001956e <js_typed_array_reverse+0xc6>
quickjs-nuttx/quickjs.c:53933
    if (len > 0) {
    800194b8:	cd31                	beqz	a0,80019514 <js_typed_array_reverse+0x6c>
quickjs-nuttx/quickjs.c:53934
        p = JS_VALUE_GET_OBJ(this_val);
    800194ba:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:53935
        switch (typed_array_size_log2(p->class_id)) {
    800194bc:	0067d703          	lhu	a4,6(a5)
    800194c0:	feb7069b          	addiw	a3,a4,-21
    800194c4:	0005c717          	auipc	a4,0x5c
    800194c8:	d1c70713          	addi	a4,a4,-740 # 800751e0 <typed_array_size_log2>
    800194cc:	9736                	add	a4,a4,a3
    800194ce:	00074703          	lbu	a4,0(a4)
    800194d2:	4689                	li	a3,2
    800194d4:	06d70163          	beq	a4,a3,80019536 <js_typed_array_reverse+0x8e>
    800194d8:	02e6e463          	bltu	a3,a4,80019500 <js_typed_array_reverse+0x58>
    800194dc:	c71d                	beqz	a4,8001950a <js_typed_array_reverse+0x62>
quickjs-nuttx/quickjs.c:53949
                uint16_t *p1 = p->u.array.u.uint16_ptr;
    800194de:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:53950
                uint16_t *p2 = p1 + len - 1;
    800194e0:	0506                	slli	a0,a0,0x1
    800194e2:	1579                	addi	a0,a0,-2
    800194e4:	953e                	add	a0,a0,a5
quickjs-nuttx/quickjs.c:53951
                while (p1 < p2) {
    800194e6:	02a7f763          	bgeu	a5,a0,80019514 <js_typed_array_reverse+0x6c>
quickjs-nuttx/quickjs.c:53953
                    *p1++ = *p2;
    800194ea:	00055683          	lhu	a3,0(a0)
quickjs-nuttx/quickjs.c:53952
                    uint16_t v = *p1;
    800194ee:	0007d703          	lhu	a4,0(a5)
quickjs-nuttx/quickjs.c:53954
                    *p2-- = v;
    800194f2:	1579                	addi	a0,a0,-2
quickjs-nuttx/quickjs.c:53953
                    *p1++ = *p2;
    800194f4:	0789                	addi	a5,a5,2
    800194f6:	fed79f23          	sh	a3,-2(a5)
quickjs-nuttx/quickjs.c:53954
                    *p2-- = v;
    800194fa:	00e51123          	sh	a4,2(a0)
    800194fe:	b7e5                	j	800194e6 <js_typed_array_reverse+0x3e>
quickjs-nuttx/quickjs.c:53935
        switch (typed_array_size_log2(p->class_id)) {
    80019500:	468d                	li	a3,3
    80019502:	04d70863          	beq	a4,a3,80019552 <js_typed_array_reverse+0xaa>
quickjs-nuttx/quickjs.c:53981
            abort();
    80019506:	67c490ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:53938
                uint8_t *p1 = p->u.array.u.uint8_ptr;
    8001950a:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:53939
                uint8_t *p2 = p1 + len - 1;
    8001950c:	157d                	addi	a0,a0,-1
    8001950e:	953e                	add	a0,a0,a5
quickjs-nuttx/quickjs.c:53940
                while (p1 < p2) {
    80019510:	00a7e863          	bltu	a5,a0,80019520 <js_typed_array_reverse+0x78>
quickjs-nuttx/quickjs.c:53984
    return JS_DupValue(ctx, this_val);
    80019514:	6502                	ld	a0,0(sp)
    80019516:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:53985
}
    80019518:	70a2                	ld	ra,40(sp)
    8001951a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:53984
    return JS_DupValue(ctx, this_val);
    8001951c:	efff006f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:53942
                    *p1++ = *p2;
    80019520:	00054683          	lbu	a3,0(a0)
quickjs-nuttx/quickjs.c:53941
                    uint8_t v = *p1;
    80019524:	0007c703          	lbu	a4,0(a5)
quickjs-nuttx/quickjs.c:53943
                    *p2-- = v;
    80019528:	157d                	addi	a0,a0,-1
quickjs-nuttx/quickjs.c:53942
                    *p1++ = *p2;
    8001952a:	0785                	addi	a5,a5,1
    8001952c:	fed78fa3          	sb	a3,-1(a5)
quickjs-nuttx/quickjs.c:53943
                    *p2-- = v;
    80019530:	00e500a3          	sb	a4,1(a0)
    80019534:	bff1                	j	80019510 <js_typed_array_reverse+0x68>
quickjs-nuttx/quickjs.c:53960
                uint32_t *p1 = p->u.array.u.uint32_ptr;
    80019536:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:53961
                uint32_t *p2 = p1 + len - 1;
    80019538:	050a                	slli	a0,a0,0x2
    8001953a:	1571                	addi	a0,a0,-4
    8001953c:	953e                	add	a0,a0,a5
quickjs-nuttx/quickjs.c:53962
                while (p1 < p2) {
    8001953e:	fca7fbe3          	bgeu	a5,a0,80019514 <js_typed_array_reverse+0x6c>
quickjs-nuttx/quickjs.c:53964
                    *p1++ = *p2;
    80019542:	4114                	lw	a3,0(a0)
quickjs-nuttx/quickjs.c:53963
                    uint32_t v = *p1;
    80019544:	4398                	lw	a4,0(a5)
quickjs-nuttx/quickjs.c:53965
                    *p2-- = v;
    80019546:	1571                	addi	a0,a0,-4
quickjs-nuttx/quickjs.c:53964
                    *p1++ = *p2;
    80019548:	0791                	addi	a5,a5,4
    8001954a:	fed7ae23          	sw	a3,-4(a5)
quickjs-nuttx/quickjs.c:53965
                    *p2-- = v;
    8001954e:	c158                	sw	a4,4(a0)
    80019550:	b7fd                	j	8001953e <js_typed_array_reverse+0x96>
quickjs-nuttx/quickjs.c:53971
                uint64_t *p1 = p->u.array.u.uint64_ptr;
    80019552:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:53972
                uint64_t *p2 = p1 + len - 1;
    80019554:	050e                	slli	a0,a0,0x3
    80019556:	1561                	addi	a0,a0,-8
    80019558:	953e                	add	a0,a0,a5
quickjs-nuttx/quickjs.c:53973
                while (p1 < p2) {
    8001955a:	faa7fde3          	bgeu	a5,a0,80019514 <js_typed_array_reverse+0x6c>
quickjs-nuttx/quickjs.c:53975
                    *p1++ = *p2;
    8001955e:	6114                	ld	a3,0(a0)
quickjs-nuttx/quickjs.c:53974
                    uint64_t v = *p1;
    80019560:	6398                	ld	a4,0(a5)
quickjs-nuttx/quickjs.c:53976
                    *p2-- = v;
    80019562:	1561                	addi	a0,a0,-8
quickjs-nuttx/quickjs.c:53975
                    *p1++ = *p2;
    80019564:	07a1                	addi	a5,a5,8
    80019566:	fed7bc23          	sd	a3,-8(a5)
quickjs-nuttx/quickjs.c:53976
                    *p2-- = v;
    8001956a:	e518                	sd	a4,8(a0)
    8001956c:	b7fd                	j	8001955a <js_typed_array_reverse+0xb2>
quickjs-nuttx/quickjs.c:53985 (discriminator 1)
}
    8001956e:	70a2                	ld	ra,40(sp)
    80019570:	4501                	li	a0,0
    80019572:	4599                	li	a1,6
    80019574:	6145                	addi	sp,sp,48
    80019576:	8082                	ret

0000000080019578 <js_typed_array_get_byteOffset>:
js_typed_array_get_byteOffset():
quickjs-nuttx/quickjs.c:53012
{
    80019578:	715d                	addi	sp,sp,-80
    8001957a:	e0a2                	sd	s0,64(sp)
    8001957c:	fc26                	sd	s1,56(sp)
    8001957e:	e486                	sd	ra,72(sp)
    80019580:	842a                	mv	s0,a0
    80019582:	e02e                	sd	a1,0(sp)
    80019584:	e432                	sd	a2,8(sp)
    80019586:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:53015
    p = get_typed_array(ctx, this_val, is_dataview);
    80019588:	e8fff0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:53016
    if (!p)
    8001958c:	e919                	bnez	a0,800195a2 <js_typed_array_get_byteOffset+0x2a>
quickjs-nuttx/quickjs.c:53017
        return JS_EXCEPTION;
    8001958e:	4799                	li	a5,6
    80019590:	e802                	sd	zero,16(sp)
    80019592:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:53027 (discriminator 1)
}
    80019594:	60a6                	ld	ra,72(sp)
    80019596:	6406                	ld	s0,64(sp)
    80019598:	6542                	ld	a0,16(sp)
    8001959a:	65e2                	ld	a1,24(sp)
    8001959c:	74e2                	ld	s1,56(sp)
    8001959e:	6161                	addi	sp,sp,80
    800195a0:	8082                	ret
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52938
    JSTypedArray *ta = p->u.typed_array;
    800195a2:	791c                	ld	a5,48(a0)
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    800195a4:	6f98                	ld	a4,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    800195a6:	7b18                	ld	a4,48(a4)
js_typed_array_get_byteOffset():
quickjs-nuttx/quickjs.c:53018
    if (typed_array_is_detached(ctx, p)) {
    800195a8:	00474703          	lbu	a4,4(a4)
    800195ac:	cf01                	beqz	a4,800195c4 <js_typed_array_get_byteOffset+0x4c>
quickjs-nuttx/quickjs.c:53019
        if (is_dataview) {
    800195ae:	c881                	beqz	s1,800195be <js_typed_array_get_byteOffset+0x46>
quickjs-nuttx/quickjs.c:53020
            return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800195b0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:53027
}
    800195b2:	6406                	ld	s0,64(sp)
    800195b4:	60a6                	ld	ra,72(sp)
    800195b6:	74e2                	ld	s1,56(sp)
    800195b8:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:53020
            return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    800195ba:	9cbff06f          	j	80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800195be:	e802                	sd	zero,16(sp)
    800195c0:	ec02                	sd	zero,24(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800195c2:	bfc9                	j	80019594 <js_typed_array_get_byteOffset+0x1c>
js_typed_array_get_byteOffset():
quickjs-nuttx/quickjs.c:53026
    return JS_NewInt32(ctx, ta->offset);
    800195c4:	539c                	lw	a5,32(a5)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800195c6:	d202                	sw	zero,36(sp)
    800195c8:	d03e                	sw	a5,32(sp)
    800195ca:	7782                	ld	a5,32(sp)
    800195cc:	e83e                	sd	a5,16(sp)
    800195ce:	bfcd                	j	800195c0 <js_typed_array_get_byteOffset+0x48>

00000000800195d0 <js_typed_array_get_byteLength>:
js_typed_array_get_byteLength():
quickjs-nuttx/quickjs.c:52992
{
    800195d0:	715d                	addi	sp,sp,-80
    800195d2:	e0a2                	sd	s0,64(sp)
    800195d4:	fc26                	sd	s1,56(sp)
    800195d6:	e486                	sd	ra,72(sp)
    800195d8:	842a                	mv	s0,a0
    800195da:	e02e                	sd	a1,0(sp)
    800195dc:	e432                	sd	a2,8(sp)
    800195de:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:52995
    p = get_typed_array(ctx, this_val, is_dataview);
    800195e0:	e37ff0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:52996
    if (!p)
    800195e4:	e919                	bnez	a0,800195fa <js_typed_array_get_byteLength+0x2a>
quickjs-nuttx/quickjs.c:52997
        return JS_EXCEPTION;
    800195e6:	4799                	li	a5,6
    800195e8:	e802                	sd	zero,16(sp)
    800195ea:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:53007 (discriminator 1)
}
    800195ec:	60a6                	ld	ra,72(sp)
    800195ee:	6406                	ld	s0,64(sp)
    800195f0:	6542                	ld	a0,16(sp)
    800195f2:	65e2                	ld	a1,24(sp)
    800195f4:	74e2                	ld	s1,56(sp)
    800195f6:	6161                	addi	sp,sp,80
    800195f8:	8082                	ret
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52938
    JSTypedArray *ta = p->u.typed_array;
    800195fa:	791c                	ld	a5,48(a0)
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    800195fc:	6f98                	ld	a4,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    800195fe:	7b18                	ld	a4,48(a4)
js_typed_array_get_byteLength():
quickjs-nuttx/quickjs.c:52998
    if (typed_array_is_detached(ctx, p)) {
    80019600:	00474703          	lbu	a4,4(a4)
    80019604:	cf01                	beqz	a4,8001961c <js_typed_array_get_byteLength+0x4c>
quickjs-nuttx/quickjs.c:52999
        if (is_dataview) {
    80019606:	c881                	beqz	s1,80019616 <js_typed_array_get_byteLength+0x46>
quickjs-nuttx/quickjs.c:53000
            return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80019608:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:53007
}
    8001960a:	6406                	ld	s0,64(sp)
    8001960c:	60a6                	ld	ra,72(sp)
    8001960e:	74e2                	ld	s1,56(sp)
    80019610:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:53000
            return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80019612:	973ff06f          	j	80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.h:515
    80019616:	e802                	sd	zero,16(sp)
    80019618:	ec02                	sd	zero,24(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001961a:	bfc9                	j	800195ec <js_typed_array_get_byteLength+0x1c>
js_typed_array_get_byteLength():
quickjs-nuttx/quickjs.c:53006
    return JS_NewInt32(ctx, ta->length);
    8001961c:	53dc                	lw	a5,36(a5)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001961e:	d202                	sw	zero,36(sp)
    80019620:	d03e                	sw	a5,32(sp)
    80019622:	7782                	ld	a5,32(sp)
    80019624:	e83e                	sd	a5,16(sp)
    80019626:	bfcd                	j	80019618 <js_typed_array_get_byteLength+0x48>

0000000080019628 <js_typed_array_get_buffer>:
js_typed_array_get_buffer():
quickjs-nuttx/quickjs.c:52979
{
    80019628:	7179                	addi	sp,sp,-48
    8001962a:	f406                	sd	ra,40(sp)
    8001962c:	e02e                	sd	a1,0(sp)
    8001962e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52982
    p = get_typed_array(ctx, this_val, is_dataview);
    80019630:	de7ff0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:52983
    if (!p)
    80019634:	e909                	bnez	a0,80019646 <js_typed_array_get_buffer+0x1e>
quickjs-nuttx/quickjs.c:52984
        return JS_EXCEPTION;
    80019636:	e802                	sd	zero,16(sp)
    80019638:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:52987
}
    8001963a:	70a2                	ld	ra,40(sp)
    8001963c:	ec3e                	sd	a5,24(sp)
    8001963e:	6542                	ld	a0,16(sp)
    80019640:	65e2                	ld	a1,24(sp)
    80019642:	6145                	addi	sp,sp,48
    80019644:	8082                	ret
quickjs-nuttx/quickjs.c:52986
    return JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, ta->buffer));
    80019646:	791c                	ld	a5,48(a0)
    80019648:	6f9c                	ld	a5,24(a5)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8001964a:	4398                	lw	a4,0(a5)
    8001964c:	e83e                	sd	a5,16(sp)
    8001964e:	2705                	addiw	a4,a4,1
    80019650:	c398                	sw	a4,0(a5)
js_typed_array_get_buffer():
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    80019652:	57fd                	li	a5,-1
    80019654:	b7dd                	j	8001963a <js_typed_array_get_buffer+0x12>

0000000080019656 <validate_typed_array>:
validate_typed_array():
quickjs-nuttx/quickjs.c:52955
{
    80019656:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:52957
    p = get_typed_array(ctx, this_val, 0);
    80019658:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:52955
{
    8001965a:	e822                	sd	s0,16(sp)
    8001965c:	ec06                	sd	ra,24(sp)
    8001965e:	842a                	mv	s0,a0
    80019660:	e02e                	sd	a1,0(sp)
    80019662:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52957
    p = get_typed_array(ctx, this_val, 0);
    80019664:	db3ff0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:52958
    if (!p)
    80019668:	c919                	beqz	a0,8001967e <validate_typed_array+0x28>
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    8001966a:	791c                	ld	a5,48(a0)
validate_typed_array():
quickjs-nuttx/quickjs.c:52964
    return 0;
    8001966c:	4501                	li	a0,0
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    8001966e:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    80019670:	7b9c                	ld	a5,48(a5)
validate_typed_array():
quickjs-nuttx/quickjs.c:52960
    if (typed_array_is_detached(ctx, p)) {
    80019672:	0047c783          	lbu	a5,4(a5)
    80019676:	c789                	beqz	a5,80019680 <validate_typed_array+0x2a>
quickjs-nuttx/quickjs.c:52961
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80019678:	8522                	mv	a0,s0
    8001967a:	90bff0ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:52959
        return -1;
    8001967e:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:52965
}
    80019680:	60e2                	ld	ra,24(sp)
    80019682:	6442                	ld	s0,16(sp)
    80019684:	6105                	addi	sp,sp,32
    80019686:	8082                	ret

0000000080019688 <js_typed_array_get_length>:
js_typed_array_get_length():
quickjs-nuttx/quickjs.c:52969
{
    80019688:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:52971
    p = get_typed_array(ctx, this_val, 0);
    8001968a:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:52969
{
    8001968c:	fc06                	sd	ra,56(sp)
    8001968e:	e02e                	sd	a1,0(sp)
    80019690:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52971
    p = get_typed_array(ctx, this_val, 0);
    80019692:	d85ff0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:52972
    if (!p)
    80019696:	e909                	bnez	a0,800196a8 <js_typed_array_get_length+0x20>
quickjs-nuttx/quickjs.c:52973
        return JS_EXCEPTION;
    80019698:	4799                	li	a5,6
    8001969a:	e802                	sd	zero,16(sp)
    8001969c:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:52975 (discriminator 1)
}
    8001969e:	70e2                	ld	ra,56(sp)
    800196a0:	6542                	ld	a0,16(sp)
    800196a2:	65e2                	ld	a1,24(sp)
    800196a4:	6121                	addi	sp,sp,64
    800196a6:	8082                	ret
quickjs-nuttx/quickjs.c:52974
    return JS_NewInt32(ctx, p->u.array.count);
    800196a8:	413c                	lw	a5,64(a0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800196aa:	d202                	sw	zero,36(sp)
    800196ac:	ec02                	sd	zero,24(sp)
    800196ae:	d03e                	sw	a5,32(sp)
    800196b0:	7782                	ld	a5,32(sp)
    800196b2:	e83e                	sd	a5,16(sp)
    800196b4:	b7ed                	j	8001969e <js_typed_array_get_length+0x16>

00000000800196b6 <js_throw_type_error>:
js_throw_type_error():
quickjs-nuttx/quickjs.c:14659
{
    800196b6:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:14660
    return JS_ThrowTypeError(ctx, "invalid property access");
    800196b8:	00051597          	auipc	a1,0x51
    800196bc:	de858593          	addi	a1,a1,-536 # 8006a4a0 <qjsc_repl+0x4ef0>
quickjs-nuttx/quickjs.c:14661
}
    800196c0:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:14660
    return JS_ThrowTypeError(ctx, "invalid property access");
    800196c2:	fabfe06f          	j	8001866c <JS_ThrowTypeError>

00000000800196c6 <js_function_proto_caller>:
js_function_proto_caller():
quickjs-nuttx/quickjs.c:14668
{
    800196c6:	715d                	addi	sp,sp,-80
    800196c8:	e0a2                	sd	s0,64(sp)
    800196ca:	e02e                	sd	a1,0(sp)
    800196cc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:14669
    JSFunctionBytecode *b = JS_GetFunctionBytecode(this_val);
    800196ce:	852e                	mv	a0,a1
    800196d0:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:14668
{
    800196d2:	e486                	sd	ra,72(sp)
    800196d4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:14669
    JSFunctionBytecode *b = JS_GetFunctionBytecode(this_val);
    800196d6:	d5fef0ef          	jal	ra,80009434 <JS_GetFunctionBytecode>
quickjs-nuttx/quickjs.c:14670
    if (!b || (b->js_mode & JS_MODE_STRICT) || !b->has_prototype) {
    800196da:	c909                	beqz	a0,800196ec <js_function_proto_caller+0x26>
quickjs-nuttx/quickjs.c:14670 (discriminator 1)
    800196dc:	01854783          	lbu	a5,24(a0)
    800196e0:	8b85                	andi	a5,a5,1
    800196e2:	e789                	bnez	a5,800196ec <js_function_proto_caller+0x26>
quickjs-nuttx/quickjs.c:14670 (discriminator 2)
    800196e4:	01954783          	lbu	a5,25(a0)
    800196e8:	8b85                	andi	a5,a5,1
    800196ea:	eb99                	bnez	a5,80019700 <js_function_proto_caller+0x3a>
js_throw_type_error():
quickjs-nuttx/quickjs.c:14660
    return JS_ThrowTypeError(ctx, "invalid property access");
    800196ec:	8522                	mv	a0,s0
js_function_proto_caller():
quickjs-nuttx/quickjs.c:14674
}
    800196ee:	6406                	ld	s0,64(sp)
    800196f0:	60a6                	ld	ra,72(sp)
js_throw_type_error():
quickjs-nuttx/quickjs.c:14660
    return JS_ThrowTypeError(ctx, "invalid property access");
    800196f2:	00051597          	auipc	a1,0x51
    800196f6:	dae58593          	addi	a1,a1,-594 # 8006a4a0 <qjsc_repl+0x4ef0>
js_function_proto_caller():
quickjs-nuttx/quickjs.c:14674
}
    800196fa:	6161                	addi	sp,sp,80
js_throw_type_error():
quickjs-nuttx/quickjs.c:14660
    return JS_ThrowTypeError(ctx, "invalid property access");
    800196fc:	f71fe06f          	j	8001866c <JS_ThrowTypeError>
js_function_proto_caller():
quickjs-nuttx/quickjs.c:14674
}
    80019700:	60a6                	ld	ra,72(sp)
    80019702:	6406                	ld	s0,64(sp)
    80019704:	4501                	li	a0,0
    80019706:	458d                	li	a1,3
    80019708:	6161                	addi	sp,sp,80
    8001970a:	8082                	ret

000000008001970c <js_typed_array_base_constructor>:
js_typed_array_base_constructor():
quickjs-nuttx/quickjs.c:54478
{
    8001970c:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:54479
    return JS_ThrowTypeError(ctx, "cannot be called");
    8001970e:	00051597          	auipc	a1,0x51
    80019712:	daa58593          	addi	a1,a1,-598 # 8006a4b8 <qjsc_repl+0x4f08>
quickjs-nuttx/quickjs.c:54480
}
    80019716:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:54479
    return JS_ThrowTypeError(ctx, "cannot be called");
    80019718:	f55fe06f          	j	8001866c <JS_ThrowTypeError>

000000008001971c <JS_ThrowTypeErrorRevokedProxy.isra.0>:
JS_ThrowTypeErrorRevokedProxy():
quickjs-nuttx/quickjs.c:45724
static JSValue JS_ThrowTypeErrorRevokedProxy(JSContext *ctx)
    8001971c:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:45726
    return JS_ThrowTypeError(ctx, "revoked proxy");
    8001971e:	00051597          	auipc	a1,0x51
    80019722:	db258593          	addi	a1,a1,-590 # 8006a4d0 <qjsc_repl+0x4f20>
quickjs-nuttx/quickjs.c:45727
}
    80019726:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:45726
    return JS_ThrowTypeError(ctx, "revoked proxy");
    80019728:	f45fe06f          	j	8001866c <JS_ThrowTypeError>

000000008001972c <JS_GetFunctionRealm>:
JS_GetFunctionRealm():
quickjs-nuttx/quickjs.c:18590
{
    8001972c:	1101                	addi	sp,sp,-32
    8001972e:	e432                	sd	a2,8(sp)
    80019730:	ec06                	sd	ra,24(sp)
    80019732:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:18594
    if (JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)
    80019734:	2601                	sext.w	a2,a2
    80019736:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:18590
{
    80019738:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:18594
    if (JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)
    8001973a:	04f61663          	bne	a2,a5,80019786 <JS_GetFunctionRealm+0x5a>
quickjs-nuttx/quickjs.c:18597
    switch(p->class_id) {
    8001973e:	0065d783          	lhu	a5,6(a1)
    80019742:	4731                	li	a4,12
    80019744:	04e78063          	beq	a5,a4,80019784 <JS_GetFunctionRealm+0x58>
    80019748:	37cd                	addiw	a5,a5,-13
    8001974a:	17c2                	slli	a5,a5,0x30
    8001974c:	93c1                	srli	a5,a5,0x30
    8001974e:	02b00713          	li	a4,43
    80019752:	02f76a63          	bltu	a4,a5,80019786 <JS_GetFunctionRealm+0x5a>
    80019756:	4745                	li	a4,17
    80019758:	4605                	li	a2,1
    8001975a:	171e                	slli	a4,a4,0x27
    8001975c:	00f617b3          	sll	a5,a2,a5
    80019760:	0725                	addi	a4,a4,9
    80019762:	8f7d                	and	a4,a4,a5
    80019764:	e70d                	bnez	a4,8001978e <JS_GetFunctionRealm+0x62>
    80019766:	0027f713          	andi	a4,a5,2
    8001976a:	e70d                	bnez	a4,80019794 <JS_GetFunctionRealm+0x68>
    8001976c:	160e                	slli	a2,a2,0x23
    8001976e:	8ff1                	and	a5,a5,a2
    80019770:	cb99                	beqz	a5,80019786 <JS_GetFunctionRealm+0x5a>
quickjs-nuttx/quickjs.c:18613
            JSProxyData *s = p->u.opaque;
    80019772:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:18614
            if (!s)
    80019774:	cb89                	beqz	a5,80019786 <JS_GetFunctionRealm+0x5a>
quickjs-nuttx/quickjs.c:18616
            if (s->is_revoked) {
    80019776:	0217c703          	lbu	a4,33(a5)
    8001977a:	cf11                	beqz	a4,80019796 <JS_GetFunctionRealm+0x6a>
quickjs-nuttx/quickjs.c:18617
                JS_ThrowTypeErrorRevokedProxy(ctx);
    8001977c:	fa1ff0ef          	jal	ra,8001971c <JS_ThrowTypeErrorRevokedProxy.isra.0>
quickjs-nuttx/quickjs.c:18618
                return NULL;
    80019780:	4681                	li	a3,0
    80019782:	a011                	j	80019786 <JS_GetFunctionRealm+0x5a>
quickjs-nuttx/quickjs.c:18599
        realm = p->u.cfunc.realm;
    80019784:	7994                	ld	a3,48(a1)
quickjs-nuttx/quickjs.c:18635
}
    80019786:	60e2                	ld	ra,24(sp)
    80019788:	8536                	mv	a0,a3
    8001978a:	6105                	addi	sp,sp,32
    8001978c:	8082                	ret
quickjs-nuttx/quickjs.c:18608
            realm = b->realm;
    8001978e:	799c                	ld	a5,48(a1)
    80019790:	67b4                	ld	a3,72(a5)
quickjs-nuttx/quickjs.c:18610
        break;
    80019792:	bfd5                	j	80019786 <JS_GetFunctionRealm+0x5a>
quickjs-nuttx/quickjs.c:18627
            realm = JS_GetFunctionRealm(ctx, bf->func_obj);
    80019794:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:18635
}
    80019796:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:18627
            realm = JS_GetFunctionRealm(ctx, bf->func_obj);
    80019798:	638c                	ld	a1,0(a5)
    8001979a:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:18635
}
    8001979c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:18627
            realm = JS_GetFunctionRealm(ctx, bf->func_obj);
    8001979e:	b779                	j	8001972c <JS_GetFunctionRealm>

00000000800197a0 <JS_SetObjectData.isra.0>:
JS_SetObjectData():
quickjs-nuttx/quickjs.c:4889
static int JS_SetObjectData(JSContext *ctx, JSValueConst obj, JSValue val)
    800197a0:	7139                	addi	sp,sp,-64
    800197a2:	f426                	sd	s1,40(sp)
    800197a4:	f04a                	sd	s2,32(sp)
    800197a6:	fc06                	sd	ra,56(sp)
    800197a8:	f822                	sd	s0,48(sp)
    800197aa:	e82e                	sd	a1,16(sp)
    800197ac:	ec32                	sd	a2,24(sp)
    800197ae:	e036                	sd	a3,0(sp)
    800197b0:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:4893
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    800197b2:	0006091b          	sext.w	s2,a2
    800197b6:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:4889
static int JS_SetObjectData(JSContext *ctx, JSValueConst obj, JSValue val)
    800197b8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:4893
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    800197ba:	04f91063          	bne	s2,a5,800197fa <JS_SetObjectData.isra.0+0x5a>
quickjs-nuttx/quickjs.c:4895
        switch(p->class_id) {
    800197be:	0065d703          	lhu	a4,6(a1)
    800197c2:	02400793          	li	a5,36
    800197c6:	842e                	mv	s0,a1
    800197c8:	02e7e963          	bltu	a5,a4,800197fa <JS_SetObjectData.isra.0+0x5a>
    800197cc:	4785                	li	a5,1
    800197ce:	00e797b3          	sll	a5,a5,a4
    800197d2:	472d                	li	a4,11
    800197d4:	1706                	slli	a4,a4,0x21
    800197d6:	4f070713          	addi	a4,a4,1264
    800197da:	8ff9                	and	a5,a5,a4
    800197dc:	cf99                	beqz	a5,800197fa <JS_SetObjectData.isra.0+0x5a>
quickjs-nuttx/quickjs.c:4906
            JS_FreeValue(ctx, p->u.object_data);
    800197de:	798c                	ld	a1,48(a1)
    800197e0:	7c10                	ld	a2,56(s0)
    800197e2:	fbdf10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4907
            p->u.object_data = val;
    800197e6:	6782                	ld	a5,0(sp)
    800197e8:	f81c                	sd	a5,48(s0)
    800197ea:	67a2                	ld	a5,8(sp)
    800197ec:	fc1c                	sd	a5,56(s0)
quickjs-nuttx/quickjs.c:4915
}
    800197ee:	70e2                	ld	ra,56(sp)
    800197f0:	7442                	ld	s0,48(sp)
    800197f2:	74a2                	ld	s1,40(sp)
    800197f4:	7902                	ld	s2,32(sp)
    800197f6:	6121                	addi	sp,sp,64
    800197f8:	8082                	ret
quickjs-nuttx/quickjs.c:4911
    JS_FreeValue(ctx, val);
    800197fa:	6582                	ld	a1,0(sp)
    800197fc:	6622                	ld	a2,8(sp)
    800197fe:	8526                	mv	a0,s1
    80019800:	f9ff10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4912
    if (!JS_IsException(obj))
    80019804:	4799                	li	a5,6
    80019806:	fef904e3          	beq	s2,a5,800197ee <JS_SetObjectData.isra.0+0x4e>
quickjs-nuttx/quickjs.c:4915
}
    8001980a:	7442                	ld	s0,48(sp)
    8001980c:	70e2                	ld	ra,56(sp)
    8001980e:	7902                	ld	s2,32(sp)
quickjs-nuttx/quickjs.c:4913
        JS_ThrowTypeError(ctx, "invalid object type");
    80019810:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:4915
}
    80019812:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:4913
        JS_ThrowTypeError(ctx, "invalid object type");
    80019814:	00051597          	auipc	a1,0x51
    80019818:	ccc58593          	addi	a1,a1,-820 # 8006a4e0 <qjsc_repl+0x4f30>
quickjs-nuttx/quickjs.c:4915
}
    8001981c:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:4913
        JS_ThrowTypeError(ctx, "invalid object type");
    8001981e:	e4ffe06f          	j	8001866c <JS_ThrowTypeError>

0000000080019822 <JS_ThrowReferenceError>:
JS_ThrowReferenceError():
quickjs-nuttx/quickjs.c:6715
{
    80019822:	7159                	addi	sp,sp,-112
    80019824:	e0b2                	sd	a2,64(sp)
    80019826:	e4b6                	sd	a3,72(sp)
quickjs-nuttx/quickjs.c:6720
    val = JS_ThrowError(ctx, JS_REFERENCE_ERROR, fmt, ap);
    80019828:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:6719
    va_start(ap, fmt);
    8001982a:	0094                	addi	a3,sp,64
quickjs-nuttx/quickjs.c:6720
    val = JS_ThrowError(ctx, JS_REFERENCE_ERROR, fmt, ap);
    8001982c:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:6715
{
    8001982e:	fc06                	sd	ra,56(sp)
    80019830:	e8ba                	sd	a4,80(sp)
    80019832:	ecbe                	sd	a5,88(sp)
    80019834:	f0c2                	sd	a6,96(sp)
    80019836:	f4c6                	sd	a7,104(sp)
quickjs-nuttx/quickjs.c:6719
    va_start(ap, fmt);
    80019838:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:6720
    val = JS_ThrowError(ctx, JS_REFERENCE_ERROR, fmt, ap);
    8001983a:	ac3fe0ef          	jal	ra,800182fc <JS_ThrowError>
quickjs-nuttx/quickjs.c:6723
}
    8001983e:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:6720
    val = JS_ThrowError(ctx, JS_REFERENCE_ERROR, fmt, ap);
    80019840:	e82a                	sd	a0,16(sp)
    80019842:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:6722
    return val;
    80019844:	f02a                	sd	a0,32(sp)
    80019846:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:6723
}
    80019848:	6165                	addi	sp,sp,112
    8001984a:	8082                	ret

000000008001984c <JS_ThrowReferenceErrorUninitialized>:
JS_ThrowReferenceErrorUninitialized():
quickjs-nuttx/quickjs.c:6781
{
    8001984c:	711d                	addi	sp,sp,-96
    8001984e:	e8a2                	sd	s0,80(sp)
    80019850:	ec86                	sd	ra,88(sp)
    80019852:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:6783
    return JS_ThrowReferenceError(ctx, "%s is not initialized",
    80019854:	00051617          	auipc	a2,0x51
    80019858:	ca460613          	addi	a2,a2,-860 # 8006a4f8 <qjsc_repl+0x4f48>
    8001985c:	c591                	beqz	a1,80019868 <JS_ThrowReferenceErrorUninitialized+0x1c>
    8001985e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:6785
                                  JS_AtomGetStr(ctx, buf, sizeof(buf), name));
    80019860:	080c                	addi	a1,sp,16
    80019862:	bb5f00ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    80019866:	862a                	mv	a2,a0
quickjs-nuttx/quickjs.c:6783 (discriminator 2)
    return JS_ThrowReferenceError(ctx, "%s is not initialized",
    80019868:	8522                	mv	a0,s0
    8001986a:	00051597          	auipc	a1,0x51
    8001986e:	ca658593          	addi	a1,a1,-858 # 8006a510 <qjsc_repl+0x4f60>
    80019872:	fb1ff0ef          	jal	ra,80019822 <JS_ThrowReferenceError>
quickjs-nuttx/quickjs.c:6786 (discriminator 2)
}
    80019876:	60e6                	ld	ra,88(sp)
    80019878:	6446                	ld	s0,80(sp)
    8001987a:	6125                	addi	sp,sp,96
    8001987c:	8082                	ret

000000008001987e <JS_ThrowReferenceErrorUninitialized2>:
JS_ThrowReferenceErrorUninitialized2():
quickjs-nuttx/quickjs.c:6791
{
    8001987e:	1141                	addi	sp,sp,-16
    80019880:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:6793
    if (is_ref) {
    80019882:	ca81                	beqz	a3,80019892 <JS_ThrowReferenceErrorUninitialized2+0x14>
quickjs-nuttx/quickjs.c:6794
        atom = b->closure_var[idx].var_name;
    80019884:	7d9c                	ld	a5,56(a1)
    80019886:	060e                	slli	a2,a2,0x3
    80019888:	963e                	add	a2,a2,a5
    8001988a:	424c                	lw	a1,4(a2)
quickjs-nuttx/quickjs.c:6801
}
    8001988c:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:6800
    return JS_ThrowReferenceErrorUninitialized(ctx, atom);
    8001988e:	fbfff06f          	j	8001984c <JS_ThrowReferenceErrorUninitialized>
quickjs-nuttx/quickjs.c:6797
        if (b->vardefs)
    80019892:	7998                	ld	a4,48(a1)
quickjs-nuttx/quickjs.c:6792
    JSAtom atom = JS_ATOM_NULL;
    80019894:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:6797
        if (b->vardefs)
    80019896:	db7d                	beqz	a4,8001988c <JS_ThrowReferenceErrorUninitialized2+0xe>
quickjs-nuttx/quickjs.c:6798
            atom = b->vardefs[b->arg_count + idx].var_name;
    80019898:	0407d783          	lhu	a5,64(a5)
    8001989c:	9e3d                	addw	a2,a2,a5
    8001989e:	0612                	slli	a2,a2,0x4
    800198a0:	963a                	add	a2,a2,a4
    800198a2:	420c                	lw	a1,0(a2)
    800198a4:	b7e5                	j	8001988c <JS_ThrowReferenceErrorUninitialized2+0xe>

00000000800198a6 <JS_ThrowReferenceErrorNotDefined>:
JS_ThrowReferenceErrorNotDefined():
quickjs-nuttx/quickjs.c:6774
{
    800198a6:	711d                	addi	sp,sp,-96
    800198a8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:6776
    return JS_ThrowReferenceError(ctx, "'%s' is not defined",
    800198aa:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs.c:6774
{
    800198ac:	ec86                	sd	ra,88(sp)
    800198ae:	e8a2                	sd	s0,80(sp)
    800198b0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:6776
    return JS_ThrowReferenceError(ctx, "'%s' is not defined",
    800198b2:	b65f00ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
    800198b6:	862a                	mv	a2,a0
    800198b8:	00051597          	auipc	a1,0x51
    800198bc:	c7058593          	addi	a1,a1,-912 # 8006a528 <qjsc_repl+0x4f78>
    800198c0:	8522                	mv	a0,s0
    800198c2:	f61ff0ef          	jal	ra,80019822 <JS_ThrowReferenceError>
quickjs-nuttx/quickjs.c:6778
}
    800198c6:	60e6                	ld	ra,88(sp)
    800198c8:	6446                	ld	s0,80(sp)
    800198ca:	6125                	addi	sp,sp,96
    800198cc:	8082                	ret

00000000800198ce <JS_ThrowRangeError>:
JS_ThrowRangeError():
quickjs-nuttx/quickjs.c:6726
{
    800198ce:	7159                	addi	sp,sp,-112
    800198d0:	e0b2                	sd	a2,64(sp)
    800198d2:	e4b6                	sd	a3,72(sp)
quickjs-nuttx/quickjs.c:6731
    val = JS_ThrowError(ctx, JS_RANGE_ERROR, fmt, ap);
    800198d4:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:6730
    va_start(ap, fmt);
    800198d6:	0094                	addi	a3,sp,64
quickjs-nuttx/quickjs.c:6731
    val = JS_ThrowError(ctx, JS_RANGE_ERROR, fmt, ap);
    800198d8:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:6726
{
    800198da:	fc06                	sd	ra,56(sp)
    800198dc:	e8ba                	sd	a4,80(sp)
    800198de:	ecbe                	sd	a5,88(sp)
    800198e0:	f0c2                	sd	a6,96(sp)
    800198e2:	f4c6                	sd	a7,104(sp)
quickjs-nuttx/quickjs.c:6730
    va_start(ap, fmt);
    800198e4:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:6731
    val = JS_ThrowError(ctx, JS_RANGE_ERROR, fmt, ap);
    800198e6:	a17fe0ef          	jal	ra,800182fc <JS_ThrowError>
quickjs-nuttx/quickjs.c:6734
}
    800198ea:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:6731
    val = JS_ThrowError(ctx, JS_RANGE_ERROR, fmt, ap);
    800198ec:	e82a                	sd	a0,16(sp)
    800198ee:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:6733
    return val;
    800198f0:	f02a                	sd	a0,32(sp)
    800198f2:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:6734
}
    800198f4:	6165                	addi	sp,sp,112
    800198f6:	8082                	ret

00000000800198f8 <JS_ThrowInternalError>:
JS_ThrowInternalError():
quickjs-nuttx/quickjs.c:6737
{
    800198f8:	7159                	addi	sp,sp,-112
    800198fa:	e0b2                	sd	a2,64(sp)
    800198fc:	e4b6                	sd	a3,72(sp)
quickjs-nuttx/quickjs.c:6742
    val = JS_ThrowError(ctx, JS_INTERNAL_ERROR, fmt, ap);
    800198fe:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:6741
    va_start(ap, fmt);
    80019900:	0094                	addi	a3,sp,64
quickjs-nuttx/quickjs.c:6742
    val = JS_ThrowError(ctx, JS_INTERNAL_ERROR, fmt, ap);
    80019902:	4599                	li	a1,6
quickjs-nuttx/quickjs.c:6737
{
    80019904:	fc06                	sd	ra,56(sp)
    80019906:	e8ba                	sd	a4,80(sp)
    80019908:	ecbe                	sd	a5,88(sp)
    8001990a:	f0c2                	sd	a6,96(sp)
    8001990c:	f4c6                	sd	a7,104(sp)
quickjs-nuttx/quickjs.c:6741
    va_start(ap, fmt);
    8001990e:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:6742
    val = JS_ThrowError(ctx, JS_INTERNAL_ERROR, fmt, ap);
    80019910:	9edfe0ef          	jal	ra,800182fc <JS_ThrowError>
quickjs-nuttx/quickjs.c:6745
}
    80019914:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:6742
    val = JS_ThrowError(ctx, JS_INTERNAL_ERROR, fmt, ap);
    80019916:	e82a                	sd	a0,16(sp)
    80019918:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:6744
    return val;
    8001991a:	f02a                	sd	a0,32(sp)
    8001991c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:6745
}
    8001991e:	6165                	addi	sp,sp,112
    80019920:	8082                	ret

0000000080019922 <JS_ThrowStackOverflow>:
JS_ThrowStackOverflow():
quickjs-nuttx/quickjs.c:6759
{
    80019922:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:6760
    return JS_ThrowInternalError(ctx, "stack overflow");
    80019924:	00051597          	auipc	a1,0x51
    80019928:	c1c58593          	addi	a1,a1,-996 # 8006a540 <qjsc_repl+0x4f90>
quickjs-nuttx/quickjs.c:6761
}
    8001992c:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:6760
    return JS_ThrowInternalError(ctx, "stack overflow");
    8001992e:	fcbff06f          	j	800198f8 <JS_ThrowInternalError>

0000000080019932 <get_proxy_method>:
get_proxy_method():
quickjs-nuttx/quickjs.c:45731
{
    80019932:	7159                	addi	sp,sp,-112
    80019934:	f0a2                	sd	s0,96(sp)
    80019936:	e8ca                	sd	s2,80(sp)
    80019938:	1880                	addi	s0,sp,112
    8001993a:	e4ce                	sd	s3,72(sp)
    8001993c:	e0d2                	sd	s4,64(sp)
    8001993e:	f486                	sd	ra,104(sp)
    80019940:	eca6                	sd	s1,88(sp)
    80019942:	892a                	mv	s2,a0
    80019944:	f8c43823          	sd	a2,-112(s0)
    80019948:	8532                	mv	a0,a2
    8001994a:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:45732
    JSProxyData *s = JS_GetOpaque(obj, JS_CLASS_PROXY);
    8001994c:	03000613          	li	a2,48
    80019950:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:45731
{
    80019952:	f8d43c23          	sd	a3,-104(s0)
    80019956:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs.c:45732
    JSProxyData *s = JS_GetOpaque(obj, JS_CLASS_PROXY);
    80019958:	d3df40ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:45736
    if (js_check_stack_overflow(ctx->rt, 0)) {
    8001995c:	01893783          	ld	a5,24(s2)
    80019960:	6ffc                	ld	a5,216(a5)
    80019962:	00f47763          	bgeu	s0,a5,80019970 <get_proxy_method+0x3e>
quickjs-nuttx/quickjs.c:45737
        JS_ThrowStackOverflow(ctx);
    80019966:	854a                	mv	a0,s2
    80019968:	fbbff0ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:45748
        return NULL;
    8001996c:	4481                	li	s1,0
    8001996e:	a0b9                	j	800199bc <get_proxy_method+0x8a>
quickjs-nuttx/quickjs.c:45742
    if (s->is_revoked) {
    80019970:	02154783          	lbu	a5,33(a0)
    80019974:	84aa                	mv	s1,a0
    80019976:	c789                	beqz	a5,80019980 <get_proxy_method+0x4e>
quickjs-nuttx/quickjs.c:45743
        JS_ThrowTypeErrorRevokedProxy(ctx);
    80019978:	854a                	mv	a0,s2
    8001997a:	da3ff0ef          	jal	ra,8001971c <JS_ThrowTypeErrorRevokedProxy.isra.0>
quickjs-nuttx/quickjs.c:45744
        return NULL;
    8001997e:	b7fd                	j	8001996c <get_proxy_method+0x3a>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80019980:	6918                	ld	a4,16(a0)
    80019982:	6d1c                	ld	a5,24(a0)
    80019984:	4801                	li	a6,0
    80019986:	85ba                	mv	a1,a4
    80019988:	863e                	mv	a2,a5
    8001998a:	86d2                	mv	a3,s4
    8001998c:	854a                	mv	a0,s2
    8001998e:	fae43823          	sd	a4,-80(s0)
    80019992:	918fd0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80019996:	faa43023          	sd	a0,-96(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001999a:	0005879b          	sext.w	a5,a1
get_proxy_method():
quickjs-nuttx/quickjs.c:45747
    if (JS_IsException(method))
    8001999e:	4719                	li	a4,6
    800199a0:	fce786e3          	beq	a5,a4,8001996c <get_proxy_method+0x3a>
quickjs-nuttx/quickjs.c:45749
    if (JS_IsNull(method))
    800199a4:	4709                	li	a4,2
    800199a6:	00e79563          	bne	a5,a4,800199b0 <get_proxy_method+0x7e>
quickjs-nuttx/quickjs.c:45750
        method = JS_UNDEFINED;
    800199aa:	fa043023          	sd	zero,-96(s0)
    800199ae:	458d                	li	a1,3
quickjs-nuttx/quickjs.c:45751
    *pmethod = method;
    800199b0:	fa043783          	ld	a5,-96(s0)
    800199b4:	00b9b423          	sd	a1,8(s3) # 4000008 <asinh-0x7bfffff8>
    800199b8:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/quickjs.c:45753
}
    800199bc:	70a6                	ld	ra,104(sp)
    800199be:	7406                	ld	s0,96(sp)
    800199c0:	6946                	ld	s2,80(sp)
    800199c2:	69a6                	ld	s3,72(sp)
    800199c4:	6a06                	ld	s4,64(sp)
    800199c6:	8526                	mv	a0,s1
    800199c8:	64e6                	ld	s1,88(sp)
    800199ca:	6165                	addi	sp,sp,112
    800199cc:	8082                	ret

00000000800199ce <JS_IsExtensible>:
JS_IsExtensible():
quickjs-nuttx/quickjs.c:7786
{
    800199ce:	711d                	addi	sp,sp,-96
    800199d0:	e8a2                	sd	s0,80(sp)
    800199d2:	ec86                	sd	ra,88(sp)
    800199d4:	e4a6                	sd	s1,72(sp)
    800199d6:	e0ca                	sd	s2,64(sp)
    800199d8:	e02e                	sd	a1,0(sp)
    800199da:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:7789
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT))
    800199dc:	0006041b          	sext.w	s0,a2
    800199e0:	57fd                	li	a5,-1
    800199e2:	0af41263          	bne	s0,a5,80019a86 <JS_IsExtensible+0xb8>
quickjs-nuttx/quickjs.c:7792
    if (unlikely(p->class_id == JS_CLASS_PROXY))
    800199e6:	0065d703          	lhu	a4,6(a1)
    800199ea:	03000793          	li	a5,48
    800199ee:	08f71863          	bne	a4,a5,80019a7e <JS_IsExtensible+0xb0>
    800199f2:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:7793
        return js_proxy_isExtensible(ctx, obj);
    800199f4:	e82e                	sd	a1,16(sp)
    800199f6:	ec32                	sd	a2,24(sp)
js_proxy_isExtensible():
quickjs-nuttx/quickjs.c:45848
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_isExtensible);
    800199f8:	06200713          	li	a4,98
    800199fc:	862e                	mv	a2,a1
    800199fe:	100c                	addi	a1,sp,32
    80019a00:	892a                	mv	s2,a0
    80019a02:	f31ff0ef          	jal	ra,80019932 <get_proxy_method>
    80019a06:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:45849
    if (!s)
    80019a08:	e901                	bnez	a0,80019a18 <JS_IsExtensible+0x4a>
quickjs-nuttx/quickjs.c:45850
        return -1;
    80019a0a:	8522                	mv	a0,s0
JS_IsExtensible():
quickjs-nuttx/quickjs.c:7796
}
    80019a0c:	60e6                	ld	ra,88(sp)
    80019a0e:	6446                	ld	s0,80(sp)
    80019a10:	64a6                	ld	s1,72(sp)
    80019a12:	6906                	ld	s2,64(sp)
    80019a14:	6125                	addi	sp,sp,96
    80019a16:	8082                	ret
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80019a18:	7622                	ld	a2,40(sp)
js_proxy_isExtensible():
quickjs-nuttx/quickjs.c:45851
    if (JS_IsUndefined(method))
    80019a1a:	478d                	li	a5,3
    80019a1c:	0006071b          	sext.w	a4,a2
    80019a20:	00f71863          	bne	a4,a5,80019a30 <JS_IsExtensible+0x62>
quickjs-nuttx/quickjs.c:45852
        return JS_IsExtensible(ctx, s->target);
    80019a24:	610c                	ld	a1,0(a0)
    80019a26:	6510                	ld	a2,8(a0)
    80019a28:	854a                	mv	a0,s2
    80019a2a:	fa5ff0ef          	jal	ra,800199ce <JS_IsExtensible>
    80019a2e:	bff9                	j	80019a0c <JS_IsExtensible+0x3e>
quickjs-nuttx/quickjs.c:45853
    ret = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    80019a30:	6d18                	ld	a4,24(a0)
    80019a32:	6914                	ld	a3,16(a0)
    80019a34:	7582                	ld	a1,32(sp)
    80019a36:	882a                	mv	a6,a0
    80019a38:	4785                	li	a5,1
    80019a3a:	854a                	mv	a0,s2
    80019a3c:	838fd0ef          	jal	ra,80016a74 <JS_CallFree>
    80019a40:	f82a                	sd	a0,48(sp)
    80019a42:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:45854
    if (JS_IsException(ret))
    80019a44:	0005871b          	sext.w	a4,a1
    80019a48:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45853
    ret = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    80019a4a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45854
    if (JS_IsException(ret))
    80019a4c:	faf70fe3          	beq	a4,a5,80019a0a <JS_IsExtensible+0x3c>
quickjs-nuttx/quickjs.c:45856
    res = JS_ToBoolFree(ctx, ret);
    80019a50:	85aa                	mv	a1,a0
    80019a52:	854a                	mv	a0,s2
    80019a54:	8c0f20ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:45857
    res2 = JS_IsExtensible(ctx, s->target);
    80019a58:	608c                	ld	a1,0(s1)
    80019a5a:	6490                	ld	a2,8(s1)
quickjs-nuttx/quickjs.c:45856
    res = JS_ToBoolFree(ctx, ret);
    80019a5c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:45857
    res2 = JS_IsExtensible(ctx, s->target);
    80019a5e:	854a                	mv	a0,s2
    80019a60:	f6fff0ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:45858
    if (res2 < 0)
    80019a64:	fa0544e3          	bltz	a0,80019a0c <JS_IsExtensible+0x3e>
quickjs-nuttx/quickjs.c:45860
    if (res != res2) {
    80019a68:	faa402e3          	beq	s0,a0,80019a0c <JS_IsExtensible+0x3e>
quickjs-nuttx/quickjs.c:45861
        JS_ThrowTypeError(ctx, "proxy: inconsistent isExtensible");
    80019a6c:	00051597          	auipc	a1,0x51
    80019a70:	ae458593          	addi	a1,a1,-1308 # 8006a550 <qjsc_repl+0x4fa0>
    80019a74:	854a                	mv	a0,s2
    80019a76:	bf7fe0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:45862
        return -1;
    80019a7a:	557d                	li	a0,-1
JS_IsExtensible():
quickjs-nuttx/quickjs.c:7793
        return js_proxy_isExtensible(ctx, obj);
    80019a7c:	bf41                	j	80019a0c <JS_IsExtensible+0x3e>
quickjs-nuttx/quickjs.c:7795
        return p->extensible;
    80019a7e:	6188                	ld	a0,0(a1)
    80019a80:	9121                	srli	a0,a0,0x28
    80019a82:	8905                	andi	a0,a0,1
    80019a84:	b761                	j	80019a0c <JS_IsExtensible+0x3e>
quickjs-nuttx/quickjs.c:7790
        return FALSE;
    80019a86:	4501                	li	a0,0
    80019a88:	b751                	j	80019a0c <JS_IsExtensible+0x3e>

0000000080019a8a <js_object_isExtensible>:
js_object_isExtensible():
quickjs-nuttx/quickjs.c:37515
{
    80019a8a:	715d                	addi	sp,sp,-80
    80019a8c:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs.c:37519
    obj = argv[0];
    80019a8e:	6710                	ld	a2,8(a4)
    80019a90:	630c                	ld	a1,0(a4)
quickjs-nuttx/quickjs.c:37520
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT) {
    80019a92:	577d                	li	a4,-1
    80019a94:	0006069b          	sext.w	a3,a2
    80019a98:	00e68a63          	beq	a3,a4,80019aac <js_object_isExtensible+0x22>
quickjs-nuttx/quickjs.c:37521
        if (reflect)
    80019a9c:	c789                	beqz	a5,80019aa6 <js_object_isExtensible+0x1c>
quickjs-nuttx/quickjs.c:37531
}
    80019a9e:	60a6                	ld	ra,72(sp)
    80019aa0:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:37522
            return JS_ThrowTypeErrorNotAnObject(ctx);
    80019aa2:	988ff06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:37524
            return JS_FALSE;
    80019aa6:	f002                	sd	zero,32(sp)
    80019aa8:	4785                	li	a5,1
    80019aaa:	a039                	j	80019ab8 <js_object_isExtensible+0x2e>
quickjs-nuttx/quickjs.c:37526
    ret = JS_IsExtensible(ctx, obj);
    80019aac:	f23ff0ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:37527
    if (ret < 0)
    80019ab0:	00055a63          	bgez	a0,80019ac4 <js_object_isExtensible+0x3a>
quickjs-nuttx/quickjs.c:37528
        return JS_EXCEPTION;
    80019ab4:	f002                	sd	zero,32(sp)
    80019ab6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37531
}
    80019ab8:	60a6                	ld	ra,72(sp)
    80019aba:	f43e                	sd	a5,40(sp)
    80019abc:	7502                	ld	a0,32(sp)
    80019abe:	75a2                	ld	a1,40(sp)
    80019ac0:	6161                	addi	sp,sp,80
    80019ac2:	8082                	ret
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80019ac4:	00a03533          	snez	a0,a0
    80019ac8:	da02                	sw	zero,52(sp)
    80019aca:	d82a                	sw	a0,48(sp)
    80019acc:	77c2                	ld	a5,48(sp)
    80019ace:	f03e                	sd	a5,32(sp)
    80019ad0:	bfe1                	j	80019aa8 <js_object_isExtensible+0x1e>

0000000080019ad2 <JS_GetPrototype>:
JS_GetPrototype():
quickjs-nuttx/quickjs.c:6952
{
    80019ad2:	7171                	addi	sp,sp,-176
    80019ad4:	fcd6                	sd	s5,120(sp)
    80019ad6:	f506                	sd	ra,168(sp)
    80019ad8:	f122                	sd	s0,160(sp)
    80019ada:	ed26                	sd	s1,152(sp)
    80019adc:	e94a                	sd	s2,144(sp)
    80019ade:	e54e                	sd	s3,136(sp)
    80019ae0:	e152                	sd	s4,128(sp)
    80019ae2:	e02e                	sd	a1,0(sp)
    80019ae4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:6954
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80019ae6:	00060a9b          	sext.w	s5,a2
    80019aea:	57fd                	li	a5,-1
    80019aec:	10fa9863          	bne	s5,a5,80019bfc <JS_GetPrototype+0x12a>
quickjs-nuttx/quickjs.c:6957
        if (unlikely(p->class_id == JS_CLASS_PROXY)) {
    80019af0:	0065d703          	lhu	a4,6(a1)
    80019af4:	03000793          	li	a5,48
    80019af8:	86b2                	mv	a3,a2
    80019afa:	862e                	mv	a2,a1
    80019afc:	0ef71463          	bne	a4,a5,80019be4 <JS_GetPrototype+0x112>
    80019b00:	f02e                	sd	a1,32(sp)
js_proxy_getPrototypeOf():
quickjs-nuttx/quickjs.c:45761
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_getPrototypeOf);
    80019b02:	06000713          	li	a4,96
    80019b06:	180c                	addi	a1,sp,48
    80019b08:	892a                	mv	s2,a0
JS_GetPrototype():
quickjs-nuttx/quickjs.c:6958
            val = js_proxy_getPrototypeOf(ctx, obj);
    80019b0a:	f436                	sd	a3,40(sp)
js_proxy_getPrototypeOf():
quickjs-nuttx/quickjs.c:45761
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_getPrototypeOf);
    80019b0c:	e27ff0ef          	jal	ra,80019932 <get_proxy_method>
    80019b10:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:45762
    if (!s)
    80019b12:	c571                	beqz	a0,80019bde <JS_GetPrototype+0x10c>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80019b14:	7662                	ld	a2,56(sp)
js_proxy_getPrototypeOf():
quickjs-nuttx/quickjs.c:45764
    if (JS_IsUndefined(method))
    80019b16:	478d                	li	a5,3
    80019b18:	0006071b          	sext.w	a4,a2
    80019b1c:	00f71a63          	bne	a4,a5,80019b30 <JS_GetPrototype+0x5e>
quickjs-nuttx/quickjs.c:45765
        return JS_GetPrototype(ctx, s->target);
    80019b20:	610c                	ld	a1,0(a0)
    80019b22:	6510                	ld	a2,8(a0)
    80019b24:	854a                	mv	a0,s2
    80019b26:	fadff0ef          	jal	ra,80019ad2 <JS_GetPrototype>
quickjs-nuttx/quickjs.c:45789
            return JS_ThrowTypeError(ctx, "proxy: inconsistent prototype");
    80019b2a:	89aa                	mv	s3,a0
    80019b2c:	842e                	mv	s0,a1
    80019b2e:	a0b1                	j	80019b7a <JS_GetPrototype+0xa8>
quickjs-nuttx/quickjs.c:45766
    ret = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    80019b30:	6d18                	ld	a4,24(a0)
    80019b32:	6914                	ld	a3,16(a0)
    80019b34:	75c2                	ld	a1,48(sp)
    80019b36:	882a                	mv	a6,a0
    80019b38:	4785                	li	a5,1
    80019b3a:	854a                	mv	a0,s2
    80019b3c:	f39fc0ef          	jal	ra,80016a74 <JS_CallFree>
    80019b40:	e0aa                	sd	a0,64(sp)
    80019b42:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80019b44:	0005879b          	sext.w	a5,a1
js_proxy_getPrototypeOf():
quickjs-nuttx/quickjs.c:45767
    if (JS_IsException(ret))
    80019b48:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:45766
    ret = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    80019b4a:	8a2a                	mv	s4,a0
    80019b4c:	89aa                	mv	s3,a0
    80019b4e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:45767
    if (JS_IsException(ret))
    80019b50:	02e78563          	beq	a5,a4,80019b7a <JS_GetPrototype+0xa8>
quickjs-nuttx/quickjs.c:45769
    if (JS_VALUE_GET_TAG(ret) != JS_TAG_NULL &&
    80019b54:	4709                	li	a4,2
    80019b56:	00e78463          	beq	a5,a4,80019b5e <JS_GetPrototype+0x8c>
    80019b5a:	07579063          	bne	a5,s5,80019bba <JS_GetPrototype+0xe8>
quickjs-nuttx/quickjs.c:45773
    res = JS_IsExtensible(ctx, s->target);
    80019b5e:	608c                	ld	a1,0(s1)
    80019b60:	6490                	ld	a2,8(s1)
    80019b62:	854a                	mv	a0,s2
    80019b64:	e6bff0ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:45774
    if (res < 0) {
    80019b68:	02055563          	bgez	a0,80019b92 <JS_GetPrototype+0xc0>
quickjs-nuttx/quickjs.c:45775
        JS_FreeValue(ctx, ret);
    80019b6c:	6586                	ld	a1,64(sp)
    80019b6e:	6626                	ld	a2,72(sp)
    80019b70:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:45776
        return JS_EXCEPTION;
    80019b72:	4419                	li	s0,6
quickjs-nuttx/quickjs.c:45775
        JS_FreeValue(ctx, ret);
    80019b74:	c2bf10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45776
        return JS_EXCEPTION;
    80019b78:	4981                	li	s3,0
    80019b7a:	e84e                	sd	s3,16(sp)
JS_GetPrototype():
quickjs-nuttx/quickjs.c:6970
}
    80019b7c:	70aa                	ld	ra,168(sp)
    80019b7e:	85a2                	mv	a1,s0
    80019b80:	740a                	ld	s0,160(sp)
    80019b82:	6542                	ld	a0,16(sp)
    80019b84:	64ea                	ld	s1,152(sp)
    80019b86:	694a                	ld	s2,144(sp)
    80019b88:	69aa                	ld	s3,136(sp)
    80019b8a:	6a0a                	ld	s4,128(sp)
    80019b8c:	7ae6                	ld	s5,120(sp)
    80019b8e:	614d                	addi	sp,sp,176
    80019b90:	8082                	ret
js_proxy_getPrototypeOf():
quickjs-nuttx/quickjs.c:45778
    if (!res) {
    80019b92:	f565                	bnez	a0,80019b7a <JS_GetPrototype+0xa8>
quickjs-nuttx/quickjs.c:45780
        proto1 = JS_GetPrototype(ctx, s->target);
    80019b94:	6490                	ld	a2,8(s1)
    80019b96:	608c                	ld	a1,0(s1)
    80019b98:	854a                	mv	a0,s2
    80019b9a:	f39ff0ef          	jal	ra,80019ad2 <JS_GetPrototype>
    80019b9e:	e8aa                	sd	a0,80(sp)
    80019ba0:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:45781
        if (JS_IsException(proto1)) {
    80019ba2:	0005871b          	sext.w	a4,a1
    80019ba6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45780
        proto1 = JS_GetPrototype(ctx, s->target);
    80019ba8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45781
        if (JS_IsException(proto1)) {
    80019baa:	fcf701e3          	beq	a4,a5,80019b6c <JS_GetPrototype+0x9a>
quickjs-nuttx/quickjs.c:45785
        if (JS_VALUE_GET_OBJ(proto1) != JS_VALUE_GET_OBJ(ret)) {
    80019bae:	02aa0363          	beq	s4,a0,80019bd4 <JS_GetPrototype+0x102>
quickjs-nuttx/quickjs.c:45786
            JS_FreeValue(ctx, proto1);
    80019bb2:	85aa                	mv	a1,a0
    80019bb4:	854a                	mv	a0,s2
    80019bb6:	be9f10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45788
            JS_FreeValue(ctx, ret);
    80019bba:	6586                	ld	a1,64(sp)
    80019bbc:	6626                	ld	a2,72(sp)
    80019bbe:	854a                	mv	a0,s2
    80019bc0:	bdff10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45789
            return JS_ThrowTypeError(ctx, "proxy: inconsistent prototype");
    80019bc4:	854a                	mv	a0,s2
    80019bc6:	00051597          	auipc	a1,0x51
    80019bca:	9b258593          	addi	a1,a1,-1614 # 8006a578 <qjsc_repl+0x4fc8>
    80019bce:	a9ffe0ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80019bd2:	bfa1                	j	80019b2a <JS_GetPrototype+0x58>
quickjs-nuttx/quickjs.c:45791
        JS_FreeValue(ctx, proto1);
    80019bd4:	85d2                	mv	a1,s4
    80019bd6:	854a                	mv	a0,s2
    80019bd8:	bc7f10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45793
    return ret;
    80019bdc:	bf79                	j	80019b7a <JS_GetPrototype+0xa8>
quickjs-nuttx/quickjs.c:45763
        return JS_EXCEPTION;
    80019bde:	4981                	li	s3,0
    80019be0:	4419                	li	s0,6
    80019be2:	bf61                	j	80019b7a <JS_GetPrototype+0xa8>
JS_GetPrototype():
quickjs-nuttx/quickjs.c:6960
            p = p->shape->proto;
    80019be4:	6d9c                	ld	a5,24(a1)
    80019be6:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:6961
            if (!p)
    80019be8:	e781                	bnez	a5,80019bf0 <JS_GetPrototype+0x11e>
quickjs-nuttx/quickjs.c:6962
                val = JS_NULL;
    80019bea:	e802                	sd	zero,16(sp)
    80019bec:	4409                	li	s0,2
    80019bee:	b779                	j	80019b7c <JS_GetPrototype+0xaa>
JS_DupValue():
quickjs-nuttx/quickjs.h:670 (discriminator 2)
        p->ref_count++;
    80019bf0:	4398                	lw	a4,0(a5)
    80019bf2:	e83e                	sd	a5,16(sp)
JS_GetPrototype():
quickjs-nuttx/quickjs.c:6964 (discriminator 2)
                val = JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, p));
    80019bf4:	547d                	li	s0,-1
JS_DupValue():
quickjs-nuttx/quickjs.h:670 (discriminator 2)
    80019bf6:	2705                	addiw	a4,a4,1
    80019bf8:	c398                	sw	a4,0(a5)
JS_GetPrototype():
quickjs-nuttx/quickjs.h:672 (discriminator 2)
    return (JSValue)v;
    80019bfa:	b749                	j	80019b7c <JS_GetPrototype+0xaa>
quickjs-nuttx/quickjs.c:6967
        val = JS_DupValue(ctx, JS_GetPrototypePrimitive(ctx, obj));
    80019bfc:	98eee0ef          	jal	ra,80007d8a <JS_GetPrototypePrimitive>
    80019c00:	f82a                	sd	a0,48(sp)
    80019c02:	fc2e                	sd	a1,56(sp)
    80019c04:	817f00ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80019c08:	e82a                	sd	a0,16(sp)
    80019c0a:	842e                	mv	s0,a1
    80019c0c:	bf85                	j	80019b7c <JS_GetPrototype+0xaa>

0000000080019c0e <JS_GetPrototypeFree>:
JS_GetPrototypeFree():
quickjs-nuttx/quickjs.c:6973
{
    80019c0e:	7139                	addi	sp,sp,-64
    80019c10:	fc06                	sd	ra,56(sp)
    80019c12:	f822                	sd	s0,48(sp)
    80019c14:	e432                	sd	a2,8(sp)
    80019c16:	842a                	mv	s0,a0
    80019c18:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:6975
    obj1 = JS_GetPrototype(ctx, obj);
    80019c1a:	eb9ff0ef          	jal	ra,80019ad2 <JS_GetPrototype>
    80019c1e:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:6976
    JS_FreeValue(ctx, obj);
    80019c20:	6622                	ld	a2,8(sp)
    80019c22:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:6975
    obj1 = JS_GetPrototype(ctx, obj);
    80019c24:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:6976
    JS_FreeValue(ctx, obj);
    80019c26:	8522                	mv	a0,s0
    80019c28:	b77f10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:6978
}
    80019c2c:	70e2                	ld	ra,56(sp)
    80019c2e:	7442                	ld	s0,48(sp)
    80019c30:	6542                	ld	a0,16(sp)
    80019c32:	65e2                	ld	a1,24(sp)
    80019c34:	6121                	addi	sp,sp,64
    80019c36:	8082                	ret

0000000080019c38 <js_object_getPrototypeOf>:
js_object_getPrototypeOf():
quickjs-nuttx/quickjs.c:37187
    val = argv[0];
    80019c38:	6314                	ld	a3,0(a4)
    80019c3a:	6718                	ld	a4,8(a4)
quickjs-nuttx/quickjs.c:37184
{
    80019c3c:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:37187
    val = argv[0];
    80019c3e:	e836                	sd	a3,16(sp)
    80019c40:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:37188
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT) {
    80019c42:	0007061b          	sext.w	a2,a4
    80019c46:	56fd                	li	a3,-1
    80019c48:	00d60a63          	beq	a2,a3,80019c5c <js_object_getPrototypeOf+0x24>
quickjs-nuttx/quickjs.c:37191
        if (magic || JS_VALUE_GET_TAG(val) == JS_TAG_NULL ||
    80019c4c:	e789                	bnez	a5,80019c56 <js_object_getPrototypeOf+0x1e>
quickjs-nuttx/quickjs.c:37191 (discriminator 1)
    80019c4e:	3779                	addiw	a4,a4,-2
    80019c50:	4785                	li	a5,1
    80019c52:	00e7e563          	bltu	a5,a4,80019c5c <js_object_getPrototypeOf+0x24>
quickjs-nuttx/quickjs.c:37196
}
    80019c56:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:37193
            return JS_ThrowTypeErrorNotAnObject(ctx);
    80019c58:	fd3fe06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:37195
    return JS_GetPrototype(ctx, val);
    80019c5c:	65c2                	ld	a1,16(sp)
    80019c5e:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:37196
}
    80019c60:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:37195
    return JS_GetPrototype(ctx, val);
    80019c62:	e71ff06f          	j	80019ad2 <JS_GetPrototype>

0000000080019c66 <JS_PreventExtensions>:
JS_PreventExtensions():
quickjs-nuttx/quickjs.c:7800
{
    80019c66:	711d                	addi	sp,sp,-96
    80019c68:	e8a2                	sd	s0,80(sp)
    80019c6a:	ec86                	sd	ra,88(sp)
    80019c6c:	e4a6                	sd	s1,72(sp)
    80019c6e:	e0ca                	sd	s2,64(sp)
    80019c70:	e02e                	sd	a1,0(sp)
    80019c72:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:7803
    if (unlikely(JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT))
    80019c74:	0006041b          	sext.w	s0,a2
    80019c78:	57fd                	li	a5,-1
    80019c7a:	0af41563          	bne	s0,a5,80019d24 <JS_PreventExtensions+0xbe>
quickjs-nuttx/quickjs.c:7806
    if (unlikely(p->class_id == JS_CLASS_PROXY))
    80019c7e:	0065d703          	lhu	a4,6(a1)
    80019c82:	03000793          	li	a5,48
    80019c86:	08f71863          	bne	a4,a5,80019d16 <JS_PreventExtensions+0xb0>
    80019c8a:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:7807
        return js_proxy_preventExtensions(ctx, obj);
    80019c8c:	e82e                	sd	a1,16(sp)
    80019c8e:	ec32                	sd	a2,24(sp)
js_proxy_preventExtensions():
quickjs-nuttx/quickjs.c:45874
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_preventExtensions);
    80019c90:	06300713          	li	a4,99
    80019c94:	862e                	mv	a2,a1
    80019c96:	100c                	addi	a1,sp,32
    80019c98:	892a                	mv	s2,a0
    80019c9a:	c99ff0ef          	jal	ra,80019932 <get_proxy_method>
    80019c9e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:45875
    if (!s)
    80019ca0:	c525                	beqz	a0,80019d08 <JS_PreventExtensions+0xa2>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80019ca2:	7622                	ld	a2,40(sp)
js_proxy_preventExtensions():
quickjs-nuttx/quickjs.c:45877
    if (JS_IsUndefined(method))
    80019ca4:	478d                	li	a5,3
    80019ca6:	0006071b          	sext.w	a4,a2
    80019caa:	00f71963          	bne	a4,a5,80019cbc <JS_PreventExtensions+0x56>
quickjs-nuttx/quickjs.c:45878
        return JS_PreventExtensions(ctx, s->target);
    80019cae:	610c                	ld	a1,0(a0)
    80019cb0:	6510                	ld	a2,8(a0)
    80019cb2:	854a                	mv	a0,s2
    80019cb4:	fb3ff0ef          	jal	ra,80019c66 <JS_PreventExtensions>
    80019cb8:	842a                	mv	s0,a0
JS_PreventExtensions():
quickjs-nuttx/quickjs.c:7807
        return js_proxy_preventExtensions(ctx, obj);
    80019cba:	a0b9                	j	80019d08 <JS_PreventExtensions+0xa2>
js_proxy_preventExtensions():
quickjs-nuttx/quickjs.c:45879
    ret = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    80019cbc:	6d18                	ld	a4,24(a0)
    80019cbe:	6914                	ld	a3,16(a0)
    80019cc0:	7582                	ld	a1,32(sp)
    80019cc2:	882a                	mv	a6,a0
    80019cc4:	4785                	li	a5,1
    80019cc6:	854a                	mv	a0,s2
    80019cc8:	dadfc0ef          	jal	ra,80016a74 <JS_CallFree>
    80019ccc:	f82a                	sd	a0,48(sp)
    80019cce:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:45880
    if (JS_IsException(ret))
    80019cd0:	0005871b          	sext.w	a4,a1
    80019cd4:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45879
    ret = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    80019cd6:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45880
    if (JS_IsException(ret))
    80019cd8:	02f70863          	beq	a4,a5,80019d08 <JS_PreventExtensions+0xa2>
quickjs-nuttx/quickjs.c:45882
    res = JS_ToBoolFree(ctx, ret);
    80019cdc:	85aa                	mv	a1,a0
    80019cde:	854a                	mv	a0,s2
    80019ce0:	e35f10ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80019ce4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:45883
    if (res) {
    80019ce6:	c10d                	beqz	a0,80019d08 <JS_PreventExtensions+0xa2>
quickjs-nuttx/quickjs.c:45884
        res2 = JS_IsExtensible(ctx, s->target);
    80019ce8:	608c                	ld	a1,0(s1)
    80019cea:	6490                	ld	a2,8(s1)
    80019cec:	854a                	mv	a0,s2
    80019cee:	ce1ff0ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:45885
        if (res2 < 0)
    80019cf2:	fc0543e3          	bltz	a0,80019cb8 <JS_PreventExtensions+0x52>
quickjs-nuttx/quickjs.c:45887
        if (res2) {
    80019cf6:	c909                	beqz	a0,80019d08 <JS_PreventExtensions+0xa2>
quickjs-nuttx/quickjs.c:45888
            JS_ThrowTypeError(ctx, "proxy: inconsistent preventExtensions");
    80019cf8:	00051597          	auipc	a1,0x51
    80019cfc:	8a058593          	addi	a1,a1,-1888 # 8006a598 <qjsc_repl+0x4fe8>
    80019d00:	854a                	mv	a0,s2
    80019d02:	96bfe0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:45889
            return -1;
    80019d06:	547d                	li	s0,-1
JS_PreventExtensions():
quickjs-nuttx/quickjs.c:7810
}
    80019d08:	60e6                	ld	ra,88(sp)
    80019d0a:	8522                	mv	a0,s0
    80019d0c:	6446                	ld	s0,80(sp)
    80019d0e:	64a6                	ld	s1,72(sp)
    80019d10:	6906                	ld	s2,64(sp)
    80019d12:	6125                	addi	sp,sp,96
    80019d14:	8082                	ret
quickjs-nuttx/quickjs.c:7808
    p->extensible = FALSE;
    80019d16:	0055c783          	lbu	a5,5(a1)
quickjs-nuttx/quickjs.c:7809
    return TRUE;
    80019d1a:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:7808
    p->extensible = FALSE;
    80019d1c:	9bf9                	andi	a5,a5,-2
    80019d1e:	00f582a3          	sb	a5,5(a1)
quickjs-nuttx/quickjs.c:7809
    return TRUE;
    80019d22:	b7dd                	j	80019d08 <JS_PreventExtensions+0xa2>
quickjs-nuttx/quickjs.c:7804
        return FALSE;
    80019d24:	4401                	li	s0,0
    80019d26:	b7cd                	j	80019d08 <JS_PreventExtensions+0xa2>

0000000080019d28 <js_object_preventExtensions>:
js_object_preventExtensions():
quickjs-nuttx/quickjs.c:37535
{
    80019d28:	711d                	addi	sp,sp,-96
    80019d2a:	e8a2                	sd	s0,80(sp)
    80019d2c:	ec86                	sd	ra,88(sp)
    80019d2e:	e4a6                	sd	s1,72(sp)
quickjs-nuttx/quickjs.c:37539
    obj = argv[0];
    80019d30:	630c                	ld	a1,0(a4)
    80019d32:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37535
{
    80019d34:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:37539
    obj = argv[0];
    80019d36:	e82e                	sd	a1,16(sp)
    80019d38:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:37540
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT) {
    80019d3a:	0006071b          	sext.w	a4,a2
    80019d3e:	57fd                	li	a5,-1
    80019d40:	02f70163          	beq	a4,a5,80019d62 <js_object_preventExtensions+0x3a>
quickjs-nuttx/quickjs.c:37541
        if (reflect)
    80019d44:	c419                	beqz	s0,80019d52 <js_object_preventExtensions+0x2a>
quickjs-nuttx/quickjs.c:37556
}
    80019d46:	6446                	ld	s0,80(sp)
    80019d48:	60e6                	ld	ra,88(sp)
    80019d4a:	64a6                	ld	s1,72(sp)
    80019d4c:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:37542
            return JS_ThrowTypeErrorNotAnObject(ctx);
    80019d4e:	eddfe06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:37556
}
    80019d52:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:37544
            return JS_DupValue(ctx, obj);
    80019d54:	6542                	ld	a0,16(sp)
    80019d56:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:37556
}
    80019d58:	60e6                	ld	ra,88(sp)
    80019d5a:	64a6                	ld	s1,72(sp)
    80019d5c:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:37544
            return JS_DupValue(ctx, obj);
    80019d5e:	ebcf006f          	j	8000a41a <JS_DupValue.constprop.0>
    80019d62:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:37546
    ret = JS_PreventExtensions(ctx, obj);
    80019d64:	f03ff0ef          	jal	ra,80019c66 <JS_PreventExtensions>
quickjs-nuttx/quickjs.c:37547
    if (ret < 0)
    80019d68:	00055c63          	bgez	a0,80019d80 <js_object_preventExtensions+0x58>
quickjs-nuttx/quickjs.c:37548
        return JS_EXCEPTION;
    80019d6c:	f002                	sd	zero,32(sp)
    80019d6e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37556
}
    80019d70:	60e6                	ld	ra,88(sp)
    80019d72:	6446                	ld	s0,80(sp)
    80019d74:	f43e                	sd	a5,40(sp)
    80019d76:	7502                	ld	a0,32(sp)
    80019d78:	75a2                	ld	a1,40(sp)
    80019d7a:	64a6                	ld	s1,72(sp)
    80019d7c:	6125                	addi	sp,sp,96
    80019d7e:	8082                	ret
quickjs-nuttx/quickjs.c:37549
    if (reflect) {
    80019d80:	c809                	beqz	s0,80019d92 <js_object_preventExtensions+0x6a>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80019d82:	00a03533          	snez	a0,a0
    80019d86:	da02                	sw	zero,52(sp)
    80019d88:	d82a                	sw	a0,48(sp)
    80019d8a:	77c2                	ld	a5,48(sp)
    80019d8c:	f03e                	sd	a5,32(sp)
    80019d8e:	4785                	li	a5,1
    80019d90:	b7c5                	j	80019d70 <js_object_preventExtensions+0x48>
js_object_preventExtensions():
quickjs-nuttx/quickjs.c:37552
        if (!ret)
    80019d92:	f161                	bnez	a0,80019d52 <js_object_preventExtensions+0x2a>
quickjs-nuttx/quickjs.c:37556
}
    80019d94:	6446                	ld	s0,80(sp)
    80019d96:	60e6                	ld	ra,88(sp)
quickjs-nuttx/quickjs.c:37553
            return JS_ThrowTypeError(ctx, "proxy preventExtensions handler returned false");
    80019d98:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:37556
}
    80019d9a:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:37553
            return JS_ThrowTypeError(ctx, "proxy preventExtensions handler returned false");
    80019d9c:	00051597          	auipc	a1,0x51
    80019da0:	82458593          	addi	a1,a1,-2012 # 8006a5c0 <qjsc_repl+0x5010>
quickjs-nuttx/quickjs.c:37556
}
    80019da4:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:37553
            return JS_ThrowTypeError(ctx, "proxy preventExtensions handler returned false");
    80019da6:	8c7fe06f          	j	8001866c <JS_ThrowTypeError>

0000000080019daa <JS_IsArray>:
JS_IsArray():
quickjs-nuttx/quickjs.c:12007
{
    80019daa:	7139                	addi	sp,sp,-64
    80019dac:	f822                	sd	s0,48(sp)
    80019dae:	f04a                	sd	s2,32(sp)
    80019db0:	0080                	addi	s0,sp,64
    80019db2:	fc06                	sd	ra,56(sp)
    80019db4:	f426                	sd	s1,40(sp)
    80019db6:	fcb43023          	sd	a1,-64(s0)
    80019dba:	fcc43423          	sd	a2,-56(s0)
quickjs-nuttx/quickjs.c:12009
    if (JS_VALUE_GET_TAG(val) == JS_TAG_OBJECT) {
    80019dbe:	0006091b          	sext.w	s2,a2
    80019dc2:	577d                	li	a4,-1
    80019dc4:	06e91763          	bne	s2,a4,80019e32 <JS_IsArray+0x88>
quickjs-nuttx/quickjs.c:12011
        if (unlikely(p->class_id == JS_CLASS_PROXY))
    80019dc8:	0065d703          	lhu	a4,6(a1)
    80019dcc:	03000693          	li	a3,48
    80019dd0:	84aa                	mv	s1,a0
    80019dd2:	852e                	mv	a0,a1
    80019dd4:	04d71b63          	bne	a4,a3,80019e2a <JS_IsArray+0x80>
    80019dd8:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:12012
            return js_proxy_isArray(ctx, val);
    80019dda:	fcb43823          	sd	a1,-48(s0)
    80019dde:	fcc43c23          	sd	a2,-40(s0)
js_proxy_isArray():
quickjs-nuttx/quickjs.c:46531
    JSProxyData *s = JS_GetOpaque(obj, JS_CLASS_PROXY);
    80019de2:	85be                	mv	a1,a5
    80019de4:	03000613          	li	a2,48
    80019de8:	8adf40ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:46532
    if (!s)
    80019dec:	c139                	beqz	a0,80019e32 <JS_IsArray+0x88>
quickjs-nuttx/quickjs.c:46534
    if (js_check_stack_overflow(ctx->rt, 0)) {
    80019dee:	6c9c                	ld	a5,24(s1)
    80019df0:	6ffc                	ld	a5,216(a5)
    80019df2:	00f47c63          	bgeu	s0,a5,80019e0a <JS_IsArray+0x60>
quickjs-nuttx/quickjs.c:46535
        JS_ThrowStackOverflow(ctx);
    80019df6:	8526                	mv	a0,s1
    80019df8:	b2bff0ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
JS_IsArray():
quickjs-nuttx/quickjs.c:12018
}
    80019dfc:	70e2                	ld	ra,56(sp)
    80019dfe:	7442                	ld	s0,48(sp)
    80019e00:	74a2                	ld	s1,40(sp)
    80019e02:	854a                	mv	a0,s2
    80019e04:	7902                	ld	s2,32(sp)
    80019e06:	6121                	addi	sp,sp,64
    80019e08:	8082                	ret
js_proxy_isArray():
quickjs-nuttx/quickjs.c:46538
    if (s->is_revoked) {
    80019e0a:	02154783          	lbu	a5,33(a0)
    80019e0e:	c789                	beqz	a5,80019e18 <JS_IsArray+0x6e>
quickjs-nuttx/quickjs.c:46539
        JS_ThrowTypeErrorRevokedProxy(ctx);
    80019e10:	8526                	mv	a0,s1
    80019e12:	90bff0ef          	jal	ra,8001971c <JS_ThrowTypeErrorRevokedProxy.isra.0>
quickjs-nuttx/quickjs.c:46540
        return -1;
    80019e16:	b7dd                	j	80019dfc <JS_IsArray+0x52>
JS_IsArray():
quickjs-nuttx/quickjs.c:12018
}
    80019e18:	7442                	ld	s0,48(sp)
js_proxy_isArray():
quickjs-nuttx/quickjs.c:46542
    return JS_IsArray(ctx, s->target);
    80019e1a:	610c                	ld	a1,0(a0)
    80019e1c:	6510                	ld	a2,8(a0)
JS_IsArray():
quickjs-nuttx/quickjs.c:12018
}
    80019e1e:	70e2                	ld	ra,56(sp)
    80019e20:	7902                	ld	s2,32(sp)
js_proxy_isArray():
quickjs-nuttx/quickjs.c:46542
    return JS_IsArray(ctx, s->target);
    80019e22:	8526                	mv	a0,s1
JS_IsArray():
quickjs-nuttx/quickjs.c:12018
}
    80019e24:	74a2                	ld	s1,40(sp)
    80019e26:	6121                	addi	sp,sp,64
js_proxy_isArray():
quickjs-nuttx/quickjs.c:46542
    return JS_IsArray(ctx, s->target);
    80019e28:	b749                	j	80019daa <JS_IsArray>
JS_IsArray():
quickjs-nuttx/quickjs.c:12014
            return p->class_id == JS_CLASS_ARRAY;
    80019e2a:	1779                	addi	a4,a4,-2
    80019e2c:	00173913          	seqz	s2,a4
    80019e30:	b7f1                	j	80019dfc <JS_IsArray+0x52>
quickjs-nuttx/quickjs.c:12016
        return FALSE;
    80019e32:	4901                	li	s2,0
    80019e34:	b7e1                	j	80019dfc <JS_IsArray+0x52>

0000000080019e36 <js_array_isArray>:
js_array_isArray():
quickjs-nuttx/quickjs.c:38955
    ret = JS_IsArray(ctx, argv[0]);
    80019e36:	630c                	ld	a1,0(a4)
    80019e38:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:38953
{
    80019e3a:	7139                	addi	sp,sp,-64
    80019e3c:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:38955
    ret = JS_IsArray(ctx, argv[0]);
    80019e3e:	f6dff0ef          	jal	ra,80019daa <JS_IsArray>
quickjs-nuttx/quickjs.c:38956
    if (ret < 0)
    80019e42:	00055a63          	bgez	a0,80019e56 <js_array_isArray+0x20>
quickjs-nuttx/quickjs.c:38957
        return JS_EXCEPTION;
    80019e46:	e802                	sd	zero,16(sp)
    80019e48:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38960
}
    80019e4a:	70e2                	ld	ra,56(sp)
    80019e4c:	ec3e                	sd	a5,24(sp)
    80019e4e:	6542                	ld	a0,16(sp)
    80019e50:	65e2                	ld	a1,24(sp)
    80019e52:	6121                	addi	sp,sp,64
    80019e54:	8082                	ret
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80019e56:	00a03533          	snez	a0,a0
    80019e5a:	d202                	sw	zero,36(sp)
    80019e5c:	d02a                	sw	a0,32(sp)
    80019e5e:	7782                	ld	a5,32(sp)
    80019e60:	e83e                	sd	a5,16(sp)
    80019e62:	4785                	li	a5,1
    80019e64:	b7dd                	j	80019e4a <js_array_isArray+0x14>

0000000080019e66 <__js_poll_interrupts>:
__js_poll_interrupts():
quickjs-nuttx/quickjs.c:6812
{
    80019e66:	1141                	addi	sp,sp,-16
    80019e68:	e022                	sd	s0,0(sp)
    80019e6a:	e406                	sd	ra,8(sp)
    80019e6c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:6814
    ctx->interrupt_counter = JS_INTERRUPT_COUNTER_INIT;
    80019e6e:	6789                	lui	a5,0x2
quickjs-nuttx/quickjs.c:6813
    JSRuntime *rt = ctx->rt;
    80019e70:	6d08                	ld	a0,24(a0)
quickjs-nuttx/quickjs.c:6814
    ctx->interrupt_counter = JS_INTERRUPT_COUNTER_INIT;
    80019e72:	71078793          	addi	a5,a5,1808 # 2710 <asinh-0x7fffd8f0>
    80019e76:	1af42623          	sw	a5,428(s0)
quickjs-nuttx/quickjs.c:6815
    if (rt->interrupt_handler) {
    80019e7a:	10053783          	ld	a5,256(a0)
    80019e7e:	e791                	bnez	a5,80019e8a <__js_poll_interrupts+0x24>
quickjs-nuttx/quickjs.c:6823
    return 0;
    80019e80:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:6824
}
    80019e82:	60a2                	ld	ra,8(sp)
    80019e84:	6402                	ld	s0,0(sp)
    80019e86:	0141                	addi	sp,sp,16
    80019e88:	8082                	ret
quickjs-nuttx/quickjs.c:6816
        if (rt->interrupt_handler(rt, rt->interrupt_opaque)) {
    80019e8a:	10853583          	ld	a1,264(a0)
    80019e8e:	9782                	jalr	a5
    80019e90:	d965                	beqz	a0,80019e80 <__js_poll_interrupts+0x1a>
quickjs-nuttx/quickjs.c:6818
            JS_ThrowInternalError(ctx, "interrupted");
    80019e92:	00050597          	auipc	a1,0x50
    80019e96:	75e58593          	addi	a1,a1,1886 # 8006a5f0 <qjsc_repl+0x5040>
    80019e9a:	8522                	mv	a0,s0
    80019e9c:	a5dff0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:6819
            JS_SetUncatchableError(ctx, ctx->rt->current_exception, TRUE);
    80019ea0:	6c1c                	ld	a5,24(s0)
    80019ea2:	8522                	mv	a0,s0
    80019ea4:	4685                	li	a3,1
    80019ea6:	73ec                	ld	a1,224(a5)
    80019ea8:	77f0                	ld	a2,232(a5)
    80019eaa:	f9ef40ef          	jal	ra,8000e648 <JS_SetUncatchableError>
quickjs-nuttx/quickjs.c:6820
            return -1;
    80019eae:	557d                	li	a0,-1
    80019eb0:	bfc9                	j	80019e82 <__js_poll_interrupts+0x1c>

0000000080019eb2 <js_poll_interrupts>:
js_poll_interrupts():
quickjs-nuttx/quickjs.c:6828
    if (unlikely(--ctx->interrupt_counter <= 0)) {
    80019eb2:	1ac52703          	lw	a4,428(a0)
    80019eb6:	fff7069b          	addiw	a3,a4,-1
    80019eba:	1ad52623          	sw	a3,428(a0)
    80019ebe:	00d04463          	bgtz	a3,80019ec6 <js_poll_interrupts+0x14>
quickjs-nuttx/quickjs.c:6829
        return __js_poll_interrupts(ctx);
    80019ec2:	fa5ff06f          	j	80019e66 <__js_poll_interrupts>
quickjs-nuttx/quickjs.c:6833
}
    80019ec6:	4501                	li	a0,0
    80019ec8:	8082                	ret

0000000080019eca <JS_OrdinaryIsInstanceOf>:
JS_OrdinaryIsInstanceOf():
quickjs-nuttx/quickjs.c:6983
{
    80019eca:	7135                	addi	sp,sp,-160
    80019ecc:	f02e                	sd	a1,32(sp)
    80019ece:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:6989
    if (!JS_IsFunction(ctx, obj))
    80019ed0:	85b6                	mv	a1,a3
    80019ed2:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:6983
{
    80019ed4:	e526                	sd	s1,136(sp)
    80019ed6:	fcce                	sd	s3,120(sp)
    80019ed8:	ed06                	sd	ra,152(sp)
    80019eda:	e922                	sd	s0,144(sp)
    80019edc:	e14a                	sd	s2,128(sp)
    80019ede:	f8d2                	sd	s4,112(sp)
    80019ee0:	f4d6                	sd	s5,104(sp)
    80019ee2:	89aa                	mv	s3,a0
    80019ee4:	e836                	sd	a3,16(sp)
    80019ee6:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:6989
    if (!JS_IsFunction(ctx, obj))
    80019ee8:	dbaf40ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80019eec:	84aa                	mv	s1,a0
    80019eee:	cd2d                	beqz	a0,80019f68 <JS_OrdinaryIsInstanceOf+0x9e>
    80019ef0:	6742                	ld	a4,16(sp)
quickjs-nuttx/quickjs.c:6992
    if (p->class_id == JS_CLASS_BOUND_FUNCTION) {
    80019ef2:	47b9                	li	a5,14
    80019ef4:	00675683          	lhu	a3,6(a4)
    80019ef8:	02f69163          	bne	a3,a5,80019f1a <JS_OrdinaryIsInstanceOf+0x50>
quickjs-nuttx/quickjs.c:6994
        return JS_IsInstanceOf(ctx, val, s->func_obj);
    80019efc:	7b1c                	ld	a5,48(a4)
quickjs-nuttx/quickjs.c:7052
}
    80019efe:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:6994
        return JS_IsInstanceOf(ctx, val, s->func_obj);
    80019f00:	7582                	ld	a1,32(sp)
    80019f02:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:7052
}
    80019f04:	60ea                	ld	ra,152(sp)
    80019f06:	64aa                	ld	s1,136(sp)
    80019f08:	690a                	ld	s2,128(sp)
    80019f0a:	7a46                	ld	s4,112(sp)
    80019f0c:	7aa6                	ld	s5,104(sp)
quickjs-nuttx/quickjs.c:6994
        return JS_IsInstanceOf(ctx, val, s->func_obj);
    80019f0e:	6394                	ld	a3,0(a5)
    80019f10:	6798                	ld	a4,8(a5)
    80019f12:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:7052
}
    80019f14:	79e6                	ld	s3,120(sp)
    80019f16:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:6994
        return JS_IsInstanceOf(ctx, val, s->func_obj);
    80019f18:	a0cd                	j	80019ffa <JS_IsInstanceOf>
quickjs-nuttx/quickjs.c:6998
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80019f1a:	54a2                	lw	s1,40(sp)
    80019f1c:	57fd                	li	a5,-1
    80019f1e:	0cf49c63          	bne	s1,a5,80019ff6 <JS_OrdinaryIsInstanceOf+0x12c>
quickjs-nuttx/quickjs.c:7000
    obj_proto = JS_GetProperty(ctx, obj, JS_ATOM_prototype);
    80019f22:	67e2                	ld	a5,24(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80019f24:	4801                	li	a6,0
    80019f26:	03c00693          	li	a3,60
    80019f2a:	85ba                	mv	a1,a4
    80019f2c:	863e                	mv	a2,a5
    80019f2e:	854e                	mv	a0,s3
    80019f30:	e0ba                	sd	a4,64(sp)
    80019f32:	e4be                	sd	a5,72(sp)
    80019f34:	b77fc0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80019f38:	e8aa                	sd	a0,80(sp)
    80019f3a:	ecae                	sd	a1,88(sp)
    80019f3c:	f82a                	sd	a0,48(sp)
    80019f3e:	fc2e                	sd	a1,56(sp)
JS_OrdinaryIsInstanceOf():
quickjs-nuttx/quickjs.c:7001
    if (JS_VALUE_GET_TAG(obj_proto) != JS_TAG_OBJECT) {
    80019f40:	0005891b          	sext.w	s2,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80019f44:	8a2a                	mv	s4,a0
JS_OrdinaryIsInstanceOf():
quickjs-nuttx/quickjs.c:7001
    80019f46:	02990b63          	beq	s2,s1,80019f7c <JS_OrdinaryIsInstanceOf+0xb2>
quickjs-nuttx/quickjs.c:7002
        if (!JS_IsException(obj_proto))
    80019f4a:	4799                	li	a5,6
    80019f4c:	00f90963          	beq	s2,a5,80019f5e <JS_OrdinaryIsInstanceOf+0x94>
quickjs-nuttx/quickjs.c:7003
            JS_ThrowTypeError(ctx, "operand 'prototype' property is not an object");
    80019f50:	00050597          	auipc	a1,0x50
    80019f54:	6b058593          	addi	a1,a1,1712 # 8006a600 <qjsc_repl+0x5050>
    80019f58:	854e                	mv	a0,s3
    80019f5a:	f12fe0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:7050
    JS_FreeValue(ctx, obj_proto);
    80019f5e:	75c2                	ld	a1,48(sp)
    80019f60:	7662                	ld	a2,56(sp)
    80019f62:	854e                	mv	a0,s3
    80019f64:	83bf10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7052
}
    80019f68:	60ea                	ld	ra,152(sp)
    80019f6a:	644a                	ld	s0,144(sp)
    80019f6c:	690a                	ld	s2,128(sp)
    80019f6e:	79e6                	ld	s3,120(sp)
    80019f70:	7a46                	ld	s4,112(sp)
    80019f72:	7aa6                	ld	s5,104(sp)
    80019f74:	8526                	mv	a0,s1
    80019f76:	64aa                	ld	s1,136(sp)
    80019f78:	610d                	addi	sp,sp,160
    80019f7a:	8082                	ret
quickjs-nuttx/quickjs.c:7008
    p = JS_VALUE_GET_OBJ(val);
    80019f7c:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:7010
        proto1 = p->shape->proto;
    80019f7e:	843e                	mv	s0,a5
    80019f80:	6f9c                	ld	a5,24(a5)
    80019f82:	7f9c                	ld	a5,56(a5)
quickjs-nuttx/quickjs.c:7011
        if (!proto1) {
    80019f84:	e7ad                	bnez	a5,80019fee <JS_OrdinaryIsInstanceOf+0x124>
quickjs-nuttx/quickjs.c:7013
            if (unlikely(p->class_id == JS_CLASS_PROXY)) {
    80019f86:	00645703          	lhu	a4,6(s0)
    80019f8a:	03000793          	li	a5,48
quickjs-nuttx/quickjs.c:7039
                ret = FALSE;
    80019f8e:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:7013
            if (unlikely(p->class_id == JS_CLASS_PROXY)) {
    80019f90:	fcf717e3          	bne	a4,a5,80019f5e <JS_OrdinaryIsInstanceOf+0x94>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80019f94:	401c                	lw	a5,0(s0)
    80019f96:	567d                	li	a2,-1
JS_OrdinaryIsInstanceOf():
quickjs-nuttx/quickjs.c:7018
                    if (JS_IsException(obj1)) {
    80019f98:	4499                	li	s1,6
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    80019f9a:	2785                	addiw	a5,a5,1
    80019f9c:	c01c                	sw	a5,0(s0)
JS_OrdinaryIsInstanceOf():
quickjs-nuttx/quickjs.c:7022
                    if (JS_IsNull(obj1)) {
    80019f9e:	4a89                	li	s5,2
quickjs-nuttx/quickjs.c:7017
                    obj1 = JS_GetPrototypeFree(ctx, obj1);
    80019fa0:	85a2                	mv	a1,s0
    80019fa2:	854e                	mv	a0,s3
    80019fa4:	e0a2                	sd	s0,64(sp)
    80019fa6:	e4b2                	sd	a2,72(sp)
    80019fa8:	c67ff0ef          	jal	ra,80019c0e <JS_GetPrototypeFree>
    80019fac:	e0aa                	sd	a0,64(sp)
    80019fae:	e4ae                	sd	a1,72(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80019fb0:	0005879b          	sext.w	a5,a1
JS_OrdinaryIsInstanceOf():
quickjs-nuttx/quickjs.c:7017
    80019fb4:	842a                	mv	s0,a0
    80019fb6:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:7018
                    if (JS_IsException(obj1)) {
    80019fb8:	00978b63          	beq	a5,s1,80019fce <JS_OrdinaryIsInstanceOf+0x104>
quickjs-nuttx/quickjs.c:7022
                    if (JS_IsNull(obj1)) {
    80019fbc:	03578763          	beq	a5,s5,80019fea <JS_OrdinaryIsInstanceOf+0x120>
quickjs-nuttx/quickjs.c:7026
                    if (proto == JS_VALUE_GET_OBJ(obj1)) {
    80019fc0:	00aa1963          	bne	s4,a0,80019fd2 <JS_OrdinaryIsInstanceOf+0x108>
quickjs-nuttx/quickjs.c:7027
                        JS_FreeValue(ctx, obj1);
    80019fc4:	85d2                	mv	a1,s4
    80019fc6:	854e                	mv	a0,s3
    80019fc8:	fd6f10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7028
                        ret = TRUE;
    80019fcc:	4905                	li	s2,1
    80019fce:	84ca                	mv	s1,s2
    80019fd0:	b779                	j	80019f5e <JS_OrdinaryIsInstanceOf+0x94>
quickjs-nuttx/quickjs.c:7032
                    if (js_poll_interrupts(ctx)) {
    80019fd2:	854e                	mv	a0,s3
    80019fd4:	e42e                	sd	a1,8(sp)
    80019fd6:	eddff0ef          	jal	ra,80019eb2 <js_poll_interrupts>
    80019fda:	6622                	ld	a2,8(sp)
    80019fdc:	d171                	beqz	a0,80019fa0 <JS_OrdinaryIsInstanceOf+0xd6>
quickjs-nuttx/quickjs.c:7033
                        JS_FreeValue(ctx, obj1);
    80019fde:	6586                	ld	a1,64(sp)
    80019fe0:	6626                	ld	a2,72(sp)
    80019fe2:	854e                	mv	a0,s3
    80019fe4:	fbaf10ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:7035
                        break;
    80019fe8:	b7dd                	j	80019fce <JS_OrdinaryIsInstanceOf+0x104>
quickjs-nuttx/quickjs.c:7023
                        ret = FALSE;
    80019fea:	4901                	li	s2,0
    80019fec:	b7cd                	j	80019fce <JS_OrdinaryIsInstanceOf+0x104>
quickjs-nuttx/quickjs.c:7044
        if (proto == p) {
    80019fee:	f94798e3          	bne	a5,s4,80019f7e <JS_OrdinaryIsInstanceOf+0xb4>
quickjs-nuttx/quickjs.c:7045
            ret = TRUE;
    80019ff2:	4485                	li	s1,1
    80019ff4:	b7ad                	j	80019f5e <JS_OrdinaryIsInstanceOf+0x94>
quickjs-nuttx/quickjs.c:6990
        return FALSE;
    80019ff6:	4481                	li	s1,0
    80019ff8:	bf85                	j	80019f68 <JS_OrdinaryIsInstanceOf+0x9e>

0000000080019ffa <JS_IsInstanceOf>:
JS_IsInstanceOf():
quickjs-nuttx/quickjs.c:7056
{
    80019ffa:	7159                	addi	sp,sp,-112
    80019ffc:	f0a2                	sd	s0,96(sp)
    80019ffe:	eca6                	sd	s1,88(sp)
