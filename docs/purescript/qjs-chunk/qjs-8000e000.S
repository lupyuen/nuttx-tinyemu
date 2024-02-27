    8000d000:	89b6                	mv	s3,a3
    8000d002:	00848a93          	addi	s5,s1,8
quickjs-nuttx/quickjs.c:47417 (discriminator 1)
    8000d006:	01541b63          	bne	s0,s5,8000d01c <js_map_mark+0x38>
quickjs-nuttx/quickjs.c:47424
}
    8000d00a:	60a6                	ld	ra,72(sp)
    8000d00c:	6406                	ld	s0,64(sp)
    8000d00e:	74e2                	ld	s1,56(sp)
    8000d010:	7942                	ld	s2,48(sp)
    8000d012:	79a2                	ld	s3,40(sp)
    8000d014:	7a02                	ld	s4,32(sp)
    8000d016:	6ae2                	ld	s5,24(sp)
    8000d018:	6161                	addi	sp,sp,80
    8000d01a:	8082                	ret
quickjs-nuttx/quickjs.c:47419
            if (!s->is_weak)
    8000d01c:	409c                	lw	a5,0(s1)
quickjs-nuttx/quickjs.c:47418
            mr = list_entry(el, JSMapRecord, link);
    8000d01e:	fe840a13          	addi	s4,s0,-24
quickjs-nuttx/quickjs.c:47419
            if (!s->is_weak)
    8000d022:	eb89                	bnez	a5,8000d034 <js_map_mark+0x50>
