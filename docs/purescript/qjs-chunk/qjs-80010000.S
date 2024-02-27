    8000f000:	70d4b023          	sd	a3,1792(s1)
    8000f004:	6f04bc23          	sd	a6,1784(s1)
    8000f008:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:16072
    if (js_poll_interrupts(caller_ctx))
    8000f00a:	6a90a0ef          	jal	ra,80019eb2 <js_poll_interrupts>
    8000f00e:	77fd                	lui	a5,0xfffff
    8000f010:	62878793          	addi	a5,a5,1576 # fffffffffffff628 <_ebss+0xffffffff7fefe4c2>
    8000f014:	777d                	lui	a4,0xfffff
    8000f016:	97a2                	add	a5,a5,s0
    8000f018:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8000f01c:	9722                	add	a4,a4,s0
    8000f01e:	e388                	sd	a0,0(a5)
    8000f020:	00073883          	ld	a7,0(a4)
    8000f024:	c135                	beqz	a0,8000f088 <JS_CallInternal+0x11a>
quickjs-nuttx/quickjs.c:16073
        return JS_EXCEPTION;
    8000f026:	4799                	li	a5,6
    8000f028:	de043023          	sd	zero,-544(s0)
    8000f02c:	def43423          	sd	a5,-536(s0)
quickjs-nuttx/quickjs.c:18569 (discriminator 1)
}
    8000f030:	72fd                	lui	t0,0xfffff
    8000f032:	5b028293          	addi	t0,t0,1456 # fffffffffffff5b0 <_ebss+0xffffffff7fefe44a>
    8000f036:	de043503          	ld	a0,-544(s0)
    8000f03a:	de843583          	ld	a1,-536(s0)
    8000f03e:	00540133          	add	sp,s0,t0
    8000f042:	26010113          	addi	sp,sp,608
    8000f046:	7e813083          	ld	ra,2024(sp)
    8000f04a:	7e013403          	ld	s0,2016(sp)
    8000f04e:	7d813483          	ld	s1,2008(sp)
    8000f052:	7d013903          	ld	s2,2000(sp)
    8000f056:	7c813983          	ld	s3,1992(sp)
    8000f05a:	7c013a03          	ld	s4,1984(sp)
    8000f05e:	7b813a83          	ld	s5,1976(sp)
    8000f062:	7b013b03          	ld	s6,1968(sp)
    8000f066:	7a813b83          	ld	s7,1960(sp)
    8000f06a:	7a013c03          	ld	s8,1952(sp)
    8000f06e:	79813c83          	ld	s9,1944(sp)
    8000f072:	79013d03          	ld	s10,1936(sp)
    8000f076:	78813d83          	ld	s11,1928(sp)
    8000f07a:	77813407          	fld	fs0,1912(sp)
    8000f07e:	77013487          	fld	fs1,1904(sp)
    8000f082:	7f010113          	addi	sp,sp,2032
    8000f086:	8082                	ret
