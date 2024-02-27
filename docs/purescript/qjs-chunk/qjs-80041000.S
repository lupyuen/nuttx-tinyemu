    80040000:	e75f70ef          	jal	ra,80037e74 <JS_SetPropertyInt64>
    80040004:	06054763          	bltz	a0,80040072 <js_regexp_Symbol_match+0x23e>
quickjs-nuttx/quickjs.c:44140
            if (isEmpty) {
    80040008:	6822                	ld	a6,8(sp)
    8004000a:	08080c63          	beqz	a6,800400a2 <js_regexp_Symbol_match+0x26e>
quickjs-nuttx/quickjs.c:44142
                if (JS_ToLengthFree(ctx, &thisIndex,
    8004000e:	6706                	ld	a4,64(sp)
    80040010:	67a6                	ld	a5,72(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80040012:	05600693          	li	a3,86
    80040016:	4801                	li	a6,0
    80040018:	863e                	mv	a2,a5
    8004001a:	85ba                	mv	a1,a4
    8004001c:	8522                	mv	a0,s0
    8004001e:	f23a                	sd	a4,288(sp)
    80040020:	f63e                	sd	a5,296(sp)
    80040022:	a89d60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80040026:	862a                	mv	a2,a0
    80040028:	86ae                	mv	a3,a1
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.c:44142
    8004002a:	8522                	mv	a0,s0
    8004002c:	182c                	addi	a1,sp,56
    8004002e:	d71e40ef          	jal	ra,80024d9e <JS_ToLengthFree>
    80040032:	04054063          	bltz	a0,80040072 <js_regexp_Symbol_match+0x23e>
quickjs-nuttx/quickjs.c:44146
                nextIndex = string_advance_index(p, thisIndex, fullUnicode);
    80040036:	75e2                	ld	a1,56(sp)
    80040038:	8662                	mv	a2,s8
    8004003a:	8552                	mv	a0,s4
    8004003c:	dbec90ef          	jal	ra,800095fa <string_advance_index>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80040040:	0005071b          	sext.w	a4,a0
    80040044:	06a71163          	bne	a4,a0,800400a6 <js_regexp_Symbol_match+0x272>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80040048:	12012a23          	sw	zero,308(sp)
    8004004c:	12e12823          	sw	a4,304(sp)
    80040050:	77d2                	ld	a5,304(sp)
    80040052:	fe02                	sd	zero,312(sp)
    80040054:	f602                	sd	zero,296(sp)
    80040056:	f23e                	sd	a5,288(sp)
    80040058:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8004005a:	12e12023          	sw	a4,288(sp)
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.c:44147
                if (JS_SetProperty(ctx, rx, JS_ATOM_lastIndex, JS_NewInt64(ctx, nextIndex)) < 0)
    8004005e:	7712                	ld	a4,288(sp)
    80040060:	6586                	ld	a1,64(sp)
    80040062:	6626                	ld	a2,72(sp)
    80040064:	05600693          	li	a3,86
    80040068:	8522                	mv	a0,s0
    8004006a:	ba3f70ef          	jal	ra,80037c0c <JS_SetProperty>
    8004006e:	02055a63          	bgez	a0,800400a2 <js_regexp_Symbol_match+0x26e>
quickjs-nuttx/quickjs.c:44162
    JS_FreeValue(ctx, A);
    80040072:	65c6                	ld	a1,80(sp)
    80040074:	8626                	mv	a2,s1
    80040076:	8522                	mv	a0,s0
    80040078:	f26cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44163
    JS_FreeValue(ctx, result);
    8004007c:	658a                	ld	a1,128(sp)
    8004007e:	866a                	mv	a2,s10
    80040080:	8522                	mv	a0,s0
    80040082:	f1ccb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44164
    JS_FreeValue(ctx, flags);
    80040086:	85ce                	mv	a1,s3
    80040088:	864a                	mv	a2,s2
    8004008a:	8522                	mv	a0,s0
    8004008c:	f12cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44165
    JS_FreeValue(ctx, S);
    80040090:	7626                	ld	a2,104(sp)
    80040092:	85d2                	mv	a1,s4
    80040094:	8522                	mv	a0,s0
    80040096:	f08cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44166
    return JS_EXCEPTION;
    8004009a:	4799                	li	a5,6
    8004009c:	f202                	sd	zero,288(sp)
    8004009e:	f63e                	sd	a5,296(sp)
    800400a0:	b541                	j	8003ff20 <js_regexp_Symbol_match+0xec>
quickjs-nuttx/quickjs.c:44086
{
    800400a2:	6b82                	ld	s7,0(sp)
    800400a4:	bde5                	j	8003ff9c <js_regexp_Symbol_match+0x168>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800400a6:	d22577d3          	fcvt.d.l	fa5,a0
    800400aa:	479d                	li	a5,7
    800400ac:	e2078753          	fmv.x.d	a4,fa5
js_regexp_Symbol_match():
quickjs-nuttx/quickjs.h:230
    return v;
    800400b0:	b23e                	fsd	fa5,288(sp)
    800400b2:	2701                	sext.w	a4,a4
    800400b4:	b75d                	j	8004005a <js_regexp_Symbol_match+0x226>
quickjs-nuttx/quickjs.c:44151
        if (n == 0) {
    800400b6:	e40b93e3          	bnez	s7,8003fefc <js_regexp_Symbol_match+0xc8>
quickjs-nuttx/quickjs.c:44152
            JS_FreeValue(ctx, A);
    800400ba:	65c6                	ld	a1,80(sp)
    800400bc:	8656                	mv	a2,s5
    800400be:	8522                	mv	a0,s0
    800400c0:	edecb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44153
            A = JS_NULL;
    800400c4:	4489                	li	s1,2
    800400c6:	e882                	sd	zero,80(sp)
    800400c8:	bd15                	j	8003fefc <js_regexp_Symbol_match+0xc8>
quickjs-nuttx/quickjs.c:44098
    result = JS_UNDEFINED;
    800400ca:	4d0d                	li	s10,3
quickjs-nuttx/quickjs.c:44097
    flags = JS_UNDEFINED;
    800400cc:	490d                	li	s2,3
    800400ce:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:44096
    A = JS_UNDEFINED;
    800400d0:	448d                	li	s1,3
    800400d2:	b745                	j	80040072 <js_regexp_Symbol_match+0x23e>
quickjs-nuttx/quickjs.c:44098
    result = JS_UNDEFINED;
    800400d4:	4d0d                	li	s10,3
    800400d6:	bfed                	j	800400d0 <js_regexp_Symbol_match+0x29c>

00000000800400d8 <js_regexp_test>:
js_regexp_test():
quickjs-nuttx/quickjs.c:44072
{
    800400d8:	711d                	addi	sp,sp,-96
    800400da:	e8a2                	sd	s0,80(sp)
    800400dc:	e4a6                	sd	s1,72(sp)
    800400de:	ec86                	sd	ra,88(sp)
quickjs-nuttx/quickjs.c:44076
    val = JS_RegExpExec(ctx, this_val, argv[0]);
    800400e0:	6314                	ld	a3,0(a4)
    800400e2:	6718                	ld	a4,8(a4)
quickjs-nuttx/quickjs.c:44072
{
    800400e4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:44076
    val = JS_RegExpExec(ctx, this_val, argv[0]);
    800400e6:	969ff0ef          	jal	ra,8003fa4e <JS_RegExpExec>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800400ea:	0005841b          	sext.w	s0,a1
js_regexp_test():
quickjs-nuttx/quickjs.c:44077
    if (JS_IsException(val))
    800400ee:	4799                	li	a5,6
    800400f0:	00f41b63          	bne	s0,a5,80040106 <js_regexp_test+0x2e>
quickjs-nuttx/quickjs.c:44078
        return JS_EXCEPTION;
    800400f4:	f002                	sd	zero,32(sp)
    800400f6:	f422                	sd	s0,40(sp)
quickjs-nuttx/quickjs.c:44082 (discriminator 1)
}
    800400f8:	60e6                	ld	ra,88(sp)
    800400fa:	6446                	ld	s0,80(sp)
    800400fc:	7502                	ld	a0,32(sp)
    800400fe:	75a2                	ld	a1,40(sp)
    80040100:	64a6                	ld	s1,72(sp)
    80040102:	6125                	addi	sp,sp,96
    80040104:	8082                	ret
quickjs-nuttx/quickjs.c:44079
    ret = !JS_IsNull(val);
    80040106:	1479                	addi	s0,s0,-2
    80040108:	862e                	mv	a2,a1
    8004010a:	00803433          	snez	s0,s0
quickjs-nuttx/quickjs.c:44080
    JS_FreeValue(ctx, val);
    8004010e:	85aa                	mv	a1,a0
    80040110:	8526                	mv	a0,s1
    80040112:	e8ccb0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80040116:	da02                	sw	zero,52(sp)
    80040118:	d822                	sw	s0,48(sp)
    8004011a:	77c2                	ld	a5,48(sp)
    8004011c:	f03e                	sd	a5,32(sp)
    8004011e:	4785                	li	a5,1
    80040120:	f43e                	sd	a5,40(sp)
    80040122:	bfd9                	j	800400f8 <js_regexp_test+0x20>

0000000080040124 <js_proxy_set>:
js_proxy_set():
quickjs-nuttx/quickjs.c:45989
{
    80040124:	7169                	addi	sp,sp,-304
    80040126:	8332                	mv	t1,a2
    80040128:	e64e                	sd	s3,264(sp)
    8004012a:	f82e                	sd	a1,48(sp)
    8004012c:	fc32                	sd	a2,56(sp)
    8004012e:	89b6                	mv	s3,a3
    80040130:	f03a                	sd	a4,32(sp)
quickjs-nuttx/quickjs.c:45995
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_set);
    80040132:	862e                	mv	a2,a1
    80040134:	04300713          	li	a4,67
    80040138:	869a                	mv	a3,t1
    8004013a:	00ac                	addi	a1,sp,72
quickjs-nuttx/quickjs.c:45989
{
    8004013c:	ee26                	sd	s1,280(sp)
    8004013e:	fdd6                	sd	s5,248(sp)
    80040140:	f606                	sd	ra,296(sp)
    80040142:	f222                	sd	s0,288(sp)
    80040144:	ea4a                	sd	s2,272(sp)
    80040146:	e252                	sd	s4,256(sp)
    80040148:	13012a83          	lw	s5,304(sp)
    8004014c:	84aa                	mv	s1,a0
    8004014e:	f43e                	sd	a5,40(sp)
    80040150:	e842                	sd	a6,16(sp)
    80040152:	ec46                	sd	a7,24(sp)
quickjs-nuttx/quickjs.c:45995
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_set);
    80040154:	fded90ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:45996
    if (!s)
    80040158:	e119                	bnez	a0,8004015e <js_proxy_set+0x3a>
quickjs-nuttx/quickjs.c:46039
            return -1;
    8004015a:	547d                	li	s0,-1
    8004015c:	a815                	j	80040190 <js_proxy_set+0x6c>
quickjs-nuttx/quickjs.c:45998
    if (JS_IsUndefined(method)) {
    8004015e:	47c6                	lw	a5,80(sp)
    80040160:	4a0d                	li	s4,3
    80040162:	892a                	mv	s2,a0
    80040164:	05479063          	bne	a5,s4,800401a4 <js_proxy_set+0x80>
quickjs-nuttx/quickjs.c:45999
        return JS_SetPropertyInternal(ctx, s->target, atom,
    80040168:	7502                	ld	a0,32(sp)
    8004016a:	75a2                	ld	a1,40(sp)
    8004016c:	aaeca0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80040170:	f92a                	sd	a0,176(sp)
    80040172:	fd2e                	sd	a1,184(sp)
    80040174:	e056                	sd	s5,0(sp)
    80040176:	87ae                	mv	a5,a1
    80040178:	6842                	ld	a6,16(sp)
    8004017a:	68e2                	ld	a7,24(sp)
    8004017c:	00093583          	ld	a1,0(s2)
    80040180:	00893603          	ld	a2,8(s2)
    80040184:	872a                	mv	a4,a0
    80040186:	86ce                	mv	a3,s3
    80040188:	8526                	mv	a0,s1
    8004018a:	9c0d70ef          	jal	ra,8001734a <JS_SetPropertyInternal>
    8004018e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46043
}
    80040190:	70b2                	ld	ra,296(sp)
    80040192:	8522                	mv	a0,s0
    80040194:	7412                	ld	s0,288(sp)
    80040196:	64f2                	ld	s1,280(sp)
    80040198:	6952                	ld	s2,272(sp)
    8004019a:	69b2                	ld	s3,264(sp)
    8004019c:	6a12                	ld	s4,256(sp)
    8004019e:	7aee                	ld	s5,248(sp)
    800401a0:	6155                	addi	sp,sp,304
    800401a2:	8082                	ret
quickjs-nuttx/quickjs.c:46003
    atom_val = JS_AtomToValue(ctx, atom);
    800401a4:	85ce                	mv	a1,s3
    800401a6:	8526                	mv	a0,s1
    800401a8:	921df0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    800401ac:	f4aa                	sd	a0,104(sp)
    800401ae:	f8ae                	sd	a1,112(sp)
quickjs-nuttx/quickjs.c:46004
    if (JS_IsException(atom_val)) {
    800401b0:	0005879b          	sext.w	a5,a1
    800401b4:	4419                	li	s0,6
    800401b6:	00879863          	bne	a5,s0,800401c6 <js_proxy_set+0xa2>
quickjs-nuttx/quickjs.c:46005
        JS_FreeValue(ctx, method);
    800401ba:	65a6                	ld	a1,72(sp)
    800401bc:	6646                	ld	a2,80(sp)
    800401be:	8526                	mv	a0,s1
    800401c0:	ddecb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46006
        return -1;
    800401c4:	bf59                	j	8004015a <js_proxy_set+0x36>
quickjs-nuttx/quickjs.c:46008
    args[0] = s->target;
    800401c6:	00093783          	ld	a5,0(s2)
quickjs-nuttx/quickjs.c:46012
    ret1 = JS_CallFree(ctx, method, s->handler, 4, args);
    800401ca:	6646                	ld	a2,80(sp)
    800401cc:	0b010813          	addi	a6,sp,176
quickjs-nuttx/quickjs.c:46008
    args[0] = s->target;
    800401d0:	f93e                	sd	a5,176(sp)
    800401d2:	00893783          	ld	a5,8(s2)
quickjs-nuttx/quickjs.c:46009
    args[1] = atom_val;
    800401d6:	e1aa                	sd	a0,192(sp)
    800401d8:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:46008
    args[0] = s->target;
    800401da:	fd3e                	sd	a5,184(sp)
quickjs-nuttx/quickjs.c:46010
    args[2] = value;
    800401dc:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:46012
    ret1 = JS_CallFree(ctx, method, s->handler, 4, args);
    800401de:	65a6                	ld	a1,72(sp)
    800401e0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:46010
    args[2] = value;
    800401e2:	e9be                	sd	a5,208(sp)
    800401e4:	77a2                	ld	a5,40(sp)
    800401e6:	edbe                	sd	a5,216(sp)
quickjs-nuttx/quickjs.c:46011
    args[3] = receiver;
    800401e8:	67c2                	ld	a5,16(sp)
    800401ea:	f1be                	sd	a5,224(sp)
    800401ec:	67e2                	ld	a5,24(sp)
    800401ee:	f5be                	sd	a5,232(sp)
quickjs-nuttx/quickjs.c:46012
    ret1 = JS_CallFree(ctx, method, s->handler, 4, args);
    800401f0:	01093683          	ld	a3,16(s2)
    800401f4:	01893703          	ld	a4,24(s2)
    800401f8:	4791                	li	a5,4
    800401fa:	87bd60ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:46013
    JS_FreeValue(ctx, atom_val);
    800401fe:	7646                	ld	a2,112(sp)
quickjs-nuttx/quickjs.c:46012
    ret1 = JS_CallFree(ctx, method, s->handler, 4, args);
    80040200:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:46013
    JS_FreeValue(ctx, atom_val);
    80040202:	75a6                	ld	a1,104(sp)
quickjs-nuttx/quickjs.c:46012
    ret1 = JS_CallFree(ctx, method, s->handler, 4, args);
    80040204:	ecaa                	sd	a0,88(sp)
quickjs-nuttx/quickjs.c:46013
    JS_FreeValue(ctx, atom_val);
    80040206:	8526                	mv	a0,s1
    80040208:	d96cb0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004020c:	7606                	ld	a2,96(sp)
js_proxy_set():
quickjs-nuttx/quickjs.c:46014
    if (JS_IsException(ret1))
    8004020e:	0006079b          	sext.w	a5,a2
    80040212:	f48784e3          	beq	a5,s0,8004015a <js_proxy_set+0x36>
quickjs-nuttx/quickjs.c:46016
    ret = JS_ToBoolFree(ctx, ret1);
    80040216:	65e6                	ld	a1,88(sp)
    80040218:	8526                	mv	a0,s1
    8004021a:	8fbcb0ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    8004021e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46017
    if (ret) {
    80040220:	cd39                	beqz	a0,8004027e <js_proxy_set+0x15a>
quickjs-nuttx/quickjs.c:46019
        res = JS_GetOwnPropertyInternal(ctx, &desc, JS_VALUE_GET_OBJ(s->target), atom);
    80040222:	00093603          	ld	a2,0(s2)
    80040226:	86ce                	mv	a3,s3
    80040228:	18ac                	addi	a1,sp,120
    8004022a:	8526                	mv	a0,s1
    8004022c:	f45d60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:46020
        if (res < 0)
    80040230:	f20545e3          	bltz	a0,8004015a <js_proxy_set+0x36>
quickjs-nuttx/quickjs.c:46022
        if (res) {
    80040234:	dd31                	beqz	a0,80040190 <js_proxy_set+0x6c>
quickjs-nuttx/quickjs.c:46023
            if ((desc.flags & (JS_PROP_GETSET | JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)) == 0) {
    80040236:	57e6                	lw	a5,120(sp)
    80040238:	0137f713          	andi	a4,a5,19
    8004023c:	e70d                	bnez	a4,80040266 <js_proxy_set+0x142>
quickjs-nuttx/quickjs.c:46024
                if (!js_same_value(ctx, desc.value, value)) {
    8004023e:	7682                	ld	a3,32(sp)
    80040240:	7722                	ld	a4,40(sp)
    80040242:	658a                	ld	a1,128(sp)
    80040244:	662a                	ld	a2,136(sp)
    80040246:	8526                	mv	a0,s1
    80040248:	f2acb0ef          	jal	ra,8000b972 <js_same_value>
    8004024c:	e505                	bnez	a0,80040274 <js_proxy_set+0x150>
quickjs-nuttx/quickjs.c:46029
                    js_free_desc(ctx, &desc);
    8004024e:	18ac                	addi	a1,sp,120
    80040250:	8526                	mv	a0,s1
    80040252:	893cb0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:46030
                    JS_ThrowTypeError(ctx, "proxy: inconsistent set");
    80040256:	0002d597          	auipc	a1,0x2d
    8004025a:	fda58593          	addi	a1,a1,-38 # 8006d230 <qjsc_repl+0x7c80>
quickjs-nuttx/quickjs.c:46038
            JS_ThrowTypeError(ctx, "proxy: cannot set property");
    8004025e:	8526                	mv	a0,s1
    80040260:	c0cd80ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80040264:	bddd                	j	8004015a <js_proxy_set+0x36>
quickjs-nuttx/quickjs.c:46027
            } else if ((desc.flags & (JS_PROP_GETSET | JS_PROP_CONFIGURABLE)) == JS_PROP_GETSET && JS_IsUndefined(desc.setter)) {
    80040266:	8bc5                	andi	a5,a5,17
    80040268:	4741                	li	a4,16
    8004026a:	00e79563          	bne	a5,a4,80040274 <js_proxy_set+0x150>
quickjs-nuttx/quickjs.c:46027 (discriminator 1)
    8004026e:	57aa                	lw	a5,168(sp)
    80040270:	fd478fe3          	beq	a5,s4,8004024e <js_proxy_set+0x12a>
quickjs-nuttx/quickjs.c:46033
            js_free_desc(ctx, &desc);
    80040274:	18ac                	addi	a1,sp,120
    80040276:	8526                	mv	a0,s1
    80040278:	86dcb0ef          	jal	ra,8000bae4 <js_free_desc>
    8004027c:	bf11                	j	80040190 <js_proxy_set+0x6c>
quickjs-nuttx/quickjs.c:46036
        if ((flags & JS_PROP_THROW) ||
    8004027e:	00ead793          	srli	a5,s5,0xe
    80040282:	8b85                	andi	a5,a5,1
    80040284:	ef81                	bnez	a5,8004029c <js_proxy_set+0x178>
quickjs-nuttx/quickjs.c:46037 (discriminator 1)
            ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    80040286:	6421                	lui	s0,0x8
    80040288:	008af433          	and	s0,s5,s0
quickjs-nuttx/quickjs.c:46036 (discriminator 1)
        if ((flags & JS_PROP_THROW) ||
    8004028c:	f00402e3          	beqz	s0,80040190 <js_proxy_set+0x6c>
quickjs-nuttx/quickjs.c:46037
            ((flags & JS_PROP_THROW_STRICT) && is_strict_mode(ctx))) {
    80040290:	8526                	mv	a0,s1
    80040292:	8f3c70ef          	jal	ra,80007b84 <is_strict_mode>
    80040296:	842a                	mv	s0,a0
    80040298:	ee050ce3          	beqz	a0,80040190 <js_proxy_set+0x6c>
quickjs-nuttx/quickjs.c:46038
            JS_ThrowTypeError(ctx, "proxy: cannot set property");
    8004029c:	0002d597          	auipc	a1,0x2d
    800402a0:	fac58593          	addi	a1,a1,-84 # 8006d248 <qjsc_repl+0x7c98>
    800402a4:	bf6d                	j	8004025e <js_proxy_set+0x13a>

00000000800402a6 <js_proxy_get>:
js_proxy_get():
quickjs-nuttx/quickjs.c:45941
{
    800402a6:	716d                	addi	sp,sp,-272
    800402a8:	8832                	mv	a6,a2
    800402aa:	f5ce                	sd	s3,232(sp)
    800402ac:	e82e                	sd	a1,16(sp)
    800402ae:	ec32                	sd	a2,24(sp)
    800402b0:	89b6                	mv	s3,a3
    800402b2:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:45948
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_get);
    800402b4:	862e                	mv	a2,a1
    800402b6:	04200713          	li	a4,66
    800402ba:	86c2                	mv	a3,a6
    800402bc:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs.c:45941
{
    800402be:	e222                	sd	s0,256(sp)
    800402c0:	e606                	sd	ra,264(sp)
    800402c2:	fda6                	sd	s1,248(sp)
    800402c4:	f9ca                	sd	s2,240(sp)
    800402c6:	f1d2                	sd	s4,224(sp)
    800402c8:	edd6                	sd	s5,216(sp)
    800402ca:	842a                	mv	s0,a0
    800402cc:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:45948
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_get);
    800402ce:	e64d90ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:45949
    if (!s)
    800402d2:	e509                	bnez	a0,800402dc <js_proxy_get+0x36>
quickjs-nuttx/quickjs.c:45950
        return JS_EXCEPTION;
    800402d4:	ec82                	sd	zero,88(sp)
    800402d6:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45984
    return ret;
    800402d8:	f0be                	sd	a5,96(sp)
    800402da:	a0a1                	j	80040322 <js_proxy_get+0x7c>
quickjs-nuttx/quickjs.c:45952
    if (JS_IsUndefined(method))
    800402dc:	57c2                	lw	a5,48(sp)
    800402de:	4a0d                	li	s4,3
    800402e0:	84aa                	mv	s1,a0
    800402e2:	01479e63          	bne	a5,s4,800402fe <js_proxy_get+0x58>
quickjs-nuttx/quickjs.c:45953
        return JS_GetPropertyInternal(ctx, s->target, atom, receiver, FALSE);
    800402e6:	610c                	ld	a1,0(a0)
    800402e8:	6510                	ld	a2,8(a0)
    800402ea:	6702                	ld	a4,0(sp)
    800402ec:	67a2                	ld	a5,8(sp)
    800402ee:	4801                	li	a6,0
    800402f0:	86ce                	mv	a3,s3
    800402f2:	8522                	mv	a0,s0
    800402f4:	fb6d60ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
quickjs-nuttx/quickjs.c:45979
                return JS_ThrowTypeError(ctx, "proxy: inconsistent get");
    800402f8:	ecaa                	sd	a0,88(sp)
    800402fa:	f0ae                	sd	a1,96(sp)
    800402fc:	a01d                	j	80040322 <js_proxy_get+0x7c>
quickjs-nuttx/quickjs.c:45954
    atom_val = JS_AtomToValue(ctx, atom);
    800402fe:	85ce                	mv	a1,s3
    80040300:	8522                	mv	a0,s0
    80040302:	fc6df0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80040306:	e4aa                	sd	a0,72(sp)
    80040308:	e8ae                	sd	a1,80(sp)
quickjs-nuttx/quickjs.c:45955
    if (JS_IsException(atom_val)) {
    8004030a:	0005891b          	sext.w	s2,a1
    8004030e:	4a99                	li	s5,6
    80040310:	03591463          	bne	s2,s5,80040338 <js_proxy_get+0x92>
quickjs-nuttx/quickjs.c:45956
        JS_FreeValue(ctx, method);
    80040314:	75a2                	ld	a1,40(sp)
    80040316:	7642                	ld	a2,48(sp)
    80040318:	8522                	mv	a0,s0
    8004031a:	c84cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45957
        return JS_EXCEPTION;
    8004031e:	ec82                	sd	zero,88(sp)
    80040320:	f0ca                	sd	s2,96(sp)
quickjs-nuttx/quickjs.c:45985 (discriminator 1)
}
    80040322:	60b2                	ld	ra,264(sp)
    80040324:	6412                	ld	s0,256(sp)
    80040326:	6566                	ld	a0,88(sp)
    80040328:	7586                	ld	a1,96(sp)
    8004032a:	74ee                	ld	s1,248(sp)
    8004032c:	794e                	ld	s2,240(sp)
    8004032e:	79ae                	ld	s3,232(sp)
    80040330:	7a0e                	ld	s4,224(sp)
    80040332:	6aee                	ld	s5,216(sp)
    80040334:	6151                	addi	sp,sp,272
    80040336:	8082                	ret
quickjs-nuttx/quickjs.c:45959
    args[0] = s->target;
    80040338:	609c                	ld	a5,0(s1)
quickjs-nuttx/quickjs.c:45962
    ret = JS_CallFree(ctx, method, s->handler, 3, args);
    8004033a:	7642                	ld	a2,48(sp)
    8004033c:	06810813          	addi	a6,sp,104
quickjs-nuttx/quickjs.c:45959
    args[0] = s->target;
    80040340:	f4be                	sd	a5,104(sp)
    80040342:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:45960
    args[1] = atom_val;
    80040344:	fcaa                	sd	a0,120(sp)
    80040346:	e12e                	sd	a1,128(sp)
quickjs-nuttx/quickjs.c:45959
    args[0] = s->target;
    80040348:	f8be                	sd	a5,112(sp)
quickjs-nuttx/quickjs.c:45961
    args[2] = receiver;
    8004034a:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:45962
    ret = JS_CallFree(ctx, method, s->handler, 3, args);
    8004034c:	75a2                	ld	a1,40(sp)
    8004034e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:45961
    args[2] = receiver;
    80040350:	e53e                	sd	a5,136(sp)
    80040352:	67a2                	ld	a5,8(sp)
    80040354:	e93e                	sd	a5,144(sp)
quickjs-nuttx/quickjs.c:45962
    ret = JS_CallFree(ctx, method, s->handler, 3, args);
    80040356:	6894                	ld	a3,16(s1)
    80040358:	6c98                	ld	a4,24(s1)
    8004035a:	478d                	li	a5,3
    8004035c:	f18d60ef          	jal	ra,80016a74 <JS_CallFree>
    80040360:	892e                	mv	s2,a1
    80040362:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:45963
    JS_FreeValue(ctx, atom_val);
    80040364:	6646                	ld	a2,80(sp)
    80040366:	65a6                	ld	a1,72(sp)
quickjs-nuttx/quickjs.c:45962
    ret = JS_CallFree(ctx, method, s->handler, 3, args);
    80040368:	fc2a                	sd	a0,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8004036a:	2901                	sext.w	s2,s2
js_proxy_get():
quickjs-nuttx/quickjs.c:45963
    JS_FreeValue(ctx, atom_val);
    8004036c:	8522                	mv	a0,s0
    8004036e:	c30cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45964
    if (JS_IsException(ret))
    80040372:	f75901e3          	beq	s2,s5,800402d4 <js_proxy_get+0x2e>
quickjs-nuttx/quickjs.c:45966
    res = JS_GetOwnPropertyInternal(ctx, &desc, JS_VALUE_GET_OBJ(s->target), atom);
    80040376:	6090                	ld	a2,0(s1)
    80040378:	86ce                	mv	a3,s3
    8004037a:	092c                	addi	a1,sp,152
    8004037c:	8522                	mv	a0,s0
    8004037e:	df3d60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:45967
    if (res < 0)
    80040382:	f40549e3          	bltz	a0,800402d4 <js_proxy_get+0x2e>
quickjs-nuttx/quickjs.c:45969
    if (res) {
    80040386:	c939                	beqz	a0,800403dc <js_proxy_get+0x136>
quickjs-nuttx/quickjs.c:45970
        if ((desc.flags & (JS_PROP_GETSET | JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)) == 0) {
    80040388:	47ea                	lw	a5,152(sp)
    8004038a:	0137f713          	andi	a4,a5,19
    8004038e:	eb15                	bnez	a4,800403c2 <js_proxy_get+0x11c>
quickjs-nuttx/quickjs.c:45971
            if (!js_same_value(ctx, desc.value, ret)) {
    80040390:	76e2                	ld	a3,56(sp)
    80040392:	6706                	ld	a4,64(sp)
    80040394:	758a                	ld	a1,160(sp)
    80040396:	762a                	ld	a2,168(sp)
    80040398:	8522                	mv	a0,s0
    8004039a:	dd8cb0ef          	jal	ra,8000b972 <js_same_value>
    8004039e:	e91d                	bnez	a0,800403d4 <js_proxy_get+0x12e>
quickjs-nuttx/quickjs.c:45977
                js_free_desc(ctx, &desc);
    800403a0:	092c                	addi	a1,sp,152
    800403a2:	8522                	mv	a0,s0
    800403a4:	f40cb0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:45978
                JS_FreeValue(ctx, ret);
    800403a8:	75e2                	ld	a1,56(sp)
    800403aa:	6606                	ld	a2,64(sp)
    800403ac:	8522                	mv	a0,s0
    800403ae:	bf0cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45979
                return JS_ThrowTypeError(ctx, "proxy: inconsistent get");
    800403b2:	8522                	mv	a0,s0
    800403b4:	0002d597          	auipc	a1,0x2d
    800403b8:	eb458593          	addi	a1,a1,-332 # 8006d268 <qjsc_repl+0x7cb8>
    800403bc:	ab0d80ef          	jal	ra,8001866c <JS_ThrowTypeError>
    800403c0:	bf25                	j	800402f8 <js_proxy_get+0x52>
quickjs-nuttx/quickjs.c:45974
        } else if ((desc.flags & (JS_PROP_GETSET | JS_PROP_CONFIGURABLE)) == JS_PROP_GETSET) {
    800403c2:	8bc5                	andi	a5,a5,17
    800403c4:	4741                	li	a4,16
    800403c6:	00e79763          	bne	a5,a4,800403d4 <js_proxy_get+0x12e>
quickjs-nuttx/quickjs.c:45975
            if (JS_IsUndefined(desc.getter) && !JS_IsUndefined(ret)) {
    800403ca:	57ea                	lw	a5,184(sp)
    800403cc:	01479463          	bne	a5,s4,800403d4 <js_proxy_get+0x12e>
quickjs-nuttx/quickjs.c:45975 (discriminator 1)
    800403d0:	fcf918e3          	bne	s2,a5,800403a0 <js_proxy_get+0xfa>
quickjs-nuttx/quickjs.c:45982
        js_free_desc(ctx, &desc);
    800403d4:	092c                	addi	a1,sp,152
    800403d6:	8522                	mv	a0,s0
    800403d8:	f0ccb0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:45984
    return ret;
    800403dc:	77e2                	ld	a5,56(sp)
    800403de:	ecbe                	sd	a5,88(sp)
    800403e0:	6786                	ld	a5,64(sp)
    800403e2:	bddd                	j	800402d8 <js_proxy_get+0x32>

00000000800403e4 <js_proxy_has>:
js_proxy_has():
quickjs-nuttx/quickjs.c:45896
{
    800403e4:	7155                	addi	sp,sp,-208
    800403e6:	87b2                	mv	a5,a2
    800403e8:	f54e                	sd	s3,168(sp)
    800403ea:	e02e                	sd	a1,0(sp)
    800403ec:	e432                	sd	a2,8(sp)
    800403ee:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:45904
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_has);
    800403f0:	862e                	mv	a2,a1
    800403f2:	06400713          	li	a4,100
    800403f6:	86be                	mv	a3,a5
    800403f8:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:45896
{
    800403fa:	e1a2                	sd	s0,192(sp)
    800403fc:	e586                	sd	ra,200(sp)
    800403fe:	fd26                	sd	s1,184(sp)
    80040400:	f94a                	sd	s2,176(sp)
    80040402:	f152                	sd	s4,160(sp)
    80040404:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:45904
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_has);
    80040406:	d2cd90ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:45905
    if (!s)
    8004040a:	e119                	bnez	a0,80040410 <js_proxy_has+0x2c>
quickjs-nuttx/quickjs.c:45926 (discriminator 1)
            return -1;
    8004040c:	54fd                	li	s1,-1
    8004040e:	a829                	j	80040428 <js_proxy_has+0x44>
quickjs-nuttx/quickjs.c:45907
    if (JS_IsUndefined(method))
    80040410:	5702                	lw	a4,32(sp)
    80040412:	478d                	li	a5,3
    80040414:	892a                	mv	s2,a0
    80040416:	02f71263          	bne	a4,a5,8004043a <js_proxy_has+0x56>
quickjs-nuttx/quickjs.c:45908
        return JS_HasProperty(ctx, s->target, atom);
    8004041a:	610c                	ld	a1,0(a0)
    8004041c:	6510                	ld	a2,8(a0)
    8004041e:	86ce                	mv	a3,s3
    80040420:	8522                	mv	a0,s0
    80040422:	8d4f80ef          	jal	ra,800384f6 <JS_HasProperty>
    80040426:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:45937
}
    80040428:	60ae                	ld	ra,200(sp)
    8004042a:	640e                	ld	s0,192(sp)
    8004042c:	794a                	ld	s2,176(sp)
    8004042e:	79aa                	ld	s3,168(sp)
    80040430:	7a0a                	ld	s4,160(sp)
    80040432:	8526                	mv	a0,s1
    80040434:	74ea                	ld	s1,184(sp)
    80040436:	6169                	addi	sp,sp,208
    80040438:	8082                	ret
quickjs-nuttx/quickjs.c:45909
    atom_val = JS_AtomToValue(ctx, atom);
    8004043a:	85ce                	mv	a1,s3
    8004043c:	8522                	mv	a0,s0
    8004043e:	e8adf0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80040442:	fc2a                	sd	a0,56(sp)
    80040444:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:45910
    if (JS_IsException(atom_val)) {
    80040446:	0005879b          	sext.w	a5,a1
    8004044a:	4499                	li	s1,6
    8004044c:	00979863          	bne	a5,s1,8004045c <js_proxy_has+0x78>
quickjs-nuttx/quickjs.c:45911
        JS_FreeValue(ctx, method);
    80040450:	65e2                	ld	a1,24(sp)
    80040452:	7602                	ld	a2,32(sp)
    80040454:	8522                	mv	a0,s0
    80040456:	b48cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45912
        return -1;
    8004045a:	bf4d                	j	8004040c <js_proxy_has+0x28>
quickjs-nuttx/quickjs.c:45914
    args[0] = s->target;
    8004045c:	00093783          	ld	a5,0(s2)
quickjs-nuttx/quickjs.c:45916
    ret1 = JS_CallFree(ctx, method, s->handler, 2, args);
    80040460:	7602                	ld	a2,32(sp)
    80040462:	04810813          	addi	a6,sp,72
quickjs-nuttx/quickjs.c:45914
    args[0] = s->target;
    80040466:	e4be                	sd	a5,72(sp)
    80040468:	00893783          	ld	a5,8(s2)
quickjs-nuttx/quickjs.c:45915
    args[1] = atom_val;
    8004046c:	ecaa                	sd	a0,88(sp)
    8004046e:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:45914
    args[0] = s->target;
    80040470:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:45916
    ret1 = JS_CallFree(ctx, method, s->handler, 2, args);
    80040472:	01093683          	ld	a3,16(s2)
    80040476:	01893703          	ld	a4,24(s2)
    8004047a:	65e2                	ld	a1,24(sp)
    8004047c:	4789                	li	a5,2
    8004047e:	8522                	mv	a0,s0
    80040480:	df4d60ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:45917
    JS_FreeValue(ctx, atom_val);
    80040484:	6606                	ld	a2,64(sp)
quickjs-nuttx/quickjs.c:45916
    ret1 = JS_CallFree(ctx, method, s->handler, 2, args);
    80040486:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:45917
    JS_FreeValue(ctx, atom_val);
    80040488:	75e2                	ld	a1,56(sp)
quickjs-nuttx/quickjs.c:45916
    ret1 = JS_CallFree(ctx, method, s->handler, 2, args);
    8004048a:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:45917
    JS_FreeValue(ctx, atom_val);
    8004048c:	8522                	mv	a0,s0
    8004048e:	b10cb0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80040492:	7642                	ld	a2,48(sp)
js_proxy_has():
quickjs-nuttx/quickjs.c:45918
    if (JS_IsException(ret1))
    80040494:	0006079b          	sext.w	a5,a2
    80040498:	f6978ae3          	beq	a5,s1,8004040c <js_proxy_has+0x28>
quickjs-nuttx/quickjs.c:45920
    ret = JS_ToBoolFree(ctx, ret1);
    8004049c:	75a2                	ld	a1,40(sp)
    8004049e:	8522                	mv	a0,s0
    800404a0:	e74cb0ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    800404a4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:45921
    if (!ret) {
    800404a6:	f149                	bnez	a0,80040428 <js_proxy_has+0x44>
quickjs-nuttx/quickjs.c:45923
        p = JS_VALUE_GET_OBJ(s->target);
    800404a8:	00093a03          	ld	s4,0(s2)
quickjs-nuttx/quickjs.c:45924
        res = JS_GetOwnPropertyInternal(ctx, &desc, p, atom);
    800404ac:	86ce                	mv	a3,s3
    800404ae:	10ac                	addi	a1,sp,104
    800404b0:	8652                	mv	a2,s4
    800404b2:	8522                	mv	a0,s0
    800404b4:	cbdd60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:45925
        if (res < 0)
    800404b8:	f4054ae3          	bltz	a0,8004040c <js_proxy_has+0x28>
quickjs-nuttx/quickjs.c:45927
        if (res) {
    800404bc:	d535                	beqz	a0,80040428 <js_proxy_has+0x44>
quickjs-nuttx/quickjs.c:45928
            res2 = !(desc.flags & JS_PROP_CONFIGURABLE);
    800404be:	5926                	lw	s2,104(sp)
quickjs-nuttx/quickjs.c:45929
            js_free_desc(ctx, &desc);
    800404c0:	10ac                	addi	a1,sp,104
    800404c2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:45928
            res2 = !(desc.flags & JS_PROP_CONFIGURABLE);
    800404c4:	00197913          	andi	s2,s2,1
quickjs-nuttx/quickjs.c:45929
            js_free_desc(ctx, &desc);
    800404c8:	e1ccb0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:45930
            if (res2 || !p->extensible) {
    800404cc:	00090663          	beqz	s2,800404d8 <js_proxy_has+0xf4>
quickjs-nuttx/quickjs.c:45930 (discriminator 1)
    800404d0:	005a4783          	lbu	a5,5(s4)
    800404d4:	8b85                	andi	a5,a5,1
    800404d6:	fba9                	bnez	a5,80040428 <js_proxy_has+0x44>
quickjs-nuttx/quickjs.c:45931
                JS_ThrowTypeError(ctx, "proxy: inconsistent has");
    800404d8:	8522                	mv	a0,s0
    800404da:	0002d597          	auipc	a1,0x2d
    800404de:	da658593          	addi	a1,a1,-602 # 8006d280 <qjsc_repl+0x7cd0>
    800404e2:	98ad80ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:45932
                return -1;
    800404e6:	b71d                	j	8004040c <js_proxy_has+0x28>

00000000800404e8 <js_proxy_define_own_property>:
js_proxy_define_own_property():
quickjs-nuttx/quickjs.c:46184
{
    800404e8:	7141                	addi	sp,sp,-496
    800404ea:	8332                	mv	t1,a2
    800404ec:	e3d2                	sd	s4,448(sp)
    800404ee:	e0ae                	sd	a1,64(sp)
    800404f0:	e4b2                	sd	a2,72(sp)
    800404f2:	8a36                	mv	s4,a3
    800404f4:	f83a                	sd	a4,48(sp)
quickjs-nuttx/quickjs.c:46193
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_defineProperty);
    800404f6:	862e                	mv	a2,a1
    800404f8:	06600713          	li	a4,102
    800404fc:	869a                	mv	a3,t1
    800404fe:	08ac                	addi	a1,sp,88
quickjs-nuttx/quickjs.c:46184
{
    80040500:	f3a2                	sd	s0,480(sp)
    80040502:	efa6                	sd	s1,472(sp)
    80040504:	f786                	sd	ra,488(sp)
    80040506:	ebca                	sd	s2,464(sp)
    80040508:	e7ce                	sd	s3,456(sp)
    8004050a:	ff56                	sd	s5,440(sp)
    8004050c:	fb5a                	sd	s6,432(sp)
    8004050e:	20012403          	lw	s0,512(sp)
    80040512:	84aa                	mv	s1,a0
    80040514:	fc3e                	sd	a5,56(sp)
    80040516:	f042                	sd	a6,32(sp)
    80040518:	f446                	sd	a7,40(sp)
quickjs-nuttx/quickjs.c:46193
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_defineProperty);
    8004051a:	c18d90ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:46194
    if (!s)
    8004051e:	e119                	bnez	a0,80040524 <js_proxy_define_own_property+0x3c>
quickjs-nuttx/quickjs.c:46272
                return -1;
    80040520:	557d                	li	a0,-1
    80040522:	a02d                	j	8004054c <js_proxy_define_own_property+0x64>
quickjs-nuttx/quickjs.c:46196
    if (JS_IsUndefined(method)) {
    80040524:	5706                	lw	a4,96(sp)
    80040526:	478d                	li	a5,3
    80040528:	892a                	mv	s2,a0
    8004052a:	02f71b63          	bne	a4,a5,80040560 <js_proxy_define_own_property+0x78>
quickjs-nuttx/quickjs.c:46197
        return JS_DefineProperty(ctx, s->target, prop, val, getter, setter, flags);
    8004052e:	77de                	ld	a5,496(sp)
    80040530:	e822                	sd	s0,16(sp)
    80040532:	7802                	ld	a6,32(sp)
    80040534:	e03e                	sd	a5,0(sp)
    80040536:	77fe                	ld	a5,504(sp)
    80040538:	78a2                	ld	a7,40(sp)
    8004053a:	7742                	ld	a4,48(sp)
    8004053c:	e43e                	sd	a5,8(sp)
    8004053e:	610c                	ld	a1,0(a0)
    80040540:	6510                	ld	a2,8(a0)
    80040542:	77e2                	ld	a5,56(sp)
    80040544:	86d2                	mv	a3,s4
    80040546:	8526                	mv	a0,s1
    80040548:	e06d70ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:46278
}
    8004054c:	70be                	ld	ra,488(sp)
    8004054e:	741e                	ld	s0,480(sp)
    80040550:	64fe                	ld	s1,472(sp)
    80040552:	695e                	ld	s2,464(sp)
    80040554:	69be                	ld	s3,456(sp)
    80040556:	6a1e                	ld	s4,448(sp)
    80040558:	7afa                	ld	s5,440(sp)
    8004055a:	7b5a                	ld	s6,432(sp)
    8004055c:	617d                	addi	sp,sp,496
    8004055e:	8082                	ret
quickjs-nuttx/quickjs.c:46199
    prop_val = JS_AtomToValue(ctx, prop);
    80040560:	85d2                	mv	a1,s4
    80040562:	8526                	mv	a0,s1
    80040564:	d64df0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80040568:	f8ae                	sd	a1,112(sp)
    8004056a:	f4aa                	sd	a0,104(sp)
quickjs-nuttx/quickjs.c:46200
    if (JS_IsException(prop_val)) {
    8004056c:	2581                	sext.w	a1,a1
    8004056e:	4b19                	li	s6,6
    80040570:	01659863          	bne	a1,s6,80040580 <js_proxy_define_own_property+0x98>
quickjs-nuttx/quickjs.c:46207
        JS_FreeValue(ctx, method);
    80040574:	65e6                	ld	a1,88(sp)
    80040576:	7606                	ld	a2,96(sp)
    80040578:	8526                	mv	a0,s1
    8004057a:	a24cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46208
        return -1;
    8004057e:	b74d                	j	80040520 <js_proxy_define_own_property+0x38>
quickjs-nuttx/quickjs.c:46204
    desc_val = js_create_desc(ctx, val, getter, setter, flags);
    80040580:	77c2                	ld	a5,48(sp)
js_create_desc():
quickjs-nuttx/quickjs.c:46050
    ret = JS_NewObject(ctx);
    80040582:	8526                	mv	a0,s1
    80040584:	e53e                	sd	a5,136(sp)
    80040586:	77e2                	ld	a5,56(sp)
    80040588:	e93e                	sd	a5,144(sp)
    8004058a:	7782                	ld	a5,32(sp)
    8004058c:	ed3e                	sd	a5,152(sp)
    8004058e:	77a2                	ld	a5,40(sp)
    80040590:	f13e                	sd	a5,160(sp)
    80040592:	77de                	ld	a5,496(sp)
    80040594:	e6be                	sd	a5,328(sp)
    80040596:	77fe                	ld	a5,504(sp)
    80040598:	eabe                	sd	a5,336(sp)
    8004059a:	a8bdb0ef          	jal	ra,8001c024 <JS_NewObject>
    8004059e:	feaa                	sd	a0,376(sp)
    800405a0:	e32e                	sd	a1,384(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    800405a2:	00058a9b          	sext.w	s5,a1
js_create_desc():
quickjs-nuttx/quickjs.c:46050
    800405a6:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:46051
    if (JS_IsException(ret))
    800405a8:	036a9063          	bne	s5,s6,800405c8 <js_proxy_define_own_property+0xe0>
quickjs-nuttx/quickjs.c:46052
        return ret;
    800405ac:	77f6                	ld	a5,376(sp)
    800405ae:	e2ce                	sd	s3,320(sp)
    800405b0:	e14e                	sd	s3,128(sp)
    800405b2:	fe3e                	sd	a5,312(sp)
js_proxy_define_own_property():
quickjs-nuttx/quickjs.h:610
    800405b4:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:46205
    if (JS_IsException(desc_val)) {
    800405b6:	4b19                	li	s6,6
    800405b8:	116a9463          	bne	s5,s6,800406c0 <js_proxy_define_own_property+0x1d8>
quickjs-nuttx/quickjs.c:46206
        JS_FreeValue(ctx, prop_val);
    800405bc:	75a6                	ld	a1,104(sp)
    800405be:	7646                	ld	a2,112(sp)
    800405c0:	8526                	mv	a0,s1
    800405c2:	9dccb0ef          	jal	ra,8000b79e <JS_FreeValue>
    800405c6:	b77d                	j	80040574 <js_proxy_define_own_property+0x8c>
js_create_desc():
quickjs-nuttx/quickjs.c:46053
    if (flags & JS_PROP_HAS_GET) {
    800405c8:	00b45793          	srli	a5,s0,0xb
    800405cc:	8b85                	andi	a5,a5,1
    800405ce:	c38d                	beqz	a5,800405f0 <js_proxy_define_own_property+0x108>
quickjs-nuttx/quickjs.c:46054
        JS_DefinePropertyValue(ctx, ret, JS_ATOM_get, JS_DupValue(ctx, getter),
    800405d0:	656a                	ld	a0,152(sp)
    800405d2:	758a                	ld	a1,160(sp)
    800405d4:	e47c90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800405d8:	87ae                	mv	a5,a1
    800405da:	fa2e                	sd	a1,304(sp)
    800405dc:	661a                	ld	a2,384(sp)
    800405de:	75f6                	ld	a1,376(sp)
    800405e0:	872a                	mv	a4,a0
    800405e2:	f62a                	sd	a0,296(sp)
    800405e4:	481d                	li	a6,7
    800405e6:	04200693          	li	a3,66
    800405ea:	8526                	mv	a0,s1
    800405ec:	c41d70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:46057
    if (flags & JS_PROP_HAS_SET) {
    800405f0:	00c45793          	srli	a5,s0,0xc
    800405f4:	8b85                	andi	a5,a5,1
    800405f6:	c38d                	beqz	a5,80040618 <js_proxy_define_own_property+0x130>
quickjs-nuttx/quickjs.c:46058
        JS_DefinePropertyValue(ctx, ret, JS_ATOM_set, JS_DupValue(ctx, setter),
    800405f8:	6536                	ld	a0,328(sp)
    800405fa:	65d6                	ld	a1,336(sp)
    800405fc:	e1fc90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80040600:	87ae                	mv	a5,a1
    80040602:	f22e                	sd	a1,288(sp)
    80040604:	661a                	ld	a2,384(sp)
    80040606:	75f6                	ld	a1,376(sp)
    80040608:	872a                	mv	a4,a0
    8004060a:	ee2a                	sd	a0,280(sp)
    8004060c:	481d                	li	a6,7
    8004060e:	04300693          	li	a3,67
    80040612:	8526                	mv	a0,s1
    80040614:	c19d70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:46061
    if (flags & JS_PROP_HAS_VALUE) {
    80040618:	00d45793          	srli	a5,s0,0xd
    8004061c:	8b85                	andi	a5,a5,1
    8004061e:	c38d                	beqz	a5,80040640 <js_proxy_define_own_property+0x158>
quickjs-nuttx/quickjs.c:46062
        JS_DefinePropertyValue(ctx, ret, JS_ATOM_value, JS_DupValue(ctx, val),
    80040620:	652a                	ld	a0,136(sp)
    80040622:	65ca                	ld	a1,144(sp)
    80040624:	df7c90ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80040628:	87ae                	mv	a5,a1
    8004062a:	ea2e                	sd	a1,272(sp)
    8004062c:	661a                	ld	a2,384(sp)
    8004062e:	75f6                	ld	a1,376(sp)
    80040630:	872a                	mv	a4,a0
    80040632:	e62a                	sd	a0,264(sp)
    80040634:	481d                	li	a6,7
    80040636:	04100693          	li	a3,65
    8004063a:	8526                	mv	a0,s1
    8004063c:	bf1d70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:46065
    if (flags & JS_PROP_HAS_WRITABLE) {
    80040640:	20047793          	andi	a5,s0,512
    80040644:	c39d                	beqz	a5,8004066a <js_proxy_define_own_property+0x182>
quickjs-nuttx/quickjs.c:46066
        JS_DefinePropertyValue(ctx, ret, JS_ATOM_writable,
    80040646:	4014579b          	sraiw	a5,s0,0x1
    8004064a:	8b85                	andi	a5,a5,1
    8004064c:	c5be                	sw	a5,200(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8004064e:	c782                	sw	zero,204(sp)
    80040650:	672e                	ld	a4,200(sp)
js_create_desc():
quickjs-nuttx/quickjs.c:46066
    80040652:	75f6                	ld	a1,376(sp)
    80040654:	661a                	ld	a2,384(sp)
    80040656:	4785                	li	a5,1
    80040658:	481d                	li	a6,7
    8004065a:	03f00693          	li	a3,63
    8004065e:	8526                	mv	a0,s1
    80040660:	e9be                	sd	a5,208(sp)
    80040662:	fdba                	sd	a4,248(sp)
    80040664:	e23e                	sd	a5,256(sp)
    80040666:	bc7d70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:46070
    if (flags & JS_PROP_HAS_ENUMERABLE) {
    8004066a:	40047793          	andi	a5,s0,1024
    8004066e:	c39d                	beqz	a5,80040694 <js_proxy_define_own_property+0x1ac>
quickjs-nuttx/quickjs.c:46071
        JS_DefinePropertyValue(ctx, ret, JS_ATOM_enumerable,
    80040670:	4024579b          	sraiw	a5,s0,0x2
    80040674:	8b85                	andi	a5,a5,1
    80040676:	dd3e                	sw	a5,184(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80040678:	df02                	sw	zero,188(sp)
    8004067a:	776a                	ld	a4,184(sp)
js_create_desc():
quickjs-nuttx/quickjs.c:46071
    8004067c:	75f6                	ld	a1,376(sp)
    8004067e:	661a                	ld	a2,384(sp)
    80040680:	4785                	li	a5,1
    80040682:	481d                	li	a6,7
    80040684:	04000693          	li	a3,64
    80040688:	8526                	mv	a0,s1
    8004068a:	e1be                	sd	a5,192(sp)
    8004068c:	f5ba                	sd	a4,232(sp)
    8004068e:	f9be                	sd	a5,240(sp)
    80040690:	b9dd70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:46075
    if (flags & JS_PROP_HAS_CONFIGURABLE) {
    80040694:	10047793          	andi	a5,s0,256
    80040698:	f0078ae3          	beqz	a5,800405ac <js_proxy_define_own_property+0xc4>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8004069c:	00147793          	andi	a5,s0,1
    800406a0:	d53e                	sw	a5,168(sp)
    800406a2:	d702                	sw	zero,172(sp)
    800406a4:	772a                	ld	a4,168(sp)
js_create_desc():
quickjs-nuttx/quickjs.c:46076
        JS_DefinePropertyValue(ctx, ret, JS_ATOM_configurable,
    800406a6:	75f6                	ld	a1,376(sp)
    800406a8:	661a                	ld	a2,384(sp)
    800406aa:	4785                	li	a5,1
    800406ac:	481d                	li	a6,7
    800406ae:	03e00693          	li	a3,62
    800406b2:	8526                	mv	a0,s1
    800406b4:	f93e                	sd	a5,176(sp)
    800406b6:	edba                	sd	a4,216(sp)
    800406b8:	f1be                	sd	a5,224(sp)
    800406ba:	b73d70ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800406be:	b5fd                	j	800405ac <js_proxy_define_own_property+0xc4>
js_proxy_define_own_property():
quickjs-nuttx/quickjs.c:46210
    args[0] = s->target;
    800406c0:	00093703          	ld	a4,0(s2)
quickjs-nuttx/quickjs.c:46213
    ret1 = JS_CallFree(ctx, method, s->handler, 3, args);
    800406c4:	7606                	ld	a2,96(sp)
    800406c6:	65e6                	ld	a1,88(sp)
quickjs-nuttx/quickjs.c:46210
    args[0] = s->target;
    800406c8:	e6ba                	sd	a4,328(sp)
    800406ca:	00893703          	ld	a4,8(s2)
quickjs-nuttx/quickjs.c:46212
    args[2] = desc_val;
    800406ce:	f6be                	sd	a5,360(sp)
    800406d0:	face                	sd	s3,368(sp)
quickjs-nuttx/quickjs.c:46210
    args[0] = s->target;
    800406d2:	eaba                	sd	a4,336(sp)
quickjs-nuttx/quickjs.c:46211
    args[1] = prop_val;
    800406d4:	7726                	ld	a4,104(sp)
quickjs-nuttx/quickjs.c:46213
    ret1 = JS_CallFree(ctx, method, s->handler, 3, args);
    800406d6:	478d                	li	a5,3
    800406d8:	14810813          	addi	a6,sp,328
quickjs-nuttx/quickjs.c:46211
    args[1] = prop_val;
    800406dc:	eeba                	sd	a4,344(sp)
    800406de:	7746                	ld	a4,112(sp)
quickjs-nuttx/quickjs.c:46213
    ret1 = JS_CallFree(ctx, method, s->handler, 3, args);
    800406e0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:46211
    args[1] = prop_val;
    800406e2:	f2ba                	sd	a4,352(sp)
quickjs-nuttx/quickjs.c:46213
    ret1 = JS_CallFree(ctx, method, s->handler, 3, args);
    800406e4:	01093683          	ld	a3,16(s2)
    800406e8:	01893703          	ld	a4,24(s2)
    800406ec:	b88d60ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:46214
    JS_FreeValue(ctx, prop_val);
    800406f0:	7646                	ld	a2,112(sp)
quickjs-nuttx/quickjs.c:46213
    ret1 = JS_CallFree(ctx, method, s->handler, 3, args);
    800406f2:	f12e                	sd	a1,160(sp)
quickjs-nuttx/quickjs.c:46214
    JS_FreeValue(ctx, prop_val);
    800406f4:	75a6                	ld	a1,104(sp)
quickjs-nuttx/quickjs.c:46213
    ret1 = JS_CallFree(ctx, method, s->handler, 3, args);
    800406f6:	ed2a                	sd	a0,152(sp)
quickjs-nuttx/quickjs.c:46214
    JS_FreeValue(ctx, prop_val);
    800406f8:	8526                	mv	a0,s1
    800406fa:	8a4cb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46215
    JS_FreeValue(ctx, desc_val);
    800406fe:	660a                	ld	a2,128(sp)
    80040700:	75e6                	ld	a1,120(sp)
    80040702:	8526                	mv	a0,s1
    80040704:	89acb0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80040708:	760a                	ld	a2,160(sp)
js_proxy_define_own_property():
quickjs-nuttx/quickjs.c:46216
    if (JS_IsException(ret1))
    8004070a:	0006079b          	sext.w	a5,a2
    8004070e:	e16789e3          	beq	a5,s6,80040520 <js_proxy_define_own_property+0x38>
quickjs-nuttx/quickjs.c:46218
    ret = JS_ToBoolFree(ctx, ret1);
    80040712:	65ea                	ld	a1,152(sp)
    80040714:	8526                	mv	a0,s1
    80040716:	bfecb0ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:46219
    if (!ret) {
    8004071a:	ed09                	bnez	a0,80040734 <js_proxy_define_own_property+0x24c>
quickjs-nuttx/quickjs.c:46220
        if (flags & JS_PROP_THROW) {
    8004071c:	6511                	lui	a0,0x4
    8004071e:	8d61                	and	a0,a0,s0
quickjs-nuttx/quickjs.c:46221
            JS_ThrowTypeError(ctx, "proxy: defineProperty exception");
    80040720:	0002d597          	auipc	a1,0x2d
    80040724:	b7858593          	addi	a1,a1,-1160 # 8006d298 <qjsc_repl+0x7ce8>
quickjs-nuttx/quickjs.c:46220
        if (flags & JS_PROP_THROW) {
    80040728:	e20502e3          	beqz	a0,8004054c <js_proxy_define_own_property+0x64>
quickjs-nuttx/quickjs.c:46271
                JS_ThrowTypeError(ctx, "proxy: inconsistent defineProperty");
    8004072c:	8526                	mv	a0,s1
    8004072e:	f3fd70ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80040732:	b3fd                	j	80040520 <js_proxy_define_own_property+0x38>
quickjs-nuttx/quickjs.c:46227
    p = JS_VALUE_GET_OBJ(s->target);
    80040734:	00093903          	ld	s2,0(s2)
quickjs-nuttx/quickjs.c:46228
    res = JS_GetOwnPropertyInternal(ctx, &desc, p, prop);
    80040738:	86d2                	mv	a3,s4
    8004073a:	1aac                	addi	a1,sp,376
    8004073c:	864a                	mv	a2,s2
    8004073e:	8526                	mv	a0,s1
    80040740:	a31d60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:46229
    if (res < 0)
    80040744:	dc054ee3          	bltz	a0,80040520 <js_proxy_define_own_property+0x38>
quickjs-nuttx/quickjs.c:46231
    setting_not_configurable = ((flags & (JS_PROP_HAS_CONFIGURABLE |
    80040748:	10147993          	andi	s3,s0,257
quickjs-nuttx/quickjs.c:46234
    if (!res) {
    8004074c:	e919                	bnez	a0,80040762 <js_proxy_define_own_property+0x27a>
quickjs-nuttx/quickjs.c:46235
        if (!p->extensible || setting_not_configurable)
    8004074e:	00594783          	lbu	a5,5(s2)
    80040752:	8b85                	andi	a5,a5,1
    80040754:	c395                	beqz	a5,80040778 <js_proxy_define_own_property+0x290>
quickjs-nuttx/quickjs.c:46235 (discriminator 1)
    80040756:	10000793          	li	a5,256
    8004075a:	00f98f63          	beq	s3,a5,80040778 <js_proxy_define_own_property+0x290>
quickjs-nuttx/quickjs.c:46277
    return 1;
    8004075e:	4505                	li	a0,1
    80040760:	b3f5                	j	8004054c <js_proxy_define_own_property+0x64>
quickjs-nuttx/quickjs.c:46238
        if (!check_define_prop_flags(desc.flags, flags) ||
    80040762:	17812903          	lw	s2,376(sp)
    80040766:	85a2                	mv	a1,s0
    80040768:	854a                	mv	a0,s2
    8004076a:	ddfc80ef          	jal	ra,80009548 <check_define_prop_flags>
    8004076e:	e911                	bnez	a0,80040782 <js_proxy_define_own_property+0x29a>
quickjs-nuttx/quickjs.c:46269
                js_free_desc(ctx, &desc);
    80040770:	1aac                	addi	a1,sp,376
    80040772:	8526                	mv	a0,s1
    80040774:	b70cb0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:46271
                JS_ThrowTypeError(ctx, "proxy: inconsistent defineProperty");
    80040778:	0002d597          	auipc	a1,0x2d
    8004077c:	b4058593          	addi	a1,a1,-1216 # 8006d2b8 <qjsc_repl+0x7d08>
    80040780:	b775                	j	8004072c <js_proxy_define_own_property+0x244>
quickjs-nuttx/quickjs.c:46238 (discriminator 1)
        if (!check_define_prop_flags(desc.flags, flags) ||
    80040782:	00197793          	andi	a5,s2,1
    80040786:	c789                	beqz	a5,80040790 <js_proxy_define_own_property+0x2a8>
quickjs-nuttx/quickjs.c:46239
            ((desc.flags & JS_PROP_CONFIGURABLE) && setting_not_configurable)) {
    80040788:	10000793          	li	a5,256
    8004078c:	fef982e3          	beq	s3,a5,80040770 <js_proxy_define_own_property+0x288>
quickjs-nuttx/quickjs.c:46242
        if (flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) {
    80040790:	6789                	lui	a5,0x2
    80040792:	80078793          	addi	a5,a5,-2048 # 1800 <asinh-0x7fffe800>
    80040796:	8fe1                	and	a5,a5,s0
    80040798:	cba1                	beqz	a5,800407e8 <js_proxy_define_own_property+0x300>
quickjs-nuttx/quickjs.c:46243
            if ((desc.flags & (JS_PROP_GETSET | JS_PROP_CONFIGURABLE)) ==
    8004079a:	01197913          	andi	s2,s2,17
    8004079e:	47c1                	li	a5,16
    800407a0:	00f90a63          	beq	s2,a5,800407b4 <js_proxy_define_own_property+0x2cc>
quickjs-nuttx/quickjs.c:46264
        if (flags & JS_PROP_HAS_WRITABLE) {
    800407a4:	20047413          	andi	s0,s0,512
    800407a8:	e425                	bnez	s0,80040810 <js_proxy_define_own_property+0x328>
quickjs-nuttx/quickjs.c:46275
        js_free_desc(ctx, &desc);
    800407aa:	1aac                	addi	a1,sp,376
    800407ac:	8526                	mv	a0,s1
    800407ae:	b36cb0ef          	jal	ra,8000bae4 <js_free_desc>
    800407b2:	b775                	j	8004075e <js_proxy_define_own_property+0x276>
quickjs-nuttx/quickjs.c:46245
                if ((flags & JS_PROP_HAS_GET) &&
    800407b4:	00b45793          	srli	a5,s0,0xb
    800407b8:	8b85                	andi	a5,a5,1
    800407ba:	ef91                	bnez	a5,800407d6 <js_proxy_define_own_property+0x2ee>
quickjs-nuttx/quickjs.c:46249
                if ((flags & JS_PROP_HAS_SET) &&
    800407bc:	00c45793          	srli	a5,s0,0xc
    800407c0:	8b85                	andi	a5,a5,1
    800407c2:	d3ed                	beqz	a5,800407a4 <js_proxy_define_own_property+0x2bc>
quickjs-nuttx/quickjs.c:46250 (discriminator 1)
                    !js_same_value(ctx, setter, desc.setter)) {
    800407c4:	769a                	ld	a3,416(sp)
    800407c6:	773a                	ld	a4,424(sp)
    800407c8:	75de                	ld	a1,496(sp)
    800407ca:	767e                	ld	a2,504(sp)
quickjs-nuttx/quickjs.c:46260 (discriminator 1)
                !js_same_value(ctx, val, desc.value)) {
    800407cc:	8526                	mv	a0,s1
    800407ce:	9a4cb0ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:46259 (discriminator 1)
            } else if ((desc.flags & (JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)) == 0 &&
    800407d2:	f969                	bnez	a0,800407a4 <js_proxy_define_own_property+0x2bc>
    800407d4:	bf71                	j	80040770 <js_proxy_define_own_property+0x288>
quickjs-nuttx/quickjs.c:46246 (discriminator 1)
                    !js_same_value(ctx, getter, desc.getter)) {
    800407d6:	66da                	ld	a3,400(sp)
    800407d8:	677a                	ld	a4,408(sp)
    800407da:	7582                	ld	a1,32(sp)
    800407dc:	7622                	ld	a2,40(sp)
    800407de:	8526                	mv	a0,s1
    800407e0:	992cb0ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:46245 (discriminator 1)
                if ((flags & JS_PROP_HAS_GET) &&
    800407e4:	fd61                	bnez	a0,800407bc <js_proxy_define_own_property+0x2d4>
    800407e6:	b769                	j	80040770 <js_proxy_define_own_property+0x288>
quickjs-nuttx/quickjs.c:46254
        } else if (flags & JS_PROP_HAS_VALUE) {
    800407e8:	00d45793          	srli	a5,s0,0xd
    800407ec:	8b85                	andi	a5,a5,1
    800407ee:	dbdd                	beqz	a5,800407a4 <js_proxy_define_own_property+0x2bc>
quickjs-nuttx/quickjs.c:46255
            if ((desc.flags & (JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)) ==
    800407f0:	00397913          	andi	s2,s2,3
    800407f4:	4789                	li	a5,2
    800407f6:	00f91663          	bne	s2,a5,80040802 <js_proxy_define_own_property+0x31a>
quickjs-nuttx/quickjs.c:46256
                JS_PROP_WRITABLE && !(flags & JS_PROP_WRITABLE)) {
    800407fa:	00247793          	andi	a5,s0,2
    800407fe:	f3dd                	bnez	a5,800407a4 <js_proxy_define_own_property+0x2bc>
    80040800:	bf85                	j	80040770 <js_proxy_define_own_property+0x288>
quickjs-nuttx/quickjs.c:46259
            } else if ((desc.flags & (JS_PROP_CONFIGURABLE | JS_PROP_WRITABLE)) == 0 &&
    80040802:	fa0911e3          	bnez	s2,800407a4 <js_proxy_define_own_property+0x2bc>
quickjs-nuttx/quickjs.c:46260 (discriminator 1)
                !js_same_value(ctx, val, desc.value)) {
    80040806:	669a                	ld	a3,384(sp)
    80040808:	673a                	ld	a4,392(sp)
    8004080a:	75c2                	ld	a1,48(sp)
    8004080c:	7662                	ld	a2,56(sp)
    8004080e:	bf7d                	j	800407cc <js_proxy_define_own_property+0x2e4>
quickjs-nuttx/quickjs.c:46265
            if ((desc.flags & (JS_PROP_GETSET | JS_PROP_CONFIGURABLE |
    80040810:	17812783          	lw	a5,376(sp)
    80040814:	4709                	li	a4,2
    80040816:	8bcd                	andi	a5,a5,19
    80040818:	f8e799e3          	bne	a5,a4,800407aa <js_proxy_define_own_property+0x2c2>
    8004081c:	bf91                	j	80040770 <js_proxy_define_own_property+0x288>

000000008004081e <js_proxy_delete_property>:
js_proxy_delete_property():
quickjs-nuttx/quickjs.c:46282
{
    8004081e:	7155                	addi	sp,sp,-208
    80040820:	87b2                	mv	a5,a2
    80040822:	f54e                	sd	s3,168(sp)
    80040824:	e02e                	sd	a1,0(sp)
    80040826:	e432                	sd	a2,8(sp)
    80040828:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:46288
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_deleteProperty);
    8004082a:	862e                	mv	a2,a1
    8004082c:	06500713          	li	a4,101
    80040830:	86be                	mv	a3,a5
    80040832:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:46282
{
    80040834:	e1a2                	sd	s0,192(sp)
    80040836:	e586                	sd	ra,200(sp)
    80040838:	fd26                	sd	s1,184(sp)
    8004083a:	f94a                	sd	s2,176(sp)
    8004083c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46288
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_deleteProperty);
    8004083e:	8f4d90ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:46289
    if (!s)
    80040842:	e119                	bnez	a0,80040848 <js_proxy_delete_property+0x2a>
quickjs-nuttx/quickjs.c:46310 (discriminator 1)
            return -1;
    80040844:	597d                	li	s2,-1
    80040846:	a831                	j	80040862 <js_proxy_delete_property+0x44>
quickjs-nuttx/quickjs.c:46291
    if (JS_IsUndefined(method)) {
    80040848:	5702                	lw	a4,32(sp)
    8004084a:	478d                	li	a5,3
    8004084c:	84aa                	mv	s1,a0
    8004084e:	02f71263          	bne	a4,a5,80040872 <js_proxy_delete_property+0x54>
quickjs-nuttx/quickjs.c:46292
        return JS_DeleteProperty(ctx, s->target, atom, 0);
    80040852:	610c                	ld	a1,0(a0)
    80040854:	6510                	ld	a2,8(a0)
    80040856:	4701                	li	a4,0
    80040858:	86ce                	mv	a3,s3
    8004085a:	8522                	mv	a0,s0
    8004085c:	a9fef0ef          	jal	ra,800302fa <JS_DeleteProperty>
    80040860:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:46329
}
    80040862:	60ae                	ld	ra,200(sp)
    80040864:	640e                	ld	s0,192(sp)
    80040866:	74ea                	ld	s1,184(sp)
    80040868:	79aa                	ld	s3,168(sp)
    8004086a:	854a                	mv	a0,s2
    8004086c:	794a                	ld	s2,176(sp)
    8004086e:	6169                	addi	sp,sp,208
    80040870:	8082                	ret
quickjs-nuttx/quickjs.c:46294
    atom_val = JS_AtomToValue(ctx, atom);;
    80040872:	85ce                	mv	a1,s3
    80040874:	8522                	mv	a0,s0
    80040876:	a52df0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    8004087a:	fc2a                	sd	a0,56(sp)
    8004087c:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:46295
    if (JS_IsException(atom_val)) {
    8004087e:	0005879b          	sext.w	a5,a1
    80040882:	4919                	li	s2,6
    80040884:	01279863          	bne	a5,s2,80040894 <js_proxy_delete_property+0x76>
quickjs-nuttx/quickjs.c:46296
        JS_FreeValue(ctx, method);
    80040888:	65e2                	ld	a1,24(sp)
    8004088a:	7602                	ld	a2,32(sp)
    8004088c:	8522                	mv	a0,s0
    8004088e:	f11ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46297
        return -1;
    80040892:	bf4d                	j	80040844 <js_proxy_delete_property+0x26>
quickjs-nuttx/quickjs.c:46299
    args[0] = s->target;
    80040894:	609c                	ld	a5,0(s1)
quickjs-nuttx/quickjs.c:46301
    ret = JS_CallFree(ctx, method, s->handler, 2, args);
    80040896:	7602                	ld	a2,32(sp)
    80040898:	04810813          	addi	a6,sp,72
quickjs-nuttx/quickjs.c:46299
    args[0] = s->target;
    8004089c:	e4be                	sd	a5,72(sp)
    8004089e:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:46300
    args[1] = atom_val;
    800408a0:	ecaa                	sd	a0,88(sp)
    800408a2:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:46299
    args[0] = s->target;
    800408a4:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:46301
    ret = JS_CallFree(ctx, method, s->handler, 2, args);
    800408a6:	6894                	ld	a3,16(s1)
    800408a8:	6c98                	ld	a4,24(s1)
    800408aa:	65e2                	ld	a1,24(sp)
    800408ac:	4789                	li	a5,2
    800408ae:	8522                	mv	a0,s0
    800408b0:	9c4d60ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:46302
    JS_FreeValue(ctx, atom_val);
    800408b4:	6606                	ld	a2,64(sp)
quickjs-nuttx/quickjs.c:46301
    ret = JS_CallFree(ctx, method, s->handler, 2, args);
    800408b6:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:46302
    JS_FreeValue(ctx, atom_val);
    800408b8:	75e2                	ld	a1,56(sp)
quickjs-nuttx/quickjs.c:46301
    ret = JS_CallFree(ctx, method, s->handler, 2, args);
    800408ba:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:46302
    JS_FreeValue(ctx, atom_val);
    800408bc:	8522                	mv	a0,s0
    800408be:	ee1ca0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    800408c2:	7642                	ld	a2,48(sp)
js_proxy_delete_property():
quickjs-nuttx/quickjs.c:46303
    if (JS_IsException(ret))
    800408c4:	0006079b          	sext.w	a5,a2
    800408c8:	f7278ee3          	beq	a5,s2,80040844 <js_proxy_delete_property+0x26>
quickjs-nuttx/quickjs.c:46305
    res = JS_ToBoolFree(ctx, ret);
    800408cc:	75a2                	ld	a1,40(sp)
    800408ce:	8522                	mv	a0,s0
    800408d0:	a44cb0ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    800408d4:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:46306
    if (res) {
    800408d6:	d551                	beqz	a0,80040862 <js_proxy_delete_property+0x44>
quickjs-nuttx/quickjs.c:46308
        res2 = JS_GetOwnPropertyInternal(ctx, &desc, JS_VALUE_GET_OBJ(s->target), atom);
    800408d8:	6090                	ld	a2,0(s1)
    800408da:	86ce                	mv	a3,s3
    800408dc:	10ac                	addi	a1,sp,104
    800408de:	8522                	mv	a0,s0
    800408e0:	891d60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:46309
        if (res2 < 0)
    800408e4:	f60540e3          	bltz	a0,80040844 <js_proxy_delete_property+0x26>
quickjs-nuttx/quickjs.c:46311
        if (res2) {
    800408e8:	dd2d                	beqz	a0,80040862 <js_proxy_delete_property+0x44>
quickjs-nuttx/quickjs.c:46312
            if (!(desc.flags & JS_PROP_CONFIGURABLE))
    800408ea:	57a6                	lw	a5,104(sp)
    800408ec:	8b85                	andi	a5,a5,1
    800408ee:	ef89                	bnez	a5,80040908 <js_proxy_delete_property+0xea>
quickjs-nuttx/quickjs.c:46320
                JS_ThrowTypeError(ctx, "proxy: inconsistent deleteProperty");
    800408f0:	0002d597          	auipc	a1,0x2d
    800408f4:	9f058593          	addi	a1,a1,-1552 # 8006d2e0 <qjsc_repl+0x7d30>
    800408f8:	8522                	mv	a0,s0
    800408fa:	d73d70ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:46322
                js_free_desc(ctx, &desc);
    800408fe:	10ac                	addi	a1,sp,104
    80040900:	8522                	mv	a0,s0
    80040902:	9e2cb0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:46323
                return -1;
    80040906:	bf3d                	j	80040844 <js_proxy_delete_property+0x26>
quickjs-nuttx/quickjs.c:46314
            is_extensible = JS_IsExtensible(ctx, s->target);
    80040908:	608c                	ld	a1,0(s1)
    8004090a:	6490                	ld	a2,8(s1)
    8004090c:	8522                	mv	a0,s0
    8004090e:	8c0d90ef          	jal	ra,800199ce <JS_IsExtensible>
quickjs-nuttx/quickjs.c:46315
            if (is_extensible < 0)
    80040912:	fe0546e3          	bltz	a0,800408fe <js_proxy_delete_property+0xe0>
quickjs-nuttx/quickjs.c:46317
            if (!is_extensible) {
    80040916:	dd69                	beqz	a0,800408f0 <js_proxy_delete_property+0xd2>
quickjs-nuttx/quickjs.c:46325
            js_free_desc(ctx, &desc);
    80040918:	10ac                	addi	a1,sp,104
    8004091a:	8522                	mv	a0,s0
    8004091c:	9c8cb0ef          	jal	ra,8000bae4 <js_free_desc>
    80040920:	b789                	j	80040862 <js_proxy_delete_property+0x44>

0000000080040922 <js_proxy_get_own_property_names>:
js_proxy_get_own_property_names():
quickjs-nuttx/quickjs.c:46346
{
    80040922:	7151                	addi	sp,sp,-240
    80040924:	87ba                	mv	a5,a4
    80040926:	fd56                	sd	s5,184(sp)
    80040928:	f95a                	sd	s6,176(sp)
    8004092a:	8aae                	mv	s5,a1
    8004092c:	8b32                	mv	s6,a2
    8004092e:	e036                	sd	a3,0(sp)
    80040930:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:46355
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_ownKeys);
    80040932:	8636                	mv	a2,a3
    80040934:	06800713          	li	a4,104
    80040938:	86be                	mv	a3,a5
    8004093a:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs.c:46346
{
    8004093c:	f1a2                	sd	s0,224(sp)
    8004093e:	f586                	sd	ra,232(sp)
    80040940:	eda6                	sd	s1,216(sp)
    80040942:	e9ca                	sd	s2,208(sp)
    80040944:	e5ce                	sd	s3,200(sp)
    80040946:	e1d2                	sd	s4,192(sp)
    80040948:	f55e                	sd	s7,168(sp)
    8004094a:	f162                	sd	s8,160(sp)
    8004094c:	ed66                	sd	s9,152(sp)
    8004094e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:46355
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_ownKeys);
    80040950:	fe3d80ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:46356
    if (!s)
    80040954:	e119                	bnez	a0,8004095a <js_proxy_get_own_property_names+0x38>
quickjs-nuttx/quickjs.c:46457
    return -1;
    80040956:	59fd                	li	s3,-1
    80040958:	a005                	j	80040978 <js_proxy_get_own_property_names+0x56>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8004095a:	7642                	ld	a2,48(sp)
js_proxy_get_own_property_names():
quickjs-nuttx/quickjs.c:46358
    if (JS_IsUndefined(method)) {
    8004095c:	478d                	li	a5,3
    8004095e:	84aa                	mv	s1,a0
    80040960:	0006071b          	sext.w	a4,a2
    80040964:	02f71863          	bne	a4,a5,80040994 <js_proxy_get_own_property_names+0x72>
quickjs-nuttx/quickjs.c:46359
        return JS_GetOwnPropertyNamesInternal(ctx, ptab, plen,
    80040968:	6114                	ld	a3,0(a0)
    8004096a:	470d                	li	a4,3
    8004096c:	865a                	mv	a2,s6
    8004096e:	85d6                	mv	a1,s5
    80040970:	8522                	mv	a0,s0
    80040972:	f4cf70ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    80040976:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:46458
}
    80040978:	70ae                	ld	ra,232(sp)
    8004097a:	740e                	ld	s0,224(sp)
    8004097c:	64ee                	ld	s1,216(sp)
    8004097e:	694e                	ld	s2,208(sp)
    80040980:	6a0e                	ld	s4,192(sp)
    80040982:	7aea                	ld	s5,184(sp)
    80040984:	7b4a                	ld	s6,176(sp)
    80040986:	7baa                	ld	s7,168(sp)
    80040988:	7c0a                	ld	s8,160(sp)
    8004098a:	6cea                	ld	s9,152(sp)
    8004098c:	854e                	mv	a0,s3
    8004098e:	69ae                	ld	s3,200(sp)
    80040990:	616d                	addi	sp,sp,240
    80040992:	8082                	ret
quickjs-nuttx/quickjs.c:46363
    prop_array = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    80040994:	6914                	ld	a3,16(a0)
    80040996:	6d18                	ld	a4,24(a0)
    80040998:	75a2                	ld	a1,40(sp)
    8004099a:	882a                	mv	a6,a0
    8004099c:	4785                	li	a5,1
    8004099e:	8522                	mv	a0,s0
    800409a0:	8d4d60ef          	jal	ra,80016a74 <JS_CallFree>
    800409a4:	fc2a                	sd	a0,56(sp)
    800409a6:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:46364
    if (JS_IsException(prop_array))
    800409a8:	0005871b          	sext.w	a4,a1
    800409ac:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:46363
    prop_array = JS_CallFree(ctx, method, s->handler, 1, (JSValueConst *)&s->target);
    800409ae:	862a                	mv	a2,a0
    800409b0:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:46364
    if (JS_IsException(prop_array))
    800409b2:	faf702e3          	beq	a4,a5,80040956 <js_proxy_get_own_property_names+0x34>
quickjs-nuttx/quickjs.c:46370
    if (js_get_length32(ctx, &len, prop_array))
    800409b6:	082c                	addi	a1,sp,24
    800409b8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:46367
    len = 0;
    800409ba:	cc02                	sw	zero,24(sp)
quickjs-nuttx/quickjs.c:46368
    tab2 = NULL;
    800409bc:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:46369
    len2 = 0;
    800409be:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs.c:46370
    if (js_get_length32(ctx, &len, prop_array))
    800409c0:	9a7e10ef          	jal	ra,80022366 <js_get_length32>
    800409c4:	1a051f63          	bnez	a0,80040b82 <js_proxy_get_own_property_names+0x260>
quickjs-nuttx/quickjs.c:46372
    if (len > 0) {
    800409c8:	45e2                	lw	a1,24(sp)
quickjs-nuttx/quickjs.c:46366
    tab = NULL;
    800409ca:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:46372
    if (len > 0) {
    800409cc:	c999                	beqz	a1,800409e2 <js_proxy_get_own_property_names+0xc0>
quickjs-nuttx/quickjs.c:46373
        tab = js_mallocz(ctx, sizeof(tab[0]) * len);
    800409ce:	02059793          	slli	a5,a1,0x20
    800409d2:	01d7d593          	srli	a1,a5,0x1d
    800409d6:	8522                	mv	a0,s0
    800409d8:	f60da0ef          	jal	ra,8001b138 <js_mallocz>
    800409dc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:46374
        if (!tab)
    800409de:	1a050263          	beqz	a0,80040b82 <js_proxy_get_own_property_names+0x260>
quickjs-nuttx/quickjs.c:46377
    for(i = 0; i < len; i++) {
    800409e2:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:46379
        if (JS_IsException(val))
    800409e4:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:46381
        if (!JS_IsString(val) && !JS_IsSymbol(val)) {
    800409e6:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:46377 (discriminator 1)
    for(i = 0; i < len; i++) {
    800409e8:	45e2                	lw	a1,24(sp)
    800409ea:	04b9e563          	bltu	s3,a1,80040a34 <js_proxy_get_own_property_names+0x112>
    800409ee:	00c90713          	addi	a4,s2,12
quickjs-nuttx/quickjs.c:46396
    for(i = 1; i < len; i++) {
    800409f2:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:46396 (discriminator 1)
    800409f4:	0ab7e363          	bltu	a5,a1,80040a9a <js_proxy_get_own_property_names+0x178>
quickjs-nuttx/quickjs.c:46403
    is_extensible = JS_IsExtensible(ctx, s->target);
    800409f8:	608c                	ld	a1,0(s1)
    800409fa:	6490                	ld	a2,8(s1)
    800409fc:	8522                	mv	a0,s0
    800409fe:	fd1d80ef          	jal	ra,800199ce <JS_IsExtensible>
    80040a02:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:46404
    if (is_extensible < 0)
    80040a04:	00054863          	bltz	a0,80040a14 <js_proxy_get_own_property_names+0xf2>
quickjs-nuttx/quickjs.c:46408
    if (s->is_revoked) {
    80040a08:	0214c783          	lbu	a5,33(s1)
    80040a0c:	cbd5                	beqz	a5,80040ac0 <js_proxy_get_own_property_names+0x19e>
quickjs-nuttx/quickjs.c:46417
            JS_ThrowTypeErrorRevokedProxy(ctx);
    80040a0e:	8522                	mv	a0,s0
    80040a10:	d0dd80ef          	jal	ra,8001971c <JS_ThrowTypeErrorRevokedProxy.isra.0>
quickjs-nuttx/quickjs.c:46454
    js_free_prop_enum(ctx, tab2, len2);
    80040a14:	4672                	lw	a2,28(sp)
    80040a16:	7582                	ld	a1,32(sp)
    80040a18:	8522                	mv	a0,s0
    80040a1a:	f3eca0ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:46455
    js_free_prop_enum(ctx, tab, len);
    80040a1e:	4662                	lw	a2,24(sp)
    80040a20:	85ca                	mv	a1,s2
    80040a22:	8522                	mv	a0,s0
    80040a24:	f34ca0ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:46456
    JS_FreeValue(ctx, prop_array);
    80040a28:	75e2                	ld	a1,56(sp)
    80040a2a:	6606                	ld	a2,64(sp)
    80040a2c:	8522                	mv	a0,s0
    80040a2e:	d71ca0ef          	jal	ra,8000b79e <JS_FreeValue>
    80040a32:	b715                	j	80040956 <js_proxy_get_own_property_names+0x34>
quickjs-nuttx/quickjs.c:46378
        val = JS_GetPropertyUint32(ctx, prop_array, i);
    80040a34:	6606                	ld	a2,64(sp)
    80040a36:	75e2                	ld	a1,56(sp)
    80040a38:	86ce                	mv	a3,s3
    80040a3a:	8522                	mv	a0,s0
    80040a3c:	efcd60ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    80040a40:	e4aa                	sd	a0,72(sp)
    80040a42:	e8ae                	sd	a1,80(sp)
quickjs-nuttx/quickjs.c:46379
        if (JS_IsException(val))
    80040a44:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:46378
        val = JS_GetPropertyUint32(ctx, prop_array, i);
    80040a48:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:46379
        if (JS_IsException(val))
    80040a4a:	fd4785e3          	beq	a5,s4,80040a14 <js_proxy_get_own_property_names+0xf2>
quickjs-nuttx/quickjs.c:46381 (discriminator 1)
        if (!JS_IsString(val) && !JS_IsSymbol(val)) {
    80040a4e:	0085879b          	addiw	a5,a1,8
quickjs-nuttx/quickjs.c:46382 (discriminator 1)
            JS_FreeValue(ctx, val);
    80040a52:	85aa                	mv	a1,a0
    80040a54:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:46381 (discriminator 1)
        if (!JS_IsString(val) && !JS_IsSymbol(val)) {
    80040a56:	00fbfc63          	bgeu	s7,a5,80040a6e <js_proxy_get_own_property_names+0x14c>
quickjs-nuttx/quickjs.c:46382
            JS_FreeValue(ctx, val);
    80040a5a:	d45ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46383
            JS_ThrowTypeError(ctx, "proxy: properties must be strings or symbols");
    80040a5e:	0002d597          	auipc	a1,0x2d
    80040a62:	8aa58593          	addi	a1,a1,-1878 # 8006d308 <qjsc_repl+0x7d58>
quickjs-nuttx/quickjs.c:46429
                    JS_ThrowTypeError(ctx, "proxy: target property must be present in proxy ownKeys");
    80040a66:	8522                	mv	a0,s0
    80040a68:	c05d70ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:46430
                    goto fail;
    80040a6c:	b765                	j	80040a14 <js_proxy_get_own_property_names+0xf2>
quickjs-nuttx/quickjs.c:46386
        atom = JS_ValueToAtom(ctx, val);
    80040a6e:	da5e70ef          	jal	ra,80028812 <JS_ValueToAtom>
quickjs-nuttx/quickjs.c:46387
        JS_FreeValue(ctx, val);
    80040a72:	65a6                	ld	a1,72(sp)
    80040a74:	6646                	ld	a2,80(sp)
quickjs-nuttx/quickjs.c:46386
        atom = JS_ValueToAtom(ctx, val);
    80040a76:	00050c1b          	sext.w	s8,a0
quickjs-nuttx/quickjs.c:46387
        JS_FreeValue(ctx, val);
    80040a7a:	8522                	mv	a0,s0
    80040a7c:	d23ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46388
        if (atom == JS_ATOM_NULL)
    80040a80:	f80c0ae3          	beqz	s8,80040a14 <js_proxy_get_own_property_names+0xf2>
quickjs-nuttx/quickjs.c:46390 (discriminator 2)
        tab[i].atom = atom;
    80040a84:	02099713          	slli	a4,s3,0x20
    80040a88:	01d75793          	srli	a5,a4,0x1d
    80040a8c:	97ca                	add	a5,a5,s2
    80040a8e:	0187a223          	sw	s8,4(a5)
quickjs-nuttx/quickjs.c:46391 (discriminator 2)
        tab[i].is_enumerable = FALSE; /* XXX: redundant? */
    80040a92:	0007a023          	sw	zero,0(a5)
quickjs-nuttx/quickjs.c:46377 (discriminator 2)
    for(i = 0; i < len; i++) {
    80040a96:	2985                	addiw	s3,s3,1
    80040a98:	bf81                	j	800409e8 <js_proxy_get_own_property_names+0xc6>
quickjs-nuttx/quickjs.c:46397
        if (find_prop_key(tab, i, tab[i].atom) >= 0) {
    80040a9a:	00072803          	lw	a6,0(a4)
find_prop_key():
quickjs-nuttx/quickjs.c:46335
    for(i = 0; i < n; i++) {
    80040a9e:	00490613          	addi	a2,s2,4
    80040aa2:	4681                	li	a3,0
    80040aa4:	0007851b          	sext.w	a0,a5
    80040aa8:	00a6c563          	blt	a3,a0,80040ab2 <js_proxy_get_own_property_names+0x190>
js_proxy_get_own_property_names():
quickjs-nuttx/quickjs.c:46396
    for(i = 1; i < len; i++) {
    80040aac:	2785                	addiw	a5,a5,1
    80040aae:	0721                	addi	a4,a4,8
    80040ab0:	b791                	j	800409f4 <js_proxy_get_own_property_names+0xd2>
find_prop_key():
quickjs-nuttx/quickjs.c:46336
        if (tab[i].atom == atom)
    80040ab2:	00062883          	lw	a7,0(a2)
    80040ab6:	0621                	addi	a2,a2,8
    80040ab8:	0d088763          	beq	a7,a6,80040b86 <js_proxy_get_own_property_names+0x264>
quickjs-nuttx/quickjs.c:46335
    for(i = 0; i < n; i++) {
    80040abc:	2685                	addiw	a3,a3,1
    80040abe:	b7ed                	j	80040aa8 <js_proxy_get_own_property_names+0x186>
js_proxy_get_own_property_names():
quickjs-nuttx/quickjs.c:46412
    if (JS_GetOwnPropertyNamesInternal(ctx, &tab2, &len2, JS_VALUE_GET_OBJ(s->target),
    80040ac0:	6094                	ld	a3,0(s1)
    80040ac2:	470d                	li	a4,3
    80040ac4:	0870                	addi	a2,sp,28
    80040ac6:	100c                	addi	a1,sp,32
    80040ac8:	8522                	mv	a0,s0
    80040aca:	df4f70ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    80040ace:	89aa                	mv	s3,a0
    80040ad0:	f131                	bnez	a0,80040a14 <js_proxy_get_own_property_names+0xf2>
quickjs-nuttx/quickjs.c:46415
    for(i = 0; i < len2; i++) {
    80040ad2:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:46434
                    tab[idx].is_enumerable = TRUE;
    80040ad4:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:46415 (discriminator 1)
    for(i = 0; i < len2; i++) {
    80040ad6:	4672                	lw	a2,28(sp)
    80040ad8:	02cbe963          	bltu	s7,a2,80040b0a <js_proxy_get_own_property_names+0x1e8>
quickjs-nuttx/quickjs.c:46438
    if (!is_extensible) {
    80040adc:	000a1863          	bnez	s4,80040aec <js_proxy_get_own_property_names+0x1ca>
quickjs-nuttx/quickjs.c:46440
        for(i = 0; i < len; i++) {
    80040ae0:	46e2                	lw	a3,24(sp)
    80040ae2:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:46440 (discriminator 1)
    80040ae4:	0007871b          	sext.w	a4,a5
    80040ae8:	08d76163          	bltu	a4,a3,80040b6a <js_proxy_get_own_property_names+0x248>
quickjs-nuttx/quickjs.c:46448
    js_free_prop_enum(ctx, tab2, len2);
    80040aec:	7582                	ld	a1,32(sp)
    80040aee:	8522                	mv	a0,s0
    80040af0:	e68ca0ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:46449
    JS_FreeValue(ctx, prop_array);
    80040af4:	75e2                	ld	a1,56(sp)
    80040af6:	6606                	ld	a2,64(sp)
    80040af8:	8522                	mv	a0,s0
    80040afa:	ca5ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46451
    *plen = len;
    80040afe:	47e2                	lw	a5,24(sp)
quickjs-nuttx/quickjs.c:46450
    *ptab = tab;
    80040b00:	012ab023          	sd	s2,0(s5)
quickjs-nuttx/quickjs.c:46451
    *plen = len;
    80040b04:	00fb2023          	sw	a5,0(s6) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
quickjs-nuttx/quickjs.c:46452
    return 0;
    80040b08:	bd85                	j	80040978 <js_proxy_get_own_property_names+0x56>
quickjs-nuttx/quickjs.c:46416
        if (s->is_revoked) {
    80040b0a:	0214c783          	lbu	a5,33(s1)
    80040b0e:	f00790e3          	bnez	a5,80040a0e <js_proxy_get_own_property_names+0xec>
quickjs-nuttx/quickjs.c:46421
                                tab2[i].atom);
    80040b12:	020b9793          	slli	a5,s7,0x20
    80040b16:	01d7dc93          	srli	s9,a5,0x1d
quickjs-nuttx/quickjs.c:46420
        res = JS_GetOwnPropertyInternal(ctx, &desc, JS_VALUE_GET_OBJ(s->target),
    80040b1a:	7782                	ld	a5,32(sp)
    80040b1c:	6090                	ld	a2,0(s1)
    80040b1e:	08ac                	addi	a1,sp,88
    80040b20:	97e6                	add	a5,a5,s9
    80040b22:	43d4                	lw	a3,4(a5)
    80040b24:	8522                	mv	a0,s0
    80040b26:	e4ad60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:46422
        if (res < 0)
    80040b2a:	ee0545e3          	bltz	a0,80040a14 <js_proxy_get_own_property_names+0xf2>
quickjs-nuttx/quickjs.c:46424
        if (res) {  /* safety, property should be found */
    80040b2e:	c52d                	beqz	a0,80040b98 <js_proxy_get_own_property_names+0x276>
quickjs-nuttx/quickjs.c:46425
            js_free_desc(ctx, &desc);
    80040b30:	08ac                	addi	a1,sp,88
    80040b32:	8522                	mv	a0,s0
    80040b34:	fb1ca0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:46426
            if (!(desc.flags & JS_PROP_CONFIGURABLE) || !is_extensible) {
    80040b38:	47e6                	lw	a5,88(sp)
    80040b3a:	8b85                	andi	a5,a5,1
    80040b3c:	c399                	beqz	a5,80040b42 <js_proxy_get_own_property_names+0x220>
quickjs-nuttx/quickjs.c:46426 (discriminator 1)
    80040b3e:	040a1d63          	bnez	s4,80040b98 <js_proxy_get_own_property_names+0x276>
quickjs-nuttx/quickjs.c:46427
                idx = find_prop_key(tab, len, tab2[i].atom);
    80040b42:	7782                	ld	a5,32(sp)
    80040b44:	4662                	lw	a2,24(sp)
find_prop_key():
quickjs-nuttx/quickjs.c:46335
    for(i = 0; i < n; i++) {
    80040b46:	4701                	li	a4,0
js_proxy_get_own_property_names():
quickjs-nuttx/quickjs.c:46427
                idx = find_prop_key(tab, len, tab2[i].atom);
    80040b48:	97e6                	add	a5,a5,s9
    80040b4a:	43cc                	lw	a1,4(a5)
find_prop_key():
quickjs-nuttx/quickjs.c:46335
    for(i = 0; i < n; i++) {
    80040b4c:	87ca                	mv	a5,s2
    80040b4e:	00c74763          	blt	a4,a2,80040b5c <js_proxy_get_own_property_names+0x23a>
js_proxy_get_own_property_names():
quickjs-nuttx/quickjs.c:46429
                    JS_ThrowTypeError(ctx, "proxy: target property must be present in proxy ownKeys");
    80040b52:	0002d597          	auipc	a1,0x2d
    80040b56:	85658593          	addi	a1,a1,-1962 # 8006d3a8 <qjsc_repl+0x7df8>
    80040b5a:	b731                	j	80040a66 <js_proxy_get_own_property_names+0x144>
find_prop_key():
quickjs-nuttx/quickjs.c:46336
        if (tab[i].atom == atom)
    80040b5c:	86be                	mv	a3,a5
    80040b5e:	43c8                	lw	a0,4(a5)
    80040b60:	07a1                	addi	a5,a5,8
    80040b62:	02b50763          	beq	a0,a1,80040b90 <js_proxy_get_own_property_names+0x26e>
quickjs-nuttx/quickjs.c:46335
    for(i = 0; i < n; i++) {
    80040b66:	2705                	addiw	a4,a4,1
    80040b68:	b7dd                	j	80040b4e <js_proxy_get_own_property_names+0x22c>
js_proxy_get_own_property_names():
quickjs-nuttx/quickjs.c:46441
            if (!tab[i].is_enumerable) {
    80040b6a:	0785                	addi	a5,a5,1
    80040b6c:	00379713          	slli	a4,a5,0x3
    80040b70:	974a                	add	a4,a4,s2
    80040b72:	ff872703          	lw	a4,-8(a4)
    80040b76:	f73d                	bnez	a4,80040ae4 <js_proxy_get_own_property_names+0x1c2>
quickjs-nuttx/quickjs.c:46442
                JS_ThrowTypeError(ctx, "proxy: property not present in target were returned by non extensible proxy");
    80040b78:	0002c597          	auipc	a1,0x2c
    80040b7c:	7c058593          	addi	a1,a1,1984 # 8006d338 <qjsc_repl+0x7d88>
    80040b80:	b5dd                	j	80040a66 <js_proxy_get_own_property_names+0x144>
quickjs-nuttx/quickjs.c:46366
    tab = NULL;
    80040b82:	4901                	li	s2,0
    80040b84:	bd41                	j	80040a14 <js_proxy_get_own_property_names+0xf2>
quickjs-nuttx/quickjs.c:46398
            JS_ThrowTypeError(ctx, "proxy: duplicate property");
    80040b86:	0002d597          	auipc	a1,0x2d
    80040b8a:	80258593          	addi	a1,a1,-2046 # 8006d388 <qjsc_repl+0x7dd8>
    80040b8e:	bde1                	j	80040a66 <js_proxy_get_own_property_names+0x144>
quickjs-nuttx/quickjs.c:46433
                if (!is_extensible)
    80040b90:	000a1463          	bnez	s4,80040b98 <js_proxy_get_own_property_names+0x276>
quickjs-nuttx/quickjs.c:46434
                    tab[idx].is_enumerable = TRUE;
    80040b94:	0186a023          	sw	s8,0(a3)
quickjs-nuttx/quickjs.c:46415 (discriminator 2)
    for(i = 0; i < len2; i++) {
    80040b98:	2b85                	addiw	s7,s7,1
    80040b9a:	bf35                	j	80040ad6 <js_proxy_get_own_property_names+0x1b4>

0000000080040b9c <js_proxy_get_own_property>:
js_proxy_get_own_property():
quickjs-nuttx/quickjs.c:46085
{
    80040b9c:	712d                	addi	sp,sp,-288
    80040b9e:	e24a                	sd	s2,256(sp)
    80040ba0:	fdce                	sd	s3,248(sp)
    80040ba2:	893a                	mv	s2,a4
    80040ba4:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:46093
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_getOwnPropertyDescriptor);
    80040ba6:	06700713          	li	a4,103
    80040baa:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs.c:46085
{
    80040bac:	ea22                	sd	s0,272(sp)
    80040bae:	ee06                	sd	ra,280(sp)
    80040bb0:	e626                	sd	s1,264(sp)
    80040bb2:	f9d2                	sd	s4,240(sp)
    80040bb4:	f5d6                	sd	s5,232(sp)
    80040bb6:	f1da                	sd	s6,224(sp)
    80040bb8:	edde                	sd	s7,216(sp)
    80040bba:	842a                	mv	s0,a0
    80040bbc:	e032                	sd	a2,0(sp)
    80040bbe:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:46093
    s = get_proxy_method(ctx, &method, obj, JS_ATOM_getOwnPropertyDescriptor);
    80040bc0:	d73d80ef          	jal	ra,80019932 <get_proxy_method>
quickjs-nuttx/quickjs.c:46094
    if (!s)
    80040bc4:	e119                	bnez	a0,80040bca <js_proxy_get_own_property+0x2e>
quickjs-nuttx/quickjs.c:46167
                return -1;
    80040bc6:	557d                	li	a0,-1
    80040bc8:	a831                	j	80040be4 <js_proxy_get_own_property+0x48>
quickjs-nuttx/quickjs.c:46097
    if (JS_IsUndefined(method)) {
    80040bca:	47e2                	lw	a5,24(sp)
    80040bcc:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:46096
    p = JS_VALUE_GET_OBJ(s->target);
    80040bce:	00053a83          	ld	s5,0(a0) # 4000 <asinh-0x7fffc000>
    80040bd2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:46097
    if (JS_IsUndefined(method)) {
    80040bd4:	03479363          	bne	a5,s4,80040bfa <js_proxy_get_own_property+0x5e>
quickjs-nuttx/quickjs.c:46098
        return JS_GetOwnPropertyInternal(ctx, pdesc, p, prop);
    80040bd8:	86ca                	mv	a3,s2
    80040bda:	8656                	mv	a2,s5
    80040bdc:	85ce                	mv	a1,s3
    80040bde:	8522                	mv	a0,s0
    80040be0:	d90d60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:46178
}
    80040be4:	60f2                	ld	ra,280(sp)
    80040be6:	6452                	ld	s0,272(sp)
    80040be8:	64b2                	ld	s1,264(sp)
    80040bea:	6912                	ld	s2,256(sp)
    80040bec:	79ee                	ld	s3,248(sp)
    80040bee:	7a4e                	ld	s4,240(sp)
    80040bf0:	7aae                	ld	s5,232(sp)
    80040bf2:	7b0e                	ld	s6,224(sp)
    80040bf4:	6bee                	ld	s7,216(sp)
    80040bf6:	6115                	addi	sp,sp,288
    80040bf8:	8082                	ret
quickjs-nuttx/quickjs.c:46100
    prop_val = JS_AtomToValue(ctx, prop);
    80040bfa:	85ca                	mv	a1,s2
    80040bfc:	8522                	mv	a0,s0
    80040bfe:	ecbde0ef          	jal	ra,8001fac8 <JS_AtomToValue>
    80040c02:	f82a                	sd	a0,48(sp)
    80040c04:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:46101
    if (JS_IsException(prop_val)) {
    80040c06:	0005879b          	sext.w	a5,a1
    80040c0a:	4b99                	li	s7,6
    80040c0c:	01779863          	bne	a5,s7,80040c1c <js_proxy_get_own_property+0x80>
quickjs-nuttx/quickjs.c:46102
        JS_FreeValue(ctx, method);
    80040c10:	65c2                	ld	a1,16(sp)
    80040c12:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs.c:46117
        JS_FreeValue(ctx, trap_result_obj);
    80040c14:	8522                	mv	a0,s0
    80040c16:	b89ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46118
        return -1;
    80040c1a:	b775                	j	80040bc6 <js_proxy_get_own_property+0x2a>
quickjs-nuttx/quickjs.c:46105
    args[0] = s->target;
    80040c1c:	609c                	ld	a5,0(s1)
quickjs-nuttx/quickjs.c:46107
    trap_result_obj = JS_CallFree(ctx, method, s->handler, 2, args);
    80040c1e:	6662                	ld	a2,24(sp)
    80040c20:	04010813          	addi	a6,sp,64
quickjs-nuttx/quickjs.c:46105
    args[0] = s->target;
    80040c24:	e0be                	sd	a5,64(sp)
    80040c26:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:46106
    args[1] = prop_val;
    80040c28:	e8aa                	sd	a0,80(sp)
    80040c2a:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:46105
    args[0] = s->target;
    80040c2c:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:46107
    trap_result_obj = JS_CallFree(ctx, method, s->handler, 2, args);
    80040c2e:	6894                	ld	a3,16(s1)
    80040c30:	6c98                	ld	a4,24(s1)
    80040c32:	65c2                	ld	a1,16(sp)
    80040c34:	4789                	li	a5,2
    80040c36:	8522                	mv	a0,s0
    80040c38:	e3dd50ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:46108
    JS_FreeValue(ctx, prop_val);
    80040c3c:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:46107
    trap_result_obj = JS_CallFree(ctx, method, s->handler, 2, args);
    80040c3e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:46108
    JS_FreeValue(ctx, prop_val);
    80040c40:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:46107
    trap_result_obj = JS_CallFree(ctx, method, s->handler, 2, args);
    80040c42:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:46108
    JS_FreeValue(ctx, prop_val);
    80040c44:	8522                	mv	a0,s0
    80040c46:	b59ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46109
    if (JS_IsException(trap_result_obj))
    80040c4a:	7622                	ld	a2,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80040c4c:	00060b1b          	sext.w	s6,a2
js_proxy_get_own_property():
quickjs-nuttx/quickjs.c:46109
    80040c50:	f77b0be3          	beq	s6,s7,80040bc6 <js_proxy_get_own_property+0x2a>
quickjs-nuttx/quickjs.c:46111
    if (!JS_IsObject(trap_result_obj) && !JS_IsUndefined(trap_result_obj)) {
    80040c54:	0016079b          	addiw	a5,a2,1
    80040c58:	9bed                	andi	a5,a5,-5
    80040c5a:	2781                	sext.w	a5,a5
    80040c5c:	cf89                	beqz	a5,80040c76 <js_proxy_get_own_property+0xda>
quickjs-nuttx/quickjs.c:46112
        JS_FreeValue(ctx, trap_result_obj);
    80040c5e:	7582                	ld	a1,32(sp)
    80040c60:	8522                	mv	a0,s0
    80040c62:	b3dca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46166
                JS_ThrowTypeError(ctx, "proxy: inconsistent getOwnPropertyDescriptor");
    80040c66:	8522                	mv	a0,s0
    80040c68:	0002c597          	auipc	a1,0x2c
    80040c6c:	77858593          	addi	a1,a1,1912 # 8006d3e0 <qjsc_repl+0x7e30>
    80040c70:	9fdd70ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80040c74:	bf89                	j	80040bc6 <js_proxy_get_own_property+0x2a>
quickjs-nuttx/quickjs.c:46115
    target_desc_ret = JS_GetOwnPropertyInternal(ctx, &target_desc, p, prop);
    80040c76:	86ca                	mv	a3,s2
    80040c78:	8656                	mv	a2,s5
    80040c7a:	092c                	addi	a1,sp,152
    80040c7c:	8522                	mv	a0,s0
    80040c7e:	cf2d60ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
    80040c82:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:46116
    if (target_desc_ret < 0) {
    80040c84:	00055563          	bgez	a0,80040c8e <js_proxy_get_own_property+0xf2>
quickjs-nuttx/quickjs.c:46117
        JS_FreeValue(ctx, trap_result_obj);
    80040c88:	7582                	ld	a1,32(sp)
    80040c8a:	7622                	ld	a2,40(sp)
    80040c8c:	b761                	j	80040c14 <js_proxy_get_own_property+0x78>
quickjs-nuttx/quickjs.c:46120
    if (target_desc_ret)
    80040c8e:	c12d                	beqz	a0,80040cf0 <js_proxy_get_own_property+0x154>
quickjs-nuttx/quickjs.c:46121
        js_free_desc(ctx, &target_desc);
    80040c90:	092c                	addi	a1,sp,152
    80040c92:	8522                	mv	a0,s0
    80040c94:	e51ca0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:46122
    if (JS_IsUndefined(trap_result_obj)) {
    80040c98:	054b1e63          	bne	s6,s4,80040cf4 <js_proxy_get_own_property+0x158>
quickjs-nuttx/quickjs.c:46124
            if (!(target_desc.flags & JS_PROP_CONFIGURABLE) || !p->extensible)
    80040c9c:	47ea                	lw	a5,152(sp)
    80040c9e:	8b85                	andi	a5,a5,1
    80040ca0:	d3f9                	beqz	a5,80040c66 <js_proxy_get_own_property+0xca>
quickjs-nuttx/quickjs.c:46124 (discriminator 1)
    80040ca2:	005ac783          	lbu	a5,5(s5)
    80040ca6:	8b85                	andi	a5,a5,1
    80040ca8:	dfdd                	beqz	a5,80040c66 <js_proxy_get_own_property+0xca>
quickjs-nuttx/quickjs.c:46127
        ret = FALSE;
    80040caa:	4501                	li	a0,0
    80040cac:	bf25                	j	80040be4 <js_proxy_get_own_property+0x48>
quickjs-nuttx/quickjs.c:46146
                flags1 |= JS_PROP_HAS_VALUE | JS_PROP_HAS_WRITABLE;
    80040cae:	70058593          	addi	a1,a1,1792
    80040cb2:	a041                	j	80040d32 <js_proxy_get_own_property+0x196>
quickjs-nuttx/quickjs.c:46152
            if (!extensible_target)
    80040cb4:	c4c1                	beqz	s1,80040d3c <js_proxy_get_own_property+0x1a0>
quickjs-nuttx/quickjs.c:46155
        if (!(result_desc.flags & JS_PROP_CONFIGURABLE)) {
    80040cb6:	5706                	lw	a4,96(sp)
    80040cb8:	00177793          	andi	a5,a4,1
    80040cbc:	eb99                	bnez	a5,80040cd2 <js_proxy_get_own_property+0x136>
quickjs-nuttx/quickjs.c:46156
            if (!target_desc_ret || (target_desc.flags & JS_PROP_CONFIGURABLE))
    80040cbe:	06090f63          	beqz	s2,80040d3c <js_proxy_get_own_property+0x1a0>
quickjs-nuttx/quickjs.c:46156 (discriminator 1)
    80040cc2:	47ea                	lw	a5,152(sp)
    80040cc4:	0017f693          	andi	a3,a5,1
    80040cc8:	eab5                	bnez	a3,80040d3c <js_proxy_get_own_property+0x1a0>
quickjs-nuttx/quickjs.c:46158
            if ((result_desc.flags &
    80040cca:	8b49                	andi	a4,a4,18
    80040ccc:	e319                	bnez	a4,80040cd2 <js_proxy_get_own_property+0x136>
quickjs-nuttx/quickjs.c:46160
                target_desc_ret &&
    80040cce:	8b89                	andi	a5,a5,2
    80040cd0:	e7b5                	bnez	a5,80040d3c <js_proxy_get_own_property+0x1a0>
quickjs-nuttx/quickjs.c:46171
        if (pdesc) {
    80040cd2:	00098a63          	beqz	s3,80040ce6 <js_proxy_get_own_property+0x14a>
quickjs-nuttx/quickjs.c:46172
            *pdesc = result_desc;
    80040cd6:	03800613          	li	a2,56
    80040cda:	108c                	addi	a1,sp,96
    80040cdc:	854e                	mv	a0,s3
    80040cde:	0ce230ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:46170
        ret = TRUE;
    80040ce2:	4505                	li	a0,1
    80040ce4:	b701                	j	80040be4 <js_proxy_get_own_property+0x48>
quickjs-nuttx/quickjs.c:46174
            js_free_desc(ctx, &result_desc);
    80040ce6:	108c                	addi	a1,sp,96
    80040ce8:	8522                	mv	a0,s0
    80040cea:	dfbca0ef          	jal	ra,8000bae4 <js_free_desc>
    80040cee:	bfd5                	j	80040ce2 <js_proxy_get_own_property+0x146>
quickjs-nuttx/quickjs.c:46122
    if (JS_IsUndefined(trap_result_obj)) {
    80040cf0:	fb4b0de3          	beq	s6,s4,80040caa <js_proxy_get_own_property+0x10e>
quickjs-nuttx/quickjs.c:46130
        extensible_target = JS_IsExtensible(ctx, s->target);
    80040cf4:	608c                	ld	a1,0(s1)
    80040cf6:	6490                	ld	a2,8(s1)
    80040cf8:	8522                	mv	a0,s0
    80040cfa:	cd5d80ef          	jal	ra,800199ce <JS_IsExtensible>
    80040cfe:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:46131
        if (extensible_target < 0) {
    80040d00:	f80544e3          	bltz	a0,80040c88 <js_proxy_get_own_property+0xec>
quickjs-nuttx/quickjs.c:46135
        res = js_obj_to_desc(ctx, &result_desc, trap_result_obj);
    80040d04:	7602                	ld	a2,32(sp)
    80040d06:	76a2                	ld	a3,40(sp)
    80040d08:	108c                	addi	a1,sp,96
    80040d0a:	8522                	mv	a0,s0
    80040d0c:	927f80ef          	jal	ra,80039632 <js_obj_to_desc>
quickjs-nuttx/quickjs.c:46136
        JS_FreeValue(ctx, trap_result_obj);
    80040d10:	7582                	ld	a1,32(sp)
    80040d12:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:46135
        res = js_obj_to_desc(ctx, &result_desc, trap_result_obj);
    80040d14:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:46136
        JS_FreeValue(ctx, trap_result_obj);
    80040d16:	8522                	mv	a0,s0
    80040d18:	a87ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:46137
        if (res < 0)
    80040d1c:	ea0a45e3          	bltz	s4,80040bc6 <js_proxy_get_own_property+0x2a>
quickjs-nuttx/quickjs.c:46140
        if (target_desc_ret) {
    80040d20:	f8090ae3          	beqz	s2,80040cb4 <js_proxy_get_own_property+0x118>
quickjs-nuttx/quickjs.c:46142
            flags1 = result_desc.flags | JS_PROP_HAS_CONFIGURABLE | JS_PROP_HAS_ENUMERABLE;
    80040d24:	5786                	lw	a5,96(sp)
quickjs-nuttx/quickjs.c:46144
                flags1 |= JS_PROP_HAS_GET | JS_PROP_HAS_SET;
    80040d26:	6589                	lui	a1,0x2
quickjs-nuttx/quickjs.c:46143
            if (result_desc.flags & JS_PROP_GETSET)
    80040d28:	0107f713          	andi	a4,a5,16
    80040d2c:	d349                	beqz	a4,80040cae <js_proxy_get_own_property+0x112>
quickjs-nuttx/quickjs.c:46144
                flags1 |= JS_PROP_HAS_GET | JS_PROP_HAS_SET;
    80040d2e:	d0058593          	addi	a1,a1,-768 # 1d00 <asinh-0x7fffe300>
quickjs-nuttx/quickjs.c:46149
            if (!check_define_prop_flags(target_desc.flags, flags1))
    80040d32:	456a                	lw	a0,152(sp)
quickjs-nuttx/quickjs.c:46146
                flags1 |= JS_PROP_HAS_VALUE | JS_PROP_HAS_WRITABLE;
    80040d34:	8ddd                	or	a1,a1,a5
quickjs-nuttx/quickjs.c:46149
            if (!check_define_prop_flags(target_desc.flags, flags1))
    80040d36:	813c80ef          	jal	ra,80009548 <check_define_prop_flags>
    80040d3a:	fd35                	bnez	a0,80040cb6 <js_proxy_get_own_property+0x11a>
quickjs-nuttx/quickjs.c:46164
                js_free_desc(ctx, &result_desc);
    80040d3c:	108c                	addi	a1,sp,96
    80040d3e:	8522                	mv	a0,s0
    80040d40:	da5ca0ef          	jal	ra,8000bae4 <js_free_desc>
    80040d44:	b70d                	j	80040c66 <js_proxy_get_own_property+0xca>

0000000080040d46 <js_date_toJSON>:
js_date_toJSON():
quickjs-nuttx/quickjs.c:50120
{
    80040d46:	7135                	addi	sp,sp,-160
    80040d48:	ed06                	sd	ra,152(sp)
    80040d4a:	e922                	sd	s0,144(sp)
    80040d4c:	e526                	sd	s1,136(sp)
    80040d4e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:50125
    rv = JS_EXCEPTION;
    80040d50:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:50128
    obj = JS_ToObject(ctx, this_val);
    80040d52:	b68ef0ef          	jal	ra,800300ba <JS_ToObject>
    80040d56:	862e                	mv	a2,a1
    80040d58:	f82a                	sd	a0,48(sp)
    80040d5a:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:50129
    tv = JS_ToPrimitive(ctx, obj, HINT_NUMBER);
    80040d5c:	4685                	li	a3,1
    80040d5e:	85aa                	mv	a1,a0
    80040d60:	8522                	mv	a0,s0
    80040d62:	f1bde0ef          	jal	ra,8001fc7c <JS_ToPrimitive>
    80040d66:	e4ae                	sd	a1,72(sp)
    80040d68:	e0aa                	sd	a0,64(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80040d6a:	2581                	sext.w	a1,a1
js_date_toJSON():
quickjs-nuttx/quickjs.c:50130
    if (JS_IsException(tv))
    80040d6c:	4799                	li	a5,6
    80040d6e:	00f59463          	bne	a1,a5,80040d76 <js_date_toJSON+0x30>
quickjs-nuttx/quickjs.c:50125
    rv = JS_EXCEPTION;
    80040d72:	4499                	li	s1,6
quickjs-nuttx/quickjs.c:50146
        goto exception;
    80040d74:	a089                	j	80040db6 <js_date_toJSON+0x70>
JS_IsNumber():
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    80040d76:	c581                	beqz	a1,80040d7e <js_date_toJSON+0x38>
    80040d78:	479d                	li	a5,7
    80040d7a:	04f59f63          	bne	a1,a5,80040dd8 <js_date_toJSON+0x92>
js_date_toJSON():
quickjs-nuttx/quickjs.c:50133
        if (JS_ToFloat64(ctx, &d, tv) < 0)
    80040d7e:	6606                	ld	a2,64(sp)
    80040d80:	66a6                	ld	a3,72(sp)
    80040d82:	102c                	addi	a1,sp,40
    80040d84:	8522                	mv	a0,s0
    80040d86:	9b7e10ef          	jal	ra,8002273c <JS_ToFloat64>
    80040d8a:	fe0544e3          	bltz	a0,80040d72 <js_date_toJSON+0x2c>
quickjs-nuttx/quickjs.c:50135
        if (!isfinite(d)) {
    80040d8e:	00053797          	auipc	a5,0x53
    80040d92:	df27b787          	fld	fa5,-526(a5) # 80093b80 <_erodata+0xe>
    80040d96:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80040d9a:	3722                	fld	fa4,40(sp)
    80040d9c:	a2f727d3          	feq.d	a5,fa4,fa5
    80040da0:	eb89                	bnez	a5,80040db2 <js_date_toJSON+0x6c>
quickjs-nuttx/quickjs.c:50135 (discriminator 1)
    80040da2:	22f797d3          	fneg.d	fa5,fa5
    80040da6:	a2f727d3          	feq.d	a5,fa4,fa5
    80040daa:	e781                	bnez	a5,80040db2 <js_date_toJSON+0x6c>
quickjs-nuttx/quickjs.c:50135 (discriminator 2)
    80040dac:	a2e727d3          	feq.d	a5,fa4,fa4
    80040db0:	e785                	bnez	a5,80040dd8 <js_date_toJSON+0x92>
quickjs-nuttx/quickjs.c:50136
            rv = JS_NULL;
    80040db2:	f082                	sd	zero,96(sp)
    80040db4:	4489                	li	s1,2
quickjs-nuttx/quickjs.c:50151
    JS_FreeValue(ctx, obj);
    80040db6:	75c2                	ld	a1,48(sp)
    80040db8:	7662                	ld	a2,56(sp)
    80040dba:	8522                	mv	a0,s0
    80040dbc:	9e3ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50152
    JS_FreeValue(ctx, tv);
    80040dc0:	6586                	ld	a1,64(sp)
    80040dc2:	6626                	ld	a2,72(sp)
    80040dc4:	8522                	mv	a0,s0
    80040dc6:	9d9ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:50154
}
    80040dca:	60ea                	ld	ra,152(sp)
    80040dcc:	644a                	ld	s0,144(sp)
    80040dce:	7506                	ld	a0,96(sp)
    80040dd0:	85a6                	mv	a1,s1
    80040dd2:	64aa                	ld	s1,136(sp)
    80040dd4:	610d                	addi	sp,sp,160
    80040dd6:	8082                	ret
quickjs-nuttx/quickjs.c:50140
    method = JS_GetPropertyStr(ctx, obj, "toISOString");
    80040dd8:	7662                	ld	a2,56(sp)
    80040dda:	75c2                	ld	a1,48(sp)
    80040ddc:	0002c697          	auipc	a3,0x2c
    80040de0:	63468693          	addi	a3,a3,1588 # 8006d410 <qjsc_repl+0x7e60>
    80040de4:	8522                	mv	a0,s0
    80040de6:	b98de0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80040dea:	e8aa                	sd	a0,80(sp)
    80040dec:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:50141
    if (JS_IsException(method))
    80040dee:	0005871b          	sext.w	a4,a1
    80040df2:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:50140
    method = JS_GetPropertyStr(ctx, obj, "toISOString");
    80040df4:	84aa                	mv	s1,a0
    80040df6:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:50141
    if (JS_IsException(method))
    80040df8:	f6f70de3          	beq	a4,a5,80040d72 <js_date_toJSON+0x2c>
quickjs-nuttx/quickjs.c:50143
    if (!JS_IsFunction(ctx, method)) {
    80040dfc:	85aa                	mv	a1,a0
    80040dfe:	8522                	mv	a0,s0
    80040e00:	e432                	sd	a2,8(sp)
    80040e02:	ea0cd0ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80040e06:	6622                	ld	a2,8(sp)
    80040e08:	ed11                	bnez	a0,80040e24 <js_date_toJSON+0xde>
quickjs-nuttx/quickjs.c:50144
        JS_ThrowTypeError(ctx, "object needs toISOString method");
    80040e0a:	8522                	mv	a0,s0
    80040e0c:	0002c597          	auipc	a1,0x2c
    80040e10:	61458593          	addi	a1,a1,1556 # 8006d420 <qjsc_repl+0x7e70>
    80040e14:	859d70ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:50145
        JS_FreeValue(ctx, method);
    80040e18:	65c6                	ld	a1,80(sp)
    80040e1a:	6666                	ld	a2,88(sp)
    80040e1c:	8522                	mv	a0,s0
    80040e1e:	981ca0ef          	jal	ra,8000b79e <JS_FreeValue>
    80040e22:	bf81                	j	80040d72 <js_date_toJSON+0x2c>
quickjs-nuttx/quickjs.c:50148
    rv = JS_CallFree(ctx, method, obj, 0, NULL);
    80040e24:	76c2                	ld	a3,48(sp)
    80040e26:	7762                	ld	a4,56(sp)
    80040e28:	85a6                	mv	a1,s1
    80040e2a:	4801                	li	a6,0
    80040e2c:	4781                	li	a5,0
    80040e2e:	8522                	mv	a0,s0
    80040e30:	c45d50ef          	jal	ra,80016a74 <JS_CallFree>
    80040e34:	f0aa                	sd	a0,96(sp)
    80040e36:	84ae                	mv	s1,a1
    80040e38:	bfbd                	j	80040db6 <js_date_toJSON+0x70>

0000000080040e3a <js_binary_arith_bigint>:
js_binary_arith_bigint():
quickjs-nuttx/quickjs.c:13054
{
    80040e3a:	7125                	addi	sp,sp,-416
    80040e3c:	eb22                	sd	s0,400(sp)
    80040e3e:	e726                	sd	s1,392(sp)
    80040e40:	fad2                	sd	s4,368(sp)
    80040e42:	f2da                	sd	s6,352(sp)
    80040e44:	eae2                	sd	s8,336(sp)
    80040e46:	ec3a                	sd	a4,24(sp)
    80040e48:	e03e                	sd	a5,0(sp)
    80040e4a:	ef06                	sd	ra,408(sp)
    80040e4c:	e34a                	sd	s2,384(sp)
    80040e4e:	fece                	sd	s3,376(sp)
    80040e50:	f6d6                	sd	s5,360(sp)
    80040e52:	eede                	sd	s7,344(sp)
    80040e54:	84aa                	mv	s1,a0
    80040e56:	8b2e                	mv	s6,a1
    80040e58:	8a32                	mv	s4,a2
    80040e5a:	e836                	sd	a3,16(sp)
    80040e5c:	e442                	sd	a6,8(sp)
quickjs-nuttx/quickjs.c:13059
    res = JS_NewBigInt(ctx);
    80040e5e:	d4dd90ef          	jal	ra,8001abaa <JS_NewBigInt>
    80040e62:	f42a                	sd	a0,40(sp)
    80040e64:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:13060
    if (JS_IsException(res))
    80040e66:	0005871b          	sext.w	a4,a1
    80040e6a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:13059
    res = JS_NewBigInt(ctx);
    80040e6c:	842e                	mv	s0,a1
    80040e6e:	8c2a                	mv	s8,a0
quickjs-nuttx/quickjs.c:13060
    if (JS_IsException(res))
    80040e70:	02f70763          	beq	a4,a5,80040e9e <js_binary_arith_bigint+0x64>
quickjs-nuttx/quickjs.c:13062
    a = JS_ToBigInt(ctx, &a_s, op1);
    80040e74:	6642                	ld	a2,16(sp)
    80040e76:	66e2                	ld	a3,24(sp)
    80040e78:	09ac                	addi	a1,sp,216
    80040e7a:	8526                	mv	a0,s1
    80040e7c:	cbde50ef          	jal	ra,80026b38 <JS_ToBigInt>
    80040e80:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:13063
    if (!a)
    80040e82:	cd11                	beqz	a0,80040e9e <js_binary_arith_bigint+0x64>
quickjs-nuttx/quickjs.c:13065
    b = JS_ToBigInt(ctx, &b_s, op2);
    80040e84:	6602                	ld	a2,0(sp)
    80040e86:	66a2                	ld	a3,8(sp)
    80040e88:	020c                	addi	a1,sp,256
    80040e8a:	8526                	mv	a0,s1
    80040e8c:	cade50ef          	jal	ra,80026b38 <JS_ToBigInt>
    80040e90:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:13066
    if (!b) {
    80040e92:	e515                	bnez	a0,80040ebe <js_binary_arith_bigint+0x84>
quickjs-nuttx/quickjs.c:13067
        JS_FreeBigInt(ctx, a, &a_s);
    80040e94:	09b0                	addi	a2,sp,216
    80040e96:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:13130
                    JS_FreeBigInt(ctx, b, &b_s);
    80040e98:	8526                	mv	a0,s1
    80040e9a:	d8dca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13207
    JS_FreeValue(ctx, res);
    80040e9e:	85e2                	mv	a1,s8
    80040ea0:	8622                	mv	a2,s0
    80040ea2:	8526                	mv	a0,s1
    80040ea4:	8fbca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13208
    JS_FreeValue(ctx, op1);
    80040ea8:	65c2                	ld	a1,16(sp)
    80040eaa:	6662                	ld	a2,24(sp)
    80040eac:	8526                	mv	a0,s1
    80040eae:	8f1ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13209
    JS_FreeValue(ctx, op2);
    80040eb2:	6582                	ld	a1,0(sp)
    80040eb4:	6622                	ld	a2,8(sp)
    80040eb6:	8526                	mv	a0,s1
    80040eb8:	8e7ca0ef          	jal	ra,8000b79e <JS_FreeValue>
    80040ebc:	acd5                	j	800411b0 <js_binary_arith_bigint+0x376>
JS_GetBigInt():
quickjs-nuttx/quickjs.c:1143
    return &p->num;
    80040ebe:	f65b079b          	addiw	a5,s6,-155
    80040ec2:	0007869b          	sext.w	a3,a5
    80040ec6:	4765                	li	a4,25
    80040ec8:	008c0a93          	addi	s5,s8,8
js_binary_arith_bigint():
quickjs-nuttx/quickjs.c:13072
    switch(op) {
    80040ecc:	38d76963          	bltu	a4,a3,8004125e <js_binary_arith_bigint+0x424>
    80040ed0:	02079713          	slli	a4,a5,0x20
    80040ed4:	01e75793          	srli	a5,a4,0x1e
    80040ed8:	0002c717          	auipc	a4,0x2c
    80040edc:	56870713          	addi	a4,a4,1384 # 8006d440 <qjsc_repl+0x7e90>
    80040ee0:	97ba                	add	a5,a5,a4
    80040ee2:	439c                	lw	a5,0(a5)
    80040ee4:	97ba                	add	a5,a5,a4
    80040ee6:	8782                	jr	a5
quickjs-nuttx/quickjs.c:13074
        ret = bf_add(r, a, b, BF_PREC_INF, BF_RNDZ);
    80040ee8:	56fd                	li	a3,-1
    80040eea:	862a                	mv	a2,a0
    80040eec:	4705                	li	a4,1
    80040eee:	8289                	srli	a3,a3,0x2
    80040ef0:	85ce                	mv	a1,s3
    80040ef2:	8556                	mv	a0,s5
    80040ef4:	449170ef          	jal	ra,80058b3c <bf_add>
quickjs-nuttx/quickjs.c:13077
        ret = bf_sub(r, a, b, BF_PREC_INF, BF_RNDZ);
    80040ef8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13195
    JS_FreeBigInt(ctx, a, &a_s);
    80040efa:	09b0                	addi	a2,sp,216
    80040efc:	85ce                	mv	a1,s3
    80040efe:	8526                	mv	a0,s1
    80040f00:	d27ca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13196
    JS_FreeBigInt(ctx, b, &b_s);
    80040f04:	0210                	addi	a2,sp,256
    80040f06:	85ca                	mv	a1,s2
    80040f08:	8526                	mv	a0,s1
    80040f0a:	d1dca0ef          	jal	ra,8000bc26 <JS_FreeBigInt>
quickjs-nuttx/quickjs.c:13197
    JS_FreeValue(ctx, op1);
    80040f0e:	65c2                	ld	a1,16(sp)
    80040f10:	6662                	ld	a2,24(sp)
    80040f12:	8526                	mv	a0,s1
    80040f14:	88bca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13198
    JS_FreeValue(ctx, op2);
    80040f18:	6582                	ld	a1,0(sp)
    80040f1a:	6622                	ld	a2,8(sp)
    80040f1c:	8526                	mv	a0,s1
    80040f1e:	881ca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13200
        JS_FreeValue(ctx, res);
    80040f22:	75a2                	ld	a1,40(sp)
    80040f24:	7642                	ld	a2,48(sp)
    80040f26:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:13199
    if (unlikely(ret)) {
    80040f28:	26041e63          	bnez	s0,800411a4 <js_binary_arith_bigint+0x36a>
quickjs-nuttx/quickjs.c:13204
    *pres = JS_CompactBigInt(ctx, res);
    80040f2c:	f23cb0ef          	jal	ra,8000ce4e <JS_CompactBigInt>
    80040f30:	00aa3023          	sd	a0,0(s4)
    80040f34:	00ba3423          	sd	a1,8(s4)
quickjs-nuttx/quickjs.c:13205
    return 0;
    80040f38:	a411                	j	8004113c <js_binary_arith_bigint+0x302>
quickjs-nuttx/quickjs.c:13077
        ret = bf_sub(r, a, b, BF_PREC_INF, BF_RNDZ);
    80040f3a:	56fd                	li	a3,-1
    80040f3c:	862a                	mv	a2,a0
    80040f3e:	4705                	li	a4,1
    80040f40:	8289                	srli	a3,a3,0x2
    80040f42:	85ce                	mv	a1,s3
    80040f44:	8556                	mv	a0,s5
    80040f46:	45f170ef          	jal	ra,80058ba4 <bf_sub>
    80040f4a:	b77d                	j	80040ef8 <js_binary_arith_bigint+0xbe>
quickjs-nuttx/quickjs.c:13080
        ret = bf_mul(r, a, b, BF_PREC_INF, BF_RNDZ);
    80040f4c:	56fd                	li	a3,-1
    80040f4e:	862a                	mv	a2,a0
    80040f50:	4705                	li	a4,1
    80040f52:	8289                	srli	a3,a3,0x2
    80040f54:	85ce                	mv	a1,s3
    80040f56:	8556                	mv	a0,s5
    80040f58:	7d81b0ef          	jal	ra,8005c730 <bf_mul>
    80040f5c:	bf71                	j	80040ef8 <js_binary_arith_bigint+0xbe>
quickjs-nuttx/quickjs.c:13083
        if (!is_math_mode(ctx)) {
    80040f5e:	8526                	mv	a0,s1
    80040f60:	c35c60ef          	jal	ra,80007b94 <is_math_mode>
    80040f64:	e939                	bnez	a0,80040fba <js_binary_arith_bigint+0x180>
quickjs-nuttx/quickjs.c:13085
            bf_init(ctx->bf_ctx, rem);
    80040f66:	1904b503          	ld	a0,400(s1)
    80040f6a:	122c                	addi	a1,sp,296
    80040f6c:	403160ef          	jal	ra,80057b6e <bf_init>
quickjs-nuttx/quickjs.c:13086
            ret = bf_divrem(r, rem, a, b, BF_PREC_INF, BF_RNDZ,
    80040f70:	577d                	li	a4,-1
    80040f72:	4805                	li	a6,1
    80040f74:	4785                	li	a5,1
    80040f76:	8309                	srli	a4,a4,0x2
    80040f78:	86ca                	mv	a3,s2
    80040f7a:	864e                	mv	a2,s3
    80040f7c:	122c                	addi	a1,sp,296
    80040f7e:	8556                	mv	a0,s5
    80040f80:	2e61e0ef          	jal	ra,8005f266 <bf_divrem>
    80040f84:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13088
            bf_delete(rem);
    80040f86:	1228                	addi	a0,sp,296
    80040f88:	ccec90ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:13092
        break;
    80040f8c:	b7bd                	j	80040efa <js_binary_arith_bigint+0xc0>
quickjs-nuttx/quickjs.c:13096
        ret = bf_rem(r, a, b, BF_PREC_INF, BF_RNDZ,
    80040f8e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:13101
        ret = bf_rem(r, a, b, BF_PREC_INF, BF_RNDZ,
    80040f90:	56fd                	li	a3,-1
    80040f92:	4705                	li	a4,1
    80040f94:	8289                	srli	a3,a3,0x2
    80040f96:	864a                	mv	a2,s2
    80040f98:	85ce                	mv	a1,s3
    80040f9a:	8556                	mv	a0,s5
    80040f9c:	5341e0ef          	jal	ra,8005f4d0 <bf_rem>
    80040fa0:	00157413          	andi	s0,a0,1
quickjs-nuttx/quickjs.c:13103
        break;
    80040fa4:	bf99                	j	80040efa <js_binary_arith_bigint+0xc0>
quickjs-nuttx/quickjs.c:13101
        ret = bf_rem(r, a, b, BF_PREC_INF, BF_RNDZ,
    80040fa6:	4785                	li	a5,1
    80040fa8:	b7e5                	j	80040f90 <js_binary_arith_bigint+0x156>
quickjs-nuttx/quickjs.c:13105
        if (b->sign) {
    80040faa:	451c                	lw	a5,8(a0)
    80040fac:	22078063          	beqz	a5,800411cc <js_binary_arith_bigint+0x392>
quickjs-nuttx/quickjs.c:13106
            if (!is_math_mode(ctx)) {
    80040fb0:	8526                	mv	a0,s1
    80040fb2:	be3c60ef          	jal	ra,80007b94 <is_math_mode>
    80040fb6:	2a050663          	beqz	a0,80041262 <js_binary_arith_bigint+0x428>
quickjs-nuttx/quickjs.c:13111
                JS_FreeValue(ctx, res);
    80040fba:	75a2                	ld	a1,40(sp)
    80040fbc:	7642                	ld	a2,48(sp)
    80040fbe:	8526                	mv	a0,s1
js_call_binary_op_simple():
quickjs-nuttx/quickjs.c:12642
    if (JS_IsException(opset1_obj))
    80040fc0:	4a99                	li	s5,6
js_binary_arith_bigint():
quickjs-nuttx/quickjs.c:13111
                JS_FreeValue(ctx, res);
    80040fc2:	fdcca0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13112
                ret = js_call_binary_op_simple(ctx, &res, ctx->class_proto[JS_CLASS_BIG_INT], op1, op2, op);
    80040fc6:	66c2                	ld	a3,16(sp)
    80040fc8:	60bc                	ld	a5,64(s1)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80040fca:	4801                	li	a6,0
    80040fcc:	e4b6                	sd	a3,72(sp)
    80040fce:	66e2                	ld	a3,24(sp)
    80040fd0:	2107b703          	ld	a4,528(a5)
    80040fd4:	2187b783          	ld	a5,536(a5)
    80040fd8:	e8b6                	sd	a3,80(sp)
    80040fda:	6682                	ld	a3,0(sp)
    80040fdc:	863e                	mv	a2,a5
    80040fde:	85ba                	mv	a1,a4
    80040fe0:	ecb6                	sd	a3,88(sp)
    80040fe2:	66a2                	ld	a3,8(sp)
    80040fe4:	8526                	mv	a0,s1
    80040fe6:	e0be                	sd	a5,64(sp)
    80040fe8:	f0b6                	sd	a3,96(sp)
    80040fea:	0e200693          	li	a3,226
    80040fee:	fa3e                	sd	a5,304(sp)
    80040ff0:	fc3a                	sd	a4,56(sp)
    80040ff2:	f63a                	sd	a4,296(sp)
    80040ff4:	ab7d50ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80040ff8:	fd2a                	sd	a0,184(sp)
    80040ffa:	e1ae                	sd	a1,192(sp)
    80040ffc:	f4aa                	sd	a0,104(sp)
    80040ffe:	f8ae                	sd	a1,112(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
