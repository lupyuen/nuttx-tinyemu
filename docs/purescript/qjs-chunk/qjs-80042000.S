    80041000:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80041004:	862e                	mv	a2,a1
js_call_binary_op_simple():
quickjs-nuttx/quickjs.c:12642
    if (JS_IsException(opset1_obj))
    80041006:	09578c63          	beq	a5,s5,8004109e <js_binary_arith_bigint+0x264>
quickjs-nuttx/quickjs.c:12644
    if (JS_IsUndefined(opset1_obj))
    8004100a:	470d                	li	a4,3
    8004100c:	02e78963          	beq	a5,a4,8004103e <js_binary_arith_bigint+0x204>
quickjs-nuttx/quickjs.c:12646
    opset1 = JS_GetOpaque2(ctx, opset1_obj, JS_CLASS_OPERATOR_SET);
    80041010:	85aa                	mv	a1,a0
    80041012:	02500693          	li	a3,37
    80041016:	8526                	mv	a0,s1
    80041018:	fd6d70ef          	jal	ra,800187ee <JS_GetOpaque2>
    8004101c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12647
    if (!opset1)
    8004101e:	c141                	beqz	a0,8004109e <js_binary_arith_bigint+0x264>
quickjs-nuttx/quickjs.c:12649
    ovop = get_ovop_from_opcode(op);
    80041020:	855a                	mv	a0,s6
    80041022:	aa7c70ef          	jal	ra,80008ac8 <get_ovop_from_opcode>
quickjs-nuttx/quickjs.c:12651
    p = opset1->self_ops[ovop];
    80041026:	02051793          	slli	a5,a0,0x20
    8004102a:	01d7d513          	srli	a0,a5,0x1d
    8004102e:	942a                	add	s0,s0,a0
    80041030:	6400                	ld	s0,8(s0)