quickjs-nuttx/quickjs.c:16074
    if (unlikely(JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)) {
    8000f088:	7184b603          	ld	a2,1816(s1)
    8000f08c:	57fd                	li	a5,-1
    8000f08e:	0006071b          	sext.w	a4,a2
    8000f092:	10f70b63          	beq	a4,a5,8000f1a8 <JS_CallInternal+0x23a>
quickjs-nuttx/quickjs.c:16075
        if (flags & JS_CALL_FLAG_GENERATOR) {
    8000f096:	0048f893          	andi	a7,a7,4
    8000f09a:	12088b63          	beqz	a7,8000f1d0 <JS_CallInternal+0x262>
quickjs-nuttx/quickjs.c:16079
            sf = &s->frame;
    8000f09e:	777d                	lui	a4,0xfffff
    8000f0a0:	66070713          	addi	a4,a4,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8000f0a4:	05890793          	addi	a5,s2,88
    8000f0a8:	9722                	add	a4,a4,s0
    8000f0aa:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16080
            p = JS_VALUE_GET_OBJ(sf->cur_func);
    8000f0ac:	06093783          	ld	a5,96(s2)
    8000f0b0:	777d                	lui	a4,0xfffff
    8000f0b2:	60870713          	addi	a4,a4,1544 # fffffffffffff608 <_ebss+0xffffffff7fefe4a2>
    8000f0b6:	9722                	add	a4,a4,s0
    8000f0b8:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16081
            b = p->u.func.function_bytecode;
    8000f0ba:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:16087
            sp = sf->cur_sp;
    8000f0bc:	0a093c83          	ld	s9,160(s2)
quickjs-nuttx/quickjs.c:16089
            pc = sf->cur_pc;
    8000f0c0:	09093d03          	ld	s10,144(s2)
quickjs-nuttx/quickjs.c:16081
            b = p->u.func.function_bytecode;
    8000f0c4:	0307bd83          	ld	s11,48(a5)
quickjs-nuttx/quickjs.c:16083
            var_refs = p->u.func.var_refs;
    8000f0c8:	631c                	ld	a5,0(a4)
    8000f0ca:	777d                	lui	a4,0xfffff
    8000f0cc:	65070713          	addi	a4,a4,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8000f0d0:	7f9c                	ld	a5,56(a5)
    8000f0d2:	9722                	add	a4,a4,s0
quickjs-nuttx/quickjs.c:16082
            ctx = b->realm;
    8000f0d4:	048db483          	ld	s1,72(s11)
quickjs-nuttx/quickjs.c:16083
            var_refs = p->u.func.var_refs;
    8000f0d8:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16084
            local_buf = arg_buf = sf->arg_buf;
    8000f0da:	07093783          	ld	a5,112(s2)
    8000f0de:	777d                	lui	a4,0xfffff
    8000f0e0:	63870713          	addi	a4,a4,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8000f0e4:	9722                	add	a4,a4,s0
    8000f0e6:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16085
            var_buf = sf->var_buf;
    8000f0e8:	07893783          	ld	a5,120(s2)
    8000f0ec:	777d                	lui	a4,0xfffff
    8000f0ee:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8000f0f2:	9722                	add	a4,a4,s0
    8000f0f4:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16086
            stack_buf = sf->var_buf + b->var_count;
    8000f0f6:	777d                	lui	a4,0xfffff
    8000f0f8:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8000f0fc:	042dd783          	lhu	a5,66(s11)
    8000f100:	9722                	add	a4,a4,s0
    8000f102:	6318                	ld	a4,0(a4)
    8000f104:	0792                	slli	a5,a5,0x4
quickjs-nuttx/quickjs.c:16088
            sf->cur_sp = NULL; /* cur_sp is NULL if the function is running */
    8000f106:	0a093023          	sd	zero,160(s2)
quickjs-nuttx/quickjs.c:16086
            stack_buf = sf->var_buf + b->var_count;
    8000f10a:	97ba                	add	a5,a5,a4
    8000f10c:	777d                	lui	a4,0xfffff
    8000f10e:	60070713          	addi	a4,a4,1536 # fffffffffffff600 <_ebss+0xffffffff7fefe49a>
    8000f112:	9722                	add	a4,a4,s0
    8000f114:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16090
            sf->prev_frame = rt->current_stack_frame;
    8000f116:	77fd                	lui	a5,0xfffff
    8000f118:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f11c:	97a2                	add	a5,a5,s0
    8000f11e:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16091
            rt->current_stack_frame = sf;
    8000f120:	05890713          	addi	a4,s2,88
quickjs-nuttx/quickjs.c:16090
            sf->prev_frame = rt->current_stack_frame;
    8000f124:	7ffc                	ld	a5,248(a5)
    8000f126:	04f93c23          	sd	a5,88(s2)
quickjs-nuttx/quickjs.c:16091
            rt->current_stack_frame = sf;
    8000f12a:	77fd                	lui	a5,0xfffff
    8000f12c:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f130:	97a2                	add	a5,a5,s0
    8000f132:	639c                	ld	a5,0(a5)
    8000f134:	fff8                	sd	a4,248(a5)
quickjs-nuttx/quickjs.c:16092
            if (s->throw_flag)
    8000f136:	02c92783          	lw	a5,44(s2)
    8000f13a:	c399                	beqz	a5,8000f140 <JS_CallInternal+0x1d2>
    8000f13c:	79c0706f          	j	800168d8 <JS_CallInternal+0x796a>
quickjs-nuttx/quickjs.c:16084
            local_buf = arg_buf = sf->arg_buf;
    8000f140:	77fd                	lui	a5,0xfffff
    8000f142:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8000f146:	97a2                	add	a5,a5,s0
    8000f148:	639c                	ld	a5,0(a5)
    8000f14a:	777d                	lui	a4,0xfffff
    8000f14c:	65870713          	addi	a4,a4,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
quickjs-nuttx/quickjs.c:16043
    JSStackFrame sf_s, *sf = &sf_s;
    8000f150:	9722                	add	a4,a4,s0
    8000f152:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16160
        SWITCH(pc) {
    8000f154:	000d4b03          	lbu	s6,0(s10) # 40000000 <asinh-0x40000000>
    8000f158:	00060797          	auipc	a5,0x60
    8000f15c:	cd878793          	addi	a5,a5,-808 # 8006ee30 <dispatch_table.4>
js_build_arguments():
quickjs-nuttx/quickjs.c:14740
        tab = js_malloc(ctx, sizeof(tab[0]) * argc);
    8000f160:	76fd                	lui	a3,0xfffff
JS_CallInternal():
quickjs-nuttx/quickjs.c:16160
        SWITCH(pc) {
    8000f162:	003b1713          	slli	a4,s6,0x3
    8000f166:	97ba                	add	a5,a5,a4
js_build_arguments():
quickjs-nuttx/quickjs.c:14740
        tab = js_malloc(ctx, sizeof(tab[0]) * argc);
    8000f168:	777d                	lui	a4,0xfffff
    8000f16a:	64070713          	addi	a4,a4,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000f16e:	9722                	add	a4,a4,s0
    8000f170:	6318                	ld	a4,0(a4)
    8000f172:	5d868693          	addi	a3,a3,1496 # fffffffffffff5d8 <_ebss+0xffffffff7fefe472>
    8000f176:	96a2                	add	a3,a3,s0
    8000f178:	0712                	slli	a4,a4,0x4
    8000f17a:	e298                	sd	a4,0(a3)
JS_CallInternal():
quickjs-nuttx/quickjs.c:18349
                ret_val = JS_ToPropertyKey(ctx, sp[-1]);
    8000f17c:	797d                	lui	s2,0xfffff
quickjs-nuttx/quickjs.c:17969
                        d = -0.0;
    8000f17e:	00085717          	auipc	a4,0x85
    8000f182:	a6273407          	fld	fs0,-1438(a4) # 80093be0 <_erodata+0x6e>
quickjs-nuttx/quickjs.c:17973
                        d = -(double)val;
    8000f186:	00085717          	auipc	a4,0x85
    8000f18a:	a6273487          	fld	fs1,-1438(a4) # 80093be8 <_erodata+0x76>
js_append_enumerate():
quickjs-nuttx/quickjs.c:15414
    &&  js_get_fast_array(ctx, sp[-1], &arrp, &count32)) {
    8000f18e:	f8040693          	addi	a3,s0,-128
    8000f192:	74090713          	addi	a4,s2,1856 # fffffffffffff740 <_ebss+0xffffffff7fefe5da>
    8000f196:	9736                	add	a4,a4,a3
    8000f198:	76fd                	lui	a3,0xfffff
    8000f19a:	5f868693          	addi	a3,a3,1528 # fffffffffffff5f8 <_ebss+0xffffffff7fefe492>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16160
        SWITCH(pc) {
    8000f19e:	639c                	ld	a5,0(a5)
js_append_enumerate():
quickjs-nuttx/quickjs.c:15414
    &&  js_get_fast_array(ctx, sp[-1], &arrp, &count32)) {
    8000f1a0:	96a2                	add	a3,a3,s0
JS_CallInternal():
quickjs-nuttx/quickjs.c:16160
        SWITCH(pc) {
    8000f1a2:	0d05                	addi	s10,s10,1
js_append_enumerate():
quickjs-nuttx/quickjs.c:15414
    &&  js_get_fast_array(ctx, sp[-1], &arrp, &count32)) {
    8000f1a4:	e298                	sd	a4,0(a3)
    8000f1a6:	8782                	jr	a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16101
    if (unlikely(p->class_id != JS_CLASS_BYTECODE_FUNCTION)) {
    8000f1a8:	00695783          	lhu	a5,6(s2)
    8000f1ac:	4735                	li	a4,13
    8000f1ae:	06e78563          	beq	a5,a4,8000f218 <JS_CallInternal+0x2aa>
quickjs-nuttx/quickjs.c:16103
        call_func = rt->class_array[p->class_id].call;
    8000f1b2:	02800693          	li	a3,40
    8000f1b6:	02d787b3          	mul	a5,a5,a3
    8000f1ba:	777d                	lui	a4,0xfffff
    8000f1bc:	64870713          	addi	a4,a4,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f1c0:	9722                	add	a4,a4,s0
    8000f1c2:	6318                	ld	a4,0(a4)
    8000f1c4:	7b38                	ld	a4,112(a4)
    8000f1c6:	97ba                	add	a5,a5,a4
    8000f1c8:	0187b303          	ld	t1,24(a5)
quickjs-nuttx/quickjs.c:16104
        if (!call_func) {
    8000f1cc:	02031263          	bnez	t1,8000f1f0 <JS_CallInternal+0x282>
quickjs-nuttx/quickjs.c:16106
            return JS_ThrowTypeError(caller_ctx, "not a function");
    8000f1d0:	77fd                	lui	a5,0xfffff
    8000f1d2:	62078793          	addi	a5,a5,1568 # fffffffffffff620 <_ebss+0xffffffff7fefe4ba>
    8000f1d6:	97a2                	add	a5,a5,s0
    8000f1d8:	6388                	ld	a0,0(a5)
    8000f1da:	0005b597          	auipc	a1,0x5b
    8000f1de:	a1658593          	addi	a1,a1,-1514 # 80069bf0 <qjsc_repl+0x4640>
    8000f1e2:	48a090ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:16122
        return JS_ThrowStackOverflow(caller_ctx);
    8000f1e6:	dea43023          	sd	a0,-544(s0)
    8000f1ea:	deb43423          	sd	a1,-536(s0)
    8000f1ee:	b589                	j	8000f030 <JS_CallInternal+0xc2>
quickjs-nuttx/quickjs.c:16108
        return call_func(caller_ctx, func_obj, this_obj, argc,
    8000f1f0:	77fd                	lui	a5,0xfffff
    8000f1f2:	757d                	lui	a0,0xfffff
    8000f1f4:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000f1f8:	62050513          	addi	a0,a0,1568 # fffffffffffff620 <_ebss+0xffffffff7fefe4ba>
    8000f1fc:	97a2                	add	a5,a5,s0
    8000f1fe:	9522                	add	a0,a0,s0
    8000f200:	00043803          	ld	a6,0(s0)
    8000f204:	639c                	ld	a5,0(a5)
    8000f206:	7004b683          	ld	a3,1792(s1)
    8000f20a:	7084b703          	ld	a4,1800(s1)
    8000f20e:	7104b583          	ld	a1,1808(s1)
    8000f212:	6108                	ld	a0,0(a0)
    8000f214:	9302                	jalr	t1
    8000f216:	bfc1                	j	8000f1e6 <JS_CallInternal+0x278>
quickjs-nuttx/quickjs.c:16111
    b = p->u.func.function_bytecode;
    8000f218:	03093d83          	ld	s11,48(s2)
quickjs-nuttx/quickjs.c:16113
    if (unlikely(argc < b->arg_count || (flags & JS_CALL_FLAG_COPY_ARGV))) {
    8000f21c:	77fd                	lui	a5,0xfffff
    8000f21e:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000f222:	97a2                	add	a5,a5,s0
    8000f224:	040dd983          	lhu	s3,64(s11)
    8000f228:	639c                	ld	a5,0(a5)
    8000f22a:	0137c763          	blt	a5,s3,8000f238 <JS_CallInternal+0x2ca>
quickjs-nuttx/quickjs.c:16113 (discriminator 1)
    8000f22e:	0028f893          	andi	a7,a7,2
    8000f232:	00089363          	bnez	a7,8000f238 <JS_CallInternal+0x2ca>
quickjs-nuttx/quickjs.c:16116
        arg_allocated_size = 0;
    8000f236:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:16120
                                     b->stack_size);
    8000f238:	046dd703          	lhu	a4,70(s11)
quickjs-nuttx/quickjs.c:16119
    alloca_size = sizeof(JSValue) * (arg_allocated_size + b->var_count +
    8000f23c:	042dd783          	lhu	a5,66(s11)
    8000f240:	9fb9                	addw	a5,a5,a4
quickjs-nuttx/quickjs.c:16121
    if (js_check_stack_overflow(rt, alloca_size))
    8000f242:	777d                	lui	a4,0xfffff
    8000f244:	64870713          	addi	a4,a4,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f248:	9722                	add	a4,a4,s0
    8000f24a:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:16119
    alloca_size = sizeof(JSValue) * (arg_allocated_size + b->var_count +
    8000f24c:	013787bb          	addw	a5,a5,s3
    8000f250:	0792                	slli	a5,a5,0x4
quickjs-nuttx/quickjs.c:16121
    if (js_check_stack_overflow(rt, alloca_size))
    8000f252:	6f78                	ld	a4,216(a4)
js_check_stack_overflow():
quickjs-nuttx/quickjs.c:1613
    sp = js_get_stack_pointer() - alloca_size;
    8000f254:	40f406b3          	sub	a3,s0,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16121
    if (js_check_stack_overflow(rt, alloca_size))
    8000f258:	00e6fa63          	bgeu	a3,a4,8000f26c <JS_CallInternal+0x2fe>
quickjs-nuttx/quickjs.c:16122
        return JS_ThrowStackOverflow(caller_ctx);
    8000f25c:	77fd                	lui	a5,0xfffff
    8000f25e:	62078793          	addi	a5,a5,1568 # fffffffffffff620 <_ebss+0xffffffff7fefe4ba>
    8000f262:	97a2                	add	a5,a5,s0
    8000f264:	6388                	ld	a0,0(a5)
    8000f266:	6bc0a0ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
    8000f26a:	bfb5                	j	8000f1e6 <JS_CallInternal+0x278>
quickjs-nuttx/quickjs.c:16124
    sf->js_mode = b->js_mode;
    8000f26c:	018dc703          	lbu	a4,24(s11)
quickjs-nuttx/quickjs.c:16127
    sf->cur_func = (JSValue)func_obj;
    8000f270:	f8040693          	addi	a3,s0,-128
quickjs-nuttx/quickjs.c:16131
    local_buf = alloca(alloca_size);
    8000f274:	40f10133          	sub	sp,sp,a5
quickjs-nuttx/quickjs.c:16124
    sf->js_mode = b->js_mode;
    8000f278:	f6e42a23          	sw	a4,-140(s0)
quickjs-nuttx/quickjs.c:16126
    sf->arg_count = argc;
    8000f27c:	777d                	lui	a4,0xfffff
    8000f27e:	64070713          	addi	a4,a4,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000f282:	9722                	add	a4,a4,s0
    8000f284:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:16131
    local_buf = alloca(alloca_size);
    8000f286:	101c                	addi	a5,sp,32
quickjs-nuttx/quickjs.c:16126
    sf->arg_count = argc;
    8000f288:	f6e42823          	sw	a4,-144(s0)
quickjs-nuttx/quickjs.c:16127
    sf->cur_func = (JSValue)func_obj;
    8000f28c:	777d                	lui	a4,0xfffff
    8000f28e:	9736                	add	a4,a4,a3
    8000f290:	71073683          	ld	a3,1808(a4) # fffffffffffff710 <_ebss+0xffffffff7fefe5aa>
    8000f294:	71873703          	ld	a4,1816(a4)
    8000f298:	f2d43c23          	sd	a3,-200(s0)
    8000f29c:	f4e43023          	sd	a4,-192(s0)
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000f2a0:	f5840713          	addi	a4,s0,-168
    8000f2a4:	f4e43c23          	sd	a4,-168(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000f2a8:	f6e43023          	sd	a4,-160(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16129
    var_refs = p->u.func.var_refs;
    8000f2ac:	76fd                	lui	a3,0xfffff
    8000f2ae:	03893703          	ld	a4,56(s2)
    8000f2b2:	65068693          	addi	a3,a3,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8000f2b6:	96a2                	add	a3,a3,s0
    8000f2b8:	e298                	sd	a4,0(a3)
quickjs-nuttx/quickjs.c:16131
    local_buf = alloca(alloca_size);
    8000f2ba:	777d                	lui	a4,0xfffff
    8000f2bc:	63870713          	addi	a4,a4,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8000f2c0:	9722                	add	a4,a4,s0
    8000f2c2:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16125
    arg_buf = argv;
    8000f2c4:	601c                	ld	a5,0(s0)
    8000f2c6:	777d                	lui	a4,0xfffff
    8000f2c8:	65870713          	addi	a4,a4,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    8000f2cc:	9722                	add	a4,a4,s0
    8000f2ce:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16132
    if (unlikely(arg_allocated_size)) {
    8000f2d0:	06098563          	beqz	s3,8000f33a <JS_CallInternal+0x3cc>
quickjs-nuttx/cutils.h:79
    if (a < b)
    8000f2d4:	777d                	lui	a4,0xfffff
    8000f2d6:	64070713          	addi	a4,a4,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000f2da:	9722                	add	a4,a4,s0
quickjs-nuttx/quickjs.c:16133
        int n = min_int(argc, b->arg_count);
    8000f2dc:	040dd783          	lhu	a5,64(s11)
    8000f2e0:	6318                	ld	a4,0(a4)
    8000f2e2:	84be                	mv	s1,a5
    8000f2e4:	00f75763          	bge	a4,a5,8000f2f2 <JS_CallInternal+0x384>
    8000f2e8:	77fd                	lui	a5,0xfffff
    8000f2ea:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000f2ee:	97a2                	add	a5,a5,s0
    8000f2f0:	4384                	lw	s1,0(a5)
    8000f2f2:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:16135
        for(i = 0; i < n; i++)
    8000f2f4:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:16135 (discriminator 1)
    8000f2f6:	000a879b          	sext.w	a5,s5
    8000f2fa:	0c97ca63          	blt	a5,s1,8000f3ce <JS_CallInternal+0x460>
    8000f2fe:	0004871b          	sext.w	a4,s1
    8000f302:	0004d363          	bgez	s1,8000f308 <JS_CallInternal+0x39a>
    8000f306:	4701                	li	a4,0
    8000f308:	76fd                	lui	a3,0xfffff
    8000f30a:	63868693          	addi	a3,a3,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8000f30e:	96a2                	add	a3,a3,s0
    8000f310:	6294                	ld	a3,0(a3)
    8000f312:	00471793          	slli	a5,a4,0x4
quickjs-nuttx/quickjs.c:16138
            arg_buf[i] = JS_UNDEFINED;
    8000f316:	460d                	li	a2,3
    8000f318:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:16137 (discriminator 1)
        for(; i < b->arg_count; i++)
    8000f31a:	040dd683          	lhu	a3,64(s11)
    8000f31e:	0cd74c63          	blt	a4,a3,8000f3f6 <JS_CallInternal+0x488>
quickjs-nuttx/quickjs.c:16134
        arg_buf = local_buf;
    8000f322:	77fd                	lui	a5,0xfffff
    8000f324:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8000f328:	97a2                	add	a5,a5,s0
    8000f32a:	639c                	ld	a5,0(a5)
    8000f32c:	777d                	lui	a4,0xfffff
    8000f32e:	65870713          	addi	a4,a4,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    8000f332:	9722                	add	a4,a4,s0
quickjs-nuttx/quickjs.c:16139
        sf->arg_count = b->arg_count;
    8000f334:	f6d42823          	sw	a3,-144(s0)
quickjs-nuttx/quickjs.c:16134
        arg_buf = local_buf;
    8000f338:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16141
    var_buf = local_buf + arg_allocated_size;
    8000f33a:	777d                	lui	a4,0xfffff
    8000f33c:	63870713          	addi	a4,a4,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8000f340:	9722                	add	a4,a4,s0
    8000f342:	6318                	ld	a4,0(a4)
    8000f344:	00499793          	slli	a5,s3,0x4
quickjs-nuttx/quickjs.c:16146
        var_buf[i] = JS_UNDEFINED;
    8000f348:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:16141
    var_buf = local_buf + arg_allocated_size;
    8000f34a:	97ba                	add	a5,a5,a4
    8000f34c:	777d                	lui	a4,0xfffff
    8000f34e:	66870713          	addi	a4,a4,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8000f352:	9722                	add	a4,a4,s0
    8000f354:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16142
    sf->var_buf = var_buf;
    8000f356:	631c                	ld	a5,0(a4)
    8000f358:	f4f43823          	sd	a5,-176(s0)
quickjs-nuttx/quickjs.c:16143
    sf->arg_buf = arg_buf;
    8000f35c:	77fd                	lui	a5,0xfffff
    8000f35e:	65878793          	addi	a5,a5,1624 # fffffffffffff658 <_ebss+0xffffffff7fefe4f2>
    8000f362:	97a2                	add	a5,a5,s0
    8000f364:	639c                	ld	a5,0(a5)
    8000f366:	f4f43423          	sd	a5,-184(s0)
quickjs-nuttx/quickjs.c:16145
    for(i = 0; i < b->var_count; i++)
    8000f36a:	631c                	ld	a5,0(a4)
    8000f36c:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:16145 (discriminator 1)
    8000f36e:	042dd303          	lhu	t1,66(s11)
    8000f372:	08674863          	blt	a4,t1,8000f402 <JS_CallInternal+0x494>
quickjs-nuttx/quickjs.c:16148
    stack_buf = var_buf + b->var_count;
    8000f376:	77fd                	lui	a5,0xfffff
    8000f378:	66878793          	addi	a5,a5,1640 # fffffffffffff668 <_ebss+0xffffffff7fefe502>
    8000f37c:	97a2                	add	a5,a5,s0
    8000f37e:	639c                	ld	a5,0(a5)
    8000f380:	0312                	slli	t1,t1,0x4
quickjs-nuttx/quickjs.c:16152
    rt->current_stack_frame = sf;
    8000f382:	777d                	lui	a4,0xfffff
quickjs-nuttx/quickjs.c:16148
    stack_buf = var_buf + b->var_count;
    8000f384:	00678cb3          	add	s9,a5,t1
quickjs-nuttx/quickjs.c:16151
    sf->prev_frame = rt->current_stack_frame;
    8000f388:	77fd                	lui	a5,0xfffff
    8000f38a:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f38e:	97a2                	add	a5,a5,s0
    8000f390:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16152
    rt->current_stack_frame = sf;
    8000f392:	64870713          	addi	a4,a4,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f396:	9722                	add	a4,a4,s0
quickjs-nuttx/quickjs.c:16151
    sf->prev_frame = rt->current_stack_frame;
    8000f398:	7ffc                	ld	a5,248(a5)
quickjs-nuttx/quickjs.c:16152
    rt->current_stack_frame = sf;
    8000f39a:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:16150
    pc = b->byte_code_buf;
    8000f39c:	020dbd03          	ld	s10,32(s11)
quickjs-nuttx/quickjs.c:16151
    sf->prev_frame = rt->current_stack_frame;
    8000f3a0:	f2f43823          	sd	a5,-208(s0)
quickjs-nuttx/quickjs.c:16152
    rt->current_stack_frame = sf;
    8000f3a4:	f3040793          	addi	a5,s0,-208
    8000f3a8:	ff7c                	sd	a5,248(a4)
quickjs-nuttx/quickjs.c:16148
    stack_buf = var_buf + b->var_count;
    8000f3aa:	777d                	lui	a4,0xfffff
    8000f3ac:	60070713          	addi	a4,a4,1536 # fffffffffffff600 <_ebss+0xffffffff7fefe49a>
    8000f3b0:	9722                	add	a4,a4,s0
    8000f3b2:	01973023          	sd	s9,0(a4)
quickjs-nuttx/quickjs.c:16153
    ctx = b->realm; /* set the current realm */
    8000f3b6:	777d                	lui	a4,0xfffff
    8000f3b8:	60870713          	addi	a4,a4,1544 # fffffffffffff608 <_ebss+0xffffffff7fefe4a2>
    8000f3bc:	9722                	add	a4,a4,s0
    8000f3be:	01273023          	sd	s2,0(a4)
quickjs-nuttx/quickjs.c:16043
    JSStackFrame sf_s, *sf = &sf_s;
    8000f3c2:	777d                	lui	a4,0xfffff
quickjs-nuttx/quickjs.c:16153
    ctx = b->realm; /* set the current realm */
    8000f3c4:	048db483          	ld	s1,72(s11)
quickjs-nuttx/quickjs.c:16043
    JSStackFrame sf_s, *sf = &sf_s;
    8000f3c8:	66070713          	addi	a4,a4,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8000f3cc:	b351                	j	8000f150 <JS_CallInternal+0x1e2>
quickjs-nuttx/quickjs.c:16136 (discriminator 3)
            arg_buf[i] = JS_DupValue(caller_ctx, argv[i]);
    8000f3ce:	601c                	ld	a5,0(s0)
    8000f3d0:	004a9a13          	slli	s4,s5,0x4
    8000f3d4:	0a85                	addi	s5,s5,1
    8000f3d6:	97d2                	add	a5,a5,s4
    8000f3d8:	6388                	ld	a0,0(a5)
    8000f3da:	678c                	ld	a1,8(a5)
    8000f3dc:	83efb0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000f3e0:	77fd                	lui	a5,0xfffff
    8000f3e2:	63878793          	addi	a5,a5,1592 # fffffffffffff638 <_ebss+0xffffffff7fefe4d2>
    8000f3e6:	97a2                	add	a5,a5,s0
    8000f3e8:	639c                	ld	a5,0(a5)
    8000f3ea:	9a3e                	add	s4,s4,a5
    8000f3ec:	00aa3023          	sd	a0,0(s4)
    8000f3f0:	00ba3423          	sd	a1,8(s4)
quickjs-nuttx/quickjs.c:16135 (discriminator 3)
        for(i = 0; i < n; i++)
    8000f3f4:	b709                	j	8000f2f6 <JS_CallInternal+0x388>
quickjs-nuttx/quickjs.c:16138 (discriminator 2)
            arg_buf[i] = JS_UNDEFINED;
    8000f3f6:	0007b023          	sd	zero,0(a5)
    8000f3fa:	e790                	sd	a2,8(a5)
quickjs-nuttx/quickjs.c:16137 (discriminator 2)
        for(; i < b->arg_count; i++)
    8000f3fc:	2705                	addiw	a4,a4,1
    8000f3fe:	07c1                	addi	a5,a5,16
    8000f400:	bf29                	j	8000f31a <JS_CallInternal+0x3ac>
quickjs-nuttx/quickjs.c:16146 (discriminator 3)
        var_buf[i] = JS_UNDEFINED;
    8000f402:	0007b023          	sd	zero,0(a5)
    8000f406:	e794                	sd	a3,8(a5)
quickjs-nuttx/quickjs.c:16145 (discriminator 3)
    for(i = 0; i < b->var_count; i++)
    8000f408:	2705                	addiw	a4,a4,1
    8000f40a:	07c1                	addi	a5,a5,16
    8000f40c:	b78d                	j	8000f36e <JS_CallInternal+0x400>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8000f40e:	001d4703          	lbu	a4,1(s10)
    8000f412:	000d4783          	lbu	a5,0(s10)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8000f416:	80043823          	sd	zero,-2032(s0)
get_u32():
quickjs-nuttx/cutils.h:170
    8000f41a:	0722                	slli	a4,a4,0x8
    8000f41c:	8f5d                	or	a4,a4,a5
    8000f41e:	002d4783          	lbu	a5,2(s10)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000f422:	80043c23          	sd	zero,-2024(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16162
            *sp++ = JS_NewInt32(ctx, get_u32(pc));
    8000f426:	0cc1                	addi	s9,s9,16
get_u32():
quickjs-nuttx/cutils.h:170
    8000f428:	07c2                	slli	a5,a5,0x10
    8000f42a:	8f5d                	or	a4,a4,a5
    8000f42c:	003d4783          	lbu	a5,3(s10)
    8000f430:	ee043c23          	sd	zero,-264(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16164
            BREAK;
    8000f434:	0d15                	addi	s10,s10,5
get_u32():
quickjs-nuttx/cutils.h:170
    8000f436:	07e2                	slli	a5,a5,0x18
    8000f438:	8fd9                	or	a5,a5,a4
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000f43a:	80f42823          	sw	a5,-2032(s0)
    8000f43e:	81043783          	ld	a5,-2032(s0)
    8000f442:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16162
            *sp++ = JS_NewInt32(ctx, get_u32(pc));
    8000f446:	fefcb823          	sd	a5,-16(s9)
    8000f44a:	ef843783          	ld	a5,-264(s0)
    8000f44e:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16164
            BREAK;
    8000f452:	fffd4b03          	lbu	s6,-1(s10)
    8000f456:	00060797          	auipc	a5,0x60
    8000f45a:	9da78793          	addi	a5,a5,-1574 # 8006ee30 <dispatch_table.4>
    8000f45e:	003b1713          	slli	a4,s6,0x3
    8000f462:	97ba                	add	a5,a5,a4
    8000f464:	639c                	ld	a5,0(a5)
    8000f466:	b381                	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    8000f468:	001d4703          	lbu	a4,1(s10)
    8000f46c:	000d4783          	lbu	a5,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16166
            *sp++ = JS_DupValue(ctx, b->cpool[get_u32(pc)]);
    8000f470:	010c8993          	addi	s3,s9,16
get_u32():
quickjs-nuttx/cutils.h:170
    8000f474:	0722                	slli	a4,a4,0x8
    8000f476:	8f5d                	or	a4,a4,a5
    8000f478:	002d4783          	lbu	a5,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16168
            BREAK;
    8000f47c:	0d15                	addi	s10,s10,5
get_u32():
quickjs-nuttx/cutils.h:170
    8000f47e:	07c2                	slli	a5,a5,0x10
    8000f480:	8f5d                	or	a4,a4,a5
    8000f482:	ffed4783          	lbu	a5,-2(s10)
    8000f486:	07e2                	slli	a5,a5,0x18
JS_CallInternal():
quickjs-nuttx/quickjs.c:16166
            *sp++ = JS_DupValue(ctx, b->cpool[get_u32(pc)]);
    8000f488:	8fd9                	or	a5,a5,a4
    8000f48a:	050db703          	ld	a4,80(s11)
    8000f48e:	0792                	slli	a5,a5,0x4
    8000f490:	97ba                	add	a5,a5,a4
    8000f492:	6388                	ld	a0,0(a5)
    8000f494:	678c                	ld	a1,8(a5)
    8000f496:	f85fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000f49a:	00acb023          	sd	a0,0(s9)
    8000f49e:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16168
            BREAK;
    8000f4a2:	fffd4b03          	lbu	s6,-1(s10)
    8000f4a6:	00060797          	auipc	a5,0x60
    8000f4aa:	98a78793          	addi	a5,a5,-1654 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16166
            *sp++ = JS_DupValue(ctx, b->cpool[get_u32(pc)]);
    8000f4ae:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16168
            BREAK;
    8000f4b0:	003b1713          	slli	a4,s6,0x3
    8000f4b4:	97ba                	add	a5,a5,a4
    8000f4b6:	639c                	ld	a5,0(a5)
    8000f4b8:	b1fd                	j	8000f1a6 <JS_CallInternal+0x238>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000f4ba:	82043023          	sd	zero,-2016(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16179
            *sp++ = JS_NewInt32(ctx, opcode - OP_push_0);
    8000f4be:	f49b099b          	addiw	s3,s6,-183
    8000f4c2:	83342023          	sw	s3,-2016(s0)
    8000f4c6:	82043783          	ld	a5,-2016(s0)
    8000f4ca:	ee043c23          	sd	zero,-264(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000f4ce:	82043423          	sd	zero,-2008(s0)
    8000f4d2:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16179
    8000f4d6:	00fcb023          	sd	a5,0(s9)
    8000f4da:	ef843783          	ld	a5,-264(s0)
    8000f4de:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16180
            BREAK;
    8000f4e0:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16179
            *sp++ = JS_NewInt32(ctx, opcode - OP_push_0);
    8000f4e2:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16180
            BREAK;
    8000f4e6:	fffd4b03          	lbu	s6,-1(s10)
    8000f4ea:	00060797          	auipc	a5,0x60
    8000f4ee:	94678793          	addi	a5,a5,-1722 # 8006ee30 <dispatch_table.4>
    8000f4f2:	003b1713          	slli	a4,s6,0x3
    8000f4f6:	97ba                	add	a5,a5,a4
    8000f4f8:	639c                	ld	a5,0(a5)
    8000f4fa:	b175                	j	8000f1a6 <JS_CallInternal+0x238>
    8000f4fc:	bf7d                	j	8000f4ba <JS_CallInternal+0x54c>
    8000f4fe:	bf75                	j	8000f4ba <JS_CallInternal+0x54c>
    8000f500:	bf6d                	j	8000f4ba <JS_CallInternal+0x54c>
    8000f502:	bf65                	j	8000f4ba <JS_CallInternal+0x54c>
    8000f504:	bf5d                	j	8000f4ba <JS_CallInternal+0x54c>
    8000f506:	bf55                	j	8000f4ba <JS_CallInternal+0x54c>
    8000f508:	bf4d                	j	8000f4ba <JS_CallInternal+0x54c>
get_i8():
quickjs-nuttx/cutils.h:205
    return (int8_t)*tab;
    8000f50a:	000d0783          	lb	a5,0(s10)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000f50e:	82043823          	sd	zero,-2000(s0)
    8000f512:	ee043c23          	sd	zero,-264(s0)
    8000f516:	82f42823          	sw	a5,-2000(s0)
    8000f51a:	83043783          	ld	a5,-2000(s0)
    8000f51e:	82043c23          	sd	zero,-1992(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16182
            *sp++ = JS_NewInt32(ctx, get_i8(pc));
    8000f522:	0cc1                	addi	s9,s9,16
    8000f524:	eef43823          	sd	a5,-272(s0)
    8000f528:	fefcb823          	sd	a5,-16(s9)
    8000f52c:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:16184
            BREAK;
    8000f530:	0d09                	addi	s10,s10,2
quickjs-nuttx/quickjs.c:16182
            *sp++ = JS_NewInt32(ctx, get_i8(pc));
    8000f532:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16184
            BREAK;
    8000f536:	fffd4b03          	lbu	s6,-1(s10)
    8000f53a:	00060797          	auipc	a5,0x60
    8000f53e:	8f678793          	addi	a5,a5,-1802 # 8006ee30 <dispatch_table.4>
    8000f542:	003b1713          	slli	a4,s6,0x3
    8000f546:	97ba                	add	a5,a5,a4
    8000f548:	639c                	ld	a5,0(a5)
    8000f54a:	b9b1                	j	8000f1a6 <JS_CallInternal+0x238>
get_i16():
quickjs-nuttx/cutils.h:190
    return (int16_t)((const struct packed_u16 *)tab)->v;
    8000f54c:	001d4783          	lbu	a5,1(s10)
    8000f550:	000d4703          	lbu	a4,0(s10)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000f554:	84043023          	sd	zero,-1984(s0)
get_i16():
quickjs-nuttx/cutils.h:190
    8000f558:	07a2                	slli	a5,a5,0x8
    8000f55a:	8fd9                	or	a5,a5,a4
    8000f55c:	0107979b          	slliw	a5,a5,0x10
    8000f560:	4107d79b          	sraiw	a5,a5,0x10
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000f564:	84f42023          	sw	a5,-1984(s0)
    8000f568:	84043783          	ld	a5,-1984(s0)
    8000f56c:	ee043c23          	sd	zero,-264(s0)
    8000f570:	84043423          	sd	zero,-1976(s0)
    8000f574:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16186
            *sp++ = JS_NewInt32(ctx, get_i16(pc));
    8000f578:	00fcb023          	sd	a5,0(s9)
    8000f57c:	ef843783          	ld	a5,-264(s0)
    8000f580:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16188
            BREAK;
    8000f582:	0d0d                	addi	s10,s10,3
quickjs-nuttx/quickjs.c:16186
            *sp++ = JS_NewInt32(ctx, get_i16(pc));
    8000f584:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16188
            BREAK;
    8000f588:	fffd4b03          	lbu	s6,-1(s10)
    8000f58c:	00060797          	auipc	a5,0x60
    8000f590:	8a478793          	addi	a5,a5,-1884 # 8006ee30 <dispatch_table.4>
    8000f594:	003b1713          	slli	a4,s6,0x3
    8000f598:	97ba                	add	a5,a5,a4
    8000f59a:	639c                	ld	a5,0(a5)
    8000f59c:	b129                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16190
            *sp++ = JS_DupValue(ctx, b->cpool[*pc++]);
    8000f59e:	000d4703          	lbu	a4,0(s10)
    8000f5a2:	050db783          	ld	a5,80(s11)
    8000f5a6:	010c8993          	addi	s3,s9,16
    8000f5aa:	0712                	slli	a4,a4,0x4
    8000f5ac:	97ba                	add	a5,a5,a4
    8000f5ae:	6388                	ld	a0,0(a5)
    8000f5b0:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:16191
            BREAK;
    8000f5b2:	0d09                	addi	s10,s10,2
quickjs-nuttx/quickjs.c:16190
            *sp++ = JS_DupValue(ctx, b->cpool[*pc++]);
    8000f5b4:	e67fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000f5b8:	00acb023          	sd	a0,0(s9)
    8000f5bc:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16191
            BREAK;
    8000f5c0:	fffd4b03          	lbu	s6,-1(s10)
    8000f5c4:	00060797          	auipc	a5,0x60
    8000f5c8:	86c78793          	addi	a5,a5,-1940 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16190
            *sp++ = JS_DupValue(ctx, b->cpool[*pc++]);
    8000f5cc:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16191
            BREAK;
    8000f5ce:	003b1713          	slli	a4,s6,0x3
    8000f5d2:	97ba                	add	a5,a5,a4
    8000f5d4:	639c                	ld	a5,0(a5)
    8000f5d6:	bec1                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16193
            *sp++ = js_closure(ctx, JS_DupValue(ctx, b->cpool[*pc++]), var_refs, sf);
    8000f5d8:	000d4703          	lbu	a4,0(s10)
    8000f5dc:	050db783          	ld	a5,80(s11)
    8000f5e0:	001d0a13          	addi	s4,s10,1
    8000f5e4:	0712                	slli	a4,a4,0x4
    8000f5e6:	97ba                	add	a5,a5,a4
    8000f5e8:	6388                	ld	a0,0(a5)
    8000f5ea:	678c                	ld	a1,8(a5)
    8000f5ec:	010c8993          	addi	s3,s9,16
    8000f5f0:	e2bfa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000f5f4:	f8040793          	addi	a5,s0,-128
    8000f5f8:	97ca                	add	a5,a5,s2
    8000f5fa:	74a7b823          	sd	a0,1872(a5)
    8000f5fe:	74b7bc23          	sd	a1,1880(a5)
    8000f602:	77fd                	lui	a5,0xfffff
    8000f604:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8000f608:	97a2                	add	a5,a5,s0
    8000f60a:	6398                	ld	a4,0(a5)
    8000f60c:	77fd                	lui	a5,0xfffff
    8000f60e:	65078793          	addi	a5,a5,1616 # fffffffffffff650 <_ebss+0xffffffff7fefe4ea>
    8000f612:	97a2                	add	a5,a5,s0
    8000f614:	6394                	ld	a3,0(a5)
    8000f616:	862e                	mv	a2,a1
    8000f618:	85aa                	mv	a1,a0
    8000f61a:	8526                	mv	a0,s1
    8000f61c:	650210ef          	jal	ra,80030c6c <js_closure>
    8000f620:	00bcb423          	sd	a1,8(s9)
    8000f624:	00acb023          	sd	a0,0(s9)
quickjs-nuttx/quickjs.c:16194
            if (unlikely(JS_IsException(sp[-1])))
    8000f628:	2581                	sext.w	a1,a1
    8000f62a:	4799                	li	a5,6
    8000f62c:	00f59463          	bne	a1,a5,8000f634 <JS_CallInternal+0x6c6>
    8000f630:	2c00706f          	j	800168f0 <JS_CallInternal+0x7982>
quickjs-nuttx/quickjs.c:16196
            BREAK;
    8000f634:	001d4b03          	lbu	s6,1(s10)
    8000f638:	0005f797          	auipc	a5,0x5f
    8000f63c:	7f878793          	addi	a5,a5,2040 # 8006ee30 <dispatch_table.4>
    8000f640:	8cce                	mv	s9,s3
    8000f642:	003b1713          	slli	a4,s6,0x3
    8000f646:	97ba                	add	a5,a5,a4
    8000f648:	639c                	ld	a5,0(a5)
    8000f64a:	0d09                	addi	s10,s10,2
    8000f64c:	bea9                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16198
            *sp++ = JS_AtomToString(ctx, JS_ATOM_empty_string);
    8000f64e:	02f00593          	li	a1,47
    8000f652:	8526                	mv	a0,s1
    8000f654:	47e100ef          	jal	ra,8001fad2 <JS_AtomToString>
    8000f658:	00acb023          	sd	a0,0(s9)
    8000f65c:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16199
            BREAK;
    8000f660:	000d4b03          	lbu	s6,0(s10)
    8000f664:	0005f797          	auipc	a5,0x5f
    8000f668:	7cc78793          	addi	a5,a5,1996 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16198
            *sp++ = JS_AtomToString(ctx, JS_ATOM_empty_string);
    8000f66c:	010c8993          	addi	s3,s9,16
quickjs-nuttx/quickjs.c:16199
            BREAK;
    8000f670:	003b1713          	slli	a4,s6,0x3
    8000f674:	97ba                	add	a5,a5,a4
    8000f676:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:16198
            *sp++ = JS_AtomToString(ctx, JS_ATOM_empty_string);
    8000f678:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16199
            BREAK;
    8000f67a:	0d05                	addi	s10,s10,1
    8000f67c:	b62d                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16204
                val = JS_GetProperty(ctx, sp[-1], JS_ATOM_length);
    8000f67e:	ff0cb703          	ld	a4,-16(s9)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
                               JSAtom prop, JSValueConst receiver,
                               JS_BOOL throw_ref_error);
static js_force_inline JSValue JS_GetProperty(JSContext *ctx, JSValueConst this_obj,
                                              JSAtom prop)
{
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8000f682:	4801                	li	a6,0
    8000f684:	03000693          	li	a3,48
    8000f688:	eee43823          	sd	a4,-272(s0)
    8000f68c:	ff8cb783          	ld	a5,-8(s9)
    8000f690:	85ba                	mv	a1,a4
    8000f692:	8526                	mv	a0,s1
    8000f694:	863e                	mv	a2,a5
    8000f696:	eef43c23          	sd	a5,-264(s0)
    8000f69a:	410070ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8000f69e:	84b43c23          	sd	a1,-1960(s0)
    8000f6a2:	ecb43c23          	sd	a1,-296(s0)
    8000f6a6:	84a43823          	sd	a0,-1968(s0)
    8000f6aa:	eca43823          	sd	a0,-304(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16205
                if (unlikely(JS_IsException(val)))
    8000f6ae:	2581                	sext.w	a1,a1
    8000f6b0:	4799                	li	a5,6
    8000f6b2:	14f58663          	beq	a1,a5,8000f7fe <JS_CallInternal+0x890>
quickjs-nuttx/quickjs.c:16207
                JS_FreeValue(ctx, sp[-1]);
    8000f6b6:	ff0cb583          	ld	a1,-16(s9)
    8000f6ba:	ff8cb603          	ld	a2,-8(s9)
    8000f6be:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16210
            BREAK;
    8000f6c0:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16207
                JS_FreeValue(ctx, sp[-1]);
    8000f6c2:	8dcfc0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16208
                sp[-1] = val;
    8000f6c6:	ed043783          	ld	a5,-304(s0)
    8000f6ca:	fefcb823          	sd	a5,-16(s9)
    8000f6ce:	ed843783          	ld	a5,-296(s0)
    8000f6d2:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16210
            BREAK;
    8000f6d6:	fffd4b03          	lbu	s6,-1(s10)
    8000f6da:	0005f797          	auipc	a5,0x5f
    8000f6de:	75678793          	addi	a5,a5,1878 # 8006ee30 <dispatch_table.4>
    8000f6e2:	003b1713          	slli	a4,s6,0x3
    8000f6e6:	97ba                	add	a5,a5,a4
    8000f6e8:	639c                	ld	a5,0(a5)
    8000f6ea:	bc75                	j	8000f1a6 <JS_CallInternal+0x238>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8000f6ec:	001d4783          	lbu	a5,1(s10)
    8000f6f0:	000d4583          	lbu	a1,0(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16213
            *sp++ = JS_AtomToValue(ctx, get_u32(pc));
    8000f6f4:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    8000f6f6:	07a2                	slli	a5,a5,0x8
    8000f6f8:	8fcd                	or	a5,a5,a1
    8000f6fa:	002d4583          	lbu	a1,2(s10)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16213
    8000f6fe:	010c8993          	addi	s3,s9,16
quickjs-nuttx/quickjs.c:16215
            BREAK;
    8000f702:	0d15                	addi	s10,s10,5
get_u32():
quickjs-nuttx/cutils.h:170
    8000f704:	05c2                	slli	a1,a1,0x10
    8000f706:	8fcd                	or	a5,a5,a1
    8000f708:	ffed4583          	lbu	a1,-2(s10)
    8000f70c:	05e2                	slli	a1,a1,0x18
    8000f70e:	8ddd                	or	a1,a1,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:16213
            *sp++ = JS_AtomToValue(ctx, get_u32(pc));
    8000f710:	2581                	sext.w	a1,a1
    8000f712:	3b6100ef          	jal	ra,8001fac8 <JS_AtomToValue>
    8000f716:	00acb023          	sd	a0,0(s9)
    8000f71a:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16215
            BREAK;
    8000f71e:	fffd4b03          	lbu	s6,-1(s10)
    8000f722:	0005f797          	auipc	a5,0x5f
    8000f726:	70e78793          	addi	a5,a5,1806 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16213
            *sp++ = JS_AtomToValue(ctx, get_u32(pc));
    8000f72a:	8cce                	mv	s9,s3
quickjs-nuttx/quickjs.c:16215
            BREAK;
    8000f72c:	003b1713          	slli	a4,s6,0x3
    8000f730:	97ba                	add	a5,a5,a4
    8000f732:	639c                	ld	a5,0(a5)
    8000f734:	bc8d                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16217
            *sp++ = JS_UNDEFINED;
    8000f736:	478d                	li	a5,3
    8000f738:	00fcb423          	sd	a5,8(s9)
    8000f73c:	000cb023          	sd	zero,0(s9)
quickjs-nuttx/quickjs.c:16218
            BREAK;
    8000f740:	000d4b03          	lbu	s6,0(s10)
    8000f744:	0005f797          	auipc	a5,0x5f
    8000f748:	6ec78793          	addi	a5,a5,1772 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16217
            *sp++ = JS_UNDEFINED;
    8000f74c:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16218
            BREAK;
    8000f74e:	003b1713          	slli	a4,s6,0x3
    8000f752:	97ba                	add	a5,a5,a4
    8000f754:	639c                	ld	a5,0(a5)
    8000f756:	0d05                	addi	s10,s10,1
    8000f758:	b4b9                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16220
            *sp++ = JS_NULL;
    8000f75a:	4789                	li	a5,2
    8000f75c:	00fcb423          	sd	a5,8(s9)
    8000f760:	000cb023          	sd	zero,0(s9)
quickjs-nuttx/quickjs.c:16221
            BREAK;
    8000f764:	000d4b03          	lbu	s6,0(s10)
    8000f768:	0005f797          	auipc	a5,0x5f
    8000f76c:	6c878793          	addi	a5,a5,1736 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16220
            *sp++ = JS_NULL;
    8000f770:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16221
            BREAK;
    8000f772:	003b1713          	slli	a4,s6,0x3
    8000f776:	97ba                	add	a5,a5,a4
    8000f778:	639c                	ld	a5,0(a5)
    8000f77a:	0d05                	addi	s10,s10,1
    8000f77c:	b42d                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16226
                if (!(b->js_mode & JS_MODE_STRICT)) {
    8000f77e:	018dc783          	lbu	a5,24(s11)
    8000f782:	8b85                	andi	a5,a5,1
    8000f784:	16079563          	bnez	a5,8000f8ee <JS_CallInternal+0x980>
quickjs-nuttx/quickjs.c:16227
                    uint32_t tag = JS_VALUE_GET_TAG(this_obj);
    8000f788:	f8040793          	addi	a5,s0,-128
    8000f78c:	01278733          	add	a4,a5,s2
    8000f790:	70873603          	ld	a2,1800(a4)
quickjs-nuttx/quickjs.c:16228
                    if (likely(tag == JS_TAG_OBJECT))
    8000f794:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:16227
                    uint32_t tag = JS_VALUE_GET_TAG(this_obj);
    8000f796:	0006079b          	sext.w	a5,a2
quickjs-nuttx/quickjs.c:16228
                    if (likely(tag == JS_TAG_OBJECT))
    8000f79a:	14d78a63          	beq	a5,a3,8000f8ee <JS_CallInternal+0x980>
quickjs-nuttx/quickjs.c:16230
                    if (tag == JS_TAG_NULL || tag == JS_TAG_UNDEFINED) {
    8000f79e:	37f9                	addiw	a5,a5,-2
    8000f7a0:	4685                	li	a3,1
    8000f7a2:	04f6e163          	bltu	a3,a5,8000f7e4 <JS_CallInternal+0x876>
quickjs-nuttx/quickjs.c:16231
                        val = JS_DupValue(ctx, ctx->global_obj);
    8000f7a6:	1684b503          	ld	a0,360(s1)
    8000f7aa:	1704b583          	ld	a1,368(s1)
quickjs-nuttx/quickjs.c:16239
                    val = JS_DupValue(ctx, this_obj);
    8000f7ae:	c6dfa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000f7b2:	eea43823          	sd	a0,-272(s0)
    8000f7b6:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:16241 (discriminator 3)
                *sp++ = val;
    8000f7ba:	ef043783          	ld	a5,-272(s0)
    8000f7be:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16243 (discriminator 3)
            BREAK;
    8000f7c0:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16241 (discriminator 3)
                *sp++ = val;
    8000f7c2:	fefcb823          	sd	a5,-16(s9)
    8000f7c6:	ef843783          	ld	a5,-264(s0)
    8000f7ca:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16243 (discriminator 3)
            BREAK;
    8000f7ce:	fffd4b03          	lbu	s6,-1(s10)
    8000f7d2:	0005f797          	auipc	a5,0x5f
    8000f7d6:	65e78793          	addi	a5,a5,1630 # 8006ee30 <dispatch_table.4>
    8000f7da:	003b1713          	slli	a4,s6,0x3
    8000f7de:	97ba                	add	a5,a5,a4
    8000f7e0:	639c                	ld	a5,0(a5)
    8000f7e2:	b2d1                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16233
                        val = JS_ToObject(ctx, this_obj);
    8000f7e4:	70073583          	ld	a1,1792(a4)
    8000f7e8:	8526                	mv	a0,s1
    8000f7ea:	0d1200ef          	jal	ra,800300ba <JS_ToObject>
    8000f7ee:	eeb43c23          	sd	a1,-264(s0)
    8000f7f2:	eea43823          	sd	a0,-272(s0)
quickjs-nuttx/quickjs.c:16234
                        if (JS_IsException(val))
    8000f7f6:	2581                	sext.w	a1,a1
    8000f7f8:	4799                	li	a5,6
    8000f7fa:	fcf590e3          	bne	a1,a5,8000f7ba <JS_CallInternal+0x84c>
quickjs-nuttx/quickjs.c:18521
    if (is_backtrace_needed(ctx, rt->current_exception)) {
    8000f7fe:	77fd                	lui	a5,0xfffff
    8000f800:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f804:	97a2                	add	a5,a5,s0
    8000f806:	639c                	ld	a5,0(a5)
is_backtrace_needed():
quickjs-nuttx/quickjs.c:6592
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8000f808:	56fd                	li	a3,-1
    8000f80a:	73f8                	ld	a4,224(a5)
    8000f80c:	77fd                	lui	a5,0xfffff
    8000f80e:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f812:	97a2                	add	a5,a5,s0
    8000f814:	639c                	ld	a5,0(a5)
    8000f816:	ece43023          	sd	a4,-320(s0)
    8000f81a:	77fc                	ld	a5,232(a5)
    8000f81c:	ecf43423          	sd	a5,-312(s0)
    8000f820:	2781                	sext.w	a5,a5
    8000f822:	06d79563          	bne	a5,a3,8000f88c <JS_CallInternal+0x91e>
quickjs-nuttx/quickjs.c:6595
    if (p->class_id != JS_CLASS_ERROR)
    8000f826:	00675683          	lhu	a3,6(a4)
    8000f82a:	478d                	li	a5,3
    8000f82c:	06f69063          	bne	a3,a5,8000f88c <JS_CallInternal+0x91e>
find_own_property1():
quickjs-nuttx/quickjs.c:5199
    sh = p->shape;
    8000f830:	6f18                	ld	a4,24(a4)
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    8000f832:	56f1                	li	a3,-4
quickjs-nuttx/quickjs.c:5205
        if (likely(pr->atom == atom)) {
    8000f834:	03600613          	li	a2,54
quickjs-nuttx/quickjs.c:5200
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8000f838:	531c                	lw	a5,32(a4)
    8000f83a:	0367f793          	andi	a5,a5,54
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    8000f83e:	0785                	addi	a5,a5,1
    8000f840:	02d787b3          	mul	a5,a5,a3
quickjs-nuttx/quickjs.c:5208
        h = pr->hash_next;
    8000f844:	040006b7          	lui	a3,0x4000
    8000f848:	16fd                	addi	a3,a3,-1
quickjs-nuttx/quickjs.c:5201
    h = prop_hash_end(sh)[-h - 1];
    8000f84a:	97ba                	add	a5,a5,a4
    8000f84c:	0007e783          	lwu	a5,0(a5)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8000f850:	04070713          	addi	a4,a4,64
find_own_property1():
quickjs-nuttx/quickjs.c:5203
    while (h) {
    8000f854:	c399                	beqz	a5,8000f85a <JS_CallInternal+0x8ec>
    8000f856:	10c0706f          	j	80016962 <JS_CallInternal+0x79f4>
JS_CallInternal():
quickjs-nuttx/quickjs.c:18525
        sf->cur_pc = pc;
    8000f85a:	77fd                	lui	a5,0xfffff
    8000f85c:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
quickjs-nuttx/quickjs.c:18526
        build_backtrace(ctx, rt->current_exception, NULL, 0, 0);
    8000f860:	767d                	lui	a2,0xfffff
quickjs-nuttx/quickjs.c:18525
        sf->cur_pc = pc;
    8000f862:	97a2                	add	a5,a5,s0
quickjs-nuttx/quickjs.c:18526
        build_backtrace(ctx, rt->current_exception, NULL, 0, 0);
    8000f864:	64860613          	addi	a2,a2,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
quickjs-nuttx/quickjs.c:18525
        sf->cur_pc = pc;
    8000f868:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:18526
        build_backtrace(ctx, rt->current_exception, NULL, 0, 0);
    8000f86a:	9622                	add	a2,a2,s0
    8000f86c:	6210                	ld	a2,0(a2)
quickjs-nuttx/quickjs.c:18525
        sf->cur_pc = pc;
    8000f86e:	03a7bc23          	sd	s10,56(a5)
quickjs-nuttx/quickjs.c:18526
        build_backtrace(ctx, rt->current_exception, NULL, 0, 0);
    8000f872:	4701                	li	a4,0
    8000f874:	726c                	ld	a1,224(a2)
    8000f876:	767d                	lui	a2,0xfffff
    8000f878:	64860613          	addi	a2,a2,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f87c:	9622                	add	a2,a2,s0
    8000f87e:	6210                	ld	a2,0(a2)
    8000f880:	4781                	li	a5,0
    8000f882:	4681                	li	a3,0
    8000f884:	7670                	ld	a2,232(a2)
    8000f886:	8526                	mv	a0,s1
    8000f888:	6f9150ef          	jal	ra,80025780 <build_backtrace>
quickjs-nuttx/quickjs.c:18528
    if (!JS_IsUncatchableError(ctx, rt->current_exception)) {
    8000f88c:	77fd                	lui	a5,0xfffff
    8000f88e:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f892:	97a2                	add	a5,a5,s0
    8000f894:	639c                	ld	a5,0(a5)
JS_IsUncatchableError():
quickjs-nuttx/quickjs.c:9785
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000f896:	56fd                	li	a3,-1
    8000f898:	73f8                	ld	a4,224(a5)
    8000f89a:	77fd                	lui	a5,0xfffff
    8000f89c:	64878793          	addi	a5,a5,1608 # fffffffffffff648 <_ebss+0xffffffff7fefe4e2>
    8000f8a0:	97a2                	add	a5,a5,s0
    8000f8a2:	639c                	ld	a5,0(a5)
    8000f8a4:	b0e43023          	sd	a4,-1280(s0)
    8000f8a8:	77fc                	ld	a5,232(a5)
    8000f8aa:	b0f43423          	sd	a5,-1272(s0)
    8000f8ae:	2781                	sext.w	a5,a5
    8000f8b0:	00d78463          	beq	a5,a3,8000f8b8 <JS_CallInternal+0x94a>
    8000f8b4:	1760706f          	j	80016a2a <JS_CallInternal+0x7abc>
quickjs-nuttx/quickjs.c:9788
    return p->class_id == JS_CLASS_ERROR && p->is_uncatchable_error;
    8000f8b8:	6318                	ld	a4,0(a4)
    8000f8ba:	57e5                	li	a5,-7
    8000f8bc:	17b6                	slli	a5,a5,0x2d
    8000f8be:	8f7d                	and	a4,a4,a5
JS_CallInternal():
quickjs-nuttx/quickjs.c:18528
    if (!JS_IsUncatchableError(ctx, rt->current_exception)) {
    8000f8c0:	47e5                	li	a5,25
    8000f8c2:	17b6                	slli	a5,a5,0x2d
    8000f8c4:	00f70463          	beq	a4,a5,8000f8cc <JS_CallInternal+0x95e>
    8000f8c8:	1620706f          	j	80016a2a <JS_CallInternal+0x7abc>
quickjs-nuttx/quickjs.c:18548
    ret_val = JS_EXCEPTION;
    8000f8cc:	77fd                	lui	a5,0xfffff
    8000f8ce:	f8040713          	addi	a4,s0,-128
    8000f8d2:	97ba                	add	a5,a5,a4
    8000f8d4:	7207b023          	sd	zero,1824(a5) # fffffffffffff720 <_ebss+0xffffffff7fefe5ba>
    8000f8d8:	7207b423          	sd	zero,1832(a5)
quickjs-nuttx/quickjs.c:18552
    if (b->func_kind != JS_FUNC_NORMAL) {
    8000f8dc:	019dc783          	lbu	a5,25(s11)
quickjs-nuttx/quickjs.c:18548
    ret_val = JS_EXCEPTION;
    8000f8e0:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:18552
    if (b->func_kind != JS_FUNC_NORMAL) {
    8000f8e2:	0307f793          	andi	a5,a5,48
    8000f8e6:	70078ee3          	beqz	a5,80010802 <JS_CallInternal+0x1894>
quickjs-nuttx/quickjs.c:18553
    done_generator:
    8000f8ea:	6330606f          	j	8001671c <JS_CallInternal+0x77ae>
quickjs-nuttx/quickjs.c:16239
                    val = JS_DupValue(ctx, this_obj);
    8000f8ee:	f8040793          	addi	a5,s0,-128
    8000f8f2:	97ca                	add	a5,a5,s2
    8000f8f4:	7007b503          	ld	a0,1792(a5)
    8000f8f8:	7087b583          	ld	a1,1800(a5)
    8000f8fc:	bd4d                	j	8000f7ae <JS_CallInternal+0x840>
quickjs-nuttx/quickjs.c:16245
            *sp++ = JS_FALSE;
    8000f8fe:	4785                	li	a5,1
    8000f900:	00fcb423          	sd	a5,8(s9)
    8000f904:	000cb023          	sd	zero,0(s9)
quickjs-nuttx/quickjs.c:16246
            BREAK;
    8000f908:	000d4b03          	lbu	s6,0(s10)
    8000f90c:	0005f797          	auipc	a5,0x5f
    8000f910:	52478793          	addi	a5,a5,1316 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16245
            *sp++ = JS_FALSE;
    8000f914:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16246
            BREAK;
    8000f916:	003b1713          	slli	a4,s6,0x3
    8000f91a:	97ba                	add	a5,a5,a4
    8000f91c:	639c                	ld	a5,0(a5)
    8000f91e:	0d05                	addi	s10,s10,1
    8000f920:	b059                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16248
            *sp++ = JS_TRUE;
    8000f922:	4785                	li	a5,1
    8000f924:	00fcb023          	sd	a5,0(s9)
    8000f928:	00fcb423          	sd	a5,8(s9)
quickjs-nuttx/quickjs.c:16249
            BREAK;
    8000f92c:	000d4b03          	lbu	s6,0(s10)
    8000f930:	0005f797          	auipc	a5,0x5f
    8000f934:	50078793          	addi	a5,a5,1280 # 8006ee30 <dispatch_table.4>
quickjs-nuttx/quickjs.c:16248
            *sp++ = JS_TRUE;
    8000f938:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16249
            BREAK;
    8000f93a:	003b1713          	slli	a4,s6,0x3
    8000f93e:	97ba                	add	a5,a5,a4
    8000f940:	639c                	ld	a5,0(a5)
    8000f942:	0d05                	addi	s10,s10,1
    8000f944:	b08d                	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16251
            *sp++ = JS_NewObject(ctx);
    8000f946:	8526                	mv	a0,s1
    8000f948:	6dc0c0ef          	jal	ra,8001c024 <JS_NewObject>
    8000f94c:	00bcb423          	sd	a1,8(s9)
    8000f950:	00acb023          	sd	a0,0(s9)
quickjs-nuttx/quickjs.c:16252
            if (unlikely(JS_IsException(sp[-1])))
    8000f954:	2581                	sext.w	a1,a1
    8000f956:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:16251
            *sp++ = JS_NewObject(ctx);
    8000f958:	010c8993          	addi	s3,s9,16
quickjs-nuttx/quickjs.c:16252
            if (unlikely(JS_IsException(sp[-1])))
    8000f95c:	00f59463          	bne	a1,a5,8000f964 <JS_CallInternal+0x9f6>
    8000f960:	7990606f          	j	800168f8 <JS_CallInternal+0x798a>
quickjs-nuttx/quickjs.c:16254
            BREAK;
    8000f964:	000d4b03          	lbu	s6,0(s10)
    8000f968:	0005f797          	auipc	a5,0x5f
    8000f96c:	4c878793          	addi	a5,a5,1224 # 8006ee30 <dispatch_table.4>
    8000f970:	8cce                	mv	s9,s3
    8000f972:	003b1713          	slli	a4,s6,0x3
    8000f976:	97ba                	add	a5,a5,a4
    8000f978:	639c                	ld	a5,0(a5)
    8000f97a:	0d05                	addi	s10,s10,1
    8000f97c:	82bff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16257
                int arg = *pc++;
    8000f980:	777d                	lui	a4,0xfffff
    8000f982:	63070713          	addi	a4,a4,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    8000f986:	001d0793          	addi	a5,s10,1
    8000f98a:	9722                	add	a4,a4,s0
    8000f98c:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:16258
                switch(arg) {
    8000f98e:	000d4703          	lbu	a4,0(s10)
    8000f992:	4799                	li	a5,6
    8000f994:	46e7ea63          	bltu	a5,a4,8000fe08 <JS_CallInternal+0xe9a>
    8000f998:	00271793          	slli	a5,a4,0x2
    8000f99c:	0005a717          	auipc	a4,0x5a
    8000f9a0:	5b070713          	addi	a4,a4,1456 # 80069f4c <qjsc_repl+0x499c>
    8000f9a4:	97ba                	add	a5,a5,a4
    8000f9a6:	439c                	lw	a5,0(a5)
    8000f9a8:	010c8c13          	addi	s8,s9,16
    8000f9ac:	97ba                	add	a5,a5,a4
    8000f9ae:	8782                	jr	a5
js_build_arguments():
quickjs-nuttx/quickjs.c:14726
    val = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8000f9b0:	60bc                	ld	a5,64(s1)
    8000f9b2:	46a1                	li	a3,8
    8000f9b4:	8526                	mv	a0,s1
    8000f9b6:	6b8c                	ld	a1,16(a5)
    8000f9b8:	6f90                	ld	a2,24(a5)
    8000f9ba:	22a0c0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8000f9be:	b0a43823          	sd	a0,-1264(s0)
    8000f9c2:	b0b43c23          	sd	a1,-1256(s0)
quickjs-nuttx/quickjs.c:14728
    if (JS_IsException(val))
    8000f9c6:	0005871b          	sext.w	a4,a1
    8000f9ca:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:14726
    val = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8000f9cc:	8a2a                	mv	s4,a0
    8000f9ce:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:14728
    if (JS_IsException(val))
    8000f9d0:	00f71563          	bne	a4,a5,8000f9da <JS_CallInternal+0xa6c>
quickjs-nuttx/quickjs.c:14759
    return val;
    8000f9d4:	b5443023          	sd	s4,-1216(s0)
    8000f9d8:	a88d                	j	8000fa4a <JS_CallInternal+0xadc>
quickjs-nuttx/quickjs.c:14733
    pr = add_property(ctx, p, JS_ATOM_length,
    8000f9da:	85aa                	mv	a1,a0
    8000f9dc:	468d                	li	a3,3
    8000f9de:	03000613          	li	a2,48
    8000f9e2:	8526                	mv	a0,s1
    8000f9e4:	63f0b0ef          	jal	ra,8001b822 <add_property>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8000f9e8:	77fd                	lui	a5,0xfffff
    8000f9ea:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000f9ee:	97a2                	add	a5,a5,s0
    8000f9f0:	639c                	ld	a5,0(a5)
    8000f9f2:	b2043023          	sd	zero,-1248(s0)
    8000f9f6:	ee043c23          	sd	zero,-264(s0)
    8000f9fa:	b2f42023          	sw	a5,-1248(s0)
    8000f9fe:	b2043783          	ld	a5,-1248(s0)
    8000fa02:	b2043423          	sd	zero,-1240(s0)
    8000fa06:	eef43823          	sd	a5,-272(s0)
js_build_arguments():
quickjs-nuttx/quickjs.c:14735
    pr->u.value = JS_NewInt32(ctx, argc);
    8000fa0a:	e11c                	sd	a5,0(a0)
    8000fa0c:	ef843783          	ld	a5,-264(s0)
    8000fa10:	e51c                	sd	a5,8(a0)
quickjs-nuttx/quickjs.c:14739
    if (argc > 0) {
    8000fa12:	77fd                	lui	a5,0xfffff
    8000fa14:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fa18:	97a2                	add	a5,a5,s0
    8000fa1a:	639c                	ld	a5,0(a5)
    8000fa1c:	10f05663          	blez	a5,8000fb28 <JS_CallInternal+0xbba>
quickjs-nuttx/quickjs.c:14740
        tab = js_malloc(ctx, sizeof(tab[0]) * argc);
    8000fa20:	77fd                	lui	a5,0xfffff
    8000fa22:	5d878793          	addi	a5,a5,1496 # fffffffffffff5d8 <_ebss+0xffffffff7fefe472>
    8000fa26:	97a2                	add	a5,a5,s0
    8000fa28:	638c                	ld	a1,0(a5)
    8000fa2a:	8526                	mv	a0,s1
    8000fa2c:	4b81                	li	s7,0
    8000fa2e:	6d60a0ef          	jal	ra,8001a104 <js_malloc>
    8000fa32:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:14741
        if (!tab) {
    8000fa34:	e529                	bnez	a0,8000fa7e <JS_CallInternal+0xb10>
quickjs-nuttx/quickjs.c:14742
            JS_FreeValue(ctx, val);
    8000fa36:	b1043583          	ld	a1,-1264(s0)
    8000fa3a:	b1843603          	ld	a2,-1256(s0)
    8000fa3e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:14743
            return JS_EXCEPTION;
    8000fa40:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:14742
            JS_FreeValue(ctx, val);
    8000fa42:	d5dfb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14743
            return JS_EXCEPTION;
    8000fa46:	b4043023          	sd	zero,-1216(s0)
    8000fa4a:	b4043783          	ld	a5,-1216(s0)
    8000fa4e:	ef343c23          	sd	s3,-264(s0)
    8000fa52:	b5343423          	sd	s3,-1208(s0)
    8000fa56:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16260
                    *sp++ = js_build_arguments(ctx, argc, (JSValueConst *)argv);
    8000fa5a:	00fcb023          	sd	a5,0(s9)
    8000fa5e:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:16261
                    if (unlikely(JS_IsException(sp[-1])))
    8000fa62:	2981                	sext.w	s3,s3
quickjs-nuttx/quickjs.c:16260
                    *sp++ = js_build_arguments(ctx, argc, (JSValueConst *)argv);
    8000fa64:	00fcb423          	sd	a5,8(s9)
quickjs-nuttx/quickjs.c:16261
                    if (unlikely(JS_IsException(sp[-1])))
    8000fa68:	4799                	li	a5,6
    8000fa6a:	12f99963          	bne	s3,a5,8000fb9c <JS_CallInternal+0xc2e>
quickjs-nuttx/quickjs.c:16262 (discriminator 1)
                        goto exception;
    8000fa6e:	77fd                	lui	a5,0xfffff
    8000fa70:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    8000fa74:	97a2                	add	a5,a5,s0
    8000fa76:	0007bd03          	ld	s10,0(a5)
    8000fa7a:	8ce2                	mv	s9,s8
    8000fa7c:	b349                	j	8000f7fe <JS_CallInternal+0x890>
js_build_arguments():
quickjs-nuttx/quickjs.c:14746
            tab[i] = JS_DupValue(ctx, argv[i]);
    8000fa7e:	601c                	ld	a5,0(s0)
    8000fa80:	004b9b13          	slli	s6,s7,0x4
quickjs-nuttx/quickjs.c:14745
        for(i = 0; i < argc; i++) {
    8000fa84:	0b85                	addi	s7,s7,1
quickjs-nuttx/quickjs.c:14746
            tab[i] = JS_DupValue(ctx, argv[i]);
    8000fa86:	97da                	add	a5,a5,s6
    8000fa88:	6388                	ld	a0,0(a5)
    8000fa8a:	678c                	ld	a1,8(a5)
    8000fa8c:	9b56                	add	s6,s6,s5
    8000fa8e:	98dfa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:14745
        for(i = 0; i < argc; i++) {
    8000fa92:	777d                	lui	a4,0xfffff
    8000fa94:	64070713          	addi	a4,a4,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fa98:	9722                	add	a4,a4,s0
    8000fa9a:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:14746
            tab[i] = JS_DupValue(ctx, argv[i]);
    8000fa9c:	00ab3023          	sd	a0,0(s6)
    8000faa0:	00bb3423          	sd	a1,8(s6)
quickjs-nuttx/quickjs.c:14745
        for(i = 0; i < argc; i++) {
    8000faa4:	000b879b          	sext.w	a5,s7
    8000faa8:	fce7cbe3          	blt	a5,a4,8000fa7e <JS_CallInternal+0xb10>
quickjs-nuttx/quickjs.c:14750
    p->u.array.count = argc;
    8000faac:	77fd                	lui	a5,0xfffff
    8000faae:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fab2:	97a2                	add	a5,a5,s0
    8000fab4:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:14749
    p->u.array.u.values = tab;
    8000fab6:	035a3c23          	sd	s5,56(s4)
quickjs-nuttx/quickjs.c:14750
    p->u.array.count = argc;
    8000faba:	04fa2023          	sw	a5,64(s4)
quickjs-nuttx/quickjs.c:14752
    JS_DefinePropertyValue(ctx, val, JS_ATOM_Symbol_iterator,
    8000fabe:	1384b503          	ld	a0,312(s1)
    8000fac2:	1404b583          	ld	a1,320(s1)
    8000fac6:	955fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000faca:	b1843603          	ld	a2,-1256(s0)
    8000face:	87ae                	mv	a5,a1
    8000fad0:	b2b43c23          	sd	a1,-1224(s0)
    8000fad4:	b1043583          	ld	a1,-1264(s0)
    8000fad8:	872a                	mv	a4,a0
    8000fada:	b2a43823          	sd	a0,-1232(s0)
    8000fade:	480d                	li	a6,3
    8000fae0:	0d600693          	li	a3,214
    8000fae4:	8526                	mv	a0,s1
    8000fae6:	746080ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:14756
    JS_DefineProperty(ctx, val, JS_ATOM_callee, JS_UNDEFINED,
    8000faea:	478d                	li	a5,3
    8000faec:	eef43c23          	sd	a5,-264(s0)
    8000faf0:	6789                	lui	a5,0x2
    8000faf2:	80078793          	addi	a5,a5,-2048 # 1800 <asinh-0x7fffe800>
    8000faf6:	ee043823          	sd	zero,-272(s0)
    8000fafa:	e83e                	sd	a5,16(sp)
    8000fafc:	1484b783          	ld	a5,328(s1)
    8000fb00:	b1043583          	ld	a1,-1264(s0)
    8000fb04:	b1843603          	ld	a2,-1256(s0)
    8000fb08:	e03e                	sd	a5,0(sp)
    8000fb0a:	1504b783          	ld	a5,336(s1)
    8000fb0e:	4701                	li	a4,0
    8000fb10:	04f00693          	li	a3,79
    8000fb14:	e43e                	sd	a5,8(sp)
    8000fb16:	1484b803          	ld	a6,328(s1)
    8000fb1a:	1504b883          	ld	a7,336(s1)
    8000fb1e:	478d                	li	a5,3
    8000fb20:	8526                	mv	a0,s1
    8000fb22:	02c080ef          	jal	ra,80017b4e <JS_DefineProperty>
    8000fb26:	b57d                	j	8000f9d4 <JS_CallInternal+0xa66>
quickjs-nuttx/quickjs.c:14738
    tab = NULL;
    8000fb28:	4a81                	li	s5,0
    8000fb2a:	b749                	j	8000faac <JS_CallInternal+0xb3e>
JS_CallInternal():
quickjs-nuttx/cutils.h:79
    if (a < b)
    8000fb2c:	777d                	lui	a4,0xfffff
    8000fb2e:	64070713          	addi	a4,a4,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fb32:	9722                	add	a4,a4,s0
quickjs-nuttx/quickjs.c:16265
                    *sp++ = js_build_mapped_arguments(ctx, argc, (JSValueConst *)argv,
    8000fb34:	040dd783          	lhu	a5,64(s11)
    8000fb38:	6318                	ld	a4,0(a4)
    8000fb3a:	8abe                	mv	s5,a5
    8000fb3c:	00f75863          	bge	a4,a5,8000fb4c <JS_CallInternal+0xbde>
    8000fb40:	77fd                	lui	a5,0xfffff
    8000fb42:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fb46:	97a2                	add	a5,a5,s0
    8000fb48:	0007aa83          	lw	s5,0(a5)
js_build_mapped_arguments():
quickjs-nuttx/quickjs.c:14775
    val = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8000fb4c:	60bc                	ld	a5,64(s1)
    8000fb4e:	46a5                	li	a3,9
    8000fb50:	8526                	mv	a0,s1
    8000fb52:	6b8c                	ld	a1,16(a5)
    8000fb54:	6f90                	ld	a2,24(a5)
    8000fb56:	2a81                	sext.w	s5,s5
    8000fb58:	08c0c0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8000fb5c:	b4a43823          	sd	a0,-1200(s0)
    8000fb60:	b4b43c23          	sd	a1,-1192(s0)
quickjs-nuttx/quickjs.c:14777
    if (JS_IsException(val))
    8000fb64:	0005871b          	sext.w	a4,a1
    8000fb68:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:14775
    val = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8000fb6a:	89aa                	mv	s3,a0
    8000fb6c:	8a2e                	mv	s4,a1
    8000fb6e:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:14777
    if (JS_IsException(val))
    8000fb70:	04f71463          	bne	a4,a5,8000fbb8 <JS_CallInternal+0xc4a>
quickjs-nuttx/quickjs.c:14815
    return val;
    8000fb74:	bb343023          	sd	s3,-1120(s0)
    8000fb78:	ba043783          	ld	a5,-1120(s0)
    8000fb7c:	ef643c23          	sd	s6,-264(s0)
    8000fb80:	bb643423          	sd	s6,-1112(s0)
    8000fb84:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16265
                    *sp++ = js_build_mapped_arguments(ctx, argc, (JSValueConst *)argv,
    8000fb88:	00fcb023          	sd	a5,0(s9)
    8000fb8c:	ef843783          	ld	a5,-264(s0)
quickjs-nuttx/quickjs.c:16267
                    if (unlikely(JS_IsException(sp[-1])))
    8000fb90:	2b01                	sext.w	s6,s6
quickjs-nuttx/quickjs.c:16265
                    *sp++ = js_build_mapped_arguments(ctx, argc, (JSValueConst *)argv,
    8000fb92:	00fcb423          	sd	a5,8(s9)
quickjs-nuttx/quickjs.c:16267
                    if (unlikely(JS_IsException(sp[-1])))
    8000fb96:	4799                	li	a5,6
    8000fb98:	ecfb0be3          	beq	s6,a5,8000fa6e <JS_CallInternal+0xb00>
quickjs-nuttx/quickjs.c:16300
            BREAK;
    8000fb9c:	001d4b03          	lbu	s6,1(s10)
    8000fba0:	0005f797          	auipc	a5,0x5f
    8000fba4:	29078793          	addi	a5,a5,656 # 8006ee30 <dispatch_table.4>
    8000fba8:	8ce2                	mv	s9,s8
    8000fbaa:	003b1713          	slli	a4,s6,0x3
    8000fbae:	97ba                	add	a5,a5,a4
    8000fbb0:	639c                	ld	a5,0(a5)
    8000fbb2:	0d09                	addi	s10,s10,2
    8000fbb4:	df2ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
js_build_mapped_arguments():
quickjs-nuttx/quickjs.c:14782
    pr = add_property(ctx, p, JS_ATOM_length,
    8000fbb8:	85aa                	mv	a1,a0
    8000fbba:	468d                	li	a3,3
    8000fbbc:	03000613          	li	a2,48
    8000fbc0:	8526                	mv	a0,s1
    8000fbc2:	4610b0ef          	jal	ra,8001b822 <add_property>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8000fbc6:	77fd                	lui	a5,0xfffff
    8000fbc8:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fbcc:	97a2                	add	a5,a5,s0
    8000fbce:	639c                	ld	a5,0(a5)
    8000fbd0:	b6043023          	sd	zero,-1184(s0)
    8000fbd4:	ee043c23          	sd	zero,-264(s0)
    8000fbd8:	b6f42023          	sw	a5,-1184(s0)
    8000fbdc:	b6043783          	ld	a5,-1184(s0)
    8000fbe0:	b6043423          	sd	zero,-1176(s0)
js_build_mapped_arguments():
quickjs-nuttx/quickjs.c:14786
    for(i = 0; i < arg_count; i++) {
    8000fbe4:	4b81                	li	s7,0
    8000fbe6:	eef43823          	sd	a5,-272(s0)
quickjs-nuttx/quickjs.c:14784
    pr->u.value = JS_NewInt32(ctx, argc);
    8000fbea:	e11c                	sd	a5,0(a0)
    8000fbec:	ef843783          	ld	a5,-264(s0)
    8000fbf0:	e51c                	sd	a5,8(a0)
quickjs-nuttx/quickjs.c:14786
    for(i = 0; i < arg_count; i++) {
    8000fbf2:	075bcc63          	blt	s7,s5,8000fc6a <JS_CallInternal+0xcfc>
    8000fbf6:	601c                	ld	a5,0(s0)
    8000fbf8:	004a9b93          	slli	s7,s5,0x4
    8000fbfc:	9bbe                	add	s7,s7,a5
quickjs-nuttx/quickjs.c:14801
    for(i = arg_count; i < argc; i++) {
    8000fbfe:	77fd                	lui	a5,0xfffff
    8000fc00:	64078793          	addi	a5,a5,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fc04:	97a2                	add	a5,a5,s0
    8000fc06:	639c                	ld	a5,0(a5)
    8000fc08:	0cfac663          	blt	s5,a5,8000fcd4 <JS_CallInternal+0xd66>
quickjs-nuttx/quickjs.c:14808
    JS_DefinePropertyValue(ctx, val, JS_ATOM_Symbol_iterator,
    8000fc0c:	1384b503          	ld	a0,312(s1)
    8000fc10:	1404b583          	ld	a1,320(s1)
    8000fc14:	807fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000fc18:	872a                	mv	a4,a0
    8000fc1a:	8652                	mv	a2,s4
    8000fc1c:	87ae                	mv	a5,a1
    8000fc1e:	b8a43023          	sd	a0,-1152(s0)
    8000fc22:	b8b43423          	sd	a1,-1144(s0)
    8000fc26:	480d                	li	a6,3
    8000fc28:	0d600693          	li	a3,214
    8000fc2c:	85ce                	mv	a1,s3
    8000fc2e:	8526                	mv	a0,s1
    8000fc30:	b5343823          	sd	s3,-1200(s0)
    8000fc34:	b5443c23          	sd	s4,-1192(s0)
    8000fc38:	5f4080ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:14813
                           JS_DupValue(ctx, ctx->rt->current_stack_frame->cur_func),
    8000fc3c:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:14812
    JS_DefinePropertyValue(ctx, val, JS_ATOM_callee,
    8000fc3e:	7ffc                	ld	a5,248(a5)
    8000fc40:	6788                	ld	a0,8(a5)
    8000fc42:	6b8c                	ld	a1,16(a5)
    8000fc44:	fd6fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000fc48:	87ae                	mv	a5,a1
    8000fc4a:	b6b43c23          	sd	a1,-1160(s0)
    8000fc4e:	b5843603          	ld	a2,-1192(s0)
    8000fc52:	b5043583          	ld	a1,-1200(s0)
    8000fc56:	872a                	mv	a4,a0
    8000fc58:	b6a43823          	sd	a0,-1168(s0)
    8000fc5c:	480d                	li	a6,3
    8000fc5e:	04f00693          	li	a3,79
    8000fc62:	8526                	mv	a0,s1
    8000fc64:	5c8080ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    8000fc68:	b731                	j	8000fb74 <JS_CallInternal+0xc06>
quickjs-nuttx/quickjs.c:14788
        var_ref = get_var_ref(ctx, sf, i, TRUE);
    8000fc6a:	77fd                	lui	a5,0xfffff
    8000fc6c:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8000fc70:	97a2                	add	a5,a5,s0
    8000fc72:	638c                	ld	a1,0(a5)
    8000fc74:	4685                	li	a3,1
    8000fc76:	865e                	mv	a2,s7
    8000fc78:	8526                	mv	a0,s1
    8000fc7a:	65e0a0ef          	jal	ra,8001a2d8 <get_var_ref>
quickjs-nuttx/quickjs.c:14789
        if (!var_ref)
    8000fc7e:	777d                	lui	a4,0xfffff
    8000fc80:	61870713          	addi	a4,a4,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    8000fc84:	9722                	add	a4,a4,s0
    8000fc86:	e308                	sd	a0,0(a4)
    8000fc88:	c515                	beqz	a0,8000fcb4 <JS_CallInternal+0xd46>
__JS_AtomFromUInt32():
quickjs-nuttx/quickjs.c:2412
    return v | JS_ATOM_TAG_INT;
    8000fc8a:	800007b7          	lui	a5,0x80000
    8000fc8e:	00fbe633          	or	a2,s7,a5
js_build_mapped_arguments():
quickjs-nuttx/quickjs.c:14791
        pr = add_property(ctx, p, __JS_AtomFromUInt32(i), JS_PROP_C_W_E | JS_PROP_VARREF);
    8000fc92:	02700693          	li	a3,39
    8000fc96:	2601                	sext.w	a2,a2
    8000fc98:	85ce                	mv	a1,s3
    8000fc9a:	8526                	mv	a0,s1
    8000fc9c:	3870b0ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:14792
        if (!pr) {
    8000fca0:	77fd                	lui	a5,0xfffff
    8000fca2:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    8000fca6:	97a2                	add	a5,a5,s0
    8000fca8:	639c                	ld	a5,0(a5)
    8000fcaa:	e115                	bnez	a0,8000fcce <JS_CallInternal+0xd60>
quickjs-nuttx/quickjs.c:14793
            free_var_ref(ctx->rt, var_ref);
    8000fcac:	6c88                	ld	a0,24(s1)
    8000fcae:	85be                	mv	a1,a5
    8000fcb0:	fbcfc0ef          	jal	ra,8000c46c <free_var_ref>
quickjs-nuttx/quickjs.c:14817
    JS_FreeValue(ctx, val);
    8000fcb4:	85ce                	mv	a1,s3
    8000fcb6:	8652                	mv	a2,s4
    8000fcb8:	8526                	mv	a0,s1
    8000fcba:	b5343823          	sd	s3,-1200(s0)
    8000fcbe:	b5443c23          	sd	s4,-1192(s0)
quickjs-nuttx/quickjs.c:14818
    return JS_EXCEPTION;
    8000fcc2:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:14817
    JS_FreeValue(ctx, val);
    8000fcc4:	adbfb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14818
    return JS_EXCEPTION;
    8000fcc8:	ba043023          	sd	zero,-1120(s0)
    8000fccc:	b575                	j	8000fb78 <JS_CallInternal+0xc0a>
quickjs-nuttx/quickjs.c:14796
        pr->u.var_ref = var_ref;
    8000fcce:	e11c                	sd	a5,0(a0)
quickjs-nuttx/quickjs.c:14786
    for(i = 0; i < arg_count; i++) {
    8000fcd0:	2b85                	addiw	s7,s7,1
    8000fcd2:	b705                	j	8000fbf2 <JS_CallInternal+0xc84>
quickjs-nuttx/quickjs.c:14802
        if (JS_DefinePropertyValueUint32(ctx, val, i,
    8000fcd4:	000bb503          	ld	a0,0(s7)
    8000fcd8:	008bb583          	ld	a1,8(s7)
    8000fcdc:	0bc1                	addi	s7,s7,16
    8000fcde:	f3cfa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000fce2:	872a                	mv	a4,a0
    8000fce4:	87ae                	mv	a5,a1
    8000fce6:	b8a43823          	sd	a0,-1136(s0)
    8000fcea:	b8b43c23          	sd	a1,-1128(s0)
    8000fcee:	481d                	li	a6,7
    8000fcf0:	86d6                	mv	a3,s5
    8000fcf2:	85ce                	mv	a1,s3
    8000fcf4:	8652                	mv	a2,s4
    8000fcf6:	8526                	mv	a0,s1
    8000fcf8:	b5343823          	sd	s3,-1200(s0)
    8000fcfc:	b5443c23          	sd	s4,-1192(s0)
    8000fd00:	2f0210ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    8000fd04:	fa0548e3          	bltz	a0,8000fcb4 <JS_CallInternal+0xd46>
quickjs-nuttx/quickjs.c:14801
    for(i = arg_count; i < argc; i++) {
    8000fd08:	2a85                	addiw	s5,s5,1
    8000fd0a:	bdd5                	j	8000fbfe <JS_CallInternal+0xc90>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16271
                    *sp++ = JS_DupValue(ctx, sf->cur_func);
    8000fd0c:	77fd                	lui	a5,0xfffff
    8000fd0e:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8000fd12:	97a2                	add	a5,a5,s0
    8000fd14:	639c                	ld	a5,0(a5)
    8000fd16:	6788                	ld	a0,8(a5)
    8000fd18:	77fd                	lui	a5,0xfffff
    8000fd1a:	66078793          	addi	a5,a5,1632 # fffffffffffff660 <_ebss+0xffffffff7fefe4fa>
    8000fd1e:	97a2                	add	a5,a5,s0
    8000fd20:	639c                	ld	a5,0(a5)
    8000fd22:	6b8c                	ld	a1,16(a5)
quickjs-nuttx/quickjs.c:16274
                    *sp++ = JS_DupValue(ctx, new_target);
    8000fd24:	ef6fa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000fd28:	00acb023          	sd	a0,0(s9)
    8000fd2c:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16275
                    break;
    8000fd30:	b5b5                	j	8000fb9c <JS_CallInternal+0xc2e>
quickjs-nuttx/quickjs.c:16274
                    *sp++ = JS_DupValue(ctx, new_target);
    8000fd32:	f8040793          	addi	a5,s0,-128
    8000fd36:	97ca                	add	a5,a5,s2
    8000fd38:	6f07b503          	ld	a0,1776(a5)
    8000fd3c:	6f87b583          	ld	a1,1784(a5)
    8000fd40:	b7d5                	j	8000fd24 <JS_CallInternal+0xdb6>
quickjs-nuttx/quickjs.c:16279
                        p1 = p->u.func.home_object;
    8000fd42:	77fd                	lui	a5,0xfffff
    8000fd44:	60878793          	addi	a5,a5,1544 # fffffffffffff608 <_ebss+0xffffffff7fefe4a2>
    8000fd48:	97a2                	add	a5,a5,s0
    8000fd4a:	639c                	ld	a5,0(a5)
    8000fd4c:	63bc                	ld	a5,64(a5)
quickjs-nuttx/quickjs.c:16280
                        if (unlikely(!p1))
    8000fd4e:	e799                	bnez	a5,8000fd5c <JS_CallInternal+0xdee>
quickjs-nuttx/quickjs.c:16281
                            *sp++ = JS_UNDEFINED;
    8000fd50:	000cb023          	sd	zero,0(s9)
    8000fd54:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:16283 (discriminator 6)
                            *sp++ = JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, p1));
    8000fd56:	00fcb423          	sd	a5,8(s9)
    8000fd5a:	b589                	j	8000fb9c <JS_CallInternal+0xc2e>
JS_DupValue():
quickjs-nuttx/quickjs.h:670 (discriminator 6)
        p->ref_count++;
    8000fd5c:	4398                	lw	a4,0(a5)
    8000fd5e:	2705                	addiw	a4,a4,1
    8000fd60:	c398                	sw	a4,0(a5)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16283 (discriminator 6)
    8000fd62:	00fcb023          	sd	a5,0(s9)
    8000fd66:	57fd                	li	a5,-1
    8000fd68:	b7fd                	j	8000fd56 <JS_CallInternal+0xde8>
quickjs-nuttx/quickjs.c:16287
                    *sp++ = JS_NewObjectProto(ctx, JS_NULL);
    8000fd6a:	4789                	li	a5,2
    8000fd6c:	4581                	li	a1,0
    8000fd6e:	4609                	li	a2,2
    8000fd70:	8526                	mv	a0,s1
    8000fd72:	ee043823          	sd	zero,-272(s0)
    8000fd76:	eef43c23          	sd	a5,-264(s0)
    8000fd7a:	2500c0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8000fd7e:	00acb023          	sd	a0,0(s9)
    8000fd82:	00bcb423          	sd	a1,8(s9)
quickjs-nuttx/quickjs.c:16293
                    if (unlikely(JS_IsException(sp[-1])))
    8000fd86:	2581                	sext.w	a1,a1
    8000fd88:	4799                	li	a5,6
    8000fd8a:	e0f599e3          	bne	a1,a5,8000fb9c <JS_CallInternal+0xc2e>
    8000fd8e:	b1c5                	j	8000fa6e <JS_CallInternal+0xb00>
js_import_meta():
quickjs-nuttx/quickjs.c:28351
    filename = JS_GetScriptOrModuleName(ctx, 0);
    8000fd90:	4581                	li	a1,0
    8000fd92:	8526                	mv	a0,s1
    8000fd94:	8ceff0ef          	jal	ra,8000ee62 <JS_GetScriptOrModuleName>
    8000fd98:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs.c:28352
    if (filename == JS_ATOM_NULL)
    8000fd9c:	e995                	bnez	a1,8000fdd0 <JS_CallInternal+0xe62>
quickjs-nuttx/quickjs.c:28361
        JS_ThrowTypeError(ctx, "import.meta not supported in this context");
    8000fd9e:	0005a597          	auipc	a1,0x5a
    8000fda2:	e6258593          	addi	a1,a1,-414 # 80069c00 <qjsc_repl+0x4650>
    8000fda6:	8526                	mv	a0,s1
    8000fda8:	0c5080ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:28362
        return JS_EXCEPTION;
    8000fdac:	4599                	li	a1,6
    8000fdae:	ba043823          	sd	zero,-1104(s0)
    8000fdb2:	bb043783          	ld	a5,-1104(s0)
    8000fdb6:	eeb43c23          	sd	a1,-264(s0)
    8000fdba:	bab43c23          	sd	a1,-1096(s0)
    8000fdbe:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16292
                    *sp++ = js_import_meta(ctx);
    8000fdc2:	00fcb023          	sd	a5,0(s9)
    8000fdc6:	ef843783          	ld	a5,-264(s0)
    8000fdca:	00fcb423          	sd	a5,8(s9)
    8000fdce:	bf65                	j	8000fd86 <JS_CallInternal+0xe18>
js_find_loaded_module():
quickjs-nuttx/quickjs.c:27424
    list_for_each(el, &ctx->loaded_modules) {
    8000fdd0:	1b84b783          	ld	a5,440(s1)
    8000fdd4:	1b048713          	addi	a4,s1,432
    8000fdd8:	00e79463          	bne	a5,a4,8000fde0 <JS_CallInternal+0xe72>
quickjs-nuttx/quickjs.c:27429
    return NULL;
    8000fddc:	4981                	li	s3,0
    8000fdde:	a039                	j	8000fdec <JS_CallInternal+0xe7e>
quickjs-nuttx/quickjs.c:27426
        if (m->module_name == name)
    8000fde0:	ffc7a683          	lw	a3,-4(a5)
    8000fde4:	02b69063          	bne	a3,a1,8000fe04 <JS_CallInternal+0xe96>
quickjs-nuttx/quickjs.c:27425
        m = list_entry(el, JSModuleDef, link);
    8000fde8:	ff878993          	addi	s3,a5,-8
js_import_meta():
quickjs-nuttx/quickjs.c:28358
    JS_FreeAtom(ctx, filename);
    8000fdec:	8526                	mv	a0,s1
    8000fdee:	b5afb0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:28359
    if (!m) {
    8000fdf2:	fa0986e3          	beqz	s3,8000fd9e <JS_CallInternal+0xe30>
quickjs-nuttx/quickjs.c:28364
    return JS_GetImportMeta(ctx, m);
    8000fdf6:	85ce                	mv	a1,s3
    8000fdf8:	8526                	mv	a0,s1
    8000fdfa:	1da0c0ef          	jal	ra,8001bfd4 <JS_GetImportMeta>
    8000fdfe:	baa43823          	sd	a0,-1104(s0)
    8000fe02:	bf45                	j	8000fdb2 <JS_CallInternal+0xe44>
js_find_loaded_module():
quickjs-nuttx/quickjs.c:27424
    list_for_each(el, &ctx->loaded_modules) {
    8000fe04:	679c                	ld	a5,8(a5)
    8000fe06:	bfc9                	j	8000fdd8 <JS_CallInternal+0xe6a>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16297
                    abort();
    8000fe08:	57b520ef          	jal	ra,80062b82 <abort>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8000fe0c:	001d4983          	lbu	s3,1(s10)
    8000fe10:	000d4783          	lbu	a5,0(s10)
js_build_rest():
quickjs-nuttx/quickjs.c:14826
    val = JS_NewArray(ctx);
    8000fe14:	8526                	mv	a0,s1
get_u16():
quickjs-nuttx/cutils.h:185
    8000fe16:	09a2                	slli	s3,s3,0x8
    8000fe18:	00f9e9b3          	or	s3,s3,a5
js_build_rest():
quickjs-nuttx/quickjs.c:14826
    8000fe1c:	43e0c0ef          	jal	ra,8001c25a <JS_NewArray>
    8000fe20:	eea43823          	sd	a0,-272(s0)
    8000fe24:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:14827
    if (JS_IsException(val))
    8000fe28:	0005871b          	sext.w	a4,a1
    8000fe2c:	4799                	li	a5,6
JS_CallInternal():
quickjs-nuttx/quickjs.c:16304
                pc += 2;
    8000fe2e:	002d0a93          	addi	s5,s10,2
quickjs-nuttx/quickjs.c:16305
                *sp++ = js_build_rest(ctx, first, argc, (JSValueConst *)argv);
    8000fe32:	010c8a13          	addi	s4,s9,16
js_build_rest():
quickjs-nuttx/quickjs.c:14826
    val = JS_NewArray(ctx);
    8000fe36:	8b2e                	mv	s6,a1
    8000fe38:	88ae                	mv	a7,a1
quickjs-nuttx/quickjs.c:14827
    if (JS_IsException(val))
    8000fe3a:	02f70763          	beq	a4,a5,8000fe68 <JS_CallInternal+0xefa>
    8000fe3e:	601c                	ld	a5,0(s0)
    8000fe40:	00499b93          	slli	s7,s3,0x4
    8000fe44:	4c01                	li	s8,0
    8000fe46:	9bbe                	add	s7,s7,a5
quickjs-nuttx/quickjs.c:14829
    for (i = first; i < argc; i++) {
    8000fe48:	777d                	lui	a4,0xfffff
    8000fe4a:	64070713          	addi	a4,a4,1600 # fffffffffffff640 <_ebss+0xffffffff7fefe4da>
    8000fe4e:	9722                	add	a4,a4,s0
    8000fe50:	6318                	ld	a4,0(a4)
    8000fe52:	013c07bb          	addw	a5,s8,s3
    8000fe56:	000c069b          	sext.w	a3,s8
    8000fe5a:	04e7cc63          	blt	a5,a4,8000feb2 <JS_CallInternal+0xf44>
quickjs-nuttx/quickjs.c:14838
    return val;
    8000fe5e:	ef043783          	ld	a5,-272(s0)
    8000fe62:	bcf43823          	sd	a5,-1072(s0)
    8000fe66:	a019                	j	8000fe6c <JS_CallInternal+0xefe>
quickjs-nuttx/quickjs.c:14828
        return val;
    8000fe68:	bca43823          	sd	a0,-1072(s0)
    8000fe6c:	bd043783          	ld	a5,-1072(s0)
    8000fe70:	ef143c23          	sd	a7,-264(s0)
    8000fe74:	bd143c23          	sd	a7,-1064(s0)
    8000fe78:	eef43823          	sd	a5,-272(s0)
JS_CallInternal():
quickjs-nuttx/quickjs.c:16305
                *sp++ = js_build_rest(ctx, first, argc, (JSValueConst *)argv);
    8000fe7c:	00fcb023          	sd	a5,0(s9)
    8000fe80:	ef843783          	ld	a5,-264(s0)
    8000fe84:	00fcb423          	sd	a5,8(s9)
quickjs-nuttx/quickjs.c:16306
                if (unlikely(JS_IsException(sp[-1])))
    8000fe88:	ff8a2703          	lw	a4,-8(s4)
    8000fe8c:	4799                	li	a5,6
    8000fe8e:	00f71463          	bne	a4,a5,8000fe96 <JS_CallInternal+0xf28>
    8000fe92:	26d0606f          	j	800168fe <JS_CallInternal+0x7990>
quickjs-nuttx/quickjs.c:16309
            BREAK;
    8000fe96:	002d4b03          	lbu	s6,2(s10)
    8000fe9a:	0005f797          	auipc	a5,0x5f
    8000fe9e:	f9678793          	addi	a5,a5,-106 # 8006ee30 <dispatch_table.4>
    8000fea2:	8cd2                	mv	s9,s4
    8000fea4:	003b1713          	slli	a4,s6,0x3
    8000fea8:	97ba                	add	a5,a5,a4
    8000feaa:	639c                	ld	a5,0(a5)
    8000feac:	0d0d                	addi	s10,s10,3
    8000feae:	af8ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
    8000feb2:	77fd                	lui	a5,0xfffff
    8000feb4:	61878793          	addi	a5,a5,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    8000feb8:	97a2                	add	a5,a5,s0
    8000feba:	e394                	sd	a3,0(a5)
js_build_rest():
quickjs-nuttx/quickjs.c:14830
        ret = JS_DefinePropertyValueUint32(ctx, val, i - first,
    8000febc:	000bb503          	ld	a0,0(s7)
    8000fec0:	008bb583          	ld	a1,8(s7)
    8000fec4:	77fd                	lui	a5,0xfffff
    8000fec6:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    8000feca:	97a2                	add	a5,a5,s0
    8000fecc:	0117b023          	sd	a7,0(a5)
    8000fed0:	d4afa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000fed4:	76fd                	lui	a3,0xfffff
    8000fed6:	61868693          	addi	a3,a3,1560 # fffffffffffff618 <_ebss+0xffffffff7fefe4b2>
    8000feda:	96a2                	add	a3,a3,s0
    8000fedc:	87ae                	mv	a5,a1
    8000fede:	bcb43423          	sd	a1,-1080(s0)
    8000fee2:	6294                	ld	a3,0(a3)
    8000fee4:	ef043583          	ld	a1,-272(s0)
    8000fee8:	872a                	mv	a4,a0
    8000feea:	bca43023          	sd	a0,-1088(s0)
    8000feee:	481d                	li	a6,7
    8000fef0:	865a                	mv	a2,s6
    8000fef2:	8526                	mv	a0,s1
    8000fef4:	ef643c23          	sd	s6,-264(s0)
    8000fef8:	0f8210ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs.c:14833
        if (ret < 0) {
    8000fefc:	77fd                	lui	a5,0xfffff
    8000fefe:	63078793          	addi	a5,a5,1584 # fffffffffffff630 <_ebss+0xffffffff7fefe4ca>
    8000ff02:	97a2                	add	a5,a5,s0
    8000ff04:	0007b883          	ld	a7,0(a5)
    8000ff08:	0c05                	addi	s8,s8,1
    8000ff0a:	0bc1                	addi	s7,s7,16
    8000ff0c:	f2055ee3          	bgez	a0,8000fe48 <JS_CallInternal+0xeda>
quickjs-nuttx/quickjs.c:14834
            JS_FreeValue(ctx, val);
    8000ff10:	ef043583          	ld	a1,-272(s0)
    8000ff14:	ef843603          	ld	a2,-264(s0)
    8000ff18:	8526                	mv	a0,s1
    8000ff1a:	885fb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14835
            return JS_EXCEPTION;
    8000ff1e:	4899                	li	a7,6
    8000ff20:	bc043823          	sd	zero,-1072(s0)
    8000ff24:	b7a1                	j	8000fe6c <JS_CallInternal+0xefe>
JS_CallInternal():
quickjs-nuttx/quickjs.c:16312
            JS_FreeValue(ctx, sp[-1]);
    8000ff26:	ff0cb583          	ld	a1,-16(s9)
    8000ff2a:	ff8cb603          	ld	a2,-8(s9)
    8000ff2e:	8526                	mv	a0,s1
    8000ff30:	1cc1                	addi	s9,s9,-16
    8000ff32:	86dfb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16314
            BREAK;
    8000ff36:	000d4b03          	lbu	s6,0(s10)
    8000ff3a:	0005f797          	auipc	a5,0x5f
    8000ff3e:	ef678793          	addi	a5,a5,-266 # 8006ee30 <dispatch_table.4>
    8000ff42:	0d05                	addi	s10,s10,1
    8000ff44:	003b1713          	slli	a4,s6,0x3
    8000ff48:	97ba                	add	a5,a5,a4
    8000ff4a:	639c                	ld	a5,0(a5)
    8000ff4c:	a5aff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16316
            JS_FreeValue(ctx, sp[-2]);
    8000ff50:	fe0cb583          	ld	a1,-32(s9)
    8000ff54:	fe8cb603          	ld	a2,-24(s9)
    8000ff58:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16318
            sp--;
    8000ff5a:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:16316
            JS_FreeValue(ctx, sp[-2]);
    8000ff5c:	843fb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16317
            sp[-2] = sp[-1];
    8000ff60:	000cb783          	ld	a5,0(s9)
quickjs-nuttx/quickjs.c:16319
            BREAK;
    8000ff64:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16317
            sp[-2] = sp[-1];
    8000ff66:	fefcb823          	sd	a5,-16(s9)
    8000ff6a:	008cb783          	ld	a5,8(s9)
    8000ff6e:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16319
            BREAK;
    8000ff72:	fffd4b03          	lbu	s6,-1(s10)
    8000ff76:	0005f797          	auipc	a5,0x5f
    8000ff7a:	eba78793          	addi	a5,a5,-326 # 8006ee30 <dispatch_table.4>
    8000ff7e:	003b1713          	slli	a4,s6,0x3
    8000ff82:	97ba                	add	a5,a5,a4
    8000ff84:	639c                	ld	a5,0(a5)
    8000ff86:	a20ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16321
            JS_FreeValue(ctx, sp[-3]);
    8000ff8a:	fd0cb583          	ld	a1,-48(s9)
    8000ff8e:	fd8cb603          	ld	a2,-40(s9)
    8000ff92:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:16324
            sp--;
    8000ff94:	1cc1                	addi	s9,s9,-16
quickjs-nuttx/quickjs.c:16321
            JS_FreeValue(ctx, sp[-3]);
    8000ff96:	809fb0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:16322
            sp[-3] = sp[-2];
    8000ff9a:	ff0cb783          	ld	a5,-16(s9)
quickjs-nuttx/quickjs.c:16325
            BREAK;
    8000ff9e:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16322
            sp[-3] = sp[-2];
    8000ffa0:	fefcb023          	sd	a5,-32(s9)
    8000ffa4:	ff8cb783          	ld	a5,-8(s9)
    8000ffa8:	fefcb423          	sd	a5,-24(s9)
quickjs-nuttx/quickjs.c:16323
            sp[-2] = sp[-1];
    8000ffac:	000cb783          	ld	a5,0(s9)
    8000ffb0:	fefcb823          	sd	a5,-16(s9)
    8000ffb4:	008cb783          	ld	a5,8(s9)
    8000ffb8:	fefcbc23          	sd	a5,-8(s9)
quickjs-nuttx/quickjs.c:16325
            BREAK;
    8000ffbc:	fffd4b03          	lbu	s6,-1(s10)
    8000ffc0:	0005f797          	auipc	a5,0x5f
    8000ffc4:	e7078793          	addi	a5,a5,-400 # 8006ee30 <dispatch_table.4>
    8000ffc8:	003b1713          	slli	a4,s6,0x3
    8000ffcc:	97ba                	add	a5,a5,a4
    8000ffce:	639c                	ld	a5,0(a5)
    8000ffd0:	9d6ff06f          	j	8000f1a6 <JS_CallInternal+0x238>
quickjs-nuttx/quickjs.c:16327
            sp[0] = JS_DupValue(ctx, sp[-1]);
    8000ffd4:	ff0cb503          	ld	a0,-16(s9)
    8000ffd8:	ff8cb583          	ld	a1,-8(s9)
quickjs-nuttx/quickjs.c:16329
            BREAK;
    8000ffdc:	0d05                	addi	s10,s10,1
quickjs-nuttx/quickjs.c:16328
            sp++;
    8000ffde:	0cc1                	addi	s9,s9,16
quickjs-nuttx/quickjs.c:16327
            sp[0] = JS_DupValue(ctx, sp[-1]);
    8000ffe0:	c3afa0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000ffe4:	feacb823          	sd	a0,-16(s9)
    8000ffe8:	febcbc23          	sd	a1,-8(s9)
quickjs-nuttx/quickjs.c:16329
            BREAK;
    8000ffec:	fffd4b03          	lbu	s6,-1(s10)
    8000fff0:	0005f797          	auipc	a5,0x5f
    8000fff4:	e4078793          	addi	a5,a5,-448 # 8006ee30 <dispatch_table.4>
    8000fff8:	003b1713          	slli	a4,s6,0x3
    8000fffc:	97ba                	add	a5,a5,a4
    8000fffe:	639c                	ld	a5,0(a5)
