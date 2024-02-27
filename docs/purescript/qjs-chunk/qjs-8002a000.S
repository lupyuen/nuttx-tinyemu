    80029002:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:11300
    if (!str)
    80029004:	ed05                	bnez	a0,8002903c <js_bigdecimal_to_string1+0x7e>
quickjs-nuttx/quickjs.c:11305
}
    80029006:	6446                	ld	s0,80(sp)
    80029008:	60e6                	ld	ra,88(sp)
    8002900a:	6906                	ld	s2,64(sp)
    8002900c:	79e2                	ld	s3,56(sp)
quickjs-nuttx/quickjs.c:11301
        return JS_ThrowOutOfMemory(ctx);
    8002900e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:11305
}
    80029010:	64a6                	ld	s1,72(sp)
    80029012:	6125                	addi	sp,sp,96
quickjs-nuttx/quickjs.c:11301
        return JS_ThrowOutOfMemory(ctx);
    80029014:	8c0f106f          	j	8001a0d4 <JS_ThrowOutOfMemory>
JS_ToBigDecimal():
quickjs-nuttx/quickjs.c:12380
        JS_ThrowTypeError(ctx, "bigdecimal expected");
    80029018:	00042597          	auipc	a1,0x42
    8002901c:	82858593          	addi	a1,a1,-2008 # 8006a840 <qjsc_repl+0x5290>
    80029020:	e4cef0ef          	jal	ra,8001866c <JS_ThrowTypeError>
js_bigdecimal_to_string1():
quickjs-nuttx/quickjs.c:11294
        return JS_EXCEPTION;
    80029024:	4799                	li	a5,6
    80029026:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:11305
}
    80029028:	60e6                	ld	ra,88(sp)
    8002902a:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:11304
    return ret;
    8002902c:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:11305
}
    8002902e:	7502                	ld	a0,32(sp)
    80029030:	75a2                	ld	a1,40(sp)
    80029032:	64a6                	ld	s1,72(sp)
    80029034:	6906                	ld	s2,64(sp)
    80029036:	79e2                	ld	s3,56(sp)
    80029038:	6125                	addi	sp,sp,96
    8002903a:	8082                	ret
quickjs-nuttx/quickjs.c:11302
    ret = JS_NewString(ctx, str);
    8002903c:	85aa                	mv	a1,a0
    8002903e:	8526                	mv	a0,s1
    80029040:	979f60ef          	jal	ra,8001f9b8 <JS_NewString>
    80029044:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:11303
    bf_free(ctx->bf_ctx, str);
    80029046:	1904b503          	ld	a0,400(s1)
quickjs-nuttx/quickjs.c:11302
    ret = JS_NewString(ctx, str);
    8002904a:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:11303
    bf_free(ctx->bf_ctx, str);
    8002904c:	85ca                	mv	a1,s2
    8002904e:	e74e10ef          	jal	ra,8000a6c2 <bf_free>
quickjs-nuttx/quickjs.c:11304
    return ret;
    80029052:	67c2                	ld	a5,16(sp)
    80029054:	f03e                	sd	a5,32(sp)
    80029056:	67e2                	ld	a5,24(sp)
    80029058:	bfc1                	j	80029028 <js_bigdecimal_to_string1+0x6a>

000000008002905a <js_bigdecimal_toExponential>:
js_bigdecimal_toExponential():
quickjs-nuttx/quickjs.c:52178
{
    8002905a:	7159                	addi	sp,sp,-112
    8002905c:	f0a2                	sd	s0,96(sp)
    8002905e:	eca6                	sd	s1,88(sp)
    80029060:	e8ca                	sd	s2,80(sp)
    80029062:	84ba                	mv	s1,a4
    80029064:	f486                	sd	ra,104(sp)
    80029066:	842a                	mv	s0,a0
    80029068:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:52183
    val = js_thisBigDecimalValue(ctx, this_val);
    8002906a:	9d4f00ef          	jal	ra,8001923e <js_thisBigDecimalValue>
    8002906e:	f02a                	sd	a0,32(sp)
    80029070:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:52184
    if (JS_IsException(val))
    80029072:	0005871b          	sext.w	a4,a1
    80029076:	4799                	li	a5,6
    80029078:	00f71c63          	bne	a4,a5,80029090 <js_bigdecimal_toExponential+0x36>
quickjs-nuttx/quickjs.c:52185
        return val;
    8002907c:	e0aa                	sd	a0,64(sp)
    8002907e:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:52210
}
    80029080:	70a6                	ld	ra,104(sp)
    80029082:	7406                	ld	s0,96(sp)
    80029084:	6506                	ld	a0,64(sp)
    80029086:	65a6                	ld	a1,72(sp)
    80029088:	64e6                	ld	s1,88(sp)
    8002908a:	6946                	ld	s2,80(sp)
    8002908c:	6165                	addi	sp,sp,112
    8002908e:	8082                	ret
quickjs-nuttx/quickjs.c:52186
    if (JS_ToInt64Sat(ctx, &f, argv[0]))
    80029090:	6090                	ld	a2,0(s1)
    80029092:	6494                	ld	a3,8(s1)
    80029094:	082c                	addi	a1,sp,24
    80029096:	8522                	mv	a0,s0
    80029098:	b42fb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    8002909c:	e529                	bnez	a0,800290e6 <js_bigdecimal_toExponential+0x8c>