quickjs-nuttx/quickjs.c:12652
    if (!p) {
    80041032:	ec05                	bnez	s0,8004106a <js_binary_arith_bigint+0x230>
quickjs-nuttx/quickjs.c:12653
        JS_FreeValue(ctx, opset1_obj);
    80041034:	75a6                	ld	a1,104(sp)
    80041036:	7646                	ld	a2,112(sp)
    80041038:	8526                	mv	a0,s1
    8004103a:	f64ca0ef          	jal	ra,8000b79e <JS_FreeValue>
js_binary_arith_bigint():
quickjs-nuttx/quickjs.c:13127
                res = JS_NewBigFloat(ctx);
    8004103e:	8526                	mv	a0,s1
    80041040:	940d90ef          	jal	ra,8001a180 <JS_NewBigFloat>
    80041044:	f42a                	sd	a0,40(sp)
    80041046:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:13128
                if (JS_IsException(res)) {
    80041048:	0005871b          	sext.w	a4,a1
    8004104c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:13127
                res = JS_NewBigFloat(ctx);
    8004104e:	8aaa                	mv	s5,a0
    80041050:	8bae                	mv	s7,a1
    80041052:	8c2a                	mv	s8,a0
    80041054:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:13128
                if (JS_IsException(res)) {
    80041056:	10f71063          	bne	a4,a5,80041156 <js_binary_arith_bigint+0x31c>
quickjs-nuttx/quickjs.c:13129
                    JS_FreeBigInt(ctx, a, &a_s);
    8004105a:	09b0                	addi	a2,sp,216
    8004105c:	85ce                	mv	a1,s3
    8004105e:	8526                	mv	a0,s1
    80041060:	bc7ca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13130
                    JS_FreeBigInt(ctx, b, &b_s);
    80041064:	0210                	addi	a2,sp,256
    80041066:	85ca                	mv	a1,s2
    80041068:	bd05                	j	80040e98 <js_binary_arith_bigint+0x5e>
js_call_binary_op_simple():
quickjs-nuttx/quickjs.c:12657
    new_op1 = JS_ToNumeric(ctx, op1);
    8004106a:	65a6                	ld	a1,72(sp)
    8004106c:	6646                	ld	a2,80(sp)
    8004106e:	8526                	mv	a0,s1
    80041070:	e8fe30ef          	jal	ra,80024efe <JS_ToNumeric>
    80041074:	f12e                	sd	a1,160(sp)
    80041076:	ed2a                	sd	a0,152(sp)
quickjs-nuttx/quickjs.c:12658
    if (JS_IsException(new_op1))
    80041078:	2581                	sext.w	a1,a1
    8004107a:	03558263          	beq	a1,s5,8004109e <js_binary_arith_bigint+0x264>
quickjs-nuttx/quickjs.c:12660
    new_op2 = JS_ToNumeric(ctx, op2);
    8004107e:	65e6                	ld	a1,88(sp)
    80041080:	7606                	ld	a2,96(sp)
    80041082:	8526                	mv	a0,s1
    80041084:	e7be30ef          	jal	ra,80024efe <JS_ToNumeric>
    80041088:	f52a                	sd	a0,168(sp)
    8004108a:	f92e                	sd	a1,176(sp)
quickjs-nuttx/quickjs.c:12661
    if (JS_IsException(new_op2)) {
    8004108c:	0005879b          	sext.w	a5,a1
    80041090:	03579063          	bne	a5,s5,800410b0 <js_binary_arith_bigint+0x276>
quickjs-nuttx/quickjs.c:12662
        JS_FreeValue(ctx, new_op1);
    80041094:	65ea                	ld	a1,152(sp)
    80041096:	760a                	ld	a2,160(sp)
    80041098:	8526                	mv	a0,s1
    8004109a:	f04ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12678
    JS_FreeValue(ctx, opset1_obj);
    8004109e:	75a6                	ld	a1,104(sp)
    800410a0:	7646                	ld	a2,112(sp)
    800410a2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:12679
    *pret = JS_UNDEFINED;
    800410a4:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:12678
    JS_FreeValue(ctx, opset1_obj);
    800410a6:	ef8ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12679
    *pret = JS_UNDEFINED;
    800410aa:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:12680
    return -1;
    800410ac:	547d                	li	s0,-1
    800410ae:	a899                	j	80041104 <js_binary_arith_bigint+0x2ca>
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    800410b0:	401c                	lw	a5,0(s0)
js_call_binary_op_simple():
quickjs-nuttx/quickjs.c:12669
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    800410b2:	12810813          	addi	a6,sp,296
    800410b6:	4681                	li	a3,0
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    800410b8:	2785                	addiw	a5,a5,1
    800410ba:	c01c                	sw	a5,0(s0)
js_call_binary_op_simple():
quickjs-nuttx/quickjs.c:12667
    args[0] = new_op1;
    800410bc:	67ea                	ld	a5,152(sp)
quickjs-nuttx/quickjs.c:12669
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    800410be:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:12668
    args[1] = new_op2;
    800410c0:	fe2a                	sd	a0,312(sp)
quickjs-nuttx/quickjs.c:12667
    args[0] = new_op1;
    800410c2:	f63e                	sd	a5,296(sp)
    800410c4:	778a                	ld	a5,160(sp)
quickjs-nuttx/quickjs.c:12668
    args[1] = new_op2;
    800410c6:	e2ae                	sd	a1,320(sp)
quickjs-nuttx/quickjs.c:12669
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    800410c8:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:12667
    args[0] = new_op1;
    800410ca:	fa3e                	sd	a5,304(sp)
quickjs-nuttx/quickjs.c:12669
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    800410cc:	85a2                	mv	a1,s0
    800410ce:	4789                	li	a5,2
    800410d0:	8526                	mv	a0,s1
    800410d2:	9a3d50ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:12670
    JS_FreeValue(ctx, new_op1);
    800410d6:	760a                	ld	a2,160(sp)
quickjs-nuttx/quickjs.c:12669
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    800410d8:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:12670
    JS_FreeValue(ctx, new_op1);
    800410da:	65ea                	ld	a1,152(sp)
quickjs-nuttx/quickjs.c:12669
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    800410dc:	e52a                	sd	a0,136(sp)
quickjs-nuttx/quickjs.c:12670
    JS_FreeValue(ctx, new_op1);
    800410de:	8526                	mv	a0,s1
    800410e0:	ebeca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12671
    JS_FreeValue(ctx, new_op2);
    800410e4:	75aa                	ld	a1,168(sp)
    800410e6:	764a                	ld	a2,176(sp)
    800410e8:	8526                	mv	a0,s1
    800410ea:	eb4ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12672
    if (JS_IsException(ret))
    800410ee:	000b079b          	sext.w	a5,s6
    800410f2:	fb5786e3          	beq	a5,s5,8004109e <js_binary_arith_bigint+0x264>
quickjs-nuttx/quickjs.c:12674
    JS_FreeValue(ctx, opset1_obj);
    800410f6:	75a6                	ld	a1,104(sp)
    800410f8:	7646                	ld	a2,112(sp)
    800410fa:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:12676
    return 1;
    800410fc:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:12674
    JS_FreeValue(ctx, opset1_obj);
    800410fe:	ea0ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12675
    *pret = ret;
    80041102:	6aaa                	ld	s5,136(sp)
js_binary_arith_bigint():
quickjs-nuttx/quickjs.c:13114
                    JS_FreeBigInt(ctx, a, &a_s);
    80041104:	09b0                	addi	a2,sp,216
    80041106:	85ce                	mv	a1,s3
    80041108:	8526                	mv	a0,s1
    8004110a:	b1dca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13115
                    JS_FreeBigInt(ctx, b, &b_s);
    8004110e:	0210                	addi	a2,sp,256
    80041110:	85ca                	mv	a1,s2
    80041112:	8526                	mv	a0,s1
    80041114:	b13ca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13116
                    JS_FreeValue(ctx, op1);
    80041118:	65c2                	ld	a1,16(sp)
    8004111a:	6662                	ld	a2,24(sp)
    8004111c:	8526                	mv	a0,s1
    8004111e:	e80ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13117
                    JS_FreeValue(ctx, op2);
    80041122:	6582                	ld	a1,0(sp)
    80041124:	6622                	ld	a2,8(sp)
    80041126:	8526                	mv	a0,s1
    80041128:	e76ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13118
                    if (ret < 0) {
    8004112c:	57fd                	li	a5,-1
    8004112e:	00f40763          	beq	s0,a5,8004113c <js_binary_arith_bigint+0x302>
quickjs-nuttx/quickjs.c:13121
                        *pres = res;
    80041132:	015a3023          	sd	s5,0(s4)
    80041136:	016a3423          	sd	s6,8(s4)
quickjs-nuttx/quickjs.c:13122
                        return 0;
    8004113a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:13211
}
    8004113c:	60fa                	ld	ra,408(sp)
    8004113e:	8522                	mv	a0,s0
    80041140:	645a                	ld	s0,400(sp)
    80041142:	64ba                	ld	s1,392(sp)
    80041144:	691a                	ld	s2,384(sp)
    80041146:	79f6                	ld	s3,376(sp)
    80041148:	7a56                	ld	s4,368(sp)
    8004114a:	7ab6                	ld	s5,360(sp)
    8004114c:	7b16                	ld	s6,352(sp)
    8004114e:	6bf6                	ld	s7,344(sp)
    80041150:	6c56                	ld	s8,336(sp)
    80041152:	611d                	addi	sp,sp,416
    80041154:	8082                	ret
quickjs-nuttx/quickjs.c:13134
                if (op == OP_div) {
    80041156:	09c00793          	li	a5,156
quickjs-nuttx/quickjs.c:13135
                    ret = bf_div(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags) & BF_ST_MEM_ERROR;
    8004115a:	1984b683          	ld	a3,408(s1)
    8004115e:	1a04a703          	lw	a4,416(s1)
JS_GetBigFloat():
quickjs-nuttx/quickjs.c:1157
    return &p->num;
    80041162:	0521                	addi	a0,a0,8
js_binary_arith_bigint():
quickjs-nuttx/quickjs.c:13134
                if (op == OP_div) {
    80041164:	04fb1863          	bne	s6,a5,800411b4 <js_binary_arith_bigint+0x37a>
quickjs-nuttx/quickjs.c:13135
                    ret = bf_div(r, a, b, ctx->fp_env.prec, ctx->fp_env.flags) & BF_ST_MEM_ERROR;
    80041168:	864a                	mv	a2,s2
    8004116a:	85ce                	mv	a1,s3
    8004116c:	245170ef          	jal	ra,80058bb0 <bf_div>
quickjs-nuttx/quickjs.c:13137
                    ret = bf_pow(r, a, b, ctx->fp_env.prec,
    80041170:	02057413          	andi	s0,a0,32
quickjs-nuttx/quickjs.c:13140
                JS_FreeBigInt(ctx, a, &a_s);
    80041174:	09b0                	addi	a2,sp,216
    80041176:	85ce                	mv	a1,s3
    80041178:	8526                	mv	a0,s1
    8004117a:	aadca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13141
                JS_FreeBigInt(ctx, b, &b_s);
    8004117e:	0210                	addi	a2,sp,256
    80041180:	85ca                	mv	a1,s2
    80041182:	8526                	mv	a0,s1
    80041184:	aa3ca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13142
                JS_FreeValue(ctx, op1);
    80041188:	65c2                	ld	a1,16(sp)
    8004118a:	6662                	ld	a2,24(sp)
    8004118c:	8526                	mv	a0,s1
    8004118e:	e10ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13143
                JS_FreeValue(ctx, op2);
    80041192:	6582                	ld	a1,0(sp)
    80041194:	6622                	ld	a2,8(sp)
    80041196:	8526                	mv	a0,s1
    80041198:	e06ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13144
                if (unlikely(ret)) {
    8004119c:	c01d                	beqz	s0,800411c2 <js_binary_arith_bigint+0x388>
quickjs-nuttx/quickjs.c:13145
                    JS_FreeValue(ctx, res);
    8004119e:	75a2                	ld	a1,40(sp)
    800411a0:	7642                	ld	a2,48(sp)
    800411a2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:13200
        JS_FreeValue(ctx, res);
    800411a4:	dfaca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13201
        throw_bf_exception(ctx, ret);
    800411a8:	85a2                	mv	a1,s0
    800411aa:	8526                	mv	a0,s1
    800411ac:	a1add0ef          	jal	ra,8001e3c6 <throw_bf_exception>
quickjs-nuttx/quickjs.c:13210
    return -1;
    800411b0:	547d                	li	s0,-1
    800411b2:	b769                	j	8004113c <js_binary_arith_bigint+0x302>
quickjs-nuttx/quickjs.c:13137
                    ret = bf_pow(r, a, b, ctx->fp_env.prec,
    800411b4:	67c1                	lui	a5,0x10
    800411b6:	8f5d                	or	a4,a4,a5
    800411b8:	864a                	mv	a2,s2
    800411ba:	85ce                	mv	a1,s3
    800411bc:	5161d0ef          	jal	ra,8005e6d2 <bf_pow>
    800411c0:	bf45                	j	80041170 <js_binary_arith_bigint+0x336>
quickjs-nuttx/quickjs.c:13149
                *pres = res;
    800411c2:	015a3023          	sd	s5,0(s4)
    800411c6:	017a3423          	sd	s7,8(s4)
quickjs-nuttx/quickjs.c:13150
                return 0;
    800411ca:	bf8d                	j	8004113c <js_binary_arith_bigint+0x302>
quickjs-nuttx/quickjs.c:13156
            ret = bf_pow(r, a, b, BF_PREC_INF, BF_RNDZ | BF_POW_JS_QUIRKS);
    800411cc:	6741                	lui	a4,0x10
    800411ce:	56fd                	li	a3,-1
    800411d0:	862a                	mv	a2,a0
    800411d2:	0705                	addi	a4,a4,1
    800411d4:	8289                	srli	a3,a3,0x2
    800411d6:	85ce                	mv	a1,s3
    800411d8:	8556                	mv	a0,s5
    800411da:	4f81d0ef          	jal	ra,8005e6d2 <bf_pow>
    800411de:	bb29                	j	80040ef8 <js_binary_arith_bigint+0xbe>
quickjs-nuttx/quickjs.c:13170
            bf_get_int64(&v2, b, 0);
    800411e0:	85aa                	mv	a1,a0
    800411e2:	4601                	li	a2,0
    800411e4:	1228                	addi	a0,sp,296
    800411e6:	689170ef          	jal	ra,8005906e <bf_get_int64>
quickjs-nuttx/quickjs.c:13171
            if (v2 == INT64_MIN)
    800411ea:	77b2                	ld	a5,296(sp)
    800411ec:	577d                	li	a4,-1
    800411ee:	177e                	slli	a4,a4,0x3f
    800411f0:	00e79463          	bne	a5,a4,800411f8 <js_binary_arith_bigint+0x3be>
quickjs-nuttx/quickjs.c:13172
                v2 = INT64_MIN + 1;
    800411f4:	0785                	addi	a5,a5,1
    800411f6:	f63e                	sd	a5,296(sp)
quickjs-nuttx/quickjs.c:13174
            if (op == OP_sar)
    800411f8:	0a200793          	li	a5,162
    800411fc:	00fb1663          	bne	s6,a5,80041208 <js_binary_arith_bigint+0x3ce>
quickjs-nuttx/quickjs.c:13175
                v2 = -v2;
    80041200:	77b2                	ld	a5,296(sp)
    80041202:	40f007b3          	neg	a5,a5
    80041206:	f63e                	sd	a5,296(sp)
quickjs-nuttx/quickjs.c:13176
            ret = bf_set(r, a);
    80041208:	85ce                	mv	a1,s3
    8004120a:	8556                	mv	a0,s5
    8004120c:	617160ef          	jal	ra,80058022 <bf_set>
quickjs-nuttx/quickjs.c:13177
            ret |= bf_mul_2exp(r, v2, BF_PREC_INF, BF_RNDZ);
    80041210:	75b2                	ld	a1,296(sp)
    80041212:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:13176
            ret = bf_set(r, a);
    80041214:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13177
            ret |= bf_mul_2exp(r, v2, BF_PREC_INF, BF_RNDZ);
    80041216:	4685                	li	a3,1
    80041218:	8209                	srli	a2,a2,0x2
    8004121a:	8556                	mv	a0,s5
    8004121c:	06b170ef          	jal	ra,80058a86 <bf_mul_2exp>
quickjs-nuttx/quickjs.c:13178
            if (v2 < 0) {
    80041220:	77b2                	ld	a5,296(sp)
quickjs-nuttx/quickjs.c:13177
            ret |= bf_mul_2exp(r, v2, BF_PREC_INF, BF_RNDZ);
    80041222:	8c49                	or	s0,s0,a0
    80041224:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:13178
            if (v2 < 0) {
    80041226:	cc07dae3          	bgez	a5,80040efa <js_binary_arith_bigint+0xc0>
quickjs-nuttx/quickjs.c:13179
                ret |= bf_rint(r, BF_RNDD) & (BF_ST_OVERFLOW | BF_ST_MEM_ERROR);
    8004122a:	4589                	li	a1,2
    8004122c:	8556                	mv	a0,s5
    8004122e:	40b170ef          	jal	ra,80058e38 <bf_rint>
    80041232:	02457513          	andi	a0,a0,36
    80041236:	8c49                	or	s0,s0,a0
quickjs-nuttx/quickjs.c:13182
        break;
    80041238:	b1c9                	j	80040efa <js_binary_arith_bigint+0xc0>
quickjs-nuttx/quickjs.c:13184
        ret = bf_logic_and(r, a, b);
    8004123a:	862a                	mv	a2,a0
    8004123c:	85ce                	mv	a1,s3
    8004123e:	8556                	mv	a0,s5
    80041240:	40f170ef          	jal	ra,80058e4e <bf_logic_and>
    80041244:	b955                	j	80040ef8 <js_binary_arith_bigint+0xbe>
quickjs-nuttx/quickjs.c:13187
        ret = bf_logic_or(r, a, b);
    80041246:	862a                	mv	a2,a0
    80041248:	85ce                	mv	a1,s3
    8004124a:	8556                	mv	a0,s5
    8004124c:	3f7170ef          	jal	ra,80058e42 <bf_logic_or>
    80041250:	b165                	j	80040ef8 <js_binary_arith_bigint+0xbe>
quickjs-nuttx/quickjs.c:13190
        ret = bf_logic_xor(r, a, b);
    80041252:	862a                	mv	a2,a0
    80041254:	85ce                	mv	a1,s3
    80041256:	8556                	mv	a0,s5
    80041258:	3f1170ef          	jal	ra,80058e48 <bf_logic_xor>
    8004125c:	b971                	j	80040ef8 <js_binary_arith_bigint+0xbe>
quickjs-nuttx/quickjs.c:13193
        abort();
    8004125e:	125210ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:13107
                ret = BF_ST_INVALID_OP;
    80041262:	4405                	li	s0,1
    80041264:	b959                	j	80040efa <js_binary_arith_bigint+0xc0>

0000000080041266 <js_string_split>:
js_string_split():
quickjs-nuttx/quickjs.c:42069
{
    80041266:	714d                	addi	sp,sp,-336
    80041268:	fa4a                	sd	s2,304(sp)
    8004126a:	e686                	sd	ra,328(sp)
    8004126c:	e2a2                	sd	s0,320(sp)
    8004126e:	fe26                	sd	s1,312(sp)
    80041270:	f64e                	sd	s3,296(sp)
    80041272:	f252                	sd	s4,288(sp)
    80041274:	ee56                	sd	s5,280(sp)
    80041276:	ea5a                	sd	s6,272(sp)
    80041278:	e65e                	sd	s7,264(sp)
    8004127a:	e262                	sd	s8,256(sp)
    8004127c:	fde6                	sd	s9,248(sp)
    8004127e:	f9ea                	sd	s10,240(sp)
    80041280:	f5ee                	sd	s11,232(sp)
    80041282:	87ba                	mv	a5,a4
quickjs-nuttx/quickjs.c:42071
    JSValueConst O = this_val, separator = argv[0], limit = argv[1];
    80041284:	0087ba03          	ld	s4,8(a5) # 10008 <asinh-0x7ffefff8>
    80041288:	6318                	ld	a4,0(a4)
    8004128a:	6b94                	ld	a3,16(a5)
    8004128c:	6f84                	ld	s1,24(a5)
quickjs-nuttx/quickjs.c:42069
{
    8004128e:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:42071
    JSValueConst O = this_val, separator = argv[0], limit = argv[1];
    80041290:	e4b2                	sd	a2,72(sp)
quickjs-nuttx/quickjs.c:42069
{
    80041292:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:42071
    JSValueConst O = this_val, separator = argv[0], limit = argv[1];
    80041294:	e0ae                	sd	a1,64(sp)
    80041296:	e8ba                	sd	a4,80(sp)
    80041298:	ecd2                	sd	s4,88(sp)
    8004129a:	f0b6                	sd	a3,96(sp)
    8004129c:	f4a6                	sd	s1,104(sp)
quickjs-nuttx/quickjs.c:42078
    if (JS_IsUndefined(O) || JS_IsNull(O))
    8004129e:	3679                	addiw	a2,a2,-2
    800412a0:	4905                	li	s2,1
    800412a2:	02c96663          	bltu	s2,a2,800412ce <js_string_split+0x68>
quickjs-nuttx/quickjs.c:42155
}
    800412a6:	6416                	ld	s0,320(sp)
    800412a8:	60b6                	ld	ra,328(sp)
    800412aa:	74f2                	ld	s1,312(sp)
    800412ac:	7952                	ld	s2,304(sp)
    800412ae:	79b2                	ld	s3,296(sp)
    800412b0:	7a12                	ld	s4,288(sp)
    800412b2:	6af2                	ld	s5,280(sp)
    800412b4:	6b52                	ld	s6,272(sp)
    800412b6:	6bb2                	ld	s7,264(sp)
    800412b8:	6c12                	ld	s8,256(sp)
    800412ba:	7cee                	ld	s9,248(sp)
    800412bc:	7d4e                	ld	s10,240(sp)
    800412be:	7dae                	ld	s11,232(sp)
quickjs-nuttx/quickjs.c:42079
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    800412c0:	00029597          	auipc	a1,0x29
    800412c4:	75058593          	addi	a1,a1,1872 # 8006aa10 <qjsc_repl+0x5460>
quickjs-nuttx/quickjs.c:42155
}
    800412c8:	6171                	addi	sp,sp,336
quickjs-nuttx/quickjs.c:42079
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    800412ca:	ba2d706f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:42082
    A = JS_UNDEFINED;
    800412ce:	e102                	sd	zero,128(sp)
quickjs-nuttx/quickjs.c:42085
    if (!JS_IsUndefined(separator) && !JS_IsNull(separator)) {
    800412d0:	ffea079b          	addiw	a5,s4,-2
    800412d4:	842a                	mv	s0,a0
    800412d6:	08f97163          	bgeu	s2,a5,80041358 <js_string_split+0xf2>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800412da:	87d2                	mv	a5,s4
    800412dc:	85ba                	mv	a1,a4
    800412de:	8652                	mv	a2,s4
    800412e0:	4801                	li	a6,0
    800412e2:	0db00693          	li	a3,219
    800412e6:	e1ba                	sd	a4,192(sp)
    800412e8:	e5d2                	sd	s4,200(sp)
    800412ea:	fc0d50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800412ee:	f92a                	sd	a0,176(sp)
    800412f0:	fd2e                	sd	a1,184(sp)
    800412f2:	e92a                	sd	a0,144(sp)
    800412f4:	ed2e                	sd	a1,152(sp)
js_string_split():
quickjs-nuttx/quickjs.c:42088
        if (JS_IsException(splitter))
    800412f6:	0005879b          	sext.w	a5,a1
    800412fa:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800412fc:	862e                	mv	a2,a1
js_string_split():
quickjs-nuttx/quickjs.c:42088
    800412fe:	00e79563          	bne	a5,a4,80041308 <js_string_split+0xa2>
quickjs-nuttx/quickjs.c:42089
            return JS_EXCEPTION;
    80041302:	f102                	sd	zero,160(sp)
quickjs-nuttx/quickjs.c:42154
    return JS_EXCEPTION;
    80041304:	f53e                	sd	a5,168(sp)
    80041306:	a805                	j	80041336 <js_string_split+0xd0>
quickjs-nuttx/quickjs.c:42090 (discriminator 1)
        if (!JS_IsUndefined(splitter) && !JS_IsNull(splitter)) {
    80041308:	ffe5879b          	addiw	a5,a1,-2
    8004130c:	04f97663          	bgeu	s2,a5,80041358 <js_string_split+0xf2>
quickjs-nuttx/quickjs.c:42091
            args[0] = O;
    80041310:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:42093
            return JS_CallFree(ctx, splitter, separator, 2, args);
    80041312:	66c6                	ld	a3,80(sp)
    80041314:	6766                	ld	a4,88(sp)
quickjs-nuttx/quickjs.c:42091
            args[0] = O;
    80041316:	e1be                	sd	a5,192(sp)
    80041318:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:42093
            return JS_CallFree(ctx, splitter, separator, 2, args);
    8004131a:	85aa                	mv	a1,a0
    8004131c:	0c010813          	addi	a6,sp,192
quickjs-nuttx/quickjs.c:42091
            args[0] = O;
    80041320:	e5be                	sd	a5,200(sp)
quickjs-nuttx/quickjs.c:42092
            args[1] = limit;
    80041322:	7786                	ld	a5,96(sp)
quickjs-nuttx/quickjs.c:42093
            return JS_CallFree(ctx, splitter, separator, 2, args);
    80041324:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:42092
            args[1] = limit;
    80041326:	e9be                	sd	a5,208(sp)
    80041328:	77a6                	ld	a5,104(sp)
    8004132a:	edbe                	sd	a5,216(sp)
quickjs-nuttx/quickjs.c:42093
            return JS_CallFree(ctx, splitter, separator, 2, args);
    8004132c:	4789                	li	a5,2
    8004132e:	f46d50ef          	jal	ra,80016a74 <JS_CallFree>
    80041332:	f12a                	sd	a0,160(sp)
    80041334:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:42155 (discriminator 2)
}
    80041336:	60b6                	ld	ra,328(sp)
    80041338:	6416                	ld	s0,320(sp)
    8004133a:	750a                	ld	a0,160(sp)
    8004133c:	75aa                	ld	a1,168(sp)
    8004133e:	74f2                	ld	s1,312(sp)
    80041340:	7952                	ld	s2,304(sp)
    80041342:	79b2                	ld	s3,296(sp)
    80041344:	7a12                	ld	s4,288(sp)
    80041346:	6af2                	ld	s5,280(sp)
    80041348:	6b52                	ld	s6,272(sp)
    8004134a:	6bb2                	ld	s7,264(sp)
    8004134c:	6c12                	ld	s8,256(sp)
    8004134e:	7cee                	ld	s9,248(sp)
    80041350:	7d4e                	ld	s10,240(sp)
    80041352:	7dae                	ld	s11,232(sp)
    80041354:	6171                	addi	sp,sp,336
    80041356:	8082                	ret
quickjs-nuttx/quickjs.c:42096
    S = JS_ToString(ctx, O);
    80041358:	6586                	ld	a1,64(sp)
    8004135a:	6626                	ld	a2,72(sp)
    8004135c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:42097
    if (JS_IsException(S))
    8004135e:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:42096
    S = JS_ToString(ctx, O);
    80041360:	c1cdf0ef          	jal	ra,8002077c <JS_ToString>
    80041364:	fcae                	sd	a1,120(sp)
    80041366:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:42097
    if (JS_IsException(S))
    80041368:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:42096
    S = JS_ToString(ctx, O);
    8004136a:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:42097
    if (JS_IsException(S))
    8004136c:	19358c63          	beq	a1,s3,80041504 <js_string_split+0x29e>
quickjs-nuttx/quickjs.c:42099
    A = JS_NewArray(ctx);
    80041370:	8522                	mv	a0,s0
    80041372:	ee9da0ef          	jal	ra,8001c25a <JS_NewArray>
    80041376:	e12a                	sd	a0,128(sp)
    80041378:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:42100
    if (JS_IsException(A))
    8004137a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:42099
    A = JS_NewArray(ctx);
    8004137e:	892e                	mv	s2,a1
    80041380:	8cae                	mv	s9,a1
quickjs-nuttx/quickjs.c:42100
    if (JS_IsException(A))
    80041382:	07378963          	beq	a5,s3,800413f4 <js_string_split+0x18e>
quickjs-nuttx/quickjs.c:42103
    if (JS_IsUndefined(limit)) {
    80041386:	2481                	sext.w	s1,s1
    80041388:	478d                	li	a5,3
    8004138a:	04f49b63          	bne	s1,a5,800413e0 <js_string_split+0x17a>
quickjs-nuttx/quickjs.c:42104
        lim = 0xffffffff;
    8004138e:	57fd                	li	a5,-1
    80041390:	de3e                	sw	a5,60(sp)
quickjs-nuttx/quickjs.c:42111
    R = JS_ToString(ctx, separator);
    80041392:	65c6                	ld	a1,80(sp)
    80041394:	6666                	ld	a2,88(sp)
quickjs-nuttx/quickjs.c:42110
    s = sp->len;
    80041396:	004aac03          	lw	s8,4(s5)
quickjs-nuttx/quickjs.c:42111
    R = JS_ToString(ctx, separator);
    8004139a:	8522                	mv	a0,s0
    8004139c:	be0df0ef          	jal	ra,8002077c <JS_ToString>
quickjs-nuttx/quickjs.c:42110
    s = sp->len;
    800413a0:	800009b7          	lui	s3,0x80000
    800413a4:	fff9c993          	not	s3,s3
quickjs-nuttx/quickjs.c:42111
    R = JS_ToString(ctx, separator);
    800413a8:	e92a                	sd	a0,144(sp)
    800413aa:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:42112
    if (JS_IsException(R))
    800413ac:	0005871b          	sext.w	a4,a1
    800413b0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:42110
    s = sp->len;
    800413b2:	0189fc33          	and	s8,s3,s8
quickjs-nuttx/quickjs.c:42111
    R = JS_ToString(ctx, separator);
    800413b6:	8baa                	mv	s7,a0
    800413b8:	84ae                	mv	s1,a1
    800413ba:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:42112
    if (JS_IsException(R))
    800413bc:	10f70663          	beq	a4,a5,800414c8 <js_string_split+0x262>
quickjs-nuttx/quickjs.c:42117
    if (lim == 0)
    800413c0:	57f2                	lw	a5,60(sp)
    800413c2:	ef85                	bnez	a5,800413fa <js_string_split+0x194>
quickjs-nuttx/quickjs.c:42146
    JS_FreeValue(ctx, S);
    800413c4:	75c6                	ld	a1,112(sp)
    800413c6:	7666                	ld	a2,120(sp)
    800413c8:	8522                	mv	a0,s0
    800413ca:	bd4ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42147
    JS_FreeValue(ctx, R);
    800413ce:	65ca                	ld	a1,144(sp)
    800413d0:	666a                	ld	a2,152(sp)
    800413d2:	8522                	mv	a0,s0
    800413d4:	bcaca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42148
    return A;
    800413d8:	678a                	ld	a5,128(sp)
    800413da:	f54a                	sd	s2,168(sp)
    800413dc:	f13e                	sd	a5,160(sp)
    800413de:	bfa1                	j	80041336 <js_string_split+0xd0>
quickjs-nuttx/quickjs.c:42106
        if (JS_ToUint32(ctx, &lim, limit) < 0)
    800413e0:	7606                	ld	a2,96(sp)
    800413e2:	76a6                	ld	a3,104(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    800413e4:	186c                	addi	a1,sp,60
    800413e6:	8522                	mv	a0,s0
    800413e8:	e1b2                	sd	a2,192(sp)
    800413ea:	e5b6                	sd	a3,200(sp)
    800413ec:	fcfe00ef          	jal	ra,800223ba <JS_ToInt32>
js_string_split():
quickjs-nuttx/quickjs.c:42106
    800413f0:	fa0551e3          	bgez	a0,80041392 <js_string_split+0x12c>
quickjs-nuttx/quickjs.c:42083
    R = JS_UNDEFINED;
    800413f4:	448d                	li	s1,3
    800413f6:	4b01                	li	s6,0
    800413f8:	a8c1                	j	800414c8 <js_string_split+0x262>
quickjs-nuttx/quickjs.c:42119
    if (JS_IsUndefined(separator))
    800413fa:	2a01                	sext.w	s4,s4
    800413fc:	478d                	li	a5,3
    800413fe:	02fa0063          	beq	s4,a5,8004141e <js_string_split+0x1b8>
quickjs-nuttx/quickjs.c:42115
    r = rp->len;
    80041402:	415c                	lw	a5,4(a0)
quickjs-nuttx/quickjs.c:42110
    s = sp->len;
    80041404:	020c1a13          	slli	s4,s8,0x20
    80041408:	020a5a13          	srli	s4,s4,0x20
quickjs-nuttx/quickjs.c:42115
    r = rp->len;
    8004140c:	0137f9b3          	and	s3,a5,s3
    80041410:	1982                	slli	s3,s3,0x20
    80041412:	0209d993          	srli	s3,s3,0x20
quickjs-nuttx/quickjs.c:42121
    if (s == 0) {
    80041416:	0c0a1d63          	bnez	s4,800414f0 <js_string_split+0x28a>
quickjs-nuttx/quickjs.c:42122
        if (r != 0)
    8004141a:	fa0985e3          	beqz	s3,800413c4 <js_string_split+0x15e>
quickjs-nuttx/quickjs.c:42116
    p = 0;
    8004141e:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:42102
    lengthA = 0;
    80041420:	4d81                	li	s11,0
    80041422:	a885                	j	80041492 <js_string_split+0x22c>
quickjs-nuttx/quickjs.c:42128
        e = string_indexof(sp, rp, q);
    80041424:	2601                	sext.w	a2,a2
    80041426:	85de                	mv	a1,s7
    80041428:	8556                	mv	a0,s5
    8004142a:	e83e                	sd	a5,16(sp)
    8004142c:	ec3a                	sd	a4,24(sp)
    8004142e:	dc3c60ef          	jal	ra,800081f0 <string_indexof>
quickjs-nuttx/quickjs.c:42129
        if (e < 0)
    80041432:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:42128
        e = string_indexof(sp, rp, q);
    80041434:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:42129
        if (e < 0)
    80041436:	04054e63          	bltz	a0,80041492 <js_string_split+0x22c>
quickjs-nuttx/quickjs.c:42131
        T = js_sub_string(ctx, sp, p, e);
    8004143a:	6762                	ld	a4,24(sp)
    8004143c:	86aa                	mv	a3,a0
    8004143e:	85d6                	mv	a1,s5
    80041440:	863a                	mv	a2,a4
    80041442:	8522                	mv	a0,s0
    80041444:	ccbde0ef          	jal	ra,8002010e <js_sub_string>
    80041448:	e1aa                	sd	a0,192(sp)
    8004144a:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:42132
        if (JS_IsException(T))
    8004144c:	0005869b          	sext.w	a3,a1
    80041450:	4619                	li	a2,6
quickjs-nuttx/quickjs.c:42131
        T = js_sub_string(ctx, sp, p, e);
    80041452:	872a                	mv	a4,a0
    80041454:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:42132
        if (JS_IsException(T))
    80041456:	06c68963          	beq	a3,a2,800414c8 <js_string_split+0x262>
quickjs-nuttx/quickjs.c:42134
        if (JS_CreateDataPropertyUint32(ctx, A, lengthA++, T, 0) < 0)
    8004145a:	658a                	ld	a1,128(sp)
    8004145c:	020d9693          	slli	a3,s11,0x20
    80041460:	001d8e1b          	addiw	t3,s11,1
    80041464:	4801                	li	a6,0
    80041466:	9281                	srli	a3,a3,0x20
    80041468:	864a                	mv	a2,s2
    8004146a:	8522                	mv	a0,s0
    8004146c:	e872                	sd	t3,16(sp)
    8004146e:	995ef0ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    80041472:	04054b63          	bltz	a0,800414c8 <js_string_split+0x262>
quickjs-nuttx/quickjs.c:42136
        if (lengthA == lim)
    80041476:	57f2                	lw	a5,60(sp)
    80041478:	6e42                	ld	t3,16(sp)
    8004147a:	f5c785e3          	beq	a5,t3,800413c4 <js_string_split+0x15e>
quickjs-nuttx/quickjs.c:42127 (discriminator 2)
    for (q = p; (q += !r) <= s - r - !r; q = p = e + r) {
    8004147e:	014987b3          	add	a5,s3,s4
    80041482:	8df2                	mv	s11,t3
quickjs-nuttx/quickjs.c:42127 (discriminator 1)
    80041484:	66a2                	ld	a3,8(sp)
    80041486:	00fd0633          	add	a2,s10,a5
quickjs-nuttx/quickjs.c:42131 (discriminator 1)
        T = js_sub_string(ctx, sp, p, e);
    8004148a:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.c:42127 (discriminator 1)
    for (q = p; (q += !r) <= s - r - !r; q = p = e + r) {
    8004148e:	f8c6dbe3          	bge	a3,a2,80041424 <js_string_split+0x1be>
quickjs-nuttx/quickjs.c:42140
    T = js_sub_string(ctx, sp, p, s);
    80041492:	0007861b          	sext.w	a2,a5
    80041496:	86e2                	mv	a3,s8
    80041498:	85d6                	mv	a1,s5
    8004149a:	8522                	mv	a0,s0
    8004149c:	c73de0ef          	jal	ra,8002010e <js_sub_string>
    800414a0:	e1aa                	sd	a0,192(sp)
    800414a2:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:42141
    if (JS_IsException(T))
    800414a4:	0005861b          	sext.w	a2,a1
    800414a8:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:42140
    T = js_sub_string(ctx, sp, p, s);
    800414aa:	872a                	mv	a4,a0
    800414ac:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:42141
    if (JS_IsException(T))
    800414ae:	00d60d63          	beq	a2,a3,800414c8 <js_string_split+0x262>
quickjs-nuttx/quickjs.c:42143
    if (JS_CreateDataPropertyUint32(ctx, A, lengthA++, T,0 ) < 0)
    800414b2:	658a                	ld	a1,128(sp)
    800414b4:	020d9693          	slli	a3,s11,0x20
    800414b8:	4801                	li	a6,0
    800414ba:	9281                	srli	a3,a3,0x20
    800414bc:	864a                	mv	a2,s2
    800414be:	8522                	mv	a0,s0
    800414c0:	943ef0ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    800414c4:	f00550e3          	bgez	a0,800413c4 <js_string_split+0x15e>
quickjs-nuttx/quickjs.c:42151
    JS_FreeValue(ctx, A);
    800414c8:	658a                	ld	a1,128(sp)
    800414ca:	8666                	mv	a2,s9
    800414cc:	8522                	mv	a0,s0
    800414ce:	ad0ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42152
    JS_FreeValue(ctx, S);
    800414d2:	75c6                	ld	a1,112(sp)
    800414d4:	7666                	ld	a2,120(sp)
    800414d6:	8522                	mv	a0,s0
    800414d8:	ac6ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42153
    JS_FreeValue(ctx, R);
    800414dc:	85da                	mv	a1,s6
    800414de:	8626                	mv	a2,s1
    800414e0:	8522                	mv	a0,s0
    800414e2:	e95a                	sd	s6,144(sp)
    800414e4:	ed26                	sd	s1,152(sp)
    800414e6:	ab8ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42154
    return JS_EXCEPTION;
    800414ea:	4799                	li	a5,6
    800414ec:	f102                	sd	zero,160(sp)
    800414ee:	bd19                	j	80041304 <js_string_split+0x9e>
quickjs-nuttx/quickjs.c:42127
    for (q = p; (q += !r) <= s - r - !r; q = p = e + r) {
    800414f0:	0019bd13          	seqz	s10,s3
    800414f4:	413a0a33          	sub	s4,s4,s3
    800414f8:	41aa0733          	sub	a4,s4,s10
quickjs-nuttx/quickjs.c:42116
    p = 0;
    800414fc:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:42102
    lengthA = 0;
    800414fe:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:42127
    for (q = p; (q += !r) <= s - r - !r; q = p = e + r) {
    80041500:	e43a                	sd	a4,8(sp)
    80041502:	b749                	j	80041484 <js_string_split+0x21e>
quickjs-nuttx/quickjs.c:42083
    R = JS_UNDEFINED;
    80041504:	448d                	li	s1,3
    80041506:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:42082
    A = JS_UNDEFINED;
    80041508:	4c8d                	li	s9,3
    8004150a:	bf7d                	j	800414c8 <js_string_split+0x262>

000000008004150c <js_array_toString>:
js_array_toString():
quickjs-nuttx/quickjs.c:39716
{
    8004150c:	7175                	addi	sp,sp,-144
    8004150e:	e122                	sd	s0,128(sp)
    80041510:	f8ca                	sd	s2,112(sp)
    80041512:	e506                	sd	ra,136(sp)
    80041514:	fca6                	sd	s1,120(sp)
    80041516:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:39719
    obj = JS_ToObject(ctx, this_val);
    80041518:	ba3ee0ef          	jal	ra,800300ba <JS_ToObject>
    8004151c:	f02a                	sd	a0,32(sp)
    8004151e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:39720
    if (JS_IsException(obj))
    80041520:	0005869b          	sext.w	a3,a1
    80041524:	4919                	li	s2,6
    80041526:	01269c63          	bne	a3,s2,8004153e <js_array_toString+0x32>
quickjs-nuttx/quickjs.c:39721
        return JS_EXCEPTION;
    8004152a:	e882                	sd	zero,80(sp)
    8004152c:	ecb6                	sd	a3,88(sp)
quickjs-nuttx/quickjs.c:39735 (discriminator 1)
}
    8004152e:	60aa                	ld	ra,136(sp)
    80041530:	640a                	ld	s0,128(sp)
    80041532:	6546                	ld	a0,80(sp)
    80041534:	65e6                	ld	a1,88(sp)
    80041536:	74e6                	ld	s1,120(sp)
    80041538:	7946                	ld	s2,112(sp)
    8004153a:	6149                	addi	sp,sp,144
    8004153c:	8082                	ret
    8004153e:	87ae                	mv	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80041540:	863e                	mv	a2,a5
    80041542:	872a                	mv	a4,a0
    80041544:	e8aa                	sd	a0,80(sp)
    80041546:	ecae                	sd	a1,88(sp)
    80041548:	4801                	li	a6,0
    8004154a:	85aa                	mv	a1,a0
    8004154c:	05c00693          	li	a3,92
    80041550:	8522                	mv	a0,s0
    80041552:	d58d50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
js_array_toString():
quickjs-nuttx/quickjs.c:39723
    if (JS_IsException(method)) {
    80041556:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004155a:	84aa                	mv	s1,a0
    8004155c:	862e                	mv	a2,a1
js_array_toString():
quickjs-nuttx/quickjs.c:39723
    8004155e:	01279d63          	bne	a5,s2,80041578 <js_array_toString+0x6c>
quickjs-nuttx/quickjs.c:39724
        ret = JS_EXCEPTION;
    80041562:	e082                	sd	zero,64(sp)
    80041564:	4499                	li	s1,6
quickjs-nuttx/quickjs.c:39733
    JS_FreeValue(ctx, obj);
    80041566:	7582                	ld	a1,32(sp)
    80041568:	7622                	ld	a2,40(sp)
    8004156a:	8522                	mv	a0,s0
    8004156c:	a32ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39734
    return ret;
    80041570:	6786                	ld	a5,64(sp)
    80041572:	eca6                	sd	s1,88(sp)
    80041574:	e8be                	sd	a5,80(sp)
    80041576:	bf65                	j	8004152e <js_array_toString+0x22>
quickjs-nuttx/quickjs.c:39726
    if (!JS_IsFunction(ctx, method)) {
    80041578:	85aa                	mv	a1,a0
    8004157a:	8522                	mv	a0,s0
    8004157c:	e432                	sd	a2,8(sp)
    8004157e:	f25cc0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80041582:	6622                	ld	a2,8(sp)
    80041584:	ed19                	bnez	a0,800415a2 <js_array_toString+0x96>
quickjs-nuttx/quickjs.c:39728
        JS_FreeValue(ctx, method);
    80041586:	85a6                	mv	a1,s1
    80041588:	8522                	mv	a0,s0
    8004158a:	a14ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:39729
        ret = js_object_toString(ctx, obj, 0, NULL);
    8004158e:	7582                	ld	a1,32(sp)
    80041590:	7622                	ld	a2,40(sp)
    80041592:	4701                	li	a4,0
    80041594:	4681                	li	a3,0
    80041596:	8522                	mv	a0,s0
    80041598:	e1df90ef          	jal	ra,8003b3b4 <js_object_toString>
quickjs-nuttx/quickjs.c:39731
        ret = JS_CallFree(ctx, method, obj, 0, NULL);
    8004159c:	e0aa                	sd	a0,64(sp)
    8004159e:	84ae                	mv	s1,a1
    800415a0:	b7d9                	j	80041566 <js_array_toString+0x5a>
    800415a2:	7682                	ld	a3,32(sp)
    800415a4:	7722                	ld	a4,40(sp)
    800415a6:	4801                	li	a6,0
    800415a8:	4781                	li	a5,0
    800415aa:	85a6                	mv	a1,s1
    800415ac:	8522                	mv	a0,s0
    800415ae:	cc6d50ef          	jal	ra,80016a74 <JS_CallFree>
    800415b2:	b7ed                	j	8004159c <js_array_toString+0x90>

00000000800415b4 <async_func_resume>:
async_func_resume():
quickjs-nuttx/quickjs.c:18812
{
    800415b4:	7159                	addi	sp,sp,-112
    800415b6:	f0a2                	sd	s0,96(sp)
    800415b8:	f486                	sd	ra,104(sp)
    800415ba:	eca6                	sd	s1,88(sp)
    800415bc:	e8ca                	sd	s2,80(sp)
    800415be:	e4ce                	sd	s3,72(sp)
    800415c0:	1880                	addi	s0,sp,112
quickjs-nuttx/quickjs.c:18817
    assert(!s->is_completed);
    800415c2:	599c                	lw	a5,48(a1)
quickjs-nuttx/quickjs.c:18813
    JSRuntime *rt = ctx->rt;
    800415c4:	01853983          	ld	s3,24(a0)
quickjs-nuttx/quickjs.c:18817
    assert(!s->is_completed);
    800415c8:	cb99                	beqz	a5,800415de <async_func_resume+0x2a>
quickjs-nuttx/quickjs.c:18817 (discriminator 1)
    800415ca:	6595                	lui	a1,0x5
    800415cc:	4601                	li	a2,0
    800415ce:	98158593          	addi	a1,a1,-1663 # 4981 <asinh-0x7fffb67f>
    800415d2:	00028517          	auipc	a0,0x28
    800415d6:	fc650513          	addi	a0,a0,-58 # 80069598 <qjsc_repl+0x3fe8>
    800415da:	3821f0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:18818 (discriminator 2)
    if (js_check_stack_overflow(ctx->rt, 0)) {
    800415de:	0d89b783          	ld	a5,216(s3) # ffffffff800000d8 <_ebss+0xfffffffeffefef72>
    800415e2:	892e                	mv	s2,a1
    800415e4:	06f47363          	bgeu	s0,a5,8004164a <async_func_resume+0x96>
quickjs-nuttx/quickjs.c:18819
        ret = JS_ThrowStackOverflow(ctx);
    800415e8:	b3ad80ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:18823
        ret = JS_CallInternal(ctx, func_obj, s->this_val, JS_UNDEFINED,
    800415ec:	faa43823          	sd	a0,-80(s0) # 7fb0 <asinh-0x7fff8050>
    800415f0:	fab43c23          	sd	a1,-72(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800415f4:	0005871b          	sext.w	a4,a1
async_func_resume():
quickjs-nuttx/quickjs.c:18826
    if (JS_IsException(ret) || JS_IsUndefined(ret)) {
    800415f8:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:18823
        ret = JS_CallInternal(ctx, func_obj, s->this_val, JS_UNDEFINED,
    800415fa:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:18826
    if (JS_IsException(ret) || JS_IsUndefined(ret)) {
    800415fc:	02f70163          	beq	a4,a5,8004161e <async_func_resume+0x6a>
quickjs-nuttx/quickjs.c:18826 (discriminator 1)
    80041600:	478d                	li	a5,3
    80041602:	02f71a63          	bne	a4,a5,80041636 <async_func_resume+0x82>
quickjs-nuttx/quickjs.c:18828
            ret = sf->cur_sp[-1];
    80041606:	0a093783          	ld	a5,160(s2)
    8004160a:	ff07b683          	ld	a3,-16(a5)
    8004160e:	ff87b483          	ld	s1,-8(a5)
quickjs-nuttx/quickjs.c:18829
            sf->cur_sp[-1] = JS_UNDEFINED;
    80041612:	fe07b823          	sd	zero,-16(a5)
quickjs-nuttx/quickjs.c:18828
            ret = sf->cur_sp[-1];
    80041616:	fad43823          	sd	a3,-80(s0)
quickjs-nuttx/quickjs.c:18829
            sf->cur_sp[-1] = JS_UNDEFINED;
    8004161a:	fee7bc23          	sd	a4,-8(a5)
quickjs-nuttx/quickjs.c:18832
        s->is_completed = TRUE;
    8004161e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:18835
        close_var_refs(rt, sf);
    80041620:	05890593          	addi	a1,s2,88
    80041624:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:18832
        s->is_completed = TRUE;
    80041626:	02f92823          	sw	a5,48(s2)
quickjs-nuttx/quickjs.c:18835
        close_var_refs(rt, sf);
    8004162a:	ba7ca0ef          	jal	ra,8000c1d0 <close_var_refs>
quickjs-nuttx/quickjs.c:18837
        async_func_free_frame(rt, s);
    8004162e:	85ca                	mv	a1,s2
    80041630:	854e                	mv	a0,s3
    80041632:	808cb0ef          	jal	ra,8000c63a <async_func_free_frame>
quickjs-nuttx/quickjs.c:18840
}
    80041636:	fb043503          	ld	a0,-80(s0)
    8004163a:	70a6                	ld	ra,104(sp)
    8004163c:	7406                	ld	s0,96(sp)
    8004163e:	6946                	ld	s2,80(sp)
    80041640:	69a6                	ld	s3,72(sp)
    80041642:	85a6                	mv	a1,s1
    80041644:	64e6                	ld	s1,88(sp)
    80041646:	6165                	addi	sp,sp,112
    80041648:	8082                	ret
quickjs-nuttx/quickjs.c:18823
        ret = JS_CallInternal(ctx, func_obj, s->this_val, JS_UNDEFINED,
    8004164a:	478d                	li	a5,3
    8004164c:	fcf43423          	sd	a5,-56(s0)
    80041650:	4791                	li	a5,4
    80041652:	e43e                	sd	a5,8(sp)
    80041654:	79bc                	ld	a5,112(a1)
    80041656:	480d                	li	a6,3
    80041658:	4601                	li	a2,0
    8004165a:	e03e                	sd	a5,0(sp)
    8004165c:	0285a883          	lw	a7,40(a1)
    80041660:	6d94                	ld	a3,24(a1)
    80041662:	7198                	ld	a4,32(a1)
    80041664:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:18822
        func_obj = JS_MKPTR(JS_TAG_INT, s);
    80041666:	fab43023          	sd	a1,-96(s0)
    8004166a:	fa043423          	sd	zero,-88(s0)
quickjs-nuttx/quickjs.c:18823
        ret = JS_CallInternal(ctx, func_obj, s->this_val, JS_UNDEFINED,
    8004166e:	fc043023          	sd	zero,-64(s0)
    80041672:	8fdcd0ef          	jal	ra,8000ef6e <JS_CallInternal>
    80041676:	bf9d                	j	800415ec <async_func_resume+0x38>

0000000080041678 <js_generator_next>:
js_generator_next():
quickjs-nuttx/quickjs.c:18934
{
    80041678:	7135                	addi	sp,sp,-160
    8004167a:	86b2                	mv	a3,a2
    8004167c:	e526                	sd	s1,136(sp)
    8004167e:	f8d2                	sd	s4,112(sp)
    80041680:	f0da                	sd	s6,96(sp)
    80041682:	e02e                	sd	a1,0(sp)
    80041684:	e432                	sd	a2,8(sp)
    80041686:	8a3e                	mv	s4,a5
    80041688:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:18935
    JSGeneratorData *s = JS_GetOpaque(this_val, JS_CLASS_GENERATOR);
    8004168a:	02f00613          	li	a2,47
    8004168e:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:18939
    *pdone = TRUE;
    80041690:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:18935
    JSGeneratorData *s = JS_GetOpaque(this_val, JS_CLASS_GENERATOR);
    80041692:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:18934
{
    80041694:	e14a                	sd	s2,128(sp)
    80041696:	fcce                	sd	s3,120(sp)
    80041698:	ed06                	sd	ra,152(sp)
    8004169a:	e922                	sd	s0,144(sp)
    8004169c:	f4d6                	sd	s5,104(sp)
    8004169e:	893a                	mv	s2,a4
    800416a0:	89c2                	mv	s3,a6
quickjs-nuttx/quickjs.c:18935
    JSGeneratorData *s = JS_GetOpaque(this_val, JS_CLASS_GENERATOR);
    800416a2:	ff3cc0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:18939
    *pdone = TRUE;
    800416a6:	016a2023          	sw	s6,0(s4)
quickjs-nuttx/quickjs.c:18940
    if (!s)
    800416aa:	e10d                	bnez	a0,800416cc <js_generator_next+0x54>
quickjs-nuttx/quickjs.c:19010
}
    800416ac:	644a                	ld	s0,144(sp)
    800416ae:	60ea                	ld	ra,152(sp)
    800416b0:	690a                	ld	s2,128(sp)
    800416b2:	79e6                	ld	s3,120(sp)
    800416b4:	7a46                	ld	s4,112(sp)
    800416b6:	7aa6                	ld	s5,104(sp)
    800416b8:	7b06                	ld	s6,96(sp)
quickjs-nuttx/quickjs.c:18941
        return JS_ThrowTypeError(ctx, "not a generator");
    800416ba:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:19010
}
    800416bc:	64aa                	ld	s1,136(sp)
quickjs-nuttx/quickjs.c:18941
        return JS_ThrowTypeError(ctx, "not a generator");
    800416be:	0002c597          	auipc	a1,0x2c
    800416c2:	dea58593          	addi	a1,a1,-534 # 8006d4a8 <qjsc_repl+0x7ef8>
quickjs-nuttx/quickjs.c:19010
}
    800416c6:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:18941
        return JS_ThrowTypeError(ctx, "not a generator");
    800416c8:	fa5d606f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:18943
    switch(s->state) {
    800416cc:	411c                	lw	a5,0(a0)
    800416ce:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:18942
    sf = &s->func_state->frame;
    800416d0:	00853a83          	ld	s5,8(a0)
    800416d4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:18943
    switch(s->state) {
    800416d6:	16e78163          	beq	a5,a4,80041838 <js_generator_next+0x1c0>
    800416da:	00f76c63          	bltu	a4,a5,800416f2 <js_generator_next+0x7a>
    800416de:	37fd                	addiw	a5,a5,-1
    800416e0:	02fb7663          	bgeu	s6,a5,8004170c <js_generator_next+0x94>
quickjs-nuttx/quickjs.c:18946
        if (magic == GEN_MAGIC_NEXT) {
    800416e4:	0c098663          	beqz	s3,800417b0 <js_generator_next+0x138>
free_generator_stack():
quickjs-nuttx/quickjs.c:18912
    free_generator_stack_rt(ctx->rt, s);
    800416e8:	6c88                	ld	a0,24(s1)
    800416ea:	85a2                	mv	a1,s0
    800416ec:	b67ca0ef          	jal	ra,8000c252 <free_generator_stack_rt>
js_generator_next():
quickjs-nuttx/quickjs.c:18950
            goto done;
    800416f0:	a021                	j	800416f8 <js_generator_next+0x80>
quickjs-nuttx/quickjs.c:18943
    switch(s->state) {
    800416f2:	4711                	li	a4,4
    800416f4:	fee798e3          	bne	a5,a4,800416e4 <js_generator_next+0x6c>
quickjs-nuttx/quickjs.c:18992
        switch(magic) {
    800416f8:	4785                	li	a5,1
    800416fa:	10f98763          	beq	s3,a5,80041808 <js_generator_next+0x190>
    800416fe:	4789                	li	a5,2
    80041700:	10f98e63          	beq	s3,a5,8004181c <js_generator_next+0x1a4>
quickjs-nuttx/quickjs.c:18995
            ret = JS_UNDEFINED;
    80041704:	ca02                	sw	zero,20(sp)
    80041706:	458d                	li	a1,3
    80041708:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:18996
            break;
    8004170a:	a0fd                	j	800417f8 <js_generator_next+0x180>
quickjs-nuttx/quickjs.c:18956
        ret = JS_DupValue(ctx, argv[0]);
    8004170c:	00093503          	ld	a0,0(s2)
    80041710:	00893583          	ld	a1,8(s2)
    80041714:	d07c80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80041718:	e82a                	sd	a0,16(sp)
    8004171a:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:18957
        if (magic == GEN_MAGIC_THROW &&
    8004171c:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:18956
        ret = JS_DupValue(ctx, argv[0]);
    8004171e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:18957
        if (magic == GEN_MAGIC_THROW &&
    80041720:	06f99063          	bne	s3,a5,80041780 <js_generator_next+0x108>
quickjs-nuttx/quickjs.c:18957 (discriminator 1)
    80041724:	00042903          	lw	s2,0(s0)
    80041728:	05691c63          	bne	s2,s6,80041780 <js_generator_next+0x108>
quickjs-nuttx/quickjs.c:18959
            JS_Throw(ctx, ret);
    8004172c:	85aa                	mv	a1,a0
    8004172e:	8526                	mv	a0,s1
    80041730:	d13cc0ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:18960
            s->func_state->throw_flag = TRUE;
    80041734:	641c                	ld	a5,8(s0)
    80041736:	0327a623          	sw	s2,44(a5)
quickjs-nuttx/quickjs.c:18969
        func_ret = async_func_resume(ctx, s->func_state);
    8004173a:	640c                	ld	a1,8(s0)
quickjs-nuttx/quickjs.c:18968
        s->state = JS_GENERATOR_STATE_EXECUTING;
    8004173c:	490d                	li	s2,3
    8004173e:	01242023          	sw	s2,0(s0)
quickjs-nuttx/quickjs.c:18969
        func_ret = async_func_resume(ctx, s->func_state);
    80041742:	8526                	mv	a0,s1
    80041744:	e71ff0ef          	jal	ra,800415b4 <async_func_resume>
quickjs-nuttx/quickjs.c:18970
        s->state = JS_GENERATOR_STATE_SUSPENDED_YIELD;
    80041748:	4785                	li	a5,1
    8004174a:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:18971
        if (s->func_state->is_completed) {
    8004174c:	641c                	ld	a5,8(s0)
quickjs-nuttx/quickjs.c:18969
        func_ret = async_func_resume(ctx, s->func_state);
    8004174e:	f02a                	sd	a0,32(sp)
    80041750:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:18971
        if (s->func_state->is_completed) {
    80041752:	5b9c                	lw	a5,48(a5)
quickjs-nuttx/quickjs.c:18969
        func_ret = async_func_resume(ctx, s->func_state);
    80041754:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:18971
        if (s->func_state->is_completed) {
    80041756:	c3ad                	beqz	a5,800417b8 <js_generator_next+0x140>
free_generator_stack():
quickjs-nuttx/quickjs.c:18912
    free_generator_stack_rt(ctx->rt, s);
    80041758:	6c88                	ld	a0,24(s1)
    8004175a:	85a2                	mv	a1,s0
    8004175c:	af7ca0ef          	jal	ra,8000c252 <free_generator_stack_rt>
js_generator_next():
quickjs-nuttx/quickjs.c:18974
            return func_ret;
    80041760:	7782                	ld	a5,32(sp)
    80041762:	f83e                	sd	a5,48(sp)
    80041764:	77a2                	ld	a5,40(sp)
    80041766:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:19010
}
    80041768:	60ea                	ld	ra,152(sp)
    8004176a:	644a                	ld	s0,144(sp)
    8004176c:	7542                	ld	a0,48(sp)
    8004176e:	75e2                	ld	a1,56(sp)
    80041770:	64aa                	ld	s1,136(sp)
    80041772:	690a                	ld	s2,128(sp)
    80041774:	79e6                	ld	s3,120(sp)
    80041776:	7a46                	ld	s4,112(sp)
    80041778:	7aa6                	ld	s5,104(sp)
    8004177a:	7b06                	ld	s6,96(sp)
    8004177c:	610d                	addi	sp,sp,160
    8004177e:	8082                	ret
quickjs-nuttx/quickjs.c:18962
            sf->cur_sp[-1] = ret;
    80041780:	0a0ab783          	ld	a5,160(s5)
    80041784:	6742                	ld	a4,16(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80041786:	e882                	sd	zero,80(sp)
    80041788:	c8ce                	sw	s3,80(sp)
js_generator_next():
quickjs-nuttx/quickjs.c:18962
    8004178a:	fee7b823          	sd	a4,-16(a5)
    8004178e:	6762                	ld	a4,24(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80041790:	ec82                	sd	zero,88(sp)
    80041792:	e482                	sd	zero,72(sp)
js_generator_next():
quickjs-nuttx/quickjs.c:18962
    80041794:	fee7bc23          	sd	a4,-8(a5)
quickjs-nuttx/quickjs.c:18963
            sf->cur_sp[0] = JS_NewInt32(ctx, magic);
    80041798:	0a0ab783          	ld	a5,160(s5)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8004179c:	6746                	ld	a4,80(sp)
js_generator_next():
quickjs-nuttx/quickjs.c:18963
    8004179e:	0007b423          	sd	zero,8(a5)
    800417a2:	e398                	sd	a4,0(a5)
quickjs-nuttx/quickjs.c:18964
            sf->cur_sp++;
    800417a4:	0a0ab783          	ld	a5,160(s5)
    800417a8:	e0ba                	sd	a4,64(sp)
    800417aa:	07c1                	addi	a5,a5,16
    800417ac:	0afab023          	sd	a5,160(s5)
quickjs-nuttx/quickjs.c:18966
            s->func_state->throw_flag = FALSE;
    800417b0:	641c                	ld	a5,8(s0)
    800417b2:	0207a623          	sw	zero,44(a5)
    800417b6:	b751                	j	8004173a <js_generator_next+0xc2>
quickjs-nuttx/quickjs.c:18976
            assert(JS_VALUE_GET_TAG(func_ret) == JS_TAG_INT);
    800417b8:	2581                	sext.w	a1,a1
    800417ba:	c999                	beqz	a1,800417d0 <js_generator_next+0x158>
quickjs-nuttx/quickjs.c:18976 (discriminator 1)
    800417bc:	6595                	lui	a1,0x5
    800417be:	4601                	li	a2,0
    800417c0:	a2058593          	addi	a1,a1,-1504 # 4a20 <asinh-0x7fffb5e0>
    800417c4:	00028517          	auipc	a0,0x28
    800417c8:	dd450513          	addi	a0,a0,-556 # 80069598 <qjsc_repl+0x3fe8>
    800417cc:	1901f0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:18978 (discriminator 2)
            ret = sf->cur_sp[-1];
    800417d0:	0a0ab783          	ld	a5,160(s5)
    800417d4:	ff07b703          	ld	a4,-16(a5)
    800417d8:	ff87b583          	ld	a1,-8(a5)
quickjs-nuttx/quickjs.c:18979 (discriminator 2)
            sf->cur_sp[-1] = JS_UNDEFINED;
    800417dc:	ff27bc23          	sd	s2,-8(a5)
quickjs-nuttx/quickjs.c:18978 (discriminator 2)
            ret = sf->cur_sp[-1];
    800417e0:	e83a                	sd	a4,16(sp)
    800417e2:	ec2e                	sd	a1,24(sp)
    800417e4:	ff07a703          	lw	a4,-16(a5)
quickjs-nuttx/quickjs.c:18979 (discriminator 2)
            sf->cur_sp[-1] = JS_UNDEFINED;
    800417e8:	fe07b823          	sd	zero,-16(a5)
quickjs-nuttx/quickjs.c:18980 (discriminator 2)
            if (JS_VALUE_GET_INT(func_ret) == FUNC_RET_YIELD_STAR) {
    800417ec:	4789                	li	a5,2
    800417ee:	00f51a63          	bne	a0,a5,80041802 <js_generator_next+0x18a>
quickjs-nuttx/quickjs.c:18981
                s->state = JS_GENERATOR_STATE_SUSPENDED_YIELD_STAR;
    800417f2:	c008                	sw	a0,0(s0)
quickjs-nuttx/quickjs.c:18983
                *pdone = 2;
    800417f4:	00aa2023          	sw	a0,0(s4)
quickjs-nuttx/quickjs.c:19009
    return ret;
    800417f8:	c83a                	sw	a4,16(sp)
    800417fa:	67c2                	ld	a5,16(sp)
    800417fc:	fc2e                	sd	a1,56(sp)
    800417fe:	f83e                	sd	a5,48(sp)
    80041800:	b7a5                	j	80041768 <js_generator_next+0xf0>
quickjs-nuttx/quickjs.c:18985
                *pdone = FALSE;
    80041802:	000a2023          	sw	zero,0(s4)
    80041806:	bfcd                	j	800417f8 <js_generator_next+0x180>
quickjs-nuttx/quickjs.c:18998
            ret = JS_DupValue(ctx, argv[0]);
    80041808:	00093503          	ld	a0,0(s2)
    8004180c:	00893583          	ld	a1,8(s2)
    80041810:	c0bc80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:19006
        ret = JS_ThrowTypeError(ctx, "cannot invoke a running generator");
    80041814:	e82a                	sd	a0,16(sp)
    80041816:	0005071b          	sext.w	a4,a0
quickjs-nuttx/quickjs.c:19007
        break;
    8004181a:	bff9                	j	800417f8 <js_generator_next+0x180>
quickjs-nuttx/quickjs.c:19001
            ret = JS_Throw(ctx, JS_DupValue(ctx, argv[0]));
    8004181c:	00093503          	ld	a0,0(s2)
    80041820:	00893583          	ld	a1,8(s2)
    80041824:	bf7c80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80041828:	862e                	mv	a2,a1
    8004182a:	e0aa                	sd	a0,64(sp)
    8004182c:	e4ae                	sd	a1,72(sp)
    8004182e:	85aa                	mv	a1,a0
    80041830:	8526                	mv	a0,s1
    80041832:	c11cc0ef          	jal	ra,8000e442 <JS_Throw>
    80041836:	bff9                	j	80041814 <js_generator_next+0x19c>
quickjs-nuttx/quickjs.c:19006
        ret = JS_ThrowTypeError(ctx, "cannot invoke a running generator");
    80041838:	8526                	mv	a0,s1
    8004183a:	0002c597          	auipc	a1,0x2c
    8004183e:	c7e58593          	addi	a1,a1,-898 # 8006d4b8 <qjsc_repl+0x7f08>
    80041842:	e2bd60ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80041846:	b7f9                	j	80041814 <js_generator_next+0x19c>

0000000080041848 <js_generator_function_call>:
js_generator_function_call():
quickjs-nuttx/quickjs.c:19016
{
    80041848:	7119                	addi	sp,sp,-128
    8004184a:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:19020
    s = js_mallocz(ctx, sizeof(*s));
    8004184c:	45c1                	li	a1,16
quickjs-nuttx/quickjs.c:19016
{
    8004184e:	f4a6                	sd	s1,104(sp)
    80041850:	e43e                	sd	a5,8(sp)
    80041852:	e042                	sd	a6,0(sp)
    80041854:	fc86                	sd	ra,120(sp)
    80041856:	f8a2                	sd	s0,112(sp)
    80041858:	f0ca                	sd	s2,96(sp)
    8004185a:	84aa                	mv	s1,a0
    8004185c:	f432                	sd	a2,40(sp)
    8004185e:	e836                	sd	a3,16(sp)
    80041860:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:19020
    s = js_mallocz(ctx, sizeof(*s));
    80041862:	8d7d90ef          	jal	ra,8001b138 <js_mallocz>
quickjs-nuttx/quickjs.c:19021
    if (!s)
    80041866:	6802                	ld	a6,0(sp)
    80041868:	67a2                	ld	a5,8(sp)
    8004186a:	e509                	bnez	a0,80041874 <js_generator_function_call+0x2c>
quickjs-nuttx/quickjs.c:19044
    return JS_EXCEPTION;
    8004186c:	4799                	li	a5,6
    8004186e:	e882                	sd	zero,80(sp)
    80041870:	ecbe                	sd	a5,88(sp)
    80041872:	a0bd                	j	800418e0 <js_generator_function_call+0x98>
quickjs-nuttx/quickjs.c:19024
    s->func_state = async_func_init(ctx, func_obj, this_obj, argc, argv);
    80041874:	7582                	ld	a1,32(sp)
    80041876:	66c2                	ld	a3,16(sp)
    80041878:	6762                	ld	a4,24(sp)
    8004187a:	7622                	ld	a2,40(sp)
    8004187c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19023
    s->state = JS_GENERATOR_STATE_SUSPENDED_START;
    8004187e:	00052023          	sw	zero,0(a0)
quickjs-nuttx/quickjs.c:19024
    s->func_state = async_func_init(ctx, func_obj, this_obj, argc, argv);
    80041882:	8526                	mv	a0,s1
    80041884:	8dbd90ef          	jal	ra,8001b15e <async_func_init>
    80041888:	e408                	sd	a0,8(s0)
    8004188a:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:19025
    if (!s->func_state) {
    8004188c:	ed01                	bnez	a0,800418a4 <js_generator_function_call+0x5c>
quickjs-nuttx/quickjs.c:19026
        s->state = JS_GENERATOR_STATE_COMPLETED;
    8004188e:	4791                	li	a5,4
    80041890:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:19042
    free_generator_stack_rt(ctx->rt, s);
    80041892:	6c88                	ld	a0,24(s1)
    80041894:	85a2                	mv	a1,s0
    80041896:	9bdca0ef          	jal	ra,8000c252 <free_generator_stack_rt>
quickjs-nuttx/quickjs.c:19043
    js_free(ctx, s);
    8004189a:	85a2                	mv	a1,s0
    8004189c:	8526                	mv	a0,s1
    8004189e:	f58c90ef          	jal	ra,8000aff6 <js_free>
    800418a2:	b7e9                	j	8004186c <js_generator_function_call+0x24>
quickjs-nuttx/quickjs.c:19031
    func_ret = async_func_resume(ctx, s->func_state);
    800418a4:	8526                	mv	a0,s1
    800418a6:	d0fff0ef          	jal	ra,800415b4 <async_func_resume>
quickjs-nuttx/quickjs.c:19032
    if (JS_IsException(func_ret))
    800418aa:	0005879b          	sext.w	a5,a1
    800418ae:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:19031
    func_ret = async_func_resume(ctx, s->func_state);
    800418b0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:19032
    if (JS_IsException(func_ret))
    800418b2:	ff2780e3          	beq	a5,s2,80041892 <js_generator_function_call+0x4a>
quickjs-nuttx/quickjs.c:19034
    JS_FreeValue(ctx, func_ret);
    800418b6:	85aa                	mv	a1,a0
    800418b8:	8526                	mv	a0,s1
    800418ba:	ee5c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19036
    obj = js_create_from_ctor(ctx, func_obj, JS_CLASS_GENERATOR);
    800418be:	7582                	ld	a1,32(sp)
    800418c0:	7622                	ld	a2,40(sp)
    800418c2:	02f00693          	li	a3,47
    800418c6:	8526                	mv	a0,s1
    800418c8:	bb4da0ef          	jal	ra,8001bc7c <js_create_from_ctor>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800418cc:	0005879b          	sext.w	a5,a1
js_generator_function_call():
quickjs-nuttx/quickjs.c:19037
    if (JS_IsException(obj))
    800418d0:	fd2781e3          	beq	a5,s2,80041892 <js_generator_function_call+0x4a>
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    800418d4:	577d                	li	a4,-1
    800418d6:	00e79363          	bne	a5,a4,800418dc <js_generator_function_call+0x94>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    800418da:	f900                	sd	s0,48(a0)
js_generator_function_call():
quickjs-nuttx/quickjs.c:19040
    return obj;
    800418dc:	e8aa                	sd	a0,80(sp)
    800418de:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:19045 (discriminator 1)
}
    800418e0:	70e6                	ld	ra,120(sp)
    800418e2:	7446                	ld	s0,112(sp)
    800418e4:	6546                	ld	a0,80(sp)
    800418e6:	65e6                	ld	a1,88(sp)
    800418e8:	74a6                	ld	s1,104(sp)
    800418ea:	7906                	ld	s2,96(sp)
    800418ec:	6109                	addi	sp,sp,128
    800418ee:	8082                	ret

00000000800418f0 <js_async_generator_function_call>:
js_async_generator_function_call():
quickjs-nuttx/quickjs.c:19607
{
    800418f0:	7119                	addi	sp,sp,-128
    800418f2:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:19611
    s = js_mallocz(ctx, sizeof(*s));
    800418f4:	02800593          	li	a1,40
quickjs-nuttx/quickjs.c:19607
{
    800418f8:	f4a6                	sd	s1,104(sp)
    800418fa:	e43e                	sd	a5,8(sp)
    800418fc:	e042                	sd	a6,0(sp)
    800418fe:	fc86                	sd	ra,120(sp)
    80041900:	f8a2                	sd	s0,112(sp)
    80041902:	f0ca                	sd	s2,96(sp)
    80041904:	84aa                	mv	s1,a0
    80041906:	f432                	sd	a2,40(sp)
    80041908:	e836                	sd	a3,16(sp)
    8004190a:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:19611
    s = js_mallocz(ctx, sizeof(*s));
    8004190c:	82dd90ef          	jal	ra,8001b138 <js_mallocz>
quickjs-nuttx/quickjs.c:19612
    if (!s)
    80041910:	6802                	ld	a6,0(sp)
    80041912:	67a2                	ld	a5,8(sp)
    80041914:	e509                	bnez	a0,8004191e <js_async_generator_function_call+0x2e>
quickjs-nuttx/quickjs.c:19634
    return JS_EXCEPTION;
    80041916:	4799                	li	a5,6
    80041918:	e882                	sd	zero,80(sp)
    8004191a:	ecbe                	sd	a5,88(sp)
    8004191c:	a08d                	j	8004197e <js_async_generator_function_call+0x8e>
quickjs-nuttx/quickjs.c:19615
    init_list_head(&s->queue);
    8004191e:	01850713          	addi	a4,a0,24
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    80041922:	ed18                	sd	a4,24(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    80041924:	f118                	sd	a4,32(a0)
js_async_generator_function_call():
quickjs-nuttx/quickjs.c:19616
    s->func_state = async_func_init(ctx, func_obj, this_obj, argc, argv);
    80041926:	7582                	ld	a1,32(sp)
    80041928:	66c2                	ld	a3,16(sp)
    8004192a:	6762                	ld	a4,24(sp)
    8004192c:	7622                	ld	a2,40(sp)
    8004192e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19614
    s->state = JS_ASYNC_GENERATOR_STATE_SUSPENDED_START;
    80041930:	00052423          	sw	zero,8(a0)
quickjs-nuttx/quickjs.c:19616
    s->func_state = async_func_init(ctx, func_obj, this_obj, argc, argv);
    80041934:	8526                	mv	a0,s1
    80041936:	829d90ef          	jal	ra,8001b15e <async_func_init>
    8004193a:	e808                	sd	a0,16(s0)
    8004193c:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:19617
    if (!s->func_state)
    8004193e:	c921                	beqz	a0,8004198e <js_async_generator_function_call+0x9e>
quickjs-nuttx/quickjs.c:19621
    func_ret = async_func_resume(ctx, s->func_state);
    80041940:	8526                	mv	a0,s1
    80041942:	c73ff0ef          	jal	ra,800415b4 <async_func_resume>
quickjs-nuttx/quickjs.c:19622
    if (JS_IsException(func_ret))
    80041946:	0005879b          	sext.w	a5,a1
    8004194a:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:19621
    func_ret = async_func_resume(ctx, s->func_state);
    8004194c:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:19622
    if (JS_IsException(func_ret))
    8004194e:	05278063          	beq	a5,s2,8004198e <js_async_generator_function_call+0x9e>
quickjs-nuttx/quickjs.c:19624
    JS_FreeValue(ctx, func_ret);
    80041952:	85aa                	mv	a1,a0
    80041954:	8526                	mv	a0,s1
    80041956:	e49c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19626
    obj = js_create_from_ctor(ctx, func_obj, JS_CLASS_ASYNC_GENERATOR);
    8004195a:	7582                	ld	a1,32(sp)
    8004195c:	7622                	ld	a2,40(sp)
    8004195e:	03900693          	li	a3,57
    80041962:	8526                	mv	a0,s1
    80041964:	b18da0ef          	jal	ra,8001bc7c <js_create_from_ctor>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80041968:	0005879b          	sext.w	a5,a1
js_async_generator_function_call():
quickjs-nuttx/quickjs.c:19627
    if (JS_IsException(obj))
    8004196c:	03278163          	beq	a5,s2,8004198e <js_async_generator_function_call+0x9e>
quickjs-nuttx/quickjs.c:19629
    s->generator = JS_VALUE_GET_OBJ(obj);
    80041970:	e008                	sd	a0,0(s0)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80041972:	577d                	li	a4,-1
    80041974:	00e79363          	bne	a5,a4,8004197a <js_async_generator_function_call+0x8a>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    80041978:	f900                	sd	s0,48(a0)
js_async_generator_function_call():
quickjs-nuttx/quickjs.c:19631
    return obj;
    8004197a:	e8aa                	sd	a0,80(sp)
    8004197c:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:19635 (discriminator 1)
}
    8004197e:	70e6                	ld	ra,120(sp)
    80041980:	7446                	ld	s0,112(sp)
    80041982:	6546                	ld	a0,80(sp)
    80041984:	65e6                	ld	a1,88(sp)
    80041986:	74a6                	ld	s1,104(sp)
    80041988:	7906                	ld	s2,96(sp)
    8004198a:	6109                	addi	sp,sp,128
    8004198c:	8082                	ret
quickjs-nuttx/quickjs.c:19633
    js_async_generator_free(ctx->rt, s);
    8004198e:	6c88                	ld	a0,24(s1)
    80041990:	85a2                	mv	a1,s0
    80041992:	89ccb0ef          	jal	ra,8000ca2e <js_async_generator_free>
    80041996:	b741                	j	80041916 <js_async_generator_function_call+0x26>

0000000080041998 <JS_CallConstructorInternal>:
JS_CallConstructorInternal():
quickjs-nuttx/quickjs.c:18667
{
    80041998:	7135                	addi	sp,sp,-160
    8004199a:	e922                	sd	s0,144(sp)
    8004199c:	e526                	sd	s1,136(sp)
    8004199e:	fcce                	sd	s3,120(sp)
    800419a0:	f8d2                	sd	s4,112(sp)
    800419a2:	ed06                	sd	ra,152(sp)
    800419a4:	e14a                	sd	s2,128(sp)
    800419a6:	f4d6                	sd	s5,104(sp)
    800419a8:	842a                	mv	s0,a0
    800419aa:	f02e                	sd	a1,32(sp)
    800419ac:	f432                	sd	a2,40(sp)
    800419ae:	e836                	sd	a3,16(sp)
    800419b0:	ec3a                	sd	a4,24(sp)
    800419b2:	89be                	mv	s3,a5
    800419b4:	8a42                	mv	s4,a6
    800419b6:	84c6                	mv	s1,a7
quickjs-nuttx/quickjs.c:18671
    if (js_poll_interrupts(ctx))
    800419b8:	cfad80ef          	jal	ra,80019eb2 <js_poll_interrupts>
    800419bc:	c509                	beqz	a0,800419c6 <JS_CallConstructorInternal+0x2e>
quickjs-nuttx/quickjs.c:18672
        return JS_EXCEPTION;
    800419be:	e882                	sd	zero,80(sp)
    800419c0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:18706
            return obj;
    800419c2:	ecbe                	sd	a5,88(sp)
    800419c4:	a06d                	j	80041a6e <JS_CallConstructorInternal+0xd6>
quickjs-nuttx/quickjs.c:18674
    if (unlikely(JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT))
    800419c6:	7622                	ld	a2,40(sp)
    800419c8:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:18673
    flags |= JS_CALL_FLAG_CONSTRUCTOR;
    800419ca:	0014e493          	ori	s1,s1,1
quickjs-nuttx/quickjs.c:18674
    if (unlikely(JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT))
    800419ce:	0006091b          	sext.w	s2,a2
    800419d2:	04f91663          	bne	s2,a5,80041a1e <JS_CallConstructorInternal+0x86>
quickjs-nuttx/quickjs.c:18676
    p = JS_VALUE_GET_OBJ(func_obj);
    800419d6:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:18677
    if (unlikely(!p->is_constructor))
    800419d8:	0055c703          	lbu	a4,5(a1)
    800419dc:	8b41                	andi	a4,a4,16
    800419de:	e305                	bnez	a4,800419fe <JS_CallConstructorInternal+0x66>
quickjs-nuttx/quickjs.c:18678
        return JS_ThrowTypeError(ctx, "not a constructor");
    800419e0:	00029597          	auipc	a1,0x29
    800419e4:	9b858593          	addi	a1,a1,-1608 # 8006a398 <qjsc_repl+0x4de8>
quickjs-nuttx/quickjs.c:18684
            return JS_ThrowTypeError(ctx, "not a function");
    800419e8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:18709
}
    800419ea:	644a                	ld	s0,144(sp)
    800419ec:	60ea                	ld	ra,152(sp)
    800419ee:	64aa                	ld	s1,136(sp)
    800419f0:	690a                	ld	s2,128(sp)
    800419f2:	79e6                	ld	s3,120(sp)
    800419f4:	7a46                	ld	s4,112(sp)
    800419f6:	7aa6                	ld	s5,104(sp)
    800419f8:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:18684
            return JS_ThrowTypeError(ctx, "not a function");
    800419fa:	c73d606f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:18679
    if (unlikely(p->class_id != JS_CLASS_BYTECODE_FUNCTION)) {
    800419fe:	0065d703          	lhu	a4,6(a1)
    80041a02:	47b5                	li	a5,13
    80041a04:	04f70163          	beq	a4,a5,80041a46 <JS_CallConstructorInternal+0xae>
quickjs-nuttx/quickjs.c:18681
        call_func = ctx->rt->class_array[p->class_id].call;
    80041a08:	6c1c                	ld	a5,24(s0)
    80041a0a:	7bb4                	ld	a3,112(a5)
    80041a0c:	02800793          	li	a5,40
    80041a10:	02f70733          	mul	a4,a4,a5
    80041a14:	9736                	add	a4,a4,a3
    80041a16:	01873303          	ld	t1,24(a4) # 10018 <asinh-0x7ffeffe8>
quickjs-nuttx/quickjs.c:18682
        if (!call_func) {
    80041a1a:	00031763          	bnez	t1,80041a28 <JS_CallConstructorInternal+0x90>
quickjs-nuttx/quickjs.c:18684
            return JS_ThrowTypeError(ctx, "not a function");
    80041a1e:	00028597          	auipc	a1,0x28
    80041a22:	1d258593          	addi	a1,a1,466 # 80069bf0 <qjsc_repl+0x4640>
    80041a26:	b7c9                	j	800419e8 <JS_CallConstructorInternal+0x50>
quickjs-nuttx/quickjs.c:18686
        return call_func(ctx, func_obj, new_target, argc,
    80041a28:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:18709
}
    80041a2a:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:18686
        return call_func(ctx, func_obj, new_target, argc,
    80041a2c:	66c2                	ld	a3,16(sp)
    80041a2e:	6762                	ld	a4,24(sp)
quickjs-nuttx/quickjs.c:18709
}
    80041a30:	60ea                	ld	ra,152(sp)
    80041a32:	690a                	ld	s2,128(sp)
    80041a34:	7aa6                	ld	s5,104(sp)
quickjs-nuttx/quickjs.c:18686
        return call_func(ctx, func_obj, new_target, argc,
    80041a36:	88a6                	mv	a7,s1
    80041a38:	8852                	mv	a6,s4
quickjs-nuttx/quickjs.c:18709
}
    80041a3a:	64aa                	ld	s1,136(sp)
    80041a3c:	7a46                	ld	s4,112(sp)
quickjs-nuttx/quickjs.c:18686
        return call_func(ctx, func_obj, new_target, argc,
    80041a3e:	87ce                	mv	a5,s3
quickjs-nuttx/quickjs.c:18709
}
    80041a40:	79e6                	ld	s3,120(sp)
    80041a42:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:18686
        return call_func(ctx, func_obj, new_target, argc,
    80041a44:	8302                	jr	t1
quickjs-nuttx/quickjs.c:18691
    if (b->is_derived_class_constructor) {
    80041a46:	799c                	ld	a5,48(a1)
    80041a48:	0197c703          	lbu	a4,25(a5)
    80041a4c:	8b11                	andi	a4,a4,4
    80041a4e:	cb1d                	beqz	a4,80041a84 <JS_CallConstructorInternal+0xec>
quickjs-nuttx/quickjs.c:18692
        return JS_CallInternal(ctx, func_obj, JS_UNDEFINED, new_target, argc, argv, flags);
    80041a50:	478d                	li	a5,3
    80041a52:	e4be                	sd	a5,72(sp)
    80041a54:	6862                	ld	a6,24(sp)
    80041a56:	67c2                	ld	a5,16(sp)
    80041a58:	e426                	sd	s1,8(sp)
    80041a5a:	e052                	sd	s4,0(sp)
    80041a5c:	88ce                	mv	a7,s3
    80041a5e:	4681                	li	a3,0
    80041a60:	470d                	li	a4,3
    80041a62:	8522                	mv	a0,s0
    80041a64:	e082                	sd	zero,64(sp)
    80041a66:	d08cd0ef          	jal	ra,8000ef6e <JS_CallInternal>
    80041a6a:	e8aa                	sd	a0,80(sp)
    80041a6c:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:18709 (discriminator 4)
}
    80041a6e:	60ea                	ld	ra,152(sp)
    80041a70:	644a                	ld	s0,144(sp)
    80041a72:	6546                	ld	a0,80(sp)
    80041a74:	65e6                	ld	a1,88(sp)
    80041a76:	64aa                	ld	s1,136(sp)
    80041a78:	690a                	ld	s2,128(sp)
    80041a7a:	79e6                	ld	s3,120(sp)
    80041a7c:	7a46                	ld	s4,112(sp)
    80041a7e:	7aa6                	ld	s5,104(sp)
    80041a80:	610d                	addi	sp,sp,160
    80041a82:	8082                	ret
quickjs-nuttx/quickjs.c:18696
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_OBJECT);
    80041a84:	65c2                	ld	a1,16(sp)
    80041a86:	6662                	ld	a2,24(sp)
    80041a88:	4685                	li	a3,1
    80041a8a:	8522                	mv	a0,s0
    80041a8c:	9f0da0ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80041a90:	f82a                	sd	a0,48(sp)
    80041a92:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:18697
        if (JS_IsException(obj))
    80041a94:	0005879b          	sext.w	a5,a1
    80041a98:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:18696
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_OBJECT);
    80041a9a:	86aa                	mv	a3,a0
    80041a9c:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:18697
        if (JS_IsException(obj))
    80041a9e:	01579463          	bne	a5,s5,80041aa6 <JS_CallConstructorInternal+0x10e>
quickjs-nuttx/quickjs.c:18698
            return JS_EXCEPTION;
    80041aa2:	e882                	sd	zero,80(sp)
    80041aa4:	bf39                	j	800419c2 <JS_CallConstructorInternal+0x2a>
quickjs-nuttx/quickjs.c:18699
        ret = JS_CallInternal(ctx, func_obj, obj, new_target, argc, argv, flags);
    80041aa6:	67c2                	ld	a5,16(sp)
    80041aa8:	7622                	ld	a2,40(sp)
    80041aaa:	6862                	ld	a6,24(sp)
    80041aac:	7582                	ld	a1,32(sp)
    80041aae:	e426                	sd	s1,8(sp)
    80041ab0:	e052                	sd	s4,0(sp)
    80041ab2:	88ce                	mv	a7,s3
    80041ab4:	8522                	mv	a0,s0
    80041ab6:	cb8cd0ef          	jal	ra,8000ef6e <JS_CallInternal>
    80041aba:	e0aa                	sd	a0,64(sp)
    80041abc:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:18700
        if (JS_VALUE_GET_TAG(ret) == JS_TAG_OBJECT ||
    80041abe:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:18699
        ret = JS_CallInternal(ctx, func_obj, obj, new_target, argc, argv, flags);
    80041ac2:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:18700
        if (JS_VALUE_GET_TAG(ret) == JS_TAG_OBJECT ||
    80041ac4:	01278463          	beq	a5,s2,80041acc <JS_CallConstructorInternal+0x134>
quickjs-nuttx/quickjs.c:18700 (discriminator 1)
    80041ac8:	01579b63          	bne	a5,s5,80041ade <JS_CallConstructorInternal+0x146>
quickjs-nuttx/quickjs.c:18702
            JS_FreeValue(ctx, obj);
    80041acc:	75c2                	ld	a1,48(sp)
    80041ace:	7662                	ld	a2,56(sp)
    80041ad0:	8522                	mv	a0,s0
    80041ad2:	ccdc90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18703
            return ret;
    80041ad6:	6786                	ld	a5,64(sp)
    80041ad8:	e8be                	sd	a5,80(sp)
    80041ada:	67a6                	ld	a5,72(sp)
    80041adc:	b5dd                	j	800419c2 <JS_CallConstructorInternal+0x2a>
quickjs-nuttx/quickjs.c:18705
            JS_FreeValue(ctx, ret);
    80041ade:	85aa                	mv	a1,a0
    80041ae0:	8522                	mv	a0,s0
    80041ae2:	cbdc90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18706
            return obj;
    80041ae6:	77c2                	ld	a5,48(sp)
    80041ae8:	e8be                	sd	a5,80(sp)
    80041aea:	77e2                	ld	a5,56(sp)
    80041aec:	bdd9                	j	800419c2 <JS_CallConstructorInternal+0x2a>

0000000080041aee <JS_CallConstructor2>:
JS_CallConstructor2():
quickjs-nuttx/quickjs.c:18714
{
    80041aee:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:18715
    return JS_CallConstructorInternal(ctx, func_obj, new_target,
    80041af0:	4889                	li	a7,2
quickjs-nuttx/quickjs.c:18718
}
    80041af2:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:18715
    return JS_CallConstructorInternal(ctx, func_obj, new_target,
    80041af4:	ea5ff06f          	j	80041998 <JS_CallConstructorInternal>

0000000080041af8 <js_reflect_construct>:
js_reflect_construct():
quickjs-nuttx/quickjs.c:45544
{
    80041af8:	7135                	addi	sp,sp,-160
    80041afa:	e14a                	sd	s2,128(sp)
    80041afc:	ed06                	sd	ra,152(sp)
    80041afe:	e922                	sd	s0,144(sp)
    80041b00:	e526                	sd	s1,136(sp)
    80041b02:	fcce                	sd	s3,120(sp)
quickjs-nuttx/quickjs.c:45550
    array_arg = argv[1];
    80041b04:	6b1c                	ld	a5,16(a4)
quickjs-nuttx/quickjs.c:45549
    func = argv[0];
    80041b06:	6304                	ld	s1,0(a4)
    80041b08:	6700                	ld	s0,8(a4)
quickjs-nuttx/quickjs.c:45550
    array_arg = argv[1];
    80041b0a:	f83e                	sd	a5,48(sp)
    80041b0c:	6f1c                	ld	a5,24(a4)
quickjs-nuttx/quickjs.c:45544
{
    80041b0e:	e02e                	sd	a1,0(sp)
    80041b10:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:45550
    array_arg = argv[1];
    80041b12:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:45549
    func = argv[0];
    80041b14:	f026                	sd	s1,32(sp)
    80041b16:	f422                	sd	s0,40(sp)
quickjs-nuttx/quickjs.c:45551
    if (argc > 2) {
    80041b18:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:45544
{
    80041b1a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:45551
    if (argc > 2) {
    80041b1c:	02d7dc63          	bge	a5,a3,80041b54 <js_reflect_construct+0x5c>
quickjs-nuttx/quickjs.c:45552
        new_target = argv[2];
    80041b20:	7304                	ld	s1,32(a4)
    80041b22:	7700                	ld	s0,40(a4)
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80041b24:	57fd                	li	a5,-1
js_reflect_construct():
quickjs-nuttx/quickjs.c:45552
        new_target = argv[2];
    80041b26:	e0a6                	sd	s1,64(sp)
    80041b28:	e4a2                	sd	s0,72(sp)
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80041b2a:	0004071b          	sext.w	a4,s0
    80041b2e:	00f71663          	bne	a4,a5,80041b3a <js_reflect_construct+0x42>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    80041b32:	609c                	ld	a5,0(s1)
    80041b34:	93b1                	srli	a5,a5,0x2c
js_reflect_construct():
quickjs-nuttx/quickjs.c:45553
        if (!JS_IsConstructor(ctx, new_target))
    80041b36:	8b85                	andi	a5,a5,1
    80041b38:	ef91                	bnez	a5,80041b54 <js_reflect_construct+0x5c>
quickjs-nuttx/quickjs.c:45564
}
    80041b3a:	644a                	ld	s0,144(sp)
    80041b3c:	60ea                	ld	ra,152(sp)
    80041b3e:	64aa                	ld	s1,136(sp)
    80041b40:	79e6                	ld	s3,120(sp)
quickjs-nuttx/quickjs.c:45554
            return JS_ThrowTypeError(ctx, "not a constructor");
    80041b42:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:45564
}
    80041b44:	690a                	ld	s2,128(sp)
quickjs-nuttx/quickjs.c:45554
            return JS_ThrowTypeError(ctx, "not a constructor");
    80041b46:	00029597          	auipc	a1,0x29
    80041b4a:	85258593          	addi	a1,a1,-1966 # 8006a398 <qjsc_repl+0x4de8>
quickjs-nuttx/quickjs.c:45564
}
    80041b4e:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs.c:45554
            return JS_ThrowTypeError(ctx, "not a constructor");
    80041b50:	b1dd606f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:45558
    tab = build_arg_list(ctx, &len, array_arg);
    80041b54:	7642                	ld	a2,48(sp)
    80041b56:	76e2                	ld	a3,56(sp)
    80041b58:	086c                	addi	a1,sp,28
    80041b5a:	854a                	mv	a0,s2
    80041b5c:	867f70ef          	jal	ra,800393c2 <build_arg_list>
    80041b60:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:45559
    if (!tab)
    80041b62:	ed09                	bnez	a0,80041b7c <js_reflect_construct+0x84>
quickjs-nuttx/quickjs.c:45560
        return JS_EXCEPTION;
    80041b64:	f082                	sd	zero,96(sp)
    80041b66:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45564
}
    80041b68:	60ea                	ld	ra,152(sp)
    80041b6a:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs.c:45563
    return ret;
    80041b6c:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:45564
}
    80041b6e:	7506                	ld	a0,96(sp)
    80041b70:	75a6                	ld	a1,104(sp)
    80041b72:	64aa                	ld	s1,136(sp)
    80041b74:	690a                	ld	s2,128(sp)
    80041b76:	79e6                	ld	s3,120(sp)
    80041b78:	610d                	addi	sp,sp,160
    80041b7a:	8082                	ret
quickjs-nuttx/quickjs.c:45561
    ret = JS_CallConstructor2(ctx, func, new_target, len, (JSValueConst *)tab);
    80041b7c:	47f2                	lw	a5,28(sp)
    80041b7e:	7622                	ld	a2,40(sp)
    80041b80:	7582                	ld	a1,32(sp)
    80041b82:	882a                	mv	a6,a0
    80041b84:	86a6                	mv	a3,s1
    80041b86:	8722                	mv	a4,s0
    80041b88:	854a                	mv	a0,s2
    80041b8a:	f65ff0ef          	jal	ra,80041aee <JS_CallConstructor2>
quickjs-nuttx/quickjs.c:45562
    free_arg_list(ctx, tab, len);
    80041b8e:	4672                	lw	a2,28(sp)
quickjs-nuttx/quickjs.c:45561
    ret = JS_CallConstructor2(ctx, func, new_target, len, (JSValueConst *)tab);
    80041b90:	e8aa                	sd	a0,80(sp)
    80041b92:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:45562
    free_arg_list(ctx, tab, len);
    80041b94:	854a                	mv	a0,s2
    80041b96:	85ce                	mv	a1,s3
    80041b98:	f0fc90ef          	jal	ra,8000baa6 <free_arg_list>
quickjs-nuttx/quickjs.c:45563
    return ret;
    80041b9c:	67c6                	ld	a5,80(sp)
    80041b9e:	f0be                	sd	a5,96(sp)
    80041ba0:	67e6                	ld	a5,88(sp)
    80041ba2:	b7d9                	j	80041b68 <js_reflect_construct+0x70>

0000000080041ba4 <JS_CallConstructor>:
JS_CallConstructor():
quickjs-nuttx/quickjs.c:18722
{
    80041ba4:	1101                	addi	sp,sp,-32
    80041ba6:	87b6                	mv	a5,a3
quickjs-nuttx/quickjs.c:18723
    return JS_CallConstructorInternal(ctx, func_obj, func_obj,
    80041ba8:	883a                	mv	a6,a4
    80041baa:	4889                	li	a7,2
    80041bac:	86ae                	mv	a3,a1
    80041bae:	8732                	mv	a4,a2
quickjs-nuttx/quickjs.c:18726
}
    80041bb0:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:18723
    return JS_CallConstructorInternal(ctx, func_obj, func_obj,
    80041bb2:	de7ff06f          	j	80041998 <JS_CallConstructorInternal>

0000000080041bb6 <js_typed_array_create>:
js_typed_array_create():
quickjs-nuttx/quickjs.c:53265
{
    80041bb6:	7119                	addi	sp,sp,-128
    80041bb8:	f8a2                	sd	s0,112(sp)
    80041bba:	f0ca                	sd	s2,96(sp)
    80041bbc:	ecce                	sd	s3,88(sp)
    80041bbe:	893a                	mv	s2,a4
    80041bc0:	fc86                	sd	ra,120(sp)
    80041bc2:	f4a6                	sd	s1,104(sp)
    80041bc4:	842a                	mv	s0,a0
    80041bc6:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:53270
    ret = JS_CallConstructor(ctx, ctor, argc, argv);
    80041bc8:	fddff0ef          	jal	ra,80041ba4 <JS_CallConstructor>
    80041bcc:	f02a                	sd	a0,32(sp)
    80041bce:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:53271
    if (JS_IsException(ret))
    80041bd0:	0005871b          	sext.w	a4,a1
    80041bd4:	4799                	li	a5,6
    80041bd6:	00f71f63          	bne	a4,a5,80041bf4 <js_typed_array_create+0x3e>
quickjs-nuttx/quickjs.c:53272
        return ret;
    80041bda:	7782                	ld	a5,32(sp)
    80041bdc:	f83e                	sd	a5,48(sp)
    80041bde:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:53289
}
    80041be0:	70e6                	ld	ra,120(sp)
    80041be2:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs.c:53285
            return JS_EXCEPTION;
    80041be4:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:53289
}
    80041be6:	7542                	ld	a0,48(sp)
    80041be8:	75e2                	ld	a1,56(sp)
    80041bea:	74a6                	ld	s1,104(sp)
    80041bec:	7906                	ld	s2,96(sp)
    80041bee:	69e6                	ld	s3,88(sp)
    80041bf0:	6109                	addi	sp,sp,128
    80041bf2:	8082                	ret
    80041bf4:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:53274
    new_len = js_typed_array_get_length_internal(ctx, ret);
    80041bf6:	85aa                	mv	a1,a0
    80041bf8:	8522                	mv	a0,s0
    80041bfa:	87bd70ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
    80041bfe:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:53275
    if (new_len < 0)
    80041c00:	02054c63          	bltz	a0,80041c38 <js_typed_array_create+0x82>
quickjs-nuttx/quickjs.c:53277
    if (argc == 1) {
    80041c04:	4785                	li	a5,1
    80041c06:	fcf99ae3          	bne	s3,a5,80041bda <js_typed_array_create+0x24>
quickjs-nuttx/quickjs.c:53279
        if (JS_ToLengthFree(ctx, &len, JS_DupValue(ctx, argv[0])))
    80041c0a:	00093503          	ld	a0,0(s2)
    80041c0e:	00893583          	ld	a1,8(s2)
    80041c12:	809c80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80041c16:	862a                	mv	a2,a0
    80041c18:	86ae                	mv	a3,a1
    80041c1a:	8522                	mv	a0,s0
    80041c1c:	082c                	addi	a1,sp,24
    80041c1e:	980e30ef          	jal	ra,80024d9e <JS_ToLengthFree>
    80041c22:	e919                	bnez	a0,80041c38 <js_typed_array_create+0x82>
quickjs-nuttx/quickjs.c:53281
        if (new_len < len) {
    80041c24:	67e2                	ld	a5,24(sp)
    80041c26:	faf4dae3          	bge	s1,a5,80041bda <js_typed_array_create+0x24>
quickjs-nuttx/quickjs.c:53282
            JS_ThrowTypeError(ctx, "TypedArray length is too small");
    80041c2a:	0002c597          	auipc	a1,0x2c
    80041c2e:	8b658593          	addi	a1,a1,-1866 # 8006d4e0 <qjsc_repl+0x7f30>
    80041c32:	8522                	mv	a0,s0
    80041c34:	a39d60ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:53284
            JS_FreeValue(ctx, ret);
    80041c38:	7582                	ld	a1,32(sp)
    80041c3a:	7622                	ld	a2,40(sp)
    80041c3c:	8522                	mv	a0,s0
    80041c3e:	b61c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53285
            return JS_EXCEPTION;
    80041c42:	4799                	li	a5,6
    80041c44:	f802                	sd	zero,48(sp)
    80041c46:	bf69                	j	80041be0 <js_typed_array_create+0x2a>

0000000080041c48 <js_typed_array_of>:
js_typed_array_of():
quickjs-nuttx/quickjs.c:53422
{
    80041c48:	7135                	addi	sp,sp,-160
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80041c4a:	f082                	sd	zero,96(sp)
    80041c4c:	d0b6                	sw	a3,96(sp)
    80041c4e:	7786                	ld	a5,96(sp)
js_typed_array_of():
quickjs-nuttx/quickjs.c:53422
    80041c50:	e526                	sd	s1,136(sp)
    80041c52:	f8d2                	sd	s4,112(sp)
    80041c54:	84b6                	mv	s1,a3
    80041c56:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs.c:53428
    obj = js_typed_array_create(ctx, this_val, 1, args);
    80041c58:	4685                	li	a3,1
    80041c5a:	1818                	addi	a4,sp,48
quickjs-nuttx/quickjs.c:53422
{
    80041c5c:	e922                	sd	s0,144(sp)
    80041c5e:	e14a                	sd	s2,128(sp)
    80041c60:	fcce                	sd	s3,120(sp)
    80041c62:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:53427
    args[0] = JS_NewInt32(ctx, argc);
    80041c64:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:53422
{
    80041c66:	ed06                	sd	ra,152(sp)
    80041c68:	89aa                	mv	s3,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80041c6a:	ec82                	sd	zero,88(sp)
js_typed_array_of():
quickjs-nuttx/quickjs.c:53427
    args[0] = JS_NewInt32(ctx, argc);
    80041c6c:	fc02                	sd	zero,56(sp)
quickjs-nuttx/quickjs.c:53428
    obj = js_typed_array_create(ctx, this_val, 1, args);
    80041c6e:	f49ff0ef          	jal	ra,80041bb6 <js_typed_array_create>
    80041c72:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:53429
    if (JS_IsException(obj))
    80041c74:	0005871b          	sext.w	a4,a1
    80041c78:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53428
    obj = js_typed_array_create(ctx, this_val, 1, args);
    80041c7a:	842e                	mv	s0,a1
    80041c7c:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:53429
    if (JS_IsException(obj))
    80041c7e:	04f71d63          	bne	a4,a5,80041cd8 <js_typed_array_of+0x90>
quickjs-nuttx/quickjs.c:53430
        return obj;
    80041c82:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:53438
    return obj;
    80041c84:	e4a2                	sd	s0,72(sp)
    80041c86:	a83d                	j	80041cc4 <js_typed_array_of+0x7c>
quickjs-nuttx/quickjs.c:53433
        if (JS_SetPropertyUint32(ctx, obj, i, JS_DupValue(ctx, argv[i])) < 0) {
    80041c88:	00491793          	slli	a5,s2,0x4
    80041c8c:	97d2                	add	a5,a5,s4
    80041c8e:	6388                	ld	a0,0(a5)
    80041c90:	678c                	ld	a1,8(a5)
    80041c92:	e436                	sd	a3,8(sp)
    80041c94:	0905                	addi	s2,s2,1
    80041c96:	f84c80ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80041c9a:	87ae                	mv	a5,a1
    80041c9c:	ecae                	sd	a1,88(sp)
    80041c9e:	66a2                	ld	a3,8(sp)
    80041ca0:	7582                	ld	a1,32(sp)
    80041ca2:	872a                	mv	a4,a0
    80041ca4:	e8aa                	sd	a0,80(sp)
    80041ca6:	8622                	mv	a2,s0
    80041ca8:	854e                	mv	a0,s3
    80041caa:	f422                	sd	s0,40(sp)
    80041cac:	e61d50ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
    80041cb0:	02055463          	bgez	a0,80041cd8 <js_typed_array_of+0x90>
quickjs-nuttx/quickjs.c:53434
            JS_FreeValue(ctx, obj);
    80041cb4:	7582                	ld	a1,32(sp)
    80041cb6:	7622                	ld	a2,40(sp)
    80041cb8:	854e                	mv	a0,s3
    80041cba:	ae5c90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:53435
            return JS_EXCEPTION;
    80041cbe:	4799                	li	a5,6
    80041cc0:	e082                	sd	zero,64(sp)
    80041cc2:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:53439 (discriminator 1)
}
    80041cc4:	60ea                	ld	ra,152(sp)
    80041cc6:	644a                	ld	s0,144(sp)
    80041cc8:	6506                	ld	a0,64(sp)
    80041cca:	65a6                	ld	a1,72(sp)
    80041ccc:	64aa                	ld	s1,136(sp)
    80041cce:	690a                	ld	s2,128(sp)
    80041cd0:	79e6                	ld	s3,120(sp)
    80041cd2:	7a46                	ld	s4,112(sp)
    80041cd4:	610d                	addi	sp,sp,160
    80041cd6:	8082                	ret
quickjs-nuttx/quickjs.c:53432 (discriminator 1)
    for(i = 0; i < argc; i++) {
    80041cd8:	0009069b          	sext.w	a3,s2
    80041cdc:	fa96c6e3          	blt	a3,s1,80041c88 <js_typed_array_of+0x40>
quickjs-nuttx/quickjs.c:53438
    return obj;
    80041ce0:	7782                	ld	a5,32(sp)
    80041ce2:	e0be                	sd	a5,64(sp)
    80041ce4:	b745                	j	80041c84 <js_typed_array_of+0x3c>

0000000080041ce6 <js_array_buffer_slice>:
js_array_buffer_slice():
quickjs-nuttx/quickjs.c:52832
{
    80041ce6:	7171                	addi	sp,sp,-176
quickjs-nuttx/quickjs.c:52837
    abuf = JS_GetOpaque2(ctx, this_val, class_id);
    80041ce8:	86be                	mv	a3,a5
quickjs-nuttx/quickjs.c:52832
{
    80041cea:	f122                	sd	s0,160(sp)
    80041cec:	ed26                	sd	s1,152(sp)
    80041cee:	e152                	sd	s4,128(sp)
    80041cf0:	f506                	sd	ra,168(sp)
    80041cf2:	e94a                	sd	s2,144(sp)
    80041cf4:	e54e                	sd	s3,136(sp)
    80041cf6:	842a                	mv	s0,a0
    80041cf8:	e82e                	sd	a1,16(sp)
    80041cfa:	ec32                	sd	a2,24(sp)
    80041cfc:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:52837
    abuf = JS_GetOpaque2(ctx, this_val, class_id);
    80041cfe:	8a3e                	mv	s4,a5
    80041d00:	aefd60ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:52838
    if (!abuf)
    80041d04:	e501                	bnez	a0,80041d0c <js_array_buffer_slice+0x26>
quickjs-nuttx/quickjs.c:52892
    return JS_EXCEPTION;
    80041d06:	f082                	sd	zero,96(sp)
    80041d08:	4799                	li	a5,6
    80041d0a:	aa41                	j	80041e9a <js_array_buffer_slice+0x1b4>
quickjs-nuttx/quickjs.c:52840
    if (abuf->detached)
    80041d0c:	00454783          	lbu	a5,4(a0)
    80041d10:	89aa                	mv	s3,a0
    80041d12:	cb99                	beqz	a5,80041d28 <js_array_buffer_slice+0x42>
quickjs-nuttx/quickjs.c:52841
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80041d14:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52893
}
    80041d16:	740a                	ld	s0,160(sp)
    80041d18:	70aa                	ld	ra,168(sp)
    80041d1a:	64ea                	ld	s1,152(sp)
    80041d1c:	694a                	ld	s2,144(sp)
    80041d1e:	69aa                	ld	s3,136(sp)
    80041d20:	6a0a                	ld	s4,128(sp)
    80041d22:	614d                	addi	sp,sp,176
quickjs-nuttx/quickjs.c:52841
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80041d24:	a60d706f          	j	80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:52842
    len = abuf->byte_length;
    80041d28:	00052803          	lw	a6,0(a0)
quickjs-nuttx/quickjs.c:52844
    if (JS_ToInt64Clamp(ctx, &start, argv[0], 0, len, len))
    80041d2c:	6090                	ld	a2,0(s1)
    80041d2e:	6494                	ld	a3,8(s1)
    80041d30:	87c2                	mv	a5,a6
    80041d32:	4701                	li	a4,0
    80041d34:	100c                	addi	a1,sp,32
    80041d36:	8522                	mv	a0,s0
    80041d38:	e442                	sd	a6,8(sp)
    80041d3a:	806e30ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    80041d3e:	f561                	bnez	a0,80041d06 <js_array_buffer_slice+0x20>
quickjs-nuttx/quickjs.c:52847
    end = len;
    80041d40:	6822                	ld	a6,8(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80041d42:	6c94                	ld	a3,24(s1)
js_array_buffer_slice():
quickjs-nuttx/quickjs.c:52848
    if (!JS_IsUndefined(argv[1])) {
    80041d44:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:52847
    end = len;
    80041d46:	f442                	sd	a6,40(sp)
quickjs-nuttx/quickjs.c:52848
    if (!JS_IsUndefined(argv[1])) {
    80041d48:	0006871b          	sext.w	a4,a3
    80041d4c:	00f70a63          	beq	a4,a5,80041d60 <js_array_buffer_slice+0x7a>
quickjs-nuttx/quickjs.c:52849
        if (JS_ToInt64Clamp(ctx, &end, argv[1], 0, len, len))
    80041d50:	6890                	ld	a2,16(s1)
    80041d52:	87c2                	mv	a5,a6
    80041d54:	4701                	li	a4,0
    80041d56:	102c                	addi	a1,sp,40
    80041d58:	8522                	mv	a0,s0
    80041d5a:	fe7e20ef          	jal	ra,80024d40 <JS_ToInt64Clamp>
    80041d5e:	f545                	bnez	a0,80041d06 <js_array_buffer_slice+0x20>
quickjs-nuttx/quickjs.c:52852
    new_len = max_int64(end - start, 0);
    80041d60:	74a2                	ld	s1,40(sp)
    80041d62:	7782                	ld	a5,32(sp)
    80041d64:	8c9d                	sub	s1,s1,a5
    80041d66:	0004d363          	bgez	s1,80041d6c <js_array_buffer_slice+0x86>
    80041d6a:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:52853
    ctor = JS_SpeciesConstructor(ctx, this_val, JS_UNDEFINED);
    80041d6c:	65c2                	ld	a1,16(sp)
    80041d6e:	6662                	ld	a2,24(sp)
    80041d70:	470d                	li	a4,3
    80041d72:	490d                	li	s2,3
    80041d74:	4681                	li	a3,0
    80041d76:	8522                	mv	a0,s0
    80041d78:	e882                	sd	zero,80(sp)
    80041d7a:	ecca                	sd	s2,88(sp)
    80041d7c:	8f0d70ef          	jal	ra,80018e6c <JS_SpeciesConstructor>
    80041d80:	f82a                	sd	a0,48(sp)
    80041d82:	fc2e                	sd	a1,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80041d84:	0005879b          	sext.w	a5,a1
js_array_buffer_slice():
quickjs-nuttx/quickjs.c:52854
    if (JS_IsException(ctor))
    80041d88:	4719                	li	a4,6
    80041d8a:	00e79e63          	bne	a5,a4,80041da6 <js_array_buffer_slice+0xc0>
quickjs-nuttx/quickjs.c:52855
        return ctor;
    80041d8e:	f0aa                	sd	a0,96(sp)
    80041d90:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:52893 (discriminator 1)
}
    80041d92:	70aa                	ld	ra,168(sp)
    80041d94:	740a                	ld	s0,160(sp)
    80041d96:	7506                	ld	a0,96(sp)
    80041d98:	75a6                	ld	a1,104(sp)
    80041d9a:	64ea                	ld	s1,152(sp)
    80041d9c:	694a                	ld	s2,144(sp)
    80041d9e:	69aa                	ld	s3,136(sp)
    80041da0:	6a0a                	ld	s4,128(sp)
    80041da2:	614d                	addi	sp,sp,176
    80041da4:	8082                	ret
quickjs-nuttx/quickjs.c:52856
    if (JS_IsUndefined(ctor)) {
    80041da6:	03279663          	bne	a5,s2,80041dd2 <js_array_buffer_slice+0xec>
quickjs-nuttx/quickjs.c:52857
        new_obj = js_array_buffer_constructor2(ctx, JS_UNDEFINED, new_len,
    80041daa:	8752                	mv	a4,s4
    80041dac:	86a6                	mv	a3,s1
    80041dae:	4581                	li	a1,0
    80041db0:	460d                	li	a2,3
    80041db2:	8522                	mv	a0,s0
    80041db4:	f882                	sd	zero,112(sp)
    80041db6:	fcbe                	sd	a5,120(sp)
    80041db8:	8beda0ef          	jal	ra,8001be76 <js_array_buffer_constructor2>
    80041dbc:	e0aa                	sd	a0,64(sp)
    80041dbe:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:52866
    if (JS_IsException(new_obj))
    80041dc0:	0009079b          	sext.w	a5,s2
    80041dc4:	4719                	li	a4,6
    80041dc6:	04e79e63          	bne	a5,a4,80041e22 <js_array_buffer_slice+0x13c>
quickjs-nuttx/quickjs.c:52867
        return new_obj;
    80041dca:	6786                	ld	a5,64(sp)
    80041dcc:	f4ca                	sd	s2,104(sp)
    80041dce:	f0be                	sd	a5,96(sp)
    80041dd0:	b7c9                	j	80041d92 <js_array_buffer_slice+0xac>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80041dd2:	0004861b          	sext.w	a2,s1
    80041dd6:	02961e63          	bne	a2,s1,80041e12 <js_array_buffer_slice+0x12c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80041dda:	da82                	sw	zero,116(sp)
    80041ddc:	d8a6                	sw	s1,112(sp)
    80041dde:	77c6                	ld	a5,112(sp)
    80041de0:	fc82                	sd	zero,120(sp)
    80041de2:	f0be                	sd	a5,96(sp)
    80041de4:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80041de6:	d0b2                	sw	a2,96(sp)
js_array_buffer_slice():
quickjs-nuttx/quickjs.c:52862
        new_obj = JS_CallConstructor(ctx, ctor, 1, (JSValueConst *)args);
    80041de8:	75c2                	ld	a1,48(sp)
    80041dea:	7662                	ld	a2,56(sp)
    80041dec:	1098                	addi	a4,sp,96
    80041dee:	4685                	li	a3,1
    80041df0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52861
        args[0] = JS_NewInt64(ctx, new_len);
    80041df2:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:52862
        new_obj = JS_CallConstructor(ctx, ctor, 1, (JSValueConst *)args);
    80041df4:	db1ff0ef          	jal	ra,80041ba4 <JS_CallConstructor>
quickjs-nuttx/quickjs.c:52863
        JS_FreeValue(ctx, ctor);
    80041df8:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:52862
        new_obj = JS_CallConstructor(ctx, ctor, 1, (JSValueConst *)args);
    80041dfa:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:52863
        JS_FreeValue(ctx, ctor);
    80041dfc:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:52862
        new_obj = JS_CallConstructor(ctx, ctor, 1, (JSValueConst *)args);
    80041dfe:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:52863
        JS_FreeValue(ctx, ctor);
    80041e00:	8522                	mv	a0,s0
    80041e02:	99dc90ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52864
        JS_FreeValue(ctx, args[0]);
    80041e06:	7586                	ld	a1,96(sp)
    80041e08:	7626                	ld	a2,104(sp)
    80041e0a:	8522                	mv	a0,s0
    80041e0c:	993c90ef          	jal	ra,8000b79e <JS_FreeValue>
    80041e10:	bf45                	j	80041dc0 <js_array_buffer_slice+0xda>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80041e12:	d224f7d3          	fcvt.d.l	fa5,s1
    80041e16:	479d                	li	a5,7
    80041e18:	e2078653          	fmv.x.d	a2,fa5
js_array_buffer_slice():
quickjs-nuttx/quickjs.h:230
    return v;
    80041e1c:	b0be                	fsd	fa5,96(sp)
    80041e1e:	2601                	sext.w	a2,a2
    80041e20:	b7d9                	j	80041de6 <js_array_buffer_slice+0x100>
quickjs-nuttx/quickjs.c:52868
    new_abuf = JS_GetOpaque2(ctx, new_obj, class_id);
    80041e22:	6586                	ld	a1,64(sp)
    80041e24:	864a                	mv	a2,s2
    80041e26:	86d2                	mv	a3,s4
    80041e28:	8522                	mv	a0,s0
    80041e2a:	e4ca                	sd	s2,72(sp)
    80041e2c:	9c3d60ef          	jal	ra,800187ee <JS_GetOpaque2>
    80041e30:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:52869
    if (!new_abuf)
    80041e32:	c11d                	beqz	a0,80041e58 <js_array_buffer_slice+0x172>
quickjs-nuttx/quickjs.c:52871
    if (js_same_value(ctx, new_obj, this_val)) {
    80041e34:	6586                	ld	a1,64(sp)
    80041e36:	66c2                	ld	a3,16(sp)
    80041e38:	6762                	ld	a4,24(sp)
    80041e3a:	6626                	ld	a2,72(sp)
    80041e3c:	8522                	mv	a0,s0
    80041e3e:	b35c90ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:52872
        JS_ThrowTypeError(ctx, "cannot use identical ArrayBuffer");
    80041e42:	0002b597          	auipc	a1,0x2b
    80041e46:	6be58593          	addi	a1,a1,1726 # 8006d500 <qjsc_repl+0x7f50>
quickjs-nuttx/quickjs.c:52871
    if (js_same_value(ctx, new_obj, this_val)) {
    80041e4a:	e50d                	bnez	a0,80041e74 <js_array_buffer_slice+0x18e>
quickjs-nuttx/quickjs.c:52875
    if (new_abuf->detached) {
    80041e4c:	00494783          	lbu	a5,4(s2)
    80041e50:	cb91                	beqz	a5,80041e64 <js_array_buffer_slice+0x17e>
quickjs-nuttx/quickjs.c:52876
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    80041e52:	8522                	mv	a0,s0
    80041e54:	930d70ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:52891
    JS_FreeValue(ctx, new_obj);
    80041e58:	6586                	ld	a1,64(sp)
    80041e5a:	6626                	ld	a2,72(sp)
    80041e5c:	8522                	mv	a0,s0
    80041e5e:	941c90ef          	jal	ra,8000b79e <JS_FreeValue>
    80041e62:	b555                	j	80041d06 <js_array_buffer_slice+0x20>
quickjs-nuttx/quickjs.c:52879
    if (new_abuf->byte_length < new_len) {
    80041e64:	00092783          	lw	a5,0(s2)
    80041e68:	0097da63          	bge	a5,s1,80041e7c <js_array_buffer_slice+0x196>
quickjs-nuttx/quickjs.c:52880
        JS_ThrowTypeError(ctx, "new ArrayBuffer is too small");
    80041e6c:	0002b597          	auipc	a1,0x2b
    80041e70:	6bc58593          	addi	a1,a1,1724 # 8006d528 <qjsc_repl+0x7f78>
    80041e74:	8522                	mv	a0,s0
    80041e76:	ff6d60ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:52881
        goto fail;
    80041e7a:	bff9                	j	80041e58 <js_array_buffer_slice+0x172>
quickjs-nuttx/quickjs.c:52884
    if (abuf->detached) {
    80041e7c:	0049c783          	lbu	a5,4(s3)
    80041e80:	fbe9                	bnez	a5,80041e52 <js_array_buffer_slice+0x16c>
quickjs-nuttx/quickjs.c:52888
    memcpy(new_abuf->data, abuf->data + start, new_len);
    80041e82:	7782                	ld	a5,32(sp)
    80041e84:	0089b583          	ld	a1,8(s3)
    80041e88:	00893503          	ld	a0,8(s2)
    80041e8c:	8626                	mv	a2,s1
    80041e8e:	95be                	add	a1,a1,a5
    80041e90:	71d210ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:52889
    return new_obj;
    80041e94:	6786                	ld	a5,64(sp)
    80041e96:	f0be                	sd	a5,96(sp)
    80041e98:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:52892
    return JS_EXCEPTION;
    80041e9a:	f4be                	sd	a5,104(sp)
    80041e9c:	bddd                	j	80041d92 <js_array_buffer_slice+0xac>

0000000080041e9e <js_regexp_Symbol_matchAll>:
js_regexp_Symbol_matchAll():
quickjs-nuttx/quickjs.c:44255
{
    80041e9e:	7109                	addi	sp,sp,-384
quickjs-nuttx/quickjs.c:44257
    JSValueConst R = this_val;
    80041ea0:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:44255
{
    80041ea2:	fe86                	sd	ra,376(sp)
    80041ea4:	faa2                	sd	s0,368(sp)
    80041ea6:	f6a6                	sd	s1,360(sp)
    80041ea8:	f2ca                	sd	s2,352(sp)
    80041eaa:	eece                	sd	s3,344(sp)
    80041eac:	ead2                	sd	s4,336(sp)
    80041eae:	e6d6                	sd	s5,328(sp)
    80041eb0:	e2da                	sd	s6,320(sp)
    80041eb2:	fe5e                	sd	s7,312(sp)
    80041eb4:	fa62                	sd	s8,304(sp)
    80041eb6:	f666                	sd	s9,296(sp)
    80041eb8:	f26a                	sd	s10,288(sp)
    80041eba:	ee6e                	sd	s11,280(sp)
quickjs-nuttx/quickjs.c:44257
    JSValueConst R = this_val;
    80041ebc:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:44264
    if (!JS_IsObject(R))
    80041ebe:	2601                	sext.w	a2,a2
    80041ec0:	57fd                	li	a5,-1
    80041ec2:	02f60263          	beq	a2,a5,80041ee6 <js_regexp_Symbol_matchAll+0x48>
quickjs-nuttx/quickjs.c:44317
}
    80041ec6:	7456                	ld	s0,368(sp)
    80041ec8:	70f6                	ld	ra,376(sp)
    80041eca:	74b6                	ld	s1,360(sp)
    80041ecc:	7916                	ld	s2,352(sp)
    80041ece:	69f6                	ld	s3,344(sp)
    80041ed0:	6a56                	ld	s4,336(sp)
    80041ed2:	6ab6                	ld	s5,328(sp)
    80041ed4:	6b16                	ld	s6,320(sp)
    80041ed6:	7bf2                	ld	s7,312(sp)
    80041ed8:	7c52                	ld	s8,304(sp)
    80041eda:	7cb2                	ld	s9,296(sp)
    80041edc:	7d12                	ld	s10,288(sp)
    80041ede:	6df2                	ld	s11,280(sp)
    80041ee0:	6119                	addi	sp,sp,384
quickjs-nuttx/quickjs.c:44265
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80041ee2:	d49d606f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:44272
    S = JS_ToString(ctx, argv[0]);
    80041ee6:	630c                	ld	a1,0(a4)
    80041ee8:	6710                	ld	a2,8(a4)
    80041eea:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:44267
    C = JS_UNDEFINED;
    80041eec:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:44269
    matcher = JS_UNDEFINED;
    80041eee:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:44272
    S = JS_ToString(ctx, argv[0]);
    80041ef0:	88dde0ef          	jal	ra,8002077c <JS_ToString>
    80041ef4:	fc2e                	sd	a1,56(sp)
    80041ef6:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:44273
    if (JS_IsException(S))
    80041ef8:	2581                	sext.w	a1,a1
    80041efa:	4499                	li	s1,6
    80041efc:	18958863          	beq	a1,s1,8004208c <js_regexp_Symbol_matchAll+0x1ee>
quickjs-nuttx/quickjs.c:44275
    C = JS_SpeciesConstructor(ctx, R, ctx->regexp_ctor);
    80041f00:	7c34                	ld	a3,120(s0)
    80041f02:	6058                	ld	a4,128(s0)
    80041f04:	7582                	ld	a1,32(sp)
    80041f06:	7622                	ld	a2,40(sp)
    80041f08:	8522                	mv	a0,s0
    80041f0a:	f63d60ef          	jal	ra,80018e6c <JS_SpeciesConstructor>
    80041f0e:	e0aa                	sd	a0,64(sp)
    80041f10:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:44276
    if (JS_IsException(C))
    80041f12:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44275
    C = JS_SpeciesConstructor(ctx, R, ctx->regexp_ctor);
    80041f16:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:44276
    if (JS_IsException(C))
    80041f18:	1a978d63          	beq	a5,s1,800420d2 <js_regexp_Symbol_matchAll+0x234>
quickjs-nuttx/quickjs.c:44278
    flags = JS_ToStringFree(ctx, JS_GetProperty(ctx, R, JS_ATOM_flags));
    80041f1c:	77a2                	ld	a5,40(sp)
    80041f1e:	7702                	ld	a4,32(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80041f20:	4801                	li	a6,0
    80041f22:	863e                	mv	a2,a5
    80041f24:	06e00693          	li	a3,110
    80041f28:	85ba                	mv	a1,a4
    80041f2a:	8522                	mv	a0,s0
    80041f2c:	fdbe                	sd	a5,248(sp)
    80041f2e:	f9ba                	sd	a4,240(sp)
    80041f30:	b7bd40ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80041f34:	862e                	mv	a2,a1
js_regexp_Symbol_matchAll():
quickjs-nuttx/quickjs.c:44278
    80041f36:	85aa                	mv	a1,a0
    80041f38:	8522                	mv	a0,s0
    80041f3a:	84dde0ef          	jal	ra,80020786 <JS_ToStringFree>
    80041f3e:	e8aa                	sd	a0,80(sp)
    80041f40:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:44279
    if (JS_IsException(flags))
    80041f42:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44278
    flags = JS_ToStringFree(ctx, JS_GetProperty(ctx, R, JS_ATOM_flags));
    80041f46:	8b2a                	mv	s6,a0
    80041f48:	89ae                	mv	s3,a1
    80041f4a:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:44279
    if (JS_IsException(flags))
    80041f4c:	18978963          	beq	a5,s1,800420de <js_regexp_Symbol_matchAll+0x240>
quickjs-nuttx/quickjs.c:44281
    args[0] = R;
    80041f50:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:44282
    args[1] = flags;
    80041f52:	e62e                	sd	a1,264(sp)
quickjs-nuttx/quickjs.c:44283
    matcher = JS_CallConstructor(ctx, C, 2, args);
    80041f54:	6626                	ld	a2,72(sp)
quickjs-nuttx/quickjs.c:44281
    args[0] = R;
    80041f56:	f9be                	sd	a5,240(sp)
quickjs-nuttx/quickjs.c:44283
    matcher = JS_CallConstructor(ctx, C, 2, args);
    80041f58:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:44281
    args[0] = R;
    80041f5a:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:44282
    args[1] = flags;
    80041f5c:	e22a                	sd	a0,256(sp)
quickjs-nuttx/quickjs.c:44283
    matcher = JS_CallConstructor(ctx, C, 2, args);
    80041f5e:	1998                	addi	a4,sp,240
    80041f60:	4689                	li	a3,2
    80041f62:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44281
    args[0] = R;
    80041f64:	fdbe                	sd	a5,248(sp)
quickjs-nuttx/quickjs.c:44283
    matcher = JS_CallConstructor(ctx, C, 2, args);
    80041f66:	c3fff0ef          	jal	ra,80041ba4 <JS_CallConstructor>
    80041f6a:	f0aa                	sd	a0,96(sp)
    80041f6c:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:44284
    if (JS_IsException(matcher))
    80041f6e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44283
    matcher = JS_CallConstructor(ctx, C, 2, args);
    80041f72:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:44284
    if (JS_IsException(matcher))
    80041f74:	16978963          	beq	a5,s1,800420e6 <js_regexp_Symbol_matchAll+0x248>
quickjs-nuttx/quickjs.c:44286
    if (JS_ToLengthFree(ctx, &lastIndex,
    80041f78:	7702                	ld	a4,32(sp)
    80041f7a:	77a2                	ld	a5,40(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80041f7c:	05600693          	li	a3,86
    80041f80:	4801                	li	a6,0
    80041f82:	863e                	mv	a2,a5
    80041f84:	85ba                	mv	a1,a4
    80041f86:	8522                	mv	a0,s0
    80041f88:	f1ba                	sd	a4,224(sp)
    80041f8a:	f5be                	sd	a5,232(sp)
    80041f8c:	b1fd40ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80041f90:	862a                	mv	a2,a0
    80041f92:	86ae                	mv	a3,a1
js_regexp_Symbol_matchAll():
quickjs-nuttx/quickjs.c:44286
    80041f94:	8522                	mv	a0,s0
    80041f96:	082c                	addi	a1,sp,24
    80041f98:	e07e20ef          	jal	ra,80024d9e <JS_ToLengthFree>
    80041f9c:	14051563          	bnez	a0,800420e6 <js_regexp_Symbol_matchAll+0x248>
quickjs-nuttx/quickjs.c:44289
    if (JS_SetProperty(ctx, matcher, JS_ATOM_lastIndex,
    80041fa0:	67e2                	ld	a5,24(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80041fa2:	0007871b          	sext.w	a4,a5
    80041fa6:	0ce79b63          	bne	a5,a4,8004207c <js_regexp_Symbol_matchAll+0x1de>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80041faa:	d382                	sw	zero,228(sp)
    80041fac:	d1ba                	sw	a4,224(sp)
    80041fae:	778e                	ld	a5,224(sp)
    80041fb0:	f582                	sd	zero,232(sp)
    80041fb2:	e9be                	sd	a5,208(sp)
    80041fb4:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80041fb6:	c9ba                	sw	a4,208(sp)
js_regexp_Symbol_matchAll():
quickjs-nuttx/quickjs.c:44289
    80041fb8:	674e                	ld	a4,208(sp)
    80041fba:	7586                	ld	a1,96(sp)
    80041fbc:	7626                	ld	a2,104(sp)
    80041fbe:	05600693          	li	a3,86
    80041fc2:	8522                	mv	a0,s0
    80041fc4:	edbe                	sd	a5,216(sp)
    80041fc6:	c47f50ef          	jal	ra,80037c0c <JS_SetProperty>
    80041fca:	10054e63          	bltz	a0,800420e6 <js_regexp_Symbol_matchAll+0x248>
quickjs-nuttx/quickjs.c:44293
    iter = JS_NewObjectClass(ctx, JS_CLASS_REGEXP_STRING_ITERATOR);
    80041fce:	02e00593          	li	a1,46
    80041fd2:	8522                	mv	a0,s0
    80041fd4:	f39d90ef          	jal	ra,8001bf0c <JS_NewObjectClass>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80041fd8:	00058d1b          	sext.w	s10,a1
js_regexp_Symbol_matchAll():
quickjs-nuttx/quickjs.c:44294
    if (JS_IsException(iter))
    80041fdc:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:44293
    iter = JS_NewObjectClass(ctx, JS_CLASS_REGEXP_STRING_ITERATOR);
    80041fde:	8caa                	mv	s9,a0
    80041fe0:	8c2e                	mv	s8,a1
    80041fe2:	8daa                	mv	s11,a0
    80041fe4:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:44294
    if (JS_IsException(iter))
    80041fe6:	0afd0963          	beq	s10,a5,80042098 <js_regexp_Symbol_matchAll+0x1fa>
quickjs-nuttx/quickjs.c:44296
    it = js_malloc(ctx, sizeof(*it));
    80041fea:	03000593          	li	a1,48
    80041fee:	8522                	mv	a0,s0
    80041ff0:	914d80ef          	jal	ra,8001a104 <js_malloc>
    80041ff4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:44297
    if (!it)
    80041ff6:	c14d                	beqz	a0,80042098 <js_regexp_Symbol_matchAll+0x1fa>
quickjs-nuttx/quickjs.c:44299
    it->iterating_regexp = matcher;
    80041ff8:	7786                	ld	a5,96(sp)
quickjs-nuttx/quickjs.c:44302
    it->global = string_indexof_char(strp, 'g', 0) >= 0;
    80041ffa:	4601                	li	a2,0
    80041ffc:	06700593          	li	a1,103
quickjs-nuttx/quickjs.c:44299
    it->iterating_regexp = matcher;
