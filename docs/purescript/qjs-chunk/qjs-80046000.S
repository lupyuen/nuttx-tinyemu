    80045000:	880a                	mv	a6,sp
quickjs-nuttx/quickjs.c:16000
    for(i = 0; i < bf->argc; i++) {
    80045002:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:16000 (discriminator 1)
    80045004:	5098                	lw	a4,32(s1)
    80045006:	06e6c363          	blt	a3,a4,8004506c <js_call_bound_function+0xce>
    8004500a:	4681                	li	a3,0
    8004500c:	0006861b          	sext.w	a2,a3
quickjs-nuttx/quickjs.c:16003 (discriminator 1)
    for(i = 0; i < argc; i++) {
    80045010:	06664b63          	blt	a2,t1,80045086 <js_call_bound_function+0xe8>
quickjs-nuttx/quickjs.c:16006
    if (flags & JS_CALL_FLAG_CONSTRUCTOR) {
    80045014:	0018f893          	andi	a7,a7,1
    80045018:	08088463          	beqz	a7,800450a0 <js_call_bound_function+0x102>
quickjs-nuttx/quickjs.c:16007
        new_target = this_obj;
    8004501c:	fa043683          	ld	a3,-96(s0)
    80045020:	fa843703          	ld	a4,-88(s0)
quickjs-nuttx/quickjs.c:16008
        if (js_same_value(ctx, func_obj, new_target))
    80045024:	fb043583          	ld	a1,-80(s0)
    80045028:	fb843603          	ld	a2,-72(s0)
    8004502c:	854a                	mv	a0,s2
    8004502e:	f9043823          	sd	a6,-112(s0)
    80045032:	f8f43c23          	sd	a5,-104(s0)
quickjs-nuttx/quickjs.c:16007
        new_target = this_obj;
    80045036:	fcd43023          	sd	a3,-64(s0)
    8004503a:	fce43423          	sd	a4,-56(s0)
quickjs-nuttx/quickjs.c:16008
        if (js_same_value(ctx, func_obj, new_target))
    8004503e:	935c60ef          	jal	ra,8000b972 <js_same_value>
    80045042:	f9843783          	ld	a5,-104(s0)
    80045046:	f9043803          	ld	a6,-112(s0)
    8004504a:	c519                	beqz	a0,80045058 <js_call_bound_function+0xba>
quickjs-nuttx/quickjs.c:16009
            new_target = bf->func_obj;
    8004504c:	6098                	ld	a4,0(s1)
    8004504e:	fce43023          	sd	a4,-64(s0)
    80045052:	6498                	ld	a4,8(s1)
    80045054:	fce43423          	sd	a4,-56(s0)
quickjs-nuttx/quickjs.c:16010
        return JS_CallConstructor2(ctx, bf->func_obj, new_target,
    80045058:	fc043683          	ld	a3,-64(s0)
    8004505c:	fc843703          	ld	a4,-56(s0)
    80045060:	608c                	ld	a1,0(s1)
    80045062:	6490                	ld	a2,8(s1)
    80045064:	854a                	mv	a0,s2
    80045066:	a89fc0ef          	jal	ra,80041aee <JS_CallConstructor2>
    8004506a:	b7bd                	j	80044fd8 <js_call_bound_function+0x3a>
quickjs-nuttx/quickjs.c:16001 (discriminator 3)
        arg_buf[i] = bf->argv[i];
    8004506c:	00268713          	addi	a4,a3,2
    80045070:	0712                	slli	a4,a4,0x4
    80045072:	9726                	add	a4,a4,s1
    80045074:	670c                	ld	a1,8(a4)
    80045076:	00469613          	slli	a2,a3,0x4
    8004507a:	9642                	add	a2,a2,a6
    8004507c:	e20c                	sd	a1,0(a2)
    8004507e:	6b18                	ld	a4,16(a4)
quickjs-nuttx/quickjs.c:16000 (discriminator 3)
    for(i = 0; i < bf->argc; i++) {
    80045080:	2685                	addiw	a3,a3,1
quickjs-nuttx/quickjs.c:16001 (discriminator 3)
        arg_buf[i] = bf->argv[i];
    80045082:	e618                	sd	a4,8(a2)
quickjs-nuttx/quickjs.c:16000 (discriminator 3)
    for(i = 0; i < bf->argc; i++) {
    80045084:	b741                	j	80045004 <js_call_bound_function+0x66>
quickjs-nuttx/quickjs.c:16004 (discriminator 3)
        arg_buf[bf->argc + i] = argv[i];
    80045086:	5098                	lw	a4,32(s1)
    80045088:	9f31                	addw	a4,a4,a2
    8004508a:	00469613          	slli	a2,a3,0x4
    8004508e:	9672                	add	a2,a2,t3
    80045090:	620c                	ld	a1,0(a2)
    80045092:	6610                	ld	a2,8(a2)
    80045094:	0712                	slli	a4,a4,0x4
    80045096:	9742                	add	a4,a4,a6
    80045098:	e30c                	sd	a1,0(a4)
    8004509a:	e710                	sd	a2,8(a4)
quickjs-nuttx/quickjs.c:16003 (discriminator 3)
    for(i = 0; i < argc; i++) {
    8004509c:	0685                	addi	a3,a3,1
    8004509e:	b7bd                	j	8004500c <js_call_bound_function+0x6e>
quickjs-nuttx/quickjs.c:16013
        return JS_Call(ctx, bf->func_obj, bf->this_val,
    800450a0:	6894                	ld	a3,16(s1)
    800450a2:	6c98                	ld	a4,24(s1)
    800450a4:	608c                	ld	a1,0(s1)
    800450a6:	6490                	ld	a2,8(s1)
    800450a8:	854a                	mv	a0,s2
    800450aa:	d5bfd0ef          	jal	ra,80042e04 <JS_Call>
    800450ae:	b72d                	j	80044fd8 <js_call_bound_function+0x3a>

00000000800450b0 <js_inner_module_linking>:
js_inner_module_linking():
quickjs-nuttx/quickjs.c:28062
{
    800450b0:	7135                	addi	sp,sp,-160
    800450b2:	e922                	sd	s0,144(sp)
    800450b4:	ed06                	sd	ra,152(sp)
    800450b6:	e526                	sd	s1,136(sp)
    800450b8:	e14a                	sd	s2,128(sp)
    800450ba:	fcce                	sd	s3,120(sp)
    800450bc:	f8d2                	sd	s4,112(sp)
    800450be:	f4d6                	sd	s5,104(sp)
    800450c0:	f0da                	sd	s6,96(sp)
    800450c2:	ecde                	sd	s7,88(sp)
    800450c4:	e8e2                	sd	s8,80(sp)
    800450c6:	e4e6                	sd	s9,72(sp)
    800450c8:	e0ea                	sd	s10,64(sp)
    800450ca:	fc6e                	sd	s11,56(sp)
    800450cc:	1100                	addi	s0,sp,160
quickjs-nuttx/quickjs.c:28071
    if (js_check_stack_overflow(ctx->rt, 0)) {
    800450ce:	6d1c                	ld	a5,24(a0)
    800450d0:	6ffc                	ld	a5,216(a5)
    800450d2:	00f47663          	bgeu	s0,a5,800450de <js_inner_module_linking+0x2e>
quickjs-nuttx/quickjs.c:28072
        JS_ThrowStackOverflow(ctx);
    800450d6:	84dd40ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:28254
    return -1;
    800450da:	597d                	li	s2,-1
    800450dc:	ac6d                	j	80045396 <js_inner_module_linking+0x2e6>
quickjs-nuttx/quickjs.c:28083
    if (m->status == JS_MODULE_STATUS_LINKING ||
    800450de:	0835c703          	lbu	a4,131(a1)
    800450e2:	8936                	mv	s2,a3
    800450e4:	4785                	li	a5,1
    800450e6:	fff7069b          	addiw	a3,a4,-1
    800450ea:	0ff6f693          	zext.b	a3,a3
    800450ee:	84ae                	mv	s1,a1
    800450f0:	2ad7f363          	bgeu	a5,a3,80045396 <js_inner_module_linking+0x2e6>
quickjs-nuttx/quickjs.c:28084
        m->status == JS_MODULE_STATUS_LINKED ||
    800450f4:	ffc7069b          	addiw	a3,a4,-4
    800450f8:	0ff6f693          	zext.b	a3,a3
    800450fc:	28d7fd63          	bgeu	a5,a3,80045396 <js_inner_module_linking+0x2e6>
quickjs-nuttx/quickjs.c:28089
    assert(m->status == JS_MODULE_STATUS_UNLINKED);
    80045100:	cb19                	beqz	a4,80045116 <js_inner_module_linking+0x66>
quickjs-nuttx/quickjs.c:28089 (discriminator 1)
    80045102:	659d                	lui	a1,0x7
    80045104:	4601                	li	a2,0
    80045106:	db958593          	addi	a1,a1,-583 # 6db9 <asinh-0x7fff9247>
quickjs-nuttx/quickjs.c:28104 (discriminator 9)
        assert(m1->status == JS_MODULE_STATUS_LINKING ||
    8004510a:	00024517          	auipc	a0,0x24
    8004510e:	48e50513          	addi	a0,a0,1166 # 80069598 <qjsc_repl+0x3fe8>
    80045112:	04b1b0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:28091 (discriminator 2)
    m->dfs_index = index;
    80045116:	0925a223          	sw	s2,132(a1)
quickjs-nuttx/quickjs.c:28092 (discriminator 2)
    m->dfs_ancestor_index = index;
    8004511a:	0925a423          	sw	s2,136(a1)
quickjs-nuttx/quickjs.c:28090 (discriminator 2)
    m->status = JS_MODULE_STATUS_LINKING;
    8004511e:	08f581a3          	sb	a5,131(a1)
quickjs-nuttx/quickjs.c:28095 (discriminator 2)
    m->stack_prev = *pstack_top;
    80045122:	621c                	ld	a5,0(a2)
    80045124:	89aa                	mv	s3,a0
    80045126:	8ab2                	mv	s5,a2
    80045128:	e9dc                	sd	a5,144(a1)
quickjs-nuttx/quickjs.c:28093 (discriminator 2)
    index++;
    8004512a:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:28096 (discriminator 2)
    *pstack_top = m;
    8004512c:	e20c                	sd	a1,0(a2)
quickjs-nuttx/quickjs.c:28098 (discriminator 2)
    for(i = 0; i < m->req_module_entries_count; i++) {
    8004512e:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:28104 (discriminator 2)
        assert(m1->status == JS_MODULE_STATUS_LINKING ||
    80045130:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:28098 (discriminator 1)
    for(i = 0; i < m->req_module_entries_count; i++) {
    80045132:	509c                	lw	a5,32(s1)
    80045134:	08fa4163          	blt	s4,a5,800451b6 <js_inner_module_linking+0x106>
quickjs-nuttx/quickjs.c:28121
    for(i = 0; i < m->export_entries_count; i++) {
    80045138:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:28123
        if (me->export_type == JS_EXPORT_TYPE_INDIRECT &&
    8004513a:	4b85                	li	s7,1
    8004513c:	07e00c13          	li	s8,126
quickjs-nuttx/quickjs.c:28121 (discriminator 1)
    for(i = 0; i < m->export_entries_count; i++) {
    80045140:	589c                	lw	a5,48(s1)
    80045142:	0cfb4c63          	blt	s6,a5,8004521a <js_inner_module_linking+0x16a>
quickjs-nuttx/quickjs.c:28151
    if (!is_c_module) {
    80045146:	7cbc                	ld	a5,120(s1)
    80045148:	efa1                	bnez	a5,800451a0 <js_inner_module_linking+0xf0>
quickjs-nuttx/quickjs.c:28153
        var_refs = p->u.func.var_refs;
    8004514a:	74bc                	ld	a5,104(s1)
quickjs-nuttx/quickjs.c:28155
        for(i = 0; i < m->import_entries_count; i++) {
    8004514c:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:28156
            mi = &m->import_entries[i];
    8004514e:	4d31                	li	s10,12
quickjs-nuttx/quickjs.c:28153
        var_refs = p->u.func.var_refs;
    80045150:	0387bb03          	ld	s6,56(a5)
quickjs-nuttx/quickjs.c:28163
            if (mi->import_name == JS_ATOM__star_) {
    80045154:	07e00c13          	li	s8,126
quickjs-nuttx/quickjs.c:28191
                    if (JS_IsException(val))
    80045158:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:28155 (discriminator 1)
        for(i = 0; i < m->import_entries_count; i++) {
    8004515a:	48bc                	lw	a5,80(s1)
    8004515c:	10fbc363          	blt	s7,a5,80045262 <js_inner_module_linking+0x1b2>
quickjs-nuttx/quickjs.c:28221
        for(i = 0; i < m->export_entries_count; i++) {
    80045160:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:28221 (discriminator 1)
    80045162:	589c                	lw	a5,48(s1)
    80045164:	1ef6cd63          	blt	a3,a5,8004535e <js_inner_module_linking+0x2ae>
quickjs-nuttx/quickjs.c:28231
        ret_val = JS_Call(ctx, m->func_obj, JS_TRUE, 0, NULL);
    80045168:	78b0                	ld	a2,112(s1)
    8004516a:	74ac                	ld	a1,104(s1)
    8004516c:	4785                	li	a5,1
    8004516e:	f8f43023          	sd	a5,-128(s0)
    80045172:	f8f43423          	sd	a5,-120(s0)
    80045176:	4705                	li	a4,1
    80045178:	4781                	li	a5,0
    8004517a:	4801                	li	a6,0
    8004517c:	4685                	li	a3,1
    8004517e:	854e                	mv	a0,s3
    80045180:	c85fd0ef          	jal	ra,80042e04 <JS_Call>
    80045184:	f6a43823          	sd	a0,-144(s0)
    80045188:	f6b43c23          	sd	a1,-136(s0)
quickjs-nuttx/quickjs.c:28232
        if (JS_IsException(ret_val))
    8004518c:	0005871b          	sext.w	a4,a1
    80045190:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:28231
        ret_val = JS_Call(ctx, m->func_obj, JS_TRUE, 0, NULL);
    80045192:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28232
        if (JS_IsException(ret_val))
    80045194:	f4f703e3          	beq	a4,a5,800450da <js_inner_module_linking+0x2a>
quickjs-nuttx/quickjs.c:28234
        JS_FreeValue(ctx, ret_val);
    80045198:	85aa                	mv	a1,a0
    8004519a:	854e                	mv	a0,s3
    8004519c:	e02c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28237
    assert(m->dfs_ancestor_index <= m->dfs_index);
    800451a0:	0884a703          	lw	a4,136(s1)
    800451a4:	0844a783          	lw	a5,132(s1)
    800451a8:	1ce7db63          	bge	a5,a4,8004537e <js_inner_module_linking+0x2ce>
quickjs-nuttx/quickjs.c:28237 (discriminator 1)
    800451ac:	659d                	lui	a1,0x7
    800451ae:	4601                	li	a2,0
    800451b0:	e4d58593          	addi	a1,a1,-435 # 6e4d <asinh-0x7fff91b3>
    800451b4:	bf99                	j	8004510a <js_inner_module_linking+0x5a>
quickjs-nuttx/quickjs.c:28100
        m1 = rme->module;
    800451b6:	6c9c                	ld	a5,24(s1)
    800451b8:	004a1713          	slli	a4,s4,0x4
quickjs-nuttx/quickjs.c:28101
        index = js_inner_module_linking(ctx, m1, pstack_top, index);
    800451bc:	86ca                	mv	a3,s2
quickjs-nuttx/quickjs.c:28100
        m1 = rme->module;
    800451be:	97ba                	add	a5,a5,a4
    800451c0:	0087bb83          	ld	s7,8(a5)
quickjs-nuttx/quickjs.c:28101
        index = js_inner_module_linking(ctx, m1, pstack_top, index);
    800451c4:	8656                	mv	a2,s5
    800451c6:	854e                	mv	a0,s3
    800451c8:	85de                	mv	a1,s7
    800451ca:	ee7ff0ef          	jal	ra,800450b0 <js_inner_module_linking>
    800451ce:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:28102
        if (index < 0)
    800451d0:	f00545e3          	bltz	a0,800450da <js_inner_module_linking+0x2a>
quickjs-nuttx/quickjs.c:28104
        assert(m1->status == JS_MODULE_STATUS_LINKING ||
    800451d4:	083bc783          	lbu	a5,131(s7) # 4083 <asinh-0x7fffbf7d>
    800451d8:	fff7871b          	addiw	a4,a5,-1
    800451dc:	0ff77713          	zext.b	a4,a4
    800451e0:	00eb7c63          	bgeu	s6,a4,800451f8 <js_inner_module_linking+0x148>
quickjs-nuttx/quickjs.c:28104 (discriminator 1)
    800451e4:	37f1                	addiw	a5,a5,-4
    800451e6:	0ff7f793          	zext.b	a5,a5
    800451ea:	02fb7663          	bgeu	s6,a5,80045216 <js_inner_module_linking+0x166>
quickjs-nuttx/quickjs.c:28104 (discriminator 9)
    800451ee:	659d                	lui	a1,0x7
    800451f0:	4601                	li	a2,0
    800451f2:	dc858593          	addi	a1,a1,-568 # 6dc8 <asinh-0x7fff9238>
    800451f6:	bf11                	j	8004510a <js_inner_module_linking+0x5a>
quickjs-nuttx/quickjs.c:28108 (discriminator 10)
        if (m1->status == JS_MODULE_STATUS_LINKING) {
    800451f8:	01679f63          	bne	a5,s6,80045216 <js_inner_module_linking+0x166>
quickjs-nuttx/quickjs.c:28109
            m->dfs_ancestor_index = min_int(m->dfs_ancestor_index,
    800451fc:	088ba703          	lw	a4,136(s7)
    80045200:	0884a783          	lw	a5,136(s1)
    80045204:	0007069b          	sext.w	a3,a4
    80045208:	0007861b          	sext.w	a2,a5
    8004520c:	00c6d363          	bge	a3,a2,80045212 <js_inner_module_linking+0x162>
    80045210:	87ba                	mv	a5,a4
    80045212:	08f4a423          	sw	a5,136(s1)
quickjs-nuttx/quickjs.c:28098 (discriminator 2)
    for(i = 0; i < m->req_module_entries_count; i++) {
    80045216:	2a05                	addiw	s4,s4,1
    80045218:	bf29                	j	80045132 <js_inner_module_linking+0x82>
quickjs-nuttx/quickjs.c:28122
        JSExportEntry *me = &m->export_entries[i];
    8004521a:	749c                	ld	a5,40(s1)
    8004521c:	005b1a13          	slli	s4,s6,0x5
    80045220:	9a3e                	add	s4,s4,a5
quickjs-nuttx/quickjs.c:28123
        if (me->export_type == JS_EXPORT_TYPE_INDIRECT &&
    80045222:	010a2783          	lw	a5,16(s4)
    80045226:	03779c63          	bne	a5,s7,8004525e <js_inner_module_linking+0x1ae>
quickjs-nuttx/quickjs.c:28124 (discriminator 1)
            me->local_name != JS_ATOM__star_) {
    8004522a:	014a2703          	lw	a4,20(s4)
quickjs-nuttx/quickjs.c:28123 (discriminator 1)
        if (me->export_type == JS_EXPORT_TYPE_INDIRECT &&
    8004522e:	03870863          	beq	a4,s8,8004525e <js_inner_module_linking+0x1ae>
quickjs-nuttx/quickjs.c:28128
            m1 = m->req_module_entries[me->u.req_module_idx].module;
    80045232:	000a2683          	lw	a3,0(s4)
    80045236:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:28129
            ret = js_resolve_export(ctx, &res_m, &res_me, m1, me->local_name);
    80045238:	f8040593          	addi	a1,s0,-128
quickjs-nuttx/quickjs.c:28128
            m1 = m->req_module_entries[me->u.req_module_idx].module;
    8004523c:	0692                	slli	a3,a3,0x4
    8004523e:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:28129
            ret = js_resolve_export(ctx, &res_m, &res_me, m1, me->local_name);
    80045240:	6794                	ld	a3,8(a5)
    80045242:	f7040613          	addi	a2,s0,-144
    80045246:	854e                	mv	a0,s3
    80045248:	a0fd70ef          	jal	ra,8001cc56 <js_resolve_export>
    8004524c:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:28130
            if (ret != JS_RESOLVE_RES_FOUND) {
    8004524e:	c901                	beqz	a0,8004525e <js_inner_module_linking+0x1ae>
quickjs-nuttx/quickjs.c:28131
                js_resolve_export_throw_error(ctx, ret, m, me->export_name);
    80045250:	018a2683          	lw	a3,24(s4)
    80045254:	8626                	mv	a2,s1
quickjs-nuttx/quickjs.c:28182
                    js_resolve_export_throw_error(ctx, ret, m1, mi->import_name);
    80045256:	854e                	mv	a0,s3
    80045258:	98ad30ef          	jal	ra,800183e2 <js_resolve_export_throw_error>
quickjs-nuttx/quickjs.c:28183
                    goto fail;
    8004525c:	bdbd                	j	800450da <js_inner_module_linking+0x2a>
quickjs-nuttx/quickjs.c:28121 (discriminator 2)
    for(i = 0; i < m->export_entries_count; i++) {
    8004525e:	2b05                	addiw	s6,s6,1
    80045260:	b5c5                	j	80045140 <js_inner_module_linking+0x90>
quickjs-nuttx/quickjs.c:28156
            mi = &m->import_entries[i];
    80045262:	03ab8a33          	mul	s4,s7,s10
    80045266:	64bc                	ld	a5,72(s1)
    80045268:	9a3e                	add	s4,s4,a5
quickjs-nuttx/quickjs.c:28162
            m1 = m->req_module_entries[mi->req_module_idx].module;
    8004526a:	008a2703          	lw	a4,8(s4)
    8004526e:	6c9c                	ld	a5,24(s1)
    80045270:	0712                	slli	a4,a4,0x4
    80045272:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:28163
            if (mi->import_name == JS_ATOM__star_) {
    80045274:	004a2703          	lw	a4,4(s4)
quickjs-nuttx/quickjs.c:28162
            m1 = m->req_module_entries[mi->req_module_idx].module;
    80045278:	0087bd83          	ld	s11,8(a5)
quickjs-nuttx/quickjs.c:28163
            if (mi->import_name == JS_ATOM__star_) {
    8004527c:	03871c63          	bne	a4,s8,800452b4 <js_inner_module_linking+0x204>
quickjs-nuttx/quickjs.c:28166
                val = JS_GetModuleNamespace(ctx, m1);
    80045280:	85ee                	mv	a1,s11
    80045282:	854e                	mv	a0,s3
    80045284:	e3beb0ef          	jal	ra,800310be <JS_GetModuleNamespace>
    80045288:	f8a43023          	sd	a0,-128(s0)
    8004528c:	f8b43423          	sd	a1,-120(s0)
quickjs-nuttx/quickjs.c:28167
                if (JS_IsException(val))
    80045290:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:28166
                val = JS_GetModuleNamespace(ctx, m1);
    80045294:	862a                	mv	a2,a0
    80045296:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:28167
                if (JS_IsException(val))
    80045298:	e59781e3          	beq	a5,s9,800450da <js_inner_module_linking+0x2a>
quickjs-nuttx/quickjs.c:28169
                set_value(ctx, &var_refs[mi->var_idx]->value, val);
    8004529c:	000a2783          	lw	a5,0(s4)
    800452a0:	854e                	mv	a0,s3
    800452a2:	078e                	slli	a5,a5,0x3
    800452a4:	97da                	add	a5,a5,s6
    800452a6:	638c                	ld	a1,0(a5)
    800452a8:	02058593          	addi	a1,a1,32
    800452ac:	993c60ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:28155 (discriminator 2)
        for(i = 0; i < m->import_entries_count; i++) {
    800452b0:	2b85                	addiw	s7,s7,1
    800452b2:	b565                	j	8004515a <js_inner_module_linking+0xaa>
quickjs-nuttx/quickjs.c:28179
                ret = js_resolve_export(ctx, &res_m,
    800452b4:	f7040593          	addi	a1,s0,-144
    800452b8:	86ee                	mv	a3,s11
    800452ba:	f6840613          	addi	a2,s0,-152
    800452be:	854e                	mv	a0,s3
    800452c0:	997d70ef          	jal	ra,8001cc56 <js_resolve_export>
    800452c4:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:28181
                if (ret != JS_RESOLVE_RES_FOUND) {
    800452c6:	c509                	beqz	a0,800452d0 <js_inner_module_linking+0x220>
quickjs-nuttx/quickjs.c:28182
                    js_resolve_export_throw_error(ctx, ret, m1, mi->import_name);
    800452c8:	004a2683          	lw	a3,4(s4)
    800452cc:	866e                	mv	a2,s11
    800452ce:	b761                	j	80045256 <js_inner_module_linking+0x1a6>
quickjs-nuttx/quickjs.c:28185
                if (res_me->local_name == JS_ATOM__star_) {
    800452d0:	f6843783          	ld	a5,-152(s0)
    800452d4:	4bd8                	lw	a4,20(a5)
    800452d6:	07871163          	bne	a4,s8,80045338 <js_inner_module_linking+0x288>
quickjs-nuttx/quickjs.c:28189
                    m2 = res_m->req_module_entries[res_me->u.req_module_idx].module;
    800452da:	4398                	lw	a4,0(a5)
    800452dc:	f7043783          	ld	a5,-144(s0)
quickjs-nuttx/quickjs.c:28190
                    val = JS_GetModuleNamespace(ctx, m2);
    800452e0:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:28189
                    m2 = res_m->req_module_entries[res_me->u.req_module_idx].module;
    800452e2:	0712                	slli	a4,a4,0x4
    800452e4:	6f9c                	ld	a5,24(a5)
    800452e6:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:28190
                    val = JS_GetModuleNamespace(ctx, m2);
    800452e8:	678c                	ld	a1,8(a5)
    800452ea:	dd5eb0ef          	jal	ra,800310be <JS_GetModuleNamespace>
    800452ee:	f8b43423          	sd	a1,-120(s0)
    800452f2:	f8a43023          	sd	a0,-128(s0)
quickjs-nuttx/quickjs.c:28191
                    if (JS_IsException(val))
    800452f6:	2581                	sext.w	a1,a1
    800452f8:	df9581e3          	beq	a1,s9,800450da <js_inner_module_linking+0x2a>
quickjs-nuttx/quickjs.c:28193
                    var_ref = js_create_module_var(ctx, TRUE);
    800452fc:	4585                	li	a1,1
    800452fe:	854e                	mv	a0,s3
    80045300:	8ebd50ef          	jal	ra,8001abea <js_create_module_var>
    80045304:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs.c:28194
                    if (!var_ref) {
    80045306:	e909                	bnez	a0,80045318 <js_inner_module_linking+0x268>
quickjs-nuttx/quickjs.c:28195
                        JS_FreeValue(ctx, val);
    80045308:	f8043583          	ld	a1,-128(s0)
    8004530c:	f8843603          	ld	a2,-120(s0)
    80045310:	854e                	mv	a0,s3
    80045312:	c8cc60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28196
                        goto fail;
    80045316:	b3d1                	j	800450da <js_inner_module_linking+0x2a>
quickjs-nuttx/quickjs.c:28198
                    set_value(ctx, &var_ref->value, val);
    80045318:	f8043603          	ld	a2,-128(s0)
    8004531c:	f8843683          	ld	a3,-120(s0)
    80045320:	02050593          	addi	a1,a0,32
    80045324:	854e                	mv	a0,s3
    80045326:	919c60ef          	jal	ra,8000bc3e <set_value>
quickjs-nuttx/quickjs.c:28199
                    var_refs[mi->var_idx] = var_ref;
    8004532a:	000a2783          	lw	a5,0(s4)
    8004532e:	078e                	slli	a5,a5,0x3
    80045330:	97da                	add	a5,a5,s6
    80045332:	01b7b023          	sd	s11,0(a5)
    80045336:	bfad                	j	800452b0 <js_inner_module_linking+0x200>
quickjs-nuttx/quickjs.c:28204
                    var_ref = res_me->u.local.var_ref;
    80045338:	6798                	ld	a4,8(a5)
quickjs-nuttx/quickjs.c:28205
                    if (!var_ref) {
    8004533a:	eb09                	bnez	a4,8004534c <js_inner_module_linking+0x29c>
quickjs-nuttx/quickjs.c:28206
                        p1 = JS_VALUE_GET_OBJ(res_m->func_obj);
    8004533c:	f7043703          	ld	a4,-144(s0)
quickjs-nuttx/quickjs.c:28207
                        var_ref = p1->u.func.var_refs[res_me->u.local.var_idx];
    80045340:	7734                	ld	a3,104(a4)
    80045342:	4398                	lw	a4,0(a5)
    80045344:	7e9c                	ld	a5,56(a3)
    80045346:	070e                	slli	a4,a4,0x3
    80045348:	97ba                	add	a5,a5,a4
    8004534a:	6398                	ld	a4,0(a5)
quickjs-nuttx/quickjs.c:28209
                    var_ref->header.ref_count++;
    8004534c:	431c                	lw	a5,0(a4)
    8004534e:	2785                	addiw	a5,a5,1
    80045350:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:28210
                    var_refs[mi->var_idx] = var_ref;
    80045352:	000a2783          	lw	a5,0(s4)
    80045356:	078e                	slli	a5,a5,0x3
    80045358:	97da                	add	a5,a5,s6
    8004535a:	e398                	sd	a4,0(a5)
    8004535c:	bf91                	j	800452b0 <js_inner_module_linking+0x200>
quickjs-nuttx/quickjs.c:28222
            JSExportEntry *me = &m->export_entries[i];
    8004535e:	7498                	ld	a4,40(s1)
    80045360:	00569793          	slli	a5,a3,0x5
    80045364:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:28223
            if (me->export_type == JS_EXPORT_TYPE_LOCAL) {
    80045366:	4b98                	lw	a4,16(a5)
    80045368:	eb09                	bnez	a4,8004537a <js_inner_module_linking+0x2ca>
quickjs-nuttx/quickjs.c:28224
                var_ref = var_refs[me->u.local.var_idx];
    8004536a:	4398                	lw	a4,0(a5)
    8004536c:	070e                	slli	a4,a4,0x3
    8004536e:	975a                	add	a4,a4,s6
    80045370:	6318                	ld	a4,0(a4)
quickjs-nuttx/quickjs.c:28225
                var_ref->header.ref_count++;
    80045372:	4310                	lw	a2,0(a4)
    80045374:	2605                	addiw	a2,a2,1
    80045376:	c310                	sw	a2,0(a4)
quickjs-nuttx/quickjs.c:28226
                me->u.local.var_ref = var_ref;
    80045378:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:28221 (discriminator 2)
        for(i = 0; i < m->export_entries_count; i++) {
    8004537a:	2685                	addiw	a3,a3,1
    8004537c:	b3dd                	j	80045162 <js_inner_module_linking+0xb2>
quickjs-nuttx/quickjs.c:28238 (discriminator 2)
    if (m->dfs_index == m->dfs_ancestor_index) {
    8004537e:	00f71c63          	bne	a4,a5,80045396 <js_inner_module_linking+0x2e6>
quickjs-nuttx/quickjs.c:28243
            m1->status = JS_MODULE_STATUS_LINKED;
    80045382:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:28241
            m1 = *pstack_top;
    80045384:	000ab783          	ld	a5,0(s5) # 4000 <asinh-0x7fffc000>
quickjs-nuttx/quickjs.c:28242
            *pstack_top = m1->stack_prev;
    80045388:	6bd4                	ld	a3,144(a5)
    8004538a:	00dab023          	sd	a3,0(s5)
quickjs-nuttx/quickjs.c:28243
            m1->status = JS_MODULE_STATUS_LINKED;
    8004538e:	08e781a3          	sb	a4,131(a5)
quickjs-nuttx/quickjs.c:28244
            if (m1 == m)
    80045392:	fef499e3          	bne	s1,a5,80045384 <js_inner_module_linking+0x2d4>
quickjs-nuttx/quickjs.c:28255
}
    80045396:	60ea                	ld	ra,152(sp)
    80045398:	644a                	ld	s0,144(sp)
    8004539a:	64aa                	ld	s1,136(sp)
    8004539c:	79e6                	ld	s3,120(sp)
    8004539e:	7a46                	ld	s4,112(sp)
    800453a0:	7aa6                	ld	s5,104(sp)
    800453a2:	7b06                	ld	s6,96(sp)
    800453a4:	6be6                	ld	s7,88(sp)
    800453a6:	6c46                	ld	s8,80(sp)
    800453a8:	6ca6                	ld	s9,72(sp)
    800453aa:	6d06                	ld	s10,64(sp)
    800453ac:	7de2                	ld	s11,56(sp)
    800453ae:	854a                	mv	a0,s2
    800453b0:	690a                	ld	s2,128(sp)
    800453b2:	610d                	addi	sp,sp,160
    800453b4:	8082                	ret

00000000800453b6 <js_async_module_execution_rejected>:
js_async_module_execution_rejected():
quickjs-nuttx/quickjs.c:28622
{
    800453b6:	7159                	addi	sp,sp,-112
    800453b8:	f0a2                	sd	s0,96(sp)
    800453ba:	f486                	sd	ra,104(sp)
    800453bc:	eca6                	sd	s1,88(sp)
    800453be:	e8ca                	sd	s2,80(sp)
    800453c0:	e4ce                	sd	s3,72(sp)
    800453c2:	e0d2                	sd	s4,64(sp)
    800453c4:	1880                	addi	s0,sp,112
quickjs-nuttx/quickjs.c:28624
    JSValueConst error = argv[0];
    800453c6:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:28622
{
    800453c8:	f8b43823          	sd	a1,-112(s0)
quickjs-nuttx/quickjs.c:28624
    JSValueConst error = argv[0];
    800453cc:	670c                	ld	a1,8(a4)
quickjs-nuttx/quickjs.c:28627
    if (js_check_stack_overflow(ctx->rt, 0))
    800453ce:	6d18                	ld	a4,24(a0)
quickjs-nuttx/quickjs.c:28622
{
    800453d0:	f8c43c23          	sd	a2,-104(s0)
quickjs-nuttx/quickjs.c:28624
    JSValueConst error = argv[0];
    800453d4:	faf43023          	sd	a5,-96(s0)
quickjs-nuttx/quickjs.c:28627
    if (js_check_stack_overflow(ctx->rt, 0))
    800453d8:	6f78                	ld	a4,216(a4)
quickjs-nuttx/quickjs.c:28624
    JSValueConst error = argv[0];
    800453da:	fab43423          	sd	a1,-88(s0)
quickjs-nuttx/quickjs.c:28623
    JSModuleDef *module = JS_VALUE_GET_PTR(func_data[0]);
    800453de:	00083483          	ld	s1,0(a6) # 4000 <asinh-0x7fffc000>
quickjs-nuttx/quickjs.c:28627
    if (js_check_stack_overflow(ctx->rt, 0))
    800453e2:	02e47463          	bgeu	s0,a4,8004540a <js_async_module_execution_rejected+0x54>
quickjs-nuttx/quickjs.c:28628
        return JS_ThrowStackOverflow(ctx);
    800453e6:	d3cd40ef          	jal	ra,80019922 <JS_ThrowStackOverflow>
    800453ea:	fca43023          	sd	a0,-64(s0)
    800453ee:	fcb43423          	sd	a1,-56(s0)
quickjs-nuttx/quickjs.c:28659 (discriminator 1)
}
    800453f2:	fc043503          	ld	a0,-64(s0)
    800453f6:	fc843583          	ld	a1,-56(s0)
    800453fa:	70a6                	ld	ra,104(sp)
    800453fc:	7406                	ld	s0,96(sp)
    800453fe:	64e6                	ld	s1,88(sp)
    80045400:	6946                	ld	s2,80(sp)
    80045402:	69a6                	ld	s3,72(sp)
    80045404:	6a06                	ld	s4,64(sp)
    80045406:	6165                	addi	sp,sp,112
    80045408:	8082                	ret
quickjs-nuttx/quickjs.c:28630
    if (module->status == JS_MODULE_STATUS_EVALUATED) {
    8004540a:	0834c703          	lbu	a4,131(s1)
    8004540e:	4995                	li	s3,5
    80045410:	03371063          	bne	a4,s3,80045430 <js_async_module_execution_rejected+0x7a>
quickjs-nuttx/quickjs.c:28631
        assert(module->eval_has_exception);
    80045414:	0f04c783          	lbu	a5,240(s1)
    80045418:	0e079d63          	bnez	a5,80045512 <js_async_module_execution_rejected+0x15c>
quickjs-nuttx/quickjs.c:28631 (discriminator 1)
    8004541c:	659d                	lui	a1,0x7
    8004541e:	4601                	li	a2,0
    80045420:	fd758593          	addi	a1,a1,-41 # 6fd7 <asinh-0x7fff9029>
quickjs-nuttx/quickjs.c:28635 (discriminator 1)
    assert(module->status == JS_MODULE_STATUS_EVALUATING_ASYNC);
    80045424:	00024517          	auipc	a0,0x24
    80045428:	17450513          	addi	a0,a0,372 # 80069598 <qjsc_repl+0x3fe8>
    8004542c:	5301b0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:28635
    80045430:	4691                	li	a3,4
    80045432:	00d70763          	beq	a4,a3,80045440 <js_async_module_execution_rejected+0x8a>
quickjs-nuttx/quickjs.c:28635 (discriminator 1)
    80045436:	659d                	lui	a1,0x7
    80045438:	4601                	li	a2,0
    8004543a:	fdb58593          	addi	a1,a1,-37 # 6fdb <asinh-0x7fff9025>
    8004543e:	b7dd                	j	80045424 <js_async_module_execution_rejected+0x6e>
quickjs-nuttx/quickjs.c:28636 (discriminator 2)
    assert(!module->eval_has_exception);
    80045440:	0f04c703          	lbu	a4,240(s1)
    80045444:	c711                	beqz	a4,80045450 <js_async_module_execution_rejected+0x9a>
quickjs-nuttx/quickjs.c:28636 (discriminator 1)
    80045446:	659d                	lui	a1,0x7
    80045448:	4601                	li	a2,0
    8004544a:	fdc58593          	addi	a1,a1,-36 # 6fdc <asinh-0x7fff9024>
    8004544e:	bfd9                	j	80045424 <js_async_module_execution_rejected+0x6e>
quickjs-nuttx/quickjs.c:28637 (discriminator 2)
    assert(module->async_evaluation);
    80045450:	0ac4a703          	lw	a4,172(s1)
    80045454:	e711                	bnez	a4,80045460 <js_async_module_execution_rejected+0xaa>
quickjs-nuttx/quickjs.c:28637 (discriminator 1)
    80045456:	659d                	lui	a1,0x7
    80045458:	4601                	li	a2,0
    8004545a:	fdd58593          	addi	a1,a1,-35 # 6fdd <asinh-0x7fff9023>
    8004545e:	b7d9                	j	80045424 <js_async_module_execution_rejected+0x6e>
quickjs-nuttx/quickjs.c:28639 (discriminator 2)
    module->eval_has_exception = TRUE;
    80045460:	4705                	li	a4,1
    80045462:	892a                	mv	s2,a0
    80045464:	0ee48823          	sb	a4,240(s1)
quickjs-nuttx/quickjs.c:28640 (discriminator 2)
    module->eval_exception = JS_DupValue(ctx, error);
    80045468:	853e                	mv	a0,a5
    8004546a:	fb1c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004546e:	fce8                	sd	a0,248(s1)
quickjs-nuttx/quickjs.c:28641 (discriminator 2)
    module->status = JS_MODULE_STATUS_EVALUATED;
    80045470:	093481a3          	sb	s3,131(s1)
quickjs-nuttx/quickjs.c:28640 (discriminator 2)
    module->eval_exception = JS_DupValue(ctx, error);
    80045474:	10b4b023          	sd	a1,256(s1)
quickjs-nuttx/quickjs.c:28643 (discriminator 2)
    for(i = 0; i < module->async_parent_modules_count; i++) {
    80045478:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:28646 (discriminator 2)
        js_async_module_execution_rejected(ctx, JS_UNDEFINED, 1, &error, 0,
    8004547a:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:28643 (discriminator 1)
    for(i = 0; i < module->async_parent_modules_count; i++) {
    8004547c:	0a04a783          	lw	a5,160(s1)
    80045480:	00f9ce63          	blt	s3,a5,8004549c <js_async_module_execution_rejected+0xe6>
quickjs-nuttx/quickjs.c:28651
    if (!JS_IsUndefined(module->promise)) {
    80045484:	0c84a703          	lw	a4,200(s1)
    80045488:	478d                	li	a5,3
    8004548a:	08f70463          	beq	a4,a5,80045512 <js_async_module_execution_rejected+0x15c>
quickjs-nuttx/quickjs.c:28653
        assert(module->cycle_root == module);
    8004548e:	7cd8                	ld	a4,184(s1)
    80045490:	04970a63          	beq	a4,s1,800454e4 <js_async_module_execution_rejected+0x12e>
quickjs-nuttx/quickjs.c:28653 (discriminator 1)
    80045494:	659d                	lui	a1,0x7
    80045496:	4601                	li	a2,0
    80045498:	15b5                	addi	a1,a1,-19
    8004549a:	b769                	j	80045424 <js_async_module_execution_rejected+0x6e>
quickjs-nuttx/quickjs.c:28644 (discriminator 3)
        JSModuleDef *m = module->async_parent_modules[i];
    8004549c:	6cdc                	ld	a5,152(s1)
    8004549e:	00399713          	slli	a4,s3,0x3
quickjs-nuttx/quickjs.c:28645 (discriminator 3)
        JSValue m_obj = JS_NewModuleValue(ctx, m);
    800454a2:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:28644 (discriminator 3)
        JSModuleDef *m = module->async_parent_modules[i];
    800454a4:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:28645 (discriminator 3)
        JSValue m_obj = JS_NewModuleValue(ctx, m);
    800454a6:	638c                	ld	a1,0(a5)
quickjs-nuttx/quickjs.c:28643 (discriminator 3)
    for(i = 0; i < module->async_parent_modules_count; i++) {
    800454a8:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:28645 (discriminator 3)
        JSValue m_obj = JS_NewModuleValue(ctx, m);
    800454aa:	8a4c50ef          	jal	ra,8000a54e <JS_NewModuleValue>
    800454ae:	faa43823          	sd	a0,-80(s0)
    800454b2:	fab43c23          	sd	a1,-72(s0)
quickjs-nuttx/quickjs.c:28646 (discriminator 3)
        js_async_module_execution_rejected(ctx, JS_UNDEFINED, 1, &error, 0,
    800454b6:	fb040813          	addi	a6,s0,-80
    800454ba:	4781                	li	a5,0
    800454bc:	fa040713          	addi	a4,s0,-96
    800454c0:	4685                	li	a3,1
    800454c2:	460d                	li	a2,3
    800454c4:	4581                	li	a1,0
    800454c6:	854a                	mv	a0,s2
    800454c8:	fc043023          	sd	zero,-64(s0)
    800454cc:	fd443423          	sd	s4,-56(s0)
    800454d0:	ee7ff0ef          	jal	ra,800453b6 <js_async_module_execution_rejected>
quickjs-nuttx/quickjs.c:28648 (discriminator 3)
        JS_FreeValue(ctx, m_obj);
    800454d4:	fb043583          	ld	a1,-80(s0)
    800454d8:	fb843603          	ld	a2,-72(s0)
    800454dc:	854a                	mv	a0,s2
    800454de:	ac0c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28643 (discriminator 3)
    for(i = 0; i < module->async_parent_modules_count; i++) {
    800454e2:	bf69                	j	8004547c <js_async_module_execution_rejected+0xc6>
quickjs-nuttx/quickjs.c:28654 (discriminator 2)
        ret_val = JS_Call(ctx, module->resolving_funcs[1], JS_UNDEFINED,
    800454e4:	74f0                	ld	a2,232(s1)
    800454e6:	70ec                	ld	a1,224(s1)
    800454e8:	fcf43423          	sd	a5,-56(s0)
    800454ec:	fa040813          	addi	a6,s0,-96
    800454f0:	4785                	li	a5,1
    800454f2:	4681                	li	a3,0
    800454f4:	470d                	li	a4,3
    800454f6:	854a                	mv	a0,s2
    800454f8:	fc043023          	sd	zero,-64(s0)
    800454fc:	909fd0ef          	jal	ra,80042e04 <JS_Call>
    80045500:	862e                	mv	a2,a1
    80045502:	faa43823          	sd	a0,-80(s0)
    80045506:	fab43c23          	sd	a1,-72(s0)
quickjs-nuttx/quickjs.c:28656 (discriminator 2)
        JS_FreeValue(ctx, ret_val);
    8004550a:	85aa                	mv	a1,a0
    8004550c:	854a                	mv	a0,s2
    8004550e:	a90c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28632 (discriminator 2)
        return JS_UNDEFINED;
    80045512:	478d                	li	a5,3
    80045514:	fc043023          	sd	zero,-64(s0)
    80045518:	fcf43423          	sd	a5,-56(s0)
    8004551c:	bdd9                	j	800453f2 <js_async_module_execution_rejected+0x3c>

000000008004551e <js_set_module_evaluated>:
js_set_module_evaluated():
quickjs-nuttx/quickjs.c:28548
    if (!JS_IsUndefined(m->promise)) {
    8004551e:	0c85a703          	lw	a4,200(a1) # 70c8 <asinh-0x7fff8f38>
quickjs-nuttx/quickjs.c:28547
    m->status = JS_MODULE_STATUS_EVALUATED;
    80045522:	4795                	li	a5,5
    80045524:	08f581a3          	sb	a5,131(a1)
quickjs-nuttx/quickjs.c:28548
    if (!JS_IsUndefined(m->promise)) {
    80045528:	478d                	li	a5,3
    8004552a:	04f70863          	beq	a4,a5,8004557a <js_set_module_evaluated+0x5c>
quickjs-nuttx/quickjs.c:28546
{
    8004552e:	7139                	addi	sp,sp,-64
    80045530:	fc06                	sd	ra,56(sp)
    80045532:	f822                	sd	s0,48(sp)
quickjs-nuttx/quickjs.c:28550
        assert(m->cycle_root == m);
    80045534:	7dd0                	ld	a2,184(a1)
    80045536:	00b60c63          	beq	a2,a1,8004554e <js_set_module_evaluated+0x30>
quickjs-nuttx/quickjs.c:28550 (discriminator 1)
    8004553a:	659d                	lui	a1,0x7
    8004553c:	4601                	li	a2,0
    8004553e:	f8658593          	addi	a1,a1,-122 # 6f86 <asinh-0x7fff907a>
    80045542:	00024517          	auipc	a0,0x24
    80045546:	05650513          	addi	a0,a0,86 # 80069598 <qjsc_repl+0x3fe8>
    8004554a:	4121b0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:28552
        ret_val = JS_Call(ctx, m->resolving_funcs[0], JS_UNDEFINED,
    8004554e:	6a6c                	ld	a1,208(a2)
    80045550:	6e70                	ld	a2,216(a2)
quickjs-nuttx/quickjs.c:28551
        value = JS_UNDEFINED;
    80045552:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:28552
        ret_val = JS_Call(ctx, m->resolving_funcs[0], JS_UNDEFINED,
    80045554:	f43e                	sd	a5,40(sp)
    80045556:	880a                	mv	a6,sp
    80045558:	4785                	li	a5,1
    8004555a:	4681                	li	a3,0
    8004555c:	470d                	li	a4,3
    8004555e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:28551
        value = JS_UNDEFINED;
    80045560:	e002                	sd	zero,0(sp)
quickjs-nuttx/quickjs.c:28552
        ret_val = JS_Call(ctx, m->resolving_funcs[0], JS_UNDEFINED,
    80045562:	f002                	sd	zero,32(sp)
    80045564:	8a1fd0ef          	jal	ra,80042e04 <JS_Call>
    80045568:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:28554
        JS_FreeValue(ctx, ret_val);
    8004556a:	85aa                	mv	a1,a0
    8004556c:	8522                	mv	a0,s0
    8004556e:	a30c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:28556
}
    80045572:	70e2                	ld	ra,56(sp)
    80045574:	7442                	ld	s0,48(sp)
    80045576:	6121                	addi	sp,sp,64
    80045578:	8082                	ret
    8004557a:	8082                	ret

000000008004557c <js_promise_resolve>:
js_promise_resolve():
quickjs-nuttx/quickjs.c:48135
{
    8004557c:	7171                	addi	sp,sp,-176
    8004557e:	ed26                	sd	s1,152(sp)
    80045580:	e432                	sd	a2,8(sp)
    80045582:	84be                	mv	s1,a5
    80045584:	f506                	sd	ra,168(sp)
    80045586:	f122                	sd	s0,160(sp)
    80045588:	e94a                	sd	s2,144(sp)
    8004558a:	e54e                	sd	s3,136(sp)
    8004558c:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:48139
    if (!JS_IsObject(this_val))
    8004558e:	2601                	sext.w	a2,a2
    80045590:	57fd                	li	a5,-1
    80045592:	00f60a63          	beq	a2,a5,800455a6 <js_promise_resolve+0x2a>
quickjs-nuttx/quickjs.c:48164
}
    80045596:	740a                	ld	s0,160(sp)
    80045598:	70aa                	ld	ra,168(sp)
    8004559a:	64ea                	ld	s1,152(sp)
    8004559c:	694a                	ld	s2,144(sp)
    8004559e:	69aa                	ld	s3,136(sp)
    800455a0:	614d                	addi	sp,sp,176
quickjs-nuttx/quickjs.c:48140
        return JS_ThrowTypeErrorNotAnObject(ctx);
    800455a2:	e88d306f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
    800455a6:	842a                	mv	s0,a0
    800455a8:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:48141
    if (!is_reject && JS_GetOpaque(argv[0], JS_CLASS_PROMISE)) {
    800455aa:	e4c9                	bnez	s1,80045634 <js_promise_resolve+0xb8>
quickjs-nuttx/quickjs.c:48141 (discriminator 1)
    800455ac:	6308                	ld	a0,0(a4)
    800455ae:	670c                	ld	a1,8(a4)
    800455b0:	03100613          	li	a2,49
    800455b4:	8e0c90ef          	jal	ra,8000e694 <JS_GetOpaque>
    800455b8:	cd35                	beqz	a0,80045634 <js_promise_resolve+0xb8>
quickjs-nuttx/quickjs.c:48144
        ctor = JS_GetProperty(ctx, argv[0], JS_ATOM_constructor);
    800455ba:	00093703          	ld	a4,0(s2)
    800455be:	00893783          	ld	a5,8(s2)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800455c2:	4801                	li	a6,0
    800455c4:	85ba                	mv	a1,a4
    800455c6:	863e                	mv	a2,a5
    800455c8:	03d00693          	li	a3,61
    800455cc:	8522                	mv	a0,s0
    800455ce:	f0ba                	sd	a4,96(sp)
    800455d0:	f4be                	sd	a5,104(sp)
    800455d2:	cd8d10ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800455d6:	e8aa                	sd	a0,80(sp)
    800455d8:	ecae                	sd	a1,88(sp)
    800455da:	f82a                	sd	a0,48(sp)
    800455dc:	fc2e                	sd	a1,56(sp)
js_promise_resolve():
quickjs-nuttx/quickjs.c:48145
        if (JS_IsException(ctor))
    800455de:	0005871b          	sext.w	a4,a1
    800455e2:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800455e4:	862e                	mv	a2,a1
js_promise_resolve():
quickjs-nuttx/quickjs.c:48145
    800455e6:	00f71d63          	bne	a4,a5,80045600 <js_promise_resolve+0x84>
quickjs-nuttx/quickjs.c:48146
            return ctor;
    800455ea:	e0aa                	sd	a0,64(sp)
    800455ec:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:48164
}
    800455ee:	70aa                	ld	ra,168(sp)
    800455f0:	740a                	ld	s0,160(sp)
    800455f2:	6506                	ld	a0,64(sp)
    800455f4:	65a6                	ld	a1,72(sp)
    800455f6:	64ea                	ld	s1,152(sp)
    800455f8:	694a                	ld	s2,144(sp)
    800455fa:	69aa                	ld	s3,136(sp)
    800455fc:	614d                	addi	sp,sp,176
    800455fe:	8082                	ret
quickjs-nuttx/quickjs.c:48147
        is_same = js_same_value(ctx, ctor, this_val);
    80045600:	6682                	ld	a3,0(sp)
    80045602:	6722                	ld	a4,8(sp)
    80045604:	85aa                	mv	a1,a0
    80045606:	8522                	mv	a0,s0
    80045608:	b6ac60ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:48148
        JS_FreeValue(ctx, ctor);
    8004560c:	75c2                	ld	a1,48(sp)
    8004560e:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:48147
        is_same = js_same_value(ctx, ctor, this_val);
    80045610:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:48148
        JS_FreeValue(ctx, ctor);
    80045612:	8522                	mv	a0,s0
    80045614:	98ac60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48149
        if (is_same)
    80045618:	00098e63          	beqz	s3,80045634 <js_promise_resolve+0xb8>
quickjs-nuttx/quickjs.c:48164
}
    8004561c:	740a                	ld	s0,160(sp)
quickjs-nuttx/quickjs.c:48150
            return JS_DupValue(ctx, argv[0]);
    8004561e:	00093503          	ld	a0,0(s2)
    80045622:	00893583          	ld	a1,8(s2)
quickjs-nuttx/quickjs.c:48164
}
    80045626:	70aa                	ld	ra,168(sp)
    80045628:	64ea                	ld	s1,152(sp)
    8004562a:	694a                	ld	s2,144(sp)
    8004562c:	69aa                	ld	s3,136(sp)
    8004562e:	614d                	addi	sp,sp,176
quickjs-nuttx/quickjs.c:48150
            return JS_DupValue(ctx, argv[0]);
    80045630:	debc406f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:48152
    result_promise = js_new_promise_capability(ctx, resolving_funcs, this_val);
    80045634:	6602                	ld	a2,0(sp)
    80045636:	66a2                	ld	a3,8(sp)
    80045638:	108c                	addi	a1,sp,96
    8004563a:	8522                	mv	a0,s0
    8004563c:	de8fe0ef          	jal	ra,80043c24 <js_new_promise_capability>
    80045640:	e82a                	sd	a0,16(sp)
    80045642:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:48153
    if (JS_IsException(result_promise))
    80045644:	0005879b          	sext.w	a5,a1
    80045648:	4999                	li	s3,6
    8004564a:	01379563          	bne	a5,s3,80045654 <js_promise_resolve+0xd8>
quickjs-nuttx/quickjs.c:48154
        return result_promise;
    8004564e:	e0aa                	sd	a0,64(sp)
    80045650:	e4ae                	sd	a1,72(sp)
    80045652:	bf71                	j	800455ee <js_promise_resolve+0x72>
quickjs-nuttx/quickjs.c:48155
    ret = JS_Call(ctx, resolving_funcs[is_reject], JS_UNDEFINED, 1, argv);
    80045654:	478d                	li	a5,3
    80045656:	fc3e                	sd	a5,56(sp)
    80045658:	0492                	slli	s1,s1,0x4
    8004565a:	011c                	addi	a5,sp,128
    8004565c:	94be                	add	s1,s1,a5
    8004565e:	fe84b603          	ld	a2,-24(s1)
    80045662:	fe04b583          	ld	a1,-32(s1)
    80045666:	884a                	mv	a6,s2
    80045668:	4785                	li	a5,1
    8004566a:	4681                	li	a3,0
    8004566c:	470d                	li	a4,3
    8004566e:	8522                	mv	a0,s0
    80045670:	f802                	sd	zero,48(sp)
    80045672:	f92fd0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:48156
    JS_FreeValue(ctx, resolving_funcs[0]);
    80045676:	7626                	ld	a2,104(sp)
quickjs-nuttx/quickjs.c:48155
    ret = JS_Call(ctx, resolving_funcs[is_reject], JS_UNDEFINED, 1, argv);
    80045678:	84ae                	mv	s1,a1
    8004567a:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:48156
    JS_FreeValue(ctx, resolving_funcs[0]);
    8004567c:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:48155
    ret = JS_Call(ctx, resolving_funcs[is_reject], JS_UNDEFINED, 1, argv);
    8004567e:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:48156
    JS_FreeValue(ctx, resolving_funcs[0]);
    80045680:	8522                	mv	a0,s0
    80045682:	91cc60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48157
    JS_FreeValue(ctx, resolving_funcs[1]);
    80045686:	75c6                	ld	a1,112(sp)
    80045688:	7666                	ld	a2,120(sp)
    8004568a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48158
    if (JS_IsException(ret)) {
    8004568c:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:48157
    JS_FreeValue(ctx, resolving_funcs[1]);
    8004568e:	910c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48158
    if (JS_IsException(ret)) {
    80045692:	01349c63          	bne	s1,s3,800456aa <js_promise_resolve+0x12e>
quickjs-nuttx/quickjs.c:48159
        JS_FreeValue(ctx, result_promise);
    80045696:	65c2                	ld	a1,16(sp)
    80045698:	6662                	ld	a2,24(sp)
    8004569a:	8522                	mv	a0,s0
    8004569c:	902c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48160
        return ret;
    800456a0:	7782                	ld	a5,32(sp)
    800456a2:	e0be                	sd	a5,64(sp)
    800456a4:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:48163
    return result_promise;
    800456a6:	e4be                	sd	a5,72(sp)
    800456a8:	b799                	j	800455ee <js_promise_resolve+0x72>
quickjs-nuttx/quickjs.c:48162
    JS_FreeValue(ctx, ret);
    800456aa:	7582                	ld	a1,32(sp)
    800456ac:	7622                	ld	a2,40(sp)
    800456ae:	8522                	mv	a0,s0
    800456b0:	8eec60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48163
    return result_promise;
    800456b4:	67c2                	ld	a5,16(sp)
    800456b6:	e0be                	sd	a5,64(sp)
    800456b8:	67e2                	ld	a5,24(sp)
    800456ba:	b7f5                	j	800456a6 <js_promise_resolve+0x12a>

00000000800456bc <js_async_function_resume>:
js_async_function_resume():
quickjs-nuttx/quickjs.c:19092
{
    800456bc:	7135                	addi	sp,sp,-160
    800456be:	e922                	sd	s0,144(sp)
    800456c0:	e526                	sd	s1,136(sp)
    800456c2:	ed06                	sd	ra,152(sp)
    800456c4:	84ae                	mv	s1,a1
    800456c6:	e14a                	sd	s2,128(sp)
    800456c8:	fcce                	sd	s3,120(sp)
    800456ca:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19095
    func_ret = async_func_resume(ctx, s);
    800456cc:	ee9fb0ef          	jal	ra,800415b4 <async_func_resume>
quickjs-nuttx/quickjs.c:19096
    if (s->is_completed) {
    800456d0:	589c                	lw	a5,48(s1)
quickjs-nuttx/quickjs.c:19095
    func_ret = async_func_resume(ctx, s);
    800456d2:	e02a                	sd	a0,0(sp)
    800456d4:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:19096
    if (s->is_completed) {
    800456d6:	cbbd                	beqz	a5,8004574c <js_async_function_resume+0x90>
quickjs-nuttx/quickjs.c:19097
        if (JS_IsException(func_ret)) {
    800456d8:	2581                	sext.w	a1,a1
    800456da:	4799                	li	a5,6
    800456dc:	04f59763          	bne	a1,a5,8004572a <js_async_function_resume+0x6e>
quickjs-nuttx/quickjs.c:19100
            error = JS_GetException(ctx);
    800456e0:	8522                	mv	a0,s0
    800456e2:	dadc80ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:19101
            ret2 = JS_Call(ctx, s->resolving_funcs[1], JS_UNDEFINED,
    800456e6:	68b0                	ld	a2,80(s1)
quickjs-nuttx/quickjs.c:19100
            error = JS_GetException(ctx);
    800456e8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:19101
            ret2 = JS_Call(ctx, s->resolving_funcs[1], JS_UNDEFINED,
    800456ea:	64ac                	ld	a1,72(s1)
    800456ec:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:19100
            error = JS_GetException(ctx);
    800456ee:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:19101
            ret2 = JS_Call(ctx, s->resolving_funcs[1], JS_UNDEFINED,
    800456f0:	ecbe                	sd	a5,88(sp)
    800456f2:	03010813          	addi	a6,sp,48
    800456f6:	4785                	li	a5,1
    800456f8:	4681                	li	a3,0
    800456fa:	470d                	li	a4,3
    800456fc:	8522                	mv	a0,s0
    800456fe:	e882                	sd	zero,80(sp)
    80045700:	f04fd0ef          	jal	ra,80042e04 <JS_Call>
    80045704:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:19103
            JS_FreeValue(ctx, error);
    80045706:	7662                	ld	a2,56(sp)
    80045708:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:19101
            ret2 = JS_Call(ctx, s->resolving_funcs[1], JS_UNDEFINED,
    8004570a:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:19109 (discriminator 2)
            JS_FreeValue(ctx, func_ret);
    8004570c:	8522                	mv	a0,s0
    8004570e:	890c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19110 (discriminator 2)
            JS_FreeValue(ctx, ret2); /* XXX: what to do if exception ? */
    80045712:	7582                	ld	a1,32(sp)
    80045714:	7622                	ld	a2,40(sp)
    80045716:	8522                	mv	a0,s0
    80045718:	886c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19144
}
    8004571c:	60ea                	ld	ra,152(sp)
    8004571e:	644a                	ld	s0,144(sp)
    80045720:	64aa                	ld	s1,136(sp)
    80045722:	690a                	ld	s2,128(sp)
    80045724:	79e6                	ld	s3,120(sp)
    80045726:	610d                	addi	sp,sp,160
    80045728:	8082                	ret
quickjs-nuttx/quickjs.c:19107 (discriminator 2)
            ret2 = JS_Call(ctx, s->resolving_funcs[0], JS_UNDEFINED,
    8004572a:	60b0                	ld	a2,64(s1)
    8004572c:	7c8c                	ld	a1,56(s1)
    8004572e:	478d                	li	a5,3
    80045730:	ecbe                	sd	a5,88(sp)
    80045732:	880a                	mv	a6,sp
    80045734:	4785                	li	a5,1
    80045736:	4681                	li	a3,0
    80045738:	470d                	li	a4,3
    8004573a:	8522                	mv	a0,s0
    8004573c:	e882                	sd	zero,80(sp)
    8004573e:	ec6fd0ef          	jal	ra,80042e04 <JS_Call>
    80045742:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:19109 (discriminator 2)
            JS_FreeValue(ctx, func_ret);
    80045744:	6622                	ld	a2,8(sp)
    80045746:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs.c:19107 (discriminator 2)
            ret2 = JS_Call(ctx, s->resolving_funcs[0], JS_UNDEFINED,
    80045748:	f02a                	sd	a0,32(sp)
    8004574a:	b7c9                	j	8004570c <js_async_function_resume+0x50>
quickjs-nuttx/quickjs.c:19116
        value = s->frame.cur_sp[-1];
    8004574c:	70dc                	ld	a5,160(s1)
quickjs-nuttx/quickjs.c:19117
        s->frame.cur_sp[-1] = JS_UNDEFINED;
    8004574e:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:19120
        JS_FreeValue(ctx, func_ret); /* not used */
    80045750:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19116
        value = s->frame.cur_sp[-1];
    80045752:	ff07b703          	ld	a4,-16(a5)
quickjs-nuttx/quickjs.c:19124
        if (JS_IsException(promise))
    80045756:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:19116
        value = s->frame.cur_sp[-1];
    80045758:	e83a                	sd	a4,16(sp)
    8004575a:	ff87b703          	ld	a4,-8(a5)
    8004575e:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:19117
        s->frame.cur_sp[-1] = JS_UNDEFINED;
    80045760:	fe07b823          	sd	zero,-16(a5)
    80045764:	ff27bc23          	sd	s2,-8(a5)
quickjs-nuttx/quickjs.c:19120
        JS_FreeValue(ctx, func_ret); /* not used */
    80045768:	6582                	ld	a1,0(sp)
    8004576a:	6622                	ld	a2,8(sp)
    8004576c:	832c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19121
        promise = js_promise_resolve(ctx, ctx->promise_ctor,
    80045770:	6850                	ld	a2,144(s0)
    80045772:	644c                	ld	a1,136(s0)
    80045774:	4781                	li	a5,0
    80045776:	0818                	addi	a4,sp,16
    80045778:	4685                	li	a3,1
    8004577a:	8522                	mv	a0,s0
    8004577c:	e01ff0ef          	jal	ra,8004557c <js_promise_resolve>
    80045780:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:19123
        JS_FreeValue(ctx, value);
    80045782:	6662                	ld	a2,24(sp)
    80045784:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:19121
        promise = js_promise_resolve(ctx, ctx->promise_ctor,
    80045786:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:19123
        JS_FreeValue(ctx, value);
    80045788:	8522                	mv	a0,s0
    8004578a:	814c60ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19124
        if (JS_IsException(promise))
    8004578e:	57a2                	lw	a5,40(sp)
    80045790:	f53788e3          	beq	a5,s3,800456e0 <js_async_function_resume+0x24>
js_async_function_resolve_create():
quickjs-nuttx/quickjs.c:19077
            JS_NewObjectProtoClass(ctx, ctx->function_proto,
    80045794:	642c                	ld	a1,72(s0)
    80045796:	6830                	ld	a2,80(s0)
    80045798:	03500693          	li	a3,53
    8004579c:	8522                	mv	a0,s0
    8004579e:	c46d60ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    800457a2:	fc2e                	sd	a1,56(sp)
    800457a4:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:19079
        if (JS_IsException(resolving_funcs[i])) {
    800457a6:	2581                	sext.w	a1,a1
    800457a8:	07358963          	beq	a1,s3,8004581a <js_async_function_resume+0x15e>
quickjs-nuttx/quickjs.c:19085
        s->header.ref_count++;
    800457ac:	409c                	lw	a5,0(s1)
quickjs-nuttx/quickjs.c:19077
            JS_NewObjectProtoClass(ctx, ctx->function_proto,
    800457ae:	03600693          	li	a3,54
quickjs-nuttx/quickjs.c:19085
        s->header.ref_count++;
    800457b2:	2785                	addiw	a5,a5,1
    800457b4:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:19086
        p->u.async_function_data = s;
    800457b6:	f904                	sd	s1,48(a0)
quickjs-nuttx/quickjs.c:19077
            JS_NewObjectProtoClass(ctx, ctx->function_proto,
    800457b8:	642c                	ld	a1,72(s0)
    800457ba:	6830                	ld	a2,80(s0)
    800457bc:	8522                	mv	a0,s0
    800457be:	c26d60ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    800457c2:	e4ae                	sd	a1,72(sp)
    800457c4:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:19079
        if (JS_IsException(resolving_funcs[i])) {
    800457c6:	2581                	sext.w	a1,a1
    800457c8:	05358463          	beq	a1,s3,80045810 <js_async_function_resume+0x154>
quickjs-nuttx/quickjs.c:19085
        s->header.ref_count++;
    800457cc:	409c                	lw	a5,0(s1)
js_async_function_resume():
quickjs-nuttx/quickjs.c:19135
        res = perform_promise_then(ctx, promise,
    800457ce:	7582                	ld	a1,32(sp)
    800457d0:	7622                	ld	a2,40(sp)
js_async_function_resolve_create():
quickjs-nuttx/quickjs.c:19085
        s->header.ref_count++;
    800457d2:	2785                	addiw	a5,a5,1
    800457d4:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:19086
        p->u.async_function_data = s;
    800457d6:	f904                	sd	s1,48(a0)
js_async_function_resume():
quickjs-nuttx/quickjs.c:19135
        res = perform_promise_then(ctx, promise,
    800457d8:	0898                	addi	a4,sp,80
    800457da:	1814                	addi	a3,sp,48
    800457dc:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:19134
            resolving_funcs1[i] = JS_UNDEFINED;
    800457de:	ecca                	sd	s2,88(sp)
    800457e0:	f4ca                	sd	s2,104(sp)
    800457e2:	e882                	sd	zero,80(sp)
    800457e4:	f082                	sd	zero,96(sp)
quickjs-nuttx/quickjs.c:19135
        res = perform_promise_then(ctx, promise,
    800457e6:	b79d50ef          	jal	ra,8001b35e <perform_promise_then>
quickjs-nuttx/quickjs.c:19138
        JS_FreeValue(ctx, promise);
    800457ea:	7582                	ld	a1,32(sp)
    800457ec:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:19135
        res = perform_promise_then(ctx, promise,
    800457ee:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:19138
        JS_FreeValue(ctx, promise);
    800457f0:	8522                	mv	a0,s0
    800457f2:	fadc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19140
            JS_FreeValue(ctx, resolving_funcs[i]);
    800457f6:	75c2                	ld	a1,48(sp)
    800457f8:	7662                	ld	a2,56(sp)
    800457fa:	8522                	mv	a0,s0
    800457fc:	fa3c50ef          	jal	ra,8000b79e <JS_FreeValue>
    80045800:	6586                	ld	a1,64(sp)
    80045802:	6626                	ld	a2,72(sp)
    80045804:	8522                	mv	a0,s0
    80045806:	f99c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19141
        if (res)
    8004580a:	f00909e3          	beqz	s2,8004571c <js_async_function_resume+0x60>
    8004580e:	bdc9                	j	800456e0 <js_async_function_resume+0x24>
js_async_function_resolve_create():
quickjs-nuttx/quickjs.c:19081
                JS_FreeValue(ctx, resolving_funcs[0]);
    80045810:	75c2                	ld	a1,48(sp)
    80045812:	7662                	ld	a2,56(sp)
    80045814:	8522                	mv	a0,s0
    80045816:	f89c50ef          	jal	ra,8000b79e <JS_FreeValue>
js_async_function_resume():
quickjs-nuttx/quickjs.c:19127
            JS_FreeValue(ctx, promise);
    8004581a:	7582                	ld	a1,32(sp)
    8004581c:	7622                	ld	a2,40(sp)
    8004581e:	8522                	mv	a0,s0
    80045820:	f7fc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:19128
            goto fail;
    80045824:	bd75                	j	800456e0 <js_async_function_resume+0x24>

0000000080045826 <js_async_function_resolve_call>:
js_async_function_resolve_call():
quickjs-nuttx/quickjs.c:19151
{
    80045826:	7159                	addi	sp,sp,-112
    80045828:	f0a2                	sd	s0,96(sp)
    8004582a:	f486                	sd	ra,104(sp)
    8004582c:	eca6                	sd	s1,88(sp)
    8004582e:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:19154
    BOOL is_reject = p->class_id - JS_CLASS_ASYNC_FUNCTION_RESOLVE;
    80045830:	0065d703          	lhu	a4,6(a1)
quickjs-nuttx/quickjs.c:19151
{
    80045834:	e036                	sd	a3,0(sp)
    80045836:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:19154
    BOOL is_reject = p->class_id - JS_CLASS_ASYNC_FUNCTION_RESOLVE;
    80045838:	fcb7069b          	addiw	a3,a4,-53
quickjs-nuttx/quickjs.c:19151
{
    8004583c:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:19153
    JSAsyncFunctionState *s = p->u.async_function_data;
    8004583e:	7984                	ld	s1,48(a1)
quickjs-nuttx/quickjs.c:19151
{
    80045840:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:19154
    BOOL is_reject = p->class_id - JS_CLASS_ASYNC_FUNCTION_RESOLVE;
    80045842:	8736                	mv	a4,a3
quickjs-nuttx/quickjs.c:19157
    if (argc > 0)
    80045844:	02f05e63          	blez	a5,80045880 <js_async_function_resolve_call+0x5a>
quickjs-nuttx/quickjs.c:19158
        arg = argv[0];
    80045848:	00083783          	ld	a5,0(a6)
    8004584c:	f03e                	sd	a5,32(sp)
    8004584e:	00883783          	ld	a5,8(a6)
quickjs-nuttx/quickjs.c:19160
        arg = JS_UNDEFINED;
    80045852:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:19161
    s->throw_flag = is_reject;
    80045854:	d4d8                	sw	a4,44(s1)
quickjs-nuttx/quickjs.c:19163
        JS_Throw(ctx, JS_DupValue(ctx, arg));
    80045856:	7502                	ld	a0,32(sp)
    80045858:	75a2                	ld	a1,40(sp)
quickjs-nuttx/quickjs.c:19162
    if (is_reject) {
    8004585a:	c695                	beqz	a3,80045886 <js_async_function_resolve_call+0x60>
quickjs-nuttx/quickjs.c:19163
        JS_Throw(ctx, JS_DupValue(ctx, arg));
    8004585c:	bbfc40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045860:	862e                	mv	a2,a1
    80045862:	85aa                	mv	a1,a0
    80045864:	8522                	mv	a0,s0
    80045866:	bddc80ef          	jal	ra,8000e442 <JS_Throw>
quickjs-nuttx/quickjs.c:19168
    js_async_function_resume(ctx, s);
    8004586a:	85a6                	mv	a1,s1
    8004586c:	8522                	mv	a0,s0
    8004586e:	e4fff0ef          	jal	ra,800456bc <js_async_function_resume>
quickjs-nuttx/quickjs.c:19170
}
    80045872:	70a6                	ld	ra,104(sp)
    80045874:	7406                	ld	s0,96(sp)
    80045876:	64e6                	ld	s1,88(sp)
    80045878:	4501                	li	a0,0
    8004587a:	458d                	li	a1,3
    8004587c:	6165                	addi	sp,sp,112
    8004587e:	8082                	ret
quickjs-nuttx/quickjs.c:19160
        arg = JS_UNDEFINED;
    80045880:	f002                	sd	zero,32(sp)
    80045882:	478d                	li	a5,3
    80045884:	b7f9                	j	80045852 <js_async_function_resolve_call+0x2c>
quickjs-nuttx/quickjs.c:19166
        s->frame.cur_sp[-1] = JS_DupValue(ctx, arg);
    80045886:	b95c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004588a:	70dc                	ld	a5,160(s1)
    8004588c:	fea7b823          	sd	a0,-16(a5)
    80045890:	feb7bc23          	sd	a1,-8(a5)
    80045894:	bfd9                	j	8004586a <js_async_function_resolve_call+0x44>

0000000080045896 <js_json_check>:
js_json_check():
quickjs-nuttx/quickjs.c:45126
{
    80045896:	7131                	addi	sp,sp,-192
    80045898:	f922                	sd	s0,176(sp)
    8004589a:	f14a                	sd	s2,160(sp)
    8004589c:	ed4e                	sd	s3,152(sp)
    8004589e:	f03a                	sd	a4,32(sp)
    800458a0:	f43e                	sd	a5,40(sp)
    800458a2:	843e                	mv	s0,a5
    800458a4:	fd06                	sd	ra,184(sp)
    800458a6:	f526                	sd	s1,168(sp)
    800458a8:	e952                	sd	s4,144(sp)
    800458aa:	f832                	sd	a2,48(sp)
    800458ac:	fc36                	sd	a3,56(sp)
    800458ae:	e842                	sd	a6,16(sp)
    800458b0:	ec46                	sd	a7,24(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    800458b2:	2781                	sext.w	a5,a5
js_json_check():
quickjs-nuttx/quickjs.c:45130
    if (JS_IsObject(val) ||
    800458b4:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:45126
{
    800458b6:	892a                	mv	s2,a0
    800458b8:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:45130
    if (JS_IsObject(val) ||
    800458ba:	00e78563          	beq	a5,a4,800458c4 <js_json_check+0x2e>
quickjs-nuttx/quickjs.c:45130 (discriminator 1)
    800458be:	5759                	li	a4,-10
    800458c0:	08e79163          	bne	a5,a4,80045942 <js_json_check+0xac>
quickjs-nuttx/quickjs.c:45133
            JSValue f = JS_GetProperty(ctx, val, JS_ATOM_toJSON);
    800458c4:	77a2                	ld	a5,40(sp)
    800458c6:	7702                	ld	a4,32(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800458c8:	4801                	li	a6,0
    800458ca:	863e                	mv	a2,a5
    800458cc:	09600693          	li	a3,150
    800458d0:	85ba                	mv	a1,a4
    800458d2:	854a                	mv	a0,s2
    800458d4:	fcbe                	sd	a5,120(sp)
    800458d6:	f8ba                	sd	a4,112(sp)
    800458d8:	9d2d10ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800458dc:	e8aa                	sd	a0,80(sp)
    800458de:	ecae                	sd	a1,88(sp)
js_json_check():
quickjs-nuttx/quickjs.c:45134
            if (JS_IsException(f))
    800458e0:	0005879b          	sext.w	a5,a1
    800458e4:	4a19                	li	s4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800458e6:	84aa                	mv	s1,a0
    800458e8:	862e                	mv	a2,a1
js_json_check():
quickjs-nuttx/quickjs.c:45134
    800458ea:	05478063          	beq	a5,s4,8004592a <js_json_check+0x94>
quickjs-nuttx/quickjs.c:45136
            if (JS_IsFunction(ctx, f)) {
    800458ee:	85aa                	mv	a1,a0
    800458f0:	854a                	mv	a0,s2
    800458f2:	e432                	sd	a2,8(sp)
    800458f4:	bafc80ef          	jal	ra,8000e4a2 <JS_IsFunction>
    800458f8:	6622                	ld	a2,8(sp)
    800458fa:	c121                	beqz	a0,8004593a <js_json_check+0xa4>
quickjs-nuttx/quickjs.c:45137
                v = JS_CallFree(ctx, f, val, 1, &key);
    800458fc:	7682                	ld	a3,32(sp)
    800458fe:	7722                	ld	a4,40(sp)
    80045900:	4785                	li	a5,1
    80045902:	01010813          	addi	a6,sp,16
    80045906:	85a6                	mv	a1,s1
    80045908:	854a                	mv	a0,s2
    8004590a:	96ad10ef          	jal	ra,80016a74 <JS_CallFree>
    8004590e:	842e                	mv	s0,a1
    80045910:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:45138
                JS_FreeValue(ctx, val);
    80045912:	7622                	ld	a2,40(sp)
    80045914:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:45137
                v = JS_CallFree(ctx, f, val, 1, &key);
    80045916:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:45138
                JS_FreeValue(ctx, val);
    80045918:	854a                	mv	a0,s2
    8004591a:	e85c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45139
                val = v;
    8004591e:	6786                	ld	a5,64(sp)
    80045920:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:45140
                if (JS_IsException(val))
    80045922:	0004079b          	sext.w	a5,s0
    80045926:	01479e63          	bne	a5,s4,80045942 <js_json_check+0xac>
quickjs-nuttx/quickjs.c:45179
    JS_FreeValue(ctx, val);
    8004592a:	7582                	ld	a1,32(sp)
    8004592c:	8622                	mv	a2,s0
    8004592e:	854a                	mv	a0,s2
    80045930:	e6fc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45180
    return JS_EXCEPTION;
    80045934:	4799                	li	a5,6
    80045936:	e882                	sd	zero,80(sp)
    80045938:	a855                	j	800459ec <js_json_check+0x156>
quickjs-nuttx/quickjs.c:45143
                JS_FreeValue(ctx, f);
    8004593a:	85a6                	mv	a1,s1
    8004593c:	854a                	mv	a0,s2
    8004593e:	e61c50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80045942:	0089b603          	ld	a2,8(s3)
js_json_check():
quickjs-nuttx/quickjs.c:45147
    if (!JS_IsUndefined(jsc->replacer_func)) {
    80045946:	478d                	li	a5,3
    80045948:	0006071b          	sext.w	a4,a2
    8004594c:	04f70363          	beq	a4,a5,80045992 <js_json_check+0xfc>
quickjs-nuttx/quickjs.c:45148
        args[0] = key;
    80045950:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:45150
        v = JS_Call(ctx, jsc->replacer_func, holder, 2, args);
    80045952:	7762                	ld	a4,56(sp)
    80045954:	76c2                	ld	a3,48(sp)
quickjs-nuttx/quickjs.c:45148
        args[0] = key;
    80045956:	f8be                	sd	a5,112(sp)
    80045958:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:45150
        v = JS_Call(ctx, jsc->replacer_func, holder, 2, args);
    8004595a:	0009b583          	ld	a1,0(s3)
    8004595e:	07010813          	addi	a6,sp,112
quickjs-nuttx/quickjs.c:45148
        args[0] = key;
    80045962:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:45149
        args[1] = val;
    80045964:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:45150
        v = JS_Call(ctx, jsc->replacer_func, holder, 2, args);
    80045966:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:45149
        args[1] = val;
    80045968:	f422                	sd	s0,40(sp)
    8004596a:	e13e                	sd	a5,128(sp)
quickjs-nuttx/quickjs.c:45150
        v = JS_Call(ctx, jsc->replacer_func, holder, 2, args);
    8004596c:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:45149
        args[1] = val;
    8004596e:	e522                	sd	s0,136(sp)
quickjs-nuttx/quickjs.c:45150
        v = JS_Call(ctx, jsc->replacer_func, holder, 2, args);
    80045970:	c94fd0ef          	jal	ra,80042e04 <JS_Call>
    80045974:	842e                	mv	s0,a1
    80045976:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:45151
        JS_FreeValue(ctx, val);
    80045978:	7622                	ld	a2,40(sp)
    8004597a:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs.c:45150
        v = JS_Call(ctx, jsc->replacer_func, holder, 2, args);
    8004597c:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:45151
        JS_FreeValue(ctx, val);
    8004597e:	854a                	mv	a0,s2
    80045980:	e1fc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45152
        val = v;
    80045984:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:45153
        if (JS_IsException(val))
    80045986:	0004071b          	sext.w	a4,s0
quickjs-nuttx/quickjs.c:45152
        val = v;
    8004598a:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:45153
        if (JS_IsException(val))
    8004598c:	4799                	li	a5,6
    8004598e:	f8f70ee3          	beq	a4,a5,8004592a <js_json_check+0x94>
quickjs-nuttx/quickjs.c:45157
    switch (JS_VALUE_GET_NORM_TAG(val)) {
    80045992:	00a4079b          	addiw	a5,s0,10
    80045996:	0007869b          	sext.w	a3,a5
    8004599a:	4745                	li	a4,17
    8004599c:	04d76163          	bltu	a4,a3,800459de <js_json_check+0x148>
    800459a0:	02079713          	slli	a4,a5,0x20
    800459a4:	01e75793          	srli	a5,a4,0x1e
    800459a8:	00028717          	auipc	a4,0x28
    800459ac:	bd870713          	addi	a4,a4,-1064 # 8006d580 <qjsc_repl+0x7fd0>
    800459b0:	97ba                	add	a5,a5,a4
    800459b2:	439c                	lw	a5,0(a5)
    800459b4:	97ba                	add	a5,a5,a4
    800459b6:	8782                	jr	a5
quickjs-nuttx/quickjs.c:45159
        if (JS_IsFunction(ctx, val))
    800459b8:	7582                	ld	a1,32(sp)
    800459ba:	8622                	mv	a2,s0
    800459bc:	854a                	mv	a0,s2
    800459be:	ae5c80ef          	jal	ra,8000e4a2 <JS_IsFunction>
    800459c2:	ed11                	bnez	a0,800459de <js_json_check+0x148>
quickjs-nuttx/quickjs.c:45171
        return val;
    800459c4:	7782                	ld	a5,32(sp)
    800459c6:	eca2                	sd	s0,88(sp)
    800459c8:	e8be                	sd	a5,80(sp)
quickjs-nuttx/quickjs.c:45181
}
    800459ca:	70ea                	ld	ra,184(sp)
    800459cc:	744a                	ld	s0,176(sp)
    800459ce:	6546                	ld	a0,80(sp)
    800459d0:	65e6                	ld	a1,88(sp)
    800459d2:	74aa                	ld	s1,168(sp)
    800459d4:	790a                	ld	s2,160(sp)
    800459d6:	69ea                	ld	s3,152(sp)
    800459d8:	6a4a                	ld	s4,144(sp)
    800459da:	6129                	addi	sp,sp,192
    800459dc:	8082                	ret
quickjs-nuttx/quickjs.c:45175
    JS_FreeValue(ctx, val);
    800459de:	7582                	ld	a1,32(sp)
    800459e0:	8622                	mv	a2,s0
    800459e2:	854a                	mv	a0,s2
    800459e4:	dbbc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45176
    return JS_UNDEFINED;
    800459e8:	478d                	li	a5,3
    800459ea:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:45180
    return JS_EXCEPTION;
    800459ec:	ecbe                	sd	a5,88(sp)
    800459ee:	bff1                	j	800459ca <js_json_check+0x134>

00000000800459f0 <js_json_to_str.constprop.0>:
js_json_to_str():
quickjs-nuttx/quickjs.c:45183
static int js_json_to_str(JSContext *ctx, JSONStringifyContext *jsc,
    800459f0:	7125                	addi	sp,sp,-416
    800459f2:	f436                	sd	a3,40(sp)
    800459f4:	26a9                	addiw	a3,a3,10
    800459f6:	eb22                	sd	s0,400(sp)
    800459f8:	e83a                	sd	a4,16(sp)
    800459fa:	ec3e                	sd	a5,24(sp)
    800459fc:	ef06                	sd	ra,408(sp)
    800459fe:	e726                	sd	s1,392(sp)
    80045a00:	e34a                	sd	s2,384(sp)
    80045a02:	fece                	sd	s3,376(sp)
    80045a04:	fad2                	sd	s4,368(sp)
    80045a06:	f6d6                	sd	s5,360(sp)
    80045a08:	f2da                	sd	s6,352(sp)
    80045a0a:	eede                	sd	s7,344(sp)
    80045a0c:	eae2                	sd	s8,336(sp)
    80045a0e:	e6e6                	sd	s9,328(sp)
    80045a10:	e2ea                	sd	s10,320(sp)
    80045a12:	fe6e                	sd	s11,312(sp)
    80045a14:	f032                	sd	a2,32(sp)
quickjs-nuttx/quickjs.c:45193
    indent1 = JS_UNDEFINED;
    80045a16:	e082                	sd	zero,64(sp)
    80045a18:	e482                	sd	zero,72(sp)
quickjs-nuttx/quickjs.c:45194
    sep = JS_UNDEFINED;
    80045a1a:	e882                	sd	zero,80(sp)
    80045a1c:	ec82                	sd	zero,88(sp)
quickjs-nuttx/quickjs.c:45195
    sep1 = JS_UNDEFINED;
    80045a1e:	f082                	sd	zero,96(sp)
    80045a20:	f482                	sd	zero,104(sp)
quickjs-nuttx/quickjs.c:45196
    tab = JS_UNDEFINED;
    80045a22:	f882                	sd	zero,112(sp)
    80045a24:	fc82                	sd	zero,120(sp)
quickjs-nuttx/quickjs.c:45197
    prop = JS_UNDEFINED;
    80045a26:	e902                	sd	zero,144(sp)
    80045a28:	ed02                	sd	zero,152(sp)
quickjs-nuttx/quickjs.c:45199
    switch (JS_VALUE_GET_NORM_TAG(val)) {
    80045a2a:	0006871b          	sext.w	a4,a3
    80045a2e:	47c5                	li	a5,17
quickjs-nuttx/quickjs.c:45183
static int js_json_to_str(JSContext *ctx, JSONStringifyContext *jsc,
    80045a30:	842a                	mv	s0,a0
    80045a32:	56e7e663          	bltu	a5,a4,80045f9e <js_json_to_str.constprop.0+0x5ae>
    80045a36:	02069793          	slli	a5,a3,0x20
    80045a3a:	01e7d693          	srli	a3,a5,0x1e
    80045a3e:	00028717          	auipc	a4,0x28
    80045a42:	bb270713          	addi	a4,a4,-1102 # 8006d5f0 <qjsc_repl+0x8040>
    80045a46:	96ba                	add	a3,a3,a4
    80045a48:	429c                	lw	a5,0(a3)
    80045a4a:	84ae                	mv	s1,a1
    80045a4c:	97ba                	add	a5,a5,a4
    80045a4e:	8782                	jr	a5
quickjs-nuttx/quickjs.c:45201
        p = JS_VALUE_GET_OBJ(val);
    80045a50:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:45203
        if (cl == JS_CLASS_STRING) {
    80045a52:	4695                	li	a3,5
quickjs-nuttx/quickjs.c:45202
        cl = p->class_id;
    80045a54:	0067d703          	lhu	a4,6(a5)
quickjs-nuttx/quickjs.c:45203
        if (cl == JS_CLASS_STRING) {
    80045a58:	04d71e63          	bne	a4,a3,80045ab4 <js_json_to_str.constprop.0+0xc4>
quickjs-nuttx/quickjs.c:45204
            val = JS_ToStringFree(ctx, val);
    80045a5c:	7622                	ld	a2,40(sp)
    80045a5e:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:45205
            if (JS_IsException(val))
    80045a60:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:45204
            val = JS_ToStringFree(ctx, val);
    80045a62:	d25da0ef          	jal	ra,80020786 <JS_ToStringFree>
    80045a66:	f02a                	sd	a0,32(sp)
    80045a68:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:45205
            if (JS_IsException(val))
    80045a6a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45204
            val = JS_ToStringFree(ctx, val);
    80045a6e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45205
            if (JS_IsException(val))
    80045a70:	07278163          	beq	a5,s2,80045ad2 <js_json_to_str.constprop.0+0xe2>
quickjs-nuttx/quickjs.c:45207
            val = JS_ToQuotedStringFree(ctx, val);
    80045a74:	85aa                	mv	a1,a0
    80045a76:	8522                	mv	a0,s0
    80045a78:	da2db0ef          	jal	ra,8002101a <JS_ToQuotedStringFree>
    80045a7c:	f02a                	sd	a0,32(sp)
    80045a7e:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:45208
            if (JS_IsException(val))
    80045a80:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45207
            val = JS_ToQuotedStringFree(ctx, val);
    80045a84:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45208
            if (JS_IsException(val))
    80045a86:	05278663          	beq	a5,s2,80045ad2 <js_json_to_str.constprop.0+0xe2>
quickjs-nuttx/quickjs.c:45215
            return string_buffer_concat_value_free(jsc->b, val);
    80045a8a:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:45223
            return string_buffer_concat_value_free(jsc->b, val);
    80045a8c:	68a8                	ld	a0,80(s1)
    80045a8e:	9f4db0ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
    80045a92:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:45375
}
    80045a94:	60fa                	ld	ra,408(sp)
    80045a96:	645a                	ld	s0,400(sp)
    80045a98:	64ba                	ld	s1,392(sp)
    80045a9a:	691a                	ld	s2,384(sp)
    80045a9c:	79f6                	ld	s3,376(sp)
    80045a9e:	7a56                	ld	s4,368(sp)
    80045aa0:	7b16                	ld	s6,352(sp)
    80045aa2:	6bf6                	ld	s7,344(sp)
    80045aa4:	6c56                	ld	s8,336(sp)
    80045aa6:	6cb6                	ld	s9,328(sp)
    80045aa8:	6d16                	ld	s10,320(sp)
    80045aaa:	7df2                	ld	s11,312(sp)
    80045aac:	8556                	mv	a0,s5
    80045aae:	7ab6                	ld	s5,360(sp)
    80045ab0:	611d                	addi	sp,sp,416
    80045ab2:	8082                	ret
quickjs-nuttx/quickjs.c:45211
        } else if (cl == JS_CLASS_NUMBER) {
    80045ab4:	4691                	li	a3,4
    80045ab6:	02d71463          	bne	a4,a3,80045ade <js_json_to_str.constprop.0+0xee>
quickjs-nuttx/quickjs.c:45212
            val = JS_ToNumberFree(ctx, val);
    80045aba:	7622                	ld	a2,40(sp)
    80045abc:	85be                	mv	a1,a5
    80045abe:	fccdc0ef          	jal	ra,8002228a <JS_ToNumberFree>
    80045ac2:	f02a                	sd	a0,32(sp)
    80045ac4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:45213
            if (JS_IsException(val))
    80045ac6:	0005871b          	sext.w	a4,a1
    80045aca:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45212
            val = JS_ToNumberFree(ctx, val);
    80045acc:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45213
            if (JS_IsException(val))
    80045ace:	faf71ee3          	bne	a4,a5,80045a8a <js_json_to_str.constprop.0+0x9a>
quickjs-nuttx/quickjs.c:45197
    prop = JS_UNDEFINED;
    80045ad2:	4d8d                	li	s11,3
quickjs-nuttx/quickjs.c:45196
    tab = JS_UNDEFINED;
    80045ad4:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:45195
    sep1 = JS_UNDEFINED;
    80045ad6:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:45194
    sep = JS_UNDEFINED;
    80045ad8:	4a0d                	li	s4,3
quickjs-nuttx/quickjs.c:45193
    indent1 = JS_UNDEFINED;
    80045ada:	4b8d                	li	s7,3
    80045adc:	aee5                	j	80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45216
        } else if (cl == JS_CLASS_BOOLEAN) {
    80045ade:	4919                	li	s2,6
    80045ae0:	01271e63          	bne	a4,s2,80045afc <js_json_to_str.constprop.0+0x10c>
quickjs-nuttx/quickjs.c:45217
            ret = string_buffer_concat_value(jsc->b, p->u.object_data);
    80045ae4:	7b8c                	ld	a1,48(a5)
    80045ae6:	7f90                	ld	a2,56(a5)
    80045ae8:	68a8                	ld	a0,80(s1)
    80045aea:	bc3db0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:45218
            JS_FreeValue(ctx, val);
    80045aee:	7582                	ld	a1,32(sp)
    80045af0:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:45217
            ret = string_buffer_concat_value(jsc->b, p->u.object_data);
    80045af2:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:45339
        JS_FreeValue(ctx, prop);
    80045af4:	8522                	mv	a0,s0
    80045af6:	ca9c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45340
        return 0;
    80045afa:	bf69                	j	80045a94 <js_json_to_str.constprop.0+0xa4>
quickjs-nuttx/quickjs.c:45222
        if (cl == JS_CLASS_BIG_FLOAT) {
    80045afc:	02200693          	li	a3,34
    80045b00:	00d71563          	bne	a4,a3,80045b0a <js_json_to_str.constprop.0+0x11a>
quickjs-nuttx/quickjs.c:45223
            return string_buffer_concat_value_free(jsc->b, val);
    80045b04:	85be                	mv	a1,a5
    80045b06:	7622                	ld	a2,40(sp)
    80045b08:	b751                	j	80045a8c <js_json_to_str.constprop.0+0x9c>
quickjs-nuttx/quickjs.c:45226
        if (cl == JS_CLASS_BIG_INT) {
    80045b0a:	02100793          	li	a5,33
    80045b0e:	00f71763          	bne	a4,a5,80045b1c <js_json_to_str.constprop.0+0x12c>
quickjs-nuttx/quickjs.c:45360
        JS_ThrowTypeError(ctx, "bigint are forbidden in JSON.stringify");
    80045b12:	00028597          	auipc	a1,0x28
    80045b16:	ab658593          	addi	a1,a1,-1354 # 8006d5c8 <qjsc_repl+0x8018>
    80045b1a:	a035                	j	80045b46 <js_json_to_str.constprop.0+0x156>
quickjs-nuttx/quickjs.c:45230
        v = js_array_includes(ctx, jsc->stack, 1, (JSValueConst *)&val);
    80045b1c:	6c90                	ld	a2,24(s1)
    80045b1e:	698c                	ld	a1,16(a1)
    80045b20:	1018                	addi	a4,sp,32
    80045b22:	4685                	li	a3,1
    80045b24:	f3df30ef          	jal	ra,80039a60 <js_array_includes>
quickjs-nuttx/quickjs.c:45231
        if (JS_IsException(v))
    80045b28:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45230
        v = js_array_includes(ctx, jsc->stack, 1, (JSValueConst *)&val);
    80045b2c:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:45231
        if (JS_IsException(v))
    80045b2e:	fb2782e3          	beq	a5,s2,80045ad2 <js_json_to_str.constprop.0+0xe2>
quickjs-nuttx/quickjs.c:45233
        if (JS_ToBoolFree(ctx, v)) {
    80045b32:	85aa                	mv	a1,a0
    80045b34:	8522                	mv	a0,s0
    80045b36:	fdfc50ef          	jal	ra,8000bb14 <JS_ToBoolFree>
    80045b3a:	8aaa                	mv	s5,a0
    80045b3c:	c909                	beqz	a0,80045b4e <js_json_to_str.constprop.0+0x15e>
quickjs-nuttx/quickjs.c:45234
            JS_ThrowTypeError(ctx, "circular reference");
    80045b3e:	00027597          	auipc	a1,0x27
    80045b42:	34258593          	addi	a1,a1,834 # 8006ce80 <qjsc_repl+0x78d0>
    80045b46:	8522                	mv	a0,s0
    80045b48:	b25d20ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:45235
            goto exception;
    80045b4c:	b759                	j	80045ad2 <js_json_to_str.constprop.0+0xe2>
quickjs-nuttx/quickjs.c:45237
        indent1 = JS_ConcatString(ctx, JS_DupValue(ctx, indent), JS_DupValue(ctx, jsc->gap));
    80045b4e:	6542                	ld	a0,16(sp)
    80045b50:	65e2                	ld	a1,24(sp)
    80045b52:	8c9c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045b56:	f22a                	sd	a0,288(sp)
    80045b58:	f62e                	sd	a1,296(sp)
    80045b5a:	7888                	ld	a0,48(s1)
    80045b5c:	7c8c                	ld	a1,56(s1)
    80045b5e:	8bdc40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045b62:	872e                	mv	a4,a1
    80045b64:	ee2e                	sd	a1,280(sp)
    80045b66:	7632                	ld	a2,296(sp)
    80045b68:	7592                	ld	a1,288(sp)
    80045b6a:	86aa                	mv	a3,a0
    80045b6c:	ea2a                	sd	a0,272(sp)
    80045b6e:	8522                	mv	a0,s0
    80045b70:	d99da0ef          	jal	ra,80020908 <JS_ConcatString>
    80045b74:	e0aa                	sd	a0,64(sp)
    80045b76:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:45238
        if (JS_IsException(indent1))
    80045b78:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45237
        indent1 = JS_ConcatString(ctx, JS_DupValue(ctx, indent), JS_DupValue(ctx, jsc->gap));
    80045b7c:	89aa                	mv	s3,a0
    80045b7e:	8b2e                	mv	s6,a1
    80045b80:	8bae                	mv	s7,a1
quickjs-nuttx/quickjs.c:45238
        if (JS_IsException(indent1))
    80045b82:	43278563          	beq	a5,s2,80045fac <js_json_to_str.constprop.0+0x5bc>
quickjs-nuttx/quickjs.c:45240
        if (!JS_IsEmptyString(jsc->gap)) {
    80045b86:	7888                	ld	a0,48(s1)
    80045b88:	7c8c                	ld	a1,56(s1)
    80045b8a:	8bcc20ef          	jal	ra,80007c46 <JS_IsEmptyString>
    80045b8e:	ed29                	bnez	a0,80045be8 <js_json_to_str.constprop.0+0x1f8>
quickjs-nuttx/quickjs.c:45241
            sep = JS_ConcatString3(ctx, "\n", JS_DupValue(ctx, indent1), "");
    80045b90:	854e                	mv	a0,s3
    80045b92:	85da                	mv	a1,s6
    80045b94:	887c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045b98:	862a                	mv	a2,a0
    80045b9a:	86ae                	mv	a3,a1
    80045b9c:	e22a                	sd	a0,256(sp)
    80045b9e:	e62e                	sd	a1,264(sp)
    80045ba0:	00024717          	auipc	a4,0x24
    80045ba4:	fe870713          	addi	a4,a4,-24 # 80069b88 <qjsc_repl+0x45d8>
    80045ba8:	00024597          	auipc	a1,0x24
    80045bac:	d2858593          	addi	a1,a1,-728 # 800698d0 <qjsc_repl+0x4320>
    80045bb0:	8522                	mv	a0,s0
    80045bb2:	bffda0ef          	jal	ra,800207b0 <JS_ConcatString3>
    80045bb6:	e8aa                	sd	a0,80(sp)
    80045bb8:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:45242
            if (JS_IsException(sep))
    80045bba:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45241
            sep = JS_ConcatString3(ctx, "\n", JS_DupValue(ctx, indent1), "");
    80045bbe:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:45242
            if (JS_IsException(sep))
    80045bc0:	3f278b63          	beq	a5,s2,80045fb6 <js_json_to_str.constprop.0+0x5c6>
quickjs-nuttx/quickjs.c:45244
            sep1 = JS_NewString(ctx, " ");
    80045bc4:	00027597          	auipc	a1,0x27
    80045bc8:	29458593          	addi	a1,a1,660 # 8006ce58 <qjsc_repl+0x78a8>
    80045bcc:	8522                	mv	a0,s0
    80045bce:	debd90ef          	jal	ra,8001f9b8 <JS_NewString>
    80045bd2:	f0aa                	sd	a0,96(sp)
    80045bd4:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:45245
            if (JS_IsException(sep1))
    80045bd6:	0005871b          	sext.w	a4,a1
    80045bda:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:45244
            sep1 = JS_NewString(ctx, " ");
    80045bdc:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:45245
            if (JS_IsException(sep1))
    80045bde:	02f71363          	bne	a4,a5,80045c04 <js_json_to_str.constprop.0+0x214>
quickjs-nuttx/quickjs.c:45274
                prop = JS_UNDEFINED;
    80045be2:	4d8d                	li	s11,3
quickjs-nuttx/quickjs.c:45196
    tab = JS_UNDEFINED;
    80045be4:	490d                	li	s2,3
    80045be6:	a4fd                	j	80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45248
            sep = JS_DupValue(ctx, jsc->empty);
    80045be8:	60a8                	ld	a0,64(s1)
    80045bea:	64ac                	ld	a1,72(s1)
    80045bec:	82fc40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045bf0:	e8aa                	sd	a0,80(sp)
    80045bf2:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:45249
            sep1 = JS_DupValue(ctx, jsc->empty);
    80045bf4:	60a8                	ld	a0,64(s1)
quickjs-nuttx/quickjs.c:45248
            sep = JS_DupValue(ctx, jsc->empty);
    80045bf6:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:45249
            sep1 = JS_DupValue(ctx, jsc->empty);
    80045bf8:	64ac                	ld	a1,72(s1)
    80045bfa:	821c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045bfe:	89ae                	mv	s3,a1
    80045c00:	f0aa                	sd	a0,96(sp)
    80045c02:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:45251
        v = js_array_push(ctx, jsc->stack, 1, (JSValueConst *)&val, 0);
    80045c04:	6c90                	ld	a2,24(s1)
    80045c06:	688c                	ld	a1,16(s1)
    80045c08:	4781                	li	a5,0
    80045c0a:	1018                	addi	a4,sp,32
    80045c0c:	4685                	li	a3,1
    80045c0e:	8522                	mv	a0,s0
    80045c10:	93ef50ef          	jal	ra,8003ad4e <js_array_push>
    80045c14:	892e                	mv	s2,a1
    80045c16:	e12a                	sd	a0,128(sp)
    80045c18:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:45252
        if (check_exception_free(ctx, v))
    80045c1a:	f9aa                	sd	a0,240(sp)
    80045c1c:	fdae                	sd	a1,248(sp)
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    80045c1e:	864a                	mv	a2,s2
    80045c20:	85aa                	mv	a1,a0
    80045c22:	8522                	mv	a0,s0
    80045c24:	b7bc50ef          	jal	ra,8000b79e <JS_FreeValue>
js_json_to_str():
quickjs-nuttx/quickjs.c:45252
        if (check_exception_free(ctx, v))
    80045c28:	2901                	sext.w	s2,s2
    80045c2a:	4799                	li	a5,6
    80045c2c:	faf90be3          	beq	s2,a5,80045be2 <js_json_to_str.constprop.0+0x1f2>
quickjs-nuttx/quickjs.c:45254
        ret = JS_IsArray(ctx, val);
    80045c30:	7582                	ld	a1,32(sp)
    80045c32:	7622                	ld	a2,40(sp)
    80045c34:	8522                	mv	a0,s0
    80045c36:	974d40ef          	jal	ra,80019daa <JS_IsArray>
quickjs-nuttx/quickjs.c:45255
        if (ret < 0)
    80045c3a:	fa0544e3          	bltz	a0,80045be2 <js_json_to_str.constprop.0+0x1f2>
quickjs-nuttx/quickjs.c:45257
        if (ret) {
    80045c3e:	16050963          	beqz	a0,80045db0 <js_json_to_str.constprop.0+0x3c0>
quickjs-nuttx/quickjs.c:45258
            if (js_get_length64(ctx, &len, val))
    80045c42:	7602                	ld	a2,32(sp)
    80045c44:	76a2                	ld	a3,40(sp)
    80045c46:	182c                	addi	a1,sp,56
    80045c48:	8522                	mv	a0,s0
    80045c4a:	986df0ef          	jal	ra,80024dd0 <js_get_length64>
    80045c4e:	f951                	bnez	a0,80045be2 <js_json_to_str.constprop.0+0x1f2>
quickjs-nuttx/quickjs.c:45260
            string_buffer_putc8(jsc->b, '[');
    80045c50:	68a8                	ld	a0,80(s1)
    80045c52:	05b00593          	li	a1,91
quickjs-nuttx/quickjs.c:45261
            for(i = 0; i < len; i++) {
    80045c56:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:45260
            string_buffer_putc8(jsc->b, '[');
    80045c58:	808d90ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45266
                if (JS_IsException(v))
    80045c5c:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:45277
                if (JS_IsUndefined(v))
    80045c5e:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:45261
            for(i = 0; i < len; i++) {
    80045c60:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:45263
                    string_buffer_putc8(jsc->b, ',');
    80045c62:	0504bd03          	ld	s10,80(s1)
quickjs-nuttx/quickjs.c:45261
            for(i = 0; i < len; i++) {
    80045c66:	08f94763          	blt	s2,a5,80045cf4 <js_json_to_str.constprop.0+0x304>
quickjs-nuttx/quickjs.c:45282
            if (len > 0 && !JS_IsEmptyString(jsc->gap)) {
    80045c6a:	02f05063          	blez	a5,80045c8a <js_json_to_str.constprop.0+0x29a>
    80045c6e:	7888                	ld	a0,48(s1)
    80045c70:	7c8c                	ld	a1,56(s1)
    80045c72:	fd5c10ef          	jal	ra,80007c46 <JS_IsEmptyString>
    80045c76:	e911                	bnez	a0,80045c8a <js_json_to_str.constprop.0+0x29a>
quickjs-nuttx/quickjs.c:45283
                string_buffer_putc8(jsc->b, '\n');
    80045c78:	45a9                	li	a1,10
    80045c7a:	856a                	mv	a0,s10
    80045c7c:	fe5d80ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45284
                string_buffer_concat_value(jsc->b, indent);
    80045c80:	65c2                	ld	a1,16(sp)
    80045c82:	6662                	ld	a2,24(sp)
    80045c84:	68a8                	ld	a0,80(s1)
    80045c86:	a27db0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:45286
            string_buffer_putc8(jsc->b, ']');
    80045c8a:	68a8                	ld	a0,80(s1)
    80045c8c:	05d00593          	li	a1,93
    80045c90:	4d8d                	li	s11,3
    80045c92:	fcfd80ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45196
    tab = JS_UNDEFINED;
    80045c96:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:45332
        if (check_exception_free(ctx, js_array_pop(ctx, jsc->stack, 0, NULL, 0)))
    80045c98:	6c90                	ld	a2,24(s1)
    80045c9a:	688c                	ld	a1,16(s1)
    80045c9c:	4781                	li	a5,0
    80045c9e:	4701                	li	a4,0
    80045ca0:	4681                	li	a3,0
    80045ca2:	8522                	mv	a0,s0
    80045ca4:	f41f40ef          	jal	ra,8003abe4 <js_array_pop>
    80045ca8:	84ae                	mv	s1,a1
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    80045caa:	8626                	mv	a2,s1
    80045cac:	85aa                	mv	a1,a0
    80045cae:	8522                	mv	a0,s0
    80045cb0:	aefc50ef          	jal	ra,8000b79e <JS_FreeValue>
js_json_to_str():
quickjs-nuttx/quickjs.c:45332
        if (check_exception_free(ctx, js_array_pop(ctx, jsc->stack, 0, NULL, 0)))
    80045cb4:	2481                	sext.w	s1,s1
    80045cb6:	4799                	li	a5,6
    80045cb8:	20f48e63          	beq	s1,a5,80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45334
        JS_FreeValue(ctx, val);
    80045cbc:	7582                	ld	a1,32(sp)
    80045cbe:	7622                	ld	a2,40(sp)
    80045cc0:	8522                	mv	a0,s0
    80045cc2:	addc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45335
        JS_FreeValue(ctx, tab);
    80045cc6:	75c6                	ld	a1,112(sp)
    80045cc8:	864a                	mv	a2,s2
    80045cca:	8522                	mv	a0,s0
    80045ccc:	ad3c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45336
        JS_FreeValue(ctx, sep);
    80045cd0:	65c6                	ld	a1,80(sp)
    80045cd2:	8652                	mv	a2,s4
    80045cd4:	8522                	mv	a0,s0
    80045cd6:	ac9c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45337
        JS_FreeValue(ctx, sep1);
    80045cda:	7586                	ld	a1,96(sp)
    80045cdc:	864e                	mv	a2,s3
    80045cde:	8522                	mv	a0,s0
    80045ce0:	abfc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45338
        JS_FreeValue(ctx, indent1);
    80045ce4:	6586                	ld	a1,64(sp)
    80045ce6:	865a                	mv	a2,s6
    80045ce8:	8522                	mv	a0,s0
    80045cea:	ab5c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45339
        JS_FreeValue(ctx, prop);
    80045cee:	65ca                	ld	a1,144(sp)
    80045cf0:	866e                	mv	a2,s11
    80045cf2:	b509                	j	80045af4 <js_json_to_str.constprop.0+0x104>
quickjs-nuttx/quickjs.c:45262
                if (i > 0)
    80045cf4:	01205763          	blez	s2,80045d02 <js_json_to_str.constprop.0+0x312>
quickjs-nuttx/quickjs.c:45263
                    string_buffer_putc8(jsc->b, ',');
    80045cf8:	02c00593          	li	a1,44
    80045cfc:	856a                	mv	a0,s10
    80045cfe:	f63d80ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45264
                string_buffer_concat_value(jsc->b, sep);
    80045d02:	65c6                	ld	a1,80(sp)
    80045d04:	68a8                	ld	a0,80(s1)
    80045d06:	8652                	mv	a2,s4
    80045d08:	9a5db0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:45265
                v = JS_GetPropertyInt64(ctx, val, i);
    80045d0c:	7582                	ld	a1,32(sp)
    80045d0e:	7622                	ld	a2,40(sp)
    80045d10:	86ca                	mv	a3,s2
    80045d12:	8522                	mv	a0,s0
    80045d14:	ccff30ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80045d18:	e52e                	sd	a1,136(sp)
    80045d1a:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:45266
                if (JS_IsException(v))
    80045d1c:	2581                	sext.w	a1,a1
    80045d1e:	ed8582e3          	beq	a1,s8,80045be2 <js_json_to_str.constprop.0+0x1f2>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80045d22:	0009079b          	sext.w	a5,s2
    80045d26:	06f91d63          	bne	s2,a5,80045da0 <js_json_to_str.constprop.0+0x3b0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80045d2a:	c382                	sw	zero,196(sp)
    80045d2c:	c1ca                	sw	s2,192(sp)
    80045d2e:	670e                	ld	a4,192(sp)
    80045d30:	f582                	sd	zero,232(sp)
    80045d32:	4601                	li	a2,0
    80045d34:	f1ba                	sd	a4,224(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80045d36:	d1be                	sw	a5,224(sp)
    80045d38:	378e                	fld	fa5,224(sp)
js_json_to_str():
quickjs-nuttx/quickjs.c:45269
                prop = JS_ToStringFree(ctx, JS_NewInt64(ctx, i));
    80045d3a:	758e                	ld	a1,224(sp)
    80045d3c:	8522                	mv	a0,s0
    80045d3e:	b9be                	fsd	fa5,240(sp)
    80045d40:	fdb2                	sd	a2,248(sp)
    80045d42:	a45da0ef          	jal	ra,80020786 <JS_ToStringFree>
    80045d46:	e92a                	sd	a0,144(sp)
    80045d48:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:45270
                if (JS_IsException(prop))
    80045d4a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45269
                prop = JS_ToStringFree(ctx, JS_NewInt64(ctx, i));
    80045d4e:	882a                	mv	a6,a0
    80045d50:	88ae                	mv	a7,a1
    80045d52:	8dae                	mv	s11,a1
quickjs-nuttx/quickjs.c:45270
                if (JS_IsException(prop))
    80045d54:	e98788e3          	beq	a5,s8,80045be4 <js_json_to_str.constprop.0+0x1f4>
quickjs-nuttx/quickjs.c:45272
                v = js_json_check(ctx, jsc, val, v, prop);
    80045d58:	67aa                	ld	a5,136(sp)
    80045d5a:	76a2                	ld	a3,40(sp)
    80045d5c:	670a                	ld	a4,128(sp)
    80045d5e:	7602                	ld	a2,32(sp)
    80045d60:	85a6                	mv	a1,s1
    80045d62:	8522                	mv	a0,s0
    80045d64:	b33ff0ef          	jal	ra,80045896 <js_json_check>
    80045d68:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:45273
                JS_FreeValue(ctx, prop);
    80045d6a:	666a                	ld	a2,152(sp)
    80045d6c:	65ca                	ld	a1,144(sp)
quickjs-nuttx/quickjs.c:45272
                v = js_json_check(ctx, jsc, val, v, prop);
    80045d6e:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:45273
                JS_FreeValue(ctx, prop);
    80045d70:	8522                	mv	a0,s0
    80045d72:	a2dc50ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80045d76:	66a2                	ld	a3,8(sp)
js_json_to_str():
quickjs-nuttx/quickjs.c:45274
                prop = JS_UNDEFINED;
    80045d78:	e902                	sd	zero,144(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80045d7a:	0006879b          	sext.w	a5,a3
js_json_to_str():
quickjs-nuttx/quickjs.c:45275
                if (JS_IsException(v))
    80045d7e:	e78782e3          	beq	a5,s8,80045be2 <js_json_to_str.constprop.0+0x1f2>
quickjs-nuttx/quickjs.c:45277
                if (JS_IsUndefined(v))
    80045d82:	01979463          	bne	a5,s9,80045d8a <js_json_to_str.constprop.0+0x39a>
quickjs-nuttx/quickjs.c:45278
                    v = JS_NULL;
    80045d86:	e102                	sd	zero,128(sp)
    80045d88:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:45279
                if (js_json_to_str(ctx, jsc, val, v, indent1))
    80045d8a:	6706                	ld	a4,64(sp)
    80045d8c:	660a                	ld	a2,128(sp)
    80045d8e:	87da                	mv	a5,s6
    80045d90:	85a6                	mv	a1,s1
    80045d92:	8522                	mv	a0,s0
    80045d94:	c5dff0ef          	jal	ra,800459f0 <js_json_to_str.constprop.0>
    80045d98:	e40515e3          	bnez	a0,80045be2 <js_json_to_str.constprop.0+0x1f2>
quickjs-nuttx/quickjs.c:45261
            for(i = 0; i < len; i++) {
    80045d9c:	0905                	addi	s2,s2,1
    80045d9e:	b5c9                	j	80045c60 <js_json_to_str.constprop.0+0x270>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80045da0:	d22977d3          	fcvt.d.l	fa5,s2
    80045da4:	461d                	li	a2,7
    80045da6:	e20787d3          	fmv.x.d	a5,fa5
js_json_to_str():
quickjs-nuttx/quickjs.h:230
    return v;
    80045daa:	b1be                	fsd	fa5,224(sp)
    80045dac:	2781                	sext.w	a5,a5
    80045dae:	b761                	j	80045d36 <js_json_to_str.constprop.0+0x346>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80045db0:	748c                	ld	a1,40(s1)
js_json_to_str():
quickjs-nuttx/quickjs.c:45288
            if (!JS_IsUndefined(jsc->property_list))
    80045db2:	478d                	li	a5,3
    80045db4:	0005871b          	sext.w	a4,a1
    80045db8:	06f70663          	beq	a4,a5,80045e24 <js_json_to_str.constprop.0+0x434>
quickjs-nuttx/quickjs.c:45289
                tab = JS_DupValue(ctx, jsc->property_list);
    80045dbc:	7088                	ld	a0,32(s1)
    80045dbe:	e5cc40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045dc2:	f8aa                	sd	a0,112(sp)
    80045dc4:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:45292
            if (JS_IsException(tab))
    80045dc6:	0009079b          	sext.w	a5,s2
    80045dca:	4719                	li	a4,6
    80045dcc:	1ee78963          	beq	a5,a4,80045fbe <js_json_to_str.constprop.0+0x5ce>
quickjs-nuttx/quickjs.c:45294
            if (js_get_length64(ctx, &len, tab))
    80045dd0:	7646                	ld	a2,112(sp)
    80045dd2:	86ca                	mv	a3,s2
    80045dd4:	182c                	addi	a1,sp,56
    80045dd6:	8522                	mv	a0,s0
    80045dd8:	fcca                	sd	s2,120(sp)
    80045dda:	ff7de0ef          	jal	ra,80024dd0 <js_get_length64>
    80045dde:	8c2a                	mv	s8,a0
    80045de0:	1c051f63          	bnez	a0,80045fbe <js_json_to_str.constprop.0+0x5ce>
quickjs-nuttx/quickjs.c:45296
            string_buffer_putc8(jsc->b, '{');
    80045de4:	68a8                	ld	a0,80(s1)
    80045de6:	07b00593          	li	a1,123
quickjs-nuttx/quickjs.c:45197
    prop = JS_UNDEFINED;
    80045dea:	4d8d                	li	s11,3
quickjs-nuttx/quickjs.c:45296
            string_buffer_putc8(jsc->b, '{');
    80045dec:	e75d80ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45298
            for(i = 0; i < len; i++) {
    80045df0:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:45301
                if (JS_IsException(prop))
    80045df2:	4d19                	li	s10,6
quickjs-nuttx/quickjs.c:45298
            for(i = 0; i < len; i++) {
    80045df4:	77e2                	ld	a5,56(sp)
    80045df6:	04fcc363          	blt	s9,a5,80045e3c <js_json_to_str.constprop.0+0x44c>
quickjs-nuttx/quickjs.c:45326
            if (has_content && JS_VALUE_GET_STRING(jsc->gap)->len != 0) {
    80045dfa:	000c0f63          	beqz	s8,80045e18 <js_json_to_str.constprop.0+0x428>
    80045dfe:	789c                	ld	a5,48(s1)
    80045e00:	43dc                	lw	a5,4(a5)
    80045e02:	1786                	slli	a5,a5,0x21
    80045e04:	cb91                	beqz	a5,80045e18 <js_json_to_str.constprop.0+0x428>
quickjs-nuttx/quickjs.c:45327
                string_buffer_putc8(jsc->b, '\n');
    80045e06:	68a8                	ld	a0,80(s1)
    80045e08:	45a9                	li	a1,10
    80045e0a:	e57d80ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45328
                string_buffer_concat_value(jsc->b, indent);
    80045e0e:	65c2                	ld	a1,16(sp)
    80045e10:	6662                	ld	a2,24(sp)
    80045e12:	68a8                	ld	a0,80(s1)
    80045e14:	899db0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:45330
            string_buffer_putc8(jsc->b, '}');
    80045e18:	68a8                	ld	a0,80(s1)
    80045e1a:	07d00593          	li	a1,125
    80045e1e:	e43d80ef          	jal	ra,8001ec60 <string_buffer_putc8>
    80045e22:	bd9d                	j	80045c98 <js_json_to_str.constprop.0+0x2a8>
js_object_keys():
quickjs-nuttx/quickjs.c:37509
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    80045e24:	7582                	ld	a1,32(sp)
    80045e26:	7622                	ld	a2,40(sp)
    80045e28:	4701                	li	a4,0
    80045e2a:	46c5                	li	a3,17
    80045e2c:	8522                	mv	a0,s0
    80045e2e:	ac1f60ef          	jal	ra,8003c8ee <JS_GetOwnPropertyNames2>
    80045e32:	892e                	mv	s2,a1
    80045e34:	f92a                	sd	a0,176(sp)
    80045e36:	fd2e                	sd	a1,184(sp)
    80045e38:	f8aa                	sd	a0,112(sp)
    80045e3a:	b771                	j	80045dc6 <js_json_to_str.constprop.0+0x3d6>
js_json_to_str():
quickjs-nuttx/quickjs.c:45299
                JS_FreeValue(ctx, prop);
    80045e3c:	65ca                	ld	a1,144(sp)
    80045e3e:	866e                	mv	a2,s11
    80045e40:	8522                	mv	a0,s0
    80045e42:	95dc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45300
                prop = JS_GetPropertyInt64(ctx, tab, i);
    80045e46:	75c6                	ld	a1,112(sp)
    80045e48:	86e6                	mv	a3,s9
    80045e4a:	864a                	mv	a2,s2
    80045e4c:	8522                	mv	a0,s0
    80045e4e:	fcca                	sd	s2,120(sp)
    80045e50:	b93f30ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
    80045e54:	e92a                	sd	a0,144(sp)
    80045e56:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:45301
                if (JS_IsException(prop))
    80045e58:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45300
                prop = JS_GetPropertyInt64(ctx, tab, i);
    80045e5c:	8dae                	mv	s11,a1
quickjs-nuttx/quickjs.c:45301
                if (JS_IsException(prop))
    80045e5e:	07a78b63          	beq	a5,s10,80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45303
                v = JS_GetPropertyValue(ctx, val, JS_DupValue(ctx, prop));
    80045e62:	db8c40ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80045e66:	872e                	mv	a4,a1
    80045e68:	f5ae                	sd	a1,232(sp)
    80045e6a:	7622                	ld	a2,40(sp)
    80045e6c:	7582                	ld	a1,32(sp)
    80045e6e:	86aa                	mv	a3,a0
    80045e70:	f1aa                	sd	a0,224(sp)
    80045e72:	8522                	mv	a0,s0
    80045e74:	89cd10ef          	jal	ra,80016f10 <JS_GetPropertyValue>
quickjs-nuttx/quickjs.c:45304
                if (JS_IsException(v))
    80045e78:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:45303
                v = JS_GetPropertyValue(ctx, val, JS_DupValue(ctx, prop));
    80045e7c:	872a                	mv	a4,a0
    80045e7e:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:45304
                if (JS_IsException(v))
    80045e80:	05a68a63          	beq	a3,s10,80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45306
                v = js_json_check(ctx, jsc, val, v, prop);
    80045e84:	684a                	ld	a6,144(sp)
    80045e86:	68ea                	ld	a7,152(sp)
    80045e88:	7602                	ld	a2,32(sp)
    80045e8a:	76a2                	ld	a3,40(sp)
    80045e8c:	85a6                	mv	a1,s1
    80045e8e:	8522                	mv	a0,s0
    80045e90:	a07ff0ef          	jal	ra,80045896 <js_json_check>
    80045e94:	e52e                	sd	a1,136(sp)
    80045e96:	e12a                	sd	a0,128(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80045e98:	2581                	sext.w	a1,a1
js_json_to_str():
quickjs-nuttx/quickjs.c:45307
                if (JS_IsException(v))
    80045e9a:	03a58d63          	beq	a1,s10,80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45309
                if (!JS_IsUndefined(v)) {
    80045e9e:	478d                	li	a5,3
    80045ea0:	0af58b63          	beq	a1,a5,80045f56 <js_json_to_str.constprop.0+0x566>
quickjs-nuttx/quickjs.c:45310
                    if (has_content)
    80045ea4:	000c0763          	beqz	s8,80045eb2 <js_json_to_str.constprop.0+0x4c2>
quickjs-nuttx/quickjs.c:45311
                        string_buffer_putc8(jsc->b, ',');
    80045ea8:	68a8                	ld	a0,80(s1)
    80045eaa:	02c00593          	li	a1,44
    80045eae:	db3d80ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45312
                    prop = JS_ToQuotedStringFree(ctx, prop);
    80045eb2:	65ca                	ld	a1,144(sp)
    80045eb4:	666a                	ld	a2,152(sp)
    80045eb6:	8522                	mv	a0,s0
    80045eb8:	962db0ef          	jal	ra,8002101a <JS_ToQuotedStringFree>
    80045ebc:	e92a                	sd	a0,144(sp)
    80045ebe:	ed2e                	sd	a1,152(sp)
quickjs-nuttx/quickjs.c:45313
                    if (JS_IsException(prop)) {
    80045ec0:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:45312
                    prop = JS_ToQuotedStringFree(ctx, prop);
    80045ec4:	8dae                	mv	s11,a1
quickjs-nuttx/quickjs.c:45313
                    if (JS_IsException(prop)) {
    80045ec6:	05a79763          	bne	a5,s10,80045f14 <js_json_to_str.constprop.0+0x524>
quickjs-nuttx/quickjs.c:45314
                        JS_FreeValue(ctx, v);
    80045eca:	658a                	ld	a1,128(sp)
    80045ecc:	662a                	ld	a2,136(sp)
    80045ece:	8522                	mv	a0,s0
    80045ed0:	8cfc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45368
    JS_FreeValue(ctx, val);
    80045ed4:	7582                	ld	a1,32(sp)
    80045ed6:	7622                	ld	a2,40(sp)
    80045ed8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:45374
    return -1;
    80045eda:	5afd                	li	s5,-1
quickjs-nuttx/quickjs.c:45368
    JS_FreeValue(ctx, val);
    80045edc:	8c3c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45369
    JS_FreeValue(ctx, tab);
    80045ee0:	75c6                	ld	a1,112(sp)
    80045ee2:	864a                	mv	a2,s2
    80045ee4:	8522                	mv	a0,s0
    80045ee6:	8b9c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45370
    JS_FreeValue(ctx, sep);
    80045eea:	65c6                	ld	a1,80(sp)
    80045eec:	8652                	mv	a2,s4
    80045eee:	8522                	mv	a0,s0
    80045ef0:	8afc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45371
    JS_FreeValue(ctx, sep1);
    80045ef4:	7586                	ld	a1,96(sp)
    80045ef6:	864e                	mv	a2,s3
    80045ef8:	8522                	mv	a0,s0
    80045efa:	8a5c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45372
    JS_FreeValue(ctx, indent1);
    80045efe:	6586                	ld	a1,64(sp)
    80045f00:	865e                	mv	a2,s7
    80045f02:	8522                	mv	a0,s0
    80045f04:	89bc50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45373
    JS_FreeValue(ctx, prop);
    80045f08:	65ca                	ld	a1,144(sp)
    80045f0a:	866e                	mv	a2,s11
    80045f0c:	8522                	mv	a0,s0
    80045f0e:	891c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45374
    return -1;
    80045f12:	b649                	j	80045a94 <js_json_to_str.constprop.0+0xa4>
quickjs-nuttx/quickjs.c:45317
                    string_buffer_concat_value(jsc->b, sep);
    80045f14:	65c6                	ld	a1,80(sp)
    80045f16:	68a8                	ld	a0,80(s1)
    80045f18:	8652                	mv	a2,s4
    80045f1a:	ecd2                	sd	s4,88(sp)
    80045f1c:	f90db0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:45318
                    string_buffer_concat_value(jsc->b, prop);
    80045f20:	666a                	ld	a2,152(sp)
    80045f22:	65ca                	ld	a1,144(sp)
    80045f24:	68a8                	ld	a0,80(s1)
    80045f26:	f86db0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:45319
                    string_buffer_putc8(jsc->b, ':');
    80045f2a:	68a8                	ld	a0,80(s1)
    80045f2c:	03a00593          	li	a1,58
    80045f30:	d31d80ef          	jal	ra,8001ec60 <string_buffer_putc8>
quickjs-nuttx/quickjs.c:45320
                    string_buffer_concat_value(jsc->b, sep1);
    80045f34:	7586                	ld	a1,96(sp)
    80045f36:	68a8                	ld	a0,80(s1)
    80045f38:	864e                	mv	a2,s3
    80045f3a:	f4ce                	sd	s3,104(sp)
    80045f3c:	f70db0ef          	jal	ra,800216ac <string_buffer_concat_value>
quickjs-nuttx/quickjs.c:45321
                    if (js_json_to_str(ctx, jsc, val, v, indent1))
    80045f40:	6706                	ld	a4,64(sp)
    80045f42:	660a                	ld	a2,128(sp)
    80045f44:	66aa                	ld	a3,136(sp)
    80045f46:	87da                	mv	a5,s6
    80045f48:	85a6                	mv	a1,s1
    80045f4a:	8522                	mv	a0,s0
    80045f4c:	e4da                	sd	s6,72(sp)
    80045f4e:	aa3ff0ef          	jal	ra,800459f0 <js_json_to_str.constprop.0>
    80045f52:	f149                	bnez	a0,80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45323
                    has_content = TRUE;
    80045f54:	4c05                	li	s8,1
quickjs-nuttx/quickjs.c:45298
            for(i = 0; i < len; i++) {
    80045f56:	0c85                	addi	s9,s9,1
    80045f58:	bd71                	j	80045df4 <js_json_to_str.constprop.0+0x404>
quickjs-nuttx/quickjs.c:45342
        val = JS_ToQuotedStringFree(ctx, val);
    80045f5a:	7582                	ld	a1,32(sp)
    80045f5c:	7622                	ld	a2,40(sp)
    80045f5e:	8bcdb0ef          	jal	ra,8002101a <JS_ToQuotedStringFree>
    80045f62:	f42e                	sd	a1,40(sp)
    80045f64:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:45343
        if (JS_IsException(val))
    80045f66:	2581                	sext.w	a1,a1
    80045f68:	4799                	li	a5,6
    80045f6a:	b6f584e3          	beq	a1,a5,80045ad2 <js_json_to_str.constprop.0+0xe2>
quickjs-nuttx/quickjs.c:45358
        return string_buffer_concat_value_free(jsc->b, val);
    80045f6e:	7582                	ld	a1,32(sp)
    80045f70:	be59                	j	80045b06 <js_json_to_str.constprop.0+0x116>
quickjs-nuttx/quickjs.c:45347
        if (!isfinite(JS_VALUE_GET_FLOAT64(val))) {
    80045f72:	0004e797          	auipc	a5,0x4e
    80045f76:	c0e7b787          	fld	fa5,-1010(a5) # 80093b80 <_erodata+0xe>
    80045f7a:	12f7f7d3          	fmul.d	fa5,fa5,fa5
    80045f7e:	3702                	fld	fa4,32(sp)
    80045f80:	a2f727d3          	feq.d	a5,fa4,fa5
    80045f84:	eb89                	bnez	a5,80045f96 <js_json_to_str.constprop.0+0x5a6>
    80045f86:	22f797d3          	fneg.d	fa5,fa5
    80045f8a:	a2f727d3          	feq.d	a5,fa4,fa5
    80045f8e:	e781                	bnez	a5,80045f96 <js_json_to_str.constprop.0+0x5a6>
    80045f90:	a2e727d3          	feq.d	a5,fa4,fa4
    80045f94:	ffe9                	bnez	a5,80045f6e <js_json_to_str.constprop.0+0x57e>
quickjs-nuttx/quickjs.c:45348
            val = JS_NULL;
    80045f96:	4789                	li	a5,2
    80045f98:	f002                	sd	zero,32(sp)
    80045f9a:	f43e                	sd	a5,40(sp)
    80045f9c:	bfc9                	j	80045f6e <js_json_to_str.constprop.0+0x57e>
quickjs-nuttx/quickjs.c:45363
        JS_FreeValue(ctx, val);
    80045f9e:	7582                	ld	a1,32(sp)
    80045fa0:	7622                	ld	a2,40(sp)
    80045fa2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:45364
        return 0;
    80045fa4:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:45363
        JS_FreeValue(ctx, val);
    80045fa6:	ff8c50ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:45364
        return 0;
    80045faa:	b4ed                	j	80045a94 <js_json_to_str.constprop.0+0xa4>
quickjs-nuttx/quickjs.c:45197
    prop = JS_UNDEFINED;
    80045fac:	4d8d                	li	s11,3
quickjs-nuttx/quickjs.c:45196
    tab = JS_UNDEFINED;
    80045fae:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:45195
    sep1 = JS_UNDEFINED;
    80045fb0:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:45194
    sep = JS_UNDEFINED;
    80045fb2:	4a0d                	li	s4,3
    80045fb4:	b705                	j	80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45197
    prop = JS_UNDEFINED;
    80045fb6:	4d8d                	li	s11,3
quickjs-nuttx/quickjs.c:45196
    tab = JS_UNDEFINED;
    80045fb8:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:45195
    sep1 = JS_UNDEFINED;
    80045fba:	498d                	li	s3,3
    80045fbc:	bf21                	j	80045ed4 <js_json_to_str.constprop.0+0x4e4>
quickjs-nuttx/quickjs.c:45197
    prop = JS_UNDEFINED;
    80045fbe:	4d8d                	li	s11,3
    80045fc0:	bf11                	j	80045ed4 <js_json_to_str.constprop.0+0x4e4>

0000000080045fc2 <JS_JSONStringify>:
JS_JSONStringify():
quickjs-nuttx/quickjs.c:45379
{
    80045fc2:	7149                	addi	sp,sp,-368
    80045fc4:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:45386
    jsc->replacer_func = JS_UNDEFINED;
    80045fc6:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:45379
{
    80045fc8:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:45386
    jsc->replacer_func = JS_UNDEFINED;
    80045fca:	e9be                	sd	a5,208(sp)
quickjs-nuttx/quickjs.c:45387
    jsc->stack = JS_UNDEFINED;
    80045fcc:	f1be                	sd	a5,224(sp)
quickjs-nuttx/quickjs.c:45388
    jsc->property_list = JS_UNDEFINED;
    80045fce:	f9be                	sd	a5,240(sp)
quickjs-nuttx/quickjs.c:45389
    jsc->gap = JS_UNDEFINED;
    80045fd0:	e23e                	sd	a5,256(sp)
quickjs-nuttx/quickjs.c:45391
    jsc->empty = JS_AtomToString(ctx, JS_ATOM_empty_string);
    80045fd2:	02f00593          	li	a1,47
quickjs-nuttx/quickjs.c:45390
    jsc->b = &b_s;
    80045fd6:	113c                	addi	a5,sp,168
quickjs-nuttx/quickjs.c:45379
{
    80045fd8:	f686                	sd	ra,360(sp)
    80045fda:	e836                	sd	a3,16(sp)
    80045fdc:	ec3a                	sd	a4,24(sp)
    80045fde:	e442                	sd	a6,8(sp)
quickjs-nuttx/quickjs.c:45390
    jsc->b = &b_s;
    80045fe0:	ee3e                	sd	a5,280(sp)
quickjs-nuttx/quickjs.c:45379
{
    80045fe2:	f2a2                	sd	s0,352(sp)
    80045fe4:	eea6                	sd	s1,344(sp)
    80045fe6:	842a                	mv	s0,a0
    80045fe8:	f432                	sd	a2,40(sp)
    80045fea:	eaca                	sd	s2,336(sp)
    80045fec:	e6ce                	sd	s3,328(sp)
    80045fee:	e2d2                	sd	s4,320(sp)
    80045ff0:	fe56                	sd	s5,312(sp)
    80045ff2:	fa5a                	sd	s6,304(sp)
    80045ff4:	f65e                	sd	s7,296(sp)
quickjs-nuttx/quickjs.c:45386
    jsc->replacer_func = JS_UNDEFINED;
    80045ff6:	e582                	sd	zero,200(sp)
quickjs-nuttx/quickjs.c:45387
    jsc->stack = JS_UNDEFINED;
    80045ff8:	ed82                	sd	zero,216(sp)
quickjs-nuttx/quickjs.c:45388
    jsc->property_list = JS_UNDEFINED;
    80045ffa:	f582                	sd	zero,232(sp)
quickjs-nuttx/quickjs.c:45389
    jsc->gap = JS_UNDEFINED;
    80045ffc:	fd82                	sd	zero,248(sp)
quickjs-nuttx/quickjs.c:45391
    jsc->empty = JS_AtomToString(ctx, JS_ATOM_empty_string);
    80045ffe:	ad5d90ef          	jal	ra,8001fad2 <JS_AtomToString>
