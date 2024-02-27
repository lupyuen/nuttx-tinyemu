    8001b000:	00f50a23          	sb	a5,20(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001b004:	64d8                	ld	a4,136(s1)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001b006:	01850793          	addi	a5,a0,24
get_shape_from_alloc():
quickjs-nuttx/quickjs.c:4252
    return (JSShape *)(void *)((uint32_t *)sh_alloc + hash_size);
    8001b00a:	01050a93          	addi	s5,a0,16
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001b00e:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001b010:	ed18                	sd	a4,24(a0)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001b012:	08848713          	addi	a4,s1,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001b016:	f118                	sd	a4,32(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001b018:	e4dc                	sd	a5,136(s1)
js_new_shape2():
quickjs-nuttx/quickjs.c:4370
    if (proto)
    8001b01a:	00090663          	beqz	s2,8001b026 <js_new_shape2.constprop.0+0xb2>
quickjs-nuttx/quickjs.c:4371
        JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, proto));
    8001b01e:	854a                	mv	a0,s2
    8001b020:	55fd                	li	a1,-1
    8001b022:	bf8ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:4372
    sh->proto = proto;
    8001b026:	05243423          	sd	s2,72(s0)
quickjs-nuttx/quickjs.c:4373
    memset(prop_hash_end(sh) - hash_size, 0, sizeof(prop_hash_end(sh)[0]) *
    8001b02a:	4641                	li	a2,16
    8001b02c:	4581                	li	a1,0
    8001b02e:	8522                	mv	a0,s0
    8001b030:	413480ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:4375
    sh->prop_hash_mask = hash_size - 1;
    8001b034:	478d                	li	a5,3
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001b036:	9e370737          	lui	a4,0x9e370
js_new_shape2():
quickjs-nuttx/quickjs.c:4375
    sh->prop_hash_mask = hash_size - 1;
    8001b03a:	d81c                	sw	a5,48(s0)
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001b03c:	2705                	addiw	a4,a4,1
    8001b03e:	0019079b          	addiw	a5,s2,1
    8001b042:	02e787bb          	mulw	a5,a5,a4
shape_initial_hash():
quickjs-nuttx/quickjs.c:4299
        h = shape_hash(h, (uint64_t)(uintptr_t)proto >> 32);
    8001b046:	02095913          	srli	s2,s2,0x20
js_new_shape2():
quickjs-nuttx/quickjs.c:4376
    sh->prop_size = prop_size;
    8001b04a:	03442a23          	sw	s4,52(s0)
quickjs-nuttx/quickjs.c:4377
    sh->prop_count = 0;
    8001b04e:	02043c23          	sd	zero,56(s0)
quickjs-nuttx/quickjs.c:4384
    js_shape_hash_link(ctx->rt, sh);
    8001b052:	85d6                	mv	a1,s5
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001b054:	0127893b          	addw	s2,a5,s2
    8001b058:	02e9093b          	mulw	s2,s2,a4
js_new_shape2():
quickjs-nuttx/quickjs.c:4382
    sh->is_hashed = TRUE;
    8001b05c:	4785                	li	a5,1
    8001b05e:	02f41423          	sh	a5,40(s0)
quickjs-nuttx/quickjs.c:4381
    sh->hash = shape_initial_hash(proto);
    8001b062:	03242623          	sw	s2,44(s0)
quickjs-nuttx/quickjs.c:4384
    js_shape_hash_link(ctx->rt, sh);
    8001b066:	0189b503          	ld	a0,24(s3)
quickjs-nuttx/quickjs.c:4385
    return sh;
    8001b06a:	8456                	mv	s0,s5
quickjs-nuttx/quickjs.c:4384
    js_shape_hash_link(ctx->rt, sh);
    8001b06c:	c93ec0ef          	jal	ra,80007cfe <js_shape_hash_link>
quickjs-nuttx/quickjs.c:4386
}
    8001b070:	60e6                	ld	ra,88(sp)
    8001b072:	8522                	mv	a0,s0
    8001b074:	6446                	ld	s0,80(sp)
    8001b076:	64a6                	ld	s1,72(sp)
    8001b078:	6906                	ld	s2,64(sp)
    8001b07a:	79e2                	ld	s3,56(sp)
    8001b07c:	7a42                	ld	s4,48(sp)
    8001b07e:	7aa2                	ld	s5,40(sp)
    8001b080:	7b02                	ld	s6,32(sp)
    8001b082:	6be2                	ld	s7,24(sp)
    8001b084:	6125                	addi	sp,sp,96
    8001b086:	8082                	ret
