    8000b000:	e406                	sd	ra,8(sp)
    8000b002:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3586
    js_free(s->ctx, s->str);
    8000b004:	650c                	ld	a1,8(a0)
    8000b006:	6108                	ld	a0,0(a0)
    8000b008:	fefff0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:3590
    return s->error_status = -1;
    8000b00c:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:3591
}
    8000b00e:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs.c:3587
    s->str = NULL;
    8000b010:	00043423          	sd	zero,8(s0)
quickjs-nuttx/quickjs.c:3589
    s->len = 0;
    8000b014:	00043823          	sd	zero,16(s0)
quickjs-nuttx/quickjs.c:3590
    return s->error_status = -1;
    8000b018:	cc5c                	sw	a5,28(s0)
quickjs-nuttx/quickjs.c:3591
}
    8000b01a:	6402                	ld	s0,0(sp)
    8000b01c:	557d                	li	a0,-1
    8000b01e:	0141                	addi	sp,sp,16
    8000b020:	8082                	ret

000000008000b022 <string_buffer_free>:
string_buffer_free():
quickjs-nuttx/quickjs.c:3579
{
    8000b022:	1141                	addi	sp,sp,-16
    8000b024:	e022                	sd	s0,0(sp)
    8000b026:	e406                	sd	ra,8(sp)
    8000b028:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:3580
    js_free(s->ctx, s->str);
    8000b02a:	650c                	ld	a1,8(a0)
    8000b02c:	6108                	ld	a0,0(a0)
    8000b02e:	fc9ff0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:3582
}
    8000b032:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs.c:3581
    s->str = NULL;
    8000b034:	00043423          	sd	zero,8(s0)
quickjs-nuttx/quickjs.c:3582
}
    8000b038:	6402                	ld	s0,0(sp)
    8000b03a:	0141                	addi	sp,sp,16
    8000b03c:	8082                	ret

000000008000b03e <js_malloc_usable_size>:
js_malloc_usable_size():
quickjs-nuttx/quickjs.c:1406
    return js_malloc_usable_size_rt(ctx->rt, ptr);
    8000b03e:	6d08                	ld	a0,24(a0)
    8000b040:	b65ff06f          	j	8000aba4 <js_malloc_usable_size_rt>

000000008000b044 <JS_GetRuntimeOpaque>:
JS_GetRuntimeOpaque():
quickjs-nuttx/quickjs.c:1688
}
    8000b044:	2b853503          	ld	a0,696(a0)
    8000b048:	8082                	ret

000000008000b04a <JS_SetRuntimeOpaque>:
JS_SetRuntimeOpaque():
quickjs-nuttx/quickjs.c:1692
    rt->user_opaque = opaque;
    8000b04a:	2ab53c23          	sd	a1,696(a0)
quickjs-nuttx/quickjs.c:1693
}
    8000b04e:	8082                	ret

000000008000b050 <JS_SetMemoryLimit>:
JS_SetMemoryLimit():
quickjs-nuttx/quickjs.c:1782
    rt->malloc_state.malloc_limit = limit;
    8000b050:	f90c                	sd	a1,48(a0)
quickjs-nuttx/quickjs.c:1783
}
    8000b052:	8082                	ret

000000008000b054 <JS_SetGCThreshold>:
JS_SetGCThreshold():
quickjs-nuttx/quickjs.c:1788
    rt->malloc_gc_threshold = gc_threshold;
    8000b054:	e16c                	sd	a1,192(a0)
quickjs-nuttx/quickjs.c:1789
}
    8000b056:	8082                	ret

000000008000b058 <JS_SetInterruptHandler>:
JS_SetInterruptHandler():
quickjs-nuttx/quickjs.c:1797
    rt->interrupt_handler = cb;
    8000b058:	10b53023          	sd	a1,256(a0)
quickjs-nuttx/quickjs.c:1798
    rt->interrupt_opaque = opaque;
    8000b05c:	10c53423          	sd	a2,264(a0)
quickjs-nuttx/quickjs.c:1799
}
    8000b060:	8082                	ret

000000008000b062 <JS_SetCanBlock>:
JS_SetCanBlock():
quickjs-nuttx/quickjs.c:1803
    rt->can_block = can_block;
    8000b062:	14b50823          	sb	a1,336(a0)
quickjs-nuttx/quickjs.c:1804
}
    8000b066:	8082                	ret

000000008000b068 <JS_SetSharedArrayBufferFunctions>:
JS_SetSharedArrayBufferFunctions():
quickjs-nuttx/quickjs.c:1808
{
    8000b068:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:1809
    rt->sab_funcs = *sf;
    8000b06a:	02000613          	li	a2,32
    8000b06e:	15850513          	addi	a0,a0,344
quickjs-nuttx/quickjs.c:1808
{
    8000b072:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:1809
    rt->sab_funcs = *sf;
    8000b074:	539580ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:1810
}
    8000b078:	60a2                	ld	ra,8(sp)
    8000b07a:	0141                	addi	sp,sp,16
    8000b07c:	8082                	ret

000000008000b07e <JS_IsJobPending>:
JS_IsJobPending():
quickjs-nuttx/quickjs.c:1835
    return !list_empty(&rt->job_list);
    8000b07e:	12050793          	addi	a5,a0,288
    8000b082:	12853503          	ld	a0,296(a0)
    8000b086:	8d1d                	sub	a0,a0,a5
quickjs-nuttx/quickjs.c:1836
}
    8000b088:	00a03533          	snez	a0,a0
    8000b08c:	8082                	ret

000000008000b08e <JS_SetRuntimeInfo>:
JS_SetRuntimeInfo():
quickjs-nuttx/quickjs.c:1931
    if (rt)
    8000b08e:	c111                	beqz	a0,8000b092 <JS_SetRuntimeInfo+0x4>
quickjs-nuttx/quickjs.c:1932
        rt->rt_info = s;
    8000b090:	e12c                	sd	a1,64(a0)
quickjs-nuttx/quickjs.c:1933
}
    8000b092:	8082                	ret

000000008000b094 <JS_GetContextOpaque>:
JS_GetContextOpaque():
quickjs-nuttx/quickjs.c:2181
}
    8000b094:	1d053503          	ld	a0,464(a0)
    8000b098:	8082                	ret

000000008000b09a <JS_SetContextOpaque>:
JS_SetContextOpaque():
quickjs-nuttx/quickjs.c:2185
    ctx->user_opaque = opaque;
    8000b09a:	1cb53823          	sd	a1,464(a0)
quickjs-nuttx/quickjs.c:2186
}
    8000b09e:	8082                	ret

000000008000b0a0 <JS_GetClassProto>:
JS_GetClassProto():
quickjs-nuttx/quickjs.c:2208
    assert(class_id < rt->class_count);
    8000b0a0:	6d1c                	ld	a5,24(a0)
    8000b0a2:	57fc                	lw	a5,108(a5)
    8000b0a4:	00f5ee63          	bltu	a1,a5,8000b0c0 <JS_GetClassProto+0x20>
quickjs-nuttx/quickjs.c:2208 (discriminator 1)
    8000b0a8:	6585                	lui	a1,0x1
quickjs-nuttx/quickjs.c:2206 (discriminator 1)
{
    8000b0aa:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:2208 (discriminator 1)
    assert(class_id < rt->class_count);
    8000b0ac:	4601                	li	a2,0
    8000b0ae:	8a058593          	addi	a1,a1,-1888 # 8a0 <asinh-0x7ffff760>
    8000b0b2:	0005e517          	auipc	a0,0x5e
    8000b0b6:	4e650513          	addi	a0,a0,1254 # 80069598 <qjsc_repl+0x3fe8>
quickjs-nuttx/quickjs.c:2206 (discriminator 1)
{
    8000b0ba:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:2208 (discriminator 1)
    assert(class_id < rt->class_count);
    8000b0bc:	0a1550ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:2209 (discriminator 2)
    return JS_DupValue(ctx, ctx->class_proto[class_id]);
    8000b0c0:	613c                	ld	a5,64(a0)
    8000b0c2:	02059713          	slli	a4,a1,0x20
    8000b0c6:	01c75593          	srli	a1,a4,0x1c
    8000b0ca:	95be                	add	a1,a1,a5
    8000b0cc:	6188                	ld	a0,0(a1)
    8000b0ce:	658c                	ld	a1,8(a1)
    8000b0d0:	b4aff06f          	j	8000a41a <JS_DupValue.constprop.0>

000000008000b0d4 <JS_DupContext>:
JS_DupContext():
quickjs-nuttx/quickjs.c:2232
    ctx->header.ref_count++;
    8000b0d4:	4118                	lw	a4,0(a0)
    8000b0d6:	2705                	addiw	a4,a4,1
    8000b0d8:	c118                	sw	a4,0(a0)
quickjs-nuttx/quickjs.c:2234
}
    8000b0da:	8082                	ret

000000008000b0dc <JS_GetRuntime>:
JS_GetRuntime():
quickjs-nuttx/quickjs.c:2345
}
    8000b0dc:	6d08                	ld	a0,24(a0)
    8000b0de:	8082                	ret

000000008000b0e0 <JS_SetMaxStackSize>:
JS_SetMaxStackSize():
quickjs-nuttx/quickjs.c:2358
    rt->stack_size = stack_size;
    8000b0e0:	e56c                	sd	a1,200(a0)
update_stack_limit():
quickjs-nuttx/quickjs.c:2349
    if (rt->stack_size == 0) {
    8000b0e2:	c581                	beqz	a1,8000b0ea <JS_SetMaxStackSize+0xa>
quickjs-nuttx/quickjs.c:2352
        rt->stack_limit = rt->stack_top - rt->stack_size;
    8000b0e4:	697c                	ld	a5,208(a0)
    8000b0e6:	40b785b3          	sub	a1,a5,a1
    8000b0ea:	ed6c                	sd	a1,216(a0)
JS_SetMaxStackSize():
quickjs-nuttx/quickjs.c:2360
}
    8000b0ec:	8082                	ret

