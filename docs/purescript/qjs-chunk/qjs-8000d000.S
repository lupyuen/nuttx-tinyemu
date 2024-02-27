    8000c000:	04f71463          	bne	a4,a5,8000c048 <free_gc_object+0x154>
    8000c004:	401c                	lw	a5,0(s0)
    8000c006:	c3a9                	beqz	a5,8000c048 <free_gc_object+0x154>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8000c008:	6cdc                	ld	a5,152(s1)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8000c00a:	0127b423          	sd	s2,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8000c00e:	e41c                	sd	a5,8(s0)
__async_func_free():
quickjs-nuttx/quickjs.c:18855
        list_add_tail(&s->header.link, &rt->gc_zero_ref_count_list);
    8000c010:	09848793          	addi	a5,s1,152
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8000c014:	e81c                	sd	a5,16(s0)
free_gc_object():
quickjs-nuttx/quickjs.c:5476
}
    8000c016:	70e2                	ld	ra,56(sp)
    8000c018:	7442                	ld	s0,48(sp)
__list_add():
quickjs-nuttx/list.h:54
    next->prev = el;
    8000c01a:	0924bc23          	sd	s2,152(s1)
free_gc_object():
quickjs-nuttx/quickjs.c:5476
    8000c01e:	69e2                	ld	s3,24(sp)
    8000c020:	74a2                	ld	s1,40(sp)
    8000c022:	7902                	ld	s2,32(sp)
    8000c024:	6a42                	ld	s4,16(sp)
    8000c026:	6121                	addi	sp,sp,64
    8000c028:	8082                	ret
reset_weak_ref():
quickjs-nuttx/quickjs.c:47108
        JS_FreeValueRT(rt, mr->value);
    8000c02a:	04893583          	ld	a1,72(s2)
    8000c02e:	05093603          	ld	a2,80(s2)
quickjs-nuttx/quickjs.c:47107
        mr_next = mr->next_weak_ref;
    8000c032:	01093983          	ld	s3,16(s2)
quickjs-nuttx/quickjs.c:47108
        JS_FreeValueRT(rt, mr->value);
    8000c036:	8526                	mv	a0,s1
    8000c038:	33e000ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47109
        js_free_rt(rt, mr);
    8000c03c:	85ca                	mv	a1,s2
    8000c03e:	8526                	mv	a0,s1
    8000c040:	9a1fe0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47106
    for(mr = p->first_weak_ref; mr != NULL; mr = mr_next) {
    8000c044:	894e                	mv	s2,s3
    8000c046:	bf9d                	j	8000bfbc <free_gc_object+0xc8>
free_object():
quickjs-nuttx/quickjs.c:5457
        js_free_rt(rt, p);
    8000c048:	85a2                	mv	a1,s0
free_gc_object():
quickjs-nuttx/quickjs.c:5476
}
    8000c04a:	7442                	ld	s0,48(sp)
    8000c04c:	70e2                	ld	ra,56(sp)
    8000c04e:	7902                	ld	s2,32(sp)
    8000c050:	69e2                	ld	s3,24(sp)
    8000c052:	6a42                	ld	s4,16(sp)
free_object():
quickjs-nuttx/quickjs.c:5457
        js_free_rt(rt, p);
    8000c054:	8526                	mv	a0,s1
free_gc_object():
quickjs-nuttx/quickjs.c:5476
}
    8000c056:	74a2                	ld	s1,40(sp)
    8000c058:	6121                	addi	sp,sp,64
free_object():
quickjs-nuttx/quickjs.c:5457
        js_free_rt(rt, p);
    8000c05a:	987fe06f          	j	8000a9e0 <js_free_rt>
free_function_bytecode():
quickjs-nuttx/quickjs.c:33375
    free_bytecode_atoms(rt, b->byte_code_buf, b->byte_code_len, TRUE);
    8000c05e:	5590                	lw	a2,40(a1)
    8000c060:	718c                	ld	a1,32(a1)
    8000c062:	4685                	li	a3,1
    8000c064:	4901                	li	s2,0
    8000c066:	db6ff0ef          	jal	ra,8000b61c <free_bytecode_atoms>
