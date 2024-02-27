    80043002:	e82e                	sd	a1,16(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44443
    if (JS_IsException(flags))
    80043004:	47c2                	lw	a5,16(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80043006:	fbaa                	sd	a0,496(sp)
    80043008:	ffae                	sd	a1,504(sp)
    8004300a:	f42a                	sd	a0,40(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44443
    8004300c:	4999                	li	s3,6
    8004300e:	1d3785e3          	beq	a5,s3,800439d8 <js_regexp_Symbol_replace+0xb0e>
quickjs-nuttx/quickjs.c:44445
    flags = JS_ToStringFree(ctx, flags);
    80043012:	6642                	ld	a2,16(sp)
    80043014:	85aa                	mv	a1,a0
    80043016:	8522                	mv	a0,s0
    80043018:	f6edd0ef          	jal	ra,80020786 <JS_ToStringFree>
    8004301c:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:44446
    if (JS_IsException(flags))
    8004301e:	47c2                	lw	a5,16(sp)
quickjs-nuttx/quickjs.c:44445
    flags = JS_ToStringFree(ctx, flags);
    80043020:	f12a                	sd	a0,160(sp)
    80043022:	f52e                	sd	a1,168(sp)
    80043024:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:44446
    if (JS_IsException(flags))
    80043026:	1b3789e3          	beq	a5,s3,800439d8 <js_regexp_Symbol_replace+0xb0e>
quickjs-nuttx/quickjs.c:44452
    is_global = (-1 != string_indexof_char(p, 'g', 0));
    8004302a:	4601                	li	a2,0
    8004302c:	06700593          	li	a1,103
    80043030:	974c50ef          	jal	ra,800081a4 <string_indexof_char>
quickjs-nuttx/quickjs.c:44453
    if (is_global) {
    80043034:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:44452
    is_global = (-1 != string_indexof_char(p, 'g', 0));
    80043036:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:44451
    fullUnicode = 0;
    80043038:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:44453
    if (is_global) {
    8004303a:	04f50b63          	beq	a0,a5,80043090 <js_regexp_Symbol_replace+0x1c6>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004303e:	4801                	li	a6,0
    80043040:	8726                	mv	a4,s1
    80043042:	87ca                	mv	a5,s2
    80043044:	07000693          	li	a3,112
    80043048:	864a                	mv	a2,s2
    8004304a:	85a6                	mv	a1,s1
    8004304c:	8522                	mv	a0,s0
    8004304e:	30913823          	sd	s1,784(sp)
    80043052:	31213c23          	sd	s2,792(sp)
    80043056:	a55d30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8004305a:	862e                	mv	a2,a1
    8004305c:	20a13023          	sd	a0,512(sp)
    80043060:	20b13423          	sd	a1,520(sp)
    80043064:	fa2a                	sd	a0,304(sp)
    80043066:	fe2e                	sd	a1,312(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44454
        fullUnicode = JS_ToBoolFree(ctx, JS_GetProperty(ctx, rx, JS_ATOM_unicode));
    80043068:	85aa                	mv	a1,a0
    8004306a:	8522                	mv	a0,s0
    8004306c:	aa9c80ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80043070:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:44455
        if (fullUnicode < 0)
    80043072:	160543e3          	bltz	a0,800439d8 <js_regexp_Symbol_replace+0xb0e>
quickjs-nuttx/quickjs.c:44457
        if (JS_SetProperty(ctx, rx, JS_ATOM_lastIndex, JS_NewInt32(ctx, 0)) < 0)
    80043076:	658a                	ld	a1,128(sp)
    80043078:	662a                	ld	a2,136(sp)
    8004307a:	4701                	li	a4,0
    8004307c:	4781                	li	a5,0
    8004307e:	05600693          	li	a3,86
    80043082:	8522                	mv	a0,s0
    80043084:	e282                	sd	zero,320(sp)
    80043086:	e682                	sd	zero,328(sp)
    80043088:	b85f40ef          	jal	ra,80037c0c <JS_SetProperty>
    8004308c:	140546e3          	bltz	a0,800439d8 <js_regexp_Symbol_replace+0xb0e>
quickjs-nuttx/quickjs.c:44461
    if (rp && rp->len == 0 && is_global && js_is_standard_regexp(ctx, rx)) {
    80043090:	67e2                	ld	a5,24(sp)
    80043092:	140789e3          	beqz	a5,800439e4 <js_regexp_Symbol_replace+0xb1a>
quickjs-nuttx/quickjs.c:44461 (discriminator 1)
    80043096:	43dc                	lw	a5,4(a5)
    80043098:	1786                	slli	a5,a5,0x21
    8004309a:	140795e3          	bnez	a5,800439e4 <js_regexp_Symbol_replace+0xb1a>
quickjs-nuttx/quickjs.c:44461 (discriminator 2)
    8004309e:	57fd                	li	a5,-1
    800430a0:	14fb02e3          	beq	s6,a5,800439e4 <js_regexp_Symbol_replace+0xb1a>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 3)
    800430a4:	87ca                	mv	a5,s2
    800430a6:	864a                	mv	a2,s2
    800430a8:	4801                	li	a6,0
    800430aa:	8726                	mv	a4,s1
    800430ac:	03d00693          	li	a3,61
    800430b0:	85a6                	mv	a1,s1
    800430b2:	8522                	mv	a0,s0
    800430b4:	2c913823          	sd	s1,720(sp)
    800430b8:	2d213c23          	sd	s2,728(sp)
js_is_standard_regexp():
quickjs-nuttx/quickjs.c:44384 (discriminator 3)
    val = JS_GetProperty(ctx, rx, JS_ATOM_constructor);
    800430bc:	30913823          	sd	s1,784(sp)
    800430c0:	31213c23          	sd	s2,792(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 3)
    800430c4:	9e7d30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800430c8:	24a13823          	sd	a0,592(sp)
    800430cc:	24b13c23          	sd	a1,600(sp)
    800430d0:	2ea13023          	sd	a0,736(sp)
    800430d4:	2eb13423          	sd	a1,744(sp)
js_is_standard_regexp():
quickjs-nuttx/quickjs.c:44385 (discriminator 3)
    if (JS_IsException(val))
    800430d8:	0005879b          	sext.w	a5,a1
    800430dc:	4999                	li	s3,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732 (discriminator 3)
    800430de:	862e                	mv	a2,a1
js_is_standard_regexp():
quickjs-nuttx/quickjs.c:44385 (discriminator 3)
    800430e0:	09378263          	beq	a5,s3,80043164 <js_regexp_Symbol_replace+0x29a>
quickjs-nuttx/quickjs.c:44388
    res = js_same_value(ctx, val, ctx->regexp_ctor);
    800430e4:	7c34                	ld	a3,120(s0)
    800430e6:	6058                	ld	a4,128(s0)
    800430e8:	85aa                	mv	a1,a0
    800430ea:	8522                	mv	a0,s0
    800430ec:	887c80ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:44389
    JS_FreeValue(ctx, val);
    800430f0:	2e013583          	ld	a1,736(sp)
    800430f4:	2e813603          	ld	a2,744(sp)
quickjs-nuttx/quickjs.c:44388
    res = js_same_value(ctx, val, ctx->regexp_ctor);
    800430f8:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:44389
    JS_FreeValue(ctx, val);
    800430fa:	8522                	mv	a0,s0
    800430fc:	ea2c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44390
    if (res) {
    80043100:	0e0a02e3          	beqz	s4,800439e4 <js_regexp_Symbol_replace+0xb1a>
quickjs-nuttx/quickjs.c:44391
        val = JS_GetProperty(ctx, rx, JS_ATOM_exec);
    80043104:	2d813783          	ld	a5,728(sp)
    80043108:	2d013703          	ld	a4,720(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004310c:	4801                	li	a6,0
    8004310e:	863e                	mv	a2,a5
    80043110:	08700693          	li	a3,135
    80043114:	85ba                	mv	a1,a4
    80043116:	8522                	mv	a0,s0
    80043118:	30f13c23          	sd	a5,792(sp)
    8004311c:	30e13823          	sd	a4,784(sp)
    80043120:	98bd30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80043124:	24a13023          	sd	a0,576(sp)
    80043128:	24b13423          	sd	a1,584(sp)
    8004312c:	2ea13023          	sd	a0,736(sp)
    80043130:	2eb13423          	sd	a1,744(sp)
js_is_standard_regexp():
quickjs-nuttx/quickjs.c:44392
        if (JS_IsException(val))
    80043134:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80043138:	8a2a                	mv	s4,a0
    8004313a:	862e                	mv	a2,a1
js_is_standard_regexp():
quickjs-nuttx/quickjs.c:44392
    8004313c:	03378463          	beq	a5,s3,80043164 <js_regexp_Symbol_replace+0x29a>
quickjs-nuttx/quickjs.c:44395
        res = JS_IsCFunction(ctx, val, js_regexp_exec, 0);
    80043140:	85aa                	mv	a1,a0
    80043142:	4701                	li	a4,0
    80043144:	ffffa697          	auipc	a3,0xffffa
    80043148:	e8a68693          	addi	a3,a3,-374 # 8003cfce <js_regexp_exec>
    8004314c:	8522                	mv	a0,s0
    8004314e:	f832                	sd	a2,48(sp)
    80043150:	c44cb0ef          	jal	ra,8000e594 <JS_IsCFunction>
quickjs-nuttx/quickjs.c:44396
        JS_FreeValue(ctx, val);
    80043154:	7642                	ld	a2,48(sp)
quickjs-nuttx/quickjs.c:44395
        res = JS_IsCFunction(ctx, val, js_regexp_exec, 0);
    80043156:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:44396
        JS_FreeValue(ctx, val);
    80043158:	85d2                	mv	a1,s4
    8004315a:	8522                	mv	a0,s0
    8004315c:	e42c80ef          	jal	ra,8000b79e <JS_FreeValue>
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44461
    if (rp && rp->len == 0 && is_global && js_is_standard_regexp(ctx, rx)) {
    80043160:	080982e3          	beqz	s3,800439e4 <js_regexp_Symbol_replace+0xb1a>
quickjs-nuttx/quickjs.c:44463
        res = JS_RegExpDelete(ctx, rx, str);
    80043164:	67a2                	ld	a5,8(sp)
js_get_regexp():
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    80043166:	0064d703          	lhu	a4,6(s1)
    8004316a:	27b13823          	sd	s11,624(sp)
    8004316e:	26f13c23          	sd	a5,632(sp)
    80043172:	47c9                	li	a5,18
    80043174:	02f71963          	bne	a4,a5,800431a6 <js_regexp_Symbol_replace+0x2dc>
JS_RegExpDelete():
quickjs-nuttx/quickjs.c:43957
    string_buffer_init(ctx, b, 0);
    80043178:	4601                	li	a2,0
    8004317a:	0e0c                	addi	a1,sp,784
    8004317c:	8522                	mv	a0,s0
    8004317e:	dffda0ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:43960
    str_val = JS_ToString(ctx, arg);
    80043182:	27013583          	ld	a1,624(sp)
    80043186:	27813603          	ld	a2,632(sp)
    8004318a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:43961
    if (JS_IsException(str_val))
    8004318c:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:43960
    str_val = JS_ToString(ctx, arg);
    8004318e:	deedd0ef          	jal	ra,8002077c <JS_ToString>
    80043192:	28b13423          	sd	a1,648(sp)
    80043196:	28a13023          	sd	a0,640(sp)
quickjs-nuttx/quickjs.c:43961
    if (JS_IsException(str_val))
    8004319a:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:43960
    str_val = JS_ToString(ctx, arg);
    8004319c:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:43961
    if (JS_IsException(str_val))
    8004319e:	01459c63          	bne	a1,s4,800431b6 <js_regexp_Symbol_replace+0x2ec>
quickjs-nuttx/quickjs.c:43959
    capture = NULL;
    800431a2:	4a01                	li	s4,0
    800431a4:	a2bd                	j	80043312 <js_regexp_Symbol_replace+0x448>
js_get_regexp():
quickjs-nuttx/quickjs.c:43404
        JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_REGEXP);
    800431a6:	45c9                	li	a1,18
    800431a8:	8522                	mv	a0,s0
    800431aa:	e1cd50ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
JS_RegExpDelete():
quickjs-nuttx/quickjs.c:44033
    return JS_EXCEPTION;
    800431ae:	2e013023          	sd	zero,736(sp)
    800431b2:	4b19                	li	s6,6
    800431b4:	a0fd                	j	800432a2 <js_regexp_Symbol_replace+0x3d8>
quickjs-nuttx/quickjs.c:43964
    re_bytecode = re->bytecode->u.str8;
    800431b6:	0384bb03          	ld	s6,56(s1)
    800431ba:	0b41                	addi	s6,s6,16
quickjs-nuttx/quickjs.c:43965
    re_flags = lre_get_flags(re_bytecode);
    800431bc:	855a                	mv	a0,s6
    800431be:	7720c0ef          	jal	ra,8004f930 <lre_get_flags>
quickjs-nuttx/quickjs.c:43966
    if ((re_flags & (LRE_FLAG_GLOBAL | LRE_FLAG_STICKY)) == 0) {
    800431c2:	02157793          	andi	a5,a0,33
    800431c6:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:43965
    re_flags = lre_get_flags(re_bytecode);
    800431c8:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:43966
    if ((re_flags & (LRE_FLAG_GLOBAL | LRE_FLAG_STICKY)) == 0) {
    800431ca:	0e079a63          	bnez	a5,800432be <js_regexp_Symbol_replace+0x3f4>
quickjs-nuttx/quickjs.c:43967
        last_index = 0;
    800431ce:	22013823          	sd	zero,560(sp)
quickjs-nuttx/quickjs.c:43973
    capture_count = lre_get_capture_count(re_bytecode);
    800431d2:	855a                	mv	a0,s6
    800431d4:	7560c0ef          	jal	ra,8004f92a <lre_get_capture_count>
quickjs-nuttx/quickjs.c:43959
    capture = NULL;
    800431d8:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43974
    if (capture_count > 0) {
    800431da:	00a05963          	blez	a0,800431ec <js_regexp_Symbol_replace+0x322>
quickjs-nuttx/quickjs.c:43975
        capture = js_malloc(ctx, sizeof(capture[0]) * capture_count * 2);
    800431de:	00451593          	slli	a1,a0,0x4
    800431e2:	8522                	mv	a0,s0
    800431e4:	f21d60ef          	jal	ra,8001a104 <js_malloc>
    800431e8:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:43976
        if (!capture)
    800431ea:	dd45                	beqz	a0,800431a2 <js_regexp_Symbol_replace+0x2d8>
quickjs-nuttx/quickjs.c:43979
    shift = str->is_wide_char;
    800431ec:	0049ab83          	lw	s7,4(s3)
quickjs-nuttx/quickjs.c:44009
        if (!(re_flags & LRE_FLAG_GLOBAL)) {
    800431f0:	001af793          	andi	a5,s5,1
quickjs-nuttx/quickjs.c:43983
        if (last_index > str->len)
    800431f4:	80000c37          	lui	s8,0x80000
quickjs-nuttx/quickjs.c:43979
    shift = str->is_wide_char;
    800431f8:	01fbdb9b          	srliw	s7,s7,0x1f
quickjs-nuttx/quickjs.c:43980
    str_buf = str->u.str8;
    800431fc:	01098c93          	addi	s9,s3,16
quickjs-nuttx/quickjs.c:43981
    next_src_pos = 0;
    80043200:	4d01                	li	s10,0
quickjs-nuttx/quickjs.c:43983
        if (last_index > str->len)
    80043202:	fffc4c13          	not	s8,s8
quickjs-nuttx/quickjs.c:44009
        if (!(re_flags & LRE_FLAG_GLOBAL)) {
    80043206:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:44016
            if (!(re_flags & LRE_FLAG_UTF16) || (unsigned)end >= str->len || !str->is_wide_char) {
    80043208:	010afa93          	andi	s5,s5,16
quickjs-nuttx/quickjs.c:43983
        if (last_index > str->len)
    8004320c:	0049a703          	lw	a4,4(s3)
    80043210:	23013683          	ld	a3,560(sp)
    80043214:	00ec7733          	and	a4,s8,a4
    80043218:	02071793          	slli	a5,a4,0x20
    8004321c:	9381                	srli	a5,a5,0x20
    8004321e:	04d7c763          	blt	a5,a3,8004326c <js_regexp_Symbol_replace+0x3a2>
quickjs-nuttx/quickjs.c:43986
        ret = lre_exec(capture, re_bytecode,
    80043222:	87de                	mv	a5,s7
    80043224:	8822                	mv	a6,s0
    80043226:	2681                	sext.w	a3,a3
    80043228:	8666                	mv	a2,s9
    8004322a:	85da                	mv	a1,s6
    8004322c:	8552                	mv	a0,s4
    8004322e:	60c0c0ef          	jal	ra,8004f83a <lre_exec>
quickjs-nuttx/quickjs.c:43988
        if (ret != 1) {
    80043232:	4785                	li	a5,1
    80043234:	0ef50e63          	beq	a0,a5,80043330 <js_regexp_Symbol_replace+0x466>
quickjs-nuttx/quickjs.c:43989
            if (ret >= 0) {
    80043238:	0c054663          	bltz	a0,80043304 <js_regexp_Symbol_replace+0x43a>
quickjs-nuttx/quickjs.c:43990
                if (ret == 2 || (re_flags & (LRE_FLAG_GLOBAL | LRE_FLAG_STICKY))) {
    8004323c:	4789                	li	a5,2
    8004323e:	00f50463          	beq	a0,a5,80043246 <js_regexp_Symbol_replace+0x37c>
    80043242:	77c2                	ld	a5,48(sp)
    80043244:	c785                	beqz	a5,8004326c <js_regexp_Symbol_replace+0x3a2>
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80043246:	2c013823          	sd	zero,720(sp)
    8004324a:	2c013c23          	sd	zero,728(sp)
JS_RegExpDelete():
quickjs-nuttx/quickjs.c:43991
                    if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    8004324e:	26913023          	sd	s1,608(sp)
    80043252:	27213423          	sd	s2,616(sp)
    80043256:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:44010
            if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    80043258:	4781                	li	a5,0
    8004325a:	05600693          	li	a3,86
    8004325e:	85a6                	mv	a1,s1
    80043260:	864a                	mv	a2,s2
    80043262:	8522                	mv	a0,s0
    80043264:	9a9f40ef          	jal	ra,80037c0c <JS_SetProperty>
    80043268:	0a054563          	bltz	a0,80043312 <js_regexp_Symbol_replace+0x448>
quickjs-nuttx/quickjs.c:44024
    if (string_buffer_concat(b, str, next_src_pos, str->len))
    8004326c:	0049a683          	lw	a3,4(s3)
    80043270:	866a                	mv	a2,s10
    80043272:	85ce                	mv	a1,s3
    80043274:	1686                	slli	a3,a3,0x21
    80043276:	9285                	srli	a3,a3,0x21
    80043278:	0e08                	addi	a0,sp,784
    8004327a:	869db0ef          	jal	ra,8001eae2 <string_buffer_concat>
    8004327e:	e951                	bnez	a0,80043312 <js_regexp_Symbol_replace+0x448>
quickjs-nuttx/quickjs.c:44026
    JS_FreeValue(ctx, str_val);
    80043280:	28813603          	ld	a2,648(sp)
    80043284:	28013583          	ld	a1,640(sp)
    80043288:	8522                	mv	a0,s0
    8004328a:	d14c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44027
    js_free(ctx, capture);
    8004328e:	85d2                	mv	a1,s4
    80043290:	8522                	mv	a0,s0
    80043292:	d65c70ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:44028
    return string_buffer_end(b);
    80043296:	0e08                	addi	a0,sp,784
    80043298:	a09dc0ef          	jal	ra,8001fca0 <string_buffer_end>
    8004329c:	2ea13023          	sd	a0,736(sp)
    800432a0:	8b2e                	mv	s6,a1
    800432a2:	2e013783          	ld	a5,736(sp)
    800432a6:	2f613423          	sd	s6,744(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44426
    namedCaptures = JS_UNDEFINED;
    800432aa:	490d                	li	s2,3
    800432ac:	ea3e                	sd	a5,272(sp)
quickjs-nuttx/quickjs.c:44425
    rep_str = JS_UNDEFINED;
    800432ae:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:44423
    tab = JS_UNDEFINED;
    800432b0:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:44422
    matched = JS_UNDEFINED;
    800432b2:	498d                	li	s3,3
    800432b4:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:44581
    string_buffer_free(b);
    800432b6:	1d88                	addi	a0,sp,752
    800432b8:	d6bc70ef          	jal	ra,8000b022 <string_buffer_free>
    800432bc:	ae29                	j	800435d6 <js_regexp_Symbol_replace+0x70c>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800432be:	87ca                	mv	a5,s2
    800432c0:	05600693          	li	a3,86
    800432c4:	864a                	mv	a2,s2
    800432c6:	4801                	li	a6,0
    800432c8:	8726                	mv	a4,s1
    800432ca:	85a6                	mv	a1,s1
    800432cc:	8522                	mv	a0,s0
    800432ce:	2e913023          	sd	s1,736(sp)
    800432d2:	2f213423          	sd	s2,744(sp)
    800432d6:	fd4d30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800432da:	2aa13823          	sd	a0,688(sp)
    800432de:	2ab13c23          	sd	a1,696(sp)
    800432e2:	28a13823          	sd	a0,656(sp)
    800432e6:	28b13c23          	sd	a1,664(sp)
JS_RegExpDelete():
quickjs-nuttx/quickjs.c:43970
        if (JS_IsException(val) || JS_ToLengthFree(ctx, &last_index, val))
    800432ea:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800432ee:	862a                	mv	a2,a0
    800432f0:	86ae                	mv	a3,a1
JS_RegExpDelete():
quickjs-nuttx/quickjs.c:43970
    800432f2:	eb4788e3          	beq	a5,s4,800431a2 <js_regexp_Symbol_replace+0x2d8>
    800432f6:	1c0c                	addi	a1,sp,560
    800432f8:	8522                	mv	a0,s0
    800432fa:	aa5e10ef          	jal	ra,80024d9e <JS_ToLengthFree>
    800432fe:	ec050ae3          	beqz	a0,800431d2 <js_regexp_Symbol_replace+0x308>
    80043302:	b545                	j	800431a2 <js_regexp_Symbol_replace+0x2d8>
quickjs-nuttx/quickjs.c:43996
                JS_ThrowInternalError(ctx, "out of memory in regexp execution");
    80043304:	0002a597          	auipc	a1,0x2a
    80043308:	d1c58593          	addi	a1,a1,-740 # 8006d020 <qjsc_repl+0x7a70>
    8004330c:	8522                	mv	a0,s0
    8004330e:	dead60ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:44030
    JS_FreeValue(ctx, str_val);
    80043312:	28013583          	ld	a1,640(sp)
    80043316:	28813603          	ld	a2,648(sp)
    8004331a:	8522                	mv	a0,s0
    8004331c:	c82c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44031
    js_free(ctx, capture);
    80043320:	8522                	mv	a0,s0
    80043322:	85d2                	mv	a1,s4
    80043324:	cd3c70ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:44032
    string_buffer_free(b);
    80043328:	0e08                	addi	a0,sp,784
    8004332a:	cf9c70ef          	jal	ra,8000b022 <string_buffer_free>
    8004332e:	b541                	j	800431ae <js_regexp_Symbol_replace+0x2e4>
quickjs-nuttx/quickjs.c:44002
        end = (capture[1] - str_buf) >> shift;
    80043330:	008a3783          	ld	a5,8(s4)
quickjs-nuttx/quickjs.c:44001
        start = (capture[0] - str_buf) >> shift;
    80043334:	000a3683          	ld	a3,0(s4)
quickjs-nuttx/quickjs.c:44002
        end = (capture[1] - str_buf) >> shift;
    80043338:	419787b3          	sub	a5,a5,s9
quickjs-nuttx/quickjs.c:44001
        start = (capture[0] - str_buf) >> shift;
    8004333c:	419686b3          	sub	a3,a3,s9
quickjs-nuttx/quickjs.c:44002
        end = (capture[1] - str_buf) >> shift;
    80043340:	4177d7b3          	sra	a5,a5,s7
    80043344:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:44001
        start = (capture[0] - str_buf) >> shift;
    80043346:	4176d6b3          	sra	a3,a3,s7
    8004334a:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:44002
        end = (capture[1] - str_buf) >> shift;
    8004334c:	22f12023          	sw	a5,544(sp)
quickjs-nuttx/quickjs.c:44003
        last_index = end;
    80043350:	22f13823          	sd	a5,560(sp)
quickjs-nuttx/quickjs.c:44004
        if (next_src_pos < start) {
    80043354:	02dd4763          	blt	s10,a3,80043382 <js_regexp_Symbol_replace+0x4b8>
quickjs-nuttx/quickjs.c:44009
        if (!(re_flags & LRE_FLAG_GLOBAL)) {
    80043358:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:44008
        next_src_pos = end;
    8004335a:	22012d03          	lw	s10,544(sp)
quickjs-nuttx/quickjs.c:44009
        if (!(re_flags & LRE_FLAG_GLOBAL)) {
    8004335e:	eb9d                	bnez	a5,80043394 <js_regexp_Symbol_replace+0x4ca>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80043360:	2a013023          	sd	zero,672(sp)
    80043364:	2ba12023          	sw	s10,672(sp)
    80043368:	2a013703          	ld	a4,672(sp)
    8004336c:	2a013423          	sd	zero,680(sp)
    80043370:	2c013423          	sd	zero,712(sp)
    80043374:	2ce13023          	sd	a4,704(sp)
JS_RegExpDelete():
quickjs-nuttx/quickjs.c:44010
            if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    80043378:	26913023          	sd	s1,608(sp)
    8004337c:	27213423          	sd	s2,616(sp)
    80043380:	bde1                	j	80043258 <js_regexp_Symbol_replace+0x38e>
quickjs-nuttx/quickjs.c:44005
            if (string_buffer_concat(b, str, next_src_pos, start))
    80043382:	866a                	mv	a2,s10
    80043384:	85ce                	mv	a1,s3
    80043386:	0e08                	addi	a0,sp,784
    80043388:	e0b6                	sd	a3,64(sp)
    8004338a:	f58db0ef          	jal	ra,8001eae2 <string_buffer_concat>
    8004338e:	6686                	ld	a3,64(sp)
    80043390:	d561                	beqz	a0,80043358 <js_regexp_Symbol_replace+0x48e>
    80043392:	b741                	j	80043312 <js_regexp_Symbol_replace+0x448>
quickjs-nuttx/quickjs.c:44015
        if (end == start) {
    80043394:	03a69263          	bne	a3,s10,800433b8 <js_regexp_Symbol_replace+0x4ee>
quickjs-nuttx/quickjs.c:44016
            if (!(re_flags & LRE_FLAG_UTF16) || (unsigned)end >= str->len || !str->is_wide_char) {
    80043398:	000a8c63          	beqz	s5,800433b0 <js_regexp_Symbol_replace+0x4e6>
    8004339c:	0049a783          	lw	a5,4(s3)
    800433a0:	0187f733          	and	a4,a5,s8
    800433a4:	2701                	sext.w	a4,a4
    800433a6:	00ed7563          	bgeu	s10,a4,800433b0 <js_regexp_Symbol_replace+0x4e6>
    800433aa:	2781                	sext.w	a5,a5
    800433ac:	0007cb63          	bltz	a5,800433c2 <js_regexp_Symbol_replace+0x4f8>
quickjs-nuttx/quickjs.c:44017
                end++;
    800433b0:	001d079b          	addiw	a5,s10,1
    800433b4:	22f12023          	sw	a5,544(sp)
quickjs-nuttx/quickjs.c:44022
        last_index = end;
    800433b8:	22012783          	lw	a5,544(sp)
    800433bc:	22f13823          	sd	a5,560(sp)
quickjs-nuttx/quickjs.c:43983
        if (last_index > str->len)
    800433c0:	b5b1                	j	8004320c <js_regexp_Symbol_replace+0x342>
quickjs-nuttx/quickjs.c:44019
                string_getc(str, &end);
    800433c2:	140c                	addi	a1,sp,544
    800433c4:	854e                	mv	a0,s3
    800433c6:	8b9c40ef          	jal	ra,80007c7e <string_getc>
    800433ca:	b7fd                	j	800433b8 <js_regexp_Symbol_replace+0x4ee>
value_buffer_append():
quickjs-nuttx/quickjs.c:44361
                memcpy(new_arr, b->def, sizeof b->def);
    800433cc:	04000613          	li	a2,64
    800433d0:	85e2                	mv	a1,s8
    800433d2:	f82a                	sd	a0,48(sp)
    800433d4:	1d9200ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:44365
        if (!new_arr) {
    800433d8:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:44371
        new_size += slack / sizeof(*new_arr);
    800433da:	2d013703          	ld	a4,720(sp)
quickjs-nuttx/quickjs.c:44372
        b->arr = new_arr;
    800433de:	36f13c23          	sd	a5,888(sp)
quickjs-nuttx/quickjs.c:44371
        new_size += slack / sizeof(*new_arr);
    800433e2:	8311                	srli	a4,a4,0x4
    800433e4:	01570abb          	addw	s5,a4,s5
quickjs-nuttx/quickjs.c:44373
        b->size = new_size;
    800433e8:	3d512223          	sw	s5,964(sp)
quickjs-nuttx/quickjs.c:44375
    b->arr[b->len++] = val;
    800433ec:	3c012783          	lw	a5,960(sp)
    800433f0:	0017871b          	addiw	a4,a5,1
    800433f4:	3ce12023          	sw	a4,960(sp)
    800433f8:	00479713          	slli	a4,a5,0x4
    800433fc:	37813783          	ld	a5,888(sp)
    80043400:	97ba                	add	a5,a5,a4
    80043402:	31013703          	ld	a4,784(sp)
    80043406:	e398                	sd	a4,0(a5)
    80043408:	31813703          	ld	a4,792(sp)
    8004340c:	e798                	sd	a4,8(a5)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44475
        if (!is_global)
    8004340e:	19ab0363          	beq	s6,s10,80043594 <js_regexp_Symbol_replace+0x6ca>
quickjs-nuttx/quickjs.c:44477
        JS_FreeValue(ctx, matched);
    80043412:	85d2                	mv	a1,s4
    80043414:	864e                	mv	a2,s3
    80043416:	8522                	mv	a0,s0
    80043418:	b86c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44478
        matched = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, result, 0));
    8004341c:	2e813603          	ld	a2,744(sp)
    80043420:	2e013583          	ld	a1,736(sp)
    80043424:	4681                	li	a3,0
    80043426:	8522                	mv	a0,s0
    80043428:	dbaf60ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    8004342c:	862e                	mv	a2,a1
    8004342e:	eaaa                	sd	a0,336(sp)
    80043430:	eeae                	sd	a1,344(sp)
    80043432:	85aa                	mv	a1,a0
    80043434:	8522                	mv	a0,s0
    80043436:	b50dd0ef          	jal	ra,80020786 <JS_ToStringFree>
    8004343a:	e9aa                	sd	a0,208(sp)
    8004343c:	edae                	sd	a1,216(sp)
quickjs-nuttx/quickjs.c:44479
        if (JS_IsException(matched))
    8004343e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44478
        matched = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, result, 0));
    80043442:	8a2a                	mv	s4,a0
    80043444:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:44479
        if (JS_IsException(matched))
    80043446:	13978263          	beq	a5,s9,8004356a <js_regexp_Symbol_replace+0x6a0>
quickjs-nuttx/quickjs.c:44481
        if (JS_IsEmptyString(matched)) {
    8004344a:	ffcc40ef          	jal	ra,80007c46 <JS_IsEmptyString>
    8004344e:	c549                	beqz	a0,800434d8 <js_regexp_Symbol_replace+0x60e>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80043450:	05600693          	li	a3,86
    80043454:	864a                	mv	a2,s2
    80043456:	4801                	li	a6,0
    80043458:	8726                	mv	a4,s1
    8004345a:	87ca                	mv	a5,s2
    8004345c:	85a6                	mv	a1,s1
    8004345e:	8522                	mv	a0,s0
    80043460:	30913823          	sd	s1,784(sp)
    80043464:	31213c23          	sd	s2,792(sp)
    80043468:	e42d30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8004346c:	862a                	mv	a2,a0
    8004346e:	86ae                	mv	a3,a1
    80043470:	20a13823          	sd	a0,528(sp)
    80043474:	20b13c23          	sd	a1,536(sp)
    80043478:	f2aa                	sd	a0,352(sp)
    8004347a:	f6ae                	sd	a1,360(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44484
            if (JS_ToLengthFree(ctx, &thisIndex, JS_GetProperty(ctx, rx, JS_ATOM_lastIndex)) < 0)
    8004347c:	8522                	mv	a0,s0
    8004347e:	0d8c                	addi	a1,sp,720
    80043480:	91fe10ef          	jal	ra,80024d9e <JS_ToLengthFree>
    80043484:	0e054363          	bltz	a0,8004356a <js_regexp_Symbol_replace+0x6a0>
quickjs-nuttx/quickjs.c:44486
            nextIndex = string_advance_index(sp, thisIndex, fullUnicode);
    80043488:	2d013583          	ld	a1,720(sp)
    8004348c:	865e                	mv	a2,s7
    8004348e:	856e                	mv	a0,s11
    80043490:	96ac60ef          	jal	ra,800095fa <string_advance_index>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80043494:	0005071b          	sext.w	a4,a0
    80043498:	0ee51563          	bne	a0,a4,80043582 <js_regexp_Symbol_replace+0x6b8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004349c:	22012223          	sw	zero,548(sp)
    800434a0:	22e12023          	sw	a4,544(sp)
    800434a4:	22013783          	ld	a5,544(sp)
    800434a8:	22013423          	sd	zero,552(sp)
    800434ac:	30013c23          	sd	zero,792(sp)
    800434b0:	30f13823          	sd	a5,784(sp)
    800434b4:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800434b6:	30e12823          	sw	a4,784(sp)
    800434ba:	31013787          	fld	fa5,784(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44487
            if (JS_SetProperty(ctx, rx, JS_ATOM_lastIndex, JS_NewInt64(ctx, nextIndex)) < 0)
    800434be:	31013703          	ld	a4,784(sp)
    800434c2:	658a                	ld	a1,128(sp)
    800434c4:	662a                	ld	a2,136(sp)
    800434c6:	05600693          	li	a3,86
    800434ca:	8522                	mv	a0,s0
    800434cc:	babe                	fsd	fa5,368(sp)
    800434ce:	febe                	sd	a5,376(sp)
    800434d0:	f3cf40ef          	jal	ra,80037c0c <JS_SetProperty>
    800434d4:	08054b63          	bltz	a0,8004356a <js_regexp_Symbol_replace+0x6a0>
quickjs-nuttx/quickjs.c:44468
        result = JS_RegExpExec(ctx, rx, str);
    800434d8:	67a2                	ld	a5,8(sp)
    800434da:	86ee                	mv	a3,s11
    800434dc:	85a6                	mv	a1,s1
    800434de:	873e                	mv	a4,a5
    800434e0:	864a                	mv	a2,s2
    800434e2:	8522                	mv	a0,s0
    800434e4:	fd3e                	sd	a5,184(sp)
    800434e6:	e126                	sd	s1,128(sp)
    800434e8:	e54a                	sd	s2,136(sp)
    800434ea:	f96e                	sd	s11,176(sp)
    800434ec:	d62fc0ef          	jal	ra,8003fa4e <JS_RegExpExec>
    800434f0:	2ea13023          	sd	a0,736(sp)
    800434f4:	2eb13423          	sd	a1,744(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800434f8:	0005879b          	sext.w	a5,a1
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44469
        if (JS_IsException(result))
    800434fc:	07978763          	beq	a5,s9,8004356a <js_regexp_Symbol_replace+0x6a0>
quickjs-nuttx/quickjs.c:44471
        if (JS_IsNull(result))
    80043500:	4709                	li	a4,2
    80043502:	08e78963          	beq	a5,a4,80043594 <js_regexp_Symbol_replace+0x6ca>
value_buffer_append():
quickjs-nuttx/quickjs.c:44350
    if (b->error_status)
    80043506:	3c812783          	lw	a5,968(sp)
    8004350a:	30a13823          	sd	a0,784(sp)
    8004350e:	30b13c23          	sd	a1,792(sp)
    80043512:	efa1                	bnez	a5,8004356a <js_regexp_Symbol_replace+0x6a0>
quickjs-nuttx/quickjs.c:44353
    if (b->len >= b->size) {
    80043514:	3c012783          	lw	a5,960(sp)
    80043518:	3c412703          	lw	a4,964(sp)
    8004351c:	ece7c8e3          	blt	a5,a4,800433ec <js_regexp_Symbol_replace+0x522>
quickjs-nuttx/quickjs.c:44354
        int new_size = (b->len + (b->len >> 1) + 31) & ~16;
    80043520:	01f78a9b          	addiw	s5,a5,31
    80043524:	4017d79b          	sraiw	a5,a5,0x1
    80043528:	00fa8abb          	addw	s5,s5,a5
quickjs-nuttx/quickjs.c:44358
        if (b->arr == b->def) {
    8004352c:	37813583          	ld	a1,888(sp)
quickjs-nuttx/quickjs.c:44354
        int new_size = (b->len + (b->len >> 1) + 31) & ~16;
    80043530:	fefafa93          	andi	s5,s5,-17
    80043534:	2a81                	sext.w	s5,s5
quickjs-nuttx/quickjs.c:44359
            new_arr = js_realloc2(b->ctx, NULL, sizeof(*b->arr) * new_size, &slack);
    80043536:	37013503          	ld	a0,880(sp)
    8004353a:	004a9613          	slli	a2,s5,0x4
    8004353e:	0d94                	addi	a3,sp,720
quickjs-nuttx/quickjs.c:44358
        if (b->arr == b->def) {
    80043540:	03859b63          	bne	a1,s8,80043576 <js_regexp_Symbol_replace+0x6ac>
quickjs-nuttx/quickjs.c:44359
            new_arr = js_realloc2(b->ctx, NULL, sizeof(*b->arr) * new_size, &slack);
    80043544:	4581                	li	a1,0
    80043546:	9cad90ef          	jal	ra,8001c710 <js_realloc2>
quickjs-nuttx/quickjs.c:44360
            if (new_arr)
    8004354a:	e80511e3          	bnez	a0,800433cc <js_regexp_Symbol_replace+0x502>
quickjs-nuttx/quickjs.c:44366
            value_buffer_free(b);
    8004354e:	1e88                	addi	a0,sp,880
    80043550:	e00c90ef          	jal	ra,8000cb50 <value_buffer_free>
quickjs-nuttx/quickjs.c:44367
            JS_FreeValue(b->ctx, val);
    80043554:	31013583          	ld	a1,784(sp)
    80043558:	31813603          	ld	a2,792(sp)
    8004355c:	37013503          	ld	a0,880(sp)
    80043560:	a3ec80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44368
            b->error_status = -1;
    80043564:	57fd                	li	a5,-1
    80043566:	3cf12423          	sw	a5,968(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44426 (discriminator 1)
    namedCaptures = JS_UNDEFINED;
    8004356a:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44425 (discriminator 1)
    rep_str = JS_UNDEFINED;
    8004356c:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:44423 (discriminator 1)
    tab = JS_UNDEFINED;
    8004356e:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:44579
    res = JS_EXCEPTION;
    80043570:	ea02                	sd	zero,272(sp)
    80043572:	4b19                	li	s6,6
    80043574:	b389                	j	800432b6 <js_regexp_Symbol_replace+0x3ec>
value_buffer_append():
quickjs-nuttx/quickjs.c:44363
            new_arr = js_realloc2(b->ctx, b->arr, sizeof(*b->arr) * new_size, &slack);
    80043576:	99ad90ef          	jal	ra,8001c710 <js_realloc2>
    8004357a:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:44365
        if (!new_arr) {
    8004357c:	e4051fe3          	bnez	a0,800433da <js_regexp_Symbol_replace+0x510>
    80043580:	b7f9                	j	8004354e <js_regexp_Symbol_replace+0x684>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80043582:	d22577d3          	fcvt.d.l	fa5,a0
    80043586:	479d                	li	a5,7
    80043588:	e2078753          	fmv.x.d	a4,fa5
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.h:230
    return v;
    8004358c:	30f13827          	fsd	fa5,784(sp)
    80043590:	2701                	sext.w	a4,a4
    80043592:	b715                	j	800434b6 <js_regexp_Symbol_replace+0x5ec>
quickjs-nuttx/quickjs.c:44503
        if (position > sp->len)
    80043594:	800007b7          	lui	a5,0x80000
    80043598:	fff7c793          	not	a5,a5
    8004359c:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:44513
        if (JS_DefinePropertyValueInt64(ctx, tab, 0, JS_DupValue(ctx, matched),
    8004359e:	6791                	lui	a5,0x4
    800435a0:	079d                	addi	a5,a5,7
quickjs-nuttx/quickjs.c:44426
    namedCaptures = JS_UNDEFINED;
    800435a2:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44425
    rep_str = JS_UNDEFINED;
    800435a4:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:44423
    tab = JS_UNDEFINED;
    800435a6:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:44492
    for(j = 0; j < results->len; j++) {
    800435a8:	fc02                	sd	zero,56(sp)
quickjs-nuttx/quickjs.c:44491
    nextSourcePosition = 0;
    800435aa:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:44499
        if (JS_IsException(matched))
    800435ac:	4d19                	li	s10,6
quickjs-nuttx/quickjs.c:44513
        if (JS_DefinePropertyValueInt64(ctx, tab, 0, JS_DupValue(ctx, matched),
    800435ae:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:44492 (discriminator 1)
    for(j = 0; j < results->len; j++) {
    800435b0:	3c012783          	lw	a5,960(sp)
    800435b4:	7762                	ld	a4,56(sp)
    800435b6:	0af74563          	blt	a4,a5,80043660 <js_regexp_Symbol_replace+0x796>
quickjs-nuttx/quickjs.c:44574
    string_buffer_concat(b, sp, nextSourcePosition, sp->len);
    800435ba:	004da683          	lw	a3,4(s11)
    800435be:	8666                	mv	a2,s9
    800435c0:	85ee                	mv	a1,s11
    800435c2:	1686                	slli	a3,a3,0x21
    800435c4:	9285                	srli	a3,a3,0x21
    800435c6:	1d88                	addi	a0,sp,752
    800435c8:	d1adb0ef          	jal	ra,8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:44575
    res = string_buffer_end(b);
    800435cc:	1d88                	addi	a0,sp,752
    800435ce:	ed2dc0ef          	jal	ra,8001fca0 <string_buffer_end>
    800435d2:	ea2a                	sd	a0,272(sp)
    800435d4:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:44583
    value_buffer_free(results);
    800435d6:	1e88                	addi	a0,sp,880
    800435d8:	d78c90ef          	jal	ra,8000cb50 <value_buffer_free>
quickjs-nuttx/quickjs.c:44584
    JS_FreeValue(ctx, rep_val);
    800435dc:	65e2                	ld	a1,24(sp)
    800435de:	7602                	ld	a2,32(sp)
    800435e0:	8522                	mv	a0,s0
    800435e2:	9bcc80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44585
    JS_FreeValue(ctx, matched);
    800435e6:	85d2                	mv	a1,s4
    800435e8:	864e                	mv	a2,s3
    800435ea:	8522                	mv	a0,s0
    800435ec:	9b2c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44586
    JS_FreeValue(ctx, flags);
    800435f0:	75a2                	ld	a1,40(sp)
    800435f2:	6642                	ld	a2,16(sp)
    800435f4:	8522                	mv	a0,s0
    800435f6:	9a8c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44587
    JS_FreeValue(ctx, tab);
    800435fa:	758e                	ld	a1,224(sp)
    800435fc:	8656                	mv	a2,s5
    800435fe:	8522                	mv	a0,s0
    80043600:	99ec80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44588
    JS_FreeValue(ctx, rep_str);
    80043604:	75ce                	ld	a1,240(sp)
    80043606:	8626                	mv	a2,s1
    80043608:	8522                	mv	a0,s0
    8004360a:	994c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44589
    JS_FreeValue(ctx, namedCaptures);
    8004360e:	6592                	ld	a1,256(sp)
    80043610:	864a                	mv	a2,s2
    80043612:	8522                	mv	a0,s0
    80043614:	98ac80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44590
    JS_FreeValue(ctx, str);
    80043618:	6622                	ld	a2,8(sp)
    8004361a:	85ee                	mv	a1,s11
    8004361c:	8522                	mv	a0,s0
    8004361e:	980c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44592
}
    80043622:	43813083          	ld	ra,1080(sp)
    80043626:	43013403          	ld	s0,1072(sp)
quickjs-nuttx/quickjs.c:44591
    return res;
    8004362a:	6552                	ld	a0,272(sp)
quickjs-nuttx/quickjs.c:44592
}
    8004362c:	42813483          	ld	s1,1064(sp)
    80043630:	42013903          	ld	s2,1056(sp)
    80043634:	41813983          	ld	s3,1048(sp)
    80043638:	41013a03          	ld	s4,1040(sp)
    8004363c:	40813a83          	ld	s5,1032(sp)
    80043640:	3f813b83          	ld	s7,1016(sp)
    80043644:	3f013c03          	ld	s8,1008(sp)
    80043648:	3e813c83          	ld	s9,1000(sp)
    8004364c:	3e013d03          	ld	s10,992(sp)
    80043650:	3d813d83          	ld	s11,984(sp)
    80043654:	85da                	mv	a1,s6
    80043656:	40013b03          	ld	s6,1024(sp)
    8004365a:	44010113          	addi	sp,sp,1088
    8004365e:	8082                	ret
quickjs-nuttx/quickjs.c:44494
        result = results->arr[j];
    80043660:	77e2                	ld	a5,56(sp)
    80043662:	37813703          	ld	a4,888(sp)
quickjs-nuttx/quickjs.c:44495
        if (js_get_length32(ctx, &nCaptures, result) < 0)
    80043666:	18cc                	addi	a1,sp,116
quickjs-nuttx/quickjs.c:44494
        result = results->arr[j];
    80043668:	0792                	slli	a5,a5,0x4
    8004366a:	97ba                	add	a5,a5,a4
    8004366c:	6390                	ld	a2,0(a5)
    8004366e:	6794                	ld	a3,8(a5)
quickjs-nuttx/quickjs.c:44495
        if (js_get_length32(ctx, &nCaptures, result) < 0)
    80043670:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44494
        result = results->arr[j];
    80043672:	2cc13023          	sd	a2,704(sp)
    80043676:	2cd13423          	sd	a3,712(sp)
quickjs-nuttx/quickjs.c:44495
        if (js_get_length32(ctx, &nCaptures, result) < 0)
    8004367a:	cedde0ef          	jal	ra,80022366 <js_get_length32>
    8004367e:	ee0549e3          	bltz	a0,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44497
        JS_FreeValue(ctx, matched);
    80043682:	85d2                	mv	a1,s4
    80043684:	864e                	mv	a2,s3
    80043686:	8522                	mv	a0,s0
    80043688:	916c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44498
        matched = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, result, 0));
    8004368c:	2c813603          	ld	a2,712(sp)
    80043690:	2c013583          	ld	a1,704(sp)
    80043694:	4681                	li	a3,0
    80043696:	8522                	mv	a0,s0
    80043698:	b4af60ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    8004369c:	862e                	mv	a2,a1
    8004369e:	e32a                	sd	a0,384(sp)
    800436a0:	e72e                	sd	a1,392(sp)
    800436a2:	85aa                	mv	a1,a0
    800436a4:	8522                	mv	a0,s0
    800436a6:	8e0dd0ef          	jal	ra,80020786 <JS_ToStringFree>
    800436aa:	e0aa                	sd	a0,64(sp)
    800436ac:	e9aa                	sd	a0,208(sp)
    800436ae:	edae                	sd	a1,216(sp)
quickjs-nuttx/quickjs.c:44499
        if (JS_IsException(matched))
    800436b0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44498
        matched = JS_ToStringFree(ctx, JS_GetPropertyInt64(ctx, result, 0));
    800436b4:	8c2e                	mv	s8,a1
    800436b6:	8a2a                	mv	s4,a0
    800436b8:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:44499
        if (JS_IsException(matched))
    800436ba:	eba78be3          	beq	a5,s10,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44501
        if (JS_ToLengthFree(ctx, &position, JS_GetProperty(ctx, result, JS_ATOM_index)))
    800436be:	2c013703          	ld	a4,704(sp)
    800436c2:	2c813783          	ld	a5,712(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800436c6:	05800693          	li	a3,88
    800436ca:	4801                	li	a6,0
    800436cc:	863e                	mv	a2,a5
    800436ce:	85ba                	mv	a1,a4
    800436d0:	8522                	mv	a0,s0
    800436d2:	2ee13023          	sd	a4,736(sp)
    800436d6:	2ef13423          	sd	a5,744(sp)
    800436da:	bd0d30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800436de:	862a                	mv	a2,a0
    800436e0:	86ae                	mv	a3,a1
    800436e2:	22a13823          	sd	a0,560(sp)
    800436e6:	22b13c23          	sd	a1,568(sp)
    800436ea:	eb2a                	sd	a0,400(sp)
    800436ec:	ef2e                	sd	a1,408(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44501
    800436ee:	8522                	mv	a0,s0
    800436f0:	18ac                	addi	a1,sp,120
    800436f2:	eace10ef          	jal	ra,80024d9e <JS_ToLengthFree>
    800436f6:	e6051de3          	bnez	a0,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44503
        if (position > sp->len)
    800436fa:	6746                	ld	a4,80(sp)
    800436fc:	004da783          	lw	a5,4(s11)
    80043700:	8ff9                	and	a5,a5,a4
    80043702:	7766                	ld	a4,120(sp)
    80043704:	1782                	slli	a5,a5,0x20
    80043706:	9381                	srli	a5,a5,0x20
    80043708:	16e7de63          	bge	a5,a4,80043884 <js_regexp_Symbol_replace+0x9ba>
quickjs-nuttx/quickjs.c:44504
            position = sp->len;
    8004370c:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:44509
        JS_FreeValue(ctx, tab);
    8004370e:	758e                	ld	a1,224(sp)
    80043710:	8656                	mv	a2,s5
    80043712:	8522                	mv	a0,s0
    80043714:	88ac80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44510
        tab = JS_NewArray(ctx);
    80043718:	8522                	mv	a0,s0
    8004371a:	b41d80ef          	jal	ra,8001c25a <JS_NewArray>
    8004371e:	f1aa                	sd	a0,224(sp)
    80043720:	f5ae                	sd	a1,232(sp)
quickjs-nuttx/quickjs.c:44511
        if (JS_IsException(tab))
    80043722:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:44510
        tab = JS_NewArray(ctx);
    80043726:	8b2e                	mv	s6,a1
    80043728:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs.c:44511
        if (JS_IsException(tab))
    8004372a:	e5a783e3          	beq	a5,s10,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44513
        if (JS_DefinePropertyValueInt64(ctx, tab, 0, JS_DupValue(ctx, matched),
    8004372e:	654e                	ld	a0,208(sp)
    80043730:	65ee                	ld	a1,216(sp)
    80043732:	ce9c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80043736:	87ae                	mv	a5,a1
    80043738:	f72e                	sd	a1,424(sp)
    8004373a:	7842                	ld	a6,48(sp)
    8004373c:	758e                	ld	a1,224(sp)
    8004373e:	762e                	ld	a2,232(sp)
    80043740:	872a                	mv	a4,a0
    80043742:	f32a                	sd	a0,416(sp)
    80043744:	4681                	li	a3,0
    80043746:	8522                	mv	a0,s0
    80043748:	8ebed0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    8004374c:	e20542e3          	bltz	a0,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44516
        for(n = 1; n < nCaptures; n++) {
    80043750:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:44516 (discriminator 1)
    80043752:	57d6                	lw	a5,116(sp)
    80043754:	12fbec63          	bltu	s7,a5,8004388c <js_regexp_Symbol_replace+0x9c2>
quickjs-nuttx/quickjs.c:44530
        JS_FreeValue(ctx, namedCaptures);
    80043758:	6592                	ld	a1,256(sp)
    8004375a:	864a                	mv	a2,s2
    8004375c:	8522                	mv	a0,s0
    8004375e:	840c80ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44531
        namedCaptures = JS_GetProperty(ctx, result, JS_ATOM_groups);
    80043762:	2c013703          	ld	a4,704(sp)
    80043766:	2c813783          	ld	a5,712(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004376a:	4801                	li	a6,0
    8004376c:	08800693          	li	a3,136
    80043770:	85ba                	mv	a1,a4
    80043772:	863e                	mv	a2,a5
    80043774:	8522                	mv	a0,s0
    80043776:	2ee13023          	sd	a4,736(sp)
    8004377a:	2ef13423          	sd	a5,744(sp)
    8004377e:	b2cd30ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80043782:	26a13823          	sd	a0,624(sp)
    80043786:	26b13c23          	sd	a1,632(sp)
    8004378a:	e22a                	sd	a0,256(sp)
    8004378c:	e62e                	sd	a1,264(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004378e:	0005889b          	sext.w	a7,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80043792:	892e                	mv	s2,a1
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44532
        if (JS_IsException(namedCaptures))
    80043794:	dda88ee3          	beq	a7,s10,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44534
        if (functionalReplace) {
    80043798:	67a6                	ld	a5,72(sp)
    8004379a:	16078d63          	beqz	a5,80043914 <js_regexp_Symbol_replace+0xa4a>
quickjs-nuttx/quickjs.c:44535
            if (JS_DefinePropertyValueInt64(ctx, tab, n++, JS_NewInt32(ctx, position), JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    8004379e:	57e6                	lw	a5,120(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800437a0:	28013023          	sd	zero,640(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44535
    800437a4:	7842                	ld	a6,48(sp)
    800437a6:	28f12023          	sw	a5,640(sp)
    800437aa:	28013703          	ld	a4,640(sp)
    800437ae:	758e                	ld	a1,224(sp)
    800437b0:	4781                	li	a5,0
    800437b2:	86de                	mv	a3,s7
    800437b4:	865a                	mv	a2,s6
    800437b6:	8522                	mv	a0,s0
    800437b8:	ecc6                	sd	a7,88(sp)
    800437ba:	001b8c1b          	addiw	s8,s7,1
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800437be:	28013423          	sd	zero,648(sp)
    800437c2:	fb3a                	sd	a4,432(sp)
    800437c4:	ff02                	sd	zero,440(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44535
    800437c6:	f5da                	sd	s6,232(sp)
    800437c8:	86bed0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    800437cc:	da0542e3          	bltz	a0,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44537
            if (JS_DefinePropertyValueInt64(ctx, tab, n++, JS_DupValue(ctx, str), JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    800437d0:	67a2                	ld	a5,8(sp)
    800437d2:	856e                	mv	a0,s11
    800437d4:	f96e                	sd	s11,176(sp)
    800437d6:	85be                	mv	a1,a5
    800437d8:	fd3e                	sd	a5,184(sp)
    800437da:	c41c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800437de:	87ae                	mv	a5,a1
    800437e0:	e7ae                	sd	a1,456(sp)
    800437e2:	7842                	ld	a6,48(sp)
    800437e4:	758e                	ld	a1,224(sp)
    800437e6:	762e                	ld	a2,232(sp)
    800437e8:	872a                	mv	a4,a0
    800437ea:	e3aa                	sd	a0,448(sp)
    800437ec:	86e2                	mv	a3,s8
    800437ee:	8522                	mv	a0,s0
    800437f0:	843ed0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    800437f4:	d6054ee3          	bltz	a0,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44539
            if (!JS_IsUndefined(namedCaptures)) {
    800437f8:	68e6                	ld	a7,88(sp)
    800437fa:	478d                	li	a5,3
    800437fc:	0ef89963          	bne	a7,a5,800438ee <js_regexp_Symbol_replace+0xa24>
quickjs-nuttx/quickjs.c:44543
            args[0] = JS_UNDEFINED;
    80043800:	478d                	li	a5,3
    80043802:	30f13c23          	sd	a5,792(sp)
quickjs-nuttx/quickjs.c:44544
            args[1] = tab;
    80043806:	778e                	ld	a5,224(sp)
quickjs-nuttx/quickjs.c:44545
            JS_FreeValue(ctx, rep_str);
    80043808:	75ce                	ld	a1,240(sp)
    8004380a:	8626                	mv	a2,s1
quickjs-nuttx/quickjs.c:44544
            args[1] = tab;
    8004380c:	32f13023          	sd	a5,800(sp)
    80043810:	77ae                	ld	a5,232(sp)
quickjs-nuttx/quickjs.c:44545
            JS_FreeValue(ctx, rep_str);
    80043812:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:44543
            args[0] = JS_UNDEFINED;
    80043814:	30013823          	sd	zero,784(sp)
quickjs-nuttx/quickjs.c:44544
            args[1] = tab;
    80043818:	32f13423          	sd	a5,808(sp)
quickjs-nuttx/quickjs.c:44545
            JS_FreeValue(ctx, rep_str);
    8004381c:	f83c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44546
            rep_str = JS_ToStringFree(ctx, js_function_apply(ctx, rep, 2, args, 0));
    80043820:	666a                	ld	a2,152(sp)
    80043822:	65ca                	ld	a1,144(sp)
    80043824:	4781                	li	a5,0
    80043826:	0e18                	addi	a4,sp,784
    80043828:	4689                	li	a3,2
    8004382a:	8522                	mv	a0,s0
    8004382c:	df2ff0ef          	jal	ra,80042e1e <js_function_apply>
    80043830:	862e                	mv	a2,a1
    80043832:	f3aa                	sd	a0,480(sp)
    80043834:	f7ae                	sd	a1,488(sp)
    80043836:	85aa                	mv	a1,a0
    80043838:	8522                	mv	a0,s0
    8004383a:	f4ddc0ef          	jal	ra,80020786 <JS_ToStringFree>
    8004383e:	84ae                	mv	s1,a1
    80043840:	f9aa                	sd	a0,240(sp)
    80043842:	fdae                	sd	a1,248(sp)
quickjs-nuttx/quickjs.c:44566
        if (JS_IsException(rep_str))
    80043844:	0004879b          	sext.w	a5,s1
    80043848:	d3a784e3          	beq	a5,s10,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44568
        if (position >= nextSourcePosition) {
    8004384c:	76e6                	ld	a3,120(sp)
    8004384e:	0396c763          	blt	a3,s9,8004387c <js_regexp_Symbol_replace+0x9b2>
quickjs-nuttx/quickjs.c:44569
            string_buffer_concat(b, sp, nextSourcePosition, position);
    80043852:	8666                	mv	a2,s9
    80043854:	2681                	sext.w	a3,a3
    80043856:	85ee                	mv	a1,s11
    80043858:	1d88                	addi	a0,sp,752
    8004385a:	a88db0ef          	jal	ra,8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:44570
            string_buffer_concat_value(b, rep_str);
    8004385e:	75ce                	ld	a1,240(sp)
    80043860:	8626                	mv	a2,s1
    80043862:	1d88                	addi	a0,sp,752
    80043864:	fda6                	sd	s1,248(sp)
    80043866:	e47dd0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:44571
            nextSourcePosition = position + JS_VALUE_GET_STRING(matched)->len;
    8004386a:	6786                	ld	a5,64(sp)
    8004386c:	0047ac83          	lw	s9,4(a5) # 4004 <asinh-0x7fffbffc>
    80043870:	67c6                	ld	a5,80(sp)
    80043872:	00fcfcb3          	and	s9,s9,a5
    80043876:	77e6                	ld	a5,120(sp)
    80043878:	00fc8cbb          	addw	s9,s9,a5
quickjs-nuttx/quickjs.c:44492
    for(j = 0; j < results->len; j++) {
    8004387c:	77e2                	ld	a5,56(sp)
    8004387e:	2785                	addiw	a5,a5,1
    80043880:	fc3e                	sd	a5,56(sp)
    80043882:	b33d                	j	800435b0 <js_regexp_Symbol_replace+0x6e6>
quickjs-nuttx/quickjs.c:44505
        else if (position < 0)
    80043884:	e80755e3          	bgez	a4,8004370e <js_regexp_Symbol_replace+0x844>
quickjs-nuttx/quickjs.c:44506
            position = 0;
    80043888:	fc82                	sd	zero,120(sp)
    8004388a:	b551                	j	8004370e <js_regexp_Symbol_replace+0x844>
quickjs-nuttx/quickjs.c:44518
            capN = JS_GetPropertyInt64(ctx, result, n);
    8004388c:	2c013583          	ld	a1,704(sp)
    80043890:	2c813603          	ld	a2,712(sp)
    80043894:	86de                	mv	a3,s7
    80043896:	8522                	mv	a0,s0
    80043898:	94af60ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    8004389c:	2ea13023          	sd	a0,736(sp)
    800438a0:	2eb13423          	sd	a1,744(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800438a4:	0005871b          	sext.w	a4,a1
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44518
    800438a8:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:44519
            if (JS_IsException(capN))
    800438aa:	cda703e3          	beq	a4,s10,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44521
            if (!JS_IsUndefined(capN)) {
    800438ae:	468d                	li	a3,3
    800438b0:	02d70063          	beq	a4,a3,800438d0 <js_regexp_Symbol_replace+0xa06>
quickjs-nuttx/quickjs.c:44522
                capN = JS_ToStringFree(ctx, capN);
    800438b4:	85aa                	mv	a1,a0
    800438b6:	863e                	mv	a2,a5
    800438b8:	8522                	mv	a0,s0
    800438ba:	ecddc0ef          	jal	ra,80020786 <JS_ToStringFree>
    800438be:	2ea13023          	sd	a0,736(sp)
    800438c2:	2eb13423          	sd	a1,744(sp)
quickjs-nuttx/quickjs.c:44523
                if (JS_IsException(capN))
    800438c6:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:44522
                capN = JS_ToStringFree(ctx, capN);
    800438ca:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:44523
                if (JS_IsException(capN))
    800438cc:	cba702e3          	beq	a4,s10,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44526
            if (JS_DefinePropertyValueInt64(ctx, tab, n, capN,
    800438d0:	7842                	ld	a6,48(sp)
    800438d2:	2e013703          	ld	a4,736(sp)
    800438d6:	758e                	ld	a1,224(sp)
    800438d8:	86de                	mv	a3,s7
    800438da:	865a                	mv	a2,s6
    800438dc:	8522                	mv	a0,s0
    800438de:	2ef13423          	sd	a5,744(sp)
    800438e2:	f50ed0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    800438e6:	c80545e3          	bltz	a0,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44516
        for(n = 1; n < nCaptures; n++) {
    800438ea:	2b85                	addiw	s7,s7,1
    800438ec:	b59d                	j	80043752 <js_regexp_Symbol_replace+0x888>
quickjs-nuttx/quickjs.c:44540
                if (JS_DefinePropertyValueInt64(ctx, tab, n++, JS_DupValue(ctx, namedCaptures), JS_PROP_C_W_E | JS_PROP_THROW) < 0)
    800438ee:	6512                	ld	a0,256(sp)
    800438f0:	65b2                	ld	a1,264(sp)
    800438f2:	b29c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800438f6:	87ae                	mv	a5,a1
    800438f8:	efae                	sd	a1,472(sp)
    800438fa:	7842                	ld	a6,48(sp)
    800438fc:	758e                	ld	a1,224(sp)
    800438fe:	762e                	ld	a2,232(sp)
    80043900:	872a                	mv	a4,a0
    80043902:	ebaa                	sd	a0,464(sp)
    80043904:	002b869b          	addiw	a3,s7,2
    80043908:	8522                	mv	a0,s0
    8004390a:	f28ed0ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    8004390e:	ee0559e3          	bgez	a0,80043800 <js_regexp_Symbol_replace+0x936>
    80043912:	b9b9                	j	80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44549
            if (!JS_IsUndefined(namedCaptures)) {
    80043914:	478d                	li	a5,3
    80043916:	0af88263          	beq	a7,a5,800439ba <js_regexp_Symbol_replace+0xaf0>
quickjs-nuttx/quickjs.c:44550
                namedCaptures1 = JS_ToObject(ctx, namedCaptures);
    8004391a:	85aa                	mv	a1,a0
    8004391c:	864a                	mv	a2,s2
    8004391e:	8522                	mv	a0,s0
    80043920:	f9aec0ef          	jal	ra,800300ba <JS_ToObject>
    80043924:	2ca13823          	sd	a0,720(sp)
    80043928:	2cb13c23          	sd	a1,728(sp)
quickjs-nuttx/quickjs.c:44551
                if (JS_IsException(namedCaptures1))
    8004392c:	0005879b          	sext.w	a5,a1
    80043930:	c5a780e3          	beq	a5,s10,80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44556 (discriminator 4)
            args[0] = matched;
    80043934:	6786                	ld	a5,64(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515 (discriminator 4)
    return JS_MKVAL(JS_TAG_INT, val);
    80043936:	28013823          	sd	zero,656(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44560 (discriminator 4)
            args[4] = namedCaptures1;
    8004393a:	2cb13c23          	sd	a1,728(sp)
quickjs-nuttx/quickjs.c:44556 (discriminator 4)
            args[0] = matched;
    8004393e:	30f13823          	sd	a5,784(sp)
quickjs-nuttx/quickjs.c:44557 (discriminator 4)
            args[1] = str;
    80043942:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:44560 (discriminator 4)
            args[4] = namedCaptures1;
    80043944:	34b13c23          	sd	a1,856(sp)
quickjs-nuttx/quickjs.c:44562 (discriminator 4)
            JS_FreeValue(ctx, rep_str);
    80043948:	75ce                	ld	a1,240(sp)
quickjs-nuttx/quickjs.c:44557 (discriminator 4)
            args[1] = str;
    8004394a:	32f13423          	sd	a5,808(sp)
quickjs-nuttx/quickjs.c:44558 (discriminator 4)
            args[2] = JS_NewInt32(ctx, position);
    8004394e:	57e6                	lw	a5,120(sp)
quickjs-nuttx/quickjs.c:44562 (discriminator 4)
            JS_FreeValue(ctx, rep_str);
    80043950:	8626                	mv	a2,s1
    80043952:	8522                	mv	a0,s0
    80043954:	28f12823          	sw	a5,656(sp)
    80043958:	29013783          	ld	a5,656(sp)
quickjs-nuttx/quickjs.c:44556 (discriminator 4)
            args[0] = matched;
    8004395c:	31813c23          	sd	s8,792(sp)
quickjs-nuttx/quickjs.c:44557 (discriminator 4)
            args[1] = str;
    80043960:	33b13023          	sd	s11,800(sp)
    80043964:	2ef13023          	sd	a5,736(sp)
quickjs-nuttx/quickjs.c:44558 (discriminator 4)
            args[2] = JS_NewInt32(ctx, position);
    80043968:	32f13823          	sd	a5,816(sp)
quickjs-nuttx/quickjs.c:44559 (discriminator 4)
            args[3] = tab;
    8004396c:	778e                	ld	a5,224(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515 (discriminator 4)
    8004396e:	28013c23          	sd	zero,664(sp)
    80043972:	2e013423          	sd	zero,744(sp)
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44559 (discriminator 4)
    80043976:	34f13023          	sd	a5,832(sp)
quickjs-nuttx/quickjs.c:44560 (discriminator 4)
            args[4] = namedCaptures1;
    8004397a:	2d013783          	ld	a5,720(sp)
quickjs-nuttx/quickjs.c:44558 (discriminator 4)
            args[2] = JS_NewInt32(ctx, position);
    8004397e:	32013c23          	sd	zero,824(sp)
quickjs-nuttx/quickjs.c:44559 (discriminator 4)
            args[3] = tab;
    80043982:	f5da                	sd	s6,232(sp)
quickjs-nuttx/quickjs.c:44560 (discriminator 4)
            args[4] = namedCaptures1;
    80043984:	34f13823          	sd	a5,848(sp)
quickjs-nuttx/quickjs.c:44561 (discriminator 4)
            args[5] = rep_val;
    80043988:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:44559 (discriminator 4)
            args[3] = tab;
    8004398a:	35613423          	sd	s6,840(sp)
quickjs-nuttx/quickjs.c:44561 (discriminator 4)
            args[5] = rep_val;
    8004398e:	36f13023          	sd	a5,864(sp)
    80043992:	7782                	ld	a5,32(sp)
    80043994:	36f13423          	sd	a5,872(sp)
quickjs-nuttx/quickjs.c:44562 (discriminator 4)
            JS_FreeValue(ctx, rep_str);
    80043998:	e07c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:44563 (discriminator 4)
            rep_str = js_string___GetSubstitution(ctx, JS_UNDEFINED, 6, args);
    8004399c:	0e0c                	addi	a1,sp,784
    8004399e:	8522                	mv	a0,s0
    800439a0:	a5af60ef          	jal	ra,80039bfa <js_string___GetSubstitution.constprop.0>
    800439a4:	84ae                	mv	s1,a1
    800439a6:	fdae                	sd	a1,248(sp)
quickjs-nuttx/quickjs.c:44564 (discriminator 4)
            JS_FreeValue(ctx, namedCaptures1);
    800439a8:	2d813603          	ld	a2,728(sp)
    800439ac:	2d013583          	ld	a1,720(sp)
quickjs-nuttx/quickjs.c:44563 (discriminator 4)
            rep_str = js_string___GetSubstitution(ctx, JS_UNDEFINED, 6, args);
    800439b0:	f9aa                	sd	a0,240(sp)
quickjs-nuttx/quickjs.c:44564 (discriminator 4)
            JS_FreeValue(ctx, namedCaptures1);
    800439b2:	8522                	mv	a0,s0
    800439b4:	debc70ef          	jal	ra,8000b79e <JS_FreeValue>
    800439b8:	b571                	j	80043844 <js_regexp_Symbol_replace+0x97a>
quickjs-nuttx/quickjs.c:44554 (discriminator 5)
                namedCaptures1 = JS_UNDEFINED;
    800439ba:	2c013823          	sd	zero,720(sp)
    800439be:	458d                	li	a1,3
    800439c0:	bf95                	j	80043934 <js_regexp_Symbol_replace+0xa6a>
quickjs-nuttx/quickjs.c:44421
    rep_val = JS_UNDEFINED;
    800439c2:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:44426
    namedCaptures = JS_UNDEFINED;
    800439c4:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44425
    rep_str = JS_UNDEFINED;
    800439c6:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:44423
    tab = JS_UNDEFINED;
    800439c8:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:44422
    matched = JS_UNDEFINED;
    800439ca:	498d                	li	s3,3
    800439cc:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:44421
    rep_val = JS_UNDEFINED;
    800439ce:	f03e                	sd	a5,32(sp)
    800439d0:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs.c:44424
    flags = JS_UNDEFINED;
    800439d2:	e83e                	sd	a5,16(sp)
    800439d4:	f402                	sd	zero,40(sp)
    800439d6:	be69                	j	80043570 <js_regexp_Symbol_replace+0x6a6>
quickjs-nuttx/quickjs.c:44426
    namedCaptures = JS_UNDEFINED;
    800439d8:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:44425
    rep_str = JS_UNDEFINED;
    800439da:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:44423
    tab = JS_UNDEFINED;
    800439dc:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:44422
    matched = JS_UNDEFINED;
    800439de:	498d                	li	s3,3
    800439e0:	4a01                	li	s4,0
    800439e2:	b679                	j	80043570 <js_regexp_Symbol_replace+0x6a6>
JS_RegExpDelete():
quickjs-nuttx/quickjs.c:44033
    return JS_EXCEPTION;
    800439e4:	498d                	li	s3,3
    800439e6:	4a01                	li	s4,0
js_regexp_Symbol_replace():
quickjs-nuttx/quickjs.c:44469
        if (JS_IsException(result))
    800439e8:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:44475
        if (!is_global)
    800439ea:	5d7d                	li	s10,-1
    800439ec:	b4f5                	j	800434d8 <js_regexp_Symbol_replace+0x60e>

00000000800439ee <js_reflect_apply>:
js_reflect_apply():
quickjs-nuttx/quickjs.c:45539
    return js_function_apply(ctx, argv[0], max_int(0, argc - 1), argv + 1, 2);
    800439ee:	fff6879b          	addiw	a5,a3,-1
quickjs-nuttx/quickjs.c:45538
{
    800439f2:	863a                	mv	a2,a4
    800439f4:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:45539
    return js_function_apply(ctx, argv[0], max_int(0, argc - 1), argv + 1, 2);
    800439f6:	0741                	addi	a4,a4,16
    800439f8:	4681                	li	a3,0
    800439fa:	0007c363          	bltz	a5,80043a00 <js_reflect_apply+0x12>
    800439fe:	86be                	mv	a3,a5
    80043a00:	620c                	ld	a1,0(a2)
    80043a02:	6610                	ld	a2,8(a2)
    80043a04:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:45540
}
    80043a06:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:45539
    return js_function_apply(ctx, argv[0], max_int(0, argc - 1), argv + 1, 2);
    80043a08:	c16ff06f          	j	80042e1e <js_function_apply>

0000000080043a0c <js_load_module_rejected>:
js_load_module_rejected():
quickjs-nuttx/quickjs.c:28374
{
    80043a0c:	711d                	addi	sp,sp,-96
    80043a0e:	e8a2                	sd	s0,80(sp)
    80043a10:	ec86                	sd	ra,88(sp)
    80043a12:	842a                	mv	s0,a0
    80043a14:	8642                	mv	a2,a6
quickjs-nuttx/quickjs.c:28380
    if (argc >= 1)
    80043a16:	02d05b63          	blez	a3,80043a4c <js_load_module_rejected+0x40>
quickjs-nuttx/quickjs.c:28381
        error = argv[0];
    80043a1a:	631c                	ld	a5,0(a4)
    80043a1c:	e83e                	sd	a5,16(sp)
    80043a1e:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:28383
        error = JS_UNDEFINED;
    80043a20:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:28384
    ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED,
    80043a22:	6a0c                	ld	a1,16(a2)
    80043a24:	6e10                	ld	a2,24(a2)
    80043a26:	01010813          	addi	a6,sp,16
    80043a2a:	4785                	li	a5,1
    80043a2c:	4681                	li	a3,0
    80043a2e:	470d                	li	a4,3
    80043a30:	8522                	mv	a0,s0
    80043a32:	bd2ff0ef          	jal	ra,80042e04 <JS_Call>
    80043a36:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28386
    JS_FreeValue(ctx, ret);
    80043a38:	85aa                	mv	a1,a0
    80043a3a:	8522                	mv	a0,s0
    80043a3c:	d63c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28388
}
    80043a40:	60e6                	ld	ra,88(sp)
    80043a42:	6446                	ld	s0,80(sp)
    80043a44:	4501                	li	a0,0
    80043a46:	458d                	li	a1,3
    80043a48:	6125                	addi	sp,sp,96
    80043a4a:	8082                	ret
quickjs-nuttx/quickjs.c:28383
        error = JS_UNDEFINED;
    80043a4c:	e802                	sd	zero,16(sp)
    80043a4e:	478d                	li	a5,3
    80043a50:	bfc1                	j	80043a20 <js_load_module_rejected+0x14>

0000000080043a52 <js_load_module_fulfilled>:
js_load_module_fulfilled():
quickjs-nuttx/quickjs.c:28392
{
    80043a52:	7159                	addi	sp,sp,-112
    80043a54:	f0a2                	sd	s0,96(sp)
    80043a56:	eca6                	sd	s1,88(sp)
    80043a58:	f486                	sd	ra,104(sp)
    80043a5a:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs.c:28398
    ns = JS_GetModuleNamespace(ctx, m);
    80043a5c:	02083583          	ld	a1,32(a6) # 4020 <asinh-0x7fffbfe0>
quickjs-nuttx/quickjs.c:28392
{
    80043a60:	842a                	mv	s0,a0
    80043a62:	84c2                	mv	s1,a6
quickjs-nuttx/quickjs.c:28398
    ns = JS_GetModuleNamespace(ctx, m);
    80043a64:	e5aed0ef          	jal	ra,800310be <JS_GetModuleNamespace>
    80043a68:	ec2e                	sd	a1,24(sp)
    80043a6a:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:28399
    if (JS_IsException(ns)) {
    80043a6c:	2581                	sext.w	a1,a1
    80043a6e:	4799                	li	a5,6
    80043a70:	02f59d63          	bne	a1,a5,80043aaa <js_load_module_fulfilled+0x58>
quickjs-nuttx/quickjs.c:28400
        JSValue err = JS_GetException(ctx);
    80043a74:	8522                	mv	a0,s0
    80043a76:	a19ca0ef          	jal	ra,8000e48e <JS_GetException>
    80043a7a:	f02a                	sd	a0,32(sp)
    80043a7c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:28401
        js_load_module_rejected(ctx, JS_UNDEFINED, 1, (JSValueConst *)&err, 0, func_data);
    80043a7e:	490d                	li	s2,3
    80043a80:	8826                	mv	a6,s1
    80043a82:	4781                	li	a5,0
    80043a84:	1018                	addi	a4,sp,32
    80043a86:	4685                	li	a3,1
    80043a88:	4581                	li	a1,0
    80043a8a:	460d                	li	a2,3
    80043a8c:	8522                	mv	a0,s0
    80043a8e:	f802                	sd	zero,48(sp)
    80043a90:	fc4a                	sd	s2,56(sp)
    80043a92:	f7bff0ef          	jal	ra,80043a0c <js_load_module_rejected>
quickjs-nuttx/quickjs.c:28409
}
    80043a96:	70a6                	ld	ra,104(sp)
    80043a98:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs.c:28408
    return JS_UNDEFINED;
    80043a9a:	e4ca                	sd	s2,72(sp)
    80043a9c:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:28409
}
    80043a9e:	6506                	ld	a0,64(sp)
    80043aa0:	65a6                	ld	a1,72(sp)
    80043aa2:	64e6                	ld	s1,88(sp)
    80043aa4:	6946                	ld	s2,80(sp)
    80043aa6:	6165                	addi	sp,sp,112
    80043aa8:	8082                	ret
quickjs-nuttx/quickjs.c:28404
    ret = JS_Call(ctx, resolving_funcs[0], JS_UNDEFINED,
    80043aaa:	6490                	ld	a2,8(s1)
    80043aac:	608c                	ld	a1,0(s1)
    80043aae:	01010813          	addi	a6,sp,16
    80043ab2:	4785                	li	a5,1
    80043ab4:	4681                	li	a3,0
    80043ab6:	470d                	li	a4,3
    80043ab8:	490d                	li	s2,3
    80043aba:	8522                	mv	a0,s0
    80043abc:	f802                	sd	zero,48(sp)
    80043abe:	fc4a                	sd	s2,56(sp)
    80043ac0:	b44ff0ef          	jal	ra,80042e04 <JS_Call>
    80043ac4:	862e                	mv	a2,a1
    80043ac6:	f02a                	sd	a0,32(sp)
    80043ac8:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:28406
    JS_FreeValue(ctx, ret);
    80043aca:	85aa                	mv	a1,a0
    80043acc:	8522                	mv	a0,s0
    80043ace:	cd1c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28407
    JS_FreeValue(ctx, ns);
    80043ad2:	65c2                	ld	a1,16(sp)
    80043ad4:	6662                	ld	a2,24(sp)
    80043ad6:	8522                	mv	a0,s0
    80043ad8:	cc7c70ef          	jal	ra,8000b79e <JS_FreeValue>
    80043adc:	bf6d                	j	80043a96 <js_load_module_fulfilled+0x44>

0000000080043ade <js_promise_constructor>:
js_promise_constructor():
quickjs-nuttx/quickjs.c:48021
{
    80043ade:	7155                	addi	sp,sp,-208
    80043ae0:	e1a2                	sd	s0,192(sp)
    80043ae2:	e586                	sd	ra,200(sp)
    80043ae4:	fd26                	sd	s1,184(sp)
    80043ae6:	f94a                	sd	s2,176(sp)
    80043ae8:	f54e                	sd	s3,168(sp)
    80043aea:	e02e                	sd	a1,0(sp)
    80043aec:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:48028
    executor = argv[0];
    80043aee:	630c                	ld	a1,0(a4)
    80043af0:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:48021
{
    80043af2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48028
    executor = argv[0];
    80043af4:	e82e                	sd	a1,16(sp)
    80043af6:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:48029
    if (check_function(ctx, executor))
    80043af8:	c27d40ef          	jal	ra,8001871e <check_function>
    80043afc:	c509                	beqz	a0,80043b06 <js_promise_constructor+0x28>
quickjs-nuttx/quickjs.c:48064
    return JS_EXCEPTION;
    80043afe:	4799                	li	a5,6
    80043b00:	f882                	sd	zero,112(sp)
    80043b02:	fcbe                	sd	a5,120(sp)
    80043b04:	a239                	j	80043c12 <js_promise_constructor+0x134>
quickjs-nuttx/quickjs.c:48031
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_PROMISE);
    80043b06:	6582                	ld	a1,0(sp)
    80043b08:	6622                	ld	a2,8(sp)
    80043b0a:	03100693          	li	a3,49
    80043b0e:	8522                	mv	a0,s0
    80043b10:	96cd80ef          	jal	ra,8001bc7c <js_create_from_ctor>
    80043b14:	f02a                	sd	a0,32(sp)
    80043b16:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80043b18:	0005849b          	sext.w	s1,a1
js_promise_constructor():
quickjs-nuttx/quickjs.c:48032
    if (JS_IsException(obj))
    80043b1c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:48031
    obj = js_create_from_ctor(ctx, new_target, JS_CLASS_PROMISE);
    80043b1e:	89aa                	mv	s3,a0
    80043b20:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:48032
    if (JS_IsException(obj))
    80043b22:	fcf48ee3          	beq	s1,a5,80043afe <js_promise_constructor+0x20>
quickjs-nuttx/quickjs.c:48034
    s = js_mallocz(ctx, sizeof(*s));
    80043b26:	04000593          	li	a1,64
    80043b2a:	8522                	mv	a0,s0
    80043b2c:	e0cd70ef          	jal	ra,8001b138 <js_mallocz>
quickjs-nuttx/quickjs.c:48035
    if (!s)
    80043b30:	c555                	beqz	a0,80043bdc <js_promise_constructor+0xfe>
quickjs-nuttx/quickjs.c:48040
        init_list_head(&s->promise_reactions[i]);
    80043b32:	00850793          	addi	a5,a0,8
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    80043b36:	e51c                	sd	a5,8(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    80043b38:	e91c                	sd	a5,16(a0)
js_promise_constructor():
quickjs-nuttx/quickjs.c:48040
    80043b3a:	01850793          	addi	a5,a0,24
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    80043b3e:	ed1c                	sd	a5,24(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    80043b40:	f11c                	sd	a5,32(a0)
js_promise_constructor():
quickjs-nuttx/quickjs.c:48041
    s->promise_result = JS_UNDEFINED;
    80043b42:	478d                	li	a5,3
    80043b44:	fd1c                	sd	a5,56(a0)
quickjs-nuttx/quickjs.c:48037
    s->promise_state = JS_PROMISE_PENDING;
    80043b46:	00052023          	sw	zero,0(a0)
quickjs-nuttx/quickjs.c:48038
    s->is_handled = FALSE;
    80043b4a:	02052423          	sw	zero,40(a0)
quickjs-nuttx/quickjs.c:48041
    s->promise_result = JS_UNDEFINED;
    80043b4e:	02053823          	sd	zero,48(a0)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    80043b52:	57fd                	li	a5,-1
    80043b54:	00f49463          	bne	s1,a5,80043b5c <js_promise_constructor+0x7e>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    80043b58:	02a9b823          	sd	a0,48(s3)
js_promise_constructor():
quickjs-nuttx/quickjs.c:48043
    if (js_create_resolving_functions(ctx, args, obj))
    80043b5c:	7602                	ld	a2,32(sp)
    80043b5e:	76a2                	ld	a3,40(sp)
    80043b60:	010c                	addi	a1,sp,128
    80043b62:	8522                	mv	a0,s0
    80043b64:	de5ec0ef          	jal	ra,80030948 <js_create_resolving_functions>
    80043b68:	e935                	bnez	a0,80043bdc <js_promise_constructor+0xfe>
quickjs-nuttx/quickjs.c:48045
    ret = JS_Call(ctx, executor, JS_UNDEFINED, 2, (JSValueConst *)args);
    80043b6a:	65c2                	ld	a1,16(sp)
    80043b6c:	6662                	ld	a2,24(sp)
    80043b6e:	4789                	li	a5,2
    80043b70:	08010813          	addi	a6,sp,128
    80043b74:	4681                	li	a3,0
    80043b76:	470d                	li	a4,3
    80043b78:	8522                	mv	a0,s0
    80043b7a:	a8aff0ef          	jal	ra,80042e04 <JS_Call>
    80043b7e:	f82a                	sd	a0,48(sp)
    80043b80:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:48046
    if (JS_IsException(ret)) {
    80043b82:	0005849b          	sext.w	s1,a1
    80043b86:	4799                	li	a5,6
    80043b88:	06f49463          	bne	s1,a5,80043bf0 <js_promise_constructor+0x112>
quickjs-nuttx/quickjs.c:48048
        error = JS_GetException(ctx);
    80043b8c:	8522                	mv	a0,s0
    80043b8e:	901ca0ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:48049
        ret2 = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    80043b92:	666a                	ld	a2,152(sp)
quickjs-nuttx/quickjs.c:48048
        error = JS_GetException(ctx);
    80043b94:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:48049
        ret2 = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    80043b96:	65ca                	ld	a1,144(sp)
    80043b98:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48048
        error = JS_GetException(ctx);
    80043b9a:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:48049
        ret2 = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    80043b9c:	fcbe                	sd	a5,120(sp)
    80043b9e:	06010813          	addi	a6,sp,96
    80043ba2:	4785                	li	a5,1
    80043ba4:	4681                	li	a3,0
    80043ba6:	470d                	li	a4,3
    80043ba8:	8522                	mv	a0,s0
    80043baa:	f882                	sd	zero,112(sp)
    80043bac:	a58ff0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:48050
        JS_FreeValue(ctx, error);
    80043bb0:	7626                	ld	a2,104(sp)
quickjs-nuttx/quickjs.c:48049
        ret2 = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    80043bb2:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:48050
        JS_FreeValue(ctx, error);
    80043bb4:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:48049
        ret2 = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    80043bb6:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:48050
        JS_FreeValue(ctx, error);
    80043bb8:	8522                	mv	a0,s0
    80043bba:	be5c70ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80043bbe:	6666                	ld	a2,88(sp)
js_promise_constructor():
quickjs-nuttx/quickjs.c:48051
        if (JS_IsException(ret2))
    80043bc0:	0006079b          	sext.w	a5,a2
    80043bc4:	02979263          	bne	a5,s1,80043be8 <js_promise_constructor+0x10a>
quickjs-nuttx/quickjs.c:48060
    JS_FreeValue(ctx, args[0]);
    80043bc8:	658a                	ld	a1,128(sp)
    80043bca:	662a                	ld	a2,136(sp)
    80043bcc:	8522                	mv	a0,s0
    80043bce:	bd1c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48061
    JS_FreeValue(ctx, args[1]);
    80043bd2:	65ca                	ld	a1,144(sp)
    80043bd4:	666a                	ld	a2,152(sp)
    80043bd6:	8522                	mv	a0,s0
    80043bd8:	bc7c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48063
    JS_FreeValue(ctx, obj);
    80043bdc:	7582                	ld	a1,32(sp)
    80043bde:	7622                	ld	a2,40(sp)
    80043be0:	8522                	mv	a0,s0
    80043be2:	bbdc70ef          	jal	ra,8000b79e <JS_FreeValue>
    80043be6:	bf21                	j	80043afe <js_promise_constructor+0x20>
quickjs-nuttx/quickjs.c:48053
        JS_FreeValue(ctx, ret2);
    80043be8:	65c6                	ld	a1,80(sp)
    80043bea:	8522                	mv	a0,s0
    80043bec:	bb3c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48055
    JS_FreeValue(ctx, ret);
    80043bf0:	75c2                	ld	a1,48(sp)
    80043bf2:	7662                	ld	a2,56(sp)
    80043bf4:	8522                	mv	a0,s0
    80043bf6:	ba9c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48056
    JS_FreeValue(ctx, args[0]);
    80043bfa:	658a                	ld	a1,128(sp)
    80043bfc:	662a                	ld	a2,136(sp)
    80043bfe:	8522                	mv	a0,s0
    80043c00:	b9fc70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48057
    JS_FreeValue(ctx, args[1]);
    80043c04:	65ca                	ld	a1,144(sp)
    80043c06:	666a                	ld	a2,152(sp)
    80043c08:	8522                	mv	a0,s0
    80043c0a:	b95c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48058
    return obj;
    80043c0e:	f8ce                	sd	s3,112(sp)
    80043c10:	fcca                	sd	s2,120(sp)
quickjs-nuttx/quickjs.c:48065 (discriminator 1)
}
    80043c12:	60ae                	ld	ra,200(sp)
    80043c14:	640e                	ld	s0,192(sp)
    80043c16:	7546                	ld	a0,112(sp)
    80043c18:	75e6                	ld	a1,120(sp)
    80043c1a:	74ea                	ld	s1,184(sp)
    80043c1c:	794a                	ld	s2,176(sp)
    80043c1e:	79aa                	ld	s3,168(sp)
    80043c20:	6169                	addi	sp,sp,208
    80043c22:	8082                	ret

0000000080043c24 <js_new_promise_capability>:
js_new_promise_capability():
quickjs-nuttx/quickjs.c:48095
{
    80043c24:	7175                	addi	sp,sp,-144
    80043c26:	e122                	sd	s0,128(sp)
    80043c28:	f4ce                	sd	s3,104(sp)
    80043c2a:	e032                	sd	a2,0(sp)
    80043c2c:	e436                	sd	a3,8(sp)
js_promise_executor_new():
quickjs-nuttx/quickjs.c:48086
    func_data[0] = JS_UNDEFINED;
    80043c2e:	440d                	li	s0,3
quickjs-nuttx/quickjs.c:48088
    return JS_NewCFunctionData(ctx, js_promise_executor, 2,
    80043c30:	009c                	addi	a5,sp,64
    80043c32:	4709                	li	a4,2
js_new_promise_capability():
quickjs-nuttx/quickjs.c:48095
{
    80043c34:	89ae                	mv	s3,a1
js_promise_executor_new():
quickjs-nuttx/quickjs.c:48088
    return JS_NewCFunctionData(ctx, js_promise_executor, 2,
    80043c36:	4681                	li	a3,0
    80043c38:	4609                	li	a2,2
    80043c3a:	fffd5597          	auipc	a1,0xfffd5
    80043c3e:	f7e58593          	addi	a1,a1,-130 # 80018bb8 <js_promise_executor>
js_new_promise_capability():
quickjs-nuttx/quickjs.c:48095
{
    80043c42:	f8ca                	sd	s2,112(sp)
    80043c44:	e506                	sd	ra,136(sp)
    80043c46:	fca6                	sd	s1,120(sp)
    80043c48:	892a                	mv	s2,a0
js_promise_executor_new():
quickjs-nuttx/quickjs.c:48086
    func_data[0] = JS_UNDEFINED;
    80043c4a:	e082                	sd	zero,64(sp)
    80043c4c:	e4a2                	sd	s0,72(sp)
quickjs-nuttx/quickjs.c:48087
    func_data[1] = JS_UNDEFINED;
    80043c4e:	e882                	sd	zero,80(sp)
    80043c50:	eca2                	sd	s0,88(sp)
quickjs-nuttx/quickjs.c:48088
    return JS_NewCFunctionData(ctx, js_promise_executor, 2,
    80043c52:	ec1ec0ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    80043c56:	f82a                	sd	a0,48(sp)
    80043c58:	fc2e                	sd	a1,56(sp)
    80043c5a:	e0aa                	sd	a0,64(sp)
    80043c5c:	e4ae                	sd	a1,72(sp)
js_new_promise_capability():
quickjs-nuttx/quickjs.c:48100
    executor = js_promise_executor_new(ctx);
    80043c5e:	e82a                	sd	a0,16(sp)
    80043c60:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:48101
    if (JS_IsException(executor))
    80043c62:	0005879b          	sext.w	a5,a1
    80043c66:	4719                	li	a4,6
    80043c68:	06e78f63          	beq	a5,a4,80043ce6 <js_new_promise_capability+0xc2>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80043c6c:	6622                	ld	a2,8(sp)
js_new_promise_capability():
quickjs-nuttx/quickjs.c:48105
        result_promise = js_promise_constructor(ctx, ctor, 1,
    80043c6e:	6582                	ld	a1,0(sp)
    80043c70:	0818                	addi	a4,sp,16
quickjs-nuttx/quickjs.c:48104
    if (JS_IsUndefined(ctor)) {
    80043c72:	0006079b          	sext.w	a5,a2
quickjs-nuttx/quickjs.c:48105
        result_promise = js_promise_constructor(ctx, ctor, 1,
    80043c76:	4685                	li	a3,1
    80043c78:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:48104
    if (JS_IsUndefined(ctor)) {
    80043c7a:	06879f63          	bne	a5,s0,80043cf8 <js_new_promise_capability+0xd4>
quickjs-nuttx/quickjs.c:48105
        result_promise = js_promise_constructor(ctx, ctor, 1,
    80043c7e:	e61ff0ef          	jal	ra,80043ade <js_promise_constructor>
quickjs-nuttx/quickjs.c:48108
        result_promise = JS_CallConstructor(ctx, ctor, 1,
    80043c82:	f02a                	sd	a0,32(sp)
    80043c84:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:48111
    if (JS_IsException(result_promise))
    80043c86:	0005879b          	sext.w	a5,a1
    80043c8a:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:48108
        result_promise = JS_CallConstructor(ctx, ctor, 1,
    80043c8c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:48111
    if (JS_IsException(result_promise))
    80043c8e:	06e78863          	beq	a5,a4,80043cfe <js_new_promise_capability+0xda>
quickjs-nuttx/quickjs.c:48113
    s = JS_GetOpaque(executor, JS_CLASS_C_FUNCTION_DATA);
    80043c92:	65e2                	ld	a1,24(sp)
    80043c94:	6542                	ld	a0,16(sp)
    80043c96:	463d                	li	a2,15
    80043c98:	9fdca0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:48115
        if (check_function(ctx, s->data[i]))
    80043c9c:	690c                	ld	a1,16(a0)
    80043c9e:	6d10                	ld	a2,24(a0)
quickjs-nuttx/quickjs.c:48113
    s = JS_GetOpaque(executor, JS_CLASS_C_FUNCTION_DATA);
    80043ca0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:48115
        if (check_function(ctx, s->data[i]))
    80043ca2:	854a                	mv	a0,s2
    80043ca4:	a7bd40ef          	jal	ra,8001871e <check_function>
    80043ca8:	e939                	bnez	a0,80043cfe <js_new_promise_capability+0xda>
    80043caa:	708c                	ld	a1,32(s1)
    80043cac:	7490                	ld	a2,40(s1)
    80043cae:	854a                	mv	a0,s2
    80043cb0:	a6fd40ef          	jal	ra,8001871e <check_function>
    80043cb4:	e529                	bnez	a0,80043cfe <js_new_promise_capability+0xda>
quickjs-nuttx/quickjs.c:48119
        resolving_funcs[i] = JS_DupValue(ctx, s->data[i]);
    80043cb6:	6888                	ld	a0,16(s1)
    80043cb8:	6c8c                	ld	a1,24(s1)
    80043cba:	f60c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80043cbe:	00a9b023          	sd	a0,0(s3)
    80043cc2:	00b9b423          	sd	a1,8(s3)
    80043cc6:	7088                	ld	a0,32(s1)
    80043cc8:	748c                	ld	a1,40(s1)
    80043cca:	f50c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80043cce:	00b9bc23          	sd	a1,24(s3)
quickjs-nuttx/quickjs.c:48120
    JS_FreeValue(ctx, executor);
    80043cd2:	6662                	ld	a2,24(sp)
    80043cd4:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:48119
        resolving_funcs[i] = JS_DupValue(ctx, s->data[i]);
    80043cd6:	00a9b823          	sd	a0,16(s3)
quickjs-nuttx/quickjs.c:48120
    JS_FreeValue(ctx, executor);
    80043cda:	854a                	mv	a0,s2
    80043cdc:	ac3c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48121
    return result_promise;
    80043ce0:	7782                	ld	a5,32(sp)
    80043ce2:	e4a2                	sd	s0,72(sp)
    80043ce4:	e0be                	sd	a5,64(sp)
quickjs-nuttx/quickjs.c:48126
}
    80043ce6:	60aa                	ld	ra,136(sp)
    80043ce8:	640a                	ld	s0,128(sp)
    80043cea:	6506                	ld	a0,64(sp)
    80043cec:	65a6                	ld	a1,72(sp)
    80043cee:	74e6                	ld	s1,120(sp)
    80043cf0:	7946                	ld	s2,112(sp)
    80043cf2:	79a6                	ld	s3,104(sp)
    80043cf4:	6149                	addi	sp,sp,144
    80043cf6:	8082                	ret
quickjs-nuttx/quickjs.c:48108
        result_promise = JS_CallConstructor(ctx, ctor, 1,
    80043cf8:	eadfd0ef          	jal	ra,80041ba4 <JS_CallConstructor>
    80043cfc:	b759                	j	80043c82 <js_new_promise_capability+0x5e>
quickjs-nuttx/quickjs.c:48123
    JS_FreeValue(ctx, executor);
    80043cfe:	65c2                	ld	a1,16(sp)
    80043d00:	6662                	ld	a2,24(sp)
    80043d02:	854a                	mv	a0,s2
    80043d04:	a9bc70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48124
    JS_FreeValue(ctx, result_promise);
    80043d08:	7582                	ld	a1,32(sp)
    80043d0a:	8622                	mv	a2,s0
    80043d0c:	854a                	mv	a0,s2
    80043d0e:	a91c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48125
    return JS_EXCEPTION;
    80043d12:	4799                	li	a5,6
    80043d14:	e082                	sd	zero,64(sp)
    80043d16:	e4be                	sd	a5,72(sp)
    80043d18:	b7f9                	j	80043ce6 <js_new_promise_capability+0xc2>

0000000080043d1a <js_promise_then>:
js_promise_then():
quickjs-nuttx/quickjs.c:48554
{
    80043d1a:	7135                	addi	sp,sp,-160
quickjs-nuttx/quickjs.c:48559
    s = JS_GetOpaque2(ctx, this_val, JS_CLASS_PROMISE);
    80043d1c:	03100693          	li	a3,49
quickjs-nuttx/quickjs.c:48554
{
    80043d20:	e922                	sd	s0,144(sp)
    80043d22:	fcce                	sd	s3,120(sp)
    80043d24:	ed06                	sd	ra,152(sp)
    80043d26:	e526                	sd	s1,136(sp)
    80043d28:	e14a                	sd	s2,128(sp)
    80043d2a:	842a                	mv	s0,a0
    80043d2c:	e02e                	sd	a1,0(sp)
    80043d2e:	e432                	sd	a2,8(sp)
    80043d30:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:48559
    s = JS_GetOpaque2(ctx, this_val, JS_CLASS_PROMISE);
    80043d32:	abdd40ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:48560
    if (!s)
    80043d36:	e509                	bnez	a0,80043d40 <js_promise_then+0x26>
quickjs-nuttx/quickjs.c:48561
        return JS_EXCEPTION;
    80043d38:	e082                	sd	zero,64(sp)
    80043d3a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:48569
        return result_promise;
    80043d3c:	e4be                	sd	a5,72(sp)
    80043d3e:	a01d                	j	80043d64 <js_promise_then+0x4a>
quickjs-nuttx/quickjs.c:48563
    ctor = JS_SpeciesConstructor(ctx, this_val, JS_UNDEFINED);
    80043d40:	6622                	ld	a2,8(sp)
    80043d42:	6582                	ld	a1,0(sp)
    80043d44:	4681                	li	a3,0
    80043d46:	470d                	li	a4,3
    80043d48:	8522                	mv	a0,s0
    80043d4a:	922d50ef          	jal	ra,80018e6c <JS_SpeciesConstructor>
    80043d4e:	e82a                	sd	a0,16(sp)
    80043d50:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:48564
    if (JS_IsException(ctor))
    80043d52:	0005879b          	sext.w	a5,a1
    80043d56:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:48563
    ctor = JS_SpeciesConstructor(ctx, this_val, JS_UNDEFINED);
    80043d58:	862a                	mv	a2,a0
    80043d5a:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:48564
    if (JS_IsException(ctor))
    80043d5c:	01279d63          	bne	a5,s2,80043d76 <js_promise_then+0x5c>
quickjs-nuttx/quickjs.c:48565
        return ctor;
    80043d60:	e0aa                	sd	a0,64(sp)
    80043d62:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:48579 (discriminator 1)
}
    80043d64:	60ea                	ld	ra,152(sp)
    80043d66:	644a                	ld	s0,144(sp)
    80043d68:	6506                	ld	a0,64(sp)
    80043d6a:	65a6                	ld	a1,72(sp)
    80043d6c:	64aa                	ld	s1,136(sp)
    80043d6e:	690a                	ld	s2,128(sp)
    80043d70:	79e6                	ld	s3,120(sp)
    80043d72:	610d                	addi	sp,sp,160
    80043d74:	8082                	ret
quickjs-nuttx/quickjs.c:48566
    result_promise = js_new_promise_capability(ctx, resolving_funcs, ctor);
    80043d76:	088c                	addi	a1,sp,80
    80043d78:	8522                	mv	a0,s0
    80043d7a:	eabff0ef          	jal	ra,80043c24 <js_new_promise_capability>
    80043d7e:	84ae                	mv	s1,a1
    80043d80:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:48567
    JS_FreeValue(ctx, ctor);
    80043d82:	6662                	ld	a2,24(sp)
    80043d84:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:48566
    result_promise = js_new_promise_capability(ctx, resolving_funcs, ctor);
    80043d86:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:48568
    if (JS_IsException(result_promise))
    80043d88:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:48567
    JS_FreeValue(ctx, ctor);
    80043d8a:	8522                	mv	a0,s0
    80043d8c:	a13c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48568
    if (JS_IsException(result_promise))
    80043d90:	01249663          	bne	s1,s2,80043d9c <js_promise_then+0x82>
quickjs-nuttx/quickjs.c:48569
        return result_promise;
    80043d94:	7782                	ld	a5,32(sp)
    80043d96:	e0be                	sd	a5,64(sp)
    80043d98:	77a2                	ld	a5,40(sp)
    80043d9a:	b74d                	j	80043d3c <js_promise_then+0x22>
quickjs-nuttx/quickjs.c:48570
    ret = perform_promise_then(ctx, this_val, argv,
    80043d9c:	6582                	ld	a1,0(sp)
    80043d9e:	6622                	ld	a2,8(sp)
    80043da0:	0898                	addi	a4,sp,80
    80043da2:	86ce                	mv	a3,s3
    80043da4:	8522                	mv	a0,s0
    80043da6:	db8d70ef          	jal	ra,8001b35e <perform_promise_then>
quickjs-nuttx/quickjs.c:48573
        JS_FreeValue(ctx, resolving_funcs[i]);
    80043daa:	65c6                	ld	a1,80(sp)
    80043dac:	6666                	ld	a2,88(sp)
quickjs-nuttx/quickjs.c:48570
    ret = perform_promise_then(ctx, this_val, argv,
    80043dae:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:48573
        JS_FreeValue(ctx, resolving_funcs[i]);
    80043db0:	8522                	mv	a0,s0
    80043db2:	9edc70ef          	jal	ra,8000b79e <JS_FreeValue>
    80043db6:	7586                	ld	a1,96(sp)
    80043db8:	7626                	ld	a2,104(sp)
    80043dba:	8522                	mv	a0,s0
    80043dbc:	9e3c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48574
    if (ret) {
    80043dc0:	d8f1                	beqz	s1,80043d94 <js_promise_then+0x7a>
quickjs-nuttx/quickjs.c:48575
        JS_FreeValue(ctx, result_promise);
    80043dc2:	7582                	ld	a1,32(sp)
    80043dc4:	7622                	ld	a2,40(sp)
    80043dc6:	8522                	mv	a0,s0
    80043dc8:	9d7c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48576
        return JS_EXCEPTION;
    80043dcc:	e082                	sd	zero,64(sp)
    80043dce:	e4ca                	sd	s2,72(sp)
    80043dd0:	bf51                	j	80043d64 <js_promise_then+0x4a>

0000000080043dd2 <js_promise_withResolvers>:
js_promise_withResolvers():
quickjs-nuttx/quickjs.c:48171
    if (!JS_IsObject(this_val))
    80043dd2:	0006071b          	sext.w	a4,a2
    80043dd6:	57fd                	li	a5,-1
    80043dd8:	00f70463          	beq	a4,a5,80043de0 <js_promise_withResolvers+0xe>
quickjs-nuttx/quickjs.c:48172
        return JS_ThrowTypeErrorNotAnObject(ctx);
    80043ddc:	e4fd406f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:48169
{
    80043de0:	7119                	addi	sp,sp,-128
    80043de2:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:48173
    result_promise = js_new_promise_capability(ctx, resolving_funcs, this_val);
    80043de4:	862e                	mv	a2,a1
    80043de6:	008c                	addi	a1,sp,64
quickjs-nuttx/quickjs.c:48169
{
    80043de8:	f8a2                	sd	s0,112(sp)
    80043dea:	f0ca                	sd	s2,96(sp)
    80043dec:	fc86                	sd	ra,120(sp)
    80043dee:	f4a6                	sd	s1,104(sp)
    80043df0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48173
    result_promise = js_new_promise_capability(ctx, resolving_funcs, this_val);
    80043df2:	e33ff0ef          	jal	ra,80043c24 <js_new_promise_capability>
    80043df6:	e82a                	sd	a0,16(sp)
    80043df8:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:48174
    if (JS_IsException(result_promise))
    80043dfa:	0005879b          	sext.w	a5,a1
    80043dfe:	4919                	li	s2,6
    80043e00:	01279c63          	bne	a5,s2,80043e18 <js_promise_withResolvers+0x46>
quickjs-nuttx/quickjs.c:48175
        return result_promise;
    80043e04:	f82a                	sd	a0,48(sp)
    80043e06:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:48187 (discriminator 1)
}
    80043e08:	70e6                	ld	ra,120(sp)
    80043e0a:	7446                	ld	s0,112(sp)
    80043e0c:	7542                	ld	a0,48(sp)
    80043e0e:	75e2                	ld	a1,56(sp)
    80043e10:	74a6                	ld	s1,104(sp)
    80043e12:	7906                	ld	s2,96(sp)
    80043e14:	6109                	addi	sp,sp,128
    80043e16:	8082                	ret
quickjs-nuttx/quickjs.c:48176
    obj = JS_NewObject(ctx);
    80043e18:	8522                	mv	a0,s0
    80043e1a:	a0ad80ef          	jal	ra,8001c024 <JS_NewObject>
    80043e1e:	f02a                	sd	a0,32(sp)
    80043e20:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:48177
    if (JS_IsException(obj)) {
    80043e22:	0005849b          	sext.w	s1,a1
quickjs-nuttx/quickjs.c:48176
    obj = JS_NewObject(ctx);
    80043e26:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:48177
    if (JS_IsException(obj)) {
    80043e28:	03249463          	bne	s1,s2,80043e50 <js_promise_withResolvers+0x7e>
quickjs-nuttx/quickjs.c:48178
        JS_FreeValue(ctx, resolving_funcs[0]);
    80043e2c:	6586                	ld	a1,64(sp)
    80043e2e:	6626                	ld	a2,72(sp)
    80043e30:	8522                	mv	a0,s0
    80043e32:	96dc70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48179
        JS_FreeValue(ctx, resolving_funcs[1]);
    80043e36:	65c6                	ld	a1,80(sp)
    80043e38:	6666                	ld	a2,88(sp)
    80043e3a:	8522                	mv	a0,s0
    80043e3c:	963c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48180
        JS_FreeValue(ctx, result_promise);
    80043e40:	65c2                	ld	a1,16(sp)
    80043e42:	6662                	ld	a2,24(sp)
    80043e44:	8522                	mv	a0,s0
    80043e46:	959c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48181
        return JS_EXCEPTION;
    80043e4a:	f802                	sd	zero,48(sp)
    80043e4c:	fc26                	sd	s1,56(sp)
    80043e4e:	bf6d                	j	80043e08 <js_promise_withResolvers+0x36>
quickjs-nuttx/quickjs.c:48183
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_promise, result_promise, JS_PROP_C_W_E);
    80043e50:	6742                	ld	a4,16(sp)
    80043e52:	67e2                	ld	a5,24(sp)
    80043e54:	85aa                	mv	a1,a0
    80043e56:	481d                	li	a6,7
    80043e58:	08300693          	li	a3,131
    80043e5c:	8522                	mv	a0,s0
    80043e5e:	bced40ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:48184
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_resolve, resolving_funcs[0], JS_PROP_C_W_E);
    80043e62:	6706                	ld	a4,64(sp)
    80043e64:	67a6                	ld	a5,72(sp)
    80043e66:	7582                	ld	a1,32(sp)
    80043e68:	7622                	ld	a2,40(sp)
    80043e6a:	481d                	li	a6,7
    80043e6c:	08100693          	li	a3,129
    80043e70:	8522                	mv	a0,s0
    80043e72:	bbad40ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:48185
    JS_DefinePropertyValue(ctx, obj, JS_ATOM_reject, resolving_funcs[1], JS_PROP_C_W_E);
    80043e76:	67e6                	ld	a5,88(sp)
    80043e78:	6746                	ld	a4,80(sp)
    80043e7a:	7582                	ld	a1,32(sp)
    80043e7c:	7622                	ld	a2,40(sp)
    80043e7e:	481d                	li	a6,7
    80043e80:	08200693          	li	a3,130
    80043e84:	8522                	mv	a0,s0
    80043e86:	ba6d40ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:48186
    return obj;
    80043e8a:	7782                	ld	a5,32(sp)
    80043e8c:	f83e                	sd	a5,48(sp)
    80043e8e:	77a2                	ld	a5,40(sp)
    80043e90:	fc3e                	sd	a5,56(sp)
    80043e92:	bf9d                	j	80043e08 <js_promise_withResolvers+0x36>

0000000080043e94 <promise_reaction_job>:
promise_reaction_job():
quickjs-nuttx/quickjs.c:47735
{
    80043e94:	7175                	addi	sp,sp,-144
    80043e96:	e506                	sd	ra,136(sp)
    80043e98:	e122                	sd	s0,128(sp)
    80043e9a:	fca6                	sd	s1,120(sp)
    80043e9c:	f8ca                	sd	s2,112(sp)
quickjs-nuttx/quickjs.c:47740
    assert(argc == 5);
    80043e9e:	4795                	li	a5,5
    80043ea0:	00f58c63          	beq	a1,a5,80043eb8 <promise_reaction_job+0x24>
quickjs-nuttx/quickjs.c:47740 (discriminator 1)
    80043ea4:	65b1                	lui	a1,0xc
    80043ea6:	4601                	li	a2,0
    80043ea8:	a7c58593          	addi	a1,a1,-1412 # ba7c <asinh-0x7fff4584>
    80043eac:	00025517          	auipc	a0,0x25
    80043eb0:	6ec50513          	addi	a0,a0,1772 # 80069598 <qjsc_repl+0x3fe8>
    80043eb4:	2a91c0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:47741 (discriminator 2)
    handler = argv[2];
    80043eb8:	721c                	ld	a5,32(a2)
    80043eba:	02863903          	ld	s2,40(a2)
quickjs-nuttx/quickjs.c:47742 (discriminator 2)
    is_reject = JS_ToBool(ctx, argv[3]);
    80043ebe:	7a0c                	ld	a1,48(a2)
    80043ec0:	8432                	mv	s0,a2
    80043ec2:	7e10                	ld	a2,56(a2)
quickjs-nuttx/quickjs.c:47741 (discriminator 2)
    handler = argv[2];
    80043ec4:	e03e                	sd	a5,0(sp)
    80043ec6:	e44a                	sd	s2,8(sp)
quickjs-nuttx/quickjs.c:47742 (discriminator 2)
    is_reject = JS_ToBool(ctx, argv[3]);
    80043ec8:	84aa                	mv	s1,a0
    80043eca:	f1dca0ef          	jal	ra,8000ede6 <JS_ToBool>
quickjs-nuttx/quickjs.c:47743 (discriminator 2)
    arg = argv[4];
    80043ece:	642c                	ld	a1,72(s0)
quickjs-nuttx/quickjs.c:47742 (discriminator 2)
    is_reject = JS_ToBool(ctx, argv[3]);
    80043ed0:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:47743 (discriminator 2)
    arg = argv[4];
    80043ed2:	6028                	ld	a0,64(s0)
    80043ed4:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:47748 (discriminator 2)
    if (JS_IsUndefined(handler)) {
    80043ed6:	2901                	sext.w	s2,s2
quickjs-nuttx/quickjs.c:47743 (discriminator 2)
    arg = argv[4];
    80043ed8:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs.c:47748 (discriminator 2)
    if (JS_IsUndefined(handler)) {
    80043eda:	470d                	li	a4,3
    80043edc:	06e91e63          	bne	s2,a4,80043f58 <promise_reaction_job+0xc4>
quickjs-nuttx/quickjs.c:47749
        if (is_reject) {
    80043ee0:	cbad                	beqz	a5,80043f52 <promise_reaction_job+0xbe>
quickjs-nuttx/quickjs.c:47750
            res = JS_Throw(ctx, JS_DupValue(ctx, arg));
    80043ee2:	d38c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80043ee6:	862e                	mv	a2,a1
    80043ee8:	85aa                	mv	a1,a0
    80043eea:	8526                	mv	a0,s1
    80043eec:	d56ca0ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:47755
        res = JS_Call(ctx, handler, JS_UNDEFINED, 1, &arg);
    80043ef0:	fc2e                	sd	a1,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80043ef2:	57e2                	lw	a5,56(sp)
promise_reaction_job():
quickjs-nuttx/quickjs.c:47755
    80043ef4:	f82a                	sd	a0,48(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80043ef6:	4719                	li	a4,6
    80043ef8:	ffa78913          	addi	s2,a5,-6
    80043efc:	00193913          	seqz	s2,s2
promise_reaction_job():
quickjs-nuttx/quickjs.c:47758
    if (is_reject)
    80043f00:	00e79763          	bne	a5,a4,80043f0e <promise_reaction_job+0x7a>
quickjs-nuttx/quickjs.c:47759
        res = JS_GetException(ctx);
    80043f04:	8526                	mv	a0,s1
    80043f06:	d88ca0ef          	jal	ra,8000e48e <JS_GetException>
    80043f0a:	f82a                	sd	a0,48(sp)
    80043f0c:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:47760
    func = argv[is_reject];
    80043f0e:	0912                	slli	s2,s2,0x4
    80043f10:	944a                	add	s0,s0,s2
    80043f12:	6410                	ld	a2,8(s0)
quickjs-nuttx/quickjs.c:47764
    if (!JS_IsUndefined(func)) {
    80043f14:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:47760
    func = argv[is_reject];
    80043f16:	600c                	ld	a1,0(s0)
quickjs-nuttx/quickjs.c:47764
    if (!JS_IsUndefined(func)) {
    80043f18:	0006071b          	sext.w	a4,a2
    80043f1c:	04f70b63          	beq	a4,a5,80043f72 <promise_reaction_job+0xde>
quickjs-nuttx/quickjs.c:47765
        res2 = JS_Call(ctx, func, JS_UNDEFINED,
    80043f20:	f4be                	sd	a5,104(sp)
    80043f22:	03010813          	addi	a6,sp,48
    80043f26:	4785                	li	a5,1
    80043f28:	4681                	li	a3,0
    80043f2a:	470d                	li	a4,3
    80043f2c:	8526                	mv	a0,s1
    80043f2e:	f082                	sd	zero,96(sp)
    80043f30:	ed5fe0ef          	jal	ra,80042e04 <JS_Call>
    80043f34:	e0aa                	sd	a0,64(sp)
    80043f36:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:47770
    JS_FreeValue(ctx, res);
    80043f38:	75c2                	ld	a1,48(sp)
    80043f3a:	7662                	ld	a2,56(sp)
    80043f3c:	8526                	mv	a0,s1
    80043f3e:	861c70ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47773
}
    80043f42:	60aa                	ld	ra,136(sp)
    80043f44:	85a2                	mv	a1,s0
    80043f46:	640a                	ld	s0,128(sp)
    80043f48:	6506                	ld	a0,64(sp)
    80043f4a:	74e6                	ld	s1,120(sp)
    80043f4c:	7946                	ld	s2,112(sp)
    80043f4e:	6149                	addi	sp,sp,144
    80043f50:	8082                	ret
quickjs-nuttx/quickjs.c:47752
            res = JS_DupValue(ctx, arg);
    80043f52:	cc8c60ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80043f56:	bf69                	j	80043ef0 <promise_reaction_job+0x5c>
quickjs-nuttx/quickjs.c:47755
        res = JS_Call(ctx, handler, JS_UNDEFINED, 1, &arg);
    80043f58:	6582                	ld	a1,0(sp)
    80043f5a:	6622                	ld	a2,8(sp)
    80043f5c:	f4ba                	sd	a4,104(sp)
    80043f5e:	01010813          	addi	a6,sp,16
    80043f62:	4785                	li	a5,1
    80043f64:	4681                	li	a3,0
    80043f66:	470d                	li	a4,3
    80043f68:	8526                	mv	a0,s1
    80043f6a:	f082                	sd	zero,96(sp)
    80043f6c:	e99fe0ef          	jal	ra,80042e04 <JS_Call>
    80043f70:	b741                	j	80043ef0 <promise_reaction_job+0x5c>
quickjs-nuttx/quickjs.c:47768
        res2 = JS_UNDEFINED;
    80043f72:	e082                	sd	zero,64(sp)
    80043f74:	440d                	li	s0,3
    80043f76:	b7c9                	j	80043f38 <promise_reaction_job+0xa4>

0000000080043f78 <JS_IteratorNext2>:
JS_IteratorNext2():
quickjs-nuttx/quickjs.c:15124
{
    80043f78:	711d                	addi	sp,sp,-96
    80043f7a:	e8a2                	sd	s0,80(sp)
    80043f7c:	e4a6                	sd	s1,72(sp)
    80043f7e:	e82e                	sd	a1,16(sp)
    80043f80:	ec32                	sd	a2,24(sp)
    80043f82:	e43a                	sd	a4,8(sp)
    80043f84:	863e                	mv	a2,a5
    80043f86:	ec86                	sd	ra,88(sp)
    80043f88:	e036                	sd	a3,0(sp)
quickjs-nuttx/quickjs.c:15129
    if (JS_IsObject(method)) {
    80043f8a:	2701                	sext.w	a4,a4
    80043f8c:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:15124
{
    80043f8e:	842a                	mv	s0,a0
    80043f90:	85c2                	mv	a1,a6
    80043f92:	84c6                	mv	s1,a7
quickjs-nuttx/quickjs.c:15129
    if (JS_IsObject(method)) {
    80043f94:	04f71463          	bne	a4,a5,80043fdc <JS_IteratorNext2+0x64>
quickjs-nuttx/quickjs.c:15131
        if (p->class_id == JS_CLASS_C_FUNCTION &&
    80043f98:	0066d783          	lhu	a5,6(a3)
    80043f9c:	4731                	li	a4,12
    80043f9e:	02e79f63          	bne	a5,a4,80043fdc <JS_IteratorNext2+0x64>
quickjs-nuttx/quickjs.c:15131 (discriminator 1)
    80043fa2:	0416c703          	lbu	a4,65(a3)
    80043fa6:	02f71b63          	bne	a4,a5,80043fdc <JS_IteratorNext2+0x64>
quickjs-nuttx/quickjs.c:15137
            if (argc == 0) {
    80043faa:	e609                	bnez	a2,80043fb4 <JS_IteratorNext2+0x3c>
quickjs-nuttx/quickjs.c:15138
                args[0] = JS_UNDEFINED;
    80043fac:	478d                	li	a5,3
    80043fae:	f002                	sd	zero,32(sp)
    80043fb0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:15139
                argv = args;
    80043fb2:	100c                	addi	a1,sp,32
quickjs-nuttx/quickjs.c:15142
            return func.iterator_next(ctx, enum_obj, argc, argv,
    80043fb4:	0386b883          	ld	a7,56(a3)
    80043fb8:	04269803          	lh	a6,66(a3)
    80043fbc:	872e                	mv	a4,a1
    80043fbe:	86b2                	mv	a3,a2
    80043fc0:	65c2                	ld	a1,16(sp)
    80043fc2:	6662                	ld	a2,24(sp)
    80043fc4:	87a6                	mv	a5,s1
    80043fc6:	8522                	mv	a0,s0
    80043fc8:	9882                	jalr	a7
    80043fca:	f82a                	sd	a0,48(sp)
    80043fcc:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:15159 (discriminator 1)
}
    80043fce:	60e6                	ld	ra,88(sp)
    80043fd0:	6446                	ld	s0,80(sp)
    80043fd2:	7542                	ld	a0,48(sp)
    80043fd4:	75e2                	ld	a1,56(sp)
    80043fd6:	64a6                	ld	s1,72(sp)
    80043fd8:	6125                	addi	sp,sp,96
    80043fda:	8082                	ret
quickjs-nuttx/quickjs.c:15146
    obj = JS_Call(ctx, method, enum_obj, argc, argv);
    80043fdc:	87b2                	mv	a5,a2
    80043fde:	6762                	ld	a4,24(sp)
    80043fe0:	6622                	ld	a2,8(sp)
    80043fe2:	882e                	mv	a6,a1
    80043fe4:	66c2                	ld	a3,16(sp)
    80043fe6:	6582                	ld	a1,0(sp)
    80043fe8:	8522                	mv	a0,s0
    80043fea:	e1bfe0ef          	jal	ra,80042e04 <JS_Call>
    80043fee:	f02a                	sd	a0,32(sp)
    80043ff0:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80043ff2:	0005879b          	sext.w	a5,a1
JS_IteratorNext2():
quickjs-nuttx/quickjs.c:15147
    if (JS_IsException(obj))
    80043ff6:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:15146
    obj = JS_Call(ctx, method, enum_obj, argc, argv);
    80043ff8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:15147
    if (JS_IsException(obj))
    80043ffa:	02e78063          	beq	a5,a4,8004401a <JS_IteratorNext2+0xa2>
quickjs-nuttx/quickjs.c:15149
    if (!JS_IsObject(obj)) {
    80043ffe:	577d                	li	a4,-1