000000008000b0ee <JS_UpdateStackTop>:
JS_UpdateStackTop():
quickjs-nuttx/quickjs.c:2363
{
    8000b0ee:	1141                	addi	sp,sp,-16
    8000b0f0:	e422                	sd	s0,8(sp)
    8000b0f2:	0800                	addi	s0,sp,16
update_stack_limit():
quickjs-nuttx/quickjs.c:2349
    if (rt->stack_size == 0) {
    8000b0f4:	657c                	ld	a5,200(a0)
JS_UpdateStackTop():
quickjs-nuttx/quickjs.c:2364
    rt->stack_top = js_get_stack_pointer();
    8000b0f6:	e960                	sd	s0,208(a0)
update_stack_limit():
quickjs-nuttx/quickjs.c:2349
    if (rt->stack_size == 0) {
    8000b0f8:	c399                	beqz	a5,8000b0fe <JS_UpdateStackTop+0x10>
quickjs-nuttx/quickjs.c:2352
        rt->stack_limit = rt->stack_top - rt->stack_size;
    8000b0fa:	40f407b3          	sub	a5,s0,a5
JS_UpdateStackTop():
quickjs-nuttx/quickjs.c:2366
}
    8000b0fe:	6422                	ld	s0,8(sp)
    8000b100:	ed7c                	sd	a5,216(a0)
    8000b102:	0141                	addi	sp,sp,16
    8000b104:	8082                	ret

000000008000b106 <JS_DupAtom>:
JS_DupAtom():
quickjs-nuttx/quickjs.c:2637
    if (!__JS_AtomIsConst(v)) {
    8000b106:	0e200713          	li	a4,226
quickjs-nuttx/quickjs.c:2633
{
    8000b10a:	87aa                	mv	a5,a0
    8000b10c:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:2637
    if (!__JS_AtomIsConst(v)) {
    8000b10e:	00b75d63          	bge	a4,a1,8000b128 <JS_DupAtom+0x22>
quickjs-nuttx/quickjs.c:2639
        p = rt->atom_array[v];
    8000b112:	6f9c                	ld	a5,24(a5)
    8000b114:	02059693          	slli	a3,a1,0x20
    8000b118:	01d6d713          	srli	a4,a3,0x1d
    8000b11c:	73bc                	ld	a5,96(a5)
    8000b11e:	97ba                	add	a5,a5,a4
    8000b120:	6398                	ld	a4,0(a5)
quickjs-nuttx/quickjs.c:2640
        p->header.ref_count++;
    8000b122:	431c                	lw	a5,0(a4)
    8000b124:	2785                	addiw	a5,a5,1
    8000b126:	c31c                	sw	a5,0(a4)
quickjs-nuttx/quickjs.c:2643
}
    8000b128:	8082                	ret

000000008000b12a <emit_atom>:
emit_atom():
quickjs-nuttx/quickjs.c:21483
{
    8000b12a:	1141                	addi	sp,sp,-16
    8000b12c:	e022                	sd	s0,0(sp)
    8000b12e:	e406                	sd	ra,8(sp)
    8000b130:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:21484
    emit_u32(s, JS_DupAtom(s->ctx, name));
    8000b132:	6108                	ld	a0,0(a0)
    8000b134:	fd3ff0ef          	jal	ra,8000b106 <JS_DupAtom>
    8000b138:	0005059b          	sext.w	a1,a0
    8000b13c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:21485
}
    8000b13e:	6402                	ld	s0,0(sp)
    8000b140:	60a2                	ld	ra,8(sp)
    8000b142:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:21484
    emit_u32(s, JS_DupAtom(s->ctx, name));
    8000b144:	948fe06f          	j	8000928c <emit_u32>

000000008000b148 <JS_FreeAtom>:
JS_FreeAtom():
quickjs-nuttx/quickjs.c:3254
    if (!__JS_AtomIsConst(v))
    8000b148:	0e200793          	li	a5,226
    8000b14c:	00b7d563          	bge	a5,a1,8000b156 <JS_FreeAtom+0xe>
quickjs-nuttx/quickjs.c:3255
        __JS_FreeAtom(ctx->rt, v);
    8000b150:	6d08                	ld	a0,24(a0)
    8000b152:	94bff06f          	j	8000aa9c <__JS_FreeAtom>
quickjs-nuttx/quickjs.c:3256
}
    8000b156:	8082                	ret

000000008000b158 <js_free_prop_enum>:
js_free_prop_enum():
quickjs-nuttx/quickjs.c:7482
    if (tab) {
    8000b158:	c1a1                	beqz	a1,8000b198 <js_free_prop_enum+0x40>
quickjs-nuttx/quickjs.c:7480
{
    8000b15a:	7139                	addi	sp,sp,-64
    8000b15c:	f822                	sd	s0,48(sp)
    8000b15e:	f426                	sd	s1,40(sp)
    8000b160:	f04a                	sd	s2,32(sp)
    8000b162:	ec4e                	sd	s3,24(sp)
    8000b164:	fc06                	sd	ra,56(sp)
    8000b166:	842e                	mv	s0,a1
    8000b168:	8932                	mv	s2,a2
    8000b16a:	00458993          	addi	s3,a1,4
quickjs-nuttx/quickjs.c:7483
        for(i = 0; i < len; i++)
    8000b16e:	4481                	li	s1,0
    8000b170:	00991b63          	bne	s2,s1,8000b186 <js_free_prop_enum+0x2e>
quickjs-nuttx/quickjs.c:7485
        js_free(ctx, tab);
    8000b174:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:7487
}
    8000b176:	7442                	ld	s0,48(sp)
    8000b178:	70e2                	ld	ra,56(sp)
    8000b17a:	74a2                	ld	s1,40(sp)
    8000b17c:	7902                	ld	s2,32(sp)
    8000b17e:	69e2                	ld	s3,24(sp)
    8000b180:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:7485
        js_free(ctx, tab);
    8000b182:	e75ff06f          	j	8000aff6 <js_free>
quickjs-nuttx/quickjs.c:7484
            JS_FreeAtom(ctx, tab[i].atom);
    8000b186:	0009a583          	lw	a1,0(s3)
    8000b18a:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:7483
        for(i = 0; i < len; i++)
    8000b18c:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:7484
            JS_FreeAtom(ctx, tab[i].atom);
    8000b18e:	fbbff0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:7483
        for(i = 0; i < len; i++)
    8000b192:	6522                	ld	a0,8(sp)
    8000b194:	09a1                	addi	s3,s3,8
    8000b196:	bfe9                	j	8000b170 <js_free_prop_enum+0x18>
    8000b198:	8082                	ret

000000008000b19a <put_lvalue>:
put_lvalue():
quickjs-nuttx/quickjs.c:23632
{
    8000b19a:	7139                	addi	sp,sp,-64
    8000b19c:	f822                	sd	s0,48(sp)
    8000b19e:	f04a                	sd	s2,32(sp)
    8000b1a0:	fc06                	sd	ra,56(sp)
    8000b1a2:	893e                	mv	s2,a5
    8000b1a4:	f426                	sd	s1,40(sp)
    8000b1a6:	ec4e                	sd	s3,24(sp)
    8000b1a8:	e852                	sd	s4,16(sp)
    8000b1aa:	e456                	sd	s5,8(sp)
    8000b1ac:	e05a                	sd	s6,0(sp)
quickjs-nuttx/quickjs.c:23633
    switch(opcode) {
    8000b1ae:	04a00793          	li	a5,74
quickjs-nuttx/quickjs.c:23632
{
    8000b1b2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:23633
    switch(opcode) {
    8000b1b4:	12f58363          	beq	a1,a5,8000b2da <put_lvalue+0x140>
    8000b1b8:	84ae                	mv	s1,a1
    8000b1ba:	8a32                	mv	s4,a2
    8000b1bc:	89b6                	mv	s3,a3
    8000b1be:	8ac2                	mv	s5,a6
    8000b1c0:	04b7cc63          	blt	a5,a1,8000b218 <put_lvalue+0x7e>
    8000b1c4:	04100793          	li	a5,65
    8000b1c8:	04f58c63          	beq	a1,a5,8000b220 <put_lvalue+0x86>
    8000b1cc:	04700793          	li	a5,71
    8000b1d0:	0ef58763          	beq	a1,a5,8000b2be <put_lvalue+0x124>
    8000b1d4:	03c00793          	li	a5,60
    8000b1d8:	0af58763          	beq	a1,a5,8000b286 <put_lvalue+0xec>
quickjs-nuttx/quickjs.c:23703
    switch(opcode) {
    8000b1dc:	04700793          	li	a5,71
    8000b1e0:	1297c063          	blt	a5,s1,8000b300 <put_lvalue+0x166>
    8000b1e4:	03c00793          	li	a5,60
    8000b1e8:	18f48263          	beq	s1,a5,8000b36c <put_lvalue+0x1d2>
    8000b1ec:	04100793          	li	a5,65
    8000b1f0:	12f49063          	bne	s1,a5,8000b310 <put_lvalue+0x176>
quickjs-nuttx/quickjs.c:23712
        emit_op(s, OP_put_field);
    8000b1f4:	8522                	mv	a0,s0
    8000b1f6:	04300593          	li	a1,67
    8000b1fa:	efdfd0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23713
        emit_u32(s, name);  /* name has refcount */
    8000b1fe:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23732
}
    8000b200:	7442                	ld	s0,48(sp)
    8000b202:	70e2                	ld	ra,56(sp)
    8000b204:	74a2                	ld	s1,40(sp)
    8000b206:	7902                	ld	s2,32(sp)
    8000b208:	6a42                	ld	s4,16(sp)
    8000b20a:	6aa2                	ld	s5,8(sp)
    8000b20c:	6b02                	ld	s6,0(sp)
quickjs-nuttx/quickjs.c:23713
        emit_u32(s, name);  /* name has refcount */
    8000b20e:	85ce                	mv	a1,s3
quickjs-nuttx/quickjs.c:23732
}
    8000b210:	69e2                	ld	s3,24(sp)
    8000b212:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:23713
        emit_u32(s, name);  /* name has refcount */
    8000b214:	878fe06f          	j	8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23633
    switch(opcode) {
    8000b218:	0c100793          	li	a5,193
    8000b21c:	0ef59263          	bne	a1,a5,8000b300 <put_lvalue+0x166>
quickjs-nuttx/quickjs.c:23637
        switch(special) {
    8000b220:	478d                	li	a5,3
    8000b222:	02f90b63          	beq	s2,a5,8000b258 <put_lvalue+0xbe>
    8000b226:	4791                	li	a5,4
    8000b228:	04f90d63          	beq	s2,a5,8000b282 <put_lvalue+0xe8>
    8000b22c:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:23642
            emit_op(s, OP_insert2); /* obj v -> v obj v */
    8000b22e:	45d5                	li	a1,21
    8000b230:	02f90563          	beq	s2,a5,8000b25a <put_lvalue+0xc0>
quickjs-nuttx/quickjs.c:23703
    switch(opcode) {
    8000b234:	04700793          	li	a5,71
    8000b238:	faf492e3          	bne	s1,a5,8000b1dc <put_lvalue+0x42>
quickjs-nuttx/quickjs.c:23721
        emit_op(s, OP_put_array_el);
    8000b23c:	04900593          	li	a1,73
quickjs-nuttx/quickjs.c:23727
        emit_op(s, OP_put_super_value);
    8000b240:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23732
}
    8000b242:	7442                	ld	s0,48(sp)
    8000b244:	70e2                	ld	ra,56(sp)
    8000b246:	74a2                	ld	s1,40(sp)
    8000b248:	7902                	ld	s2,32(sp)
    8000b24a:	69e2                	ld	s3,24(sp)
    8000b24c:	6a42                	ld	s4,16(sp)
    8000b24e:	6aa2                	ld	s5,8(sp)
    8000b250:	6b02                	ld	s6,0(sp)
    8000b252:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:23727
        emit_op(s, OP_put_super_value);
    8000b254:	ea3fd06f          	j	800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23645
            emit_op(s, OP_perm3); /* obj v0 v -> v0 obj v */
    8000b258:	45e1                	li	a1,24
quickjs-nuttx/quickjs.c:23671
            emit_op(s, OP_perm4); /* obj prop v0 v -> v0 obj prop v */
    8000b25a:	8522                	mv	a0,s0
    8000b25c:	e9bfd0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23703
    switch(opcode) {
    8000b260:	04700793          	li	a5,71
    8000b264:	fcf48ce3          	beq	s1,a5,8000b23c <put_lvalue+0xa2>
    8000b268:	f697dee3          	bge	a5,s1,8000b1e4 <put_lvalue+0x4a>
    8000b26c:	0c100793          	li	a5,193
    8000b270:	0ef48b63          	beq	s1,a5,8000b366 <put_lvalue+0x1cc>
    8000b274:	0897ce63          	blt	a5,s1,8000b310 <put_lvalue+0x176>
    8000b278:	0ba00793          	li	a5,186
    8000b27c:	08f48f63          	beq	s1,a5,8000b31a <put_lvalue+0x180>
    8000b280:	a841                	j	8000b310 <put_lvalue+0x176>
quickjs-nuttx/quickjs.c:23648
            emit_op(s, OP_swap);
    8000b282:	45ed                	li	a1,27
    8000b284:	bfd9                	j	8000b25a <put_lvalue+0xc0>
quickjs-nuttx/quickjs.c:23658
            JS_FreeAtom(s->ctx, name);
    8000b286:	6108                	ld	a0,0(a0)
    8000b288:	85b6                	mv	a1,a3
    8000b28a:	8b3a                	mv	s6,a4
    8000b28c:	ebdff0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:23659
            emit_label(s, label);
    8000b290:	85da                	mv	a1,s6
    8000b292:	8522                	mv	a0,s0
    8000b294:	800fe0ef          	jal	ra,80009294 <emit_label>
quickjs-nuttx/quickjs.c:23661
        switch(special) {
    8000b298:	478d                	li	a5,3
    8000b29a:	02f90c63          	beq	s2,a5,8000b2d2 <put_lvalue+0x138>
    8000b29e:	4791                	li	a5,4
    8000b2a0:	02f90b63          	beq	s2,a5,8000b2d6 <put_lvalue+0x13c>
    8000b2a4:	4785                	li	a5,1
    8000b2a6:	0cf90363          	beq	s2,a5,8000b36c <put_lvalue+0x1d2>
    8000b2aa:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:23668
            emit_op(s, OP_insert3); /* obj prop v -> v obj prop v */
    8000b2ac:	45d9                	li	a1,22
    8000b2ae:	faf906e3          	beq	s2,a5,8000b25a <put_lvalue+0xc0>
quickjs-nuttx/quickjs.c:23663
            emit_op(s, OP_nop); /* will trigger optimization */
    8000b2b2:	0b500593          	li	a1,181
    8000b2b6:	8522                	mv	a0,s0
    8000b2b8:	e3ffd0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23664
            break;
    8000b2bc:	bfa5                	j	8000b234 <put_lvalue+0x9a>
quickjs-nuttx/quickjs.c:23661
        switch(special) {
    8000b2be:	478d                	li	a5,3
    8000b2c0:	00f90963          	beq	s2,a5,8000b2d2 <put_lvalue+0x138>
    8000b2c4:	4791                	li	a5,4
    8000b2c6:	00f90863          	beq	s2,a5,8000b2d6 <put_lvalue+0x13c>
    8000b2ca:	4785                	li	a5,1
    8000b2cc:	fcf91fe3          	bne	s2,a5,8000b2aa <put_lvalue+0x110>
    8000b2d0:	b795                	j	8000b234 <put_lvalue+0x9a>
quickjs-nuttx/quickjs.c:23671
            emit_op(s, OP_perm4); /* obj prop v0 v -> v0 obj prop v */
    8000b2d2:	45e5                	li	a1,25
    8000b2d4:	b759                	j	8000b25a <put_lvalue+0xc0>
quickjs-nuttx/quickjs.c:23674
            emit_op(s, OP_rot3l);
    8000b2d6:	45f5                	li	a1,29
    8000b2d8:	b749                	j	8000b25a <put_lvalue+0xc0>
quickjs-nuttx/quickjs.c:23682
        switch(special) {
    8000b2da:	478d                	li	a5,3
    8000b2dc:	00f90c63          	beq	s2,a5,8000b2f4 <put_lvalue+0x15a>
    8000b2e0:	4791                	li	a5,4
    8000b2e2:	00f90d63          	beq	s2,a5,8000b2fc <put_lvalue+0x162>
    8000b2e6:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:23687
            emit_op(s, OP_insert4); /* this obj prop v -> v this obj prop v */
    8000b2e8:	45dd                	li	a1,23
    8000b2ea:	00f90663          	beq	s2,a5,8000b2f6 <put_lvalue+0x15c>
quickjs-nuttx/quickjs.c:23727
        emit_op(s, OP_put_super_value);
    8000b2ee:	04b00593          	li	a1,75
    8000b2f2:	b7b9                	j	8000b240 <put_lvalue+0xa6>
quickjs-nuttx/quickjs.c:23690
            emit_op(s, OP_perm5); /* this obj prop v0 v -> v0 this obj prop v */
    8000b2f4:	45e9                	li	a1,26
quickjs-nuttx/quickjs.c:23693
            emit_op(s, OP_rot4l);
    8000b2f6:	e01fd0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23694
            break;
    8000b2fa:	bfd5                	j	8000b2ee <put_lvalue+0x154>
quickjs-nuttx/quickjs.c:23693
            emit_op(s, OP_rot4l);
    8000b2fc:	45fd                	li	a1,31
    8000b2fe:	bfe5                	j	8000b2f6 <put_lvalue+0x15c>
quickjs-nuttx/quickjs.c:23703
    switch(opcode) {
    8000b300:	0ba00793          	li	a5,186
    8000b304:	00f48863          	beq	s1,a5,8000b314 <put_lvalue+0x17a>
    8000b308:	0c100793          	li	a5,193
    8000b30c:	04f48d63          	beq	s1,a5,8000b366 <put_lvalue+0x1cc>
quickjs-nuttx/quickjs.c:23730
        abort();
    8000b310:	073570ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:23705
        assert(special == PUT_LVALUE_NOKEEP ||
    8000b314:	4785                	li	a5,1
    8000b316:	0127fc63          	bgeu	a5,s2,8000b32e <put_lvalue+0x194>
quickjs-nuttx/quickjs.c:23705 (discriminator 1)
    8000b31a:	6599                	lui	a1,0x6
    8000b31c:	4601                	li	a2,0
    8000b31e:	c9958593          	addi	a1,a1,-871 # 5c99 <asinh-0x7fffa367>
    8000b322:	0005e517          	auipc	a0,0x5e
    8000b326:	27650513          	addi	a0,a0,630 # 80069598 <qjsc_repl+0x3fe8>
    8000b32a:	632550ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:23707 (discriminator 2)
        emit_op(s, is_let ? OP_scope_put_var_init : OP_scope_put_var);
    8000b32e:	0bf00593          	li	a1,191
    8000b332:	000a9463          	bnez	s5,8000b33a <put_lvalue+0x1a0>
quickjs-nuttx/quickjs.c:23707
    8000b336:	0bb00593          	li	a1,187
quickjs-nuttx/quickjs.c:23716
        emit_op(s, OP_scope_put_private_field);
    8000b33a:	8522                	mv	a0,s0
    8000b33c:	dbbfd0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:23717
        emit_u32(s, name);  /* name has refcount */
    8000b340:	85ce                	mv	a1,s3
    8000b342:	8522                	mv	a0,s0
    8000b344:	f49fd0ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:23718
        emit_u16(s, scope);
    8000b348:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:23732
}
    8000b34a:	7442                	ld	s0,48(sp)
    8000b34c:	70e2                	ld	ra,56(sp)
    8000b34e:	74a2                	ld	s1,40(sp)
    8000b350:	7902                	ld	s2,32(sp)
    8000b352:	69e2                	ld	s3,24(sp)
    8000b354:	6aa2                	ld	s5,8(sp)
    8000b356:	6b02                	ld	s6,0(sp)
quickjs-nuttx/quickjs.c:23718
        emit_u16(s, scope);
    8000b358:	030a1593          	slli	a1,s4,0x30
quickjs-nuttx/quickjs.c:23732
}
    8000b35c:	6a42                	ld	s4,16(sp)
quickjs-nuttx/quickjs.c:23718
        emit_u16(s, scope);
    8000b35e:	91c1                	srli	a1,a1,0x30
quickjs-nuttx/quickjs.c:23732
}
    8000b360:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:23718
        emit_u16(s, scope);
    8000b362:	c63fd06f          	j	80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:23716
        emit_op(s, OP_scope_put_private_field);
    8000b366:	0c300593          	li	a1,195
    8000b36a:	bfc1                	j	8000b33a <put_lvalue+0x1a0>
quickjs-nuttx/quickjs.c:23724
        emit_op(s, OP_put_ref_value);
    8000b36c:	03d00593          	li	a1,61
    8000b370:	bdc1                	j	8000b240 <put_lvalue+0xa6>

000000008000b372 <set_object_name>:
set_object_name():
quickjs-nuttx/quickjs.c:22519
{
    8000b372:	7179                	addi	sp,sp,-48
    8000b374:	ec26                	sd	s1,24(sp)
    8000b376:	e44e                	sd	s3,8(sp)
    8000b378:	f406                	sd	ra,40(sp)
    8000b37a:	f022                	sd	s0,32(sp)
    8000b37c:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:22520
    JSFunctionDef *fd = s->cur_func;
    8000b37e:	7520                	ld	s0,104(a0)
quickjs-nuttx/quickjs.c:22519
{
    8000b380:	84aa                	mv	s1,a0
    8000b382:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:22523
    opcode = get_prev_opcode(fd);
    8000b384:	8522                	mv	a0,s0
    8000b386:	ba3fc0ef          	jal	ra,80007f28 <get_prev_opcode>
quickjs-nuttx/quickjs.c:22524
    if (opcode == OP_set_name) {
    8000b38a:	04d00793          	li	a5,77
    8000b38e:	02f51863          	bne	a0,a5,8000b3be <set_object_name+0x4c>
quickjs-nuttx/quickjs.c:22526
        fd->byte_code.size = fd->last_opcode_pos;
    8000b392:	16042783          	lw	a5,352(s0)
quickjs-nuttx/quickjs.c:22528
        emit_op(s, OP_set_name);
    8000b396:	8526                	mv	a0,s1
    8000b398:	04d00593          	li	a1,77
quickjs-nuttx/quickjs.c:22526
        fd->byte_code.size = fd->last_opcode_pos;
    8000b39c:	12f43c23          	sd	a5,312(s0)
quickjs-nuttx/quickjs.c:22527
        fd->last_opcode_pos = -1;
    8000b3a0:	57fd                	li	a5,-1
    8000b3a2:	16f42023          	sw	a5,352(s0)
quickjs-nuttx/quickjs.c:22528
        emit_op(s, OP_set_name);
    8000b3a6:	d51fd0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22544
}
    8000b3aa:	7402                	ld	s0,32(sp)
    8000b3ac:	70a2                	ld	ra,40(sp)
    8000b3ae:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:22529
        emit_atom(s, name);
    8000b3b0:	85ce                	mv	a1,s3
    8000b3b2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:22544
}
    8000b3b4:	69a2                	ld	s3,8(sp)
    8000b3b6:	64e2                	ld	s1,24(sp)
    8000b3b8:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:22529
        emit_atom(s, name);
    8000b3ba:	d71ff06f          	j	8000b12a <emit_atom>
quickjs-nuttx/quickjs.c:22530
    } else if (opcode == OP_set_class_name) {
    8000b3be:	0c700793          	li	a5,199
    8000b3c2:	0af51763          	bne	a0,a5,8000b470 <set_object_name+0xfe>
quickjs-nuttx/quickjs.c:22533
        define_class_pos = fd->last_opcode_pos + 1 -
    8000b3c6:	16042703          	lw	a4,352(s0)
quickjs-nuttx/quickjs.c:22534
            get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    8000b3ca:	13043783          	ld	a5,304(s0)
quickjs-nuttx/quickjs.c:22533
        define_class_pos = fd->last_opcode_pos + 1 -
    8000b3ce:	0017091b          	addiw	s2,a4,1
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8000b3d2:	973e                	add	a4,a4,a5
    8000b3d4:	00274683          	lbu	a3,2(a4) # ffffffffc0000002 <_ebss+0xffffffff3fefee9c>
    8000b3d8:	00174603          	lbu	a2,1(a4)
    8000b3dc:	06a2                	slli	a3,a3,0x8
    8000b3de:	8e55                	or	a2,a2,a3
    8000b3e0:	00374683          	lbu	a3,3(a4)
    8000b3e4:	00474703          	lbu	a4,4(a4)
    8000b3e8:	06c2                	slli	a3,a3,0x10
    8000b3ea:	8ed1                	or	a3,a3,a2
    8000b3ec:	0762                	slli	a4,a4,0x18
    8000b3ee:	8f55                	or	a4,a4,a3
set_object_name():
quickjs-nuttx/quickjs.c:22535
        assert(fd->byte_code.buf[define_class_pos] == OP_define_class);
    8000b3f0:	40e9093b          	subw	s2,s2,a4
    8000b3f4:	01278733          	add	a4,a5,s2
    8000b3f8:	00074683          	lbu	a3,0(a4)
    8000b3fc:	05600713          	li	a4,86
    8000b400:	00e68c63          	beq	a3,a4,8000b418 <set_object_name+0xa6>
quickjs-nuttx/quickjs.c:22535 (discriminator 1)
    8000b404:	6599                	lui	a1,0x6
    8000b406:	4601                	li	a2,0
    8000b408:	80758593          	addi	a1,a1,-2041 # 5807 <asinh-0x7fffa7f9>
    8000b40c:	0005e517          	auipc	a0,0x5e
    8000b410:	18c50513          	addi	a0,a0,396 # 80069598 <qjsc_repl+0x3fe8>
    8000b414:	548550ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:22538 (discriminator 2)
        atom = get_u32(fd->byte_code.buf + define_class_pos + 1);
    8000b418:	0905                	addi	s2,s2,1
get_u32():
quickjs-nuttx/cutils.h:170 (discriminator 2)
    8000b41a:	97ca                	add	a5,a5,s2
    8000b41c:	0017c703          	lbu	a4,1(a5) # ffffffff80000001 <_ebss+0xfffffffeffefee9b>
    8000b420:	0007c583          	lbu	a1,0(a5)
set_object_name():
quickjs-nuttx/quickjs.c:22539 (discriminator 2)
        JS_FreeAtom(s->ctx, atom);
    8000b424:	6088                	ld	a0,0(s1)
get_u32():
quickjs-nuttx/cutils.h:170 (discriminator 2)
    8000b426:	0722                	slli	a4,a4,0x8
    8000b428:	8f4d                	or	a4,a4,a1
    8000b42a:	0027c583          	lbu	a1,2(a5)
    8000b42e:	05c2                	slli	a1,a1,0x10
    8000b430:	8f4d                	or	a4,a4,a1
    8000b432:	0037c583          	lbu	a1,3(a5)
    8000b436:	05e2                	slli	a1,a1,0x18
    8000b438:	8dd9                	or	a1,a1,a4
set_object_name():
quickjs-nuttx/quickjs.c:22539 (discriminator 2)
    8000b43a:	2581                	sext.w	a1,a1
    8000b43c:	d0dff0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:22540 (discriminator 2)
        put_u32(fd->byte_code.buf + define_class_pos + 1,
    8000b440:	13043783          	ld	a5,304(s0)
    8000b444:	6088                	ld	a0,0(s1)
    8000b446:	85ce                	mv	a1,s3
    8000b448:	993e                	add	s2,s2,a5
    8000b44a:	cbdff0ef          	jal	ra,8000b106 <JS_DupAtom>
put_u32():
quickjs-nuttx/cutils.h:180 (discriminator 2)
    ((struct packed_u32 *)tab)->v = val;
    8000b44e:	0085579b          	srliw	a5,a0,0x8
    8000b452:	00a90023          	sb	a0,0(s2)
    8000b456:	00f900a3          	sb	a5,1(s2)
    8000b45a:	0105579b          	srliw	a5,a0,0x10
    8000b45e:	0185551b          	srliw	a0,a0,0x18
    8000b462:	00f90123          	sb	a5,2(s2)
    8000b466:	00a901a3          	sb	a0,3(s2)
set_object_name():
quickjs-nuttx/quickjs.c:22542 (discriminator 2)
        fd->last_opcode_pos = -1;
    8000b46a:	57fd                	li	a5,-1
    8000b46c:	16f42023          	sw	a5,352(s0)
quickjs-nuttx/quickjs.c:22544
}
    8000b470:	70a2                	ld	ra,40(sp)
    8000b472:	7402                	ld	s0,32(sp)
    8000b474:	64e2                	ld	s1,24(sp)
    8000b476:	6942                	ld	s2,16(sp)
    8000b478:	69a2                	ld	s3,8(sp)
    8000b47a:	6145                	addi	sp,sp,48
    8000b47c:	8082                	ret

000000008000b47e <skip_dead_code>:
skip_dead_code():
quickjs-nuttx/quickjs.c:31313
{
    8000b47e:	7175                	addi	sp,sp,-144
    8000b480:	e122                	sd	s0,128(sp)
    8000b482:	fca6                	sd	s1,120(sp)
    8000b484:	f8ca                	sd	s2,112(sp)
    8000b486:	f4ce                	sd	s3,104(sp)
    8000b488:	f0d2                	sd	s4,96(sp)
    8000b48a:	ecd6                	sd	s5,88(sp)
    8000b48c:	e8da                	sd	s6,80(sp)
    8000b48e:	e4de                	sd	s7,72(sp)
    8000b490:	e0e2                	sd	s8,64(sp)
    8000b492:	fc66                	sd	s9,56(sp)
    8000b494:	f86a                	sd	s10,48(sp)
    8000b496:	e506                	sd	ra,136(sp)
    8000b498:	f46e                	sd	s11,40(sp)
    8000b49a:	84aa                	mv	s1,a0
    8000b49c:	e42e                	sd	a1,8(sp)
    8000b49e:	e832                	sd	a2,16(sp)
    8000b4a0:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:31316
    for (; pos < bc_len; pos += len) {
    8000b4a2:	8436                	mv	s0,a3
quickjs-nuttx/quickjs.c:31318
        len = opcode_info[op].size;
    8000b4a4:	0006a997          	auipc	s3,0x6a
    8000b4a8:	90c98993          	addi	s3,s3,-1780 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:31319
        if (op == OP_line_num) {
    8000b4ac:	0c800a13          	li	s4,200
quickjs-nuttx/quickjs.c:31322
        if (op == OP_label) {
    8000b4b0:	0b800a93          	li	s5,184
quickjs-nuttx/quickjs.c:31336
            switch(opcode_info[op].fmt) {
    8000b4b4:	4b6d                	li	s6,27
    8000b4b6:	4bf1                	li	s7,28
    8000b4b8:	4c65                	li	s8,25
    8000b4ba:	4cd9                	li	s9,22
    8000b4bc:	4d09                	li	s10,2
quickjs-nuttx/quickjs.c:31316 (discriminator 1)
    for (; pos < bc_len; pos += len) {
    8000b4be:	67c2                	ld	a5,16(sp)
    8000b4c0:	02f44263          	blt	s0,a5,8000b4e4 <skip_dead_code+0x66>
quickjs-nuttx/quickjs.c:31359
}
    8000b4c4:	60aa                	ld	ra,136(sp)
    8000b4c6:	8522                	mv	a0,s0
    8000b4c8:	640a                	ld	s0,128(sp)
    8000b4ca:	74e6                	ld	s1,120(sp)
    8000b4cc:	7946                	ld	s2,112(sp)
    8000b4ce:	79a6                	ld	s3,104(sp)
    8000b4d0:	7a06                	ld	s4,96(sp)
    8000b4d2:	6ae6                	ld	s5,88(sp)
    8000b4d4:	6b46                	ld	s6,80(sp)
    8000b4d6:	6ba6                	ld	s7,72(sp)
    8000b4d8:	6c06                	ld	s8,64(sp)
    8000b4da:	7ce2                	ld	s9,56(sp)
    8000b4dc:	7d42                	ld	s10,48(sp)
    8000b4de:	7da2                	ld	s11,40(sp)
    8000b4e0:	6149                	addi	sp,sp,144
    8000b4e2:	8082                	ret
quickjs-nuttx/quickjs.c:31317
        op = bc_buf[pos];
    8000b4e4:	67a2                	ld	a5,8(sp)
    8000b4e6:	97a2                	add	a5,a5,s0
    8000b4e8:	0007c683          	lbu	a3,0(a5)
quickjs-nuttx/quickjs.c:31318
        len = opcode_info[op].size;
    8000b4ec:	00269713          	slli	a4,a3,0x2
    8000b4f0:	974e                	add	a4,a4,s3
    8000b4f2:	00074d83          	lbu	s11,0(a4)
quickjs-nuttx/quickjs.c:31319
        if (op == OP_line_num) {
    8000b4f6:	03469563          	bne	a3,s4,8000b520 <skip_dead_code+0xa2>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8000b4fa:	0027c703          	lbu	a4,2(a5)
    8000b4fe:	0017c683          	lbu	a3,1(a5)
    8000b502:	0722                	slli	a4,a4,0x8
    8000b504:	8ed9                	or	a3,a3,a4
    8000b506:	0037c703          	lbu	a4,3(a5)
    8000b50a:	0047c783          	lbu	a5,4(a5)
    8000b50e:	0742                	slli	a4,a4,0x10
    8000b510:	8f55                	or	a4,a4,a3
    8000b512:	07e2                	slli	a5,a5,0x18
    8000b514:	8fd9                	or	a5,a5,a4
skip_dead_code():
quickjs-nuttx/quickjs.c:31320
            *linep = get_u32(bc_buf + pos + 1);
    8000b516:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:31316
    for (; pos < bc_len; pos += len) {
    8000b51a:	008d843b          	addw	s0,s11,s0
    8000b51e:	b745                	j	8000b4be <skip_dead_code+0x40>
quickjs-nuttx/quickjs.c:31322
        if (op == OP_label) {
    8000b520:	05569b63          	bne	a3,s5,8000b576 <skip_dead_code+0xf8>
get_u32():
quickjs-nuttx/cutils.h:170
    8000b524:	0027c703          	lbu	a4,2(a5)
    8000b528:	0017c583          	lbu	a1,1(a5)
skip_dead_code():
quickjs-nuttx/quickjs.c:31324
            if (update_label(s, label, 0) > 0)
    8000b52c:	4601                	li	a2,0
get_u32():
quickjs-nuttx/cutils.h:170
    8000b52e:	0722                	slli	a4,a4,0x8
    8000b530:	8f4d                	or	a4,a4,a1
    8000b532:	0037c583          	lbu	a1,3(a5)
skip_dead_code():
quickjs-nuttx/quickjs.c:31324
    8000b536:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    8000b538:	05c2                	slli	a1,a1,0x10
    8000b53a:	8f4d                	or	a4,a4,a1
    8000b53c:	0047c583          	lbu	a1,4(a5)
    8000b540:	05e2                	slli	a1,a1,0x18
    8000b542:	8dd9                	or	a1,a1,a4
skip_dead_code():
quickjs-nuttx/quickjs.c:31323
            label = get_u32(bc_buf + pos + 1);
    8000b544:	2581                	sext.w	a1,a1
quickjs-nuttx/quickjs.c:31324
            if (update_label(s, label, 0) > 0)
    8000b546:	ec2e                	sd	a1,24(sp)
    8000b548:	a08fe0ef          	jal	ra,80009750 <update_label>
    8000b54c:	f6a04ce3          	bgtz	a0,8000b4c4 <skip_dead_code+0x46>
quickjs-nuttx/quickjs.c:31332
            assert(s->label_slots[label].first_reloc == NULL);
    8000b550:	65e2                	ld	a1,24(sp)
    8000b552:	4761                	li	a4,24
    8000b554:	1704b783          	ld	a5,368(s1)
    8000b558:	02e585b3          	mul	a1,a1,a4
    8000b55c:	95be                	add	a1,a1,a5
    8000b55e:	699c                	ld	a5,16(a1)
    8000b560:	dfcd                	beqz	a5,8000b51a <skip_dead_code+0x9c>
quickjs-nuttx/quickjs.c:31332 (discriminator 1)
    8000b562:	65a1                	lui	a1,0x8
    8000b564:	4601                	li	a2,0
    8000b566:	a6458593          	addi	a1,a1,-1436 # 7a64 <asinh-0x7fff859c>
    8000b56a:	0005e517          	auipc	a0,0x5e
    8000b56e:	02e50513          	addi	a0,a0,46 # 80069598 <qjsc_repl+0x3fe8>
    8000b572:	3ea550ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:31336
            switch(opcode_info[op].fmt) {
    8000b576:	00374703          	lbu	a4,3(a4)
    8000b57a:	02eb6e63          	bltu	s6,a4,8000b5b6 <skip_dead_code+0x138>
    8000b57e:	06ec6263          	bltu	s8,a4,8000b5e2 <skip_dead_code+0x164>
    8000b582:	03970c63          	beq	a4,s9,8000b5ba <skip_dead_code+0x13c>
    8000b586:	3725                	addiw	a4,a4,-23
    8000b588:	0ff77713          	zext.b	a4,a4
    8000b58c:	f8ed67e3          	bltu	s10,a4,8000b51a <skip_dead_code+0x9c>
get_u32():
quickjs-nuttx/cutils.h:170
    8000b590:	0027c703          	lbu	a4,2(a5)
    8000b594:	0017c583          	lbu	a1,1(a5)
skip_dead_code():
quickjs-nuttx/quickjs.c:31351
                JS_FreeAtom(s->ctx, atom);
    8000b598:	6088                	ld	a0,0(s1)
get_u32():
quickjs-nuttx/cutils.h:170
    8000b59a:	0722                	slli	a4,a4,0x8
    8000b59c:	8f4d                	or	a4,a4,a1
    8000b59e:	0037c583          	lbu	a1,3(a5)
    8000b5a2:	05c2                	slli	a1,a1,0x10
    8000b5a4:	8f4d                	or	a4,a4,a1
    8000b5a6:	0047c583          	lbu	a1,4(a5)
    8000b5aa:	05e2                	slli	a1,a1,0x18
    8000b5ac:	8dd9                	or	a1,a1,a4
skip_dead_code():
quickjs-nuttx/quickjs.c:31351
    8000b5ae:	2581                	sext.w	a1,a1
    8000b5b0:	b99ff0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:31352
                break;
    8000b5b4:	b79d                	j	8000b51a <skip_dead_code+0x9c>
quickjs-nuttx/quickjs.c:31336
            switch(opcode_info[op].fmt) {
    8000b5b6:	f77712e3          	bne	a4,s7,8000b51a <skip_dead_code+0x9c>
get_u32():
quickjs-nuttx/cutils.h:170
    8000b5ba:	0027c703          	lbu	a4,2(a5)
    8000b5be:	0017c583          	lbu	a1,1(a5)
skip_dead_code():
quickjs-nuttx/quickjs.c:31340
                update_label(s, label, -1);
    8000b5c2:	567d                	li	a2,-1
get_u32():
quickjs-nuttx/cutils.h:170
    8000b5c4:	0722                	slli	a4,a4,0x8
    8000b5c6:	8f4d                	or	a4,a4,a1
    8000b5c8:	0037c583          	lbu	a1,3(a5)
skip_dead_code():
quickjs-nuttx/quickjs.c:31340
    8000b5cc:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    8000b5ce:	05c2                	slli	a1,a1,0x10
    8000b5d0:	8f4d                	or	a4,a4,a1
    8000b5d2:	0047c583          	lbu	a1,4(a5)
    8000b5d6:	05e2                	slli	a1,a1,0x18
    8000b5d8:	8dd9                	or	a1,a1,a4
skip_dead_code():
quickjs-nuttx/quickjs.c:31340
    8000b5da:	2581                	sext.w	a1,a1
    8000b5dc:	974fe0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:31341
                break;
    8000b5e0:	bf2d                	j	8000b51a <skip_dead_code+0x9c>
get_u32():
quickjs-nuttx/cutils.h:170
    8000b5e2:	0067c703          	lbu	a4,6(a5)
    8000b5e6:	0057c583          	lbu	a1,5(a5)
skip_dead_code():
quickjs-nuttx/quickjs.c:31345
                update_label(s, label, -1);
    8000b5ea:	567d                	li	a2,-1
get_u32():
quickjs-nuttx/cutils.h:170
    8000b5ec:	0722                	slli	a4,a4,0x8
    8000b5ee:	8f4d                	or	a4,a4,a1
    8000b5f0:	0077c583          	lbu	a1,7(a5)
skip_dead_code():
quickjs-nuttx/quickjs.c:31345
    8000b5f4:	8526                	mv	a0,s1
get_u32():
quickjs-nuttx/cutils.h:170
    8000b5f6:	ec3e                	sd	a5,24(sp)
    8000b5f8:	05c2                	slli	a1,a1,0x10
    8000b5fa:	8f4d                	or	a4,a4,a1
    8000b5fc:	0087c583          	lbu	a1,8(a5)
    8000b600:	05e2                	slli	a1,a1,0x18
    8000b602:	8dd9                	or	a1,a1,a4
skip_dead_code():
quickjs-nuttx/quickjs.c:31345
    8000b604:	2581                	sext.w	a1,a1
    8000b606:	94afe0ef          	jal	ra,80009750 <update_label>
    8000b60a:	67e2                	ld	a5,24(sp)
    8000b60c:	b751                	j	8000b590 <skip_dead_code+0x112>

000000008000b60e <JS_FreeAtomRT>:
JS_FreeAtomRT():
quickjs-nuttx/quickjs.c:3260
    if (!__JS_AtomIsConst(v))
    8000b60e:	0e200793          	li	a5,226
    8000b612:	00b7d463          	bge	a5,a1,8000b61a <JS_FreeAtomRT+0xc>
quickjs-nuttx/quickjs.c:3261
        __JS_FreeAtom(rt, v);
    8000b616:	c86ff06f          	j	8000aa9c <__JS_FreeAtom>
quickjs-nuttx/quickjs.c:3262
}
    8000b61a:	8082                	ret

000000008000b61c <free_bytecode_atoms>:
free_bytecode_atoms():
quickjs-nuttx/quickjs.c:29371
{
    8000b61c:	715d                	addi	sp,sp,-80
    8000b61e:	e0a2                	sd	s0,64(sp)
    8000b620:	fc26                	sd	s1,56(sp)
    8000b622:	f84a                	sd	s2,48(sp)
    8000b624:	f44e                	sd	s3,40(sp)
    8000b626:	f052                	sd	s4,32(sp)
    8000b628:	ec56                	sd	s5,24(sp)
    8000b62a:	e85a                	sd	s6,16(sp)
    8000b62c:	e45e                	sd	s7,8(sp)
    8000b62e:	e486                	sd	ra,72(sp)
    8000b630:	e062                	sd	s8,0(sp)
    8000b632:	892a                	mv	s2,a0
    8000b634:	89ae                	mv	s3,a1
    8000b636:	84b2                	mv	s1,a2
    8000b638:	8a36                	mv	s4,a3
quickjs-nuttx/quickjs.c:29376
    pos = 0;
    8000b63a:	4401                	li	s0,0
    8000b63c:	00069a97          	auipc	s5,0x69
    8000b640:	774a8a93          	addi	s5,s5,1908 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:29380
            oi = &short_opcode_info(op);
    8000b644:	0b500b13          	li	s6,181
quickjs-nuttx/quickjs.c:29385
        switch(oi->fmt) {
    8000b648:	4b91                	li	s7,4
quickjs-nuttx/quickjs.c:29377
    while (pos < bc_len) {
    8000b64a:	00944e63          	blt	s0,s1,8000b666 <free_bytecode_atoms+0x4a>
quickjs-nuttx/quickjs.c:29399
}
    8000b64e:	60a6                	ld	ra,72(sp)
    8000b650:	6406                	ld	s0,64(sp)
    8000b652:	74e2                	ld	s1,56(sp)
    8000b654:	7942                	ld	s2,48(sp)
    8000b656:	79a2                	ld	s3,40(sp)
    8000b658:	7a02                	ld	s4,32(sp)
    8000b65a:	6ae2                	ld	s5,24(sp)
    8000b65c:	6b42                	ld	s6,16(sp)
    8000b65e:	6ba2                	ld	s7,8(sp)
    8000b660:	6c02                	ld	s8,0(sp)
    8000b662:	6161                	addi	sp,sp,80
    8000b664:	8082                	ret
quickjs-nuttx/quickjs.c:29378
        op = bc_buf[pos];
    8000b666:	00898833          	add	a6,s3,s0
    8000b66a:	00084783          	lbu	a5,0(a6)
    8000b66e:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.c:29382
            oi = &opcode_info[op];
    8000b672:	078a                	slli	a5,a5,0x2
quickjs-nuttx/quickjs.c:29379
        if (use_short_opcodes)
    8000b674:	000a0763          	beqz	s4,8000b682 <free_bytecode_atoms+0x66>
quickjs-nuttx/quickjs.c:29380
            oi = &short_opcode_info(op);
    8000b678:	00eb5363          	bge	s6,a4,8000b67e <free_bytecode_atoms+0x62>
quickjs-nuttx/quickjs.c:29380 (discriminator 1)
    8000b67c:	074d                	addi	a4,a4,19
quickjs-nuttx/quickjs.c:29380 (discriminator 4)
    8000b67e:	00271793          	slli	a5,a4,0x2
quickjs-nuttx/quickjs.c:29382
            oi = &opcode_info[op];
    8000b682:	97d6                	add	a5,a5,s5
quickjs-nuttx/quickjs.c:29384
        len = oi->size;
    8000b684:	0007cc03          	lbu	s8,0(a5)
quickjs-nuttx/quickjs.c:29385
        switch(oi->fmt) {
    8000b688:	0037c783          	lbu	a5,3(a5)
    8000b68c:	37a5                	addiw	a5,a5,-23
    8000b68e:	02fbe563          	bltu	s7,a5,8000b6b8 <free_bytecode_atoms+0x9c>
get_u32():
quickjs-nuttx/cutils.h:170
    8000b692:	00284703          	lbu	a4,2(a6)
    8000b696:	00184783          	lbu	a5,1(a6)
free_bytecode_atoms():
quickjs-nuttx/quickjs.c:29392
            JS_FreeAtomRT(rt, atom);
    8000b69a:	854a                	mv	a0,s2
get_u32():
quickjs-nuttx/cutils.h:170
    8000b69c:	0722                	slli	a4,a4,0x8
    8000b69e:	8f5d                	or	a4,a4,a5
    8000b6a0:	00384783          	lbu	a5,3(a6)
    8000b6a4:	07c2                	slli	a5,a5,0x10
    8000b6a6:	8f5d                	or	a4,a4,a5
    8000b6a8:	00484783          	lbu	a5,4(a6)
    8000b6ac:	07e2                	slli	a5,a5,0x18
    8000b6ae:	8fd9                	or	a5,a5,a4
free_bytecode_atoms():
quickjs-nuttx/quickjs.c:29392
    8000b6b0:	0007859b          	sext.w	a1,a5
    8000b6b4:	f5bff0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:29397
        pos += len;
    8000b6b8:	008c043b          	addw	s0,s8,s0
    8000b6bc:	b779                	j	8000b64a <free_bytecode_atoms+0x2e>

000000008000b6be <JS_NewClassID>:
JS_NewClassID():
quickjs-nuttx/quickjs.c:3385
{
    8000b6be:	1101                	addi	sp,sp,-32
    8000b6c0:	e426                	sd	s1,8(sp)
    8000b6c2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:3388
    pthread_mutex_lock(&js_class_id_mutex);
    8000b6c4:	000f6517          	auipc	a0,0xf6
    8000b6c8:	97450513          	addi	a0,a0,-1676 # 80101038 <js_class_id_mutex>
quickjs-nuttx/quickjs.c:3385
{
    8000b6cc:	e822                	sd	s0,16(sp)
    8000b6ce:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:3388
    pthread_mutex_lock(&js_class_id_mutex);
    8000b6d0:	053550ef          	jal	ra,80060f22 <pthread_mutex_lock>
quickjs-nuttx/quickjs.c:3390
    class_id = *pclass_id;
    8000b6d4:	4080                	lw	s0,0(s1)
quickjs-nuttx/quickjs.c:3391
    if (class_id == 0) {
    8000b6d6:	e811                	bnez	s0,8000b6ea <JS_NewClassID+0x2c>
quickjs-nuttx/quickjs.c:3392
        class_id = js_class_id_alloc++;
    8000b6d8:	000f6797          	auipc	a5,0xf6
    8000b6dc:	a2078793          	addi	a5,a5,-1504 # 801010f8 <js_class_id_alloc>
    8000b6e0:	4380                	lw	s0,0(a5)
    8000b6e2:	0014071b          	addiw	a4,s0,1
    8000b6e6:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.c:3393
        *pclass_id = class_id;
    8000b6e8:	c080                	sw	s0,0(s1)
quickjs-nuttx/quickjs.c:3396
    pthread_mutex_unlock(&js_class_id_mutex);
    8000b6ea:	000f6517          	auipc	a0,0xf6
    8000b6ee:	94e50513          	addi	a0,a0,-1714 # 80101038 <js_class_id_mutex>
    8000b6f2:	1e0590ef          	jal	ra,800648d2 <pthread_mutex_unlock>
quickjs-nuttx/quickjs.c:3399
}
    8000b6f6:	60e2                	ld	ra,24(sp)
    8000b6f8:	8522                	mv	a0,s0
    8000b6fa:	6442                	ld	s0,16(sp)
    8000b6fc:	64a2                	ld	s1,8(sp)
    8000b6fe:	6105                	addi	sp,sp,32
    8000b700:	8082                	ret

000000008000b702 <JS_IsRegisteredClass>:
JS_IsRegisteredClass():
quickjs-nuttx/quickjs.c:3403
    return (class_id < rt->class_count &&
    8000b702:	557c                	lw	a5,108(a0)
    8000b704:	00f5fe63          	bgeu	a1,a5,8000b720 <JS_IsRegisteredClass+0x1e>
quickjs-nuttx/quickjs.c:3404 (discriminator 1)
            rt->class_array[class_id].class_id != 0);
    8000b708:	1582                	slli	a1,a1,0x20
    8000b70a:	02800713          	li	a4,40
    8000b70e:	9181                	srli	a1,a1,0x20
    8000b710:	02e585b3          	mul	a1,a1,a4
    8000b714:	793c                	ld	a5,112(a0)
    8000b716:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:3403 (discriminator 1)
    return (class_id < rt->class_count &&
    8000b718:	4188                	lw	a0,0(a1)
    8000b71a:	00a03533          	snez	a0,a0
    8000b71e:	8082                	ret
quickjs-nuttx/quickjs.c:3403
    8000b720:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:3405
}
    8000b722:	8082                	ret

000000008000b724 <JS_NewClass>:
JS_NewClass():
quickjs-nuttx/quickjs.c:3459
{
    8000b724:	7139                	addi	sp,sp,-64
    8000b726:	fc06                	sd	ra,56(sp)
    8000b728:	f822                	sd	s0,48(sp)
    8000b72a:	f426                	sd	s1,40(sp)
    8000b72c:	f04a                	sd	s2,32(sp)
    8000b72e:	e852                	sd	s4,16(sp)
    8000b730:	ec4e                	sd	s3,24(sp)
    8000b732:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:3463
    len = strlen(class_def->class_name);
    8000b734:	620c                	ld	a1,0(a2)
quickjs-nuttx/quickjs.c:3459
{
    8000b736:	84aa                	mv	s1,a0
    8000b738:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:3463
    len = strlen(class_def->class_name);
    8000b73a:	852e                	mv	a0,a1
    8000b73c:	e42e                	sd	a1,8(sp)
    8000b73e:	644580ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/quickjs.c:3464
    name = __JS_FindAtom(rt, class_def->class_name, len, JS_ATOM_TYPE_STRING);
    8000b742:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:3463
    len = strlen(class_def->class_name);
    8000b744:	0005061b          	sext.w	a2,a0
quickjs-nuttx/quickjs.c:3464
    name = __JS_FindAtom(rt, class_def->class_name, len, JS_ATOM_TYPE_STRING);
    8000b748:	8526                	mv	a0,s1
    8000b74a:	e032                	sd	a2,0(sp)
    8000b74c:	92bfe0ef          	jal	ra,8000a076 <__JS_FindAtom.constprop.0>
    8000b750:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:3465
    if (name == JS_ATOM_NULL) {
    8000b754:	ec01                	bnez	s0,8000b76c <JS_NewClass+0x48>
quickjs-nuttx/quickjs.c:3466
        name = __JS_NewAtomInit(rt, class_def->class_name, len, JS_ATOM_TYPE_STRING);
    8000b756:	6602                	ld	a2,0(sp)
    8000b758:	00093583          	ld	a1,0(s2)
    8000b75c:	4685                	li	a3,1
    8000b75e:	8526                	mv	a0,s1
    8000b760:	ffaff0ef          	jal	ra,8000af5a <__JS_NewAtomInit>
    8000b764:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:3468
            return -1;
    8000b768:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:3467
        if (name == JS_ATOM_NULL)
    8000b76a:	cc01                	beqz	s0,8000b782 <JS_NewClass+0x5e>
quickjs-nuttx/quickjs.c:3470
    ret = JS_NewClass1(rt, class_id, class_def, name);
    8000b76c:	85d2                	mv	a1,s4
    8000b76e:	86a2                	mv	a3,s0
    8000b770:	864a                	mv	a2,s2
    8000b772:	8526                	mv	a0,s1
    8000b774:	fddfc0ef          	jal	ra,80008750 <JS_NewClass1>
    8000b778:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:3471
    JS_FreeAtomRT(rt, name);
    8000b77a:	85a2                	mv	a1,s0
    8000b77c:	8526                	mv	a0,s1
    8000b77e:	e91ff0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:3473
}
    8000b782:	70e2                	ld	ra,56(sp)
    8000b784:	7442                	ld	s0,48(sp)
    8000b786:	74a2                	ld	s1,40(sp)
    8000b788:	7902                	ld	s2,32(sp)
    8000b78a:	6a42                	ld	s4,16(sp)
    8000b78c:	854e                	mv	a0,s3
    8000b78e:	69e2                	ld	s3,24(sp)
    8000b790:	6121                	addi	sp,sp,64
    8000b792:	8082                	ret

000000008000b794 <__JS_FreeValue>:
__JS_FreeValue():
quickjs-nuttx/quickjs.c:5575
    __JS_FreeValueRT(ctx->rt, v);
    8000b794:	6d08                	ld	a0,24(a0)
quickjs-nuttx/quickjs.c:5574
{
    8000b796:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:5576
}
    8000b798:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5575
    __JS_FreeValueRT(ctx->rt, v);
    8000b79a:	31f0006f          	j	8000c2b8 <__JS_FreeValueRT>

000000008000b79e <JS_FreeValue>:
JS_FreeValue():
quickjs-nuttx/quickjs.h:647
{
    8000b79e:	1141                	addi	sp,sp,-16
    8000b7a0:	e02e                	sd	a1,0(sp)
    8000b7a2:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.h:648
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    8000b7a4:	0006079b          	sext.w	a5,a2
    8000b7a8:	5751                	li	a4,-12
    8000b7aa:	00f77b63          	bgeu	a4,a5,8000b7c0 <JS_FreeValue+0x22>
quickjs-nuttx/quickjs.h:650
        if (--p->ref_count <= 0) {
    8000b7ae:	4198                	lw	a4,0(a1)
    8000b7b0:	fff7069b          	addiw	a3,a4,-1
    8000b7b4:	c194                	sw	a3,0(a1)
    8000b7b6:	00d04563          	bgtz	a3,8000b7c0 <JS_FreeValue+0x22>
quickjs-nuttx/quickjs.h:654
}
    8000b7ba:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.h:651
            __JS_FreeValue(ctx, v);
    8000b7bc:	fd9ff06f          	j	8000b794 <__JS_FreeValue>
quickjs-nuttx/quickjs.h:654
}
    8000b7c0:	0141                	addi	sp,sp,16
    8000b7c2:	8082                	ret

000000008000b7c4 <js_strict_eq2>:
js_strict_eq2():
quickjs-nuttx/quickjs.c:14298
{
    8000b7c4:	7171                	addi	sp,sp,-176
    8000b7c6:	f122                	sd	s0,160(sp)
    8000b7c8:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:14303
    tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8000b7ca:	0006041b          	sext.w	s0,a2
quickjs-nuttx/quickjs.c:14305
    switch(tag1) {
    8000b7ce:	262d                	addiw	a2,a2,11
quickjs-nuttx/quickjs.c:14298
{
    8000b7d0:	ed26                	sd	s1,152(sp)
    8000b7d2:	e82e                	sd	a1,16(sp)
    8000b7d4:	e036                	sd	a3,0(sp)
    8000b7d6:	f506                	sd	ra,168(sp)
    8000b7d8:	e94a                	sd	s2,144(sp)
    8000b7da:	e54e                	sd	s3,136(sp)
    8000b7dc:	e152                	sd	s4,128(sp)
    8000b7de:	fcd6                	sd	s5,120(sp)
    8000b7e0:	e43a                	sd	a4,8(sp)
    8000b7e2:	0006059b          	sext.w	a1,a2
    8000b7e6:	46c9                	li	a3,18
    8000b7e8:	84aa                	mv	s1,a0
    8000b7ea:	0eb6eb63          	bltu	a3,a1,8000b8e0 <js_strict_eq2+0x11c>
    8000b7ee:	02061693          	slli	a3,a2,0x20
    8000b7f2:	01e6d613          	srli	a2,a3,0x1e
    8000b7f6:	0005e597          	auipc	a1,0x5e
    8000b7fa:	ef258593          	addi	a1,a1,-270 # 800696e8 <qjsc_repl+0x4138>
    8000b7fe:	962e                	add	a2,a2,a1
    8000b800:	4214                	lw	a3,0(a2)
    8000b802:	2701                	sext.w	a4,a4
    8000b804:	96ae                	add	a3,a3,a1
    8000b806:	8682                	jr	a3
quickjs-nuttx/quickjs.c:14307
        if (tag1 != tag2) {
    8000b808:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:14308
            res = FALSE;
    8000b80a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:14307
        if (tag1 != tag2) {
    8000b80c:	00f71b63          	bne	a4,a5,8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14310
            res = JS_VALUE_GET_INT(op1) == JS_VALUE_GET_INT(op2);
    8000b810:	4542                	lw	a0,16(sp)
    8000b812:	4402                	lw	s0,0(sp)
    8000b814:	8d01                	sub	a0,a0,s0
quickjs-nuttx/quickjs.c:14381
                res = (u1.u64 == u2.u64); /* +0 != -0 */
    8000b816:	00153413          	seqz	s0,a0
    8000b81a:	a061                	j	8000b8a2 <js_strict_eq2+0xde>
quickjs-nuttx/quickjs.c:14316
        res = (tag1 == tag2);
    8000b81c:	8c19                	sub	s0,s0,a4
    8000b81e:	00143413          	seqz	s0,s0
quickjs-nuttx/quickjs.c:14448
    JS_FreeValue(ctx, op1);
    8000b822:	65c2                	ld	a1,16(sp)
    8000b824:	6662                	ld	a2,24(sp)
    8000b826:	8526                	mv	a0,s1
    8000b828:	f77ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:14449
    JS_FreeValue(ctx, op2);
    8000b82c:	6582                	ld	a1,0(sp)
    8000b82e:	6622                	ld	a2,8(sp)
    8000b830:	8526                	mv	a0,s1
    8000b832:	f6dff0ef          	jal	ra,8000b79e <JS_FreeValue>
    8000b836:	a0b5                	j	8000b8a2 <js_strict_eq2+0xde>
quickjs-nuttx/quickjs.c:14321
            if (tag1 != tag2) {
    8000b838:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:14308
            res = FALSE;
    8000b83a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:14321
            if (tag1 != tag2) {
    8000b83c:	fef713e3          	bne	a4,a5,8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14326
                res = (js_string_compare(ctx, p1, p2) == 0);
    8000b840:	6582                	ld	a1,0(sp)
    8000b842:	6542                	ld	a0,16(sp)
    8000b844:	900ff0ef          	jal	ra,8000a944 <js_string_compare.constprop.0>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
int bf_cmpu(const bf_t *a, const bf_t *b);
int bf_cmp_full(const bf_t *a, const bf_t *b);
int bf_cmp(const bf_t *a, const bf_t *b);
static inline int bf_cmp_eq(const bf_t *a, const bf_t *b)
{
    return bf_cmp(a, b) == 0;
    8000b848:	00153413          	seqz	s0,a0
    8000b84c:	bfd9                	j	8000b822 <js_strict_eq2+0x5e>
js_strict_eq2():
quickjs-nuttx/quickjs.c:14333
            if (tag1 != tag2) {
    8000b84e:	57e1                	li	a5,-8
quickjs-nuttx/quickjs.c:14308
            res = FALSE;
    8000b850:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:14333
            if (tag1 != tag2) {
    8000b852:	fcf718e3          	bne	a4,a5,8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14338
                res = (p1 == p2);
    8000b856:	6542                	ld	a0,16(sp)
    8000b858:	6402                	ld	s0,0(sp)
    8000b85a:	8d01                	sub	a0,a0,s0
    8000b85c:	b7f5                	j	8000b848 <js_strict_eq2+0x84>
quickjs-nuttx/quickjs.c:14343
        if (tag1 != tag2)
    8000b85e:	57fd                	li	a5,-1
    8000b860:	bfc5                	j	8000b850 <js_strict_eq2+0x8c>
quickjs-nuttx/quickjs.c:14349
        d1 = JS_VALUE_GET_INT(op1);
    8000b862:	46c2                	lw	a3,16(sp)
    8000b864:	d20687d3          	fcvt.d.w	fa5,a3
    8000b868:	e20786d3          	fmv.x.d	a3,fa5
quickjs-nuttx/quickjs.c:14350
        if (tag2 == JS_TAG_INT) {
    8000b86c:	e719                	bnez	a4,8000b87a <js_strict_eq2+0xb6>
quickjs-nuttx/quickjs.c:14365
            d2 = JS_VALUE_GET_INT(op2);
    8000b86e:	4702                	lw	a4,0(sp)
    8000b870:	d20707d3          	fcvt.d.w	fa5,a4
    8000b874:	e2078553          	fmv.x.d	a0,fa5
    8000b878:	a029                	j	8000b882 <js_strict_eq2+0xbe>
quickjs-nuttx/quickjs.c:14353
        } else if (tag2 == JS_TAG_FLOAT64) {
    8000b87a:	461d                	li	a2,7
    8000b87c:	fac713e3          	bne	a4,a2,8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14363
            d2 = JS_VALUE_GET_FLOAT64(op2);
    8000b880:	6502                	ld	a0,0(sp)
quickjs-nuttx/quickjs.c:14384
            res = (d1 == d2); /* if NaN return false and +0 == -0 */
    8000b882:	f20687d3          	fmv.d.x	fa5,a3
    8000b886:	f2050753          	fmv.d.x	fa4,a0
    8000b88a:	a2e7a453          	feq.d	s0,fa5,fa4
quickjs-nuttx/quickjs.c:14371
        if (unlikely(eq_mode >= JS_EQ_SAME_VALUE)) {
    8000b88e:	cb91                	beqz	a5,8000b8a2 <js_strict_eq2+0xde>
quickjs-nuttx/quickjs.c:14374
            if (isnan(d1) || isnan(d2)) {
    8000b890:	a2f7a453          	feq.d	s0,fa5,fa5
    8000b894:	a2e72753          	feq.d	a4,fa4,fa4
    8000b898:	c011                	beqz	s0,8000b89c <js_strict_eq2+0xd8>
quickjs-nuttx/quickjs.c:14374 (discriminator 1)
    8000b89a:	e70d                	bnez	a4,8000b8c4 <js_strict_eq2+0x100>
quickjs-nuttx/quickjs.c:14375
                res = isnan(d1) == isnan(d2);
    8000b89c:	00173713          	seqz	a4,a4
    8000b8a0:	8c39                	xor	s0,s0,a4
quickjs-nuttx/quickjs.c:14452
}
    8000b8a2:	70aa                	ld	ra,168(sp)
    8000b8a4:	8522                	mv	a0,s0
    8000b8a6:	740a                	ld	s0,160(sp)
    8000b8a8:	64ea                	ld	s1,152(sp)
    8000b8aa:	694a                	ld	s2,144(sp)
    8000b8ac:	69aa                	ld	s3,136(sp)
    8000b8ae:	6a0a                	ld	s4,128(sp)
    8000b8b0:	7ae6                	ld	s5,120(sp)
    8000b8b2:	614d                	addi	sp,sp,176
    8000b8b4:	8082                	ret
quickjs-nuttx/quickjs.c:14362
        if (tag2 == JS_TAG_FLOAT64) {
    8000b8b6:	461d                	li	a2,7
quickjs-nuttx/quickjs.c:14361
        d1 = JS_VALUE_GET_FLOAT64(op1);
    8000b8b8:	66c2                	ld	a3,16(sp)
quickjs-nuttx/quickjs.c:14362
        if (tag2 == JS_TAG_FLOAT64) {
    8000b8ba:	fcc703e3          	beq	a4,a2,8000b880 <js_strict_eq2+0xbc>
quickjs-nuttx/quickjs.c:14308
            res = FALSE;
    8000b8be:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:14364
        } else if (tag2 == JS_TAG_INT) {
    8000b8c0:	f32d                	bnez	a4,8000b822 <js_strict_eq2+0x5e>
    8000b8c2:	b775                	j	8000b86e <js_strict_eq2+0xaa>
quickjs-nuttx/quickjs.c:14376
            } else if (eq_mode == JS_EQ_SAME_VALUE_ZERO) {
    8000b8c4:	4709                	li	a4,2
    8000b8c6:	00e79763          	bne	a5,a4,8000b8d4 <js_strict_eq2+0x110>
quickjs-nuttx/quickjs.c:14377
                res = (d1 == d2); /* +0 == -0 */
    8000b8ca:	f20687d3          	fmv.d.x	fa5,a3
    8000b8ce:	a2e7a453          	feq.d	s0,fa5,fa4
    8000b8d2:	bfc1                	j	8000b8a2 <js_strict_eq2+0xde>
quickjs-nuttx/quickjs.c:14381
                res = (u1.u64 == u2.u64); /* +0 != -0 */
    8000b8d4:	40a68533          	sub	a0,a3,a0
    8000b8d8:	bf3d                	j	8000b816 <js_strict_eq2+0x52>
quickjs-nuttx/quickjs.c:14390
            if (tag1 != tag2) {
    8000b8da:	57d9                	li	a5,-10
    8000b8dc:	00f70463          	beq	a4,a5,8000b8e4 <js_strict_eq2+0x120>
quickjs-nuttx/quickjs.c:14304
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8000b8e0:	4401                	li	s0,0
    8000b8e2:	b781                	j	8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14394
            a = JS_ToBigFloat(ctx, &a_s, op1); /* cannot fail */
    8000b8e4:	6642                	ld	a2,16(sp)
    8000b8e6:	66e2                	ld	a3,24(sp)
    8000b8e8:	02010a93          	addi	s5,sp,32
    8000b8ec:	85d6                	mv	a1,s5
    8000b8ee:	b7bfe0ef          	jal	ra,8000a468 <JS_ToBigFloat>
quickjs-nuttx/quickjs.c:14395
            b = JS_ToBigFloat(ctx, &b_s, op2); /* cannot fail */
    8000b8f2:	6602                	ld	a2,0(sp)
    8000b8f4:	66a2                	ld	a3,8(sp)
    8000b8f6:	04810a13          	addi	s4,sp,72
quickjs-nuttx/quickjs.c:14394
            a = JS_ToBigFloat(ctx, &a_s, op1); /* cannot fail */
    8000b8fa:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:14395
            b = JS_ToBigFloat(ctx, &b_s, op2); /* cannot fail */
    8000b8fc:	85d2                	mv	a1,s4
    8000b8fe:	8526                	mv	a0,s1
    8000b900:	b69fe0ef          	jal	ra,8000a468 <JS_ToBigFloat>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    8000b904:	85aa                	mv	a1,a0
js_strict_eq2():
quickjs-nuttx/quickjs.c:14395
    8000b906:	892a                	mv	s2,a0
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    8000b908:	854e                	mv	a0,s3
    8000b90a:	0624d0ef          	jal	ra,8005896c <bf_cmp>
    8000b90e:	00153413          	seqz	s0,a0
js_strict_eq2():
quickjs-nuttx/quickjs.c:14397
            if (a == &a_s)
    8000b912:	01599563          	bne	s3,s5,8000b91c <js_strict_eq2+0x158>
quickjs-nuttx/quickjs.c:14398
                bf_delete(a);
    8000b916:	854e                	mv	a0,s3
    8000b918:	b3ffe0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:14399
            if (b == &b_s)
    8000b91c:	f14913e3          	bne	s2,s4,8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14400
                bf_delete(b);
    8000b920:	854a                	mv	a0,s2
    8000b922:	b35fe0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:14402
        break;
    8000b926:	bdf5                	j	8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14408
            if (tag1 != tag2) {
    8000b928:	56dd                	li	a3,-9
quickjs-nuttx/quickjs.c:14308
            res = FALSE;
    8000b92a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:14408
            if (tag1 != tag2) {
    8000b92c:	eed71be3          	bne	a4,a3,8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14412
            p1 = JS_VALUE_GET_PTR(op1);
    8000b930:	6742                	ld	a4,16(sp)
quickjs-nuttx/quickjs.c:14413
            p2 = JS_VALUE_GET_PTR(op2);
    8000b932:	6682                	ld	a3,0(sp)
quickjs-nuttx/quickjs.c:14414
            a = &p1->num;
    8000b934:	00870513          	addi	a0,a4,8
quickjs-nuttx/quickjs.c:14415
            b = &p2->num;
    8000b938:	00868593          	addi	a1,a3,8 # ffffffff80000008 <_ebss+0xfffffffeffefeea2>
quickjs-nuttx/quickjs.c:14416
            if (unlikely(eq_mode >= JS_EQ_SAME_VALUE)) {
    8000b93c:	cb85                	beqz	a5,8000b96c <js_strict_eq2+0x1a8>
quickjs-nuttx/quickjs.c:14417
                if (eq_mode == JS_EQ_SAME_VALUE_ZERO &&
    8000b93e:	4609                	li	a2,2
    8000b940:	00c79b63          	bne	a5,a2,8000b956 <js_strict_eq2+0x192>
quickjs-nuttx/quickjs.c:14417 (discriminator 1)
    8000b944:	6f18                	ld	a4,24(a4)
    8000b946:	57fd                	li	a5,-1
    8000b948:	17fe                	slli	a5,a5,0x3f
    8000b94a:	00f71663          	bne	a4,a5,8000b956 <js_strict_eq2+0x192>
quickjs-nuttx/quickjs.c:14418
                           a->expn == BF_EXP_ZERO && b->expn == BF_EXP_ZERO) {
    8000b94e:	6e9c                	ld	a5,24(a3)
quickjs-nuttx/quickjs.c:14419
                    res = TRUE;
    8000b950:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:14418
                           a->expn == BF_EXP_ZERO && b->expn == BF_EXP_ZERO) {
    8000b952:	ece788e3          	beq	a5,a4,8000b822 <js_strict_eq2+0x5e>
quickjs-nuttx/quickjs.c:14421
                    res = (bf_cmp_full(a, b) == 0);
    8000b956:	7c74c0ef          	jal	ra,8005891c <bf_cmp_full>
    8000b95a:	b5fd                	j	8000b848 <js_strict_eq2+0x84>
quickjs-nuttx/quickjs.c:14432
            if (tag1 != tag2) {
    8000b95c:	57d5                	li	a5,-11
quickjs-nuttx/quickjs.c:14308
            res = FALSE;
    8000b95e:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:14432
            if (tag1 != tag2) {
    8000b960:	ecf711e3          	bne	a4,a5,8000b822 <js_strict_eq2+0x5e>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    8000b964:	6582                	ld	a1,0(sp)
    8000b966:	6542                	ld	a0,16(sp)
    8000b968:	05a1                	addi	a1,a1,8
    8000b96a:	0521                	addi	a0,a0,8
    8000b96c:	0004d0ef          	jal	ra,8005896c <bf_cmp>
    8000b970:	bde1                	j	8000b848 <js_strict_eq2+0x84>

000000008000b972 <js_same_value>:
js_same_value():
quickjs-nuttx/quickjs.c:14460
{
    8000b972:	715d                	addi	sp,sp,-80
    8000b974:	e0a2                	sd	s0,64(sp)
    8000b976:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:14461
    return js_strict_eq2(ctx,
    8000b978:	852e                	mv	a0,a1
    8000b97a:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:14460
{
    8000b97c:	e486                	sd	ra,72(sp)
    8000b97e:	e036                	sd	a3,0(sp)
    8000b980:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:14461
    return js_strict_eq2(ctx,
    8000b982:	a99fe0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000b986:	f02a                	sd	a0,32(sp)
    8000b988:	f42e                	sd	a1,40(sp)
    8000b98a:	6502                	ld	a0,0(sp)
    8000b98c:	65a2                	ld	a1,8(sp)
    8000b98e:	a8dfe0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000b992:	86aa                	mv	a3,a0
    8000b994:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:14464
}
    8000b996:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:14461
    return js_strict_eq2(ctx,
    8000b998:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:14464
}
    8000b99a:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs.c:14461
    return js_strict_eq2(ctx,
    8000b99c:	872e                	mv	a4,a1
    8000b99e:	7582                	ld	a1,32(sp)
    8000b9a0:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:14464
}
    8000b9a2:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:14461
    return js_strict_eq2(ctx,
    8000b9a4:	e21ff06f          	j	8000b7c4 <js_strict_eq2>

000000008000b9a8 <js_object_is>:
js_object_is():
quickjs-nuttx/quickjs.c:37927
{
    8000b9a8:	7139                	addi	sp,sp,-64
    8000b9aa:	fc06                	sd	ra,56(sp)
    8000b9ac:	87ba                	mv	a5,a4
quickjs-nuttx/quickjs.c:37928
    return JS_NewBool(ctx, js_same_value(ctx, argv[0], argv[1]));
    8000b9ae:	6b14                	ld	a3,16(a4)
    8000b9b0:	638c                	ld	a1,0(a5)
    8000b9b2:	6f18                	ld	a4,24(a4)
    8000b9b4:	6790                	ld	a2,8(a5)
    8000b9b6:	fbdff0ef          	jal	ra,8000b972 <js_same_value>
quickjs-nuttx/quickjs.c:37929
}
    8000b9ba:	70e2                	ld	ra,56(sp)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8000b9bc:	00a03533          	snez	a0,a0
    8000b9c0:	d202                	sw	zero,36(sp)
    8000b9c2:	d02a                	sw	a0,32(sp)
js_object_is():
quickjs-nuttx/quickjs.c:37929
    8000b9c4:	7502                	ld	a0,32(sp)
    8000b9c6:	4585                	li	a1,1
    8000b9c8:	6121                	addi	sp,sp,64
    8000b9ca:	8082                	ret

000000008000b9cc <map_find_record>:
map_find_record():
quickjs-nuttx/quickjs.c:46958
{
    8000b9cc:	7119                	addi	sp,sp,-128
    8000b9ce:	f0ca                	sd	s2,96(sp)
    8000b9d0:	ecce                	sd	s3,88(sp)
    8000b9d2:	892e                	mv	s2,a1
    8000b9d4:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:46962
    h = map_hash_key(ctx, key) & (s->hash_size - 1);
    8000b9d6:	85b6                	mv	a1,a3
    8000b9d8:	8532                	mv	a0,a2
quickjs-nuttx/quickjs.c:46958
{
    8000b9da:	f8a2                	sd	s0,112(sp)
    8000b9dc:	f4a6                	sd	s1,104(sp)
    8000b9de:	fc86                	sd	ra,120(sp)
    8000b9e0:	e032                	sd	a2,0(sp)
    8000b9e2:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:46962
    h = map_hash_key(ctx, key) & (s->hash_size - 1);
    8000b9e4:	c49fe0ef          	jal	ra,8000a62c <map_hash_key.constprop.0>
    8000b9e8:	02892483          	lw	s1,40(s2)
    8000b9ec:	34fd                	addiw	s1,s1,-1
    8000b9ee:	8ce9                	and	s1,s1,a0
quickjs-nuttx/quickjs.c:46963
    list_for_each(el, &s->hash_table[h]) {
    8000b9f0:	02049793          	slli	a5,s1,0x20
    8000b9f4:	01c7d493          	srli	s1,a5,0x1c
    8000b9f8:	02093783          	ld	a5,32(s2)
    8000b9fc:	97a6                	add	a5,a5,s1
    8000b9fe:	6780                	ld	s0,8(a5)
quickjs-nuttx/quickjs.c:46963 (discriminator 1)
    8000ba00:	02093783          	ld	a5,32(s2)
    8000ba04:	97a6                	add	a5,a5,s1
    8000ba06:	00f41463          	bne	s0,a5,8000ba0e <map_find_record+0x42>
quickjs-nuttx/quickjs.c:46968
    return NULL;
    8000ba0a:	4501                	li	a0,0
    8000ba0c:	a835                	j	8000ba48 <map_find_record+0x7c>
quickjs-nuttx/quickjs.c:46965
        if (js_same_value_zero(ctx, mr->key, key))
    8000ba0e:	6782                	ld	a5,0(sp)
    8000ba10:	6808                	ld	a0,16(s0)
    8000ba12:	6c0c                	ld	a1,24(s0)
    8000ba14:	f03e                	sd	a5,32(sp)
    8000ba16:	67a2                	ld	a5,8(sp)
    8000ba18:	e82a                	sd	a0,16(sp)
    8000ba1a:	ec2e                	sd	a1,24(sp)
    8000ba1c:	f43e                	sd	a5,40(sp)
js_same_value_zero():
quickjs-nuttx/quickjs.c:14468
    return js_strict_eq2(ctx,
    8000ba1e:	9fdfe0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000ba22:	e0aa                	sd	a0,64(sp)
    8000ba24:	e4ae                	sd	a1,72(sp)
    8000ba26:	7502                	ld	a0,32(sp)
    8000ba28:	75a2                	ld	a1,40(sp)
    8000ba2a:	9f1fe0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000ba2e:	872e                	mv	a4,a1
    8000ba30:	fc2e                	sd	a1,56(sp)
    8000ba32:	6626                	ld	a2,72(sp)
    8000ba34:	6586                	ld	a1,64(sp)
    8000ba36:	86aa                	mv	a3,a0
    8000ba38:	f82a                	sd	a0,48(sp)
    8000ba3a:	4789                	li	a5,2
    8000ba3c:	854e                	mv	a0,s3
    8000ba3e:	d87ff0ef          	jal	ra,8000b7c4 <js_strict_eq2>
map_find_record():
quickjs-nuttx/quickjs.c:46965
        if (js_same_value_zero(ctx, mr->key, key))
    8000ba42:	c911                	beqz	a0,8000ba56 <map_find_record+0x8a>
quickjs-nuttx/quickjs.c:46964
        mr = list_entry(el, JSMapRecord, hash_link);
    8000ba44:	fd840513          	addi	a0,s0,-40
quickjs-nuttx/quickjs.c:46969
}
    8000ba48:	70e6                	ld	ra,120(sp)
    8000ba4a:	7446                	ld	s0,112(sp)
    8000ba4c:	74a6                	ld	s1,104(sp)
    8000ba4e:	7906                	ld	s2,96(sp)
    8000ba50:	69e6                	ld	s3,88(sp)
    8000ba52:	6109                	addi	sp,sp,128
    8000ba54:	8082                	ret
quickjs-nuttx/quickjs.c:46963 (discriminator 2)
    list_for_each(el, &s->hash_table[h]) {
    8000ba56:	6400                	ld	s0,8(s0)
    8000ba58:	b765                	j	8000ba00 <map_find_record+0x34>

000000008000ba5a <js_strict_eq_slow>:
js_strict_eq_slow():
quickjs-nuttx/quickjs.c:14475
{
    8000ba5a:	7139                	addi	sp,sp,-64
    8000ba5c:	f822                	sd	s0,48(sp)
    8000ba5e:	f426                	sd	s1,40(sp)
    8000ba60:	fc06                	sd	ra,56(sp)
    8000ba62:	842e                	mv	s0,a1
    8000ba64:	ff043683          	ld	a3,-16(s0)
    8000ba68:	ff843703          	ld	a4,-8(s0)
    8000ba6c:	fe05b583          	ld	a1,-32(a1)
    8000ba70:	84b2                	mv	s1,a2
    8000ba72:	fe843603          	ld	a2,-24(s0)
js_strict_eq():
quickjs-nuttx/quickjs.c:14456
    return js_strict_eq2(ctx, op1, op2, JS_EQ_STRICT);
    8000ba76:	4781                	li	a5,0
    8000ba78:	e02e                	sd	a1,0(sp)
    8000ba7a:	e432                	sd	a2,8(sp)
    8000ba7c:	e836                	sd	a3,16(sp)
    8000ba7e:	ec3a                	sd	a4,24(sp)
    8000ba80:	d45ff0ef          	jal	ra,8000b7c4 <js_strict_eq2>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8000ba84:	8c89                	sub	s1,s1,a0
    8000ba86:	009034b3          	snez	s1,s1
    8000ba8a:	c826                	sw	s1,16(sp)
    8000ba8c:	ca02                	sw	zero,20(sp)
    8000ba8e:	67c2                	ld	a5,16(sp)
js_strict_eq_slow():
quickjs-nuttx/quickjs.c:14480
}
    8000ba90:	70e2                	ld	ra,56(sp)
    8000ba92:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:14478
    sp[-2] = JS_NewBool(ctx, res ^ is_neq);
    8000ba94:	fef43023          	sd	a5,-32(s0)
    8000ba98:	4785                	li	a5,1
    8000ba9a:	fef43423          	sd	a5,-24(s0)
quickjs-nuttx/quickjs.c:14480
}
    8000ba9e:	7442                	ld	s0,48(sp)
    8000baa0:	4501                	li	a0,0
    8000baa2:	6121                	addi	sp,sp,64
    8000baa4:	8082                	ret

000000008000baa6 <free_arg_list>:
free_arg_list():
quickjs-nuttx/quickjs.c:38304
{
    8000baa6:	7179                	addi	sp,sp,-48
    8000baa8:	f022                	sd	s0,32(sp)
    8000baaa:	ec26                	sd	s1,24(sp)
    8000baac:	e84a                	sd	s2,16(sp)
    8000baae:	f406                	sd	ra,40(sp)
    8000bab0:	842e                	mv	s0,a1
    8000bab2:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:38306
    for(i = 0; i < len; i++) {
    8000bab4:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:38306 (discriminator 1)
    8000bab6:	0004879b          	sext.w	a5,s1
    8000baba:	0127ea63          	bltu	a5,s2,8000bace <free_arg_list+0x28>
quickjs-nuttx/quickjs.c:38309
    js_free(ctx, tab);
    8000babe:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:38310
}
    8000bac0:	7402                	ld	s0,32(sp)
    8000bac2:	70a2                	ld	ra,40(sp)
    8000bac4:	64e2                	ld	s1,24(sp)
    8000bac6:	6942                	ld	s2,16(sp)
    8000bac8:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:38309
    js_free(ctx, tab);
    8000baca:	d2cff06f          	j	8000aff6 <js_free>
quickjs-nuttx/quickjs.c:38307 (discriminator 3)
        JS_FreeValue(ctx, tab[i]);
    8000bace:	00449793          	slli	a5,s1,0x4
    8000bad2:	97a2                	add	a5,a5,s0
    8000bad4:	638c                	ld	a1,0(a5)
    8000bad6:	6790                	ld	a2,8(a5)
    8000bad8:	e42a                	sd	a0,8(sp)
    8000bada:	0485                	addi	s1,s1,1
    8000badc:	cc3ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38306 (discriminator 3)
    for(i = 0; i < len; i++) {
    8000bae0:	6522                	ld	a0,8(sp)
    8000bae2:	bfd1                	j	8000bab6 <free_arg_list+0x10>

000000008000bae4 <js_free_desc>:
js_free_desc():
quickjs-nuttx/quickjs.c:8379
{
    8000bae4:	1101                	addi	sp,sp,-32
    8000bae6:	ec06                	sd	ra,24(sp)
    8000bae8:	e822                	sd	s0,16(sp)
    8000baea:	e426                	sd	s1,8(sp)
    8000baec:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:8380
    JS_FreeValue(ctx, desc->getter);
    8000baee:	7010                	ld	a2,32(s0)
    8000baf0:	6d8c                	ld	a1,24(a1)
quickjs-nuttx/quickjs.c:8379
{
    8000baf2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:8380
    JS_FreeValue(ctx, desc->getter);
    8000baf4:	cabff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8381
    JS_FreeValue(ctx, desc->setter);
    8000baf8:	740c                	ld	a1,40(s0)
    8000bafa:	7810                	ld	a2,48(s0)
    8000bafc:	8526                	mv	a0,s1
    8000bafe:	ca1ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:8382
    JS_FreeValue(ctx, desc->value);
    8000bb02:	640c                	ld	a1,8(s0)
    8000bb04:	6810                	ld	a2,16(s0)
quickjs-nuttx/quickjs.c:8383
}
    8000bb06:	6442                	ld	s0,16(sp)
    8000bb08:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:8382
    JS_FreeValue(ctx, desc->value);
    8000bb0a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:8383
}
    8000bb0c:	64a2                	ld	s1,8(sp)
    8000bb0e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:8382
    JS_FreeValue(ctx, desc->value);
    8000bb10:	c8fff06f          	j	8000b79e <JS_FreeValue>

000000008000bb14 <JS_ToBoolFree>:
JS_ToBoolFree():
quickjs-nuttx/quickjs.c:9940
{
    8000bb14:	1101                	addi	sp,sp,-32
    8000bb16:	ec06                	sd	ra,24(sp)
    8000bb18:	e822                	sd	s0,16(sp)
    8000bb1a:	e02e                	sd	a1,0(sp)
    8000bb1c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:9941
    uint32_t tag = JS_VALUE_GET_TAG(val);
    8000bb1e:	0006079b          	sext.w	a5,a2
quickjs-nuttx/quickjs.c:9942
    switch(tag) {
    8000bb22:	56d5                	li	a3,-11
    8000bb24:	08d78763          	beq	a5,a3,8000bbb2 <JS_ToBoolFree+0x9e>
    8000bb28:	872a                	mv	a4,a0
    8000bb2a:	02f6eb63          	bltu	a3,a5,8000bb60 <JS_ToBoolFree+0x4c>
    8000bb2e:	468d                	li	a3,3
    8000bb30:	00f6e563          	bltu	a3,a5,8000bb3a <JS_ToBoolFree+0x26>
    8000bb34:	c3a5                	beqz	a5,8000bb94 <JS_ToBoolFree+0x80>
quickjs-nuttx/quickjs.c:9948
        return JS_VALUE_GET_INT(val);
    8000bb36:	4402                	lw	s0,0(sp)
    8000bb38:	a08d                	j	8000bb9a <JS_ToBoolFree+0x86>
quickjs-nuttx/quickjs.c:9942
    switch(tag) {
    8000bb3a:	4699                	li	a3,6
    8000bb3c:	547d                	li	s0,-1
    8000bb3e:	04d78e63          	beq	a5,a3,8000bb9a <JS_ToBoolFree+0x86>
quickjs-nuttx/quickjs.c:9988
        if (JS_TAG_IS_FLOAT64(tag)) {
    8000bb42:	469d                	li	a3,7
    8000bb44:	02d79763          	bne	a5,a3,8000bb72 <JS_ToBoolFree+0x5e>
quickjs-nuttx/quickjs.c:9989
            double d = JS_VALUE_GET_FLOAT64(val);
    8000bb48:	2782                	fld	fa5,0(sp)
quickjs-nuttx/quickjs.c:9990
            return !isnan(d) && d != 0;
    8000bb4a:	4401                	li	s0,0
    8000bb4c:	a2f7a7d3          	feq.d	a5,fa5,fa5
    8000bb50:	c7a9                	beqz	a5,8000bb9a <JS_ToBoolFree+0x86>
quickjs-nuttx/quickjs.c:9990 (discriminator 1)
    8000bb52:	f2000753          	fmv.d.x	fa4,zero
    8000bb56:	a2e7a453          	feq.d	s0,fa5,fa4
quickjs-nuttx/quickjs.c:9944 (discriminator 1)
        return JS_VALUE_GET_INT(val) != 0;
    8000bb5a:	00144413          	xori	s0,s0,1
    8000bb5e:	a835                	j	8000bb9a <JS_ToBoolFree+0x86>
quickjs-nuttx/quickjs.c:9942
    switch(tag) {
    8000bb60:	56e5                	li	a3,-7
    8000bb62:	04d78163          	beq	a5,a3,8000bba4 <JS_ToBoolFree+0x90>
    8000bb66:	00f6ed63          	bltu	a3,a5,8000bb80 <JS_ToBoolFree+0x6c>
    8000bb6a:	27a9                	addiw	a5,a5,10
    8000bb6c:	4685                	li	a3,1
    8000bb6e:	04f6f263          	bgeu	a3,a5,8000bbb2 <JS_ToBoolFree+0x9e>
quickjs-nuttx/quickjs.c:9992
            JS_FreeValue(ctx, val);
    8000bb72:	6582                	ld	a1,0(sp)
    8000bb74:	6622                	ld	a2,8(sp)
    8000bb76:	853a                	mv	a0,a4
quickjs-nuttx/quickjs.c:9993
            return TRUE;
    8000bb78:	4405                	li	s0,1
quickjs-nuttx/quickjs.c:9992
            JS_FreeValue(ctx, val);
    8000bb7a:	c25ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9993
            return TRUE;
    8000bb7e:	a831                	j	8000bb9a <JS_ToBoolFree+0x86>
quickjs-nuttx/quickjs.c:9942
    switch(tag) {
    8000bb80:	56fd                	li	a3,-1
    8000bb82:	fed798e3          	bne	a5,a3,8000bb72 <JS_ToBoolFree+0x5e>
quickjs-nuttx/quickjs.c:9982
            ret = !p->is_HTMLDDA;
    8000bb86:	00558403          	lb	s0,5(a1)
    8000bb8a:	fff44413          	not	s0,s0
    8000bb8e:	01f4541b          	srliw	s0,s0,0x1f
    8000bb92:	a829                	j	8000bbac <JS_ToBoolFree+0x98>
quickjs-nuttx/quickjs.c:9944
        return JS_VALUE_GET_INT(val) != 0;
    8000bb94:	4402                	lw	s0,0(sp)
    8000bb96:	00803433          	snez	s0,s0
quickjs-nuttx/quickjs.c:9996
}
    8000bb9a:	60e2                	ld	ra,24(sp)
    8000bb9c:	8522                	mv	a0,s0
    8000bb9e:	6442                	ld	s0,16(sp)
    8000bba0:	6105                	addi	sp,sp,32
    8000bba2:	8082                	ret
quickjs-nuttx/quickjs.c:9953
            BOOL ret = JS_VALUE_GET_STRING(val)->len != 0;
    8000bba4:	41c0                	lw	s0,4(a1)
    8000bba6:	1406                	slli	s0,s0,0x21
    8000bba8:	00803433          	snez	s0,s0
quickjs-nuttx/quickjs.c:9983
            JS_FreeValue(ctx, val);
    8000bbac:	bf3ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:9984
            return ret;
    8000bbb0:	b7ed                	j	8000bb9a <JS_ToBoolFree+0x86>
quickjs-nuttx/quickjs.c:9973
            ret = p->num.expn != BF_EXP_ZERO && p->num.expn != BF_EXP_NAN;
    8000bbb2:	6d80                	ld	s0,24(a1)
    8000bbb4:	57fd                	li	a5,-1
    8000bbb6:	8385                	srli	a5,a5,0x1
    8000bbb8:	943e                	add	s0,s0,a5
    8000bbba:	ffe43413          	sltiu	s0,s0,-2
quickjs-nuttx/quickjs.c:9974
            JS_FreeValue(ctx, val);
    8000bbbe:	b7fd                	j	8000bbac <JS_ToBoolFree+0x98>

000000008000bbc0 <js_method_set_home_object>:
js_method_set_home_object():
quickjs-nuttx/quickjs.c:4971
{
    8000bbc0:	715d                	addi	sp,sp,-80
    8000bbc2:	fc26                	sd	s1,56(sp)
    8000bbc4:	e486                	sd	ra,72(sp)
    8000bbc6:	e0a2                	sd	s0,64(sp)
    8000bbc8:	f84a                	sd	s2,48(sp)
    8000bbca:	e82e                	sd	a1,16(sp)
    8000bbcc:	ec32                	sd	a2,24(sp)
    8000bbce:	e036                	sd	a3,0(sp)
    8000bbd0:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:4975
    if (JS_VALUE_GET_TAG(func_obj) != JS_TAG_OBJECT)
    8000bbd2:	0006049b          	sext.w	s1,a2
    8000bbd6:	57fd                	li	a5,-1
    8000bbd8:	04f49163          	bne	s1,a5,8000bc1a <js_method_set_home_object+0x5a>
    8000bbdc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:4978
    if (!js_class_has_bytecode(p->class_id))
    8000bbde:	0065d503          	lhu	a0,6(a1)
quickjs-nuttx/quickjs.c:4977
    p = JS_VALUE_GET_OBJ(func_obj);
    8000bbe2:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:4978
    if (!js_class_has_bytecode(p->class_id))
    8000bbe4:	82dfd0ef          	jal	ra,80009410 <js_class_has_bytecode>
    8000bbe8:	c90d                	beqz	a0,8000bc1a <js_method_set_home_object+0x5a>
quickjs-nuttx/quickjs.c:4981
    if (b->need_home_object) {
    8000bbea:	781c                	ld	a5,48(s0)
    8000bbec:	0197c783          	lbu	a5,25(a5)
    8000bbf0:	8ba1                	andi	a5,a5,8
    8000bbf2:	c785                	beqz	a5,8000bc1a <js_method_set_home_object+0x5a>
quickjs-nuttx/quickjs.c:4982
        p1 = p->u.func.home_object;
    8000bbf4:	602c                	ld	a1,64(s0)
quickjs-nuttx/quickjs.c:4983
        if (p1) {
    8000bbf6:	c599                	beqz	a1,8000bc04 <js_method_set_home_object+0x44>
quickjs-nuttx/quickjs.c:4984
            JS_FreeValue(ctx, JS_MKPTR(JS_TAG_OBJECT, p1));
    8000bbf8:	567d                	li	a2,-1
    8000bbfa:	854a                	mv	a0,s2
    8000bbfc:	f02e                	sd	a1,32(sp)
    8000bbfe:	f426                	sd	s1,40(sp)
    8000bc00:	b9fff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4986
        if (JS_VALUE_GET_TAG(home_obj) == JS_TAG_OBJECT)
    8000bc04:	65a2                	ld	a1,8(sp)
    8000bc06:	57fd                	li	a5,-1
quickjs-nuttx/quickjs.c:4989
            p1 = NULL;
    8000bc08:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:4986
        if (JS_VALUE_GET_TAG(home_obj) == JS_TAG_OBJECT)
    8000bc0a:	0005871b          	sext.w	a4,a1
    8000bc0e:	00f71563          	bne	a4,a5,8000bc18 <js_method_set_home_object+0x58>
quickjs-nuttx/quickjs.c:4987
            p1 = JS_VALUE_GET_OBJ(JS_DupValue(ctx, home_obj));
    8000bc12:	6502                	ld	a0,0(sp)
    8000bc14:	807fe0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:4990
        p->u.func.home_object = p1;
    8000bc18:	e028                	sd	a0,64(s0)
quickjs-nuttx/quickjs.c:4992
}
    8000bc1a:	60a6                	ld	ra,72(sp)
    8000bc1c:	6406                	ld	s0,64(sp)
    8000bc1e:	74e2                	ld	s1,56(sp)
    8000bc20:	7942                	ld	s2,48(sp)
    8000bc22:	6161                	addi	sp,sp,80
    8000bc24:	8082                	ret

000000008000bc26 <JS_FreeBigInt>:
JS_FreeBigInt():
quickjs-nuttx/quickjs.c:12223
{
    8000bc26:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:12224
    if (a == buf) {
    8000bc28:	00c59663          	bne	a1,a2,8000bc34 <JS_FreeBigInt+0xe>
quickjs-nuttx/quickjs.c:12225
        bf_delete(a);
    8000bc2c:	852e                	mv	a0,a1
quickjs-nuttx/quickjs.c:12231
}
    8000bc2e:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:12225
        bf_delete(a);
    8000bc30:	827fe06f          	j	8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:12229
        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_BIG_INT, p));
    8000bc34:	15e1                	addi	a1,a1,-8
    8000bc36:	5659                	li	a2,-10
quickjs-nuttx/quickjs.c:12231
}
    8000bc38:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:12229
        JS_FreeValue(ctx, JS_MKPTR(JS_TAG_BIG_INT, p));
    8000bc3a:	b65ff06f          	j	8000b79e <JS_FreeValue>

000000008000bc3e <set_value>:
set_value():
quickjs-nuttx/quickjs.c:2191
{
    8000bc3e:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:2193
    old_val = *pval;
    8000bc40:	6798                	ld	a4,8(a5)
    8000bc42:	618c                	ld	a1,0(a1)
quickjs-nuttx/quickjs.c:2191
{
    8000bc44:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:2194
    *pval = new_val;
    8000bc46:	e390                	sd	a2,0(a5)
    8000bc48:	e794                	sd	a3,8(a5)
quickjs-nuttx/quickjs.c:2195
    JS_FreeValue(ctx, old_val);
    8000bc4a:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:2196
}
    8000bc4c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:2195
    JS_FreeValue(ctx, old_val);
    8000bc4e:	b51ff06f          	j	8000b79e <JS_FreeValue>

000000008000bc52 <JS_SetClassProto>:
JS_SetClassProto():
quickjs-nuttx/quickjs.c:2199
{
    8000bc52:	1101                	addi	sp,sp,-32
    8000bc54:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:2201
    assert(class_id < rt->class_count);
    8000bc56:	6d18                	ld	a4,24(a0)
quickjs-nuttx/quickjs.c:2199
{
    8000bc58:	e032                	sd	a2,0(sp)
    8000bc5a:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:2201
    assert(class_id < rt->class_count);
    8000bc5c:	5778                	lw	a4,108(a4)
    8000bc5e:	00e5ec63          	bltu	a1,a4,8000bc76 <JS_SetClassProto+0x24>
quickjs-nuttx/quickjs.c:2201 (discriminator 1)
    8000bc62:	6585                	lui	a1,0x1
    8000bc64:	4601                	li	a2,0
    8000bc66:	89958593          	addi	a1,a1,-1895 # 899 <asinh-0x7ffff767>
    8000bc6a:	0005e517          	auipc	a0,0x5e
    8000bc6e:	92e50513          	addi	a0,a0,-1746 # 80069598 <qjsc_repl+0x3fe8>
    8000bc72:	4eb540ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:2202 (discriminator 2)
    set_value(ctx, &ctx->class_proto[class_id], obj);
    8000bc76:	613c                	ld	a5,64(a0)
quickjs-nuttx/quickjs.c:2203 (discriminator 2)
}
    8000bc78:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:2202 (discriminator 2)
    set_value(ctx, &ctx->class_proto[class_id], obj);
    8000bc7a:	02059713          	slli	a4,a1,0x20
    8000bc7e:	01c75593          	srli	a1,a4,0x1c
    8000bc82:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:2203 (discriminator 2)
}
    8000bc84:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:2202 (discriminator 2)
    set_value(ctx, &ctx->class_proto[class_id], obj);
    8000bc86:	fb9ff06f          	j	8000bc3e <set_value>

000000008000bc8a <JS_ExecutePendingJob>:
JS_ExecutePendingJob():
quickjs-nuttx/quickjs.c:1841
{
    8000bc8a:	7139                	addi	sp,sp,-64
    8000bc8c:	f04a                	sd	s2,32(sp)
    8000bc8e:	fc06                	sd	ra,56(sp)
    8000bc90:	f822                	sd	s0,48(sp)
    8000bc92:	f426                	sd	s1,40(sp)
    8000bc94:	ec4e                	sd	s3,24(sp)
list_empty():
quickjs-nuttx/list.h:82

static inline int list_empty(struct list_head *el)
{
    return el->next == el;
    8000bc96:	12853403          	ld	s0,296(a0)
JS_ExecutePendingJob():
quickjs-nuttx/quickjs.c:1847
    if (list_empty(&rt->job_list)) {
    8000bc9a:	12050513          	addi	a0,a0,288
quickjs-nuttx/quickjs.c:1841
{
    8000bc9e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:1847
    if (list_empty(&rt->job_list)) {
    8000bca0:	00a41d63          	bne	s0,a0,8000bcba <JS_ExecutePendingJob+0x30>
quickjs-nuttx/quickjs.c:1848
        *pctx = NULL;
    8000bca4:	0005b023          	sd	zero,0(a1)
quickjs-nuttx/quickjs.c:1849
        return 0;
    8000bca8:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:1867
}
    8000bcaa:	70e2                	ld	ra,56(sp)
    8000bcac:	7442                	ld	s0,48(sp)
    8000bcae:	74a2                	ld	s1,40(sp)
    8000bcb0:	7902                	ld	s2,32(sp)
    8000bcb2:	854e                	mv	a0,s3
    8000bcb4:	69e2                	ld	s3,24(sp)
    8000bcb6:	6121                	addi	sp,sp,64
    8000bcb8:	8082                	ret
quickjs-nuttx/quickjs.c:1854
    list_del(&e->link);
    8000bcba:	8522                	mv	a0,s0
    8000bcbc:	e89fb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:1855
    ctx = e->ctx;
    8000bcc0:	6804                	ld	s1,16(s0)
quickjs-nuttx/quickjs.c:1856
    res = e->job_func(e->ctx, e->argc, (JSValueConst *)e->argv);
    8000bcc2:	6c1c                	ld	a5,24(s0)
    8000bcc4:	500c                	lw	a1,32(s0)
    8000bcc6:	02840613          	addi	a2,s0,40
    8000bcca:	8526                	mv	a0,s1
    8000bccc:	9782                	jalr	a5
    8000bcce:	e02a                	sd	a0,0(sp)
    8000bcd0:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:1857
    for(i = 0; i < e->argc; i++)
    8000bcd2:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:1857 (discriminator 1)
    8000bcd4:	501c                	lw	a5,32(s0)
    8000bcd6:	02f9c463          	blt	s3,a5,8000bcfe <JS_ExecutePendingJob+0x74>
quickjs-nuttx/quickjs.c:1859
    if (JS_IsException(res))
    8000bcda:	4722                	lw	a4,8(sp)
    8000bcdc:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:1860
        ret = -1;
    8000bcde:	59fd                	li	s3,-1
quickjs-nuttx/quickjs.c:1859
    if (JS_IsException(res))
    8000bce0:	00f70363          	beq	a4,a5,8000bce6 <JS_ExecutePendingJob+0x5c>
quickjs-nuttx/quickjs.c:1862
        ret = 1;
    8000bce4:	4985                	li	s3,1
quickjs-nuttx/quickjs.c:1863
    JS_FreeValue(ctx, res);
    8000bce6:	6582                	ld	a1,0(sp)
    8000bce8:	6622                	ld	a2,8(sp)
    8000bcea:	8526                	mv	a0,s1
    8000bcec:	ab3ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:1864
    js_free(ctx, e);
    8000bcf0:	85a2                	mv	a1,s0
    8000bcf2:	8526                	mv	a0,s1
    8000bcf4:	b02ff0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:1865
    *pctx = ctx;
    8000bcf8:	00993023          	sd	s1,0(s2)
quickjs-nuttx/quickjs.c:1866
    return ret;
    8000bcfc:	b77d                	j	8000bcaa <JS_ExecutePendingJob+0x20>
quickjs-nuttx/quickjs.c:1858 (discriminator 3)
        JS_FreeValue(ctx, e->argv[i]);
    8000bcfe:	00298793          	addi	a5,s3,2
    8000bd02:	0792                	slli	a5,a5,0x4
    8000bd04:	97a2                	add	a5,a5,s0
    8000bd06:	678c                	ld	a1,8(a5)
    8000bd08:	6b90                	ld	a2,16(a5)
    8000bd0a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:1857 (discriminator 3)
    for(i = 0; i < e->argc; i++)
    8000bd0c:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:1858 (discriminator 3)
        JS_FreeValue(ctx, e->argv[i]);
    8000bd0e:	a91ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:1857 (discriminator 3)
    for(i = 0; i < e->argc; i++)
    8000bd12:	b7c9                	j	8000bcd4 <JS_ExecutePendingJob+0x4a>

000000008000bd14 <JS_FreeContext>:
JS_FreeContext():
quickjs-nuttx/quickjs.c:2276
{
    8000bd14:	7179                	addi	sp,sp,-48
    8000bd16:	f022                	sd	s0,32(sp)
    8000bd18:	ec26                	sd	s1,24(sp)
    8000bd1a:	f406                	sd	ra,40(sp)
    8000bd1c:	e84a                	sd	s2,16(sp)
    8000bd1e:	e44e                	sd	s3,8(sp)
    8000bd20:	e052                	sd	s4,0(sp)
quickjs-nuttx/quickjs.c:2280
    if (--ctx->header.ref_count > 0)
    8000bd22:	411c                	lw	a5,0(a0)
quickjs-nuttx/quickjs.c:2277
    JSRuntime *rt = ctx->rt;
    8000bd24:	01853983          	ld	s3,24(a0)
quickjs-nuttx/quickjs.c:2276
{
    8000bd28:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:2280
    if (--ctx->header.ref_count > 0)
    8000bd2a:	fff7849b          	addiw	s1,a5,-1
    8000bd2e:	c104                	sw	s1,0(a0)
    8000bd30:	12904263          	bgtz	s1,8000be54 <JS_FreeContext+0x140>
quickjs-nuttx/quickjs.c:2282
    assert(ctx->header.ref_count == 0);
    8000bd34:	c899                	beqz	s1,8000bd4a <JS_FreeContext+0x36>
quickjs-nuttx/quickjs.c:2282 (discriminator 1)
    8000bd36:	6585                	lui	a1,0x1
    8000bd38:	4601                	li	a2,0
    8000bd3a:	8ea58593          	addi	a1,a1,-1814 # 8ea <asinh-0x7ffff716>
    8000bd3e:	0005e517          	auipc	a0,0x5e
    8000bd42:	85a50513          	addi	a0,a0,-1958 # 80069598 <qjsc_repl+0x3fe8>
    8000bd46:	417540ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:2311 (discriminator 2)
    js_free_modules(ctx, JS_FREE_MODULE_ALL);
    8000bd4a:	4581                	li	a1,0
    8000bd4c:	0ab000ef          	jal	ra,8000c5f6 <js_free_modules>
quickjs-nuttx/quickjs.c:2313 (discriminator 2)
    JS_FreeValue(ctx, ctx->global_obj);
    8000bd50:	16843583          	ld	a1,360(s0)
    8000bd54:	17043603          	ld	a2,368(s0)
    8000bd58:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:2320 (discriminator 2)
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8000bd5a:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:2313 (discriminator 2)
    JS_FreeValue(ctx, ctx->global_obj);
    8000bd5c:	a43ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2314 (discriminator 2)
    JS_FreeValue(ctx, ctx->global_var_obj);
    8000bd60:	17843583          	ld	a1,376(s0)
    8000bd64:	18043603          	ld	a2,384(s0)
    8000bd68:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:2320 (discriminator 2)
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8000bd6a:	4a21                	li	s4,8
quickjs-nuttx/quickjs.c:2314 (discriminator 2)
    JS_FreeValue(ctx, ctx->global_var_obj);
    8000bd6c:	a33ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2316 (discriminator 2)
    JS_FreeValue(ctx, ctx->throw_type_error);
    8000bd70:	14843583          	ld	a1,328(s0)
    8000bd74:	15043603          	ld	a2,336(s0)
    8000bd78:	8522                	mv	a0,s0
    8000bd7a:	a25ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2317 (discriminator 2)
    JS_FreeValue(ctx, ctx->eval_obj);
    8000bd7e:	15843583          	ld	a1,344(s0)
    8000bd82:	16043603          	ld	a2,352(s0)
    8000bd86:	8522                	mv	a0,s0
    8000bd88:	a17ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2319 (discriminator 2)
    JS_FreeValue(ctx, ctx->array_proto_values);
    8000bd8c:	13843583          	ld	a1,312(s0)
    8000bd90:	14043603          	ld	a2,320(s0)
    8000bd94:	8522                	mv	a0,s0
    8000bd96:	a09ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2321 (discriminator 3)
        JS_FreeValue(ctx, ctx->native_error_proto[i]);
    8000bd9a:	00990793          	addi	a5,s2,9
    8000bd9e:	0792                	slli	a5,a5,0x4
    8000bda0:	97a2                	add	a5,a5,s0
    8000bda2:	678c                	ld	a1,8(a5)
    8000bda4:	6b90                	ld	a2,16(a5)
    8000bda6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:2320 (discriminator 3)
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8000bda8:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:2321 (discriminator 3)
        JS_FreeValue(ctx, ctx->native_error_proto[i]);
    8000bdaa:	9f5ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2320 (discriminator 3)
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8000bdae:	ff4916e3          	bne	s2,s4,8000bd9a <JS_FreeContext+0x86>
quickjs-nuttx/quickjs.c:2323 (discriminator 1)
    for(i = 0; i < rt->class_count; i++) {
    8000bdb2:	06c9a783          	lw	a5,108(s3)
quickjs-nuttx/quickjs.c:2324 (discriminator 1)
        JS_FreeValue(ctx, ctx->class_proto[i]);
    8000bdb6:	602c                	ld	a1,64(s0)
quickjs-nuttx/quickjs.c:2323 (discriminator 1)
    for(i = 0; i < rt->class_count; i++) {
    8000bdb8:	08f4c463          	blt	s1,a5,8000be40 <JS_FreeContext+0x12c>
quickjs-nuttx/quickjs.c:2326
    js_free_rt(rt, ctx->class_proto);
    8000bdbc:	854e                	mv	a0,s3
    8000bdbe:	c23fe0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2327
    JS_FreeValue(ctx, ctx->iterator_proto);
    8000bdc2:	11843583          	ld	a1,280(s0)
    8000bdc6:	12043603          	ld	a2,288(s0)
    8000bdca:	8522                	mv	a0,s0
    8000bdcc:	9d3ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2328
    JS_FreeValue(ctx, ctx->async_iterator_proto);
    8000bdd0:	12843583          	ld	a1,296(s0)
    8000bdd4:	13043603          	ld	a2,304(s0)
    8000bdd8:	8522                	mv	a0,s0
    8000bdda:	9c5ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2329
    JS_FreeValue(ctx, ctx->promise_ctor);
    8000bdde:	644c                	ld	a1,136(s0)
    8000bde0:	6850                	ld	a2,144(s0)
    8000bde2:	8522                	mv	a0,s0
    8000bde4:	9bbff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2330
    JS_FreeValue(ctx, ctx->array_ctor);
    8000bde8:	742c                	ld	a1,104(s0)
    8000bdea:	7830                	ld	a2,112(s0)
    8000bdec:	8522                	mv	a0,s0
    8000bdee:	9b1ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2331
    JS_FreeValue(ctx, ctx->regexp_ctor);
    8000bdf2:	7c2c                	ld	a1,120(s0)
    8000bdf4:	6050                	ld	a2,128(s0)
    8000bdf6:	8522                	mv	a0,s0
    8000bdf8:	9a7ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2332
    JS_FreeValue(ctx, ctx->function_ctor);
    8000bdfc:	6c2c                	ld	a1,88(s0)
    8000bdfe:	7030                	ld	a2,96(s0)
    8000be00:	8522                	mv	a0,s0
    8000be02:	99dff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2333
    JS_FreeValue(ctx, ctx->function_proto);
    8000be06:	642c                	ld	a1,72(s0)
    8000be08:	6830                	ld	a2,80(s0)
    8000be0a:	8522                	mv	a0,s0
    8000be0c:	993ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2335
    js_free_shape_null(ctx->rt, ctx->array_shape);
    8000be10:	7c0c                	ld	a1,56(s0)
js_free_shape_null():
quickjs-nuttx/quickjs.c:4459
    if (sh)
    8000be12:	c581                	beqz	a1,8000be1a <JS_FreeContext+0x106>
quickjs-nuttx/quickjs.c:4460
        js_free_shape(rt, sh);
    8000be14:	6c08                	ld	a0,24(s0)
    8000be16:	5be000ef          	jal	ra,8000c3d4 <js_free_shape>
JS_FreeContext():
quickjs-nuttx/quickjs.c:2337
    list_del(&ctx->link);
    8000be1a:	02040513          	addi	a0,s0,32
    8000be1e:	d27fb0ef          	jal	ra,80007b44 <list_del>
remove_gc_object():
quickjs-nuttx/quickjs.c:5590
    list_del(&h->link);
    8000be22:	00840513          	addi	a0,s0,8
    8000be26:	d1ffb0ef          	jal	ra,80007b44 <list_del>
JS_FreeContext():
quickjs-nuttx/quickjs.c:2339
    js_free_rt(ctx->rt, ctx);
    8000be2a:	6c08                	ld	a0,24(s0)
    8000be2c:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:2340
}
    8000be2e:	7402                	ld	s0,32(sp)
    8000be30:	70a2                	ld	ra,40(sp)
    8000be32:	64e2                	ld	s1,24(sp)
    8000be34:	6942                	ld	s2,16(sp)
    8000be36:	69a2                	ld	s3,8(sp)
    8000be38:	6a02                	ld	s4,0(sp)
    8000be3a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:2339
    js_free_rt(ctx->rt, ctx);
    8000be3c:	ba5fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2324 (discriminator 3)
        JS_FreeValue(ctx, ctx->class_proto[i]);
    8000be40:	00449793          	slli	a5,s1,0x4
    8000be44:	97ae                	add	a5,a5,a1
    8000be46:	638c                	ld	a1,0(a5)
    8000be48:	6790                	ld	a2,8(a5)
    8000be4a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:2323 (discriminator 3)
    for(i = 0; i < rt->class_count; i++) {
    8000be4c:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:2324 (discriminator 3)
        JS_FreeValue(ctx, ctx->class_proto[i]);
    8000be4e:	951ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:2323 (discriminator 3)
    for(i = 0; i < rt->class_count; i++) {
    8000be52:	b785                	j	8000bdb2 <JS_FreeContext+0x9e>
quickjs-nuttx/quickjs.c:2340
}
    8000be54:	70a2                	ld	ra,40(sp)
    8000be56:	7402                	ld	s0,32(sp)
    8000be58:	64e2                	ld	s1,24(sp)
    8000be5a:	6942                	ld	s2,16(sp)
    8000be5c:	69a2                	ld	s3,8(sp)
    8000be5e:	6a02                	ld	s4,0(sp)
    8000be60:	6145                	addi	sp,sp,48
    8000be62:	8082                	ret

000000008000be64 <js_c_function_finalizer>:
js_c_function_finalizer():
quickjs-nuttx/quickjs.c:5300
    if (p->u.cfunc.realm)
    8000be64:	7988                	ld	a0,48(a1)
quickjs-nuttx/quickjs.c:5297
{
    8000be66:	1141                	addi	sp,sp,-16
    8000be68:	e02e                	sd	a1,0(sp)
    8000be6a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5300
    if (p->u.cfunc.realm)
    8000be6c:	c501                	beqz	a0,8000be74 <js_c_function_finalizer+0x10>
quickjs-nuttx/quickjs.c:5302
}
    8000be6e:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5301
        JS_FreeContext(p->u.cfunc.realm);
    8000be70:	ea5ff06f          	j	8000bd14 <JS_FreeContext>
quickjs-nuttx/quickjs.c:5302
}
    8000be74:	0141                	addi	sp,sp,16
    8000be76:	8082                	ret

000000008000be78 <free_property>:
free_property():
quickjs-nuttx/quickjs.c:5176
{
    8000be78:	7179                	addi	sp,sp,-48
    8000be7a:	f022                	sd	s0,32(sp)
    8000be7c:	f406                	sd	ra,40(sp)
    8000be7e:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:5177
    if (unlikely(prop_flags & JS_PROP_TMASK)) {
    8000be80:	03067613          	andi	a2,a2,48
quickjs-nuttx/quickjs.c:5176
{
    8000be84:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:5177
    if (unlikely(prop_flags & JS_PROP_TMASK)) {
    8000be86:	ce39                	beqz	a2,8000bee4 <free_property+0x6c>
quickjs-nuttx/quickjs.c:5178
        if ((prop_flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    8000be88:	47c1                	li	a5,16
    8000be8a:	02f61763          	bne	a2,a5,8000beb8 <free_property+0x40>
quickjs-nuttx/quickjs.c:5179
            if (pr->u.getset.getter)
    8000be8e:	618c                	ld	a1,0(a1)
    8000be90:	84aa                	mv	s1,a0
    8000be92:	c599                	beqz	a1,8000bea0 <free_property+0x28>
quickjs-nuttx/quickjs.c:5180
                JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.getter));
    8000be94:	57fd                	li	a5,-1
    8000be96:	567d                	li	a2,-1
    8000be98:	e02e                	sd	a1,0(sp)
    8000be9a:	e43e                	sd	a5,8(sp)
    8000be9c:	4da000ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5181
            if (pr->u.getset.setter)
    8000bea0:	640c                	ld	a1,8(s0)
    8000bea2:	c5a1                	beqz	a1,8000beea <free_property+0x72>
quickjs-nuttx/quickjs.c:5182
                JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, pr->u.getset.setter));
    8000bea4:	57fd                	li	a5,-1
    8000bea6:	e02e                	sd	a1,0(sp)
    8000bea8:	e43e                	sd	a5,8(sp)
    8000beaa:	567d                	li	a2,-1
    8000beac:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5191
}
    8000beae:	7402                	ld	s0,32(sp)
    8000beb0:	70a2                	ld	ra,40(sp)
    8000beb2:	64e2                	ld	s1,24(sp)
    8000beb4:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:5189
        JS_FreeValueRT(rt, pr->u.value);
    8000beb6:	a1c1                	j	8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5183
        } else if ((prop_flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    8000beb8:	02000793          	li	a5,32
    8000bebc:	00f61863          	bne	a2,a5,8000becc <free_property+0x54>
quickjs-nuttx/quickjs.c:5191
}
    8000bec0:	7402                	ld	s0,32(sp)
    8000bec2:	70a2                	ld	ra,40(sp)
    8000bec4:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs.c:5184
            free_var_ref(rt, pr->u.var_ref);
    8000bec6:	618c                	ld	a1,0(a1)
quickjs-nuttx/quickjs.c:5191
}
    8000bec8:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:5184
            free_var_ref(rt, pr->u.var_ref);
    8000beca:	a34d                	j	8000c46c <free_var_ref>
quickjs-nuttx/quickjs.c:5185
        } else if ((prop_flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    8000becc:	03000793          	li	a5,48
    8000bed0:	00f61d63          	bne	a2,a5,8000beea <free_property+0x72>
js_autoinit_get_realm():
quickjs-nuttx/quickjs.c:5156
    return (JSContext *)(pr->u.init.realm_and_id & ~3);
    8000bed4:	6188                	ld	a0,0(a1)
free_property():
quickjs-nuttx/quickjs.c:5191
}
    8000bed6:	7402                	ld	s0,32(sp)
    8000bed8:	70a2                	ld	ra,40(sp)
    8000beda:	64e2                	ld	s1,24(sp)
js_autoinit_free():
quickjs-nuttx/quickjs.c:5166
    JS_FreeContext(js_autoinit_get_realm(pr));
    8000bedc:	9971                	andi	a0,a0,-4
free_property():
quickjs-nuttx/quickjs.c:5191
}
    8000bede:	6145                	addi	sp,sp,48
js_autoinit_free():
quickjs-nuttx/quickjs.c:5166
    JS_FreeContext(js_autoinit_get_realm(pr));
    8000bee0:	e35ff06f          	j	8000bd14 <JS_FreeContext>
free_property():
quickjs-nuttx/quickjs.c:5189
        JS_FreeValueRT(rt, pr->u.value);
    8000bee4:	618c                	ld	a1,0(a1)
    8000bee6:	6410                	ld	a2,8(s0)
    8000bee8:	b7d9                	j	8000beae <free_property+0x36>
quickjs-nuttx/quickjs.c:5191
}
    8000beea:	70a2                	ld	ra,40(sp)
    8000beec:	7402                	ld	s0,32(sp)
    8000beee:	64e2                	ld	s1,24(sp)
    8000bef0:	6145                	addi	sp,sp,48
    8000bef2:	8082                	ret

000000008000bef4 <free_gc_object>:
free_gc_object():
quickjs-nuttx/quickjs.c:5462
{
    8000bef4:	7139                	addi	sp,sp,-64
    8000bef6:	f822                	sd	s0,48(sp)
    8000bef8:	f426                	sd	s1,40(sp)
    8000befa:	fc06                	sd	ra,56(sp)
    8000befc:	f04a                	sd	s2,32(sp)
    8000befe:	ec4e                	sd	s3,24(sp)
    8000bf00:	e852                	sd	s4,16(sp)
quickjs-nuttx/quickjs.c:5463
    switch(gp->gc_obj_type) {
    8000bf02:	0045e783          	lwu	a5,4(a1)
    8000bf06:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:5462
{
    8000bf08:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:5463
    switch(gp->gc_obj_type) {
    8000bf0a:	8bbd                	andi	a5,a5,15
quickjs-nuttx/quickjs.c:5462
{
    8000bf0c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:5463
    switch(gp->gc_obj_type) {
    8000bf0e:	14e78863          	beq	a5,a4,8000c05e <free_gc_object+0x16a>
    8000bf12:	4711                	li	a4,4
    8000bf14:	1ee78663          	beq	a5,a4,8000c100 <free_gc_object+0x20c>
    8000bf18:	20079363          	bnez	a5,8000c11e <free_gc_object+0x22a>
free_object():
quickjs-nuttx/quickjs.c:5421
    p->free_mark = 1; /* used to tell the object is invalid when
    8000bf1c:	0055c783          	lbu	a5,5(a1)
quickjs-nuttx/quickjs.c:5424
    sh = p->shape;
    8000bf20:	0185b983          	ld	s3,24(a1)
quickjs-nuttx/quickjs.c:5426
    for(i = 0; i < sh->prop_count; i++) {
    8000bf24:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:5421
    p->free_mark = 1; /* used to tell the object is invalid when
    8000bf26:	0027e793          	ori	a5,a5,2
    8000bf2a:	00f582a3          	sb	a5,5(a1)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8000bf2e:	04098a13          	addi	s4,s3,64
free_object():
quickjs-nuttx/quickjs.c:5426
    for(i = 0; i < sh->prop_count; i++) {
    8000bf32:	0289a783          	lw	a5,40(s3)
quickjs-nuttx/quickjs.c:5427
        free_property(rt, &p->prop[i], pr->flags);
    8000bf36:	700c                	ld	a1,32(s0)
quickjs-nuttx/quickjs.c:5426
    for(i = 0; i < sh->prop_count; i++) {
    8000bf38:	02f94f63          	blt	s2,a5,8000bf76 <free_gc_object+0x82>
quickjs-nuttx/quickjs.c:5430
    js_free_rt(rt, p->prop);
    8000bf3c:	8526                	mv	a0,s1
    8000bf3e:	aa3fe0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:5433
    js_free_shape(rt, sh);
    8000bf42:	85ce                	mv	a1,s3
    8000bf44:	8526                	mv	a0,s1
    8000bf46:	48e000ef          	jal	ra,8000c3d4 <js_free_shape>
quickjs-nuttx/quickjs.c:5439
    if (unlikely(p->first_weak_ref)) {
    8000bf4a:	02843903          	ld	s2,40(s0)
quickjs-nuttx/quickjs.c:5436
    p->shape = NULL;
    8000bf4e:	00043c23          	sd	zero,24(s0)
quickjs-nuttx/quickjs.c:5437
    p->prop = NULL;
    8000bf52:	02043023          	sd	zero,32(s0)
quickjs-nuttx/quickjs.c:5439
    if (unlikely(p->first_weak_ref)) {
    8000bf56:	06090763          	beqz	s2,8000bfc4 <free_gc_object+0xd0>
reset_weak_ref():
quickjs-nuttx/quickjs.c:47098
        assert(s->is_weak);
    8000bf5a:	00893783          	ld	a5,8(s2)
    8000bf5e:	439c                	lw	a5,0(a5)
    8000bf60:	eb85                	bnez	a5,8000bf90 <free_gc_object+0x9c>
    8000bf62:	65ad                	lui	a1,0xb
    8000bf64:	4601                	li	a2,0
    8000bf66:	7fa58593          	addi	a1,a1,2042 # b7fa <asinh-0x7fff4806>
quickjs-nuttx/quickjs.c:47099
        assert(!mr->empty); /* no iterator on WeakMap/WeakSet */
    8000bf6a:	0005d517          	auipc	a0,0x5d
    8000bf6e:	62e50513          	addi	a0,a0,1582 # 80069598 <qjsc_repl+0x3fe8>
    8000bf72:	1eb540ef          	jal	ra,8006095c <__assert>
free_object():
quickjs-nuttx/quickjs.c:5427
        free_property(rt, &p->prop[i], pr->flags);
    8000bf76:	000a2603          	lw	a2,0(s4)
    8000bf7a:	00491793          	slli	a5,s2,0x4
    8000bf7e:	95be                	add	a1,a1,a5
    8000bf80:	01a6561b          	srliw	a2,a2,0x1a
    8000bf84:	8526                	mv	a0,s1
    8000bf86:	ef3ff0ef          	jal	ra,8000be78 <free_property>
quickjs-nuttx/quickjs.c:5428
        pr++;
    8000bf8a:	0a21                	addi	s4,s4,8
quickjs-nuttx/quickjs.c:5426
    for(i = 0; i < sh->prop_count; i++) {
    8000bf8c:	2905                	addiw	s2,s2,1
    8000bf8e:	b755                	j	8000bf32 <free_gc_object+0x3e>
reset_weak_ref():
quickjs-nuttx/quickjs.c:47099
        assert(!mr->empty); /* no iterator on WeakMap/WeakSet */
    8000bf90:	00492783          	lw	a5,4(s2)
    8000bf94:	c791                	beqz	a5,8000bfa0 <free_gc_object+0xac>
    8000bf96:	65ad                	lui	a1,0xb
    8000bf98:	4601                	li	a2,0
    8000bf9a:	7fb58593          	addi	a1,a1,2043 # b7fb <asinh-0x7fff4805>
    8000bf9e:	b7f1                	j	8000bf6a <free_gc_object+0x76>
quickjs-nuttx/quickjs.c:47100
        list_del(&mr->hash_link);
    8000bfa0:	02890513          	addi	a0,s2,40
    8000bfa4:	ba1fb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:47101
        list_del(&mr->link);
    8000bfa8:	01890513          	addi	a0,s2,24
    8000bfac:	b99fb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:47096
    for(mr = p->first_weak_ref; mr != NULL; mr = mr->next_weak_ref) {
    8000bfb0:	01093903          	ld	s2,16(s2)
    8000bfb4:	fa0913e3          	bnez	s2,8000bf5a <free_gc_object+0x66>
quickjs-nuttx/quickjs.c:47106
    for(mr = p->first_weak_ref; mr != NULL; mr = mr_next) {
    8000bfb8:	02843903          	ld	s2,40(s0)
    8000bfbc:	06091763          	bnez	s2,8000c02a <free_gc_object+0x136>
quickjs-nuttx/quickjs.c:47112
    p->first_weak_ref = NULL; /* fail safe */
    8000bfc0:	02043423          	sd	zero,40(s0)
free_object():
quickjs-nuttx/quickjs.c:5443
    finalizer = rt->class_array[p->class_id].finalizer;
    8000bfc4:	00645703          	lhu	a4,6(s0)
    8000bfc8:	02800693          	li	a3,40
    8000bfcc:	78bc                	ld	a5,112(s1)
    8000bfce:	02d70733          	mul	a4,a4,a3
    8000bfd2:	97ba                	add	a5,a5,a4
    8000bfd4:	679c                	ld	a5,8(a5)
quickjs-nuttx/quickjs.c:5444
    if (finalizer)
    8000bfd6:	c789                	beqz	a5,8000bfe0 <free_gc_object+0xec>
quickjs-nuttx/quickjs.c:5445
        (*finalizer)(rt, JS_MKPTR(JS_TAG_OBJECT, p));
    8000bfd8:	85a2                	mv	a1,s0
    8000bfda:	567d                	li	a2,-1
    8000bfdc:	8526                	mv	a0,s1
    8000bfde:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:5448
    p->class_id = 0;
    8000bfe0:	00041323          	sh	zero,6(s0)
quickjs-nuttx/quickjs.c:5449
    p->u.opaque = NULL;
    8000bfe4:	02043823          	sd	zero,48(s0)
quickjs-nuttx/quickjs.c:5450
    p->u.func.var_refs = NULL;
    8000bfe8:	02043c23          	sd	zero,56(s0)
quickjs-nuttx/quickjs.c:5451
    p->u.func.home_object = NULL;
    8000bfec:	04043023          	sd	zero,64(s0)
remove_gc_object():
quickjs-nuttx/quickjs.c:5590
    list_del(&h->link);
    8000bff0:	00840913          	addi	s2,s0,8
    8000bff4:	854a                	mv	a0,s2
    8000bff6:	b4ffb0ef          	jal	ra,80007b44 <list_del>
__async_func_free():
quickjs-nuttx/quickjs.c:18854
    if (rt->gc_phase == JS_GC_PHASE_REMOVE_CYCLES && s->header.ref_count != 0) {
    8000bffa:	0b84c703          	lbu	a4,184(s1)
    8000bffe:	4789                	li	a5,2