quickjs-nuttx/quickjs.c:47420
                JS_MarkValue(rt, mr->key, mark_func);
    8000d024:	038a3583          	ld	a1,56(s4)
    8000d028:	040a3603          	ld	a2,64(s4)
    8000d02c:	86ce                	mv	a3,s3
    8000d02e:	854a                	mv	a0,s2
    8000d030:	f33ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:47421 (discriminator 2)
            JS_MarkValue(rt, mr->value, mark_func);
    8000d034:	048a3583          	ld	a1,72(s4)
    8000d038:	050a3603          	ld	a2,80(s4)
    8000d03c:	86ce                	mv	a3,s3
    8000d03e:	854a                	mv	a0,s2
    8000d040:	f23ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:47417 (discriminator 2)
        list_for_each(el, &s->records) {
    8000d044:	6400                	ld	s0,8(s0)
    8000d046:	b7c1                	j	8000d006 <js_map_mark+0x22>

000000008000d048 <js_for_in_iterator_mark>:
js_for_in_iterator_mark():
quickjs-nuttx/quickjs.c:5411
    JS_MarkValue(rt, it->obj, mark_func);
    8000d048:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:5408
{
    8000d04a:	1141                	addi	sp,sp,-16
    8000d04c:	e02e                	sd	a1,0(sp)
    8000d04e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5411
    JS_MarkValue(rt, it->obj, mark_func);
    8000d050:	638c                	ld	a1,0(a5)
    8000d052:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:5412
}
    8000d054:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5411
    JS_MarkValue(rt, it->obj, mark_func);
    8000d056:	f0dff06f          	j	8000cf62 <JS_MarkValue>

000000008000d05a <js_bound_function_mark>:
js_bound_function_mark():
quickjs-nuttx/quickjs.c:5379
{
    8000d05a:	7139                	addi	sp,sp,-64
    8000d05c:	fc06                	sd	ra,56(sp)
    8000d05e:	f426                	sd	s1,40(sp)
    8000d060:	f04a                	sd	s2,32(sp)
    8000d062:	ec4e                	sd	s3,24(sp)
    8000d064:	f822                	sd	s0,48(sp)
quickjs-nuttx/quickjs.c:5381
    JSBoundFunction *bf = p->u.bound_function;
    8000d066:	7980                	ld	s0,48(a1)
quickjs-nuttx/quickjs.c:5379
{
    8000d068:	e02e                	sd	a1,0(sp)
    8000d06a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5384
    JS_MarkValue(rt, bf->func_obj, mark_func);
    8000d06c:	600c                	ld	a1,0(s0)
    8000d06e:	6410                	ld	a2,8(s0)
quickjs-nuttx/quickjs.c:5379
{
    8000d070:	892a                	mv	s2,a0
    8000d072:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:5384
    JS_MarkValue(rt, bf->func_obj, mark_func);
    8000d074:	eefff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5385
    JS_MarkValue(rt, bf->this_val, mark_func);
    8000d078:	680c                	ld	a1,16(s0)
    8000d07a:	6c10                	ld	a2,24(s0)
    8000d07c:	86ce                	mv	a3,s3
    8000d07e:	854a                	mv	a0,s2
    8000d080:	ee3ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5386
    for(i = 0; i < bf->argc; i++)
    8000d084:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:5386 (discriminator 1)
    8000d086:	501c                	lw	a5,32(s0)
    8000d088:	00f4c963          	blt	s1,a5,8000d09a <js_bound_function_mark+0x40>
quickjs-nuttx/quickjs.c:5388
}
    8000d08c:	70e2                	ld	ra,56(sp)
    8000d08e:	7442                	ld	s0,48(sp)
    8000d090:	74a2                	ld	s1,40(sp)
    8000d092:	7902                	ld	s2,32(sp)
    8000d094:	69e2                	ld	s3,24(sp)
    8000d096:	6121                	addi	sp,sp,64
    8000d098:	8082                	ret
quickjs-nuttx/quickjs.c:5387 (discriminator 3)
        JS_MarkValue(rt, bf->argv[i], mark_func);
    8000d09a:	00248793          	addi	a5,s1,2
    8000d09e:	0792                	slli	a5,a5,0x4
    8000d0a0:	97a2                	add	a5,a5,s0
    8000d0a2:	678c                	ld	a1,8(a5)
    8000d0a4:	6b90                	ld	a2,16(a5)
    8000d0a6:	86ce                	mv	a3,s3
    8000d0a8:	854a                	mv	a0,s2
    8000d0aa:	eb9ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5386 (discriminator 3)
    for(i = 0; i < bf->argc; i++)
    8000d0ae:	2485                	addiw	s1,s1,1
    8000d0b0:	bfd9                	j	8000d086 <js_bound_function_mark+0x2c>

000000008000d0b2 <js_object_data_mark>:
js_object_data_mark():
quickjs-nuttx/quickjs.c:5291
{
    8000d0b2:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:5293
    JS_MarkValue(rt, p->u.object_data, mark_func);
    8000d0b4:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:5291
{
    8000d0b6:	e02e                	sd	a1,0(sp)
    8000d0b8:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:5293
    JS_MarkValue(rt, p->u.object_data, mark_func);
    8000d0ba:	798c                	ld	a1,48(a1)
    8000d0bc:	7f90                	ld	a2,56(a5)
quickjs-nuttx/quickjs.c:5294
}
    8000d0be:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5293
    JS_MarkValue(rt, p->u.object_data, mark_func);
    8000d0c0:	ea3ff06f          	j	8000cf62 <JS_MarkValue>

000000008000d0c4 <js_array_mark>:
js_array_mark():
quickjs-nuttx/quickjs.c:5273
{
    8000d0c4:	7139                	addi	sp,sp,-64
    8000d0c6:	f822                	sd	s0,48(sp)
    8000d0c8:	f426                	sd	s1,40(sp)
    8000d0ca:	f04a                	sd	s2,32(sp)
    8000d0cc:	ec4e                	sd	s3,24(sp)
    8000d0ce:	fc06                	sd	ra,56(sp)
    8000d0d0:	892a                	mv	s2,a0
    8000d0d2:	e02e                	sd	a1,0(sp)
    8000d0d4:	e432                	sd	a2,8(sp)
    8000d0d6:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:5274
    JSObject *p = JS_VALUE_GET_OBJ(val);
    8000d0d8:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:5277
    for(i = 0; i < p->u.array.count; i++) {
    8000d0da:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:5277 (discriminator 1)
    8000d0dc:	40bc                	lw	a5,64(s1)
    8000d0de:	00f46963          	bltu	s0,a5,8000d0f0 <js_array_mark+0x2c>
quickjs-nuttx/quickjs.c:5280
}
    8000d0e2:	70e2                	ld	ra,56(sp)
    8000d0e4:	7442                	ld	s0,48(sp)
    8000d0e6:	74a2                	ld	s1,40(sp)
    8000d0e8:	7902                	ld	s2,32(sp)
    8000d0ea:	69e2                	ld	s3,24(sp)
    8000d0ec:	6121                	addi	sp,sp,64
    8000d0ee:	8082                	ret
quickjs-nuttx/quickjs.c:5278 (discriminator 3)
        JS_MarkValue(rt, p->u.array.u.values[i], mark_func);
    8000d0f0:	7c9c                	ld	a5,56(s1)
    8000d0f2:	00441713          	slli	a4,s0,0x4
    8000d0f6:	86ce                	mv	a3,s3
    8000d0f8:	97ba                	add	a5,a5,a4
    8000d0fa:	638c                	ld	a1,0(a5)
    8000d0fc:	6790                	ld	a2,8(a5)
    8000d0fe:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:5277 (discriminator 3)
    for(i = 0; i < p->u.array.count; i++) {
    8000d100:	2405                	addiw	s0,s0,1
quickjs-nuttx/quickjs.c:5278 (discriminator 3)
        JS_MarkValue(rt, p->u.array.u.values[i], mark_func);
    8000d102:	e61ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5277 (discriminator 3)
    for(i = 0; i < p->u.array.count; i++) {
    8000d106:	bfd9                	j	8000d0dc <js_array_mark+0x18>

000000008000d108 <mark_children>:
mark_children():
quickjs-nuttx/quickjs.c:5609
{
    8000d108:	7159                	addi	sp,sp,-112
    8000d10a:	f486                	sd	ra,104(sp)
    8000d10c:	f0a2                	sd	s0,96(sp)
    8000d10e:	eca6                	sd	s1,88(sp)
    8000d110:	e8ca                	sd	s2,80(sp)
    8000d112:	e4ce                	sd	s3,72(sp)
    8000d114:	e0d2                	sd	s4,64(sp)
    8000d116:	fc56                	sd	s5,56(sp)
    8000d118:	f85a                	sd	s6,48(sp)
    8000d11a:	f45e                	sd	s7,40(sp)
    8000d11c:	f062                	sd	s8,32(sp)
    8000d11e:	ec66                	sd	s9,24(sp)
quickjs-nuttx/quickjs.c:5610
    switch(gp->gc_obj_type) {
    8000d120:	0045e783          	lwu	a5,4(a1) # 3004 <asinh-0x7fffcffc>
    8000d124:	4715                	li	a4,5
    8000d126:	8bbd                	andi	a5,a5,15
    8000d128:	32f76d63          	bltu	a4,a5,8000d462 <mark_children+0x35a>
    8000d12c:	0005c717          	auipc	a4,0x5c
    8000d130:	67470713          	addi	a4,a4,1652 # 800697a0 <qjsc_repl+0x41f0>
    8000d134:	078a                	slli	a5,a5,0x2
    8000d136:	97ba                	add	a5,a5,a4
    8000d138:	439c                	lw	a5,0(a5)
    8000d13a:	84aa                	mv	s1,a0
    8000d13c:	842e                	mv	s0,a1
    8000d13e:	97ba                	add	a5,a5,a4
    8000d140:	8932                	mv	s2,a2
    8000d142:	8782                	jr	a5
quickjs-nuttx/quickjs.c:5617
            sh = p->shape;
    8000d144:	0185bb03          	ld	s6,24(a1)
quickjs-nuttx/quickjs.c:5621
            for(i = 0; i < sh->prop_count; i++) {
    8000d148:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:5625
                        if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    8000d14a:	4bc1                	li	s7,16
quickjs-nuttx/quickjs.c:5618
            mark_func(rt, &sh->header);
    8000d14c:	85da                	mv	a1,s6
    8000d14e:	9602                	jalr	a2
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8000d150:	040b0a93          	addi	s5,s6,64
mark_children():
quickjs-nuttx/quickjs.c:5630
                        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    8000d154:	02000c13          	li	s8,32
quickjs-nuttx/quickjs.c:5634
                        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    8000d158:	03000c93          	li	s9,48
quickjs-nuttx/quickjs.c:5621 (discriminator 1)
            for(i = 0; i < sh->prop_count; i++) {
    8000d15c:	028b2783          	lw	a5,40(s6)
    8000d160:	04fa4163          	blt	s4,a5,8000d1a2 <mark_children+0x9a>
quickjs-nuttx/quickjs.c:5644
            if (p->class_id != JS_CLASS_OBJECT) {
    8000d164:	00645783          	lhu	a5,6(s0)
    8000d168:	4705                	li	a4,1
    8000d16a:	2ee78e63          	beq	a5,a4,8000d466 <mark_children+0x35e>
quickjs-nuttx/quickjs.c:5646
                gc_mark = rt->class_array[p->class_id].gc_mark;
    8000d16e:	02800693          	li	a3,40
    8000d172:	02d787b3          	mul	a5,a5,a3
    8000d176:	78b8                	ld	a4,112(s1)
    8000d178:	97ba                	add	a5,a5,a4
    8000d17a:	6b9c                	ld	a5,16(a5)
quickjs-nuttx/quickjs.c:5647
                if (gc_mark)
    8000d17c:	2e078563          	beqz	a5,8000d466 <mark_children+0x35e>
quickjs-nuttx/quickjs.c:5648
                    gc_mark(rt, JS_MKPTR(JS_TAG_OBJECT, p), mark_func);
    8000d180:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:5714
}
    8000d182:	7406                	ld	s0,96(sp)
    8000d184:	70a6                	ld	ra,104(sp)
    8000d186:	69a6                	ld	s3,72(sp)
    8000d188:	6a06                	ld	s4,64(sp)
    8000d18a:	7ae2                	ld	s5,56(sp)
    8000d18c:	7b42                	ld	s6,48(sp)
    8000d18e:	7ba2                	ld	s7,40(sp)
    8000d190:	7c02                	ld	s8,32(sp)
    8000d192:	6ce2                	ld	s9,24(sp)
quickjs-nuttx/quickjs.c:5648
                    gc_mark(rt, JS_MKPTR(JS_TAG_OBJECT, p), mark_func);
    8000d194:	86ca                	mv	a3,s2
    8000d196:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5714
}
    8000d198:	6946                	ld	s2,80(sp)
    8000d19a:	64e6                	ld	s1,88(sp)
quickjs-nuttx/quickjs.c:5648
                    gc_mark(rt, JS_MKPTR(JS_TAG_OBJECT, p), mark_func);
    8000d19c:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:5714
}
    8000d19e:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:5648
                    gc_mark(rt, JS_MKPTR(JS_TAG_OBJECT, p), mark_func);
    8000d1a0:	8782                	jr	a5
quickjs-nuttx/quickjs.c:5623
                if (prs->atom != JS_ATOM_NULL) {
    8000d1a2:	004aa783          	lw	a5,4(s5)
    8000d1a6:	cb85                	beqz	a5,8000d1d6 <mark_children+0xce>
quickjs-nuttx/quickjs.c:5622
                JSProperty *pr = &p->prop[i];
    8000d1a8:	701c                	ld	a5,32(s0)
    8000d1aa:	004a1993          	slli	s3,s4,0x4
    8000d1ae:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:5624
                    if (prs->flags & JS_PROP_TMASK) {
    8000d1b0:	000aa783          	lw	a5,0(s5)
    8000d1b4:	01a7d79b          	srliw	a5,a5,0x1a
    8000d1b8:	0307f793          	andi	a5,a5,48
    8000d1bc:	cb9d                	beqz	a5,8000d1f2 <mark_children+0xea>
quickjs-nuttx/quickjs.c:5625
                        if ((prs->flags & JS_PROP_TMASK) == JS_PROP_GETSET) {
    8000d1be:	01779f63          	bne	a5,s7,8000d1dc <mark_children+0xd4>
quickjs-nuttx/quickjs.c:5626
                            if (pr->u.getset.getter)
    8000d1c2:	0009b583          	ld	a1,0(s3)
    8000d1c6:	c199                	beqz	a1,8000d1cc <mark_children+0xc4>
quickjs-nuttx/quickjs.c:5627
                                mark_func(rt, &pr->u.getset.getter->header);
    8000d1c8:	8526                	mv	a0,s1
    8000d1ca:	9902                	jalr	s2
quickjs-nuttx/quickjs.c:5628
                            if (pr->u.getset.setter)
    8000d1cc:	0089b583          	ld	a1,8(s3)
    8000d1d0:	c199                	beqz	a1,8000d1d6 <mark_children+0xce>
js_autoinit_mark():
quickjs-nuttx/quickjs.c:5172
    mark_func(rt, &js_autoinit_get_realm(pr)->header);
    8000d1d2:	8526                	mv	a0,s1
    8000d1d4:	9902                	jalr	s2
mark_children():
quickjs-nuttx/quickjs.c:5641 (discriminator 2)
                prs++;
    8000d1d6:	0aa1                	addi	s5,s5,8
quickjs-nuttx/quickjs.c:5621 (discriminator 2)
            for(i = 0; i < sh->prop_count; i++) {
    8000d1d8:	2a05                	addiw	s4,s4,1
    8000d1da:	b749                	j	8000d15c <mark_children+0x54>
quickjs-nuttx/quickjs.c:5630
                        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_VARREF) {
    8000d1dc:	01879563          	bne	a5,s8,8000d1e6 <mark_children+0xde>
quickjs-nuttx/quickjs.c:5633
                            mark_func(rt, &pr->u.var_ref->header);
    8000d1e0:	0009b583          	ld	a1,0(s3)
    8000d1e4:	b7fd                	j	8000d1d2 <mark_children+0xca>
quickjs-nuttx/quickjs.c:5634
                        } else if ((prs->flags & JS_PROP_TMASK) == JS_PROP_AUTOINIT) {
    8000d1e6:	ff9798e3          	bne	a5,s9,8000d1d6 <mark_children+0xce>
js_autoinit_get_realm():
quickjs-nuttx/quickjs.c:5156
    return (JSContext *)(pr->u.init.realm_and_id & ~3);
    8000d1ea:	0009b583          	ld	a1,0(s3)
js_autoinit_mark():
quickjs-nuttx/quickjs.c:5172
    mark_func(rt, &js_autoinit_get_realm(pr)->header);
    8000d1ee:	99f1                	andi	a1,a1,-4
    8000d1f0:	b7cd                	j	8000d1d2 <mark_children+0xca>
mark_children():
quickjs-nuttx/quickjs.c:5638
                        JS_MarkValue(rt, pr->u.value, mark_func);
    8000d1f2:	0009b583          	ld	a1,0(s3)
    8000d1f6:	0089b603          	ld	a2,8(s3)
    8000d1fa:	86ca                	mv	a3,s2
    8000d1fc:	8526                	mv	a0,s1
    8000d1fe:	d65ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
    8000d202:	bfd1                	j	8000d1d6 <mark_children+0xce>
quickjs-nuttx/quickjs.c:5658 (discriminator 3)
                JS_MarkValue(rt, b->cpool[i], mark_func);
    8000d204:	683c                	ld	a5,80(s0)
    8000d206:	00499713          	slli	a4,s3,0x4
    8000d20a:	86ca                	mv	a3,s2
    8000d20c:	97ba                	add	a5,a5,a4
    8000d20e:	638c                	ld	a1,0(a5)
    8000d210:	6790                	ld	a2,8(a5)
    8000d212:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5657 (discriminator 3)
            for(i = 0; i < b->cpool_count; i++) {
    8000d214:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:5658 (discriminator 3)
                JS_MarkValue(rt, b->cpool[i], mark_func);
    8000d216:	d4dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5657 (discriminator 1)
            for(i = 0; i < b->cpool_count; i++) {
    8000d21a:	4c3c                	lw	a5,88(s0)
    8000d21c:	fef9c4e3          	blt	s3,a5,8000d204 <mark_children+0xfc>
quickjs-nuttx/quickjs.c:5660
            if (b->realm)
    8000d220:	642c                	ld	a1,72(s0)
JS_MarkContext():
quickjs-nuttx/quickjs.c:2271
    if (ctx->array_shape)
    8000d222:	24058263          	beqz	a1,8000d466 <mark_children+0x35e>
mark_children():
quickjs-nuttx/quickjs.c:5714
}
    8000d226:	7406                	ld	s0,96(sp)
    8000d228:	70a6                	ld	ra,104(sp)
    8000d22a:	69a6                	ld	s3,72(sp)
    8000d22c:	6a06                	ld	s4,64(sp)
    8000d22e:	7ae2                	ld	s5,56(sp)
    8000d230:	7b42                	ld	s6,48(sp)
    8000d232:	7ba2                	ld	s7,40(sp)
    8000d234:	7c02                	ld	s8,32(sp)
    8000d236:	6ce2                	ld	s9,24(sp)
JS_MarkContext():
quickjs-nuttx/quickjs.c:2272
        mark_func(rt, &ctx->array_shape->header);
    8000d238:	8526                	mv	a0,s1
    8000d23a:	87ca                	mv	a5,s2
mark_children():
quickjs-nuttx/quickjs.c:5714
}
    8000d23c:	64e6                	ld	s1,88(sp)
    8000d23e:	6946                	ld	s2,80(sp)
    8000d240:	6165                	addi	sp,sp,112
JS_MarkContext():
quickjs-nuttx/quickjs.c:2272
        mark_func(rt, &ctx->array_shape->header);
    8000d242:	8782                	jr	a5
mark_children():
quickjs-nuttx/quickjs.c:5610
    switch(gp->gc_obj_type) {
    8000d244:	4981                	li	s3,0
    8000d246:	bfd1                	j	8000d21a <mark_children+0x112>
quickjs-nuttx/quickjs.c:5667
            if (var_ref->is_detached) {
    8000d248:	0055c783          	lbu	a5,5(a1)
    8000d24c:	8b85                	andi	a5,a5,1
    8000d24e:	c785                	beqz	a5,8000d276 <mark_children+0x16e>
quickjs-nuttx/quickjs.c:5668
                JS_MarkValue(rt, *var_ref->pvalue, mark_func);
    8000d250:	6d9c                	ld	a5,24(a1)
    8000d252:	86b2                	mv	a3,a2
    8000d254:	638c                	ld	a1,0(a5)
    8000d256:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:5714
}
    8000d258:	7406                	ld	s0,96(sp)
    8000d25a:	70a6                	ld	ra,104(sp)
    8000d25c:	6946                	ld	s2,80(sp)
    8000d25e:	69a6                	ld	s3,72(sp)
    8000d260:	6a06                	ld	s4,64(sp)
    8000d262:	7ae2                	ld	s5,56(sp)
    8000d264:	7b42                	ld	s6,48(sp)
    8000d266:	7ba2                	ld	s7,40(sp)
    8000d268:	7c02                	ld	s8,32(sp)
    8000d26a:	6ce2                	ld	s9,24(sp)
quickjs-nuttx/quickjs.c:5694
            JS_MarkValue(rt, s->resolving_funcs[1], mark_func);
    8000d26c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:5714
}
    8000d26e:	64e6                	ld	s1,88(sp)
    8000d270:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:5694
            JS_MarkValue(rt, s->resolving_funcs[1], mark_func);
    8000d272:	cf1ff06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5669
            } else if (var_ref->async_func) {
    8000d276:	798c                	ld	a1,48(a1)
    8000d278:	b76d                	j	8000d222 <mark_children+0x11a>
quickjs-nuttx/quickjs.c:5680
            if (!s->is_completed) {
    8000d27a:	599c                	lw	a5,48(a1)
    8000d27c:	cb99                	beqz	a5,8000d292 <mark_children+0x18a>
quickjs-nuttx/quickjs.c:5693
            JS_MarkValue(rt, s->resolving_funcs[0], mark_func);
    8000d27e:	7c0c                	ld	a1,56(s0)
    8000d280:	6030                	ld	a2,64(s0)
    8000d282:	86ca                	mv	a3,s2
    8000d284:	8526                	mv	a0,s1
    8000d286:	cddff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5694
            JS_MarkValue(rt, s->resolving_funcs[1], mark_func);
    8000d28a:	642c                	ld	a1,72(s0)
    8000d28c:	6830                	ld	a2,80(s0)
    8000d28e:	86ca                	mv	a3,s2
    8000d290:	b7e1                	j	8000d258 <mark_children+0x150>
quickjs-nuttx/quickjs.c:5681
                JS_MarkValue(rt, sf->cur_func, mark_func);
    8000d292:	86b2                	mv	a3,a2
    8000d294:	71ac                	ld	a1,96(a1)
    8000d296:	7430                	ld	a2,104(s0)
    8000d298:	ccbff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5682
                JS_MarkValue(rt, s->this_val, mark_func);
    8000d29c:	6c0c                	ld	a1,24(s0)
    8000d29e:	7010                	ld	a2,32(s0)
    8000d2a0:	86ca                	mv	a3,s2
    8000d2a2:	8526                	mv	a0,s1
    8000d2a4:	cbfff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5684
                if (sf->cur_sp) {
    8000d2a8:	705c                	ld	a5,160(s0)
    8000d2aa:	dbf1                	beqz	a5,8000d27e <mark_children+0x176>
quickjs-nuttx/quickjs.c:5689
                    for(sp = sf->arg_buf; sp < sf->cur_sp; sp++)
    8000d2ac:	07043983          	ld	s3,112(s0)
quickjs-nuttx/quickjs.c:5689 (discriminator 1)
    8000d2b0:	705c                	ld	a5,160(s0)
    8000d2b2:	fcf9f6e3          	bgeu	s3,a5,8000d27e <mark_children+0x176>
quickjs-nuttx/quickjs.c:5690 (discriminator 3)
                        JS_MarkValue(rt, *sp, mark_func);
    8000d2b6:	0009b583          	ld	a1,0(s3)
    8000d2ba:	0089b603          	ld	a2,8(s3)
    8000d2be:	86ca                	mv	a3,s2
    8000d2c0:	8526                	mv	a0,s1
    8000d2c2:	ca1ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:5689 (discriminator 3)
                    for(sp = sf->arg_buf; sp < sf->cur_sp; sp++)
    8000d2c6:	09c1                	addi	s3,s3,16
    8000d2c8:	b7e5                	j	8000d2b0 <mark_children+0x1a8>
JS_MarkContext():
quickjs-nuttx/quickjs.c:2245
    list_for_each(el, &ctx->loaded_modules) {
    8000d2ca:	1b85ba03          	ld	s4,440(a1)
    8000d2ce:	1b058b13          	addi	s6,a1,432
    8000d2d2:	0d6a1d63          	bne	s4,s6,8000d3ac <mark_children+0x2a4>
quickjs-nuttx/quickjs.c:2250
    JS_MarkValue(rt, ctx->global_obj, mark_func);
    8000d2d6:	16843583          	ld	a1,360(s0)
    8000d2da:	17043603          	ld	a2,368(s0)
    8000d2de:	86ca                	mv	a3,s2
    8000d2e0:	8526                	mv	a0,s1
    8000d2e2:	c81ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2251
    JS_MarkValue(rt, ctx->global_var_obj, mark_func);
    8000d2e6:	17843583          	ld	a1,376(s0)
    8000d2ea:	18043603          	ld	a2,384(s0)
    8000d2ee:	86ca                	mv	a3,s2
    8000d2f0:	8526                	mv	a0,s1
    8000d2f2:	c71ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2253
    JS_MarkValue(rt, ctx->throw_type_error, mark_func);
    8000d2f6:	14843583          	ld	a1,328(s0)
    8000d2fa:	15043603          	ld	a2,336(s0)
    8000d2fe:	86ca                	mv	a3,s2
    8000d300:	8526                	mv	a0,s1
    8000d302:	c61ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2254
    JS_MarkValue(rt, ctx->eval_obj, mark_func);
    8000d306:	15843583          	ld	a1,344(s0)
    8000d30a:	16043603          	ld	a2,352(s0)
    8000d30e:	86ca                	mv	a3,s2
    8000d310:	8526                	mv	a0,s1
    8000d312:	c51ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2256
    JS_MarkValue(rt, ctx->array_proto_values, mark_func);
    8000d316:	13843583          	ld	a1,312(s0)
    8000d31a:	14043603          	ld	a2,320(s0)
    8000d31e:	86ca                	mv	a3,s2
    8000d320:	8526                	mv	a0,s1
    8000d322:	c41ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2257
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8000d326:	4981                	li	s3,0
    8000d328:	4a21                	li	s4,8
quickjs-nuttx/quickjs.c:2258
        JS_MarkValue(rt, ctx->native_error_proto[i], mark_func);
    8000d32a:	00998793          	addi	a5,s3,9
    8000d32e:	0792                	slli	a5,a5,0x4
    8000d330:	97a2                	add	a5,a5,s0
    8000d332:	678c                	ld	a1,8(a5)
    8000d334:	6b90                	ld	a2,16(a5)
    8000d336:	86ca                	mv	a3,s2
    8000d338:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:2257
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8000d33a:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:2258
        JS_MarkValue(rt, ctx->native_error_proto[i], mark_func);
    8000d33c:	c27ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2257
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8000d340:	ff4995e3          	bne	s3,s4,8000d32a <mark_children+0x222>
quickjs-nuttx/quickjs.c:2260
    for(i = 0; i < rt->class_count; i++) {
    8000d344:	4981                	li	s3,0
    8000d346:	54fc                	lw	a5,108(s1)
    8000d348:	10f9c163          	blt	s3,a5,8000d44a <mark_children+0x342>
quickjs-nuttx/quickjs.c:2263
    JS_MarkValue(rt, ctx->iterator_proto, mark_func);
    8000d34c:	11843583          	ld	a1,280(s0)
    8000d350:	12043603          	ld	a2,288(s0)
    8000d354:	86ca                	mv	a3,s2
    8000d356:	8526                	mv	a0,s1
    8000d358:	c0bff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2264
    JS_MarkValue(rt, ctx->async_iterator_proto, mark_func);
    8000d35c:	12843583          	ld	a1,296(s0)
    8000d360:	13043603          	ld	a2,304(s0)
    8000d364:	86ca                	mv	a3,s2
    8000d366:	8526                	mv	a0,s1
    8000d368:	bfbff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2265
    JS_MarkValue(rt, ctx->promise_ctor, mark_func);
    8000d36c:	644c                	ld	a1,136(s0)
    8000d36e:	6850                	ld	a2,144(s0)
    8000d370:	86ca                	mv	a3,s2
    8000d372:	8526                	mv	a0,s1
    8000d374:	befff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2266
    JS_MarkValue(rt, ctx->array_ctor, mark_func);
    8000d378:	742c                	ld	a1,104(s0)
    8000d37a:	7830                	ld	a2,112(s0)
    8000d37c:	86ca                	mv	a3,s2
    8000d37e:	8526                	mv	a0,s1
    8000d380:	be3ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2267
    JS_MarkValue(rt, ctx->regexp_ctor, mark_func);
    8000d384:	7c2c                	ld	a1,120(s0)
    8000d386:	6050                	ld	a2,128(s0)
    8000d388:	86ca                	mv	a3,s2
    8000d38a:	8526                	mv	a0,s1
    8000d38c:	bd7ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2268
    JS_MarkValue(rt, ctx->function_ctor, mark_func);
    8000d390:	6c2c                	ld	a1,88(s0)
    8000d392:	7030                	ld	a2,96(s0)
    8000d394:	86ca                	mv	a3,s2
    8000d396:	8526                	mv	a0,s1
    8000d398:	bcbff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2269
    JS_MarkValue(rt, ctx->function_proto, mark_func);
    8000d39c:	642c                	ld	a1,72(s0)
    8000d39e:	6830                	ld	a2,80(s0)
    8000d3a0:	86ca                	mv	a3,s2
    8000d3a2:	8526                	mv	a0,s1
    8000d3a4:	bbfff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2271
    if (ctx->array_shape)
    8000d3a8:	7c0c                	ld	a1,56(s0)
    8000d3aa:	bda5                	j	8000d222 <mark_children+0x11a>
quickjs-nuttx/quickjs.c:2246
        JSModuleDef *m = list_entry(el, JSModuleDef, link);
    8000d3ac:	ff8a0993          	addi	s3,s4,-8
js_mark_module_def():
quickjs-nuttx/quickjs.c:27153
    for(i = 0; i < m->export_entries_count; i++) {
    8000d3b0:	4a81                	li	s5,0
    8000d3b2:	028a2783          	lw	a5,40(s4)
    8000d3b6:	06facd63          	blt	s5,a5,8000d430 <mark_children+0x328>
quickjs-nuttx/quickjs.c:27161
    JS_MarkValue(rt, m->module_ns, mark_func);
    8000d3ba:	0589b583          	ld	a1,88(s3)
    8000d3be:	0609b603          	ld	a2,96(s3)
    8000d3c2:	86ca                	mv	a3,s2
    8000d3c4:	8526                	mv	a0,s1
    8000d3c6:	b9dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:27162
    JS_MarkValue(rt, m->func_obj, mark_func);
    8000d3ca:	0689b583          	ld	a1,104(s3)
    8000d3ce:	0709b603          	ld	a2,112(s3)
    8000d3d2:	86ca                	mv	a3,s2
    8000d3d4:	8526                	mv	a0,s1
    8000d3d6:	b8dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:27163
    JS_MarkValue(rt, m->eval_exception, mark_func);
    8000d3da:	0f89b583          	ld	a1,248(s3)
    8000d3de:	1009b603          	ld	a2,256(s3)
    8000d3e2:	86ca                	mv	a3,s2
    8000d3e4:	8526                	mv	a0,s1
    8000d3e6:	b7dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:27164
    JS_MarkValue(rt, m->meta_obj, mark_func);
    8000d3ea:	1089b583          	ld	a1,264(s3)
    8000d3ee:	1109b603          	ld	a2,272(s3)
    8000d3f2:	86ca                	mv	a3,s2
    8000d3f4:	8526                	mv	a0,s1
    8000d3f6:	b6dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:27165
    JS_MarkValue(rt, m->promise, mark_func);
    8000d3fa:	0c09b583          	ld	a1,192(s3)
    8000d3fe:	0c89b603          	ld	a2,200(s3)
    8000d402:	86ca                	mv	a3,s2
    8000d404:	8526                	mv	a0,s1
    8000d406:	b5dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:27166
    JS_MarkValue(rt, m->resolving_funcs[0], mark_func);
    8000d40a:	0d09b583          	ld	a1,208(s3)
    8000d40e:	0d89b603          	ld	a2,216(s3)
    8000d412:	86ca                	mv	a3,s2
    8000d414:	8526                	mv	a0,s1
    8000d416:	b4dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:27167
    JS_MarkValue(rt, m->resolving_funcs[1], mark_func);
    8000d41a:	0e09b583          	ld	a1,224(s3)
    8000d41e:	0e89b603          	ld	a2,232(s3)
    8000d422:	86ca                	mv	a3,s2
    8000d424:	8526                	mv	a0,s1
    8000d426:	b3dff0ef          	jal	ra,8000cf62 <JS_MarkValue>
JS_MarkContext():
quickjs-nuttx/quickjs.c:2245
    list_for_each(el, &ctx->loaded_modules) {
    8000d42a:	008a3a03          	ld	s4,8(s4)
    8000d42e:	b555                	j	8000d2d2 <mark_children+0x1ca>
js_mark_module_def():
quickjs-nuttx/quickjs.c:27154
        JSExportEntry *me = &m->export_entries[i];
    8000d430:	020a3703          	ld	a4,32(s4)
    8000d434:	005a9793          	slli	a5,s5,0x5
    8000d438:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:27155
        if (me->export_type == JS_EXPORT_TYPE_LOCAL &&
    8000d43a:	4b98                	lw	a4,16(a5)
    8000d43c:	e709                	bnez	a4,8000d446 <mark_children+0x33e>
quickjs-nuttx/quickjs.c:27156
            me->u.local.var_ref) {
    8000d43e:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:27155
        if (me->export_type == JS_EXPORT_TYPE_LOCAL &&
    8000d440:	c199                	beqz	a1,8000d446 <mark_children+0x33e>
quickjs-nuttx/quickjs.c:27157
            mark_func(rt, &me->u.local.var_ref->header);
    8000d442:	8526                	mv	a0,s1
    8000d444:	9902                	jalr	s2
quickjs-nuttx/quickjs.c:27153
    for(i = 0; i < m->export_entries_count; i++) {
    8000d446:	2a85                	addiw	s5,s5,1
    8000d448:	b7ad                	j	8000d3b2 <mark_children+0x2aa>
JS_MarkContext():
quickjs-nuttx/quickjs.c:2261
        JS_MarkValue(rt, ctx->class_proto[i], mark_func);
    8000d44a:	603c                	ld	a5,64(s0)
    8000d44c:	00499713          	slli	a4,s3,0x4
    8000d450:	86ca                	mv	a3,s2
    8000d452:	97ba                	add	a5,a5,a4
    8000d454:	638c                	ld	a1,0(a5)
    8000d456:	6790                	ld	a2,8(a5)
    8000d458:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:2260
    for(i = 0; i < rt->class_count; i++) {
    8000d45a:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:2261
        JS_MarkValue(rt, ctx->class_proto[i], mark_func);
    8000d45c:	b07ff0ef          	jal	ra,8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:2260
    for(i = 0; i < rt->class_count; i++) {
    8000d460:	b5dd                	j	8000d346 <mark_children+0x23e>
mark_children():
quickjs-nuttx/quickjs.c:5712
        abort();
    8000d462:	720550ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:5714
}
    8000d466:	70a6                	ld	ra,104(sp)
    8000d468:	7406                	ld	s0,96(sp)
    8000d46a:	64e6                	ld	s1,88(sp)
    8000d46c:	6946                	ld	s2,80(sp)
    8000d46e:	69a6                	ld	s3,72(sp)
    8000d470:	6a06                	ld	s4,64(sp)
    8000d472:	7ae2                	ld	s5,56(sp)
    8000d474:	7b42                	ld	s6,48(sp)
    8000d476:	7ba2                	ld	s7,40(sp)
    8000d478:	7c02                	ld	s8,32(sp)
    8000d47a:	6ce2                	ld	s9,24(sp)
    8000d47c:	6165                	addi	sp,sp,112
    8000d47e:	8082                	ret

000000008000d480 <js_promise_resolve_function_mark>:
js_promise_resolve_function_mark():
quickjs-nuttx/quickjs.c:47920
    JSPromiseFunctionData *s = JS_VALUE_GET_OBJ(val)->u.promise_function_data;
    8000d480:	799c                	ld	a5,48(a1)
quickjs-nuttx/quickjs.c:47919
{
    8000d482:	1141                	addi	sp,sp,-16
    8000d484:	e02e                	sd	a1,0(sp)
    8000d486:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:47921
    if (s) {
    8000d488:	c791                	beqz	a5,8000d494 <js_promise_resolve_function_mark+0x14>
quickjs-nuttx/quickjs.c:47922
        JS_MarkValue(rt, s->promise, mark_func);
    8000d48a:	638c                	ld	a1,0(a5)
    8000d48c:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:47924
}
    8000d48e:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:47922
        JS_MarkValue(rt, s->promise, mark_func);
    8000d490:	ad3ff06f          	j	8000cf62 <JS_MarkValue>
quickjs-nuttx/quickjs.c:47924
}
    8000d494:	0141                	addi	sp,sp,16
    8000d496:	8082                	ret

000000008000d498 <JS_RunGC>:
JS_RunGC():
quickjs-nuttx/quickjs.c:5837
{
    8000d498:	7139                	addi	sp,sp,-64
    8000d49a:	f822                	sd	s0,48(sp)
    8000d49c:	f04a                	sd	s2,32(sp)
    8000d49e:	e852                	sd	s4,16(sp)
    8000d4a0:	e456                	sd	s5,8(sp)
    8000d4a2:	fc06                	sd	ra,56(sp)
    8000d4a4:	f426                	sd	s1,40(sp)
    8000d4a6:	ec4e                	sd	s3,24(sp)
gc_decref():
quickjs-nuttx/quickjs.c:5736
    list_for_each_safe(el, el1, &rt->gc_obj_list) {
    8000d4a8:	6944                	ld	s1,144(a0)
quickjs-nuttx/quickjs.c:5731
    init_list_head(&rt->tmp_obj_list);
    8000d4aa:	0a850913          	addi	s2,a0,168
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000d4ae:	0b253423          	sd	s2,168(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000d4b2:	0b253823          	sd	s2,176(a0)
gc_decref():
quickjs-nuttx/quickjs.c:5736
    list_for_each_safe(el, el1, &rt->gc_obj_list) {
    8000d4b6:	0084b983          	ld	s3,8(s1)
JS_RunGC():
quickjs-nuttx/quickjs.c:5837
{
    8000d4ba:	842a                	mv	s0,a0
gc_decref():
quickjs-nuttx/quickjs.c:5736
    list_for_each_safe(el, el1, &rt->gc_obj_list) {
    8000d4bc:	08850a13          	addi	s4,a0,136
quickjs-nuttx/quickjs.c:5739
        mark_children(rt, p, gc_decref_child);
    8000d4c0:	ffffca97          	auipc	s5,0xffffc
    8000d4c4:	228a8a93          	addi	s5,s5,552 # 800096e8 <gc_decref_child>
quickjs-nuttx/quickjs.c:5736
    list_for_each_safe(el, el1, &rt->gc_obj_list) {
    8000d4c8:	05449763          	bne	s1,s4,8000d516 <JS_RunGC+0x7e>
gc_scan():
quickjs-nuttx/quickjs.c:5771
    list_for_each(el, &rt->gc_obj_list) {
    8000d4cc:	6844                	ld	s1,144(s0)
quickjs-nuttx/quickjs.c:5775
        mark_children(rt, p, gc_scan_incref_child);
    8000d4ce:	ffffc997          	auipc	s3,0xffffc
    8000d4d2:	fce98993          	addi	s3,s3,-50 # 8000949c <gc_scan_incref_child>
quickjs-nuttx/quickjs.c:5771
    list_for_each(el, &rt->gc_obj_list) {
    8000d4d6:	09449c63          	bne	s1,s4,8000d56e <JS_RunGC+0xd6>
quickjs-nuttx/quickjs.c:5779
    list_for_each(el, &rt->tmp_obj_list) {
    8000d4da:	7844                	ld	s1,176(s0)
quickjs-nuttx/quickjs.c:5781
        mark_children(rt, p, gc_scan_incref_child2);
    8000d4dc:	ffffb997          	auipc	s3,0xffffb
    8000d4e0:	8a698993          	addi	s3,s3,-1882 # 80007d82 <gc_scan_incref_child2>
quickjs-nuttx/quickjs.c:5779
    list_for_each(el, &rt->tmp_obj_list) {
    8000d4e4:	0b249b63          	bne	s1,s2,8000d59a <JS_RunGC+0x102>
gc_free_cycles():
quickjs-nuttx/quickjs.c:5793
    rt->gc_phase = JS_GC_PHASE_REMOVE_CYCLES;
    8000d4e8:	4789                	li	a5,2
    8000d4ea:	0af40c23          	sb	a5,184(s0)
quickjs-nuttx/quickjs.c:5819
            list_add_tail(&p->link, &rt->gc_zero_ref_count_list);
    8000d4ee:	09840993          	addi	s3,s0,152
quickjs-nuttx/quickjs.c:5803
        switch(p->gc_obj_type) {
    8000d4f2:	4a05                	li	s4,1
    8000d4f4:	4a91                	li	s5,4
quickjs-nuttx/quickjs.c:5796
        el = rt->tmp_obj_list.next;
    8000d4f6:	7844                	ld	s1,176(s0)
quickjs-nuttx/quickjs.c:5797
        if (el == &rt->tmp_obj_list)
    8000d4f8:	0d248363          	beq	s1,s2,8000d5be <JS_RunGC+0x126>
quickjs-nuttx/quickjs.c:5803
        switch(p->gc_obj_type) {
    8000d4fc:	ffc4e783          	lwu	a5,-4(s1)
    8000d500:	8bbd                	andi	a5,a5,15
    8000d502:	00fa7463          	bgeu	s4,a5,8000d50a <JS_RunGC+0x72>
    8000d506:	0b579263          	bne	a5,s5,8000d5aa <JS_RunGC+0x112>
quickjs-nuttx/quickjs.c:5815
            free_gc_object(rt, p);
    8000d50a:	ff848593          	addi	a1,s1,-8
    8000d50e:	8522                	mv	a0,s0
    8000d510:	9e5fe0ef          	jal	ra,8000bef4 <free_gc_object>
quickjs-nuttx/quickjs.c:5816
            break;
    8000d514:	b7cd                	j	8000d4f6 <JS_RunGC+0x5e>
gc_decref():
quickjs-nuttx/quickjs.c:5738
        assert(p->mark == 0);
    8000d516:	ffc4c783          	lbu	a5,-4(s1)
quickjs-nuttx/quickjs.c:5737
        p = list_entry(el, JSGCObjectHeader, link);
    8000d51a:	ff848593          	addi	a1,s1,-8
quickjs-nuttx/quickjs.c:5738
        assert(p->mark == 0);
    8000d51e:	0f07f793          	andi	a5,a5,240
    8000d522:	cb99                	beqz	a5,8000d538 <JS_RunGC+0xa0>
    8000d524:	6585                	lui	a1,0x1
    8000d526:	4601                	li	a2,0
    8000d528:	66a58593          	addi	a1,a1,1642 # 166a <asinh-0x7fffe996>
gc_scan():
quickjs-nuttx/quickjs.c:5773
        assert(p->ref_count > 0);
    8000d52c:	0005c517          	auipc	a0,0x5c
    8000d530:	06c50513          	addi	a0,a0,108 # 80069598 <qjsc_repl+0x3fe8>
    8000d534:	428530ef          	jal	ra,8006095c <__assert>
gc_decref():
quickjs-nuttx/quickjs.c:5739
        mark_children(rt, p, gc_decref_child);
    8000d538:	8656                	mv	a2,s5
    8000d53a:	8522                	mv	a0,s0
    8000d53c:	bcdff0ef          	jal	ra,8000d108 <mark_children>
quickjs-nuttx/quickjs.c:5740
        p->mark = 1;
    8000d540:	ffc4c783          	lbu	a5,-4(s1)
    8000d544:	8bbd                	andi	a5,a5,15
    8000d546:	0107e793          	ori	a5,a5,16
    8000d54a:	fef48e23          	sb	a5,-4(s1)
quickjs-nuttx/quickjs.c:5741
        if (p->ref_count == 0) {
    8000d54e:	ff84a783          	lw	a5,-8(s1)
    8000d552:	eb91                	bnez	a5,8000d566 <JS_RunGC+0xce>
quickjs-nuttx/quickjs.c:5742
            list_del(&p->link);
    8000d554:	8526                	mv	a0,s1
    8000d556:	deefa0ef          	jal	ra,80007b44 <list_del>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8000d55a:	745c                	ld	a5,168(s0)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8000d55c:	e784                	sd	s1,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8000d55e:	e09c                	sd	a5,0(s1)
quickjs-nuttx/list.h:53
    el->next = next;
    8000d560:	0124b423          	sd	s2,8(s1)
quickjs-nuttx/list.h:54
    next->prev = el;
    8000d564:	f444                	sd	s1,168(s0)
gc_decref():
quickjs-nuttx/quickjs.c:5736
    list_for_each_safe(el, el1, &rt->gc_obj_list) {
    8000d566:	84ce                	mv	s1,s3
    8000d568:	0089b983          	ld	s3,8(s3)
    8000d56c:	bfb1                	j	8000d4c8 <JS_RunGC+0x30>
gc_scan():
quickjs-nuttx/quickjs.c:5773
        assert(p->ref_count > 0);
    8000d56e:	ff84a783          	lw	a5,-8(s1)
quickjs-nuttx/quickjs.c:5772
        p = list_entry(el, JSGCObjectHeader, link);
    8000d572:	ff848593          	addi	a1,s1,-8
quickjs-nuttx/quickjs.c:5773
        assert(p->ref_count > 0);
    8000d576:	00f04763          	bgtz	a5,8000d584 <JS_RunGC+0xec>
    8000d57a:	6585                	lui	a1,0x1
    8000d57c:	4601                	li	a2,0
    8000d57e:	68d58593          	addi	a1,a1,1677 # 168d <asinh-0x7fffe973>
    8000d582:	b76d                	j	8000d52c <JS_RunGC+0x94>
quickjs-nuttx/quickjs.c:5774
        p->mark = 0; /* reset the mark for the next GC call */
    8000d584:	ffc4c783          	lbu	a5,-4(s1)
quickjs-nuttx/quickjs.c:5775
        mark_children(rt, p, gc_scan_incref_child);
    8000d588:	864e                	mv	a2,s3
    8000d58a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:5774
        p->mark = 0; /* reset the mark for the next GC call */
    8000d58c:	8bbd                	andi	a5,a5,15
    8000d58e:	fef48e23          	sb	a5,-4(s1)
quickjs-nuttx/quickjs.c:5775
        mark_children(rt, p, gc_scan_incref_child);
    8000d592:	b77ff0ef          	jal	ra,8000d108 <mark_children>
quickjs-nuttx/quickjs.c:5771
    list_for_each(el, &rt->gc_obj_list) {
    8000d596:	6484                	ld	s1,8(s1)
    8000d598:	bf3d                	j	8000d4d6 <JS_RunGC+0x3e>
quickjs-nuttx/quickjs.c:5781
        mark_children(rt, p, gc_scan_incref_child2);
    8000d59a:	ff848593          	addi	a1,s1,-8
    8000d59e:	864e                	mv	a2,s3
    8000d5a0:	8522                	mv	a0,s0
    8000d5a2:	b67ff0ef          	jal	ra,8000d108 <mark_children>
quickjs-nuttx/quickjs.c:5779
    list_for_each(el, &rt->tmp_obj_list) {
    8000d5a6:	6484                	ld	s1,8(s1)
    8000d5a8:	bf35                	j	8000d4e4 <JS_RunGC+0x4c>
gc_free_cycles():
quickjs-nuttx/quickjs.c:5818
            list_del(&p->link);
    8000d5aa:	8526                	mv	a0,s1
    8000d5ac:	d98fa0ef          	jal	ra,80007b44 <list_del>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8000d5b0:	6c5c                	ld	a5,152(s0)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8000d5b2:	e784                	sd	s1,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8000d5b4:	e09c                	sd	a5,0(s1)
quickjs-nuttx/list.h:53
    el->next = next;
    8000d5b6:	0134b423          	sd	s3,8(s1)
quickjs-nuttx/list.h:54
    next->prev = el;
    8000d5ba:	ec44                	sd	s1,152(s0)
list_add_tail():
quickjs-nuttx/list.h:67
}
    8000d5bc:	bf2d                	j	8000d4f6 <JS_RunGC+0x5e>
gc_free_cycles():
quickjs-nuttx/quickjs.c:5825
    list_for_each_safe(el, el1, &rt->gc_zero_ref_count_list) {
    8000d5be:	705c                	ld	a5,160(s0)
quickjs-nuttx/quickjs.c:5823
    rt->gc_phase = JS_GC_PHASE_NONE;
    8000d5c0:	0a040c23          	sb	zero,184(s0)
quickjs-nuttx/quickjs.c:5827
        assert(p->gc_obj_type == JS_GC_OBJ_TYPE_JS_OBJECT ||
    8000d5c4:	4911                	li	s2,4
quickjs-nuttx/quickjs.c:5825
    list_for_each_safe(el, el1, &rt->gc_zero_ref_count_list) {
    8000d5c6:	6784                	ld	s1,8(a5)
    8000d5c8:	01379d63          	bne	a5,s3,8000d5e2 <JS_RunGC+0x14a>
JS_RunGC():
quickjs-nuttx/quickjs.c:5847
}
    8000d5cc:	70e2                	ld	ra,56(sp)
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000d5ce:	ec5c                	sd	a5,152(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000d5d0:	f05c                	sd	a5,160(s0)
JS_RunGC():
quickjs-nuttx/quickjs.c:5847
    8000d5d2:	7442                	ld	s0,48(sp)
    8000d5d4:	74a2                	ld	s1,40(sp)
    8000d5d6:	7902                	ld	s2,32(sp)
    8000d5d8:	69e2                	ld	s3,24(sp)
    8000d5da:	6a42                	ld	s4,16(sp)
    8000d5dc:	6aa2                	ld	s5,8(sp)
    8000d5de:	6121                	addi	sp,sp,64
    8000d5e0:	8082                	ret
gc_free_cycles():
quickjs-nuttx/quickjs.c:5826
        p = list_entry(el, JSGCObjectHeader, link);
    8000d5e2:	ff878593          	addi	a1,a5,-8
quickjs-nuttx/quickjs.c:5827
        assert(p->gc_obj_type == JS_GC_OBJ_TYPE_JS_OBJECT ||
    8000d5e6:	ffc7c783          	lbu	a5,-4(a5)
    8000d5ea:	00e7f713          	andi	a4,a5,14
    8000d5ee:	cb09                	beqz	a4,8000d600 <JS_RunGC+0x168>
    8000d5f0:	8bbd                	andi	a5,a5,15
    8000d5f2:	01278763          	beq	a5,s2,8000d600 <JS_RunGC+0x168>
    8000d5f6:	6585                	lui	a1,0x1
    8000d5f8:	4601                	li	a2,0
    8000d5fa:	6c358593          	addi	a1,a1,1731 # 16c3 <asinh-0x7fffe93d>
    8000d5fe:	b73d                	j	8000d52c <JS_RunGC+0x94>
quickjs-nuttx/quickjs.c:5830
        js_free_rt(rt, p);
    8000d600:	8522                	mv	a0,s0
    8000d602:	bdefd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:5825
    list_for_each_safe(el, el1, &rt->gc_zero_ref_count_list) {
    8000d606:	87a6                	mv	a5,s1
    8000d608:	6484                	ld	s1,8(s1)
    8000d60a:	bf7d                	j	8000d5c8 <JS_RunGC+0x130>

000000008000d60c <JS_FreeRuntime>:
JS_FreeRuntime():
quickjs-nuttx/quickjs.c:1936
{
    8000d60c:	715d                	addi	sp,sp,-80
    8000d60e:	e0a2                	sd	s0,64(sp)
    8000d610:	fc26                	sd	s1,56(sp)
    8000d612:	f44e                	sd	s3,40(sp)
    8000d614:	f052                	sd	s4,32(sp)
    8000d616:	e486                	sd	ra,72(sp)
    8000d618:	f84a                	sd	s2,48(sp)
quickjs-nuttx/quickjs.c:1940
    JS_FreeValueRT(rt, rt->current_exception);
    8000d61a:	716c                	ld	a1,224(a0)
    8000d61c:	7570                	ld	a2,232(a0)
quickjs-nuttx/quickjs.c:1936
{
    8000d61e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1942
    list_for_each_safe(el, el1, &rt->job_list) {
    8000d620:	12040993          	addi	s3,s0,288
quickjs-nuttx/quickjs.c:1940
    JS_FreeValueRT(rt, rt->current_exception);
    8000d624:	d53fe0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:1942
    list_for_each_safe(el, el1, &rt->job_list) {
    8000d628:	12843483          	ld	s1,296(s0)
    8000d62c:	0084ba03          	ld	s4,8(s1)
quickjs-nuttx/quickjs.c:1942 (discriminator 1)
    8000d630:	04999f63          	bne	s3,s1,8000d68e <JS_FreeRuntime+0x82>
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000d634:	13343023          	sd	s3,288(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000d638:	13343423          	sd	s3,296(s0)
JS_FreeRuntime():
quickjs-nuttx/quickjs.c:1950
    JS_RunGC(rt);
    8000d63c:	8522                	mv	a0,s0
    8000d63e:	e5bff0ef          	jal	ra,8000d498 <JS_RunGC>
quickjs-nuttx/quickjs.c:1991
    assert(list_empty(&rt->gc_obj_list));
    8000d642:	6858                	ld	a4,144(s0)
    8000d644:	08840793          	addi	a5,s0,136
quickjs-nuttx/quickjs.c:1994
    for(i = 0; i < rt->class_count; i++) {
    8000d648:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:1995
        JSClass *cl = &rt->class_array[i];
    8000d64a:	02800913          	li	s2,40
quickjs-nuttx/quickjs.c:1991
    assert(list_empty(&rt->gc_obj_list));
    8000d64e:	04f70c63          	beq	a4,a5,8000d6a6 <JS_FreeRuntime+0x9a>
quickjs-nuttx/quickjs.c:1991 (discriminator 1)
    8000d652:	4601                	li	a2,0
    8000d654:	7c700593          	li	a1,1991
    8000d658:	0005c517          	auipc	a0,0x5c
    8000d65c:	f4050513          	addi	a0,a0,-192 # 80069598 <qjsc_repl+0x3fe8>
    8000d660:	2fc530ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:1945 (discriminator 3)
            JS_FreeValueRT(rt, e->argv[i]);
    8000d664:	00290793          	addi	a5,s2,2
    8000d668:	0792                	slli	a5,a5,0x4
    8000d66a:	97a6                	add	a5,a5,s1
    8000d66c:	678c                	ld	a1,8(a5)
    8000d66e:	6b90                	ld	a2,16(a5)
    8000d670:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:1944 (discriminator 3)
        for(i = 0; i < e->argc; i++)
    8000d672:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:1945 (discriminator 3)
            JS_FreeValueRT(rt, e->argv[i]);
    8000d674:	d03fe0ef          	jal	ra,8000c376 <JS_FreeValueRT>
quickjs-nuttx/quickjs.c:1944 (discriminator 1)
        for(i = 0; i < e->argc; i++)
    8000d678:	509c                	lw	a5,32(s1)
    8000d67a:	fef945e3          	blt	s2,a5,8000d664 <JS_FreeRuntime+0x58>
quickjs-nuttx/quickjs.c:1946 (discriminator 2)
        js_free_rt(rt, e);
    8000d67e:	85a6                	mv	a1,s1
    8000d680:	8522                	mv	a0,s0
    8000d682:	b5efd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:1942 (discriminator 2)
    list_for_each_safe(el, el1, &rt->job_list) {
    8000d686:	84d2                	mv	s1,s4
    8000d688:	008a3a03          	ld	s4,8(s4)
    8000d68c:	b755                	j	8000d630 <JS_FreeRuntime+0x24>
quickjs-nuttx/quickjs.c:1944
        for(i = 0; i < e->argc; i++)
    8000d68e:	4901                	li	s2,0
    8000d690:	b7e5                	j	8000d678 <JS_FreeRuntime+0x6c>
quickjs-nuttx/quickjs.c:1995
        JSClass *cl = &rt->class_array[i];
    8000d692:	032487b3          	mul	a5,s1,s2
    8000d696:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:1996
        if (cl->class_id != 0) {
    8000d698:	419c                	lw	a5,0(a1)
    8000d69a:	c789                	beqz	a5,8000d6a4 <JS_FreeRuntime+0x98>
quickjs-nuttx/quickjs.c:1997
            JS_FreeAtomRT(rt, cl->class_name);
    8000d69c:	41cc                	lw	a1,4(a1)
    8000d69e:	8522                	mv	a0,s0
    8000d6a0:	f6ffd0ef          	jal	ra,8000b60e <JS_FreeAtomRT>
quickjs-nuttx/quickjs.c:1994 (discriminator 2)
    for(i = 0; i < rt->class_count; i++) {
    8000d6a4:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:1994 (discriminator 1)
    8000d6a6:	547c                	lw	a5,108(s0)
quickjs-nuttx/quickjs.c:1995 (discriminator 1)
        JSClass *cl = &rt->class_array[i];
    8000d6a8:	782c                	ld	a1,112(s0)
quickjs-nuttx/quickjs.c:1994 (discriminator 1)
    for(i = 0; i < rt->class_count; i++) {
    8000d6aa:	fef4c4e3          	blt	s1,a5,8000d692 <JS_FreeRuntime+0x86>
quickjs-nuttx/quickjs.c:2000
    js_free_rt(rt, rt->class_array);
    8000d6ae:	8522                	mv	a0,s0
    8000d6b0:	b30fd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2002
    bf_context_end(&rt->bf_ctx);
    8000d6b4:	19040513          	addi	a0,s0,400
    8000d6b8:	4714b0ef          	jal	ra,80059328 <bf_context_end>
quickjs-nuttx/quickjs.c:2063
    for(i = 0; i < rt->atom_size; i++) {
    8000d6bc:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:2063 (discriminator 1)
    8000d6be:	483c                	lw	a5,80(s0)
quickjs-nuttx/quickjs.c:2064 (discriminator 1)
        JSAtomStruct *p = rt->atom_array[i];
    8000d6c0:	702c                	ld	a1,96(s0)
quickjs-nuttx/quickjs.c:2063 (discriminator 1)
    for(i = 0; i < rt->atom_size; i++) {
    8000d6c2:	04f4c163          	blt	s1,a5,8000d704 <JS_FreeRuntime+0xf8>
quickjs-nuttx/quickjs.c:2072
    js_free_rt(rt, rt->atom_array);
    8000d6c6:	8522                	mv	a0,s0
    8000d6c8:	b18fd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2073
    js_free_rt(rt, rt->atom_hash);
    8000d6cc:	6c2c                	ld	a1,88(s0)
    8000d6ce:	8522                	mv	a0,s0
    8000d6d0:	b10fd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2074
    js_free_rt(rt, rt->shape_hash);
    8000d6d4:	18843583          	ld	a1,392(s0)
    8000d6d8:	8522                	mv	a0,s0
    8000d6da:	b06fd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2116
        JSMallocState ms = rt->malloc_state;
    8000d6de:	02040593          	addi	a1,s0,32
    8000d6e2:	02000613          	li	a2,32
    8000d6e6:	850a                	mv	a0,sp
    8000d6e8:	6c4560ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:2117
        rt->mf.js_free(&ms, rt);
    8000d6ec:	641c                	ld	a5,8(s0)
    8000d6ee:	85a2                	mv	a1,s0
    8000d6f0:	850a                	mv	a0,sp
    8000d6f2:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:2119
}
    8000d6f4:	60a6                	ld	ra,72(sp)
    8000d6f6:	6406                	ld	s0,64(sp)
    8000d6f8:	74e2                	ld	s1,56(sp)
    8000d6fa:	7942                	ld	s2,48(sp)
    8000d6fc:	79a2                	ld	s3,40(sp)
    8000d6fe:	7a02                	ld	s4,32(sp)
    8000d700:	6161                	addi	sp,sp,80
    8000d702:	8082                	ret
quickjs-nuttx/quickjs.c:2064
        JSAtomStruct *p = rt->atom_array[i];
    8000d704:	00349793          	slli	a5,s1,0x3
    8000d708:	95be                	add	a1,a1,a5
    8000d70a:	618c                	ld	a1,0(a1)
quickjs-nuttx/quickjs.c:2065
        if (!atom_is_free(p)) {
    8000d70c:	0015f793          	andi	a5,a1,1
    8000d710:	e781                	bnez	a5,8000d718 <JS_FreeRuntime+0x10c>
quickjs-nuttx/quickjs.c:2069
            js_free_rt(rt, p);
    8000d712:	8522                	mv	a0,s0
    8000d714:	accfd0ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs.c:2063 (discriminator 2)
    for(i = 0; i < rt->atom_size; i++) {
    8000d718:	2485                	addiw	s1,s1,1
    8000d71a:	b755                	j	8000d6be <JS_FreeRuntime+0xb2>

000000008000d71c <JS_NewRuntime2>:
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1619
{
    8000d71c:	7159                	addi	sp,sp,-112
    8000d71e:	f0a2                	sd	s0,96(sp)
    8000d720:	eca6                	sd	s1,88(sp)
    8000d722:	f486                	sd	ra,104(sp)
    8000d724:	e8ca                	sd	s2,80(sp)
    8000d726:	e4ce                	sd	s3,72(sp)
    8000d728:	e0d2                	sd	s4,64(sp)
    8000d72a:	fc56                	sd	s5,56(sp)
quickjs-nuttx/quickjs.c:1625
    ms.malloc_limit = -1;
    8000d72c:	57fd                	li	a5,-1
    8000d72e:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:1627
    rt = mf->js_malloc(&ms, sizeof(JSRuntime));
    8000d730:	611c                	ld	a5,0(a0)
quickjs-nuttx/quickjs.c:1624
    ms.opaque = opaque;
    8000d732:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:1619
{
    8000d734:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1623
    memset(&ms, 0, sizeof(ms));
    8000d736:	e802                	sd	zero,16(sp)
    8000d738:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs.c:1627
    rt = mf->js_malloc(&ms, sizeof(JSRuntime));
    8000d73a:	2c000593          	li	a1,704
    8000d73e:	0808                	addi	a0,sp,16
    8000d740:	9782                	jalr	a5
    8000d742:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1628
    if (!rt)
    8000d744:	20050263          	beqz	a0,8000d948 <JS_NewRuntime2+0x22c>
quickjs-nuttx/quickjs.c:1630
    memset(rt, 0, sizeof(*rt));
    8000d748:	2c000613          	li	a2,704
    8000d74c:	4581                	li	a1,0
    8000d74e:	4f4560ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:1631
    rt->mf = *mf;
    8000d752:	02000613          	li	a2,32
    8000d756:	85a6                	mv	a1,s1
    8000d758:	8522                	mv	a0,s0
    8000d75a:	652560ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:1632
    if (!rt->mf.js_malloc_usable_size) {
    8000d75e:	6c1c                	ld	a5,24(s0)
    8000d760:	e791                	bnez	a5,8000d76c <JS_NewRuntime2+0x50>
quickjs-nuttx/quickjs.c:1634
        rt->mf.js_malloc_usable_size = js_malloc_usable_size_unknown;
    8000d762:	ffffa797          	auipc	a5,0xffffa
    8000d766:	3f478793          	addi	a5,a5,1012 # 80007b56 <js_malloc_usable_size_unknown>
    8000d76a:	ec1c                	sd	a5,24(s0)
quickjs-nuttx/quickjs.c:1636
    rt->malloc_state = ms;
    8000d76c:	02000613          	li	a2,32
    8000d770:	080c                	addi	a1,sp,16
    8000d772:	02040513          	addi	a0,s0,32
    8000d776:	636560ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:1637
    rt->malloc_gc_threshold = 256 * 1024;
    8000d77a:	000407b7          	lui	a5,0x40
    8000d77e:	e07c                	sd	a5,192(s0)
quickjs-nuttx/quickjs.c:1639
    bf_context_init(&rt->bf_ctx, js_bf_realloc, rt);
    8000d780:	8622                	mv	a2,s0
    8000d782:	ffffa597          	auipc	a1,0xffffa
    8000d786:	3e058593          	addi	a1,a1,992 # 80007b62 <js_bf_realloc>
    8000d78a:	19040513          	addi	a0,s0,400
    8000d78e:	3b24a0ef          	jal	ra,80057b40 <bf_context_init>
set_dummy_numeric_ops():
quickjs-nuttx/quickjs.c:1589
    ops->mul_pow10 = invalid_mul_pow10;
    8000d792:	0000c797          	auipc	a5,0xc
    8000d796:	91a78793          	addi	a5,a5,-1766 # 800190ac <invalid_mul_pow10>
    8000d79a:	22f43c23          	sd	a5,568(s0)
    8000d79e:	26f43823          	sd	a5,624(s0)
    8000d7a2:	2af43423          	sd	a5,680(s0)
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1646
    init_list_head(&rt->context_list);
    8000d7a6:	07840793          	addi	a5,s0,120
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000d7aa:	fc3c                	sd	a5,120(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000d7ac:	e05c                	sd	a5,128(s0)
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1647
    init_list_head(&rt->gc_obj_list);
    8000d7ae:	08840793          	addi	a5,s0,136
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000d7b2:	e45c                	sd	a5,136(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000d7b4:	e85c                	sd	a5,144(s0)
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1648
    init_list_head(&rt->gc_zero_ref_count_list);
    8000d7b6:	09840793          	addi	a5,s0,152
set_dummy_numeric_ops():
quickjs-nuttx/quickjs.c:1584
    ops->to_string = invalid_to_string;
    8000d7ba:	0000c517          	auipc	a0,0xc
    8000d7be:	95850513          	addi	a0,a0,-1704 # 80019112 <invalid_to_string>
quickjs-nuttx/quickjs.c:1585
    ops->from_string = invalid_from_string;
    8000d7c2:	ffffa597          	auipc	a1,0xffffa
    8000d7c6:	3a258593          	addi	a1,a1,930 # 80007b64 <invalid_from_string>
quickjs-nuttx/quickjs.c:1586
    ops->unary_arith = invalid_unary_arith;
    8000d7ca:	0000c617          	auipc	a2,0xc
    8000d7ce:	92860613          	addi	a2,a2,-1752 # 800190f2 <invalid_unary_arith>
quickjs-nuttx/quickjs.c:1587
    ops->binary_arith = invalid_binary_arith;
    8000d7d2:	0000c697          	auipc	a3,0xc
    8000d7d6:	8f268693          	addi	a3,a3,-1806 # 800190c4 <invalid_binary_arith>
quickjs-nuttx/quickjs.c:1588
    ops->mul_pow10_to_float64 = invalid_mul_pow10_to_float64;
    8000d7da:	0000c717          	auipc	a4,0xc
    8000d7de:	8e270713          	addi	a4,a4,-1822 # 800190bc <invalid_mul_pow10_to_float64>
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000d7e2:	ec5c                	sd	a5,152(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000d7e4:	f05c                	sd	a5,160(s0)
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1654
    init_list_head(&rt->job_list);
    8000d7e6:	12040793          	addi	a5,s0,288
set_dummy_numeric_ops():
quickjs-nuttx/quickjs.c:1584
    ops->to_string = invalid_to_string;
    8000d7ea:	20a43423          	sd	a0,520(s0)
quickjs-nuttx/quickjs.c:1585
    ops->from_string = invalid_from_string;
    8000d7ee:	20b43823          	sd	a1,528(s0)
quickjs-nuttx/quickjs.c:1584
    ops->to_string = invalid_to_string;
    8000d7f2:	24a43023          	sd	a0,576(s0)
quickjs-nuttx/quickjs.c:1585
    ops->from_string = invalid_from_string;
    8000d7f6:	24b43423          	sd	a1,584(s0)
quickjs-nuttx/quickjs.c:1584
    ops->to_string = invalid_to_string;
    8000d7fa:	26a43c23          	sd	a0,632(s0)
quickjs-nuttx/quickjs.c:1585
    ops->from_string = invalid_from_string;
    8000d7fe:	28b43023          	sd	a1,640(s0)
quickjs-nuttx/quickjs.c:1586
    ops->unary_arith = invalid_unary_arith;
    8000d802:	20c43c23          	sd	a2,536(s0)
quickjs-nuttx/quickjs.c:1587
    ops->binary_arith = invalid_binary_arith;
    8000d806:	22d43023          	sd	a3,544(s0)
quickjs-nuttx/quickjs.c:1588
    ops->mul_pow10_to_float64 = invalid_mul_pow10_to_float64;
    8000d80a:	22e43823          	sd	a4,560(s0)
quickjs-nuttx/quickjs.c:1586
    ops->unary_arith = invalid_unary_arith;
    8000d80e:	24c43823          	sd	a2,592(s0)
quickjs-nuttx/quickjs.c:1587
    ops->binary_arith = invalid_binary_arith;
    8000d812:	24d43c23          	sd	a3,600(s0)
quickjs-nuttx/quickjs.c:1588
    ops->mul_pow10_to_float64 = invalid_mul_pow10_to_float64;
    8000d816:	26e43423          	sd	a4,616(s0)
quickjs-nuttx/quickjs.c:1586
    ops->unary_arith = invalid_unary_arith;
    8000d81a:	28c43423          	sd	a2,648(s0)
quickjs-nuttx/quickjs.c:1587
    ops->binary_arith = invalid_binary_arith;
    8000d81e:	28d43823          	sd	a3,656(s0)
quickjs-nuttx/quickjs.c:1588
    ops->mul_pow10_to_float64 = invalid_mul_pow10_to_float64;
    8000d822:	2ae43023          	sd	a4,672(s0)
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1649
    rt->gc_phase = JS_GC_PHASE_NONE;
    8000d826:	0a040c23          	sb	zero,184(s0)
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8000d82a:	12f43023          	sd	a5,288(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8000d82e:	12f43423          	sd	a5,296(s0)
JS_InitAtoms():
quickjs-nuttx/quickjs.c:2598
    rt->atom_hash = NULL;
    8000d832:	04043c23          	sd	zero,88(s0)
quickjs-nuttx/quickjs.c:2597
    rt->atom_hash_size = 0;
    8000d836:	04043423          	sd	zero,72(s0)
quickjs-nuttx/quickjs.c:2600
    rt->atom_size = 0;
    8000d83a:	04042823          	sw	zero,80(s0)
quickjs-nuttx/quickjs.c:2601
    rt->atom_free_index = 0;
    8000d83e:	06042423          	sw	zero,104(s0)
quickjs-nuttx/quickjs.c:2602
    if (JS_ResizeAtomHash(rt, 256))     /* there are at least 195 predefined atoms */
    8000d842:	10000593          	li	a1,256
    8000d846:	8522                	mv	a0,s0
    8000d848:	b80fd0ef          	jal	ra,8000abc8 <JS_ResizeAtomHash>
    8000d84c:	e125                	bnez	a0,8000d8ac <JS_NewRuntime2+0x190>
quickjs-nuttx/quickjs.c:2605
    p = js_atom_init;
    8000d84e:	00062997          	auipc	s3,0x62
    8000d852:	67298993          	addi	s3,s3,1650 # 8006fec0 <js_atom_init>
quickjs-nuttx/quickjs.c:2606
    for(i = 1; i < JS_ATOM_END; i++) {
    8000d856:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:2607
        if (i == JS_ATOM_Private_brand)
    8000d858:	0d400a13          	li	s4,212
quickjs-nuttx/quickjs.c:2606
    for(i = 1; i < JS_ATOM_END; i++) {
    8000d85c:	0e300a93          	li	s5,227
quickjs-nuttx/quickjs.c:2608
            atom_type = JS_ATOM_TYPE_PRIVATE;
    8000d860:	4691                	li	a3,4
quickjs-nuttx/quickjs.c:2607
        if (i == JS_ATOM_Private_brand)
    8000d862:	01490663          	beq	s2,s4,8000d86e <JS_NewRuntime2+0x152>
quickjs-nuttx/quickjs.c:2610
            atom_type = JS_ATOM_TYPE_SYMBOL;
    8000d866:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:2609
        else if (i >= JS_ATOM_Symbol_toPrimitive)
    8000d868:	012a4363          	blt	s4,s2,8000d86e <JS_NewRuntime2+0x152>
quickjs-nuttx/quickjs.c:2612
            atom_type = JS_ATOM_TYPE_STRING;
    8000d86c:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:2613
        len = strlen(p);
    8000d86e:	854e                	mv	a0,s3
    8000d870:	e436                	sd	a3,8(sp)
    8000d872:	510560ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/quickjs.c:2614
        if (__JS_NewAtomInit(rt, p, len, atom_type) == JS_ATOM_NULL)
    8000d876:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:2613
        len = strlen(p);
    8000d878:	0005049b          	sext.w	s1,a0
quickjs-nuttx/quickjs.c:2614
        if (__JS_NewAtomInit(rt, p, len, atom_type) == JS_ATOM_NULL)
    8000d87c:	8626                	mv	a2,s1
    8000d87e:	85ce                	mv	a1,s3
    8000d880:	8522                	mv	a0,s0
    8000d882:	ed8fd0ef          	jal	ra,8000af5a <__JS_NewAtomInit>
    8000d886:	2501                	sext.w	a0,a0
    8000d888:	c115                	beqz	a0,8000d8ac <JS_NewRuntime2+0x190>
quickjs-nuttx/quickjs.c:2616
        p = p + len + 1;
    8000d88a:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs.c:2606
    for(i = 1; i < JS_ATOM_END; i++) {
    8000d88c:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:2616
        p = p + len + 1;
    8000d88e:	99a6                	add	s3,s3,s1
quickjs-nuttx/quickjs.c:2606
    for(i = 1; i < JS_ATOM_END; i++) {
    8000d890:	fd5918e3          	bne	s2,s5,8000d860 <JS_NewRuntime2+0x144>
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1660
    if (init_class_range(rt, js_std_class_def, JS_CLASS_OBJECT,
    8000d894:	02f00693          	li	a3,47
    8000d898:	4605                	li	a2,1
    8000d89a:	00066597          	auipc	a1,0x66
    8000d89e:	16e58593          	addi	a1,a1,366 # 80073a08 <js_std_class_def>
    8000d8a2:	8522                	mv	a0,s0
    8000d8a4:	ffbfa0ef          	jal	ra,8000889e <init_class_range>
    8000d8a8:	00055763          	bgez	a0,8000d8b6 <JS_NewRuntime2+0x19a>
quickjs-nuttx/quickjs.c:1681
    JS_FreeRuntime(rt);
    8000d8ac:	8522                	mv	a0,s0
    8000d8ae:	d5fff0ef          	jal	ra,8000d60c <JS_FreeRuntime>
quickjs-nuttx/quickjs.c:1682
    return NULL;
    8000d8b2:	4401                	li	s0,0
    8000d8b4:	a851                	j	8000d948 <JS_NewRuntime2+0x22c>
quickjs-nuttx/quickjs.c:1663
    rt->class_array[JS_CLASS_ARGUMENTS].exotic = &js_arguments_exotic_methods;
    8000d8b6:	783c                	ld	a5,112(s0)
    8000d8b8:	00062717          	auipc	a4,0x62
    8000d8bc:	d7870713          	addi	a4,a4,-648 # 8006f630 <js_arguments_exotic_methods>
init_shape_hash():
quickjs-nuttx/quickjs.c:4275
    rt->shape_hash = js_mallocz_rt(rt, sizeof(rt->shape_hash[0]) *
    8000d8c0:	08000593          	li	a1,128
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1663
    rt->class_array[JS_CLASS_ARGUMENTS].exotic = &js_arguments_exotic_methods;
    8000d8c4:	16e7b023          	sd	a4,352(a5)
quickjs-nuttx/quickjs.c:1664
    rt->class_array[JS_CLASS_STRING].exotic = &js_string_exotic_methods;
    8000d8c8:	783c                	ld	a5,112(s0)
    8000d8ca:	00066717          	auipc	a4,0x66
    8000d8ce:	5a670713          	addi	a4,a4,1446 # 80073e70 <js_string_exotic_methods>
init_shape_hash():
quickjs-nuttx/quickjs.c:4275
    rt->shape_hash = js_mallocz_rt(rt, sizeof(rt->shape_hash[0]) *
    8000d8d2:	8522                	mv	a0,s0
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1664
    rt->class_array[JS_CLASS_STRING].exotic = &js_string_exotic_methods;
    8000d8d4:	f7f8                	sd	a4,232(a5)
quickjs-nuttx/quickjs.c:1665
    rt->class_array[JS_CLASS_MODULE_NS].exotic = &js_module_ns_exotic_methods;
    8000d8d6:	783c                	ld	a5,112(s0)
    8000d8d8:	00065717          	auipc	a4,0x65
    8000d8dc:	0f870713          	addi	a4,a4,248 # 800729d0 <js_module_ns_exotic_methods>
    8000d8e0:	1ce7bc23          	sd	a4,472(a5)
quickjs-nuttx/quickjs.c:1667
    rt->class_array[JS_CLASS_C_FUNCTION].call = js_call_c_function;
    8000d8e4:	783c                	ld	a5,112(s0)
    8000d8e6:	00023717          	auipc	a4,0x23
    8000d8ea:	d7870713          	addi	a4,a4,-648 # 8003065e <js_call_c_function>
    8000d8ee:	1ee7bc23          	sd	a4,504(a5)
quickjs-nuttx/quickjs.c:1668
    rt->class_array[JS_CLASS_C_FUNCTION_DATA].call = js_c_function_data_call;
    8000d8f2:	783c                	ld	a5,112(s0)
    8000d8f4:	00001717          	auipc	a4,0x1
    8000d8f8:	dc470713          	addi	a4,a4,-572 # 8000e6b8 <js_c_function_data_call>
    8000d8fc:	26e7b823          	sd	a4,624(a5)
quickjs-nuttx/quickjs.c:1669
    rt->class_array[JS_CLASS_BOUND_FUNCTION].call = js_call_bound_function;
    8000d900:	783c                	ld	a5,112(s0)
    8000d902:	00037717          	auipc	a4,0x37
    8000d906:	69c70713          	addi	a4,a4,1692 # 80044f9e <js_call_bound_function>
    8000d90a:	24e7b423          	sd	a4,584(a5)
quickjs-nuttx/quickjs.c:1670
    rt->class_array[JS_CLASS_GENERATOR_FUNCTION].call = js_generator_function_call;
    8000d90e:	783c                	ld	a5,112(s0)
    8000d910:	00034717          	auipc	a4,0x34
    8000d914:	f3870713          	addi	a4,a4,-200 # 80041848 <js_generator_function_call>
    8000d918:	28e7bc23          	sd	a4,664(a5)
init_shape_hash():
quickjs-nuttx/quickjs.c:4272
    rt->shape_hash_bits = 4;   /* 16 shapes */
    8000d91c:	4785                	li	a5,1
    8000d91e:	1792                	slli	a5,a5,0x24
    8000d920:	0791                	addi	a5,a5,4
    8000d922:	16f43c23          	sd	a5,376(s0)
quickjs-nuttx/quickjs.c:4274
    rt->shape_hash_count = 0;
    8000d926:	18042023          	sw	zero,384(s0)
quickjs-nuttx/quickjs.c:4275
    rt->shape_hash = js_mallocz_rt(rt, sizeof(rt->shape_hash[0]) *
    8000d92a:	a80fd0ef          	jal	ra,8000abaa <js_mallocz_rt>
    8000d92e:	18a43423          	sd	a0,392(s0)
quickjs-nuttx/quickjs.c:4277
    if (!rt->shape_hash)
    8000d932:	dd2d                	beqz	a0,8000d8ac <JS_NewRuntime2+0x190>
JS_NewRuntime2():
quickjs-nuttx/quickjs.c:1674
    rt->stack_size = JS_DEFAULT_STACK_SIZE;
    8000d934:	000407b7          	lui	a5,0x40
    8000d938:	e47c                	sd	a5,200(s0)
quickjs-nuttx/quickjs.c:1675
    JS_UpdateStackTop(rt);
    8000d93a:	8522                	mv	a0,s0
    8000d93c:	fb2fd0ef          	jal	ra,8000b0ee <JS_UpdateStackTop>
quickjs-nuttx/quickjs.c:1677
    rt->current_exception = JS_NULL;
    8000d940:	4789                	li	a5,2
    8000d942:	0e043023          	sd	zero,224(s0)
    8000d946:	f47c                	sd	a5,232(s0)
quickjs-nuttx/quickjs.c:1683
}
    8000d948:	70a6                	ld	ra,104(sp)
    8000d94a:	8522                	mv	a0,s0
    8000d94c:	7406                	ld	s0,96(sp)
    8000d94e:	64e6                	ld	s1,88(sp)
    8000d950:	6946                	ld	s2,80(sp)
    8000d952:	69a6                	ld	s3,72(sp)
    8000d954:	6a06                	ld	s4,64(sp)
    8000d956:	7ae2                	ld	s5,56(sp)
    8000d958:	6165                	addi	sp,sp,112
    8000d95a:	8082                	ret

000000008000d95c <JS_NewRuntime>:
JS_NewRuntime():
quickjs-nuttx/quickjs.c:1777
    return JS_NewRuntime2(&def_malloc_funcs, NULL);
    8000d95c:	4581                	li	a1,0
    8000d95e:	00061517          	auipc	a0,0x61
    8000d962:	3e250513          	addi	a0,a0,994 # 8006ed40 <def_malloc_funcs>
    8000d966:	db7ff06f          	j	8000d71c <JS_NewRuntime2>

000000008000d96a <JS_IsLiveObject>:
JS_IsLiveObject():
quickjs-nuttx/quickjs.c:5853
{
    8000d96a:	1141                	addi	sp,sp,-16
    8000d96c:	e432                	sd	a2,8(sp)
    8000d96e:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:5855
    if (!JS_IsObject(obj))
    8000d970:	2601                	sext.w	a2,a2
    8000d972:	57fd                	li	a5,-1
    8000d974:	4501                	li	a0,0
    8000d976:	00f61963          	bne	a2,a5,8000d988 <JS_IsLiveObject+0x1e>
quickjs-nuttx/quickjs.c:5858
    return !p->free_mark;
    8000d97a:	0055c503          	lbu	a0,5(a1)
    8000d97e:	0015551b          	srliw	a0,a0,0x1
    8000d982:	00154513          	xori	a0,a0,1
    8000d986:	8905                	andi	a0,a0,1
quickjs-nuttx/quickjs.c:5859
}
    8000d988:	0141                	addi	sp,sp,16
    8000d98a:	8082                	ret

000000008000d98c <JS_ComputeMemoryUsage>:
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:5942
{
    8000d98c:	7115                	addi	sp,sp,-224
    8000d98e:	e9a2                	sd	s0,208(sp)
    8000d990:	e1ca                	sd	s2,192(sp)
    8000d992:	842e                	mv	s0,a1
    8000d994:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:5945
    JSMemoryUsage_helper mem = { 0 }, *hp = &mem;
    8000d996:	04000613          	li	a2,64
    8000d99a:	4581                	li	a1,0
    8000d99c:	1008                	addi	a0,sp,32
quickjs-nuttx/quickjs.c:5942
{
    8000d99e:	ed86                	sd	ra,216(sp)
    8000d9a0:	fd4e                	sd	s3,184(sp)
    8000d9a2:	f952                	sd	s4,176(sp)
    8000d9a4:	f556                	sd	s5,168(sp)
    8000d9a6:	e5a6                	sd	s1,200(sp)
    8000d9a8:	f15a                	sd	s6,160(sp)
    8000d9aa:	ed5e                	sd	s7,152(sp)
    8000d9ac:	e962                	sd	s8,144(sp)
    8000d9ae:	e566                	sd	s9,136(sp)
    8000d9b0:	e16a                	sd	s10,128(sp)
    8000d9b2:	fcee                	sd	s11,120(sp)
    8000d9b4:	b4a2                	fsd	fs0,104(sp)
    8000d9b6:	b0a6                	fsd	fs1,96(sp)
quickjs-nuttx/quickjs.c:5945
    JSMemoryUsage_helper mem = { 0 }, *hp = &mem;
    8000d9b8:	28a560ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:5947
    memset(s, 0, sizeof(*s));
    8000d9bc:	0d000613          	li	a2,208
    8000d9c0:	4581                	li	a1,0
    8000d9c2:	8522                	mv	a0,s0
    8000d9c4:	27e560ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:5948
    s->malloc_count = rt->malloc_state.malloc_count;
    8000d9c8:	02093783          	ld	a5,32(s2)
quickjs-nuttx/quickjs.c:5955
    list_for_each(el, &rt->context_list) {
    8000d9cc:	07890993          	addi	s3,s2,120
quickjs-nuttx/quickjs.c:5996
                s->memory_used_size += m->import_entries_count * sizeof(*m->import_entries);
    8000d9d0:	4a31                	li	s4,12
quickjs-nuttx/quickjs.c:5948
    s->malloc_count = rt->malloc_state.malloc_count;
    8000d9d2:	ec1c                	sd	a5,24(s0)
quickjs-nuttx/quickjs.c:5949
    s->malloc_size = rt->malloc_state.malloc_size;
    8000d9d4:	02893783          	ld	a5,40(s2)
    8000d9d8:	e01c                	sd	a5,0(s0)
quickjs-nuttx/quickjs.c:5950
    s->malloc_limit = rt->malloc_state.malloc_limit;
    8000d9da:	03093783          	ld	a5,48(s2)
    8000d9de:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:5952
    s->memory_used_count = 2; /* rt + rt->class_array */
    8000d9e0:	4789                	li	a5,2
    8000d9e2:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:5953
    s->memory_used_size = sizeof(JSRuntime) + sizeof(JSValue) * rt->class_count;
    8000d9e4:	06c92783          	lw	a5,108(s2)
    8000d9e8:	02c78793          	addi	a5,a5,44 # 4002c <asinh-0x7ffbffd4>
    8000d9ec:	0792                	slli	a5,a5,0x4
    8000d9ee:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:5955
    list_for_each(el, &rt->context_list) {
    8000d9f0:	08093a83          	ld	s5,128(s2)
quickjs-nuttx/quickjs.c:5955 (discriminator 1)
    8000d9f4:	153a9e63          	bne	s5,s3,8000db50 <JS_ComputeMemoryUsage+0x1c4>
quickjs-nuttx/quickjs.c:6003
    list_for_each(el, &rt->gc_obj_list) {
    8000d9f8:	09093483          	ld	s1,144(s2)
    8000d9fc:	08890a93          	addi	s5,s2,136
quickjs-nuttx/quickjs.c:6010
        if (gp->gc_obj_type == JS_GC_OBJ_TYPE_FUNCTION_BYTECODE) {
    8000da00:	4b05                	li	s6,1
    8000da02:	0005ca17          	auipc	s4,0x5c
    8000da06:	db6a0a13          	addi	s4,s4,-586 # 800697b8 <qjsc_repl+0x4208>
quickjs-nuttx/quickjs.c:6082
                            s->memory_used_count += 1 / ref_count;
    8000da0a:	00086797          	auipc	a5,0x86
    8000da0e:	1867b407          	fld	fs0,390(a5) # 80093b90 <_erodata+0x1e>
quickjs-nuttx/quickjs.c:6083
                            s->js_func_size += sizeof(*var_refs[i]) / ref_count;
    8000da12:	00086797          	auipc	a5,0x86
    8000da16:	1c67b487          	fld	fs1,454(a5) # 80093bd8 <_erodata+0x66>
quickjs-nuttx/quickjs.c:6003 (discriminator 1)
    list_for_each(el, &rt->gc_obj_list) {
    8000da1a:	25549863          	bne	s1,s5,8000dc6a <JS_ComputeMemoryUsage+0x2de>
quickjs-nuttx/quickjs.c:6187
    s->obj_size += s->obj_count * sizeof(JSObject);
    8000da1e:	04843b03          	ld	s6,72(s0)
    8000da22:	04800793          	li	a5,72
    8000da26:	05043983          	ld	s3,80(s0)
    8000da2a:	02fb07b3          	mul	a5,s6,a5
quickjs-nuttx/quickjs.c:6190
    s->memory_used_count++; /* rt->shape_hash */
    8000da2e:	02043b83          	ld	s7,32(s0)
quickjs-nuttx/quickjs.c:6191
    s->memory_used_size += sizeof(rt->shape_hash[0]) * rt->shape_hash_size;
    8000da32:	01043a03          	ld	s4,16(s0)
quickjs-nuttx/quickjs.c:6192
    for(i = 0; i < rt->shape_hash_size; i++) {
    8000da36:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:6187
    s->obj_size += s->obj_count * sizeof(JSObject);
    8000da38:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:6190
    s->memory_used_count++; /* rt->shape_hash */
    8000da3a:	001b8793          	addi	a5,s7,1 # ffffffff80000001 <_ebss+0xfffffffeffefee9b>
quickjs-nuttx/quickjs.c:6187
    s->obj_size += s->obj_count * sizeof(JSObject);
    8000da3e:	05343823          	sd	s3,80(s0)
quickjs-nuttx/quickjs.c:6190
    s->memory_used_count++; /* rt->shape_hash */
    8000da42:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6191
    s->memory_used_size += sizeof(rt->shape_hash[0]) * rt->shape_hash_size;
    8000da44:	17c92783          	lw	a5,380(s2)
    8000da48:	078e                	slli	a5,a5,0x3
    8000da4a:	9a3e                	add	s4,s4,a5
    8000da4c:	01443823          	sd	s4,16(s0)
quickjs-nuttx/quickjs.c:6192 (discriminator 1)
    for(i = 0; i < rt->shape_hash_size; i++) {
    8000da50:	17c92783          	lw	a5,380(s2)
    8000da54:	54f6c763          	blt	a3,a5,8000dfa2 <JS_ComputeMemoryUsage+0x616>
quickjs-nuttx/quickjs.c:6202
    s->memory_used_count += 2; /* rt->atom_array, rt->atom_hash */
    8000da58:	0b8d                	addi	s7,s7,3
    8000da5a:	03743023          	sd	s7,32(s0)
quickjs-nuttx/quickjs.c:6203
    s->atom_count = rt->atom_count;
    8000da5e:	04c92d03          	lw	s10,76(s2)
quickjs-nuttx/quickjs.c:6209
            s->atom_size += (sizeof(*p) + (p->len << p->is_wide_char) +
    8000da62:	80000637          	lui	a2,0x80000
quickjs-nuttx/quickjs.c:6206
    for(i = 0; i < rt->atom_size; i++) {
    8000da66:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:6203
    s->atom_count = rt->atom_count;
    8000da68:	03a43423          	sd	s10,40(s0)
quickjs-nuttx/quickjs.c:6204
    s->atom_size = sizeof(rt->atom_array[0]) * rt->atom_size +
    8000da6c:	05092703          	lw	a4,80(s2)
quickjs-nuttx/quickjs.c:6205
        sizeof(rt->atom_hash[0]) * rt->atom_hash_size;
    8000da70:	04892783          	lw	a5,72(s2)
quickjs-nuttx/quickjs.c:6209
            s->atom_size += (sizeof(*p) + (p->len << p->is_wide_char) +
    8000da74:	fff64613          	not	a2,a2
quickjs-nuttx/quickjs.c:6204
    s->atom_size = sizeof(rt->atom_array[0]) * rt->atom_size +
    8000da78:	0706                	slli	a4,a4,0x1
    8000da7a:	973e                	add	a4,a4,a5
    8000da7c:	070a                	slli	a4,a4,0x2
    8000da7e:	f818                	sd	a4,48(s0)
quickjs-nuttx/quickjs.c:6206 (discriminator 1)
    for(i = 0; i < rt->atom_size; i++) {
    8000da80:	05092783          	lw	a5,80(s2)
quickjs-nuttx/quickjs.c:6209 (discriminator 1)
            s->atom_size += (sizeof(*p) + (p->len << p->is_wide_char) +
    8000da84:	03043a83          	ld	s5,48(s0)
quickjs-nuttx/quickjs.c:6206 (discriminator 1)
    for(i = 0; i < rt->atom_size; i++) {
    8000da88:	54f6c663          	blt	a3,a5,8000dfd4 <JS_ComputeMemoryUsage+0x648>
quickjs-nuttx/quickjs.c:6213
    s->str_count = round(mem.str_count);
    8000da8c:	3522                	fld	fa0,40(sp)
    8000da8e:	80ef30ef          	jal	ra,80000a9c <round>
    8000da92:	c2251753          	fcvt.l.d	a4,fa0,rtz
quickjs-nuttx/quickjs.c:6214
    s->str_size = round(mem.str_size);
    8000da96:	3542                	fld	fa0,48(sp)
quickjs-nuttx/quickjs.c:6213
    s->str_count = round(mem.str_count);
    8000da98:	fc18                	sd	a4,56(s0)
    8000da9a:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs.c:6214
    s->str_size = round(mem.str_size);
    8000da9c:	800f30ef          	jal	ra,80000a9c <round>
quickjs-nuttx/quickjs.c:6215
    s->js_func_count = mem.js_func_count;
    8000daa0:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:6214
    s->str_size = round(mem.str_size);
    8000daa2:	c2251c53          	fcvt.l.d	s8,fa0,rtz
quickjs-nuttx/quickjs.c:6216
    s->js_func_size = round(mem.js_func_size);
    8000daa6:	2506                	fld	fa0,64(sp)
quickjs-nuttx/quickjs.c:6215
    s->js_func_count = mem.js_func_count;
    8000daa8:	fc3c                	sd	a5,120(s0)
quickjs-nuttx/quickjs.c:6214
    s->str_size = round(mem.str_size);
    8000daaa:	05843023          	sd	s8,64(s0)
quickjs-nuttx/quickjs.c:6215
    s->js_func_count = mem.js_func_count;
    8000daae:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:6216
    s->js_func_size = round(mem.js_func_size);
    8000dab0:	fedf20ef          	jal	ra,80000a9c <round>
    8000dab4:	c2251953          	fcvt.l.d	s2,fa0,rtz
quickjs-nuttx/quickjs.c:6218
    s->js_func_pc2line_count = mem.js_func_pc2line_count;
    8000dab8:	6dc6                	ld	s11,80(sp)
quickjs-nuttx/quickjs.c:6219
    s->js_func_pc2line_size = mem.js_func_pc2line_size;
    8000daba:	6ce6                	ld	s9,88(sp)
quickjs-nuttx/quickjs.c:6217
    s->js_func_code_size = mem.js_func_code_size;
    8000dabc:	64a6                	ld	s1,72(sp)
quickjs-nuttx/quickjs.c:6220
    s->memory_used_count += round(mem.memory_used_count) +
    8000dabe:	3502                	fld	fa0,32(sp)
quickjs-nuttx/quickjs.c:6216
    s->js_func_size = round(mem.js_func_size);
    8000dac0:	09243023          	sd	s2,128(s0)
quickjs-nuttx/quickjs.c:6217
    s->js_func_code_size = mem.js_func_code_size;
    8000dac4:	e444                	sd	s1,136(s0)
quickjs-nuttx/quickjs.c:6218
    s->js_func_pc2line_count = mem.js_func_pc2line_count;
    8000dac6:	09b43823          	sd	s11,144(s0)
quickjs-nuttx/quickjs.c:6219
    s->js_func_pc2line_size = mem.js_func_pc2line_size;
    8000daca:	09943c23          	sd	s9,152(s0)
quickjs-nuttx/quickjs.c:6220
    s->memory_used_count += round(mem.memory_used_count) +
    8000dace:	fcff20ef          	jal	ra,80000a9c <round>
    8000dad2:	d20d07d3          	fcvt.d.w	fa5,s10
quickjs-nuttx/quickjs.c:6221
        s->atom_count + s->str_count +
    8000dad6:	6722                	ld	a4,8(sp)
quickjs-nuttx/quickjs.c:6222
        s->obj_count + s->shape_count +
    8000dad8:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:6220
    s->memory_used_count += round(mem.memory_used_count) +
    8000dada:	02a7f7d3          	fadd.d	fa5,fa5,fa0
quickjs-nuttx/quickjs.c:6221
        s->atom_count + s->str_count +
    8000dade:	d2277553          	fcvt.d.l	fa0,a4
quickjs-nuttx/quickjs.c:6222
        s->obj_count + s->shape_count +
    8000dae2:	7438                	ld	a4,104(s0)
    8000dae4:	d227f753          	fcvt.d.l	fa4,a5
quickjs-nuttx/quickjs.c:6224
    s->memory_used_size += s->atom_size + s->str_size +
    8000dae8:	94e6                	add	s1,s1,s9
quickjs-nuttx/quickjs.c:6227
}
    8000daea:	60ee                	ld	ra,216(sp)
    8000daec:	6caa                	ld	s9,136(sp)
quickjs-nuttx/quickjs.c:6221
        s->atom_count + s->str_count +
    8000daee:	02a7f7d3          	fadd.d	fa5,fa5,fa0
    8000daf2:	d22b7553          	fcvt.d.l	fa0,s6
quickjs-nuttx/quickjs.c:6227
}
    8000daf6:	6d0a                	ld	s10,128(sp)
    8000daf8:	7b0a                	ld	s6,160(sp)
quickjs-nuttx/quickjs.c:6221
        s->atom_count + s->str_count +
    8000dafa:	02a7f7d3          	fadd.d	fa5,fa5,fa0
quickjs-nuttx/quickjs.c:6222
        s->obj_count + s->shape_count +
    8000dafe:	d2277553          	fcvt.d.l	fa0,a4
    8000db02:	02a7f7d3          	fadd.d	fa5,fa5,fa0
    8000db06:	02e7f7d3          	fadd.d	fa5,fa5,fa4
quickjs-nuttx/quickjs.c:6223
        s->js_func_count + s->js_func_pc2line_count;
    8000db0a:	d22df753          	fcvt.d.l	fa4,s11
quickjs-nuttx/quickjs.c:6227
}
    8000db0e:	7de6                	ld	s11,120(sp)
quickjs-nuttx/quickjs.c:6223
        s->js_func_count + s->js_func_pc2line_count;
    8000db10:	02e7f7d3          	fadd.d	fa5,fa5,fa4
quickjs-nuttx/quickjs.c:6220
    s->memory_used_count += round(mem.memory_used_count) +
    8000db14:	d22bf753          	fcvt.d.l	fa4,s7
quickjs-nuttx/quickjs.c:6227
}
    8000db18:	6bea                	ld	s7,152(sp)
quickjs-nuttx/quickjs.c:6220
    s->memory_used_count += round(mem.memory_used_count) +
    8000db1a:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    8000db1e:	c22797d3          	fcvt.l.d	a5,fa5,rtz
    8000db22:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6224
    s->memory_used_size += s->atom_size + s->str_size +
    8000db24:	703c                	ld	a5,96(s0)
    8000db26:	94be                	add	s1,s1,a5
    8000db28:	783c                	ld	a5,112(s0)
    8000db2a:	94be                	add	s1,s1,a5
    8000db2c:	014487b3          	add	a5,s1,s4
    8000db30:	97ce                	add	a5,a5,s3
    8000db32:	97d6                	add	a5,a5,s5
    8000db34:	97e2                	add	a5,a5,s8
    8000db36:	97ca                	add	a5,a5,s2
    8000db38:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:6227
}
    8000db3a:	644e                	ld	s0,208(sp)
    8000db3c:	64ae                	ld	s1,200(sp)
    8000db3e:	690e                	ld	s2,192(sp)
    8000db40:	79ea                	ld	s3,184(sp)
    8000db42:	7a4a                	ld	s4,176(sp)
    8000db44:	7aaa                	ld	s5,168(sp)
    8000db46:	6c4a                	ld	s8,144(sp)
    8000db48:	3426                	fld	fs0,104(sp)
    8000db4a:	3486                	fld	fs1,96(sp)
    8000db4c:	612d                	addi	sp,sp,224
    8000db4e:	8082                	ret
quickjs-nuttx/quickjs.c:5958
        s->memory_used_count += 2; /* ctx + ctx->class_proto */
    8000db50:	701c                	ld	a5,32(s0)
quickjs-nuttx/quickjs.c:5957
        JSShape *sh = ctx->array_shape;
    8000db52:	018ab703          	ld	a4,24(s5)
quickjs-nuttx/quickjs.c:5959
        s->memory_used_size += sizeof(JSContext) +
    8000db56:	6814                	ld	a3,16(s0)
quickjs-nuttx/quickjs.c:5958
        s->memory_used_count += 2; /* ctx + ctx->class_proto */
    8000db58:	0789                	addi	a5,a5,2
    8000db5a:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:5960
            sizeof(JSValue) * rt->class_count;
    8000db5c:	06c92783          	lw	a5,108(s2)
    8000db60:	0792                	slli	a5,a5,0x4
quickjs-nuttx/quickjs.c:5959
        s->memory_used_size += sizeof(JSContext) +
    8000db62:	97b6                	add	a5,a5,a3
    8000db64:	1d878793          	addi	a5,a5,472
    8000db68:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:5961
        s->binary_object_count += ctx->binary_object_count;
    8000db6a:	010ad683          	lhu	a3,16(s5)
    8000db6e:	607c                	ld	a5,192(s0)
    8000db70:	97b6                	add	a5,a5,a3
    8000db72:	e07c                	sd	a5,192(s0)
quickjs-nuttx/quickjs.c:5962
        s->binary_object_size += ctx->binary_object_size;
    8000db74:	014aa683          	lw	a3,20(s5)
    8000db78:	647c                	ld	a5,200(s0)
    8000db7a:	97b6                	add	a5,a5,a3
    8000db7c:	e47c                	sd	a5,200(s0)
quickjs-nuttx/quickjs.c:5965
        if (sh && !sh->is_hashed) {
    8000db7e:	c315                	beqz	a4,8000dba2 <JS_ComputeMemoryUsage+0x216>
quickjs-nuttx/quickjs.c:5965 (discriminator 1)
    8000db80:	01874783          	lbu	a5,24(a4)
    8000db84:	ef99                	bnez	a5,8000dba2 <JS_ComputeMemoryUsage+0x216>
quickjs-nuttx/quickjs.c:5966
            int hash_size = sh->prop_hash_mask + 1;
    8000db86:	531c                	lw	a5,32(a4)
    8000db88:	0017869b          	addiw	a3,a5,1
quickjs-nuttx/quickjs.c:5967
            s->shape_count++;
    8000db8c:	743c                	ld	a5,104(s0)
    8000db8e:	0785                	addi	a5,a5,1
    8000db90:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:5968
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000db92:	535c                	lw	a5,36(a4)
    8000db94:	7838                	ld	a4,112(s0)
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8000db96:	0786                	slli	a5,a5,0x1
    8000db98:	07c1                	addi	a5,a5,16
    8000db9a:	97b6                	add	a5,a5,a3
    8000db9c:	078a                	slli	a5,a5,0x2
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:5968
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000db9e:	97ba                	add	a5,a5,a4
    8000dba0:	f83c                	sd	a5,112(s0)
quickjs-nuttx/quickjs.c:5970
        list_for_each(el1, &ctx->loaded_modules) {
    8000dba2:	198ab483          	ld	s1,408(s5)
    8000dba6:	190a8b13          	addi	s6,s5,400
quickjs-nuttx/quickjs.c:5970 (discriminator 1)
    8000dbaa:	01649563          	bne	s1,s6,8000dbb4 <JS_ComputeMemoryUsage+0x228>
quickjs-nuttx/quickjs.c:5955 (discriminator 2)
    list_for_each(el, &rt->context_list) {
    8000dbae:	008aba83          	ld	s5,8(s5)
    8000dbb2:	b589                	j	8000d9f4 <JS_ComputeMemoryUsage+0x68>
quickjs-nuttx/quickjs.c:5972
            s->memory_used_count += 1;
    8000dbb4:	7014                	ld	a3,32(s0)
quickjs-nuttx/quickjs.c:5971
            JSModuleDef *m = list_entry(el1, JSModuleDef, link);
    8000dbb6:	ff848b93          	addi	s7,s1,-8
quickjs-nuttx/quickjs.c:5972
            s->memory_used_count += 1;
    8000dbba:	00168793          	addi	a5,a3,1
    8000dbbe:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:5973
            s->memory_used_size += sizeof(*m);
    8000dbc0:	681c                	ld	a5,16(s0)
    8000dbc2:	11878713          	addi	a4,a5,280
    8000dbc6:	e818                	sd	a4,16(s0)
quickjs-nuttx/quickjs.c:5974
            if (m->req_module_entries) {
    8000dbc8:	689c                	ld	a5,16(s1)
    8000dbca:	c799                	beqz	a5,8000dbd8 <JS_ComputeMemoryUsage+0x24c>
quickjs-nuttx/quickjs.c:5975
                s->memory_used_count += 1;
    8000dbcc:	0689                	addi	a3,a3,2
    8000dbce:	f014                	sd	a3,32(s0)
quickjs-nuttx/quickjs.c:5976
                s->memory_used_size += m->req_module_entries_count * sizeof(*m->req_module_entries);
    8000dbd0:	4c9c                	lw	a5,24(s1)
    8000dbd2:	0792                	slli	a5,a5,0x4
    8000dbd4:	97ba                	add	a5,a5,a4
    8000dbd6:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:5978
            if (m->export_entries) {
    8000dbd8:	709c                	ld	a5,32(s1)
    8000dbda:	ef95                	bnez	a5,8000dc16 <JS_ComputeMemoryUsage+0x28a>
quickjs-nuttx/quickjs.c:5990
            if (m->star_export_entries) {
    8000dbdc:	789c                	ld	a5,48(s1)
    8000dbde:	efa5                	bnez	a5,8000dc56 <JS_ComputeMemoryUsage+0x2ca>
quickjs-nuttx/quickjs.c:5994
            if (m->import_entries) {
    8000dbe0:	60bc                	ld	a5,64(s1)
    8000dbe2:	cb91                	beqz	a5,8000dbf6 <JS_ComputeMemoryUsage+0x26a>
quickjs-nuttx/quickjs.c:5995
                s->memory_used_count += 1;
    8000dbe4:	701c                	ld	a5,32(s0)
    8000dbe6:	0785                	addi	a5,a5,1
    8000dbe8:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:5996
                s->memory_used_size += m->import_entries_count * sizeof(*m->import_entries);
    8000dbea:	44bc                	lw	a5,72(s1)
    8000dbec:	03478733          	mul	a4,a5,s4
    8000dbf0:	681c                	ld	a5,16(s0)
    8000dbf2:	97ba                	add	a5,a5,a4
    8000dbf4:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:5998 (discriminator 2)
            compute_value_size(m->module_ns, hp);
    8000dbf6:	058bb503          	ld	a0,88(s7)
    8000dbfa:	060bb583          	ld	a1,96(s7)
    8000dbfe:	1010                	addi	a2,sp,32
    8000dc00:	935fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:5999 (discriminator 2)
            compute_value_size(m->func_obj, hp);
    8000dc04:	068bb503          	ld	a0,104(s7)
    8000dc08:	070bb583          	ld	a1,112(s7)
    8000dc0c:	1010                	addi	a2,sp,32
    8000dc0e:	927fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:5970 (discriminator 2)
        list_for_each(el1, &ctx->loaded_modules) {
    8000dc12:	6484                	ld	s1,8(s1)
    8000dc14:	bf59                	j	8000dbaa <JS_ComputeMemoryUsage+0x21e>
quickjs-nuttx/quickjs.c:5979
                s->memory_used_count += 1;
    8000dc16:	701c                	ld	a5,32(s0)
quickjs-nuttx/quickjs.c:5981
                for (i = 0; i < m->export_entries_count; i++) {
    8000dc18:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:5979
                s->memory_used_count += 1;
    8000dc1a:	0785                	addi	a5,a5,1
    8000dc1c:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:5980
                s->memory_used_size += m->export_entries_count * sizeof(*m->export_entries);
    8000dc1e:	549c                	lw	a5,40(s1)
    8000dc20:	00579713          	slli	a4,a5,0x5
    8000dc24:	681c                	ld	a5,16(s0)
    8000dc26:	97ba                	add	a5,a5,a4
    8000dc28:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:5981 (discriminator 1)
                for (i = 0; i < m->export_entries_count; i++) {
    8000dc2a:	549c                	lw	a5,40(s1)
    8000dc2c:	fafc58e3          	bge	s8,a5,8000dbdc <JS_ComputeMemoryUsage+0x250>
quickjs-nuttx/quickjs.c:5982
                    JSExportEntry *me = &m->export_entries[i];
    8000dc30:	7098                	ld	a4,32(s1)
    8000dc32:	005c1793          	slli	a5,s8,0x5
    8000dc36:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:5983
                    if (me->export_type == JS_EXPORT_TYPE_LOCAL && me->u.local.var_ref) {
    8000dc38:	4b98                	lw	a4,16(a5)
    8000dc3a:	ef01                	bnez	a4,8000dc52 <JS_ComputeMemoryUsage+0x2c6>
quickjs-nuttx/quickjs.c:5983 (discriminator 1)
    8000dc3c:	6798                	ld	a4,8(a5)
    8000dc3e:	cb11                	beqz	a4,8000dc52 <JS_ComputeMemoryUsage+0x2c6>
quickjs-nuttx/quickjs.c:5985
                        s->memory_used_count += 1;
    8000dc40:	7018                	ld	a4,32(s0)
quickjs-nuttx/quickjs.c:5986
                        compute_value_size(me->u.local.var_ref->value, hp);
    8000dc42:	1010                	addi	a2,sp,32
quickjs-nuttx/quickjs.c:5985
                        s->memory_used_count += 1;
    8000dc44:	0705                	addi	a4,a4,1
    8000dc46:	f018                	sd	a4,32(s0)
quickjs-nuttx/quickjs.c:5986
                        compute_value_size(me->u.local.var_ref->value, hp);
    8000dc48:	679c                	ld	a5,8(a5)
    8000dc4a:	7388                	ld	a0,32(a5)
    8000dc4c:	778c                	ld	a1,40(a5)
    8000dc4e:	8e7fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:5981 (discriminator 2)
                for (i = 0; i < m->export_entries_count; i++) {
    8000dc52:	2c05                	addiw	s8,s8,1
    8000dc54:	bfd9                	j	8000dc2a <JS_ComputeMemoryUsage+0x29e>
quickjs-nuttx/quickjs.c:5991
                s->memory_used_count += 1;
    8000dc56:	701c                	ld	a5,32(s0)
    8000dc58:	0785                	addi	a5,a5,1
    8000dc5a:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:5992
                s->memory_used_size += m->star_export_entries_count * sizeof(*m->star_export_entries);
    8000dc5c:	5c9c                	lw	a5,56(s1)
    8000dc5e:	00279713          	slli	a4,a5,0x2
    8000dc62:	681c                	ld	a5,16(s0)
    8000dc64:	97ba                	add	a5,a5,a4
    8000dc66:	e81c                	sd	a5,16(s0)
    8000dc68:	bfa5                	j	8000dbe0 <JS_ComputeMemoryUsage+0x254>
quickjs-nuttx/quickjs.c:6010
        if (gp->gc_obj_type == JS_GC_OBJ_TYPE_FUNCTION_BYTECODE) {
    8000dc6a:	ffc4c783          	lbu	a5,-4(s1)
    8000dc6e:	8bbd                	andi	a5,a5,15
    8000dc70:	0d679363          	bne	a5,s6,8000dd36 <JS_ComputeMemoryUsage+0x3aa>
compute_bytecode_size():
quickjs-nuttx/quickjs.c:5892
    if (b->vardefs) {
    8000dc74:	749c                	ld	a5,40(s1)
quickjs-nuttx/quickjs.c:5891
    js_func_size = offsetof(JSFunctionBytecode, debug);
    8000dc76:	06000993          	li	s3,96
quickjs-nuttx/quickjs.c:5892
    if (b->vardefs) {
    8000dc7a:	cb99                	beqz	a5,8000dc90 <JS_ComputeMemoryUsage+0x304>
quickjs-nuttx/quickjs.c:5893
        js_func_size += (b->arg_count + b->var_count) * sizeof(*b->vardefs);
    8000dc7c:	0384d983          	lhu	s3,56(s1)
    8000dc80:	03a4d783          	lhu	a5,58(s1)
    8000dc84:	00f989bb          	addw	s3,s3,a5
    8000dc88:	0049999b          	slliw	s3,s3,0x4
    8000dc8c:	0609899b          	addiw	s3,s3,96
quickjs-nuttx/quickjs.c:5895
    if (b->cpool) {
    8000dc90:	64bc                	ld	a5,72(s1)
    8000dc92:	cb91                	beqz	a5,8000dca6 <JS_ComputeMemoryUsage+0x31a>
quickjs-nuttx/quickjs.c:5896
        js_func_size += b->cpool_count * sizeof(*b->cpool);
    8000dc94:	48bc                	lw	a5,80(s1)
quickjs-nuttx/quickjs.c:5897
        for (i = 0; i < b->cpool_count; i++) {
    8000dc96:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:5896
        js_func_size += b->cpool_count * sizeof(*b->cpool);
    8000dc98:	0047979b          	slliw	a5,a5,0x4
    8000dc9c:	013789bb          	addw	s3,a5,s3
quickjs-nuttx/quickjs.c:5897
        for (i = 0; i < b->cpool_count; i++) {
    8000dca0:	48bc                	lw	a5,80(s1)
    8000dca2:	06fbcd63          	blt	s7,a5,8000dd1c <JS_ComputeMemoryUsage+0x390>
quickjs-nuttx/quickjs.c:5902
    if (b->closure_var) {
    8000dca6:	789c                	ld	a5,48(s1)
    8000dca8:	c791                	beqz	a5,8000dcb4 <JS_ComputeMemoryUsage+0x328>
quickjs-nuttx/quickjs.c:5903
        js_func_size += b->closure_var_count * sizeof(*b->closure_var);
    8000dcaa:	48fc                	lw	a5,84(s1)
    8000dcac:	0037979b          	slliw	a5,a5,0x3
    8000dcb0:	013789bb          	addw	s3,a5,s3
quickjs-nuttx/quickjs.c:5905
    if (!b->read_only_bytecode && b->byte_code_buf) {
    8000dcb4:	0124c783          	lbu	a5,18(s1)
    8000dcb8:	8bc1                	andi	a5,a5,16
    8000dcba:	e799                	bnez	a5,8000dcc8 <JS_ComputeMemoryUsage+0x33c>
    8000dcbc:	6c9c                	ld	a5,24(s1)
    8000dcbe:	c789                	beqz	a5,8000dcc8 <JS_ComputeMemoryUsage+0x33c>
quickjs-nuttx/quickjs.c:5906
        hp->js_func_code_size += b->byte_code_len;
    8000dcc0:	5098                	lw	a4,32(s1)
    8000dcc2:	67a6                	ld	a5,72(sp)
    8000dcc4:	97ba                	add	a5,a5,a4
    8000dcc6:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:5908
    if (b->has_debug) {
    8000dcc8:	0124c703          	lbu	a4,18(s1)
quickjs-nuttx/quickjs.c:5890
    memory_used_count = 0;
    8000dccc:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:5908
    if (b->has_debug) {
    8000dcce:	8b11                	andi	a4,a4,4
    8000dcd0:	c70d                	beqz	a4,8000dcfa <JS_ComputeMemoryUsage+0x36e>
quickjs-nuttx/quickjs.c:5910
        if (b->debug.source) {
    8000dcd2:	78b4                	ld	a3,112(s1)
quickjs-nuttx/quickjs.c:5909
        js_func_size += sizeof(*b) - offsetof(JSFunctionBytecode, debug);
    8000dcd4:	0209899b          	addiw	s3,s3,32
    8000dcd8:	874e                	mv	a4,s3
quickjs-nuttx/quickjs.c:5910
        if (b->debug.source) {
    8000dcda:	c699                	beqz	a3,8000dce8 <JS_ComputeMemoryUsage+0x35c>
quickjs-nuttx/quickjs.c:5912
            js_func_size += b->debug.source_len + 1;
    8000dcdc:	0604a983          	lw	s3,96(s1)
quickjs-nuttx/quickjs.c:5911
            memory_used_count++;
    8000dce0:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:5912
            js_func_size += b->debug.source_len + 1;
    8000dce2:	2985                	addiw	s3,s3,1
    8000dce4:	00e989bb          	addw	s3,s3,a4
quickjs-nuttx/quickjs.c:5914
        if (b->debug.pc2line_len) {
    8000dce8:	50f0                	lw	a2,100(s1)
    8000dcea:	ca01                	beqz	a2,8000dcfa <JS_ComputeMemoryUsage+0x36e>
quickjs-nuttx/quickjs.c:5916
            hp->js_func_pc2line_count += 1;
    8000dcec:	66c6                	ld	a3,80(sp)
quickjs-nuttx/quickjs.c:5917
            hp->js_func_pc2line_size += b->debug.pc2line_len;
    8000dcee:	6766                	ld	a4,88(sp)
quickjs-nuttx/quickjs.c:5915
            memory_used_count++;
    8000dcf0:	2785                	addiw	a5,a5,1
quickjs-nuttx/quickjs.c:5916
            hp->js_func_pc2line_count += 1;
    8000dcf2:	0685                	addi	a3,a3,1
quickjs-nuttx/quickjs.c:5917
            hp->js_func_pc2line_size += b->debug.pc2line_len;
    8000dcf4:	9732                	add	a4,a4,a2
quickjs-nuttx/quickjs.c:5916
            hp->js_func_pc2line_count += 1;
    8000dcf6:	e8b6                	sd	a3,80(sp)
quickjs-nuttx/quickjs.c:5917
            hp->js_func_pc2line_size += b->debug.pc2line_len;
    8000dcf8:	ecba                	sd	a4,88(sp)
quickjs-nuttx/quickjs.c:5920
    hp->js_func_size += js_func_size;
    8000dcfa:	d2098753          	fcvt.d.w	fa4,s3
    8000dcfe:	2786                	fld	fa5,64(sp)
quickjs-nuttx/quickjs.c:5921
    hp->js_func_count += 1;
    8000dd00:	7762                	ld	a4,56(sp)
quickjs-nuttx/quickjs.c:5920
    hp->js_func_size += js_func_size;
    8000dd02:	02e7f7d3          	fadd.d	fa5,fa5,fa4
quickjs-nuttx/quickjs.c:5922
    hp->memory_used_count += memory_used_count;
    8000dd06:	d2078753          	fcvt.d.w	fa4,a5
quickjs-nuttx/quickjs.c:5921
    hp->js_func_count += 1;
    8000dd0a:	0705                	addi	a4,a4,1
    8000dd0c:	fc3a                	sd	a4,56(sp)
quickjs-nuttx/quickjs.c:5920
    hp->js_func_size += js_func_size;
    8000dd0e:	a0be                	fsd	fa5,64(sp)
quickjs-nuttx/quickjs.c:5922
    hp->memory_used_count += memory_used_count;
    8000dd10:	3782                	fld	fa5,32(sp)
    8000dd12:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    8000dd16:	b03e                	fsd	fa5,32(sp)
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:6003 (discriminator 2)
    list_for_each(el, &rt->gc_obj_list) {
    8000dd18:	6484                	ld	s1,8(s1)
    8000dd1a:	b301                	j	8000da1a <JS_ComputeMemoryUsage+0x8e>
compute_bytecode_size():
quickjs-nuttx/quickjs.c:5898
            JSValueConst val = b->cpool[i];
    8000dd1c:	64bc                	ld	a5,72(s1)
    8000dd1e:	004b9713          	slli	a4,s7,0x4
quickjs-nuttx/quickjs.c:5899
            compute_value_size(val, hp);
    8000dd22:	1010                	addi	a2,sp,32
quickjs-nuttx/quickjs.c:5898
            JSValueConst val = b->cpool[i];
    8000dd24:	97ba                	add	a5,a5,a4
    8000dd26:	6388                	ld	a0,0(a5)
    8000dd28:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:5897
        for (i = 0; i < b->cpool_count; i++) {
    8000dd2a:	2b85                	addiw	s7,s7,1
quickjs-nuttx/quickjs.c:5898
            JSValueConst val = b->cpool[i];
    8000dd2c:	e82a                	sd	a0,16(sp)
    8000dd2e:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:5899
            compute_value_size(val, hp);
    8000dd30:	805fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:5897
        for (i = 0; i < b->cpool_count; i++) {
    8000dd34:	b7b5                	j	8000dca0 <JS_ComputeMemoryUsage+0x314>
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:6013
        } else if (gp->gc_obj_type != JS_GC_OBJ_TYPE_JS_OBJECT) {
    8000dd36:	f3ed                	bnez	a5,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6018
        s->obj_count++;
    8000dd38:	643c                	ld	a5,72(s0)
quickjs-nuttx/quickjs.c:6017
        sh = p->shape;
    8000dd3a:	0104b983          	ld	s3,16(s1)
quickjs-nuttx/quickjs.c:6018
        s->obj_count++;
    8000dd3e:	0785                	addi	a5,a5,1
    8000dd40:	e43c                	sd	a5,72(s0)
quickjs-nuttx/quickjs.c:6019
        if (p->prop) {
    8000dd42:	6c9c                	ld	a5,24(s1)
    8000dd44:	e785                	bnez	a5,8000dd6c <JS_ComputeMemoryUsage+0x3e0>
quickjs-nuttx/quickjs.c:6033
        if (!sh->is_hashed) {
    8000dd46:	0189c783          	lbu	a5,24(s3)
    8000dd4a:	cfad                	beqz	a5,8000ddc4 <JS_ComputeMemoryUsage+0x438>
quickjs-nuttx/quickjs.c:6039
        switch(p->class_id) {
    8000dd4c:	ffe4d783          	lhu	a5,-2(s1)
    8000dd50:	02200713          	li	a4,34
    8000dd54:	37f9                	addiw	a5,a5,-2
    8000dd56:	03079693          	slli	a3,a5,0x30
    8000dd5a:	92c1                	srli	a3,a3,0x30
    8000dd5c:	22d76c63          	bltu	a4,a3,8000df94 <JS_ComputeMemoryUsage+0x608>
    8000dd60:	00269793          	slli	a5,a3,0x2
    8000dd64:	97d2                	add	a5,a5,s4
    8000dd66:	439c                	lw	a5,0(a5)
    8000dd68:	97d2                	add	a5,a5,s4
    8000dd6a:	8782                	jr	a5
quickjs-nuttx/quickjs.c:6020
            s->memory_used_count++;
    8000dd6c:	701c                	ld	a5,32(s0)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8000dd6e:	04098c13          	addi	s8,s3,64
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:6024
            for(i = 0; i < sh->prop_count; i++) {
    8000dd72:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:6020
            s->memory_used_count++;
    8000dd74:	0785                	addi	a5,a5,1
    8000dd76:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6021
            s->prop_size += sh->prop_size * sizeof(*p->prop);
    8000dd78:	0249a783          	lw	a5,36(s3)
    8000dd7c:	00479713          	slli	a4,a5,0x4
    8000dd80:	703c                	ld	a5,96(s0)
    8000dd82:	97ba                	add	a5,a5,a4
    8000dd84:	f03c                	sd	a5,96(s0)
quickjs-nuttx/quickjs.c:6022
            s->prop_count += sh->prop_count;
    8000dd86:	0289a703          	lw	a4,40(s3)
    8000dd8a:	6c3c                	ld	a5,88(s0)
    8000dd8c:	97ba                	add	a5,a5,a4
    8000dd8e:	ec3c                	sd	a5,88(s0)
quickjs-nuttx/quickjs.c:6024 (discriminator 1)
            for(i = 0; i < sh->prop_count; i++) {
    8000dd90:	0289a783          	lw	a5,40(s3)
    8000dd94:	fafbd9e3          	bge	s7,a5,8000dd46 <JS_ComputeMemoryUsage+0x3ba>
quickjs-nuttx/quickjs.c:6026
                if (prs->atom != JS_ATOM_NULL && !(prs->flags & JS_PROP_TMASK)) {
    8000dd98:	004c2783          	lw	a5,4(s8)
    8000dd9c:	c38d                	beqz	a5,8000ddbe <JS_ComputeMemoryUsage+0x432>
quickjs-nuttx/quickjs.c:6026 (discriminator 1)
    8000dd9e:	000c2783          	lw	a5,0(s8)
    8000dda2:	01a7d79b          	srliw	a5,a5,0x1a
    8000dda6:	0307f793          	andi	a5,a5,48
    8000ddaa:	eb91                	bnez	a5,8000ddbe <JS_ComputeMemoryUsage+0x432>
quickjs-nuttx/quickjs.c:6027
                    compute_value_size(pr->u.value, hp);
    8000ddac:	6c9c                	ld	a5,24(s1)
    8000ddae:	004b9713          	slli	a4,s7,0x4
    8000ddb2:	1010                	addi	a2,sp,32
    8000ddb4:	97ba                	add	a5,a5,a4
    8000ddb6:	6388                	ld	a0,0(a5)
    8000ddb8:	678c                	ld	a1,8(a5)
    8000ddba:	f7afb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:6029 (discriminator 2)
                prs++;
    8000ddbe:	0c21                	addi	s8,s8,8
quickjs-nuttx/quickjs.c:6024 (discriminator 2)
            for(i = 0; i < sh->prop_count; i++) {
    8000ddc0:	2b85                	addiw	s7,s7,1
    8000ddc2:	b7f9                	j	8000dd90 <JS_ComputeMemoryUsage+0x404>
quickjs-nuttx/quickjs.c:6034
            int hash_size = sh->prop_hash_mask + 1;
    8000ddc4:	0209a783          	lw	a5,32(s3)
    8000ddc8:	0017871b          	addiw	a4,a5,1
quickjs-nuttx/quickjs.c:6035
            s->shape_count++;
    8000ddcc:	743c                	ld	a5,104(s0)
    8000ddce:	0785                	addi	a5,a5,1
    8000ddd0:	f43c                	sd	a5,104(s0)
quickjs-nuttx/quickjs.c:6036
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000ddd2:	0249a783          	lw	a5,36(s3)
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8000ddd6:	0786                	slli	a5,a5,0x1
    8000ddd8:	07c1                	addi	a5,a5,16
    8000ddda:	97ba                	add	a5,a5,a4
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:6036
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000dddc:	7838                	ld	a4,112(s0)
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8000ddde:	078a                	slli	a5,a5,0x2
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:6036
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000dde0:	97ba                	add	a5,a5,a4
    8000dde2:	f83c                	sd	a5,112(s0)
    8000dde4:	b7a5                	j	8000dd4c <JS_ComputeMemoryUsage+0x3c0>
quickjs-nuttx/quickjs.c:6042
            s->array_count++;
    8000dde6:	745c                	ld	a5,168(s0)
    8000dde8:	0785                	addi	a5,a5,1
    8000ddea:	f45c                	sd	a5,168(s0)
quickjs-nuttx/quickjs.c:6043
            if (p->fast_array) {
    8000ddec:	ffd4c783          	lbu	a5,-3(s1)
    8000ddf0:	8ba1                	andi	a5,a5,8
    8000ddf2:	d39d                	beqz	a5,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6044
                s->fast_array_count++;
    8000ddf4:	785c                	ld	a5,176(s0)
    8000ddf6:	0785                	addi	a5,a5,1
    8000ddf8:	f85c                	sd	a5,176(s0)
quickjs-nuttx/quickjs.c:6045
                if (p->u.array.u.values) {
    8000ddfa:	789c                	ld	a5,48(s1)
    8000ddfc:	df91                	beqz	a5,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6046
                    s->memory_used_count++;
    8000ddfe:	701c                	ld	a5,32(s0)
quickjs-nuttx/quickjs.c:6050
                    for (i = 0; i < p->u.array.count; i++) {
    8000de00:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:6046
                    s->memory_used_count++;
    8000de02:	0785                	addi	a5,a5,1
    8000de04:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6047
                    s->memory_used_size += p->u.array.count *
    8000de06:	0384e783          	lwu	a5,56(s1)
    8000de0a:	00479713          	slli	a4,a5,0x4
    8000de0e:	681c                	ld	a5,16(s0)
    8000de10:	97ba                	add	a5,a5,a4
    8000de12:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:6049
                    s->fast_array_elements += p->u.array.count;
    8000de14:	0384e703          	lwu	a4,56(s1)
    8000de18:	7c5c                	ld	a5,184(s0)
    8000de1a:	97ba                	add	a5,a5,a4
    8000de1c:	fc5c                	sd	a5,184(s0)
quickjs-nuttx/quickjs.c:6050 (discriminator 1)
                    for (i = 0; i < p->u.array.count; i++) {
    8000de1e:	5c9c                	lw	a5,56(s1)
    8000de20:	eef9fce3          	bgeu	s3,a5,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6051 (discriminator 3)
                        compute_value_size(p->u.array.u.values[i], hp);
    8000de24:	789c                	ld	a5,48(s1)
    8000de26:	00499713          	slli	a4,s3,0x4
    8000de2a:	1010                	addi	a2,sp,32
    8000de2c:	97ba                	add	a5,a5,a4
    8000de2e:	6388                	ld	a0,0(a5)
    8000de30:	678c                	ld	a1,8(a5)
quickjs-nuttx/quickjs.c:6050 (discriminator 3)
                    for (i = 0; i < p->u.array.count; i++) {
    8000de32:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:6051 (discriminator 3)
                        compute_value_size(p->u.array.u.values[i], hp);
    8000de34:	f00fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:6050 (discriminator 3)
                    for (i = 0; i < p->u.array.count; i++) {
    8000de38:	b7dd                	j	8000de1e <JS_ComputeMemoryUsage+0x492>
quickjs-nuttx/quickjs.c:6066
            compute_value_size(p->u.object_data, hp);
    8000de3a:	7488                	ld	a0,40(s1)
    8000de3c:	788c                	ld	a1,48(s1)
    8000de3e:	1010                	addi	a2,sp,32
    8000de40:	ef4fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:6067
            break;
    8000de44:	bdd1                	j	8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6069
            s->c_func_count++;
    8000de46:	705c                	ld	a5,160(s0)
    8000de48:	0785                	addi	a5,a5,1
    8000de4a:	f05c                	sd	a5,160(s0)
quickjs-nuttx/quickjs.c:6070
            break;
    8000de4c:	b5f1                	j	8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6074
                JSVarRef **var_refs = p->u.func.var_refs;
    8000de4e:	0304bc03          	ld	s8,48(s1)
quickjs-nuttx/quickjs.c:6076
                if (var_refs) {
    8000de52:	ec0c03e3          	beqz	s8,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6077
                    s->memory_used_count++;
    8000de56:	701c                	ld	a5,32(s0)
quickjs-nuttx/quickjs.c:6073
                JSFunctionBytecode *b = p->u.func.function_bytecode;
    8000de58:	0284bb83          	ld	s7,40(s1)
quickjs-nuttx/quickjs.c:6079
                    for (i = 0; i < b->closure_var_count; i++) {
    8000de5c:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:6077
                    s->memory_used_count++;
    8000de5e:	0785                	addi	a5,a5,1
    8000de60:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6078
                    s->js_func_size += b->closure_var_count * sizeof(*var_refs);
    8000de62:	05cba783          	lw	a5,92(s7)
    8000de66:	00379713          	slli	a4,a5,0x3
    8000de6a:	605c                	ld	a5,128(s0)
    8000de6c:	97ba                	add	a5,a5,a4
    8000de6e:	e05c                	sd	a5,128(s0)
quickjs-nuttx/quickjs.c:6079 (discriminator 1)
                    for (i = 0; i < b->closure_var_count; i++) {
    8000de70:	05cba783          	lw	a5,92(s7)
    8000de74:	eaf9d2e3          	bge	s3,a5,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6080
                        if (var_refs[i]) {
    8000de78:	00399793          	slli	a5,s3,0x3
    8000de7c:	97e2                	add	a5,a5,s8
    8000de7e:	6398                	ld	a4,0(a5)
    8000de80:	c339                	beqz	a4,8000dec6 <JS_ComputeMemoryUsage+0x53a>
quickjs-nuttx/quickjs.c:6081
                            double ref_count = var_refs[i]->header.ref_count;
    8000de82:	4318                	lw	a4,0(a4)
    8000de84:	d20707d3          	fcvt.d.w	fa5,a4
quickjs-nuttx/quickjs.c:6082
                            s->memory_used_count += 1 / ref_count;
    8000de88:	7018                	ld	a4,32(s0)
    8000de8a:	1af476d3          	fdiv.d	fa3,fs0,fa5
    8000de8e:	d2277753          	fcvt.d.l	fa4,a4
quickjs-nuttx/quickjs.c:6083
                            s->js_func_size += sizeof(*var_refs[i]) / ref_count;
    8000de92:	1af4f7d3          	fdiv.d	fa5,fs1,fa5
quickjs-nuttx/quickjs.c:6082
                            s->memory_used_count += 1 / ref_count;
    8000de96:	02d77753          	fadd.d	fa4,fa4,fa3
    8000de9a:	c2271753          	fcvt.l.d	a4,fa4,rtz
    8000de9e:	f018                	sd	a4,32(s0)
quickjs-nuttx/quickjs.c:6083
                            s->js_func_size += sizeof(*var_refs[i]) / ref_count;
    8000dea0:	6058                	ld	a4,128(s0)
    8000dea2:	d2277753          	fcvt.d.l	fa4,a4
    8000dea6:	02f777d3          	fadd.d	fa5,fa4,fa5
    8000deaa:	c2279753          	fcvt.l.d	a4,fa5,rtz
    8000deae:	e058                	sd	a4,128(s0)
quickjs-nuttx/quickjs.c:6085
                            if (var_refs[i]->pvalue == &var_refs[i]->value) {
    8000deb0:	639c                	ld	a5,0(a5)
    8000deb2:	6f94                	ld	a3,24(a5)
    8000deb4:	02078713          	addi	a4,a5,32
    8000deb8:	00e69763          	bne	a3,a4,8000dec6 <JS_ComputeMemoryUsage+0x53a>
quickjs-nuttx/quickjs.c:6087
                                compute_value_size(var_refs[i]->value, hp);
    8000debc:	7388                	ld	a0,32(a5)
    8000debe:	778c                	ld	a1,40(a5)
    8000dec0:	1010                	addi	a2,sp,32
    8000dec2:	e72fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:6079 (discriminator 2)
                    for (i = 0; i < b->closure_var_count; i++) {
    8000dec6:	2985                	addiw	s3,s3,1
    8000dec8:	b765                	j	8000de70 <JS_ComputeMemoryUsage+0x4e4>
quickjs-nuttx/quickjs.c:6096
                JSBoundFunction *bf = p->u.bound_function;
    8000deca:	0284bb83          	ld	s7,40(s1)
quickjs-nuttx/quickjs.c:6098
                for (i = 0; i < bf->argc; i++) {
    8000dece:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:6098 (discriminator 1)
    8000ded0:	020ba783          	lw	a5,32(s7)
    8000ded4:	00f9cd63          	blt	s3,a5,8000deee <JS_ComputeMemoryUsage+0x562>
quickjs-nuttx/quickjs.c:6101
                s->memory_used_count += 1;
    8000ded8:	701c                	ld	a5,32(s0)
quickjs-nuttx/quickjs.c:6102
                s->memory_used_size += sizeof(*bf) + bf->argc * sizeof(*bf->argv);
    8000deda:	6818                	ld	a4,16(s0)
quickjs-nuttx/quickjs.c:6101
                s->memory_used_count += 1;
    8000dedc:	0785                	addi	a5,a5,1
    8000dede:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6102
                s->memory_used_size += sizeof(*bf) + bf->argc * sizeof(*bf->argv);
    8000dee0:	020ba783          	lw	a5,32(s7)
    8000dee4:	02870713          	addi	a4,a4,40
    8000dee8:	0792                	slli	a5,a5,0x4
quickjs-nuttx/quickjs.c:6141
                        s->memory_used_size += abuf->byte_length;
    8000deea:	97ba                	add	a5,a5,a4
    8000deec:	a041                	j	8000df6c <JS_ComputeMemoryUsage+0x5e0>
quickjs-nuttx/quickjs.c:6099 (discriminator 3)
                    compute_value_size(bf->argv[i], hp);
    8000deee:	00298793          	addi	a5,s3,2
    8000def2:	0792                	slli	a5,a5,0x4
    8000def4:	97de                	add	a5,a5,s7
    8000def6:	6788                	ld	a0,8(a5)
    8000def8:	6b8c                	ld	a1,16(a5)
    8000defa:	1010                	addi	a2,sp,32
quickjs-nuttx/quickjs.c:6098 (discriminator 3)
                for (i = 0; i < bf->argc; i++) {
    8000defc:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:6099 (discriminator 3)
                    compute_value_size(bf->argv[i], hp);
    8000defe:	e36fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:6098 (discriminator 3)
                for (i = 0; i < bf->argc; i++) {
    8000df02:	b7f9                	j	8000ded0 <JS_ComputeMemoryUsage+0x544>
quickjs-nuttx/quickjs.c:6107
                JSCFunctionDataRecord *fd = p->u.c_function_data_record;
    8000df04:	0284b983          	ld	s3,40(s1)
quickjs-nuttx/quickjs.c:6108
                if (fd) {
    8000df08:	e00988e3          	beqz	s3,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6109
                    for (i = 0; i < fd->data_len; i++) {
    8000df0c:	4b81                	li	s7,0
    8000df0e:	a819                	j	8000df24 <JS_ComputeMemoryUsage+0x598>
quickjs-nuttx/quickjs.c:6110 (discriminator 3)
                        compute_value_size(fd->data[i], hp);
    8000df10:	001b8793          	addi	a5,s7,1
    8000df14:	0792                	slli	a5,a5,0x4
    8000df16:	97ce                	add	a5,a5,s3
    8000df18:	6388                	ld	a0,0(a5)
    8000df1a:	678c                	ld	a1,8(a5)
    8000df1c:	1010                	addi	a2,sp,32
quickjs-nuttx/quickjs.c:6109 (discriminator 3)
                    for (i = 0; i < fd->data_len; i++) {
    8000df1e:	2b85                	addiw	s7,s7,1
quickjs-nuttx/quickjs.c:6110 (discriminator 3)
                        compute_value_size(fd->data[i], hp);
    8000df20:	e14fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:6109 (discriminator 1)
                    for (i = 0; i < fd->data_len; i++) {
    8000df24:	0099c783          	lbu	a5,9(s3)
    8000df28:	fefbc4e3          	blt	s7,a5,8000df10 <JS_ComputeMemoryUsage+0x584>
quickjs-nuttx/quickjs.c:6112
                    s->memory_used_count += 1;
    8000df2c:	701c                	ld	a5,32(s0)
quickjs-nuttx/quickjs.c:6113
                    s->memory_used_size += sizeof(*fd) + fd->data_len * sizeof(*fd->data);
    8000df2e:	6818                	ld	a4,16(s0)
quickjs-nuttx/quickjs.c:6112
                    s->memory_used_count += 1;
    8000df30:	0785                	addi	a5,a5,1
    8000df32:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6113
                    s->memory_used_size += sizeof(*fd) + fd->data_len * sizeof(*fd->data);
    8000df34:	0099c783          	lbu	a5,9(s3)
    8000df38:	0785                	addi	a5,a5,1
    8000df3a:	0792                	slli	a5,a5,0x4
    8000df3c:	b77d                	j	8000deea <JS_ComputeMemoryUsage+0x55e>
quickjs-nuttx/quickjs.c:6118
            compute_jsstring_size(p->u.regexp.pattern, hp);
    8000df3e:	7488                	ld	a0,40(s1)
    8000df40:	100c                	addi	a1,sp,32
    8000df42:	da8fb0ef          	jal	ra,800094ea <compute_jsstring_size>
quickjs-nuttx/quickjs.c:6119
            compute_jsstring_size(p->u.regexp.bytecode, hp);
    8000df46:	7888                	ld	a0,48(s1)
    8000df48:	100c                	addi	a1,sp,32
    8000df4a:	da0fb0ef          	jal	ra,800094ea <compute_jsstring_size>
quickjs-nuttx/quickjs.c:6120
            break;
    8000df4e:	b3e9                	j	8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6124
                JSForInIterator *it = p->u.for_in_iterator;
    8000df50:	749c                	ld	a5,40(s1)
quickjs-nuttx/quickjs.c:6125
                if (it) {
    8000df52:	dc0783e3          	beqz	a5,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6126
                    compute_value_size(it->obj, hp);
    8000df56:	6388                	ld	a0,0(a5)
    8000df58:	678c                	ld	a1,8(a5)
    8000df5a:	1010                	addi	a2,sp,32
    8000df5c:	dd8fb0ef          	jal	ra,80009534 <compute_value_size>
quickjs-nuttx/quickjs.c:6127
                    s->memory_used_count += 1;
    8000df60:	701c                	ld	a5,32(s0)
    8000df62:	0785                	addi	a5,a5,1
    8000df64:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6128
                    s->memory_used_size += sizeof(*it);
    8000df66:	681c                	ld	a5,16(s0)
    8000df68:	02878793          	addi	a5,a5,40
quickjs-nuttx/quickjs.c:6141
                        s->memory_used_size += abuf->byte_length;
    8000df6c:	e81c                	sd	a5,16(s0)
    8000df6e:	b36d                	j	8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6135
                JSArrayBuffer *abuf = p->u.array_buffer;
    8000df70:	7494                	ld	a3,40(s1)
quickjs-nuttx/quickjs.c:6136
                if (abuf) {
    8000df72:	da0683e3          	beqz	a3,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6137
                    s->memory_used_count += 1;
    8000df76:	7018                	ld	a4,32(s0)
    8000df78:	00170793          	addi	a5,a4,1
    8000df7c:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs.c:6138
                    s->memory_used_size += sizeof(*abuf);
    8000df7e:	681c                	ld	a5,16(s0)
    8000df80:	03078793          	addi	a5,a5,48
    8000df84:	e81c                	sd	a5,16(s0)
quickjs-nuttx/quickjs.c:6139
                    if (abuf->data) {
    8000df86:	6690                	ld	a2,8(a3)
    8000df88:	d80608e3          	beqz	a2,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6140
                        s->memory_used_count += 1;
    8000df8c:	0709                	addi	a4,a4,2
    8000df8e:	f018                	sd	a4,32(s0)
quickjs-nuttx/quickjs.c:6141
                        s->memory_used_size += abuf->byte_length;
    8000df90:	4298                	lw	a4,0(a3)
    8000df92:	bfa1                	j	8000deea <JS_ComputeMemoryUsage+0x55e>
quickjs-nuttx/quickjs.c:6181
            if (p->u.opaque) {
    8000df94:	749c                	ld	a5,40(s1)
    8000df96:	d80781e3          	beqz	a5,8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6182
                s->memory_used_count += 1;
    8000df9a:	701c                	ld	a5,32(s0)
    8000df9c:	0785                	addi	a5,a5,1
    8000df9e:	f01c                	sd	a5,32(s0)
    8000dfa0:	bba5                	j	8000dd18 <JS_ComputeMemoryUsage+0x38c>
quickjs-nuttx/quickjs.c:6194
        for(sh = rt->shape_hash[i]; sh != NULL; sh = sh->shape_hash_next) {
    8000dfa2:	18893783          	ld	a5,392(s2)
    8000dfa6:	00369713          	slli	a4,a3,0x3
    8000dfaa:	97ba                	add	a5,a5,a4
    8000dfac:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:6196 (discriminator 1)
            s->shape_count++;
    8000dfae:	7430                	ld	a2,104(s0)
quickjs-nuttx/quickjs.c:6197 (discriminator 1)
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000dfb0:	7828                	ld	a0,112(s0)
quickjs-nuttx/quickjs.c:6194 (discriminator 1)
        for(sh = rt->shape_hash[i]; sh != NULL; sh = sh->shape_hash_next) {
    8000dfb2:	e399                	bnez	a5,8000dfb8 <JS_ComputeMemoryUsage+0x62c>
quickjs-nuttx/quickjs.c:6192 (discriminator 2)
    for(i = 0; i < rt->shape_hash_size; i++) {
    8000dfb4:	2685                	addiw	a3,a3,1
    8000dfb6:	bc69                	j	8000da50 <JS_ComputeMemoryUsage+0xc4>
quickjs-nuttx/quickjs.c:6195 (discriminator 3)
            int hash_size = sh->prop_hash_mask + 1;
    8000dfb8:	5398                	lw	a4,32(a5)
quickjs-nuttx/quickjs.c:6196 (discriminator 3)
            s->shape_count++;
    8000dfba:	0605                	addi	a2,a2,1
    8000dfbc:	f430                	sd	a2,104(s0)
quickjs-nuttx/quickjs.c:6195 (discriminator 3)
            int hash_size = sh->prop_hash_mask + 1;
    8000dfbe:	0017059b          	addiw	a1,a4,1
quickjs-nuttx/quickjs.c:6197 (discriminator 3)
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000dfc2:	53d8                	lw	a4,36(a5)
get_shape_size():
quickjs-nuttx/quickjs.c:4246 (discriminator 3)
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8000dfc4:	0706                	slli	a4,a4,0x1
    8000dfc6:	0741                	addi	a4,a4,16
    8000dfc8:	972e                	add	a4,a4,a1
    8000dfca:	070a                	slli	a4,a4,0x2
JS_ComputeMemoryUsage():
quickjs-nuttx/quickjs.c:6197 (discriminator 3)
            s->shape_size += get_shape_size(hash_size, sh->prop_size);
    8000dfcc:	972a                	add	a4,a4,a0
    8000dfce:	f838                	sd	a4,112(s0)
quickjs-nuttx/quickjs.c:6194 (discriminator 3)
        for(sh = rt->shape_hash[i]; sh != NULL; sh = sh->shape_hash_next) {
    8000dfd0:	7b9c                	ld	a5,48(a5)
    8000dfd2:	bff1                	j	8000dfae <JS_ComputeMemoryUsage+0x622>
quickjs-nuttx/quickjs.c:6207
        JSAtomStruct *p = rt->atom_array[i];
    8000dfd4:	06093783          	ld	a5,96(s2)
    8000dfd8:	00369713          	slli	a4,a3,0x3
    8000dfdc:	97ba                	add	a5,a5,a4
    8000dfde:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:6208
        if (!atom_is_free(p)) {
    8000dfe0:	0017f713          	andi	a4,a5,1
    8000dfe4:	ef09                	bnez	a4,8000dffe <JS_ComputeMemoryUsage+0x672>
quickjs-nuttx/quickjs.c:6209
            s->atom_size += (sizeof(*p) + (p->len << p->is_wide_char) +
    8000dfe6:	43d8                	lw	a4,4(a5)
    8000dfe8:	011a8793          	addi	a5,s5,17
    8000dfec:	01f7559b          	srliw	a1,a4,0x1f
    8000dff0:	8f71                	and	a4,a4,a2
    8000dff2:	00b7173b          	sllw	a4,a4,a1
    8000dff6:	40b78ab3          	sub	s5,a5,a1
    8000dffa:	9756                	add	a4,a4,s5
    8000dffc:	f818                	sd	a4,48(s0)
quickjs-nuttx/quickjs.c:6206 (discriminator 2)
    for(i = 0; i < rt->atom_size; i++) {
    8000dffe:	2685                	addiw	a3,a3,1