quickjs-nuttx/quickjs.c:33377
    if (b->vardefs) {
    8000c06a:	781c                	ld	a5,48(s0)
    8000c06c:	ebb9                	bnez	a5,8000c0c2 <free_gc_object+0x1ce>
    8000c06e:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:33382
    for(i = 0; i < b->cpool_count; i++)
    8000c070:	4c3c                	lw	a5,88(s0)
    8000c072:	06f94263          	blt	s2,a5,8000c0d6 <free_gc_object+0x1e2>
quickjs-nuttx/quickjs.c:33385
    for(i = 0; i < b->closure_var_count; i++) {
    8000c076:	4901                	li	s2,0
    8000c078:	4c7c                	lw	a5,92(s0)
    8000c07a:	06f94963          	blt	s2,a5,8000c0ec <free_gc_object+0x1f8>
quickjs-nuttx/quickjs.c:33389
    if (b->realm)
    8000c07e:	6428                	ld	a0,72(s0)
    8000c080:	c119                	beqz	a0,8000c086 <free_gc_object+0x192>
quickjs-nuttx/quickjs.c:33390
        JS_FreeContext(b->realm);
    8000c082:	c93ff0ef          	jal	ra,8000bd14 <JS_FreeContext>
quickjs-nuttx/quickjs.c:33392
    JS_FreeAtomRT(rt, b->func_name);
    8000c086:	544c                	lw	a1,44(s0)
    8000c088:	8526                	mv	a0,s1
    8000c08a:	d84ff0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:33393
    if (b->has_debug) {
    8000c08e:	01a44783          	lbu	a5,26(s0)
    8000c092:	8b91                	andi	a5,a5,4
    8000c094:	dfb1                	beqz	a5,8000bff0 <free_gc_object+0xfc>
quickjs-nuttx/quickjs.c:33394
        JS_FreeAtomRT(rt, b->debug.filename);
    8000c096:	502c                	lw	a1,96(s0)
    8000c098:	8526                	mv	a0,s1
    8000c09a:	d74ff0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:33395
        js_free_rt(rt, b->debug.pc2line_buf);
    8000c09e:	782c                	ld	a1,112(s0)
    8000c0a0:	8526                	mv	a0,s1
    8000c0a2:	93ffe0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:33396
        js_free_rt(rt, b->debug.source);
    8000c0a6:	7c2c                	ld	a1,120(s0)
    8000c0a8:	8526                	mv	a0,s1
    8000c0aa:	937fe0ef          	jal	ra,8000a9e0 <js_free_rt>
remove_gc_object():
quickjs-nuttx/quickjs.c:5590
    list_del(&h->link);
    8000c0ae:	b789                	j	8000bff0 <free_gc_object+0xfc>
free_function_bytecode():
quickjs-nuttx/quickjs.c:33379
            JS_FreeAtomRT(rt, b->vardefs[i].var_name);
    8000c0b0:	781c                	ld	a5,48(s0)
    8000c0b2:	00491713          	slli	a4,s2,0x4
    8000c0b6:	8526                	mv	a0,s1
    8000c0b8:	97ba                	add	a5,a5,a4
    8000c0ba:	438c                	lw	a1,0(a5)
    8000c0bc:	0905                	addi	s2,s2,1
    8000c0be:	d50ff0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:33378
        for(i = 0; i < b->arg_count + b->var_count; i++) {
    8000c0c2:	04245703          	lhu	a4,66(s0)
    8000c0c6:	04045783          	lhu	a5,64(s0)
    8000c0ca:	9fb9                	addw	a5,a5,a4
    8000c0cc:	0009071b          	sext.w	a4,s2
    8000c0d0:	fef740e3          	blt	a4,a5,8000c0b0 <free_gc_object+0x1bc>
    8000c0d4:	bf69                	j	8000c06e <free_gc_object+0x17a>
quickjs-nuttx/quickjs.c:33383
        JS_FreeValueRT(rt, b->cpool[i]);
    8000c0d6:	683c                	ld	a5,80(s0)
    8000c0d8:	00491713          	slli	a4,s2,0x4
    8000c0dc:	8526                	mv	a0,s1
    8000c0de:	97ba                	add	a5,a5,a4
    8000c0e0:	638c                	ld	a1,0(a5)
    8000c0e2:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:33382
    for(i = 0; i < b->cpool_count; i++)
    8000c0e4:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:33383
        JS_FreeValueRT(rt, b->cpool[i]);
    8000c0e6:	290000ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:33382
    for(i = 0; i < b->cpool_count; i++)
    8000c0ea:	b759                	j	8000c070 <free_gc_object+0x17c>
quickjs-nuttx/quickjs.c:33387
        JS_FreeAtomRT(rt, cv->var_name);
    8000c0ec:	7c1c                	ld	a5,56(s0)
    8000c0ee:	00391713          	slli	a4,s2,0x3
    8000c0f2:	8526                	mv	a0,s1
    8000c0f4:	97ba                	add	a5,a5,a4
    8000c0f6:	43cc                	lw	a1,4(a5)
quickjs-nuttx/quickjs.c:33385
    for(i = 0; i < b->closure_var_count; i++) {
    8000c0f8:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:33387
        JS_FreeAtomRT(rt, cv->var_name);
    8000c0fa:	d14ff0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:33385
    for(i = 0; i < b->closure_var_count; i++) {
    8000c0fe:	bfad                	j	8000c078 <free_gc_object+0x184>
__async_func_free():
quickjs-nuttx/quickjs.c:18846
    if (!s->is_completed) {
    8000c100:	599c                	lw	a5,48(a1)
    8000c102:	e399                	bnez	a5,8000c108 <free_gc_object+0x214>
quickjs-nuttx/quickjs.c:18847
        async_func_free_frame(rt, s);
    8000c104:	536000ef          	jal	ra,8000c63a <async_func_free_frame>
quickjs-nuttx/quickjs.c:18850
    JS_FreeValueRT(rt, s->resolving_funcs[0]);
    8000c108:	7c0c                	ld	a1,56(s0)
    8000c10a:	6030                	ld	a2,64(s0)
    8000c10c:	8526                	mv	a0,s1
    8000c10e:	268000ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:18851
    JS_FreeValueRT(rt, s->resolving_funcs[1]);
    8000c112:	642c                	ld	a1,72(s0)
    8000c114:	6830                	ld	a2,80(s0)
    8000c116:	8526                	mv	a0,s1
    8000c118:	25e000ef          	jal	ra,8000c376 <JS_FreeValueRT>
    8000c11c:	bdd1                	j	8000bff0 <free_gc_object+0xfc>
free_gc_object():
quickjs-nuttx/quickjs.c:5474
        abort();
    8000c11e:	265560ef          	jal	ra,80062b82 <abort>

000000008000c122 <free_zero_refcount>:
free_zero_refcount():
quickjs-nuttx/quickjs.c:5479
{
    8000c122:	1101                	addi	sp,sp,-32
    8000c124:	e822                	sd	s0,16(sp)
    8000c126:	e426                	sd	s1,8(sp)
    8000c128:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:5483
    rt->gc_phase = JS_GC_PHASE_DECREF;
    8000c12a:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:5479
{
    8000c12c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:5483
    rt->gc_phase = JS_GC_PHASE_DECREF;
    8000c12e:	0af50c23          	sb	a5,184(a0)
quickjs-nuttx/quickjs.c:5486
        if (el == &rt->gc_zero_ref_count_list)
    8000c132:	09850493          	addi	s1,a0,152
quickjs-nuttx/quickjs.c:5485
        el = rt->gc_zero_ref_count_list.next;
    8000c136:	705c                	ld	a5,160(s0)
quickjs-nuttx/quickjs.c:5486
        if (el == &rt->gc_zero_ref_count_list)
    8000c138:	02978563          	beq	a5,s1,8000c162 <free_zero_refcount+0x40>
quickjs-nuttx/quickjs.c:5488
        p = list_entry(el, JSGCObjectHeader, link);
    8000c13c:	ff878593          	addi	a1,a5,-8
quickjs-nuttx/quickjs.c:5489
        assert(p->ref_count == 0);
    8000c140:	ff87a783          	lw	a5,-8(a5)
    8000c144:	cb99                	beqz	a5,8000c15a <free_zero_refcount+0x38>
    8000c146:	6585                	lui	a1,0x1
    8000c148:	4601                	li	a2,0
    8000c14a:	57158593          	addi	a1,a1,1393 # 1571 <asinh-0x7fffea8f>
    8000c14e:	0005d517          	auipc	a0,0x5d
    8000c152:	44a50513          	addi	a0,a0,1098 # 80069598 <qjsc_repl+0x3fe8>
    8000c156:	007540ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:5490 (discriminator 2)
        free_gc_object(rt, p);
    8000c15a:	8522                	mv	a0,s0
    8000c15c:	d99ff0ef          	jal	ra,8000bef4 <free_gc_object>
quickjs-nuttx/quickjs.c:5485 (discriminator 2)
        el = rt->gc_zero_ref_count_list.next;
    8000c160:	bfd9                	j	8000c136 <free_zero_refcount+0x14>
quickjs-nuttx/quickjs.c:5493
}
    8000c162:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:5492
    rt->gc_phase = JS_GC_PHASE_NONE;
    8000c164:	0a040c23          	sb	zero,184(s0)
quickjs-nuttx/quickjs.c:5493
}
    8000c168:	6442                	ld	s0,16(sp)
    8000c16a:	64a2                	ld	s1,8(sp)
    8000c16c:	6105                	addi	sp,sp,32
    8000c16e:	8082                	ret

000000008000c170 <async_func_free>:
async_func_free():
quickjs-nuttx/quickjs.c:18863
    if (--s->header.ref_count == 0) {
    8000c170:	419c                	lw	a5,0(a1)
quickjs-nuttx/quickjs.c:18862
{
    8000c172:	1101                	addi	sp,sp,-32
    8000c174:	e426                	sd	s1,8(sp)
quickjs-nuttx/quickjs.c:18863
    if (--s->header.ref_count == 0) {
    8000c176:	fff7871b          	addiw	a4,a5,-1
quickjs-nuttx/quickjs.c:18862
{
    8000c17a:	ec06                	sd	ra,24(sp)
    8000c17c:	e822                	sd	s0,16(sp)
    8000c17e:	e04a                	sd	s2,0(sp)
quickjs-nuttx/quickjs.c:18863
    if (--s->header.ref_count == 0) {
    8000c180:	c198                	sw	a4,0(a1)
quickjs-nuttx/quickjs.c:18862
{
    8000c182:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:18863
    if (--s->header.ref_count == 0) {
    8000c184:	e321                	bnez	a4,8000c1c4 <async_func_free+0x54>
quickjs-nuttx/quickjs.c:18864
        if (rt->gc_phase != JS_GC_PHASE_REMOVE_CYCLES) {
    8000c186:	0b854703          	lbu	a4,184(a0)
    8000c18a:	4789                	li	a5,2
    8000c18c:	842a                	mv	s0,a0
    8000c18e:	02f70b63          	beq	a4,a5,8000c1c4 <async_func_free+0x54>
quickjs-nuttx/quickjs.c:18865
            list_del(&s->header.link);
    8000c192:	00858913          	addi	s2,a1,8
    8000c196:	854a                	mv	a0,s2
    8000c198:	9adfb0ef          	jal	ra,80007b44 <list_del>
list_add():
quickjs-nuttx/list.h:60
    __list_add(el, head, head->next);
    8000c19c:	705c                	ld	a5,160(s0)
async_func_free():
quickjs-nuttx/quickjs.c:18866
            list_add(&s->header.link, &rt->gc_zero_ref_count_list);
    8000c19e:	09840713          	addi	a4,s0,152
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8000c1a2:	0b243023          	sd	s2,160(s0)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8000c1a6:	e498                	sd	a4,8(s1)
quickjs-nuttx/list.h:53
    el->next = next;
    8000c1a8:	e89c                	sd	a5,16(s1)
quickjs-nuttx/list.h:54
    next->prev = el;
    8000c1aa:	0127b023          	sd	s2,0(a5)
async_func_free():
quickjs-nuttx/quickjs.c:18867
            if (rt->gc_phase == JS_GC_PHASE_NONE) {
    8000c1ae:	0b844783          	lbu	a5,184(s0)
    8000c1b2:	eb89                	bnez	a5,8000c1c4 <async_func_free+0x54>
quickjs-nuttx/quickjs.c:18868
                free_zero_refcount(rt);
    8000c1b4:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:18872
}
    8000c1b6:	6442                	ld	s0,16(sp)
    8000c1b8:	60e2                	ld	ra,24(sp)
    8000c1ba:	64a2                	ld	s1,8(sp)
    8000c1bc:	6902                	ld	s2,0(sp)
    8000c1be:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:18868
                free_zero_refcount(rt);
    8000c1c0:	f63ff06f          	j	8000c122 <free_zero_refcount>
quickjs-nuttx/quickjs.c:18872
}
    8000c1c4:	60e2                	ld	ra,24(sp)
    8000c1c6:	6442                	ld	s0,16(sp)
    8000c1c8:	64a2                	ld	s1,8(sp)
    8000c1ca:	6902                	ld	s2,0(sp)
    8000c1cc:	6105                	addi	sp,sp,32
    8000c1ce:	8082                	ret

000000008000c1d0 <close_var_refs>:
close_var_refs():
quickjs-nuttx/quickjs.c:15802
{
    8000c1d0:	7139                	addi	sp,sp,-64
    8000c1d2:	f426                	sd	s1,40(sp)
    8000c1d4:	e852                	sd	s4,16(sp)
    8000c1d6:	e456                	sd	s5,8(sp)
    8000c1d8:	fc06                	sd	ra,56(sp)
    8000c1da:	f822                	sd	s0,48(sp)
    8000c1dc:	f04a                	sd	s2,32(sp)
    8000c1de:	ec4e                	sd	s3,24(sp)
quickjs-nuttx/quickjs.c:15807
    list_for_each_safe(el, el1, &sf->var_ref_list) {
    8000c1e0:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:15802
{
    8000c1e2:	8a2a                	mv	s4,a0
    8000c1e4:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:15807
    list_for_each_safe(el, el1, &sf->var_ref_list) {
    8000c1e6:	00843983          	ld	s3,8(s0)
    8000c1ea:	02858a93          	addi	s5,a1,40
quickjs-nuttx/quickjs.c:15807 (discriminator 1)
    8000c1ee:	01541b63          	bne	s0,s5,8000c204 <close_var_refs+0x34>
quickjs-nuttx/quickjs.c:15821
}
    8000c1f2:	70e2                	ld	ra,56(sp)
    8000c1f4:	7442                	ld	s0,48(sp)
    8000c1f6:	74a2                	ld	s1,40(sp)
    8000c1f8:	7902                	ld	s2,32(sp)
    8000c1fa:	69e2                	ld	s3,24(sp)
    8000c1fc:	6a42                	ld	s4,16(sp)
    8000c1fe:	6aa2                	ld	s5,8(sp)
    8000c200:	6121                	addi	sp,sp,64
    8000c202:	8082                	ret
quickjs-nuttx/quickjs.c:15810
        if (var_ref->async_func)
    8000c204:	680c                	ld	a1,16(s0)
quickjs-nuttx/quickjs.c:15808
        var_ref = list_entry(el, JSVarRef, var_ref_link);
    8000c206:	fe040913          	addi	s2,s0,-32
quickjs-nuttx/quickjs.c:15810
        if (var_ref->async_func)
    8000c20a:	c581                	beqz	a1,8000c212 <close_var_refs+0x42>
quickjs-nuttx/quickjs.c:15811
            async_func_free(rt, var_ref->async_func);
    8000c20c:	8552                	mv	a0,s4
    8000c20e:	f63ff0ef          	jal	ra,8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:15814
            var_ref->value = JS_DupValueRT(rt, sf->arg_buf[var_idx]);
    8000c212:	fe645783          	lhu	a5,-26(s0)
    8000c216:	00479713          	slli	a4,a5,0x4
quickjs-nuttx/quickjs.c:15813
        if (var_ref->is_arg)
    8000c21a:	fe544783          	lbu	a5,-27(s0)
    8000c21e:	8b89                	andi	a5,a5,2
    8000c220:	c79d                	beqz	a5,8000c24e <close_var_refs+0x7e>
quickjs-nuttx/quickjs.c:15814
            var_ref->value = JS_DupValueRT(rt, sf->arg_buf[var_idx]);
    8000c222:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:15816
            var_ref->value = JS_DupValueRT(rt, sf->var_buf[var_idx]);
    8000c224:	97ba                	add	a5,a5,a4
    8000c226:	6388                	ld	a0,0(a5)
    8000c228:	678c                	ld	a1,8(a5)
    8000c22a:	9f0fe0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8000c22e:	02a93023          	sd	a0,32(s2)
    8000c232:	02b93423          	sd	a1,40(s2)
quickjs-nuttx/quickjs.c:15819
        var_ref->is_detached = TRUE;
    8000c236:	fe544783          	lbu	a5,-27(s0)
quickjs-nuttx/quickjs.c:15817
        var_ref->pvalue = &var_ref->value;
    8000c23a:	fe843c23          	sd	s0,-8(s0)
quickjs-nuttx/quickjs.c:15819
        var_ref->is_detached = TRUE;
    8000c23e:	0017e793          	ori	a5,a5,1
    8000c242:	fef402a3          	sb	a5,-27(s0)
quickjs-nuttx/quickjs.c:15807
    list_for_each_safe(el, el1, &sf->var_ref_list) {
    8000c246:	844e                	mv	s0,s3
    8000c248:	0089b983          	ld	s3,8(s3)
    8000c24c:	b74d                	j	8000c1ee <close_var_refs+0x1e>
quickjs-nuttx/quickjs.c:15816
            var_ref->value = JS_DupValueRT(rt, sf->var_buf[var_idx]);
    8000c24e:	709c                	ld	a5,32(s1)
    8000c250:	bfd1                	j	8000c224 <close_var_refs+0x54>

000000008000c252 <free_generator_stack_rt>:
free_generator_stack_rt():
quickjs-nuttx/quickjs.c:18891
    if (s->state == JS_GENERATOR_STATE_COMPLETED)
    8000c252:	4198                	lw	a4,0(a1)
    8000c254:	4791                	li	a5,4
    8000c256:	02f70263          	beq	a4,a5,8000c27a <free_generator_stack_rt+0x28>
quickjs-nuttx/quickjs.c:18890
{
    8000c25a:	1141                	addi	sp,sp,-16
    8000c25c:	e022                	sd	s0,0(sp)
    8000c25e:	e406                	sd	ra,8(sp)
    8000c260:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:18893
    if (s->func_state) {
    8000c262:	658c                	ld	a1,8(a1)
    8000c264:	c589                	beqz	a1,8000c26e <free_generator_stack_rt+0x1c>
quickjs-nuttx/quickjs.c:18894
        async_func_free(rt, s->func_state);
    8000c266:	f0bff0ef          	jal	ra,8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:18895
        s->func_state = NULL;
    8000c26a:	00043423          	sd	zero,8(s0)
quickjs-nuttx/quickjs.c:18897
    s->state = JS_GENERATOR_STATE_COMPLETED;
    8000c26e:	4791                	li	a5,4
    8000c270:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:18898
}
    8000c272:	60a2                	ld	ra,8(sp)
    8000c274:	6402                	ld	s0,0(sp)
    8000c276:	0141                	addi	sp,sp,16
    8000c278:	8082                	ret
    8000c27a:	8082                	ret

000000008000c27c <js_async_generator_complete>:
js_async_generator_complete():
quickjs-nuttx/quickjs.c:19376
    if (s->state != JS_ASYNC_GENERATOR_STATE_COMPLETED) {
    8000c27c:	4598                	lw	a4,8(a1)
    8000c27e:	4795                	li	a5,5
    8000c280:	02f70163          	beq	a4,a5,8000c2a2 <js_async_generator_complete+0x26>
quickjs-nuttx/quickjs.c:19375
{
    8000c284:	1141                	addi	sp,sp,-16
    8000c286:	e022                	sd	s0,0(sp)
    8000c288:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:19377
        s->state = JS_ASYNC_GENERATOR_STATE_COMPLETED;
    8000c28a:	c59c                	sw	a5,8(a1)
    8000c28c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:19378
        async_func_free(ctx->rt, s->func_state);
    8000c28e:	6d08                	ld	a0,24(a0)
    8000c290:	698c                	ld	a1,16(a1)
    8000c292:	edfff0ef          	jal	ra,8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:19379
        s->func_state = NULL;
    8000c296:	00043823          	sd	zero,16(s0)
quickjs-nuttx/quickjs.c:19381
}
    8000c29a:	60a2                	ld	ra,8(sp)
    8000c29c:	6402                	ld	s0,0(sp)
    8000c29e:	0141                	addi	sp,sp,16
    8000c2a0:	8082                	ret
    8000c2a2:	8082                	ret

000000008000c2a4 <js_async_function_resolve_finalizer>:
js_async_function_resolve_finalizer():
quickjs-nuttx/quickjs.c:19050
{
    8000c2a4:	1141                	addi	sp,sp,-16
    8000c2a6:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:19052
    JSAsyncFunctionState *s = p->u.async_function_data;
    8000c2a8:	798c                	ld	a1,48(a1)
quickjs-nuttx/quickjs.c:19050
{
    8000c2aa:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:19053
    if (s) {
    8000c2ac:	c581                	beqz	a1,8000c2b4 <js_async_function_resolve_finalizer+0x10>
quickjs-nuttx/quickjs.c:19056
}
    8000c2ae:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:19054
        async_func_free(rt, s);
    8000c2b0:	ec1ff06f          	j	8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:19056
}
    8000c2b4:	0141                	addi	sp,sp,16
    8000c2b6:	8082                	ret

000000008000c2b8 <__JS_FreeValueRT>:
__JS_FreeValueRT():
quickjs-nuttx/quickjs.c:5497
{
    8000c2b8:	7139                	addi	sp,sp,-64
    8000c2ba:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:5498
    uint32_t tag = JS_VALUE_GET_TAG(v);
    8000c2bc:	0006069b          	sext.w	a3,a2
quickjs-nuttx/quickjs.c:5512
    switch(tag) {
    8000c2c0:	262d                	addiw	a2,a2,11
quickjs-nuttx/quickjs.c:5497
{
    8000c2c2:	fc06                	sd	ra,56(sp)
    8000c2c4:	f822                	sd	s0,48(sp)
    8000c2c6:	f426                	sd	s1,40(sp)
    8000c2c8:	e82e                	sd	a1,16(sp)
    8000c2ca:	0006071b          	sext.w	a4,a2
    8000c2ce:	47a9                	li	a5,10
    8000c2d0:	08e7e563          	bltu	a5,a4,8000c35a <__JS_FreeValueRT+0xa2>
    8000c2d4:	02061793          	slli	a5,a2,0x20
    8000c2d8:	01e7d613          	srli	a2,a5,0x1e
    8000c2dc:	0005d717          	auipc	a4,0x5d
    8000c2e0:	47c70713          	addi	a4,a4,1148 # 80069758 <qjsc_repl+0x41a8>
    8000c2e4:	963a                	add	a2,a2,a4
    8000c2e6:	421c                	lw	a5,0(a2)
    8000c2e8:	842a                	mv	s0,a0
    8000c2ea:	97ba                	add	a5,a5,a4
    8000c2ec:	8782                	jr	a5
quickjs-nuttx/quickjs.c:5516
            if (p->atom_type) {
    8000c2ee:	459c                	lw	a5,8(a1)
    8000c2f0:	c0000737          	lui	a4,0xc0000
    8000c2f4:	8ff9                	and	a5,a5,a4
    8000c2f6:	2781                	sext.w	a5,a5
    8000c2f8:	cbb9                	beqz	a5,8000c34e <__JS_FreeValueRT+0x96>
quickjs-nuttx/quickjs.c:5571
}
    8000c2fa:	7442                	ld	s0,48(sp)
    8000c2fc:	70e2                	ld	ra,56(sp)
    8000c2fe:	74a2                	ld	s1,40(sp)
    8000c300:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:5564
            JS_FreeAtomStruct(rt, p);
    8000c302:	ee6fe06f          	j	8000a9e8 <JS_FreeAtomStruct>
quickjs-nuttx/quickjs.c:5530
            if (rt->gc_phase != JS_GC_PHASE_REMOVE_CYCLES) {
    8000c306:	0b854703          	lbu	a4,184(a0)
    8000c30a:	4789                	li	a5,2
    8000c30c:	06f70063          	beq	a4,a5,8000c36c <__JS_FreeValueRT+0xb4>
quickjs-nuttx/quickjs.c:5531
                list_del(&p->link);
    8000c310:	00858493          	addi	s1,a1,8
    8000c314:	8526                	mv	a0,s1
    8000c316:	e42e                	sd	a1,8(sp)
    8000c318:	82dfb0ef          	jal	ra,80007b44 <list_del>
list_add():
quickjs-nuttx/list.h:60
    __list_add(el, head, head->next);
    8000c31c:	705c                	ld	a5,160(s0)
__list_add():
quickjs-nuttx/list.h:52
    el->prev = prev;
    8000c31e:	65a2                	ld	a1,8(sp)
quickjs-nuttx/list.h:51
    prev->next = el;
    8000c320:	f044                	sd	s1,160(s0)
__JS_FreeValueRT():
quickjs-nuttx/quickjs.c:5532
                list_add(&p->link, &rt->gc_zero_ref_count_list);
    8000c322:	09840713          	addi	a4,s0,152
__list_add():
quickjs-nuttx/list.h:52
    el->prev = prev;
    8000c326:	e598                	sd	a4,8(a1)
quickjs-nuttx/list.h:53
    el->next = next;
    8000c328:	e99c                	sd	a5,16(a1)
quickjs-nuttx/list.h:54
    next->prev = el;
    8000c32a:	e384                	sd	s1,0(a5)
__JS_FreeValueRT():
quickjs-nuttx/quickjs.c:5533
                if (rt->gc_phase == JS_GC_PHASE_NONE) {
    8000c32c:	0b844783          	lbu	a5,184(s0)
    8000c330:	ef95                	bnez	a5,8000c36c <__JS_FreeValueRT+0xb4>
quickjs-nuttx/quickjs.c:5534
                    free_zero_refcount(rt);
    8000c332:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:5571
}
    8000c334:	7442                	ld	s0,48(sp)
    8000c336:	70e2                	ld	ra,56(sp)
    8000c338:	74a2                	ld	s1,40(sp)
    8000c33a:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:5534
                    free_zero_refcount(rt);
    8000c33c:	de7ff06f          	j	8000c122 <free_zero_refcount>
bfdec_delete():
quickjs-nuttx/libbf.h:424
{
    bf_init(s, (bf_t *)r);
}
static inline void bfdec_delete(bfdec_t *r)
{
    bf_delete((bf_t *)r);
    8000c340:	00858513          	addi	a0,a1,8
    8000c344:	e42e                	sd	a1,8(sp)
    8000c346:	910fe0ef          	jal	ra,8000a456 <bf_delete>
__JS_FreeValueRT():
quickjs-nuttx/quickjs.c:5557
            js_free_rt(rt, bf);
    8000c34a:	65a2                	ld	a1,8(sp)
    8000c34c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:5571
}
    8000c34e:	7442                	ld	s0,48(sp)
    8000c350:	70e2                	ld	ra,56(sp)
    8000c352:	74a2                	ld	s1,40(sp)
    8000c354:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:5557
            js_free_rt(rt, bf);
    8000c356:	e8afe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:5568
        printf("__JS_FreeValue: unknown tag=%d\n", tag);
    8000c35a:	85b6                	mv	a1,a3
    8000c35c:	0005d517          	auipc	a0,0x5d
    8000c360:	3dc50513          	addi	a0,a0,988 # 80069738 <qjsc_repl+0x4188>
    8000c364:	675540ef          	jal	ra,800611d8 <printf>
quickjs-nuttx/quickjs.c:5569
        abort();
    8000c368:	01b560ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:5571
}
    8000c36c:	70e2                	ld	ra,56(sp)
    8000c36e:	7442                	ld	s0,48(sp)
    8000c370:	74a2                	ld	s1,40(sp)
    8000c372:	6121                	addi	sp,sp,64
    8000c374:	8082                	ret

000000008000c376 <JS_FreeValueRT>:
JS_FreeValueRT():
quickjs-nuttx/quickjs.h:657
{
    8000c376:	1141                	addi	sp,sp,-16
    8000c378:	e02e                	sd	a1,0(sp)
    8000c37a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.h:658
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    8000c37c:	0006079b          	sext.w	a5,a2
    8000c380:	5751                	li	a4,-12
    8000c382:	00f77b63          	bgeu	a4,a5,8000c398 <JS_FreeValueRT+0x22>
quickjs-nuttx/quickjs.h:660
        if (--p->ref_count <= 0) {
    8000c386:	4198                	lw	a4,0(a1)
    8000c388:	fff7069b          	addiw	a3,a4,-1
    8000c38c:	c194                	sw	a3,0(a1)
    8000c38e:	00d04563          	bgtz	a3,8000c398 <JS_FreeValueRT+0x22>
quickjs-nuttx/quickjs.h:664
}
    8000c392:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.h:661
            __JS_FreeValueRT(rt, v);
    8000c394:	f25ff06f          	j	8000c2b8 <__JS_FreeValueRT>
quickjs-nuttx/quickjs.h:664
}
    8000c398:	0141                	addi	sp,sp,16
    8000c39a:	8082                	ret

000000008000c39c <promise_reaction_data_free>:
promise_reaction_data_free():
quickjs-nuttx/quickjs.c:47726
{
    8000c39c:	1101                	addi	sp,sp,-32
    8000c39e:	ec06                	sd	ra,24(sp)
    8000c3a0:	e822                	sd	s0,16(sp)
    8000c3a2:	e426                	sd	s1,8(sp)
    8000c3a4:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:47727
    JS_FreeValueRT(rt, rd->resolving_funcs[0]);
    8000c3a6:	6c10                	ld	a2,24(s0)
    8000c3a8:	698c                	ld	a1,16(a1)
quickjs-nuttx/quickjs.c:47726
{
    8000c3aa:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:47727
    JS_FreeValueRT(rt, rd->resolving_funcs[0]);
    8000c3ac:	fcbff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47728
    JS_FreeValueRT(rt, rd->resolving_funcs[1]);
    8000c3b0:	700c                	ld	a1,32(s0)
    8000c3b2:	7410                	ld	a2,40(s0)
    8000c3b4:	8526                	mv	a0,s1
    8000c3b6:	fc1ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47729
    JS_FreeValueRT(rt, rd->handler);
    8000c3ba:	780c                	ld	a1,48(s0)
    8000c3bc:	7c10                	ld	a2,56(s0)
    8000c3be:	8526                	mv	a0,s1
    8000c3c0:	fb7ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47730
    js_free_rt(rt, rd);
    8000c3c4:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:47731
}
    8000c3c6:	6442                	ld	s0,16(sp)
    8000c3c8:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:47730
    js_free_rt(rt, rd);
    8000c3ca:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:47731
}
    8000c3cc:	64a2                	ld	s1,8(sp)
    8000c3ce:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:47730
    js_free_rt(rt, rd);
    8000c3d0:	e10fe06f          	j	8000a9e0 <js_free_rt>

000000008000c3d4 <js_free_shape>:
js_free_shape():
quickjs-nuttx/quickjs.c:4451
{
    8000c3d4:	7139                	addi	sp,sp,-64
    8000c3d6:	f822                	sd	s0,48(sp)
    8000c3d8:	fc06                	sd	ra,56(sp)
    8000c3da:	f426                	sd	s1,40(sp)
    8000c3dc:	f04a                	sd	s2,32(sp)
    8000c3de:	ec4e                	sd	s3,24(sp)
quickjs-nuttx/quickjs.c:4452
    if (unlikely(--sh->header.ref_count <= 0)) {
    8000c3e0:	419c                	lw	a5,0(a1)
quickjs-nuttx/quickjs.c:4451
{
    8000c3e2:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:4452
    if (unlikely(--sh->header.ref_count <= 0)) {
    8000c3e4:	fff7871b          	addiw	a4,a5,-1
    8000c3e8:	c198                	sw	a4,0(a1)
    8000c3ea:	06e04a63          	bgtz	a4,8000c45e <js_free_shape+0x8a>
js_free_shape0():
quickjs-nuttx/quickjs.c:4435
    assert(sh->header.ref_count == 0);
    8000c3ee:	cb19                	beqz	a4,8000c404 <js_free_shape+0x30>
    8000c3f0:	6585                	lui	a1,0x1
    8000c3f2:	4601                	li	a2,0
    8000c3f4:	15358593          	addi	a1,a1,339 # 1153 <asinh-0x7fffeead>
    8000c3f8:	0005d517          	auipc	a0,0x5d
    8000c3fc:	1a050513          	addi	a0,a0,416 # 80069598 <qjsc_repl+0x3fe8>
    8000c400:	55c540ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:4436
    if (sh->is_hashed)
    8000c404:	0185c783          	lbu	a5,24(a1)
    8000c408:	84aa                	mv	s1,a0
    8000c40a:	c399                	beqz	a5,8000c410 <js_free_shape+0x3c>
quickjs-nuttx/quickjs.c:4437
        js_shape_hash_unlink(rt, sh);
    8000c40c:	92bfb0ef          	jal	ra,80007d36 <js_shape_hash_unlink>
quickjs-nuttx/quickjs.c:4438
    if (sh->proto != NULL) {
    8000c410:	7c0c                	ld	a1,56(s0)
    8000c412:	c589                	beqz	a1,8000c41c <js_free_shape+0x48>
quickjs-nuttx/quickjs.c:4439
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, sh->proto));
    8000c414:	567d                	li	a2,-1
    8000c416:	8526                	mv	a0,s1
    8000c418:	f5fff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8000c41c:	04040993          	addi	s3,s0,64
js_free_shape0():
quickjs-nuttx/quickjs.c:4442
    for(i = 0; i < sh->prop_count; i++) {
    8000c420:	4901                	li	s2,0
    8000c422:	541c                	lw	a5,40(s0)
    8000c424:	02f96563          	bltu	s2,a5,8000c44e <js_free_shape+0x7a>
remove_gc_object():
quickjs-nuttx/quickjs.c:5590
    list_del(&h->link);
    8000c428:	00840513          	addi	a0,s0,8
    8000c42c:	f18fb0ef          	jal	ra,80007b44 <list_del>
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8000c430:	02046583          	lwu	a1,32(s0)
js_free_shape():
quickjs-nuttx/quickjs.c:4455
}
    8000c434:	70e2                	ld	ra,56(sp)
    8000c436:	7902                	ld	s2,32(sp)
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8000c438:	058a                	slli	a1,a1,0x2
    8000c43a:	40b405b3          	sub	a1,s0,a1
js_free_shape():
quickjs-nuttx/quickjs.c:4455
}
    8000c43e:	7442                	ld	s0,48(sp)
    8000c440:	69e2                	ld	s3,24(sp)
js_free_shape0():
quickjs-nuttx/quickjs.c:4447
    js_free_rt(rt, get_alloc_from_shape(sh));
    8000c442:	8526                	mv	a0,s1
js_free_shape():
quickjs-nuttx/quickjs.c:4455
}
    8000c444:	74a2                	ld	s1,40(sp)
js_free_shape0():
quickjs-nuttx/quickjs.c:4447
    js_free_rt(rt, get_alloc_from_shape(sh));
    8000c446:	15f1                	addi	a1,a1,-4
js_free_shape():
quickjs-nuttx/quickjs.c:4455
}
    8000c448:	6121                	addi	sp,sp,64
js_free_shape0():
quickjs-nuttx/quickjs.c:4447
    js_free_rt(rt, get_alloc_from_shape(sh));
    8000c44a:	d96fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:4443
        JS_FreeAtomRT(rt, pr->atom);
    8000c44e:	0049a583          	lw	a1,4(s3)
    8000c452:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:4444
        pr++;
    8000c454:	09a1                	addi	s3,s3,8
quickjs-nuttx/quickjs.c:4443
        JS_FreeAtomRT(rt, pr->atom);
    8000c456:	9b8ff0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:4442
    for(i = 0; i < sh->prop_count; i++) {
    8000c45a:	2905                	addiw	s2,s2,1
    8000c45c:	b7d9                	j	8000c422 <js_free_shape+0x4e>
js_free_shape():
quickjs-nuttx/quickjs.c:4455
}
    8000c45e:	70e2                	ld	ra,56(sp)
    8000c460:	7442                	ld	s0,48(sp)
    8000c462:	74a2                	ld	s1,40(sp)
    8000c464:	7902                	ld	s2,32(sp)
    8000c466:	69e2                	ld	s3,24(sp)
    8000c468:	6121                	addi	sp,sp,64
    8000c46a:	8082                	ret

000000008000c46c <free_var_ref>:
free_var_ref():
quickjs-nuttx/quickjs.c:5244
    if (var_ref) {
    8000c46c:	c9bd                	beqz	a1,8000c4e2 <free_var_ref+0x76>
quickjs-nuttx/quickjs.c:5243
{
    8000c46e:	1101                	addi	sp,sp,-32
    8000c470:	e822                	sd	s0,16(sp)
    8000c472:	ec06                	sd	ra,24(sp)
    8000c474:	e426                	sd	s1,8(sp)
quickjs-nuttx/quickjs.c:5245
        assert(var_ref->header.ref_count > 0);
    8000c476:	419c                	lw	a5,0(a1)
    8000c478:	842e                	mv	s0,a1
    8000c47a:	00f04c63          	bgtz	a5,8000c492 <free_var_ref+0x26>
quickjs-nuttx/quickjs.c:5245 (discriminator 1)
    8000c47e:	6585                	lui	a1,0x1
    8000c480:	4601                	li	a2,0
    8000c482:	47d58593          	addi	a1,a1,1149 # 147d <asinh-0x7fffeb83>
    8000c486:	0005d517          	auipc	a0,0x5d
    8000c48a:	11250513          	addi	a0,a0,274 # 80069598 <qjsc_repl+0x3fe8>
    8000c48e:	4ce540ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:5246 (discriminator 2)
        if (--var_ref->header.ref_count == 0) {
    8000c492:	fff7871b          	addiw	a4,a5,-1
    8000c496:	c198                	sw	a4,0(a1)
    8000c498:	e321                	bnez	a4,8000c4d8 <free_var_ref+0x6c>
quickjs-nuttx/quickjs.c:5247
            if (var_ref->is_detached) {
    8000c49a:	0055c783          	lbu	a5,5(a1)
    8000c49e:	84aa                	mv	s1,a0
    8000c4a0:	8b85                	andi	a5,a5,1
    8000c4a2:	c38d                	beqz	a5,8000c4c4 <free_var_ref+0x58>
quickjs-nuttx/quickjs.c:5248
                JS_FreeValueRT(rt, var_ref->value);
    8000c4a4:	718c                	ld	a1,32(a1)
    8000c4a6:	7410                	ld	a2,40(s0)
    8000c4a8:	ecfff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
remove_gc_object():
quickjs-nuttx/quickjs.c:5590
    list_del(&h->link);
    8000c4ac:	00840513          	addi	a0,s0,8
    8000c4b0:	e94fb0ef          	jal	ra,80007b44 <list_del>
free_var_ref():
quickjs-nuttx/quickjs.c:5255
            js_free_rt(rt, var_ref);
    8000c4b4:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:5258
}
    8000c4b6:	6442                	ld	s0,16(sp)
    8000c4b8:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:5255
            js_free_rt(rt, var_ref);
    8000c4ba:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5258
}
    8000c4bc:	64a2                	ld	s1,8(sp)
    8000c4be:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:5255
            js_free_rt(rt, var_ref);
    8000c4c0:	d20fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:5250
                list_del(&var_ref->var_ref_link); /* still on the stack */
    8000c4c4:	02058513          	addi	a0,a1,32
    8000c4c8:	e7cfb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:5251
                if (var_ref->async_func)
    8000c4cc:	780c                	ld	a1,48(s0)
    8000c4ce:	ddf9                	beqz	a1,8000c4ac <free_var_ref+0x40>
quickjs-nuttx/quickjs.c:5252
                    async_func_free(rt, var_ref->async_func);
    8000c4d0:	8526                	mv	a0,s1
    8000c4d2:	c9fff0ef          	jal	ra,8000c170 <async_func_free>
    8000c4d6:	bfd9                	j	8000c4ac <free_var_ref+0x40>
quickjs-nuttx/quickjs.c:5258
}
    8000c4d8:	60e2                	ld	ra,24(sp)
    8000c4da:	6442                	ld	s0,16(sp)
    8000c4dc:	64a2                	ld	s1,8(sp)
    8000c4de:	6105                	addi	sp,sp,32
    8000c4e0:	8082                	ret
    8000c4e2:	8082                	ret

000000008000c4e4 <js_free_module_def>:
js_free_module_def():
quickjs-nuttx/quickjs.c:27171
{
    8000c4e4:	7179                	addi	sp,sp,-48
    8000c4e6:	f022                	sd	s0,32(sp)
    8000c4e8:	ec26                	sd	s1,24(sp)
    8000c4ea:	e84a                	sd	s2,16(sp)
    8000c4ec:	f406                	sd	ra,40(sp)
    8000c4ee:	e44e                	sd	s3,8(sp)
    8000c4f0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:27174
    JS_FreeAtom(ctx, m->module_name);
    8000c4f2:	41cc                	lw	a1,4(a1)
quickjs-nuttx/quickjs.c:27171
{
    8000c4f4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:27176
    for(i = 0; i < m->req_module_entries_count; i++) {
    8000c4f6:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:27174
    JS_FreeAtom(ctx, m->module_name);
    8000c4f8:	c51fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27176 (discriminator 1)
    for(i = 0; i < m->req_module_entries_count; i++) {
    8000c4fc:	501c                	lw	a5,32(s0)
quickjs-nuttx/quickjs.c:27177 (discriminator 1)
        JSReqModuleEntry *rme = &m->req_module_entries[i];
    8000c4fe:	6c0c                	ld	a1,24(s0)
quickjs-nuttx/quickjs.c:27176 (discriminator 1)
    for(i = 0; i < m->req_module_entries_count; i++) {
    8000c500:	0af94263          	blt	s2,a5,8000c5a4 <js_free_module_def+0xc0>
quickjs-nuttx/quickjs.c:27180
    js_free(ctx, m->req_module_entries);
    8000c504:	8526                	mv	a0,s1
    8000c506:	af1fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27182
    for(i = 0; i < m->export_entries_count; i++) {
    8000c50a:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:27182 (discriminator 1)
    8000c50c:	581c                	lw	a5,48(s0)
quickjs-nuttx/quickjs.c:27183 (discriminator 1)
        JSExportEntry *me = &m->export_entries[i];
    8000c50e:	740c                	ld	a1,40(s0)
quickjs-nuttx/quickjs.c:27182 (discriminator 1)
    for(i = 0; i < m->export_entries_count; i++) {
    8000c510:	0af9c363          	blt	s3,a5,8000c5b6 <js_free_module_def+0xd2>
quickjs-nuttx/quickjs.c:27189
    js_free(ctx, m->export_entries);
    8000c514:	8526                	mv	a0,s1
    8000c516:	ae1fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27191
    js_free(ctx, m->star_export_entries);
    8000c51a:	7c0c                	ld	a1,56(s0)
    8000c51c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:27193
    for(i = 0; i < m->import_entries_count; i++) {
    8000c51e:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:27191
    js_free(ctx, m->star_export_entries);
    8000c520:	ad7fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27195
        JS_FreeAtom(ctx, mi->import_name);
    8000c524:	49b1                	li	s3,12
quickjs-nuttx/quickjs.c:27193 (discriminator 1)
    for(i = 0; i < m->import_entries_count; i++) {
    8000c526:	483c                	lw	a5,80(s0)
quickjs-nuttx/quickjs.c:27194 (discriminator 1)
        JSImportEntry *mi = &m->import_entries[i];
    8000c528:	642c                	ld	a1,72(s0)
quickjs-nuttx/quickjs.c:27193 (discriminator 1)
    for(i = 0; i < m->import_entries_count; i++) {
    8000c52a:	0af94d63          	blt	s2,a5,8000c5e4 <js_free_module_def+0x100>
quickjs-nuttx/quickjs.c:27197
    js_free(ctx, m->import_entries);
    8000c52e:	8526                	mv	a0,s1
    8000c530:	ac7fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27198
    js_free(ctx, m->async_parent_modules);
    8000c534:	6c4c                	ld	a1,152(s0)
    8000c536:	8526                	mv	a0,s1
    8000c538:	abffe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27200
    JS_FreeValue(ctx, m->module_ns);
    8000c53c:	6c2c                	ld	a1,88(s0)
    8000c53e:	7030                	ld	a2,96(s0)
    8000c540:	8526                	mv	a0,s1
    8000c542:	a5cff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27201
    JS_FreeValue(ctx, m->func_obj);
    8000c546:	742c                	ld	a1,104(s0)
    8000c548:	7830                	ld	a2,112(s0)
    8000c54a:	8526                	mv	a0,s1
    8000c54c:	a52ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27202
    JS_FreeValue(ctx, m->eval_exception);
    8000c550:	7c6c                	ld	a1,248(s0)
    8000c552:	10043603          	ld	a2,256(s0)
    8000c556:	8526                	mv	a0,s1
    8000c558:	a46ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27203
    JS_FreeValue(ctx, m->meta_obj);
    8000c55c:	10843583          	ld	a1,264(s0)
    8000c560:	11043603          	ld	a2,272(s0)
    8000c564:	8526                	mv	a0,s1
    8000c566:	a38ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27204
    JS_FreeValue(ctx, m->promise);
    8000c56a:	606c                	ld	a1,192(s0)
    8000c56c:	6470                	ld	a2,200(s0)
    8000c56e:	8526                	mv	a0,s1
    8000c570:	a2eff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27205
    JS_FreeValue(ctx, m->resolving_funcs[0]);
    8000c574:	686c                	ld	a1,208(s0)
    8000c576:	6c70                	ld	a2,216(s0)
    8000c578:	8526                	mv	a0,s1
    8000c57a:	a24ff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27206
    JS_FreeValue(ctx, m->resolving_funcs[1]);
    8000c57e:	706c                	ld	a1,224(s0)
    8000c580:	7470                	ld	a2,232(s0)
    8000c582:	8526                	mv	a0,s1
    8000c584:	a1aff0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:27207
    list_del(&m->link);
    8000c588:	00840513          	addi	a0,s0,8
    8000c58c:	db8fb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:27208
    js_free(ctx, m);
    8000c590:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:27209
}
    8000c592:	7402                	ld	s0,32(sp)
    8000c594:	70a2                	ld	ra,40(sp)
    8000c596:	6942                	ld	s2,16(sp)
    8000c598:	69a2                	ld	s3,8(sp)
quickjs-nuttx/quickjs.c:27208
    js_free(ctx, m);
    8000c59a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:27209
}
    8000c59c:	64e2                	ld	s1,24(sp)
    8000c59e:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:27208
    js_free(ctx, m);
    8000c5a0:	a57fe06f          	j	8000aff6 <js_free>
quickjs-nuttx/quickjs.c:27178 (discriminator 3)
        JS_FreeAtom(ctx, rme->module_name);
    8000c5a4:	00491793          	slli	a5,s2,0x4
    8000c5a8:	95be                	add	a1,a1,a5
    8000c5aa:	418c                	lw	a1,0(a1)
    8000c5ac:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:27176 (discriminator 3)
    for(i = 0; i < m->req_module_entries_count; i++) {
    8000c5ae:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:27178 (discriminator 3)
        JS_FreeAtom(ctx, rme->module_name);
    8000c5b0:	b99fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27176 (discriminator 3)
    for(i = 0; i < m->req_module_entries_count; i++) {
    8000c5b4:	b7a1                	j	8000c4fc <js_free_module_def+0x18>
quickjs-nuttx/quickjs.c:27183
        JSExportEntry *me = &m->export_entries[i];
    8000c5b6:	00599913          	slli	s2,s3,0x5
    8000c5ba:	992e                	add	s2,s2,a1
quickjs-nuttx/quickjs.c:27184
        if (me->export_type == JS_EXPORT_TYPE_LOCAL)
    8000c5bc:	01092783          	lw	a5,16(s2)
    8000c5c0:	e791                	bnez	a5,8000c5cc <js_free_module_def+0xe8>
quickjs-nuttx/quickjs.c:27185
            free_var_ref(ctx->rt, me->u.local.var_ref);
    8000c5c2:	00893583          	ld	a1,8(s2)
    8000c5c6:	6c88                	ld	a0,24(s1)
    8000c5c8:	ea5ff0ef          	jal	ra,8000c46c <free_var_ref>
quickjs-nuttx/quickjs.c:27186 (discriminator 2)
        JS_FreeAtom(ctx, me->export_name);
    8000c5cc:	01892583          	lw	a1,24(s2)
    8000c5d0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:27182 (discriminator 2)
    for(i = 0; i < m->export_entries_count; i++) {
    8000c5d2:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:27186 (discriminator 2)
        JS_FreeAtom(ctx, me->export_name);
    8000c5d4:	b75fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27187 (discriminator 2)
        JS_FreeAtom(ctx, me->local_name);
    8000c5d8:	01492583          	lw	a1,20(s2)
    8000c5dc:	8526                	mv	a0,s1
    8000c5de:	b6bfe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27182 (discriminator 2)
    for(i = 0; i < m->export_entries_count; i++) {
    8000c5e2:	b72d                	j	8000c50c <js_free_module_def+0x28>
quickjs-nuttx/quickjs.c:27195 (discriminator 3)
        JS_FreeAtom(ctx, mi->import_name);
    8000c5e4:	033907b3          	mul	a5,s2,s3
    8000c5e8:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:27193 (discriminator 3)
    for(i = 0; i < m->import_entries_count; i++) {
    8000c5ea:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:27195 (discriminator 3)
        JS_FreeAtom(ctx, mi->import_name);
    8000c5ec:	95be                	add	a1,a1,a5
    8000c5ee:	41cc                	lw	a1,4(a1)
    8000c5f0:	b59fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27193 (discriminator 3)
    for(i = 0; i < m->import_entries_count; i++) {
    8000c5f4:	bf0d                	j	8000c526 <js_free_module_def+0x42>

000000008000c5f6 <js_free_modules>:
js_free_modules():
quickjs-nuttx/quickjs.c:2219
{
    8000c5f6:	7179                	addi	sp,sp,-48
    8000c5f8:	f022                	sd	s0,32(sp)
    8000c5fa:	e84a                	sd	s2,16(sp)
    8000c5fc:	e44e                	sd	s3,8(sp)
    8000c5fe:	f406                	sd	ra,40(sp)
    8000c600:	ec26                	sd	s1,24(sp)
    8000c602:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:2221
    list_for_each_safe(el, el1, &ctx->loaded_modules) {
    8000c604:	1b853583          	ld	a1,440(a0)
quickjs-nuttx/quickjs.c:2219
{
    8000c608:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:2221
    list_for_each_safe(el, el1, &ctx->loaded_modules) {
    8000c60a:	1b050993          	addi	s3,a0,432
    8000c60e:	6584                	ld	s1,8(a1)
quickjs-nuttx/quickjs.c:2221 (discriminator 1)
    8000c610:	01359963          	bne	a1,s3,8000c622 <js_free_modules+0x2c>
quickjs-nuttx/quickjs.c:2228
}
    8000c614:	70a2                	ld	ra,40(sp)
    8000c616:	7402                	ld	s0,32(sp)
    8000c618:	64e2                	ld	s1,24(sp)
    8000c61a:	6942                	ld	s2,16(sp)
    8000c61c:	69a2                	ld	s3,8(sp)
    8000c61e:	6145                	addi	sp,sp,48
    8000c620:	8082                	ret
quickjs-nuttx/quickjs.c:2223
        if (flag == JS_FREE_MODULE_ALL ||
    8000c622:	00090563          	beqz	s2,8000c62c <js_free_modules+0x36>
quickjs-nuttx/quickjs.c:2224
            (flag == JS_FREE_MODULE_NOT_RESOLVED && !m->resolved)) {
    8000c626:	0795c703          	lbu	a4,121(a1)
    8000c62a:	e709                	bnez	a4,8000c634 <js_free_modules+0x3e>
quickjs-nuttx/quickjs.c:2225
            js_free_module_def(ctx, m);
    8000c62c:	15e1                	addi	a1,a1,-8
    8000c62e:	8522                	mv	a0,s0
    8000c630:	eb5ff0ef          	jal	ra,8000c4e4 <js_free_module_def>
quickjs-nuttx/quickjs.c:2221 (discriminator 2)
    list_for_each_safe(el, el1, &ctx->loaded_modules) {
    8000c634:	85a6                	mv	a1,s1
    8000c636:	6484                	ld	s1,8(s1)
    8000c638:	bfe1                	j	8000c610 <js_free_modules+0x1a>

000000008000c63a <async_func_free_frame>:
async_func_free_frame():
quickjs-nuttx/quickjs.c:18794
{
    8000c63a:	7179                	addi	sp,sp,-48
    8000c63c:	f022                	sd	s0,32(sp)
    8000c63e:	ec26                	sd	s1,24(sp)
    8000c640:	e44e                	sd	s3,8(sp)
    8000c642:	f406                	sd	ra,40(sp)
    8000c644:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:18798
    if (sf->arg_buf) {
    8000c646:	0705b903          	ld	s2,112(a1)
quickjs-nuttx/quickjs.c:18794
{
    8000c64a:	84aa                	mv	s1,a0
    8000c64c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:18795
    JSStackFrame *sf = &s->frame;
    8000c64e:	05858993          	addi	s3,a1,88
quickjs-nuttx/quickjs.c:18798
    if (sf->arg_buf) {
    8000c652:	02090f63          	beqz	s2,8000c690 <async_func_free_frame+0x56>
quickjs-nuttx/quickjs.c:18800
        assert(sf->cur_sp != NULL);
    8000c656:	71dc                	ld	a5,160(a1)
    8000c658:	e39d                	bnez	a5,8000c67e <async_func_free_frame+0x44>
quickjs-nuttx/quickjs.c:18800 (discriminator 1)
    8000c65a:	6595                	lui	a1,0x5
    8000c65c:	4601                	li	a2,0
    8000c65e:	97058593          	addi	a1,a1,-1680 # 4970 <asinh-0x7fffb690>
    8000c662:	0005d517          	auipc	a0,0x5d
    8000c666:	f3650513          	addi	a0,a0,-202 # 80069598 <qjsc_repl+0x3fe8>
    8000c66a:	2f2540ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:18802 (discriminator 3)
            JS_FreeValueRT(rt, *sp);
    8000c66e:	00093583          	ld	a1,0(s2)
    8000c672:	00893603          	ld	a2,8(s2)
    8000c676:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:18801 (discriminator 3)
        for(sp = sf->arg_buf; sp < sf->cur_sp; sp++) {
    8000c678:	0941                	addi	s2,s2,16
quickjs-nuttx/quickjs.c:18802 (discriminator 3)
            JS_FreeValueRT(rt, *sp);
    8000c67a:	cfdff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:18801 (discriminator 1)
        for(sp = sf->arg_buf; sp < sf->cur_sp; sp++) {
    8000c67e:	705c                	ld	a5,160(s0)
    8000c680:	fef967e3          	bltu	s2,a5,8000c66e <async_func_free_frame+0x34>
quickjs-nuttx/quickjs.c:18804
        js_free_rt(rt, sf->arg_buf);
    8000c684:	782c                	ld	a1,112(s0)
    8000c686:	8526                	mv	a0,s1
    8000c688:	b58fe0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:18805
        sf->arg_buf = NULL;
    8000c68c:	06043823          	sd	zero,112(s0)
quickjs-nuttx/quickjs.c:18807
    JS_FreeValueRT(rt, sf->cur_func);
    8000c690:	0089b583          	ld	a1,8(s3)
    8000c694:	0109b603          	ld	a2,16(s3)
    8000c698:	8526                	mv	a0,s1
    8000c69a:	cddff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:18808
    JS_FreeValueRT(rt, s->this_val);
    8000c69e:	6c0c                	ld	a1,24(s0)
    8000c6a0:	7010                	ld	a2,32(s0)
quickjs-nuttx/quickjs.c:18809
}
    8000c6a2:	7402                	ld	s0,32(sp)
    8000c6a4:	70a2                	ld	ra,40(sp)
    8000c6a6:	6942                	ld	s2,16(sp)
    8000c6a8:	69a2                	ld	s3,8(sp)
quickjs-nuttx/quickjs.c:18808
    JS_FreeValueRT(rt, s->this_val);
    8000c6aa:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:18809
}
    8000c6ac:	64e2                	ld	s1,24(sp)
    8000c6ae:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:18808
    JS_FreeValueRT(rt, s->this_val);
    8000c6b0:	cc7ff06f          	j	8000c376 <JS_FreeValueRT>

000000008000c6b4 <js_regexp_string_iterator_finalizer>:
js_regexp_string_iterator_finalizer():
quickjs-nuttx/quickjs.c:44178
{
    8000c6b4:	7179                	addi	sp,sp,-48
    8000c6b6:	f406                	sd	ra,40(sp)
    8000c6b8:	f022                	sd	s0,32(sp)
    8000c6ba:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:44180
    JSRegExpStringIteratorData *it = p->u.regexp_string_iterator_data;
    8000c6bc:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:44178
{
    8000c6be:	e02e                	sd	a1,0(sp)
    8000c6c0:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:44181
    if (it) {
    8000c6c2:	c01d                	beqz	s0,8000c6e8 <js_regexp_string_iterator_finalizer+0x34>
quickjs-nuttx/quickjs.c:44182
        JS_FreeValueRT(rt, it->iterating_regexp);
    8000c6c4:	600c                	ld	a1,0(s0)
    8000c6c6:	6410                	ld	a2,8(s0)
    8000c6c8:	84aa                	mv	s1,a0
    8000c6ca:	cadff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:44183
        JS_FreeValueRT(rt, it->iterated_string);
    8000c6ce:	680c                	ld	a1,16(s0)
    8000c6d0:	6c10                	ld	a2,24(s0)
    8000c6d2:	8526                	mv	a0,s1
    8000c6d4:	ca3ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:44184
        js_free_rt(rt, it);
    8000c6d8:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:44186
}
    8000c6da:	7402                	ld	s0,32(sp)
    8000c6dc:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:44184
        js_free_rt(rt, it);
    8000c6de:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:44186
}
    8000c6e0:	64e2                	ld	s1,24(sp)
    8000c6e2:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:44184
        js_free_rt(rt, it);
    8000c6e4:	afcfe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:44186
}
    8000c6e8:	70a2                	ld	ra,40(sp)
    8000c6ea:	7402                	ld	s0,32(sp)
    8000c6ec:	64e2                	ld	s1,24(sp)
    8000c6ee:	6145                	addi	sp,sp,48
    8000c6f0:	8082                	ret

000000008000c6f2 <js_array_iterator_finalizer>:
js_array_iterator_finalizer():
quickjs-nuttx/quickjs.c:40573
{
    8000c6f2:	7179                	addi	sp,sp,-48
    8000c6f4:	f406                	sd	ra,40(sp)
    8000c6f6:	f022                	sd	s0,32(sp)
    8000c6f8:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:40575
    JSArrayIteratorData *it = p->u.array_iterator_data;
    8000c6fa:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:40573
{
    8000c6fc:	e02e                	sd	a1,0(sp)
    8000c6fe:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:40576
    if (it) {
    8000c700:	cc11                	beqz	s0,8000c71c <js_array_iterator_finalizer+0x2a>
quickjs-nuttx/quickjs.c:40577
        JS_FreeValueRT(rt, it->obj);
    8000c702:	600c                	ld	a1,0(s0)
    8000c704:	6410                	ld	a2,8(s0)
    8000c706:	84aa                	mv	s1,a0
    8000c708:	c6fff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:40578
        js_free_rt(rt, it);
    8000c70c:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:40580
}
    8000c70e:	7402                	ld	s0,32(sp)
    8000c710:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:40578
        js_free_rt(rt, it);
    8000c712:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:40580
}
    8000c714:	64e2                	ld	s1,24(sp)
    8000c716:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:40578
        js_free_rt(rt, it);
    8000c718:	ac8fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:40580
}
    8000c71c:	70a2                	ld	ra,40(sp)
    8000c71e:	7402                	ld	s0,32(sp)
    8000c720:	64e2                	ld	s1,24(sp)
    8000c722:	6145                	addi	sp,sp,48
    8000c724:	8082                	ret

000000008000c726 <js_map_finalizer>:
js_map_finalizer():
quickjs-nuttx/quickjs.c:47381
{
    8000c726:	7139                	addi	sp,sp,-64
    8000c728:	fc06                	sd	ra,56(sp)
    8000c72a:	f822                	sd	s0,48(sp)
    8000c72c:	f426                	sd	s1,40(sp)
    8000c72e:	f04a                	sd	s2,32(sp)
    8000c730:	ec4e                	sd	s3,24(sp)
    8000c732:	e852                	sd	s4,16(sp)
quickjs-nuttx/quickjs.c:47388
    s = p->u.map_state;
    8000c734:	7984                	ld	s1,48(a1)
quickjs-nuttx/quickjs.c:47381
{
    8000c736:	e02e                	sd	a1,0(sp)
    8000c738:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47389
    if (s) {
    8000c73a:	c8ad                	beqz	s1,8000c7ac <js_map_finalizer+0x86>
quickjs-nuttx/quickjs.c:47392
        list_for_each_safe(el, el1, &s->records) {
    8000c73c:	689c                	ld	a5,16(s1)
    8000c73e:	842a                	mv	s0,a0
    8000c740:	00848a13          	addi	s4,s1,8
    8000c744:	0087b983          	ld	s3,8(a5)
quickjs-nuttx/quickjs.c:47392 (discriminator 1)
    8000c748:	03479163          	bne	a5,s4,8000c76a <js_map_finalizer+0x44>
quickjs-nuttx/quickjs.c:47403
        js_free_rt(rt, s->hash_table);
    8000c74c:	708c                	ld	a1,32(s1)
    8000c74e:	8522                	mv	a0,s0
    8000c750:	a90fe0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47404
        js_free_rt(rt, s);
    8000c754:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:47406
}
    8000c756:	7442                	ld	s0,48(sp)
    8000c758:	70e2                	ld	ra,56(sp)
    8000c75a:	7902                	ld	s2,32(sp)
    8000c75c:	69e2                	ld	s3,24(sp)
    8000c75e:	6a42                	ld	s4,16(sp)
quickjs-nuttx/quickjs.c:47404
        js_free_rt(rt, s);
    8000c760:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs.c:47406
}
    8000c762:	74a2                	ld	s1,40(sp)
    8000c764:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:47404
        js_free_rt(rt, s);
    8000c766:	a7afe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47393
            mr = list_entry(el, JSMapRecord, link);
    8000c76a:	fe878913          	addi	s2,a5,-24
quickjs-nuttx/quickjs.c:47394
            if (!mr->empty) {
    8000c76e:	fec7a783          	lw	a5,-20(a5)
    8000c772:	ef89                	bnez	a5,8000c78c <js_map_finalizer+0x66>
quickjs-nuttx/quickjs.c:47395
                if (s->is_weak)
    8000c774:	409c                	lw	a5,0(s1)
    8000c776:	c39d                	beqz	a5,8000c79c <js_map_finalizer+0x76>
quickjs-nuttx/quickjs.c:47396
                    delete_weak_ref(rt, mr);
    8000c778:	854a                	mv	a0,s2
    8000c77a:	f62fd0ef          	jal	ra,80009edc <delete_weak_ref.constprop.0>
quickjs-nuttx/quickjs.c:47399
                JS_FreeValueRT(rt, mr->value);
    8000c77e:	04893583          	ld	a1,72(s2)
    8000c782:	05093603          	ld	a2,80(s2)
    8000c786:	8522                	mv	a0,s0
    8000c788:	befff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47401 (discriminator 2)
            js_free_rt(rt, mr);
    8000c78c:	85ca                	mv	a1,s2
    8000c78e:	8522                	mv	a0,s0
    8000c790:	a50fe0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47392 (discriminator 2)
        list_for_each_safe(el, el1, &s->records) {
    8000c794:	87ce                	mv	a5,s3
    8000c796:	0089b983          	ld	s3,8(s3)
    8000c79a:	b77d                	j	8000c748 <js_map_finalizer+0x22>
quickjs-nuttx/quickjs.c:47398
                    JS_FreeValueRT(rt, mr->key);
    8000c79c:	03893583          	ld	a1,56(s2)
    8000c7a0:	04093603          	ld	a2,64(s2)
    8000c7a4:	8522                	mv	a0,s0
    8000c7a6:	bd1ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
    8000c7aa:	bfd1                	j	8000c77e <js_map_finalizer+0x58>
quickjs-nuttx/quickjs.c:47406
}
    8000c7ac:	70e2                	ld	ra,56(sp)
    8000c7ae:	7442                	ld	s0,48(sp)
    8000c7b0:	74a2                	ld	s1,40(sp)
    8000c7b2:	7902                	ld	s2,32(sp)
    8000c7b4:	69e2                	ld	s3,24(sp)
    8000c7b6:	6a42                	ld	s4,16(sp)
    8000c7b8:	6121                	addi	sp,sp,64
    8000c7ba:	8082                	ret

000000008000c7bc <js_typed_array_finalizer>:
js_typed_array_finalizer():
quickjs-nuttx/quickjs.c:54732
{
    8000c7bc:	7139                	addi	sp,sp,-64
    8000c7be:	fc06                	sd	ra,56(sp)
    8000c7c0:	f822                	sd	s0,48(sp)
    8000c7c2:	f426                	sd	s1,40(sp)
quickjs-nuttx/quickjs.c:54734
    JSTypedArray *ta = p->u.typed_array;
    8000c7c4:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:54732
{
    8000c7c6:	e02e                	sd	a1,0(sp)
    8000c7c8:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:54735
    if (ta) {
    8000c7ca:	c405                	beqz	s0,8000c7f2 <js_typed_array_finalizer+0x36>
quickjs-nuttx/quickjs.c:54738
        if (ta->link.next) {
    8000c7cc:	641c                	ld	a5,8(s0)
    8000c7ce:	84aa                	mv	s1,a0
    8000c7d0:	c781                	beqz	a5,8000c7d8 <js_typed_array_finalizer+0x1c>
quickjs-nuttx/quickjs.c:54739
            list_del(&ta->link);
    8000c7d2:	8522                	mv	a0,s0
    8000c7d4:	b70fb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:54741
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, ta->buffer));
    8000c7d8:	6c0c                	ld	a1,24(s0)
    8000c7da:	8526                	mv	a0,s1
    8000c7dc:	567d                	li	a2,-1
    8000c7de:	b99ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:54742
        js_free_rt(rt, ta);
    8000c7e2:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:54744
}
    8000c7e4:	7442                	ld	s0,48(sp)
    8000c7e6:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:54742
        js_free_rt(rt, ta);
    8000c7e8:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:54744
}
    8000c7ea:	74a2                	ld	s1,40(sp)
    8000c7ec:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:54742
        js_free_rt(rt, ta);
    8000c7ee:	9f2fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:54744
}
    8000c7f2:	70e2                	ld	ra,56(sp)
    8000c7f4:	7442                	ld	s0,48(sp)
    8000c7f6:	74a2                	ld	s1,40(sp)
    8000c7f8:	6121                	addi	sp,sp,64
    8000c7fa:	8082                	ret

000000008000c7fc <js_regexp_finalizer>:
js_regexp_finalizer():
quickjs-nuttx/quickjs.c:43288
{
    8000c7fc:	715d                	addi	sp,sp,-80
    8000c7fe:	e0a2                	sd	s0,64(sp)
    8000c800:	fc26                	sd	s1,56(sp)
    8000c802:	e486                	sd	ra,72(sp)
    8000c804:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:43289
    JSObject *p = JS_VALUE_GET_OBJ(val);
    8000c806:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:43291
    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_STRING, re->bytecode));
    8000c808:	7d8c                	ld	a1,56(a1)
quickjs-nuttx/quickjs.c:43288
{
    8000c80a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:43291
    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_STRING, re->bytecode));
    8000c80c:	57e5                	li	a5,-7
    8000c80e:	5665                	li	a2,-7
quickjs-nuttx/quickjs.c:43288
{
    8000c810:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:43291
    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_STRING, re->bytecode));
    8000c812:	e82e                	sd	a1,16(sp)
    8000c814:	ec3e                	sd	a5,24(sp)
    8000c816:	b61ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:43292
    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_STRING, re->pattern));
    8000c81a:	780c                	ld	a1,48(s0)
quickjs-nuttx/quickjs.c:43293
}
    8000c81c:	6406                	ld	s0,64(sp)
    8000c81e:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs.c:43292
    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_STRING, re->pattern));
    8000c820:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:43293
}
    8000c822:	74e2                	ld	s1,56(sp)
quickjs-nuttx/quickjs.c:43292
    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_STRING, re->pattern));
    8000c824:	5665                	li	a2,-7
quickjs-nuttx/quickjs.c:43293
}
    8000c826:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:43292
    JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_STRING, re->pattern));
    8000c828:	b4fff06f          	j	8000c376 <JS_FreeValueRT>

000000008000c82c <js_for_in_iterator_finalizer>:
js_for_in_iterator_finalizer():
quickjs-nuttx/quickjs.c:5391
{
    8000c82c:	7179                	addi	sp,sp,-48
    8000c82e:	ec26                	sd	s1,24(sp)
    8000c830:	f406                	sd	ra,40(sp)
    8000c832:	f022                	sd	s0,32(sp)
    8000c834:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:5393
    JSForInIterator *it = p->u.for_in_iterator;
    8000c836:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:5391
{
    8000c838:	e02e                	sd	a1,0(sp)
    8000c83a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5396
    JS_FreeValueRT(rt, it->obj);
    8000c83c:	600c                	ld	a1,0(s0)
    8000c83e:	6410                	ld	a2,8(s0)
quickjs-nuttx/quickjs.c:5391
{
    8000c840:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:5396
    JS_FreeValueRT(rt, it->obj);
    8000c842:	b35ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5397
    if (!it->is_array) {
    8000c846:	01944783          	lbu	a5,25(s0)
    8000c84a:	cb95                	beqz	a5,8000c87e <js_for_in_iterator_finalizer+0x52>
quickjs-nuttx/quickjs.c:5403
    js_free_rt(rt, it);
    8000c84c:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:5404
}
    8000c84e:	7402                	ld	s0,32(sp)
    8000c850:	70a2                	ld	ra,40(sp)
    8000c852:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:5403
    js_free_rt(rt, it);
    8000c854:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5404
}
    8000c856:	64e2                	ld	s1,24(sp)
    8000c858:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:5403
    js_free_rt(rt, it);
    8000c85a:	986fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:5399 (discriminator 3)
            JS_FreeAtomRT(rt, it->tab_atom[i].atom);
    8000c85e:	00391793          	slli	a5,s2,0x3
    8000c862:	95be                	add	a1,a1,a5
    8000c864:	41cc                	lw	a1,4(a1)
    8000c866:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5398 (discriminator 3)
        for(i = 0; i < it->atom_count; i++) {
    8000c868:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:5399 (discriminator 3)
            JS_FreeAtomRT(rt, it->tab_atom[i].atom);
    8000c86a:	da5fe0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:5398 (discriminator 1)
        for(i = 0; i < it->atom_count; i++) {
    8000c86e:	485c                	lw	a5,20(s0)
quickjs-nuttx/quickjs.c:5399 (discriminator 1)
            JS_FreeAtomRT(rt, it->tab_atom[i].atom);
    8000c870:	700c                	ld	a1,32(s0)
quickjs-nuttx/quickjs.c:5398 (discriminator 1)
        for(i = 0; i < it->atom_count; i++) {
    8000c872:	fef966e3          	bltu	s2,a5,8000c85e <js_for_in_iterator_finalizer+0x32>
quickjs-nuttx/quickjs.c:5401
        js_free_rt(rt, it->tab_atom);
    8000c876:	8526                	mv	a0,s1
    8000c878:	968fe0ef          	jal	ra,8000a9e0 <js_free_rt>
    8000c87c:	bfc1                	j	8000c84c <js_for_in_iterator_finalizer+0x20>
quickjs-nuttx/quickjs.c:5398
        for(i = 0; i < it->atom_count; i++) {
    8000c87e:	4901                	li	s2,0
    8000c880:	b7fd                	j	8000c86e <js_for_in_iterator_finalizer+0x42>

000000008000c882 <js_bound_function_finalizer>:
js_bound_function_finalizer():
quickjs-nuttx/quickjs.c:5364
{
    8000c882:	7179                	addi	sp,sp,-48
    8000c884:	f406                	sd	ra,40(sp)
    8000c886:	ec26                	sd	s1,24(sp)
    8000c888:	e84a                	sd	s2,16(sp)
    8000c88a:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:5366
    JSBoundFunction *bf = p->u.bound_function;
    8000c88c:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:5364
{
    8000c88e:	e02e                	sd	a1,0(sp)
    8000c890:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5369
    JS_FreeValueRT(rt, bf->func_obj);
    8000c892:	600c                	ld	a1,0(s0)
    8000c894:	6410                	ld	a2,8(s0)
quickjs-nuttx/quickjs.c:5364
{
    8000c896:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:5371
    for(i = 0; i < bf->argc; i++) {
    8000c898:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:5369
    JS_FreeValueRT(rt, bf->func_obj);
    8000c89a:	addff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5370
    JS_FreeValueRT(rt, bf->this_val);
    8000c89e:	680c                	ld	a1,16(s0)
    8000c8a0:	6c10                	ld	a2,24(s0)
    8000c8a2:	8526                	mv	a0,s1
    8000c8a4:	ad3ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5371 (discriminator 1)
    for(i = 0; i < bf->argc; i++) {
    8000c8a8:	501c                	lw	a5,32(s0)
    8000c8aa:	00f94b63          	blt	s2,a5,8000c8c0 <js_bound_function_finalizer+0x3e>
quickjs-nuttx/quickjs.c:5374
    js_free_rt(rt, bf);
    8000c8ae:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:5375
}
    8000c8b0:	7402                	ld	s0,32(sp)
    8000c8b2:	70a2                	ld	ra,40(sp)
    8000c8b4:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs.c:5374
    js_free_rt(rt, bf);
    8000c8b6:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5375
}
    8000c8b8:	64e2                	ld	s1,24(sp)
    8000c8ba:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:5374
    js_free_rt(rt, bf);
    8000c8bc:	924fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:5372 (discriminator 3)
        JS_FreeValueRT(rt, bf->argv[i]);
    8000c8c0:	00290793          	addi	a5,s2,2
    8000c8c4:	0792                	slli	a5,a5,0x4
    8000c8c6:	97a2                	add	a5,a5,s0
    8000c8c8:	678c                	ld	a1,8(a5)
    8000c8ca:	6b90                	ld	a2,16(a5)
    8000c8cc:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5371 (discriminator 3)
    for(i = 0; i < bf->argc; i++) {
    8000c8ce:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:5372 (discriminator 3)
        JS_FreeValueRT(rt, bf->argv[i]);
    8000c8d0:	aa7ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5371 (discriminator 3)
    for(i = 0; i < bf->argc; i++) {
    8000c8d4:	bfd1                	j	8000c8a8 <js_bound_function_finalizer+0x26>

000000008000c8d6 <js_bytecode_function_finalizer>:
js_bytecode_function_finalizer():
quickjs-nuttx/quickjs.c:5314
{
    8000c8d6:	715d                	addi	sp,sp,-80
    8000c8d8:	e0a2                	sd	s0,64(sp)
    8000c8da:	fc26                	sd	s1,56(sp)
    8000c8dc:	e486                	sd	ra,72(sp)
    8000c8de:	f84a                	sd	s2,48(sp)
    8000c8e0:	f44e                	sd	s3,40(sp)
    8000c8e2:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:5315
    JSObject *p1, *p = JS_VALUE_GET_OBJ(val);
    8000c8e4:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:5320
    p1 = p->u.func.home_object;
    8000c8e6:	61ac                	ld	a1,64(a1)
quickjs-nuttx/quickjs.c:5314
{
    8000c8e8:	e432                	sd	a2,8(sp)
    8000c8ea:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:5321
    if (p1) {
    8000c8ec:	c599                	beqz	a1,8000c8fa <js_bytecode_function_finalizer+0x24>
quickjs-nuttx/quickjs.c:5322
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_OBJECT, p1));
    8000c8ee:	57fd                	li	a5,-1
    8000c8f0:	567d                	li	a2,-1
    8000c8f2:	e82e                	sd	a1,16(sp)
    8000c8f4:	ec3e                	sd	a5,24(sp)
    8000c8f6:	a81ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5324
    b = p->u.func.function_bytecode;
    8000c8fa:	0304b903          	ld	s2,48(s1)
quickjs-nuttx/quickjs.c:5325
    if (b) {
    8000c8fe:	04090663          	beqz	s2,8000c94a <js_bytecode_function_finalizer+0x74>
quickjs-nuttx/quickjs.c:5326
        var_refs = p->u.func.var_refs;
    8000c902:	0384b983          	ld	s3,56(s1)
quickjs-nuttx/quickjs.c:5328
            for(i = 0; i < b->closure_var_count; i++)
    8000c906:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:5327
        if (var_refs) {
    8000c908:	02099863          	bnez	s3,8000c938 <js_bytecode_function_finalizer+0x62>
quickjs-nuttx/quickjs.c:5332
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b));
    8000c90c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:5334
}
    8000c90e:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs.c:5332
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b));
    8000c910:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:5334
}
    8000c912:	60a6                	ld	ra,72(sp)
    8000c914:	74e2                	ld	s1,56(sp)
    8000c916:	79a2                	ld	s3,40(sp)
quickjs-nuttx/quickjs.c:5332
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b));
    8000c918:	57f9                	li	a5,-2
    8000c91a:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:5334
}
    8000c91c:	7942                	ld	s2,48(sp)
quickjs-nuttx/quickjs.c:5332
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b));
    8000c91e:	ec3e                	sd	a5,24(sp)
    8000c920:	5679                	li	a2,-2
quickjs-nuttx/quickjs.c:5334
}
    8000c922:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:5332
        JS_FreeValueRT(rt, JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b));
    8000c924:	a53ff06f          	j	8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5329 (discriminator 3)
                free_var_ref(rt, var_refs[i]);
    8000c928:	00349793          	slli	a5,s1,0x3
    8000c92c:	97ce                	add	a5,a5,s3
    8000c92e:	638c                	ld	a1,0(a5)
    8000c930:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:5328 (discriminator 3)
            for(i = 0; i < b->closure_var_count; i++)
    8000c932:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:5329 (discriminator 3)
                free_var_ref(rt, var_refs[i]);
    8000c934:	b39ff0ef          	jal	ra,8000c46c <free_var_ref>
quickjs-nuttx/quickjs.c:5328 (discriminator 1)
            for(i = 0; i < b->closure_var_count; i++)
    8000c938:	05c92783          	lw	a5,92(s2)
    8000c93c:	fef4c6e3          	blt	s1,a5,8000c928 <js_bytecode_function_finalizer+0x52>
quickjs-nuttx/quickjs.c:5330
            js_free_rt(rt, var_refs);
    8000c940:	85ce                	mv	a1,s3
    8000c942:	8522                	mv	a0,s0
    8000c944:	89cfe0ef          	jal	ra,8000a9e0 <js_free_rt>
    8000c948:	b7d1                	j	8000c90c <js_bytecode_function_finalizer+0x36>
quickjs-nuttx/quickjs.c:5334
}
    8000c94a:	60a6                	ld	ra,72(sp)
    8000c94c:	6406                	ld	s0,64(sp)
    8000c94e:	74e2                	ld	s1,56(sp)
    8000c950:	7942                	ld	s2,48(sp)
    8000c952:	79a2                	ld	s3,40(sp)
    8000c954:	6161                	addi	sp,sp,80
    8000c956:	8082                	ret

000000008000c958 <js_object_data_finalizer>:
js_object_data_finalizer():
quickjs-nuttx/quickjs.c:5283
{
    8000c958:	1101                	addi	sp,sp,-32
    8000c95a:	e822                	sd	s0,16(sp)
    8000c95c:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:5284
    JSObject *p = JS_VALUE_GET_OBJ(val);
    8000c95e:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:5283
{
    8000c960:	e02e                	sd	a1,0(sp)
    8000c962:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5285
    JS_FreeValueRT(rt, p->u.object_data);
    8000c964:	798c                	ld	a1,48(a1)
    8000c966:	7c10                	ld	a2,56(s0)
    8000c968:	a0fff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5286
    p->u.object_data = JS_UNDEFINED;
    8000c96c:	478d                	li	a5,3
    8000c96e:	02043823          	sd	zero,48(s0)
    8000c972:	fc1c                	sd	a5,56(s0)
quickjs-nuttx/quickjs.c:5287
}
    8000c974:	60e2                	ld	ra,24(sp)
    8000c976:	6442                	ld	s0,16(sp)
    8000c978:	6105                	addi	sp,sp,32
    8000c97a:	8082                	ret

000000008000c97c <js_array_finalizer>:
js_array_finalizer():
quickjs-nuttx/quickjs.c:5261
{
    8000c97c:	7139                	addi	sp,sp,-64
    8000c97e:	f822                	sd	s0,48(sp)
    8000c980:	f426                	sd	s1,40(sp)
    8000c982:	fc06                	sd	ra,56(sp)
    8000c984:	e82e                	sd	a1,16(sp)
    8000c986:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:5262
    JSObject *p = JS_VALUE_GET_OBJ(val);
    8000c988:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:5265
    for(i = 0; i < p->u.array.count; i++) {
    8000c98a:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:5265 (discriminator 1)
    8000c98c:	40bc                	lw	a5,64(s1)
quickjs-nuttx/quickjs.c:5266 (discriminator 1)
        JS_FreeValueRT(rt, p->u.array.u.values[i]);
    8000c98e:	7c8c                	ld	a1,56(s1)
quickjs-nuttx/quickjs.c:5265 (discriminator 1)
    for(i = 0; i < p->u.array.count; i++) {
    8000c990:	00f46863          	bltu	s0,a5,8000c9a0 <js_array_finalizer+0x24>
quickjs-nuttx/quickjs.c:5269
}
    8000c994:	7442                	ld	s0,48(sp)
    8000c996:	70e2                	ld	ra,56(sp)
    8000c998:	74a2                	ld	s1,40(sp)
    8000c99a:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:5268
    js_free_rt(rt, p->u.array.u.values);
    8000c99c:	844fe06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:5266 (discriminator 3)
        JS_FreeValueRT(rt, p->u.array.u.values[i]);
    8000c9a0:	00441793          	slli	a5,s0,0x4
    8000c9a4:	97ae                	add	a5,a5,a1
    8000c9a6:	638c                	ld	a1,0(a5)
    8000c9a8:	6790                	ld	a2,8(a5)
    8000c9aa:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:5265 (discriminator 3)
    for(i = 0; i < p->u.array.count; i++) {
    8000c9ac:	2405                	addiw	s0,s0,1
quickjs-nuttx/quickjs.c:5266 (discriminator 3)
        JS_FreeValueRT(rt, p->u.array.u.values[i]);
    8000c9ae:	9c9ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:5265 (discriminator 3)
    for(i = 0; i < p->u.array.count; i++) {
    8000c9b2:	6522                	ld	a0,8(sp)
    8000c9b4:	bfe1                	j	8000c98c <js_array_finalizer+0x10>

000000008000c9b6 <map_delete_record.part.0>:
map_delete_record():
quickjs-nuttx/quickjs.c:47056
static void map_delete_record(JSRuntime *rt, JSMapState *s, JSMapRecord *mr)
    8000c9b6:	1101                	addi	sp,sp,-32
    8000c9b8:	e04a                	sd	s2,0(sp)
    8000c9ba:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:47060
    list_del(&mr->hash_link);
    8000c9bc:	02860513          	addi	a0,a2,40 # ffffffff80000028 <_ebss+0xfffffffeffefeec2>
quickjs-nuttx/quickjs.c:47056
static void map_delete_record(JSRuntime *rt, JSMapState *s, JSMapRecord *mr)
    8000c9c0:	e822                	sd	s0,16(sp)
    8000c9c2:	e426                	sd	s1,8(sp)
    8000c9c4:	ec06                	sd	ra,24(sp)
    8000c9c6:	84ae                	mv	s1,a1
    8000c9c8:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:47060
    list_del(&mr->hash_link);
    8000c9ca:	97afb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:47061
    if (s->is_weak) {
    8000c9ce:	409c                	lw	a5,0(s1)
    8000c9d0:	cf9d                	beqz	a5,8000ca0e <map_delete_record.part.0+0x58>
quickjs-nuttx/quickjs.c:47062
        delete_weak_ref(rt, mr);
    8000c9d2:	8522                	mv	a0,s0
    8000c9d4:	d08fd0ef          	jal	ra,80009edc <delete_weak_ref.constprop.0>
quickjs-nuttx/quickjs.c:47066
    JS_FreeValueRT(rt, mr->value);
    8000c9d8:	642c                	ld	a1,72(s0)
    8000c9da:	6830                	ld	a2,80(s0)
    8000c9dc:	854a                	mv	a0,s2
    8000c9de:	999ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47067
    if (--mr->ref_count == 0) {
    8000c9e2:	401c                	lw	a5,0(s0)
    8000c9e4:	fff7871b          	addiw	a4,a5,-1
    8000c9e8:	c018                	sw	a4,0(s0)
    8000c9ea:	eb05                	bnez	a4,8000ca1a <map_delete_record.part.0+0x64>
quickjs-nuttx/quickjs.c:47068
        list_del(&mr->link);
    8000c9ec:	01840513          	addi	a0,s0,24
    8000c9f0:	954fb0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:47069
        js_free_rt(rt, mr);
    8000c9f4:	85a2                	mv	a1,s0
    8000c9f6:	854a                	mv	a0,s2
    8000c9f8:	fe9fd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47076
    s->record_count--;
    8000c9fc:	4c9c                	lw	a5,24(s1)
quickjs-nuttx/quickjs.c:47077
}
    8000c9fe:	60e2                	ld	ra,24(sp)
    8000ca00:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:47076
    s->record_count--;
    8000ca02:	37fd                	addiw	a5,a5,-1
    8000ca04:	cc9c                	sw	a5,24(s1)
quickjs-nuttx/quickjs.c:47077
}
    8000ca06:	6902                	ld	s2,0(sp)
    8000ca08:	64a2                	ld	s1,8(sp)
    8000ca0a:	6105                	addi	sp,sp,32
    8000ca0c:	8082                	ret
quickjs-nuttx/quickjs.c:47064
        JS_FreeValueRT(rt, mr->key);
    8000ca0e:	7c0c                	ld	a1,56(s0)
    8000ca10:	6030                	ld	a2,64(s0)
    8000ca12:	854a                	mv	a0,s2
    8000ca14:	963ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
    8000ca18:	b7c1                	j	8000c9d8 <map_delete_record.part.0+0x22>
quickjs-nuttx/quickjs.c:47072
        mr->empty = TRUE;
    8000ca1a:	4785                	li	a5,1
    8000ca1c:	c05c                	sw	a5,4(s0)
quickjs-nuttx/quickjs.c:47073
        mr->key = JS_UNDEFINED;
    8000ca1e:	478d                	li	a5,3
    8000ca20:	02043c23          	sd	zero,56(s0)
    8000ca24:	e03c                	sd	a5,64(s0)
quickjs-nuttx/quickjs.c:47074
        mr->value = JS_UNDEFINED;
    8000ca26:	04043423          	sd	zero,72(s0)
    8000ca2a:	e83c                	sd	a5,80(s0)
    8000ca2c:	bfc1                	j	8000c9fc <map_delete_record.part.0+0x46>

000000008000ca2e <js_async_generator_free>:
js_async_generator_free():
quickjs-nuttx/quickjs.c:19227
{
    8000ca2e:	7179                	addi	sp,sp,-48
    8000ca30:	ec26                	sd	s1,24(sp)
    8000ca32:	e84a                	sd	s2,16(sp)
    8000ca34:	e052                	sd	s4,0(sp)
    8000ca36:	f406                	sd	ra,40(sp)
    8000ca38:	f022                	sd	s0,32(sp)
    8000ca3a:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:19231
    list_for_each_safe(el, el1, &s->queue) {
    8000ca3c:	7180                	ld	s0,32(a1)
quickjs-nuttx/quickjs.c:19227
{
    8000ca3e:	84aa                	mv	s1,a0
    8000ca40:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:19231
    list_for_each_safe(el, el1, &s->queue) {
    8000ca42:	00843983          	ld	s3,8(s0)
    8000ca46:	01858a13          	addi	s4,a1,24
quickjs-nuttx/quickjs.c:19231 (discriminator 1)
    8000ca4a:	03441363          	bne	s0,s4,8000ca70 <js_async_generator_free+0x42>
quickjs-nuttx/quickjs.c:19239
    if (s->func_state)
    8000ca4e:	01093583          	ld	a1,16(s2)
    8000ca52:	c581                	beqz	a1,8000ca5a <js_async_generator_free+0x2c>
quickjs-nuttx/quickjs.c:19240
        async_func_free(rt, s->func_state);
    8000ca54:	8526                	mv	a0,s1
    8000ca56:	f1aff0ef          	jal	ra,8000c170 <async_func_free>
quickjs-nuttx/quickjs.c:19242
}
    8000ca5a:	7402                	ld	s0,32(sp)
    8000ca5c:	70a2                	ld	ra,40(sp)
    8000ca5e:	69a2                	ld	s3,8(sp)
    8000ca60:	6a02                	ld	s4,0(sp)
quickjs-nuttx/quickjs.c:19241
    js_free_rt(rt, s);
    8000ca62:	85ca                	mv	a1,s2
    8000ca64:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:19242
}
    8000ca66:	6942                	ld	s2,16(sp)
    8000ca68:	64e2                	ld	s1,24(sp)
    8000ca6a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:19241
    js_free_rt(rt, s);
    8000ca6c:	f75fd06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:19233 (discriminator 3)
        JS_FreeValueRT(rt, req->result);
    8000ca70:	6c0c                	ld	a1,24(s0)
    8000ca72:	7010                	ld	a2,32(s0)
    8000ca74:	8526                	mv	a0,s1
    8000ca76:	901ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:19234 (discriminator 3)
        JS_FreeValueRT(rt, req->promise);
    8000ca7a:	740c                	ld	a1,40(s0)
    8000ca7c:	7810                	ld	a2,48(s0)
    8000ca7e:	8526                	mv	a0,s1
    8000ca80:	8f7ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:19235 (discriminator 3)
        JS_FreeValueRT(rt, req->resolving_funcs[0]);
    8000ca84:	7c0c                	ld	a1,56(s0)
    8000ca86:	6030                	ld	a2,64(s0)
    8000ca88:	8526                	mv	a0,s1
    8000ca8a:	8edff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:19236 (discriminator 3)
        JS_FreeValueRT(rt, req->resolving_funcs[1]);
    8000ca8e:	642c                	ld	a1,72(s0)
    8000ca90:	6830                	ld	a2,80(s0)
    8000ca92:	8526                	mv	a0,s1
    8000ca94:	8e3ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:19237 (discriminator 3)
        js_free_rt(rt, req);
    8000ca98:	85a2                	mv	a1,s0
    8000ca9a:	8526                	mv	a0,s1
    8000ca9c:	f45fd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:19231 (discriminator 3)
    list_for_each_safe(el, el1, &s->queue) {
    8000caa0:	844e                	mv	s0,s3
    8000caa2:	0089b983          	ld	s3,8(s3)
    8000caa6:	b755                	j	8000ca4a <js_async_generator_free+0x1c>

000000008000caa8 <js_promise_resolve_function_finalizer>:
js_promise_resolve_function_finalizer():
quickjs-nuttx/quickjs.c:47908
{
    8000caa8:	7179                	addi	sp,sp,-48
    8000caaa:	f406                	sd	ra,40(sp)
    8000caac:	f022                	sd	s0,32(sp)
    8000caae:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:47909
    JSPromiseFunctionData *s = JS_VALUE_GET_OBJ(val)->u.promise_function_data;
    8000cab0:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:47908
{
    8000cab2:	e02e                	sd	a1,0(sp)
    8000cab4:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47910
    if (s) {
    8000cab6:	c41d                	beqz	s0,8000cae4 <js_promise_resolve_function_finalizer+0x3c>
quickjs-nuttx/quickjs.c:47911
        js_promise_resolve_function_free_resolved(rt, s->presolved);
    8000cab8:	680c                	ld	a1,16(s0)
    8000caba:	84aa                	mv	s1,a0
js_promise_resolve_function_free_resolved():
quickjs-nuttx/quickjs.c:47860
    if (--sr->ref_count == 0) {
    8000cabc:	419c                	lw	a5,0(a1)
    8000cabe:	fff7871b          	addiw	a4,a5,-1
    8000cac2:	c198                	sw	a4,0(a1)
    8000cac4:	e319                	bnez	a4,8000caca <js_promise_resolve_function_finalizer+0x22>
quickjs-nuttx/quickjs.c:47861
        js_free_rt(rt, sr);
    8000cac6:	f1bfd0ef          	jal	ra,8000a9e0 <js_free_rt>
js_promise_resolve_function_finalizer():
quickjs-nuttx/quickjs.c:47912
        JS_FreeValueRT(rt, s->promise);
    8000caca:	600c                	ld	a1,0(s0)
    8000cacc:	6410                	ld	a2,8(s0)
    8000cace:	8526                	mv	a0,s1
    8000cad0:	8a7ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47913
        js_free_rt(rt, s);
    8000cad4:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:47915
}
    8000cad6:	7402                	ld	s0,32(sp)
    8000cad8:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:47913
        js_free_rt(rt, s);
    8000cada:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:47915
}
    8000cadc:	64e2                	ld	s1,24(sp)
    8000cade:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:47913
        js_free_rt(rt, s);
    8000cae0:	f01fd06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47915
}
    8000cae4:	70a2                	ld	ra,40(sp)
    8000cae6:	7402                	ld	s0,32(sp)
    8000cae8:	64e2                	ld	s1,24(sp)
    8000caea:	6145                	addi	sp,sp,48
    8000caec:	8082                	ret

000000008000caee <js_map_iterator_finalizer>:
js_map_iterator_finalizer():
quickjs-nuttx/quickjs.c:47435
{
    8000caee:	7179                	addi	sp,sp,-48
    8000caf0:	f406                	sd	ra,40(sp)
    8000caf2:	f022                	sd	s0,32(sp)
    8000caf4:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:47440
    it = p->u.map_iterator_data;
    8000caf6:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:47435
{
    8000caf8:	e02e                	sd	a1,0(sp)
    8000cafa:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47441
    if (it) {
    8000cafc:	cc05                	beqz	s0,8000cb34 <js_map_iterator_finalizer+0x46>
JS_IsLiveObject():
quickjs-nuttx/quickjs.c:5855
    if (!JS_IsObject(obj))
    8000cafe:	4418                	lw	a4,8(s0)
    8000cb00:	57fd                	li	a5,-1
    8000cb02:	84aa                	mv	s1,a0
    8000cb04:	00f71b63          	bne	a4,a5,8000cb1a <js_map_iterator_finalizer+0x2c>
quickjs-nuttx/quickjs.c:5858
    return !p->free_mark;
    8000cb08:	601c                	ld	a5,0(s0)
    8000cb0a:	0057c783          	lbu	a5,5(a5)
js_map_iterator_finalizer():
quickjs-nuttx/quickjs.c:47444
        if (JS_IsLiveObject(rt, it->obj) && it->cur_record) {
    8000cb0e:	8b89                	andi	a5,a5,2
    8000cb10:	e789                	bnez	a5,8000cb1a <js_map_iterator_finalizer+0x2c>
quickjs-nuttx/quickjs.c:47444 (discriminator 1)
    8000cb12:	6c0c                	ld	a1,24(s0)
    8000cb14:	c199                	beqz	a1,8000cb1a <js_map_iterator_finalizer+0x2c>
quickjs-nuttx/quickjs.c:47445
            map_decref_record(rt, it->cur_record);
    8000cb16:	fc7fd0ef          	jal	ra,8000aadc <map_decref_record>
quickjs-nuttx/quickjs.c:47447
        JS_FreeValueRT(rt, it->obj);
    8000cb1a:	600c                	ld	a1,0(s0)
    8000cb1c:	6410                	ld	a2,8(s0)
    8000cb1e:	8526                	mv	a0,s1
    8000cb20:	857ff0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:47448
        js_free_rt(rt, it);
    8000cb24:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:47450
}
    8000cb26:	7402                	ld	s0,32(sp)
    8000cb28:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:47448
        js_free_rt(rt, it);
    8000cb2a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:47450
}
    8000cb2c:	64e2                	ld	s1,24(sp)
    8000cb2e:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:47448
        js_free_rt(rt, it);
    8000cb30:	eb1fd06f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:47450
}
    8000cb34:	70a2                	ld	ra,40(sp)
    8000cb36:	7402                	ld	s0,32(sp)
    8000cb38:	64e2                	ld	s1,24(sp)
    8000cb3a:	6145                	addi	sp,sp,48
    8000cb3c:	8082                	ret

000000008000cb3e <JS_FreeCString>:
JS_FreeCString():
quickjs-nuttx/quickjs.c:4088
{
    8000cb3e:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:4090
    if (!ptr)
    8000cb40:	c591                	beqz	a1,8000cb4c <JS_FreeCString+0xe>
quickjs-nuttx/quickjs.c:4094
    JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, p));
    8000cb42:	15c1                	addi	a1,a1,-16
    8000cb44:	5665                	li	a2,-7
quickjs-nuttx/quickjs.c:4095
}
    8000cb46:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:4094
    JS_FreeValue(ctx, JS_MKPTR(JS_TAG_STRING, p));
    8000cb48:	c57fe06f          	j	8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:4095
}
    8000cb4c:	0141                	addi	sp,sp,16
    8000cb4e:	8082                	ret

000000008000cb50 <value_buffer_free>:
value_buffer_free():
quickjs-nuttx/quickjs.c:44339
{
    8000cb50:	1101                	addi	sp,sp,-32
    8000cb52:	e822                	sd	s0,16(sp)
    8000cb54:	ec06                	sd	ra,24(sp)
    8000cb56:	e426                	sd	s1,8(sp)
    8000cb58:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:44340
    while (b->len > 0)
    8000cb5a:	483c                	lw	a5,80(s0)
quickjs-nuttx/quickjs.c:44341
        JS_FreeValue(b->ctx, b->arr[--b->len]);
    8000cb5c:	640c                	ld	a1,8(s0)
quickjs-nuttx/quickjs.c:44340
    while (b->len > 0)
    8000cb5e:	02f04163          	bgtz	a5,8000cb80 <value_buffer_free+0x30>
quickjs-nuttx/quickjs.c:44342
    if (b->arr != b->def)
    8000cb62:	01040493          	addi	s1,s0,16
    8000cb66:	00b48563          	beq	s1,a1,8000cb70 <value_buffer_free+0x20>
quickjs-nuttx/quickjs.c:44343
        js_free(b->ctx, b->arr);
    8000cb6a:	6008                	ld	a0,0(s0)
    8000cb6c:	c8afe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:44345
    b->size = 4;
    8000cb70:	4791                	li	a5,4
quickjs-nuttx/quickjs.c:44344
    b->arr = b->def;
    8000cb72:	e404                	sd	s1,8(s0)
quickjs-nuttx/quickjs.c:44346
}
    8000cb74:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:44345
    b->size = 4;
    8000cb76:	c87c                	sw	a5,84(s0)
quickjs-nuttx/quickjs.c:44346
}
    8000cb78:	6442                	ld	s0,16(sp)
    8000cb7a:	64a2                	ld	s1,8(sp)
    8000cb7c:	6105                	addi	sp,sp,32
    8000cb7e:	8082                	ret
quickjs-nuttx/quickjs.c:44341
        JS_FreeValue(b->ctx, b->arr[--b->len]);
    8000cb80:	fff7871b          	addiw	a4,a5,-1
    8000cb84:	00471793          	slli	a5,a4,0x4
    8000cb88:	c838                	sw	a4,80(s0)
    8000cb8a:	97ae                	add	a5,a5,a1
    8000cb8c:	638c                	ld	a1,0(a5)
    8000cb8e:	6790                	ld	a2,8(a5)
    8000cb90:	6008                	ld	a0,0(s0)
    8000cb92:	c0dfe0ef          	jal	ra,8000b79e <JS_FreeValue>
    8000cb96:	b7d1                	j	8000cb5a <value_buffer_free+0xa>

000000008000cb98 <free_token>:
free_token():
quickjs-nuttx/quickjs.c:20014
{
    8000cb98:	1101                	addi	sp,sp,-32
    8000cb9a:	e822                	sd	s0,16(sp)
    8000cb9c:	e426                	sd	s1,8(sp)
    8000cb9e:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:20015
    switch(token->val) {
    8000cba0:	419c                	lw	a5,0(a1)
    8000cba2:	f8300713          	li	a4,-125
quickjs-nuttx/quickjs.c:20014
{
    8000cba6:	84aa                	mv	s1,a0
    8000cba8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:20015
    switch(token->val) {
    8000cbaa:	04e78263          	beq	a5,a4,8000cbee <free_token+0x56>
    8000cbae:	f8400713          	li	a4,-124
    8000cbb2:	02e7d863          	bge	a5,a4,8000cbe2 <free_token+0x4a>
    8000cbb6:	f8000713          	li	a4,-128
    8000cbba:	04e78263          	beq	a5,a4,8000cbfe <free_token+0x66>
    8000cbbe:	00e7c763          	blt	a5,a4,8000cbcc <free_token+0x34>
    8000cbc2:	07f7871b          	addiw	a4,a5,127
    8000cbc6:	4685                	li	a3,1
    8000cbc8:	02e6fb63          	bgeu	a3,a4,8000cbfe <free_token+0x66>
quickjs-nuttx/quickjs.c:20032
        if (token->val >= TOK_FIRST_KEYWORD &&
    8000cbcc:	0537879b          	addiw	a5,a5,83
    8000cbd0:	02d00713          	li	a4,45
    8000cbd4:	00f77d63          	bgeu	a4,a5,8000cbee <free_token+0x56>
quickjs-nuttx/quickjs.c:20038
}
    8000cbd8:	60e2                	ld	ra,24(sp)
    8000cbda:	6442                	ld	s0,16(sp)
    8000cbdc:	64a2                	ld	s1,8(sp)
    8000cbde:	6105                	addi	sp,sp,32
    8000cbe0:	8082                	ret
quickjs-nuttx/quickjs.c:20015
    switch(token->val) {
    8000cbe2:	02e78763          	beq	a5,a4,8000cc10 <free_token+0x78>
    8000cbe6:	fab00713          	li	a4,-85
    8000cbea:	fee791e3          	bne	a5,a4,8000cbcc <free_token+0x34>
quickjs-nuttx/quickjs.c:20034
            JS_FreeAtom(s->ctx, token->u.ident.atom);
    8000cbee:	480c                	lw	a1,16(s0)
quickjs-nuttx/quickjs.c:20038
}
    8000cbf0:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:20034
            JS_FreeAtom(s->ctx, token->u.ident.atom);
    8000cbf2:	6088                	ld	a0,0(s1)
quickjs-nuttx/quickjs.c:20038
}
    8000cbf4:	60e2                	ld	ra,24(sp)
    8000cbf6:	64a2                	ld	s1,8(sp)
    8000cbf8:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:20034
            JS_FreeAtom(s->ctx, token->u.ident.atom);
    8000cbfa:	d4efe06f          	j	8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:20021
        JS_FreeValue(s->ctx, token->u.str.str);
    8000cbfe:	680c                	ld	a1,16(s0)
    8000cc00:	6c10                	ld	a2,24(s0)
quickjs-nuttx/quickjs.c:20038
}
    8000cc02:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:20025
        JS_FreeValue(s->ctx, token->u.regexp.flags);
    8000cc04:	6088                	ld	a0,0(s1)
quickjs-nuttx/quickjs.c:20038
}
    8000cc06:	60e2                	ld	ra,24(sp)
    8000cc08:	64a2                	ld	s1,8(sp)
    8000cc0a:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:20025
        JS_FreeValue(s->ctx, token->u.regexp.flags);
    8000cc0c:	b93fe06f          	j	8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:20024
        JS_FreeValue(s->ctx, token->u.regexp.body);
    8000cc10:	698c                	ld	a1,16(a1)
    8000cc12:	6c10                	ld	a2,24(s0)
    8000cc14:	6108                	ld	a0,0(a0)
    8000cc16:	b89fe0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:20025
        JS_FreeValue(s->ctx, token->u.regexp.flags);
    8000cc1a:	700c                	ld	a1,32(s0)
    8000cc1c:	7410                	ld	a2,40(s0)
    8000cc1e:	b7d5                	j	8000cc02 <free_token+0x6a>

000000008000cc20 <js_free_function_def>:
js_free_function_def():
quickjs-nuttx/quickjs.c:29402
{
    8000cc20:	7179                	addi	sp,sp,-48
    8000cc22:	f022                	sd	s0,32(sp)
    8000cc24:	ec26                	sd	s1,24(sp)
    8000cc26:	e44e                	sd	s3,8(sp)
    8000cc28:	f406                	sd	ra,40(sp)
    8000cc2a:	e84a                	sd	s2,16(sp)
    8000cc2c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:29407
    list_for_each_safe(el, el1, &fd->child_list) {
    8000cc2e:	718c                	ld	a1,32(a1)
quickjs-nuttx/quickjs.c:29402
{
    8000cc30:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:29407
    list_for_each_safe(el, el1, &fd->child_list) {
    8000cc32:	01840993          	addi	s3,s0,24
    8000cc36:	0085b903          	ld	s2,8(a1)
quickjs-nuttx/quickjs.c:29407 (discriminator 1)
    8000cc3a:	0f359963          	bne	a1,s3,8000cd2c <js_free_function_def+0x10c>
quickjs-nuttx/quickjs.c:29413
    free_bytecode_atoms(ctx->rt, fd->byte_code.buf, fd->byte_code.size,
    8000cc3e:	16842683          	lw	a3,360(s0)
    8000cc42:	13842603          	lw	a2,312(s0)
    8000cc46:	13043583          	ld	a1,304(s0)
    8000cc4a:	6c88                	ld	a0,24(s1)
quickjs-nuttx/quickjs.c:29420
    for(i = 0; i < fd->cpool_count; i++) {
    8000cc4c:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:29413
    free_bytecode_atoms(ctx->rt, fd->byte_code.buf, fd->byte_code.size,
    8000cc4e:	9cffe0ef          	jal	ra,8000b61c <free_bytecode_atoms>
quickjs-nuttx/quickjs.c:29415
    dbuf_free(&fd->byte_code);
    8000cc52:	13040513          	addi	a0,s0,304
    8000cc56:	751440ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:29416
    js_free(ctx, fd->jump_slots);
    8000cc5a:	1a843583          	ld	a1,424(s0)
    8000cc5e:	8526                	mv	a0,s1
    8000cc60:	b96fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29417
    js_free(ctx, fd->label_slots);
    8000cc64:	17043583          	ld	a1,368(s0)
    8000cc68:	8526                	mv	a0,s1
    8000cc6a:	b8cfe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29418
    js_free(ctx, fd->line_number_slots);
    8000cc6e:	1b843583          	ld	a1,440(s0)
    8000cc72:	8526                	mv	a0,s1
    8000cc74:	b82fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29420 (discriminator 1)
    for(i = 0; i < fd->cpool_count; i++) {
    8000cc78:	19042783          	lw	a5,400(s0)
quickjs-nuttx/quickjs.c:29421 (discriminator 1)
        JS_FreeValue(ctx, fd->cpool[i]);
    8000cc7c:	18843583          	ld	a1,392(s0)
quickjs-nuttx/quickjs.c:29420 (discriminator 1)
    for(i = 0; i < fd->cpool_count; i++) {
    8000cc80:	0af94f63          	blt	s2,a5,8000cd3e <js_free_function_def+0x11e>
quickjs-nuttx/quickjs.c:29423
    js_free(ctx, fd->cpool);
    8000cc84:	8526                	mv	a0,s1
    8000cc86:	b70fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29425
    JS_FreeAtom(ctx, fd->func_name);
    8000cc8a:	08842583          	lw	a1,136(s0)
    8000cc8e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:29427
    for(i = 0; i < fd->var_count; i++) {
    8000cc90:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:29425
    JS_FreeAtom(ctx, fd->func_name);
    8000cc92:	cb6fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29427 (discriminator 1)
    for(i = 0; i < fd->var_count; i++) {
    8000cc96:	09c42783          	lw	a5,156(s0)
quickjs-nuttx/quickjs.c:29428 (discriminator 1)
        JS_FreeAtom(ctx, fd->vars[i].var_name);
    8000cc9a:	684c                	ld	a1,144(s0)
quickjs-nuttx/quickjs.c:29427 (discriminator 1)
    for(i = 0; i < fd->var_count; i++) {
    8000cc9c:	0af94b63          	blt	s2,a5,8000cd52 <js_free_function_def+0x132>
quickjs-nuttx/quickjs.c:29430
    js_free(ctx, fd->vars);
    8000cca0:	8526                	mv	a0,s1
    8000cca2:	b54fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29431
    for(i = 0; i < fd->arg_count; i++) {
    8000cca6:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:29431 (discriminator 1)
    8000cca8:	0ac42783          	lw	a5,172(s0)
quickjs-nuttx/quickjs.c:29432 (discriminator 1)
        JS_FreeAtom(ctx, fd->args[i].var_name);
    8000ccac:	704c                	ld	a1,160(s0)
quickjs-nuttx/quickjs.c:29431 (discriminator 1)
    for(i = 0; i < fd->arg_count; i++) {
    8000ccae:	0af94b63          	blt	s2,a5,8000cd64 <js_free_function_def+0x144>
quickjs-nuttx/quickjs.c:29434
    js_free(ctx, fd->args);
    8000ccb2:	8526                	mv	a0,s1
    8000ccb4:	b42fe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29436
    for(i = 0; i < fd->global_var_count; i++) {
    8000ccb8:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:29436 (discriminator 1)
    8000ccba:	11c42783          	lw	a5,284(s0)
quickjs-nuttx/quickjs.c:29437 (discriminator 1)
        JS_FreeAtom(ctx, fd->global_vars[i].var_name);
    8000ccbe:	12843583          	ld	a1,296(s0)
quickjs-nuttx/quickjs.c:29436 (discriminator 1)
    for(i = 0; i < fd->global_var_count; i++) {
    8000ccc2:	0af94a63          	blt	s2,a5,8000cd76 <js_free_function_def+0x156>
quickjs-nuttx/quickjs.c:29439
    js_free(ctx, fd->global_vars);
    8000ccc6:	8526                	mv	a0,s1
    8000ccc8:	b2efe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29441
    for(i = 0; i < fd->closure_var_count; i++) {
    8000cccc:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:29441 (discriminator 1)
    8000ccce:	19842783          	lw	a5,408(s0)
quickjs-nuttx/quickjs.c:29442 (discriminator 1)
        JSClosureVar *cv = &fd->closure_var[i];
    8000ccd2:	1a043583          	ld	a1,416(s0)
quickjs-nuttx/quickjs.c:29441 (discriminator 1)
    for(i = 0; i < fd->closure_var_count; i++) {
    8000ccd6:	0af94963          	blt	s2,a5,8000cd88 <js_free_function_def+0x168>
quickjs-nuttx/quickjs.c:29445
    js_free(ctx, fd->closure_var);
    8000ccda:	8526                	mv	a0,s1
    8000ccdc:	b1afe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29447
    if (fd->scopes != fd->def_scope_array)
    8000cce0:	786c                	ld	a1,240(s0)
    8000cce2:	0f840793          	addi	a5,s0,248
    8000cce6:	00f58563          	beq	a1,a5,8000ccf0 <js_free_function_def+0xd0>
quickjs-nuttx/quickjs.c:29448
        js_free(ctx, fd->scopes);
    8000ccea:	8526                	mv	a0,s1
    8000ccec:	b0afe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29450
    JS_FreeAtom(ctx, fd->filename);
    8000ccf0:	1d042583          	lw	a1,464(s0)
    8000ccf4:	8526                	mv	a0,s1
    8000ccf6:	c52fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29451
    dbuf_free(&fd->pc2line);
    8000ccfa:	1d840513          	addi	a0,s0,472
    8000ccfe:	6a9440ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:29453
    js_free(ctx, fd->source);
    8000cd02:	20843583          	ld	a1,520(s0)
    8000cd06:	8526                	mv	a0,s1
    8000cd08:	aeefe0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29455
    if (fd->parent) {
    8000cd0c:	641c                	ld	a5,8(s0)
    8000cd0e:	c789                	beqz	a5,8000cd18 <js_free_function_def+0xf8>
quickjs-nuttx/quickjs.c:29457
        list_del(&fd->link);
    8000cd10:	02840513          	addi	a0,s0,40
    8000cd14:	e31fa0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:29459
    js_free(ctx, fd);
    8000cd18:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:29460
}
    8000cd1a:	7402                	ld	s0,32(sp)
    8000cd1c:	70a2                	ld	ra,40(sp)
    8000cd1e:	6942                	ld	s2,16(sp)
    8000cd20:	69a2                	ld	s3,8(sp)
quickjs-nuttx/quickjs.c:29459
    js_free(ctx, fd);
    8000cd22:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:29460
}
    8000cd24:	64e2                	ld	s1,24(sp)
    8000cd26:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:29459
    js_free(ctx, fd);
    8000cd28:	acefe06f          	j	8000aff6 <js_free>
quickjs-nuttx/quickjs.c:29410 (discriminator 3)
        js_free_function_def(ctx, fd1);
    8000cd2c:	fd858593          	addi	a1,a1,-40
    8000cd30:	8526                	mv	a0,s1
    8000cd32:	eefff0ef          	jal	ra,8000cc20 <js_free_function_def>
quickjs-nuttx/quickjs.c:29407 (discriminator 3)
    list_for_each_safe(el, el1, &fd->child_list) {
    8000cd36:	85ca                	mv	a1,s2
    8000cd38:	00893903          	ld	s2,8(s2)
    8000cd3c:	bdfd                	j	8000cc3a <js_free_function_def+0x1a>
quickjs-nuttx/quickjs.c:29421 (discriminator 3)
        JS_FreeValue(ctx, fd->cpool[i]);
    8000cd3e:	00491793          	slli	a5,s2,0x4
    8000cd42:	97ae                	add	a5,a5,a1
    8000cd44:	638c                	ld	a1,0(a5)
    8000cd46:	6790                	ld	a2,8(a5)
    8000cd48:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:29420 (discriminator 3)
    for(i = 0; i < fd->cpool_count; i++) {
    8000cd4a:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:29421 (discriminator 3)
        JS_FreeValue(ctx, fd->cpool[i]);
    8000cd4c:	a53fe0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:29420 (discriminator 3)
    for(i = 0; i < fd->cpool_count; i++) {
    8000cd50:	b725                	j	8000cc78 <js_free_function_def+0x58>
quickjs-nuttx/quickjs.c:29428 (discriminator 3)
        JS_FreeAtom(ctx, fd->vars[i].var_name);
    8000cd52:	00491793          	slli	a5,s2,0x4
    8000cd56:	95be                	add	a1,a1,a5
    8000cd58:	418c                	lw	a1,0(a1)
    8000cd5a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:29427 (discriminator 3)
    for(i = 0; i < fd->var_count; i++) {
    8000cd5c:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:29428 (discriminator 3)
        JS_FreeAtom(ctx, fd->vars[i].var_name);
    8000cd5e:	beafe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29427 (discriminator 3)
    for(i = 0; i < fd->var_count; i++) {
    8000cd62:	bf15                	j	8000cc96 <js_free_function_def+0x76>
quickjs-nuttx/quickjs.c:29432 (discriminator 3)
        JS_FreeAtom(ctx, fd->args[i].var_name);
    8000cd64:	00491793          	slli	a5,s2,0x4
    8000cd68:	95be                	add	a1,a1,a5
    8000cd6a:	418c                	lw	a1,0(a1)
    8000cd6c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:29431 (discriminator 3)
    for(i = 0; i < fd->arg_count; i++) {
    8000cd6e:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:29432 (discriminator 3)
        JS_FreeAtom(ctx, fd->args[i].var_name);
    8000cd70:	bd8fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29431 (discriminator 3)
    for(i = 0; i < fd->arg_count; i++) {
    8000cd74:	bf15                	j	8000cca8 <js_free_function_def+0x88>
quickjs-nuttx/quickjs.c:29437 (discriminator 3)
        JS_FreeAtom(ctx, fd->global_vars[i].var_name);
    8000cd76:	00491793          	slli	a5,s2,0x4
    8000cd7a:	95be                	add	a1,a1,a5
    8000cd7c:	45cc                	lw	a1,12(a1)
    8000cd7e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:29436 (discriminator 3)
    for(i = 0; i < fd->global_var_count; i++) {
    8000cd80:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:29437 (discriminator 3)
        JS_FreeAtom(ctx, fd->global_vars[i].var_name);
    8000cd82:	bc6fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29436 (discriminator 3)
    for(i = 0; i < fd->global_var_count; i++) {
    8000cd86:	bf15                	j	8000ccba <js_free_function_def+0x9a>
quickjs-nuttx/quickjs.c:29443 (discriminator 3)
        JS_FreeAtom(ctx, cv->var_name);
    8000cd88:	00391793          	slli	a5,s2,0x3
    8000cd8c:	95be                	add	a1,a1,a5
    8000cd8e:	41cc                	lw	a1,4(a1)
    8000cd90:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:29441 (discriminator 3)
    for(i = 0; i < fd->closure_var_count; i++) {
    8000cd92:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:29443 (discriminator 3)
        JS_FreeAtom(ctx, cv->var_name);
    8000cd94:	bb4fe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:29441 (discriminator 3)
    for(i = 0; i < fd->closure_var_count; i++) {
    8000cd98:	bf1d                	j	8000ccce <js_free_function_def+0xae>

000000008000cd9a <JS_CompactBigInt1>:
JS_CompactBigInt1():
quickjs-nuttx/quickjs.c:12277
{
    8000cd9a:	711d                	addi	sp,sp,-96
    8000cd9c:	e8a2                	sd	s0,80(sp)
    8000cd9e:	e4a6                	sd	s1,72(sp)
    8000cda0:	ec86                	sd	ra,88(sp)
    8000cda2:	e0ca                	sd	s2,64(sp)
    8000cda4:	e02e                	sd	a1,0(sp)
    8000cda6:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:12281
    if (JS_VALUE_GET_TAG(val) != JS_TAG_BIG_INT)
    8000cda8:	0006071b          	sext.w	a4,a2
    8000cdac:	57d9                	li	a5,-10
    8000cdae:	842e                	mv	s0,a1
    8000cdb0:	84b2                	mv	s1,a2
    8000cdb2:	00f70563          	beq	a4,a5,8000cdbc <JS_CompactBigInt1+0x22>
quickjs-nuttx/quickjs.c:12293
    return val;
    8000cdb6:	f022                	sd	s0,32(sp)
    8000cdb8:	f426                	sd	s1,40(sp)
    8000cdba:	a099                	j	8000ce00 <JS_CompactBigInt1+0x66>
quickjs-nuttx/quickjs.c:12284
    if (convert_to_safe_integer && bf_get_int64(&v, a, 0) == 0 &&
    8000cdbc:	c2b5                	beqz	a3,8000ce20 <JS_CompactBigInt1+0x86>
    8000cdbe:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:12284 (discriminator 1)
    8000cdc0:	4601                	li	a2,0
    8000cdc2:	05a1                	addi	a1,a1,8
    8000cdc4:	0828                	addi	a0,sp,24
    8000cdc6:	2a84c0ef          	jal	ra,8005906e <bf_get_int64>
    8000cdca:	e939                	bnez	a0,8000ce20 <JS_CompactBigInt1+0x86>
quickjs-nuttx/quickjs.c:12285 (discriminator 2)
        v >= -MAX_SAFE_INTEGER && v <= MAX_SAFE_INTEGER) {
    8000cdcc:	6762                	ld	a4,24(sp)
    8000cdce:	57fd                	li	a5,-1
    8000cdd0:	83ad                	srli	a5,a5,0xb
    8000cdd2:	973e                	add	a4,a4,a5
    8000cdd4:	bff00793          	li	a5,-1025
    8000cdd8:	83a9                	srli	a5,a5,0xa
    8000cdda:	04e7e363          	bltu	a5,a4,8000ce20 <JS_CompactBigInt1+0x86>
quickjs-nuttx/quickjs.c:12286
        JS_FreeValue(ctx, val);
    8000cdde:	6582                	ld	a1,0(sp)
    8000cde0:	6622                	ld	a2,8(sp)
    8000cde2:	854a                	mv	a0,s2
    8000cde4:	9bbfe0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12287
        return JS_NewInt64(ctx, v);
    8000cde8:	6762                	ld	a4,24(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8000cdea:	0007079b          	sext.w	a5,a4
    8000cdee:	02f71163          	bne	a4,a5,8000ce10 <JS_CompactBigInt1+0x76>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8000cdf2:	da02                	sw	zero,52(sp)
    8000cdf4:	d83e                	sw	a5,48(sp)
    8000cdf6:	7742                	ld	a4,48(sp)
    8000cdf8:	f03a                	sd	a4,32(sp)
    8000cdfa:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8000cdfc:	d03e                	sw	a5,32(sp)
    8000cdfe:	f43a                	sd	a4,40(sp)
JS_CompactBigInt1():
quickjs-nuttx/quickjs.c:12294
}
    8000ce00:	60e6                	ld	ra,88(sp)
    8000ce02:	6446                	ld	s0,80(sp)
    8000ce04:	7502                	ld	a0,32(sp)
    8000ce06:	75a2                	ld	a1,40(sp)
    8000ce08:	64a6                	ld	s1,72(sp)
    8000ce0a:	6906                	ld	s2,64(sp)
    8000ce0c:	6125                	addi	sp,sp,96
    8000ce0e:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8000ce10:	d22777d3          	fcvt.d.l	fa5,a4
    8000ce14:	471d                	li	a4,7
    8000ce16:	e20787d3          	fmv.x.d	a5,fa5
JS_CompactBigInt1():
quickjs-nuttx/quickjs.h:230
    return v;
    8000ce1a:	b03e                	fsd	fa5,32(sp)
    8000ce1c:	2781                	sext.w	a5,a5
    8000ce1e:	bff9                	j	8000cdfc <JS_CompactBigInt1+0x62>
quickjs-nuttx/quickjs.c:12288
    } else if (a->expn == BF_EXP_ZERO && a->sign) {
    8000ce20:	6c18                	ld	a4,24(s0)
    8000ce22:	57fd                	li	a5,-1
    8000ce24:	17fe                	slli	a5,a5,0x3f
    8000ce26:	f8f718e3          	bne	a4,a5,8000cdb6 <JS_CompactBigInt1+0x1c>
quickjs-nuttx/quickjs.c:12288 (discriminator 1)
    8000ce2a:	481c                	lw	a5,16(s0)
    8000ce2c:	d7c9                	beqz	a5,8000cdb6 <JS_CompactBigInt1+0x1c>
quickjs-nuttx/quickjs.c:12290
        assert(p->header.ref_count == 1);
    8000ce2e:	4018                	lw	a4,0(s0)
    8000ce30:	4785                	li	a5,1
    8000ce32:	00f70b63          	beq	a4,a5,8000ce48 <JS_CompactBigInt1+0xae>
quickjs-nuttx/quickjs.c:12290 (discriminator 1)
    8000ce36:	658d                	lui	a1,0x3
    8000ce38:	4601                	li	a2,0
    8000ce3a:	0589                	addi	a1,a1,2
    8000ce3c:	0005c517          	auipc	a0,0x5c
    8000ce40:	75c50513          	addi	a0,a0,1884 # 80069598 <qjsc_repl+0x3fe8>
    8000ce44:	319530ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:12291 (discriminator 2)
        a->sign = 0;
    8000ce48:	00042823          	sw	zero,16(s0)
    8000ce4c:	b7ad                	j	8000cdb6 <JS_CompactBigInt1+0x1c>

000000008000ce4e <JS_CompactBigInt>:
JS_CompactBigInt():
quickjs-nuttx/quickjs.c:12301
{
    8000ce4e:	7179                	addi	sp,sp,-48
    8000ce50:	f022                	sd	s0,32(sp)
    8000ce52:	f406                	sd	ra,40(sp)
    8000ce54:	842a                	mv	s0,a0
    8000ce56:	e02e                	sd	a1,0(sp)
    8000ce58:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:12302
    return JS_CompactBigInt1(ctx, val, is_math_mode(ctx));
    8000ce5a:	d3bfa0ef          	jal	ra,80007b94 <is_math_mode>
    8000ce5e:	86aa                	mv	a3,a0
    8000ce60:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:12303
}
    8000ce62:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs.c:12302
    return JS_CompactBigInt1(ctx, val, is_math_mode(ctx));
    8000ce64:	6582                	ld	a1,0(sp)
    8000ce66:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:12303
}
    8000ce68:	70a2                	ld	ra,40(sp)
    8000ce6a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:12302
    return JS_CompactBigInt1(ctx, val, is_math_mode(ctx));
    8000ce6c:	f2fff06f          	j	8000cd9a <JS_CompactBigInt1>

000000008000ce70 <js_compare_bigfloat>:
js_compare_bigfloat():
quickjs-nuttx/quickjs.c:13766
{
    8000ce70:	7171                	addi	sp,sp,-176
    8000ce72:	e152                	sd	s4,128(sp)
quickjs-nuttx/quickjs.c:13770
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8000ce74:	02010a13          	addi	s4,sp,32
quickjs-nuttx/quickjs.c:13766
{
    8000ce78:	f122                	sd	s0,160(sp)
    8000ce7a:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:13770
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8000ce7c:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:13766
{
    8000ce7e:	e54e                	sd	s3,136(sp)
    8000ce80:	f506                	sd	ra,168(sp)
    8000ce82:	ed26                	sd	s1,152(sp)
    8000ce84:	e94a                	sd	s2,144(sp)
    8000ce86:	fcd6                	sd	s5,120(sp)
    8000ce88:	89aa                	mv	s3,a0
    8000ce8a:	e832                	sd	a2,16(sp)
    8000ce8c:	ec36                	sd	a3,24(sp)
    8000ce8e:	e03a                	sd	a4,0(sp)
    8000ce90:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:13770
    a = JS_ToBigFloat(ctx, &a_s, op1);
    8000ce92:	dd6fd0ef          	jal	ra,8000a468 <JS_ToBigFloat>
quickjs-nuttx/quickjs.c:13771
    if (!a) {
    8000ce96:	e10d                	bnez	a0,8000ceb8 <js_compare_bigfloat+0x48>
quickjs-nuttx/quickjs.c:13772
        JS_FreeValue(ctx, op2);
    8000ce98:	6582                	ld	a1,0(sp)
    8000ce9a:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs.c:13779
        JS_FreeValue(ctx, op1);
    8000ce9c:	854e                	mv	a0,s3
    8000ce9e:	901fe0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13780
        return -1;
    8000cea2:	547d                	li	s0,-1
quickjs-nuttx/quickjs.c:13808
}
    8000cea4:	70aa                	ld	ra,168(sp)
    8000cea6:	8522                	mv	a0,s0
    8000cea8:	740a                	ld	s0,160(sp)
    8000ceaa:	64ea                	ld	s1,152(sp)
    8000ceac:	694a                	ld	s2,144(sp)
    8000ceae:	69aa                	ld	s3,136(sp)
    8000ceb0:	6a0a                	ld	s4,128(sp)
    8000ceb2:	7ae6                	ld	s5,120(sp)
    8000ceb4:	614d                	addi	sp,sp,176
    8000ceb6:	8082                	ret
quickjs-nuttx/quickjs.c:13775
    b = JS_ToBigFloat(ctx, &b_s, op2);
    8000ceb8:	6602                	ld	a2,0(sp)
    8000ceba:	66a2                	ld	a3,8(sp)
    8000cebc:	04810a93          	addi	s5,sp,72
    8000cec0:	84aa                	mv	s1,a0
    8000cec2:	85d6                	mv	a1,s5
    8000cec4:	854e                	mv	a0,s3
    8000cec6:	da2fd0ef          	jal	ra,8000a468 <JS_ToBigFloat>
    8000ceca:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:13776
    if (!b) {
    8000cecc:	e909                	bnez	a0,8000cede <js_compare_bigfloat+0x6e>
quickjs-nuttx/quickjs.c:13777
        if (a == &a_s)
    8000cece:	01449563          	bne	s1,s4,8000ced8 <js_compare_bigfloat+0x68>
quickjs-nuttx/quickjs.c:13778
            bf_delete(a);
    8000ced2:	8526                	mv	a0,s1
    8000ced4:	d82fd0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:13779
        JS_FreeValue(ctx, op1);
    8000ced8:	65c2                	ld	a1,16(sp)
    8000ceda:	6662                	ld	a2,24(sp)
    8000cedc:	b7c1                	j	8000ce9c <js_compare_bigfloat+0x2c>
quickjs-nuttx/quickjs.c:13782
    switch(op) {
    8000cede:	f5c4059b          	addiw	a1,s0,-164
    8000cee2:	0005871b          	sext.w	a4,a1
    8000cee6:	4799                	li	a5,6
    8000cee8:	06e7eb63          	bltu	a5,a4,8000cf5e <js_compare_bigfloat+0xee>
    8000ceec:	02059793          	slli	a5,a1,0x20
    8000cef0:	01e7d593          	srli	a1,a5,0x1e
    8000cef4:	0005d717          	auipc	a4,0x5d
    8000cef8:	89070713          	addi	a4,a4,-1904 # 80069784 <qjsc_repl+0x41d4>
    8000cefc:	95ba                	add	a1,a1,a4
    8000cefe:	419c                	lw	a5,0(a1)
    8000cf00:	97ba                	add	a5,a5,a4
    8000cf02:	8782                	jr	a5
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    return bf_cmp(a, b) < 0;
    8000cf04:	85aa                	mv	a1,a0
    8000cf06:	8526                	mv	a0,s1
    8000cf08:	2654b0ef          	jal	ra,8005896c <bf_cmp>
    8000cf0c:	01f5541b          	srliw	s0,a0,0x1f
js_compare_bigfloat():
quickjs-nuttx/quickjs.c:13801
    if (a == &a_s)
    8000cf10:	01449563          	bne	s1,s4,8000cf1a <js_compare_bigfloat+0xaa>
quickjs-nuttx/quickjs.c:13802
        bf_delete(a);
    8000cf14:	8526                	mv	a0,s1
    8000cf16:	d40fd0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:13803
    if (b == &b_s)
    8000cf1a:	01591563          	bne	s2,s5,8000cf24 <js_compare_bigfloat+0xb4>
quickjs-nuttx/quickjs.c:13804
        bf_delete(b);
    8000cf1e:	854a                	mv	a0,s2
    8000cf20:	d36fd0ef          	jal	ra,8000a456 <bf_delete>
quickjs-nuttx/quickjs.c:13805
    JS_FreeValue(ctx, op1);
    8000cf24:	65c2                	ld	a1,16(sp)
    8000cf26:	6662                	ld	a2,24(sp)
    8000cf28:	854e                	mv	a0,s3
    8000cf2a:	875fe0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13806
    JS_FreeValue(ctx, op2);
    8000cf2e:	6582                	ld	a1,0(sp)
    8000cf30:	6622                	ld	a2,8(sp)
    8000cf32:	854e                	mv	a0,s3
    8000cf34:	86bfe0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13807
    return res;
    8000cf38:	b7b5                	j	8000cea4 <js_compare_bigfloat+0x34>
bf_cmp_le():
quickjs-nuttx/libbf.h:274
    return bf_cmp(a, b) <= 0;
    8000cf3a:	85aa                	mv	a1,a0
    8000cf3c:	8526                	mv	a0,s1
    8000cf3e:	22f4b0ef          	jal	ra,8005896c <bf_cmp>
    8000cf42:	00152413          	slti	s0,a0,1
js_compare_bigfloat():
quickjs-nuttx/quickjs.c:13794
        break;
    8000cf46:	b7e9                	j	8000cf10 <js_compare_bigfloat+0xa0>
bf_cmp_lt():
quickjs-nuttx/libbf.h:279
    return bf_cmp(a, b) < 0;
    8000cf48:	85a6                	mv	a1,s1
    8000cf4a:	bf7d                	j	8000cf08 <js_compare_bigfloat+0x98>
bf_cmp_le():
quickjs-nuttx/libbf.h:274
    return bf_cmp(a, b) <= 0;
    8000cf4c:	85a6                	mv	a1,s1
    8000cf4e:	bfc5                	j	8000cf3e <js_compare_bigfloat+0xce>
bf_cmp_eq():
quickjs-nuttx/libbf.h:269
    return bf_cmp(a, b) == 0;
    8000cf50:	85aa                	mv	a1,a0
    8000cf52:	8526                	mv	a0,s1
    8000cf54:	2194b0ef          	jal	ra,8005896c <bf_cmp>
    8000cf58:	00153413          	seqz	s0,a0
js_compare_bigfloat():
quickjs-nuttx/quickjs.c:13797
        break;
    8000cf5c:	bf55                	j	8000cf10 <js_compare_bigfloat+0xa0>
quickjs-nuttx/quickjs.c:13799
        abort();
    8000cf5e:	425550ef          	jal	ra,80062b82 <abort>

000000008000cf62 <JS_MarkValue>:
JS_MarkValue():
quickjs-nuttx/quickjs.c:5595
    if (JS_VALUE_HAS_REF_COUNT(val)) {
    8000cf62:	2609                	addiw	a2,a2,2
    8000cf64:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:5594
{
    8000cf66:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:5595
    if (JS_VALUE_HAS_REF_COUNT(val)) {
    8000cf68:	00c7e463          	bltu	a5,a2,8000cf70 <JS_MarkValue+0xe>
quickjs-nuttx/quickjs.c:5605
}
    8000cf6c:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5599
            mark_func(rt, JS_VALUE_GET_PTR(val));
    8000cf6e:	8682                	jr	a3
quickjs-nuttx/quickjs.c:5605
}
    8000cf70:	0141                	addi	sp,sp,16
    8000cf72:	8082                	ret

000000008000cf74 <js_regexp_string_iterator_mark>:
js_regexp_string_iterator_mark():
quickjs-nuttx/quickjs.c:44190
{
    8000cf74:	7179                	addi	sp,sp,-48
    8000cf76:	f406                	sd	ra,40(sp)
    8000cf78:	f022                	sd	s0,32(sp)
    8000cf7a:	ec26                	sd	s1,24(sp)
    8000cf7c:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs.c:44192
    JSRegExpStringIteratorData *it = p->u.regexp_string_iterator_data;
    8000cf7e:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:44190
{
    8000cf80:	e02e                	sd	a1,0(sp)
    8000cf82:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:44193
    if (it) {
    8000cf84:	c015                	beqz	s0,8000cfa8 <js_regexp_string_iterator_mark+0x34>
quickjs-nuttx/quickjs.c:44194
        JS_MarkValue(rt, it->iterating_regexp, mark_func);
    8000cf86:	600c                	ld	a1,0(s0)
    8000cf88:	6410                	ld	a2,8(s0)
    8000cf8a:	84aa                	mv	s1,a0
    8000cf8c:	8936                	mv	s2,a3
    8000cf8e:	fd5ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:44195
        JS_MarkValue(rt, it->iterated_string, mark_func);
    8000cf92:	680c                	ld	a1,16(s0)
    8000cf94:	6c10                	ld	a2,24(s0)
quickjs-nuttx/quickjs.c:44197
}
    8000cf96:	7402                	ld	s0,32(sp)
    8000cf98:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs.c:44195
        JS_MarkValue(rt, it->iterated_string, mark_func);
    8000cf9a:	86ca                	mv	a3,s2
    8000cf9c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:44197
}
    8000cf9e:	6942                	ld	s2,16(sp)
    8000cfa0:	64e2                	ld	s1,24(sp)
    8000cfa2:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:44195
        JS_MarkValue(rt, it->iterated_string, mark_func);
    8000cfa4:	fbfff06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:44197
}
    8000cfa8:	70a2                	ld	ra,40(sp)
    8000cfaa:	7402                	ld	s0,32(sp)
    8000cfac:	64e2                	ld	s1,24(sp)
    8000cfae:	6942                	ld	s2,16(sp)
    8000cfb0:	6145                	addi	sp,sp,48
    8000cfb2:	8082                	ret

000000008000cfb4 <js_array_iterator_mark>:
js_array_iterator_mark():
quickjs-nuttx/quickjs.c:40586
    JSArrayIteratorData *it = p->u.array_iterator_data;
    8000cfb4:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:40584
{
    8000cfb6:	1141                	addi	sp,sp,-16
    8000cfb8:	e02e                	sd	a1,0(sp)
    8000cfba:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:40587
    if (it) {
    8000cfbc:	c791                	beqz	a5,8000cfc8 <js_array_iterator_mark+0x14>
quickjs-nuttx/quickjs.c:40588
        JS_MarkValue(rt, it->obj, mark_func);
    8000cfbe:	638c                	ld	a1,0(a5)
    8000cfc0:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:40590
}
    8000cfc2:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:40588
        JS_MarkValue(rt, it->obj, mark_func);
    8000cfc4:	f9fff06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:40590
}
    8000cfc8:	0141                	addi	sp,sp,16
    8000cfca:	8082                	ret

000000008000cfcc <js_map_iterator_mark>:
js_map_iterator_mark():
quickjs-nuttx/quickjs.c:47457
    it = p->u.map_iterator_data;
    8000cfcc:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:47454
{
    8000cfce:	1141                	addi	sp,sp,-16
    8000cfd0:	e02e                	sd	a1,0(sp)
    8000cfd2:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47458
    if (it) {
    8000cfd4:	c791                	beqz	a5,8000cfe0 <js_map_iterator_mark+0x14>
quickjs-nuttx/quickjs.c:47460
        JS_MarkValue(rt, it->obj, mark_func);
    8000cfd6:	638c                	ld	a1,0(a5)
    8000cfd8:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:47462
}
    8000cfda:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:47460
        JS_MarkValue(rt, it->obj, mark_func);
    8000cfdc:	f87ff06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:47462
}
    8000cfe0:	0141                	addi	sp,sp,16
    8000cfe2:	8082                	ret

000000008000cfe4 <js_map_mark>:
js_map_mark():
quickjs-nuttx/quickjs.c:47409
{
    8000cfe4:	715d                	addi	sp,sp,-80
    8000cfe6:	e486                	sd	ra,72(sp)
    8000cfe8:	e0a2                	sd	s0,64(sp)
    8000cfea:	fc26                	sd	s1,56(sp)
    8000cfec:	f84a                	sd	s2,48(sp)
    8000cfee:	f44e                	sd	s3,40(sp)
    8000cff0:	f052                	sd	s4,32(sp)
    8000cff2:	ec56                	sd	s5,24(sp)
quickjs-nuttx/quickjs.c:47415
    s = p->u.map_state;
    8000cff4:	7984                	ld	s1,48(a1)
quickjs-nuttx/quickjs.c:47409
{
    8000cff6:	e02e                	sd	a1,0(sp)
    8000cff8:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47416
    if (s) {
    8000cffa:	c881                	beqz	s1,8000d00a <js_map_mark+0x26>
quickjs-nuttx/quickjs.c:47417
        list_for_each(el, &s->records) {
    8000cffc:	6880                	ld	s0,16(s1)
    8000cffe:	892a                	mv	s2,a0