resize_shape_hash():
quickjs-nuttx/quickjs.c:4315
        for(sh = rt->shape_hash[i]; sh != NULL; sh = sh_next) {
    8001b088:	00369793          	slli	a5,a3,0x3
    8001b08c:	95be                	add	a1,a1,a5
    8001b08e:	6198                	ld	a4,0(a1)
    8001b090:	e319                	bnez	a4,8001b096 <js_new_shape2.constprop.0+0x122>
quickjs-nuttx/quickjs.c:4314
    for(i = 0; i < rt->shape_hash_size; i++) {
    8001b092:	2685                	addiw	a3,a3,1
    8001b094:	bf1d                	j	8001afca <js_new_shape2.constprop.0+0x56>
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001b096:	4f5c                	lw	a5,28(a4)
resize_shape_hash():
quickjs-nuttx/quickjs.c:4316
            sh_next = sh->shape_hash_next;
    8001b098:	7b0c                	ld	a1,48(a4)
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001b09a:	00c7d7bb          	srlw	a5,a5,a2
resize_shape_hash():
quickjs-nuttx/quickjs.c:4318
            sh->shape_hash_next = new_shape_hash[h];
    8001b09e:	02079513          	slli	a0,a5,0x20
    8001b0a2:	01d55793          	srli	a5,a0,0x1d
    8001b0a6:	97a2                	add	a5,a5,s0
    8001b0a8:	6388                	ld	a0,0(a5)
    8001b0aa:	fb08                	sd	a0,48(a4)
quickjs-nuttx/quickjs.c:4319
            new_shape_hash[h] = sh;
    8001b0ac:	e398                	sd	a4,0(a5)
quickjs-nuttx/quickjs.c:4315
        for(sh = rt->shape_hash[i]; sh != NULL; sh = sh_next) {
    8001b0ae:	872e                	mv	a4,a1
    8001b0b0:	b7c5                	j	8001b090 <js_new_shape2.constprop.0+0x11c>

000000008001b0b2 <typed_array_init.isra.0>:
typed_array_init():
quickjs-nuttx/quickjs.c:54483
static int typed_array_init(JSContext *ctx, JSValueConst obj,
    8001b0b2:	7139                	addi	sp,sp,-64
    8001b0b4:	f822                	sd	s0,48(sp)
    8001b0b6:	f426                	sd	s1,40(sp)
    8001b0b8:	f04a                	sd	s2,32(sp)
    8001b0ba:	ec4e                	sd	s3,24(sp)
    8001b0bc:	e852                	sd	s4,16(sp)
    8001b0be:	fc06                	sd	ra,56(sp)
    8001b0c0:	893e                	mv	s2,a5
quickjs-nuttx/quickjs.c:54492
    size_log2 = typed_array_size_log2(p->class_id);
    8001b0c2:	0065d783          	lhu	a5,6(a1)
quickjs-nuttx/quickjs.c:54483
static int typed_array_init(JSContext *ctx, JSValueConst obj,
    8001b0c6:	84ba                	mv	s1,a4
    8001b0c8:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:54492
    size_log2 = typed_array_size_log2(p->class_id);
    8001b0ca:	feb7871b          	addiw	a4,a5,-21
    8001b0ce:	0005a797          	auipc	a5,0x5a
    8001b0d2:	11278793          	addi	a5,a5,274 # 800751e0 <typed_array_size_log2>
    8001b0d6:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:54493
    ta = js_malloc(ctx, sizeof(*ta));
    8001b0d8:	02800593          	li	a1,40
quickjs-nuttx/quickjs.c:54492
    size_log2 = typed_array_size_log2(p->class_id);
    8001b0dc:	0007c983          	lbu	s3,0(a5)
quickjs-nuttx/quickjs.c:54483
static int typed_array_init(JSContext *ctx, JSValueConst obj,
    8001b0e0:	8a2a                	mv	s4,a0
    8001b0e2:	e032                	sd	a2,0(sp)
    8001b0e4:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:54493
    ta = js_malloc(ctx, sizeof(*ta));
    8001b0e6:	81eff0ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs.c:54494
    if (!ta) {
    8001b0ea:	ed19                	bnez	a0,8001b108 <typed_array_init.isra.0+0x56>
quickjs-nuttx/quickjs.c:54495
        JS_FreeValue(ctx, buffer);
    8001b0ec:	6582                	ld	a1,0(sp)
    8001b0ee:	6622                	ld	a2,8(sp)
    8001b0f0:	8552                	mv	a0,s4
    8001b0f2:	eacf00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:54496
        return -1;
    8001b0f6:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:54509
}
    8001b0f8:	70e2                	ld	ra,56(sp)
    8001b0fa:	7442                	ld	s0,48(sp)
    8001b0fc:	74a2                	ld	s1,40(sp)
    8001b0fe:	7902                	ld	s2,32(sp)
    8001b100:	69e2                	ld	s3,24(sp)
    8001b102:	6a42                	ld	s4,16(sp)
    8001b104:	6121                	addi	sp,sp,64
    8001b106:	8082                	ret
quickjs-nuttx/quickjs.c:54498
    pbuffer = JS_VALUE_GET_OBJ(buffer);
    8001b108:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs.c:54503
    ta->length = len << size_log2;
    8001b10a:	013919b3          	sll	s3,s2,s3
quickjs-nuttx/quickjs.c:54499
    abuf = pbuffer->u.array_buffer;
    8001b10e:	7b98                	ld	a4,48(a5)
quickjs-nuttx/quickjs.c:54502
    ta->offset = offset;
    8001b110:	d104                	sw	s1,32(a0)
quickjs-nuttx/quickjs.c:54500
    ta->obj = p;
    8001b112:	e900                	sd	s0,16(a0)
quickjs-nuttx/quickjs.c:54501
    ta->buffer = pbuffer;
    8001b114:	ed1c                	sd	a5,24(a0)
quickjs-nuttx/quickjs.c:54503
    ta->length = len << size_log2;
    8001b116:	03352223          	sw	s3,36(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001b11a:	6b1c                	ld	a5,16(a4)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001b11c:	e788                	sd	a0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001b11e:	e11c                	sd	a5,0(a0)
typed_array_init():
quickjs-nuttx/quickjs.c:54504
    list_add_tail(&ta->link, &abuf->array_list);
    8001b120:	01070793          	addi	a5,a4,16 # ffffffff9e370010 <_ebss+0xffffffff1e26eeaa>
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001b124:	e51c                	sd	a5,8(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001b126:	eb08                	sd	a0,16(a4)
typed_array_init():
quickjs-nuttx/quickjs.c:54505
    p->u.typed_array = ta;
    8001b128:	f808                	sd	a0,48(s0)
quickjs-nuttx/quickjs.c:54506
    p->u.array.count = len;
    8001b12a:	05242023          	sw	s2,64(s0)
quickjs-nuttx/quickjs.c:54507
    p->u.array.u.ptr = abuf->data + offset;
    8001b12e:	6718                	ld	a4,8(a4)
quickjs-nuttx/quickjs.c:54508
    return 0;
    8001b130:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:54507
    p->u.array.u.ptr = abuf->data + offset;
    8001b132:	94ba                	add	s1,s1,a4
    8001b134:	fc04                	sd	s1,56(s0)
quickjs-nuttx/quickjs.c:54508
    return 0;
    8001b136:	b7c9                	j	8001b0f8 <typed_array_init.isra.0+0x46>

000000008001b138 <js_mallocz>:
js_mallocz():
quickjs-nuttx/quickjs.c:1361
{
    8001b138:	1101                	addi	sp,sp,-32
    8001b13a:	e822                	sd	s0,16(sp)
    8001b13c:	e426                	sd	s1,8(sp)
    8001b13e:	ec06                	sd	ra,24(sp)
    8001b140:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1363
    ptr = js_mallocz_rt(ctx->rt, size);
    8001b142:	6d08                	ld	a0,24(a0)
    8001b144:	a67ef0ef          	jal	ra,8000abaa <js_mallocz_rt>
    8001b148:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1364
    if (unlikely(!ptr)) {
    8001b14a:	e501                	bnez	a0,8001b152 <js_mallocz+0x1a>
quickjs-nuttx/quickjs.c:1365
        JS_ThrowOutOfMemory(ctx);
    8001b14c:	8526                	mv	a0,s1
    8001b14e:	f87fe0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:1369
}
    8001b152:	60e2                	ld	ra,24(sp)
    8001b154:	8522                	mv	a0,s0
    8001b156:	6442                	ld	s0,16(sp)
    8001b158:	64a2                	ld	s1,8(sp)
    8001b15a:	6105                	addi	sp,sp,32
    8001b15c:	8082                	ret

000000008001b15e <async_func_init>:
async_func_init():
quickjs-nuttx/quickjs.c:18750
{
    8001b15e:	711d                	addi	sp,sp,-96
    8001b160:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:18757
    s = js_mallocz(ctx, sizeof(*s));
    8001b162:	0a800593          	li	a1,168
quickjs-nuttx/quickjs.c:18750
{
    8001b166:	e8a2                	sd	s0,80(sp)
    8001b168:	e4a6                	sd	s1,72(sp)
    8001b16a:	f852                	sd	s4,48(sp)
    8001b16c:	f456                	sd	s5,40(sp)
    8001b16e:	ec86                	sd	ra,88(sp)
    8001b170:	e0ca                	sd	s2,64(sp)
    8001b172:	fc4e                	sd	s3,56(sp)
    8001b174:	f05a                	sd	s6,32(sp)
    8001b176:	8aaa                	mv	s5,a0
    8001b178:	ec32                	sd	a2,24(sp)
    8001b17a:	e036                	sd	a3,0(sp)
    8001b17c:	e43a                	sd	a4,8(sp)
    8001b17e:	84be                	mv	s1,a5
    8001b180:	8a42                	mv	s4,a6
quickjs-nuttx/quickjs.c:18757
    s = js_mallocz(ctx, sizeof(*s));
    8001b182:	fb7ff0ef          	jal	ra,8001b138 <js_mallocz>
    8001b186:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:18758
    if (!s)
    8001b188:	c141                	beqz	a0,8001b208 <async_func_init+0xaa>
quickjs-nuttx/quickjs.c:18760
    s->header.ref_count = 1;
    8001b18a:	4785                	li	a5,1
    8001b18c:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:18761
    add_gc_object(ctx->rt, &s->header, JS_GC_OBJ_TYPE_ASYNC_FUNCTION);
    8001b18e:	018ab703          	ld	a4,24(s5)
add_gc_object():
quickjs-nuttx/quickjs.c:5584
    h->gc_obj_type = type;
    8001b192:	4791                	li	a5,4
    8001b194:	00f50223          	sb	a5,4(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001b198:	6754                	ld	a3,136(a4)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001b19a:	00850793          	addi	a5,a0,8
async_func_init():
quickjs-nuttx/quickjs.c:18763
    sf = &s->frame;
    8001b19e:	05850b13          	addi	s6,a0,88
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001b1a2:	e69c                	sd	a5,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001b1a4:	e514                	sd	a3,8(a0)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001b1a6:	08870693          	addi	a3,a4,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001b1aa:	e914                	sd	a3,16(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001b1ac:	e75c                	sd	a5,136(a4)
async_func_init():
quickjs-nuttx/quickjs.c:18764
    init_list_head(&sf->var_ref_list);
    8001b1ae:	08050793          	addi	a5,a0,128
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8001b1b2:	e15c                	sd	a5,128(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    8001b1b4:	e55c                	sd	a5,136(a0)
async_func_init():
quickjs-nuttx/quickjs.c:18766
    b = p->u.func.function_bytecode;
    8001b1b6:	67c2                	ld	a5,16(sp)
    8001b1b8:	0307b903          	ld	s2,48(a5)
quickjs-nuttx/quickjs.c:18767
    sf->js_mode = b->js_mode | JS_MODE_ASYNC;
    8001b1bc:	01894783          	lbu	a5,24(s2)
    8001b1c0:	0087e793          	ori	a5,a5,8
    8001b1c4:	08f52e23          	sw	a5,156(a0)
quickjs-nuttx/quickjs.c:18768
    sf->cur_pc = b->byte_code_buf;
    8001b1c8:	02093783          	ld	a5,32(s2)
    8001b1cc:	e95c                	sd	a5,144(a0)
quickjs-nuttx/quickjs.c:18769
    arg_buf_len = max_int(b->arg_count, argc);
    8001b1ce:	04095703          	lhu	a4,64(s2)
    8001b1d2:	87ba                	mv	a5,a4
    8001b1d4:	00975363          	bge	a4,s1,8001b1da <async_func_init+0x7c>
    8001b1d8:	87a6                	mv	a5,s1
quickjs-nuttx/quickjs.c:18770
    local_count = arg_buf_len + b->var_count + b->stack_size;
    8001b1da:	04295583          	lhu	a1,66(s2)
    8001b1de:	04695703          	lhu	a4,70(s2)
    8001b1e2:	0007899b          	sext.w	s3,a5
    8001b1e6:	9db9                	addw	a1,a1,a4
    8001b1e8:	9fad                	addw	a5,a5,a1
    8001b1ea:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:18771
    sf->arg_buf = js_malloc(ctx, sizeof(JSValue) * max_int(local_count, 1));
    8001b1ec:	00f04363          	bgtz	a5,8001b1f2 <async_func_init+0x94>
    8001b1f0:	4585                	li	a1,1
    8001b1f2:	0592                	slli	a1,a1,0x4
    8001b1f4:	8556                	mv	a0,s5
    8001b1f6:	f0ffe0ef          	jal	ra,8001a104 <js_malloc>
    8001b1fa:	f828                	sd	a0,112(s0)
quickjs-nuttx/quickjs.c:18772
    if (!sf->arg_buf) {
    8001b1fc:	e10d                	bnez	a0,8001b21e <async_func_init+0xc0>
quickjs-nuttx/quickjs.c:18773
        js_free(ctx, s);
    8001b1fe:	85a2                	mv	a1,s0
    8001b200:	8556                	mv	a0,s5
    8001b202:	df5ef0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:18774
        return NULL;
    8001b206:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:18791
}
    8001b208:	60e6                	ld	ra,88(sp)
    8001b20a:	8522                	mv	a0,s0
    8001b20c:	6446                	ld	s0,80(sp)
    8001b20e:	64a6                	ld	s1,72(sp)
    8001b210:	6906                	ld	s2,64(sp)
    8001b212:	79e2                	ld	s3,56(sp)
    8001b214:	7a42                	ld	s4,48(sp)
    8001b216:	7aa2                	ld	s5,40(sp)
    8001b218:	7b02                	ld	s6,32(sp)
    8001b21a:	6125                	addi	sp,sp,96
    8001b21c:	8082                	ret
quickjs-nuttx/quickjs.c:18776
    sf->cur_func = JS_DupValue(ctx, func_obj);
    8001b21e:	6542                	ld	a0,16(sp)
    8001b220:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:18782
    for(i = 0; i < argc; i++)
    8001b222:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:18776
    sf->cur_func = JS_DupValue(ctx, func_obj);
    8001b224:	9f6ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001b228:	00ab3423          	sd	a0,8(s6)
    8001b22c:	00bb3823          	sd	a1,16(s6)
quickjs-nuttx/quickjs.c:18777
    s->this_val = JS_DupValue(ctx, this_obj);
    8001b230:	6502                	ld	a0,0(sp)
    8001b232:	65a2                	ld	a1,8(sp)
    8001b234:	9e6ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:18780
    sf->var_buf = sf->arg_buf + arg_buf_len;
    8001b238:	7838                	ld	a4,112(s0)
    8001b23a:	00499793          	slli	a5,s3,0x4
quickjs-nuttx/quickjs.c:18777
    s->this_val = JS_DupValue(ctx, this_obj);
    8001b23e:	ec08                	sd	a0,24(s0)
quickjs-nuttx/quickjs.c:18780
    sf->var_buf = sf->arg_buf + arg_buf_len;
    8001b240:	97ba                	add	a5,a5,a4
    8001b242:	fc3c                	sd	a5,120(s0)
quickjs-nuttx/quickjs.c:18777
    s->this_val = JS_DupValue(ctx, this_obj);
    8001b244:	f00c                	sd	a1,32(s0)
quickjs-nuttx/quickjs.c:18778
    s->argc = argc;
    8001b246:	d404                	sw	s1,40(s0)
quickjs-nuttx/quickjs.c:18779
    sf->arg_count = arg_buf_len;
    8001b248:	09342c23          	sw	s3,152(s0)
quickjs-nuttx/quickjs.c:18781
    sf->cur_sp = sf->var_buf + b->var_count;
    8001b24c:	04295703          	lhu	a4,66(s2)
    8001b250:	0712                	slli	a4,a4,0x4
    8001b252:	97ba                	add	a5,a5,a4
    8001b254:	f05c                	sd	a5,160(s0)
quickjs-nuttx/quickjs.c:18782 (discriminator 1)
    for(i = 0; i < argc; i++)
    8001b256:	000a879b          	sext.w	a5,s5
    8001b25a:	0297c563          	blt	a5,s1,8001b284 <async_func_init+0x126>
quickjs-nuttx/quickjs.c:18784
    n = arg_buf_len + b->var_count;
    8001b25e:	04295783          	lhu	a5,66(s2)
    8001b262:	00449713          	slli	a4,s1,0x4
quickjs-nuttx/quickjs.c:18786
        sf->arg_buf[i] = JS_UNDEFINED;
    8001b266:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:18784
    n = arg_buf_len + b->var_count;
    8001b268:	013789bb          	addw	s3,a5,s3
quickjs-nuttx/quickjs.c:18785 (discriminator 1)
    for(i = argc; i < n; i++)
    8001b26c:	0334ca63          	blt	s1,s3,8001b2a0 <async_func_init+0x142>
quickjs-nuttx/quickjs.c:18787
    s->resolving_funcs[0] = JS_UNDEFINED;
    8001b270:	478d                	li	a5,3
    8001b272:	02043c23          	sd	zero,56(s0)
    8001b276:	e03c                	sd	a5,64(s0)
quickjs-nuttx/quickjs.c:18788
    s->resolving_funcs[1] = JS_UNDEFINED;
    8001b278:	04043423          	sd	zero,72(s0)
    8001b27c:	e83c                	sd	a5,80(s0)
quickjs-nuttx/quickjs.c:18789
    s->is_completed = FALSE;
    8001b27e:	02042823          	sw	zero,48(s0)
quickjs-nuttx/quickjs.c:18790
    return s;
    8001b282:	b759                	j	8001b208 <async_func_init+0xaa>
quickjs-nuttx/quickjs.c:18783 (discriminator 3)
        sf->arg_buf[i] = JS_DupValue(ctx, argv[i]);
    8001b284:	004a9b13          	slli	s6,s5,0x4
    8001b288:	016a07b3          	add	a5,s4,s6
    8001b28c:	6388                	ld	a0,0(a5)
    8001b28e:	678c                	ld	a1,8(a5)
    8001b290:	0a85                	addi	s5,s5,1
    8001b292:	988ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001b296:	783c                	ld	a5,112(s0)
    8001b298:	97da                	add	a5,a5,s6
    8001b29a:	e388                	sd	a0,0(a5)
    8001b29c:	e78c                	sd	a1,8(a5)
quickjs-nuttx/quickjs.c:18782 (discriminator 3)
    for(i = 0; i < argc; i++)
    8001b29e:	bf65                	j	8001b256 <async_func_init+0xf8>
quickjs-nuttx/quickjs.c:18786 (discriminator 3)
        sf->arg_buf[i] = JS_UNDEFINED;
    8001b2a0:	783c                	ld	a5,112(s0)
quickjs-nuttx/quickjs.c:18785 (discriminator 3)
    for(i = argc; i < n; i++)
    8001b2a2:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:18786 (discriminator 3)
        sf->arg_buf[i] = JS_UNDEFINED;
    8001b2a4:	97ba                	add	a5,a5,a4
    8001b2a6:	0007b023          	sd	zero,0(a5)
    8001b2aa:	e794                	sd	a3,8(a5)
quickjs-nuttx/quickjs.c:18785 (discriminator 3)
    for(i = argc; i < n; i++)
    8001b2ac:	0741                	addi	a4,a4,16
    8001b2ae:	bf7d                	j	8001b26c <async_func_init+0x10e>

000000008001b2b0 <js_closure2>:
js_closure2():
quickjs-nuttx/quickjs.c:15585
{
    8001b2b0:	711d                	addi	sp,sp,-96
    8001b2b2:	e4a6                	sd	s1,72(sp)
    8001b2b4:	ec86                	sd	ra,88(sp)
    8001b2b6:	e8a2                	sd	s0,80(sp)
    8001b2b8:	e0ca                	sd	s2,64(sp)
    8001b2ba:	fc4e                	sd	s3,56(sp)
    8001b2bc:	f852                	sd	s4,48(sp)
    8001b2be:	f456                	sd	s5,40(sp)
    8001b2c0:	f05a                	sd	s6,32(sp)
quickjs-nuttx/quickjs.c:15591
    p->u.func.function_bytecode = b;
    8001b2c2:	f994                	sd	a3,48(a1)
quickjs-nuttx/quickjs.c:15592
    p->u.func.home_object = NULL;
    8001b2c4:	0405b023          	sd	zero,64(a1)
quickjs-nuttx/quickjs.c:15593
    p->u.func.var_refs = NULL;
    8001b2c8:	0205bc23          	sd	zero,56(a1)
quickjs-nuttx/quickjs.c:15585
{
    8001b2cc:	e02e                	sd	a1,0(sp)
    8001b2ce:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:15594
    if (b->closure_var_count) {
    8001b2d0:	4eec                	lw	a1,92(a3)
quickjs-nuttx/quickjs.c:15585
{
    8001b2d2:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:15594
    if (b->closure_var_count) {
    8001b2d4:	e18d                	bnez	a1,8001b2f6 <js_closure2+0x46>
quickjs-nuttx/quickjs.c:15614
    return func_obj;
    8001b2d6:	6782                	ld	a5,0(sp)
    8001b2d8:	e83e                	sd	a5,16(sp)
    8001b2da:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:15619
}
    8001b2dc:	60e6                	ld	ra,88(sp)
    8001b2de:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:15618
    return JS_EXCEPTION;
    8001b2e0:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:15619
}
    8001b2e2:	6542                	ld	a0,16(sp)
    8001b2e4:	65e2                	ld	a1,24(sp)
    8001b2e6:	64a6                	ld	s1,72(sp)
    8001b2e8:	6906                	ld	s2,64(sp)
    8001b2ea:	79e2                	ld	s3,56(sp)
    8001b2ec:	7a42                	ld	s4,48(sp)
    8001b2ee:	7aa2                	ld	s5,40(sp)
    8001b2f0:	7b02                	ld	s6,32(sp)
    8001b2f2:	6125                	addi	sp,sp,96
    8001b2f4:	8082                	ret
quickjs-nuttx/quickjs.c:15595
        var_refs = js_mallocz(ctx, sizeof(var_refs[0]) * b->closure_var_count);
    8001b2f6:	058e                	slli	a1,a1,0x3
    8001b2f8:	89aa                	mv	s3,a0
    8001b2fa:	8436                	mv	s0,a3
    8001b2fc:	8a3a                	mv	s4,a4
    8001b2fe:	8abe                	mv	s5,a5
    8001b300:	e39ff0ef          	jal	ra,8001b138 <js_mallocz>
    8001b304:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:15596
        if (!var_refs)
    8001b306:	c90d                	beqz	a0,8001b338 <js_closure2+0x88>
quickjs-nuttx/quickjs.c:15598
        p->u.func.var_refs = var_refs;
    8001b308:	fc88                	sd	a0,56(s1)
quickjs-nuttx/quickjs.c:15599
        for(i = 0; i < b->closure_var_count; i++) {
    8001b30a:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:15599 (discriminator 1)
    8001b30c:	4c7c                	lw	a5,92(s0)
    8001b30e:	fcf4d4e3          	bge	s1,a5,8001b2d6 <js_closure2+0x26>
quickjs-nuttx/quickjs.c:15600
            JSClosureVar *cv = &b->closure_var[i];
    8001b312:	7c1c                	ld	a5,56(s0)
    8001b314:	00349b13          	slli	s6,s1,0x3
    8001b318:	97da                	add	a5,a5,s6
quickjs-nuttx/quickjs.c:15602
            if (cv->is_local) {
    8001b31a:	0007c703          	lbu	a4,0(a5)
quickjs-nuttx/quickjs.c:15604
                var_ref = get_var_ref(ctx, sf, cv->var_idx, cv->is_arg);
    8001b31e:	0027d603          	lhu	a2,2(a5)
quickjs-nuttx/quickjs.c:15602
            if (cv->is_local) {
    8001b322:	8b05                	andi	a4,a4,1
    8001b324:	c315                	beqz	a4,8001b348 <js_closure2+0x98>
quickjs-nuttx/quickjs.c:15604
                var_ref = get_var_ref(ctx, sf, cv->var_idx, cv->is_arg);
    8001b326:	4394                	lw	a3,0(a5)
    8001b328:	85d6                	mv	a1,s5
    8001b32a:	854e                	mv	a0,s3
    8001b32c:	0016d69b          	srliw	a3,a3,0x1
    8001b330:	8a85                	andi	a3,a3,1
    8001b332:	fa7fe0ef          	jal	ra,8001a2d8 <get_var_ref>
quickjs-nuttx/quickjs.c:15605
                if (!var_ref)
    8001b336:	ed19                	bnez	a0,8001b354 <js_closure2+0xa4>
quickjs-nuttx/quickjs.c:15617
    JS_FreeValue(ctx, func_obj);
    8001b338:	6582                	ld	a1,0(sp)
    8001b33a:	6622                	ld	a2,8(sp)
    8001b33c:	854e                	mv	a0,s3
    8001b33e:	c60f00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:15618
    return JS_EXCEPTION;
    8001b342:	4799                	li	a5,6
    8001b344:	e802                	sd	zero,16(sp)
    8001b346:	bf59                	j	8001b2dc <js_closure2+0x2c>
quickjs-nuttx/quickjs.c:15608
                var_ref = cur_var_refs[cv->var_idx];
    8001b348:	060e                	slli	a2,a2,0x3
    8001b34a:	9652                	add	a2,a2,s4
    8001b34c:	6208                	ld	a0,0(a2)
quickjs-nuttx/quickjs.c:15609
                var_ref->header.ref_count++;
    8001b34e:	411c                	lw	a5,0(a0)
    8001b350:	2785                	addiw	a5,a5,1
    8001b352:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:15611 (discriminator 2)
            var_refs[i] = var_ref;
    8001b354:	9b4a                	add	s6,s6,s2
    8001b356:	00ab3023          	sd	a0,0(s6)
quickjs-nuttx/quickjs.c:15599 (discriminator 2)
        for(i = 0; i < b->closure_var_count; i++) {
    8001b35a:	2485                	addiw	s1,s1,1
    8001b35c:	bf45                	j	8001b30c <js_closure2+0x5c>

000000008001b35e <perform_promise_then>:
perform_promise_then():
quickjs-nuttx/quickjs.c:48501
{
    8001b35e:	7151                	addi	sp,sp,-240
    8001b360:	87b2                	mv	a5,a2
    8001b362:	eda6                	sd	s1,216(sp)
    8001b364:	e02e                	sd	a1,0(sp)
    8001b366:	e432                	sd	a2,8(sp)
    8001b368:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:48502
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8001b36a:	03100613          	li	a2,49
    8001b36e:	852e                	mv	a0,a1
    8001b370:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:48501
{
    8001b372:	f1a2                	sd	s0,224(sp)
    8001b374:	e5ce                	sd	s3,200(sp)
    8001b376:	e1d2                	sd	s4,192(sp)
    8001b378:	fd56                	sd	s5,184(sp)
    8001b37a:	f95a                	sd	s6,176(sp)
    8001b37c:	f55e                	sd	s7,168(sp)
    8001b37e:	f162                	sd	s8,160(sp)
    8001b380:	f586                	sd	ra,232(sp)
    8001b382:	e9ca                	sd	s2,208(sp)
    8001b384:	ed66                	sd	s9,152(sp)
    8001b386:	8b36                	mv	s6,a3
    8001b388:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:48502
    JSPromiseData *s = JS_GetOpaque(promise, JS_CLASS_PROMISE);
    8001b38a:	b0af30ef          	jal	ra,8000e694 <JS_GetOpaque>
    8001b38e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48506
    rd_array[0] = NULL;
    8001b390:	e802                	sd	zero,16(sp)
quickjs-nuttx/quickjs.c:48507
    rd_array[1] = NULL;
    8001b392:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs.c:48508
    for(i = 0; i < 2; i++) {
    8001b394:	01010a93          	addi	s5,sp,16
quickjs-nuttx/quickjs.c:48507
    rd_array[1] = NULL;
    8001b398:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:48520
            handler = JS_UNDEFINED;
    8001b39a:	4c0d                	li	s8,3
    8001b39c:	4b85                	li	s7,1
quickjs-nuttx/quickjs.c:48510
        rd = js_mallocz(ctx, sizeof(*rd));
    8001b39e:	04000593          	li	a1,64
    8001b3a2:	8526                	mv	a0,s1
    8001b3a4:	d95ff0ef          	jal	ra,8001b138 <js_mallocz>
    8001b3a8:	000a0c9b          	sext.w	s9,s4
    8001b3ac:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:48511
        if (!rd) {
    8001b3ae:	cd49                	beqz	a0,8001b448 <perform_promise_then+0xea>
quickjs-nuttx/quickjs.c:48517
            rd->resolving_funcs[j] = JS_DupValue(ctx, cap_resolving_funcs[j]);
    8001b3b0:	0009b503          	ld	a0,0(s3)
    8001b3b4:	0089b583          	ld	a1,8(s3)
    8001b3b8:	862ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001b3bc:	00a93823          	sd	a0,16(s2)
    8001b3c0:	00b93c23          	sd	a1,24(s2)
    8001b3c4:	0109b503          	ld	a0,16(s3)
    8001b3c8:	0189b583          	ld	a1,24(s3)
    8001b3cc:	84eef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:48518
        handler = resolve_reject[i];
    8001b3d0:	004a1793          	slli	a5,s4,0x4
quickjs-nuttx/quickjs.c:48517
            rd->resolving_funcs[j] = JS_DupValue(ctx, cap_resolving_funcs[j]);
    8001b3d4:	02a93023          	sd	a0,32(s2)
    8001b3d8:	02b93423          	sd	a1,40(s2)
quickjs-nuttx/quickjs.c:48518
        handler = resolve_reject[i];
    8001b3dc:	97da                	add	a5,a5,s6
    8001b3de:	638c                	ld	a1,0(a5)
    8001b3e0:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:48519
        if (!JS_IsFunction(ctx, handler))
    8001b3e2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:48518
        handler = resolve_reject[i];
    8001b3e4:	e0ae                	sd	a1,64(sp)
    8001b3e6:	e4b2                	sd	a2,72(sp)
quickjs-nuttx/quickjs.c:48519
        if (!JS_IsFunction(ctx, handler))
    8001b3e8:	8baf30ef          	jal	ra,8000e4a2 <JS_IsFunction>
    8001b3ec:	c151                	beqz	a0,8001b470 <perform_promise_then+0x112>
quickjs-nuttx/quickjs.c:48521 (discriminator 1)
        rd->handler = JS_DupValue(ctx, handler);
    8001b3ee:	6506                	ld	a0,64(sp)
    8001b3f0:	65a6                	ld	a1,72(sp)
quickjs-nuttx/quickjs.c:48508 (discriminator 1)
    for(i = 0; i < 2; i++) {
    8001b3f2:	0aa1                	addi	s5,s5,8
quickjs-nuttx/quickjs.c:48521 (discriminator 1)
        rd->handler = JS_DupValue(ctx, handler);
    8001b3f4:	826ef0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001b3f8:	02a93823          	sd	a0,48(s2)
quickjs-nuttx/quickjs.c:48522 (discriminator 1)
        rd_array[i] = rd;
    8001b3fc:	ff2abc23          	sd	s2,-8(s5)
quickjs-nuttx/quickjs.c:48521 (discriminator 1)
        rd->handler = JS_DupValue(ctx, handler);
    8001b400:	02b93c23          	sd	a1,56(s2)
quickjs-nuttx/quickjs.c:48508 (discriminator 1)
    for(i = 0; i < 2; i++) {
    8001b404:	057a1063          	bne	s4,s7,8001b444 <perform_promise_then+0xe6>
quickjs-nuttx/quickjs.c:48525
    if (s->promise_state == JS_PROMISE_PENDING) {
    8001b408:	401c                	lw	a5,0(s0)
quickjs-nuttx/quickjs.c:48527
            list_add_tail(&rd_array[i]->link, &s->promise_reactions[i]);
    8001b40a:	69c2                	ld	s3,16(sp)
    8001b40c:	6962                	ld	s2,24(sp)
quickjs-nuttx/quickjs.c:48525
    if (s->promise_state == JS_PROMISE_PENDING) {
    8001b40e:	e7a5                	bnez	a5,8001b476 <perform_promise_then+0x118>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001b410:	641c                	ld	a5,8(s0)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001b412:	0137b423          	sd	s3,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001b416:	00f9b023          	sd	a5,0(s3)
perform_promise_then():
quickjs-nuttx/quickjs.c:48527
            list_add_tail(&rd_array[i]->link, &s->promise_reactions[i]);
    8001b41a:	00840793          	addi	a5,s0,8
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001b41e:	00f9b423          	sd	a5,8(s3)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001b422:	6c1c                	ld	a5,24(s0)
__list_add():
quickjs-nuttx/list.h:54
    next->prev = el;
    8001b424:	01343423          	sd	s3,8(s0)
quickjs-nuttx/list.h:51
    prev->next = el;
    8001b428:	0127b423          	sd	s2,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001b42c:	00f93023          	sd	a5,0(s2)
perform_promise_then():
quickjs-nuttx/quickjs.c:48527
    8001b430:	01840793          	addi	a5,s0,24
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001b434:	00f93423          	sd	a5,8(s2)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001b438:	01243c23          	sd	s2,24(s0)
perform_promise_then():
quickjs-nuttx/quickjs.c:48548
    s->is_handled = TRUE;
    8001b43c:	4785                	li	a5,1
    8001b43e:	d41c                	sw	a5,40(s0)
quickjs-nuttx/quickjs.c:48549
    return 0;
    8001b440:	4501                	li	a0,0
    8001b442:	a811                	j	8001b456 <perform_promise_then+0xf8>
    8001b444:	4a05                	li	s4,1
    8001b446:	bfa1                	j	8001b39e <perform_promise_then+0x40>
quickjs-nuttx/quickjs.c:48512
            if (i == 1)
    8001b448:	000c8663          	beqz	s9,8001b454 <perform_promise_then+0xf6>
quickjs-nuttx/quickjs.c:48513
                promise_reaction_data_free(ctx->rt, rd_array[0]);
    8001b44c:	65c2                	ld	a1,16(sp)
    8001b44e:	6c88                	ld	a0,24(s1)
    8001b450:	f4df00ef          	jal	ra,8000c39c <promise_reaction_data_free>
quickjs-nuttx/quickjs.c:48514
            return -1;
    8001b454:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:48550
}
    8001b456:	70ae                	ld	ra,232(sp)
    8001b458:	740e                	ld	s0,224(sp)
    8001b45a:	64ee                	ld	s1,216(sp)
    8001b45c:	694e                	ld	s2,208(sp)
    8001b45e:	69ae                	ld	s3,200(sp)
    8001b460:	6a0e                	ld	s4,192(sp)
    8001b462:	7aea                	ld	s5,184(sp)
    8001b464:	7b4a                	ld	s6,176(sp)
    8001b466:	7baa                	ld	s7,168(sp)
    8001b468:	7c0a                	ld	s8,160(sp)
    8001b46a:	6cea                	ld	s9,152(sp)
    8001b46c:	616d                	addi	sp,sp,240
    8001b46e:	8082                	ret
quickjs-nuttx/quickjs.c:48520
            handler = JS_UNDEFINED;
    8001b470:	e082                	sd	zero,64(sp)
    8001b472:	e4e2                	sd	s8,72(sp)
    8001b474:	bfad                	j	8001b3ee <perform_promise_then+0x90>
quickjs-nuttx/quickjs.c:48530
        if (s->promise_state == JS_PROMISE_REJECTED && !s->is_handled) {
    8001b476:	4709                	li	a4,2
    8001b478:	02e79263          	bne	a5,a4,8001b49c <perform_promise_then+0x13e>
quickjs-nuttx/quickjs.c:48530 (discriminator 1)
    8001b47c:	541c                	lw	a5,40(s0)
    8001b47e:	ef99                	bnez	a5,8001b49c <perform_promise_then+0x13e>
quickjs-nuttx/quickjs.c:48531
            JSRuntime *rt = ctx->rt;
    8001b480:	6c9c                	ld	a5,24(s1)
quickjs-nuttx/quickjs.c:48532
            if (rt->host_promise_rejection_tracker) {
    8001b482:	1107b883          	ld	a7,272(a5)
    8001b486:	00088b63          	beqz	a7,8001b49c <perform_promise_then+0x13e>
quickjs-nuttx/quickjs.c:48533
                rt->host_promise_rejection_tracker(ctx, promise, s->promise_result,
    8001b48a:	1187b803          	ld	a6,280(a5)
    8001b48e:	7814                	ld	a3,48(s0)
    8001b490:	7c18                	ld	a4,56(s0)
    8001b492:	6582                	ld	a1,0(sp)
    8001b494:	6622                	ld	a2,8(sp)
    8001b496:	4785                	li	a5,1
    8001b498:	8526                	mv	a0,s1
    8001b49a:	9882                	jalr	a7
quickjs-nuttx/quickjs.c:48537
        i = s->promise_state - JS_PROMISE_FULFILLED;
    8001b49c:	401c                	lw	a5,0(s0)
quickjs-nuttx/quickjs.c:48538
        rd = rd_array[i];
    8001b49e:	0914                	addi	a3,sp,144
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8001b4a0:	da02                	sw	zero,52(sp)
perform_promise_then():
quickjs-nuttx/quickjs.c:48537
        i = s->promise_state - JS_PROMISE_FULFILLED;
    8001b4a2:	37fd                	addiw	a5,a5,-1
quickjs-nuttx/quickjs.c:48538
        rd = rd_array[i];
    8001b4a4:	00379713          	slli	a4,a5,0x3
    8001b4a8:	9736                	add	a4,a4,a3
    8001b4aa:	f8073703          	ld	a4,-128(a4)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8001b4ae:	00f037b3          	snez	a5,a5
    8001b4b2:	d83e                	sw	a5,48(sp)
perform_promise_then():
quickjs-nuttx/quickjs.c:48539
        args[0] = rd->resolving_funcs[0];
    8001b4b4:	6b14                	ld	a3,16(a4)
    8001b4b6:	4785                	li	a5,1
    8001b4b8:	fc3e                	sd	a5,56(sp)
    8001b4ba:	e0b6                	sd	a3,64(sp)
    8001b4bc:	6f14                	ld	a3,24(a4)
    8001b4be:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:48544
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001b4c0:	4615                	li	a2,5
quickjs-nuttx/quickjs.c:48539
        args[0] = rd->resolving_funcs[0];
    8001b4c2:	e4b6                	sd	a3,72(sp)
quickjs-nuttx/quickjs.c:48540
        args[1] = rd->resolving_funcs[1];
    8001b4c4:	7314                	ld	a3,32(a4)
quickjs-nuttx/quickjs.c:48544
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001b4c6:	00029597          	auipc	a1,0x29
    8001b4ca:	9ce58593          	addi	a1,a1,-1586 # 80043e94 <promise_reaction_job>
    8001b4ce:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:48540
        args[1] = rd->resolving_funcs[1];
    8001b4d0:	e8b6                	sd	a3,80(sp)
    8001b4d2:	7714                	ld	a3,40(a4)
    8001b4d4:	ecb6                	sd	a3,88(sp)
quickjs-nuttx/quickjs.c:48541
        args[2] = rd->handler;
    8001b4d6:	7b14                	ld	a3,48(a4)
    8001b4d8:	f0b6                	sd	a3,96(sp)
    8001b4da:	7f18                	ld	a4,56(a4)
quickjs-nuttx/quickjs.c:48542
        args[3] = JS_NewBool(ctx, i);
    8001b4dc:	fcbe                	sd	a5,120(sp)
quickjs-nuttx/quickjs.c:48544
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001b4de:	0094                	addi	a3,sp,64
quickjs-nuttx/quickjs.c:48541
        args[2] = rd->handler;
    8001b4e0:	f4ba                	sd	a4,104(sp)
quickjs-nuttx/quickjs.c:48543
        args[4] = s->promise_result;
    8001b4e2:	7742                	ld	a4,48(sp)
quickjs-nuttx/quickjs.c:48542
        args[3] = JS_NewBool(ctx, i);
    8001b4e4:	f8ba                	sd	a4,112(sp)
quickjs-nuttx/quickjs.c:48543
        args[4] = s->promise_result;
    8001b4e6:	781c                	ld	a5,48(s0)
    8001b4e8:	f03a                	sd	a4,32(sp)
    8001b4ea:	e13e                	sd	a5,128(sp)
    8001b4ec:	7c1c                	ld	a5,56(s0)
    8001b4ee:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs.c:48544
        JS_EnqueueJob(ctx, promise_reaction_job, 5, args);
    8001b4f0:	bc0ff0ef          	jal	ra,8001a8b0 <JS_EnqueueJob>
quickjs-nuttx/quickjs.c:48546
            promise_reaction_data_free(ctx->rt, rd_array[i]);
    8001b4f4:	6c88                	ld	a0,24(s1)
    8001b4f6:	85ce                	mv	a1,s3
    8001b4f8:	ea5f00ef          	jal	ra,8000c39c <promise_reaction_data_free>
    8001b4fc:	6c88                	ld	a0,24(s1)
    8001b4fe:	85ca                	mv	a1,s2
    8001b500:	e9df00ef          	jal	ra,8000c39c <promise_reaction_data_free>
quickjs-nuttx/quickjs.c:48545
        for(i = 0; i < 2; i++)
    8001b504:	bf25                	j	8001b43c <perform_promise_then+0xde>

000000008001b506 <js_new_module_def>:
js_new_module_def():
quickjs-nuttx/quickjs.c:27128
{
    8001b506:	1101                	addi	sp,sp,-32
    8001b508:	e04a                	sd	s2,0(sp)
    8001b50a:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:27130
    m = js_mallocz(ctx, sizeof(*m));
    8001b50c:	11800593          	li	a1,280
quickjs-nuttx/quickjs.c:27128
{
    8001b510:	e822                	sd	s0,16(sp)
    8001b512:	e426                	sd	s1,8(sp)
    8001b514:	ec06                	sd	ra,24(sp)
    8001b516:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:27130
    m = js_mallocz(ctx, sizeof(*m));
    8001b518:	c21ff0ef          	jal	ra,8001b138 <js_mallocz>
    8001b51c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:27131
    if (!m) {
    8001b51e:	ed01                	bnez	a0,8001b536 <js_new_module_def+0x30>
quickjs-nuttx/quickjs.c:27132
        JS_FreeAtom(ctx, name);
    8001b520:	85ca                	mv	a1,s2
    8001b522:	8526                	mv	a0,s1
    8001b524:	c25ef0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:27146
}
    8001b528:	60e2                	ld	ra,24(sp)
    8001b52a:	8522                	mv	a0,s0
    8001b52c:	6442                	ld	s0,16(sp)
    8001b52e:	64a2                	ld	s1,8(sp)
    8001b530:	6902                	ld	s2,0(sp)
    8001b532:	6105                	addi	sp,sp,32
    8001b534:	8082                	ret
quickjs-nuttx/quickjs.c:27135
    m->header.ref_count = 1;
    8001b536:	4785                	li	a5,1
    8001b538:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:27137
    m->module_ns = JS_UNDEFINED;
    8001b53a:	478d                	li	a5,3
    8001b53c:	f13c                	sd	a5,96(a0)
quickjs-nuttx/quickjs.c:27138
    m->func_obj = JS_UNDEFINED;
    8001b53e:	f93c                	sd	a5,112(a0)
quickjs-nuttx/quickjs.c:27139
    m->eval_exception = JS_UNDEFINED;
    8001b540:	10f53023          	sd	a5,256(a0)
quickjs-nuttx/quickjs.c:27140
    m->meta_obj = JS_UNDEFINED;
    8001b544:	10f53823          	sd	a5,272(a0)
quickjs-nuttx/quickjs.c:27141
    m->promise = JS_UNDEFINED;
    8001b548:	e57c                	sd	a5,200(a0)
quickjs-nuttx/quickjs.c:27142
    m->resolving_funcs[0] = JS_UNDEFINED;
    8001b54a:	ed7c                	sd	a5,216(a0)
quickjs-nuttx/quickjs.c:27143
    m->resolving_funcs[1] = JS_UNDEFINED;
    8001b54c:	f57c                	sd	a5,232(a0)
quickjs-nuttx/quickjs.c:27136
    m->module_name = name;
    8001b54e:	01252223          	sw	s2,4(a0)
quickjs-nuttx/quickjs.c:27137
    m->module_ns = JS_UNDEFINED;
    8001b552:	04053c23          	sd	zero,88(a0)
quickjs-nuttx/quickjs.c:27138
    m->func_obj = JS_UNDEFINED;
    8001b556:	06053423          	sd	zero,104(a0)
quickjs-nuttx/quickjs.c:27139
    m->eval_exception = JS_UNDEFINED;
    8001b55a:	0e053c23          	sd	zero,248(a0)
quickjs-nuttx/quickjs.c:27140
    m->meta_obj = JS_UNDEFINED;
    8001b55e:	10053423          	sd	zero,264(a0)
quickjs-nuttx/quickjs.c:27141
    m->promise = JS_UNDEFINED;
    8001b562:	0c053023          	sd	zero,192(a0)
quickjs-nuttx/quickjs.c:27142
    m->resolving_funcs[0] = JS_UNDEFINED;
    8001b566:	0c053823          	sd	zero,208(a0)
quickjs-nuttx/quickjs.c:27143
    m->resolving_funcs[1] = JS_UNDEFINED;
    8001b56a:	0e053023          	sd	zero,224(a0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001b56e:	1b04b703          	ld	a4,432(s1)
js_new_module_def():
quickjs-nuttx/quickjs.c:27144
    list_add_tail(&m->link, &ctx->loaded_modules);
    8001b572:	00850793          	addi	a5,a0,8
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001b576:	e71c                	sd	a5,8(a4)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001b578:	e518                	sd	a4,8(a0)
js_new_module_def():
quickjs-nuttx/quickjs.c:27144
    8001b57a:	1b048713          	addi	a4,s1,432
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001b57e:	e918                	sd	a4,16(a0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001b580:	1af4b823          	sd	a5,432(s1)
js_new_module_def():
quickjs-nuttx/quickjs.c:27145
    return m;
    8001b584:	b755                	j	8001b528 <js_new_module_def+0x22>

000000008001b586 <js_realloc>:
js_realloc():
quickjs-nuttx/quickjs.c:1378
{
    8001b586:	1101                	addi	sp,sp,-32
    8001b588:	e822                	sd	s0,16(sp)
    8001b58a:	e426                	sd	s1,8(sp)
    8001b58c:	e04a                	sd	s2,0(sp)
    8001b58e:	ec06                	sd	ra,24(sp)
    8001b590:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1380
    ret = js_realloc_rt(ctx->rt, ptr, size);
    8001b592:	6d08                	ld	a0,24(a0)
quickjs-nuttx/quickjs.c:1378
{
    8001b594:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:1380
    ret = js_realloc_rt(ctx->rt, ptr, size);
    8001b596:	dc4ec0ef          	jal	ra,80007b5a <js_realloc_rt>
    8001b59a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:1381
    if (unlikely(!ret && size != 0)) {
    8001b59c:	e511                	bnez	a0,8001b5a8 <js_realloc+0x22>
quickjs-nuttx/quickjs.c:1381 (discriminator 1)
    8001b59e:	00090563          	beqz	s2,8001b5a8 <js_realloc+0x22>
quickjs-nuttx/quickjs.c:1382
        JS_ThrowOutOfMemory(ctx);
    8001b5a2:	8526                	mv	a0,s1
    8001b5a4:	b31fe0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:1386
}
    8001b5a8:	60e2                	ld	ra,24(sp)
    8001b5aa:	8522                	mv	a0,s0
    8001b5ac:	6442                	ld	s0,16(sp)
    8001b5ae:	64a2                	ld	s1,8(sp)
    8001b5b0:	6902                	ld	s2,0(sp)
    8001b5b2:	6105                	addi	sp,sp,32
    8001b5b4:	8082                	ret

000000008001b5b6 <resize_properties>:
resize_properties():
quickjs-nuttx/quickjs.c:4466
{
    8001b5b6:	715d                	addi	sp,sp,-80
    8001b5b8:	f84a                	sd	s2,48(sp)
    8001b5ba:	f44e                	sd	s3,40(sp)
    8001b5bc:	ec56                	sd	s5,24(sp)
    8001b5be:	e486                	sd	ra,72(sp)
    8001b5c0:	e0a2                	sd	s0,64(sp)
    8001b5c2:	fc26                	sd	s1,56(sp)
    8001b5c4:	f052                	sd	s4,32(sp)
    8001b5c6:	e85a                	sd	s6,16(sp)
    8001b5c8:	e45e                	sd	s7,8(sp)
    8001b5ca:	e062                	sd	s8,0(sp)
quickjs-nuttx/quickjs.c:4474
    sh = *psh;
    8001b5cc:	6184                	ld	s1,0(a1)
quickjs-nuttx/quickjs.c:4475
    new_size = max_int(count, sh->prop_size * 3 / 2);
    8001b5ce:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:4466
{
    8001b5d0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:4475
    new_size = max_int(count, sh->prop_size * 3 / 2);
    8001b5d2:	50d8                	lw	a4,36(s1)
quickjs-nuttx/quickjs.c:4466
{
    8001b5d4:	89ae                	mv	s3,a1
    8001b5d6:	8ab2                	mv	s5,a2
quickjs-nuttx/quickjs.c:4475
    new_size = max_int(count, sh->prop_size * 3 / 2);
    8001b5d8:	02e787bb          	mulw	a5,a5,a4
    8001b5dc:	4709                	li	a4,2
    8001b5de:	02e7c7bb          	divw	a5,a5,a4
    8001b5e2:	0007871b          	sext.w	a4,a5
    8001b5e6:	00d75363          	bge	a4,a3,8001b5ec <resize_properties+0x36>
    8001b5ea:	87b6                	mv	a5,a3
quickjs-nuttx/quickjs.c:4480
        new_prop = js_realloc(ctx, p->prop, sizeof(new_prop[0]) * new_size);
    8001b5ec:	02079413          	slli	s0,a5,0x20
    8001b5f0:	00078a1b          	sext.w	s4,a5
    8001b5f4:	9001                	srli	s0,s0,0x20
quickjs-nuttx/quickjs.c:4478
    if (p) {
    8001b5f6:	020a8963          	beqz	s5,8001b628 <resize_properties+0x72>
quickjs-nuttx/quickjs.c:4480
        new_prop = js_realloc(ctx, p->prop, sizeof(new_prop[0]) * new_size);
    8001b5fa:	020ab583          	ld	a1,32(s5)
    8001b5fe:	00441613          	slli	a2,s0,0x4
    8001b602:	854a                	mv	a0,s2
    8001b604:	f83ff0ef          	jal	ra,8001b586 <js_realloc>
quickjs-nuttx/quickjs.c:4481
        if (unlikely(!new_prop))
    8001b608:	ed11                	bnez	a0,8001b624 <resize_properties+0x6e>
quickjs-nuttx/quickjs.c:4482
            return -1;
    8001b60a:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:4523
}
    8001b60c:	60a6                	ld	ra,72(sp)
    8001b60e:	6406                	ld	s0,64(sp)
    8001b610:	74e2                	ld	s1,56(sp)
    8001b612:	7942                	ld	s2,48(sp)
    8001b614:	79a2                	ld	s3,40(sp)
    8001b616:	7a02                	ld	s4,32(sp)
    8001b618:	6ae2                	ld	s5,24(sp)
    8001b61a:	6b42                	ld	s6,16(sp)
    8001b61c:	6ba2                	ld	s7,8(sp)
    8001b61e:	6c02                	ld	s8,0(sp)
    8001b620:	6161                	addi	sp,sp,80
    8001b622:	8082                	ret
quickjs-nuttx/quickjs.c:4483
        p->prop = new_prop;
    8001b624:	02aab023          	sd	a0,32(s5)
quickjs-nuttx/quickjs.c:4485
    new_hash_size = sh->prop_hash_mask + 1;
    8001b628:	0204aa83          	lw	s5,32(s1)
    8001b62c:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:4486
    while (new_hash_size < new_size)
    8001b62e:	0b4ae263          	bltu	s5,s4,8001b6d2 <resize_properties+0x11c>
quickjs-nuttx/quickjs.c:4491
    sh_alloc = js_malloc(ctx, get_shape_size(new_hash_size, new_size));
    8001b632:	020a9b93          	slli	s7,s5,0x20
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8001b636:	00141793          	slli	a5,s0,0x1
resize_properties():
quickjs-nuttx/quickjs.c:4491
    sh_alloc = js_malloc(ctx, get_shape_size(new_hash_size, new_size));
    8001b63a:	020bdb93          	srli	s7,s7,0x20
get_shape_size():
quickjs-nuttx/quickjs.c:4246
    return hash_size * sizeof(uint32_t) + sizeof(JSShape) +
    8001b63e:	07c1                	addi	a5,a5,16
    8001b640:	97de                	add	a5,a5,s7
resize_properties():
quickjs-nuttx/quickjs.c:4491
    sh_alloc = js_malloc(ctx, get_shape_size(new_hash_size, new_size));
    8001b642:	00279593          	slli	a1,a5,0x2
    8001b646:	854a                	mv	a0,s2
    8001b648:	abdfe0ef          	jal	ra,8001a104 <js_malloc>
    8001b64c:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:4492
    if (!sh_alloc)
    8001b64e:	dd55                	beqz	a0,8001b60a <resize_properties+0x54>
get_shape_from_alloc():
quickjs-nuttx/quickjs.c:4252
    return (JSShape *)(void *)((uint32_t *)sh_alloc + hash_size);
    8001b650:	0b8a                	slli	s7,s7,0x2
    8001b652:	01750433          	add	s0,a0,s7
resize_properties():
quickjs-nuttx/quickjs.c:4495
    list_del(&old_sh->header.link);
    8001b656:	00848513          	addi	a0,s1,8
    8001b65a:	ceaec0ef          	jal	ra,80007b44 <list_del>
quickjs-nuttx/quickjs.c:4498
           sizeof(JSShape) + sizeof(sh->prop[0]) * old_sh->prop_count);
    8001b65e:	5490                	lw	a2,40(s1)
quickjs-nuttx/quickjs.c:4497
    memcpy(sh, old_sh,
    8001b660:	85a6                	mv	a1,s1
    8001b662:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:4498
           sizeof(JSShape) + sizeof(sh->prop[0]) * old_sh->prop_count);
    8001b664:	0621                	addi	a2,a2,8
quickjs-nuttx/quickjs.c:4497
    memcpy(sh, old_sh,
    8001b666:	060e                	slli	a2,a2,0x3
    8001b668:	744480ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:4499
    list_add_tail(&sh->header.link, &ctx->rt->gc_obj_list);
    8001b66c:	01893783          	ld	a5,24(s2)
    8001b670:	00840713          	addi	a4,s0,8
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8001b674:	67d4                	ld	a3,136(a5)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8001b676:	e698                	sd	a4,8(a3)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8001b678:	e414                	sd	a3,8(s0)
resize_properties():
quickjs-nuttx/quickjs.c:4499
    8001b67a:	08878693          	addi	a3,a5,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8001b67e:	e814                	sd	a3,16(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8001b680:	e7d8                	sd	a4,136(a5)
resize_properties():
quickjs-nuttx/quickjs.c:4501
    if (new_hash_size != (sh->prop_hash_mask + 1)) {
    8001b682:	501c                	lw	a5,32(s0)
    8001b684:	2785                	addiw	a5,a5,1
    8001b686:	07578f63          	beq	a5,s5,8001b704 <resize_properties+0x14e>
quickjs-nuttx/quickjs.c:4503
        new_hash_mask = new_hash_size - 1;
    8001b68a:	fffa8c1b          	addiw	s8,s5,-1
quickjs-nuttx/quickjs.c:4505
        memset(prop_hash_end(sh) - new_hash_size, 0,
    8001b68e:	865e                	mv	a2,s7
    8001b690:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:4504
        sh->prop_hash_mask = new_hash_mask;
    8001b692:	03842023          	sw	s8,32(s0)
quickjs-nuttx/quickjs.c:4505
        memset(prop_hash_end(sh) - new_hash_size, 0,
    8001b696:	855a                	mv	a0,s6
    8001b698:	5aa480ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:4510
                pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001b69c:	040005b7          	lui	a1,0x4000
quickjs-nuttx/quickjs.c:4507
        for(i = 0, pr = sh->prop; i < sh->prop_count; i++, pr++) {
    8001b6a0:	04040713          	addi	a4,s0,64
    8001b6a4:	4601                	li	a2,0
quickjs-nuttx/quickjs.c:4510
                pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001b6a6:	58f1                	li	a7,-4
    8001b6a8:	15fd                	addi	a1,a1,-1
    8001b6aa:	fc000337          	lui	t1,0xfc000
quickjs-nuttx/quickjs.c:4507 (discriminator 1)
        for(i = 0, pr = sh->prop; i < sh->prop_count; i++, pr++) {
    8001b6ae:	541c                	lw	a5,40(s0)
    8001b6b0:	02f66463          	bltu	a2,a5,8001b6d8 <resize_properties+0x122>
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8001b6b4:	0204e583          	lwu	a1,32(s1)
resize_properties():
quickjs-nuttx/quickjs.c:4519
    js_free(ctx, get_alloc_from_shape(old_sh));
    8001b6b8:	854a                	mv	a0,s2
get_alloc_from_shape():
quickjs-nuttx/quickjs.c:4262
    return prop_hash_end(sh) - ((intptr_t)sh->prop_hash_mask + 1);
    8001b6ba:	058a                	slli	a1,a1,0x2
    8001b6bc:	40b485b3          	sub	a1,s1,a1
resize_properties():
quickjs-nuttx/quickjs.c:4519
    js_free(ctx, get_alloc_from_shape(old_sh));
    8001b6c0:	15f1                	addi	a1,a1,-4
    8001b6c2:	935ef0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:4520
    *psh = sh;
    8001b6c6:	0089b023          	sd	s0,0(s3)
quickjs-nuttx/quickjs.c:4521
    sh->prop_size = new_size;
    8001b6ca:	03442223          	sw	s4,36(s0)
quickjs-nuttx/quickjs.c:4522
    return 0;
    8001b6ce:	4501                	li	a0,0
    8001b6d0:	bf35                	j	8001b60c <resize_properties+0x56>
quickjs-nuttx/quickjs.c:4487
        new_hash_size = 2 * new_hash_size;
    8001b6d2:	001a9a9b          	slliw	s5,s5,0x1
    8001b6d6:	bfa1                	j	8001b62e <resize_properties+0x78>
quickjs-nuttx/quickjs.c:4508
            if (pr->atom != JS_ATOM_NULL) {
    8001b6d8:	435c                	lw	a5,4(a4)
quickjs-nuttx/quickjs.c:4511
                prop_hash_end(sh)[-h - 1] = i + 1;
    8001b6da:	2605                	addiw	a2,a2,1
quickjs-nuttx/quickjs.c:4508
            if (pr->atom != JS_ATOM_NULL) {
    8001b6dc:	c395                	beqz	a5,8001b700 <resize_properties+0x14a>
quickjs-nuttx/quickjs.c:4509
                h = ((uintptr_t)pr->atom & new_hash_mask);
    8001b6de:	0187f7b3          	and	a5,a5,s8
quickjs-nuttx/quickjs.c:4510
                pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001b6e2:	1782                	slli	a5,a5,0x20
    8001b6e4:	9381                	srli	a5,a5,0x20
    8001b6e6:	0785                	addi	a5,a5,1
    8001b6e8:	031787b3          	mul	a5,a5,a7
    8001b6ec:	97a2                	add	a5,a5,s0
    8001b6ee:	4394                	lw	a3,0(a5)
    8001b6f0:	00b6f533          	and	a0,a3,a1
    8001b6f4:	4314                	lw	a3,0(a4)
    8001b6f6:	0066f6b3          	and	a3,a3,t1
    8001b6fa:	8ec9                	or	a3,a3,a0
    8001b6fc:	c314                	sw	a3,0(a4)
quickjs-nuttx/quickjs.c:4511
                prop_hash_end(sh)[-h - 1] = i + 1;
    8001b6fe:	c390                	sw	a2,0(a5)
quickjs-nuttx/quickjs.c:4507 (discriminator 2)
        for(i = 0, pr = sh->prop; i < sh->prop_count; i++, pr++) {
    8001b700:	0721                	addi	a4,a4,8
    8001b702:	b775                	j	8001b6ae <resize_properties+0xf8>
quickjs-nuttx/quickjs.c:4516
        memcpy(prop_hash_end(sh) - new_hash_size, prop_hash_end(old_sh) - new_hash_size,
    8001b704:	865e                	mv	a2,s7
    8001b706:	417485b3          	sub	a1,s1,s7
    8001b70a:	855a                	mv	a0,s6
    8001b70c:	6a0480ef          	jal	ra,80063dac <memcpy>
    8001b710:	b755                	j	8001b6b4 <resize_properties+0xfe>

000000008001b712 <add_shape_property>:
add_shape_property():
quickjs-nuttx/quickjs.c:4595
{
    8001b712:	715d                	addi	sp,sp,-80
    8001b714:	fc26                	sd	s1,56(sp)
    8001b716:	f84a                	sd	s2,48(sp)
    8001b718:	f44e                	sd	s3,40(sp)
    8001b71a:	f052                	sd	s4,32(sp)
    8001b71c:	ec56                	sd	s5,24(sp)
    8001b71e:	e486                	sd	ra,72(sp)
    8001b720:	e0a2                	sd	s0,64(sp)
    8001b722:	e85a                	sd	s6,16(sp)
quickjs-nuttx/quickjs.c:4597
    JSShape *sh = *psh;
    8001b724:	6180                	ld	s0,0(a1)
quickjs-nuttx/quickjs.c:4596
    JSRuntime *rt = ctx->rt;
    8001b726:	01853b03          	ld	s6,24(a0)
quickjs-nuttx/quickjs.c:4595
{
    8001b72a:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs.c:4603
    if (sh->is_hashed) {
    8001b72c:	01844783          	lbu	a5,24(s0)
quickjs-nuttx/quickjs.c:4595
{
    8001b730:	8a2e                	mv	s4,a1
    8001b732:	84b6                	mv	s1,a3
    8001b734:	89ba                	mv	s3,a4
    8001b736:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:4603
    if (sh->is_hashed) {
    8001b738:	c785                	beqz	a5,8001b760 <add_shape_property+0x4e>
quickjs-nuttx/quickjs.c:4604
        js_shape_hash_unlink(rt, sh);
    8001b73a:	85a2                	mv	a1,s0
    8001b73c:	855a                	mv	a0,s6
    8001b73e:	e432                	sd	a2,8(sp)
    8001b740:	df6ec0ef          	jal	ra,80007d36 <js_shape_hash_unlink>
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001b744:	01c42903          	lw	s2,28(s0)
    8001b748:	9e3707b7          	lui	a5,0x9e370
    8001b74c:	2785                	addiw	a5,a5,1
    8001b74e:	0099093b          	addw	s2,s2,s1
    8001b752:	02f9093b          	mulw	s2,s2,a5
    8001b756:	6622                	ld	a2,8(sp)
    8001b758:	0139093b          	addw	s2,s2,s3
    8001b75c:	02f9093b          	mulw	s2,s2,a5
add_shape_property():
quickjs-nuttx/quickjs.c:4608
    if (unlikely(sh->prop_count >= sh->prop_size)) {
    8001b760:	5414                	lw	a3,40(s0)
    8001b762:	505c                	lw	a5,36(s0)
    8001b764:	02f6cd63          	blt	a3,a5,8001b79e <add_shape_property+0x8c>
quickjs-nuttx/quickjs.c:4609
        if (resize_properties(ctx, psh, p, sh->prop_count + 1)) {
    8001b768:	2685                	addiw	a3,a3,1
    8001b76a:	85d2                	mv	a1,s4
    8001b76c:	8556                	mv	a0,s5
    8001b76e:	e49ff0ef          	jal	ra,8001b5b6 <resize_properties>
    8001b772:	c505                	beqz	a0,8001b79a <add_shape_property+0x88>
quickjs-nuttx/quickjs.c:4612
            if (sh->is_hashed)
    8001b774:	01844783          	lbu	a5,24(s0)
quickjs-nuttx/quickjs.c:4614
            return -1;
    8001b778:	54fd                	li	s1,-1
quickjs-nuttx/quickjs.c:4612
            if (sh->is_hashed)
    8001b77a:	c789                	beqz	a5,8001b784 <add_shape_property+0x72>
quickjs-nuttx/quickjs.c:4613
                js_shape_hash_link(rt, sh);
    8001b77c:	85a2                	mv	a1,s0
    8001b77e:	855a                	mv	a0,s6
    8001b780:	d7eec0ef          	jal	ra,80007cfe <js_shape_hash_link>
quickjs-nuttx/quickjs.c:4635
}
    8001b784:	60a6                	ld	ra,72(sp)
    8001b786:	6406                	ld	s0,64(sp)
    8001b788:	7942                	ld	s2,48(sp)
    8001b78a:	79a2                	ld	s3,40(sp)
    8001b78c:	7a02                	ld	s4,32(sp)
    8001b78e:	6ae2                	ld	s5,24(sp)
    8001b790:	6b42                	ld	s6,16(sp)
    8001b792:	8526                	mv	a0,s1
    8001b794:	74e2                	ld	s1,56(sp)
    8001b796:	6161                	addi	sp,sp,80
    8001b798:	8082                	ret
quickjs-nuttx/quickjs.c:4616
        sh = *psh;
    8001b79a:	000a3403          	ld	s0,0(s4)
quickjs-nuttx/quickjs.c:4618
    if (sh->is_hashed) {
    8001b79e:	01844783          	lbu	a5,24(s0)
    8001b7a2:	c799                	beqz	a5,8001b7b0 <add_shape_property+0x9e>
quickjs-nuttx/quickjs.c:4619
        sh->hash = new_shape_hash;
    8001b7a4:	01242e23          	sw	s2,28(s0)
quickjs-nuttx/quickjs.c:4620
        js_shape_hash_link(rt, sh);
    8001b7a8:	85a2                	mv	a1,s0
    8001b7aa:	855a                	mv	a0,s6
    8001b7ac:	d52ec0ef          	jal	ra,80007cfe <js_shape_hash_link>
quickjs-nuttx/quickjs.c:4625
    pr = &prop[sh->prop_count++];
    8001b7b0:	541c                	lw	a5,40(s0)
quickjs-nuttx/quickjs.c:4626
    pr->atom = JS_DupAtom(ctx, atom);
    8001b7b2:	85a6                	mv	a1,s1
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001b7b4:	04040913          	addi	s2,s0,64
add_shape_property():
quickjs-nuttx/quickjs.c:4625
    pr = &prop[sh->prop_count++];
    8001b7b8:	0017871b          	addiw	a4,a5,1
    8001b7bc:	d418                	sw	a4,40(s0)
    8001b7be:	078e                	slli	a5,a5,0x3
quickjs-nuttx/quickjs.c:4626
    pr->atom = JS_DupAtom(ctx, atom);
    8001b7c0:	8556                	mv	a0,s5
quickjs-nuttx/quickjs.c:4625
    pr = &prop[sh->prop_count++];
    8001b7c2:	993e                	add	s2,s2,a5
quickjs-nuttx/quickjs.c:4626
    pr->atom = JS_DupAtom(ctx, atom);
    8001b7c4:	943ef0ef          	jal	ra,8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:4627
    pr->flags = prop_flags;
    8001b7c8:	01a9971b          	slliw	a4,s3,0x1a
    8001b7cc:	00092983          	lw	s3,0(s2)
    8001b7d0:	04000637          	lui	a2,0x4000
    8001b7d4:	167d                	addi	a2,a2,-1
    8001b7d6:	00c9f9b3          	and	s3,s3,a2
    8001b7da:	00e9e9b3          	or	s3,s3,a4
    8001b7de:	01392023          	sw	s3,0(s2)
quickjs-nuttx/quickjs.c:4626
    pr->atom = JS_DupAtom(ctx, atom);
    8001b7e2:	00a92223          	sw	a0,4(s2)
quickjs-nuttx/quickjs.c:4628
    sh->has_small_array_index |= __JS_AtomIsTaggedInt(atom);
    8001b7e6:	01944783          	lbu	a5,25(s0)
__JS_AtomIsTaggedInt():
quickjs-nuttx/quickjs.c:2407
    return (v & JS_ATOM_TAG_INT) != 0;
    8001b7ea:	01f4d71b          	srliw	a4,s1,0x1f
add_shape_property():
quickjs-nuttx/quickjs.c:4632
    pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001b7ee:	fc0006b7          	lui	a3,0xfc000
quickjs-nuttx/quickjs.c:4628
    sh->has_small_array_index |= __JS_AtomIsTaggedInt(atom);
    8001b7f2:	8fd9                	or	a5,a5,a4
    8001b7f4:	00f40ca3          	sb	a5,25(s0)
quickjs-nuttx/quickjs.c:4631
    h = atom & hash_mask;
    8001b7f8:	501c                	lw	a5,32(s0)
    8001b7fa:	8fe5                	and	a5,a5,s1
quickjs-nuttx/quickjs.c:4632
    pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001b7fc:	1782                	slli	a5,a5,0x20
    8001b7fe:	9381                	srli	a5,a5,0x20
    8001b800:	54f1                	li	s1,-4
    8001b802:	0785                	addi	a5,a5,1
    8001b804:	029787b3          	mul	a5,a5,s1
quickjs-nuttx/quickjs.c:4634
    return 0;
    8001b808:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:4632
    pr->hash_next = prop_hash_end(sh)[-h - 1];
    8001b80a:	97a2                	add	a5,a5,s0
    8001b80c:	4398                	lw	a4,0(a5)
    8001b80e:	8e79                	and	a2,a2,a4
    8001b810:	00092703          	lw	a4,0(s2)
    8001b814:	8f75                	and	a4,a4,a3
    8001b816:	8f51                	or	a4,a4,a2
    8001b818:	00e92023          	sw	a4,0(s2)
quickjs-nuttx/quickjs.c:4633
    prop_hash_end(sh)[-h - 1] = sh->prop_count;
    8001b81c:	5418                	lw	a4,40(s0)
    8001b81e:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.c:4634
    return 0;
    8001b820:	b795                	j	8001b784 <add_shape_property+0x72>

000000008001b822 <add_property>:
add_property():
quickjs-nuttx/quickjs.c:8028
{
    8001b822:	7139                	addi	sp,sp,-64
    8001b824:	f822                	sd	s0,48(sp)
    8001b826:	ec4e                	sd	s3,24(sp)
    8001b828:	e852                	sd	s4,16(sp)
    8001b82a:	e456                	sd	s5,8(sp)
    8001b82c:	fc06                	sd	ra,56(sp)
    8001b82e:	f426                	sd	s1,40(sp)
    8001b830:	f04a                	sd	s2,32(sp)
    8001b832:	e05a                	sd	s6,0(sp)
quickjs-nuttx/quickjs.c:8031
    sh = p->shape;
    8001b834:	0185b903          	ld	s2,24(a1) # 4000018 <asinh-0x7bffffe8>
quickjs-nuttx/quickjs.c:8028
{
    8001b838:	89aa                	mv	s3,a0
    8001b83a:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:8032
    if (sh->is_hashed) {
    8001b83c:	01894783          	lbu	a5,24(s2)
quickjs-nuttx/quickjs.c:8028
{
    8001b840:	8a32                	mv	s4,a2
    8001b842:	8ab6                	mv	s5,a3
quickjs-nuttx/quickjs.c:8032
    if (sh->is_hashed) {
    8001b844:	c7bd                	beqz	a5,8001b8b2 <add_property+0x90>
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001b846:	01c92783          	lw	a5,28(s2)
    8001b84a:	9e370737          	lui	a4,0x9e370
    8001b84e:	2705                	addiw	a4,a4,1
    8001b850:	9fb1                	addw	a5,a5,a2
    8001b852:	02e787bb          	mulw	a5,a5,a4
add_property():
quickjs-nuttx/quickjs.c:8034
        new_sh = find_hashed_shape_prop(ctx->rt, sh, prop, prop_flags);
    8001b856:	6d14                	ld	a3,24(a0)
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001b858:	1786a603          	lw	a2,376(a3) # fffffffffc000178 <_ebss+0xffffffff7beff012>
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001b85c:	015787bb          	addw	a5,a5,s5
    8001b860:	02e7883b          	mulw	a6,a5,a4
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001b864:	02000713          	li	a4,32
    8001b868:	9f11                	subw	a4,a4,a2
    8001b86a:	00e857bb          	srlw	a5,a6,a4
find_hashed_shape_prop():
quickjs-nuttx/quickjs.c:4668
    for(sh1 = rt->shape_hash[h1]; sh1 != NULL; sh1 = sh1->shape_hash_next) {
    8001b86e:	1886b703          	ld	a4,392(a3)
    8001b872:	02079693          	slli	a3,a5,0x20
    8001b876:	01d6d793          	srli	a5,a3,0x1d
    8001b87a:	97ba                	add	a5,a5,a4
    8001b87c:	6384                	ld	s1,0(a5)
    8001b87e:	e8a9                	bnez	s1,8001b8d0 <add_property+0xae>
add_property():
quickjs-nuttx/quickjs.c:8049
        } else if (sh->header.ref_count != 1) {
    8001b880:	00092783          	lw	a5,0(s2)
    8001b884:	4b05                	li	s6,1
    8001b886:	11678e63          	beq	a5,s6,8001b9a2 <add_property+0x180>
quickjs-nuttx/quickjs.c:8051
            new_sh = js_clone_shape(ctx, sh);
    8001b88a:	85ca                	mv	a1,s2
    8001b88c:	854e                	mv	a0,s3
    8001b88e:	b21fe0ef          	jal	ra,8001a3ae <js_clone_shape>
    8001b892:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:8052
            if (!new_sh)
    8001b894:	0e050a63          	beqz	a0,8001b988 <add_property+0x166>
quickjs-nuttx/quickjs.c:8055
            new_sh->is_hashed = TRUE;
    8001b898:	01650c23          	sb	s6,24(a0)
quickjs-nuttx/quickjs.c:8056
            js_shape_hash_link(ctx->rt, new_sh);
    8001b89c:	85aa                	mv	a1,a0
    8001b89e:	0189b503          	ld	a0,24(s3)
    8001b8a2:	c5cec0ef          	jal	ra,80007cfe <js_shape_hash_link>
quickjs-nuttx/quickjs.c:8057
            js_free_shape(ctx->rt, p->shape);
    8001b8a6:	6c0c                	ld	a1,24(s0)
    8001b8a8:	0189b503          	ld	a0,24(s3)
    8001b8ac:	b29f00ef          	jal	ra,8000c3d4 <js_free_shape>
quickjs-nuttx/quickjs.c:8058
            p->shape = new_sh;
    8001b8b0:	ec04                	sd	s1,24(s0)
quickjs-nuttx/quickjs.c:8061
    assert(p->shape->header.ref_count == 1);
    8001b8b2:	6c1c                	ld	a5,24(s0)
    8001b8b4:	4398                	lw	a4,0(a5)
    8001b8b6:	4785                	li	a5,1
    8001b8b8:	0ef70563          	beq	a4,a5,8001b9a2 <add_property+0x180>
quickjs-nuttx/quickjs.c:8061 (discriminator 1)
    8001b8bc:	6589                	lui	a1,0x2
    8001b8be:	4601                	li	a2,0
    8001b8c0:	f7d58593          	addi	a1,a1,-131 # 1f7d <asinh-0x7fffe083>
    8001b8c4:	0004e517          	auipc	a0,0x4e
    8001b8c8:	cd450513          	addi	a0,a0,-812 # 80069598 <qjsc_repl+0x3fe8>
    8001b8cc:	090450ef          	jal	ra,8006095c <__assert>
find_hashed_shape_prop():
quickjs-nuttx/quickjs.c:4671
        if (sh1->hash == h &&
    8001b8d0:	4cdc                	lw	a5,28(s1)
    8001b8d2:	0b079363          	bne	a5,a6,8001b978 <add_property+0x156>
    8001b8d6:	7c98                	ld	a4,56(s1)
    8001b8d8:	03893783          	ld	a5,56(s2)
    8001b8dc:	08f71e63          	bne	a4,a5,8001b978 <add_property+0x156>
quickjs-nuttx/quickjs.c:4673
            sh1->prop_count == ((n = sh->prop_count) + 1)) {
    8001b8e0:	02892783          	lw	a5,40(s2)
quickjs-nuttx/quickjs.c:4672
            sh1->proto == sh->proto &&
    8001b8e4:	5494                	lw	a3,40(s1)
    8001b8e6:	0017871b          	addiw	a4,a5,1
    8001b8ea:	08e69763          	bne	a3,a4,8001b978 <add_property+0x156>
    8001b8ee:	04400693          	li	a3,68
quickjs-nuttx/quickjs.c:4674
            for(i = 0; i < n; i++) {
    8001b8f2:	4701                	li	a4,0
    8001b8f4:	a825                	j	8001b92c <add_property+0x10a>
quickjs-nuttx/quickjs.c:4675
                if (unlikely(sh1->prop[i].atom != sh->prop[i].atom) ||
    8001b8f6:	00d485b3          	add	a1,s1,a3
    8001b8fa:	00d90633          	add	a2,s2,a3
    8001b8fe:	418c                	lw	a1,0(a1)
    8001b900:	4210                	lw	a2,0(a2)
    8001b902:	06c59b63          	bne	a1,a2,8001b978 <add_property+0x156>
quickjs-nuttx/quickjs.c:4676
                    unlikely(sh1->prop[i].flags != sh->prop[i].flags))
    8001b906:	02071613          	slli	a2,a4,0x20
    8001b90a:	01d65593          	srli	a1,a2,0x1d
    8001b90e:	04058593          	addi	a1,a1,64
    8001b912:	00b48633          	add	a2,s1,a1
    8001b916:	95ca                	add	a1,a1,s2
    8001b918:	6208                	ld	a0,0(a2)
    8001b91a:	6190                	ld	a2,0(a1)
quickjs-nuttx/quickjs.c:4675
                if (unlikely(sh1->prop[i].atom != sh->prop[i].atom) ||
    8001b91c:	06a1                	addi	a3,a3,8
    8001b91e:	01a5559b          	srliw	a1,a0,0x1a
    8001b922:	01a6561b          	srliw	a2,a2,0x1a
    8001b926:	04c59963          	bne	a1,a2,8001b978 <add_property+0x156>
quickjs-nuttx/quickjs.c:4674
            for(i = 0; i < n; i++) {
    8001b92a:	2705                	addiw	a4,a4,1
    8001b92c:	fce795e3          	bne	a5,a4,8001b8f6 <add_property+0xd4>
quickjs-nuttx/quickjs.c:4679
            if (unlikely(sh1->prop[n].atom != atom) ||
    8001b930:	02079713          	slli	a4,a5,0x20
    8001b934:	01d75793          	srli	a5,a4,0x1d
    8001b938:	04078793          	addi	a5,a5,64 # ffffffff9e370040 <_ebss+0xffffffff1e26eeda>
    8001b93c:	97a6                	add	a5,a5,s1
    8001b93e:	43d8                	lw	a4,4(a5)
    8001b940:	03471c63          	bne	a4,s4,8001b978 <add_property+0x156>
quickjs-nuttx/quickjs.c:4680
                unlikely(sh1->prop[n].flags != prop_flags))
    8001b944:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:4679
            if (unlikely(sh1->prop[n].atom != atom) ||
    8001b946:	01a7d79b          	srliw	a5,a5,0x1a
    8001b94a:	03579763          	bne	a5,s5,8001b978 <add_property+0x156>
add_property():
quickjs-nuttx/quickjs.c:8038
            if (new_sh->prop_size != sh->prop_size) {
    8001b94e:	50d0                	lw	a2,36(s1)
    8001b950:	02492783          	lw	a5,36(s2)
    8001b954:	02c79463          	bne	a5,a2,8001b97c <add_property+0x15a>
js_dup_shape():
quickjs-nuttx/quickjs.c:4426
    sh->header.ref_count++;
    8001b958:	409c                	lw	a5,0(s1)
add_property():
quickjs-nuttx/quickjs.c:8047
            js_free_shape(ctx->rt, sh);
    8001b95a:	85ca                	mv	a1,s2
js_dup_shape():
quickjs-nuttx/quickjs.c:4426
    sh->header.ref_count++;
    8001b95c:	2785                	addiw	a5,a5,1
    8001b95e:	c09c                	sw	a5,0(s1)
add_property():
quickjs-nuttx/quickjs.c:8046
            p->shape = js_dup_shape(new_sh);
    8001b960:	ec04                	sd	s1,24(s0)
quickjs-nuttx/quickjs.c:8047
            js_free_shape(ctx->rt, sh);
    8001b962:	0189b503          	ld	a0,24(s3)
    8001b966:	a6ff00ef          	jal	ra,8000c3d4 <js_free_shape>
quickjs-nuttx/quickjs.c:8048
            return &p->prop[new_sh->prop_count - 1];
    8001b96a:	5488                	lw	a0,40(s1)
quickjs-nuttx/quickjs.c:8064
    return &p->prop[p->shape->prop_count - 1];
    8001b96c:	357d                	addiw	a0,a0,-1
    8001b96e:	00451793          	slli	a5,a0,0x4
    8001b972:	7008                	ld	a0,32(s0)
    8001b974:	953e                	add	a0,a0,a5
    8001b976:	a811                	j	8001b98a <add_property+0x168>
find_hashed_shape_prop():
quickjs-nuttx/quickjs.c:4668
    for(sh1 = rt->shape_hash[h1]; sh1 != NULL; sh1 = sh1->shape_hash_next) {
    8001b978:	7884                	ld	s1,48(s1)
    8001b97a:	b711                	j	8001b87e <add_property+0x5c>
add_property():
quickjs-nuttx/quickjs.c:8040
                new_prop = js_realloc(ctx, p->prop, sizeof(p->prop[0]) *
    8001b97c:	700c                	ld	a1,32(s0)
    8001b97e:	0612                	slli	a2,a2,0x4
    8001b980:	854e                	mv	a0,s3
    8001b982:	c05ff0ef          	jal	ra,8001b586 <js_realloc>
quickjs-nuttx/quickjs.c:8042
                if (!new_prop)
    8001b986:	ed01                	bnez	a0,8001b99e <add_property+0x17c>
quickjs-nuttx/quickjs.c:8043
                    return NULL;
    8001b988:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:8065
}
    8001b98a:	70e2                	ld	ra,56(sp)
    8001b98c:	7442                	ld	s0,48(sp)
    8001b98e:	74a2                	ld	s1,40(sp)
    8001b990:	7902                	ld	s2,32(sp)
    8001b992:	69e2                	ld	s3,24(sp)
    8001b994:	6a42                	ld	s4,16(sp)
    8001b996:	6aa2                	ld	s5,8(sp)
    8001b998:	6b02                	ld	s6,0(sp)
    8001b99a:	6121                	addi	sp,sp,64
    8001b99c:	8082                	ret
quickjs-nuttx/quickjs.c:8044
                p->prop = new_prop;
    8001b99e:	f008                	sd	a0,32(s0)
    8001b9a0:	bf65                	j	8001b958 <add_property+0x136>
quickjs-nuttx/quickjs.c:8062
    if (add_shape_property(ctx, &p->shape, p, prop, prop_flags))
    8001b9a2:	8756                	mv	a4,s5
    8001b9a4:	86d2                	mv	a3,s4
    8001b9a6:	8622                	mv	a2,s0
    8001b9a8:	01840593          	addi	a1,s0,24
    8001b9ac:	854e                	mv	a0,s3
    8001b9ae:	d65ff0ef          	jal	ra,8001b712 <add_shape_property>
    8001b9b2:	f979                	bnez	a0,8001b988 <add_property+0x166>
quickjs-nuttx/quickjs.c:8064
    return &p->prop[p->shape->prop_count - 1];
    8001b9b4:	6c1c                	ld	a5,24(s0)
    8001b9b6:	5788                	lw	a0,40(a5)
    8001b9b8:	bf55                	j	8001b96c <add_property+0x14a>

000000008001b9ba <JS_DefineAutoInitProperty>:
JS_DefineAutoInitProperty():
quickjs-nuttx/quickjs.c:9309
{
    8001b9ba:	7139                	addi	sp,sp,-64
    8001b9bc:	f04a                	sd	s2,32(sp)
    8001b9be:	ec4e                	sd	s3,24(sp)
    8001b9c0:	fc06                	sd	ra,56(sp)
    8001b9c2:	89be                	mv	s3,a5
    8001b9c4:	f822                	sd	s0,48(sp)
    8001b9c6:	f426                	sd	s1,40(sp)
    8001b9c8:	e02e                	sd	a1,0(sp)
    8001b9ca:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:9313
    if (JS_VALUE_GET_TAG(this_obj) != JS_TAG_OBJECT)
    8001b9cc:	0006091b          	sext.w	s2,a2
    8001b9d0:	57fd                	li	a5,-1
    8001b9d2:	0af91363          	bne	s2,a5,8001ba78 <JS_DefineAutoInitProperty+0xbe>
    8001b9d6:	84ba                	mv	s1,a4
find_own_property():
quickjs-nuttx/quickjs.c:5220
    sh = p->shape;
    8001b9d8:	6d98                	ld	a4,24(a1)
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8001b9da:	57f1                	li	a5,-4
    8001b9dc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:5221
    h = (uintptr_t)atom & sh->prop_hash_mask;
    8001b9de:	02072883          	lw	a7,32(a4) # ffffffff9e370020 <_ebss+0xffffffff1e26eeba>
    8001b9e2:	8536                	mv	a0,a3
    8001b9e4:	0116f8b3          	and	a7,a3,a7
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8001b9e8:	1882                	slli	a7,a7,0x20
    8001b9ea:	0208d893          	srli	a7,a7,0x20
    8001b9ee:	0885                	addi	a7,a7,1
    8001b9f0:	02f888b3          	mul	a7,a7,a5
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8001b9f4:	040007b7          	lui	a5,0x4000
    8001b9f8:	17fd                	addi	a5,a5,-1
quickjs-nuttx/quickjs.c:5222
    h = prop_hash_end(sh)[-h - 1];
    8001b9fa:	98ba                	add	a7,a7,a4
    8001b9fc:	0008e883          	lwu	a7,0(a7)
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8001ba00:	04070713          	addi	a4,a4,64
find_own_property():
quickjs-nuttx/quickjs.c:5224
    while (h) {
    8001ba04:	02089c63          	bnez	a7,8001ba3c <JS_DefineAutoInitProperty+0x82>
JS_DefineAutoInitProperty():
quickjs-nuttx/quickjs.c:9325
    pr = add_property(ctx, p, prop, (flags & JS_PROP_C_W_E) | JS_PROP_AUTOINIT);
    8001ba08:	00787813          	andi	a6,a6,7
    8001ba0c:	862a                	mv	a2,a0
    8001ba0e:	03086693          	ori	a3,a6,48
    8001ba12:	8522                	mv	a0,s0
    8001ba14:	e0fff0ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:9326
    if (unlikely(!pr))
    8001ba18:	c921                	beqz	a0,8001ba68 <JS_DefineAutoInitProperty+0xae>
JS_DupContext():
quickjs-nuttx/quickjs.c:2232
    ctx->header.ref_count++;
    8001ba1a:	401c                	lw	a5,0(s0)
    8001ba1c:	2785                	addiw	a5,a5,1
    8001ba1e:	c01c                	sw	a5,0(s0)
JS_DefineAutoInitProperty():
quickjs-nuttx/quickjs.c:9328
    pr->u.init.realm_and_id = (uintptr_t)JS_DupContext(ctx);
    8001ba20:	e100                	sd	s0,0(a0)
quickjs-nuttx/quickjs.c:9329
    assert((pr->u.init.realm_and_id & 3) == 0);
    8001ba22:	00347793          	andi	a5,s0,3
    8001ba26:	cb95                	beqz	a5,8001ba5a <JS_DefineAutoInitProperty+0xa0>
quickjs-nuttx/quickjs.c:9329 (discriminator 1)
    8001ba28:	6589                	lui	a1,0x2
    8001ba2a:	4601                	li	a2,0
    8001ba2c:	47158593          	addi	a1,a1,1137 # 2471 <asinh-0x7fffdb8f>
    8001ba30:	0004e517          	auipc	a0,0x4e
    8001ba34:	b6850513          	addi	a0,a0,-1176 # 80069598 <qjsc_repl+0x3fe8>
    8001ba38:	725440ef          	jal	ra,8006095c <__assert>
find_own_property():
quickjs-nuttx/quickjs.c:5225
        pr = &prop[h - 1];
    8001ba3c:	088e                	slli	a7,a7,0x3
    8001ba3e:	18e1                	addi	a7,a7,-8
    8001ba40:	98ba                	add	a7,a7,a4
quickjs-nuttx/quickjs.c:5226
        if (likely(pr->atom == atom)) {
    8001ba42:	0048a683          	lw	a3,4(a7)
    8001ba46:	02a68b63          	beq	a3,a0,8001ba7c <JS_DefineAutoInitProperty+0xc2>
quickjs-nuttx/quickjs.c:5231
        h = pr->hash_next;
    8001ba4a:	0008a883          	lw	a7,0(a7)
    8001ba4e:	00f8f8b3          	and	a7,a7,a5
    8001ba52:	1882                	slli	a7,a7,0x20
    8001ba54:	0208d893          	srli	a7,a7,0x20
    8001ba58:	b775                	j	8001ba04 <JS_DefineAutoInitProperty+0x4a>
JS_DefineAutoInitProperty():
quickjs-nuttx/quickjs.c:9331 (discriminator 2)
    pr->u.init.realm_and_id |= id;
    8001ba5a:	1482                	slli	s1,s1,0x20
    8001ba5c:	9081                	srli	s1,s1,0x20
    8001ba5e:	8c45                	or	s0,s0,s1
    8001ba60:	e100                	sd	s0,0(a0)
quickjs-nuttx/quickjs.c:9332 (discriminator 2)
    pr->u.init.opaque = opaque;
    8001ba62:	01353423          	sd	s3,8(a0)
quickjs-nuttx/quickjs.c:9333 (discriminator 2)
    return TRUE;
    8001ba66:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:9334
}
    8001ba68:	70e2                	ld	ra,56(sp)
    8001ba6a:	7442                	ld	s0,48(sp)
    8001ba6c:	74a2                	ld	s1,40(sp)
    8001ba6e:	69e2                	ld	s3,24(sp)
    8001ba70:	854a                	mv	a0,s2
    8001ba72:	7902                	ld	s2,32(sp)
    8001ba74:	6121                	addi	sp,sp,64
    8001ba76:	8082                	ret
quickjs-nuttx/quickjs.c:9314
        return FALSE;
    8001ba78:	4901                	li	s2,0
    8001ba7a:	b7fd                	j	8001ba68 <JS_DefineAutoInitProperty+0xae>
quickjs-nuttx/quickjs.c:9320
        abort();
    8001ba7c:	106470ef          	jal	ra,80062b82 <abort>

000000008001ba80 <JS_NewObjectFromShape>:
JS_NewObjectFromShape():
quickjs-nuttx/quickjs.c:4735
{
    8001ba80:	7139                	addi	sp,sp,-64
    8001ba82:	f426                	sd	s1,40(sp)
    8001ba84:	f04a                	sd	s2,32(sp)
    8001ba86:	ec4e                	sd	s3,24(sp)
    8001ba88:	fc06                	sd	ra,56(sp)
    8001ba8a:	f822                	sd	s0,48(sp)
quickjs-nuttx/quickjs.c:4738
    js_trigger_gc(ctx->rt, sizeof(JSObject));
    8001ba8c:	6d00                	ld	s0,24(a0)
quickjs-nuttx/quickjs.c:4735
{
    8001ba8e:	84aa                	mv	s1,a0
    8001ba90:	89ae                	mv	s3,a1
js_trigger_gc():
quickjs-nuttx/quickjs.c:1292
    force_gc = ((rt->malloc_state.malloc_size + size) >
    8001ba92:	741c                	ld	a5,40(s0)
quickjs-nuttx/quickjs.c:1295
    if (force_gc) {
    8001ba94:	6078                	ld	a4,192(s0)
JS_NewObjectFromShape():
quickjs-nuttx/quickjs.c:4735
{
    8001ba96:	8932                	mv	s2,a2
js_trigger_gc():
quickjs-nuttx/quickjs.c:1292
    force_gc = ((rt->malloc_state.malloc_size + size) >
    8001ba98:	04878793          	addi	a5,a5,72 # 4000048 <asinh-0x7bffffb8>
quickjs-nuttx/quickjs.c:1295
    if (force_gc) {
    8001ba9c:	00f77a63          	bgeu	a4,a5,8001bab0 <JS_NewObjectFromShape+0x30>
quickjs-nuttx/quickjs.c:1300
        JS_RunGC(rt);
    8001baa0:	8522                	mv	a0,s0
    8001baa2:	9f7f10ef          	jal	ra,8000d498 <JS_RunGC>
quickjs-nuttx/quickjs.c:1301
        rt->malloc_gc_threshold = rt->malloc_state.malloc_size +
    8001baa6:	7418                	ld	a4,40(s0)
quickjs-nuttx/quickjs.c:1302
            (rt->malloc_state.malloc_size >> 1);
    8001baa8:	00175793          	srli	a5,a4,0x1
quickjs-nuttx/quickjs.c:1301
        rt->malloc_gc_threshold = rt->malloc_state.malloc_size +
    8001baac:	97ba                	add	a5,a5,a4
    8001baae:	e07c                	sd	a5,192(s0)
JS_NewObjectFromShape():
quickjs-nuttx/quickjs.c:4739
    p = js_malloc(ctx, sizeof(JSObject));
    8001bab0:	04800593          	li	a1,72
    8001bab4:	8526                	mv	a0,s1
    8001bab6:	e4efe0ef          	jal	ra,8001a104 <js_malloc>
    8001baba:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:4740
    if (unlikely(!p))
    8001babc:	c905                	beqz	a0,8001baec <JS_NewObjectFromShape+0x6c>
quickjs-nuttx/quickjs.c:4743
    p->extensible = TRUE;
    8001babe:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:4742
    p->class_id = class_id;
    8001bac0:	01251323          	sh	s2,6(a0)
quickjs-nuttx/quickjs.c:4743
    p->extensible = TRUE;
    8001bac4:	00f502a3          	sb	a5,5(a0)
quickjs-nuttx/quickjs.c:4751
    p->first_weak_ref = NULL;
    8001bac8:	02053423          	sd	zero,40(a0)
quickjs-nuttx/quickjs.c:4752
    p->u.opaque = NULL;
    8001bacc:	02053823          	sd	zero,48(a0)
quickjs-nuttx/quickjs.c:4753
    p->shape = sh;
    8001bad0:	01353c23          	sd	s3,24(a0)
quickjs-nuttx/quickjs.c:4754
    p->prop = js_malloc(ctx, sizeof(JSProperty) * sh->prop_size);
    8001bad4:	0249a583          	lw	a1,36(s3)
    8001bad8:	8526                	mv	a0,s1
    8001bada:	0592                	slli	a1,a1,0x4
    8001badc:	e28fe0ef          	jal	ra,8001a104 <js_malloc>
    8001bae0:	f008                	sd	a0,32(s0)
quickjs-nuttx/quickjs.c:4755
    if (unlikely(!p->prop)) {
    8001bae2:	e50d                	bnez	a0,8001bb0c <JS_NewObjectFromShape+0x8c>
quickjs-nuttx/quickjs.c:4756
        js_free(ctx, p);
    8001bae4:	85a2                	mv	a1,s0
    8001bae6:	8526                	mv	a0,s1
    8001bae8:	d0eef0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:4758
        js_free_shape(ctx->rt, sh);
    8001baec:	6c88                	ld	a0,24(s1)
    8001baee:	85ce                	mv	a1,s3
    8001baf0:	8e5f00ef          	jal	ra,8000c3d4 <js_free_shape>
quickjs-nuttx/quickjs.c:4759
        return JS_EXCEPTION;
    8001baf4:	4799                	li	a5,6
    8001baf6:	e002                	sd	zero,0(sp)
quickjs-nuttx/quickjs.c:4835 (discriminator 2)
}
    8001baf8:	70e2                	ld	ra,56(sp)
    8001bafa:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs.c:4834 (discriminator 2)
    return JS_MKPTR(JS_TAG_OBJECT, p);
    8001bafc:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:4835 (discriminator 2)
}
    8001bafe:	6502                	ld	a0,0(sp)
    8001bb00:	65a2                	ld	a1,8(sp)
    8001bb02:	74a2                	ld	s1,40(sp)
    8001bb04:	7902                	ld	s2,32(sp)
    8001bb06:	69e2                	ld	s3,24(sp)
    8001bb08:	6121                	addi	sp,sp,64
    8001bb0a:	8082                	ret
quickjs-nuttx/quickjs.c:4762
    switch(class_id) {
    8001bb0c:	fff9079b          	addiw	a5,s2,-1
    8001bb10:	0007869b          	sext.w	a3,a5
    8001bb14:	02300713          	li	a4,35
    8001bb18:	08d76d63          	bltu	a4,a3,8001bbb2 <JS_NewObjectFromShape+0x132>
    8001bb1c:	02079713          	slli	a4,a5,0x20
    8001bb20:	01e75793          	srli	a5,a4,0x1e
    8001bb24:	0004f717          	auipc	a4,0x4f
    8001bb28:	bc070713          	addi	a4,a4,-1088 # 8006a6e4 <qjsc_repl+0x5134>
    8001bb2c:	97ba                	add	a5,a5,a4
    8001bb2e:	439c                	lw	a5,0(a5)
    8001bb30:	97ba                	add	a5,a5,a4
    8001bb32:	8782                	jr	a5
quickjs-nuttx/quickjs.c:4768
            p->is_exotic = 1;
    8001bb34:	00544783          	lbu	a5,5(s0)
quickjs-nuttx/quickjs.c:4770
            p->u.array.u.values = NULL;
    8001bb38:	02043c23          	sd	zero,56(s0)
quickjs-nuttx/quickjs.c:4771
            p->u.array.count = 0;
    8001bb3c:	04042023          	sw	zero,64(s0)
quickjs-nuttx/quickjs.c:4768
            p->is_exotic = 1;
    8001bb40:	00c7e793          	ori	a5,a5,12
    8001bb44:	00f402a3          	sb	a5,5(s0)
quickjs-nuttx/quickjs.c:4772
            p->u.array.u1.size = 0;
    8001bb48:	02042823          	sw	zero,48(s0)
quickjs-nuttx/quickjs.c:4774
            if (likely(sh == ctx->array_shape)) {
    8001bb4c:	7c9c                	ld	a5,56(s1)
    8001bb4e:	01378963          	beq	a5,s3,8001bb60 <JS_NewObjectFromShape+0xe0>
quickjs-nuttx/quickjs.c:4779
                pr = add_property(ctx, p, JS_ATOM_length,
    8001bb52:	46a9                	li	a3,10
    8001bb54:	03000613          	li	a2,48
    8001bb58:	85a2                	mv	a1,s0
    8001bb5a:	8526                	mv	a0,s1
    8001bb5c:	cc7ff0ef          	jal	ra,8001b822 <add_property>
quickjs-nuttx/quickjs.c:4782
            pr->u.value = JS_NewInt32(ctx, 0);
    8001bb60:	00053023          	sd	zero,0(a0)
    8001bb64:	00053423          	sd	zero,8(a0)
quickjs-nuttx/quickjs.c:4832 (discriminator 2)
    p->header.ref_count = 1;
    8001bb68:	4785                	li	a5,1
    8001bb6a:	c01c                	sw	a5,0(s0)
quickjs-nuttx/quickjs.c:4833 (discriminator 2)
    add_gc_object(ctx->rt, &p->header, JS_GC_OBJ_TYPE_JS_OBJECT);
    8001bb6c:	6c9c                	ld	a5,24(s1)
add_gc_object():
quickjs-nuttx/quickjs.c:5584 (discriminator 2)
    h->gc_obj_type = type;
    8001bb6e:	00040223          	sb	zero,4(s0)
quickjs-nuttx/quickjs.c:5585 (discriminator 2)
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001bb72:	00840713          	addi	a4,s0,8
list_add_tail():
quickjs-nuttx/list.h:66 (discriminator 2)
    __list_add(el, head->prev, head);
    8001bb76:	67d4                	ld	a3,136(a5)
JS_NewObjectFromShape():
quickjs-nuttx/quickjs.c:4834 (discriminator 2)
    return JS_MKPTR(JS_TAG_OBJECT, p);
    8001bb78:	e022                	sd	s0,0(sp)
__list_add():
quickjs-nuttx/list.h:51 (discriminator 2)
    prev->next = el;
    8001bb7a:	e698                	sd	a4,8(a3)
quickjs-nuttx/list.h:52 (discriminator 2)
    el->prev = prev;
    8001bb7c:	e414                	sd	a3,8(s0)
add_gc_object():
quickjs-nuttx/quickjs.c:5585 (discriminator 2)
    list_add_tail(&h->link, &rt->gc_obj_list);
    8001bb7e:	08878693          	addi	a3,a5,136
__list_add():
quickjs-nuttx/list.h:53 (discriminator 2)
    el->next = next;
    8001bb82:	e814                	sd	a3,16(s0)
quickjs-nuttx/list.h:54 (discriminator 2)
    next->prev = el;
    8001bb84:	e7d8                	sd	a4,136(a5)
JS_NewObjectFromShape():
quickjs-nuttx/quickjs.c:4834 (discriminator 2)
    return JS_MKPTR(JS_TAG_OBJECT, p);
    8001bb86:	57fd                	li	a5,-1
    8001bb88:	bf85                	j	8001baf8 <JS_NewObjectFromShape+0x78>
quickjs-nuttx/quickjs.c:4786
        p->prop[0].u.value = JS_UNDEFINED;
    8001bb8a:	478d                	li	a5,3
    8001bb8c:	00053023          	sd	zero,0(a0)
    8001bb90:	e51c                	sd	a5,8(a0)
quickjs-nuttx/quickjs.c:4787
        break;
    8001bb92:	bfd9                	j	8001bb68 <JS_NewObjectFromShape+0xe8>
quickjs-nuttx/quickjs.c:4800
        p->is_exotic = 1;
    8001bb94:	00544783          	lbu	a5,5(s0)
    8001bb98:	00c7e793          	ori	a5,a5,12
    8001bb9c:	00f402a3          	sb	a5,5(s0)
quickjs-nuttx/quickjs.c:4806
        p->u.array.u.ptr = NULL;
    8001bba0:	02043c23          	sd	zero,56(s0)
quickjs-nuttx/quickjs.c:4807
        p->u.array.count = 0;
    8001bba4:	04042023          	sw	zero,64(s0)
quickjs-nuttx/quickjs.c:4808
        break;
    8001bba8:	b7c1                	j	8001bb68 <JS_NewObjectFromShape+0xe8>
quickjs-nuttx/quickjs.c:4819
        p->u.object_data = JS_UNDEFINED;
    8001bbaa:	478d                	li	a5,3
    8001bbac:	02043823          	sd	zero,48(s0)
    8001bbb0:	fc1c                	sd	a5,56(s0)
quickjs-nuttx/quickjs.c:4827
        if (ctx->rt->class_array[class_id].exotic) {
    8001bbb2:	1902                	slli	s2,s2,0x20
    8001bbb4:	02095913          	srli	s2,s2,0x20
    8001bbb8:	02800613          	li	a2,40
    8001bbbc:	02c90933          	mul	s2,s2,a2
    8001bbc0:	6c9c                	ld	a5,24(s1)
    8001bbc2:	7bbc                	ld	a5,112(a5)
    8001bbc4:	993e                	add	s2,s2,a5
    8001bbc6:	02093783          	ld	a5,32(s2)
    8001bbca:	dfd9                	beqz	a5,8001bb68 <JS_NewObjectFromShape+0xe8>
quickjs-nuttx/quickjs.c:4828
            p->is_exotic = 1;
    8001bbcc:	00544783          	lbu	a5,5(s0)
    8001bbd0:	0047e793          	ori	a5,a5,4
    8001bbd4:	00f402a3          	sb	a5,5(s0)
    8001bbd8:	bf41                	j	8001bb68 <JS_NewObjectFromShape+0xe8>
quickjs-nuttx/quickjs.c:4822
        p->u.regexp.pattern = NULL;
    8001bbda:	02043823          	sd	zero,48(s0)
quickjs-nuttx/quickjs.c:4823
        p->u.regexp.bytecode = NULL;
    8001bbde:	02043c23          	sd	zero,56(s0)
quickjs-nuttx/quickjs.c:4824
        goto set_exotic;
    8001bbe2:	bfc1                	j	8001bbb2 <JS_NewObjectFromShape+0x132>

000000008001bbe4 <JS_NewObjectProtoClass>:
JS_NewObjectProtoClass():
quickjs-nuttx/quickjs.c:4848
{
    8001bbe4:	7139                	addi	sp,sp,-64
    8001bbe6:	f822                	sd	s0,48(sp)
    8001bbe8:	f426                	sd	s1,40(sp)
    8001bbea:	e432                	sd	a2,8(sp)
    8001bbec:	fc06                	sd	ra,56(sp)
    8001bbee:	e02e                	sd	a1,0(sp)
get_proto_obj():
quickjs-nuttx/quickjs.c:4839
    if (JS_VALUE_GET_TAG(proto_val) != JS_TAG_OBJECT)
    8001bbf0:	2601                	sext.w	a2,a2
    8001bbf2:	57fd                	li	a5,-1
JS_NewObjectProtoClass():
quickjs-nuttx/quickjs.c:4848
{
    8001bbf4:	842a                	mv	s0,a0
    8001bbf6:	84b6                	mv	s1,a3
get_proto_obj():
quickjs-nuttx/quickjs.c:4839
    if (JS_VALUE_GET_TAG(proto_val) != JS_TAG_OBJECT)
    8001bbf8:	00f60363          	beq	a2,a5,8001bbfe <JS_NewObjectProtoClass+0x1a>
quickjs-nuttx/quickjs.c:4840
        return NULL;
    8001bbfc:	4581                	li	a1,0
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001bbfe:	9e370737          	lui	a4,0x9e370
    8001bc02:	2705                	addiw	a4,a4,1
    8001bc04:	0015879b          	addiw	a5,a1,1
    8001bc08:	02e787bb          	mulw	a5,a5,a4
shape_initial_hash():
quickjs-nuttx/quickjs.c:4299
        h = shape_hash(h, (uint64_t)(uintptr_t)proto >> 32);
    8001bc0c:	0205d613          	srli	a2,a1,0x20
JS_NewObjectProtoClass():
quickjs-nuttx/quickjs.c:4853
    sh = find_hashed_shape_proto(ctx->rt, proto);
    8001bc10:	6c14                	ld	a3,24(s0)
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001bc12:	1786a503          	lw	a0,376(a3)
shape_hash():
quickjs-nuttx/quickjs.c:4285
    return (h + val) * 0x9e370001;
    8001bc16:	9fb1                	addw	a5,a5,a2
    8001bc18:	02e7863b          	mulw	a2,a5,a4
get_shape_hash():
quickjs-nuttx/quickjs.c:4291
    return h >> (32 - hash_bits);
    8001bc1c:	02000713          	li	a4,32
    8001bc20:	9f09                	subw	a4,a4,a0
    8001bc22:	00e657bb          	srlw	a5,a2,a4
find_hashed_shape_proto():
quickjs-nuttx/quickjs.c:4646
    for(sh1 = rt->shape_hash[h1]; sh1 != NULL; sh1 = sh1->shape_hash_next) {
    8001bc26:	1886b703          	ld	a4,392(a3)
    8001bc2a:	02079693          	slli	a3,a5,0x20
    8001bc2e:	01d6d793          	srli	a5,a3,0x1d
    8001bc32:	97ba                	add	a5,a5,a4
    8001bc34:	639c                	ld	a5,0(a5)
    8001bc36:	ef89                	bnez	a5,8001bc50 <JS_NewObjectProtoClass+0x6c>
js_new_shape():
quickjs-nuttx/quickjs.c:4390
    return js_new_shape2(ctx, proto, JS_PROP_INITIAL_HASH_SIZE,
    8001bc38:	4609                	li	a2,2
    8001bc3a:	8522                	mv	a0,s0
    8001bc3c:	b38ff0ef          	jal	ra,8001af74 <js_new_shape2.constprop.0>
    8001bc40:	87aa                	mv	a5,a0
JS_NewObjectProtoClass():
quickjs-nuttx/quickjs.c:4858
        if (!sh)
    8001bc42:	e505                	bnez	a0,8001bc6a <JS_NewObjectProtoClass+0x86>
quickjs-nuttx/quickjs.c:4862
}
    8001bc44:	70e2                	ld	ra,56(sp)
    8001bc46:	7442                	ld	s0,48(sp)
    8001bc48:	74a2                	ld	s1,40(sp)
    8001bc4a:	4599                	li	a1,6
    8001bc4c:	6121                	addi	sp,sp,64
    8001bc4e:	8082                	ret
find_hashed_shape_proto():
quickjs-nuttx/quickjs.c:4647
        if (sh1->hash == h &&
    8001bc50:	4fd8                	lw	a4,28(a5)
    8001bc52:	00c71763          	bne	a4,a2,8001bc60 <JS_NewObjectProtoClass+0x7c>
    8001bc56:	7f98                	ld	a4,56(a5)
    8001bc58:	00e59463          	bne	a1,a4,8001bc60 <JS_NewObjectProtoClass+0x7c>
quickjs-nuttx/quickjs.c:4648
            sh1->proto == proto &&
    8001bc5c:	5798                	lw	a4,40(a5)
    8001bc5e:	c319                	beqz	a4,8001bc64 <JS_NewObjectProtoClass+0x80>
quickjs-nuttx/quickjs.c:4646
    for(sh1 = rt->shape_hash[h1]; sh1 != NULL; sh1 = sh1->shape_hash_next) {
    8001bc60:	7b9c                	ld	a5,48(a5)
    8001bc62:	bfd1                	j	8001bc36 <JS_NewObjectProtoClass+0x52>
js_dup_shape():
quickjs-nuttx/quickjs.c:4426
    sh->header.ref_count++;
    8001bc64:	4398                	lw	a4,0(a5)
    8001bc66:	2705                	addiw	a4,a4,1
    8001bc68:	c398                	sw	a4,0(a5)
JS_NewObjectProtoClass():
quickjs-nuttx/quickjs.c:4861
    return JS_NewObjectFromShape(ctx, sh, class_id);
    8001bc6a:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:4862
}
    8001bc6c:	7442                	ld	s0,48(sp)
    8001bc6e:	70e2                	ld	ra,56(sp)
quickjs-nuttx/quickjs.c:4861
    return JS_NewObjectFromShape(ctx, sh, class_id);
    8001bc70:	8626                	mv	a2,s1
quickjs-nuttx/quickjs.c:4862
}
    8001bc72:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs.c:4861
    return JS_NewObjectFromShape(ctx, sh, class_id);
    8001bc74:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:4862
}
    8001bc76:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:4861
    return JS_NewObjectFromShape(ctx, sh, class_id);
    8001bc78:	e09ff06f          	j	8001ba80 <JS_NewObjectFromShape>

000000008001bc7c <js_create_from_ctor>:
js_create_from_ctor():
quickjs-nuttx/quickjs.c:18639
{
    8001bc7c:	7159                	addi	sp,sp,-112
    8001bc7e:	f0a2                	sd	s0,96(sp)
    8001bc80:	eca6                	sd	s1,88(sp)
    8001bc82:	f486                	sd	ra,104(sp)
    8001bc84:	84b6                	mv	s1,a3
    8001bc86:	e8ca                	sd	s2,80(sp)
    8001bc88:	e02e                	sd	a1,0(sp)
    8001bc8a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:18643
    if (JS_IsUndefined(ctor)) {
    8001bc8c:	0006069b          	sext.w	a3,a2
    8001bc90:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:18639
{
    8001bc92:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:18643
    if (JS_IsUndefined(ctor)) {
    8001bc94:	02e69d63          	bne	a3,a4,8001bcce <js_create_from_ctor+0x52>
quickjs-nuttx/quickjs.c:18644
        proto = JS_DupValue(ctx, ctx->class_proto[class_id]);
    8001bc98:	613c                	ld	a5,64(a0)
quickjs-nuttx/quickjs.c:18654
            proto = JS_DupValue(ctx, realm->class_proto[class_id]);
    8001bc9a:	00449713          	slli	a4,s1,0x4
    8001bc9e:	97ba                	add	a5,a5,a4
    8001bca0:	6388                	ld	a0,0(a5)
    8001bca2:	678c                	ld	a1,8(a5)
    8001bca4:	f76ee0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001bca8:	e82a                	sd	a0,16(sp)
    8001bcaa:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:18657
    obj = JS_NewObjectProtoClass(ctx, proto, class_id);
    8001bcac:	65c2                	ld	a1,16(sp)
    8001bcae:	86a6                	mv	a3,s1
    8001bcb0:	8522                	mv	a0,s0
    8001bcb2:	ec32                	sd	a2,24(sp)
    8001bcb4:	f31ff0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8001bcb8:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:18658
    JS_FreeValue(ctx, proto);
    8001bcba:	6662                	ld	a2,24(sp)
    8001bcbc:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs.c:18657
    obj = JS_NewObjectProtoClass(ctx, proto, class_id);
    8001bcbe:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs.c:18658
    JS_FreeValue(ctx, proto);
    8001bcc0:	8522                	mv	a0,s0
    8001bcc2:	addef0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18659
    return obj;
    8001bcc6:	7782                	ld	a5,32(sp)
    8001bcc8:	f83e                	sd	a5,48(sp)
    8001bcca:	77a2                	ld	a5,40(sp)
    8001bccc:	a035                	j	8001bcf8 <js_create_from_ctor+0x7c>
    8001bcce:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:18646
        proto = JS_GetProperty(ctx, ctor, JS_ATOM_prototype);
    8001bcd0:	872e                	mv	a4,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001bcd2:	4801                	li	a6,0
    8001bcd4:	03c00693          	li	a3,60
    8001bcd8:	fc32                	sd	a2,56(sp)
    8001bcda:	f82e                	sd	a1,48(sp)
    8001bcdc:	dcffa0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8001bce0:	e0aa                	sd	a0,64(sp)
    8001bce2:	e4ae                	sd	a1,72(sp)
    8001bce4:	e82a                	sd	a0,16(sp)
    8001bce6:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001bce8:	0005871b          	sext.w	a4,a1
js_create_from_ctor():
quickjs-nuttx/quickjs.c:18647
        if (JS_IsException(proto))
    8001bcec:	4919                	li	s2,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8001bcee:	87ae                	mv	a5,a1
    8001bcf0:	862e                	mv	a2,a1
js_create_from_ctor():
quickjs-nuttx/quickjs.c:18647
    8001bcf2:	01271563          	bne	a4,s2,8001bcfc <js_create_from_ctor+0x80>
quickjs-nuttx/quickjs.c:18648
            return proto;
    8001bcf6:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:18659
    return obj;
    8001bcf8:	fc3e                	sd	a5,56(sp)
    8001bcfa:	a005                	j	8001bd1a <js_create_from_ctor+0x9e>
quickjs-nuttx/quickjs.c:18649
        if (!JS_IsObject(proto)) {
    8001bcfc:	56fd                	li	a3,-1
    8001bcfe:	fad707e3          	beq	a4,a3,8001bcac <js_create_from_ctor+0x30>
quickjs-nuttx/quickjs.c:18650
            JS_FreeValue(ctx, proto);
    8001bd02:	85aa                	mv	a1,a0
    8001bd04:	8522                	mv	a0,s0
    8001bd06:	a99ef0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:18651
            realm = JS_GetFunctionRealm(ctx, ctor);
    8001bd0a:	6582                	ld	a1,0(sp)
    8001bd0c:	6622                	ld	a2,8(sp)
    8001bd0e:	8522                	mv	a0,s0
    8001bd10:	a1dfd0ef          	jal	ra,8001972c <JS_GetFunctionRealm>
quickjs-nuttx/quickjs.c:18652
            if (!realm)
    8001bd14:	e919                	bnez	a0,8001bd2a <js_create_from_ctor+0xae>
quickjs-nuttx/quickjs.c:18653
                return JS_EXCEPTION;
    8001bd16:	f802                	sd	zero,48(sp)
    8001bd18:	fc4a                	sd	s2,56(sp)
quickjs-nuttx/quickjs.c:18660 (discriminator 1)
}
    8001bd1a:	70a6                	ld	ra,104(sp)
    8001bd1c:	7406                	ld	s0,96(sp)
    8001bd1e:	7542                	ld	a0,48(sp)
    8001bd20:	75e2                	ld	a1,56(sp)
    8001bd22:	64e6                	ld	s1,88(sp)
    8001bd24:	6946                	ld	s2,80(sp)
    8001bd26:	6165                	addi	sp,sp,112
    8001bd28:	8082                	ret
quickjs-nuttx/quickjs.c:18654
            proto = JS_DupValue(ctx, realm->class_proto[class_id]);
    8001bd2a:	613c                	ld	a5,64(a0)
    8001bd2c:	b7bd                	j	8001bc9a <js_create_from_ctor+0x1e>

000000008001bd2e <js_array_buffer_constructor3>:
js_array_buffer_constructor3():
quickjs-nuttx/quickjs.c:52580
{
    8001bd2e:	7135                	addi	sp,sp,-160
    8001bd30:	e526                	sd	s1,136(sp)
    8001bd32:	e14a                	sd	s2,128(sp)
    8001bd34:	fcce                	sd	s3,120(sp)
    8001bd36:	f8d2                	sd	s4,112(sp)
    8001bd38:	f4d6                	sd	s5,104(sp)
    8001bd3a:	f0da                	sd	s6,96(sp)
    8001bd3c:	ecde                	sd	s7,88(sp)
    8001bd3e:	e8e2                	sd	s8,80(sp)
    8001bd40:	e4e6                	sd	s9,72(sp)
    8001bd42:	e0ea                	sd	s10,64(sp)
    8001bd44:	ed06                	sd	ra,152(sp)
    8001bd46:	e922                	sd	s0,144(sp)
    8001bd48:	fc6e                	sd	s11,56(sp)
    8001bd4a:	8b36                	mv	s6,a3
quickjs-nuttx/quickjs.c:52585
    obj = js_create_from_ctor(ctx, new_target, class_id);
    8001bd4c:	86ba                	mv	a3,a4
quickjs-nuttx/quickjs.c:52580
{
    8001bd4e:	8abe                	mv	s5,a5
    8001bd50:	5d0a                	lw	s10,160(sp)
quickjs-nuttx/quickjs.c:52581
    JSRuntime *rt = ctx->rt;
    8001bd52:	01853d83          	ld	s11,24(a0)
quickjs-nuttx/quickjs.c:52580
{
    8001bd56:	892a                	mv	s2,a0
    8001bd58:	e02e                	sd	a1,0(sp)
    8001bd5a:	e432                	sd	a2,8(sp)
    8001bd5c:	84ba                	mv	s1,a4
    8001bd5e:	8bc2                	mv	s7,a6
    8001bd60:	8c46                	mv	s8,a7
quickjs-nuttx/quickjs.c:52585
    obj = js_create_from_ctor(ctx, new_target, class_id);
    8001bd62:	f1bff0ef          	jal	ra,8001bc7c <js_create_from_ctor>
    8001bd66:	e82a                	sd	a0,16(sp)
    8001bd68:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001bd6a:	00058c9b          	sext.w	s9,a1
js_array_buffer_constructor3():
quickjs-nuttx/quickjs.c:52586
    if (JS_IsException(obj))
    8001bd6e:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:52585
    obj = js_create_from_ctor(ctx, new_target, class_id);
    8001bd70:	8a2a                	mv	s4,a0
    8001bd72:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:52586
    if (JS_IsException(obj))
    8001bd74:	02fc9563          	bne	s9,a5,8001bd9e <js_array_buffer_constructor3+0x70>
quickjs-nuttx/quickjs.c:52626
    return obj;
    8001bd78:	f052                	sd	s4,32(sp)
    8001bd7a:	f44e                	sd	s3,40(sp)
quickjs-nuttx/quickjs.c:52631
}
    8001bd7c:	60ea                	ld	ra,152(sp)
    8001bd7e:	644a                	ld	s0,144(sp)
    8001bd80:	7502                	ld	a0,32(sp)
    8001bd82:	75a2                	ld	a1,40(sp)
    8001bd84:	64aa                	ld	s1,136(sp)
    8001bd86:	690a                	ld	s2,128(sp)
    8001bd88:	79e6                	ld	s3,120(sp)
    8001bd8a:	7a46                	ld	s4,112(sp)
    8001bd8c:	7aa6                	ld	s5,104(sp)
    8001bd8e:	7b06                	ld	s6,96(sp)
    8001bd90:	6be6                	ld	s7,88(sp)
    8001bd92:	6c46                	ld	s8,80(sp)
    8001bd94:	6ca6                	ld	s9,72(sp)
    8001bd96:	6d06                	ld	s10,64(sp)
    8001bd98:	7de2                	ld	s11,56(sp)
    8001bd9a:	610d                	addi	sp,sp,160
    8001bd9c:	8082                	ret
quickjs-nuttx/quickjs.c:52589
    if (len > INT32_MAX) {
    8001bd9e:	800007b7          	lui	a5,0x80000
    8001bda2:	fff7c793          	not	a5,a5
    8001bda6:	0367f763          	bgeu	a5,s6,8001bdd4 <js_array_buffer_constructor3+0xa6>
quickjs-nuttx/quickjs.c:52590
        JS_ThrowRangeError(ctx, "invalid array buffer length");
    8001bdaa:	0004f597          	auipc	a1,0x4f
    8001bdae:	9ce58593          	addi	a1,a1,-1586 # 8006a778 <qjsc_repl+0x51c8>
    8001bdb2:	854a                	mv	a0,s2
    8001bdb4:	b1bfd0ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:52583
    JSArrayBuffer *abuf = NULL;
    8001bdb8:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:52628
    JS_FreeValue(ctx, obj);
    8001bdba:	65c2                	ld	a1,16(sp)
    8001bdbc:	6662                	ld	a2,24(sp)
    8001bdbe:	854a                	mv	a0,s2
    8001bdc0:	9dfef0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52629
    js_free(ctx, abuf);
    8001bdc4:	85a2                	mv	a1,s0
    8001bdc6:	854a                	mv	a0,s2
    8001bdc8:	a2eef0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:52630
    return JS_EXCEPTION;
    8001bdcc:	4799                	li	a5,6
    8001bdce:	f002                	sd	zero,32(sp)
    8001bdd0:	f43e                	sd	a5,40(sp)
    8001bdd2:	b76d                	j	8001bd7c <js_array_buffer_constructor3+0x4e>
quickjs-nuttx/quickjs.c:52593
    abuf = js_malloc(ctx, sizeof(*abuf));
    8001bdd4:	03000593          	li	a1,48
    8001bdd8:	854a                	mv	a0,s2
    8001bdda:	b2afe0ef          	jal	ra,8001a104 <js_malloc>
    8001bdde:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:52594
    if (!abuf)
    8001bde0:	dd69                	beqz	a0,8001bdba <js_array_buffer_constructor3+0x8c>
quickjs-nuttx/quickjs.c:52596
    abuf->byte_length = len;
    8001bde2:	000b079b          	sext.w	a5,s6
    8001bde6:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:52597
    if (alloc_flag) {
    8001bde8:	060d0a63          	beqz	s10,8001be5c <js_array_buffer_constructor3+0x12e>
quickjs-nuttx/quickjs.c:52600
            abuf->data = rt->sab_funcs.sab_alloc(rt->sab_funcs.sab_opaque,
    8001bdec:	0007859b          	sext.w	a1,a5
    8001bdf0:	00f04363          	bgtz	a5,8001bdf6 <js_array_buffer_constructor3+0xc8>
    8001bdf4:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:52598
        if (class_id == JS_CLASS_SHARED_ARRAY_BUFFER &&
    8001bdf6:	47d1                	li	a5,20
    8001bdf8:	04f49c63          	bne	s1,a5,8001be50 <js_array_buffer_constructor3+0x122>
quickjs-nuttx/quickjs.c:52599 (discriminator 1)
            rt->sab_funcs.sab_alloc) {
    8001bdfc:	158db783          	ld	a5,344(s11)
quickjs-nuttx/quickjs.c:52598 (discriminator 1)
        if (class_id == JS_CLASS_SHARED_ARRAY_BUFFER &&
    8001be00:	cba1                	beqz	a5,8001be50 <js_array_buffer_constructor3+0x122>
quickjs-nuttx/quickjs.c:52600
            abuf->data = rt->sab_funcs.sab_alloc(rt->sab_funcs.sab_opaque,
    8001be02:	170db503          	ld	a0,368(s11)
    8001be06:	9782                	jalr	a5
    8001be08:	e408                	sd	a0,8(s0)
quickjs-nuttx/quickjs.c:52602
            if (!abuf->data)
    8001be0a:	d945                	beqz	a0,8001bdba <js_array_buffer_constructor3+0x8c>
quickjs-nuttx/quickjs.c:52604
            memset(abuf->data, 0, len);
    8001be0c:	865a                	mv	a2,s6
    8001be0e:	4581                	li	a1,0
    8001be10:	633470ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:52620
    abuf->shared = (class_id == JS_CLASS_SHARED_ARRAY_BUFFER);
    8001be14:	14b1                	addi	s1,s1,-20
quickjs-nuttx/quickjs.c:52618
    init_list_head(&abuf->array_list);
    8001be16:	01040793          	addi	a5,s0,16
quickjs-nuttx/quickjs.c:52620
    abuf->shared = (class_id == JS_CLASS_SHARED_ARRAY_BUFFER);
    8001be1a:	0014b493          	seqz	s1,s1
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    8001be1e:	e81c                	sd	a5,16(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    8001be20:	ec1c                	sd	a5,24(s0)
js_array_buffer_constructor3():
quickjs-nuttx/quickjs.c:52619
    abuf->detached = FALSE;
    8001be22:	00040223          	sb	zero,4(s0)
quickjs-nuttx/quickjs.c:52620
    abuf->shared = (class_id == JS_CLASS_SHARED_ARRAY_BUFFER);
    8001be26:	009402a3          	sb	s1,5(s0)
quickjs-nuttx/quickjs.c:52621
    abuf->opaque = opaque;
    8001be2a:	03843023          	sd	s8,32(s0)
quickjs-nuttx/quickjs.c:52622
    abuf->free_func = free_func;
    8001be2e:	03743423          	sd	s7,40(s0)
quickjs-nuttx/quickjs.c:52623
    if (alloc_flag && buf)
    8001be32:	000d0963          	beqz	s10,8001be44 <js_array_buffer_constructor3+0x116>
quickjs-nuttx/quickjs.c:52623 (discriminator 1)
    8001be36:	000a8763          	beqz	s5,8001be44 <js_array_buffer_constructor3+0x116>
quickjs-nuttx/quickjs.c:52624
        memcpy(abuf->data, buf, len);
    8001be3a:	6408                	ld	a0,8(s0)
    8001be3c:	865a                	mv	a2,s6
    8001be3e:	85d6                	mv	a1,s5
    8001be40:	76d470ef          	jal	ra,80063dac <memcpy>
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8001be44:	57fd                	li	a5,-1
    8001be46:	f2fc99e3          	bne	s9,a5,8001bd78 <js_array_buffer_constructor3+0x4a>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    8001be4a:	028a3823          	sd	s0,48(s4)
    8001be4e:	b72d                	j	8001bd78 <js_array_buffer_constructor3+0x4a>
js_array_buffer_constructor3():
quickjs-nuttx/quickjs.c:52607
            abuf->data = js_mallocz(ctx, max_int(len, 1));
    8001be50:	854a                	mv	a0,s2
    8001be52:	ae6ff0ef          	jal	ra,8001b138 <js_mallocz>
    8001be56:	e408                	sd	a0,8(s0)
quickjs-nuttx/quickjs.c:52608
            if (!abuf->data)
    8001be58:	fd55                	bnez	a0,8001be14 <js_array_buffer_constructor3+0xe6>
    8001be5a:	b785                	j	8001bdba <js_array_buffer_constructor3+0x8c>
quickjs-nuttx/quickjs.c:52612
        if (class_id == JS_CLASS_SHARED_ARRAY_BUFFER &&
    8001be5c:	47d1                	li	a5,20
    8001be5e:	00f49963          	bne	s1,a5,8001be70 <js_array_buffer_constructor3+0x142>
quickjs-nuttx/quickjs.c:52613 (discriminator 1)
            rt->sab_funcs.sab_dup) {
    8001be62:	168db783          	ld	a5,360(s11)
quickjs-nuttx/quickjs.c:52612 (discriminator 1)
        if (class_id == JS_CLASS_SHARED_ARRAY_BUFFER &&
    8001be66:	c789                	beqz	a5,8001be70 <js_array_buffer_constructor3+0x142>
quickjs-nuttx/quickjs.c:52614
            rt->sab_funcs.sab_dup(rt->sab_funcs.sab_opaque, buf);
    8001be68:	170db503          	ld	a0,368(s11)
    8001be6c:	85d6                	mv	a1,s5
    8001be6e:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:52616
        abuf->data = buf;
    8001be70:	01543423          	sd	s5,8(s0)
    8001be74:	b745                	j	8001be14 <js_array_buffer_constructor3+0xe6>

000000008001be76 <js_array_buffer_constructor2>:
js_array_buffer_constructor2():
quickjs-nuttx/quickjs.c:52641
{
    8001be76:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:52642
    return js_array_buffer_constructor3(ctx, new_target, len, class_id,
    8001be78:	4785                	li	a5,1
    8001be7a:	e03e                	sd	a5,0(sp)
    8001be7c:	4881                	li	a7,0
    8001be7e:	fffef817          	auipc	a6,0xfffef
    8001be82:	d2080813          	addi	a6,a6,-736 # 8000ab9e <js_array_buffer_free>
    8001be86:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:52641
{
    8001be88:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:52642
    return js_array_buffer_constructor3(ctx, new_target, len, class_id,
    8001be8a:	ea5ff0ef          	jal	ra,8001bd2e <js_array_buffer_constructor3>
quickjs-nuttx/quickjs.c:52645
}
    8001be8e:	70e2                	ld	ra,56(sp)
    8001be90:	6121                	addi	sp,sp,64
    8001be92:	8082                	ret

000000008001be94 <js_dummy_operators_ctor>:
js_dummy_operators_ctor():
quickjs-nuttx/quickjs.c:50473
{
    8001be94:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:50474
    return js_create_from_ctor(ctx, new_target, JS_CLASS_OBJECT);
    8001be96:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:50475
}
    8001be98:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:50474
    return js_create_from_ctor(ctx, new_target, JS_CLASS_OBJECT);
    8001be9a:	de3ff06f          	j	8001bc7c <js_create_from_ctor>

000000008001be9e <js_boolean_constructor>:
js_boolean_constructor():
quickjs-nuttx/quickjs.c:41077
{
    8001be9e:	711d                	addi	sp,sp,-96
    8001bea0:	e8a2                	sd	s0,80(sp)
    8001bea2:	ec86                	sd	ra,88(sp)
    8001bea4:	e02e                	sd	a1,0(sp)
    8001bea6:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:41079
    val = JS_NewBool(ctx, JS_ToBool(ctx, argv[0]));
    8001bea8:	630c                	ld	a1,0(a4)
    8001beaa:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:41077
{
    8001beac:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:41079
    val = JS_NewBool(ctx, JS_ToBool(ctx, argv[0]));
    8001beae:	f39f20ef          	jal	ra,8000ede6 <JS_ToBool>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8001beb2:	00a03533          	snez	a0,a0
    8001beb6:	c282                	sw	zero,68(sp)
    8001beb8:	c0aa                	sw	a0,64(sp)
    8001beba:	6706                	ld	a4,64(sp)
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    8001bebc:	6622                	ld	a2,8(sp)
    8001bebe:	4785                	li	a5,1
    8001bec0:	e83a                	sd	a4,16(sp)
    8001bec2:	ec3e                	sd	a5,24(sp)
js_boolean_constructor():
quickjs-nuttx/quickjs.c:41080
    if (!JS_IsUndefined(new_target)) {
    8001bec4:	0006059b          	sext.w	a1,a2
    8001bec8:	468d                	li	a3,3
    8001beca:	02d58f63          	beq	a1,a3,8001bf08 <js_boolean_constructor+0x6a>
quickjs-nuttx/quickjs.c:41081
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_BOOLEAN);
    8001bece:	6582                	ld	a1,0(sp)
    8001bed0:	4699                	li	a3,6
    8001bed2:	8522                	mv	a0,s0
    8001bed4:	da9ff0ef          	jal	ra,8001bc7c <js_create_from_ctor>
    8001bed8:	f02a                	sd	a0,32(sp)
    8001beda:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:41082
        if (!JS_IsException(obj))
    8001bedc:	0005871b          	sext.w	a4,a1
    8001bee0:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:41081
        obj = js_create_from_ctor(ctx, new_target, JS_CLASS_BOOLEAN);
    8001bee2:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:41082
        if (!JS_IsException(obj))
    8001bee4:	00f70863          	beq	a4,a5,8001bef4 <js_boolean_constructor+0x56>
quickjs-nuttx/quickjs.c:41083
            JS_SetObjectData(ctx, obj, val);
    8001bee8:	66c2                	ld	a3,16(sp)
    8001beea:	6762                	ld	a4,24(sp)
    8001beec:	85aa                	mv	a1,a0
    8001beee:	8522                	mv	a0,s0
    8001bef0:	8b1fd0ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:41084
        return obj;
    8001bef4:	7782                	ld	a5,32(sp)
    8001bef6:	f83e                	sd	a5,48(sp)
    8001bef8:	77a2                	ld	a5,40(sp)
quickjs-nuttx/quickjs.c:41088
}
    8001befa:	60e6                	ld	ra,88(sp)
    8001befc:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs.c:41086
        return val;
    8001befe:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:41088
}
    8001bf00:	7542                	ld	a0,48(sp)
    8001bf02:	75e2                	ld	a1,56(sp)
    8001bf04:	6125                	addi	sp,sp,96
    8001bf06:	8082                	ret
quickjs-nuttx/quickjs.c:41086
        return val;
    8001bf08:	f83a                	sd	a4,48(sp)
    8001bf0a:	bfc5                	j	8001befa <js_boolean_constructor+0x5c>

000000008001bf0c <JS_NewObjectClass>:
JS_NewObjectClass():
quickjs-nuttx/quickjs.c:4919
    return JS_NewObjectProtoClass(ctx, ctx->class_proto[class_id], class_id);
    8001bf0c:	613c                	ld	a5,64(a0)
    8001bf0e:	00459713          	slli	a4,a1,0x4
quickjs-nuttx/quickjs.c:4918
{
    8001bf12:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:4919
    return JS_NewObjectProtoClass(ctx, ctx->class_proto[class_id], class_id);
    8001bf14:	97ba                	add	a5,a5,a4
    8001bf16:	638c                	ld	a1,0(a5)
    8001bf18:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:4918
{
    8001bf1a:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:4920
}
    8001bf1c:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:4919
    return JS_NewObjectProtoClass(ctx, ctx->class_proto[class_id], class_id);
    8001bf1e:	cc7ff06f          	j	8001bbe4 <JS_NewObjectProtoClass>

000000008001bf22 <JS_NewError>:
JS_NewError():
quickjs-nuttx/quickjs.c:6603
{
    8001bf22:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:6604
    return JS_NewObjectClass(ctx, JS_CLASS_ERROR);
    8001bf24:	458d                	li	a1,3
quickjs-nuttx/quickjs.c:6605
}
    8001bf26:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:6604
    return JS_NewObjectClass(ctx, JS_CLASS_ERROR);
    8001bf28:	fe5ff06f          	j	8001bf0c <JS_NewObjectClass>

000000008001bf2c <js_create_map_iterator>:
js_create_map_iterator():
quickjs-nuttx/quickjs.c:47466
{
    8001bf2c:	7159                	addi	sp,sp,-112
    8001bf2e:	f0a2                	sd	s0,96(sp)
quickjs-nuttx/quickjs.c:47473
    magic &= 3;
    8001bf30:	0037f413          	andi	s0,a5,3
quickjs-nuttx/quickjs.c:47474
    s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    8001bf34:	02640693          	addi	a3,s0,38
quickjs-nuttx/quickjs.c:47466
{
    8001bf38:	eca6                	sd	s1,88(sp)
    8001bf3a:	e0d2                	sd	s4,64(sp)
    8001bf3c:	f486                	sd	ra,104(sp)
    8001bf3e:	e8ca                	sd	s2,80(sp)
    8001bf40:	e4ce                	sd	s3,72(sp)
    8001bf42:	fc56                	sd	s5,56(sp)
    8001bf44:	8a2a                	mv	s4,a0
    8001bf46:	e02e                	sd	a1,0(sp)
    8001bf48:	e432                	sd	a2,8(sp)
    8001bf4a:	84be                	mv	s1,a5
quickjs-nuttx/quickjs.c:47474
    s = JS_GetOpaque2(ctx, this_val, JS_CLASS_MAP + magic);
    8001bf4c:	8a3fc0ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs.c:47475
    if (!s)
    8001bf50:	e509                	bnez	a0,8001bf5a <js_create_map_iterator+0x2e>
quickjs-nuttx/quickjs.c:47491
    return JS_EXCEPTION;
    8001bf52:	4799                	li	a5,6
    8001bf54:	f002                	sd	zero,32(sp)
    8001bf56:	f43e                	sd	a5,40(sp)
    8001bf58:	a8b1                	j	8001bfb4 <js_create_map_iterator+0x88>
quickjs-nuttx/quickjs.c:47477
    enum_obj = JS_NewObjectClass(ctx, JS_CLASS_MAP_ITERATOR + magic);
    8001bf5a:	02a40593          	addi	a1,s0,42
    8001bf5e:	8552                	mv	a0,s4
    8001bf60:	fadff0ef          	jal	ra,8001bf0c <JS_NewObjectClass>
    8001bf64:	e82a                	sd	a0,16(sp)
    8001bf66:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8001bf68:	00058a9b          	sext.w	s5,a1
js_create_map_iterator():
quickjs-nuttx/quickjs.c:47478
    if (JS_IsException(enum_obj))
    8001bf6c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47477
    enum_obj = JS_NewObjectClass(ctx, JS_CLASS_MAP_ITERATOR + magic);
    8001bf6e:	89aa                	mv	s3,a0
    8001bf70:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:47478
    if (JS_IsException(enum_obj))
    8001bf72:	fefa80e3          	beq	s5,a5,8001bf52 <js_create_map_iterator+0x26>
quickjs-nuttx/quickjs.c:47480
    it = js_malloc(ctx, sizeof(*it));
    8001bf76:	02000593          	li	a1,32
    8001bf7a:	8552                	mv	a0,s4
    8001bf7c:	988fe0ef          	jal	ra,8001a104 <js_malloc>
    8001bf80:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:47481
    if (!it) {
    8001bf82:	e519                	bnez	a0,8001bf90 <js_create_map_iterator+0x64>
quickjs-nuttx/quickjs.c:47482
        JS_FreeValue(ctx, enum_obj);
    8001bf84:	65c2                	ld	a1,16(sp)
    8001bf86:	6662                	ld	a2,24(sp)
    8001bf88:	8552                	mv	a0,s4
    8001bf8a:	815ef0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47483
        goto fail;
    8001bf8e:	b7d1                	j	8001bf52 <js_create_map_iterator+0x26>
quickjs-nuttx/quickjs.c:47485
    it->obj = JS_DupValue(ctx, this_val);
    8001bf90:	6502                	ld	a0,0(sp)
    8001bf92:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs.c:47472
    kind = magic >> 2;
    8001bf94:	4024d49b          	sraiw	s1,s1,0x2
quickjs-nuttx/quickjs.c:47485
    it->obj = JS_DupValue(ctx, this_val);
    8001bf98:	c82ee0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8001bf9c:	e008                	sd	a0,0(s0)
    8001bf9e:	e40c                	sd	a1,8(s0)
quickjs-nuttx/quickjs.c:47486
    it->kind = kind;
    8001bfa0:	c804                	sw	s1,16(s0)
quickjs-nuttx/quickjs.c:47487
    it->cur_record = NULL;
    8001bfa2:	00043c23          	sd	zero,24(s0)
JS_SetOpaque():
quickjs-nuttx/quickjs.c:9809
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8001bfa6:	57fd                	li	a5,-1
    8001bfa8:	00fa9463          	bne	s5,a5,8001bfb0 <js_create_map_iterator+0x84>
quickjs-nuttx/quickjs.c:9811
        p->u.opaque = opaque;
    8001bfac:	0289b823          	sd	s0,48(s3)
js_create_map_iterator():
quickjs-nuttx/quickjs.c:47489
    return enum_obj;
    8001bfb0:	f04e                	sd	s3,32(sp)
    8001bfb2:	f44a                	sd	s2,40(sp)
quickjs-nuttx/quickjs.c:47492 (discriminator 1)
}
    8001bfb4:	70a6                	ld	ra,104(sp)
    8001bfb6:	7406                	ld	s0,96(sp)
    8001bfb8:	7502                	ld	a0,32(sp)
    8001bfba:	75a2                	ld	a1,40(sp)
    8001bfbc:	64e6                	ld	s1,88(sp)
    8001bfbe:	6946                	ld	s2,80(sp)
    8001bfc0:	69a6                	ld	s3,72(sp)
    8001bfc2:	6a06                	ld	s4,64(sp)
    8001bfc4:	7ae2                	ld	s5,56(sp)
    8001bfc6:	6165                	addi	sp,sp,112
    8001bfc8:	8082                	ret

000000008001bfca <JS_NewObjectProto>:
JS_NewObjectProto():
quickjs-nuttx/quickjs.c:4923
{
    8001bfca:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:4924
    return JS_NewObjectProtoClass(ctx, proto, JS_CLASS_OBJECT);
    8001bfcc:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:4925
}
    8001bfce:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:4924
    return JS_NewObjectProtoClass(ctx, proto, JS_CLASS_OBJECT);
    8001bfd0:	c15ff06f          	j	8001bbe4 <JS_NewObjectProtoClass>

000000008001bfd4 <JS_GetImportMeta>:
JS_GetImportMeta():
quickjs-nuttx/quickjs.c:28333
{
    8001bfd4:	7139                	addi	sp,sp,-64
    8001bfd6:	f822                	sd	s0,48(sp)
    8001bfd8:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:28336
    obj = m->meta_obj;
    8001bfda:	1085b783          	ld	a5,264(a1)
quickjs-nuttx/quickjs.c:28333
{
    8001bfde:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:28336
    obj = m->meta_obj;
    8001bfe0:	1105b583          	ld	a1,272(a1)
    8001bfe4:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs.c:28337
    if (JS_IsUndefined(obj)) {
    8001bfe6:	478d                	li	a5,3
    8001bfe8:	0005871b          	sext.w	a4,a1
    8001bfec:	02f71063          	bne	a4,a5,8001c00c <JS_GetImportMeta+0x38>
quickjs-nuttx/quickjs.c:28338
        obj = JS_NewObjectProto(ctx, JS_NULL);
    8001bff0:	4581                	li	a1,0
    8001bff2:	4609                	li	a2,2
    8001bff4:	fd7ff0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8001bff8:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:28339
        if (JS_IsException(obj))
    8001bffa:	0005871b          	sext.w	a4,a1
    8001bffe:	4799                	li	a5,6
