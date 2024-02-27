    8003c000:	18078963          	beqz	a5,8003c192 <JS_WriteObjectRec+0xa36>
js_object_list_find():
quickjs-nuttx/quickjs.c:34525
    if (s->object_count == 0)
    8003c004:	5cb8                	lw	a4,120(s1)
    8003c006:	c321                	beqz	a4,8003c046 <JS_WriteObjectRec+0x8ea>
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c008:	6685                	lui	a3,0x1
    8003c00a:	c5b6869b          	addiw	a3,a3,-933
    8003c00e:	02d986bb          	mulw	a3,s3,a3
    8003c012:	0884a783          	lw	a5,136(s1)
    8003c016:	37fd                	addiw	a5,a5,-1
    8003c018:	8ff5                	and	a5,a5,a3
js_object_list_find():
quickjs-nuttx/quickjs.c:34528
    p = s->hash_table[h];
    8003c01a:	60d4                	ld	a3,128(s1)
    8003c01c:	02079613          	slli	a2,a5,0x20
    8003c020:	01e65793          	srli	a5,a2,0x1e
    8003c024:	97b6                	add	a5,a5,a3
    8003c026:	0007a903          	lw	s2,0(a5)
quickjs-nuttx/quickjs.c:34529
    while (p != -1) {
    8003c02a:	567d                	li	a2,-1
    8003c02c:	00c90d63          	beq	s2,a2,8003c046 <JS_WriteObjectRec+0x8ea>
quickjs-nuttx/quickjs.c:34530
        e = &s->object_tab[p];
    8003c030:	02091693          	slli	a3,s2,0x20
    8003c034:	01c6d793          	srli	a5,a3,0x1c
    8003c038:	78b4                	ld	a3,112(s1)
    8003c03a:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:34531
        if (e->obj == obj)
    8003c03c:	6394                	ld	a3,0(a5)
    8003c03e:	0ad99063          	bne	s3,a3,8003c0de <JS_WriteObjectRec+0x982>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35303
                if (idx >= 0) {
    8003c042:	0a095163          	bgez	s2,8003c0e4 <JS_WriteObjectRec+0x988>
js_object_list_add():
quickjs-nuttx/quickjs.c:34499
    if (js_resize_array(ctx, (void *)&s->object_tab,
    8003c046:	2705                	addiw	a4,a4,1
    8003c048:	07c48693          	addi	a3,s1,124
    8003c04c:	4641                	li	a2,16
    8003c04e:	07048593          	addi	a1,s1,112
    8003c052:	855a                	mv	a0,s6
    8003c054:	959e00ef          	jal	ra,8001c9ac <js_resize_array>
    8003c058:	f2051f63          	bnez	a0,8003b796 <JS_WriteObjectRec+0x3a>
quickjs-nuttx/quickjs.c:34503
    if (unlikely((s->object_count + 1) >= s->hash_size)) {
    8003c05c:	5cbc                	lw	a5,120(s1)
    8003c05e:	0884a703          	lw	a4,136(s1)
    8003c062:	0017869b          	addiw	a3,a5,1
    8003c066:	08e6f763          	bgeu	a3,a4,8003c0f4 <JS_WriteObjectRec+0x998>
quickjs-nuttx/quickjs.c:34510
    e = &s->object_tab[s->object_count++];
    8003c06a:	5cbc                	lw	a5,120(s1)
    8003c06c:	78b4                	ld	a3,112(s1)
    8003c06e:	0017871b          	addiw	a4,a5,1
    8003c072:	dcb8                	sw	a4,120(s1)
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c074:	6705                	lui	a4,0x1
    8003c076:	c5b7071b          	addiw	a4,a4,-933
    8003c07a:	02e9873b          	mulw	a4,s3,a4
js_object_list_add():
quickjs-nuttx/quickjs.c:34510
    e = &s->object_tab[s->object_count++];
    8003c07e:	0792                	slli	a5,a5,0x4
    8003c080:	96be                	add	a3,a3,a5
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c082:	0884a783          	lw	a5,136(s1)
js_object_list_add():
quickjs-nuttx/quickjs.c:34512
    e->obj = obj;
    8003c086:	0136b023          	sd	s3,0(a3) # 1000 <asinh-0x7ffff000>
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c08a:	37fd                	addiw	a5,a5,-1
    8003c08c:	8ff9                	and	a5,a5,a4
js_object_list_add():
quickjs-nuttx/quickjs.c:34513
    e->hash_next = s->hash_table[h];
    8003c08e:	02079713          	slli	a4,a5,0x20
    8003c092:	01e75793          	srli	a5,a4,0x1e
    8003c096:	60d8                	ld	a4,128(s1)
    8003c098:	973e                	add	a4,a4,a5
    8003c09a:	4318                	lw	a4,0(a4)
    8003c09c:	c698                	sw	a4,8(a3)
quickjs-nuttx/quickjs.c:34514
    s->hash_table[h] = s->object_count - 1;
    8003c09e:	60d8                	ld	a4,128(s1)
    8003c0a0:	97ba                	add	a5,a5,a4
    8003c0a2:	5cb8                	lw	a4,120(s1)
    8003c0a4:	377d                	addiw	a4,a4,-1
    8003c0a6:	c398                	sw	a4,0(a5)
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35318 (discriminator 1)
            switch(p->class_id) {
    8003c0a8:	0069d703          	lhu	a4,6(s3)
    8003c0ac:	46d1                	li	a3,20
    8003c0ae:	0007079b          	sext.w	a5,a4
    8003c0b2:	10e6e363          	bltu	a3,a4,8003c1b8 <JS_WriteObjectRec+0xa5c>
    8003c0b6:	10070f63          	beqz	a4,8003c1d4 <JS_WriteObjectRec+0xa78>
    8003c0ba:	fff7079b          	addiw	a5,a4,-1
    8003c0be:	03079613          	slli	a2,a5,0x30
    8003c0c2:	9241                	srli	a2,a2,0x30
    8003c0c4:	46cd                	li	a3,19
    8003c0c6:	10c6e763          	bltu	a3,a2,8003c1d4 <JS_WriteObjectRec+0xa78>
    8003c0ca:	00031697          	auipc	a3,0x31
    8003c0ce:	efe68693          	addi	a3,a3,-258 # 8006cfc8 <qjsc_repl+0x7a18>
    8003c0d2:	00261793          	slli	a5,a2,0x2
    8003c0d6:	97b6                	add	a5,a5,a3
    8003c0d8:	439c                	lw	a5,0(a5)
    8003c0da:	97b6                	add	a5,a5,a3
    8003c0dc:	8782                	jr	a5
js_object_list_find():
quickjs-nuttx/quickjs.c:34533
        p = e->hash_next;
    8003c0de:	0087a903          	lw	s2,8(a5)
    8003c0e2:	b7a9                	j	8003c02c <JS_WriteObjectRec+0x8d0>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c0e4:	04a1                	addi	s1,s1,8
    8003c0e6:	45d5                	li	a1,21
    8003c0e8:	8526                	mv	a0,s1
    8003c0ea:	1f9150ef          	jal	ra,80051ae2 <dbuf_putc>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c0ee:	85ca                	mv	a1,s2
    8003c0f0:	f44ff06f          	j	8003b834 <JS_WriteObjectRec+0xd8>
JS_WriteObjectRec():
quickjs-nuttx/cutils.h:87
    if (a > b)
    8003c0f4:	4691                	li	a3,4
    8003c0f6:	0007091b          	sext.w	s2,a4
    8003c0fa:	00d77363          	bgeu	a4,a3,8003c100 <JS_WriteObjectRec+0x9a4>
    8003c0fe:	4911                	li	s2,4
js_object_list_add():
quickjs-nuttx/quickjs.c:34505
        while (new_hash_size <= s->object_count)
    8003c100:	2781                	sext.w	a5,a5
    8003c102:	0727fc63          	bgeu	a5,s2,8003c17a <JS_WriteObjectRec+0xa1e>
js_object_list_resize_hash():
quickjs-nuttx/quickjs.c:34473
    new_hash_table = js_malloc(ctx, sizeof(new_hash_table[0]) * new_hash_size);
    8003c106:	02091793          	slli	a5,s2,0x20
    8003c10a:	01e7d593          	srli	a1,a5,0x1e
    8003c10e:	855a                	mv	a0,s6
    8003c110:	ff5dd0ef          	jal	ra,8001a104 <js_malloc>
    8003c114:	8baa                	mv	s7,a0
quickjs-nuttx/quickjs.c:34474
    if (!new_hash_table)
    8003c116:	e8050063          	beqz	a0,8003b796 <JS_WriteObjectRec+0x3a>
quickjs-nuttx/quickjs.c:34476
    js_free(ctx, s->hash_table);
    8003c11a:	60cc                	ld	a1,128(s1)
    8003c11c:	855a                	mv	a0,s6
    8003c11e:	ed9ce0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:34480
    for(i = 0; i < s->hash_size; i++) {
    8003c122:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:34477
    s->hash_table = new_hash_table;
    8003c124:	0974b023          	sd	s7,128(s1)
quickjs-nuttx/quickjs.c:34478
    s->hash_size = new_hash_size;
    8003c128:	0924a423          	sw	s2,136(s1)
quickjs-nuttx/quickjs.c:34481
        s->hash_table[i] = -1;
    8003c12c:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:34480
    for(i = 0; i < s->hash_size; i++) {
    8003c12e:	0884a703          	lw	a4,136(s1)
    8003c132:	04e7e763          	bltu	a5,a4,8003c180 <JS_WriteObjectRec+0xa24>
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c136:	6585                	lui	a1,0x1
js_object_list_resize_hash():
quickjs-nuttx/quickjs.c:34483
    for(i = 0; i < s->object_count; i++) {
    8003c138:	4701                	li	a4,0
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c13a:	c5b5859b          	addiw	a1,a1,-933
    8003c13e:	0884a783          	lw	a5,136(s1)
js_object_list_resize_hash():
quickjs-nuttx/quickjs.c:34484
        e = &s->object_tab[i];
    8003c142:	78b4                	ld	a3,112(s1)
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c144:	fff7861b          	addiw	a2,a5,-1
js_object_list_resize_hash():
quickjs-nuttx/quickjs.c:34483
    for(i = 0; i < s->object_count; i++) {
    8003c148:	5cbc                	lw	a5,120(s1)
    8003c14a:	f2f770e3          	bgeu	a4,a5,8003c06a <JS_WriteObjectRec+0x90e>
quickjs-nuttx/quickjs.c:34484
        e = &s->object_tab[i];
    8003c14e:	02071513          	slli	a0,a4,0x20
    8003c152:	01c55793          	srli	a5,a0,0x1c
    8003c156:	96be                	add	a3,a3,a5
js_object_list_get_hash():
quickjs-nuttx/quickjs.c:34464
    return ((uintptr_t)p * 3163) & (hash_size - 1);
    8003c158:	629c                	ld	a5,0(a3)
    8003c15a:	02b787bb          	mulw	a5,a5,a1
    8003c15e:	8ff1                	and	a5,a5,a2
js_object_list_resize_hash():
quickjs-nuttx/quickjs.c:34486
        e->hash_next = s->hash_table[h];
    8003c160:	02079613          	slli	a2,a5,0x20
    8003c164:	01e65793          	srli	a5,a2,0x1e
    8003c168:	60d0                	ld	a2,128(s1)
    8003c16a:	963e                	add	a2,a2,a5
    8003c16c:	4210                	lw	a2,0(a2)
    8003c16e:	c690                	sw	a2,8(a3)
quickjs-nuttx/quickjs.c:34487
        s->hash_table[h] = i;
    8003c170:	60d4                	ld	a3,128(s1)
    8003c172:	97b6                	add	a5,a5,a3
    8003c174:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.c:34483
    for(i = 0; i < s->object_count; i++) {
    8003c176:	2705                	addiw	a4,a4,1
    8003c178:	b7d9                	j	8003c13e <JS_WriteObjectRec+0x9e2>
js_object_list_add():
quickjs-nuttx/quickjs.c:34506
            new_hash_size *= 2;
    8003c17a:	0019191b          	slliw	s2,s2,0x1
    8003c17e:	b751                	j	8003c102 <JS_WriteObjectRec+0x9a6>
js_object_list_resize_hash():
quickjs-nuttx/quickjs.c:34481
        s->hash_table[i] = -1;
    8003c180:	60d8                	ld	a4,128(s1)
    8003c182:	02079593          	slli	a1,a5,0x20
    8003c186:	01e5d613          	srli	a2,a1,0x1e
    8003c18a:	9732                	add	a4,a4,a2
    8003c18c:	c314                	sw	a3,0(a4)
quickjs-nuttx/quickjs.c:34480
    for(i = 0; i < s->hash_size; i++) {
    8003c18e:	2785                	addiw	a5,a5,1
    8003c190:	bf79                	j	8003c12e <JS_WriteObjectRec+0x9d2>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35312
                if (p->tmp_mark) {
    8003c192:	0059c783          	lbu	a5,5(s3)
    8003c196:	0407f713          	andi	a4,a5,64
    8003c19a:	cb11                	beqz	a4,8003c1ae <JS_WriteObjectRec+0xa52>
quickjs-nuttx/quickjs.c:35313
                    JS_ThrowTypeError(s->ctx, "circular reference");
    8003c19c:	855a                	mv	a0,s6
    8003c19e:	00031597          	auipc	a1,0x31
    8003c1a2:	ce258593          	addi	a1,a1,-798 # 8006ce80 <qjsc_repl+0x78d0>
    8003c1a6:	cc6dc0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:35314
                    goto fail;
    8003c1aa:	decff06f          	j	8003b796 <JS_WriteObjectRec+0x3a>
quickjs-nuttx/quickjs.c:35316
                p->tmp_mark = 1;
    8003c1ae:	0407e793          	ori	a5,a5,64
    8003c1b2:	00f982a3          	sb	a5,5(s3)
    8003c1b6:	bdcd                	j	8003c0a8 <JS_WriteObjectRec+0x94c>
    8003c1b8:	02200693          	li	a3,34
    8003c1bc:	00f6e863          	bltu	a3,a5,8003c1cc <JS_WriteObjectRec+0xa70>
    8003c1c0:	02000693          	li	a3,32
    8003c1c4:	00f6f863          	bgeu	a3,a5,8003c1d4 <JS_WriteObjectRec+0xa78>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c1c8:	45d1                	li	a1,20
    8003c1ca:	ae1d                	j	8003c500 <JS_WriteObjectRec+0xda4>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:34632
    8003c1cc:	02400693          	li	a3,36
    8003c1d0:	fed78ce3          	beq	a5,a3,8003c1c8 <JS_WriteObjectRec+0xa6c>
quickjs-nuttx/quickjs.c:35349
                if (p->class_id >= JS_CLASS_UINT8C_ARRAY &&
    8003c1d4:	372d                	addiw	a4,a4,-21
    8003c1d6:	1742                	slli	a4,a4,0x30
    8003c1d8:	9341                	srli	a4,a4,0x30
    8003c1da:	47a9                	li	a5,10
    8003c1dc:	32e7ef63          	bltu	a5,a4,8003c51a <JS_WriteObjectRec+0xdbe>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c1e0:	00848913          	addi	s2,s1,8
    8003c1e4:	45c1                	li	a1,16
    8003c1e6:	854a                	mv	a0,s2
JS_WriteTypedArray():
quickjs-nuttx/quickjs.c:35204
    JSTypedArray *ta = p->u.typed_array;
    8003c1e8:	0309ba03          	ld	s4,48(s3)
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c1ec:	0f7150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteTypedArray():
quickjs-nuttx/quickjs.c:35207
    bc_put_u8(s, p->class_id - JS_CLASS_UINT8C_ARRAY);
    8003c1f0:	0069d583          	lhu	a1,6(s3)
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c1f4:	854a                	mv	a0,s2
JS_WriteTypedArray():
quickjs-nuttx/quickjs.c:35207
    bc_put_u8(s, p->class_id - JS_CLASS_UINT8C_ARRAY);
    8003c1f6:	35ad                	addiw	a1,a1,-21
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c1f8:	0ff5f593          	zext.b	a1,a1
    8003c1fc:	0e7150ef          	jal	ra,80051ae2 <dbuf_putc>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c200:	0409a583          	lw	a1,64(s3)
    8003c204:	854a                	mv	a0,s2
    8003c206:	acbcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003c20a:	020a2583          	lw	a1,32(s4)
    8003c20e:	854a                	mv	a0,s2
    8003c210:	ac1cc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteTypedArray():
quickjs-nuttx/quickjs.c:35210
    if (JS_WriteObjectRec(s, JS_MKPTR(JS_TAG_OBJECT, ta->buffer)))
    8003c214:	018a3583          	ld	a1,24(s4)
    8003c218:	57fd                	li	a5,-1
    8003c21a:	567d                	li	a2,-1
    8003c21c:	8526                	mv	a0,s1
    8003c21e:	f8f43423          	sd	a5,-120(s0)
    8003c222:	f8b43023          	sd	a1,-128(s0)
    8003c226:	d36ff0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003c22a:	0059c783          	lbu	a5,5(s3)
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35358
            p->tmp_mark = 0;
    8003c22e:	fbf7f793          	andi	a5,a5,-65
    8003c232:	00f982a3          	sb	a5,5(s3)
JS_WriteTypedArray():
quickjs-nuttx/quickjs.c:35210
    if (JS_WriteObjectRec(s, JS_MKPTR(JS_TAG_OBJECT, ta->buffer)))
    8003c236:	2a050563          	beqz	a0,8003c4e0 <JS_WriteObjectRec+0xd84>
    8003c23a:	d5cff06f          	j	8003b796 <JS_WriteObjectRec+0x3a>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35320
                ret = JS_WriteArray(s, obj);
    8003c23e:	f3043783          	ld	a5,-208(s0)
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c242:	00848a93          	addi	s5,s1,8
    8003c246:	f4f43823          	sd	a5,-176(s0)
    8003c24a:	f3843783          	ld	a5,-200(s0)
    8003c24e:	f4f43c23          	sd	a5,-168(s0)
JS_WriteArray():
quickjs-nuttx/quickjs.c:35127
    if (s->allow_bytecode && !p->extensible) {
    8003c252:	0394c783          	lbu	a5,57(s1)
    8003c256:	cb85                	beqz	a5,8003c286 <JS_WriteObjectRec+0xb2a>
    8003c258:	0059c783          	lbu	a5,5(s3)
    8003c25c:	8b85                	andi	a5,a5,1
    8003c25e:	e785                	bnez	a5,8003c286 <JS_WriteObjectRec+0xb2a>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c260:	45b5                	li	a1,13
    8003c262:	8556                	mv	a0,s5
    8003c264:	07f150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteArray():
quickjs-nuttx/quickjs.c:35131
        is_template = TRUE;
    8003c268:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:35136
    if (js_get_length32(s->ctx, &len, obj))
    8003c26a:	6088                	ld	a0,0(s1)
    8003c26c:	864e                	mv	a2,s3
    8003c26e:	86d2                	mv	a3,s4
    8003c270:	f4c40593          	addi	a1,s0,-180
    8003c274:	f5343823          	sd	s3,-176(s0)
    8003c278:	f5443c23          	sd	s4,-168(s0)
    8003c27c:	8eae60ef          	jal	ra,80022366 <js_get_length32>
    8003c280:	c909                	beqz	a0,8003c292 <JS_WriteObjectRec+0xb36>
JS_WriteObjectTag():
quickjs-nuttx/quickjs.c:35198
    return -1;
    8003c282:	597d                	li	s2,-1
    8003c284:	a041                	j	8003c304 <JS_WriteObjectRec+0xba8>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c286:	45a5                	li	a1,9
    8003c288:	8556                	mv	a0,s5
    8003c28a:	059150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteArray():
quickjs-nuttx/quickjs.c:35134
        is_template = FALSE;
    8003c28e:	4901                	li	s2,0
    8003c290:	bfe9                	j	8003c26a <JS_WriteObjectRec+0xb0e>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c292:	f4c42583          	lw	a1,-180(s0)
    8003c296:	8556                	mv	a0,s5
JS_WriteArray():
quickjs-nuttx/quickjs.c:35141
        if (JS_IsException(val))
    8003c298:	4b99                	li	s7,6
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c29a:	a37cc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteArray():
quickjs-nuttx/quickjs.c:35139
    for(i = 0; i < len; i++) {
    8003c29e:	4a81                	li	s5,0
    8003c2a0:	f4c42783          	lw	a5,-180(s0)
    8003c2a4:	06fae963          	bltu	s5,a5,8003c316 <JS_WriteObjectRec+0xbba>
quickjs-nuttx/quickjs.c:35148
    if (is_template) {
    8003c2a8:	04090e63          	beqz	s2,8003c304 <JS_WriteObjectRec+0xba8>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003c2ac:	6088                	ld	a0,0(s1)
    8003c2ae:	874e                	mv	a4,s3
    8003c2b0:	87d2                	mv	a5,s4
    8003c2b2:	8652                	mv	a2,s4
    8003c2b4:	4801                	li	a6,0
    8003c2b6:	07100693          	li	a3,113
    8003c2ba:	85ce                	mv	a1,s3
    8003c2bc:	f7343823          	sd	s3,-144(s0)
    8003c2c0:	f7443c23          	sd	s4,-136(s0)
    8003c2c4:	fe6da0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003c2c8:	f8a43023          	sd	a0,-128(s0)
    8003c2cc:	f8b43423          	sd	a1,-120(s0)
    8003c2d0:	f6a43023          	sd	a0,-160(s0)
    8003c2d4:	f6b43423          	sd	a1,-152(s0)
JS_WriteArray():
quickjs-nuttx/quickjs.c:35150
        if (JS_IsException(val))
    8003c2d8:	0005871b          	sext.w	a4,a1
    8003c2dc:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003c2de:	862e                	mv	a2,a1
JS_WriteArray():
quickjs-nuttx/quickjs.c:35150
    8003c2e0:	faf701e3          	beq	a4,a5,8003c282 <JS_WriteObjectRec+0xb26>
quickjs-nuttx/quickjs.c:35152
        ret = JS_WriteObjectRec(s, val);
    8003c2e4:	85aa                	mv	a1,a0
    8003c2e6:	8526                	mv	a0,s1
    8003c2e8:	c74ff0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003c2ec:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:35153
        JS_FreeValue(s->ctx, val);
    8003c2ee:	f6043583          	ld	a1,-160(s0)
    8003c2f2:	f6843603          	ld	a2,-152(s0)
    8003c2f6:	6088                	ld	a0,0(s1)
quickjs-nuttx/quickjs.c:35154
        if (ret)
    8003c2f8:	01203933          	snez	s2,s2
    8003c2fc:	41200933          	neg	s2,s2
quickjs-nuttx/quickjs.c:35153
        JS_FreeValue(s->ctx, val);
    8003c300:	c9ecf0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35358
            p->tmp_mark = 0;
    8003c304:	0059c783          	lbu	a5,5(s3)
quickjs-nuttx/quickjs.c:35359
            if (ret)
    8003c308:	01203533          	snez	a0,s2
quickjs-nuttx/quickjs.c:35358
            p->tmp_mark = 0;
    8003c30c:	fbf7f793          	andi	a5,a5,-65
    8003c310:	00f982a3          	sb	a5,5(s3)
quickjs-nuttx/quickjs.c:35359
            if (ret)
    8003c314:	b191                	j	8003bf58 <JS_WriteObjectRec+0x7fc>
JS_WriteArray():
quickjs-nuttx/quickjs.c:35140
        val = JS_GetPropertyUint32(s->ctx, obj, i);
    8003c316:	6088                	ld	a0,0(s1)
    8003c318:	8652                	mv	a2,s4
    8003c31a:	86d6                	mv	a3,s5
    8003c31c:	85ce                	mv	a1,s3
    8003c31e:	f5343823          	sd	s3,-176(s0)
    8003c322:	f5443c23          	sd	s4,-168(s0)
    8003c326:	e13da0ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    8003c32a:	f6a43023          	sd	a0,-160(s0)
    8003c32e:	f6b43423          	sd	a1,-152(s0)
quickjs-nuttx/quickjs.c:35141
        if (JS_IsException(val))
    8003c332:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:35140
        val = JS_GetPropertyUint32(s->ctx, obj, i);
    8003c336:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:35141
        if (JS_IsException(val))
    8003c338:	f57785e3          	beq	a5,s7,8003c282 <JS_WriteObjectRec+0xb26>
quickjs-nuttx/quickjs.c:35143
        ret = JS_WriteObjectRec(s, val);
    8003c33c:	85aa                	mv	a1,a0
    8003c33e:	8526                	mv	a0,s1
    8003c340:	c1cff0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003c344:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:35144
        JS_FreeValue(s->ctx, val);
    8003c346:	f6043583          	ld	a1,-160(s0)
    8003c34a:	f6843603          	ld	a2,-152(s0)
    8003c34e:	6088                	ld	a0,0(s1)
    8003c350:	c4ecf0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:35145
        if (ret)
    8003c354:	f20b17e3          	bnez	s6,8003c282 <JS_WriteObjectRec+0xb26>
quickjs-nuttx/quickjs.c:35139
    for(i = 0; i < len; i++) {
    8003c358:	2a85                	addiw	s5,s5,1
    8003c35a:	b799                	j	8003c2a0 <JS_WriteObjectRec+0xb44>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c35c:	00848b13          	addi	s6,s1,8
    8003c360:	45a1                	li	a1,8
    8003c362:	855a                	mv	a0,s6
    8003c364:	77e150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteObjectTag():
quickjs-nuttx/quickjs.c:35173
    sh = p->shape;
    8003c368:	0189bb83          	ld	s7,24(s3)
quickjs-nuttx/quickjs.c:35172
    prop_count = 0;
    8003c36c:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:35174
    for(pass = 0; pass < 2; pass++) {
    8003c36e:	4c81                	li	s9,0
    8003c370:	4c05                	li	s8,1
get_shape_prop():
quickjs-nuttx/quickjs.c:4267
    return sh->prop;
    8003c372:	040b8a13          	addi	s4,s7,64
JS_WriteObjectTag():
quickjs-nuttx/quickjs.c:35177
        for(i = 0, pr = get_shape_prop(sh); i < sh->prop_count; i++, pr++) {
    8003c376:	4901                	li	s2,0
    8003c378:	028ba783          	lw	a5,40(s7)
    8003c37c:	00f96c63          	bltu	s2,a5,8003c394 <JS_WriteObjectRec+0xc38>
quickjs-nuttx/quickjs.c:35174
    for(pass = 0; pass < 2; pass++) {
    8003c380:	018c9463          	bne	s9,s8,8003c388 <JS_WriteObjectRec+0xc2c>
quickjs-nuttx/quickjs.c:35196
    return 0;
    8003c384:	4901                	li	s2,0
    8003c386:	bfbd                	j	8003c304 <JS_WriteObjectRec+0xba8>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c388:	85d6                	mv	a1,s5
    8003c38a:	855a                	mv	a0,s6
    8003c38c:	945cc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
    8003c390:	4c85                	li	s9,1
    8003c392:	b7c5                	j	8003c372 <JS_WriteObjectRec+0xc16>
JS_WriteObjectTag():
quickjs-nuttx/quickjs.c:35178
            atom = pr->atom;
    8003c394:	004a2583          	lw	a1,4(s4)
quickjs-nuttx/quickjs.c:35179
            if (atom != JS_ATOM_NULL &&
    8003c398:	c1a9                	beqz	a1,8003c3da <JS_WriteObjectRec+0xc7e>
quickjs-nuttx/quickjs.c:35180
                JS_AtomIsString(s->ctx, atom) &&
    8003c39a:	0004bd03          	ld	s10,0(s1)
JS_AtomIsString():
quickjs-nuttx/quickjs.c:2675
    return JS_AtomGetKind(ctx, v) == JS_ATOM_KIND_STRING;
    8003c39e:	f2b43423          	sd	a1,-216(s0)
    8003c3a2:	856a                	mv	a0,s10
    8003c3a4:	ed6cc0ef          	jal	ra,80008a7a <JS_AtomGetKind>
    8003c3a8:	2501                	sext.w	a0,a0
JS_WriteObjectTag():
quickjs-nuttx/quickjs.c:35179
            if (atom != JS_ATOM_NULL &&
    8003c3aa:	e905                	bnez	a0,8003c3da <JS_WriteObjectRec+0xc7e>
quickjs-nuttx/quickjs.c:35181
                (pr->flags & JS_PROP_ENUMERABLE)) {
    8003c3ac:	000a2783          	lw	a5,0(s4)
    8003c3b0:	01a7d79b          	srliw	a5,a5,0x1a
quickjs-nuttx/quickjs.c:35180
                JS_AtomIsString(s->ctx, atom) &&
    8003c3b4:	0047f713          	andi	a4,a5,4
    8003c3b8:	c30d                	beqz	a4,8003c3da <JS_WriteObjectRec+0xc7e>
quickjs-nuttx/quickjs.c:35182
                if (pr->flags & JS_PROP_TMASK) {
    8003c3ba:	0307f793          	andi	a5,a5,48
    8003c3be:	f2843583          	ld	a1,-216(s0)
    8003c3c2:	cb89                	beqz	a5,8003c3d4 <JS_WriteObjectRec+0xc78>
quickjs-nuttx/quickjs.c:35183
                    JS_ThrowTypeError(s->ctx, "only value properties are supported");
    8003c3c4:	00031597          	auipc	a1,0x31
    8003c3c8:	ad458593          	addi	a1,a1,-1324 # 8006ce98 <qjsc_repl+0x78e8>
    8003c3cc:	856a                	mv	a0,s10
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35353
                    JS_ThrowTypeError(s->ctx, "unsupported object class");
    8003c3ce:	a9edc0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:35358
            p->tmp_mark = 0;
    8003c3d2:	a081                	j	8003c412 <JS_WriteObjectRec+0xcb6>
JS_WriteObjectTag():
quickjs-nuttx/quickjs.c:35186
                if (pass == 0) {
    8003c3d4:	000c9663          	bnez	s9,8003c3e0 <JS_WriteObjectRec+0xc84>
quickjs-nuttx/quickjs.c:35187
                    prop_count++;
    8003c3d8:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs.c:35177
        for(i = 0, pr = get_shape_prop(sh); i < sh->prop_count; i++, pr++) {
    8003c3da:	2905                	addiw	s2,s2,1
    8003c3dc:	0a21                	addi	s4,s4,8
    8003c3de:	bf69                	j	8003c378 <JS_WriteObjectRec+0xc1c>
quickjs-nuttx/quickjs.c:35189
                    bc_put_atom(s, atom);
    8003c3e0:	8526                	mv	a0,s1
    8003c3e2:	aabe00ef          	jal	ra,8001ce8c <bc_put_atom.isra.0>
quickjs-nuttx/quickjs.c:35190
                    if (JS_WriteObjectRec(s, p->prop[i].u.value))
    8003c3e6:	0209b783          	ld	a5,32(s3)
    8003c3ea:	02091693          	slli	a3,s2,0x20
    8003c3ee:	01c6d713          	srli	a4,a3,0x1c
    8003c3f2:	97ba                	add	a5,a5,a4
    8003c3f4:	638c                	ld	a1,0(a5)
    8003c3f6:	6790                	ld	a2,8(a5)
    8003c3f8:	8526                	mv	a0,s1
    8003c3fa:	b62ff0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003c3fe:	dd71                	beqz	a0,8003c3da <JS_WriteObjectRec+0xc7e>
    8003c400:	b549                	j	8003c282 <JS_WriteObjectRec+0xb26>
JS_WriteArrayBuffer():
quickjs-nuttx/quickjs.c:35218
    JSArrayBuffer *abuf = p->u.array_buffer;
    8003c402:	0309b903          	ld	s2,48(s3)
quickjs-nuttx/quickjs.c:35219
    if (abuf->detached) {
    8003c406:	00494783          	lbu	a5,4(s2)
    8003c40a:	cf81                	beqz	a5,8003c422 <JS_WriteObjectRec+0xcc6>
quickjs-nuttx/quickjs.c:35220
        JS_ThrowTypeErrorDetachedArrayBuffer(s->ctx);
    8003c40c:	6088                	ld	a0,0(s1)
    8003c40e:	b77dc0ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35358
            p->tmp_mark = 0;
    8003c412:	0059c783          	lbu	a5,5(s3)
    8003c416:	fbf7f793          	andi	a5,a5,-65
    8003c41a:	00f982a3          	sb	a5,5(s3)
quickjs-nuttx/quickjs.c:35359
            if (ret)
    8003c41e:	b78ff06f          	j	8003b796 <JS_WriteObjectRec+0x3a>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c422:	04a1                	addi	s1,s1,8
    8003c424:	45c5                	li	a1,17
    8003c426:	8526                	mv	a0,s1
    8003c428:	6ba150ef          	jal	ra,80051ae2 <dbuf_putc>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c42c:	00092583          	lw	a1,0(s2)
    8003c430:	8526                	mv	a0,s1
    8003c432:	89fcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteArrayBuffer():
quickjs-nuttx/quickjs.c:35225
    dbuf_put(&s->dbuf, abuf->data, abuf->byte_length);
    8003c436:	00092603          	lw	a2,0(s2)
    8003c43a:	00893583          	ld	a1,8(s2)
    8003c43e:	8526                	mv	a0,s1
    8003c440:	610150ef          	jal	ra,80051a50 <dbuf_put>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35358
            p->tmp_mark = 0;
    8003c444:	0059c783          	lbu	a5,5(s3)
    8003c448:	fbf7f793          	andi	a5,a5,-65
    8003c44c:	00f982a3          	sb	a5,5(s3)
quickjs-nuttx/quickjs.c:35359
            if (ret)
    8003c450:	c1aff06f          	j	8003b86a <JS_WriteObjectRec+0x10e>
quickjs-nuttx/quickjs.c:35329
                if (!s->allow_sab)
    8003c454:	03a4c783          	lbu	a5,58(s1)
    8003c458:	b8078963          	beqz	a5,8003b7ea <JS_WriteObjectRec+0x8e>
JS_WriteSharedArrayBuffer():
quickjs-nuttx/quickjs.c:35232
    JSArrayBuffer *abuf = p->u.array_buffer;
    8003c45c:	0309b903          	ld	s2,48(s3)
quickjs-nuttx/quickjs.c:35233
    assert(!abuf->detached); /* SharedArrayBuffer are never detached */
    8003c460:	00494783          	lbu	a5,4(s2)
    8003c464:	c799                	beqz	a5,8003c472 <JS_WriteObjectRec+0xd16>
    8003c466:	65a5                	lui	a1,0x9
    8003c468:	4601                	li	a2,0
    8003c46a:	9a158593          	addi	a1,a1,-1631 # 89a1 <asinh-0x7fff765f>
    8003c46e:	d42ff06f          	j	8003b9b0 <JS_WriteObjectRec+0x254>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c472:	00848a13          	addi	s4,s1,8
    8003c476:	45c9                	li	a1,18
    8003c478:	8552                	mv	a0,s4
    8003c47a:	668150ef          	jal	ra,80051ae2 <dbuf_putc>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c47e:	00092583          	lw	a1,0(s2)
    8003c482:	8552                	mv	a0,s4
    8003c484:	84dcc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteSharedArrayBuffer():
quickjs-nuttx/quickjs.c:35236
    bc_put_u64(s, (uintptr_t)abuf->data);
    8003c488:	00893503          	ld	a0,8(s2)
bc_put_u64():
quickjs-nuttx/quickjs.c:34651
    if (s->byte_swap)
    8003c48c:	0384c783          	lbu	a5,56(s1)
    8003c490:	f8a43023          	sd	a0,-128(s0)
    8003c494:	c789                	beqz	a5,8003c49e <JS_WriteObjectRec+0xd42>
quickjs-nuttx/quickjs.c:34652
        v = bswap64(v);
    8003c496:	e58cb0ef          	jal	ra,80007aee <bswap64>
    8003c49a:	f8a43023          	sd	a0,-128(s0)
quickjs-nuttx/quickjs.c:34653
    dbuf_put(&s->dbuf, (uint8_t *)&v, sizeof(v));
    8003c49e:	4621                	li	a2,8
    8003c4a0:	f8040593          	addi	a1,s0,-128
    8003c4a4:	8552                	mv	a0,s4
    8003c4a6:	5aa150ef          	jal	ra,80051a50 <dbuf_put>
JS_WriteSharedArrayBuffer():
quickjs-nuttx/quickjs.c:35237
    if (js_resize_array(s->ctx, (void **)&s->sab_tab, sizeof(s->sab_tab[0]),
    8003c4aa:	54b8                	lw	a4,104(s1)
    8003c4ac:	6088                	ld	a0,0(s1)
    8003c4ae:	06c48693          	addi	a3,s1,108
    8003c4b2:	2705                	addiw	a4,a4,1
    8003c4b4:	4621                	li	a2,8
    8003c4b6:	06048593          	addi	a1,s1,96
    8003c4ba:	cf2e00ef          	jal	ra,8001c9ac <js_resize_array>
    8003c4be:	f931                	bnez	a0,8003c412 <JS_WriteObjectRec+0xcb6>
quickjs-nuttx/quickjs.c:35241
    s->sab_tab[s->sab_tab_len++] = abuf->data;
    8003c4c0:	54bc                	lw	a5,104(s1)
    8003c4c2:	70b8                	ld	a4,96(s1)
    8003c4c4:	0017869b          	addiw	a3,a5,1
    8003c4c8:	d4b4                	sw	a3,104(s1)
    8003c4ca:	00893683          	ld	a3,8(s2)
    8003c4ce:	078e                	slli	a5,a5,0x3
    8003c4d0:	97ba                	add	a5,a5,a4
    8003c4d2:	e394                	sd	a3,0(a5)
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35358
            p->tmp_mark = 0;
    8003c4d4:	0059c783          	lbu	a5,5(s3)
    8003c4d8:	fbf7f793          	andi	a5,a5,-65
    8003c4dc:	00f982a3          	sb	a5,5(s3)
quickjs-nuttx/quickjs.c:35380
}
    8003c4e0:	60ee                	ld	ra,216(sp)
    8003c4e2:	644e                	ld	s0,208(sp)
    8003c4e4:	64ae                	ld	s1,200(sp)
    8003c4e6:	690e                	ld	s2,192(sp)
    8003c4e8:	79ea                	ld	s3,184(sp)
    8003c4ea:	7a4a                	ld	s4,176(sp)
    8003c4ec:	7aaa                	ld	s5,168(sp)
    8003c4ee:	7b0a                	ld	s6,160(sp)
    8003c4f0:	6bea                	ld	s7,152(sp)
    8003c4f2:	6c4a                	ld	s8,144(sp)
    8003c4f4:	6caa                	ld	s9,136(sp)
    8003c4f6:	6d0a                	ld	s10,128(sp)
    8003c4f8:	7de6                	ld	s11,120(sp)
    8003c4fa:	612d                	addi	sp,sp,224
    8003c4fc:	8082                	ret
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c4fe:	45cd                	li	a1,19
    8003c500:	00848513          	addi	a0,s1,8
    8003c504:	5de150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteObjectRec():
quickjs-nuttx/quickjs.c:35346
                ret = JS_WriteObjectRec(s, p->u.object_data);
    8003c508:	0309b583          	ld	a1,48(s3)
    8003c50c:	0389b603          	ld	a2,56(s3)
    8003c510:	8526                	mv	a0,s1
    8003c512:	a4aff0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003c516:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:35347
                break;
    8003c518:	b3f5                	j	8003c304 <JS_WriteObjectRec+0xba8>
quickjs-nuttx/quickjs.c:35353
                    JS_ThrowTypeError(s->ctx, "unsupported object class");
    8003c51a:	6088                	ld	a0,0(s1)
    8003c51c:	00031597          	auipc	a1,0x31
    8003c520:	9a458593          	addi	a1,a1,-1628 # 8006cec0 <qjsc_repl+0x7910>
    8003c524:	b56d                	j	8003c3ce <JS_WriteObjectRec+0xc72>
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c526:	1782                	slli	a5,a5,0x20
    8003c528:	00058717          	auipc	a4,0x58
    8003c52c:	ca070713          	addi	a4,a4,-864 # 800941c8 <CSWTCH.5377>
    8003c530:	9381                	srli	a5,a5,0x20
    8003c532:	97ba                	add	a5,a5,a4
    8003c534:	0007c583          	lbu	a1,0(a5)
    8003c538:	f3043a03          	ld	s4,-208(s0)
    8003c53c:	00848993          	addi	s3,s1,8
    8003c540:	854e                	mv	a0,s3
    8003c542:	5a0150ef          	jal	ra,80051ae2 <dbuf_putc>
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34873
    if (a->expn == BF_EXP_ZERO)
    8003c546:	018a3783          	ld	a5,24(s4)
    8003c54a:	577d                	li	a4,-1
    8003c54c:	03f71693          	slli	a3,a4,0x3f
    8003c550:	0ad78163          	beq	a5,a3,8003c5f2 <JS_WriteObjectRec+0xe96>
quickjs-nuttx/quickjs.c:34875
    else if (a->expn == BF_EXP_INF)
    8003c554:	56f5                	li	a3,-3
    8003c556:	8285                	srli	a3,a3,0x1
    8003c558:	08d78f63          	beq	a5,a3,8003c5f6 <JS_WriteObjectRec+0xe9a>
quickjs-nuttx/quickjs.c:34877
    else if (a->expn == BF_EXP_NAN)
    8003c55c:	8305                	srli	a4,a4,0x1
    8003c55e:	08e78e63          	beq	a5,a4,8003c5fa <JS_WriteObjectRec+0xe9e>
quickjs-nuttx/quickjs.c:34879
    else if (a->expn >= 0)
    8003c562:	0007c363          	bltz	a5,8003c568 <JS_WriteObjectRec+0xe0c>
quickjs-nuttx/quickjs.c:34880
        e = a->expn + 3;
    8003c566:	078d                	addi	a5,a5,3
quickjs-nuttx/quickjs.c:34883
    e = (e << 1) | a->sign;
    8003c568:	010a2583          	lw	a1,16(s4)
    8003c56c:	0786                	slli	a5,a5,0x1
quickjs-nuttx/quickjs.c:34884
    if (e < INT32_MIN || e > INT32_MAX) {
    8003c56e:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:34883
    e = (e << 1) | a->sign;
    8003c570:	8fcd                	or	a5,a5,a1
quickjs-nuttx/quickjs.c:34884
    if (e < INT32_MIN || e > INT32_MAX) {
    8003c572:	077e                	slli	a4,a4,0x1f
    8003c574:	56fd                	li	a3,-1
    8003c576:	973e                	add	a4,a4,a5
    8003c578:	9281                	srli	a3,a3,0x20
quickjs-nuttx/quickjs.c:34885
        JS_ThrowInternalError(s->ctx, "bignum exponent is too large");
    8003c57a:	00031597          	auipc	a1,0x31
    8003c57e:	96658593          	addi	a1,a1,-1690 # 8006cee0 <qjsc_repl+0x7930>
quickjs-nuttx/quickjs.c:34884
    if (e < INT32_MIN || e > INT32_MAX) {
    8003c582:	06e6e363          	bltu	a3,a4,8003c5e8 <JS_WriteObjectRec+0xe8c>
dbuf_put_sleb128():
quickjs-nuttx/quickjs.c:6400
    dbuf_put_leb128(s, (2 * v) ^ -(v >> 31));
    8003c586:	0017959b          	slliw	a1,a5,0x1
    8003c58a:	41f7d79b          	sraiw	a5,a5,0x1f
    8003c58e:	8dbd                	xor	a1,a1,a5
    8003c590:	2581                	sext.w	a1,a1
    8003c592:	854e                	mv	a0,s3
    8003c594:	f3ccc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34891
    if (a->len != 0) {
    8003c598:	020a3583          	ld	a1,32(s4)
    8003c59c:	ac058763          	beqz	a1,8003b86a <JS_WriteObjectRec+0x10e>
quickjs-nuttx/quickjs.c:34892
        if (tag != JS_TAG_BIG_DECIMAL) {
    8003c5a0:	5755                	li	a4,-11
quickjs-nuttx/quickjs.c:34894
            while (i < a->len && a->tab[i] == 0)
    8003c5a2:	028a3683          	ld	a3,40(s4)
quickjs-nuttx/quickjs.c:34893
            i = 0;
    8003c5a6:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:34934
            i = 0;
    8003c5a8:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:34892
        if (tag != JS_TAG_BIG_DECIMAL) {
    8003c5aa:	0cea8063          	beq	s5,a4,8003c66a <JS_WriteObjectRec+0xf0e>
quickjs-nuttx/quickjs.c:34894
            while (i < a->len && a->tab[i] == 0)
    8003c5ae:	00379713          	slli	a4,a5,0x3
    8003c5b2:	9736                	add	a4,a4,a3
    8003c5b4:	00073a83          	ld	s5,0(a4)
    8003c5b8:	040a8363          	beqz	s5,8003c5fe <JS_WriteObjectRec+0xea2>
quickjs-nuttx/quickjs.c:34898
            n1 = sizeof(limb_t);
    8003c5bc:	4b21                	li	s6,8
quickjs-nuttx/quickjs.c:34896
            assert(i < a->len);
    8003c5be:	04b7f363          	bgeu	a5,a1,8003c604 <JS_WriteObjectRec+0xea8>
quickjs-nuttx/quickjs.c:34899
            while ((v & 0xff) == 0) {
    8003c5c2:	0ffaf713          	zext.b	a4,s5
    8003c5c6:	c729                	beqz	a4,8003c610 <JS_WriteObjectRec+0xeb4>
quickjs-nuttx/quickjs.c:34903
            i++;
    8003c5c8:	00178913          	addi	s2,a5,1
quickjs-nuttx/quickjs.c:34904
            len = (a->len - i) * sizeof(limb_t) + n1;
    8003c5cc:	412585b3          	sub	a1,a1,s2
    8003c5d0:	058e                	slli	a1,a1,0x3
quickjs-nuttx/quickjs.c:34905
            if (len > INT32_MAX) {
    8003c5d2:	800007b7          	lui	a5,0x80000
quickjs-nuttx/quickjs.c:34904
            len = (a->len - i) * sizeof(limb_t) + n1;
    8003c5d6:	95da                	add	a1,a1,s6
quickjs-nuttx/quickjs.c:34905
            if (len > INT32_MAX) {
    8003c5d8:	fff7c793          	not	a5,a5
    8003c5dc:	02b7fe63          	bgeu	a5,a1,8003c618 <JS_WriteObjectRec+0xebc>
quickjs-nuttx/quickjs.c:34906
                JS_ThrowInternalError(s->ctx, "bignum is too large");
    8003c5e0:	00031597          	auipc	a1,0x31
    8003c5e4:	92058593          	addi	a1,a1,-1760 # 8006cf00 <qjsc_repl+0x7950>
    8003c5e8:	6088                	ld	a0,0(s1)
    8003c5ea:	b0edd0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:34907
                return -1;
    8003c5ee:	9a8ff06f          	j	8003b796 <JS_WriteObjectRec+0x3a>
quickjs-nuttx/quickjs.c:34874
        e = 0;
    8003c5f2:	4781                	li	a5,0
    8003c5f4:	bf95                	j	8003c568 <JS_WriteObjectRec+0xe0c>
quickjs-nuttx/quickjs.c:34876
        e = 1;
    8003c5f6:	4785                	li	a5,1
    8003c5f8:	bf85                	j	8003c568 <JS_WriteObjectRec+0xe0c>
quickjs-nuttx/quickjs.c:34878
        e = 2;
    8003c5fa:	4789                	li	a5,2
    8003c5fc:	b7b5                	j	8003c568 <JS_WriteObjectRec+0xe0c>
quickjs-nuttx/quickjs.c:34895
                i++;
    8003c5fe:	0785                	addi	a5,a5,1
quickjs-nuttx/quickjs.c:34894
            while (i < a->len && a->tab[i] == 0)
    8003c600:	faf597e3          	bne	a1,a5,8003c5ae <JS_WriteObjectRec+0xe52>
quickjs-nuttx/quickjs.c:34896
            assert(i < a->len);
    8003c604:	65a5                	lui	a1,0x9
    8003c606:	4601                	li	a2,0
    8003c608:	85058593          	addi	a1,a1,-1968 # 8850 <asinh-0x7fff77b0>
    8003c60c:	ba4ff06f          	j	8003b9b0 <JS_WriteObjectRec+0x254>
quickjs-nuttx/quickjs.c:34900
                n1--;
    8003c610:	1b7d                	addi	s6,s6,-1
quickjs-nuttx/quickjs.c:34901
                v >>= 8;
    8003c612:	008ada93          	srli	s5,s5,0x8
    8003c616:	b775                	j	8003c5c2 <JS_WriteObjectRec+0xe66>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c618:	2581                	sext.w	a1,a1
    8003c61a:	854e                	mv	a0,s3
    8003c61c:	eb4cc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34911
            for(j = 0; j < n1; j++) {
    8003c620:	4481                	li	s1,0
    8003c622:	029b1663          	bne	s6,s1,8003c64e <JS_WriteObjectRec+0xef2>
quickjs-nuttx/quickjs.c:34914
            for(; i < a->len; i++) {
    8003c626:	020a3783          	ld	a5,32(s4)
    8003c62a:	a4f97063          	bgeu	s2,a5,8003b86a <JS_WriteObjectRec+0x10e>
quickjs-nuttx/quickjs.c:34915
                limb_t v = a->tab[i];
    8003c62e:	028a3783          	ld	a5,40(s4)
    8003c632:	00391713          	slli	a4,s2,0x3
dbuf_put_u64():
quickjs-nuttx/cutils.h:266
    return dbuf_put(s, (uint8_t *)&val, 8);
    8003c636:	4621                	li	a2,8
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34915
    8003c638:	97ba                	add	a5,a5,a4
    8003c63a:	639c                	ld	a5,0(a5)
dbuf_put_u64():
quickjs-nuttx/cutils.h:266
    8003c63c:	f8040593          	addi	a1,s0,-128
    8003c640:	854e                	mv	a0,s3
    8003c642:	f8f43023          	sd	a5,-128(s0)
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34914
            for(; i < a->len; i++) {
    8003c646:	0905                	addi	s2,s2,1
dbuf_put_u64():
quickjs-nuttx/cutils.h:266
    8003c648:	408150ef          	jal	ra,80051a50 <dbuf_put>
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34914
    8003c64c:	bfe9                	j	8003c626 <JS_WriteObjectRec+0xeca>
quickjs-nuttx/quickjs.c:34912
                dbuf_putc(&s->dbuf, v >> (j * 8));
    8003c64e:	0034959b          	slliw	a1,s1,0x3
    8003c652:	00bad5b3          	srl	a1,s5,a1
    8003c656:	0ff5f593          	zext.b	a1,a1
    8003c65a:	854e                	mv	a0,s3
    8003c65c:	486150ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:34911
            for(j = 0; j < n1; j++) {
    8003c660:	0485                	addi	s1,s1,1
    8003c662:	b7c1                	j	8003c622 <JS_WriteObjectRec+0xec6>
quickjs-nuttx/quickjs.c:34936
                i++;
    8003c664:	0b05                	addi	s6,s6,1
quickjs-nuttx/quickjs.c:34935
            while (i < a->len && a->tab[i] == 0)
    8003c666:	01658b63          	beq	a1,s6,8003c67c <JS_WriteObjectRec+0xf20>
    8003c66a:	003b1793          	slli	a5,s6,0x3
    8003c66e:	97b6                	add	a5,a5,a3
    8003c670:	0007ba83          	ld	s5,0(a5) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    8003c674:	fe0a88e3          	beqz	s5,8003c664 <JS_WriteObjectRec+0xf08>
quickjs-nuttx/quickjs.c:34937
            assert(i < a->len);
    8003c678:	00bb6863          	bltu	s6,a1,8003c688 <JS_WriteObjectRec+0xf2c>
    8003c67c:	65a5                	lui	a1,0x9
    8003c67e:	4601                	li	a2,0
    8003c680:	87958593          	addi	a1,a1,-1927 # 8879 <asinh-0x7fff7787>
    8003c684:	b2cff06f          	j	8003b9b0 <JS_WriteObjectRec+0x254>
quickjs-nuttx/quickjs.c:34938
            len = a->len * LIMB_DIGITS;
    8003c688:	47cd                	li	a5,19
    8003c68a:	02f585b3          	mul	a1,a1,a5
quickjs-nuttx/quickjs.c:34940
            j = 0;
    8003c68e:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:34943
                v /= 10;
    8003c690:	47a9                	li	a5,10
    8003c692:	02faf733          	remu	a4,s5,a5
quickjs-nuttx/quickjs.c:34941
            while ((v % 10) == 0) {
    8003c696:	cb19                	beqz	a4,8003c6ac <JS_WriteObjectRec+0xf50>
quickjs-nuttx/quickjs.c:34945
            len -= j;
    8003c698:	41258733          	sub	a4,a1,s2
quickjs-nuttx/quickjs.c:34946
            assert(len > 0);
    8003c69c:	01259c63          	bne	a1,s2,8003c6b4 <JS_WriteObjectRec+0xf58>
    8003c6a0:	65a5                	lui	a1,0x9
    8003c6a2:	4601                	li	a2,0
    8003c6a4:	88258593          	addi	a1,a1,-1918 # 8882 <asinh-0x7fff777e>
    8003c6a8:	b08ff06f          	j	8003b9b0 <JS_WriteObjectRec+0x254>
quickjs-nuttx/quickjs.c:34943
                v /= 10;
    8003c6ac:	02fadab3          	divu	s5,s5,a5
quickjs-nuttx/quickjs.c:34942
                j++;
    8003c6b0:	0905                	addi	s2,s2,1
quickjs-nuttx/quickjs.c:34943
                v /= 10;
    8003c6b2:	b7c5                	j	8003c692 <JS_WriteObjectRec+0xf36>
quickjs-nuttx/quickjs.c:34947
            if (len > INT32_MAX) {
    8003c6b4:	800007b7          	lui	a5,0x80000
    8003c6b8:	fff7c793          	not	a5,a5
    8003c6bc:	f2e7e2e3          	bltu	a5,a4,8003c5e0 <JS_WriteObjectRec+0xe84>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c6c0:	0007059b          	sext.w	a1,a4
    8003c6c4:	854e                	mv	a0,s3
    8003c6c6:	e0acc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteBigNum():
quickjs-nuttx/quickjs.c:34956
            for(; i < a->len; i++) {
    8003c6ca:	84da                	mv	s1,s6
quickjs-nuttx/quickjs.c:34954
            v8 = 0;
    8003c6cc:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:34953
            bpos = 0;
    8003c6ce:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:34961
                for(; j < LIMB_DIGITS; j++) {
    8003c6d0:	4dc9                	li	s11,18
quickjs-nuttx/quickjs.c:34962
                    d = v % 10;
    8003c6d2:	4ca9                	li	s9,10
    8003c6d4:	4d4d                	li	s10,19
quickjs-nuttx/quickjs.c:34956
            for(; i < a->len; i++) {
    8003c6d6:	020a3703          	ld	a4,32(s4)
    8003c6da:	00e4e963          	bltu	s1,a4,8003c6ec <JS_WriteObjectRec+0xf90>
quickjs-nuttx/quickjs.c:34974
            if (bpos) {
    8003c6de:	e399                	bnez	a5,8003c6e4 <JS_WriteObjectRec+0xf88>
    8003c6e0:	98aff06f          	j	8003b86a <JS_WriteObjectRec+0x10e>
quickjs-nuttx/quickjs.c:34975
                dbuf_putc(&s->dbuf, v8);
    8003c6e4:	85de                	mv	a1,s7
    8003c6e6:	854e                	mv	a0,s3
    8003c6e8:	91aff06f          	j	8003b802 <JS_WriteObjectRec+0xa6>
quickjs-nuttx/quickjs.c:34957
                if (i != i0) {
    8003c6ec:	01648a63          	beq	s1,s6,8003c700 <JS_WriteObjectRec+0xfa4>
quickjs-nuttx/quickjs.c:34958
                    v = a->tab[i];
    8003c6f0:	028a3703          	ld	a4,40(s4)
    8003c6f4:	00349693          	slli	a3,s1,0x3
quickjs-nuttx/quickjs.c:34959
                    j = 0;
    8003c6f8:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:34958
                    v = a->tab[i];
    8003c6fa:	9736                	add	a4,a4,a3
    8003c6fc:	00073a83          	ld	s5,0(a4)
quickjs-nuttx/quickjs.c:34959
                    j = 0;
    8003c700:	8c4a                	mv	s8,s2
    8003c702:	a811                	j	8003c716 <JS_WriteObjectRec+0xfba>
quickjs-nuttx/quickjs.c:34962
                    d = v % 10;
    8003c704:	039af5b3          	remu	a1,s5,s9
quickjs-nuttx/quickjs.c:34963
                    v /= 10;
    8003c708:	039adab3          	divu	s5,s5,s9
quickjs-nuttx/quickjs.c:34964
                    if (bpos == 0) {
    8003c70c:	ef99                	bnez	a5,8003c72a <JS_WriteObjectRec+0xfce>
quickjs-nuttx/quickjs.c:34965
                        v8 = d;
    8003c70e:	0ff5fb93          	zext.b	s7,a1
quickjs-nuttx/quickjs.c:34966
                        bpos = 1;
    8003c712:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:34961
                for(; j < LIMB_DIGITS; j++) {
    8003c714:	0c05                	addi	s8,s8,1
    8003c716:	ff8df7e3          	bgeu	s11,s8,8003c704 <JS_WriteObjectRec+0xfa8>
    8003c71a:	4701                	li	a4,0
    8003c71c:	012d6463          	bltu	s10,s2,8003c724 <JS_WriteObjectRec+0xfc8>
    8003c720:	412d0733          	sub	a4,s10,s2
    8003c724:	993a                	add	s2,s2,a4
quickjs-nuttx/quickjs.c:34956
            for(; i < a->len; i++) {
    8003c726:	0485                	addi	s1,s1,1
    8003c728:	b77d                	j	8003c6d6 <JS_WriteObjectRec+0xf7a>
quickjs-nuttx/quickjs.c:34968
                        dbuf_putc(&s->dbuf, v8 | (d << 4));
    8003c72a:	0592                	slli	a1,a1,0x4
    8003c72c:	0175e5b3          	or	a1,a1,s7
    8003c730:	854e                	mv	a0,s3
    8003c732:	3b0150ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:34969
                        bpos = 0;
    8003c736:	4781                	li	a5,0
    8003c738:	bff1                	j	8003c714 <JS_WriteObjectRec+0xfb8>

000000008003c73a <JS_WriteObject2>:
JS_WriteObject2():
quickjs-nuttx/quickjs.c:35424
{
    8003c73a:	716d                	addi	sp,sp,-272
    8003c73c:	e222                	sd	s0,256(sp)
    8003c73e:	f1d2                	sd	s4,224(sp)
    8003c740:	842a                	mv	s0,a0
    8003c742:	e032                	sd	a2,0(sp)
    8003c744:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:35427
    memset(s, 0, sizeof(*s));
    8003c746:	08800613          	li	a2,136
    8003c74a:	4581                	li	a1,0
    8003c74c:	00a8                	addi	a0,sp,72
quickjs-nuttx/quickjs.c:35424
{
    8003c74e:	fda6                	sd	s1,248(sp)
    8003c750:	f9ca                	sd	s2,240(sp)
    8003c752:	84ba                	mv	s1,a4
    8003c754:	f5ce                	sd	s3,232(sp)
    8003c756:	e606                	sd	ra,264(sp)
    8003c758:	89be                	mv	s3,a5
    8003c75a:	edd6                	sd	s5,216(sp)
    8003c75c:	e9da                	sd	s6,208(sp)
    8003c75e:	e436                	sd	a3,8(sp)
    8003c760:	8942                	mv	s2,a6
quickjs-nuttx/quickjs.c:35427
    memset(s, 0, sizeof(*s));
    8003c762:	4e0270ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:35430
    s->byte_swap = ((flags & JS_WRITE_OBJ_BSWAP) != 0);
    8003c766:	4014d79b          	sraiw	a5,s1,0x1
    8003c76a:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:35431
    s->allow_bytecode = ((flags & JS_WRITE_OBJ_BYTECODE) != 0);
    8003c76c:	0014f713          	andi	a4,s1,1
quickjs-nuttx/quickjs.c:35430
    s->byte_swap = ((flags & JS_WRITE_OBJ_BSWAP) != 0);
    8003c770:	06f10c23          	sb	a5,120(sp)
quickjs-nuttx/quickjs.c:35432
    s->allow_sab = ((flags & JS_WRITE_OBJ_SAB) != 0);
    8003c774:	4024d79b          	sraiw	a5,s1,0x2
quickjs-nuttx/quickjs.c:35433
    s->allow_reference = ((flags & JS_WRITE_OBJ_REFERENCE) != 0);
    8003c778:	4034d49b          	sraiw	s1,s1,0x3
quickjs-nuttx/quickjs.c:35432
    s->allow_sab = ((flags & JS_WRITE_OBJ_SAB) != 0);
    8003c77c:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:35433
    s->allow_reference = ((flags & JS_WRITE_OBJ_REFERENCE) != 0);
    8003c77e:	8885                	andi	s1,s1,1
quickjs-nuttx/quickjs.c:35432
    s->allow_sab = ((flags & JS_WRITE_OBJ_SAB) != 0);
    8003c780:	06f10d23          	sb	a5,122(sp)
quickjs-nuttx/quickjs.c:35428
    s->ctx = ctx;
    8003c784:	e0a2                	sd	s0,64(sp)
quickjs-nuttx/quickjs.c:35431
    s->allow_bytecode = ((flags & JS_WRITE_OBJ_BYTECODE) != 0);
    8003c786:	06e10ca3          	sb	a4,121(sp)
quickjs-nuttx/quickjs.c:35433
    s->allow_reference = ((flags & JS_WRITE_OBJ_REFERENCE) != 0);
    8003c78a:	06910da3          	sb	s1,123(sp)
quickjs-nuttx/quickjs.c:35438
        s->first_atom = 1;
    8003c78e:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:35435
    if (s->allow_bytecode)
    8003c790:	c319                	beqz	a4,8003c796 <JS_WriteObject2+0x5c>
    8003c792:	0e300793          	li	a5,227
quickjs-nuttx/quickjs.c:35439
    js_dbuf_init(ctx, &s->dbuf);
    8003c796:	00ac                	addi	a1,sp,72
    8003c798:	8522                	mv	a0,s0
    8003c79a:	debe                	sw	a5,124(sp)
    8003c79c:	d72cc0ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:35442
    if (JS_WriteObjectRec(s, obj))
    8003c7a0:	6582                	ld	a1,0(sp)
    8003c7a2:	6622                	ld	a2,8(sp)
    8003c7a4:	0088                	addi	a0,sp,64
js_object_list_init():
quickjs-nuttx/quickjs.c:34459
    memset(s, 0, sizeof(*s));
    8003c7a6:	f902                	sd	zero,176(sp)
    8003c7a8:	fd02                	sd	zero,184(sp)
    8003c7aa:	e182                	sd	zero,192(sp)
    8003c7ac:	e582                	sd	zero,200(sp)
JS_WriteObject2():
quickjs-nuttx/quickjs.c:35442
    if (JS_WriteObjectRec(s, obj))
    8003c7ae:	faffe0ef          	jal	ra,8003b75c <JS_WriteObjectRec>
    8003c7b2:	84aa                	mv	s1,a0
    8003c7b4:	e921                	bnez	a0,8003c804 <JS_WriteObject2+0xca>
JS_WriteObjectAtoms():
quickjs-nuttx/quickjs.c:35385
    JSRuntime *rt = s->ctx->rt;
    8003c7b6:	6b06                	ld	s6,64(sp)
quickjs-nuttx/quickjs.c:35390
    dbuf1 = s->dbuf;
    8003c7b8:	03000613          	li	a2,48
    8003c7bc:	00ac                	addi	a1,sp,72
    8003c7be:	0808                	addi	a0,sp,16
quickjs-nuttx/quickjs.c:35385
    JSRuntime *rt = s->ctx->rt;
    8003c7c0:	018b3a83          	ld	s5,24(s6)
quickjs-nuttx/quickjs.c:35390
    dbuf1 = s->dbuf;
    8003c7c4:	5e8270ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:35391
    js_dbuf_init(s->ctx, &s->dbuf);
    8003c7c8:	00ac                	addi	a1,sp,72
    8003c7ca:	855a                	mv	a0,s6
    8003c7cc:	d42cc0ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:35394
    if (s->byte_swap)
    8003c7d0:	07814783          	lbu	a5,120(sp)
quickjs-nuttx/quickjs.c:35393
    version = BC_VERSION;
    8003c7d4:	4589                	li	a1,2
quickjs-nuttx/quickjs.c:35394
    if (s->byte_swap)
    8003c7d6:	c399                	beqz	a5,8003c7dc <JS_WriteObject2+0xa2>
quickjs-nuttx/quickjs.c:35395
        version ^= BC_BE_VERSION;
    8003c7d8:	04200593          	li	a1,66
bc_put_u8():
quickjs-nuttx/quickjs.c:34632
    dbuf_putc(&s->dbuf, v);
    8003c7dc:	00a8                	addi	a0,sp,72
    8003c7de:	304150ef          	jal	ra,80051ae2 <dbuf_putc>
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    8003c7e2:	45ea                	lw	a1,152(sp)
    8003c7e4:	00a8                	addi	a0,sp,72
    8003c7e6:	ceacc0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteObjectAtoms():
quickjs-nuttx/quickjs.c:35399
    for(i = 0; i < s->idx_to_atom_count; i++) {
    8003c7ea:	47ea                	lw	a5,152(sp)
    8003c7ec:	04f4cb63          	blt	s1,a5,8003c842 <JS_WriteObject2+0x108>
quickjs-nuttx/quickjs.c:35409
    if (dbuf_realloc(&dbuf1, dbuf1.size + atoms_size))
    8003c7f0:	44c6                	lw	s1,80(sp)
    8003c7f2:	65e2                	ld	a1,24(sp)
    8003c7f4:	0808                	addi	a0,sp,16
    8003c7f6:	95a6                	add	a1,a1,s1
    8003c7f8:	1b6150ef          	jal	ra,800519ae <dbuf_realloc>
    8003c7fc:	c13d                	beqz	a0,8003c862 <JS_WriteObject2+0x128>
quickjs-nuttx/quickjs.c:35418
    dbuf_free(&dbuf1);
    8003c7fe:	0808                	addi	a0,sp,16
    8003c800:	3a6150ef          	jal	ra,80051ba6 <dbuf_free>
js_object_list_end():
quickjs-nuttx/quickjs.c:34540
    js_free(ctx, s->object_tab);
    8003c804:	75ca                	ld	a1,176(sp)
    8003c806:	8522                	mv	a0,s0
    8003c808:	feece0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:34541
    js_free(ctx, s->hash_table);
    8003c80c:	658e                	ld	a1,192(sp)
    8003c80e:	8522                	mv	a0,s0
    8003c810:	fe6ce0ef          	jal	ra,8000aff6 <js_free>
JS_WriteObject2():
quickjs-nuttx/quickjs.c:35457
    js_free(ctx, s->atom_to_idx);
    8003c814:	658a                	ld	a1,128(sp)
    8003c816:	8522                	mv	a0,s0
    8003c818:	fdece0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:35458
    js_free(ctx, s->idx_to_atom);
    8003c81c:	65ca                	ld	a1,144(sp)
    8003c81e:	8522                	mv	a0,s0
    8003c820:	fd6ce0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:35459
    dbuf_free(&s->dbuf);
    8003c824:	00a8                	addi	a0,sp,72
    8003c826:	380150ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:35460
    *psize = 0;
    8003c82a:	000a3023          	sd	zero,0(s4)
quickjs-nuttx/quickjs.c:35461
    if (psab_tab)
    8003c82e:	00098463          	beqz	s3,8003c836 <JS_WriteObject2+0xfc>
quickjs-nuttx/quickjs.c:35462
        *psab_tab = NULL;
    8003c832:	0009b023          	sd	zero,0(s3)
quickjs-nuttx/quickjs.c:35463
    if (psab_tab_len)
    8003c836:	08090b63          	beqz	s2,8003c8cc <JS_WriteObject2+0x192>
quickjs-nuttx/quickjs.c:35464
        *psab_tab_len = 0;
    8003c83a:	00093023          	sd	zero,0(s2)
quickjs-nuttx/quickjs.c:35465
    return NULL;
    8003c83e:	4901                	li	s2,0
    8003c840:	a071                	j	8003c8cc <JS_WriteObject2+0x192>
JS_WriteObjectAtoms():
quickjs-nuttx/quickjs.c:35400
        JSAtomStruct *p = rt->atom_array[s->idx_to_atom[i]];
    8003c842:	67ca                	ld	a5,144(sp)
    8003c844:	00249713          	slli	a4,s1,0x2
quickjs-nuttx/quickjs.c:35401
        JS_WriteString(s, p);
    8003c848:	0088                	addi	a0,sp,64
quickjs-nuttx/quickjs.c:35400
        JSAtomStruct *p = rt->atom_array[s->idx_to_atom[i]];
    8003c84a:	97ba                	add	a5,a5,a4
    8003c84c:	0007e703          	lwu	a4,0(a5) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    8003c850:	060ab783          	ld	a5,96(s5)
quickjs-nuttx/quickjs.c:35399
    for(i = 0; i < s->idx_to_atom_count; i++) {
    8003c854:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:35400
        JSAtomStruct *p = rt->atom_array[s->idx_to_atom[i]];
    8003c856:	070e                	slli	a4,a4,0x3
    8003c858:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:35401
        JS_WriteString(s, p);
    8003c85a:	638c                	ld	a1,0(a5)
    8003c85c:	c24cd0ef          	jal	ra,80009c80 <JS_WriteString>
quickjs-nuttx/quickjs.c:35399
    for(i = 0; i < s->idx_to_atom_count; i++) {
    8003c860:	b769                	j	8003c7ea <JS_WriteObject2+0xb0>
quickjs-nuttx/quickjs.c:35411
    memmove(dbuf1.buf + atoms_size, dbuf1.buf, dbuf1.size);
    8003c862:	65c2                	ld	a1,16(sp)
    8003c864:	6662                	ld	a2,24(sp)
    8003c866:	00958533          	add	a0,a1,s1
    8003c86a:	396270ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/quickjs.c:35412
    memcpy(dbuf1.buf, s->dbuf.buf, atoms_size);
    8003c86e:	65a6                	ld	a1,72(sp)
    8003c870:	6542                	ld	a0,16(sp)
    8003c872:	8626                	mv	a2,s1
    8003c874:	538270ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:35413
    dbuf1.size += atoms_size;
    8003c878:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs.c:35414
    dbuf_free(&s->dbuf);
    8003c87a:	00a8                	addi	a0,sp,72
quickjs-nuttx/quickjs.c:35413
    dbuf1.size += atoms_size;
    8003c87c:	94be                	add	s1,s1,a5
    8003c87e:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:35414
    dbuf_free(&s->dbuf);
    8003c880:	326150ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:35415
    s->dbuf = dbuf1;
    8003c884:	03000613          	li	a2,48
    8003c888:	080c                	addi	a1,sp,16
    8003c88a:	00a8                	addi	a0,sp,72
    8003c88c:	520270ef          	jal	ra,80063dac <memcpy>
js_object_list_end():
quickjs-nuttx/quickjs.c:34540
    js_free(ctx, s->object_tab);
    8003c890:	75ca                	ld	a1,176(sp)
    8003c892:	8522                	mv	a0,s0
    8003c894:	f62ce0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:34541
    js_free(ctx, s->hash_table);
    8003c898:	658e                	ld	a1,192(sp)
    8003c89a:	8522                	mv	a0,s0
    8003c89c:	f5ace0ef          	jal	ra,8000aff6 <js_free>
JS_WriteObject2():
quickjs-nuttx/quickjs.c:35447
    js_free(ctx, s->atom_to_idx);
    8003c8a0:	658a                	ld	a1,128(sp)
    8003c8a2:	8522                	mv	a0,s0
    8003c8a4:	f52ce0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:35448
    js_free(ctx, s->idx_to_atom);
    8003c8a8:	65ca                	ld	a1,144(sp)
    8003c8aa:	8522                	mv	a0,s0
    8003c8ac:	f4ace0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:35449
    *psize = s->dbuf.size;
    8003c8b0:	67c6                	ld	a5,80(sp)
    8003c8b2:	00fa3023          	sd	a5,0(s4)
quickjs-nuttx/quickjs.c:35450
    if (psab_tab)
    8003c8b6:	00098563          	beqz	s3,8003c8c0 <JS_WriteObject2+0x186>
quickjs-nuttx/quickjs.c:35451
        *psab_tab = s->sab_tab;
    8003c8ba:	778a                	ld	a5,160(sp)
    8003c8bc:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/quickjs.c:35452
    if (psab_tab_len)
    8003c8c0:	00090563          	beqz	s2,8003c8ca <JS_WriteObject2+0x190>
quickjs-nuttx/quickjs.c:35453
        *psab_tab_len = s->sab_tab_len;
    8003c8c4:	57aa                	lw	a5,168(sp)
    8003c8c6:	00f93023          	sd	a5,0(s2)
quickjs-nuttx/quickjs.c:35454
    return s->dbuf.buf;
    8003c8ca:	6926                	ld	s2,72(sp)
quickjs-nuttx/quickjs.c:35466
}
    8003c8cc:	60b2                	ld	ra,264(sp)
    8003c8ce:	6412                	ld	s0,256(sp)
    8003c8d0:	74ee                	ld	s1,248(sp)
    8003c8d2:	79ae                	ld	s3,232(sp)
    8003c8d4:	7a0e                	ld	s4,224(sp)
    8003c8d6:	6aee                	ld	s5,216(sp)
    8003c8d8:	6b4e                	ld	s6,208(sp)
    8003c8da:	854a                	mv	a0,s2
    8003c8dc:	794e                	ld	s2,240(sp)
    8003c8de:	6151                	addi	sp,sp,272
    8003c8e0:	8082                	ret

000000008003c8e2 <JS_WriteObject>:
JS_WriteObject():
quickjs-nuttx/quickjs.c:35470
{
    8003c8e2:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:35471
    return JS_WriteObject2(ctx, psize, obj, flags, NULL, NULL);
    8003c8e4:	4801                	li	a6,0
    8003c8e6:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:35472
}
    8003c8e8:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:35471
    return JS_WriteObject2(ctx, psize, obj, flags, NULL, NULL);
    8003c8ea:	e51ff06f          	j	8003c73a <JS_WriteObject2>

000000008003c8ee <JS_GetOwnPropertyNames2>:
JS_GetOwnPropertyNames2():
quickjs-nuttx/quickjs.c:37415
{
    8003c8ee:	714d                	addi	sp,sp,-336
    8003c8f0:	e2a2                	sd	s0,320(sp)
    8003c8f2:	f252                	sd	s4,288(sp)
    8003c8f4:	ee56                	sd	s5,280(sp)
    8003c8f6:	fde6                	sd	s9,248(sp)
    8003c8f8:	e686                	sd	ra,328(sp)
    8003c8fa:	fe26                	sd	s1,312(sp)
    8003c8fc:	fa4a                	sd	s2,304(sp)
    8003c8fe:	f64e                	sd	s3,296(sp)
    8003c900:	ea5a                	sd	s6,272(sp)
    8003c902:	e65e                	sd	s7,264(sp)
    8003c904:	e262                	sd	s8,256(sp)
    8003c906:	f9ea                	sd	s10,240(sp)
    8003c908:	f5ee                	sd	s11,232(sp)
    8003c90a:	842a                	mv	s0,a0
    8003c90c:	e82e                	sd	a1,16(sp)
    8003c90e:	ec32                	sd	a2,24(sp)
    8003c910:	8a36                	mv	s4,a3
    8003c912:	8cba                	mv	s9,a4
quickjs-nuttx/quickjs.c:37421
    r = JS_UNDEFINED;
    8003c914:	e482                	sd	zero,72(sp)
quickjs-nuttx/quickjs.c:37423
    obj = JS_ToObject(ctx, obj1);
    8003c916:	fa4f30ef          	jal	ra,800300ba <JS_ToObject>
    8003c91a:	fc2a                	sd	a0,56(sp)
    8003c91c:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:37424
    if (JS_IsException(obj))
    8003c91e:	0005879b          	sext.w	a5,a1
    8003c922:	4a99                	li	s5,6
    8003c924:	03579563          	bne	a5,s5,8003c94e <JS_GetOwnPropertyNames2+0x60>
quickjs-nuttx/quickjs.c:37425
        return JS_EXCEPTION;
    8003c928:	f502                	sd	zero,168(sp)
    8003c92a:	f93e                	sd	a5,176(sp)
quickjs-nuttx/quickjs.c:37490 (discriminator 1)
}
    8003c92c:	60b6                	ld	ra,328(sp)
    8003c92e:	6416                	ld	s0,320(sp)
    8003c930:	752a                	ld	a0,168(sp)
    8003c932:	75ca                	ld	a1,176(sp)
    8003c934:	74f2                	ld	s1,312(sp)
    8003c936:	7952                	ld	s2,304(sp)
    8003c938:	79b2                	ld	s3,296(sp)
    8003c93a:	7a12                	ld	s4,288(sp)
    8003c93c:	6af2                	ld	s5,280(sp)
    8003c93e:	6b52                	ld	s6,272(sp)
    8003c940:	6bb2                	ld	s7,264(sp)
    8003c942:	6c12                	ld	s8,256(sp)
    8003c944:	7cee                	ld	s9,248(sp)
    8003c946:	7d4e                	ld	s10,240(sp)
    8003c948:	7dae                	ld	s11,232(sp)
    8003c94a:	6171                	addi	sp,sp,336
    8003c94c:	8082                	ret
quickjs-nuttx/quickjs.c:37427
    if (JS_GetOwnPropertyNamesInternal(ctx, &atoms, &len, p, flags & ~JS_GPN_ENUM_ONLY))
    8003c94e:	86aa                	mv	a3,a0
    8003c950:	84aa                	mv	s1,a0
    8003c952:	892e                	mv	s2,a1
    8003c954:	fefa7713          	andi	a4,s4,-17
    8003c958:	1070                	addi	a2,sp,44
    8003c95a:	180c                	addi	a1,sp,48
    8003c95c:	8522                	mv	a0,s0
    8003c95e:	f60fb0ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
quickjs-nuttx/quickjs.c:37421
    r = JS_UNDEFINED;
    8003c962:	4b0d                	li	s6,3
quickjs-nuttx/quickjs.c:37427
    if (JS_GetOwnPropertyNamesInternal(ctx, &atoms, &len, p, flags & ~JS_GPN_ENUM_ONLY))
    8003c964:	e14d                	bnez	a0,8003ca06 <JS_GetOwnPropertyNames2+0x118>
quickjs-nuttx/quickjs.c:37429
    r = JS_NewArray(ctx);
    8003c966:	8522                	mv	a0,s0
    8003c968:	8f3df0ef          	jal	ra,8001c25a <JS_NewArray>
    8003c96c:	e4aa                	sd	a0,72(sp)
    8003c96e:	e8ae                	sd	a1,80(sp)
quickjs-nuttx/quickjs.c:37430
    if (JS_IsException(r))
    8003c970:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:37429
    r = JS_NewArray(ctx);
    8003c974:	89ae                	mv	s3,a1
    8003c976:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:37430
    if (JS_IsException(r))
    8003c978:	09578763          	beq	a5,s5,8003ca06 <JS_GetOwnPropertyNames2+0x118>
quickjs-nuttx/quickjs.c:37434
        if (flags & JS_GPN_ENUM_ONLY) {
    8003c97c:	010a7793          	andi	a5,s4,16
quickjs-nuttx/quickjs.c:37432
    for(j = i = 0; i < len; i++) {
    8003c980:	4c01                	li	s8,0
    8003c982:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:37434
        if (flags & JS_GPN_ENUM_ONLY) {
    8003c984:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:37457
            if (JS_IsException(val))
    8003c986:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:37448
        switch(kind) {
    8003c988:	4d89                	li	s11,2
quickjs-nuttx/quickjs.c:37432 (discriminator 1)
    for(j = i = 0; i < len; i++) {
    8003c98a:	5732                	lw	a4,44(sp)
quickjs-nuttx/quickjs.c:37433 (discriminator 1)
        JSAtom atom = atoms[i].atom;
    8003c98c:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:37432 (discriminator 1)
    for(j = i = 0; i < len; i++) {
    8003c98e:	02ebe063          	bltu	s7,a4,8003c9ae <JS_GetOwnPropertyNames2+0xc0>
quickjs-nuttx/quickjs.c:37487
    js_free_prop_enum(ctx, atoms, len);
    8003c992:	5632                	lw	a2,44(sp)
    8003c994:	75c2                	ld	a1,48(sp)
    8003c996:	8522                	mv	a0,s0
    8003c998:	fc0ce0ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:37488
    JS_FreeValue(ctx, obj);
    8003c99c:	75e2                	ld	a1,56(sp)
    8003c99e:	6606                	ld	a2,64(sp)
    8003c9a0:	8522                	mv	a0,s0
    8003c9a2:	dfdce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37489
    return r;
    8003c9a6:	67a6                	ld	a5,72(sp)
    8003c9a8:	f95a                	sd	s6,176(sp)
    8003c9aa:	f53e                	sd	a5,168(sp)
    8003c9ac:	b741                	j	8003c92c <JS_GetOwnPropertyNames2+0x3e>
quickjs-nuttx/quickjs.c:37433
        JSAtom atom = atoms[i].atom;
    8003c9ae:	020b9693          	slli	a3,s7,0x20
    8003c9b2:	01d6d713          	srli	a4,a3,0x1d
    8003c9b6:	97ba                	add	a5,a5,a4
    8003c9b8:	0047aa83          	lw	s5,4(a5)
quickjs-nuttx/quickjs.c:37434
        if (flags & JS_GPN_ENUM_ONLY) {
    8003c9bc:	67a2                	ld	a5,8(sp)
    8003c9be:	c78d                	beqz	a5,8003c9e8 <JS_GetOwnPropertyNames2+0xfa>
quickjs-nuttx/quickjs.c:37439
            res = JS_GetOwnPropertyInternal(ctx, &desc, p, atom);
    8003c9c0:	86d6                	mv	a3,s5
    8003c9c2:	8626                	mv	a2,s1
    8003c9c4:	112c                	addi	a1,sp,168
    8003c9c6:	8522                	mv	a0,s0
    8003c9c8:	fa8da0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:37440
            if (res < 0)
    8003c9cc:	02054d63          	bltz	a0,8003ca06 <JS_GetOwnPropertyNames2+0x118>
quickjs-nuttx/quickjs.c:37442
            if (!res)
    8003c9d0:	c901                	beqz	a0,8003c9e0 <JS_GetOwnPropertyNames2+0xf2>
quickjs-nuttx/quickjs.c:37444
            js_free_desc(ctx, &desc);
    8003c9d2:	112c                	addi	a1,sp,168
    8003c9d4:	8522                	mv	a0,s0
    8003c9d6:	90ecf0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:37445
            if (!(desc.flags & JS_PROP_ENUMERABLE))
    8003c9da:	57aa                	lw	a5,168(sp)
    8003c9dc:	8b91                	andi	a5,a5,4
    8003c9de:	e789                	bnez	a5,8003c9e8 <JS_GetOwnPropertyNames2+0xfa>
quickjs-nuttx/quickjs.c:37443
                continue;
    8003c9e0:	8ae2                	mv	s5,s8
quickjs-nuttx/quickjs.c:37432 (discriminator 2)
    for(j = i = 0; i < len; i++) {
    8003c9e2:	2b85                	addiw	s7,s7,1
    8003c9e4:	8c56                	mv	s8,s5
    8003c9e6:	b755                	j	8003c98a <JS_GetOwnPropertyNames2+0x9c>
quickjs-nuttx/quickjs.c:37448
        switch(kind) {
    8003c9e8:	4785                	li	a5,1
    8003c9ea:	02fc8663          	beq	s9,a5,8003ca16 <JS_GetOwnPropertyNames2+0x128>
    8003c9ee:	05bc8463          	beq	s9,s11,8003ca36 <JS_GetOwnPropertyNames2+0x148>
quickjs-nuttx/quickjs.c:37451
            val = JS_AtomToValue(ctx, atom);
    8003c9f2:	85d6                	mv	a1,s5
    8003c9f4:	8522                	mv	a0,s0
    8003c9f6:	8d2e30ef          	jal	ra,8001fac8 <JS_AtomToValue>
    8003c9fa:	ecaa                	sd	a0,88(sp)
    8003c9fc:	8d2e                	mv	s10,a1
quickjs-nuttx/quickjs.c:37457
            if (JS_IsException(val))
    8003c9fe:	000d079b          	sext.w	a5,s10
    8003ca02:	0b479763          	bne	a5,s4,8003cab0 <JS_GetOwnPropertyNames2+0x1c2>
quickjs-nuttx/quickjs.c:37484
    JS_FreeValue(ctx, r);
    8003ca06:	65a6                	ld	a1,72(sp)
    8003ca08:	865a                	mv	a2,s6
    8003ca0a:	8522                	mv	a0,s0
    8003ca0c:	d93ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37485
    r = JS_EXCEPTION;
    8003ca10:	4b19                	li	s6,6
    8003ca12:	e482                	sd	zero,72(sp)
    8003ca14:	bfbd                	j	8003c992 <JS_GetOwnPropertyNames2+0xa4>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003ca16:	4801                	li	a6,0
    8003ca18:	8726                	mv	a4,s1
    8003ca1a:	87ca                	mv	a5,s2
    8003ca1c:	86d6                	mv	a3,s5
    8003ca1e:	85a6                	mv	a1,s1
    8003ca20:	864a                	mv	a2,s2
    8003ca22:	8522                	mv	a0,s0
    8003ca24:	f526                	sd	s1,168(sp)
    8003ca26:	f94a                	sd	s2,176(sp)
    8003ca28:	882da0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003ca2c:	e52a                	sd	a0,136(sp)
    8003ca2e:	e92e                	sd	a1,144(sp)
    8003ca30:	8d2e                	mv	s10,a1
    8003ca32:	ecaa                	sd	a0,88(sp)
    8003ca34:	b7e9                	j	8003c9fe <JS_GetOwnPropertyNames2+0x110>
JS_GetOwnPropertyNames2():
quickjs-nuttx/quickjs.c:37461
            val = JS_NewArray(ctx);
    8003ca36:	8522                	mv	a0,s0
    8003ca38:	823df0ef          	jal	ra,8001c25a <JS_NewArray>
    8003ca3c:	ecaa                	sd	a0,88(sp)
    8003ca3e:	f0ae                	sd	a1,96(sp)
quickjs-nuttx/quickjs.c:37462
            if (JS_IsException(val))
    8003ca40:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:37461
            val = JS_NewArray(ctx);
    8003ca44:	8d2e                	mv	s10,a1
quickjs-nuttx/quickjs.c:37462
            if (JS_IsException(val))
    8003ca46:	fd4780e3          	beq	a5,s4,8003ca06 <JS_GetOwnPropertyNames2+0x118>
quickjs-nuttx/quickjs.c:37464
            key = JS_AtomToValue(ctx, atom);
    8003ca4a:	85d6                	mv	a1,s5
    8003ca4c:	8522                	mv	a0,s0
    8003ca4e:	87ae30ef          	jal	ra,8001fac8 <JS_AtomToValue>
    8003ca52:	f4aa                	sd	a0,104(sp)
    8003ca54:	f8ae                	sd	a1,112(sp)
quickjs-nuttx/quickjs.c:37465
            if (JS_IsException(key))
    8003ca56:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:37464
            key = JS_AtomToValue(ctx, atom);
    8003ca5a:	872a                	mv	a4,a0
    8003ca5c:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:37465
            if (JS_IsException(key))
    8003ca5e:	07468b63          	beq	a3,s4,8003cad4 <JS_GetOwnPropertyNames2+0x1e6>
quickjs-nuttx/quickjs.c:37467
            if (JS_CreateDataPropertyUint32(ctx, val, 0, key, JS_PROP_THROW) < 0)
    8003ca62:	65e6                	ld	a1,88(sp)
    8003ca64:	7606                	ld	a2,96(sp)
    8003ca66:	6811                	lui	a6,0x4
    8003ca68:	4681                	li	a3,0
    8003ca6a:	8522                	mv	a0,s0
    8003ca6c:	b96f40ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    8003ca70:	06054263          	bltz	a0,8003cad4 <JS_GetOwnPropertyNames2+0x1e6>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003ca74:	8726                	mv	a4,s1
    8003ca76:	87ca                	mv	a5,s2
    8003ca78:	86d6                	mv	a3,s5
    8003ca7a:	4801                	li	a6,0
    8003ca7c:	85a6                	mv	a1,s1
    8003ca7e:	864a                	mv	a2,s2
    8003ca80:	8522                	mv	a0,s0
    8003ca82:	f526                	sd	s1,168(sp)
    8003ca84:	f94a                	sd	s2,176(sp)
    8003ca86:	824da0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003ca8a:	ed2a                	sd	a0,152(sp)
    8003ca8c:	f12e                	sd	a1,160(sp)
    8003ca8e:	fcaa                	sd	a0,120(sp)
    8003ca90:	e12e                	sd	a1,128(sp)
JS_GetOwnPropertyNames2():
quickjs-nuttx/quickjs.c:37470
            if (JS_IsException(value))
    8003ca92:	0005869b          	sext.w	a3,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003ca96:	872a                	mv	a4,a0
    8003ca98:	87ae                	mv	a5,a1
JS_GetOwnPropertyNames2():
quickjs-nuttx/quickjs.c:37470
    8003ca9a:	03468d63          	beq	a3,s4,8003cad4 <JS_GetOwnPropertyNames2+0x1e6>
quickjs-nuttx/quickjs.c:37472
            if (JS_CreateDataPropertyUint32(ctx, val, 1, value, JS_PROP_THROW) < 0)
    8003ca9e:	65e6                	ld	a1,88(sp)
    8003caa0:	7606                	ld	a2,96(sp)
    8003caa2:	6811                	lui	a6,0x4
    8003caa4:	4685                	li	a3,1
    8003caa6:	8522                	mv	a0,s0
    8003caa8:	b5af40ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    8003caac:	02054463          	bltz	a0,8003cad4 <JS_GetOwnPropertyNames2+0x1e6>
quickjs-nuttx/quickjs.c:37476
        if (JS_CreateDataPropertyUint32(ctx, r, j++, val, 0) < 0)
    8003cab0:	6766                	ld	a4,88(sp)
    8003cab2:	65a6                	ld	a1,72(sp)
    8003cab4:	020c1693          	slli	a3,s8,0x20
    8003cab8:	4801                	li	a6,0
    8003caba:	87ea                	mv	a5,s10
    8003cabc:	9281                	srli	a3,a3,0x20
    8003cabe:	864e                	mv	a2,s3
    8003cac0:	8522                	mv	a0,s0
    8003cac2:	001c0a9b          	addiw	s5,s8,1
    8003cac6:	e8ce                	sd	s3,80(sp)
    8003cac8:	f0ea                	sd	s10,96(sp)
    8003caca:	b38f40ef          	jal	ra,80030e02 <JS_CreateDataPropertyUint32>
    8003cace:	f0055ae3          	bgez	a0,8003c9e2 <JS_GetOwnPropertyNames2+0xf4>
    8003cad2:	bf15                	j	8003ca06 <JS_GetOwnPropertyNames2+0x118>
quickjs-nuttx/quickjs.c:37482
    JS_FreeValue(ctx, val);
    8003cad4:	65e6                	ld	a1,88(sp)
    8003cad6:	7606                	ld	a2,96(sp)
    8003cad8:	8522                	mv	a0,s0
    8003cada:	cc5ce0ef          	jal	ra,8000b79e <JS_FreeValue>
    8003cade:	b725                	j	8003ca06 <JS_GetOwnPropertyNames2+0x118>

000000008003cae0 <js_object_keys>:
js_object_keys():
quickjs-nuttx/quickjs.c:37508
{
    8003cae0:	863a                	mv	a2,a4
quickjs-nuttx/quickjs.c:37509
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cae2:	620c                	ld	a1,0(a2)
    8003cae4:	6610                	ld	a2,8(a2)
quickjs-nuttx/quickjs.c:37508
{
    8003cae6:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:37509
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cae8:	873e                	mv	a4,a5
    8003caea:	46c5                	li	a3,17
quickjs-nuttx/quickjs.c:37511
}
    8003caec:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:37509
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003caee:	e01ff06f          	j	8003c8ee <JS_GetOwnPropertyNames2>

000000008003caf2 <js_reflect_ownKeys>:
js_reflect_ownKeys():
quickjs-nuttx/quickjs.c:45674
    if (JS_VALUE_GET_TAG(argv[0]) != JS_TAG_OBJECT)
    8003caf2:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:45673
{
    8003caf4:	87ba                	mv	a5,a4
quickjs-nuttx/quickjs.c:45674
    if (JS_VALUE_GET_TAG(argv[0]) != JS_TAG_OBJECT)
    8003caf6:	577d                	li	a4,-1
    8003caf8:	0006069b          	sext.w	a3,a2
quickjs-nuttx/quickjs.c:45673
{
    8003cafc:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs.c:45674
    if (JS_VALUE_GET_TAG(argv[0]) != JS_TAG_OBJECT)
    8003cafe:	00e68563          	beq	a3,a4,8003cb08 <js_reflect_ownKeys+0x16>
quickjs-nuttx/quickjs.c:45679
}
    8003cb02:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:45675
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8003cb04:	926dc06f          	j	80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:45676
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb08:	638c                	ld	a1,0(a5)
    8003cb0a:	4701                	li	a4,0
    8003cb0c:	468d                	li	a3,3
quickjs-nuttx/quickjs.c:45679
}
    8003cb0e:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:45676
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb10:	ddfff06f          	j	8003c8ee <JS_GetOwnPropertyNames2>

000000008003cb14 <js_object_getOwnPropertySymbols>:
js_object_getOwnPropertySymbols():
quickjs-nuttx/quickjs.c:37501
{
    8003cb14:	87ba                	mv	a5,a4
quickjs-nuttx/quickjs.c:37502
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb16:	638c                	ld	a1,0(a5)
    8003cb18:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:37501
{
    8003cb1a:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:37502
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb1c:	4701                	li	a4,0
    8003cb1e:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:37504
}
    8003cb20:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:37502
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb22:	dcdff06f          	j	8003c8ee <JS_GetOwnPropertyNames2>

000000008003cb26 <js_object_getOwnPropertyNames>:
js_object_getOwnPropertyNames():
quickjs-nuttx/quickjs.c:37494
{
    8003cb26:	87ba                	mv	a5,a4
quickjs-nuttx/quickjs.c:37495
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb28:	638c                	ld	a1,0(a5)
    8003cb2a:	6790                	ld	a2,8(a5)
quickjs-nuttx/quickjs.c:37494
{
    8003cb2c:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:37495
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb2e:	4701                	li	a4,0
    8003cb30:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:37497
}
    8003cb32:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:37495
    return JS_GetOwnPropertyNames2(ctx, argv[0],
    8003cb34:	dbbff06f          	j	8003c8ee <JS_GetOwnPropertyNames2>

000000008003cb38 <js_function_bind>:
js_function_bind():
quickjs-nuttx/quickjs.c:38396
{
    8003cb38:	7115                	addi	sp,sp,-224
    8003cb3a:	e5a6                	sd	s1,200(sp)
    8003cb3c:	fd4e                	sd	s3,184(sp)
    8003cb3e:	f952                	sd	s4,176(sp)
    8003cb40:	ed5e                	sd	s7,152(sp)
    8003cb42:	e566                	sd	s9,136(sp)
    8003cb44:	ed86                	sd	ra,216(sp)
    8003cb46:	e9a2                	sd	s0,208(sp)
    8003cb48:	e1ca                	sd	s2,192(sp)
    8003cb4a:	f556                	sd	s5,168(sp)
    8003cb4c:	f15a                	sd	s6,160(sp)
    8003cb4e:	e962                	sd	s8,144(sp)
    8003cb50:	84aa                	mv	s1,a0
    8003cb52:	e02e                	sd	a1,0(sp)
    8003cb54:	e432                	sd	a2,8(sp)
    8003cb56:	8cb6                	mv	s9,a3
    8003cb58:	8bba                	mv	s7,a4
    8003cb5a:	8a2e                	mv	s4,a1
    8003cb5c:	89b2                	mv	s3,a2
quickjs-nuttx/quickjs.c:38402
    if (check_function(ctx, this_val))
    8003cb5e:	bc1db0ef          	jal	ra,8001871e <check_function>
    8003cb62:	c509                	beqz	a0,8003cb6c <js_function_bind+0x34>
quickjs-nuttx/quickjs.c:38476
    return JS_EXCEPTION;
    8003cb64:	4799                	li	a5,6
    8003cb66:	f082                	sd	zero,96(sp)
    8003cb68:	f4be                	sd	a5,104(sp)
    8003cb6a:	aac5                	j	8003cd5a <js_function_bind+0x222>
quickjs-nuttx/quickjs.c:38405
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    8003cb6c:	64ac                	ld	a1,72(s1)
    8003cb6e:	68b0                	ld	a2,80(s1)
    8003cb70:	842a                	mv	s0,a0
    8003cb72:	46b9                	li	a3,14
    8003cb74:	8526                	mv	a0,s1
    8003cb76:	86edf0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8003cb7a:	e82a                	sd	a0,16(sp)
    8003cb7c:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:38407
    if (JS_IsException(func_obj))
    8003cb7e:	0005871b          	sext.w	a4,a1
    8003cb82:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:38405
    func_obj = JS_NewObjectProtoClass(ctx, ctx->function_proto,
    8003cb84:	8aaa                	mv	s5,a0
    8003cb86:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:38407
    if (JS_IsException(func_obj))
    8003cb88:	fcf70ee3          	beq	a4,a5,8003cb64 <js_function_bind+0x2c>
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8003cb8c:	0009871b          	sext.w	a4,s3
    8003cb90:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:9757
        return FALSE;
    8003cb92:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8003cb94:	00d71663          	bne	a4,a3,8003cba0 <js_function_bind+0x68>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    8003cb98:	000a3783          	ld	a5,0(s4)
    8003cb9c:	93b1                	srli	a5,a5,0x2c
    8003cb9e:	8b85                	andi	a5,a5,1
js_function_bind():
quickjs-nuttx/quickjs.c:38410
    p->is_constructor = JS_IsConstructor(ctx, this_val);
    8003cba0:	005ac703          	lbu	a4,5(s5)
    8003cba4:	0047979b          	slliw	a5,a5,0x4
    8003cba8:	9b3d                	andi	a4,a4,-17
    8003cbaa:	8fd9                	or	a5,a5,a4
    8003cbac:	00fa82a3          	sb	a5,5(s5)
quickjs-nuttx/quickjs.c:38411
    arg_count = max_int(0, argc - 1);
    8003cbb0:	fffc879b          	addiw	a5,s9,-1
    8003cbb4:	8cbe                	mv	s9,a5
    8003cbb6:	0007d363          	bgez	a5,8003cbbc <js_function_bind+0x84>
    8003cbba:	4c81                	li	s9,0
    8003cbbc:	000c8c1b          	sext.w	s8,s9
quickjs-nuttx/quickjs.c:38412
    bf = js_malloc(ctx, sizeof(*bf) + arg_count * sizeof(JSValue));
    8003cbc0:	004c1593          	slli	a1,s8,0x4
    8003cbc4:	02858593          	addi	a1,a1,40
    8003cbc8:	8526                	mv	a0,s1
    8003cbca:	d3add0ef          	jal	ra,8001a104 <js_malloc>
    8003cbce:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:38413
    if (!bf)
    8003cbd0:	1a050e63          	beqz	a0,8003cd8c <js_function_bind+0x254>
quickjs-nuttx/quickjs.c:38415
    bf->func_obj = JS_DupValue(ctx, this_val);
    8003cbd4:	6502                	ld	a0,0(sp)
    8003cbd6:	65a2                	ld	a1,8(sp)
    8003cbd8:	843cd0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003cbdc:	00a93023          	sd	a0,0(s2)
    8003cbe0:	00b93423          	sd	a1,8(s2)
quickjs-nuttx/quickjs.c:38416
    bf->this_val = JS_DupValue(ctx, argv[0]);
    8003cbe4:	000bb503          	ld	a0,0(s7)
    8003cbe8:	008bb583          	ld	a1,8(s7)
    8003cbec:	82fcd0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003cbf0:	00a93823          	sd	a0,16(s2)
    8003cbf4:	00b93c23          	sd	a1,24(s2)
quickjs-nuttx/quickjs.c:38417
    bf->argc = arg_count;
    8003cbf8:	03992023          	sw	s9,32(s2)
quickjs-nuttx/quickjs.c:38418 (discriminator 1)
    for(i = 0; i < arg_count; i++) {
    8003cbfc:	03841163          	bne	s0,s8,8003cc1e <js_function_bind+0xe6>
quickjs-nuttx/quickjs.c:38424
    ret = JS_GetOwnProperty(ctx, NULL, this_val, JS_ATOM_length);
    8003cc00:	6602                	ld	a2,0(sp)
    8003cc02:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:38421
    p->u.bound_function = bf;
    8003cc04:	032ab823          	sd	s2,48(s5)
quickjs-nuttx/quickjs.c:38424
    ret = JS_GetOwnProperty(ctx, NULL, this_val, JS_ATOM_length);
    8003cc08:	03000713          	li	a4,48
    8003cc0c:	4581                	li	a1,0
    8003cc0e:	8526                	mv	a0,s1
    8003cc10:	8c9fb0ef          	jal	ra,800384d8 <JS_GetOwnProperty>
quickjs-nuttx/quickjs.c:38425
    if (ret < 0)
    8003cc14:	16054c63          	bltz	a0,8003cd8c <js_function_bind+0x254>
quickjs-nuttx/quickjs.c:38427
    if (!ret) {
    8003cc18:	e11d                	bnez	a0,8003cc3e <js_function_bind+0x106>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003cc1a:	f802                	sd	zero,48(sp)
    8003cc1c:	a8b1                	j	8003cc78 <js_function_bind+0x140>
js_function_bind():
quickjs-nuttx/quickjs.c:38419 (discriminator 3)
        bf->argv[i] = JS_DupValue(ctx, argv[i + 1]);
    8003cc1e:	00140c9b          	addiw	s9,s0,1
    8003cc22:	004c9793          	slli	a5,s9,0x4
    8003cc26:	97de                	add	a5,a5,s7
    8003cc28:	6388                	ld	a0,0(a5)
    8003cc2a:	678c                	ld	a1,8(a5)
    8003cc2c:	0409                	addi	s0,s0,2
    8003cc2e:	0412                	slli	s0,s0,0x4
    8003cc30:	944a                	add	s0,s0,s2
    8003cc32:	fe8cd0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003cc36:	e408                	sd	a0,8(s0)
    8003cc38:	e80c                	sd	a1,16(s0)
quickjs-nuttx/quickjs.c:38418 (discriminator 3)
    for(i = 0; i < arg_count; i++) {
    8003cc3a:	8466                	mv	s0,s9
    8003cc3c:	b7c1                	j	8003cbfc <js_function_bind+0xc4>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003cc3e:	8752                	mv	a4,s4
    8003cc40:	87ce                	mv	a5,s3
    8003cc42:	864e                	mv	a2,s3
    8003cc44:	4801                	li	a6,0
    8003cc46:	03000693          	li	a3,48
    8003cc4a:	85d2                	mv	a1,s4
    8003cc4c:	8526                	mv	a0,s1
    8003cc4e:	f8d2                	sd	s4,112(sp)
    8003cc50:	fcce                	sd	s3,120(sp)
    8003cc52:	e59d90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003cc56:	f82a                	sd	a0,48(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003cc58:	0005879b          	sext.w	a5,a1
js_function_bind():
quickjs-nuttx/quickjs.c:38431
        if (JS_IsException(len_val))
    8003cc5c:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003cc5e:	862e                	mv	a2,a1
js_function_bind():
quickjs-nuttx/quickjs.c:38431
    8003cc60:	12e78663          	beq	a5,a4,8003cd8c <js_function_bind+0x254>
quickjs-nuttx/quickjs.c:38433
        if (JS_VALUE_GET_TAG(len_val) == JS_TAG_INT) {
    8003cc64:	ef81                	bnez	a5,8003cc7c <js_function_bind+0x144>
quickjs-nuttx/quickjs.c:38435
            int len1 = JS_VALUE_GET_INT(len_val);
    8003cc66:	5742                	lw	a4,48(sp)
quickjs-nuttx/quickjs.c:38436
            if (len1 <= arg_count)
    8003cc68:	00e45463          	bge	s0,a4,8003cc70 <js_function_bind+0x138>
quickjs-nuttx/quickjs.c:38439
                len1 -= arg_count;
    8003cc6c:	408707bb          	subw	a5,a4,s0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003cc70:	ca82                	sw	zero,84(sp)
    8003cc72:	c8be                	sw	a5,80(sp)
    8003cc74:	67c6                	ld	a5,80(sp)
    8003cc76:	f83e                	sd	a5,48(sp)
    8003cc78:	4781                	li	a5,0
    8003cc7a:	a0b1                	j	8003ccc6 <js_function_bind+0x18e>
js_function_bind():
quickjs-nuttx/quickjs.c:38441
        } else if (JS_VALUE_GET_NORM_TAG(len_val) == JS_TAG_FLOAT64) {
    8003cc7c:	471d                	li	a4,7
    8003cc7e:	10e79263          	bne	a5,a4,8003cd82 <js_function_bind+0x24a>
quickjs-nuttx/quickjs.c:38442
            double d = JS_VALUE_GET_FLOAT64(len_val);
    8003cc82:	3542                	fld	fa0,48(sp)
quickjs-nuttx/quickjs.c:38444
                d = 0.0;
    8003cc84:	00000913          	li	s2,0
quickjs-nuttx/quickjs.c:38443
            if (isnan(d)) {
    8003cc88:	a2a527d3          	feq.d	a5,fa0,fa0
    8003cc8c:	cf81                	beqz	a5,8003cca4 <js_function_bind+0x16c>
quickjs-nuttx/quickjs.c:38446
                d = trunc(d);
    8003cc8e:	884c40ef          	jal	ra,80000d12 <trunc>
quickjs-nuttx/quickjs.c:38447
                if (d <= (double)arg_count)
    8003cc92:	d20407d3          	fcvt.d.w	fa5,s0
    8003cc96:	a2f507d3          	fle.d	a5,fa0,fa5
    8003cc9a:	e789                	bnez	a5,8003cca4 <js_function_bind+0x16c>
quickjs-nuttx/quickjs.c:38450
                    d -= (double)arg_count; /* also converts -0 to +0 */
    8003cc9c:	0af577d3          	fsub.d	fa5,fa0,fa5
    8003cca0:	e2078953          	fmv.x.d	s2,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8003cca4:	f20907d3          	fmv.d.x	fa5,s2
    8003cca8:	c20797d3          	fcvt.w.d	a5,fa5,rtz
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003ccac:	d20787d3          	fcvt.d.w	fa5,a5
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    8003ccb0:	0007871b          	sext.w	a4,a5
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003ccb4:	e20786d3          	fmv.x.d	a3,fa5
    8003ccb8:	0d269063          	bne	a3,s2,8003cd78 <js_function_bind+0x240>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8003ccbc:	da82                	sw	zero,116(sp)
    8003ccbe:	4781                	li	a5,0
quickjs-nuttx/quickjs.h:566
    return v;
    8003ccc0:	d8ba                	sw	a4,112(sp)
    8003ccc2:	37c6                	fld	fa5,112(sp)
    8003ccc4:	b83e                	fsd	fa5,48(sp)
js_function_bind():
quickjs-nuttx/quickjs.c:38458
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_length,
    8003ccc6:	7742                	ld	a4,48(sp)
    8003ccc8:	65c2                	ld	a1,16(sp)
    8003ccca:	6662                	ld	a2,24(sp)
    8003cccc:	4805                	li	a6,1
    8003ccce:	03000693          	li	a3,48
    8003ccd2:	8526                	mv	a0,s1
    8003ccd4:	d58db0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003ccd8:	8752                	mv	a4,s4
    8003ccda:	87ce                	mv	a5,s3
    8003ccdc:	03700693          	li	a3,55
    8003cce0:	4801                	li	a6,0
    8003cce2:	85d2                	mv	a1,s4
    8003cce4:	864e                	mv	a2,s3
    8003cce6:	8526                	mv	a0,s1
    8003cce8:	f0d2                	sd	s4,96(sp)
    8003ccea:	f4ce                	sd	s3,104(sp)
    8003ccec:	dbfd90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003ccf0:	f8aa                	sd	a0,112(sp)
    8003ccf2:	fcae                	sd	a1,120(sp)
    8003ccf4:	f02a                	sd	a0,32(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003ccf6:	0005879b          	sext.w	a5,a1
js_function_bind():
quickjs-nuttx/quickjs.c:38462
    if (JS_IsException(name1))
    8003ccfa:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003ccfc:	86ae                	mv	a3,a1
js_function_bind():
quickjs-nuttx/quickjs.c:38462
    8003ccfe:	08e78763          	beq	a5,a4,8003cd8c <js_function_bind+0x254>
quickjs-nuttx/quickjs.c:38464
    if (!JS_IsString(name1)) {
    8003cd02:	5765                	li	a4,-7
    8003cd04:	00e78e63          	beq	a5,a4,8003cd20 <js_function_bind+0x1e8>
quickjs-nuttx/quickjs.c:38465
        JS_FreeValue(ctx, name1);
    8003cd08:	85aa                	mv	a1,a0
    8003cd0a:	8636                	mv	a2,a3
    8003cd0c:	8526                	mv	a0,s1
    8003cd0e:	a91ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38466
        name1 = JS_AtomToString(ctx, JS_ATOM_empty_string);
    8003cd12:	02f00593          	li	a1,47
    8003cd16:	8526                	mv	a0,s1
    8003cd18:	dbbe20ef          	jal	ra,8001fad2 <JS_AtomToString>
    8003cd1c:	f02a                	sd	a0,32(sp)
    8003cd1e:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs.c:38468
    name1 = JS_ConcatString3(ctx, "bound ", name1, "");
    8003cd20:	7602                	ld	a2,32(sp)
    8003cd22:	0002d717          	auipc	a4,0x2d
    8003cd26:	e6670713          	addi	a4,a4,-410 # 80069b88 <qjsc_repl+0x45d8>
    8003cd2a:	00030597          	auipc	a1,0x30
    8003cd2e:	2ee58593          	addi	a1,a1,750 # 8006d018 <qjsc_repl+0x7a68>
    8003cd32:	8526                	mv	a0,s1
    8003cd34:	a7de30ef          	jal	ra,800207b0 <JS_ConcatString3>
quickjs-nuttx/quickjs.c:38469
    if (JS_IsException(name1))
    8003cd38:	0005861b          	sext.w	a2,a1
    8003cd3c:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:38468
    name1 = JS_ConcatString3(ctx, "bound ", name1, "");
    8003cd3e:	872a                	mv	a4,a0
    8003cd40:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:38469
    if (JS_IsException(name1))
    8003cd42:	04d60563          	beq	a2,a3,8003cd8c <js_function_bind+0x254>
quickjs-nuttx/quickjs.c:38471
    JS_DefinePropertyValue(ctx, func_obj, JS_ATOM_name, name1,
    8003cd46:	65c2                	ld	a1,16(sp)
    8003cd48:	6662                	ld	a2,24(sp)
    8003cd4a:	4805                	li	a6,1
    8003cd4c:	03700693          	li	a3,55
    8003cd50:	8526                	mv	a0,s1
    8003cd52:	cdadb0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:38473
    return func_obj;
    8003cd56:	f0d6                	sd	s5,96(sp)
    8003cd58:	f4da                	sd	s6,104(sp)
quickjs-nuttx/quickjs.c:38477 (discriminator 1)
}
    8003cd5a:	60ee                	ld	ra,216(sp)
    8003cd5c:	644e                	ld	s0,208(sp)
    8003cd5e:	7506                	ld	a0,96(sp)
    8003cd60:	75a6                	ld	a1,104(sp)
    8003cd62:	64ae                	ld	s1,200(sp)
    8003cd64:	690e                	ld	s2,192(sp)
    8003cd66:	79ea                	ld	s3,184(sp)
    8003cd68:	7a4a                	ld	s4,176(sp)
    8003cd6a:	7aaa                	ld	s5,168(sp)
    8003cd6c:	7b0a                	ld	s6,160(sp)
    8003cd6e:	6bea                	ld	s7,152(sp)
    8003cd70:	6c4a                	ld	s8,144(sp)
    8003cd72:	6caa                	ld	s9,136(sp)
    8003cd74:	612d                	addi	sp,sp,224
    8003cd76:	8082                	ret
quickjs-nuttx/quickjs.h:230
    return v;
    8003cd78:	f8ca                	sd	s2,112(sp)
    8003cd7a:	0009071b          	sext.w	a4,s2
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8003cd7e:	479d                	li	a5,7
    8003cd80:	b781                	j	8003ccc0 <js_function_bind+0x188>
js_function_bind():
quickjs-nuttx/quickjs.c:38454
            JS_FreeValue(ctx, len_val);
    8003cd82:	85aa                	mv	a1,a0
    8003cd84:	8526                	mv	a0,s1
    8003cd86:	a19ce0ef          	jal	ra,8000b79e <JS_FreeValue>
    8003cd8a:	bd41                	j	8003cc1a <js_function_bind+0xe2>
quickjs-nuttx/quickjs.c:38475
    JS_FreeValue(ctx, func_obj);
    8003cd8c:	65c2                	ld	a1,16(sp)
    8003cd8e:	6662                	ld	a2,24(sp)
    8003cd90:	8526                	mv	a0,s1
    8003cd92:	a0dce0ef          	jal	ra,8000b79e <JS_FreeValue>
    8003cd96:	b3f9                	j	8003cb64 <js_function_bind+0x2c>

000000008003cd98 <JS_CopyDataProperties>:
JS_CopyDataProperties():
quickjs-nuttx/quickjs.c:15461
{
    8003cd98:	716d                	addi	sp,sp,-272
    8003cd9a:	f9ca                	sd	s2,240(sp)
    8003cd9c:	f5ce                	sd	s3,232(sp)
    8003cd9e:	ec3a                	sd	a4,24(sp)
    8003cda0:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:15471
    if (JS_VALUE_GET_TAG(source) != JS_TAG_OBJECT)
    8003cda2:	0007099b          	sext.w	s3,a4
quickjs-nuttx/quickjs.c:15461
{
    8003cda6:	e606                	sd	ra,264(sp)
    8003cda8:	e222                	sd	s0,256(sp)
    8003cdaa:	fda6                	sd	s1,248(sp)
    8003cdac:	f1d2                	sd	s4,224(sp)
    8003cdae:	edd6                	sd	s5,216(sp)
    8003cdb0:	e9da                	sd	s6,208(sp)
    8003cdb2:	e5de                	sd	s7,200(sp)
    8003cdb4:	e1e2                	sd	s8,192(sp)
    8003cdb6:	fd66                	sd	s9,184(sp)
    8003cdb8:	f96a                	sd	s10,176(sp)
    8003cdba:	f02e                	sd	a1,32(sp)
    8003cdbc:	f432                	sd	a2,40(sp)
    8003cdbe:	e836                	sd	a3,16(sp)
    8003cdc0:	e03e                	sd	a5,0(sp)
    8003cdc2:	e442                	sd	a6,8(sp)
quickjs-nuttx/quickjs.c:15471
    if (JS_VALUE_GET_TAG(source) != JS_TAG_OBJECT)
    8003cdc4:	577d                	li	a4,-1
    8003cdc6:	06e99063          	bne	s3,a4,8003ce26 <JS_CopyDataProperties+0x8e>
quickjs-nuttx/quickjs.c:15474
    if (JS_VALUE_GET_TAG(excluded) == JS_TAG_OBJECT)
    8003cdca:	2801                	sext.w	a6,a6
    8003cdcc:	842a                	mv	s0,a0
    8003cdce:	8bc6                	mv	s7,a7
quickjs-nuttx/quickjs.c:15466
    JSObject *pexcl = NULL;
    8003cdd0:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:15474
    if (JS_VALUE_GET_TAG(excluded) == JS_TAG_OBJECT)
    8003cdd2:	01381363          	bne	a6,s3,8003cdd8 <JS_CopyDataProperties+0x40>
quickjs-nuttx/quickjs.c:15475
        pexcl = JS_VALUE_GET_OBJ(excluded);
    8003cdd6:	8a3e                	mv	s4,a5
    8003cdd8:	64c2                	ld	s1,16(sp)
quickjs-nuttx/quickjs.c:15479
    gpn_flags = JS_GPN_STRING_MASK | JS_GPN_SYMBOL_MASK | JS_GPN_ENUM_ONLY;
    8003cdda:	4acd                	li	s5,19
quickjs-nuttx/quickjs.c:15480
    if (p->is_exotic) {
    8003cddc:	0054c783          	lbu	a5,5(s1)
    8003cde0:	8b91                	andi	a5,a5,4
    8003cde2:	cf99                	beqz	a5,8003ce00 <JS_CopyDataProperties+0x68>
quickjs-nuttx/quickjs.c:15481
        const JSClassExoticMethods *em = ctx->rt->class_array[p->class_id].exotic;
    8003cde4:	0064d703          	lhu	a4,6(s1)
    8003cde8:	02800693          	li	a3,40
    8003cdec:	6c1c                	ld	a5,24(s0)
    8003cdee:	02d70733          	mul	a4,a4,a3
    8003cdf2:	7bbc                	ld	a5,112(a5)
    8003cdf4:	97ba                	add	a5,a5,a4
    8003cdf6:	739c                	ld	a5,32(a5)
quickjs-nuttx/quickjs.c:15484
        if (em && em->get_own_property_names) {
    8003cdf8:	c781                	beqz	a5,8003ce00 <JS_CopyDataProperties+0x68>
quickjs-nuttx/quickjs.c:15484 (discriminator 1)
    8003cdfa:	679c                	ld	a5,8(a5)
    8003cdfc:	c391                	beqz	a5,8003ce00 <JS_CopyDataProperties+0x68>
quickjs-nuttx/quickjs.c:15485
            gpn_flags &= ~JS_GPN_ENUM_ONLY;
    8003cdfe:	4a8d                	li	s5,3
quickjs-nuttx/quickjs.c:15488
    if (JS_GetOwnPropertyNamesInternal(ctx, &tab_atom, &tab_atom_count, p,
    8003ce00:	8756                	mv	a4,s5
    8003ce02:	86a6                	mv	a3,s1
    8003ce04:	1870                	addi	a2,sp,60
    8003ce06:	008c                	addi	a1,sp,64
    8003ce08:	8522                	mv	a0,s0
    8003ce0a:	ab4fb0ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
    8003ce0e:	ed35                	bnez	a0,8003ce8a <JS_CopyDataProperties+0xf2>
quickjs-nuttx/quickjs.c:15492
    for (i = 0; i < tab_atom_count; i++) {
    8003ce10:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:15501
        if (!(gpn_flags & JS_GPN_ENUM_ONLY)) {
    8003ce12:	010afa93          	andi	s5,s5,16
quickjs-nuttx/quickjs.c:15514
        if (JS_IsException(val))
    8003ce16:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:15492 (discriminator 1)
    for (i = 0; i < tab_atom_count; i++) {
    8003ce18:	5672                	lw	a2,60(sp)
quickjs-nuttx/quickjs.c:15494 (discriminator 1)
            ret = JS_GetOwnPropertyInternal(ctx, NULL, pexcl, tab_atom[i].atom);
    8003ce1a:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:15492 (discriminator 1)
    for (i = 0; i < tab_atom_count; i++) {
    8003ce1c:	00cb6763          	bltu	s6,a2,8003ce2a <JS_CopyDataProperties+0x92>
quickjs-nuttx/quickjs.c:15524
    js_free_prop_enum(ctx, tab_atom, tab_atom_count);
    8003ce20:	8522                	mv	a0,s0
    8003ce22:	b36ce0ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:15472
        return 0;
    8003ce26:	4981                	li	s3,0
    8003ce28:	a08d                	j	8003ce8a <JS_CopyDataProperties+0xf2>
quickjs-nuttx/quickjs.c:15494
            ret = JS_GetOwnPropertyInternal(ctx, NULL, pexcl, tab_atom[i].atom);
    8003ce2a:	020b1793          	slli	a5,s6,0x20
    8003ce2e:	01d7dc93          	srli	s9,a5,0x1d
quickjs-nuttx/quickjs.c:15493
        if (pexcl) {
    8003ce32:	000a0e63          	beqz	s4,8003ce4e <JS_CopyDataProperties+0xb6>
quickjs-nuttx/quickjs.c:15494
            ret = JS_GetOwnPropertyInternal(ctx, NULL, pexcl, tab_atom[i].atom);
    8003ce36:	95e6                	add	a1,a1,s9
    8003ce38:	41d4                	lw	a3,4(a1)
    8003ce3a:	8652                	mv	a2,s4
    8003ce3c:	4581                	li	a1,0
    8003ce3e:	8522                	mv	a0,s0
    8003ce40:	b30da0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:15495
            if (ret) {
    8003ce44:	c509                	beqz	a0,8003ce4e <JS_CopyDataProperties+0xb6>
quickjs-nuttx/quickjs.c:15496
                if (ret < 0)
    8003ce46:	02054d63          	bltz	a0,8003ce80 <JS_CopyDataProperties+0xe8>
quickjs-nuttx/quickjs.c:15492
    for (i = 0; i < tab_atom_count; i++) {
    8003ce4a:	2b05                	addiw	s6,s6,1
    8003ce4c:	b7f1                	j	8003ce18 <JS_CopyDataProperties+0x80>
quickjs-nuttx/quickjs.c:15501
        if (!(gpn_flags & JS_GPN_ENUM_ONLY)) {
    8003ce4e:	040a8d63          	beqz	s5,8003cea8 <JS_CopyDataProperties+0x110>
quickjs-nuttx/quickjs.c:15513
        val = JS_GetProperty(ctx, source, tab_atom[i].atom);
    8003ce52:	6686                	ld	a3,64(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003ce54:	8726                	mv	a4,s1
    8003ce56:	87ca                	mv	a5,s2
JS_CopyDataProperties():
quickjs-nuttx/quickjs.c:15513
    8003ce58:	96e6                	add	a3,a3,s9
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003ce5a:	42d4                	lw	a3,4(a3)
    8003ce5c:	4801                	li	a6,0
    8003ce5e:	85a6                	mv	a1,s1
    8003ce60:	864a                	mv	a2,s2
    8003ce62:	8522                	mv	a0,s0
    8003ce64:	eca6                	sd	s1,88(sp)
    8003ce66:	f0ca                	sd	s2,96(sp)
    8003ce68:	c43d90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003ce6c:	f4aa                	sd	a0,104(sp)
    8003ce6e:	f8ae                	sd	a1,112(sp)
    8003ce70:	e4aa                	sd	a0,72(sp)
    8003ce72:	e8ae                	sd	a1,80(sp)
JS_CopyDataProperties():
quickjs-nuttx/quickjs.c:15514
        if (JS_IsException(val))
    8003ce74:	0005869b          	sext.w	a3,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003ce78:	872a                	mv	a4,a0
    8003ce7a:	87ae                	mv	a5,a1
JS_CopyDataProperties():
quickjs-nuttx/quickjs.c:15514
    8003ce7c:	05869b63          	bne	a3,s8,8003ced2 <JS_CopyDataProperties+0x13a>
quickjs-nuttx/quickjs.c:15527
    js_free_prop_enum(ctx, tab_atom, tab_atom_count);
    8003ce80:	5672                	lw	a2,60(sp)
    8003ce82:	6586                	ld	a1,64(sp)
    8003ce84:	8522                	mv	a0,s0
    8003ce86:	ad2ce0ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:15529
}
    8003ce8a:	60b2                	ld	ra,264(sp)
    8003ce8c:	6412                	ld	s0,256(sp)
    8003ce8e:	74ee                	ld	s1,248(sp)
    8003ce90:	794e                	ld	s2,240(sp)
    8003ce92:	7a0e                	ld	s4,224(sp)
    8003ce94:	6aee                	ld	s5,216(sp)
    8003ce96:	6b4e                	ld	s6,208(sp)
    8003ce98:	6bae                	ld	s7,200(sp)
    8003ce9a:	6c0e                	ld	s8,192(sp)
    8003ce9c:	7cea                	ld	s9,184(sp)
    8003ce9e:	7d4a                	ld	s10,176(sp)
    8003cea0:	854e                	mv	a0,s3
    8003cea2:	79ae                	ld	s3,232(sp)
    8003cea4:	6151                	addi	sp,sp,272
    8003cea6:	8082                	ret
quickjs-nuttx/quickjs.c:15503
            ret = JS_GetOwnPropertyInternal(ctx, &desc, p, tab_atom[i].atom);
    8003cea8:	6786                	ld	a5,64(sp)
    8003ceaa:	8626                	mv	a2,s1
    8003ceac:	18ac                	addi	a1,sp,120
    8003ceae:	97e6                	add	a5,a5,s9
    8003ceb0:	43d4                	lw	a3,4(a5)
    8003ceb2:	8522                	mv	a0,s0
    8003ceb4:	abcda0ef          	jal	ra,80017170 <JS_GetOwnPropertyInternal>
quickjs-nuttx/quickjs.c:15504
            if (ret < 0)
    8003ceb8:	fc0544e3          	bltz	a0,8003ce80 <JS_CopyDataProperties+0xe8>
quickjs-nuttx/quickjs.c:15506
            if (!ret)
    8003cebc:	d559                	beqz	a0,8003ce4a <JS_CopyDataProperties+0xb2>
quickjs-nuttx/quickjs.c:15508
            is_enumerable = (desc.flags & JS_PROP_ENUMERABLE) != 0;
    8003cebe:	5d66                	lw	s10,120(sp)
quickjs-nuttx/quickjs.c:15509
            js_free_desc(ctx, &desc);
    8003cec0:	18ac                	addi	a1,sp,120
    8003cec2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:15508
            is_enumerable = (desc.flags & JS_PROP_ENUMERABLE) != 0;
    8003cec4:	004d7d13          	andi	s10,s10,4
quickjs-nuttx/quickjs.c:15509
            js_free_desc(ctx, &desc);
    8003cec8:	c1dce0ef          	jal	ra,8000bae4 <js_free_desc>
quickjs-nuttx/quickjs.c:15510
            if (!is_enumerable)
    8003cecc:	f80d13e3          	bnez	s10,8003ce52 <JS_CopyDataProperties+0xba>
    8003ced0:	bfad                	j	8003ce4a <JS_CopyDataProperties+0xb2>
quickjs-nuttx/quickjs.c:15517
            ret = JS_SetProperty(ctx, target, tab_atom[i].atom, val);
    8003ced2:	6686                	ld	a3,64(sp)
    8003ced4:	9cb6                	add	s9,s9,a3
    8003ced6:	004ca683          	lw	a3,4(s9)
quickjs-nuttx/quickjs.c:15516
        if (setprop)
    8003ceda:	000b8863          	beqz	s7,8003ceea <JS_CopyDataProperties+0x152>
quickjs-nuttx/quickjs.c:15517
            ret = JS_SetProperty(ctx, target, tab_atom[i].atom, val);
    8003cede:	7582                	ld	a1,32(sp)
    8003cee0:	7622                	ld	a2,40(sp)
    8003cee2:	8522                	mv	a0,s0
    8003cee4:	d29fa0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003cee8:	bfb9                	j	8003ce46 <JS_CopyDataProperties+0xae>
quickjs-nuttx/quickjs.c:15519
            ret = JS_DefinePropertyValue(ctx, target, tab_atom[i].atom, val,
    8003ceea:	7582                	ld	a1,32(sp)
    8003ceec:	7622                	ld	a2,40(sp)
    8003ceee:	481d                	li	a6,7
    8003cef0:	8522                	mv	a0,s0
    8003cef2:	b3adb0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:15521
        if (ret < 0)
    8003cef6:	bf81                	j	8003ce46 <JS_CopyDataProperties+0xae>

000000008003cef8 <js_object_assign>:
js_object_assign():
quickjs-nuttx/quickjs.c:37679
{
    8003cef8:	7175                	addi	sp,sp,-144
    8003cefa:	e122                	sd	s0,128(sp)
    8003cefc:	fca6                	sd	s1,120(sp)
    8003cefe:	f8ca                	sd	s2,112(sp)
    8003cf00:	f4ce                	sd	s3,104(sp)
    8003cf02:	e506                	sd	ra,136(sp)
    8003cf04:	f0d2                	sd	s4,96(sp)
    8003cf06:	ecd6                	sd	s5,88(sp)
    8003cf08:	e8da                	sd	s6,80(sp)
    8003cf0a:	e4de                	sd	s7,72(sp)
    8003cf0c:	e0e2                	sd	s8,64(sp)
    8003cf0e:	e02e                	sd	a1,0(sp)
    8003cf10:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:37685
    obj = JS_ToObject(ctx, argv[0]);
    8003cf12:	630c                	ld	a1,0(a4)
    8003cf14:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37679
{
    8003cf16:	843a                	mv	s0,a4
    8003cf18:	892a                	mv	s2,a0
    8003cf1a:	89b6                	mv	s3,a3
quickjs-nuttx/quickjs.c:37684
    s = JS_UNDEFINED;
    8003cf1c:	f002                	sd	zero,32(sp)
    8003cf1e:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.c:37685
    obj = JS_ToObject(ctx, argv[0]);
    8003cf20:	99af30ef          	jal	ra,800300ba <JS_ToObject>
    8003cf24:	e82a                	sd	a0,16(sp)
    8003cf26:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs.c:37686
    if (JS_IsException(obj))
    8003cf28:	0005871b          	sext.w	a4,a1
    8003cf2c:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37685
    obj = JS_ToObject(ctx, argv[0]);
    8003cf2e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:37686
    if (JS_IsException(obj))
    8003cf30:	08f70063          	beq	a4,a5,8003cfb0 <js_object_assign+0xb8>
    8003cf34:	0441                	addi	s0,s0,16
quickjs-nuttx/quickjs.c:37688
    for (i = 1; i < argc; i++) {
    8003cf36:	4a05                	li	s4,1
quickjs-nuttx/quickjs.c:37689
        if (!JS_IsNull(argv[i]) && !JS_IsUndefined(argv[i])) {
    8003cf38:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:37691
            if (JS_IsException(s))
    8003cf3a:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:37693
            if (JS_CopyDataProperties(ctx, obj, s, JS_UNDEFINED, TRUE))
    8003cf3c:	4b8d                	li	s7,3
quickjs-nuttx/quickjs.c:37688 (discriminator 1)
    for (i = 1; i < argc; i++) {
    8003cf3e:	033a4363          	blt	s4,s3,8003cf64 <js_object_assign+0x6c>
quickjs-nuttx/quickjs.c:37698
    return obj;
    8003cf42:	67c2                	ld	a5,16(sp)
    8003cf44:	fc26                	sd	s1,56(sp)
    8003cf46:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:37703
}
    8003cf48:	60aa                	ld	ra,136(sp)
    8003cf4a:	640a                	ld	s0,128(sp)
    8003cf4c:	7542                	ld	a0,48(sp)
    8003cf4e:	75e2                	ld	a1,56(sp)
    8003cf50:	74e6                	ld	s1,120(sp)
    8003cf52:	7946                	ld	s2,112(sp)
    8003cf54:	79a6                	ld	s3,104(sp)
    8003cf56:	7a06                	ld	s4,96(sp)
    8003cf58:	6ae6                	ld	s5,88(sp)
    8003cf5a:	6b46                	ld	s6,80(sp)
    8003cf5c:	6ba6                	ld	s7,72(sp)
    8003cf5e:	6c06                	ld	s8,64(sp)
    8003cf60:	6149                	addi	sp,sp,144
    8003cf62:	8082                	ret
quickjs-nuttx/quickjs.c:37689
        if (!JS_IsNull(argv[i]) && !JS_IsUndefined(argv[i])) {
    8003cf64:	6410                	ld	a2,8(s0)
    8003cf66:	ffe6079b          	addiw	a5,a2,-2
    8003cf6a:	04faf063          	bgeu	s5,a5,8003cfaa <js_object_assign+0xb2>
quickjs-nuttx/quickjs.c:37690
            s = JS_ToObject(ctx, argv[i]);
    8003cf6e:	600c                	ld	a1,0(s0)
    8003cf70:	854a                	mv	a0,s2
    8003cf72:	948f30ef          	jal	ra,800300ba <JS_ToObject>
    8003cf76:	f02a                	sd	a0,32(sp)
    8003cf78:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:37691
            if (JS_IsException(s))
    8003cf7a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:37690
            s = JS_ToObject(ctx, argv[i]);
    8003cf7e:	86aa                	mv	a3,a0
    8003cf80:	872e                	mv	a4,a1
    8003cf82:	8c2e                	mv	s8,a1
quickjs-nuttx/quickjs.c:37691
            if (JS_IsException(s))
    8003cf84:	03678763          	beq	a5,s6,8003cfb2 <js_object_assign+0xba>
quickjs-nuttx/quickjs.c:37693
            if (JS_CopyDataProperties(ctx, obj, s, JS_UNDEFINED, TRUE))
    8003cf88:	65c2                	ld	a1,16(sp)
    8003cf8a:	4885                	li	a7,1
    8003cf8c:	4781                	li	a5,0
    8003cf8e:	480d                	li	a6,3
    8003cf90:	8626                	mv	a2,s1
    8003cf92:	854a                	mv	a0,s2
    8003cf94:	f802                	sd	zero,48(sp)
    8003cf96:	fc5e                	sd	s7,56(sp)
    8003cf98:	ec26                	sd	s1,24(sp)
    8003cf9a:	dffff0ef          	jal	ra,8003cd98 <JS_CopyDataProperties>
    8003cf9e:	e911                	bnez	a0,8003cfb2 <js_object_assign+0xba>
quickjs-nuttx/quickjs.c:37695
            JS_FreeValue(ctx, s);
    8003cfa0:	7582                	ld	a1,32(sp)
    8003cfa2:	7622                	ld	a2,40(sp)
    8003cfa4:	854a                	mv	a0,s2
    8003cfa6:	ff8ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37688 (discriminator 2)
    for (i = 1; i < argc; i++) {
    8003cfaa:	2a05                	addiw	s4,s4,1
    8003cfac:	0441                	addi	s0,s0,16
    8003cfae:	bf41                	j	8003cf3e <js_object_assign+0x46>
quickjs-nuttx/quickjs.c:37684
    s = JS_UNDEFINED;
    8003cfb0:	4c0d                	li	s8,3
quickjs-nuttx/quickjs.c:37700
    JS_FreeValue(ctx, obj);
    8003cfb2:	65c2                	ld	a1,16(sp)
    8003cfb4:	8626                	mv	a2,s1
    8003cfb6:	854a                	mv	a0,s2
    8003cfb8:	fe6ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37701
    JS_FreeValue(ctx, s);
    8003cfbc:	7582                	ld	a1,32(sp)
    8003cfbe:	8662                	mv	a2,s8
    8003cfc0:	854a                	mv	a0,s2
    8003cfc2:	fdcce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37702
    return JS_EXCEPTION;
    8003cfc6:	4799                	li	a5,6
    8003cfc8:	f802                	sd	zero,48(sp)
    8003cfca:	fc3e                	sd	a5,56(sp)
    8003cfcc:	bfb5                	j	8003cf48 <js_object_assign+0x50>

000000008003cfce <js_regexp_exec>:
js_regexp_exec():
quickjs-nuttx/quickjs.c:43742
{
    8003cfce:	dc010113          	addi	sp,sp,-576
js_get_regexp():
quickjs-nuttx/quickjs.c:43398
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8003cfd2:	0006079b          	sext.w	a5,a2
    8003cfd6:	e4be                	sd	a5,72(sp)
    8003cfd8:	66a6                	ld	a3,72(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43742
{
    8003cfda:	22813823          	sd	s0,560(sp)
    8003cfde:	22113c23          	sd	ra,568(sp)
    8003cfe2:	22913423          	sd	s1,552(sp)
    8003cfe6:	23213023          	sd	s2,544(sp)
    8003cfea:	21313c23          	sd	s3,536(sp)
    8003cfee:	21413823          	sd	s4,528(sp)
    8003cff2:	21513423          	sd	s5,520(sp)
    8003cff6:	21613023          	sd	s6,512(sp)
    8003cffa:	ffde                	sd	s7,504(sp)
    8003cffc:	fbe2                	sd	s8,496(sp)
    8003cffe:	f7e6                	sd	s9,488(sp)
