    80023000:	6090                	ld	a2,0(s1)
    80023002:	6494                	ld	a3,8(s1)
    80023004:	082c                	addi	a1,sp,24
    80023006:	8552                	mv	a0,s4
    80023008:	f34ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    8002300c:	f57d                	bnez	a0,80022ffa <js_math_min_max+0xde>
quickjs-nuttx/quickjs.c:42990
            if (!isnan(r)) {
    8002300e:	6742                	ld	a4,16(sp)
    80023010:	f20707d3          	fmv.d.x	fa5,a4
    80023014:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80023018:	cb81                	beqz	a5,80023028 <js_math_min_max+0x10c>
quickjs-nuttx/quickjs.c:42991
                if (isnan(a)) {
    8002301a:	6662                	ld	a2,24(sp)
    8002301c:	f20607d3          	fmv.d.x	fa5,a2
    80023020:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80023024:	e789                	bnez	a5,8002302e <js_math_min_max+0x112>
quickjs-nuttx/quickjs.c:42992
                    r = a;
    80023026:	e832                	sd	a2,16(sp)
quickjs-nuttx/quickjs.c:43000
            i++;
    80023028:	2405                	addiw	s0,s0,1
    8002302a:	04c1                	addi	s1,s1,16
    8002302c:	bfad                	j	80022fa6 <js_math_min_max+0x8a>
js_fmax():
quickjs-nuttx/quickjs.c:42942
    if (a == 0 && b == 0) {
    8002302e:	f20707d3          	fmv.d.x	fa5,a4
    80023032:	a287a7d3          	feq.d	a5,fa5,fs0
js_math_min_max():
quickjs-nuttx/quickjs.c:42994
                    if (is_max)
    80023036:	02098463          	beqz	s3,8002305e <js_math_min_max+0x142>
js_fmax():
quickjs-nuttx/quickjs.c:42942
    if (a == 0 && b == 0) {
    8002303a:	cb89                	beqz	a5,8002304c <js_math_min_max+0x130>
    8002303c:	f20607d3          	fmv.d.x	fa5,a2
    80023040:	a287a7d3          	feq.d	a5,fa5,fs0
    80023044:	c781                	beqz	a5,8002304c <js_math_min_max+0x130>
quickjs-nuttx/quickjs.c:42947
        return a1.d;
    80023046:	8f71                	and	a4,a4,a2
js_math_min_max():
quickjs-nuttx/quickjs.c:42997
                        r = js_fmin(r, a);
    80023048:	e83a                	sd	a4,16(sp)
    8002304a:	bff9                	j	80023028 <js_math_min_max+0x10c>
js_fmax():
quickjs-nuttx/quickjs.c:42949
        return fmax(a, b);
    8002304c:	f20605d3          	fmv.d.x	fa1,a2
    80023050:	f2070553          	fmv.d.x	fa0,a4
    80023054:	a23dd0ef          	jal	ra,80000a76 <fmax>
js_fmin():
quickjs-nuttx/quickjs.c:42935
        return fmin(a, b);
    80023058:	e2050753          	fmv.x.d	a4,fa0
    8002305c:	b7f5                	j	80023048 <js_math_min_max+0x12c>
quickjs-nuttx/quickjs.c:42928
    if (a == 0 && b == 0) {
    8002305e:	cb81                	beqz	a5,8002306e <js_math_min_max+0x152>
    80023060:	f20607d3          	fmv.d.x	fa5,a2
    80023064:	a287a7d3          	feq.d	a5,fa5,fs0
    80023068:	c399                	beqz	a5,8002306e <js_math_min_max+0x152>
quickjs-nuttx/quickjs.c:42933
        return a1.d;
    8002306a:	8f51                	or	a4,a4,a2
    8002306c:	bff1                	j	80023048 <js_math_min_max+0x12c>
quickjs-nuttx/quickjs.c:42935
        return fmin(a, b);
    8002306e:	f20605d3          	fmv.d.x	fa1,a2
    80023072:	f2070553          	fmv.d.x	fa0,a4
    80023076:	a07dd0ef          	jal	ra,80000a7c <fmin>
    8002307a:	bff9                	j	80023058 <js_math_min_max+0x13c>
js_math_min_max():
quickjs-nuttx/quickjs.h:230
    return v;
    8002307c:	f83e                	sd	a5,48(sp)
    8002307e:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80023082:	479d                	li	a5,7
    80023084:	b791                	j	80022fc8 <js_math_min_max+0xac>

0000000080023086 <js_string_fromCodePoint>:
js_string_fromCodePoint():
quickjs-nuttx/quickjs.c:41285
{
    80023086:	7175                	addi	sp,sp,-144
    80023088:	e02e                	sd	a1,0(sp)
    8002308a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:41292
    if (string_buffer_init(ctx, b, argc))
    8002308c:	180c                	addi	a1,sp,48
    8002308e:	8636                	mv	a2,a3
quickjs-nuttx/quickjs.c:41285
{
    80023090:	e122                	sd	s0,128(sp)
    80023092:	f8ca                	sd	s2,112(sp)
    80023094:	f4ce                	sd	s3,104(sp)
    80023096:	e506                	sd	ra,136(sp)
    80023098:	fca6                	sd	s1,120(sp)
    8002309a:	f0d2                	sd	s4,96(sp)
    8002309c:	aca2                	fsd	fs0,88(sp)
    8002309e:	a8a6                	fsd	fs1,80(sp)
    800230a0:	892a                	mv	s2,a0
    800230a2:	89b6                	mv	s3,a3
    800230a4:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:41292
    if (string_buffer_init(ctx, b, argc))
    800230a6:	ed7fa0ef          	jal	ra,8001df7c <string_buffer_init>
    800230aa:	e939                	bnez	a0,80023100 <js_string_fromCodePoint+0x7a>
quickjs-nuttx/quickjs.c:41302
            if (d < 0 || d > 0x10ffff || (c = (int)d) != d)
    800230ac:	f2000453          	fmv.d.x	fs0,zero
    800230b0:	84aa                	mv	s1,a0
    800230b2:	00071797          	auipc	a5,0x71
    800230b6:	b667b487          	fld	fs1,-1178(a5) # 80093c18 <_erodata+0xa6>
quickjs-nuttx/quickjs.c:41297
            if (c < 0 || c > 0x10ffff)
    800230ba:	00110a37          	lui	s4,0x110
quickjs-nuttx/quickjs.c:41294 (discriminator 1)
    for(i = 0; i < argc; i++) {
    800230be:	0334c363          	blt	s1,s3,800230e4 <js_string_fromCodePoint+0x5e>
quickjs-nuttx/quickjs.c:41308
    return string_buffer_end(b);
    800230c2:	1808                	addi	a0,sp,48
    800230c4:	bddfc0ef          	jal	ra,8001fca0 <string_buffer_end>
    800230c8:	f02a                	sd	a0,32(sp)
    800230ca:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41315
}
    800230cc:	60aa                	ld	ra,136(sp)
    800230ce:	640a                	ld	s0,128(sp)
    800230d0:	7502                	ld	a0,32(sp)
    800230d2:	75a2                	ld	a1,40(sp)
    800230d4:	74e6                	ld	s1,120(sp)
    800230d6:	7946                	ld	s2,112(sp)
    800230d8:	79a6                	ld	s3,104(sp)
    800230da:	7a06                	ld	s4,96(sp)
    800230dc:	2466                	fld	fs0,88(sp)
    800230de:	24c6                	fld	fs1,80(sp)
    800230e0:	6149                	addi	sp,sp,144
    800230e2:	8082                	ret
quickjs-nuttx/quickjs.c:41295
        if (JS_VALUE_GET_TAG(argv[i]) == JS_TAG_INT) {
    800230e4:	6414                	ld	a3,8(s0)
    800230e6:	0006879b          	sext.w	a5,a3
    800230ea:	e395                	bnez	a5,8002310e <js_string_fromCodePoint+0x88>
quickjs-nuttx/quickjs.c:41296
            c = JS_VALUE_GET_INT(argv[i]);
    800230ec:	400c                	lw	a1,0(s0)
quickjs-nuttx/quickjs.c:41297
            if (c < 0 || c > 0x10ffff)
    800230ee:	0545e663          	bltu	a1,s4,8002313a <js_string_fromCodePoint+0xb4>
quickjs-nuttx/quickjs.c:41311
    JS_ThrowRangeError(ctx, "invalid code point");
    800230f2:	00048597          	auipc	a1,0x48
    800230f6:	a7658593          	addi	a1,a1,-1418 # 8006ab68 <qjsc_repl+0x55b8>
    800230fa:	854a                	mv	a0,s2
    800230fc:	fd2f60ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:41313
    string_buffer_free(b);
    80023100:	1808                	addi	a0,sp,48
    80023102:	f21e70ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:41314
    return JS_EXCEPTION;
    80023106:	4799                	li	a5,6
    80023108:	f002                	sd	zero,32(sp)
    8002310a:	f43e                	sd	a5,40(sp)
    8002310c:	b7c1                	j	800230cc <js_string_fromCodePoint+0x46>
quickjs-nuttx/quickjs.c:41300
            if (JS_ToFloat64(ctx, &d, argv[i]))
    8002310e:	6010                	ld	a2,0(s0)
    80023110:	082c                	addi	a1,sp,24
    80023112:	854a                	mv	a0,s2
    80023114:	e28ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80023118:	f565                	bnez	a0,80023100 <js_string_fromCodePoint+0x7a>
quickjs-nuttx/quickjs.c:41302
            if (d < 0 || d > 0x10ffff || (c = (int)d) != d)
    8002311a:	27e2                	fld	fa5,24(sp)
    8002311c:	a28797d3          	flt.d	a5,fa5,fs0
    80023120:	fbe9                	bnez	a5,800230f2 <js_string_fromCodePoint+0x6c>
quickjs-nuttx/quickjs.c:41302 (discriminator 1)
    80023122:	a2f497d3          	flt.d	a5,fs1,fa5
    80023126:	f7f1                	bnez	a5,800230f2 <js_string_fromCodePoint+0x6c>
quickjs-nuttx/quickjs.c:41302 (discriminator 2)
    80023128:	c20797d3          	fcvt.w.d	a5,fa5,rtz
    8002312c:	d2078753          	fcvt.d.w	fa4,a5
    80023130:	0007859b          	sext.w	a1,a5
    80023134:	a2e7a7d3          	feq.d	a5,fa5,fa4
    80023138:	dfcd                	beqz	a5,800230f2 <js_string_fromCodePoint+0x6c>
quickjs-nuttx/quickjs.c:41305
        if (string_buffer_putc(b, c))
    8002313a:	1808                	addi	a0,sp,48
    8002313c:	c35fb0ef          	jal	ra,8001ed70 <string_buffer_putc>
    80023140:	0441                	addi	s0,s0,16
    80023142:	fd5d                	bnez	a0,80023100 <js_string_fromCodePoint+0x7a>
quickjs-nuttx/quickjs.c:41294 (discriminator 2)
    for(i = 0; i < argc; i++) {
    80023144:	2485                	addiw	s1,s1,1
    80023146:	bfa5                	j	800230be <js_string_fromCodePoint+0x38>

0000000080023148 <js_number_isSafeInteger>:
js_number_isSafeInteger():
quickjs-nuttx/quickjs.c:40859
{
    80023148:	715d                	addi	sp,sp,-80
    8002314a:	e486                	sd	ra,72(sp)
JS_IsNumber():
quickjs-nuttx/quickjs.h:571
    int tag = JS_VALUE_GET_TAG(v);
    8002314c:	471c                	lw	a5,8(a4)
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    8002314e:	cf81                	beqz	a5,80023166 <js_number_isSafeInteger+0x1e>
    80023150:	469d                	li	a3,7
    80023152:	00d78a63          	beq	a5,a3,80023166 <js_number_isSafeInteger+0x1e>
js_number_isSafeInteger():
quickjs-nuttx/quickjs.c:40862
        return JS_FALSE;
    80023156:	e802                	sd	zero,16(sp)
    80023158:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:40866
}
    8002315a:	60a6                	ld	ra,72(sp)
    8002315c:	ec3e                	sd	a5,24(sp)
    8002315e:	6542                	ld	a0,16(sp)
    80023160:	65e2                	ld	a1,24(sp)
    80023162:	6161                	addi	sp,sp,80
    80023164:	8082                	ret
quickjs-nuttx/quickjs.c:40863
    if (unlikely(JS_ToFloat64(ctx, &d, argv[0])))
    80023166:	6310                	ld	a2,0(a4)
    80023168:	6714                	ld	a3,8(a4)
    8002316a:	080c                	addi	a1,sp,16
    8002316c:	dd0ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80023170:	c511                	beqz	a0,8002317c <js_number_isSafeInteger+0x34>
quickjs-nuttx/quickjs.c:40864
        return JS_EXCEPTION;
    80023172:	f002                	sd	zero,32(sp)
    80023174:	4799                	li	a5,6
    80023176:	7702                	ld	a4,32(sp)
    80023178:	e83a                	sd	a4,16(sp)
    8002317a:	b7c5                	j	8002315a <js_number_isSafeInteger+0x12>
quickjs-nuttx/quickjs.c:40865
    return JS_NewBool(ctx, is_safe_integer(d));
    8002317c:	2542                	fld	fa0,16(sp)
    8002317e:	afde50ef          	jal	ra,80008c7a <is_safe_integer>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80023182:	00a03533          	snez	a0,a0
    80023186:	da02                	sw	zero,52(sp)
    80023188:	d82a                	sw	a0,48(sp)
    8002318a:	77c2                	ld	a5,48(sp)
    8002318c:	f03e                	sd	a5,32(sp)
    8002318e:	4785                	li	a5,1
    80023190:	b7dd                	j	80023176 <js_number_isSafeInteger+0x2e>

0000000080023192 <js_global_isFinite>:
js_global_isFinite():
quickjs-nuttx/quickjs.c:36941
    if (unlikely(JS_ToFloat64(ctx, &d, argv[0])))
    80023192:	6310                	ld	a2,0(a4)
    80023194:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs.c:36938
{
    80023196:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs.c:36941
    if (unlikely(JS_ToFloat64(ctx, &d, argv[0])))
    80023198:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:36938
{
    8002319a:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs.c:36941
    if (unlikely(JS_ToFloat64(ctx, &d, argv[0])))
    8002319c:	da0ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    800231a0:	c909                	beqz	a0,800231b2 <js_global_isFinite+0x20>
quickjs-nuttx/quickjs.c:36942
        return JS_EXCEPTION;
    800231a2:	f002                	sd	zero,32(sp)
    800231a4:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:36945 (discriminator 8)
}
    800231a6:	60a6                	ld	ra,72(sp)
    800231a8:	f43e                	sd	a5,40(sp)
    800231aa:	7502                	ld	a0,32(sp)
    800231ac:	75a2                	ld	a1,40(sp)
    800231ae:	6161                	addi	sp,sp,80
    800231b0:	8082                	ret
quickjs-nuttx/quickjs.c:36943
    res = isfinite(d);
    800231b2:	00071797          	auipc	a5,0x71
    800231b6:	9ce7b787          	fld	fa5,-1586(a5) # 80093b80 <_erodata+0xe>
    800231ba:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    800231be:	2762                	fld	fa4,24(sp)
    800231c0:	a2f727d3          	feq.d	a5,fa4,fa5
    800231c4:	eb81                	bnez	a5,800231d4 <js_global_isFinite+0x42>
quickjs-nuttx/quickjs.c:36943 (discriminator 1)
    800231c6:	22f797d3          	fneg.d	fa5,fa5
    800231ca:	a2f727d3          	feq.d	a5,fa4,fa5
    800231ce:	e399                	bnez	a5,800231d4 <js_global_isFinite+0x42>
quickjs-nuttx/quickjs.c:36943 (discriminator 3)
    800231d0:	a2e72553          	feq.d	a0,fa4,fa4
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 8)
    800231d4:	da02                	sw	zero,52(sp)
    800231d6:	d82a                	sw	a0,48(sp)
    800231d8:	77c2                	ld	a5,48(sp)
    800231da:	f03e                	sd	a5,32(sp)
    800231dc:	4785                	li	a5,1
    800231de:	b7e1                	j	800231a6 <js_global_isFinite+0x14>

00000000800231e0 <js_number_isFinite>:
JS_IsNumber():
quickjs-nuttx/quickjs.h:571
    int tag = JS_VALUE_GET_TAG(v);
    800231e0:	471c                	lw	a5,8(a4)
js_number_isFinite():
quickjs-nuttx/quickjs.c:40840
{
    800231e2:	1101                	addi	sp,sp,-32
    800231e4:	e02e                	sd	a1,0(sp)
    800231e6:	e432                	sd	a2,8(sp)
JS_IsNumber():
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    800231e8:	c781                	beqz	a5,800231f0 <js_number_isFinite+0x10>
    800231ea:	461d                	li	a2,7
    800231ec:	00c79763          	bne	a5,a2,800231fa <js_number_isFinite+0x1a>
js_number_isFinite():
quickjs-nuttx/quickjs.c:40843
    return js_global_isFinite(ctx, this_val, argc, argv);
    800231f0:	6582                	ld	a1,0(sp)
    800231f2:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:40844
}
    800231f4:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:40843
    return js_global_isFinite(ctx, this_val, argc, argv);
    800231f6:	f9dff06f          	j	80023192 <js_global_isFinite>
quickjs-nuttx/quickjs.c:40844 (discriminator 1)
}
    800231fa:	4501                	li	a0,0
    800231fc:	4585                	li	a1,1
    800231fe:	6105                	addi	sp,sp,32
    80023200:	8082                	ret

0000000080023202 <js_global_isNaN>:
js_global_isNaN():
quickjs-nuttx/quickjs.c:36931
    if (unlikely(JS_ToFloat64(ctx, &d, argv[0])))
    80023202:	6310                	ld	a2,0(a4)
    80023204:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs.c:36927
{
    80023206:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs.c:36931
    if (unlikely(JS_ToFloat64(ctx, &d, argv[0])))
    80023208:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:36927
{
    8002320a:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs.c:36931
    if (unlikely(JS_ToFloat64(ctx, &d, argv[0])))
    8002320c:	d30ff0ef          	jal	ra,8002273c <JS_ToFloat64>
    80023210:	c909                	beqz	a0,80023222 <js_global_isNaN+0x20>
quickjs-nuttx/quickjs.c:36932
        return JS_EXCEPTION;
    80023212:	f002                	sd	zero,32(sp)
    80023214:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:36934
}
    80023216:	60a6                	ld	ra,72(sp)
    80023218:	f43e                	sd	a5,40(sp)
    8002321a:	7502                	ld	a0,32(sp)
    8002321c:	75a2                	ld	a1,40(sp)
    8002321e:	6161                	addi	sp,sp,80
    80023220:	8082                	ret
quickjs-nuttx/quickjs.c:36933
    return JS_NewBool(ctx, isnan(d));
    80023222:	27e2                	fld	fa5,24(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80023224:	da02                	sw	zero,52(sp)
js_global_isNaN():
quickjs-nuttx/quickjs.c:36933
    80023226:	a2f7a7d3          	feq.d	a5,fa5,fa5
    8002322a:	0017b793          	seqz	a5,a5
    8002322e:	d83e                	sw	a5,48(sp)
    80023230:	77c2                	ld	a5,48(sp)
    80023232:	f03e                	sd	a5,32(sp)
    80023234:	4785                	li	a5,1
    80023236:	b7c5                	j	80023216 <js_global_isNaN+0x14>

0000000080023238 <js_number_isNaN>:
JS_IsNumber():
quickjs-nuttx/quickjs.h:571
    int tag = JS_VALUE_GET_TAG(v);
    80023238:	471c                	lw	a5,8(a4)
js_number_isNaN():
quickjs-nuttx/quickjs.c:40832
{
    8002323a:	1101                	addi	sp,sp,-32
    8002323c:	e02e                	sd	a1,0(sp)
    8002323e:	e432                	sd	a2,8(sp)
JS_IsNumber():
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    80023240:	c781                	beqz	a5,80023248 <js_number_isNaN+0x10>
    80023242:	461d                	li	a2,7
    80023244:	00c79763          	bne	a5,a2,80023252 <js_number_isNaN+0x1a>
js_number_isNaN():
quickjs-nuttx/quickjs.c:40835
    return js_global_isNaN(ctx, this_val, argc, argv);
    80023248:	6582                	ld	a1,0(sp)
    8002324a:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:40836
}
    8002324c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:40835
    return js_global_isNaN(ctx, this_val, argc, argv);
    8002324e:	fb5ff06f          	j	80023202 <js_global_isNaN>
quickjs-nuttx/quickjs.c:40836 (discriminator 1)
}
    80023252:	4501                	li	a0,0
    80023254:	4585                	li	a1,1
    80023256:	6105                	addi	sp,sp,32
    80023258:	8082                	ret

000000008002325a <JS_ToArrayLengthFree>:
JS_ToArrayLengthFree():
quickjs-nuttx/quickjs.c:11028
{
    8002325a:	711d                	addi	sp,sp,-96
    8002325c:	e8a2                	sd	s0,80(sp)
    8002325e:	e0ca                	sd	s2,64(sp)
    80023260:	ec86                	sd	ra,88(sp)
    80023262:	892e                	mv	s2,a1
    80023264:	e4a6                	sd	s1,72(sp)
    80023266:	e032                	sd	a2,0(sp)
    80023268:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:11031
    tag = JS_VALUE_GET_TAG(val);
    8002326a:	0006859b          	sext.w	a1,a3
quickjs-nuttx/quickjs.c:11032
    switch(tag) {
    8002326e:	4809                	li	a6,2
quickjs-nuttx/quickjs.c:11028
{
    80023270:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:11032
    switch(tag) {
    80023272:	02b87463          	bgeu	a6,a1,8002329a <JS_ToArrayLengthFree+0x40>
    80023276:	00a5881b          	addiw	a6,a1,10
    8002327a:	4885                	li	a7,1
    8002327c:	0308f863          	bgeu	a7,a6,800232ac <JS_ToArrayLengthFree+0x52>
quickjs-nuttx/quickjs.c:11063
        if (JS_TAG_IS_FLOAT64(tag)) {
    80023280:	481d                	li	a6,7
    80023282:	07059c63          	bne	a1,a6,800232fa <JS_ToArrayLengthFree+0xa0>
quickjs-nuttx/quickjs.c:11065
            d = JS_VALUE_GET_FLOAT64(val);
    80023286:	2782                	fld	fa5,0(sp)
quickjs-nuttx/quickjs.c:11066
            len = (uint32_t)d;
    80023288:	c21797d3          	fcvt.wu.d	a5,fa5,rtz
quickjs-nuttx/quickjs.c:11067
            if (len != d)
    8002328c:	d2178753          	fcvt.d.wu	fa4,a5
quickjs-nuttx/quickjs.c:11066
            len = (uint32_t)d;
    80023290:	ca3e                	sw	a5,20(sp)
quickjs-nuttx/quickjs.c:11067
            if (len != d)
    80023292:	a2f727d3          	feq.d	a5,fa4,fa5
    80023296:	e791                	bnez	a5,800232a2 <JS_ToArrayLengthFree+0x48>
    80023298:	a889                	j	800232ea <JS_ToArrayLengthFree+0x90>
quickjs-nuttx/quickjs.c:11038
            v = JS_VALUE_GET_INT(val);
    8002329a:	4782                	lw	a5,0(sp)
quickjs-nuttx/quickjs.c:11039
            if (v < 0)
    8002329c:	0407c763          	bltz	a5,800232ea <JS_ToArrayLengthFree+0x90>
quickjs-nuttx/quickjs.c:11041
            len = v;
    800232a0:	ca3e                	sw	a5,20(sp)
quickjs-nuttx/quickjs.c:11100
    *plen = len;
    800232a2:	47d2                	lw	a5,20(sp)
quickjs-nuttx/quickjs.c:11101
    return 0;
    800232a4:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:11100
    *plen = len;
    800232a6:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:11101
    return 0;
    800232aa:	a89d                	j	80023320 <JS_ToArrayLengthFree+0xc6>
quickjs-nuttx/quickjs.c:11052
            bf_get_int32((int32_t *)&len, &p->num, BF_GET_INT_MOD);
    800232ac:	00860493          	addi	s1,a2,8
    800232b0:	85a6                	mv	a1,s1
    800232b2:	4605                	li	a2,1
    800232b4:	0848                	addi	a0,sp,20
    800232b6:	4f5350ef          	jal	ra,80058faa <bf_get_int32>
quickjs-nuttx/quickjs.c:11053
            bf_init(ctx->bf_ctx, &a);
    800232ba:	19043503          	ld	a0,400(s0)
    800232be:	082c                	addi	a1,sp,24
    800232c0:	0af340ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:11054
            bf_set_ui(&a, len);
    800232c4:	01416583          	lwu	a1,20(sp)
    800232c8:	0828                	addi	a0,sp,24
    800232ca:	115340ef          	jal	ra,80057bde <bf_set_ui>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    return bf_cmp(a, b) == 0;
    800232ce:	85a6                	mv	a1,s1
    800232d0:	0828                	addi	a0,sp,24
    800232d2:	69a350ef          	jal	ra,8005896c <bf_cmp>
    800232d6:	84aa                	mv	s1,a0
JS_ToArrayLengthFree():
quickjs-nuttx/quickjs.c:11056
            bf_delete(&a);
    800232d8:	0828                	addi	a0,sp,24
    800232da:	97ce70ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:11057
            JS_FreeValue(ctx, val);
    800232de:	6582                	ld	a1,0(sp)
    800232e0:	6622                	ld	a2,8(sp)
    800232e2:	8522                	mv	a0,s0
    800232e4:	cbae80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11058
            if (!res)
    800232e8:	dccd                	beqz	s1,800232a2 <JS_ToArrayLengthFree+0x48>
quickjs-nuttx/quickjs.c:11093
                    JS_ThrowRangeError(ctx, "invalid array length");
    800232ea:	8522                	mv	a0,s0
    800232ec:	00047597          	auipc	a1,0x47
    800232f0:	4ac58593          	addi	a1,a1,1196 # 8006a798 <qjsc_repl+0x51e8>
    800232f4:	ddaf60ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:11094
                    return -1;
    800232f8:	a01d                	j	8002331e <JS_ToArrayLengthFree+0xc4>
quickjs-nuttx/quickjs.c:11072
            if (is_array_ctor) {
    800232fa:	cb0d                	beqz	a4,8002332c <JS_ToArrayLengthFree+0xd2>
quickjs-nuttx/quickjs.c:11073
                val = JS_ToNumberFree(ctx, val);
    800232fc:	85b2                	mv	a1,a2
    800232fe:	8636                	mv	a2,a3
    80023300:	f8bfe0ef          	jal	ra,8002228a <JS_ToNumberFree>
quickjs-nuttx/quickjs.c:11074
                if (JS_IsException(val))
    80023304:	0005871b          	sext.w	a4,a1
    80023308:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:11073
                val = JS_ToNumberFree(ctx, val);
    8002330a:	862a                	mv	a2,a0
    8002330c:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:11074
                if (JS_IsException(val))
    8002330e:	00f70863          	beq	a4,a5,8002331e <JS_ToArrayLengthFree+0xc4>
quickjs-nuttx/quickjs.c:11077
                if (JS_ToArrayLengthFree(ctx, &len, val, TRUE))
    80023312:	4705                	li	a4,1
    80023314:	084c                	addi	a1,sp,20
    80023316:	8522                	mv	a0,s0
    80023318:	f43ff0ef          	jal	ra,8002325a <JS_ToArrayLengthFree>
    8002331c:	d159                	beqz	a0,800232a2 <JS_ToArrayLengthFree+0x48>
quickjs-nuttx/quickjs.c:11075 (discriminator 1)
                    return -1;
    8002331e:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:11102
}
    80023320:	60e6                	ld	ra,88(sp)
    80023322:	6446                	ld	s0,80(sp)
    80023324:	64a6                	ld	s1,72(sp)
    80023326:	6906                	ld	s2,64(sp)
    80023328:	6125                	addi	sp,sp,96
    8002332a:	8082                	ret
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    8002332c:	084c                	addi	a1,sp,20
    8002332e:	ec32                	sd	a2,24(sp)
    80023330:	f036                	sd	a3,32(sp)
    80023332:	888ff0ef          	jal	ra,800223ba <JS_ToInt32>
JS_ToArrayLengthFree():
quickjs-nuttx/quickjs.c:11082
                    JS_FreeValue(ctx, val);
    80023336:	6582                	ld	a1,0(sp)
    80023338:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:11081
                if (JS_ToUint32(ctx, &len, val)) {
    8002333a:	c509                	beqz	a0,80023344 <JS_ToArrayLengthFree+0xea>
quickjs-nuttx/quickjs.c:11082
                    JS_FreeValue(ctx, val);
    8002333c:	8522                	mv	a0,s0
    8002333e:	c60e80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:11083
                    return -1;
    80023342:	bff1                	j	8002331e <JS_ToArrayLengthFree+0xc4>
quickjs-nuttx/quickjs.c:11085
                val = JS_ToNumberFree(ctx, val);
    80023344:	8522                	mv	a0,s0
    80023346:	f45fe0ef          	jal	ra,8002228a <JS_ToNumberFree>
quickjs-nuttx/quickjs.c:11086
                if (JS_IsException(val))
    8002334a:	0005871b          	sext.w	a4,a1
    8002334e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:11085
                val = JS_ToNumberFree(ctx, val);
    80023350:	862a                	mv	a2,a0
    80023352:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:11086
                if (JS_IsException(val))
    80023354:	fcf705e3          	beq	a4,a5,8002331e <JS_ToArrayLengthFree+0xc4>
quickjs-nuttx/quickjs.c:11089
                if (JS_ToArrayLengthFree(ctx, &len1, val, FALSE))
    80023358:	4701                	li	a4,0
    8002335a:	082c                	addi	a1,sp,24
    8002335c:	8522                	mv	a0,s0
    8002335e:	efdff0ef          	jal	ra,8002325a <JS_ToArrayLengthFree>
    80023362:	fd55                	bnez	a0,8002331e <JS_ToArrayLengthFree+0xc4>
quickjs-nuttx/quickjs.c:11091
                if (len1 != len) {
    80023364:	4762                	lw	a4,24(sp)
    80023366:	47d2                	lw	a5,20(sp)
    80023368:	f2f70de3          	beq	a4,a5,800232a2 <JS_ToArrayLengthFree+0x48>
quickjs-nuttx/quickjs.c:11092
                fail:
    8002336c:	bfbd                	j	800232ea <JS_ToArrayLengthFree+0x90>

000000008002336e <set_array_length>:
set_array_length():
quickjs-nuttx/quickjs.c:8217
{
    8002336e:	7135                	addi	sp,sp,-160
    80023370:	e922                	sd	s0,144(sp)
    80023372:	f4d6                	sd	s5,104(sp)
    80023374:	842e                	mv	s0,a1
    80023376:	8aba                	mv	s5,a4
quickjs-nuttx/quickjs.c:8222
    ret = JS_ToArrayLengthFree(ctx, &len, val, FALSE);
    80023378:	084c                	addi	a1,sp,20
    8002337a:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:8217
{
    8002337c:	e526                	sd	s1,136(sp)
    8002337e:	ed06                	sd	ra,152(sp)
    80023380:	e14a                	sd	s2,128(sp)
    80023382:	fcce                	sd	s3,120(sp)
    80023384:	f8d2                	sd	s4,112(sp)
    80023386:	f0da                	sd	s6,96(sp)
    80023388:	ecde                	sd	s7,88(sp)
    8002338a:	84aa                	mv	s1,a0
    8002338c:	e032                	sd	a2,0(sp)
    8002338e:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:8222
    ret = JS_ToArrayLengthFree(ctx, &len, val, FALSE);
    80023390:	ecbff0ef          	jal	ra,8002325a <JS_ToArrayLengthFree>
quickjs-nuttx/quickjs.c:8223
    if (ret)
    80023394:	1c051363          	bnez	a0,8002355a <set_array_length+0x1ec>
quickjs-nuttx/quickjs.c:8226
    if (unlikely(!(p->shape->prop[0].flags & JS_PROP_WRITABLE)))
    80023398:	6c1c                	ld	a5,24(s0)
    8002339a:	63bc                	ld	a5,64(a5)
    8002339c:	83e9                	srli	a5,a5,0x1a
    8002339e:	8b89                	andi	a5,a5,2
    800233a0:	e395                	bnez	a5,800233c4 <set_array_length+0x56>
quickjs-nuttx/quickjs.c:8227
        return JS_ThrowTypeErrorReadOnly(ctx, flags, JS_ATOM_length);
    800233a2:	03000613          	li	a2,48
    800233a6:	85d6                	mv	a1,s5
    800233a8:	8526                	mv	a0,s1
    800233aa:	bd4f50ef          	jal	ra,8001877e <JS_ThrowTypeErrorReadOnly>
quickjs-nuttx/quickjs.c:8303
}
    800233ae:	60ea                	ld	ra,152(sp)
    800233b0:	644a                	ld	s0,144(sp)
    800233b2:	64aa                	ld	s1,136(sp)
    800233b4:	690a                	ld	s2,128(sp)
    800233b6:	79e6                	ld	s3,120(sp)
    800233b8:	7a46                	ld	s4,112(sp)
    800233ba:	7aa6                	ld	s5,104(sp)
    800233bc:	7b06                	ld	s6,96(sp)
    800233be:	6be6                	ld	s7,88(sp)
    800233c0:	610d                	addi	sp,sp,160
    800233c2:	8082                	ret
quickjs-nuttx/quickjs.c:8229
    if (likely(p->fast_array)) {
    800233c4:	00544783          	lbu	a5,5(s0)
    800233c8:	8ba1                	andi	a5,a5,8
    800233ca:	c3a5                	beqz	a5,8002342a <set_array_length+0xbc>
quickjs-nuttx/quickjs.c:8230
        uint32_t old_len = p->u.array.count;
    800233cc:	403c                	lw	a5,64(s0)
quickjs-nuttx/quickjs.c:8231
        if (len < old_len) {
    800233ce:	4952                	lw	s2,20(sp)
    800233d0:	00f97963          	bgeu	s2,a5,800233e2 <set_array_length+0x74>
quickjs-nuttx/quickjs.c:8232
            for(i = len; i < old_len; i++) {
    800233d4:	2901                	sext.w	s2,s2
    800233d6:	0007899b          	sext.w	s3,a5
quickjs-nuttx/quickjs.c:8232 (discriminator 1)
    800233da:	03391563          	bne	s2,s3,80023404 <set_array_length+0x96>
quickjs-nuttx/quickjs.c:8235
            p->u.array.count = len;
    800233de:	47d2                	lw	a5,20(sp)
    800233e0:	c03c                	sw	a5,64(s0)
quickjs-nuttx/quickjs.c:8237
        p->prop[0].u.value = JS_NewUint32(ctx, len);
    800233e2:	4752                	lw	a4,20(sp)
    800233e4:	7014                	ld	a3,32(s0)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    800233e6:	0007079b          	sext.w	a5,a4
    800233ea:	02074863          	bltz	a4,8002341a <set_array_length+0xac>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800233ee:	da02                	sw	zero,52(sp)
    800233f0:	d83e                	sw	a5,48(sp)
    800233f2:	7742                	ld	a4,48(sp)
    800233f4:	e0ba                	sd	a4,64(sp)
    800233f6:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    800233f8:	c0be                	sw	a5,64(sp)
    800233fa:	2786                	fld	fa5,64(sp)
set_array_length():
quickjs-nuttx/quickjs.c:8237
    800233fc:	e698                	sd	a4,8(a3)
quickjs-nuttx/quickjs.c:8302
    return TRUE;
    800233fe:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:8237
        p->prop[0].u.value = JS_NewUint32(ctx, len);
    80023400:	a29c                	fsd	fa5,0(a3)
    80023402:	b775                	j	800233ae <set_array_length+0x40>
quickjs-nuttx/quickjs.c:8233 (discriminator 3)
                JS_FreeValue(ctx, p->u.array.u.values[i]);
    80023404:	7c1c                	ld	a5,56(s0)
    80023406:	00491713          	slli	a4,s2,0x4
    8002340a:	8526                	mv	a0,s1
    8002340c:	97ba                	add	a5,a5,a4
    8002340e:	638c                	ld	a1,0(a5)
    80023410:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:8232 (discriminator 3)
            for(i = len; i < old_len; i++) {
    80023412:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:8233 (discriminator 3)
                JS_FreeValue(ctx, p->u.array.u.values[i]);
    80023414:	b8ae80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8232 (discriminator 3)
            for(i = len; i < old_len; i++) {
    80023418:	b7c9                	j	800233da <set_array_length+0x6c>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    8002341a:	d21707d3          	fcvt.d.wu	fa5,a4
    8002341e:	471d                	li	a4,7
    80023420:	e20787d3          	fmv.x.d	a5,fa5
set_array_length():
quickjs-nuttx/quickjs.h:230
    return v;
    80023424:	a0be                	fsd	fa5,64(sp)
    80023426:	2781                	sext.w	a5,a5
    80023428:	bfc1                	j	800233f8 <set_array_length+0x8a>
    8002342a:	701c                	ld	a5,32(s0)
    8002342c:	89aa                	mv	s3,a0
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    8002342e:	086c                	addi	a1,sp,28
    80023430:	6390                	ld	a2,0(a5)
    80023432:	6794                	ld	a3,8(a5)
    80023434:	8526                	mv	a0,s1
    80023436:	e0b2                	sd	a2,64(sp)
    80023438:	e4b6                	sd	a3,72(sp)
    8002343a:	f81fe0ef          	jal	ra,800223ba <JS_ToInt32>
set_array_length():
quickjs-nuttx/quickjs.c:8242
        if (len < cur_len) {
    8002343e:	47d2                	lw	a5,20(sp)
    80023440:	4772                	lw	a4,28(sp)
    80023442:	10e7f263          	bgeu	a5,a4,80023546 <set_array_length+0x1d8>
quickjs-nuttx/quickjs.c:8248
            sh = p->shape;
    80023446:	01843a03          	ld	s4,24(s0)
quickjs-nuttx/quickjs.c:8249
            if (d <= sh->prop_count) {
    8002344a:	9f1d                	subw	a4,a4,a5
    8002344c:	028a2683          	lw	a3,40(s4) # 110028 <asinh-0x7feeffd8>
    80023450:	08e6f063          	bgeu	a3,a4,800234d0 <set_array_length+0x162>
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    80023454:	040a0913          	addi	s2,s4,64
set_array_length():
quickjs-nuttx/quickjs.c:8268
                cur_len = len;
    80023458:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:8269
                for(i = 0, pr = get_shape_prop(sh); i < sh->prop_count;
    8002345a:	8b4a                	mv	s6,s2
    8002345c:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:8269 (discriminator 1)
    8002345e:	028a2783          	lw	a5,40(s4)
    80023462:	0afbcb63          	blt	s7,a5,80023518 <set_array_length+0x1aa>
quickjs-nuttx/quickjs.c:8280 (discriminator 1)
                for(i = 0, pr = get_shape_prop(sh); i < sh->prop_count;
    80023466:	028a2783          	lw	a5,40(s4)
    8002346a:	06f9d763          	bge	s3,a5,800234d8 <set_array_length+0x16a>
quickjs-nuttx/quickjs.c:8282
                    if (pr->atom != JS_ATOM_NULL &&
    8002346e:	00492603          	lw	a2,4(s2)
    80023472:	c61d                	beqz	a2,800234a0 <set_array_length+0x132>
quickjs-nuttx/quickjs.c:8283 (discriminator 1)
                        JS_AtomIsArrayIndex(ctx, &idx, pr->atom)) {
    80023474:	082c                	addi	a1,sp,24
    80023476:	8526                	mv	a0,s1
    80023478:	d36e50ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
quickjs-nuttx/quickjs.c:8282 (discriminator 1)
                    if (pr->atom != JS_ATOM_NULL &&
    8002347c:	c115                	beqz	a0,800234a0 <set_array_length+0x132>
quickjs-nuttx/quickjs.c:8284
                        if (idx >= cur_len) {
    8002347e:	4762                	lw	a4,24(sp)
    80023480:	47f2                	lw	a5,28(sp)
    80023482:	00f76f63          	bltu	a4,a5,800234a0 <set_array_length+0x132>
quickjs-nuttx/quickjs.c:8286
                            delete_property(ctx, p, pr->atom);
    80023486:	00492603          	lw	a2,4(s2)
    8002348a:	85a2                	mv	a1,s0
    8002348c:	8526                	mv	a0,s1
    8002348e:	efdf80ef          	jal	ra,8001c38a <delete_property>
quickjs-nuttx/quickjs.c:8288
                            sh = p->shape;
    80023492:	01843a03          	ld	s4,24(s0)
quickjs-nuttx/quickjs.c:8289
                            pr = get_shape_prop(sh) + i;
    80023496:	00399793          	slli	a5,s3,0x3
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8002349a:	040a0913          	addi	s2,s4,64
set_array_length():
quickjs-nuttx/quickjs.c:8289
                            pr = get_shape_prop(sh) + i;
    8002349e:	993e                	add	s2,s2,a5
quickjs-nuttx/quickjs.c:8281
                    i++, pr++) {
    800234a0:	2985                	addiw	s3,s3,1
    800234a2:	0921                	addi	s2,s2,8
    800234a4:	b7c9                	j	80023466 <set_array_length+0xf8>
quickjs-nuttx/quickjs.c:8254
                    atom = JS_NewAtomUInt32(ctx, cur_len - 1);
    800234a6:	35fd                	addiw	a1,a1,-1
    800234a8:	8526                	mv	a0,s1
    800234aa:	d2efc0ef          	jal	ra,8001f9d8 <JS_NewAtomUInt32>
    800234ae:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:8255
                    ret = delete_property(ctx, p, atom);
    800234b2:	85a2                	mv	a1,s0
    800234b4:	864a                	mv	a2,s2
    800234b6:	8526                	mv	a0,s1
    800234b8:	ed3f80ef          	jal	ra,8001c38a <delete_property>
    800234bc:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:8256
                    JS_FreeAtom(ctx, atom);
    800234be:	85ca                	mv	a1,s2
    800234c0:	8526                	mv	a0,s1
    800234c2:	c87e70ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:8257
                    if (unlikely(!ret)) {
    800234c6:	00098963          	beqz	s3,800234d8 <set_array_length+0x16a>
quickjs-nuttx/quickjs.c:8262
                    cur_len--;
    800234ca:	47f2                	lw	a5,28(sp)
    800234cc:	37fd                	addiw	a5,a5,-1
    800234ce:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:8253
                while (cur_len > len) {
    800234d0:	45f2                	lw	a1,28(sp)
    800234d2:	47d2                	lw	a5,20(sp)
    800234d4:	fcb7e9e3          	bltu	a5,a1,800234a6 <set_array_length+0x138>
quickjs-nuttx/quickjs.c:8297
        set_value(ctx, &p->prop[0].u.value, JS_NewUint32(ctx, cur_len));
    800234d8:	4772                	lw	a4,28(sp)
    800234da:	700c                	ld	a1,32(s0)
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    800234dc:	0007079b          	sext.w	a5,a4
    800234e0:	06074563          	bltz	a4,8002354a <set_array_length+0x1dc>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800234e4:	c282                	sw	zero,68(sp)
    800234e6:	c0be                	sw	a5,64(sp)
    800234e8:	6706                	ld	a4,64(sp)
    800234ea:	e482                	sd	zero,72(sp)
    800234ec:	fc02                	sd	zero,56(sp)
    800234ee:	f83a                	sd	a4,48(sp)
    800234f0:	4681                	li	a3,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    800234f2:	d83e                	sw	a5,48(sp)
set_array_length():
quickjs-nuttx/quickjs.c:8297
    800234f4:	7642                	ld	a2,48(sp)
    800234f6:	8526                	mv	a0,s1
    800234f8:	f46e80ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:8298
        if (unlikely(cur_len > len)) {
    800234fc:	4772                	lw	a4,28(sp)
    800234fe:	47d2                	lw	a5,20(sp)
quickjs-nuttx/quickjs.c:8302
    return TRUE;
    80023500:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:8298
        if (unlikely(cur_len > len)) {
    80023502:	eae7f6e3          	bgeu	a5,a4,800233ae <set_array_length+0x40>
quickjs-nuttx/quickjs.c:8299
            return JS_ThrowTypeErrorOrFalse(ctx, flags, "not configurable");
    80023506:	00047617          	auipc	a2,0x47
    8002350a:	67a60613          	addi	a2,a2,1658 # 8006ab80 <qjsc_repl+0x55d0>
    8002350e:	85d6                	mv	a1,s5
    80023510:	8526                	mv	a0,s1
    80023512:	e2df40ef          	jal	ra,8001833e <JS_ThrowTypeErrorOrFalse>
    80023516:	bd61                	j	800233ae <set_array_length+0x40>
quickjs-nuttx/quickjs.c:8271
                    if (pr->atom != JS_ATOM_NULL &&
    80023518:	004b2603          	lw	a2,4(s6)
    8002351c:	c215                	beqz	a2,80023540 <set_array_length+0x1d2>
quickjs-nuttx/quickjs.c:8272 (discriminator 1)
                        JS_AtomIsArrayIndex(ctx, &idx, pr->atom)) {
    8002351e:	082c                	addi	a1,sp,24
    80023520:	8526                	mv	a0,s1
    80023522:	c8ce50ef          	jal	ra,800089ae <JS_AtomIsArrayIndex>
quickjs-nuttx/quickjs.c:8271 (discriminator 1)
                    if (pr->atom != JS_ATOM_NULL &&
    80023526:	cd09                	beqz	a0,80023540 <set_array_length+0x1d2>
quickjs-nuttx/quickjs.c:8273
                        if (idx >= cur_len &&
    80023528:	4762                	lw	a4,24(sp)
    8002352a:	47f2                	lw	a5,28(sp)
    8002352c:	00f76a63          	bltu	a4,a5,80023540 <set_array_length+0x1d2>
quickjs-nuttx/quickjs.c:8274 (discriminator 1)
                            !(pr->flags & JS_PROP_CONFIGURABLE)) {
    80023530:	000b2783          	lw	a5,0(s6)
    80023534:	01a7d79b          	srliw	a5,a5,0x1a
quickjs-nuttx/quickjs.c:8273 (discriminator 1)
                        if (idx >= cur_len &&
    80023538:	8b85                	andi	a5,a5,1
    8002353a:	e399                	bnez	a5,80023540 <set_array_length+0x1d2>
quickjs-nuttx/quickjs.c:8275
                            cur_len = idx + 1;
    8002353c:	2705                	addiw	a4,a4,1
    8002353e:	ce3a                	sw	a4,28(sp)
quickjs-nuttx/quickjs.c:8270
                    i++, pr++) {
    80023540:	2b85                	addiw	s7,s7,1
    80023542:	0b21                	addi	s6,s6,8
    80023544:	bf29                	j	8002345e <set_array_length+0xf0>
quickjs-nuttx/quickjs.c:8295
            cur_len = len;
    80023546:	ce3e                	sw	a5,28(sp)
    80023548:	bf41                	j	800234d8 <set_array_length+0x16a>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    8002354a:	d21707d3          	fcvt.d.wu	fa5,a4
    8002354e:	469d                	li	a3,7
    80023550:	e20787d3          	fmv.x.d	a5,fa5
set_array_length():
quickjs-nuttx/quickjs.h:230
    return v;
    80023554:	b83e                	fsd	fa5,48(sp)
    80023556:	2781                	sext.w	a5,a5
    80023558:	bf69                	j	800234f2 <set_array_length+0x184>
quickjs-nuttx/quickjs.c:8224
        return -1;
    8002355a:	557d                	li	a0,-1
    8002355c:	bd89                	j	800233ae <set_array_length+0x40>

000000008002355e <JS_ToInt32SatFree>:
JS_ToInt32SatFree():
quickjs-nuttx/quickjs.c:10676
{
    8002355e:	711d                	addi	sp,sp,-96
    80023560:	e8a2                	sd	s0,80(sp)
    80023562:	e4a6                	sd	s1,72(sp)
    80023564:	e0ca                	sd	s2,64(sp)
    80023566:	fc4e                	sd	s3,56(sp)
    80023568:	f852                	sd	s4,48(sp)
    8002356a:	f456                	sd	s5,40(sp)
    8002356c:	f05a                	sd	s6,32(sp)
    8002356e:	ec86                	sd	ra,88(sp)
    80023570:	892a                	mv	s2,a0
    80023572:	84ae                	mv	s1,a1
    80023574:	e032                	sd	a2,0(sp)
    80023576:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:10682
    switch(tag) {
    80023578:	4a1d                	li	s4,7
    8002357a:	5add                	li	s5,-9
    8002357c:	4b0d                	li	s6,3
    8002357e:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:10681
    tag = JS_VALUE_GET_NORM_TAG(val);
    80023580:	0004079b          	sext.w	a5,s0
quickjs-nuttx/quickjs.c:10682
    switch(tag) {
    80023584:	07478163          	beq	a5,s4,800235e6 <JS_ToInt32SatFree+0x88>
    80023588:	02fa6e63          	bltu	s4,a5,800235c4 <JS_ToInt32SatFree+0x66>
    8002358c:	04fb7a63          	bgeu	s6,a5,800235e0 <JS_ToInt32SatFree+0x82>
    80023590:	01378d63          	beq	a5,s3,800235aa <JS_ToInt32SatFree+0x4c>
quickjs-nuttx/quickjs.c:10717
        val = JS_ToNumberFree(ctx, val);
    80023594:	6582                	ld	a1,0(sp)
    80023596:	8622                	mv	a2,s0
    80023598:	854a                	mv	a0,s2
    8002359a:	cf1fe0ef          	jal	ra,8002228a <JS_ToNumberFree>
    8002359e:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:10718
        if (JS_IsException(val)) {
    800235a0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:10717
        val = JS_ToNumberFree(ctx, val);
    800235a4:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:10718
        if (JS_IsException(val)) {
    800235a6:	fd379de3          	bne	a5,s3,80023580 <JS_ToInt32SatFree+0x22>
quickjs-nuttx/quickjs.c:10719
            *pres = 0;
    800235aa:	0004a023          	sw	zero,0(s1)
quickjs-nuttx/quickjs.c:10720
            return -1;
    800235ae:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:10726
}
    800235b0:	60e6                	ld	ra,88(sp)
    800235b2:	6446                	ld	s0,80(sp)
    800235b4:	64a6                	ld	s1,72(sp)
    800235b6:	6906                	ld	s2,64(sp)
    800235b8:	79e2                	ld	s3,56(sp)
    800235ba:	7a42                	ld	s4,48(sp)
    800235bc:	7aa2                	ld	s5,40(sp)
    800235be:	7b02                	ld	s6,32(sp)
    800235c0:	6125                	addi	sp,sp,96
    800235c2:	8082                	ret
quickjs-nuttx/quickjs.c:10682
    switch(tag) {
    800235c4:	fd5798e3          	bne	a5,s5,80023594 <JS_ToInt32SatFree+0x36>
quickjs-nuttx/quickjs.c:10711
            bf_get_int32(&ret, &p->num, 0);
    800235c8:	6582                	ld	a1,0(sp)
    800235ca:	4601                	li	a2,0
    800235cc:	0868                	addi	a0,sp,28
    800235ce:	05a1                	addi	a1,a1,8
    800235d0:	1db350ef          	jal	ra,80058faa <bf_get_int32>
quickjs-nuttx/quickjs.c:10712
            JS_FreeValue(ctx, val);
    800235d4:	6582                	ld	a1,0(sp)
    800235d6:	8622                	mv	a2,s0
    800235d8:	854a                	mv	a0,s2
    800235da:	9c4e80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:10714
        break;
    800235de:	a809                	j	800235f0 <JS_ToInt32SatFree+0x92>
quickjs-nuttx/quickjs.c:10687
        ret = JS_VALUE_GET_INT(val);
    800235e0:	4782                	lw	a5,0(sp)
quickjs-nuttx/quickjs.c:10703
                    ret = (int)d;
    800235e2:	ce3e                	sw	a5,28(sp)
    800235e4:	a031                	j	800235f0 <JS_ToInt32SatFree+0x92>
quickjs-nuttx/quickjs.c:10694
            double d = JS_VALUE_GET_FLOAT64(val);
    800235e6:	2782                	fld	fa5,0(sp)
quickjs-nuttx/quickjs.c:10695
            if (isnan(d)) {
    800235e8:	a2f7a7d3          	feq.d	a5,fa5,fa5
    800235ec:	e791                	bnez	a5,800235f8 <JS_ToInt32SatFree+0x9a>
quickjs-nuttx/quickjs.c:10696
                ret = 0;
    800235ee:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs.c:10724
    *pres = ret;
    800235f0:	47f2                	lw	a5,28(sp)
quickjs-nuttx/quickjs.c:10725
    return 0;
    800235f2:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:10724
    *pres = ret;
    800235f4:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:10725
    return 0;
    800235f6:	bf6d                	j	800235b0 <JS_ToInt32SatFree+0x52>
quickjs-nuttx/quickjs.c:10698
                if (d < INT32_MIN)
    800235f8:	00070797          	auipc	a5,0x70
    800235fc:	6287b707          	fld	fa4,1576(a5) # 80093c20 <_erodata+0xae>
    80023600:	a2e797d3          	flt.d	a5,fa5,fa4
    80023604:	c781                	beqz	a5,8002360c <JS_ToInt32SatFree+0xae>
quickjs-nuttx/quickjs.c:10699
                    ret = INT32_MIN;
    80023606:	800007b7          	lui	a5,0x80000
    8002360a:	bfe1                	j	800235e2 <JS_ToInt32SatFree+0x84>
quickjs-nuttx/quickjs.c:10700
                else if (d > INT32_MAX)
    8002360c:	00070797          	auipc	a5,0x70
    80023610:	61c7b707          	fld	fa4,1564(a5) # 80093c28 <_erodata+0xb6>
    80023614:	a2f717d3          	flt.d	a5,fa4,fa5
    80023618:	c791                	beqz	a5,80023624 <JS_ToInt32SatFree+0xc6>
quickjs-nuttx/quickjs.c:10701
                    ret = INT32_MAX;
    8002361a:	800007b7          	lui	a5,0x80000
    8002361e:	fff7c793          	not	a5,a5
    80023622:	b7c1                	j	800235e2 <JS_ToInt32SatFree+0x84>
quickjs-nuttx/quickjs.c:10703
                    ret = (int)d;
    80023624:	c20797d3          	fcvt.w.d	a5,fa5,rtz
    80023628:	bf6d                	j	800235e2 <JS_ToInt32SatFree+0x84>

000000008002362a <JS_ToInt32Sat>:
JS_ToInt32Sat():
quickjs-nuttx/quickjs.c:10729
{
    8002362a:	7139                	addi	sp,sp,-64
    8002362c:	f822                	sd	s0,48(sp)
    8002362e:	f426                	sd	s1,40(sp)
    80023630:	842a                	mv	s0,a0
    80023632:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:10730
    return JS_ToInt32SatFree(ctx, pres, JS_DupValue(ctx, val));
    80023634:	8532                	mv	a0,a2
    80023636:	85b6                	mv	a1,a3
quickjs-nuttx/quickjs.c:10729
{
    80023638:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:10730
    return JS_ToInt32SatFree(ctx, pres, JS_DupValue(ctx, val));
    8002363a:	de1e60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8002363e:	862a                	mv	a2,a0
    80023640:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:10731
}
    80023642:	7442                	ld	s0,48(sp)
    80023644:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:10730
    return JS_ToInt32SatFree(ctx, pres, JS_DupValue(ctx, val));
    80023646:	86ae                	mv	a3,a1
    80023648:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:10731
}
    8002364a:	74a2                	ld	s1,40(sp)
    8002364c:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:10730
    return JS_ToInt32SatFree(ctx, pres, JS_DupValue(ctx, val));
    8002364e:	f11ff06f          	j	8002355e <JS_ToInt32SatFree>

0000000080023652 <js_get_radix>:
js_get_radix():
quickjs-nuttx/quickjs.c:40910
{
    80023652:	7179                	addi	sp,sp,-48
    80023654:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:40912
    if (JS_ToInt32Sat(ctx, &radix, val))
    80023656:	862e                	mv	a2,a1
    80023658:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs.c:40910
{
    8002365a:	f022                	sd	s0,32(sp)
    8002365c:	f406                	sd	ra,40(sp)
    8002365e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:40912
    if (JS_ToInt32Sat(ctx, &radix, val))
    80023660:	fcbff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80023664:	ed19                	bnez	a0,80023682 <js_get_radix+0x30>
quickjs-nuttx/quickjs.c:40914
    if (radix < 2 || radix > 36) {
    80023666:	4572                	lw	a0,28(sp)
    80023668:	02200793          	li	a5,34
    8002366c:	ffe5071b          	addiw	a4,a0,-2
    80023670:	00e7fa63          	bgeu	a5,a4,80023684 <js_get_radix+0x32>
quickjs-nuttx/quickjs.c:40915
        JS_ThrowRangeError(ctx, "radix must be between 2 and 36");
    80023674:	00047597          	auipc	a1,0x47
    80023678:	52458593          	addi	a1,a1,1316 # 8006ab98 <qjsc_repl+0x55e8>
    8002367c:	8522                	mv	a0,s0
    8002367e:	a50f60ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:40913
        return -1;
    80023682:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:40919
}
    80023684:	70a2                	ld	ra,40(sp)
    80023686:	7402                	ld	s0,32(sp)
    80023688:	6145                	addi	sp,sp,48
    8002368a:	8082                	ret

000000008002368c <js_number_toString>:
js_number_toString():
quickjs-nuttx/quickjs.c:40923
{
    8002368c:	7159                	addi	sp,sp,-112
    8002368e:	f0a2                	sd	s0,96(sp)
    80023690:	eca6                	sd	s1,88(sp)
    80023692:	e8ca                	sd	s2,80(sp)
    80023694:	e4ce                	sd	s3,72(sp)
    80023696:	843e                	mv	s0,a5
    80023698:	f486                	sd	ra,104(sp)
    8002369a:	84aa                	mv	s1,a0
    8002369c:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:40928
    val = js_thisNumberValue(ctx, this_val);
    8002369e:	d2bf50ef          	jal	ra,800193c8 <js_thisNumberValue>
    800236a2:	f02a                	sd	a0,32(sp)
    800236a4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:40929
    if (JS_IsException(val))
    800236a6:	0005879b          	sext.w	a5,a1
    800236aa:	4999                	li	s3,6
    800236ac:	01379563          	bne	a5,s3,800236b6 <js_number_toString+0x2a>
quickjs-nuttx/quickjs.c:40940
    return js_dtoa(ctx, d, base, 0, JS_DTOA_VAR_FORMAT);
    800236b0:	f82a                	sd	a0,48(sp)
    800236b2:	fc2e                	sd	a1,56(sp)
    800236b4:	a80d                	j	800236e6 <js_number_toString+0x5a>
quickjs-nuttx/quickjs.c:40931
    if (magic || JS_IsUndefined(argv[0])) {
    800236b6:	e029                	bnez	s0,800236f8 <js_number_toString+0x6c>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    800236b8:	00893603          	ld	a2,8(s2)
js_number_toString():
quickjs-nuttx/quickjs.c:40931 (discriminator 1)
    800236bc:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:40932 (discriminator 1)
        base = 10;
    800236be:	4429                	li	s0,10
quickjs-nuttx/quickjs.c:40931 (discriminator 1)
    if (magic || JS_IsUndefined(argv[0])) {
    800236c0:	0006071b          	sext.w	a4,a2
    800236c4:	02f70b63          	beq	a4,a5,800236fa <js_number_toString+0x6e>
quickjs-nuttx/quickjs.c:40934
        base = js_get_radix(ctx, argv[0]);
    800236c8:	00093583          	ld	a1,0(s2)
    800236cc:	8526                	mv	a0,s1
    800236ce:	f85ff0ef          	jal	ra,80023652 <js_get_radix>
    800236d2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:40935
        if (base < 0)
    800236d4:	02055363          	bgez	a0,800236fa <js_number_toString+0x6e>
quickjs-nuttx/quickjs.c:40942
    JS_FreeValue(ctx, val);
    800236d8:	7582                	ld	a1,32(sp)
    800236da:	7622                	ld	a2,40(sp)
    800236dc:	8526                	mv	a0,s1
    800236de:	8c0e80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:40943
    return JS_EXCEPTION;
    800236e2:	f802                	sd	zero,48(sp)
    800236e4:	fc4e                	sd	s3,56(sp)
quickjs-nuttx/quickjs.c:40944 (discriminator 1)
}
    800236e6:	70a6                	ld	ra,104(sp)
    800236e8:	7406                	ld	s0,96(sp)
    800236ea:	7542                	ld	a0,48(sp)
    800236ec:	75e2                	ld	a1,56(sp)
    800236ee:	64e6                	ld	s1,88(sp)
    800236f0:	6946                	ld	s2,80(sp)
    800236f2:	69a6                	ld	s3,72(sp)
    800236f4:	6165                	addi	sp,sp,112
    800236f6:	8082                	ret
quickjs-nuttx/quickjs.c:40932
        base = 10;
    800236f8:	4429                	li	s0,10
quickjs-nuttx/quickjs.c:40938
    if (JS_ToFloat64Free(ctx, &d, val))
    800236fa:	7602                	ld	a2,32(sp)
    800236fc:	76a2                	ld	a3,40(sp)
    800236fe:	082c                	addi	a1,sp,24
    80023700:	8526                	mv	a0,s1
    80023702:	f95fe0ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80023706:	c509                	beqz	a0,80023710 <js_number_toString+0x84>
quickjs-nuttx/quickjs.c:40939
        return JS_EXCEPTION;
    80023708:	4799                	li	a5,6
    8002370a:	f802                	sd	zero,48(sp)
    8002370c:	fc3e                	sd	a5,56(sp)
    8002370e:	bfe1                	j	800236e6 <js_number_toString+0x5a>
quickjs-nuttx/quickjs.c:40940
    return js_dtoa(ctx, d, base, 0, JS_DTOA_VAR_FORMAT);
    80023710:	2562                	fld	fa0,24(sp)
    80023712:	4681                	li	a3,0
    80023714:	4601                	li	a2,0
    80023716:	85a2                	mv	a1,s0
    80023718:	8526                	mv	a0,s1
    8002371a:	b1ffc0ef          	jal	ra,80020238 <js_dtoa>
    8002371e:	bf49                	j	800236b0 <js_number_toString+0x24>

0000000080023720 <bigfloat_get_rnd_mode>:
bigfloat_get_rnd_mode():
quickjs-nuttx/quickjs.c:50937
{
    80023720:	7179                	addi	sp,sp,-48
    80023722:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:50939
    if (JS_ToInt32Sat(ctx, &rnd_mode, val))
    80023724:	862e                	mv	a2,a1
    80023726:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs.c:50937
{
    80023728:	f022                	sd	s0,32(sp)
    8002372a:	f406                	sd	ra,40(sp)
    8002372c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:50939
    if (JS_ToInt32Sat(ctx, &rnd_mode, val))
    8002372e:	efdff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80023732:	ed01                	bnez	a0,8002374a <bigfloat_get_rnd_mode+0x2a>
quickjs-nuttx/quickjs.c:50941
    if (rnd_mode < BF_RNDN || rnd_mode > BF_RNDF) {
    80023734:	4572                	lw	a0,28(sp)
    80023736:	4799                	li	a5,6
    80023738:	00a7fa63          	bgeu	a5,a0,8002374c <bigfloat_get_rnd_mode+0x2c>
quickjs-nuttx/quickjs.c:50942
        JS_ThrowRangeError(ctx, "invalid rounding mode");
    8002373c:	00047597          	auipc	a1,0x47
    80023740:	47c58593          	addi	a1,a1,1148 # 8006abb8 <qjsc_repl+0x5608>
    80023744:	8522                	mv	a0,s0
    80023746:	988f60ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:50940
        return -1;
    8002374a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:50946
}
    8002374c:	70a2                	ld	ra,40(sp)
    8002374e:	7402                	ld	s0,32(sp)
    80023750:	6145                	addi	sp,sp,48
    80023752:	8082                	ret

0000000080023754 <js_string_codePointAt>:
js_string_codePointAt():
quickjs-nuttx/quickjs.c:41458
{
    80023754:	7175                	addi	sp,sp,-144
    80023756:	e122                	sd	s0,128(sp)
    80023758:	fca6                	sd	s1,120(sp)
    8002375a:	f8ca                	sd	s2,112(sp)
    8002375c:	f4ce                	sd	s3,104(sp)
    8002375e:	e506                	sd	ra,136(sp)
    80023760:	892a                	mv	s2,a0
    80023762:	e02e                	sd	a1,0(sp)
    80023764:	e432                	sd	a2,8(sp)
    80023766:	843a                	mv	s0,a4
quickjs-nuttx/quickjs.c:41463
    val = JS_ToStringCheckObject(ctx, this_val);
    80023768:	f18fd0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8002376c:	f02a                	sd	a0,32(sp)
    8002376e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41464
    if (JS_IsException(val))
    80023770:	0005879b          	sext.w	a5,a1
    80023774:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:41463
    val = JS_ToStringCheckObject(ctx, this_val);
    80023776:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:41464
    if (JS_IsException(val))
    80023778:	01379d63          	bne	a5,s3,80023792 <js_string_codePointAt+0x3e>
quickjs-nuttx/quickjs.c:41465
        return val;
    8002377c:	e0aa                	sd	a0,64(sp)
    8002377e:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:41479 (discriminator 1)
}
    80023780:	60aa                	ld	ra,136(sp)
    80023782:	640a                	ld	s0,128(sp)
    80023784:	6506                	ld	a0,64(sp)
    80023786:	65a6                	ld	a1,72(sp)
    80023788:	74e6                	ld	s1,120(sp)
    8002378a:	7946                	ld	s2,112(sp)
    8002378c:	79a6                	ld	s3,104(sp)
    8002378e:	6149                	addi	sp,sp,144
    80023790:	8082                	ret
quickjs-nuttx/quickjs.c:41467
    if (JS_ToInt32Sat(ctx, &idx, argv[0])) {
    80023792:	6010                	ld	a2,0(s0)
    80023794:	6414                	ld	a3,8(s0)
    80023796:	086c                	addi	a1,sp,28
    80023798:	854a                	mv	a0,s2
    8002379a:	e91ff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    8002379e:	842a                	mv	s0,a0
    800237a0:	c909                	beqz	a0,800237b2 <js_string_codePointAt+0x5e>
quickjs-nuttx/quickjs.c:41468
        JS_FreeValue(ctx, val);
    800237a2:	7582                	ld	a1,32(sp)
    800237a4:	7622                	ld	a2,40(sp)
    800237a6:	854a                	mv	a0,s2
    800237a8:	ff7e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41469
        return JS_EXCEPTION;
    800237ac:	e082                	sd	zero,64(sp)
    800237ae:	e4ce                	sd	s3,72(sp)
    800237b0:	bfc1                	j	80023780 <js_string_codePointAt+0x2c>
quickjs-nuttx/quickjs.c:41471
    if (idx < 0 || idx >= p->len) {
    800237b2:	4772                	lw	a4,28(sp)
    800237b4:	00074763          	bltz	a4,800237c2 <js_string_codePointAt+0x6e>
quickjs-nuttx/quickjs.c:41471 (discriminator 1)
    800237b8:	40dc                	lw	a5,4(s1)
    800237ba:	1786                	slli	a5,a5,0x21
    800237bc:	9385                	srli	a5,a5,0x21
    800237be:	00f74e63          	blt	a4,a5,800237da <js_string_codePointAt+0x86>
quickjs-nuttx/quickjs.c:41472
        ret = JS_UNDEFINED;
    800237c2:	da02                	sw	zero,52(sp)
    800237c4:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:41477
    JS_FreeValue(ctx, val);
    800237c6:	7582                	ld	a1,32(sp)
    800237c8:	7622                	ld	a2,40(sp)
    800237ca:	854a                	mv	a0,s2
    800237cc:	fd3e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41478
    return ret;
    800237d0:	d822                	sw	s0,48(sp)
    800237d2:	77c2                	ld	a5,48(sp)
    800237d4:	e4a6                	sd	s1,72(sp)
    800237d6:	e0be                	sd	a5,64(sp)
    800237d8:	b765                	j	80023780 <js_string_codePointAt+0x2c>
quickjs-nuttx/quickjs.c:41474
        c = string_getc(p, &idx);
    800237da:	8526                	mv	a0,s1
    800237dc:	086c                	addi	a1,sp,28
    800237de:	ca0e40ef          	jal	ra,80007c7e <string_getc>
    800237e2:	c8aa                	sw	a0,80(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800237e4:	ca82                	sw	zero,84(sp)
    800237e6:	67c6                	ld	a5,80(sp)
js_string_codePointAt():
quickjs-nuttx/quickjs.c:41474
    800237e8:	842a                	mv	s0,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800237ea:	4481                	li	s1,0
    800237ec:	f83e                	sd	a5,48(sp)
    800237ee:	bfe1                	j	800237c6 <js_string_codePointAt+0x72>

00000000800237f0 <js_string_charCodeAt>:
js_string_charCodeAt():
quickjs-nuttx/quickjs.c:41397
{
    800237f0:	7175                	addi	sp,sp,-144
    800237f2:	e122                	sd	s0,128(sp)
    800237f4:	fca6                	sd	s1,120(sp)
    800237f6:	f8ca                	sd	s2,112(sp)
    800237f8:	f4ce                	sd	s3,104(sp)
    800237fa:	e506                	sd	ra,136(sp)
    800237fc:	aca2                	fsd	fs0,88(sp)
    800237fe:	84aa                	mv	s1,a0
    80023800:	e02e                	sd	a1,0(sp)
    80023802:	e432                	sd	a2,8(sp)
    80023804:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:41402
    val = JS_ToStringCheckObject(ctx, this_val);
    80023806:	e7afd0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    8002380a:	f02a                	sd	a0,32(sp)
    8002380c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41403
    if (JS_IsException(val))
    8002380e:	0005879b          	sext.w	a5,a1
    80023812:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:41402
    val = JS_ToStringCheckObject(ctx, this_val);
    80023814:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:41403
    if (JS_IsException(val))
    80023816:	01379e63          	bne	a5,s3,80023832 <js_string_charCodeAt+0x42>
quickjs-nuttx/quickjs.c:41404
        return val;
    8002381a:	f82a                	sd	a0,48(sp)
    8002381c:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:41421 (discriminator 1)
}
    8002381e:	60aa                	ld	ra,136(sp)
    80023820:	640a                	ld	s0,128(sp)
    80023822:	7542                	ld	a0,48(sp)
    80023824:	75e2                	ld	a1,56(sp)
    80023826:	74e6                	ld	s1,120(sp)
    80023828:	7946                	ld	s2,112(sp)
    8002382a:	79a6                	ld	s3,104(sp)
    8002382c:	2466                	fld	fs0,88(sp)
    8002382e:	6149                	addi	sp,sp,144
    80023830:	8082                	ret
quickjs-nuttx/quickjs.c:41406
    if (JS_ToInt32Sat(ctx, &idx, argv[0])) {
    80023832:	00093603          	ld	a2,0(s2)
    80023836:	00893683          	ld	a3,8(s2)
    8002383a:	086c                	addi	a1,sp,28
    8002383c:	8526                	mv	a0,s1
    8002383e:	dedff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80023842:	c909                	beqz	a0,80023854 <js_string_charCodeAt+0x64>
quickjs-nuttx/quickjs.c:41407
        JS_FreeValue(ctx, val);
    80023844:	7582                	ld	a1,32(sp)
    80023846:	7622                	ld	a2,40(sp)
    80023848:	8526                	mv	a0,s1
    8002384a:	f55e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41408
        return JS_EXCEPTION;
    8002384e:	f802                	sd	zero,48(sp)
    80023850:	fc4e                	sd	s3,56(sp)
    80023852:	b7f1                	j	8002381e <js_string_charCodeAt+0x2e>
quickjs-nuttx/quickjs.c:41410
    if (idx < 0 || idx >= p->len) {
    80023854:	47f2                	lw	a5,28(sp)
    80023856:	0007c863          	bltz	a5,80023866 <js_string_charCodeAt+0x76>
quickjs-nuttx/quickjs.c:41410 (discriminator 1)
    8002385a:	4058                	lw	a4,4(s0)
    8002385c:	02171693          	slli	a3,a4,0x21
    80023860:	9285                	srli	a3,a3,0x21
    80023862:	02d7c563          	blt	a5,a3,8002388c <js_string_charCodeAt+0x9c>
quickjs-nuttx/quickjs.c:41411
        ret = JS_NAN;
    80023866:	00070797          	auipc	a5,0x70
    8002386a:	31a7b407          	fld	fs0,794(a5) # 80093b80 <_erodata+0xe>
    8002386e:	12847453          	fmul.d	fs0,fs0,fs0
    80023872:	f20007d3          	fmv.d.x	fa5,zero
    80023876:	441d                	li	s0,7
    80023878:	12f47453          	fmul.d	fs0,fs0,fa5
quickjs-nuttx/quickjs.c:41419
    JS_FreeValue(ctx, val);
    8002387c:	7582                	ld	a1,32(sp)
    8002387e:	7622                	ld	a2,40(sp)
    80023880:	8526                	mv	a0,s1
    80023882:	f1de70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41420
    return ret;
    80023886:	b822                	fsd	fs0,48(sp)
    80023888:	fc22                	sd	s0,56(sp)
    8002388a:	bf51                	j	8002381e <js_string_charCodeAt+0x2e>
quickjs-nuttx/quickjs.c:41413
        if (p->is_wide_char)
    8002388c:	2701                	sext.w	a4,a4
    8002388e:	00075c63          	bgez	a4,800238a6 <js_string_charCodeAt+0xb6>
quickjs-nuttx/quickjs.c:41414
            c = p->u.str16[idx];
    80023892:	07a1                	addi	a5,a5,8
    80023894:	0786                	slli	a5,a5,0x1
    80023896:	943e                	add	s0,s0,a5
    80023898:	00045783          	lhu	a5,0(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8002389c:	e082                	sd	zero,64(sp)
    8002389e:	c0be                	sw	a5,64(sp)
    800238a0:	2406                	fld	fs0,64(sp)
    800238a2:	4401                	li	s0,0
    800238a4:	bfe1                	j	8002387c <js_string_charCodeAt+0x8c>
js_string_charCodeAt():
quickjs-nuttx/quickjs.c:41416
            c = p->u.str8[idx];
    800238a6:	943e                	add	s0,s0,a5
    800238a8:	01044783          	lbu	a5,16(s0)
    800238ac:	bfc5                	j	8002389c <js_string_charCodeAt+0xac>

00000000800238ae <js_string_charAt>:
js_string_charAt():
quickjs-nuttx/quickjs.c:41425
{
    800238ae:	7175                	addi	sp,sp,-144
    800238b0:	e122                	sd	s0,128(sp)
    800238b2:	fca6                	sd	s1,120(sp)
    800238b4:	f8ca                	sd	s2,112(sp)
    800238b6:	f4ce                	sd	s3,104(sp)
    800238b8:	f0d2                	sd	s4,96(sp)
    800238ba:	84be                	mv	s1,a5
    800238bc:	e506                	sd	ra,136(sp)
    800238be:	892a                	mv	s2,a0
    800238c0:	e02e                	sd	a1,0(sp)
    800238c2:	e432                	sd	a2,8(sp)
    800238c4:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:41430
    val = JS_ToStringCheckObject(ctx, this_val);
    800238c6:	dbafd0ef          	jal	ra,80020e80 <JS_ToStringCheckObject>
    800238ca:	f02a                	sd	a0,32(sp)
    800238cc:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41431
    if (JS_IsException(val))
    800238ce:	0005879b          	sext.w	a5,a1
    800238d2:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:41430
    val = JS_ToStringCheckObject(ctx, this_val);
    800238d4:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:41431
    if (JS_IsException(val))
    800238d6:	01479e63          	bne	a5,s4,800238f2 <js_string_charAt+0x44>
quickjs-nuttx/quickjs.c:41432
        return val;
    800238da:	e0aa                	sd	a0,64(sp)
    800238dc:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:41454 (discriminator 1)
}
    800238de:	60aa                	ld	ra,136(sp)
    800238e0:	640a                	ld	s0,128(sp)
    800238e2:	6506                	ld	a0,64(sp)
    800238e4:	65a6                	ld	a1,72(sp)
    800238e6:	74e6                	ld	s1,120(sp)
    800238e8:	7946                	ld	s2,112(sp)
    800238ea:	79a6                	ld	s3,104(sp)
    800238ec:	7a06                	ld	s4,96(sp)
    800238ee:	6149                	addi	sp,sp,144
    800238f0:	8082                	ret
quickjs-nuttx/quickjs.c:41434
    if (JS_ToInt32Sat(ctx, &idx, argv[0])) {
    800238f2:	0009b603          	ld	a2,0(s3)
    800238f6:	0089b683          	ld	a3,8(s3)
    800238fa:	086c                	addi	a1,sp,28
    800238fc:	854a                	mv	a0,s2
    800238fe:	d2dff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80023902:	c909                	beqz	a0,80023914 <js_string_charAt+0x66>
quickjs-nuttx/quickjs.c:41435
        JS_FreeValue(ctx, val);
    80023904:	7582                	ld	a1,32(sp)
    80023906:	7622                	ld	a2,40(sp)
    80023908:	854a                	mv	a0,s2
    8002390a:	e95e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41436
        return JS_EXCEPTION;
    8002390e:	e082                	sd	zero,64(sp)
    80023910:	e4d2                	sd	s4,72(sp)
    80023912:	b7f1                	j	800238de <js_string_charAt+0x30>
quickjs-nuttx/quickjs.c:41438
    if (idx < 0 && is_at)
    80023914:	47f2                	lw	a5,28(sp)
    80023916:	0007d863          	bgez	a5,80023926 <js_string_charAt+0x78>
quickjs-nuttx/quickjs.c:41438 (discriminator 1)
    8002391a:	c491                	beqz	s1,80023926 <js_string_charAt+0x78>
quickjs-nuttx/quickjs.c:41439
        idx += p->len;
    8002391c:	4058                	lw	a4,4(s0)
    8002391e:	1706                	slli	a4,a4,0x21
    80023920:	9305                	srli	a4,a4,0x21
    80023922:	9f3d                	addw	a4,a4,a5
    80023924:	ce3a                	sw	a4,28(sp)
quickjs-nuttx/quickjs.c:41440
    if (idx < 0 || idx >= p->len) {
    80023926:	4772                	lw	a4,28(sp)
    80023928:	00074863          	bltz	a4,80023938 <js_string_charAt+0x8a>
quickjs-nuttx/quickjs.c:41440 (discriminator 1)
    8002392c:	4054                	lw	a3,4(s0)
    8002392e:	02169793          	slli	a5,a3,0x21
    80023932:	9385                	srli	a5,a5,0x21
    80023934:	02f74263          	blt	a4,a5,80023958 <js_string_charAt+0xaa>
quickjs-nuttx/quickjs.c:41441
        if (is_at)
    80023938:	e0a1                	bnez	s1,80023978 <js_string_charAt+0xca>
js_new_string8():
quickjs-nuttx/quickjs.c:3480
        return JS_AtomToString(ctx, JS_ATOM_empty_string);
    8002393a:	02f00593          	li	a1,47
    8002393e:	854a                	mv	a0,s2
    80023940:	992fc0ef          	jal	ra,8001fad2 <JS_AtomToString>
js_string_charAt():
quickjs-nuttx/quickjs.c:41450
        ret = js_new_string_char(ctx, c);
    80023944:	84aa                	mv	s1,a0
    80023946:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:41452
    JS_FreeValue(ctx, val);
    80023948:	7582                	ld	a1,32(sp)
    8002394a:	7622                	ld	a2,40(sp)
    8002394c:	854a                	mv	a0,s2
    8002394e:	e51e70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:41453
    return ret;
    80023952:	e0a6                	sd	s1,64(sp)
    80023954:	e4a2                	sd	s0,72(sp)
    80023956:	b761                	j	800238de <js_string_charAt+0x30>
quickjs-nuttx/quickjs.c:41446
        if (p->is_wide_char)
    80023958:	2681                	sext.w	a3,a3
    8002395a:	0006db63          	bgez	a3,80023970 <js_string_charAt+0xc2>
quickjs-nuttx/quickjs.c:41447
            c = p->u.str16[idx];
    8002395e:	0721                	addi	a4,a4,8
    80023960:	0706                	slli	a4,a4,0x1
    80023962:	943a                	add	s0,s0,a4
    80023964:	00045583          	lhu	a1,0(s0)
quickjs-nuttx/quickjs.c:41450
        ret = js_new_string_char(ctx, c);
    80023968:	854a                	mv	a0,s2
    8002396a:	e30fc0ef          	jal	ra,8001ff9a <js_new_string_char>
    8002396e:	bfd9                	j	80023944 <js_string_charAt+0x96>
quickjs-nuttx/quickjs.c:41449
            c = p->u.str8[idx];
    80023970:	943a                	add	s0,s0,a4
    80023972:	01044583          	lbu	a1,16(s0)
    80023976:	bfcd                	j	80023968 <js_string_charAt+0xba>
quickjs-nuttx/quickjs.c:41442
            ret = JS_UNDEFINED;
    80023978:	440d                	li	s0,3
    8002397a:	4481                	li	s1,0
    8002397c:	b7f1                	j	80023948 <js_string_charAt+0x9a>

000000008002397e <js_number_toPrecision>:
js_number_toPrecision():
quickjs-nuttx/quickjs.c:41000
{
    8002397e:	7159                	addi	sp,sp,-112
    80023980:	f0a2                	sd	s0,96(sp)
    80023982:	eca6                	sd	s1,88(sp)
    80023984:	f486                	sd	ra,104(sp)
    80023986:	84ba                	mv	s1,a4
    80023988:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:41005
    val = js_thisNumberValue(ctx, this_val);
    8002398a:	a3ff50ef          	jal	ra,800193c8 <js_thisNumberValue>
quickjs-nuttx/quickjs.c:41006
    if (JS_IsException(val))
    8002398e:	0005871b          	sext.w	a4,a1
    80023992:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:41005
    val = js_thisNumberValue(ctx, this_val);
    80023994:	862a                	mv	a2,a0
    80023996:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:41006
    if (JS_IsException(val))
    80023998:	00f71b63          	bne	a4,a5,800239ae <js_number_toPrecision+0x30>
quickjs-nuttx/quickjs.c:41007
        return val;
    8002399c:	f82a                	sd	a0,48(sp)
    8002399e:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:41021 (discriminator 1)
}
    800239a0:	70a6                	ld	ra,104(sp)
    800239a2:	7406                	ld	s0,96(sp)
    800239a4:	7542                	ld	a0,48(sp)
    800239a6:	75e2                	ld	a1,56(sp)
    800239a8:	64e6                	ld	s1,88(sp)
    800239aa:	6165                	addi	sp,sp,112
    800239ac:	8082                	ret
quickjs-nuttx/quickjs.c:41008
    if (JS_ToFloat64Free(ctx, &d, val))
    800239ae:	082c                	addi	a1,sp,24
    800239b0:	8522                	mv	a0,s0
    800239b2:	ce5fe0ef          	jal	ra,80022696 <JS_ToFloat64Free>
    800239b6:	c509                	beqz	a0,800239c0 <js_number_toPrecision+0x42>
quickjs-nuttx/quickjs.c:41009
        return JS_EXCEPTION;
    800239b8:	4799                	li	a5,6
    800239ba:	f802                	sd	zero,48(sp)
    800239bc:	fc3e                	sd	a5,56(sp)
    800239be:	b7cd                	j	800239a0 <js_number_toPrecision+0x22>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    800239c0:	6494                	ld	a3,8(s1)
js_number_toPrecision():
quickjs-nuttx/quickjs.c:41010
    if (JS_IsUndefined(argv[0]))
    800239c2:	478d                	li	a5,3
    800239c4:	0006871b          	sext.w	a4,a3
    800239c8:	00f71a63          	bne	a4,a5,800239dc <js_number_toPrecision+0x5e>
quickjs-nuttx/quickjs.c:41016
        return JS_ToStringFree(ctx,  __JS_NewFloat64(ctx, d));
    800239cc:	65e2                	ld	a1,24(sp)
    800239ce:	461d                	li	a2,7
    800239d0:	8522                	mv	a0,s0
    800239d2:	db5fc0ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:41020
    return js_dtoa(ctx, d, 10, p, JS_DTOA_FIXED_FORMAT);
    800239d6:	f82a                	sd	a0,48(sp)
    800239d8:	fc2e                	sd	a1,56(sp)
    800239da:	b7d9                	j	800239a0 <js_number_toPrecision+0x22>
quickjs-nuttx/quickjs.c:41012
    if (JS_ToInt32Sat(ctx, &p, argv[0]))
    800239dc:	6090                	ld	a2,0(s1)
    800239de:	084c                	addi	a1,sp,20
    800239e0:	8522                	mv	a0,s0
    800239e2:	c49ff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    800239e6:	f969                	bnez	a0,800239b8 <js_number_toPrecision+0x3a>
quickjs-nuttx/quickjs.c:41014
    if (!isfinite(d)) {
    800239e8:	00070797          	auipc	a5,0x70
    800239ec:	1987b787          	fld	fa5,408(a5) # 80093b80 <_erodata+0xe>
    800239f0:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    800239f4:	2562                	fld	fa0,24(sp)
    800239f6:	a2f527d3          	feq.d	a5,fa0,fa5
    800239fa:	fbe9                	bnez	a5,800239cc <js_number_toPrecision+0x4e>
quickjs-nuttx/quickjs.c:41014 (discriminator 1)
    800239fc:	22f797d3          	fneg.d	fa5,fa5
    80023a00:	a2f527d3          	feq.d	a5,fa0,fa5
    80023a04:	f7e1                	bnez	a5,800239cc <js_number_toPrecision+0x4e>
quickjs-nuttx/quickjs.c:41014 (discriminator 2)
    80023a06:	a2a527d3          	feq.d	a5,fa0,fa0
    80023a0a:	d3e9                	beqz	a5,800239cc <js_number_toPrecision+0x4e>
quickjs-nuttx/quickjs.c:41018
    if (p < 1 || p > 100)
    80023a0c:	4652                	lw	a2,20(sp)
    80023a0e:	06300793          	li	a5,99
    80023a12:	fff6071b          	addiw	a4,a2,-1
    80023a16:	00e7fa63          	bgeu	a5,a4,80023a2a <js_number_toPrecision+0xac>
quickjs-nuttx/quickjs.c:41019
        return JS_ThrowRangeError(ctx, "invalid number of digits");
    80023a1a:	8522                	mv	a0,s0
    80023a1c:	00047597          	auipc	a1,0x47
    80023a20:	1b458593          	addi	a1,a1,436 # 8006abd0 <qjsc_repl+0x5620>
    80023a24:	eabf50ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80023a28:	b77d                	j	800239d6 <js_number_toPrecision+0x58>
quickjs-nuttx/quickjs.c:41020
    return js_dtoa(ctx, d, 10, p, JS_DTOA_FIXED_FORMAT);
    80023a2a:	4685                	li	a3,1
    80023a2c:	8522                	mv	a0,s0
    80023a2e:	45a9                	li	a1,10
    80023a30:	809fc0ef          	jal	ra,80020238 <js_dtoa>
    80023a34:	b74d                	j	800239d6 <js_number_toPrecision+0x58>

0000000080023a36 <js_number_toFixed>:
js_number_toFixed():
quickjs-nuttx/quickjs.c:40948
{
    80023a36:	7159                	addi	sp,sp,-112
    80023a38:	f0a2                	sd	s0,96(sp)
    80023a3a:	eca6                	sd	s1,88(sp)
    80023a3c:	f486                	sd	ra,104(sp)
    80023a3e:	84ba                	mv	s1,a4
    80023a40:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:40953
    val = js_thisNumberValue(ctx, this_val);
    80023a42:	987f50ef          	jal	ra,800193c8 <js_thisNumberValue>
quickjs-nuttx/quickjs.c:40954
    if (JS_IsException(val))
    80023a46:	0005871b          	sext.w	a4,a1
    80023a4a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40953
    val = js_thisNumberValue(ctx, this_val);
    80023a4c:	862a                	mv	a2,a0
    80023a4e:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:40954
    if (JS_IsException(val))
    80023a50:	00f71b63          	bne	a4,a5,80023a66 <js_number_toFixed+0x30>
quickjs-nuttx/quickjs.c:40955
        return val;
    80023a54:	f82a                	sd	a0,48(sp)
    80023a56:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:40967 (discriminator 1)
}
    80023a58:	70a6                	ld	ra,104(sp)
    80023a5a:	7406                	ld	s0,96(sp)
    80023a5c:	7542                	ld	a0,48(sp)
    80023a5e:	75e2                	ld	a1,56(sp)
    80023a60:	64e6                	ld	s1,88(sp)
    80023a62:	6165                	addi	sp,sp,112
    80023a64:	8082                	ret
quickjs-nuttx/quickjs.c:40956
    if (JS_ToFloat64Free(ctx, &d, val))
    80023a66:	082c                	addi	a1,sp,24
    80023a68:	8522                	mv	a0,s0
    80023a6a:	c2dfe0ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80023a6e:	c509                	beqz	a0,80023a78 <js_number_toFixed+0x42>
quickjs-nuttx/quickjs.c:40957
        return JS_EXCEPTION;
    80023a70:	4799                	li	a5,6
    80023a72:	f802                	sd	zero,48(sp)
    80023a74:	fc3e                	sd	a5,56(sp)
    80023a76:	b7cd                	j	80023a58 <js_number_toFixed+0x22>
quickjs-nuttx/quickjs.c:40958
    if (JS_ToInt32Sat(ctx, &f, argv[0]))
    80023a78:	6090                	ld	a2,0(s1)
    80023a7a:	6494                	ld	a3,8(s1)
    80023a7c:	084c                	addi	a1,sp,20
    80023a7e:	8522                	mv	a0,s0
    80023a80:	babff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80023a84:	f575                	bnez	a0,80023a70 <js_number_toFixed+0x3a>
quickjs-nuttx/quickjs.c:40960
    if (f < 0 || f > 100)
    80023a86:	4652                	lw	a2,20(sp)
    80023a88:	06400793          	li	a5,100
    80023a8c:	00c7fc63          	bgeu	a5,a2,80023aa4 <js_number_toFixed+0x6e>
quickjs-nuttx/quickjs.c:40961
        return JS_ThrowRangeError(ctx, "invalid number of digits");
    80023a90:	00047597          	auipc	a1,0x47
    80023a94:	14058593          	addi	a1,a1,320 # 8006abd0 <qjsc_repl+0x5620>
    80023a98:	8522                	mv	a0,s0
    80023a9a:	e35f50ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:40965
        return js_dtoa(ctx, d, 10, f, JS_DTOA_FRAC_FORMAT);
    80023a9e:	f82a                	sd	a0,48(sp)
    80023aa0:	fc2e                	sd	a1,56(sp)
    80023aa2:	bf5d                	j	80023a58 <js_number_toFixed+0x22>
quickjs-nuttx/quickjs.c:40962
    if (fabs(d) >= 1e21) {
    80023aa4:	67e2                	ld	a5,24(sp)
    80023aa6:	f20787d3          	fmv.d.x	fa5,a5
    80023aaa:	22f7a753          	fabs.d	fa4,fa5
    80023aae:	00070717          	auipc	a4,0x70
    80023ab2:	18273787          	fld	fa5,386(a4) # 80093c30 <_erodata+0xbe>
    80023ab6:	a2e78753          	fle.d	a4,fa5,fa4
    80023aba:	c719                	beqz	a4,80023ac8 <js_number_toFixed+0x92>
quickjs-nuttx/quickjs.c:40963
        return JS_ToStringFree(ctx, __JS_NewFloat64(ctx, d));
    80023abc:	85be                	mv	a1,a5
    80023abe:	461d                	li	a2,7
    80023ac0:	8522                	mv	a0,s0
    80023ac2:	cc5fc0ef          	jal	ra,80020786 <JS_ToStringFree>
    80023ac6:	bfe1                	j	80023a9e <js_number_toFixed+0x68>
quickjs-nuttx/quickjs.c:40965
        return js_dtoa(ctx, d, 10, f, JS_DTOA_FRAC_FORMAT);
    80023ac8:	f2078553          	fmv.d.x	fa0,a5
    80023acc:	4689                	li	a3,2
    80023ace:	8522                	mv	a0,s0
    80023ad0:	45a9                	li	a1,10
    80023ad2:	f66fc0ef          	jal	ra,80020238 <js_dtoa>
    80023ad6:	b7e1                	j	80023a9e <js_number_toFixed+0x68>

0000000080023ad8 <js_number_toExponential>:
js_number_toExponential():
quickjs-nuttx/quickjs.c:40971
{
    80023ad8:	7159                	addi	sp,sp,-112
    80023ada:	f0a2                	sd	s0,96(sp)
    80023adc:	eca6                	sd	s1,88(sp)
    80023ade:	f486                	sd	ra,104(sp)
    80023ae0:	84ba                	mv	s1,a4
    80023ae2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:40976
    val = js_thisNumberValue(ctx, this_val);
    80023ae4:	8e5f50ef          	jal	ra,800193c8 <js_thisNumberValue>
quickjs-nuttx/quickjs.c:40977
    if (JS_IsException(val))
    80023ae8:	0005871b          	sext.w	a4,a1
    80023aec:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:40976
    val = js_thisNumberValue(ctx, this_val);
    80023aee:	862a                	mv	a2,a0
    80023af0:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:40977
    if (JS_IsException(val))
    80023af2:	00f71b63          	bne	a4,a5,80023b08 <js_number_toExponential+0x30>
quickjs-nuttx/quickjs.c:40978
        return val;
    80023af6:	f82a                	sd	a0,48(sp)
    80023af8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:40996 (discriminator 1)
}
    80023afa:	70a6                	ld	ra,104(sp)
    80023afc:	7406                	ld	s0,96(sp)
    80023afe:	7542                	ld	a0,48(sp)
    80023b00:	75e2                	ld	a1,56(sp)
    80023b02:	64e6                	ld	s1,88(sp)
    80023b04:	6165                	addi	sp,sp,112
    80023b06:	8082                	ret
quickjs-nuttx/quickjs.c:40979
    if (JS_ToFloat64Free(ctx, &d, val))
    80023b08:	082c                	addi	a1,sp,24
    80023b0a:	8522                	mv	a0,s0
    80023b0c:	b8bfe0ef          	jal	ra,80022696 <JS_ToFloat64Free>
    80023b10:	c509                	beqz	a0,80023b1a <js_number_toExponential+0x42>
quickjs-nuttx/quickjs.c:40980
        return JS_EXCEPTION;
    80023b12:	4799                	li	a5,6
    80023b14:	f802                	sd	zero,48(sp)
    80023b16:	fc3e                	sd	a5,56(sp)
    80023b18:	b7cd                	j	80023afa <js_number_toExponential+0x22>
quickjs-nuttx/quickjs.c:40981
    if (JS_ToInt32Sat(ctx, &f, argv[0]))
    80023b1a:	6090                	ld	a2,0(s1)
    80023b1c:	6494                	ld	a3,8(s1)
    80023b1e:	084c                	addi	a1,sp,20
    80023b20:	8522                	mv	a0,s0
    80023b22:	b09ff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80023b26:	f575                	bnez	a0,80023b12 <js_number_toExponential+0x3a>
quickjs-nuttx/quickjs.c:40983
    if (!isfinite(d)) {
    80023b28:	00070717          	auipc	a4,0x70
    80023b2c:	05873787          	fld	fa5,88(a4) # 80093b80 <_erodata+0xe>
    80023b30:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80023b34:	67e2                	ld	a5,24(sp)
    80023b36:	f2078753          	fmv.d.x	fa4,a5
    80023b3a:	a2f72753          	feq.d	a4,fa4,fa5
    80023b3e:	eb09                	bnez	a4,80023b50 <js_number_toExponential+0x78>
quickjs-nuttx/quickjs.c:40983 (discriminator 1)
    80023b40:	22f797d3          	fneg.d	fa5,fa5
    80023b44:	a2f72753          	feq.d	a4,fa4,fa5
    80023b48:	e701                	bnez	a4,80023b50 <js_number_toExponential+0x78>
quickjs-nuttx/quickjs.c:40983 (discriminator 2)
    80023b4a:	a2e72753          	feq.d	a4,fa4,fa4
    80023b4e:	eb09                	bnez	a4,80023b60 <js_number_toExponential+0x88>
quickjs-nuttx/quickjs.c:40984
        return JS_ToStringFree(ctx,  __JS_NewFloat64(ctx, d));
    80023b50:	85be                	mv	a1,a5
    80023b52:	461d                	li	a2,7
    80023b54:	8522                	mv	a0,s0
    80023b56:	c31fc0ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:40995
    return js_dtoa(ctx, d, 10, f, flags | JS_DTOA_FORCE_EXP);
    80023b5a:	f82a                	sd	a0,48(sp)
    80023b5c:	fc2e                	sd	a1,56(sp)
    80023b5e:	bf71                	j	80023afa <js_number_toExponential+0x22>
quickjs-nuttx/quickjs.c:40986
    if (JS_IsUndefined(argv[0])) {
    80023b60:	4494                	lw	a3,8(s1)
    80023b62:	470d                	li	a4,3
    80023b64:	00e69f63          	bne	a3,a4,80023b82 <js_number_toExponential+0xaa>
quickjs-nuttx/quickjs.c:40988
        f = 0;
    80023b68:	ca02                	sw	zero,20(sp)
quickjs-nuttx/quickjs.c:40995
    return js_dtoa(ctx, d, 10, f, flags | JS_DTOA_FORCE_EXP);
    80023b6a:	4652                	lw	a2,20(sp)
    80023b6c:	f2078553          	fmv.d.x	fa0,a5
    80023b70:	00456513          	ori	a0,a0,4
    80023b74:	0005069b          	sext.w	a3,a0
    80023b78:	45a9                	li	a1,10
    80023b7a:	8522                	mv	a0,s0
    80023b7c:	ebcfc0ef          	jal	ra,80020238 <js_dtoa>
    80023b80:	bfe9                	j	80023b5a <js_number_toExponential+0x82>
quickjs-nuttx/quickjs.c:40990
        if (f < 0 || f > 100)
    80023b82:	4752                	lw	a4,20(sp)
    80023b84:	06400693          	li	a3,100
    80023b88:	00e6fa63          	bgeu	a3,a4,80023b9c <js_number_toExponential+0xc4>
quickjs-nuttx/quickjs.c:40991
            return JS_ThrowRangeError(ctx, "invalid number of digits");
    80023b8c:	8522                	mv	a0,s0
    80023b8e:	00047597          	auipc	a1,0x47
    80023b92:	04258593          	addi	a1,a1,66 # 8006abd0 <qjsc_repl+0x5620>
    80023b96:	d39f50ef          	jal	ra,800198ce <JS_ThrowRangeError>
    80023b9a:	b7c1                	j	80023b5a <js_number_toExponential+0x82>
quickjs-nuttx/quickjs.c:40992
        f++;
    80023b9c:	2705                	addiw	a4,a4,1
    80023b9e:	ca3a                	sw	a4,20(sp)
quickjs-nuttx/quickjs.c:40993
        flags = JS_DTOA_FIXED_FORMAT;
    80023ba0:	4505                	li	a0,1
    80023ba2:	b7e1                	j	80023b6a <js_number_toExponential+0x92>

0000000080023ba4 <js_atomics_isLockFree>:
js_atomics_isLockFree():
quickjs-nuttx/quickjs.c:55307
}

static JSValue js_atomics_isLockFree(JSContext *ctx,
                                     JSValueConst this_obj,
                                     int argc, JSValueConst *argv)
{
    80023ba4:	715d                	addi	sp,sp,-80
    80023ba6:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs.c:55309
    int v, ret;
    if (JS_ToInt32Sat(ctx, &v, argv[0]))
    80023ba8:	6310                	ld	a2,0(a4)
    80023baa:	6714                	ld	a3,8(a4)
    80023bac:	086c                	addi	a1,sp,28
    80023bae:	a7dff0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    80023bb2:	c909                	beqz	a0,80023bc4 <js_atomics_isLockFree+0x20>
quickjs-nuttx/quickjs.c:55310
        return JS_EXCEPTION;
    80023bb4:	f002                	sd	zero,32(sp)
    80023bb6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:55313 (discriminator 8)
    ret = (v == 1 || v == 2 || v == 4 || v == 8);
    return JS_NewBool(ctx, ret);
}
    80023bb8:	60a6                	ld	ra,72(sp)
    80023bba:	f43e                	sd	a5,40(sp)
    80023bbc:	7502                	ld	a0,32(sp)
    80023bbe:	75a2                	ld	a1,40(sp)
    80023bc0:	6161                	addi	sp,sp,80
    80023bc2:	8082                	ret
quickjs-nuttx/quickjs.c:55311
    ret = (v == 1 || v == 2 || v == 4 || v == 8);
    80023bc4:	47f2                	lw	a5,28(sp)
    80023bc6:	4705                	li	a4,1
    80023bc8:	fff7869b          	addiw	a3,a5,-1
    80023bcc:	00d77763          	bgeu	a4,a3,80023bda <js_atomics_isLockFree+0x36>
quickjs-nuttx/quickjs.c:55311 (discriminator 2)
    80023bd0:	37f1                	addiw	a5,a5,-4
    80023bd2:	9bed                	andi	a5,a5,-5
    80023bd4:	2781                	sext.w	a5,a5
    80023bd6:	0017b713          	seqz	a4,a5
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 8)
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80023bda:	da02                	sw	zero,52(sp)
    80023bdc:	d83a                	sw	a4,48(sp)
    80023bde:	77c2                	ld	a5,48(sp)
    80023be0:	f03e                	sd	a5,32(sp)
    80023be2:	4785                	li	a5,1
    80023be4:	bfd1                	j	80023bb8 <js_atomics_isLockFree+0x14>

0000000080023be6 <JS_ToInt32Clamp>:
JS_ToInt32Clamp():
quickjs-nuttx/quickjs.c:10735
{
    80023be6:	715d                	addi	sp,sp,-80
    80023be8:	e0a2                	sd	s0,64(sp)
    80023bea:	f052                	sd	s4,32(sp)
    80023bec:	842e                	mv	s0,a1
    80023bee:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:10736
    int res = JS_ToInt32SatFree(ctx, pres, JS_DupValue(ctx, val));
    80023bf0:	85b6                	mv	a1,a3
    80023bf2:	8532                	mv	a0,a2
quickjs-nuttx/quickjs.c:10735
{
    80023bf4:	fc26                	sd	s1,56(sp)
    80023bf6:	f84a                	sd	s2,48(sp)
    80023bf8:	f44e                	sd	s3,40(sp)
    80023bfa:	e486                	sd	ra,72(sp)
    80023bfc:	893a                	mv	s2,a4
    80023bfe:	89be                	mv	s3,a5
    80023c00:	84c2                	mv	s1,a6
quickjs-nuttx/quickjs.c:10736
    int res = JS_ToInt32SatFree(ctx, pres, JS_DupValue(ctx, val));
    80023c02:	819e60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80023c06:	862a                	mv	a2,a0
    80023c08:	86ae                	mv	a3,a1
    80023c0a:	8552                	mv	a0,s4
    80023c0c:	85a2                	mv	a1,s0
    80023c0e:	951ff0ef          	jal	ra,8002355e <JS_ToInt32SatFree>
quickjs-nuttx/quickjs.c:10737
    if (res == 0) {
    80023c12:	e911                	bnez	a0,80023c26 <JS_ToInt32Clamp+0x40>
quickjs-nuttx/quickjs.c:10738
        if (*pres < min) {
    80023c14:	00042803          	lw	a6,0(s0)
    80023c18:	03285263          	bge	a6,s2,80023c3c <JS_ToInt32Clamp+0x56>
quickjs-nuttx/quickjs.c:10739
            *pres += min_offset;
    80023c1c:	010487bb          	addw	a5,s1,a6
quickjs-nuttx/quickjs.c:10740
            if (*pres < min)
    80023c20:	0127cb63          	blt	a5,s2,80023c36 <JS_ToInt32Clamp+0x50>
quickjs-nuttx/quickjs.c:10739
            *pres += min_offset;
    80023c24:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:10748
}
    80023c26:	60a6                	ld	ra,72(sp)
    80023c28:	6406                	ld	s0,64(sp)
    80023c2a:	74e2                	ld	s1,56(sp)
    80023c2c:	7942                	ld	s2,48(sp)
    80023c2e:	79a2                	ld	s3,40(sp)
    80023c30:	7a02                	ld	s4,32(sp)
    80023c32:	6161                	addi	sp,sp,80
    80023c34:	8082                	ret
quickjs-nuttx/quickjs.c:10741
                *pres = min;
    80023c36:	01242023          	sw	s2,0(s0)
    80023c3a:	b7f5                	j	80023c26 <JS_ToInt32Clamp+0x40>
quickjs-nuttx/quickjs.c:10743
            if (*pres > max)
    80023c3c:	ff09d5e3          	bge	s3,a6,80023c26 <JS_ToInt32Clamp+0x40>
quickjs-nuttx/quickjs.c:10744
                *pres = max;
    80023c40:	01342023          	sw	s3,0(s0)
    80023c44:	b7cd                	j	80023c26 <JS_ToInt32Clamp+0x40>

0000000080023c46 <js_typed_array_indexOf>:
js_typed_array_indexOf():
quickjs-nuttx/quickjs.c:53631
{
    80023c46:	7135                	addi	sp,sp,-160
    80023c48:	e922                	sd	s0,144(sp)
    80023c4a:	e526                	sd	s1,136(sp)
    80023c4c:	e14a                	sd	s2,128(sp)
    80023c4e:	fcce                	sd	s3,120(sp)
    80023c50:	ed06                	sd	ra,152(sp)
    80023c52:	f8d2                	sd	s4,112(sp)
    80023c54:	f4d6                	sd	s5,104(sp)
    80023c56:	f0da                	sd	s6,96(sp)
    80023c58:	892a                	mv	s2,a0
    80023c5a:	e02e                	sd	a1,0(sp)
    80023c5c:	e432                	sd	a2,8(sp)
    80023c5e:	89b6                	mv	s3,a3
    80023c60:	843a                	mv	s0,a4
    80023c62:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:53638
    len = js_typed_array_get_length_internal(ctx, this_val);
    80023c64:	811f50ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
quickjs-nuttx/quickjs.c:53639
    if (len < 0)
    80023c68:	36054963          	bltz	a0,80023fda <js_typed_array_indexOf+0x394>
    80023c6c:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:53641
    if (len == 0)
    80023c6e:	e119                	bnez	a0,80023c74 <js_typed_array_indexOf+0x2e>
quickjs-nuttx/quickjs.c:53717
    switch (p->class_id) {
    80023c70:	557d                	li	a0,-1
    80023c72:	a241                	j	80023df2 <js_typed_array_indexOf+0x1ac>
quickjs-nuttx/quickjs.c:53644
    if (special == special_lastIndexOf) {
    80023c74:	4785                	li	a5,1
    80023c76:	08f49c63          	bne	s1,a5,80023d0e <js_typed_array_indexOf+0xc8>
quickjs-nuttx/quickjs.c:53645
        k = len - 1;
    80023c7a:	fff5079b          	addiw	a5,a0,-1
    80023c7e:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs.c:53646
        if (argc > 1) {
    80023c80:	0534c063          	blt	s1,s3,80023cc0 <js_typed_array_indexOf+0x7a>
quickjs-nuttx/quickjs.c:53665
        inc = -1;
    80023c84:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:53664
        stop = -1;
    80023c86:	5a7d                	li	s4,-1
quickjs-nuttx/quickjs.c:53676
    p = JS_VALUE_GET_OBJ(this_val);
    80023c88:	6b02                	ld	s6,0(sp)
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    80023c8a:	030b3783          	ld	a5,48(s6)
    80023c8e:	6f9c                	ld	a5,24(a5)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    80023c90:	7b9c                	ld	a5,48(a5)
js_typed_array_indexOf():
quickjs-nuttx/quickjs.c:53679
    if (typed_array_is_detached(ctx, p)) {
    80023c92:	0047c783          	lbu	a5,4(a5)
    80023c96:	cfc9                	beqz	a5,80023d30 <js_typed_array_indexOf+0xea>
quickjs-nuttx/quickjs.c:53681
        if (special == special_includes && JS_IsUndefined(argv[0]) && len > 0)
    80023c98:	57fd                	li	a5,-1
    80023c9a:	06f49863          	bne	s1,a5,80023d0a <js_typed_array_indexOf+0xc4>
quickjs-nuttx/quickjs.c:53681 (discriminator 1)
    80023c9e:	4408                	lw	a0,8(s0)
    80023ca0:	1575                	addi	a0,a0,-3
    80023ca2:	00a03533          	snez	a0,a0
    80023ca6:	40a00533          	neg	a0,a0
quickjs-nuttx/quickjs.c:53857
        return JS_NewBool(ctx, res >= 0);
    80023caa:	fff54513          	not	a0,a0
    80023cae:	01f5551b          	srliw	a0,a0,0x1f
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80023cb2:	c282                	sw	zero,68(sp)
    80023cb4:	c0aa                	sw	a0,64(sp)
    80023cb6:	6786                	ld	a5,64(sp)
    80023cb8:	f83e                	sd	a5,48(sp)
    80023cba:	4785                	li	a5,1
js_typed_array_indexOf():
quickjs-nuttx/quickjs.c:53862
    return JS_EXCEPTION;
    80023cbc:	fc3e                	sd	a5,56(sp)
    80023cbe:	a291                	j	80023e02 <js_typed_array_indexOf+0x1bc>
quickjs-nuttx/quickjs.c:53647
            if (JS_ToFloat64(ctx, &d, argv[1]))
    80023cc0:	6810                	ld	a2,16(s0)
    80023cc2:	6c14                	ld	a3,24(s0)
    80023cc4:	102c                	addi	a1,sp,40
    80023cc6:	854a                	mv	a0,s2
    80023cc8:	a75fe0ef          	jal	ra,8002273c <JS_ToFloat64>
    80023ccc:	30051763          	bnez	a0,80023fda <js_typed_array_indexOf+0x394>
quickjs-nuttx/quickjs.c:53649
            if (isnan(d)) {
    80023cd0:	37a2                	fld	fa5,40(sp)
    80023cd2:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80023cd6:	e399                	bnez	a5,80023cdc <js_typed_array_indexOf+0x96>
quickjs-nuttx/quickjs.c:53650
                k = 0;
    80023cd8:	ce02                	sw	zero,28(sp)
    80023cda:	b76d                	j	80023c84 <js_typed_array_indexOf+0x3e>
quickjs-nuttx/quickjs.c:53652
                if (d >= 0) {
    80023cdc:	f20006d3          	fmv.d.x	fa3,zero
    80023ce0:	a2f687d3          	fle.d	a5,fa3,fa5
    80023ce4:	cb99                	beqz	a5,80023cfa <js_typed_array_indexOf+0xb4>
quickjs-nuttx/quickjs.c:53653
                    if (d < k) {
    80023ce6:	47f2                	lw	a5,28(sp)
    80023ce8:	d2078753          	fcvt.d.w	fa4,a5
    80023cec:	a2e797d3          	flt.d	a5,fa5,fa4
    80023cf0:	dbd1                	beqz	a5,80023c84 <js_typed_array_indexOf+0x3e>
quickjs-nuttx/quickjs.c:53660
                    k = d;
    80023cf2:	c20797d3          	fcvt.w.d	a5,fa5,rtz
    80023cf6:	ce3e                	sw	a5,28(sp)
    80023cf8:	b771                	j	80023c84 <js_typed_array_indexOf+0x3e>
quickjs-nuttx/quickjs.c:53657
                    d += len;
    80023cfa:	d20a8753          	fcvt.d.w	fa4,s5
    80023cfe:	02f777d3          	fadd.d	fa5,fa4,fa5
quickjs-nuttx/quickjs.c:53658
                    if (d < 0)
    80023d02:	a2d797d3          	flt.d	a5,fa5,fa3
quickjs-nuttx/quickjs.c:53657
                    d += len;
    80023d06:	b43e                	fsd	fa5,40(sp)
quickjs-nuttx/quickjs.c:53658
                    if (d < 0)
    80023d08:	d7ed                	beqz	a5,80023cf2 <js_typed_array_indexOf+0xac>
quickjs-nuttx/quickjs.c:53633
    int len, tag, is_int, is_bigint, k, stop, inc, res = -1;
    80023d0a:	557d                	li	a0,-1
    80023d0c:	a0f5                	j	80023df8 <js_typed_array_indexOf+0x1b2>
quickjs-nuttx/quickjs.c:53667
        k = 0;
    80023d0e:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs.c:53668
        if (argc > 1) {
    80023d10:	0137dd63          	bge	a5,s3,80023d2a <js_typed_array_indexOf+0xe4>
quickjs-nuttx/quickjs.c:53669
            if (JS_ToInt32Clamp(ctx, &k, argv[1], 0, len, len))
    80023d14:	6810                	ld	a2,16(s0)
    80023d16:	6c14                	ld	a3,24(s0)
    80023d18:	882a                	mv	a6,a0
    80023d1a:	87aa                	mv	a5,a0
    80023d1c:	4701                	li	a4,0
    80023d1e:	086c                	addi	a1,sp,28
    80023d20:	854a                	mv	a0,s2
    80023d22:	ec5ff0ef          	jal	ra,80023be6 <JS_ToInt32Clamp>
    80023d26:	2a051a63          	bnez	a0,80023fda <js_typed_array_indexOf+0x394>
    80023d2a:	8a56                	mv	s4,s5
quickjs-nuttx/quickjs.c:53673
        inc = 1;
    80023d2c:	4985                	li	s3,1
    80023d2e:	bfa9                	j	80023c88 <js_typed_array_indexOf+0x42>
quickjs-nuttx/quickjs.c:53689
    tag = JS_VALUE_GET_NORM_TAG(argv[0]);
    80023d30:	4414                	lw	a3,8(s0)
quickjs-nuttx/quickjs.c:53688
    v64 = 0; /* avoid warning */
    80023d32:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:53690
    if (tag == JS_TAG_INT) {
    80023d34:	ea95                	bnez	a3,80023d68 <js_typed_array_indexOf+0x122>
quickjs-nuttx/quickjs.c:53692
        v64 = JS_VALUE_GET_INT(argv[0]);
    80023d36:	401c                	lw	a5,0(s0)
quickjs-nuttx/quickjs.c:53691
        is_int = 1;
    80023d38:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:53693
        d = v64;
    80023d3a:	d20787d3          	fcvt.d.w	fa5,a5
quickjs-nuttx/quickjs.c:53692
        v64 = JS_VALUE_GET_INT(argv[0]);
    80023d3e:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:53693
        d = v64;
    80023d40:	b43e                	fsd	fa5,40(sp)
quickjs-nuttx/quickjs.c:53717
    switch (p->class_id) {
    80023d42:	006b5703          	lhu	a4,6(s6)
    80023d46:	47a9                	li	a5,10
    80023d48:	372d                	addiw	a4,a4,-21
    80023d4a:	03071613          	slli	a2,a4,0x30
    80023d4e:	9241                	srli	a2,a2,0x30
    80023d50:	f2c7e0e3          	bltu	a5,a2,80023c70 <js_typed_array_indexOf+0x2a>
    80023d54:	00261713          	slli	a4,a2,0x2
    80023d58:	00047617          	auipc	a2,0x47
    80023d5c:	e9460613          	addi	a2,a2,-364 # 8006abec <qjsc_repl+0x563c>
    80023d60:	9732                	add	a4,a4,a2
    80023d62:	431c                	lw	a5,0(a4)
    80023d64:	97b2                	add	a5,a5,a2
    80023d66:	8782                	jr	a5
quickjs-nuttx/quickjs.c:53695
    if (tag == JS_TAG_FLOAT64) {
    80023d68:	479d                	li	a5,7
    80023d6a:	00f69d63          	bne	a3,a5,80023d84 <js_typed_array_indexOf+0x13e>
quickjs-nuttx/quickjs.c:53696
        d = JS_VALUE_GET_FLOAT64(argv[0]);
    80023d6e:	201c                	fld	fa5,0(s0)
quickjs-nuttx/quickjs.c:53686
    is_bigint = 0;
    80023d70:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:53697
        v64 = d;
    80023d72:	c22797d3          	fcvt.l.d	a5,fa5,rtz
quickjs-nuttx/quickjs.c:53696
        d = JS_VALUE_GET_FLOAT64(argv[0]);
    80023d76:	b43e                	fsd	fa5,40(sp)
quickjs-nuttx/quickjs.c:53698
        is_int = (v64 == d);
    80023d78:	d227f753          	fcvt.d.l	fa4,a5
quickjs-nuttx/quickjs.c:53697
        v64 = d;
    80023d7c:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:53698
        is_int = (v64 == d);
    80023d7e:	a2f72453          	feq.d	s0,fa4,fa5
    80023d82:	b7c1                	j	80023d42 <js_typed_array_indexOf+0xfc>
quickjs-nuttx/quickjs.c:53699
    } else if (tag == JS_TAG_BIG_INT) {
    80023d84:	57d9                	li	a5,-10
    80023d86:	eef695e3          	bne	a3,a5,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53702
        if (p->class_id == JS_CLASS_BIG_INT64_ARRAY) {
    80023d8a:	006b5783          	lhu	a5,6(s6)
    80023d8e:	4771                	li	a4,28
quickjs-nuttx/quickjs.c:53700
        JSBigFloat *p1 = JS_VALUE_GET_PTR(argv[0]);
    80023d90:	600c                	ld	a1,0(s0)
quickjs-nuttx/quickjs.c:53702
        if (p->class_id == JS_CLASS_BIG_INT64_ARRAY) {
    80023d92:	00e79d63          	bne	a5,a4,80023dac <js_typed_array_indexOf+0x166>
quickjs-nuttx/quickjs.c:53703
            if (bf_get_int64(&v64, &p1->num, 0) != 0)
    80023d96:	4601                	li	a2,0
    80023d98:	05a1                	addi	a1,a1,8
    80023d9a:	1008                	addi	a0,sp,32
    80023d9c:	2d2350ef          	jal	ra,8005906e <bf_get_int64>
quickjs-nuttx/quickjs.c:53706
            if (bf_get_uint64((uint64_t *)&v64, &p1->num) != 0)
    80023da0:	ec0518e3          	bnez	a0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53711
        d = 0;
    80023da4:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:53712
        is_bigint = 1;
    80023da6:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:53687
    is_int = 0; /* avoid warning */
    80023da8:	4401                	li	s0,0
    80023daa:	bf61                	j	80023d42 <js_typed_array_indexOf+0xfc>
quickjs-nuttx/quickjs.c:53705
        } else if (p->class_id == JS_CLASS_BIG_UINT64_ARRAY) {
    80023dac:	4775                	li	a4,29
    80023dae:	ece791e3          	bne	a5,a4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53706
            if (bf_get_uint64((uint64_t *)&v64, &p1->num) != 0)
    80023db2:	05a1                	addi	a1,a1,8
    80023db4:	1008                	addi	a0,sp,32
    80023db6:	374350ef          	jal	ra,8005912a <bf_get_uint64>
    80023dba:	b7dd                	j	80023da0 <js_typed_array_indexOf+0x15a>
quickjs-nuttx/quickjs.c:53719
        if (is_int && (int8_t)v64 == v64)
    80023dbc:	ea040ae3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53719 (discriminator 1)
    80023dc0:	7782                	ld	a5,32(sp)
    80023dc2:	0187971b          	slliw	a4,a5,0x18
    80023dc6:	4187571b          	sraiw	a4,a4,0x18
quickjs-nuttx/quickjs.c:53724 (discriminator 1)
        if (is_int && (uint8_t)v64 == v64) {
    80023dca:	eae793e3          	bne	a5,a4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53729
            v = v64;
    80023dce:	02015583          	lhu	a1,32(sp)
quickjs-nuttx/quickjs.c:53730
            if (inc > 0) {
    80023dd2:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:53728
            pv = p->u.array.u.uint8_ptr;
    80023dd4:	038b3403          	ld	s0,56(s6)
quickjs-nuttx/quickjs.c:53736
                    if (pv[k] == v) {
    80023dd8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:53730
            if (inc > 0) {
    80023ddc:	04e99e63          	bne	s3,a4,80023e38 <js_typed_array_indexOf+0x1f2>
quickjs-nuttx/quickjs.c:53731
                pp = memchr(pv + k, v, len - k);
    80023de0:	4572                	lw	a0,28(sp)
    80023de2:	40aa863b          	subw	a2,s5,a0
    80023de6:	9522                	add	a0,a0,s0
    80023de8:	5d33f0ef          	jal	ra,80063bba <memchr>
quickjs-nuttx/quickjs.c:53732
                if (pp)
    80023dec:	e80502e3          	beqz	a0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53733
                    res = pp - pv;
    80023df0:	9d01                	subw	a0,a0,s0
quickjs-nuttx/quickjs.c:53856
    if (special == special_includes)
    80023df2:	57fd                	li	a5,-1
    80023df4:	eaf48be3          	beq	s1,a5,80023caa <js_typed_array_indexOf+0x64>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80023df8:	ca82                	sw	zero,84(sp)
    80023dfa:	c8aa                	sw	a0,80(sp)
    80023dfc:	67c6                	ld	a5,80(sp)
    80023dfe:	fc02                	sd	zero,56(sp)
    80023e00:	f83e                	sd	a5,48(sp)
js_typed_array_indexOf():
quickjs-nuttx/quickjs.c:53863
}
    80023e02:	60ea                	ld	ra,152(sp)
    80023e04:	644a                	ld	s0,144(sp)
    80023e06:	7542                	ld	a0,48(sp)
    80023e08:	75e2                	ld	a1,56(sp)
    80023e0a:	64aa                	ld	s1,136(sp)
    80023e0c:	690a                	ld	s2,128(sp)
    80023e0e:	79e6                	ld	s3,120(sp)
    80023e10:	7a46                	ld	s4,112(sp)
    80023e12:	7aa6                	ld	s5,104(sp)
    80023e14:	7b06                	ld	s6,96(sp)
    80023e16:	610d                	addi	sp,sp,160
    80023e18:	8082                	ret
quickjs-nuttx/quickjs.c:53724
        if (is_int && (uint8_t)v64 == v64) {
    80023e1a:	e4040be3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53724 (discriminator 1)
    80023e1e:	7782                	ld	a5,32(sp)
    80023e20:	0ff7f713          	zext.b	a4,a5
    80023e24:	b75d                	j	80023dca <js_typed_array_indexOf+0x184>
quickjs-nuttx/quickjs.c:53736
                    if (pv[k] == v) {
    80023e26:	00a40733          	add	a4,s0,a0
    80023e2a:	00074703          	lbu	a4,0(a4)
    80023e2e:	fcf702e3          	beq	a4,a5,80023df2 <js_typed_array_indexOf+0x1ac>
quickjs-nuttx/quickjs.c:53735
                for (; k != stop; k += inc) {
    80023e32:	0135053b          	addw	a0,a0,s3
    80023e36:	ce2a                	sw	a0,28(sp)
quickjs-nuttx/quickjs.c:53735 (discriminator 1)
    80023e38:	4572                	lw	a0,28(sp)
    80023e3a:	ff4516e3          	bne	a0,s4,80023e26 <js_typed_array_indexOf+0x1e0>
    80023e3e:	bd0d                	j	80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53745
        if (is_int && (int16_t)v64 == v64)
    80023e40:	e20408e3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53745 (discriminator 1)
    80023e44:	7782                	ld	a5,32(sp)
    80023e46:	0107971b          	slliw	a4,a5,0x10
    80023e4a:	4107571b          	sraiw	a4,a4,0x10
quickjs-nuttx/quickjs.c:53749 (discriminator 1)
        if (is_int && (uint16_t)v64 == v64) {
    80023e4e:	e2e791e3          	bne	a5,a4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53753
            pv = p->u.array.u.uint16_ptr;
    80023e52:	038b3703          	ld	a4,56(s6)
quickjs-nuttx/quickjs.c:53756
                if (pv[k] == v) {
    80023e56:	02015683          	lhu	a3,32(sp)
quickjs-nuttx/quickjs.c:53755 (discriminator 1)
            for (; k != stop; k += inc) {
    80023e5a:	4572                	lw	a0,28(sp)
    80023e5c:	e1450ae3          	beq	a0,s4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53756
                if (pv[k] == v) {
    80023e60:	00151793          	slli	a5,a0,0x1
    80023e64:	97ba                	add	a5,a5,a4
    80023e66:	0007d783          	lhu	a5,0(a5)
    80023e6a:	f8d784e3          	beq	a5,a3,80023df2 <js_typed_array_indexOf+0x1ac>
quickjs-nuttx/quickjs.c:53755
            for (; k != stop; k += inc) {
    80023e6e:	0135053b          	addw	a0,a0,s3
    80023e72:	ce2a                	sw	a0,28(sp)
    80023e74:	b7dd                	j	80023e5a <js_typed_array_indexOf+0x214>
quickjs-nuttx/quickjs.c:53749
        if (is_int && (uint16_t)v64 == v64) {
    80023e76:	de040de3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53749 (discriminator 1)
    80023e7a:	7782                	ld	a5,32(sp)
    80023e7c:	03079713          	slli	a4,a5,0x30
    80023e80:	9341                	srli	a4,a4,0x30
    80023e82:	b7f1                	j	80023e4e <js_typed_array_indexOf+0x208>
quickjs-nuttx/quickjs.c:53764
        if (is_int && (int32_t)v64 == v64)
    80023e84:	de0406e3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53764 (discriminator 1)
    80023e88:	7782                	ld	a5,32(sp)
    80023e8a:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.c:53768 (discriminator 1)
        if (is_int && (uint32_t)v64 == v64) {
    80023e8e:	dee791e3          	bne	a5,a4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53772
            pv = p->u.array.u.uint32_ptr;
    80023e92:	038b3703          	ld	a4,56(s6)
quickjs-nuttx/quickjs.c:53773
            v = v64;
    80023e96:	5682                	lw	a3,32(sp)
quickjs-nuttx/quickjs.c:53774 (discriminator 1)
            for (; k != stop; k += inc) {
    80023e98:	4572                	lw	a0,28(sp)
    80023e9a:	dd450be3          	beq	a0,s4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53775
                if (pv[k] == v) {
    80023e9e:	00251793          	slli	a5,a0,0x2
    80023ea2:	97ba                	add	a5,a5,a4
    80023ea4:	439c                	lw	a5,0(a5)
    80023ea6:	f4d786e3          	beq	a5,a3,80023df2 <js_typed_array_indexOf+0x1ac>
quickjs-nuttx/quickjs.c:53774
            for (; k != stop; k += inc) {
    80023eaa:	0135053b          	addw	a0,a0,s3
    80023eae:	ce2a                	sw	a0,28(sp)
    80023eb0:	b7e5                	j	80023e98 <js_typed_array_indexOf+0x252>
quickjs-nuttx/quickjs.c:53768
        if (is_int && (uint32_t)v64 == v64) {
    80023eb2:	da040fe3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53768 (discriminator 1)
    80023eb6:	7782                	ld	a5,32(sp)
    80023eb8:	02079713          	slli	a4,a5,0x20
    80023ebc:	9301                	srli	a4,a4,0x20
    80023ebe:	bfc1                	j	80023e8e <js_typed_array_indexOf+0x248>
quickjs-nuttx/quickjs.c:53783
        if (is_bigint)
    80023ec0:	da0698e3          	bnez	a3,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53785
        if (isnan(d)) {
    80023ec4:	37a2                	fld	fa5,40(sp)
    80023ec6:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80023eca:	eb85                	bnez	a5,80023efa <js_typed_array_indexOf+0x2b4>
quickjs-nuttx/quickjs.c:53788
            if (special != special_includes)
    80023ecc:	57fd                	li	a5,-1
    80023ece:	e2f49ee3          	bne	s1,a5,80023d0a <js_typed_array_indexOf+0xc4>
quickjs-nuttx/quickjs.c:53786
            const float *pv = p->u.array.u.float_ptr;
    80023ed2:	038b3703          	ld	a4,56(s6)
quickjs-nuttx/quickjs.c:53790 (discriminator 1)
            for (; k != stop; k += inc) {
    80023ed6:	4572                	lw	a0,28(sp)
    80023ed8:	01451463          	bne	a0,s4,80023ee0 <js_typed_array_indexOf+0x29a>
quickjs-nuttx/quickjs.c:53633
    int len, tag, is_int, is_bigint, k, stop, inc, res = -1;
    80023edc:	557d                	li	a0,-1
    80023ede:	b3f1                	j	80023caa <js_typed_array_indexOf+0x64>
quickjs-nuttx/quickjs.c:53791
                if (isnan(pv[k])) {
    80023ee0:	00251793          	slli	a5,a0,0x2
    80023ee4:	97ba                	add	a5,a5,a4
    80023ee6:	0007a787          	flw	fa5,0(a5)
    80023eea:	a0f7a7d3          	feq.s	a5,fa5,fa5
    80023eee:	da078ee3          	beqz	a5,80023caa <js_typed_array_indexOf+0x64>
quickjs-nuttx/quickjs.c:53790
            for (; k != stop; k += inc) {
    80023ef2:	0135053b          	addw	a0,a0,s3
    80023ef6:	ce2a                	sw	a0,28(sp)
    80023ef8:	bff9                	j	80023ed6 <js_typed_array_indexOf+0x290>
quickjs-nuttx/quickjs.c:53796
        } else if ((f = (float)d) == d) {
    80023efa:	4017f753          	fcvt.s.d	fa4,fa5
    80023efe:	420706d3          	fcvt.d.s	fa3,fa4
    80023f02:	a2d7a7d3          	feq.d	a5,fa5,fa3
    80023f06:	d60785e3          	beqz	a5,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53797
            const float *pv = p->u.array.u.float_ptr;
    80023f0a:	038b3703          	ld	a4,56(s6)
quickjs-nuttx/quickjs.c:53798 (discriminator 1)
            for (; k != stop; k += inc) {
    80023f0e:	4572                	lw	a0,28(sp)
    80023f10:	d74500e3          	beq	a0,s4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53799
                if (pv[k] == f) {
    80023f14:	00251793          	slli	a5,a0,0x2
    80023f18:	97ba                	add	a5,a5,a4
    80023f1a:	0007a787          	flw	fa5,0(a5)
    80023f1e:	a0e7a7d3          	feq.s	a5,fa5,fa4
    80023f22:	ec0798e3          	bnez	a5,80023df2 <js_typed_array_indexOf+0x1ac>
quickjs-nuttx/quickjs.c:53798
            for (; k != stop; k += inc) {
    80023f26:	0135053b          	addw	a0,a0,s3
    80023f2a:	ce2a                	sw	a0,28(sp)
    80023f2c:	b7cd                	j	80023f0e <js_typed_array_indexOf+0x2c8>
quickjs-nuttx/quickjs.c:53807
        if (is_bigint)
    80023f2e:	d40691e3          	bnez	a3,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53809
        if (isnan(d)) {
    80023f32:	37a2                	fld	fa5,40(sp)
quickjs-nuttx/quickjs.c:53728
            pv = p->u.array.u.uint8_ptr;
    80023f34:	038b3703          	ld	a4,56(s6)
quickjs-nuttx/quickjs.c:53809
        if (isnan(d)) {
    80023f38:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80023f3c:	ef95                	bnez	a5,80023f78 <js_typed_array_indexOf+0x332>
quickjs-nuttx/quickjs.c:53812
            if (special != special_includes)
    80023f3e:	57fd                	li	a5,-1
    80023f40:	dcf495e3          	bne	s1,a5,80023d0a <js_typed_array_indexOf+0xc4>
quickjs-nuttx/quickjs.c:53814 (discriminator 1)
            for (; k != stop; k += inc) {
    80023f44:	4572                	lw	a0,28(sp)
    80023f46:	f9450be3          	beq	a0,s4,80023edc <js_typed_array_indexOf+0x296>
quickjs-nuttx/quickjs.c:53815
                if (isnan(pv[k])) {
    80023f4a:	00351793          	slli	a5,a0,0x3
    80023f4e:	97ba                	add	a5,a5,a4
    80023f50:	239c                	fld	fa5,0(a5)
    80023f52:	a2f7a7d3          	feq.d	a5,fa5,fa5
    80023f56:	d4078ae3          	beqz	a5,80023caa <js_typed_array_indexOf+0x64>
quickjs-nuttx/quickjs.c:53814
            for (; k != stop; k += inc) {
    80023f5a:	0135053b          	addw	a0,a0,s3
    80023f5e:	ce2a                	sw	a0,28(sp)
    80023f60:	b7d5                	j	80023f44 <js_typed_array_indexOf+0x2fe>
quickjs-nuttx/quickjs.c:53823
                if (pv[k] == d) {
    80023f62:	00351793          	slli	a5,a0,0x3
    80023f66:	97ba                	add	a5,a5,a4
    80023f68:	2398                	fld	fa4,0(a5)
    80023f6a:	a2e7a7d3          	feq.d	a5,fa5,fa4
    80023f6e:	e80792e3          	bnez	a5,80023df2 <js_typed_array_indexOf+0x1ac>
quickjs-nuttx/quickjs.c:53822
            for (; k != stop; k += inc) {
    80023f72:	0135053b          	addw	a0,a0,s3
    80023f76:	ce2a                	sw	a0,28(sp)
quickjs-nuttx/quickjs.c:53822 (discriminator 1)
    80023f78:	4572                	lw	a0,28(sp)
    80023f7a:	ff4514e3          	bne	a0,s4,80023f62 <js_typed_array_indexOf+0x31c>
    80023f7e:	b9cd                	j	80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53831
        if (is_bigint || (is_math_mode(ctx) && is_int &&
    80023f80:	e28d                	bnez	a3,80023fa2 <js_typed_array_indexOf+0x35c>
quickjs-nuttx/quickjs.c:53831 (discriminator 1)
    80023f82:	854a                	mv	a0,s2
    80023f84:	c11e30ef          	jal	ra,80007b94 <is_math_mode>
    80023f88:	ce0504e3          	beqz	a0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53831 (discriminator 2)
    80023f8c:	ce0402e3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53832 (discriminator 3)
                          v64 >= -MAX_SAFE_INTEGER &&
    80023f90:	7702                	ld	a4,32(sp)
    80023f92:	57fd                	li	a5,-1
    80023f94:	83ad                	srli	a5,a5,0xb
    80023f96:	973e                	add	a4,a4,a5
    80023f98:	bff00793          	li	a5,-1025
    80023f9c:	83a9                	srli	a5,a5,0xa
quickjs-nuttx/quickjs.c:53839 (discriminator 3)
                          v64 >= 0 && v64 <= MAX_SAFE_INTEGER)) {
    80023f9e:	cce7e9e3          	bltu	a5,a4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53843
            pv = p->u.array.u.uint64_ptr;
    80023fa2:	038b3703          	ld	a4,56(s6)
quickjs-nuttx/quickjs.c:53844
            v = v64;
    80023fa6:	7682                	ld	a3,32(sp)
quickjs-nuttx/quickjs.c:53845 (discriminator 1)
            for (; k != stop; k += inc) {
    80023fa8:	4572                	lw	a0,28(sp)
    80023faa:	cd4503e3          	beq	a0,s4,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53846
                if (pv[k] == v) {
    80023fae:	00351793          	slli	a5,a0,0x3
    80023fb2:	97ba                	add	a5,a5,a4
    80023fb4:	639c                	ld	a5,0(a5)
    80023fb6:	e2d78ee3          	beq	a5,a3,80023df2 <js_typed_array_indexOf+0x1ac>
quickjs-nuttx/quickjs.c:53845
            for (; k != stop; k += inc) {
    80023fba:	0135053b          	addw	a0,a0,s3
    80023fbe:	ce2a                	sw	a0,28(sp)
    80023fc0:	b7e5                	j	80023fa8 <js_typed_array_indexOf+0x362>
quickjs-nuttx/quickjs.c:53838
        if (is_bigint || (is_math_mode(ctx) && is_int &&
    80023fc2:	f2e5                	bnez	a3,80023fa2 <js_typed_array_indexOf+0x35c>
quickjs-nuttx/quickjs.c:53838 (discriminator 1)
    80023fc4:	854a                	mv	a0,s2
    80023fc6:	bcfe30ef          	jal	ra,80007b94 <is_math_mode>
    80023fca:	ca0503e3          	beqz	a0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53838 (discriminator 2)
    80023fce:	ca0401e3          	beqz	s0,80023c70 <js_typed_array_indexOf+0x2a>
quickjs-nuttx/quickjs.c:53839 (discriminator 3)
                          v64 >= 0 && v64 <= MAX_SAFE_INTEGER)) {
    80023fd2:	57fd                	li	a5,-1
    80023fd4:	7702                	ld	a4,32(sp)
    80023fd6:	83ad                	srli	a5,a5,0xb
    80023fd8:	b7d9                	j	80023f9e <js_typed_array_indexOf+0x358>
quickjs-nuttx/quickjs.c:53862
    return JS_EXCEPTION;
    80023fda:	f802                	sd	zero,48(sp)
    80023fdc:	4799                	li	a5,6
    80023fde:	b9f9                	j	80023cbc <js_typed_array_indexOf+0x76>

0000000080023fe0 <js_typed_array_copyWithin>:
js_typed_array_copyWithin():
quickjs-nuttx/quickjs.c:53443
{
    80023fe0:	711d                	addi	sp,sp,-96
    80023fe2:	e4a6                	sd	s1,72(sp)
    80023fe4:	e0ca                	sd	s2,64(sp)
    80023fe6:	fc4e                	sd	s3,56(sp)
    80023fe8:	ec86                	sd	ra,88(sp)
    80023fea:	e8a2                	sd	s0,80(sp)
    80023fec:	892a                	mv	s2,a0
    80023fee:	e02e                	sd	a1,0(sp)
    80023ff0:	e432                	sd	a2,8(sp)
    80023ff2:	89b6                	mv	s3,a3
    80023ff4:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:53447
    len = js_typed_array_get_length_internal(ctx, this_val);
    80023ff6:	c7ef50ef          	jal	ra,80019474 <js_typed_array_get_length_internal>
quickjs-nuttx/quickjs.c:53448
    if (len < 0)
    80023ffa:	00055e63          	bgez	a0,80024016 <js_typed_array_copyWithin+0x36>
quickjs-nuttx/quickjs.c:53449
        return JS_EXCEPTION;
    80023ffe:	4799                	li	a5,6