quickjs-nuttx/quickjs.c:52188
    if (JS_IsUndefined(argv[0])) {
    8002909e:	4498                	lw	a4,8(s1)
    800290a0:	478d                	li	a5,3
    800290a2:	02f71663          	bne	a4,a5,800290ce <js_bigdecimal_toExponential+0x74>
quickjs-nuttx/quickjs.c:52189
        ret = js_bigdecimal_to_string1(ctx, val, 0,
    800290a6:	00130737          	lui	a4,0x130
    800290aa:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:52202
        ret = js_bigdecimal_to_string1(ctx, val, f + 1,
    800290ac:	7622                	ld	a2,40(sp)
    800290ae:	7582                	ld	a1,32(sp)
    800290b0:	8522                	mv	a0,s0
    800290b2:	f0dff0ef          	jal	ra,80028fbe <js_bigdecimal_to_string1>
    800290b6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:52205
    JS_FreeValue(ctx, val);
    800290b8:	7622                	ld	a2,40(sp)
    800290ba:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:52202
        ret = js_bigdecimal_to_string1(ctx, val, f + 1,
    800290bc:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:52205
    JS_FreeValue(ctx, val);
    800290be:	8522                	mv	a0,s0
    800290c0:	edee20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52206
    return ret;
    800290c4:	77c2                	ld	a5,48(sp)
    800290c6:	e0be                	sd	a5,64(sp)
    800290c8:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:52209
    return JS_EXCEPTION;
    800290ca:	e4be                	sd	a5,72(sp)
    800290cc:	bf55                	j	80029080 <js_bigdecimal_toExponential+0x26>
quickjs-nuttx/quickjs.c:52192
        if (f < 0 || f > BF_PREC_MAX) {
    800290ce:	6762                	ld	a4,24(sp)
    800290d0:	57ed                	li	a5,-5
    800290d2:	8389                	srli	a5,a5,0x2
    800290d4:	02e7f163          	bgeu	a5,a4,800290f6 <js_bigdecimal_toExponential+0x9c>
quickjs-nuttx/quickjs.c:52193
            JS_ThrowRangeError(ctx, "invalid number of digits");
    800290d8:	00042597          	auipc	a1,0x42
    800290dc:	af858593          	addi	a1,a1,-1288 # 8006abd0 <qjsc_repl+0x5620>
    800290e0:	8522                	mv	a0,s0
    800290e2:	fecf00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:52208
    JS_FreeValue(ctx, val);
    800290e6:	7582                	ld	a1,32(sp)
    800290e8:	7622                	ld	a2,40(sp)
    800290ea:	8522                	mv	a0,s0
    800290ec:	eb2e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52209
    return JS_EXCEPTION;
    800290f0:	4799                	li	a5,6
    800290f2:	e082                	sd	zero,64(sp)
    800290f4:	bfd9                	j	800290ca <js_bigdecimal_toExponential+0x70>
quickjs-nuttx/quickjs.c:52197
        if (argc > 1) {
    800290f6:	4785                	li	a5,1
    800290f8:	0327d063          	bge	a5,s2,80029118 <js_bigdecimal_toExponential+0xbe>
quickjs-nuttx/quickjs.c:52198
            rnd_mode = js_bigdecimal_get_rnd_mode(ctx, argv[1]);
    800290fc:	688c                	ld	a1,16(s1)
    800290fe:	6c90                	ld	a2,24(s1)
    80029100:	8522                	mv	a0,s0
    80029102:	805fe0ef          	jal	ra,80027906 <js_bigdecimal_get_rnd_mode>
quickjs-nuttx/quickjs.c:52199
            if (rnd_mode < 0)
    80029106:	fe0540e3          	bltz	a0,800290e6 <js_bigdecimal_toExponential+0x8c>
quickjs-nuttx/quickjs.c:52202
        ret = js_bigdecimal_to_string1(ctx, val, f + 1,
    8002910a:	66e2                	ld	a3,24(sp)
    8002910c:	00100737          	lui	a4,0x100
    80029110:	8f49                	or	a4,a4,a0
    80029112:	2701                	sext.w	a4,a4
    80029114:	0685                	addi	a3,a3,1
    80029116:	bf59                	j	800290ac <js_bigdecimal_toExponential+0x52>
quickjs-nuttx/quickjs.c:52196
        rnd_mode = BF_RNDNA;
    80029118:	4511                	li	a0,4
    8002911a:	bfc5                	j	8002910a <js_bigdecimal_toExponential+0xb0>

000000008002911c <js_bigdecimal_toFixed>:
js_bigdecimal_toFixed():
quickjs-nuttx/quickjs.c:52148
{
    8002911c:	7159                	addi	sp,sp,-112
    8002911e:	f0a2                	sd	s0,96(sp)
    80029120:	eca6                	sd	s1,88(sp)
    80029122:	e8ca                	sd	s2,80(sp)
    80029124:	84ba                	mv	s1,a4
    80029126:	f486                	sd	ra,104(sp)
    80029128:	842a                	mv	s0,a0
    8002912a:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:52153
    val = js_thisBigDecimalValue(ctx, this_val);
    8002912c:	912f00ef          	jal	ra,8001923e <js_thisBigDecimalValue>
    80029130:	f02a                	sd	a0,32(sp)
    80029132:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:52154
    if (JS_IsException(val))
    80029134:	0005871b          	sext.w	a4,a1
    80029138:	4799                	li	a5,6
    8002913a:	00f71c63          	bne	a4,a5,80029152 <js_bigdecimal_toFixed+0x36>
quickjs-nuttx/quickjs.c:52155
        return val;
    8002913e:	e0aa                	sd	a0,64(sp)
    80029140:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:52174
}
    80029142:	70a6                	ld	ra,104(sp)
    80029144:	7406                	ld	s0,96(sp)
    80029146:	6506                	ld	a0,64(sp)
    80029148:	65a6                	ld	a1,72(sp)
    8002914a:	64e6                	ld	s1,88(sp)
    8002914c:	6946                	ld	s2,80(sp)
    8002914e:	6165                	addi	sp,sp,112
    80029150:	8082                	ret
quickjs-nuttx/quickjs.c:52156
    if (JS_ToInt64Sat(ctx, &f, argv[0]))
    80029152:	6090                	ld	a2,0(s1)
    80029154:	6494                	ld	a3,8(s1)
    80029156:	082c                	addi	a1,sp,24
    80029158:	8522                	mv	a0,s0
    8002915a:	a80fb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    8002915e:	ed09                	bnez	a0,80029178 <js_bigdecimal_toFixed+0x5c>
quickjs-nuttx/quickjs.c:52158
    if (f < 0 || f > BF_PREC_MAX) {
    80029160:	6762                	ld	a4,24(sp)
    80029162:	57ed                	li	a5,-5
    80029164:	8389                	srli	a5,a5,0x2
    80029166:	02e7f163          	bgeu	a5,a4,80029188 <js_bigdecimal_toFixed+0x6c>
quickjs-nuttx/quickjs.c:52159
        JS_ThrowRangeError(ctx, "invalid number of digits");
    8002916a:	00042597          	auipc	a1,0x42
    8002916e:	a6658593          	addi	a1,a1,-1434 # 8006abd0 <qjsc_repl+0x5620>
    80029172:	8522                	mv	a0,s0
    80029174:	f5af00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:52172
    JS_FreeValue(ctx, val);
    80029178:	7582                	ld	a1,32(sp)
    8002917a:	7622                	ld	a2,40(sp)
    8002917c:	8522                	mv	a0,s0
    8002917e:	e20e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52173
    return JS_EXCEPTION;
    80029182:	4799                	li	a5,6
    80029184:	e082                	sd	zero,64(sp)
    80029186:	a835                	j	800291c2 <js_bigdecimal_toFixed+0xa6>
quickjs-nuttx/quickjs.c:52163
    if (argc > 1) {
    80029188:	4785                	li	a5,1
    8002918a:	0327de63          	bge	a5,s2,800291c6 <js_bigdecimal_toFixed+0xaa>
quickjs-nuttx/quickjs.c:52164
        rnd_mode = js_bigdecimal_get_rnd_mode(ctx, argv[1]);
    8002918e:	688c                	ld	a1,16(s1)
    80029190:	6c90                	ld	a2,24(s1)
    80029192:	8522                	mv	a0,s0
    80029194:	f72fe0ef          	jal	ra,80027906 <js_bigdecimal_get_rnd_mode>
quickjs-nuttx/quickjs.c:52165
        if (rnd_mode < 0)
    80029198:	fe0540e3          	bltz	a0,80029178 <js_bigdecimal_toFixed+0x5c>
quickjs-nuttx/quickjs.c:52168
    ret = js_bigdecimal_to_string1(ctx, val, f, rnd_mode | BF_FTOA_FORMAT_FRAC);
    8002919c:	66e2                	ld	a3,24(sp)
    8002919e:	7622                	ld	a2,40(sp)
    800291a0:	7582                	ld	a1,32(sp)
    800291a2:	6741                	lui	a4,0x10
    800291a4:	8f49                	or	a4,a4,a0
    800291a6:	2701                	sext.w	a4,a4
    800291a8:	8522                	mv	a0,s0
    800291aa:	e15ff0ef          	jal	ra,80028fbe <js_bigdecimal_to_string1>
    800291ae:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:52169
    JS_FreeValue(ctx, val);
    800291b0:	7622                	ld	a2,40(sp)
    800291b2:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:52168
    ret = js_bigdecimal_to_string1(ctx, val, f, rnd_mode | BF_FTOA_FORMAT_FRAC);
    800291b4:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:52169
    JS_FreeValue(ctx, val);
    800291b6:	8522                	mv	a0,s0
    800291b8:	de6e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52170
    return ret;
    800291bc:	77c2                	ld	a5,48(sp)
    800291be:	e0be                	sd	a5,64(sp)
    800291c0:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:52173
    return JS_EXCEPTION;
    800291c2:	e4be                	sd	a5,72(sp)
    800291c4:	bfbd                	j	80029142 <js_bigdecimal_toFixed+0x26>
quickjs-nuttx/quickjs.c:52162
    rnd_mode = BF_RNDNA;
    800291c6:	4511                	li	a0,4
    800291c8:	bfd1                	j	8002919c <js_bigdecimal_toFixed+0x80>

00000000800291ca <js_bigdecimal_toPrecision>:
js_bigdecimal_toPrecision():
quickjs-nuttx/quickjs.c:52214
{
    800291ca:	7159                	addi	sp,sp,-112
    800291cc:	f0a2                	sd	s0,96(sp)
    800291ce:	eca6                	sd	s1,88(sp)
    800291d0:	e8ca                	sd	s2,80(sp)
    800291d2:	84ba                	mv	s1,a4
    800291d4:	f486                	sd	ra,104(sp)
    800291d6:	842a                	mv	s0,a0
    800291d8:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:52219
    val = js_thisBigDecimalValue(ctx, this_val);
    800291da:	864f00ef          	jal	ra,8001923e <js_thisBigDecimalValue>
    800291de:	f02a                	sd	a0,32(sp)
    800291e0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:52220
    if (JS_IsException(val))
    800291e2:	0005871b          	sext.w	a4,a1
    800291e6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:52219
    val = js_thisBigDecimalValue(ctx, this_val);
    800291e8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:52220
    if (JS_IsException(val))
    800291ea:	00f71c63          	bne	a4,a5,80029202 <js_bigdecimal_toPrecision+0x38>
quickjs-nuttx/quickjs.c:52221
        return val;
    800291ee:	e0aa                	sd	a0,64(sp)
    800291f0:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:52244
}
    800291f2:	70a6                	ld	ra,104(sp)
    800291f4:	7406                	ld	s0,96(sp)
    800291f6:	6506                	ld	a0,64(sp)
    800291f8:	65a6                	ld	a1,72(sp)
    800291fa:	64e6                	ld	s1,88(sp)
    800291fc:	6946                	ld	s2,80(sp)
    800291fe:	6165                	addi	sp,sp,112
    80029200:	8082                	ret
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    80029202:	6494                	ld	a3,8(s1)
js_bigdecimal_toPrecision():
quickjs-nuttx/quickjs.c:52222
    if (JS_IsUndefined(argv[0])) {
    80029204:	478d                	li	a5,3
    80029206:	0006871b          	sext.w	a4,a3
    8002920a:	00f71b63          	bne	a4,a5,80029220 <js_bigdecimal_toPrecision+0x56>
quickjs-nuttx/quickjs.c:52223
        return JS_ToStringFree(ctx, val);
    8002920e:	85aa                	mv	a1,a0
    80029210:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52244
}
    80029212:	7406                	ld	s0,96(sp)
    80029214:	70a6                	ld	ra,104(sp)
    80029216:	64e6                	ld	s1,88(sp)
    80029218:	6946                	ld	s2,80(sp)
    8002921a:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:52223
        return JS_ToStringFree(ctx, val);
    8002921c:	d6af706f          	j	80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:52225
    if (JS_ToInt64Sat(ctx, &p, argv[0]))
    80029220:	6090                	ld	a2,0(s1)
    80029222:	082c                	addi	a1,sp,24
    80029224:	8522                	mv	a0,s0
    80029226:	9b4fb0ef          	jal	ra,800243da <JS_ToInt64Sat>
    8002922a:	ed11                	bnez	a0,80029246 <js_bigdecimal_toPrecision+0x7c>
quickjs-nuttx/quickjs.c:52227
    if (p < 1 || p > BF_PREC_MAX) {
    8002922c:	6762                	ld	a4,24(sp)
    8002922e:	57dd                	li	a5,-9
    80029230:	8389                	srli	a5,a5,0x2
    80029232:	177d                	addi	a4,a4,-1
    80029234:	02e7f163          	bgeu	a5,a4,80029256 <js_bigdecimal_toPrecision+0x8c>
quickjs-nuttx/quickjs.c:52228
        JS_ThrowRangeError(ctx, "invalid number of digits");
    80029238:	00042597          	auipc	a1,0x42
    8002923c:	99858593          	addi	a1,a1,-1640 # 8006abd0 <qjsc_repl+0x5620>
    80029240:	8522                	mv	a0,s0
    80029242:	e8cf00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:52242
    JS_FreeValue(ctx, val);
    80029246:	7582                	ld	a1,32(sp)
    80029248:	7622                	ld	a2,40(sp)
    8002924a:	8522                	mv	a0,s0
    8002924c:	d52e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52243
    return JS_EXCEPTION;
    80029250:	4799                	li	a5,6
    80029252:	e082                	sd	zero,64(sp)
    80029254:	a825                	j	8002928c <js_bigdecimal_toPrecision+0xc2>
quickjs-nuttx/quickjs.c:52232
    if (argc > 1) {
    80029256:	4785                	li	a5,1
    80029258:	0327dc63          	bge	a5,s2,80029290 <js_bigdecimal_toPrecision+0xc6>
quickjs-nuttx/quickjs.c:52233
        rnd_mode = js_bigdecimal_get_rnd_mode(ctx, argv[1]);
    8002925c:	688c                	ld	a1,16(s1)
    8002925e:	6c90                	ld	a2,24(s1)
    80029260:	8522                	mv	a0,s0
    80029262:	ea4fe0ef          	jal	ra,80027906 <js_bigdecimal_get_rnd_mode>
    80029266:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:52234
        if (rnd_mode < 0)
    80029268:	fc054fe3          	bltz	a0,80029246 <js_bigdecimal_toPrecision+0x7c>
quickjs-nuttx/quickjs.c:52237
    ret = js_bigdecimal_to_string1(ctx, val, p,
    8002926c:	66e2                	ld	a3,24(sp)
    8002926e:	7622                	ld	a2,40(sp)
    80029270:	7582                	ld	a1,32(sp)
    80029272:	8522                	mv	a0,s0
    80029274:	d4bff0ef          	jal	ra,80028fbe <js_bigdecimal_to_string1>
    80029278:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:52239
    JS_FreeValue(ctx, val);
    8002927a:	7622                	ld	a2,40(sp)
    8002927c:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:52237
    ret = js_bigdecimal_to_string1(ctx, val, p,
    8002927e:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:52239
    JS_FreeValue(ctx, val);
    80029280:	8522                	mv	a0,s0
    80029282:	d1ce20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52240
    return ret;
    80029286:	77c2                	ld	a5,48(sp)
    80029288:	e0be                	sd	a5,64(sp)
    8002928a:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:52243
    return JS_EXCEPTION;
    8002928c:	e4be                	sd	a5,72(sp)
    8002928e:	b795                	j	800291f2 <js_bigdecimal_toPrecision+0x28>
quickjs-nuttx/quickjs.c:52231
    rnd_mode = BF_RNDNA;
    80029290:	4711                	li	a4,4
    80029292:	bfe9                	j	8002926c <js_bigdecimal_toPrecision+0xa2>

0000000080029294 <js_bigdecimal_to_string>:
js_bigdecimal_to_string():
quickjs-nuttx/quickjs.c:11308
{
    80029294:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:11309
    return js_bigdecimal_to_string1(ctx, val, 0,
    80029296:	00020737          	lui	a4,0x20
    8002929a:	0705                	addi	a4,a4,1
    8002929c:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:11311
}
    8002929e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:11309
    return js_bigdecimal_to_string1(ctx, val, 0,
    800292a0:	d1fff06f          	j	80028fbe <js_bigdecimal_to_string1>

00000000800292a4 <js_bigint_to_string1>:
js_bigint_to_string1():
quickjs-nuttx/quickjs.c:11191
{
    800292a4:	7175                	addi	sp,sp,-144
    800292a6:	87b2                	mv	a5,a2
    800292a8:	fca6                	sd	s1,120(sp)
    800292aa:	e82e                	sd	a1,16(sp)
    800292ac:	ec32                	sd	a2,24(sp)
    800292ae:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:11197
    a = JS_ToBigInt(ctx, &a_s, val);
    800292b0:	862e                	mv	a2,a1
    800292b2:	86be                	mv	a3,a5
    800292b4:	00ac                	addi	a1,sp,72
quickjs-nuttx/quickjs.c:11191
{
    800292b6:	e122                	sd	s0,128(sp)
    800292b8:	e506                	sd	ra,136(sp)
    800292ba:	f8ca                	sd	s2,112(sp)
    800292bc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:11197
    a = JS_ToBigInt(ctx, &a_s, val);
    800292be:	87bfd0ef          	jal	ra,80026b38 <JS_ToBigInt>
quickjs-nuttx/quickjs.c:11198
    if (!a)
    800292c2:	e509                	bnez	a0,800292cc <js_bigint_to_string1+0x28>
quickjs-nuttx/quickjs.c:11199
        return JS_EXCEPTION;
    800292c4:	fc02                	sd	zero,56(sp)
    800292c6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:11211
    return ret;
    800292c8:	e0be                	sd	a5,64(sp)
    800292ca:	a091                	j	8002930e <js_bigint_to_string1+0x6a>
quickjs-nuttx/quickjs.c:11201
    if (a->expn == BF_EXP_ZERO)
    800292cc:	6918                	ld	a4,16(a0)
    800292ce:	57fd                	li	a5,-1
    800292d0:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/quickjs.c:11200
    saved_sign = a->sign;
    800292d2:	00852903          	lw	s2,8(a0)
    800292d6:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:11201
    if (a->expn == BF_EXP_ZERO)
    800292d8:	00f71463          	bne	a4,a5,800292e0 <js_bigint_to_string1+0x3c>
quickjs-nuttx/quickjs.c:11202
        a->sign = 0;
    800292dc:	00052423          	sw	zero,8(a0)
quickjs-nuttx/quickjs.c:11203
    str = bf_ftoa(NULL, a, radix, 0, BF_RNDZ | BF_FTOA_FORMAT_FRAC |
    800292e0:	00410737          	lui	a4,0x410
    800292e4:	8626                	mv	a2,s1
    800292e6:	0705                	addi	a4,a4,1
    800292e8:	4681                	li	a3,0
    800292ea:	4501                	li	a0,0
    800292ec:	e42e                	sd	a1,8(sp)
    800292ee:	03c350ef          	jal	ra,8005e32a <bf_ftoa>
quickjs-nuttx/quickjs.c:11205
    a->sign = saved_sign;
    800292f2:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:11203
    str = bf_ftoa(NULL, a, radix, 0, BF_RNDZ | BF_FTOA_FORMAT_FRAC |
    800292f4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:11206
    JS_FreeBigInt(ctx, a, &a_s);
    800292f6:	00b0                	addi	a2,sp,72
quickjs-nuttx/quickjs.c:11205
    a->sign = saved_sign;
    800292f8:	0125a423          	sw	s2,8(a1)
quickjs-nuttx/quickjs.c:11206
    JS_FreeBigInt(ctx, a, &a_s);
    800292fc:	8522                	mv	a0,s0
    800292fe:	929e20ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:11207
    if (!str)
    80029302:	ec91                	bnez	s1,8002931e <js_bigint_to_string1+0x7a>
quickjs-nuttx/quickjs.c:11208
        return JS_ThrowOutOfMemory(ctx);
    80029304:	8522                	mv	a0,s0
    80029306:	dcff00ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
    8002930a:	fc2a                	sd	a0,56(sp)
    8002930c:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:11212 (discriminator 1)
}
    8002930e:	60aa                	ld	ra,136(sp)
    80029310:	640a                	ld	s0,128(sp)
    80029312:	7562                	ld	a0,56(sp)
    80029314:	6586                	ld	a1,64(sp)
    80029316:	74e6                	ld	s1,120(sp)
    80029318:	7946                	ld	s2,112(sp)
    8002931a:	6149                	addi	sp,sp,144
    8002931c:	8082                	ret
quickjs-nuttx/quickjs.c:11209
    ret = JS_NewString(ctx, str);
    8002931e:	85a6                	mv	a1,s1
    80029320:	8522                	mv	a0,s0
    80029322:	e96f60ef          	jal	ra,8001f9b8 <JS_NewString>
    80029326:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:11210
    bf_free(ctx->bf_ctx, str);
    80029328:	19043503          	ld	a0,400(s0)
quickjs-nuttx/quickjs.c:11209
    ret = JS_NewString(ctx, str);
    8002932c:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:11210
    bf_free(ctx->bf_ctx, str);
    8002932e:	85a6                	mv	a1,s1
    80029330:	b92e10ef          	jal	ra,8000a6c2 <bf_free>
quickjs-nuttx/quickjs.c:11211
    return ret;
    80029334:	77a2                	ld	a5,40(sp)
    80029336:	fc3e                	sd	a5,56(sp)
    80029338:	77c2                	ld	a5,48(sp)
    8002933a:	b779                	j	800292c8 <js_bigint_to_string1+0x24>

000000008002933c <js_bigint_toString>:
js_bigint_toString():
quickjs-nuttx/quickjs.c:50639
{
    8002933c:	7159                	addi	sp,sp,-112
    8002933e:	f0a2                	sd	s0,96(sp)
    80029340:	eca6                	sd	s1,88(sp)
    80029342:	e8ca                	sd	s2,80(sp)
    80029344:	e4ce                	sd	s3,72(sp)
    80029346:	f486                	sd	ra,104(sp)
    80029348:	842a                	mv	s0,a0
    8002934a:	8936                	mv	s2,a3
    8002934c:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:50644
    val = js_thisBigIntValue(ctx, this_val);
    8002934e:	e4def0ef          	jal	ra,8001919a <js_thisBigIntValue>
    80029352:	e82a                	sd	a0,16(sp)
    80029354:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:50645
    if (JS_IsException(val))
    80029356:	0005879b          	sext.w	a5,a1
    8002935a:	4999                	li	s3,6
    8002935c:	01379d63          	bne	a5,s3,80029376 <js_bigint_toString+0x3a>
quickjs-nuttx/quickjs.c:50646
        return val;
    80029360:	f82a                	sd	a0,48(sp)
    80029362:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:50660
}
    80029364:	70a6                	ld	ra,104(sp)
    80029366:	7406                	ld	s0,96(sp)
    80029368:	7542                	ld	a0,48(sp)
    8002936a:	75e2                	ld	a1,56(sp)
    8002936c:	64e6                	ld	s1,88(sp)
    8002936e:	6946                	ld	s2,80(sp)
    80029370:	69a6                	ld	s3,72(sp)
    80029372:	6165                	addi	sp,sp,112
    80029374:	8082                	ret
quickjs-nuttx/quickjs.c:50647
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80029376:	02090863          	beqz	s2,800293a6 <js_bigint_toString+0x6a>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    8002937a:	6490                	ld	a2,8(s1)
js_bigint_toString():
quickjs-nuttx/quickjs.c:50647 (discriminator 1)
    8002937c:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:50648 (discriminator 1)
        base = 10;
    8002937e:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:50647 (discriminator 1)
    if (argc == 0 || JS_IsUndefined(argv[0])) {
    80029380:	0006071b          	sext.w	a4,a2
    80029384:	02f70263          	beq	a4,a5,800293a8 <js_bigint_toString+0x6c>
quickjs-nuttx/quickjs.c:50650
        base = js_get_radix(ctx, argv[0]);
    80029388:	608c                	ld	a1,0(s1)
    8002938a:	8522                	mv	a0,s0
    8002938c:	ac6fa0ef          	jal	ra,80023652 <js_get_radix>
    80029390:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:50651
        if (base < 0)
    80029392:	00055b63          	bgez	a0,800293a8 <js_bigint_toString+0x6c>
quickjs-nuttx/quickjs.c:50658
    JS_FreeValue(ctx, val);
    80029396:	65c2                	ld	a1,16(sp)
    80029398:	6662                	ld	a2,24(sp)
    8002939a:	8522                	mv	a0,s0
    8002939c:	c02e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50659
    return JS_EXCEPTION;
    800293a0:	f802                	sd	zero,48(sp)
    800293a2:	fc4e                	sd	s3,56(sp)
    800293a4:	b7c1                	j	80029364 <js_bigint_toString+0x28>
quickjs-nuttx/quickjs.c:50648
        base = 10;
    800293a6:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:50654
    ret = js_bigint_to_string1(ctx, val, base);
    800293a8:	6662                	ld	a2,24(sp)
    800293aa:	65c2                	ld	a1,16(sp)
    800293ac:	8522                	mv	a0,s0
    800293ae:	ef7ff0ef          	jal	ra,800292a4 <js_bigint_to_string1>
    800293b2:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:50655
    JS_FreeValue(ctx, val);
    800293b4:	6662                	ld	a2,24(sp)
    800293b6:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:50654
    ret = js_bigint_to_string1(ctx, val, base);
    800293b8:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:50655
    JS_FreeValue(ctx, val);
    800293ba:	8522                	mv	a0,s0
    800293bc:	be2e20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50656
    return ret;
    800293c0:	7782                	ld	a5,32(sp)
    800293c2:	f83e                	sd	a5,48(sp)
    800293c4:	77a2                	ld	a5,40(sp)
    800293c6:	fc3e                	sd	a5,56(sp)
    800293c8:	bf71                	j	80029364 <js_bigint_toString+0x28>

00000000800293ca <js_bigint_to_string>:
js_bigint_to_string():
quickjs-nuttx/quickjs.c:11215
{
    800293ca:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:11216
    return js_bigint_to_string1(ctx, val, 10);
    800293cc:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:11217
}
    800293ce:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:11216
    return js_bigint_to_string1(ctx, val, 10);
    800293d0:	ed5ff06f          	j	800292a4 <js_bigint_to_string1>

00000000800293d4 <get_date_string>:
get_date_string():
quickjs-nuttx/quickjs.c:49519
{
    800293d4:	7169                	addi	sp,sp,-304
    800293d6:	ea4a                	sd	s2,272(sp)
quickjs-nuttx/quickjs.c:49526
    fmt = (magic >> 4) & 0x0F;
    800293d8:	4047d913          	srai	s2,a5,0x4
quickjs-nuttx/quickjs.c:49519
{
    800293dc:	e64e                	sd	s3,264(sp)
quickjs-nuttx/quickjs.c:49529
    res = get_date_fields(ctx, this_val, fields, fmt & 1, 0);
    800293de:	00197713          	andi	a4,s2,1
quickjs-nuttx/quickjs.c:49519
{
    800293e2:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:49529
    res = get_date_fields(ctx, this_val, fields, fmt & 1, 0);
    800293e4:	18b4                	addi	a3,sp,120
    800293e6:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:49519
{
    800293e8:	ee26                	sd	s1,280(sp)
    800293ea:	f606                	sd	ra,296(sp)
    800293ec:	f222                	sd	s0,288(sp)
    800293ee:	e252                	sd	s4,256(sp)
    800293f0:	fdd6                	sd	s5,248(sp)
    800293f2:	b5a2                	fsd	fs0,232(sp)
    800293f4:	b1a6                	fsd	fs1,224(sp)
    800293f6:	adca                	fsd	fs2,216(sp)
    800293f8:	a9ce                	fsd	fs3,208(sp)
    800293fa:	a5d2                	fsd	fs4,200(sp)
    800293fc:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:49529
    res = get_date_fields(ctx, this_val, fields, fmt & 1, 0);
    800293fe:	d74f90ef          	jal	ra,80022972 <get_date_fields>
quickjs-nuttx/quickjs.c:49530
    if (res < 0)
    80029402:	02055563          	bgez	a0,8002942c <get_date_string+0x58>
quickjs-nuttx/quickjs.c:49531
        return JS_EXCEPTION;
    80029406:	4799                	li	a5,6
    80029408:	f402                	sd	zero,40(sp)
    8002940a:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:49621 (discriminator 1)
}
    8002940c:	70b2                	ld	ra,296(sp)
    8002940e:	7412                	ld	s0,288(sp)
    80029410:	7522                	ld	a0,40(sp)
    80029412:	75c2                	ld	a1,48(sp)
    80029414:	64f2                	ld	s1,280(sp)
    80029416:	6952                	ld	s2,272(sp)
    80029418:	69b2                	ld	s3,264(sp)
    8002941a:	6a12                	ld	s4,256(sp)
    8002941c:	7aee                	ld	s5,248(sp)
    8002941e:	342e                	fld	fs0,232(sp)
    80029420:	348e                	fld	fs1,224(sp)
    80029422:	296e                	fld	fs2,216(sp)
    80029424:	29ce                	fld	fs3,208(sp)
    80029426:	2a2e                	fld	fs4,200(sp)
    80029428:	6155                	addi	sp,sp,304
    8002942a:	8082                	ret
quickjs-nuttx/quickjs.c:49526
    fmt = (magic >> 4) & 0x0F;
    8002942c:	00f97913          	andi	s2,s2,15
quickjs-nuttx/quickjs.c:49532
    if (!res) {
    80029430:	e515                	bnez	a0,8002945c <get_date_string+0x88>
quickjs-nuttx/quickjs.c:49533
        if (fmt == 2)
    80029432:	4789                	li	a5,2
    80029434:	00f91c63          	bne	s2,a5,8002944c <get_date_string+0x78>
quickjs-nuttx/quickjs.c:49534
            return JS_ThrowRangeError(ctx, "Date value is NaN");
    80029438:	00042597          	auipc	a1,0x42
    8002943c:	e2858593          	addi	a1,a1,-472 # 8006b260 <qjsc_repl+0x5cb0>
    80029440:	8526                	mv	a0,s1
    80029442:	c8cf00ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:49620
    return JS_NewStringLen(ctx, buf, pos);
    80029446:	f42a                	sd	a0,40(sp)
    80029448:	f82e                	sd	a1,48(sp)
    8002944a:	b7c9                	j	8002940c <get_date_string+0x38>
quickjs-nuttx/quickjs.c:49536
            return JS_NewString(ctx, "Invalid Date");
    8002944c:	8526                	mv	a0,s1
    8002944e:	00042597          	auipc	a1,0x42
    80029452:	e2a58593          	addi	a1,a1,-470 # 8006b278 <qjsc_repl+0x5cc8>
    80029456:	d62f60ef          	jal	ra,8001f9b8 <JS_NewString>
    8002945a:	b7f5                	j	80029446 <get_date_string+0x72>
quickjs-nuttx/quickjs.c:49551
    if (part & 1) { /* date part */
    8002945c:	0019f413          	andi	s0,s3,1
quickjs-nuttx/quickjs.c:49542
    h = fields[3];
    80029460:	2a4a                	fld	fs4,144(sp)
quickjs-nuttx/quickjs.c:49543
    m = fields[4];
    80029462:	29ea                	fld	fs3,152(sp)
quickjs-nuttx/quickjs.c:49544
    s = fields[5];
    80029464:	390a                	fld	fs2,160(sp)
quickjs-nuttx/quickjs.c:49545
    ms = fields[6];
    80029466:	342a                	fld	fs0,168(sp)
quickjs-nuttx/quickjs.c:49547
    tz = fields[8];
    80029468:	34ea                	fld	fs1,184(sp)
quickjs-nuttx/quickjs.c:49551
    if (part & 1) { /* date part */
    8002946a:	cc05                	beqz	s0,800294a2 <get_date_string+0xce>
quickjs-nuttx/quickjs.c:49539
    y = fields[0];
    8002946c:	37e6                	fld	fa5,120(sp)
quickjs-nuttx/quickjs.c:49552
        switch(fmt) {
    8002946e:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:49527
    part = magic & 0x0F;
    80029470:	00f9fa93          	andi	s5,s3,15
quickjs-nuttx/quickjs.c:49539
    y = fields[0];
    80029474:	c20798d3          	fcvt.w.d	a7,fa5,rtz
quickjs-nuttx/quickjs.c:49540
    mon = fields[1];
    80029478:	278a                	fld	fa5,128(sp)
quickjs-nuttx/quickjs.c:49539
    y = fields[0];
    8002947a:	2881                	sext.w	a7,a7
quickjs-nuttx/quickjs.c:49540
    mon = fields[1];
    8002947c:	c2079a53          	fcvt.w.d	s4,fa5,rtz
quickjs-nuttx/quickjs.c:49541
    d = fields[2];
    80029480:	27aa                	fld	fa5,136(sp)
    80029482:	c2079753          	fcvt.w.d	a4,fa5,rtz
quickjs-nuttx/quickjs.c:49546
    wd = fields[7];
    80029486:	37ca                	fld	fa5,176(sp)
quickjs-nuttx/quickjs.c:49541
    d = fields[2];
    80029488:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:49546
    wd = fields[7];
    8002948a:	c20796d3          	fcvt.w.d	a3,fa5,rtz
quickjs-nuttx/quickjs.c:49552
        switch(fmt) {
    8002948e:	12f90363          	beq	s2,a5,800295b4 <get_date_string+0x1e0>
    80029492:	0527c563          	blt	a5,s2,800294dc <get_date_string+0x108>
    80029496:	08090963          	beqz	s2,80029528 <get_date_string+0x154>
    8002949a:	4785                	li	a5,1
    8002949c:	0cf90363          	beq	s2,a5,80029562 <get_date_string+0x18e>
    800294a0:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:49589
    if (part & 2) { /* time part */
    800294a2:	0029f793          	andi	a5,s3,2
    800294a6:	c78d                	beqz	a5,800294d0 <get_date_string+0xfc>
quickjs-nuttx/quickjs.c:49542
    h = fields[3];
    800294a8:	c20a1653          	fcvt.w.d	a2,fs4,rtz
quickjs-nuttx/quickjs.c:49543
    m = fields[4];
    800294ac:	c2099753          	fcvt.w.d	a4,fs3,rtz
quickjs-nuttx/quickjs.c:49544
    s = fields[5];
    800294b0:	c20917d3          	fcvt.w.d	a5,fs2,rtz
quickjs-nuttx/quickjs.c:49590
        switch(fmt) {
    800294b4:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:49542
    h = fields[3];
    800294b6:	0006069b          	sext.w	a3,a2
quickjs-nuttx/quickjs.c:49543
    m = fields[4];
    800294ba:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:49544
    s = fields[5];
    800294bc:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:49590
        switch(fmt) {
    800294be:	20b90263          	beq	s2,a1,800296c2 <get_date_string+0x2ee>
    800294c2:	1525c663          	blt	a1,s2,8002960e <get_date_string+0x23a>
    800294c6:	16090f63          	beqz	s2,80029644 <get_date_string+0x270>
    800294ca:	4605                	li	a2,1
    800294cc:	18c90963          	beq	s2,a2,8002965e <get_date_string+0x28a>
quickjs-nuttx/quickjs.c:49620
    return JS_NewStringLen(ctx, buf, pos);
    800294d0:	8622                	mv	a2,s0
    800294d2:	182c                	addi	a1,sp,56
    800294d4:	8526                	mv	a0,s1
    800294d6:	935f50ef          	jal	ra,8001ee0a <JS_NewStringLen>
    800294da:	b7b5                	j	80029446 <get_date_string+0x72>
quickjs-nuttx/quickjs.c:49552
        switch(fmt) {
    800294dc:	478d                	li	a5,3
    800294de:	fcf911e3          	bne	s2,a5,800294a0 <get_date_string+0xcc>
quickjs-nuttx/quickjs.c:49580
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    800294e2:	0008a793          	slti	a5,a7,0
    800294e6:	8846                	mv	a6,a7
    800294e8:	0791                	addi	a5,a5,4
    800294ea:	001a069b          	addiw	a3,s4,1
    800294ee:	00042617          	auipc	a2,0x42
    800294f2:	dea60613          	addi	a2,a2,-534 # 8006b2d8 <qjsc_repl+0x5d28>
    800294f6:	04000593          	li	a1,64
    800294fa:	1828                	addi	a0,sp,56
    800294fc:	545370ef          	jal	ra,80061240 <snprintf>
    80029500:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49582
            if (part == 3) {
    80029502:	fb2a90e3          	bne	s5,s2,800294a2 <get_date_string+0xce>
quickjs-nuttx/quickjs.c:49583
                buf[pos++] = ',';
    80029506:	0198                	addi	a4,sp,192
    80029508:	972a                	add	a4,a4,a0
    8002950a:	02c00693          	li	a3,44
    8002950e:	f6d70c23          	sb	a3,-136(a4) # 40ff78 <asinh-0x7fbf0088>
    80029512:	0015079b          	addiw	a5,a0,1
quickjs-nuttx/quickjs.c:49584
                buf[pos++] = ' ';
    80029516:	0198                	addi	a4,sp,192
    80029518:	97ba                	add	a5,a5,a4
    8002951a:	02000713          	li	a4,32
    8002951e:	0025041b          	addiw	s0,a0,2
    80029522:	f6e78c23          	sb	a4,-136(a5) # 2ff78 <asinh-0x7ffd0088>
    80029526:	bfb5                	j	800294a2 <get_date_string+0xce>
quickjs-nuttx/quickjs.c:49556
                            day_names + wd * 3, d,
    80029528:	478d                	li	a5,3
    8002952a:	02d786bb          	mulw	a3,a5,a3
quickjs-nuttx/quickjs.c:49554
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    8002952e:	0004b617          	auipc	a2,0x4b
    80029532:	7ca60613          	addi	a2,a2,1994 # 80074cf8 <month_names>
    80029536:	0008a813          	slti	a6,a7,0
    8002953a:	0811                	addi	a6,a6,4
    8002953c:	04000593          	li	a1,64
    80029540:	1828                	addi	a0,sp,56
quickjs-nuttx/quickjs.c:49557
                            month_names + mon * 3, 4 + (y < 0), y);
    80029542:	034787bb          	mulw	a5,a5,s4
quickjs-nuttx/quickjs.c:49554
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    80029546:	97b2                	add	a5,a5,a2
    80029548:	00045617          	auipc	a2,0x45
    8002954c:	7e060613          	addi	a2,a2,2016 # 8006ed28 <day_names>
    80029550:	96b2                	add	a3,a3,a2
    80029552:	00042617          	auipc	a2,0x42
    80029556:	d3660613          	addi	a2,a2,-714 # 8006b288 <qjsc_repl+0x5cd8>
    8002955a:	4e7370ef          	jal	ra,80061240 <snprintf>
    8002955e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49558
            break;
    80029560:	b789                	j	800294a2 <get_date_string+0xce>
quickjs-nuttx/quickjs.c:49562
                            day_names + wd * 3,
    80029562:	478d                	li	a5,3
    80029564:	02d786bb          	mulw	a3,a5,a3
quickjs-nuttx/quickjs.c:49560
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    80029568:	0008a813          	slti	a6,a7,0
    8002956c:	00045617          	auipc	a2,0x45
    80029570:	7bc60613          	addi	a2,a2,1980 # 8006ed28 <day_names>
    80029574:	0811                	addi	a6,a6,4
    80029576:	04000593          	li	a1,64
    8002957a:	1828                	addi	a0,sp,56
quickjs-nuttx/quickjs.c:49563
                            month_names + mon * 3, d, 4 + (y < 0), y);
    8002957c:	03478a3b          	mulw	s4,a5,s4
quickjs-nuttx/quickjs.c:49560
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    80029580:	87ba                	mv	a5,a4
    80029582:	0004b717          	auipc	a4,0x4b
    80029586:	77670713          	addi	a4,a4,1910 # 80074cf8 <month_names>
    8002958a:	96b2                	add	a3,a3,a2
    8002958c:	00042617          	auipc	a2,0x42
    80029590:	d1460613          	addi	a2,a2,-748 # 8006b2a0 <qjsc_repl+0x5cf0>
    80029594:	9752                	add	a4,a4,s4
    80029596:	4ab370ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:49564
            if (part == 3) {
    8002959a:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:49560
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    8002959c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:49564
            if (part == 3) {
    8002959e:	f0fa92e3          	bne	s5,a5,800294a2 <get_date_string+0xce>
quickjs-nuttx/quickjs.c:49565
                buf[pos++] = ' ';
    800295a2:	019c                	addi	a5,sp,192
    800295a4:	97aa                	add	a5,a5,a0
    800295a6:	02000713          	li	a4,32
    800295aa:	f6e78c23          	sb	a4,-136(a5)
    800295ae:	0015041b          	addiw	s0,a0,1
    800295b2:	bdc5                	j	800294a2 <get_date_string+0xce>
quickjs-nuttx/quickjs.c:49569
            if (y >= 0 && y <= 9999) {
    800295b4:	6789                	lui	a5,0x2
    800295b6:	70f78793          	addi	a5,a5,1807 # 270f <asinh-0x7fffd8f1>
    800295ba:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:49570
                pos += snprintf(buf + pos, sizeof(buf) - pos,
    800295bc:	86c6                	mv	a3,a7
quickjs-nuttx/quickjs.c:49569
            if (y >= 0 && y <= 9999) {
    800295be:	0317ed63          	bltu	a5,a7,800295f8 <get_date_string+0x224>
quickjs-nuttx/quickjs.c:49570
                pos += snprintf(buf + pos, sizeof(buf) - pos,
    800295c2:	00042617          	auipc	a2,0x42
    800295c6:	cf660613          	addi	a2,a2,-778 # 8006b2b8 <qjsc_repl+0x5d08>
    800295ca:	04000593          	li	a1,64
    800295ce:	1828                	addi	a0,sp,56
    800295d0:	471370ef          	jal	ra,80061240 <snprintf>
    800295d4:	4411                	li	s0,4
quickjs-nuttx/quickjs.c:49573
                pos += snprintf(buf + pos, sizeof(buf) - pos,
    800295d6:	6722                	ld	a4,8(sp)
quickjs-nuttx/quickjs.c:49576
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    800295d8:	183c                	addi	a5,sp,56
    800295da:	04000593          	li	a1,64
    800295de:	8d81                	sub	a1,a1,s0
    800295e0:	00878533          	add	a0,a5,s0
    800295e4:	001a069b          	addiw	a3,s4,1
    800295e8:	00042617          	auipc	a2,0x42
    800295ec:	ce060613          	addi	a2,a2,-800 # 8006b2c8 <qjsc_repl+0x5d18>
    800295f0:	451370ef          	jal	ra,80061240 <snprintf>
    800295f4:	9c29                	addw	s0,s0,a0
quickjs-nuttx/quickjs.c:49578
            break;
    800295f6:	b575                	j	800294a2 <get_date_string+0xce>
quickjs-nuttx/quickjs.c:49573
                pos += snprintf(buf + pos, sizeof(buf) - pos,
    800295f8:	00042617          	auipc	a2,0x42
    800295fc:	cc860613          	addi	a2,a2,-824 # 8006b2c0 <qjsc_repl+0x5d10>
    80029600:	04000593          	li	a1,64
    80029604:	1828                	addi	a0,sp,56
    80029606:	43b370ef          	jal	ra,80061240 <snprintf>
    8002960a:	842a                	mv	s0,a0
    8002960c:	b7e9                	j	800295d6 <get_date_string+0x202>
quickjs-nuttx/quickjs.c:49590
        switch(fmt) {
    8002960e:	458d                	li	a1,3
    80029610:	ecb910e3          	bne	s2,a1,800294d0 <get_date_string+0xfc>
quickjs-nuttx/quickjs.c:49615
                            "%02d:%02d:%02d %cM", (h + 11) % 12 + 1, m, s,
    80029614:	4831                	li	a6,12
    80029616:	262d                	addiw	a2,a2,11
    80029618:	0306663b          	remw	a2,a2,a6
quickjs-nuttx/quickjs.c:49614
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    8002961c:	182c                	addi	a1,sp,56
    8002961e:	00858533          	add	a0,a1,s0
    80029622:	48ad                	li	a7,11
    80029624:	04000593          	li	a1,64
    80029628:	8d81                	sub	a1,a1,s0
    8002962a:	04100813          	li	a6,65
    8002962e:	2605                	addiw	a2,a2,1
    80029630:	00d8d463          	bge	a7,a3,80029638 <get_date_string+0x264>
    80029634:	05000813          	li	a6,80
quickjs-nuttx/quickjs.c:49614 (discriminator 4)
    80029638:	86b2                	mv	a3,a2
    8002963a:	00042617          	auipc	a2,0x42
    8002963e:	cee60613          	addi	a2,a2,-786 # 8006b328 <qjsc_repl+0x5d78>
    80029642:	a861                	j	800296da <get_date_string+0x306>
quickjs-nuttx/quickjs.c:49592
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    80029644:	04000593          	li	a1,64
    80029648:	1828                	addi	a0,sp,56
    8002964a:	00042617          	auipc	a2,0x42
    8002964e:	c9e60613          	addi	a2,a2,-866 # 8006b2e8 <qjsc_repl+0x5d38>
    80029652:	8d81                	sub	a1,a1,s0
    80029654:	9522                	add	a0,a0,s0
    80029656:	3eb370ef          	jal	ra,80061240 <snprintf>
quickjs-nuttx/quickjs.c:49614 (discriminator 4)
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    8002965a:	9c29                	addw	s0,s0,a0
quickjs-nuttx/quickjs.c:49617 (discriminator 4)
            break;
    8002965c:	bd95                	j	800294d0 <get_date_string+0xfc>
quickjs-nuttx/quickjs.c:49547
    tz = fields[8];
    8002965e:	c20499d3          	fcvt.w.d	s3,fs1,rtz
quickjs-nuttx/quickjs.c:49596
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    80029662:	04000593          	li	a1,64
    80029666:	1828                	addi	a0,sp,56
    80029668:	8d81                	sub	a1,a1,s0
    8002966a:	9522                	add	a0,a0,s0
    8002966c:	00042617          	auipc	a2,0x42
    80029670:	c7c60613          	addi	a2,a2,-900 # 8006b2e8 <qjsc_repl+0x5d38>
    80029674:	3cd370ef          	jal	ra,80061240 <snprintf>
    80029678:	00a407bb          	addw	a5,s0,a0
quickjs-nuttx/quickjs.c:49547
    tz = fields[8];
    8002967c:	0009891b          	sext.w	s2,s3
quickjs-nuttx/quickjs.c:49598
            if (tz < 0) {
    80029680:	0017841b          	addiw	s0,a5,1
quickjs-nuttx/quickjs.c:49602
                buf[pos++] = '+';
    80029684:	02b00713          	li	a4,43
quickjs-nuttx/quickjs.c:49598
            if (tz < 0) {
    80029688:	00095663          	bgez	s2,80029694 <get_date_string+0x2c0>
quickjs-nuttx/quickjs.c:49600
                tz = -tz;
    8002968c:	4130093b          	negw	s2,s3
quickjs-nuttx/quickjs.c:49599
                buf[pos++] = '-';
    80029690:	02d00713          	li	a4,45
    80029694:	0194                	addi	a3,sp,192
    80029696:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:49605
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    80029698:	03c00693          	li	a3,60
    8002969c:	f6e78c23          	sb	a4,-136(a5)
    800296a0:	02d9673b          	remw	a4,s2,a3
    800296a4:	183c                	addi	a5,sp,56
    800296a6:	04000593          	li	a1,64
    800296aa:	00042617          	auipc	a2,0x42
    800296ae:	c5660613          	addi	a2,a2,-938 # 8006b300 <qjsc_repl+0x5d50>
    800296b2:	8d81                	sub	a1,a1,s0
    800296b4:	00878533          	add	a0,a5,s0
    800296b8:	02d946bb          	divw	a3,s2,a3
    800296bc:	385370ef          	jal	ra,80061240 <snprintf>
    800296c0:	bf69                	j	8002965a <get_date_string+0x286>
quickjs-nuttx/quickjs.c:49545
    ms = fields[6];
    800296c2:	c2041853          	fcvt.w.d	a6,fs0,rtz
quickjs-nuttx/quickjs.c:49610
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    800296c6:	04000593          	li	a1,64
    800296ca:	1828                	addi	a0,sp,56
    800296cc:	2801                	sext.w	a6,a6
    800296ce:	00042617          	auipc	a2,0x42
    800296d2:	c4260613          	addi	a2,a2,-958 # 8006b310 <qjsc_repl+0x5d60>
    800296d6:	8d81                	sub	a1,a1,s0
    800296d8:	9522                	add	a0,a0,s0
quickjs-nuttx/quickjs.c:49614 (discriminator 4)
            pos += snprintf(buf + pos, sizeof(buf) - pos,
    800296da:	367370ef          	jal	ra,80061240 <snprintf>
    800296de:	bfb5                	j	8002965a <get_date_string+0x286>

00000000800296e0 <js_date_constructor>:
js_date_constructor():
quickjs-nuttx/quickjs.c:49632
{
    800296e0:	7151                	addi	sp,sp,-240
    800296e2:	eda6                	sd	s1,216(sp)
    800296e4:	e5ce                	sd	s3,200(sp)
    800296e6:	f586                	sd	ra,232(sp)
    800296e8:	f1a2                	sd	s0,224(sp)
    800296ea:	e9ca                	sd	s2,208(sp)
    800296ec:	e1d2                	sd	s4,192(sp)
    800296ee:	fd56                	sd	s5,184(sp)
    800296f0:	f95a                	sd	s6,176(sp)
    800296f2:	f55e                	sd	s7,168(sp)
    800296f4:	ad22                	fsd	fs0,152(sp)
    800296f6:	a926                	fsd	fs1,144(sp)
    800296f8:	a54a                	fsd	fs2,136(sp)
    800296fa:	a14e                	fsd	fs3,128(sp)
    800296fc:	e02e                	sd	a1,0(sp)
    800296fe:	e432                	sd	a2,8(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    80029700:	0006099b          	sext.w	s3,a2
js_date_constructor():
quickjs-nuttx/quickjs.c:49638
    if (JS_IsUndefined(new_target)) {
    80029704:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:49632
{
    80029706:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:49638
    if (JS_IsUndefined(new_target)) {
    80029708:	00f98363          	beq	s3,a5,8002970e <js_date_constructor+0x2e>
quickjs-nuttx/quickjs.c:49643
    if (n == 0) {
    8002970c:	e6c1                	bnez	a3,80029794 <js_date_constructor+0xb4>
quickjs-nuttx/quickjs.c:49644
        val = date_now();
    8002970e:	ca9df0ef          	jal	ra,800093b6 <date_now>
    80029712:	d22577d3          	fcvt.d.l	fa5,a0
    80029716:	a83e                	fsd	fa5,16(sp)
quickjs-nuttx/quickjs.c:49692
    rv = js_create_from_ctor(ctx, new_target, JS_CLASS_DATE);
    80029718:	6582                	ld	a1,0(sp)
    8002971a:	6622                	ld	a2,8(sp)
    8002971c:	46a9                	li	a3,10
    8002971e:	8526                	mv	a0,s1
    80029720:	d5cf20ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80029724:	f42a                	sd	a0,40(sp)
    80029726:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:49693
    if (!JS_IsException(rv))
    80029728:	0005871b          	sext.w	a4,a1
    8002972c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:49692
    rv = js_create_from_ctor(ctx, new_target, JS_CLASS_DATE);
    8002972e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:49693
    if (!JS_IsException(rv))
    80029730:	04f70e63          	beq	a4,a5,8002978c <js_date_constructor+0xac>
quickjs-nuttx/quickjs.c:49694
        JS_SetObjectData(ctx, rv, JS_NewFloat64(ctx, val));
    80029734:	67c2                	ld	a5,16(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80029736:	f20787d3          	fmv.d.x	fa5,a5
    8002973a:	c2079753          	fcvt.w.d	a4,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8002973e:	d20707d3          	fcvt.d.w	fa5,a4
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80029742:	0007069b          	sext.w	a3,a4
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80029746:	e2078653          	fmv.x.d	a2,fa5
    8002974a:	1cf61863          	bne	a2,a5,8002991a <js_date_constructor+0x23a>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8002974e:	c682                	sw	zero,76(sp)
    80029750:	4701                	li	a4,0
quickjs-nuttx/quickjs.h:566
    return v;
    80029752:	c4b6                	sw	a3,72(sp)
js_date_constructor():
quickjs-nuttx/quickjs.c:49694
    80029754:	66a6                	ld	a3,72(sp)
    80029756:	75a2                	ld	a1,40(sp)
    80029758:	7642                	ld	a2,48(sp)
    8002975a:	8526                	mv	a0,s1
    8002975c:	e8ba                	sd	a4,80(sp)
    8002975e:	842f00ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:49696
    if (!JS_IsException(rv) && JS_IsUndefined(new_target)) {
    80029762:	478d                	li	a5,3
    80029764:	02f99463          	bne	s3,a5,8002978c <js_date_constructor+0xac>
quickjs-nuttx/quickjs.c:49699
        s = get_date_string(ctx, rv, 0, NULL, 0x13);
    80029768:	7642                	ld	a2,48(sp)
    8002976a:	75a2                	ld	a1,40(sp)
    8002976c:	47cd                	li	a5,19
    8002976e:	4701                	li	a4,0
    80029770:	4681                	li	a3,0
    80029772:	8526                	mv	a0,s1
    80029774:	c61ff0ef          	jal	ra,800293d4 <get_date_string>
    80029778:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:49700
        JS_FreeValue(ctx, rv);
    8002977a:	7642                	ld	a2,48(sp)
quickjs-nuttx/quickjs.c:49699
        s = get_date_string(ctx, rv, 0, NULL, 0x13);
    8002977c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:49700
        JS_FreeValue(ctx, rv);
    8002977e:	75a2                	ld	a1,40(sp)
quickjs-nuttx/quickjs.c:49699
        s = get_date_string(ctx, rv, 0, NULL, 0x13);
    80029780:	fc2a                	sd	a0,56(sp)
quickjs-nuttx/quickjs.c:49700
        JS_FreeValue(ctx, rv);
    80029782:	8526                	mv	a0,s1
    80029784:	81ae20ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:49701
        rv = s;
    80029788:	77e2                	ld	a5,56(sp)
    8002978a:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:49703
    return rv;
    8002978c:	77a2                	ld	a5,40(sp)
    8002978e:	e0a2                	sd	s0,64(sp)
    80029790:	fc3e                	sd	a5,56(sp)
    80029792:	a849                	j	80029824 <js_date_constructor+0x144>
quickjs-nuttx/quickjs.c:49645
    } else if (n == 1) {
    80029794:	4785                	li	a5,1
    80029796:	843a                	mv	s0,a4
    80029798:	0af69d63          	bne	a3,a5,80029852 <js_date_constructor+0x172>
quickjs-nuttx/quickjs.c:49647
        if (JS_VALUE_GET_TAG(argv[0]) == JS_TAG_OBJECT) {
    8002979c:	4718                	lw	a4,8(a4)
    8002979e:	57fd                	li	a5,-1
    800297a0:	02f71963          	bne	a4,a5,800297d2 <js_date_constructor+0xf2>
quickjs-nuttx/quickjs.c:49648
            JSObject *p = JS_VALUE_GET_OBJ(argv[0]);
    800297a4:	601c                	ld	a5,0(s0)
quickjs-nuttx/quickjs.c:49649
            if (p->class_id == JS_CLASS_DATE && JS_IsNumber(p->u.object_data)) {
    800297a6:	4729                	li	a4,10
    800297a8:	0067d683          	lhu	a3,6(a5)
    800297ac:	02e69363          	bne	a3,a4,800297d2 <js_date_constructor+0xf2>
JS_IsNumber():
quickjs-nuttx/quickjs.h:571 (discriminator 1)
    int tag = JS_VALUE_GET_TAG(v);
    800297b0:	5f98                	lw	a4,56(a5)
quickjs-nuttx/quickjs.h:572 (discriminator 1)
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    800297b2:	c701                	beqz	a4,800297ba <js_date_constructor+0xda>
quickjs-nuttx/quickjs.h:572
    800297b4:	469d                	li	a3,7
    800297b6:	00d71e63          	bne	a4,a3,800297d2 <js_date_constructor+0xf2>
js_date_constructor():
quickjs-nuttx/quickjs.c:49650
                if (JS_ToFloat64(ctx, &val, p->u.object_data))
    800297ba:	7b90                	ld	a2,48(a5)
    800297bc:	7f94                	ld	a3,56(a5)
    800297be:	080c                	addi	a1,sp,16
    800297c0:	8526                	mv	a0,s1
    800297c2:	f7bf80ef          	jal	ra,8002273c <JS_ToFloat64>
quickjs-nuttx/quickjs.c:49665
            if (JS_ToFloat64Free(ctx, &val, v))
    800297c6:	ed21                	bnez	a0,8002981e <js_date_constructor+0x13e>
quickjs-nuttx/quickjs.c:49668
        val = time_clip(val);
    800297c8:	2542                	fld	fa0,16(sp)
    800297ca:	8f2e00ef          	jal	ra,800098bc <time_clip>
quickjs-nuttx/quickjs.c:49682 (discriminator 4)
        val = (i == n) ? set_date_fields(fields, 1) : NAN;
    800297ce:	a82a                	fsd	fa0,16(sp)
    800297d0:	b7a1                	j	80029718 <js_date_constructor+0x38>
quickjs-nuttx/quickjs.c:49656
        v = JS_ToPrimitive(ctx, argv[0], HINT_NONE);
    800297d2:	6410                	ld	a2,8(s0)
    800297d4:	600c                	ld	a1,0(s0)
    800297d6:	4689                	li	a3,2
    800297d8:	8526                	mv	a0,s1
    800297da:	ca2f60ef          	jal	ra,8001fc7c <JS_ToPrimitive>
    800297de:	ec2a                	sd	a0,24(sp)
    800297e0:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:49657
        if (JS_IsString(v)) {
    800297e2:	0005871b          	sext.w	a4,a1
    800297e6:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:49656
        v = JS_ToPrimitive(ctx, argv[0], HINT_NONE);
    800297e8:	862a                	mv	a2,a0
    800297ea:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:49657
        if (JS_IsString(v)) {
    800297ec:	04f71e63          	bne	a4,a5,80029848 <js_date_constructor+0x168>
quickjs-nuttx/quickjs.c:49658
            dv = js_Date_parse(ctx, JS_UNDEFINED, 1, (JSValueConst *)&v);
    800297f0:	478d                	li	a5,3
    800297f2:	0838                	addi	a4,sp,24
    800297f4:	4685                	li	a3,1
    800297f6:	460d                	li	a2,3
    800297f8:	4581                	li	a1,0
    800297fa:	8526                	mv	a0,s1
    800297fc:	e8be                	sd	a5,80(sp)
    800297fe:	e482                	sd	zero,72(sp)
    80029800:	f29f70ef          	jal	ra,80021728 <js_Date_parse>
    80029804:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:49659
            JS_FreeValue(ctx, v);
    80029806:	7602                	ld	a2,32(sp)
    80029808:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:49658
            dv = js_Date_parse(ctx, JS_UNDEFINED, 1, (JSValueConst *)&v);
    8002980a:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:49659
            JS_FreeValue(ctx, v);
    8002980c:	8526                	mv	a0,s1
    8002980e:	f91e10ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80029812:	76c2                	ld	a3,48(sp)
js_date_constructor():
quickjs-nuttx/quickjs.c:49660
            if (JS_IsException(dv))
    80029814:	4799                	li	a5,6
    80029816:	0006871b          	sext.w	a4,a3
    8002981a:	02f71663          	bne	a4,a5,80029846 <js_date_constructor+0x166>
quickjs-nuttx/quickjs.c:49675
                return JS_EXCEPTION;
    8002981e:	4799                	li	a5,6
    80029820:	fc02                	sd	zero,56(sp)
    80029822:	e0be                	sd	a5,64(sp)
quickjs-nuttx/quickjs.c:49704 (discriminator 10)
}
    80029824:	70ae                	ld	ra,232(sp)
    80029826:	740e                	ld	s0,224(sp)
    80029828:	7562                	ld	a0,56(sp)
    8002982a:	6586                	ld	a1,64(sp)
    8002982c:	64ee                	ld	s1,216(sp)
    8002982e:	694e                	ld	s2,208(sp)
    80029830:	69ae                	ld	s3,200(sp)
    80029832:	6a0e                	ld	s4,192(sp)
    80029834:	7aea                	ld	s5,184(sp)
    80029836:	7b4a                	ld	s6,176(sp)
    80029838:	7baa                	ld	s7,168(sp)
    8002983a:	246a                	fld	fs0,152(sp)
    8002983c:	24ca                	fld	fs1,144(sp)
    8002983e:	292a                	fld	fs2,136(sp)
    80029840:	298a                	fld	fs3,128(sp)
    80029842:	616d                	addi	sp,sp,240
    80029844:	8082                	ret
quickjs-nuttx/quickjs.c:49662
            if (JS_ToFloat64Free(ctx, &val, dv))
    80029846:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:49665
            if (JS_ToFloat64Free(ctx, &val, v))
    80029848:	080c                	addi	a1,sp,16
    8002984a:	8526                	mv	a0,s1
    8002984c:	e4bf80ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80029850:	bf9d                	j	800297c6 <js_date_constructor+0xe6>
quickjs-nuttx/quickjs.c:49670
        double fields[] = { 0, 0, 1, 0, 0, 0, 0 };
    80029852:	0006a797          	auipc	a5,0x6a
    80029856:	33e7b787          	fld	fa5,830(a5) # 80093b90 <_erodata+0x1e>
    8002985a:	e482                	sd	zero,72(sp)
    8002985c:	e882                	sd	zero,80(sp)
    8002985e:	acbe                	fsd	fa5,88(sp)
    80029860:	f082                	sd	zero,96(sp)
    80029862:	f482                	sd	zero,104(sp)
    80029864:	f882                	sd	zero,112(sp)
    80029866:	fc82                	sd	zero,120(sp)
quickjs-nuttx/quickjs.c:49671
        if (n > 7)
    80029868:	479d                	li	a5,7
    8002986a:	0006891b          	sext.w	s2,a3
    8002986e:	00d7d363          	bge	a5,a3,80029874 <js_date_constructor+0x194>
    80029872:	491d                	li	s2,7
quickjs-nuttx/quickjs.c:49679
            if (i == 0 && fields[0] >= 0 && fields[0] < 100)
    80029874:	f20004d3          	fmv.d.x	fs1,zero
    80029878:	04810a93          	addi	s5,sp,72
quickjs-nuttx/quickjs.c:49673
        for(i = 0; i < n; i++) {
    8002987c:	4a01                	li	s4,0
    8002987e:	8b56                	mv	s6,s5
quickjs-nuttx/quickjs.c:49676
            if (!isfinite(a))
    80029880:	0006a797          	auipc	a5,0x6a
    80029884:	3007b407          	fld	fs0,768(a5) # 80093b80 <_erodata+0xe>
quickjs-nuttx/quickjs.c:49679
            if (i == 0 && fields[0] >= 0 && fields[0] < 100)
    80029888:	0006a797          	auipc	a5,0x6a
    8002988c:	3807b907          	fld	fs2,896(a5) # 80093c08 <_erodata+0x96>
quickjs-nuttx/quickjs.c:49680
                fields[0] += 1900;
    80029890:	0006a797          	auipc	a5,0x6a
    80029894:	3807b987          	fld	fs3,896(a5) # 80093c10 <_erodata+0x9e>
    80029898:	000a0b9b          	sext.w	s7,s4
quickjs-nuttx/quickjs.c:49673 (discriminator 1)
        for(i = 0; i < n; i++) {
    8002989c:	012bc963          	blt	s7,s2,800298ae <js_date_constructor+0x1ce>
quickjs-nuttx/quickjs.c:49682
        val = (i == n) ? set_date_fields(fields, 1) : NAN;
    800298a0:	072b9263          	bne	s7,s2,80029904 <js_date_constructor+0x224>
quickjs-nuttx/quickjs.c:49682 (discriminator 1)
    800298a4:	4585                	li	a1,1
    800298a6:	855a                	mv	a0,s6
    800298a8:	ef1e00ef          	jal	ra,8000a798 <set_date_fields>
    800298ac:	b70d                	j	800297ce <js_date_constructor+0xee>
quickjs-nuttx/quickjs.c:49674
            if (JS_ToFloat64(ctx, &a, argv[i]))
    800298ae:	004a1793          	slli	a5,s4,0x4
    800298b2:	97a2                	add	a5,a5,s0
    800298b4:	6390                	ld	a2,0(a5)
    800298b6:	6794                	ld	a3,8(a5)
    800298b8:	082c                	addi	a1,sp,24
    800298ba:	8526                	mv	a0,s1
    800298bc:	e81f80ef          	jal	ra,8002273c <JS_ToFloat64>
    800298c0:	fd39                	bnez	a0,8002981e <js_date_constructor+0x13e>
quickjs-nuttx/quickjs.c:49676
            if (!isfinite(a))
    800298c2:	128477d3          	fmul.d	fa5,fs0,fs0
    800298c6:	2562                	fld	fa0,24(sp)
    800298c8:	a2f527d3          	feq.d	a5,fa0,fa5
    800298cc:	ef85                	bnez	a5,80029904 <js_date_constructor+0x224>
quickjs-nuttx/quickjs.c:49676 (discriminator 1)
    800298ce:	22f797d3          	fneg.d	fa5,fa5
    800298d2:	a2f527d3          	feq.d	a5,fa0,fa5
    800298d6:	e79d                	bnez	a5,80029904 <js_date_constructor+0x224>
quickjs-nuttx/quickjs.c:49676 (discriminator 2)
    800298d8:	a2a527d3          	feq.d	a5,fa0,fa0
    800298dc:	c785                	beqz	a5,80029904 <js_date_constructor+0x224>
quickjs-nuttx/quickjs.c:49678
            fields[i] = trunc(a);
    800298de:	c34d70ef          	jal	ra,80000d12 <trunc>
    800298e2:	00aab027          	fsd	fa0,0(s5)
quickjs-nuttx/quickjs.c:49679
            if (i == 0 && fields[0] >= 0 && fields[0] < 100)
    800298e6:	000b9c63          	bnez	s7,800298fe <js_date_constructor+0x21e>
quickjs-nuttx/quickjs.c:49679 (discriminator 1)
    800298ea:	27a6                	fld	fa5,72(sp)
    800298ec:	a2f487d3          	fle.d	a5,fs1,fa5
    800298f0:	c799                	beqz	a5,800298fe <js_date_constructor+0x21e>
quickjs-nuttx/quickjs.c:49679 (discriminator 2)
    800298f2:	a32797d3          	flt.d	a5,fa5,fs2
    800298f6:	c781                	beqz	a5,800298fe <js_date_constructor+0x21e>
quickjs-nuttx/quickjs.c:49680
                fields[0] += 1900;
    800298f8:	0337f7d3          	fadd.d	fa5,fa5,fs3
    800298fc:	a4be                	fsd	fa5,72(sp)
quickjs-nuttx/quickjs.c:49673 (discriminator 2)
        for(i = 0; i < n; i++) {
    800298fe:	0a05                	addi	s4,s4,1
    80029900:	0aa1                	addi	s5,s5,8
    80029902:	bf59                	j	80029898 <js_date_constructor+0x1b8>
quickjs-nuttx/quickjs.c:49682
        val = (i == n) ? set_date_fields(fields, 1) : NAN;
    80029904:	0006a797          	auipc	a5,0x6a
    80029908:	27c7b507          	fld	fa0,636(a5) # 80093b80 <_erodata+0xe>
    8002990c:	12a57553          	fmul.d	fa0,fa0,fa0
    80029910:	f20007d3          	fmv.d.x	fa5,zero
    80029914:	12f57553          	fmul.d	fa0,fa0,fa5
    80029918:	bd5d                	j	800297ce <js_date_constructor+0xee>
quickjs-nuttx/quickjs.h:230
    return v;
    8002991a:	e4be                	sd	a5,72(sp)
    8002991c:	0007869b          	sext.w	a3,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80029920:	471d                	li	a4,7
    80029922:	bd05                	j	80029752 <js_date_constructor+0x72>

0000000080029924 <add_var>:
add_var():
quickjs-nuttx/quickjs.c:21771
{
    80029924:	7179                	addi	sp,sp,-48
    80029926:	f406                	sd	ra,40(sp)
    80029928:	f022                	sd	s0,32(sp)
    8002992a:	ec26                	sd	s1,24(sp)
    8002992c:	e84a                	sd	s2,16(sp)
    8002992e:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:21775
    if (fd->var_count >= JS_MAX_LOCAL_VARS) {
    80029930:	09c5a703          	lw	a4,156(a1)
    80029934:	67c1                	lui	a5,0x10
    80029936:	17f9                	addi	a5,a5,-2
    80029938:	02e7d163          	bge	a5,a4,8002995a <add_var+0x36>
quickjs-nuttx/quickjs.c:21776
        JS_ThrowInternalError(ctx, "too many local variables");
    8002993c:	00042597          	auipc	a1,0x42
    80029940:	a0458593          	addi	a1,a1,-1532 # 8006b340 <qjsc_repl+0x5d90>
    80029944:	fb5ef0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:21777
        return -1;
    80029948:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:21787
}
    8002994a:	70a2                	ld	ra,40(sp)
    8002994c:	7402                	ld	s0,32(sp)
    8002994e:	64e2                	ld	s1,24(sp)
    80029950:	6942                	ld	s2,16(sp)
    80029952:	69a2                	ld	s3,8(sp)
    80029954:	853e                	mv	a0,a5
    80029956:	6145                	addi	sp,sp,48
    80029958:	8082                	ret
quickjs-nuttx/quickjs.c:21779
    if (js_resize_array(ctx, (void **)&fd->vars, sizeof(fd->vars[0]),
    8002995a:	09858693          	addi	a3,a1,152
    8002995e:	842e                	mv	s0,a1
    80029960:	89b2                	mv	s3,a2
    80029962:	2705                	addiw	a4,a4,1
    80029964:	4641                	li	a2,16
    80029966:	09058593          	addi	a1,a1,144
    8002996a:	892a                	mv	s2,a0
    8002996c:	840f30ef          	jal	ra,8001c9ac <js_resize_array>
quickjs-nuttx/quickjs.c:21781
        return -1;
    80029970:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:21779
    if (js_resize_array(ctx, (void **)&fd->vars, sizeof(fd->vars[0]),
    80029972:	fd61                	bnez	a0,8002994a <add_var+0x26>
quickjs-nuttx/quickjs.c:21782
    vd = &fd->vars[fd->var_count++];
    80029974:	09c42783          	lw	a5,156(s0)
    80029978:	6844                	ld	s1,144(s0)
quickjs-nuttx/quickjs.c:21783
    memset(vd, 0, sizeof(*vd));
    8002997a:	4641                	li	a2,16
quickjs-nuttx/quickjs.c:21782
    vd = &fd->vars[fd->var_count++];
    8002997c:	0017871b          	addiw	a4,a5,1
    80029980:	0792                	slli	a5,a5,0x4
    80029982:	94be                	add	s1,s1,a5
    80029984:	08e42e23          	sw	a4,156(s0)
quickjs-nuttx/quickjs.c:21783
    memset(vd, 0, sizeof(*vd));
    80029988:	4581                	li	a1,0
    8002998a:	8526                	mv	a0,s1
    8002998c:	2b63a0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:21784
    vd->var_name = JS_DupAtom(ctx, name);
    80029990:	85ce                	mv	a1,s3
    80029992:	854a                	mv	a0,s2
    80029994:	f72e10ef          	jal	ra,8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:21785
    vd->func_pool_idx = -1;
    80029998:	44dc                	lw	a5,12(s1)
quickjs-nuttx/quickjs.c:21784
    vd->var_name = JS_DupAtom(ctx, name);
    8002999a:	c088                	sw	a0,0(s1)
quickjs-nuttx/quickjs.c:21785
    vd->func_pool_idx = -1;
    8002999c:	f007e793          	ori	a5,a5,-256
    800299a0:	c4dc                	sw	a5,12(s1)
quickjs-nuttx/quickjs.c:21786
    return fd->var_count - 1;
    800299a2:	09c42783          	lw	a5,156(s0)
    800299a6:	37fd                	addiw	a5,a5,-1
    800299a8:	b74d                	j	8002994a <add_var+0x26>

00000000800299aa <add_scope_var>:
add_scope_var():
quickjs-nuttx/quickjs.c:21791
{
    800299aa:	1101                	addi	sp,sp,-32
    800299ac:	e822                	sd	s0,16(sp)
    800299ae:	e426                	sd	s1,8(sp)
    800299b0:	ec06                	sd	ra,24(sp)
    800299b2:	842e                	mv	s0,a1
    800299b4:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs.c:21792
    int idx = add_var(ctx, fd, name);
    800299b6:	f6fff0ef          	jal	ra,80029924 <add_var>
quickjs-nuttx/quickjs.c:21793
    if (idx >= 0) {
    800299ba:	02054c63          	bltz	a0,800299f2 <add_scope_var+0x48>
quickjs-nuttx/quickjs.c:21794
        JSVarDef *vd = &fd->vars[idx];
    800299be:	6858                	ld	a4,144(s0)
    800299c0:	00451793          	slli	a5,a0,0x4
quickjs-nuttx/quickjs.c:21795
        vd->var_kind = var_kind;
    800299c4:	88bd                	andi	s1,s1,15
quickjs-nuttx/quickjs.c:21794
        JSVarDef *vd = &fd->vars[idx];
    800299c6:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:21795
        vd->var_kind = var_kind;
    800299c8:	47d8                	lw	a4,12(a5)
    800299ca:	0044949b          	slliw	s1,s1,0x4
    800299ce:	f0f77713          	andi	a4,a4,-241
    800299d2:	8cd9                	or	s1,s1,a4
    800299d4:	c7c4                	sw	s1,12(a5)
quickjs-nuttx/quickjs.c:21796
        vd->scope_level = fd->scope_level;
    800299d6:	0e042703          	lw	a4,224(s0)
    800299da:	c3d8                	sw	a4,4(a5)
quickjs-nuttx/quickjs.c:21797
        vd->scope_next = fd->scope_first;
    800299dc:	0e442703          	lw	a4,228(s0)
    800299e0:	c798                	sw	a4,8(a5)
quickjs-nuttx/quickjs.c:21798
        fd->scopes[fd->scope_level].first = idx;
    800299e2:	0e042703          	lw	a4,224(s0)
    800299e6:	787c                	ld	a5,240(s0)
    800299e8:	070e                	slli	a4,a4,0x3
    800299ea:	97ba                	add	a5,a5,a4
    800299ec:	c3c8                	sw	a0,4(a5)
quickjs-nuttx/quickjs.c:21799
        fd->scope_first = idx;
    800299ee:	0ea42223          	sw	a0,228(s0)
quickjs-nuttx/quickjs.c:21802
}
    800299f2:	60e2                	ld	ra,24(sp)
    800299f4:	6442                	ld	s0,16(sp)
    800299f6:	64a2                	ld	s1,8(sp)
    800299f8:	6105                	addi	sp,sp,32
    800299fa:	8082                	ret

00000000800299fc <add_private_class_field>:
add_private_class_field():
quickjs-nuttx/quickjs.c:22030
{
    800299fc:	1101                	addi	sp,sp,-32
    800299fe:	e822                	sd	s0,16(sp)
    80029a00:	e426                	sd	s1,8(sp)
    80029a02:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:22035
    idx = add_scope_var(ctx, fd, name, var_kind);
    80029a04:	6108                	ld	a0,0(a0)
quickjs-nuttx/quickjs.c:22030
{
    80029a06:	84ae                	mv	s1,a1
    80029a08:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:22035
    idx = add_scope_var(ctx, fd, name, var_kind);
    80029a0a:	fa1ff0ef          	jal	ra,800299aa <add_scope_var>
quickjs-nuttx/quickjs.c:22036
    if (idx < 0)
    80029a0e:	02054163          	bltz	a0,80029a30 <add_private_class_field+0x34>
quickjs-nuttx/quickjs.c:22038
    vd = &fd->vars[idx];
    80029a12:	68d8                	ld	a4,144(s1)
    80029a14:	00451793          	slli	a5,a0,0x4
quickjs-nuttx/quickjs.c:22040
    vd->is_const = 1;
    80029a18:	0034141b          	slliw	s0,s0,0x3
quickjs-nuttx/quickjs.c:22038
    vd = &fd->vars[idx];
    80029a1c:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:22040
    vd->is_const = 1;
    80029a1e:	00c7c703          	lbu	a4,12(a5) # 1000c <asinh-0x7ffefff4>
    80029a22:	00346413          	ori	s0,s0,3
    80029a26:	882d                	andi	s0,s0,11
    80029a28:	9b51                	andi	a4,a4,-12
    80029a2a:	8c59                	or	s0,s0,a4
    80029a2c:	00878623          	sb	s0,12(a5)
quickjs-nuttx/quickjs.c:22043
}
    80029a30:	60e2                	ld	ra,24(sp)
    80029a32:	6442                	ld	s0,16(sp)
    80029a34:	64a2                	ld	s1,8(sp)
    80029a36:	6105                	addi	sp,sp,32
    80029a38:	8082                	ret

0000000080029a3a <add_var_this>:
add_var_this():
quickjs-nuttx/quickjs.c:30101
{
    80029a3a:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:30103
    idx = add_var(ctx, fd, JS_ATOM_this);
    80029a3c:	4621                	li	a2,8
quickjs-nuttx/quickjs.c:30101
{
    80029a3e:	e022                	sd	s0,0(sp)
    80029a40:	e406                	sd	ra,8(sp)
    80029a42:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:30103
    idx = add_var(ctx, fd, JS_ATOM_this);
    80029a44:	ee1ff0ef          	jal	ra,80029924 <add_var>
quickjs-nuttx/quickjs.c:30104
    if (idx >= 0 && fd->is_derived_class_constructor) {
    80029a48:	00054c63          	bltz	a0,80029a60 <add_var_this+0x26>
quickjs-nuttx/quickjs.c:30104 (discriminator 1)
    80029a4c:	5c3c                	lw	a5,120(s0)
    80029a4e:	cb89                	beqz	a5,80029a60 <add_var_this+0x26>
quickjs-nuttx/quickjs.c:30107
        vd->is_lexical = 1; /* used to trigger 'uninitialized' checks
    80029a50:	685c                	ld	a5,144(s0)
    80029a52:	00451713          	slli	a4,a0,0x4
    80029a56:	97ba                	add	a5,a5,a4
    80029a58:	47d8                	lw	a4,12(a5)
    80029a5a:	00276713          	ori	a4,a4,2
    80029a5e:	c7d8                	sw	a4,12(a5)
quickjs-nuttx/quickjs.c:30111
}
    80029a60:	60a2                	ld	ra,8(sp)
    80029a62:	6402                	ld	s0,0(sp)
    80029a64:	0141                	addi	sp,sp,16
    80029a66:	8082                	ret

0000000080029a68 <add_arguments_var>:
add_arguments_var():
quickjs-nuttx/quickjs.c:21818
    int idx = fd->arguments_var_idx;
    80029a68:	0bc5a783          	lw	a5,188(a1)
quickjs-nuttx/quickjs.c:21819
    if (idx < 0 && (idx = add_var(ctx, fd, JS_ATOM_arguments)) >= 0) {
    80029a6c:	0207d463          	bgez	a5,80029a94 <add_arguments_var+0x2c>
quickjs-nuttx/quickjs.c:21817
{
    80029a70:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:21819
    if (idx < 0 && (idx = add_var(ctx, fd, JS_ATOM_arguments)) >= 0) {
    80029a72:	04e00613          	li	a2,78
quickjs-nuttx/quickjs.c:21817
{
    80029a76:	e022                	sd	s0,0(sp)
    80029a78:	e406                	sd	ra,8(sp)
    80029a7a:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:21819
    if (idx < 0 && (idx = add_var(ctx, fd, JS_ATOM_arguments)) >= 0) {
    80029a7c:	ea9ff0ef          	jal	ra,80029924 <add_var>
    80029a80:	87aa                	mv	a5,a0
    80029a82:	00054463          	bltz	a0,80029a8a <add_arguments_var+0x22>
quickjs-nuttx/quickjs.c:21820
        fd->arguments_var_idx = idx;
    80029a86:	0aa42e23          	sw	a0,188(s0)
quickjs-nuttx/quickjs.c:21823
}
    80029a8a:	60a2                	ld	ra,8(sp)
    80029a8c:	6402                	ld	s0,0(sp)
    80029a8e:	853e                	mv	a0,a5
    80029a90:	0141                	addi	sp,sp,16
    80029a92:	8082                	ret
    80029a94:	853e                	mv	a0,a5
    80029a96:	8082                	ret

0000000080029a98 <add_func_var>:
add_func_var():
quickjs-nuttx/quickjs.c:21806
    int idx = fd->func_var_idx;
    80029a98:	0c45a783          	lw	a5,196(a1)
quickjs-nuttx/quickjs.c:21807
    if (idx < 0 && (idx = add_var(ctx, fd, name)) >= 0) {
    80029a9c:	0407d663          	bgez	a5,80029ae8 <add_func_var+0x50>
quickjs-nuttx/quickjs.c:21805
{
    80029aa0:	1141                	addi	sp,sp,-16
    80029aa2:	e022                	sd	s0,0(sp)
    80029aa4:	e406                	sd	ra,8(sp)
    80029aa6:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:21807
    if (idx < 0 && (idx = add_var(ctx, fd, name)) >= 0) {
    80029aa8:	e7dff0ef          	jal	ra,80029924 <add_var>
    80029aac:	87aa                	mv	a5,a0
    80029aae:	02054863          	bltz	a0,80029ade <add_func_var+0x46>
quickjs-nuttx/quickjs.c:21809
        fd->vars[idx].var_kind = JS_VAR_FUNCTION_NAME;
    80029ab2:	6854                	ld	a3,144(s0)
    80029ab4:	00451613          	slli	a2,a0,0x4
quickjs-nuttx/quickjs.c:21808
        fd->func_var_idx = idx;
    80029ab8:	0ca42223          	sw	a0,196(s0)
quickjs-nuttx/quickjs.c:21809
        fd->vars[idx].var_kind = JS_VAR_FUNCTION_NAME;
    80029abc:	96b2                	add	a3,a3,a2
    80029abe:	46d8                	lw	a4,12(a3)
    80029ac0:	f0f77713          	andi	a4,a4,-241
    80029ac4:	04076713          	ori	a4,a4,64
    80029ac8:	c6d8                	sw	a4,12(a3)
quickjs-nuttx/quickjs.c:21810
        if (fd->js_mode & JS_MODE_STRICT)
    80029aca:	08644683          	lbu	a3,134(s0)
    80029ace:	8a85                	andi	a3,a3,1
    80029ad0:	c699                	beqz	a3,80029ade <add_func_var+0x46>
quickjs-nuttx/quickjs.c:21811
            fd->vars[idx].is_const = TRUE;
    80029ad2:	6858                	ld	a4,144(s0)
    80029ad4:	9732                	add	a4,a4,a2
    80029ad6:	4754                	lw	a3,12(a4)
    80029ad8:	0016e693          	ori	a3,a3,1
    80029adc:	c754                	sw	a3,12(a4)
quickjs-nuttx/quickjs.c:21814
}
    80029ade:	60a2                	ld	ra,8(sp)
    80029ae0:	6402                	ld	s0,0(sp)
    80029ae2:	853e                	mv	a0,a5
    80029ae4:	0141                	addi	sp,sp,16
    80029ae6:	8082                	ret
    80029ae8:	853e                	mv	a0,a5
    80029aea:	8082                	ret

0000000080029aec <resolve_pseudo_var>:
resolve_pseudo_var():
quickjs-nuttx/quickjs.c:30118
    if (!s->has_this_binding)
    80029aec:	51fc                	lw	a5,100(a1)
    80029aee:	cbc9                	beqz	a5,80029b80 <resolve_pseudo_var+0x94>
quickjs-nuttx/quickjs.c:30115
{
    80029af0:	1141                	addi	sp,sp,-16
    80029af2:	e022                	sd	s0,0(sp)
    80029af4:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:30120
    switch(var_name) {
    80029af6:	07300793          	li	a5,115
    80029afa:	842e                	mv	s0,a1
    80029afc:	04f60163          	beq	a2,a5,80029b3e <resolve_pseudo_var+0x52>
    80029b00:	00c7ef63          	bltu	a5,a2,80029b1e <resolve_pseudo_var+0x32>
    80029b04:	47a1                	li	a5,8
    80029b06:	06f60263          	beq	a2,a5,80029b6a <resolve_pseudo_var+0x7e>
    80029b0a:	07200793          	li	a5,114
    80029b0e:	04f60363          	beq	a2,a5,80029b54 <resolve_pseudo_var+0x68>
    80029b12:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:30150
}
    80029b14:	60a2                	ld	ra,8(sp)
    80029b16:	6402                	ld	s0,0(sp)
    80029b18:	853e                	mv	a0,a5
    80029b1a:	0141                	addi	sp,sp,16
    80029b1c:	8082                	ret
quickjs-nuttx/quickjs.c:30120
    switch(var_name) {
    80029b1e:	07400693          	li	a3,116
    80029b22:	57fd                	li	a5,-1
    80029b24:	fed618e3          	bne	a2,a3,80029b14 <resolve_pseudo_var+0x28>
quickjs-nuttx/quickjs.c:30123
        if (s->home_object_var_idx < 0)
    80029b28:	0d85a783          	lw	a5,216(a1)
    80029b2c:	0007d663          	bgez	a5,80029b38 <resolve_pseudo_var+0x4c>
quickjs-nuttx/quickjs.c:30124
            s->home_object_var_idx = add_var(ctx, s, var_name);
    80029b30:	df5ff0ef          	jal	ra,80029924 <add_var>
    80029b34:	0ca42c23          	sw	a0,216(s0)
quickjs-nuttx/quickjs.c:30125
        var_idx = s->home_object_var_idx;
    80029b38:	0d842783          	lw	a5,216(s0)
quickjs-nuttx/quickjs.c:30126
        break;
    80029b3c:	bfe1                	j	80029b14 <resolve_pseudo_var+0x28>
quickjs-nuttx/quickjs.c:30129
        if (s->this_active_func_var_idx < 0)
    80029b3e:	0d45a783          	lw	a5,212(a1)
    80029b42:	0007d663          	bgez	a5,80029b4e <resolve_pseudo_var+0x62>
quickjs-nuttx/quickjs.c:30130
            s->this_active_func_var_idx = add_var(ctx, s, var_name);
    80029b46:	ddfff0ef          	jal	ra,80029924 <add_var>
    80029b4a:	0ca42a23          	sw	a0,212(s0)
quickjs-nuttx/quickjs.c:30131
        var_idx = s->this_active_func_var_idx;
    80029b4e:	0d442783          	lw	a5,212(s0)
quickjs-nuttx/quickjs.c:30132
        break;
    80029b52:	b7c9                	j	80029b14 <resolve_pseudo_var+0x28>
quickjs-nuttx/quickjs.c:30135
        if (s->new_target_var_idx < 0)
    80029b54:	0d05a783          	lw	a5,208(a1)
    80029b58:	0007d663          	bgez	a5,80029b64 <resolve_pseudo_var+0x78>
quickjs-nuttx/quickjs.c:30136
            s->new_target_var_idx = add_var(ctx, s, var_name);
    80029b5c:	dc9ff0ef          	jal	ra,80029924 <add_var>
    80029b60:	0ca42823          	sw	a0,208(s0)
quickjs-nuttx/quickjs.c:30137
        var_idx = s->new_target_var_idx;
    80029b64:	0d042783          	lw	a5,208(s0)
quickjs-nuttx/quickjs.c:30138
        break;
    80029b68:	b775                	j	80029b14 <resolve_pseudo_var+0x28>
quickjs-nuttx/quickjs.c:30141
        if (s->this_var_idx < 0)
    80029b6a:	0cc5a783          	lw	a5,204(a1)
    80029b6e:	0007d663          	bgez	a5,80029b7a <resolve_pseudo_var+0x8e>
quickjs-nuttx/quickjs.c:30142
            s->this_var_idx = add_var_this(ctx, s);
    80029b72:	ec9ff0ef          	jal	ra,80029a3a <add_var_this>
    80029b76:	0ca42623          	sw	a0,204(s0)
quickjs-nuttx/quickjs.c:30143
        var_idx = s->this_var_idx;
    80029b7a:	0cc42783          	lw	a5,204(s0)
quickjs-nuttx/quickjs.c:30144
        break;
    80029b7e:	bf59                	j	80029b14 <resolve_pseudo_var+0x28>
quickjs-nuttx/quickjs.c:30119
        return -1;
    80029b80:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:30150
}
    80029b82:	853e                	mv	a0,a5
    80029b84:	8082                	ret

0000000080029b86 <add_arg>:
add_arg():
quickjs-nuttx/quickjs.c:21851
{
    80029b86:	7179                	addi	sp,sp,-48
    80029b88:	f406                	sd	ra,40(sp)
    80029b8a:	f022                	sd	s0,32(sp)
    80029b8c:	ec26                	sd	s1,24(sp)
    80029b8e:	e84a                	sd	s2,16(sp)
    80029b90:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:21855
    if (fd->arg_count >= JS_MAX_LOCAL_VARS) {
    80029b92:	0ac5a703          	lw	a4,172(a1)
    80029b96:	67c1                	lui	a5,0x10
    80029b98:	17f9                	addi	a5,a5,-2
    80029b9a:	02e7d163          	bge	a5,a4,80029bbc <add_arg+0x36>
quickjs-nuttx/quickjs.c:21856
        JS_ThrowInternalError(ctx, "too many arguments");
    80029b9e:	00041597          	auipc	a1,0x41
    80029ba2:	7c258593          	addi	a1,a1,1986 # 8006b360 <qjsc_repl+0x5db0>
    80029ba6:	d53ef0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:21857
        return -1;
    80029baa:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:21867
}
    80029bac:	70a2                	ld	ra,40(sp)
    80029bae:	7402                	ld	s0,32(sp)
    80029bb0:	64e2                	ld	s1,24(sp)
    80029bb2:	6942                	ld	s2,16(sp)
    80029bb4:	69a2                	ld	s3,8(sp)
    80029bb6:	853e                	mv	a0,a5
    80029bb8:	6145                	addi	sp,sp,48
    80029bba:	8082                	ret
quickjs-nuttx/quickjs.c:21859
    if (js_resize_array(ctx, (void **)&fd->args, sizeof(fd->args[0]),
    80029bbc:	0a858693          	addi	a3,a1,168
    80029bc0:	842e                	mv	s0,a1
    80029bc2:	89b2                	mv	s3,a2
    80029bc4:	2705                	addiw	a4,a4,1
    80029bc6:	4641                	li	a2,16
    80029bc8:	0a058593          	addi	a1,a1,160
    80029bcc:	892a                	mv	s2,a0
    80029bce:	ddff20ef          	jal	ra,8001c9ac <js_resize_array>
quickjs-nuttx/quickjs.c:21861
        return -1;
    80029bd2:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:21859
    if (js_resize_array(ctx, (void **)&fd->args, sizeof(fd->args[0]),
    80029bd4:	fd61                	bnez	a0,80029bac <add_arg+0x26>
quickjs-nuttx/quickjs.c:21862
    vd = &fd->args[fd->arg_count++];
    80029bd6:	0ac42783          	lw	a5,172(s0)
    80029bda:	7044                	ld	s1,160(s0)
quickjs-nuttx/quickjs.c:21863
    memset(vd, 0, sizeof(*vd));
    80029bdc:	4641                	li	a2,16
quickjs-nuttx/quickjs.c:21862
    vd = &fd->args[fd->arg_count++];
    80029bde:	0017871b          	addiw	a4,a5,1
    80029be2:	0792                	slli	a5,a5,0x4
    80029be4:	94be                	add	s1,s1,a5
    80029be6:	0ae42623          	sw	a4,172(s0)
quickjs-nuttx/quickjs.c:21863
    memset(vd, 0, sizeof(*vd));
    80029bea:	4581                	li	a1,0
    80029bec:	8526                	mv	a0,s1
    80029bee:	0543a0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:21864
    vd->var_name = JS_DupAtom(ctx, name);
    80029bf2:	85ce                	mv	a1,s3
    80029bf4:	854a                	mv	a0,s2
    80029bf6:	d10e10ef          	jal	ra,8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:21865
    vd->func_pool_idx = -1;
    80029bfa:	44dc                	lw	a5,12(s1)
quickjs-nuttx/quickjs.c:21864
    vd->var_name = JS_DupAtom(ctx, name);
    80029bfc:	c088                	sw	a0,0(s1)
quickjs-nuttx/quickjs.c:21865
    vd->func_pool_idx = -1;
    80029bfe:	f007e793          	ori	a5,a5,-256
    80029c02:	c4dc                	sw	a5,12(s1)
quickjs-nuttx/quickjs.c:21866
    return fd->arg_count - 1;
    80029c04:	0ac42783          	lw	a5,172(s0)
    80029c08:	37fd                	addiw	a5,a5,-1
    80029c0a:	b74d                	j	80029bac <add_arg+0x26>

0000000080029c0c <add_closure_var>:
add_closure_var():
quickjs-nuttx/quickjs.c:29883
{
    80029c0c:	715d                	addi	sp,sp,-80
    80029c0e:	e45e                	sd	s7,8(sp)
    80029c10:	e062                	sd	s8,0(sp)
    80029c12:	e486                	sd	ra,72(sp)
    80029c14:	e0a2                	sd	s0,64(sp)
    80029c16:	fc26                	sd	s1,56(sp)
    80029c18:	f84a                	sd	s2,48(sp)
    80029c1a:	f44e                	sd	s3,40(sp)
    80029c1c:	f052                	sd	s4,32(sp)
    80029c1e:	ec56                	sd	s5,24(sp)
    80029c20:	e85a                	sd	s6,16(sp)
    80029c22:	8c3a                	mv	s8,a4
quickjs-nuttx/quickjs.c:29887
    if (s->closure_var_count >= JS_MAX_LOCAL_VARS) {
    80029c24:	1985a703          	lw	a4,408(a1)
quickjs-nuttx/quickjs.c:29883
{
    80029c28:	8bbe                	mv	s7,a5
quickjs-nuttx/quickjs.c:29887
    if (s->closure_var_count >= JS_MAX_LOCAL_VARS) {
    80029c2a:	67c1                	lui	a5,0x10
    80029c2c:	17f9                	addi	a5,a5,-2
    80029c2e:	02e7d663          	bge	a5,a4,80029c5a <add_closure_var+0x4e>
quickjs-nuttx/quickjs.c:29888
        JS_ThrowInternalError(ctx, "too many closure variables");
    80029c32:	00041597          	auipc	a1,0x41
    80029c36:	74658593          	addi	a1,a1,1862 # 8006b378 <qjsc_repl+0x5dc8>
    80029c3a:	cbfef0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:29889
        return -1;
    80029c3e:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:29905
}
    80029c40:	60a6                	ld	ra,72(sp)
    80029c42:	6406                	ld	s0,64(sp)
    80029c44:	74e2                	ld	s1,56(sp)
    80029c46:	7942                	ld	s2,48(sp)
    80029c48:	79a2                	ld	s3,40(sp)
    80029c4a:	7a02                	ld	s4,32(sp)
    80029c4c:	6ae2                	ld	s5,24(sp)
    80029c4e:	6b42                	ld	s6,16(sp)
    80029c50:	6ba2                	ld	s7,8(sp)
    80029c52:	6c02                	ld	s8,0(sp)
    80029c54:	8532                	mv	a0,a2
    80029c56:	6161                	addi	sp,sp,80
    80029c58:	8082                	ret
    80029c5a:	84ae                	mv	s1,a1
    80029c5c:	8432                	mv	s0,a2
    80029c5e:	8ab6                	mv	s5,a3
quickjs-nuttx/quickjs.c:29892
    if (js_resize_array(ctx, (void **)&s->closure_var,
    80029c60:	4621                	li	a2,8
    80029c62:	19c58693          	addi	a3,a1,412
    80029c66:	2705                	addiw	a4,a4,1
    80029c68:	1a058593          	addi	a1,a1,416
    80029c6c:	8b2a                	mv	s6,a0
    80029c6e:	8a42                	mv	s4,a6
    80029c70:	89c6                	mv	s3,a7
    80029c72:	d3bf20ef          	jal	ra,8001c9ac <js_resize_array>
quickjs-nuttx/quickjs.c:29895
        return -1;
    80029c76:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:29892
    if (js_resize_array(ctx, (void **)&s->closure_var,
    80029c78:	f561                	bnez	a0,80029c40 <add_closure_var+0x34>
quickjs-nuttx/quickjs.c:29896
    cv = &s->closure_var[s->closure_var_count++];
    80029c7a:	1984a683          	lw	a3,408(s1)
    80029c7e:	1a04b903          	ld	s2,416(s1)
quickjs-nuttx/quickjs.c:29897
    cv->is_local = is_local;
    80029c82:	001a9a9b          	slliw	s5,s5,0x1
quickjs-nuttx/quickjs.c:29896
    cv = &s->closure_var[s->closure_var_count++];
    80029c86:	0016879b          	addiw	a5,a3,1
    80029c8a:	068e                	slli	a3,a3,0x3
    80029c8c:	18f4ac23          	sw	a5,408(s1)
    80029c90:	9936                	add	s2,s2,a3
quickjs-nuttx/quickjs.c:29897
    cv->is_local = is_local;
    80029c92:	47c6                	lw	a5,80(sp)
    80029c94:	00147693          	andi	a3,s0,1
    80029c98:	0156e6b3          	or	a3,a3,s5
    80029c9c:	002a1a1b          	slliw	s4,s4,0x2
    80029ca0:	0146e6b3          	or	a3,a3,s4
    80029ca4:	0039999b          	slliw	s3,s3,0x3
    80029ca8:	0047979b          	slliw	a5,a5,0x4
    80029cac:	0136e6b3          	or	a3,a3,s3
    80029cb0:	8edd                	or	a3,a3,a5
    80029cb2:	00d90023          	sb	a3,0(s2)
quickjs-nuttx/quickjs.c:29902
    cv->var_idx = var_idx;
    80029cb6:	01891123          	sh	s8,2(s2)
quickjs-nuttx/quickjs.c:29903
    cv->var_name = JS_DupAtom(ctx, var_name);
    80029cba:	85de                	mv	a1,s7
    80029cbc:	855a                	mv	a0,s6
    80029cbe:	c48e10ef          	jal	ra,8000b106 <JS_DupAtom>
    80029cc2:	00a92223          	sw	a0,4(s2)
quickjs-nuttx/quickjs.c:29904
    return s->closure_var_count - 1;
    80029cc6:	1984a603          	lw	a2,408(s1)
    80029cca:	367d                	addiw	a2,a2,-1
    80029ccc:	bf95                	j	80029c40 <add_closure_var+0x34>

0000000080029cce <get_closure_var2>:
get_closure_var2():
quickjs-nuttx/quickjs.c:29927
{
    80029cce:	715d                	addi	sp,sp,-80
    80029cd0:	e0a2                	sd	s0,64(sp)
    80029cd2:	fc26                	sd	s1,56(sp)
    80029cd4:	f84a                	sd	s2,48(sp)
    80029cd6:	f44e                	sd	s3,40(sp)
    80029cd8:	f052                	sd	s4,32(sp)
    80029cda:	ec56                	sd	s5,24(sp)
    80029cdc:	e85a                	sd	s6,16(sp)
    80029cde:	e486                	sd	ra,72(sp)
    80029ce0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:29930
    if (fd != s->parent) {
    80029ce2:	658c                	ld	a1,8(a1)
quickjs-nuttx/quickjs.c:29927
{
    80029ce4:	4ac6                	lw	s5,80(sp)
    80029ce6:	4b66                	lw	s6,88(sp)
    80029ce8:	892a                	mv	s2,a0
    80029cea:	84ba                	mv	s1,a4
    80029cec:	89c2                	mv	s3,a6
    80029cee:	8a46                	mv	s4,a7
quickjs-nuttx/quickjs.c:29930
    if (fd != s->parent) {
    80029cf0:	02c58563          	beq	a1,a2,80029d1a <get_closure_var2+0x4c>
quickjs-nuttx/quickjs.c:29931
        var_idx = get_closure_var2(ctx, s->parent, fd, is_local,
    80029cf4:	e45a                	sd	s6,8(sp)
    80029cf6:	e056                	sd	s5,0(sp)
    80029cf8:	fd7ff0ef          	jal	ra,80029cce <get_closure_var2>
    80029cfc:	832a                	mv	t1,a0
quickjs-nuttx/quickjs.c:29936
        is_local = FALSE;
    80029cfe:	4e01                	li	t3,0
quickjs-nuttx/quickjs.c:29934
        if (var_idx < 0)
    80029d00:	00055f63          	bgez	a0,80029d1e <get_closure_var2+0x50>
quickjs-nuttx/quickjs.c:29935
            return -1;
    80029d04:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:29946
}
    80029d06:	60a6                	ld	ra,72(sp)
    80029d08:	6406                	ld	s0,64(sp)
    80029d0a:	74e2                	ld	s1,56(sp)
    80029d0c:	7942                	ld	s2,48(sp)
    80029d0e:	79a2                	ld	s3,40(sp)
    80029d10:	7a02                	ld	s4,32(sp)
    80029d12:	6ae2                	ld	s5,24(sp)
    80029d14:	6b42                	ld	s6,16(sp)
    80029d16:	6161                	addi	sp,sp,80
    80029d18:	8082                	ret
    80029d1a:	8e36                	mv	t3,a3
    80029d1c:	833e                	mv	t1,a5
quickjs-nuttx/quickjs.c:29938
    for(i = 0; i < s->closure_var_count; i++) {
    80029d1e:	19842583          	lw	a1,408(s0)
    80029d22:	4701                	li	a4,0
    80029d24:	0007051b          	sext.w	a0,a4
quickjs-nuttx/quickjs.c:29938 (discriminator 1)
    80029d28:	02b54663          	blt	a0,a1,80029d54 <get_closure_var2+0x86>
quickjs-nuttx/quickjs.c:29944
    return add_closure_var(ctx, s, is_local, is_arg, var_idx, var_name,
    80029d2c:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:29946
}
    80029d2e:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:29944
    return add_closure_var(ctx, s, is_local, is_arg, var_idx, var_name,
    80029d30:	e8da                	sd	s6,80(sp)
quickjs-nuttx/quickjs.c:29946
}
    80029d32:	60a6                	ld	ra,72(sp)
    80029d34:	6b42                	ld	s6,16(sp)
quickjs-nuttx/quickjs.c:29944
    return add_closure_var(ctx, s, is_local, is_arg, var_idx, var_name,
    80029d36:	88d6                	mv	a7,s5
    80029d38:	8852                	mv	a6,s4
quickjs-nuttx/quickjs.c:29946
}
    80029d3a:	6ae2                	ld	s5,24(sp)
    80029d3c:	7a02                	ld	s4,32(sp)
quickjs-nuttx/quickjs.c:29944
    return add_closure_var(ctx, s, is_local, is_arg, var_idx, var_name,
    80029d3e:	87ce                	mv	a5,s3
    80029d40:	86a6                	mv	a3,s1
quickjs-nuttx/quickjs.c:29946
}
    80029d42:	79a2                	ld	s3,40(sp)
    80029d44:	74e2                	ld	s1,56(sp)
quickjs-nuttx/quickjs.c:29944
    return add_closure_var(ctx, s, is_local, is_arg, var_idx, var_name,
    80029d46:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:29946
}
    80029d48:	7942                	ld	s2,48(sp)
quickjs-nuttx/quickjs.c:29944
    return add_closure_var(ctx, s, is_local, is_arg, var_idx, var_name,
    80029d4a:	871a                	mv	a4,t1
    80029d4c:	8672                	mv	a2,t3
quickjs-nuttx/quickjs.c:29946
}
    80029d4e:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:29944
    return add_closure_var(ctx, s, is_local, is_arg, var_idx, var_name,
    80029d50:	ebdff06f          	j	80029c0c <add_closure_var>
quickjs-nuttx/quickjs.c:29939
        JSClosureVar *cv = &s->closure_var[i];
    80029d54:	1a043603          	ld	a2,416(s0)
    80029d58:	00371693          	slli	a3,a4,0x3
    80029d5c:	96b2                	add	a3,a3,a2
quickjs-nuttx/quickjs.c:29940
        if (cv->var_idx == var_idx && cv->is_arg == is_arg &&
    80029d5e:	0026d783          	lhu	a5,2(a3) # 400002 <asinh-0x7fbffffe>
    80029d62:	00679b63          	bne	a5,t1,80029d78 <get_closure_var2+0xaa>
quickjs-nuttx/quickjs.c:29940 (discriminator 1)
    80029d66:	4294                	lw	a3,0(a3)
    80029d68:	0016d79b          	srliw	a5,a3,0x1
    80029d6c:	8b85                	andi	a5,a5,1
    80029d6e:	00979563          	bne	a5,s1,80029d78 <get_closure_var2+0xaa>
quickjs-nuttx/quickjs.c:29940 (discriminator 2)
    80029d72:	8a85                	andi	a3,a3,1
    80029d74:	f9c689e3          	beq	a3,t3,80029d06 <get_closure_var2+0x38>
quickjs-nuttx/quickjs.c:29938 (discriminator 2)
    for(i = 0; i < s->closure_var_count; i++) {
    80029d78:	0705                	addi	a4,a4,1
    80029d7a:	b76d                	j	80029d24 <get_closure_var2+0x56>

0000000080029d7c <resolve_scope_private_field1>:
resolve_scope_private_field1():
quickjs-nuttx/quickjs.c:30636
{
    80029d7c:	7139                	addi	sp,sp,-64
    80029d7e:	f426                	sd	s1,40(sp)
    80029d80:	f04a                	sd	s2,32(sp)
    80029d82:	ec4e                	sd	s3,24(sp)
    80029d84:	84ae                	mv	s1,a1
    80029d86:	8932                	mv	s2,a2
    80029d88:	fc06                	sd	ra,56(sp)
    80029d8a:	f822                	sd	s0,48(sp)
    80029d8c:	85b6                	mv	a1,a3
    80029d8e:	883a                	mv	a6,a4
    80029d90:	8636                	mv	a2,a3
quickjs-nuttx/quickjs.c:30642
    is_ref = FALSE;
    80029d92:	4981                	li	s3,0
find_private_class_field_all():
quickjs-nuttx/quickjs.c:30612
    idx = fd->scopes[scope_level].first;
    80029d94:	7a78                	ld	a4,240(a2)
    80029d96:	078e                	slli	a5,a5,0x3
    80029d98:	97ba                	add	a5,a5,a4
    80029d9a:	43dc                	lw	a5,4(a5)
quickjs-nuttx/quickjs.c:30613
    while (idx >= 0) {
    80029d9c:	0007d863          	bgez	a5,80029dac <resolve_scope_private_field1+0x30>
resolve_scope_private_field1():
quickjs-nuttx/quickjs.c:30656
        if (!fd->parent) {
    80029da0:	6618                	ld	a4,8(a2)
quickjs-nuttx/quickjs.c:30655
        scope_level = fd->parent_scope_level;
    80029da2:	4a5c                	lw	a5,20(a2)
quickjs-nuttx/quickjs.c:30685
        is_ref = TRUE;
    80029da4:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:30656
        if (!fd->parent) {
    80029da6:	c731                	beqz	a4,80029df2 <resolve_scope_private_field1+0x76>
    80029da8:	863a                	mv	a2,a4
    80029daa:	b7ed                	j	80029d94 <resolve_scope_private_field1+0x18>
find_private_class_field_all():
quickjs-nuttx/quickjs.c:30614
        if (fd->vars[idx].var_name == name)
    80029dac:	6a54                	ld	a3,144(a2)
    80029dae:	00479713          	slli	a4,a5,0x4
    80029db2:	9736                	add	a4,a4,a3
    80029db4:	4314                	lw	a3,0(a4)
    80029db6:	03069c63          	bne	a3,a6,80029dee <resolve_scope_private_field1+0x72>
resolve_scope_private_field1():
quickjs-nuttx/quickjs.c:30646
            var_kind = fd->vars[idx].var_kind;
    80029dba:	4740                	lw	s0,12(a4)
    80029dbc:	0044541b          	srliw	s0,s0,0x4
    80029dc0:	883d                	andi	s0,s0,15
quickjs-nuttx/quickjs.c:30647
            if (is_ref) {
    80029dc2:	0a098163          	beqz	s3,80029e64 <resolve_scope_private_field1+0xe8>
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    80029dc6:	4705                	li	a4,1
    80029dc8:	e03a                	sd	a4,0(sp)
    80029dca:	e402                	sd	zero,8(sp)
    80029dcc:	4885                	li	a7,1
    80029dce:	4701                	li	a4,0
    80029dd0:	4685                	li	a3,1
    80029dd2:	efdff0ef          	jal	ra,80029cce <get_closure_var2>
    80029dd6:	87aa                	mv	a5,a0
resolve_scope_private_field1():
quickjs-nuttx/quickjs.c:30650
                if (idx < 0)
    80029dd8:	08055663          	bgez	a0,80029e64 <resolve_scope_private_field1+0xe8>
quickjs-nuttx/quickjs.c:30681
            return -1;
    80029ddc:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:30691
}
    80029dde:	70e2                	ld	ra,56(sp)
    80029de0:	7442                	ld	s0,48(sp)
    80029de2:	74a2                	ld	s1,40(sp)
    80029de4:	7902                	ld	s2,32(sp)
    80029de6:	69e2                	ld	s3,24(sp)
    80029de8:	853e                	mv	a0,a5
    80029dea:	6121                	addi	sp,sp,64
    80029dec:	8082                	ret
find_private_class_field_all():
quickjs-nuttx/quickjs.c:30616
        idx = fd->vars[idx].scope_next;
    80029dee:	471c                	lw	a5,8(a4)
    80029df0:	b775                	j	80029d9c <resolve_scope_private_field1+0x20>
resolve_scope_private_field1():
quickjs-nuttx/quickjs.c:30657
            if (fd->is_eval) {
    80029df2:	5e1c                	lw	a5,56(a2)
    80029df4:	cb81                	beqz	a5,80029e04 <resolve_scope_private_field1+0x88>
quickjs-nuttx/quickjs.c:30659
                for (idx = 0; idx < fd->closure_var_count; idx++) {
    80029df6:	19862883          	lw	a7,408(a2)
    80029dfa:	4701                	li	a4,0
    80029dfc:	0007079b          	sext.w	a5,a4
quickjs-nuttx/quickjs.c:30659 (discriminator 1)
    80029e00:	0117ce63          	blt	a5,a7,80029e1c <resolve_scope_private_field1+0xa0>
quickjs-nuttx/quickjs.c:30679
            JS_ThrowSyntaxErrorAtom(ctx, "undefined private field '%s'",
    80029e04:	00040697          	auipc	a3,0x40
    80029e08:	d8468693          	addi	a3,a3,-636 # 80069b88 <qjsc_repl+0x45d8>
    80029e0c:	00041617          	auipc	a2,0x41
    80029e10:	58c60613          	addi	a2,a2,1420 # 8006b398 <qjsc_repl+0x5de8>
    80029e14:	85c2                	mv	a1,a6
    80029e16:	d96ee0ef          	jal	ra,800183ac <__JS_ThrowSyntaxErrorAtom>
    80029e1a:	b7c9                	j	80029ddc <resolve_scope_private_field1+0x60>
quickjs-nuttx/quickjs.c:30660
                    JSClosureVar *cv = &fd->closure_var[idx];
    80029e1c:	1a063683          	ld	a3,416(a2)
    80029e20:	00371313          	slli	t1,a4,0x3
quickjs-nuttx/quickjs.c:30661
                    if (cv->var_name == var_name) {
    80029e24:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:30660
                    JSClosureVar *cv = &fd->closure_var[idx];
    80029e26:	969a                	add	a3,a3,t1
quickjs-nuttx/quickjs.c:30661
                    if (cv->var_name == var_name) {
    80029e28:	0046a303          	lw	t1,4(a3)
    80029e2c:	fd0318e3          	bne	t1,a6,80029dfc <resolve_scope_private_field1+0x80>
quickjs-nuttx/quickjs.c:30662
                        var_kind = cv->var_kind;
    80029e30:	4298                	lw	a4,0(a3)
    80029e32:	0047541b          	srliw	s0,a4,0x4
    80029e36:	883d                	andi	s0,s0,15
quickjs-nuttx/quickjs.c:30664
                        if (fd != s) {
    80029e38:	02b60563          	beq	a2,a1,80029e62 <resolve_scope_private_field1+0xe6>
quickjs-nuttx/quickjs.c:30665
                            idx = get_closure_var2(ctx, s, fd,
    80029e3c:	e422                	sd	s0,8(sp)
quickjs-nuttx/quickjs.c:30669
                                                   cv->is_lexical,
    80029e3e:	4294                	lw	a3,0(a3)
quickjs-nuttx/quickjs.c:30668
                                                   cv->var_name, cv->is_const,
    80029e40:	0027589b          	srliw	a7,a4,0x2
quickjs-nuttx/quickjs.c:30667
                                                   cv->is_arg, idx,
    80029e44:	0017571b          	srliw	a4,a4,0x1
quickjs-nuttx/quickjs.c:30669
                                                   cv->is_lexical,
    80029e48:	0036d69b          	srliw	a3,a3,0x3
quickjs-nuttx/quickjs.c:30665
                            idx = get_closure_var2(ctx, s, fd,
    80029e4c:	8a85                	andi	a3,a3,1
    80029e4e:	e036                	sd	a3,0(sp)
    80029e50:	0018f893          	andi	a7,a7,1
    80029e54:	8b05                	andi	a4,a4,1
    80029e56:	4681                	li	a3,0
    80029e58:	e77ff0ef          	jal	ra,80029cce <get_closure_var2>
    80029e5c:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:30671
                            if (idx < 0)
    80029e5e:	f6054fe3          	bltz	a0,80029ddc <resolve_scope_private_field1+0x60>
quickjs-nuttx/quickjs.c:30663
                        is_ref = TRUE;
    80029e62:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:30688
    *pis_ref = is_ref;
    80029e64:	0134a023          	sw	s3,0(s1)
quickjs-nuttx/quickjs.c:30689
    *pvar_kind = var_kind;
    80029e68:	00892023          	sw	s0,0(s2)
quickjs-nuttx/quickjs.c:30690
    return idx;
    80029e6c:	bf8d                	j	80029dde <resolve_scope_private_field1+0x62>

0000000080029e6e <resolve_scope_var>:
resolve_scope_var():
quickjs-nuttx/quickjs.c:30172
{
    80029e6e:	7135                	addi	sp,sp,-160
    80029e70:	e922                	sd	s0,144(sp)
    80029e72:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:30179
    label_done = -1;
    80029e74:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:30172
{
    80029e76:	e526                	sd	s1,136(sp)
    80029e78:	e14a                	sd	s2,128(sp)
    80029e7a:	fcce                	sd	s3,120(sp)
    80029e7c:	f4d6                	sd	s5,104(sp)
    80029e7e:	f0da                	sd	s6,96(sp)
    80029e80:	ecde                	sd	s7,88(sp)
    80029e82:	e8e2                	sd	s8,80(sp)
    80029e84:	e4e6                	sd	s9,72(sp)
    80029e86:	8aba                	mv	s5,a4
quickjs-nuttx/quickjs.c:30179
    label_done = -1;
    80029e88:	d63e                	sw	a5,44(sp)
quickjs-nuttx/quickjs.c:30172
{
    80029e8a:	ed06                	sd	ra,152(sp)
    80029e8c:	f8d2                	sd	s4,112(sp)
    80029e8e:	e0ea                	sd	s10,64(sp)
    80029e90:	fc6e                	sd	s11,56(sp)
quickjs-nuttx/quickjs.c:30185
                     var_name == JS_ATOM_new_target ||
    80029e92:	f8e6071b          	addiw	a4,a2,-114
    80029e96:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:30172
{
    80029e98:	5b8a                	lw	s7,160(sp)
    80029e9a:	892a                	mv	s2,a0
    80029e9c:	89ae                	mv	s3,a1
    80029e9e:	84b2                	mv	s1,a2
    80029ea0:	8b42                	mv	s6,a6
    80029ea2:	8cc6                	mv	s9,a7
    80029ea4:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:30185
                     var_name == JS_ATOM_new_target ||
    80029ea6:	00e7f663          	bgeu	a5,a4,80029eb2 <resolve_scope_var+0x44>
quickjs-nuttx/quickjs.c:30185 (discriminator 2)
    80029eaa:	ff860c13          	addi	s8,a2,-8
    80029eae:	001c3c13          	seqz	s8,s8
quickjs-nuttx/quickjs.c:30190
    for (idx = s->scopes[scope_level].first; idx >= 0;) {
    80029eb2:	0f09b783          	ld	a5,240(s3)
    80029eb6:	068e                	slli	a3,a3,0x3
quickjs-nuttx/quickjs.c:30204
        if (vd->var_name == JS_ATOM__with_ && !is_pseudo_var) {
    80029eb8:	05500a13          	li	s4,85
quickjs-nuttx/quickjs.c:30190
    for (idx = s->scopes[scope_level].first; idx >= 0;) {
    80029ebc:	96be                	add	a3,a3,a5
    80029ebe:	0046ad03          	lw	s10,4(a3)
quickjs-nuttx/quickjs.c:30190 (discriminator 1)
    80029ec2:	100d5a63          	bgez	s10,80029fd6 <resolve_scope_var+0x168>
quickjs-nuttx/quickjs.c:30215
        if (!is_arg_scope) {
    80029ec6:	57f9                	li	a5,-2
    80029ec8:	00fd0a63          	beq	s10,a5,80029edc <resolve_scope_var+0x6e>
quickjs-nuttx/quickjs.c:30216
            var_idx = find_var(ctx, s, var_name);
    80029ecc:	8626                	mv	a2,s1
    80029ece:	85ce                	mv	a1,s3
    80029ed0:	854a                	mv	a0,s2
    80029ed2:	ffce00ef          	jal	ra,8000a6ce <find_var>
    80029ed6:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:30219
        if (var_idx < 0 && is_pseudo_var)
    80029ed8:	18055663          	bgez	a0,8002a064 <resolve_scope_var+0x1f6>
quickjs-nuttx/quickjs.c:30219 (discriminator 1)
    80029edc:	160c1c63          	bnez	s8,8002a054 <resolve_scope_var+0x1e6>
quickjs-nuttx/quickjs.c:30222
        if (var_idx < 0 && var_name == JS_ATOM_arguments &&
    80029ee0:	04e00793          	li	a5,78
    80029ee4:	00f49c63          	bne	s1,a5,80029efc <resolve_scope_var+0x8e>
quickjs-nuttx/quickjs.c:30222 (discriminator 2)
    80029ee8:	0609a783          	lw	a5,96(s3)
    80029eec:	cb81                	beqz	a5,80029efc <resolve_scope_var+0x8e>
quickjs-nuttx/quickjs.c:30225
            var_idx = add_arguments_var(ctx, s);
    80029eee:	85ce                	mv	a1,s3
    80029ef0:	854a                	mv	a0,s2
    80029ef2:	b77ff0ef          	jal	ra,80029a68 <add_arguments_var>
    80029ef6:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:30227
        if (var_idx < 0 && s->is_func_expr && var_name == s->func_name) {
    80029ef8:	16055663          	bgez	a0,8002a064 <resolve_scope_var+0x1f6>
    80029efc:	0449a783          	lw	a5,68(s3)
    80029f00:	1a079763          	bnez	a5,8002a0ae <resolve_scope_var+0x240>
quickjs-nuttx/quickjs.c:30335
    if (!is_arg_scope && s->var_object_idx >= 0 && !is_pseudo_var) {
    80029f04:	57f9                	li	a5,-2
    80029f06:	02fd0b63          	beq	s10,a5,80029f3c <resolve_scope_var+0xce>
quickjs-nuttx/quickjs.c:30335 (discriminator 1)
    80029f0a:	0b49a783          	lw	a5,180(s3)
    80029f0e:	0207c763          	bltz	a5,80029f3c <resolve_scope_var+0xce>
quickjs-nuttx/quickjs.c:30335 (discriminator 2)
    80029f12:	020c1563          	bnez	s8,80029f3c <resolve_scope_var+0xce>
quickjs-nuttx/quickjs.c:30336
        dbuf_putc(bc, OP_get_loc);
    80029f16:	05800593          	li	a1,88
    80029f1a:	8522                	mv	a0,s0
    80029f1c:	3c7270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30337
        dbuf_put_u16(bc, s->var_object_idx);
    80029f20:	0b49d583          	lhu	a1,180(s3)
    80029f24:	8522                	mv	a0,s0
    80029f26:	886df0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30338
        var_object_test(ctx, s, var_name, op, bc, &label_done, 0);
    80029f2a:	4801                	li	a6,0
    80029f2c:	107c                	addi	a5,sp,44
    80029f2e:	8722                	mv	a4,s0
    80029f30:	86d6                	mv	a3,s5
    80029f32:	8626                	mv	a2,s1
    80029f34:	85ce                	mv	a1,s3
    80029f36:	854a                	mv	a0,s2
    80029f38:	bfcf30ef          	jal	ra,8001d334 <var_object_test>
quickjs-nuttx/quickjs.c:30341
    if (s->arg_var_object_idx >= 0 && !is_pseudo_var) {
    80029f3c:	0b89a783          	lw	a5,184(s3)
    80029f40:	0207c763          	bltz	a5,80029f6e <resolve_scope_var+0x100>
quickjs-nuttx/quickjs.c:30341 (discriminator 1)
    80029f44:	020c1563          	bnez	s8,80029f6e <resolve_scope_var+0x100>
quickjs-nuttx/quickjs.c:30342
        dbuf_putc(bc, OP_get_loc);
    80029f48:	05800593          	li	a1,88
    80029f4c:	8522                	mv	a0,s0
    80029f4e:	395270ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30343
        dbuf_put_u16(bc, s->arg_var_object_idx);
    80029f52:	0b89d583          	lhu	a1,184(s3)
    80029f56:	8522                	mv	a0,s0
    80029f58:	854df0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30344
        var_object_test(ctx, s, var_name, op, bc, &label_done, 0);
    80029f5c:	4801                	li	a6,0
    80029f5e:	107c                	addi	a5,sp,44
    80029f60:	8722                	mv	a4,s0
    80029f62:	86d6                	mv	a3,s5
    80029f64:	8626                	mv	a2,s1
    80029f66:	85ce                	mv	a1,s3
    80029f68:	854a                	mv	a0,s2
    80029f6a:	bcaf30ef          	jal	ra,8001d334 <var_object_test>
quickjs-nuttx/quickjs.c:30294 (discriminator 1)
            is_put = (op == OP_scope_put_var || op == OP_scope_put_var_init);
    80029f6e:	8d4e                	mv	s10,s3
quickjs-nuttx/quickjs.c:30379 (discriminator 1)
        if (!is_arg_scope) {
    80029f70:	5a79                	li	s4,-2
quickjs-nuttx/quickjs.c:30348 (discriminator 1)
    for (fd = s; fd->parent;) {
    80029f72:	8e6a                	mv	t3,s10
    80029f74:	008d3d03          	ld	s10,8(s10)
    80029f78:	040d0863          	beqz	s10,80029fc8 <resolve_scope_var+0x15a>
quickjs-nuttx/quickjs.c:30351
        for (idx = fd->scopes[scope_level].first; idx >= 0;) {
    80029f7c:	014e2703          	lw	a4,20(t3) # fffffffffc000014 <_ebss+0xffffffff7befeeae>
    80029f80:	0f0d3783          	ld	a5,240(s10)
    80029f84:	070e                	slli	a4,a4,0x3
    80029f86:	97ba                	add	a5,a5,a4
    80029f88:	43dc                	lw	a5,4(a5)
quickjs-nuttx/quickjs.c:30351 (discriminator 1)
    80029f8a:	3007d763          	bgez	a5,8002a298 <resolve_scope_var+0x42a>
quickjs-nuttx/quickjs.c:30379
        if (!is_arg_scope) {
    80029f8e:	01478b63          	beq	a5,s4,80029fa4 <resolve_scope_var+0x136>
quickjs-nuttx/quickjs.c:30380
            var_idx = find_var(ctx, fd, var_name);
    80029f92:	8626                	mv	a2,s1
    80029f94:	85ea                	mv	a1,s10
    80029f96:	854a                	mv	a0,s2
    80029f98:	e83e                	sd	a5,16(sp)
    80029f9a:	f34e00ef          	jal	ra,8000a6ce <find_var>
quickjs-nuttx/quickjs.c:30381
            if (var_idx >= 0)
    80029f9e:	67c2                	ld	a5,16(sp)
    80029fa0:	3c055d63          	bgez	a0,8002a37a <resolve_scope_var+0x50c>
quickjs-nuttx/quickjs.c:30384
        if (is_pseudo_var) {
    80029fa4:	3c0c1263          	bnez	s8,8002a368 <resolve_scope_var+0x4fa>
quickjs-nuttx/quickjs.c:30389
        if (var_name == JS_ATOM_arguments && fd->has_arguments_binding) {
    80029fa8:	04e00713          	li	a4,78
    80029fac:	3ce49963          	bne	s1,a4,8002a37e <resolve_scope_var+0x510>
quickjs-nuttx/quickjs.c:30389 (discriminator 1)
    80029fb0:	060d2703          	lw	a4,96(s10)
    80029fb4:	3c070563          	beqz	a4,8002a37e <resolve_scope_var+0x510>
quickjs-nuttx/quickjs.c:30390
            var_idx = add_arguments_var(ctx, fd);
    80029fb8:	85ea                	mv	a1,s10
    80029fba:	854a                	mv	a0,s2
    80029fbc:	aadff0ef          	jal	ra,80029a68 <add_arguments_var>
quickjs-nuttx/quickjs.c:30395
            var_idx = add_func_var(ctx, fd, var_name);
    80029fc0:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:30431
    if (var_idx < 0 && fd->is_eval) {
    80029fc2:	8e6a                	mv	t3,s10
    80029fc4:	2e055e63          	bgez	a0,8002a2c0 <resolve_scope_var+0x452>
quickjs-nuttx/quickjs.c:30431 (discriminator 1)
    80029fc8:	038e2783          	lw	a5,56(t3)
    80029fcc:	5a078663          	beqz	a5,8002a578 <resolve_scope_var+0x70a>
    80029fd0:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:30446 (discriminator 1)
            } else if ((cv->var_name == JS_ATOM__var_ ||
    80029fd2:	4d89                	li	s11,2
    80029fd4:	ab71                	j	8002a570 <resolve_scope_var+0x702>
quickjs-nuttx/quickjs.c:30191
        vd = &s->vars[idx];
    80029fd6:	0909b783          	ld	a5,144(s3)
    80029fda:	004d1d93          	slli	s11,s10,0x4
    80029fde:	9dbe                	add	s11,s11,a5
quickjs-nuttx/quickjs.c:30192
        if (vd->var_name == var_name) {
    80029fe0:	000da783          	lw	a5,0(s11)
    80029fe4:	02979d63          	bne	a5,s1,8002a01e <resolve_scope_var+0x1b0>
quickjs-nuttx/quickjs.c:30193
            if (op == OP_scope_put_var || op == OP_scope_make_ref) {
    80029fe8:	f45a879b          	addiw	a5,s5,-187
    80029fec:	9bf5                	andi	a5,a5,-3
    80029fee:	2781                	sext.w	a5,a5
    80029ff0:	8a6a                	mv	s4,s10
    80029ff2:	020798e3          	bnez	a5,8002a822 <resolve_scope_var+0x9b4>
quickjs-nuttx/quickjs.c:30194
                if (vd->is_const) {
    80029ff6:	00cda783          	lw	a5,12(s11)
    80029ffa:	8b85                	andi	a5,a5,1
    80029ffc:	c7a5                	beqz	a5,8002a064 <resolve_scope_var+0x1f6>
quickjs-nuttx/quickjs.c:30486
                dbuf_putc(bc, OP_throw_error);
    80029ffe:	03000593          	li	a1,48
