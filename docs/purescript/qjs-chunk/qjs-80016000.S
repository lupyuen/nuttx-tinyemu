    80015000:	83ad                	srli	a5,a5,0xb
quickjs-nuttx/quickjs.c:17867 (discriminator 1)
                        if (unlikely(sf->js_mode & JS_MODE_MATH) &&
    80015002:	bff00713          	li	a4,-1025
quickjs-nuttx/quickjs.c:17868 (discriminator 1)
                            (r < -MAX_SAFE_INTEGER || r > MAX_SAFE_INTEGER))
    80015006:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:17867 (discriminator 1)
                        if (unlikely(sf->js_mode & JS_MODE_MATH) &&
    80015008:	8329                	srli	a4,a4,0xa
    8001500a:	1af76363          	bltu	a4,a5,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17871
                        d = (double)r;
    8001500e:	d226f7d3          	fcvt.d.l	fa5,a3
quickjs-nuttx/quickjs.c:17888
                    sp[-2] = __JS_NewFloat64(ctx, d);
    80015012:	fefcb027          	fsd	fa5,-32(s9)
    80015016:	479d                	li	a5,7
    80015018:	a02d                	j	80015042 <JS_CallInternal+0x60d4>
quickjs-nuttx/quickjs.c:17875
                    if (unlikely(r == 0 && (v1 | v2) < 0)) {
    8001501a:	e701                	bnez	a4,80015022 <JS_CallInternal+0x60b4>
quickjs-nuttx/quickjs.c:17875 (discriminator 1)
    8001501c:	8fd1                	or	a5,a5,a2
    8001501e:	0607c963          	bltz	a5,80015090 <JS_CallInternal+0x6122>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015022:	92043823          	sd	zero,-1744(s0)
    80015026:	92e42823          	sw	a4,-1744(s0)
    8001502a:	93043783          	ld	a5,-1744(s0)
    8001502e:	ee043c23          	sd	zero,-264(s0)
    80015032:	92043c23          	sd	zero,-1736(s0)
    80015036:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17879
                    sp[-2] = JS_NewInt32(ctx, r);
    8001503a:	fefcb023          	sd	a5,-32(s9)
    8001503e:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:17888
                    sp[-2] = __JS_NewFloat64(ctx, d);
    80015042:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:17894
            BREAK;
    80015046:	000d4b03          	lbu	s6,0(s10)
    8001504a:	0005a797          	auipc	a5,0x5a
    8001504e:	de678793          	addi	a5,a5,-538 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17889
                    sp--;
    80015052:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17894
            BREAK;
    80015054:	003b1713          	slli	a4,s6,0x3
    80015058:	97ba                	add	a5,a5,a4
    8001505a:	639c                	ld	a5,0(a5)
    8001505c:	0d05                	addi	s10,s10,1
    8001505e:	948fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17881
                } else if (JS_VALUE_IS_BOTH_FLOAT(op1, op2)) {
    80015062:	2781                	sext.w	a5,a5
    80015064:	469d                	li	a3,7
    80015066:	14d79563          	bne	a5,a3,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17881 (discriminator 1)
    8001506a:	2701                	sext.w	a4,a4
    8001506c:	14f71263          	bne	a4,a5,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17883
                    if (unlikely(sf->js_mode & JS_MODE_MATH))
    80015070:	77fd                	lui	a5,0xfffff
    80015072:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    80015076:	97a2                	add	a5,a5,s0
    80015078:	639c                	ld	a5,0(a5)
    8001507a:	43fc                	lw	a5,68(a5)
    8001507c:	8b91                	andi	a5,a5,4
    8001507e:	12079963          	bnez	a5,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17886
                    d = JS_VALUE_GET_FLOAT64(op1) * JS_VALUE_GET_FLOAT64(op2);
    80015082:	e9043787          	fld	fa5,-368(s0)
    80015086:	ed043707          	fld	fa4,-304(s0)
    8001508a:	12e7f7d3          	fmul.d	fa5,fa5,fa4
    8001508e:	b751                	j	80015012 <JS_CallInternal+0x60a4>
quickjs-nuttx/quickjs.c:17876
                        d = -0.0;
    80015090:	228407d3          	fmv.d	fa5,fs0
    80015094:	bfbd                	j	80015012 <JS_CallInternal+0x60a4>
quickjs-nuttx/quickjs.c:17898
                op1 = sp[-2];
    80015096:	fe0cb783          	ld	a5,-32(s9)
    8001509a:	e8f43823          	sd	a5,-368(s0)
    8001509e:	fe8cb783          	ld	a5,-24(s9)
    800150a2:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:17899
                op2 = sp[-1];
    800150a6:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:17898
                op1 = sp[-2];
    800150aa:	fe8cb603          	ld	a2,-24(s9)
    800150ae:	fe0ca683          	lw	a3,-32(s9)
quickjs-nuttx/quickjs.c:17899
                op2 = sp[-1];
    800150b2:	ecf43823          	sd	a5,-304(s0)
    800150b6:	ff8cb783          	ld	a5,-8(s9)
    800150ba:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:17900
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    800150be:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:17899
                op2 = sp[-1];
    800150c2:	ff0ca703          	lw	a4,-16(s9)
quickjs-nuttx/quickjs.c:17900
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    800150c6:	8fd1                	or	a5,a5,a2
    800150c8:	2781                	sext.w	a5,a5
    800150ca:	e3fd                	bnez	a5,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17902
                    if (unlikely(sf->js_mode & JS_MODE_MATH))
    800150cc:	77fd                	lui	a5,0xfffff
    800150ce:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    800150d2:	97a2                	add	a5,a5,s0
    800150d4:	639c                	ld	a5,0(a5)
    800150d6:	43fc                	lw	a5,68(a5)
    800150d8:	8b91                	andi	a5,a5,4
    800150da:	ebf9                	bnez	a5,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17906
                    sp[-2] = JS_NewFloat64(ctx, (double)v1 / (double)v2);
    800150dc:	d20687d3          	fcvt.d.w	fa5,a3
    800150e0:	d2070753          	fcvt.d.w	fa4,a4
    800150e4:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    800150e8:	c20796d3          	fcvt.w.d	a3,fa5,rtz
JS_CallInternal():
quickjs-nuttx/quickjs.c:17906
    800150ec:	e20787d3          	fmv.x.d	a5,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    800150f0:	d20687d3          	fcvt.d.w	fa5,a3
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    800150f4:	0006871b          	sext.w	a4,a3
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    800150f8:	e2078653          	fmv.x.d	a2,fa5
    800150fc:	04f61363          	bne	a2,a5,80015142 <JS_CallInternal+0x61d4>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    80015100:	ee042a23          	sw	zero,-268(s0)
    80015104:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    80015106:	eee42823          	sw	a4,-272(s0)
    8001510a:	ef043787          	fld	fa5,-272(s0)
    8001510e:	eef43c23          	sd	a5,-264(s0)
    80015112:	ef043703          	ld	a4,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17906
    80015116:	fefcb423          	sd	a5,-24(s9)
    8001511a:	fefcb027          	fsd	fa5,-32(s9)
quickjs-nuttx/quickjs.c:17912
            BREAK;
    8001511e:	000d4b03          	lbu	s6,0(s10)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:566
    80015122:	94e43023          	sd	a4,-1728(s0)
    80015126:	94f43423          	sd	a5,-1720(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17912
    8001512a:	003b1713          	slli	a4,s6,0x3
    8001512e:	0005a797          	auipc	a5,0x5a
    80015132:	d0278793          	addi	a5,a5,-766 # 8006ee30 <dispatch_table.4>
    80015136:	97ba                	add	a5,a5,a4
    80015138:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:17907
                    sp--;
    8001513a:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17912
            BREAK;
    8001513c:	0d05                	addi	s10,s10,1
    8001513e:	868fa06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.h:230
    return v;
    80015142:	eef43823          	sd	a5,-272(s0)
    80015146:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8001514a:	479d                	li	a5,7
    8001514c:	bf6d                	j	80015106 <JS_CallInternal+0x6198>
JS_CallInternal():
quickjs-nuttx/quickjs.c:17921
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    8001514e:	fe8cb783          	ld	a5,-24(s9)
    80015152:	ff8cb603          	ld	a2,-8(s9)
quickjs-nuttx/quickjs.c:17919
                op1 = sp[-2];
    80015156:	fe0ca703          	lw	a4,-32(s9)
quickjs-nuttx/quickjs.c:17920
                op2 = sp[-1];
    8001515a:	ff0ca683          	lw	a3,-16(s9)
quickjs-nuttx/quickjs.c:17921
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    8001515e:	8fd1                	or	a5,a5,a2
    80015160:	2781                	sext.w	a5,a5
    80015162:	e7b9                	bnez	a5,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17927
                    if (unlikely(v1 < 0 || v2 <= 0))
    80015164:	04074663          	bltz	a4,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17927 (discriminator 1)
    80015168:	04d05463          	blez	a3,800151b0 <JS_CallInternal+0x6242>
quickjs-nuttx/quickjs.c:17929
                    r = v1 % v2;
    8001516c:	02d7673b          	remw	a4,a4,a3
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80015170:	94043823          	sd	zero,-1712(s0)
    80015174:	ee043c23          	sd	zero,-264(s0)
    80015178:	94043c23          	sd	zero,-1704(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17931
                    sp--;
    8001517c:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17936
            BREAK;
    8001517e:	0d05                	addi	s10,s10,1
    80015180:	94e42823          	sw	a4,-1712(s0)
    80015184:	95043783          	ld	a5,-1712(s0)
    80015188:	eef43823          	sd	a5,-272(s0)
quickjs-nuttx/quickjs.c:17930
                    sp[-2] = JS_NewInt32(ctx, r);
    8001518c:	fefcb823          	sd	a5,-16(s9)
    80015190:	ef843783          	ld	a5,-264(s0)
    80015194:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17936
            BREAK;
    80015198:	fffd4b03          	lbu	s6,-1(s10)
    8001519c:	0005a797          	auipc	a5,0x5a
    800151a0:	c9478793          	addi	a5,a5,-876 # 8006ee30 <dispatch_table.4>
    800151a4:	003b1713          	slli	a4,s6,0x3
    800151a8:	97ba                	add	a5,a5,a4
    800151aa:	639c                	ld	a5,0(a5)
    800151ac:	ffbf906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17939
            if (js_binary_arith_slow(ctx, sp, opcode))
    800151b0:	865a                	mv	a2,s6
    800151b2:	85e6                	mv	a1,s9
    800151b4:	8526                	mv	a0,s1
    800151b6:	527280ef          	jal	ra,8003dedc <js_binary_arith_slow>
    800151ba:	c119                	beqz	a0,800151c0 <JS_CallInternal+0x6252>
    800151bc:	e42fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17942
            BREAK;
    800151c0:	000d4b03          	lbu	s6,0(s10)
    800151c4:	0005a797          	auipc	a5,0x5a
    800151c8:	c6c78793          	addi	a5,a5,-916 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:17941
            sp--;
    800151cc:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:17942
            BREAK;
    800151ce:	003b1713          	slli	a4,s6,0x3
    800151d2:	97ba                	add	a5,a5,a4
    800151d4:	639c                	ld	a5,0(a5)
    800151d6:	0d05                	addi	s10,s10,1
    800151d8:	fcff906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17948
                op1 = sp[-1];
    800151dc:	ff0cb783          	ld	a5,-16(s9)
    800151e0:	eef43823          	sd	a5,-272(s0)
    800151e4:	ff8cb783          	ld	a5,-8(s9)
    800151e8:	eef43c23          	sd	a5,-264(s0)
quickjs-nuttx/quickjs.c:17949
                tag = JS_VALUE_GET_TAG(op1);
    800151ec:	ff8ca783          	lw	a5,-8(s9)
quickjs-nuttx/quickjs.c:17950
                if (tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag)) {
    800151f0:	cf81                	beqz	a5,80015208 <JS_CallInternal+0x629a>
quickjs-nuttx/quickjs.c:17950 (discriminator 1)
    800151f2:	471d                	li	a4,7
    800151f4:	00e78a63          	beq	a5,a4,80015208 <JS_CallInternal+0x629a>
quickjs-nuttx/quickjs.c:17952
                    if (js_unary_arith_slow(ctx, sp, opcode))
    800151f8:	865a                	mv	a2,s6
    800151fa:	85e6                	mv	a1,s9
    800151fc:	8526                	mv	a0,s1
    800151fe:	1c0100ef          	jal	ra,800253be <js_unary_arith_slow>
    80015202:	c119                	beqz	a0,80015208 <JS_CallInternal+0x629a>
    80015204:	dfafa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17956
            BREAK;
    80015208:	000d4b03          	lbu	s6,0(s10)
    8001520c:	0005a797          	auipc	a5,0x5a
    80015210:	c2478793          	addi	a5,a5,-988 # 8006ee30 <dispatch_table.4>
    80015214:	0d05                	addi	s10,s10,1
    80015216:	003b1713          	slli	a4,s6,0x3
    8001521a:	97ba                	add	a5,a5,a4
    8001521c:	639c                	ld	a5,0(a5)
    8001521e:	f89f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17963
                op1 = sp[-1];
    80015222:	ff0cb783          	ld	a5,-16(s9)
    80015226:	ecf43823          	sd	a5,-304(s0)
    8001522a:	ff8cb783          	ld	a5,-8(s9)
    8001522e:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:17964
                tag = JS_VALUE_GET_TAG(op1);
    80015232:	ff8ca783          	lw	a5,-8(s9)
quickjs-nuttx/quickjs.c:17965
                if (tag == JS_TAG_INT) {
    80015236:	eba9                	bnez	a5,80015288 <JS_CallInternal+0x631a>
quickjs-nuttx/quickjs.c:17966
                    val = JS_VALUE_GET_INT(op1);
    80015238:	ed042783          	lw	a5,-304(s0)
quickjs-nuttx/quickjs.c:17968
                    if (unlikely(val == 0)) {
    8001523c:	c3ad                	beqz	a5,8001529e <JS_CallInternal+0x6330>
quickjs-nuttx/quickjs.c:17972
                    if (unlikely(val == INT32_MIN)) {
    8001523e:	80000737          	lui	a4,0x80000
    80015242:	06e78163          	beq	a5,a4,800152a4 <JS_CallInternal+0x6336>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015246:	96043023          	sd	zero,-1696(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17976
                    sp[-1] = JS_NewInt32(ctx, -val);
    8001524a:	40f007bb          	negw	a5,a5
    8001524e:	96f42023          	sw	a5,-1696(s0)
    80015252:	96043783          	ld	a5,-1696(s0)
    80015256:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001525a:	96043423          	sd	zero,-1688(s0)
    8001525e:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17976
    80015262:	fefcb823          	sd	a5,-16(s9)
    80015266:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:17980
                    sp[-1] = __JS_NewFloat64(ctx, d);
    8001526a:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:17986
            BREAK;
    8001526e:	000d4b03          	lbu	s6,0(s10)
    80015272:	0005a797          	auipc	a5,0x5a
    80015276:	bbe78793          	addi	a5,a5,-1090 # 8006ee30 <dispatch_table.4>
    8001527a:	0d05                	addi	s10,s10,1
    8001527c:	003b1713          	slli	a4,s6,0x3
    80015280:	97ba                	add	a5,a5,a4
    80015282:	639c                	ld	a5,0(a5)
    80015284:	f23f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17977
                } else if (JS_TAG_IS_FLOAT64(tag)) {
    80015288:	471d                	li	a4,7
    8001528a:	02e79063          	bne	a5,a4,800152aa <JS_CallInternal+0x633c>
quickjs-nuttx/quickjs.c:17978
                    d = -JS_VALUE_GET_FLOAT64(op1);
    8001528e:	ed043787          	fld	fa5,-304(s0)
    80015292:	22f797d3          	fneg.d	fa5,fa5
quickjs-nuttx/quickjs.c:17980
                    sp[-1] = __JS_NewFloat64(ctx, d);
    80015296:	fefcb827          	fsd	fa5,-16(s9)
    8001529a:	479d                	li	a5,7
    8001529c:	b7f9                	j	8001526a <JS_CallInternal+0x62fc>
quickjs-nuttx/quickjs.c:17969
                        d = -0.0;
    8001529e:	228407d3          	fmv.d	fa5,fs0
    800152a2:	bfd5                	j	80015296 <JS_CallInternal+0x6328>
quickjs-nuttx/quickjs.c:17973
                        d = -(double)val;
    800152a4:	229487d3          	fmv.d	fa5,fs1
    800152a8:	b7fd                	j	80015296 <JS_CallInternal+0x6328>
quickjs-nuttx/quickjs.c:17982
                    if (js_unary_arith_slow(ctx, sp, opcode))
    800152aa:	865a                	mv	a2,s6
    800152ac:	85e6                	mv	a1,s9
    800152ae:	8526                	mv	a0,s1
    800152b0:	10e100ef          	jal	ra,800253be <js_unary_arith_slow>
    800152b4:	dd4d                	beqz	a0,8001526e <JS_CallInternal+0x6300>
    800152b6:	d48fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:17991
                op1 = sp[-1];
    800152ba:	ff0cb783          	ld	a5,-16(s9)
    800152be:	ecf43823          	sd	a5,-304(s0)
    800152c2:	ff8cb783          	ld	a5,-8(s9)
    800152c6:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:17992
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    800152ca:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:17991
                op1 = sp[-1];
    800152ce:	ff0ca783          	lw	a5,-16(s9)
quickjs-nuttx/quickjs.c:17992
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    800152d2:	e739                	bnez	a4,80015320 <JS_CallInternal+0x63b2>
quickjs-nuttx/quickjs.c:17994
                    if (unlikely(val == INT32_MAX))
    800152d4:	80000737          	lui	a4,0x80000
    800152d8:	fff74713          	not	a4,a4
    800152dc:	04e78263          	beq	a5,a4,80015320 <JS_CallInternal+0x63b2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800152e0:	96043823          	sd	zero,-1680(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17996
                    sp[-1] = JS_NewInt32(ctx, val + 1);
    800152e4:	2785                	addiw	a5,a5,1
    800152e6:	96f42823          	sw	a5,-1680(s0)
    800152ea:	97043783          	ld	a5,-1680(s0)
    800152ee:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800152f2:	96043c23          	sd	zero,-1672(s0)
    800152f6:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:17996
    800152fa:	fefcb823          	sd	a5,-16(s9)
    800152fe:	ef843783          	ld	a5,-264(s0)
    80015302:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18003
            BREAK;
    80015306:	000d4b03          	lbu	s6,0(s10)
    8001530a:	0005a797          	auipc	a5,0x5a
    8001530e:	b2678793          	addi	a5,a5,-1242 # 8006ee30 <dispatch_table.4>
    80015312:	0d05                	addi	s10,s10,1
    80015314:	003b1713          	slli	a4,s6,0x3
    80015318:	97ba                	add	a5,a5,a4
    8001531a:	639c                	ld	a5,0(a5)
    8001531c:	e8bf906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:17999
                    if (js_unary_arith_slow(ctx, sp, opcode))
    80015320:	865a                	mv	a2,s6
    80015322:	85e6                	mv	a1,s9
    80015324:	8526                	mv	a0,s1
    80015326:	098100ef          	jal	ra,800253be <js_unary_arith_slow>
    8001532a:	dd71                	beqz	a0,80015306 <JS_CallInternal+0x6398>
    8001532c:	cd2fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18008
                op1 = sp[-1];
    80015330:	ff0cb783          	ld	a5,-16(s9)
    80015334:	ecf43823          	sd	a5,-304(s0)
    80015338:	ff8cb783          	ld	a5,-8(s9)
    8001533c:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18009
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    80015340:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:18008
                op1 = sp[-1];
    80015344:	ff0ca783          	lw	a5,-16(s9)
quickjs-nuttx/quickjs.c:18009
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    80015348:	e729                	bnez	a4,80015392 <JS_CallInternal+0x6424>
quickjs-nuttx/quickjs.c:18011
                    if (unlikely(val == INT32_MIN))
    8001534a:	80000737          	lui	a4,0x80000
    8001534e:	04e78263          	beq	a5,a4,80015392 <JS_CallInternal+0x6424>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015352:	98043023          	sd	zero,-1664(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18013
                    sp[-1] = JS_NewInt32(ctx, val - 1);
    80015356:	37fd                	addiw	a5,a5,-1
    80015358:	98f42023          	sw	a5,-1664(s0)
    8001535c:	98043783          	ld	a5,-1664(s0)
    80015360:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015364:	98043423          	sd	zero,-1656(s0)
    80015368:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18013
    8001536c:	fefcb823          	sd	a5,-16(s9)
    80015370:	ef843783          	ld	a5,-264(s0)
    80015374:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18020
            BREAK;
    80015378:	000d4b03          	lbu	s6,0(s10)
    8001537c:	0005a797          	auipc	a5,0x5a
    80015380:	ab478793          	addi	a5,a5,-1356 # 8006ee30 <dispatch_table.4>
    80015384:	0d05                	addi	s10,s10,1
    80015386:	003b1713          	slli	a4,s6,0x3
    8001538a:	97ba                	add	a5,a5,a4
    8001538c:	639c                	ld	a5,0(a5)
    8001538e:	e19f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18016
                    if (js_unary_arith_slow(ctx, sp, opcode))
    80015392:	865a                	mv	a2,s6
    80015394:	85e6                	mv	a1,s9
    80015396:	8526                	mv	a0,s1
    80015398:	026100ef          	jal	ra,800253be <js_unary_arith_slow>
    8001539c:	dd71                	beqz	a0,80015378 <JS_CallInternal+0x640a>
    8001539e:	c60fa06f          	j	8000f7fe <JS_CallInternal+0x890>
js_post_inc_slow():
quickjs-nuttx/quickjs.c:13005
    op1 = sp[-1];
    800153a2:	ff0cb583          	ld	a1,-16(s9)
quickjs-nuttx/quickjs.c:13006
    op1 = JS_ToNumericFree(ctx, op1);
    800153a6:	8526                	mv	a0,s1
JS_CallInternal():
quickjs-nuttx/quickjs.c:18023
            if (js_post_inc_slow(ctx, sp, opcode))
    800153a8:	2b01                	sext.w	s6,s6
js_post_inc_slow():
quickjs-nuttx/quickjs.c:13005
    op1 = sp[-1];
    800153aa:	eeb43823          	sd	a1,-272(s0)
    800153ae:	ff8cb603          	ld	a2,-8(s9)
    800153b2:	eec43c23          	sd	a2,-264(s0)
quickjs-nuttx/quickjs.c:13006
    op1 = JS_ToNumericFree(ctx, op1);
    800153b6:	33f0f0ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    800153ba:	eeb43c23          	sd	a1,-264(s0)
    800153be:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:13007
    if (JS_IsException(op1)) {
    800153c2:	2581                	sext.w	a1,a1
    800153c4:	4799                	li	a5,6
    800153c6:	00f59963          	bne	a1,a5,800153d8 <JS_CallInternal+0x646a>
quickjs-nuttx/quickjs.c:13008
        sp[-1] = JS_UNDEFINED;
    800153ca:	478d                	li	a5,3
    800153cc:	fe0cb823          	sd	zero,-16(s9)
    800153d0:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:13009
        return -1;
    800153d4:	c2afa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:13011
    sp[-1] = op1;
    800153d8:	feacb823          	sd	a0,-16(s9)
    800153dc:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:13013
    return js_unary_arith_slow(ctx, sp + 1, op - OP_post_dec + OP_dec);
    800153e0:	010c8a13          	addi	s4,s9,16
quickjs-nuttx/quickjs.c:13011
    sp[-1] = op1;
    800153e4:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:13012
    sp[0] = JS_DupValue(ctx, op1);
    800153e8:	ef043503          	ld	a0,-272(s0)
    800153ec:	ef843583          	ld	a1,-264(s0)
    800153f0:	82af50ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800153f4:	00acb023          	sd	a0,0(s9)
    800153f8:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:13013
    return js_unary_arith_slow(ctx, sp + 1, op - OP_post_dec + OP_dec);
    800153fc:	ffeb061b          	addiw	a2,s6,-2
    80015400:	85d2                	mv	a1,s4
    80015402:	8526                	mv	a0,s1
    80015404:	7bb0f0ef          	jal	ra,800253be <js_unary_arith_slow>
JS_CallInternal():
quickjs-nuttx/quickjs.c:18023
            if (js_post_inc_slow(ctx, sp, opcode))
    80015408:	c119                	beqz	a0,8001540e <JS_CallInternal+0x64a0>
    8001540a:	bf4fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18026
            BREAK;
    8001540e:	000d4b03          	lbu	s6,0(s10)
    80015412:	0005a797          	auipc	a5,0x5a
    80015416:	a1e78793          	addi	a5,a5,-1506 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18025
            sp++;
    8001541a:	8cd2                	mv	s9,s4
quickjs-nuttx/quickjs.c:18026
            BREAK;
    8001541c:	003b1713          	slli	a4,s6,0x3
    80015420:	97ba                	add	a5,a5,a4
    80015422:	639c                	ld	a5,0(a5)
    80015424:	0d05                	addi	s10,s10,1
    80015426:	d81f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18035
                op1 = var_buf[idx];
    8001542a:	77fd                	lui	a5,0xfffff
    8001542c:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    80015430:	000d4583          	lbu	a1,0(s10)
    80015434:	97a2                	add	a5,a5,s0
    80015436:	639c                	ld	a5,0(a5)
    80015438:	0592                	slli	a1,a1,0x4
quickjs-nuttx/quickjs.c:18033
                pc += 1;
    8001543a:	001d0a13          	addi	s4,s10,1
quickjs-nuttx/quickjs.c:18035
                op1 = var_buf[idx];
    8001543e:	00b789b3          	add	s3,a5,a1
    80015442:	0009b783          	ld	a5,0(s3)
    80015446:	ecf43823          	sd	a5,-304(s0)
    8001544a:	0089b783          	ld	a5,8(s3)
    8001544e:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18036
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    80015452:	2781                	sext.w	a5,a5
    80015454:	eba9                	bnez	a5,800154a6 <JS_CallInternal+0x6538>
quickjs-nuttx/quickjs.c:18037
                    val = JS_VALUE_GET_INT(op1);
    80015456:	ed042783          	lw	a5,-304(s0)
quickjs-nuttx/quickjs.c:18038
                    if (unlikely(val == INT32_MAX))
    8001545a:	80000737          	lui	a4,0x80000
    8001545e:	fff74713          	not	a4,a4
    80015462:	04e78263          	beq	a5,a4,800154a6 <JS_CallInternal+0x6538>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015466:	98043823          	sd	zero,-1648(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18040
                    var_buf[idx] = JS_NewInt32(ctx, val + 1);
    8001546a:	2785                	addiw	a5,a5,1
    8001546c:	98f42823          	sw	a5,-1648(s0)
    80015470:	99043783          	ld	a5,-1648(s0)
    80015474:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015478:	98043c23          	sd	zero,-1640(s0)
    8001547c:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18040
    80015480:	00f9b023          	sd	a5,0(s3)
    80015484:	ef843783          	ld	a5,-264(s0)
    80015488:	00f9b423          	sd	a5,8(s3)
quickjs-nuttx/quickjs.c:18051
            BREAK;
    8001548c:	001d4b03          	lbu	s6,1(s10)
    80015490:	0005a797          	auipc	a5,0x5a
    80015494:	9a078793          	addi	a5,a5,-1632 # 8006ee30 <dispatch_table.4>
    80015498:	0d09                	addi	s10,s10,2
    8001549a:	003b1713          	slli	a4,s6,0x3
    8001549e:	97ba                	add	a5,a5,a4
    800154a0:	639c                	ld	a5,0(a5)
    800154a2:	d05f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18045
                    op1 = JS_DupValue(ctx, op1);
    800154a6:	ed043503          	ld	a0,-304(s0)
    800154aa:	ed843583          	ld	a1,-296(s0)
    800154ae:	f6df40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800154b2:	eca43823          	sd	a0,-304(s0)
    800154b6:	ecb43c23          	sd	a1,-296(s0)
quickjs-nuttx/quickjs.c:18046
                    if (js_unary_arith_slow(ctx, &op1 + 1, OP_inc))
    800154ba:	09000613          	li	a2,144
    800154be:	ee040593          	addi	a1,s0,-288
    800154c2:	8526                	mv	a0,s1
    800154c4:	6fb0f0ef          	jal	ra,800253be <js_unary_arith_slow>
    800154c8:	c501                	beqz	a0,800154d0 <JS_CallInternal+0x6562>
quickjs-nuttx/quickjs.c:18033
                pc += 1;
    800154ca:	8d52                	mv	s10,s4
    800154cc:	b32fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18048
                    set_value(ctx, &var_buf[idx], op1);
    800154d0:	ed043603          	ld	a2,-304(s0)
    800154d4:	ed843683          	ld	a3,-296(s0)
    800154d8:	85ce                	mv	a1,s3
    800154da:	8526                	mv	a0,s1
    800154dc:	f62f60ef          	jal	ra,8000bc3e <set_value>
    800154e0:	b775                	j	8001548c <JS_CallInternal+0x651e>
quickjs-nuttx/quickjs.c:18060
                op1 = var_buf[idx];
    800154e2:	77fd                	lui	a5,0xfffff
    800154e4:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    800154e8:	000d4583          	lbu	a1,0(s10)
    800154ec:	97a2                	add	a5,a5,s0
    800154ee:	639c                	ld	a5,0(a5)
    800154f0:	0592                	slli	a1,a1,0x4
quickjs-nuttx/quickjs.c:18058
                pc += 1;
    800154f2:	001d0a13          	addi	s4,s10,1
quickjs-nuttx/quickjs.c:18060
                op1 = var_buf[idx];
    800154f6:	00b789b3          	add	s3,a5,a1
    800154fa:	0009b783          	ld	a5,0(s3)
    800154fe:	ecf43823          	sd	a5,-304(s0)
    80015502:	0089b783          	ld	a5,8(s3)
    80015506:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18061
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    8001550a:	2781                	sext.w	a5,a5
    8001550c:	e7b9                	bnez	a5,8001555a <JS_CallInternal+0x65ec>
quickjs-nuttx/quickjs.c:18062
                    val = JS_VALUE_GET_INT(op1);
    8001550e:	ed042783          	lw	a5,-304(s0)
quickjs-nuttx/quickjs.c:18063
                    if (unlikely(val == INT32_MIN))
    80015512:	80000737          	lui	a4,0x80000
    80015516:	04e78263          	beq	a5,a4,8001555a <JS_CallInternal+0x65ec>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001551a:	9a043023          	sd	zero,-1632(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18065
                    var_buf[idx] = JS_NewInt32(ctx, val - 1);
    8001551e:	37fd                	addiw	a5,a5,-1
    80015520:	9af42023          	sw	a5,-1632(s0)
    80015524:	9a043783          	ld	a5,-1632(s0)
    80015528:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001552c:	9a043423          	sd	zero,-1624(s0)
    80015530:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18065
    80015534:	00f9b023          	sd	a5,0(s3)
    80015538:	ef843783          	ld	a5,-264(s0)
    8001553c:	00f9b423          	sd	a5,8(s3)
quickjs-nuttx/quickjs.c:18076
            BREAK;
    80015540:	001d4b03          	lbu	s6,1(s10)
    80015544:	0005a797          	auipc	a5,0x5a
    80015548:	8ec78793          	addi	a5,a5,-1812 # 8006ee30 <dispatch_table.4>
    8001554c:	0d09                	addi	s10,s10,2
    8001554e:	003b1713          	slli	a4,s6,0x3
    80015552:	97ba                	add	a5,a5,a4
    80015554:	639c                	ld	a5,0(a5)
    80015556:	c51f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18070
                    op1 = JS_DupValue(ctx, op1);
    8001555a:	ed043503          	ld	a0,-304(s0)
    8001555e:	ed843583          	ld	a1,-296(s0)
    80015562:	eb9f40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80015566:	eca43823          	sd	a0,-304(s0)
    8001556a:	ecb43c23          	sd	a1,-296(s0)
quickjs-nuttx/quickjs.c:18071
                    if (js_unary_arith_slow(ctx, &op1 + 1, OP_dec))
    8001556e:	08f00613          	li	a2,143
    80015572:	ee040593          	addi	a1,s0,-288
    80015576:	8526                	mv	a0,s1
    80015578:	6470f0ef          	jal	ra,800253be <js_unary_arith_slow>
    8001557c:	c501                	beqz	a0,80015584 <JS_CallInternal+0x6616>
quickjs-nuttx/quickjs.c:18058
                pc += 1;
    8001557e:	8d52                	mv	s10,s4
    80015580:	a7efa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18073
                    set_value(ctx, &var_buf[idx], op1);
    80015584:	ed043603          	ld	a2,-304(s0)
    80015588:	ed843683          	ld	a3,-296(s0)
    8001558c:	85ce                	mv	a1,s3
    8001558e:	8526                	mv	a0,s1
    80015590:	eaef60ef          	jal	ra,8000bc3e <set_value>
    80015594:	b775                	j	80015540 <JS_CallInternal+0x65d2>
quickjs-nuttx/quickjs.c:18080
                op1 = sp[-1];
    80015596:	ff0cb783          	ld	a5,-16(s9)
    8001559a:	ecf43823          	sd	a5,-304(s0)
    8001559e:	ff8cb783          	ld	a5,-8(s9)
    800155a2:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18081
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    800155a6:	ff8ca703          	lw	a4,-8(s9)
quickjs-nuttx/quickjs.c:18080
                op1 = sp[-1];
    800155aa:	ff0ca783          	lw	a5,-16(s9)
quickjs-nuttx/quickjs.c:18081
                if (JS_VALUE_GET_TAG(op1) == JS_TAG_INT) {
    800155ae:	e331                	bnez	a4,800155f2 <JS_CallInternal+0x6684>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800155b0:	9a043823          	sd	zero,-1616(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18082
                    sp[-1] = JS_NewInt32(ctx, ~JS_VALUE_GET_INT(op1));
    800155b4:	fff7c793          	not	a5,a5
    800155b8:	9af42823          	sw	a5,-1616(s0)
    800155bc:	9b043783          	ld	a5,-1616(s0)
    800155c0:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800155c4:	9a043c23          	sd	zero,-1608(s0)
    800155c8:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18082
    800155cc:	fefcb823          	sd	a5,-16(s9)
    800155d0:	ef843783          	ld	a5,-264(s0)
    800155d4:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:18088
            BREAK;
    800155d8:	000d4b03          	lbu	s6,0(s10)
    800155dc:	0005a797          	auipc	a5,0x5a
    800155e0:	85478793          	addi	a5,a5,-1964 # 8006ee30 <dispatch_table.4>
    800155e4:	0d05                	addi	s10,s10,1
    800155e6:	003b1713          	slli	a4,s6,0x3
    800155ea:	97ba                	add	a5,a5,a4
    800155ec:	639c                	ld	a5,0(a5)
    800155ee:	bb9f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18084
                    if (js_not_slow(ctx, sp))
    800155f2:	85e6                	mv	a1,s9
    800155f4:	8526                	mv	a0,s1
    800155f6:	7630f0ef          	jal	ra,80025558 <js_not_slow>
    800155fa:	dd79                	beqz	a0,800155d8 <JS_CallInternal+0x666a>
    800155fc:	a02fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18093
                op1 = sp[-2];
    80015600:	fe0cb783          	ld	a5,-32(s9)
    80015604:	e8f43823          	sd	a5,-368(s0)
    80015608:	fe8cb783          	ld	a5,-24(s9)
    8001560c:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:18094
                op2 = sp[-1];
    80015610:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:18093
                op1 = sp[-2];
    80015614:	fe8cb603          	ld	a2,-24(s9)
    80015618:	fe0ca703          	lw	a4,-32(s9)
quickjs-nuttx/quickjs.c:18094
                op2 = sp[-1];
    8001561c:	ecf43823          	sd	a5,-304(s0)
    80015620:	ff8cb783          	ld	a5,-8(s9)
    80015624:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18095
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80015628:	ff8cb683          	ld	a3,-8(s9)
quickjs-nuttx/quickjs.c:18094
                op2 = sp[-1];
    8001562c:	ff0ca783          	lw	a5,-16(s9)
quickjs-nuttx/quickjs.c:18095
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80015630:	8ed1                	or	a3,a3,a2
    80015632:	2681                	sext.w	a3,a3
    80015634:	eabd                	bnez	a3,800156aa <JS_CallInternal+0x673c>
quickjs-nuttx/quickjs.c:18102
                        if (unlikely(sf->js_mode & JS_MODE_MATH)) {
    80015636:	76fd                	lui	a3,0xfffff
    80015638:	66068693          	addi	a3,a3,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8001563c:	96a2                	add	a3,a3,s0
    8001563e:	6294                	ld	a3,0(a3)
quickjs-nuttx/quickjs.c:18097
                    v1 = JS_VALUE_GET_INT(op1);
    80015640:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:18098
                    v2 = JS_VALUE_GET_INT(op2);
    80015642:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:18102
                        if (unlikely(sf->js_mode & JS_MODE_MATH)) {
    80015644:	42f4                	lw	a3,68(a3)
    80015646:	8a91                	andi	a3,a3,4
    80015648:	ceb9                	beqz	a3,800156a6 <JS_CallInternal+0x6738>
quickjs-nuttx/quickjs.c:18103
                            if (v2 > 0x1f)
    8001564a:	46fd                	li	a3,31
    8001564c:	04f6ef63          	bltu	a3,a5,800156aa <JS_CallInternal+0x673c>
quickjs-nuttx/quickjs.c:18105
                            r = (int64_t)v1 << v2;
    80015650:	02071693          	slli	a3,a4,0x20
    80015654:	9281                	srli	a3,a3,0x20
    80015656:	00f696b3          	sll	a3,a3,a5
quickjs-nuttx/quickjs.c:18106
                            if ((int)r != r)
    8001565a:	0006861b          	sext.w	a2,a3
    8001565e:	04d61663          	bne	a2,a3,800156aa <JS_CallInternal+0x673c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015662:	9c043023          	sd	zero,-1600(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18115
                    sp[-2] = JS_NewInt32(ctx, v1 << v2);
    80015666:	00f717bb          	sllw	a5,a4,a5
    8001566a:	9cf42023          	sw	a5,-1600(s0)
    8001566e:	9c043783          	ld	a5,-1600(s0)
    80015672:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015676:	9c043423          	sd	zero,-1592(s0)
    8001567a:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18115
    8001567e:	fefcb023          	sd	a5,-32(s9)
    80015682:	ef843783          	ld	a5,-264(s0)
    80015686:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18126
            BREAK;
    8001568a:	000d4b03          	lbu	s6,0(s10)
    8001568e:	00059797          	auipc	a5,0x59
    80015692:	7a278793          	addi	a5,a5,1954 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18123
                    sp--;
    80015696:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:18126
            BREAK;
    80015698:	003b1713          	slli	a4,s6,0x3
    8001569c:	97ba                	add	a5,a5,a4
    8001569e:	639c                	ld	a5,0(a5)
    800156a0:	0d05                	addi	s10,s10,1
    800156a2:	b05f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18109
                            v2 &= 0x1f;
    800156a6:	8bfd                	andi	a5,a5,31
    800156a8:	bf6d                	j	80015662 <JS_CallInternal+0x66f4>
quickjs-nuttx/quickjs.c:18121
                    if (js_binary_logic_slow(ctx, sp, opcode))
    800156aa:	865a                	mv	a2,s6
    800156ac:	85e6                	mv	a1,s9
    800156ae:	8526                	mv	a0,s1
    800156b0:	658280ef          	jal	ra,8003dd08 <js_binary_logic_slow>
    800156b4:	d979                	beqz	a0,8001568a <JS_CallInternal+0x671c>
    800156b6:	948fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18130
                op1 = sp[-2];
    800156ba:	fe0cb783          	ld	a5,-32(s9)
    800156be:	e8f43823          	sd	a5,-368(s0)
    800156c2:	fe8cb783          	ld	a5,-24(s9)
    800156c6:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:18131
                op2 = sp[-1];
    800156ca:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:18130
                op1 = sp[-2];
    800156ce:	fe8cb603          	ld	a2,-24(s9)
    800156d2:	fe0ca703          	lw	a4,-32(s9)
quickjs-nuttx/quickjs.c:18131
                op2 = sp[-1];
    800156d6:	ecf43823          	sd	a5,-304(s0)
    800156da:	ff8cb783          	ld	a5,-8(s9)
    800156de:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18132
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    800156e2:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:18131
                op2 = sp[-1];
    800156e6:	ff0ca683          	lw	a3,-16(s9)
quickjs-nuttx/quickjs.c:18132
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    800156ea:	8fd1                	or	a5,a5,a2
    800156ec:	2781                	sext.w	a5,a5
    800156ee:	e7bd                	bnez	a5,8001575c <JS_CallInternal+0x67ee>
quickjs-nuttx/quickjs.c:18137
                    sp[-2] = JS_NewUint32(ctx,
    800156f0:	00d757bb          	srlw	a5,a4,a3
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    800156f4:	0407cb63          	bltz	a5,8001574a <JS_CallInternal+0x67dc>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800156f8:	9c042a23          	sw	zero,-1580(s0)
    800156fc:	9cf42823          	sw	a5,-1584(s0)
    80015700:	9d043703          	ld	a4,-1584(s0)
    80015704:	9c043c23          	sd	zero,-1576(s0)
    80015708:	eee43823          	sd	a4,-272(s0)
    8001570c:	4701                	li	a4,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    8001570e:	eef42823          	sw	a5,-272(s0)
    80015712:	ef043783          	ld	a5,-272(s0)
    80015716:	ef043787          	fld	fa5,-272(s0)
    8001571a:	eee43c23          	sd	a4,-264(s0)
    8001571e:	9ef43023          	sd	a5,-1568(s0)
    80015722:	9ee43423          	sd	a4,-1560(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18137
    80015726:	fefcb027          	fsd	fa5,-32(s9)
    8001572a:	feecb423          	sd	a4,-24(s9)
quickjs-nuttx/quickjs.c:18147
            BREAK;
    8001572e:	000d4b03          	lbu	s6,0(s10)
    80015732:	00059797          	auipc	a5,0x59
    80015736:	6fe78793          	addi	a5,a5,1790 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18144
                    sp--;
    8001573a:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:18147
            BREAK;
    8001573c:	003b1713          	slli	a4,s6,0x3
    80015740:	97ba                	add	a5,a5,a4
    80015742:	639c                	ld	a5,0(a5)
    80015744:	0d05                	addi	s10,s10,1
    80015746:	a61f906f          	j	8000f1a6 <JS_CallInternal+0x238>
JS_NewUint32():
quickjs-nuttx/quickjs.h:540
        v = __JS_NewFloat64(ctx, val);
    8001574a:	d21787d3          	fcvt.d.wu	fa5,a5
    8001574e:	471d                	li	a4,7
    80015750:	e20787d3          	fmv.x.d	a5,fa5
JS_CallInternal():
quickjs-nuttx/quickjs.h:230
    return v;
    80015754:	eef43827          	fsd	fa5,-272(s0)
    80015758:	2781                	sext.w	a5,a5
    8001575a:	bf55                	j	8001570e <JS_CallInternal+0x67a0>
quickjs-nuttx/quickjs.c:18142
                    if (js_shr_slow(ctx, sp))
    8001575c:	85e6                	mv	a1,s9
    8001575e:	8526                	mv	a0,s1
    80015760:	6cd0f0ef          	jal	ra,8002562c <js_shr_slow>
    80015764:	d569                	beqz	a0,8001572e <JS_CallInternal+0x67c0>
    80015766:	898fa06f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18151
                op1 = sp[-2];
    8001576a:	fe0cb783          	ld	a5,-32(s9)
    8001576e:	e8f43823          	sd	a5,-368(s0)
    80015772:	fe8cb783          	ld	a5,-24(s9)
    80015776:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:18152
                op2 = sp[-1];
    8001577a:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:18151
                op1 = sp[-2];
    8001577e:	fe8cb603          	ld	a2,-24(s9)
    80015782:	fe0ca683          	lw	a3,-32(s9)
quickjs-nuttx/quickjs.c:18152
                op2 = sp[-1];
    80015786:	ecf43823          	sd	a5,-304(s0)
    8001578a:	ff8cb783          	ld	a5,-8(s9)
    8001578e:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18153
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80015792:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:18152
                op2 = sp[-1];
    80015796:	ff0ca703          	lw	a4,-16(s9)
quickjs-nuttx/quickjs.c:18153
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    8001579a:	8fd1                	or	a5,a5,a2
    8001579c:	2781                	sext.w	a5,a5
    8001579e:	e3ad                	bnez	a5,80015800 <JS_CallInternal+0x6892>
quickjs-nuttx/quickjs.c:18157
                    if (unlikely(v2 > 0x1f)) {
    800157a0:	467d                	li	a2,31
quickjs-nuttx/quickjs.c:18155
                    v2 = JS_VALUE_GET_INT(op2);
    800157a2:	0007079b          	sext.w	a5,a4
quickjs-nuttx/quickjs.c:18157
                    if (unlikely(v2 > 0x1f)) {
    800157a6:	00e67b63          	bgeu	a2,a4,800157bc <JS_CallInternal+0x684e>
quickjs-nuttx/quickjs.c:18158
                        if (unlikely(sf->js_mode & JS_MODE_MATH))
    800157aa:	777d                	lui	a4,0xfffff
    800157ac:	66070713          	addi	a4,a4,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    800157b0:	9722                	add	a4,a4,s0
    800157b2:	6318                	ld	a4,0(a4)
    800157b4:	4378                	lw	a4,68(a4)
    800157b6:	8b11                	andi	a4,a4,4
    800157b8:	e721                	bnez	a4,80015800 <JS_CallInternal+0x6892>
quickjs-nuttx/quickjs.c:18161
                            v2 &= 0x1f;
    800157ba:	8bfd                	andi	a5,a5,31
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800157bc:	9e043823          	sd	zero,-1552(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18166
                    sp[-2] = JS_NewInt32(ctx,
    800157c0:	40f6d7bb          	sraw	a5,a3,a5
    800157c4:	9ef42823          	sw	a5,-1552(s0)
    800157c8:	9f043783          	ld	a5,-1552(s0)
    800157cc:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800157d0:	9e043c23          	sd	zero,-1544(s0)
    800157d4:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18166
    800157d8:	fefcb023          	sd	a5,-32(s9)
    800157dc:	ef843783          	ld	a5,-264(s0)
    800157e0:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18178
            BREAK;
    800157e4:	000d4b03          	lbu	s6,0(s10)
    800157e8:	00059797          	auipc	a5,0x59
    800157ec:	64878793          	addi	a5,a5,1608 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18175
                    sp--;
    800157f0:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:18178
            BREAK;
    800157f2:	003b1713          	slli	a4,s6,0x3
    800157f6:	97ba                	add	a5,a5,a4
    800157f8:	639c                	ld	a5,0(a5)
    800157fa:	0d05                	addi	s10,s10,1
    800157fc:	9abf906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18173
                    if (js_binary_logic_slow(ctx, sp, opcode))
    80015800:	865a                	mv	a2,s6
    80015802:	85e6                	mv	a1,s9
    80015804:	8526                	mv	a0,s1
    80015806:	502280ef          	jal	ra,8003dd08 <js_binary_logic_slow>
    8001580a:	dd69                	beqz	a0,800157e4 <JS_CallInternal+0x6876>
    8001580c:	ff3f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18182
                op1 = sp[-2];
    80015810:	fe0cb783          	ld	a5,-32(s9)
    80015814:	e8f43823          	sd	a5,-368(s0)
    80015818:	fe8cb783          	ld	a5,-24(s9)
    8001581c:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:18183
                op2 = sp[-1];
    80015820:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:18182
                op1 = sp[-2];
    80015824:	fe8cb603          	ld	a2,-24(s9)
    80015828:	fe0ca703          	lw	a4,-32(s9)
quickjs-nuttx/quickjs.c:18183
                op2 = sp[-1];
    8001582c:	ecf43823          	sd	a5,-304(s0)
    80015830:	ff8cb783          	ld	a5,-8(s9)
    80015834:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18184
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80015838:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:18183
                op2 = sp[-1];
    8001583c:	ff0ca683          	lw	a3,-16(s9)
quickjs-nuttx/quickjs.c:18184
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80015840:	8fd1                	or	a5,a5,a2
    80015842:	2781                	sext.w	a5,a5
    80015844:	e3b9                	bnez	a5,8001588a <JS_CallInternal+0x691c>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80015846:	a0043023          	sd	zero,-1536(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18185
                    sp[-2] = JS_NewInt32(ctx,
    8001584a:	00d777b3          	and	a5,a4,a3
    8001584e:	a0f42023          	sw	a5,-1536(s0)
    80015852:	a0043783          	ld	a5,-1536(s0)
    80015856:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001585a:	a0043423          	sd	zero,-1528(s0)
    8001585e:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18185
    80015862:	fefcb023          	sd	a5,-32(s9)
    80015866:	ef843783          	ld	a5,-264(s0)
    8001586a:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18195
            BREAK;
    8001586e:	000d4b03          	lbu	s6,0(s10)
    80015872:	00059797          	auipc	a5,0x59
    80015876:	5be78793          	addi	a5,a5,1470 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18192
                    sp--;
    8001587a:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:18195
            BREAK;
    8001587c:	003b1713          	slli	a4,s6,0x3
    80015880:	97ba                	add	a5,a5,a4
    80015882:	639c                	ld	a5,0(a5)
    80015884:	0d05                	addi	s10,s10,1
    80015886:	921f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18190
                    if (js_binary_logic_slow(ctx, sp, opcode))
    8001588a:	865a                	mv	a2,s6
    8001588c:	85e6                	mv	a1,s9
    8001588e:	8526                	mv	a0,s1
    80015890:	478280ef          	jal	ra,8003dd08 <js_binary_logic_slow>
    80015894:	dd69                	beqz	a0,8001586e <JS_CallInternal+0x6900>
    80015896:	f69f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18199
                op1 = sp[-2];
    8001589a:	fe0cb783          	ld	a5,-32(s9)
    8001589e:	e8f43823          	sd	a5,-368(s0)
    800158a2:	fe8cb783          	ld	a5,-24(s9)
    800158a6:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:18200
                op2 = sp[-1];
    800158aa:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:18199
                op1 = sp[-2];
    800158ae:	fe8cb603          	ld	a2,-24(s9)
    800158b2:	fe0ca683          	lw	a3,-32(s9)
quickjs-nuttx/quickjs.c:18200
                op2 = sp[-1];
    800158b6:	ecf43823          	sd	a5,-304(s0)
    800158ba:	ff8cb783          	ld	a5,-8(s9)
    800158be:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18201
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    800158c2:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:18200
                op2 = sp[-1];
    800158c6:	ff0ca703          	lw	a4,-16(s9)
quickjs-nuttx/quickjs.c:18201
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    800158ca:	8fd1                	or	a5,a5,a2
    800158cc:	2781                	sext.w	a5,a5
    800158ce:	e3b9                	bnez	a5,80015914 <JS_CallInternal+0x69a6>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800158d0:	a0043823          	sd	zero,-1520(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18202
                    sp[-2] = JS_NewInt32(ctx,
    800158d4:	00d767b3          	or	a5,a4,a3
    800158d8:	a0f42823          	sw	a5,-1520(s0)
    800158dc:	a1043783          	ld	a5,-1520(s0)
    800158e0:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800158e4:	a0043c23          	sd	zero,-1512(s0)
    800158e8:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18202
    800158ec:	fefcb023          	sd	a5,-32(s9)
    800158f0:	ef843783          	ld	a5,-264(s0)
    800158f4:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18212
            BREAK;
    800158f8:	000d4b03          	lbu	s6,0(s10)
    800158fc:	00059797          	auipc	a5,0x59
    80015900:	53478793          	addi	a5,a5,1332 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18209
                    sp--;
    80015904:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:18212
            BREAK;
    80015906:	003b1713          	slli	a4,s6,0x3
    8001590a:	97ba                	add	a5,a5,a4
    8001590c:	639c                	ld	a5,0(a5)
    8001590e:	0d05                	addi	s10,s10,1
    80015910:	897f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18207
                    if (js_binary_logic_slow(ctx, sp, opcode))
    80015914:	865a                	mv	a2,s6
    80015916:	85e6                	mv	a1,s9
    80015918:	8526                	mv	a0,s1
    8001591a:	3ee280ef          	jal	ra,8003dd08 <js_binary_logic_slow>
    8001591e:	dd69                	beqz	a0,800158f8 <JS_CallInternal+0x698a>
    80015920:	edff906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18216
                op1 = sp[-2];
    80015924:	fe0cb783          	ld	a5,-32(s9)
    80015928:	e8f43823          	sd	a5,-368(s0)
    8001592c:	fe8cb783          	ld	a5,-24(s9)
    80015930:	e8f43c23          	sd	a5,-360(s0)
quickjs-nuttx/quickjs.c:18217
                op2 = sp[-1];
    80015934:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:18216
                op1 = sp[-2];
    80015938:	fe8cb603          	ld	a2,-24(s9)
    8001593c:	fe0ca683          	lw	a3,-32(s9)
quickjs-nuttx/quickjs.c:18217
                op2 = sp[-1];
    80015940:	ecf43823          	sd	a5,-304(s0)
    80015944:	ff8cb783          	ld	a5,-8(s9)
    80015948:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:18218
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    8001594c:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:18217
                op2 = sp[-1];
    80015950:	ff0ca703          	lw	a4,-16(s9)
quickjs-nuttx/quickjs.c:18218
                if (likely(JS_VALUE_IS_BOTH_INT(op1, op2))) {
    80015954:	8fd1                	or	a5,a5,a2
    80015956:	2781                	sext.w	a5,a5
    80015958:	e3b9                	bnez	a5,8001599e <JS_CallInternal+0x6a30>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001595a:	a2043023          	sd	zero,-1504(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18219
                    sp[-2] = JS_NewInt32(ctx,
    8001595e:	00d747b3          	xor	a5,a4,a3
    80015962:	a2f42023          	sw	a5,-1504(s0)
    80015966:	a2043783          	ld	a5,-1504(s0)
    8001596a:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8001596e:	a2043423          	sd	zero,-1496(s0)
    80015972:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18219
    80015976:	fefcb023          	sd	a5,-32(s9)
    8001597a:	ef843783          	ld	a5,-264(s0)
    8001597e:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18229
            BREAK;
    80015982:	000d4b03          	lbu	s6,0(s10)
    80015986:	00059797          	auipc	a5,0x59
    8001598a:	4aa78793          	addi	a5,a5,1194 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18226
                    sp--;
    8001598e:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:18229
            BREAK;
    80015990:	003b1713          	slli	a4,s6,0x3
    80015994:	97ba                	add	a5,a5,a4
    80015996:	639c                	ld	a5,0(a5)
    80015998:	0d05                	addi	s10,s10,1
    8001599a:	80df906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18224
                    if (js_binary_logic_slow(ctx, sp, opcode))
    8001599e:	865a                	mv	a2,s6
    800159a0:	85e6                	mv	a1,s9
    800159a2:	8526                	mv	a0,s1
    800159a4:	364280ef          	jal	ra,8003dd08 <js_binary_logic_slow>
    800159a8:	dd69                	beqz	a0,80015982 <JS_CallInternal+0x6a14>
    800159aa:	e55f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18249
            OP_CMP(OP_lt, <, js_relational_slow(ctx, sp, opcode));
    800159ae:	fe0cb783          	ld	a5,-32(s9)
    800159b2:	e8f43823          	sd	a5,-368(s0)
    800159b6:	fe8cb783          	ld	a5,-24(s9)
    800159ba:	e8f43c23          	sd	a5,-360(s0)
    800159be:	ff0cb783          	ld	a5,-16(s9)
    800159c2:	fe8cb603          	ld	a2,-24(s9)
    800159c6:	fe0ca683          	lw	a3,-32(s9)
    800159ca:	ecf43823          	sd	a5,-304(s0)
    800159ce:	ff8cb783          	ld	a5,-8(s9)
    800159d2:	ecf43c23          	sd	a5,-296(s0)
    800159d6:	ff8cb783          	ld	a5,-8(s9)
    800159da:	ff0ca703          	lw	a4,-16(s9)
    800159de:	8fd1                	or	a5,a5,a2
    800159e0:	2781                	sext.w	a5,a5
    800159e2:	e7a1                	bnez	a5,80015a2a <JS_CallInternal+0x6abc>
quickjs-nuttx/quickjs.c:18249 (discriminator 1)
    800159e4:	00e6a7b3          	slt	a5,a3,a4
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    800159e8:	a2042a23          	sw	zero,-1484(s0)
    800159ec:	a2f42823          	sw	a5,-1488(s0)
    800159f0:	a3043783          	ld	a5,-1488(s0)
    800159f4:	4705                	li	a4,1
    800159f6:	eee43c23          	sd	a4,-264(s0)
    800159fa:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18249 (discriminator 1)
    800159fe:	fefcb023          	sd	a5,-32(s9)
    80015a02:	ef843783          	ld	a5,-264(s0)
    80015a06:	a2e43c23          	sd	a4,-1480(s0)
    80015a0a:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18249 (discriminator 4)
    80015a0e:	000d4b03          	lbu	s6,0(s10)
    80015a12:	00059797          	auipc	a5,0x59
    80015a16:	41e78793          	addi	a5,a5,1054 # 8006ee30 <dispatch_table.4>
    80015a1a:	1cc1                	addi	s9,s9,-16
    80015a1c:	003b1713          	slli	a4,s6,0x3
    80015a20:	97ba                	add	a5,a5,a4
    80015a22:	639c                	ld	a5,0(a5)
    80015a24:	0d05                	addi	s10,s10,1
    80015a26:	f80f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18249 (discriminator 2)
    80015a2a:	865a                	mv	a2,s6
    80015a2c:	85e6                	mv	a1,s9
    80015a2e:	8526                	mv	a0,s1
    80015a30:	093280ef          	jal	ra,8003e2c2 <js_relational_slow>
    80015a34:	dd69                	beqz	a0,80015a0e <JS_CallInternal+0x6aa0>
    80015a36:	dc9f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18250
            OP_CMP(OP_lte, <=, js_relational_slow(ctx, sp, opcode));
    80015a3a:	fe0cb783          	ld	a5,-32(s9)
    80015a3e:	e8f43823          	sd	a5,-368(s0)
    80015a42:	fe8cb783          	ld	a5,-24(s9)
    80015a46:	e8f43c23          	sd	a5,-360(s0)
    80015a4a:	ff0cb783          	ld	a5,-16(s9)
    80015a4e:	fe8cb603          	ld	a2,-24(s9)
    80015a52:	fe0ca683          	lw	a3,-32(s9)
    80015a56:	ecf43823          	sd	a5,-304(s0)
    80015a5a:	ff8cb783          	ld	a5,-8(s9)
    80015a5e:	ecf43c23          	sd	a5,-296(s0)
    80015a62:	ff8cb703          	ld	a4,-8(s9)
    80015a66:	ff0ca783          	lw	a5,-16(s9)
    80015a6a:	8f51                	or	a4,a4,a2
    80015a6c:	2701                	sext.w	a4,a4
    80015a6e:	e731                	bnez	a4,80015aba <JS_CallInternal+0x6b4c>
quickjs-nuttx/quickjs.c:18250 (discriminator 1)
    80015a70:	00d7a7b3          	slt	a5,a5,a3
    80015a74:	0017c793          	xori	a5,a5,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    80015a78:	a4042223          	sw	zero,-1468(s0)
    80015a7c:	a4f42023          	sw	a5,-1472(s0)
    80015a80:	a4043783          	ld	a5,-1472(s0)
    80015a84:	4705                	li	a4,1
    80015a86:	eee43c23          	sd	a4,-264(s0)
    80015a8a:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18250 (discriminator 1)
    80015a8e:	fefcb023          	sd	a5,-32(s9)
    80015a92:	ef843783          	ld	a5,-264(s0)
    80015a96:	a4e43423          	sd	a4,-1464(s0)
    80015a9a:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18250 (discriminator 4)
    80015a9e:	000d4b03          	lbu	s6,0(s10)
    80015aa2:	00059797          	auipc	a5,0x59
    80015aa6:	38e78793          	addi	a5,a5,910 # 8006ee30 <dispatch_table.4>
    80015aaa:	1cc1                	addi	s9,s9,-16
    80015aac:	003b1713          	slli	a4,s6,0x3
    80015ab0:	97ba                	add	a5,a5,a4
    80015ab2:	639c                	ld	a5,0(a5)
    80015ab4:	0d05                	addi	s10,s10,1
    80015ab6:	ef0f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18250 (discriminator 2)
    80015aba:	865a                	mv	a2,s6
    80015abc:	85e6                	mv	a1,s9
    80015abe:	8526                	mv	a0,s1
    80015ac0:	003280ef          	jal	ra,8003e2c2 <js_relational_slow>
    80015ac4:	dd69                	beqz	a0,80015a9e <JS_CallInternal+0x6b30>
    80015ac6:	d39f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18251
            OP_CMP(OP_gt, >, js_relational_slow(ctx, sp, opcode));
    80015aca:	fe0cb783          	ld	a5,-32(s9)
    80015ace:	e8f43823          	sd	a5,-368(s0)
    80015ad2:	fe8cb783          	ld	a5,-24(s9)
    80015ad6:	e8f43c23          	sd	a5,-360(s0)
    80015ada:	ff0cb783          	ld	a5,-16(s9)
    80015ade:	fe8cb603          	ld	a2,-24(s9)
    80015ae2:	fe0ca683          	lw	a3,-32(s9)
    80015ae6:	ecf43823          	sd	a5,-304(s0)
    80015aea:	ff8cb783          	ld	a5,-8(s9)
    80015aee:	ecf43c23          	sd	a5,-296(s0)
    80015af2:	ff8cb783          	ld	a5,-8(s9)
    80015af6:	ff0ca703          	lw	a4,-16(s9)
    80015afa:	8fd1                	or	a5,a5,a2
    80015afc:	2781                	sext.w	a5,a5
    80015afe:	e7a1                	bnez	a5,80015b46 <JS_CallInternal+0x6bd8>
quickjs-nuttx/quickjs.c:18251 (discriminator 1)
    80015b00:	00d727b3          	slt	a5,a4,a3
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    80015b04:	a4042a23          	sw	zero,-1452(s0)
    80015b08:	a4f42823          	sw	a5,-1456(s0)
    80015b0c:	a5043783          	ld	a5,-1456(s0)
    80015b10:	4705                	li	a4,1
    80015b12:	eee43c23          	sd	a4,-264(s0)
    80015b16:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18251 (discriminator 1)
    80015b1a:	fefcb023          	sd	a5,-32(s9)
    80015b1e:	ef843783          	ld	a5,-264(s0)
    80015b22:	a4e43c23          	sd	a4,-1448(s0)
    80015b26:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18251 (discriminator 4)
    80015b2a:	000d4b03          	lbu	s6,0(s10)
    80015b2e:	00059797          	auipc	a5,0x59
    80015b32:	30278793          	addi	a5,a5,770 # 8006ee30 <dispatch_table.4>
    80015b36:	1cc1                	addi	s9,s9,-16
    80015b38:	003b1713          	slli	a4,s6,0x3
    80015b3c:	97ba                	add	a5,a5,a4
    80015b3e:	639c                	ld	a5,0(a5)
    80015b40:	0d05                	addi	s10,s10,1
    80015b42:	e64f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18251 (discriminator 2)
    80015b46:	865a                	mv	a2,s6
    80015b48:	85e6                	mv	a1,s9
    80015b4a:	8526                	mv	a0,s1
    80015b4c:	776280ef          	jal	ra,8003e2c2 <js_relational_slow>
    80015b50:	dd69                	beqz	a0,80015b2a <JS_CallInternal+0x6bbc>
    80015b52:	cadf906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18252
            OP_CMP(OP_gte, >=, js_relational_slow(ctx, sp, opcode));
    80015b56:	fe0cb783          	ld	a5,-32(s9)
    80015b5a:	e8f43823          	sd	a5,-368(s0)
    80015b5e:	fe8cb783          	ld	a5,-24(s9)
    80015b62:	e8f43c23          	sd	a5,-360(s0)
    80015b66:	ff0cb703          	ld	a4,-16(s9)
    80015b6a:	fe8cb603          	ld	a2,-24(s9)
    80015b6e:	fe0ca783          	lw	a5,-32(s9)
    80015b72:	ece43823          	sd	a4,-304(s0)
    80015b76:	ff8cb703          	ld	a4,-8(s9)
    80015b7a:	ece43c23          	sd	a4,-296(s0)
    80015b7e:	ff8cb703          	ld	a4,-8(s9)
    80015b82:	ff0ca683          	lw	a3,-16(s9)
    80015b86:	8f51                	or	a4,a4,a2
    80015b88:	2701                	sext.w	a4,a4
    80015b8a:	e731                	bnez	a4,80015bd6 <JS_CallInternal+0x6c68>
quickjs-nuttx/quickjs.c:18252 (discriminator 1)
    80015b8c:	00d7a7b3          	slt	a5,a5,a3
    80015b90:	0017c793          	xori	a5,a5,1
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    80015b94:	a6042223          	sw	zero,-1436(s0)
    80015b98:	a6f42023          	sw	a5,-1440(s0)
    80015b9c:	a6043783          	ld	a5,-1440(s0)
    80015ba0:	4705                	li	a4,1
    80015ba2:	eee43c23          	sd	a4,-264(s0)
    80015ba6:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18252 (discriminator 1)
    80015baa:	fefcb023          	sd	a5,-32(s9)
    80015bae:	ef843783          	ld	a5,-264(s0)
    80015bb2:	a6e43423          	sd	a4,-1432(s0)
    80015bb6:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18252 (discriminator 4)
    80015bba:	000d4b03          	lbu	s6,0(s10)
    80015bbe:	00059797          	auipc	a5,0x59
    80015bc2:	27278793          	addi	a5,a5,626 # 8006ee30 <dispatch_table.4>
    80015bc6:	1cc1                	addi	s9,s9,-16
    80015bc8:	003b1713          	slli	a4,s6,0x3
    80015bcc:	97ba                	add	a5,a5,a4
    80015bce:	639c                	ld	a5,0(a5)
    80015bd0:	0d05                	addi	s10,s10,1
    80015bd2:	dd4f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18252 (discriminator 2)
    80015bd6:	865a                	mv	a2,s6
    80015bd8:	85e6                	mv	a1,s9
    80015bda:	8526                	mv	a0,s1
    80015bdc:	6e6280ef          	jal	ra,8003e2c2 <js_relational_slow>
    80015be0:	dd69                	beqz	a0,80015bba <JS_CallInternal+0x6c4c>
    80015be2:	c1df906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18253
            OP_CMP(OP_eq, ==, js_eq_slow(ctx, sp, 0));
    80015be6:	fe0cb783          	ld	a5,-32(s9)
    80015bea:	e8f43823          	sd	a5,-368(s0)
    80015bee:	fe8cb783          	ld	a5,-24(s9)
    80015bf2:	e8f43c23          	sd	a5,-360(s0)
    80015bf6:	ff0cb703          	ld	a4,-16(s9)
    80015bfa:	fe8cb603          	ld	a2,-24(s9)
    80015bfe:	fe0ca783          	lw	a5,-32(s9)
    80015c02:	ece43823          	sd	a4,-304(s0)
    80015c06:	ff8cb703          	ld	a4,-8(s9)
    80015c0a:	ece43c23          	sd	a4,-296(s0)
    80015c0e:	ff8cb703          	ld	a4,-8(s9)
    80015c12:	ff0ca683          	lw	a3,-16(s9)
    80015c16:	8f51                	or	a4,a4,a2
    80015c18:	2701                	sext.w	a4,a4
    80015c1a:	e729                	bnez	a4,80015c64 <JS_CallInternal+0x6cf6>
quickjs-nuttx/quickjs.c:18253 (discriminator 1)
    80015c1c:	8f95                	sub	a5,a5,a3
    80015c1e:	0017b793          	seqz	a5,a5
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    80015c22:	a6042a23          	sw	zero,-1420(s0)
    80015c26:	a6f42823          	sw	a5,-1424(s0)
    80015c2a:	a7043783          	ld	a5,-1424(s0)
    80015c2e:	4705                	li	a4,1
    80015c30:	eee43c23          	sd	a4,-264(s0)
    80015c34:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18253 (discriminator 1)
    80015c38:	fefcb023          	sd	a5,-32(s9)
    80015c3c:	ef843783          	ld	a5,-264(s0)
    80015c40:	a6e43c23          	sd	a4,-1416(s0)
    80015c44:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18253 (discriminator 4)
    80015c48:	000d4b03          	lbu	s6,0(s10)
    80015c4c:	00059797          	auipc	a5,0x59
    80015c50:	1e478793          	addi	a5,a5,484 # 8006ee30 <dispatch_table.4>
    80015c54:	1cc1                	addi	s9,s9,-16
    80015c56:	003b1713          	slli	a4,s6,0x3
    80015c5a:	97ba                	add	a5,a5,a4
    80015c5c:	639c                	ld	a5,0(a5)
    80015c5e:	0d05                	addi	s10,s10,1
    80015c60:	d46f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18253 (discriminator 2)
    80015c64:	4601                	li	a2,0
    80015c66:	85e6                	mv	a1,s9
    80015c68:	8526                	mv	a0,s1
    80015c6a:	129280ef          	jal	ra,8003e592 <js_eq_slow>
    80015c6e:	dd69                	beqz	a0,80015c48 <JS_CallInternal+0x6cda>
    80015c70:	b8ff906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18254
            OP_CMP(OP_neq, !=, js_eq_slow(ctx, sp, 1));
    80015c74:	fe0cb783          	ld	a5,-32(s9)
    80015c78:	e8f43823          	sd	a5,-368(s0)
    80015c7c:	fe8cb783          	ld	a5,-24(s9)
    80015c80:	e8f43c23          	sd	a5,-360(s0)
    80015c84:	ff0cb783          	ld	a5,-16(s9)
    80015c88:	fe8cb603          	ld	a2,-24(s9)
    80015c8c:	fe0ca683          	lw	a3,-32(s9)
    80015c90:	ecf43823          	sd	a5,-304(s0)
    80015c94:	ff8cb783          	ld	a5,-8(s9)
    80015c98:	ecf43c23          	sd	a5,-296(s0)
    80015c9c:	ff8cb703          	ld	a4,-8(s9)
    80015ca0:	ff0ca783          	lw	a5,-16(s9)
    80015ca4:	8f51                	or	a4,a4,a2
    80015ca6:	2701                	sext.w	a4,a4
    80015ca8:	e729                	bnez	a4,80015cf2 <JS_CallInternal+0x6d84>
quickjs-nuttx/quickjs.c:18254 (discriminator 1)
    80015caa:	8f95                	sub	a5,a5,a3
    80015cac:	00f037b3          	snez	a5,a5
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    80015cb0:	a8042223          	sw	zero,-1404(s0)
    80015cb4:	a8f42023          	sw	a5,-1408(s0)
    80015cb8:	a8043783          	ld	a5,-1408(s0)
    80015cbc:	4705                	li	a4,1
    80015cbe:	eee43c23          	sd	a4,-264(s0)
    80015cc2:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18254 (discriminator 1)
    80015cc6:	fefcb023          	sd	a5,-32(s9)
    80015cca:	ef843783          	ld	a5,-264(s0)
    80015cce:	a8e43423          	sd	a4,-1400(s0)
    80015cd2:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18254 (discriminator 4)
    80015cd6:	000d4b03          	lbu	s6,0(s10)
    80015cda:	00059797          	auipc	a5,0x59
    80015cde:	15678793          	addi	a5,a5,342 # 8006ee30 <dispatch_table.4>
    80015ce2:	1cc1                	addi	s9,s9,-16
    80015ce4:	003b1713          	slli	a4,s6,0x3
    80015ce8:	97ba                	add	a5,a5,a4
    80015cea:	639c                	ld	a5,0(a5)
    80015cec:	0d05                	addi	s10,s10,1
    80015cee:	cb8f906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18254 (discriminator 2)
    80015cf2:	4605                	li	a2,1
    80015cf4:	85e6                	mv	a1,s9
    80015cf6:	8526                	mv	a0,s1
    80015cf8:	09b280ef          	jal	ra,8003e592 <js_eq_slow>
    80015cfc:	dd69                	beqz	a0,80015cd6 <JS_CallInternal+0x6d68>
    80015cfe:	b01f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18255
            OP_CMP(OP_strict_eq, ==, js_strict_eq_slow(ctx, sp, 0));
    80015d02:	fe0cb783          	ld	a5,-32(s9)
    80015d06:	e8f43823          	sd	a5,-368(s0)
    80015d0a:	fe8cb783          	ld	a5,-24(s9)
    80015d0e:	e8f43c23          	sd	a5,-360(s0)
    80015d12:	ff0cb783          	ld	a5,-16(s9)
    80015d16:	fe8cb603          	ld	a2,-24(s9)
    80015d1a:	fe0ca683          	lw	a3,-32(s9)
    80015d1e:	ecf43823          	sd	a5,-304(s0)
    80015d22:	ff8cb783          	ld	a5,-8(s9)
    80015d26:	ecf43c23          	sd	a5,-296(s0)
    80015d2a:	ff8cb703          	ld	a4,-8(s9)
    80015d2e:	ff0ca783          	lw	a5,-16(s9)
    80015d32:	8f51                	or	a4,a4,a2
    80015d34:	2701                	sext.w	a4,a4
    80015d36:	e729                	bnez	a4,80015d80 <JS_CallInternal+0x6e12>
quickjs-nuttx/quickjs.c:18255 (discriminator 1)
    80015d38:	8f95                	sub	a5,a5,a3
    80015d3a:	0017b793          	seqz	a5,a5
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    80015d3e:	a8042a23          	sw	zero,-1388(s0)
    80015d42:	a8f42823          	sw	a5,-1392(s0)
    80015d46:	a9043783          	ld	a5,-1392(s0)
    80015d4a:	4705                	li	a4,1
    80015d4c:	eee43c23          	sd	a4,-264(s0)
    80015d50:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18255 (discriminator 1)
    80015d54:	fefcb023          	sd	a5,-32(s9)
    80015d58:	ef843783          	ld	a5,-264(s0)
    80015d5c:	a8e43c23          	sd	a4,-1384(s0)
    80015d60:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18255 (discriminator 4)
    80015d64:	000d4b03          	lbu	s6,0(s10)
    80015d68:	00059797          	auipc	a5,0x59
    80015d6c:	0c878793          	addi	a5,a5,200 # 8006ee30 <dispatch_table.4>
    80015d70:	1cc1                	addi	s9,s9,-16
    80015d72:	003b1713          	slli	a4,s6,0x3
    80015d76:	97ba                	add	a5,a5,a4
    80015d78:	639c                	ld	a5,0(a5)
    80015d7a:	0d05                	addi	s10,s10,1
    80015d7c:	c2af906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18255 (discriminator 2)
    80015d80:	4601                	li	a2,0
    80015d82:	85e6                	mv	a1,s9
    80015d84:	8526                	mv	a0,s1
    80015d86:	cd5f50ef          	jal	ra,8000ba5a <js_strict_eq_slow>
    80015d8a:	dd69                	beqz	a0,80015d64 <JS_CallInternal+0x6df6>
    80015d8c:	a73f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18256
            OP_CMP(OP_strict_neq, !=, js_strict_eq_slow(ctx, sp, 1));
    80015d90:	fe0cb783          	ld	a5,-32(s9)
    80015d94:	e8f43823          	sd	a5,-368(s0)
    80015d98:	fe8cb783          	ld	a5,-24(s9)
    80015d9c:	e8f43c23          	sd	a5,-360(s0)
    80015da0:	ff0cb783          	ld	a5,-16(s9)
    80015da4:	fe8cb603          	ld	a2,-24(s9)
    80015da8:	fe0ca683          	lw	a3,-32(s9)
    80015dac:	ecf43823          	sd	a5,-304(s0)
    80015db0:	ff8cb783          	ld	a5,-8(s9)
    80015db4:	ecf43c23          	sd	a5,-296(s0)
    80015db8:	ff8cb703          	ld	a4,-8(s9)
    80015dbc:	ff0ca783          	lw	a5,-16(s9)
    80015dc0:	8f51                	or	a4,a4,a2
    80015dc2:	2701                	sext.w	a4,a4
    80015dc4:	e729                	bnez	a4,80015e0e <JS_CallInternal+0x6ea0>
quickjs-nuttx/quickjs.c:18256 (discriminator 1)
    80015dc6:	8f95                	sub	a5,a5,a3
    80015dc8:	00f037b3          	snez	a5,a5
JS_NewBool():
quickjs-nuttx/quickjs.h:510 (discriminator 1)
    80015dcc:	aa042223          	sw	zero,-1372(s0)
    80015dd0:	aaf42023          	sw	a5,-1376(s0)
    80015dd4:	aa043783          	ld	a5,-1376(s0)
    80015dd8:	4705                	li	a4,1
    80015dda:	eee43c23          	sd	a4,-264(s0)
    80015dde:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18256 (discriminator 1)
    80015de2:	fefcb023          	sd	a5,-32(s9)
    80015de6:	ef843783          	ld	a5,-264(s0)
    80015dea:	aae43423          	sd	a4,-1368(s0)
    80015dee:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:18256 (discriminator 4)
    80015df2:	000d4b03          	lbu	s6,0(s10)
    80015df6:	00059797          	auipc	a5,0x59
    80015dfa:	03a78793          	addi	a5,a5,58 # 8006ee30 <dispatch_table.4>
    80015dfe:	1cc1                	addi	s9,s9,-16
    80015e00:	003b1713          	slli	a4,s6,0x3
    80015e04:	97ba                	add	a5,a5,a4
    80015e06:	639c                	ld	a5,0(a5)
    80015e08:	0d05                	addi	s10,s10,1
    80015e0a:	b9cf906f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:18256 (discriminator 2)
    80015e0e:	4605                	li	a2,1
    80015e10:	85e6                	mv	a1,s9
    80015e12:	8526                	mv	a0,s1
    80015e14:	c47f50ef          	jal	ra,8000ba5a <js_strict_eq_slow>
    80015e18:	dd69                	beqz	a0,80015df2 <JS_CallInternal+0x6e84>
    80015e1a:	9e5f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18260
            if (rt->bigfloat_ops.mul_pow10(ctx, sp))
    80015e1e:	77fd                	lui	a5,0xfffff
    80015e20:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    80015e24:	97a2                	add	a5,a5,s0
    80015e26:	639c                	ld	a5,0(a5)
    80015e28:	85e6                	mv	a1,s9
    80015e2a:	8526                	mv	a0,s1
    80015e2c:	2707b783          	ld	a5,624(a5)
    80015e30:	9782                	jalr	a5
    80015e32:	c119                	beqz	a0,80015e38 <JS_CallInternal+0x6eca>
    80015e34:	9cbf906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:18263
            BREAK;
    80015e38:	000d4b03          	lbu	s6,0(s10)
    80015e3c:	00059797          	auipc	a5,0x59
    80015e40:	ff478793          	addi	a5,a5,-12 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:18262
            sp--;
    80015e44:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:18263
            BREAK;
    80015e46:	003b1713          	slli	a4,s6,0x3
    80015e4a:	97ba                	add	a5,a5,a4
    80015e4c:	639c                	ld	a5,0(a5)
    80015e4e:	0d05                	addi	s10,s10,1
    80015e50:	b56f906f          	j	8000f1a6 <JS_CallInternal+0x238>
js_operator_in():
quickjs-nuttx/quickjs.c:14488
    op1 = sp[-2];
    80015e54:	fe0cb583          	ld	a1,-32(s9)
    80015e58:	e8b43823          	sd	a1,-368(s0)
    80015e5c:	fe8cb603          	ld	a2,-24(s9)
    80015e60:	e8c43c23          	sd	a2,-360(s0)
quickjs-nuttx/quickjs.c:14489
    op2 = sp[-1];
    80015e64:	ff0cb783          	ld	a5,-16(s9)
    80015e68:	ecf43823          	sd	a5,-304(s0)
    80015e6c:	ff8cb783          	ld	a5,-8(s9)
    80015e70:	ecf43c23          	sd	a5,-296(s0)
quickjs-nuttx/quickjs.c:14491
    if (JS_VALUE_GET_TAG(op2) != JS_TAG_OBJECT) {
    80015e74:	ff8ca703          	lw	a4,-8(s9)
    80015e78:	57fd                	li	a5,-1
    80015e7a:	00f70b63          	beq	a4,a5,80015e90 <JS_CallInternal+0x6f22>
quickjs-nuttx/quickjs.c:14492
        JS_ThrowTypeError(ctx, "invalid 'in' operand");
    80015e7e:	8526                	mv	a0,s1
    80015e80:	00054597          	auipc	a1,0x54
    80015e84:	00058593          	mv	a1,a1
    80015e88:	7e4020ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:14493
        return -1;
    80015e8c:	973f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14495
    atom = JS_ValueToAtom(ctx, op1);
    80015e90:	8526                	mv	a0,s1
    80015e92:	181120ef          	jal	ra,80028812 <JS_ValueToAtom>
    80015e96:	00050a1b          	sext.w	s4,a0
quickjs-nuttx/quickjs.c:14496
    if (unlikely(atom == JS_ATOM_NULL))
    80015e9a:	000a1463          	bnez	s4,80015ea2 <JS_CallInternal+0x6f34>
    80015e9e:	961f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14498
    ret = JS_HasProperty(ctx, op2, atom);
    80015ea2:	ed043583          	ld	a1,-304(s0)
    80015ea6:	ed843603          	ld	a2,-296(s0)
    80015eaa:	86d2                	mv	a3,s4
    80015eac:	8526                	mv	a0,s1
    80015eae:	648220ef          	jal	ra,800384f6 <JS_HasProperty>
    80015eb2:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:14499
    JS_FreeAtom(ctx, atom);
    80015eb4:	85d2                	mv	a1,s4
    80015eb6:	8526                	mv	a0,s1
    80015eb8:	a90f50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:14500
    if (ret < 0)
    80015ebc:	0009d463          	bgez	s3,80015ec4 <JS_CallInternal+0x6f56>
    80015ec0:	93ff906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14502
    JS_FreeValue(ctx, op1);
    80015ec4:	e9043583          	ld	a1,-368(s0)
    80015ec8:	e9843603          	ld	a2,-360(s0)
    80015ecc:	8526                	mv	a0,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80015ece:	013039b3          	snez	s3,s3
js_operator_in():
quickjs-nuttx/quickjs.c:14502
    80015ed2:	8cdf50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14503
    JS_FreeValue(ctx, op2);
    80015ed6:	ed043583          	ld	a1,-304(s0)
    80015eda:	ed843603          	ld	a2,-296(s0)
    80015ede:	8526                	mv	a0,s1
JS_CallInternal():
quickjs-nuttx/quickjs.c:18268
            sp--;
    80015ee0:	1cc1                	addi	s9,s9,-16
js_operator_in():
quickjs-nuttx/quickjs.c:14503
    JS_FreeValue(ctx, op2);
    80015ee2:	8bdf50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80015ee6:	e2042a23          	sw	zero,-460(s0)
    80015eea:	e3342823          	sw	s3,-464(s0)
    80015eee:	e3043783          	ld	a5,-464(s0)
    80015ef2:	4705                	li	a4,1
    80015ef4:	eee43c23          	sd	a4,-264(s0)
    80015ef8:	eef43823          	sd	a5,-272(s0)
js_operator_in():
quickjs-nuttx/quickjs.c:14504
    sp[-2] = JS_NewBool(ctx, ret);
    80015efc:	fefcb823          	sd	a5,-16(s9)
    80015f00:	ef843783          	ld	a5,-264(s0)
    80015f04:	e2e43c23          	sd	a4,-456(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18269
            BREAK;
    80015f08:	0d05                	addi	s10,s10,1
js_operator_in():
quickjs-nuttx/quickjs.c:14504
    sp[-2] = JS_NewBool(ctx, ret);
    80015f0a:	fefcbc23          	sd	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18269
            BREAK;
    80015f0e:	fffd4b03          	lbu	s6,-1(s10)
    80015f12:	00059797          	auipc	a5,0x59
    80015f16:	f1e78793          	addi	a5,a5,-226 # 8006ee30 <dispatch_table.4>
    80015f1a:	003b1713          	slli	a4,s6,0x3
    80015f1e:	97ba                	add	a5,a5,a4
    80015f20:	639c                	ld	a5,0(a5)
    80015f22:	a84f906f          	j	8000f1a6 <JS_CallInternal+0x238>
js_operator_private_in():
quickjs-nuttx/quickjs.c:14514
    op2 = sp[-1]; /* field name or method function */
    80015f26:	ff0cb683          	ld	a3,-16(s9)
quickjs-nuttx/quickjs.c:14513
    op1 = sp[-2]; /* object */
    80015f2a:	fe8cb603          	ld	a2,-24(s9)
    80015f2e:	fe0cb983          	ld	s3,-32(s9)
quickjs-nuttx/quickjs.c:14514
    op2 = sp[-1]; /* field name or method function */
    80015f32:	ecd43823          	sd	a3,-304(s0)
    80015f36:	ff8cb703          	ld	a4,-8(s9)
quickjs-nuttx/quickjs.c:14513
    op1 = sp[-2]; /* object */
    80015f3a:	e5343023          	sd	s3,-448(s0)
    80015f3e:	e4c43423          	sd	a2,-440(s0)
quickjs-nuttx/quickjs.c:14514
    op2 = sp[-1]; /* field name or method function */
    80015f42:	ece43c23          	sd	a4,-296(s0)
quickjs-nuttx/quickjs.c:14516
    if (JS_VALUE_GET_TAG(op1) != JS_TAG_OBJECT) {
    80015f46:	0006059b          	sext.w	a1,a2
    80015f4a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:14514
    op2 = sp[-1]; /* field name or method function */
    80015f4c:	ff8cb783          	ld	a5,-8(s9)
quickjs-nuttx/quickjs.c:14516
    if (JS_VALUE_GET_TAG(op1) != JS_TAG_OBJECT) {
    80015f50:	00a58b63          	beq	a1,a0,80015f66 <JS_CallInternal+0x6ff8>
quickjs-nuttx/quickjs.c:14517
        JS_ThrowTypeError(ctx, "invalid 'in' operand");
    80015f54:	8526                	mv	a0,s1
    80015f56:	00054597          	auipc	a1,0x54
    80015f5a:	f2a58593          	addi	a1,a1,-214 # 80069e80 <qjsc_repl+0x48d0>
    80015f5e:	70e020ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:14518
        return -1;
    80015f62:	89df906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14520
    if (JS_IsObject(op2)) {
    80015f66:	2781                	sext.w	a5,a5
    80015f68:	06b79c63          	bne	a5,a1,80015fe0 <JS_CallInternal+0x7072>
quickjs-nuttx/quickjs.c:14522
        ret = JS_CheckBrand(ctx, op1, op2);
    80015f6c:	85ce                	mv	a1,s3
    80015f6e:	8526                	mv	a0,s1
    80015f70:	603020ef          	jal	ra,80018d72 <JS_CheckBrand>
    80015f74:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:14523
        if (ret < 0)
    80015f76:	00055463          	bgez	a0,80015f7e <JS_CallInternal+0x7010>
    80015f7a:	885f906f          	j	8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:14539
    JS_FreeValue(ctx, op1);
    80015f7e:	e4043583          	ld	a1,-448(s0)
    80015f82:	e4843603          	ld	a2,-440(s0)
    80015f86:	8526                	mv	a0,s1
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80015f88:	013039b3          	snez	s3,s3
js_operator_private_in():
quickjs-nuttx/quickjs.c:14539
    80015f8c:	813f50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14540
    JS_FreeValue(ctx, op2);
    80015f90:	ed043583          	ld	a1,-304(s0)
    80015f94:	ed843603          	ld	a2,-296(s0)
    80015f98:	8526                	mv	a0,s1
JS_CallInternal():
quickjs-nuttx/quickjs.c:18273
            sp--;
    80015f9a:	1cc1                	addi	s9,s9,-16
js_operator_private_in():
quickjs-nuttx/quickjs.c:14540
    JS_FreeValue(ctx, op2);
    80015f9c:	803f50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80015fa0:	e4042a23          	sw	zero,-428(s0)
    80015fa4:	e5342823          	sw	s3,-432(s0)
    80015fa8:	e5043783          	ld	a5,-432(s0)
    80015fac:	4705                	li	a4,1
    80015fae:	eee43c23          	sd	a4,-264(s0)
    80015fb2:	eef43823          	sd	a5,-272(s0)
js_operator_private_in():
quickjs-nuttx/quickjs.c:14541
    sp[-2] = JS_NewBool(ctx, ret);
    80015fb6:	fefcb823          	sd	a5,-16(s9)
    80015fba:	ef843783          	ld	a5,-264(s0)
    80015fbe:	e4e43c23          	sd	a4,-424(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18274
            BREAK;
    80015fc2:	0d05                	addi	s10,s10,1
js_operator_private_in():
quickjs-nuttx/quickjs.c:14541
    sp[-2] = JS_NewBool(ctx, ret);
    80015fc4:	fefcbc23          	sd	a5,-8(s9)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18274
            BREAK;
    80015fc8:	fffd4b03          	lbu	s6,-1(s10)
    80015fcc:	00059797          	auipc	a5,0x59
    80015fd0:	e6478793          	addi	a5,a5,-412 # 8006ee30 <dispatch_table.4>
    80015fd4:	003b1713          	slli	a4,s6,0x3
    80015fd8:	97ba                	add	a5,a5,a4
    80015fda:	639c                	ld	a5,0(a5)
    80015fdc:	9caf906f          	j	8000f1a6 <JS_CallInternal+0x238>
js_operator_private_in():
quickjs-nuttx/quickjs.c:14531
        atom = JS_ValueToAtom(ctx, op2);
    80015fe0:	85b6                	mv	a1,a3
    80015fe2:	863a                	mv	a2,a4
    80015fe4:	8526                	mv	a0,s1
    80015fe6:	02d120ef          	jal	ra,80028812 <JS_ValueToAtom>
    80015fea:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:14532
        if (unlikely(atom == JS_ATOM_NULL))
    80015fee:	e199                	bnez	a1,80015ff4 <JS_CallInternal+0x7086>
    80015ff0:	80ff906f          	j	8000f7fe <JS_CallInternal+0x890>
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    80015ff4:	0189b703          	ld	a4,24(s3)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80015ff8:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    80015ffa:	531c                	lw	a5,32(a4)
    80015ffc:	8fed                	and	a5,a5,a1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    80015ffe:	1782                	slli	a5,a5,0x20
