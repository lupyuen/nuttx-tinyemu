    8002b000:	1088                	addi	a0,sp,96
    8002b002:	8e0de0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31302
        s->label_slots[label_next].pos2 = bc->size;
    8002b006:	4561                	li	a0,24
    8002b008:	02aa8ab3          	mul	s5,s5,a0
    8002b00c:	17043783          	ld	a5,368(s0)
    8002b010:	9abe                	add	s5,s5,a5
    8002b012:	77a6                	ld	a5,104(sp)
    8002b014:	00faa423          	sw	a5,8(s5)
quickjs-nuttx/quickjs.c:31305
    js_free(ctx, s->global_vars);
    8002b018:	12843583          	ld	a1,296(s0)
    8002b01c:	8526                	mv	a0,s1
    8002b01e:	fd9df0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:31306
    s->global_vars = NULL;
    8002b022:	12043423          	sd	zero,296(s0)
quickjs-nuttx/quickjs.c:31307
    s->global_var_count = 0;
    8002b026:	10042e23          	sw	zero,284(s0)
quickjs-nuttx/quickjs.c:31308
    s->global_var_size = 0;
    8002b02a:	12042023          	sw	zero,288(s0)
resolve_variables():
quickjs-nuttx/quickjs.c:31608
                for(scope_idx = s->scopes[scope].first; scope_idx >= 0;) {
    8002b02e:	7702                	ld	a4,32(sp)
    8002b030:	787c                	ld	a5,240(s0)
    8002b032:	070e                	slli	a4,a4,0x3
    8002b034:	97ba                	add	a5,a5,a4
    8002b036:	0047a983          	lw	s3,4(a5)
quickjs-nuttx/quickjs.c:31608 (discriminator 1)
    8002b03a:	aa09c6e3          	bltz	s3,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31609
                    JSVarDef *vd = &s->vars[scope_idx];
    8002b03e:	685c                	ld	a5,144(s0)
    8002b040:	00499a93          	slli	s5,s3,0x4
quickjs-nuttx/quickjs.c:31610
                    if (vd->scope_level == scope) {
    8002b044:	6762                	ld	a4,24(sp)
quickjs-nuttx/quickjs.c:31609
                    JSVarDef *vd = &s->vars[scope_idx];
    8002b046:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:31610
                    if (vd->scope_level == scope) {
    8002b048:	004aa783          	lw	a5,4(s5)
    8002b04c:	a8e79de3          	bne	a5,a4,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31611
                        if (scope_idx != s->arguments_arg_idx) {
    8002b050:	0c042783          	lw	a5,192(s0)
    8002b054:	05378363          	beq	a5,s3,8002b09a <resolve_variables+0x82c>
quickjs-nuttx/quickjs.c:31612
                            if (vd->var_kind == JS_VAR_FUNCTION_DECL ||
    8002b058:	00caa783          	lw	a5,12(s5)
quickjs-nuttx/quickjs.c:31618
                                dbuf_put_u16(&bc_out, scope_idx);
    8002b05c:	19c2                	slli	s3,s3,0x30
    8002b05e:	0309d993          	srli	s3,s3,0x30
quickjs-nuttx/quickjs.c:31612
                            if (vd->var_kind == JS_VAR_FUNCTION_DECL ||
    8002b062:	0f07f793          	andi	a5,a5,240
    8002b066:	37c1                	addiw	a5,a5,-16
    8002b068:	9bbd                	andi	a5,a5,-17
    8002b06a:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:31622
                                dbuf_putc(&bc_out, OP_set_loc_uninitialized);
    8002b06c:	06100593          	li	a1,97
quickjs-nuttx/quickjs.c:31612
                            if (vd->var_kind == JS_VAR_FUNCTION_DECL ||
    8002b070:	ef91                	bnez	a5,8002b08c <resolve_variables+0x81e>
quickjs-nuttx/quickjs.c:31615
                                dbuf_putc(&bc_out, OP_fclosure);
    8002b072:	458d                	li	a1,3
    8002b074:	1088                	addi	a0,sp,96
    8002b076:	26d260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31616
                                dbuf_put_u32(&bc_out, vd->func_pool_idx);
    8002b07a:	00caa583          	lw	a1,12(s5)
    8002b07e:	1088                	addi	a0,sp,96
    8002b080:	4085d59b          	sraiw	a1,a1,0x8
    8002b084:	85ede0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31617
                                dbuf_putc(&bc_out, OP_put_loc);
    8002b088:	05900593          	li	a1,89
quickjs-nuttx/quickjs.c:31622
                                dbuf_putc(&bc_out, OP_set_loc_uninitialized);
    8002b08c:	1088                	addi	a0,sp,96
    8002b08e:	255260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31623
                                dbuf_put_u16(&bc_out, scope_idx);
    8002b092:	85ce                	mv	a1,s3
    8002b094:	1088                	addi	a0,sp,96
    8002b096:	f17dd0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31626
                        scope_idx = vd->scope_next;
    8002b09a:	008aa983          	lw	s3,8(s5)
    8002b09e:	bf71                	j	8002b03a <resolve_variables+0x7cc>
instantiate_hoisted_definitions():
quickjs-nuttx/quickjs.c:31192
        JSVarDef *vd = &s->vars[i];
    8002b0a0:	685c                	ld	a5,144(s0)
    8002b0a2:	00499a93          	slli	s5,s3,0x4
    8002b0a6:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:31193
        if (vd->scope_level == 0 && vd->func_pool_idx >= 0) {
    8002b0a8:	004aa783          	lw	a5,4(s5)
    8002b0ac:	eb9d                	bnez	a5,8002b0e2 <resolve_variables+0x874>
    8002b0ae:	00caa783          	lw	a5,12(s5)
    8002b0b2:	0207c863          	bltz	a5,8002b0e2 <resolve_variables+0x874>
quickjs-nuttx/quickjs.c:31194
            dbuf_putc(bc, OP_fclosure);
    8002b0b6:	458d                	li	a1,3
    8002b0b8:	1088                	addi	a0,sp,96
    8002b0ba:	229260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31195
            dbuf_put_u32(bc, vd->func_pool_idx);
    8002b0be:	00caa583          	lw	a1,12(s5)
    8002b0c2:	1088                	addi	a0,sp,96
    8002b0c4:	4085d59b          	sraiw	a1,a1,0x8
    8002b0c8:	81ade0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31196
            dbuf_putc(bc, OP_put_loc);
    8002b0cc:	05900593          	li	a1,89
    8002b0d0:	1088                	addi	a0,sp,96
    8002b0d2:	211260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31197
            dbuf_put_u16(bc, i);
    8002b0d6:	03099593          	slli	a1,s3,0x30
    8002b0da:	91c1                	srli	a1,a1,0x30
    8002b0dc:	1088                	addi	a0,sp,96
    8002b0de:	ecfdd0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31191
    for(i = 0; i < s->var_count; i++) {
    8002b0e2:	2985                	addiw	s3,s3,1
    8002b0e4:	b56d                	j	8002af8e <resolve_variables+0x720>
quickjs-nuttx/quickjs.c:31218
        JSGlobalVar *hf = &s->global_vars[i];
    8002b0e6:	12843783          	ld	a5,296(s0)
quickjs-nuttx/quickjs.c:31225
        for(idx = 0; idx < s->closure_var_count; idx++) {
    8002b0ea:	19842703          	lw	a4,408(s0)
quickjs-nuttx/quickjs.c:31218
        JSGlobalVar *hf = &s->global_vars[i];
    8002b0ee:	004c9993          	slli	s3,s9,0x4
    8002b0f2:	99be                	add	s3,s3,a5
quickjs-nuttx/quickjs.c:31225
        for(idx = 0; idx < s->closure_var_count; idx++) {
    8002b0f4:	4b01                	li	s6,0
    8002b0f6:	000b079b          	sext.w	a5,s6
    8002b0fa:	04e7cf63          	blt	a5,a4,8002b158 <resolve_variables+0x8ea>
quickjs-nuttx/quickjs.c:31245
            if (s->eval_type != JS_EVAL_TYPE_GLOBAL)
    8002b0fe:	03c42d03          	lw	s10,60(s0)
quickjs-nuttx/quickjs.c:31247
            if (hf->cpool_idx >= 0 && !hf->is_lexical) {
    8002b102:	0049c783          	lbu	a5,4(s3)
    8002b106:	0009a683          	lw	a3,0(s3)
quickjs-nuttx/quickjs.c:31245
            if (s->eval_type != JS_EVAL_TYPE_GLOBAL)
    8002b10a:	01a03633          	snez	a2,s10
quickjs-nuttx/quickjs.c:31244
            flags = 0;
    8002b10e:	8d32                	mv	s10,a2
quickjs-nuttx/quickjs.c:31247
            if (hf->cpool_idx >= 0 && !hf->is_lexical) {
    8002b110:	0027f713          	andi	a4,a5,2
    8002b114:	0806df63          	bgez	a3,8002b1b2 <resolve_variables+0x944>
quickjs-nuttx/quickjs.c:31258
                if (hf->is_lexical) {
    8002b118:	c711                	beqz	a4,8002b124 <resolve_variables+0x8b6>
quickjs-nuttx/quickjs.c:31260
                    if (!hf->is_const)
    8002b11a:	8b91                	andi	a5,a5,4
    8002b11c:	0c078b63          	beqz	a5,8002b1f2 <resolve_variables+0x984>
quickjs-nuttx/quickjs.c:31259
                    flags |= DEFINE_GLOBAL_LEX_VAR;
    8002b120:	080d6d13          	ori	s10,s10,128
quickjs-nuttx/quickjs.c:31220
        BOOL force_init = hf->force_init;
    8002b124:	0049a783          	lw	a5,4(s3)
quickjs-nuttx/quickjs.c:31263
                dbuf_putc(bc, OP_define_var);
    8002b128:	03e00593          	li	a1,62
    8002b12c:	1088                	addi	a0,sp,96
quickjs-nuttx/quickjs.c:31220
        BOOL force_init = hf->force_init;
    8002b12e:	0017fd93          	andi	s11,a5,1
quickjs-nuttx/quickjs.c:31263
                dbuf_putc(bc, OP_define_var);
    8002b132:	1b1260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31264
                dbuf_put_u32(bc, JS_DupAtom(ctx, hf->var_name));
    8002b136:	00c9a583          	lw	a1,12(s3)
    8002b13a:	8526                	mv	a0,s1
    8002b13c:	fcbdf0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002b140:	0005059b          	sext.w	a1,a0
    8002b144:	1088                	addi	a0,sp,96
    8002b146:	f9ddd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31265
                dbuf_putc(bc, flags);
    8002b14a:	0ffd7593          	zext.b	a1,s10
    8002b14e:	1088                	addi	a0,sp,96
    8002b150:	193260ef          	jal	ra,80051ae2 <dbuf_putc>
    8002b154:	4d01                	li	s10,0
    8002b156:	a83d                	j	8002b194 <resolve_variables+0x926>
quickjs-nuttx/quickjs.c:31227
            if (cv->var_name == hf->var_name) {
    8002b158:	1a043783          	ld	a5,416(s0)
    8002b15c:	003b1693          	slli	a3,s6,0x3
    8002b160:	97b6                	add	a5,a5,a3
    8002b162:	43dc                	lw	a5,4(a5)
    8002b164:	00c9a683          	lw	a3,12(s3)
    8002b168:	08f68863          	beq	a3,a5,8002b1f8 <resolve_variables+0x98a>
quickjs-nuttx/quickjs.c:31232
            if (cv->var_name == JS_ATOM__var_ ||
    8002b16c:	fad7879b          	addiw	a5,a5,-83
    8002b170:	4605                	li	a2,1
    8002b172:	001b0693          	addi	a3,s6,1
    8002b176:	02f66c63          	bltu	a2,a5,8002b1ae <resolve_variables+0x940>
quickjs-nuttx/quickjs.c:31234
                dbuf_putc(bc, OP_get_var_ref);
    8002b17a:	05e00593          	li	a1,94
    8002b17e:	1088                	addi	a0,sp,96
    8002b180:	163260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31235
                dbuf_put_u16(bc, idx);
    8002b184:	030b1593          	slli	a1,s6,0x30
    8002b188:	91c1                	srli	a1,a1,0x30
    8002b18a:	1088                	addi	a0,sp,96
    8002b18c:	e21dd0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31237
                force_init = TRUE;
    8002b190:	4d85                	li	s11,1
quickjs-nuttx/quickjs.c:31236
                has_closure = 1;
    8002b192:	4d05                	li	s10,1
quickjs-nuttx/quickjs.c:31268
        if (hf->cpool_idx >= 0 || force_init) {
    8002b194:	0009a703          	lw	a4,0(s3)
    8002b198:	06075363          	bgez	a4,8002b1fe <resolve_variables+0x990>
    8002b19c:	0a0d9863          	bnez	s11,8002b24c <resolve_variables+0x9de>
quickjs-nuttx/quickjs.c:31294
        JS_FreeAtom(ctx, hf->var_name);
    8002b1a0:	00c9a583          	lw	a1,12(s3)
    8002b1a4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:31217
    for(i = 0; i < s->global_var_count; i++) {
    8002b1a6:	2c85                	addiw	s9,s9,1
quickjs-nuttx/quickjs.c:31294
        JS_FreeAtom(ctx, hf->var_name);
    8002b1a8:	fa1df0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:31217
    for(i = 0; i < s->global_var_count; i++) {
    8002b1ac:	b53d                	j	8002afda <resolve_variables+0x76c>
    8002b1ae:	8b36                	mv	s6,a3
    8002b1b0:	b799                	j	8002b0f6 <resolve_variables+0x888>
quickjs-nuttx/quickjs.c:31247
            if (hf->cpool_idx >= 0 && !hf->is_lexical) {
    8002b1b2:	f725                	bnez	a4,8002b11a <resolve_variables+0x8ac>
quickjs-nuttx/quickjs.c:31249
                dbuf_putc(bc, OP_fclosure);
    8002b1b4:	458d                	li	a1,3
    8002b1b6:	1088                	addi	a0,sp,96
    8002b1b8:	f432                	sd	a2,40(sp)
    8002b1ba:	129260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31250
                dbuf_put_u32(bc, hf->cpool_idx);
    8002b1be:	0009a583          	lw	a1,0(s3)
    8002b1c2:	1088                	addi	a0,sp,96
    8002b1c4:	f1fdd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31252
                dbuf_putc(bc, OP_define_func);
    8002b1c8:	04000593          	li	a1,64
    8002b1cc:	1088                	addi	a0,sp,96
    8002b1ce:	115260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31253
                dbuf_put_u32(bc, JS_DupAtom(ctx, hf->var_name));
    8002b1d2:	00c9a583          	lw	a1,12(s3)
    8002b1d6:	8526                	mv	a0,s1
    8002b1d8:	f2fdf0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002b1dc:	0005059b          	sext.w	a1,a0
    8002b1e0:	1088                	addi	a0,sp,96
    8002b1e2:	f01dd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31254
                dbuf_putc(bc, flags);
    8002b1e6:	7622                	ld	a2,40(sp)
    8002b1e8:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:31286
                dbuf_putc(bc, OP_drop);
    8002b1ea:	1088                	addi	a0,sp,96
    8002b1ec:	0f7260ef          	jal	ra,80051ae2 <dbuf_putc>
    8002b1f0:	bf45                	j	8002b1a0 <resolve_variables+0x932>
quickjs-nuttx/quickjs.c:31261
                        flags |= JS_PROP_WRITABLE;
    8002b1f2:	082d6d13          	ori	s10,s10,130
    8002b1f6:	b73d                	j	8002b124 <resolve_variables+0x8b6>
quickjs-nuttx/quickjs.c:31229
                force_init = FALSE;
    8002b1f8:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:31228
                has_closure = 2;
    8002b1fa:	4d09                	li	s10,2
    8002b1fc:	bf61                	j	8002b194 <resolve_variables+0x926>
quickjs-nuttx/quickjs.c:31270
                dbuf_putc(bc, OP_fclosure);
    8002b1fe:	458d                	li	a1,3
    8002b200:	1088                	addi	a0,sp,96
    8002b202:	0e1260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31271
                dbuf_put_u32(bc, hf->cpool_idx);
    8002b206:	0009a583          	lw	a1,0(s3)
    8002b20a:	1088                	addi	a0,sp,96
    8002b20c:	ed7dd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31272
                if (hf->var_name == JS_ATOM__default_) {
    8002b210:	00c9a783          	lw	a5,12(s3)
    8002b214:	07d00713          	li	a4,125
    8002b218:	00e79b63          	bne	a5,a4,8002b22e <resolve_variables+0x9c0>
quickjs-nuttx/quickjs.c:31274
                    dbuf_putc(bc, OP_set_name);
    8002b21c:	04d00593          	li	a1,77
    8002b220:	1088                	addi	a0,sp,96
    8002b222:	0c1260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31275
                    dbuf_put_u32(bc, JS_DupAtom(ctx, JS_ATOM_default));
    8002b226:	45d9                	li	a1,22
    8002b228:	1088                	addi	a0,sp,96
    8002b22a:	eb9dd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31280
            if (has_closure == 2) {
    8002b22e:	4789                	li	a5,2
    8002b230:	02fd1363          	bne	s10,a5,8002b256 <resolve_variables+0x9e8>
quickjs-nuttx/quickjs.c:31281
                dbuf_putc(bc, OP_put_var_ref);
    8002b234:	05f00593          	li	a1,95
    8002b238:	1088                	addi	a0,sp,96
    8002b23a:	0a9260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31282
                dbuf_put_u16(bc, idx);
    8002b23e:	030b1593          	slli	a1,s6,0x30
    8002b242:	91c1                	srli	a1,a1,0x30
    8002b244:	1088                	addi	a0,sp,96
    8002b246:	d67dd0ef          	jal	ra,80008fac <dbuf_put_u16>
    8002b24a:	bf99                	j	8002b1a0 <resolve_variables+0x932>
quickjs-nuttx/quickjs.c:31278
                dbuf_putc(bc, OP_undefined);
    8002b24c:	4599                	li	a1,6
    8002b24e:	1088                	addi	a0,sp,96
    8002b250:	093260ef          	jal	ra,80051ae2 <dbuf_putc>
    8002b254:	bfe9                	j	8002b22e <resolve_variables+0x9c0>
quickjs-nuttx/quickjs.c:31283
            } else if (has_closure == 1) {
    8002b256:	4785                	li	a5,1
    8002b258:	02fd1363          	bne	s10,a5,8002b27e <resolve_variables+0xa10>
quickjs-nuttx/quickjs.c:31284
                dbuf_putc(bc, OP_define_field);
    8002b25c:	04c00593          	li	a1,76
    8002b260:	1088                	addi	a0,sp,96
    8002b262:	081260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31285
                dbuf_put_u32(bc, JS_DupAtom(ctx, hf->var_name));
    8002b266:	00c9a583          	lw	a1,12(s3)
    8002b26a:	8526                	mv	a0,s1
    8002b26c:	e9bdf0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002b270:	0005059b          	sext.w	a1,a0
    8002b274:	1088                	addi	a0,sp,96
    8002b276:	e6ddd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31286
                dbuf_putc(bc, OP_drop);
    8002b27a:	45b9                	li	a1,14
    8002b27c:	b7bd                	j	8002b1ea <resolve_variables+0x97c>
quickjs-nuttx/quickjs.c:31289
                dbuf_putc(bc, OP_put_var);
    8002b27e:	03900593          	li	a1,57
    8002b282:	1088                	addi	a0,sp,96
    8002b284:	05f260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31290
                dbuf_put_u32(bc, JS_DupAtom(ctx, hf->var_name));
    8002b288:	00c9a583          	lw	a1,12(s3)
    8002b28c:	8526                	mv	a0,s1
    8002b28e:	e79df0ef          	jal	ra,8000b106 <JS_DupAtom>
    8002b292:	0005059b          	sext.w	a1,a0
    8002b296:	1088                	addi	a0,sp,96
    8002b298:	e4bdd0ef          	jal	ra,800090e2 <dbuf_put_u32>
    8002b29c:	b711                	j	8002b1a0 <resolve_variables+0x932>
get_u16():
quickjs-nuttx/cutils.h:185
    8002b29e:	002d4783          	lbu	a5,2(s10)
    8002b2a2:	001d4983          	lbu	s3,1(s10)
    8002b2a6:	07a2                	slli	a5,a5,0x8
    8002b2a8:	0137e733          	or	a4,a5,s3
resolve_variables():
quickjs-nuttx/quickjs.c:31638
                for(scope_idx = s->scopes[scope].first; scope_idx >= 0;) {
    8002b2ac:	787c                	ld	a5,240(s0)
quickjs-nuttx/quickjs.c:31636
                int scope_idx, scope = get_u16(bc_buf + pos + 1);
    8002b2ae:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:31638
                for(scope_idx = s->scopes[scope].first; scope_idx >= 0;) {
    8002b2b0:	070e                	slli	a4,a4,0x3
    8002b2b2:	97ba                	add	a5,a5,a4
    8002b2b4:	0047ab03          	lw	s6,4(a5)
quickjs-nuttx/quickjs.c:31638 (discriminator 1)
    8002b2b8:	820b47e3          	bltz	s6,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31639
                    JSVarDef *vd = &s->vars[scope_idx];
    8002b2bc:	685c                	ld	a5,144(s0)
    8002b2be:	004b1a93          	slli	s5,s6,0x4
    8002b2c2:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:31640
                    if (vd->scope_level == scope) {
    8002b2c4:	004aa783          	lw	a5,4(s5)
    8002b2c8:	81379fe3          	bne	a5,s3,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31641
                        if (vd->is_captured) {
    8002b2cc:	00caa783          	lw	a5,12(s5)
    8002b2d0:	8b91                	andi	a5,a5,4
    8002b2d2:	cf81                	beqz	a5,8002b2ea <resolve_variables+0xa7c>
quickjs-nuttx/quickjs.c:31642
                            dbuf_putc(&bc_out, OP_close_loc);
    8002b2d4:	06900593          	li	a1,105
    8002b2d8:	1088                	addi	a0,sp,96
    8002b2da:	009260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31643
                            dbuf_put_u16(&bc_out, scope_idx);
    8002b2de:	030b1593          	slli	a1,s6,0x30
    8002b2e2:	91c1                	srli	a1,a1,0x30
    8002b2e4:	1088                	addi	a0,sp,96
    8002b2e6:	cc7dd0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31645
                        scope_idx = vd->scope_next;
    8002b2ea:	008aab03          	lw	s6,8(s5)
    8002b2ee:	b7e9                	j	8002b2b8 <resolve_variables+0xa4a>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002b2f0:	002d4703          	lbu	a4,2(s10)
    8002b2f4:	001d4783          	lbu	a5,1(s10)
    8002b2f8:	0722                	slli	a4,a4,0x8
    8002b2fa:	8f5d                	or	a4,a4,a5
    8002b2fc:	003d4783          	lbu	a5,3(s10)
    8002b300:	07c2                	slli	a5,a5,0x10
    8002b302:	8f5d                	or	a4,a4,a5
    8002b304:	004d4783          	lbu	a5,4(s10)
    8002b308:	07e2                	slli	a5,a5,0x18
    8002b30a:	8fd9                	or	a5,a5,a4
resolve_variables():
quickjs-nuttx/quickjs.c:31657
                if (name == JS_ATOM_NULL)
    8002b30c:	fc078d63          	beqz	a5,8002aae6 <resolve_variables+0x278>
    8002b310:	ee0ff06f          	j	8002a9f0 <resolve_variables+0x182>
quickjs-nuttx/quickjs.c:31665
            s->jump_size++;
    8002b314:	1b042783          	lw	a5,432(s0)
    8002b318:	2785                	addiw	a5,a5,1
    8002b31a:	1af42823          	sw	a5,432(s0)
quickjs-nuttx/quickjs.c:31666
            goto no_change;
    8002b31e:	ed2ff06f          	j	8002a9f0 <resolve_variables+0x182>
quickjs-nuttx/quickjs.c:31672
                if (code_match(&cc, pos_next, M2(OP_if_false, OP_if_true), OP_drop, -1)) {
    8002b322:	661d                	lui	a2,0x7
    8002b324:	577d                	li	a4,-1
    8002b326:	46b9                	li	a3,14
    8002b328:	b6a60613          	addi	a2,a2,-1174 # 6b6a <asinh-0x7fff9496>
    8002b32c:	85ca                	mv	a1,s2
    8002b32e:	1828                	addi	a0,sp,56
    8002b330:	9f1dd0ef          	jal	ra,80008d20 <code_match>
    8002b334:	ea050e63          	beqz	a0,8002a9f0 <resolve_variables+0x182>
quickjs-nuttx/quickjs.c:31674
                    lab0 = lab1 = cc.label;
    8002b338:	4dd6                	lw	s11,84(sp)
quickjs-nuttx/quickjs.c:31675
                    assert(lab1 >= 0 && lab1 < s->label_count);
    8002b33a:	000dc663          	bltz	s11,8002b346 <resolve_variables+0xad8>
quickjs-nuttx/quickjs.c:31675 (discriminator 2)
    8002b33e:	17c42783          	lw	a5,380(s0)
    8002b342:	00fdc863          	blt	s11,a5,8002b352 <resolve_variables+0xae4>
quickjs-nuttx/quickjs.c:31675 (discriminator 3)
    8002b346:	65a1                	lui	a1,0x8
    8002b348:	4601                	li	a2,0
    8002b34a:	bbb58593          	addi	a1,a1,-1093 # 7bbb <asinh-0x7fff8445>
    8002b34e:	8ffff06f          	j	8002ac4c <resolve_variables+0x3de>
quickjs-nuttx/quickjs.c:31676 (discriminator 4)
                    op1 = cc.op;
    8002b352:	4b36                	lw	s6,76(sp)
quickjs-nuttx/quickjs.c:31677 (discriminator 4)
                    pos1 = cc.pos;
    8002b354:	4c96                	lw	s9,68(sp)
quickjs-nuttx/quickjs.c:31678 (discriminator 4)
                    line1 = cc.line_num;
    8002b356:	4aa6                	lw	s5,72(sp)
quickjs-nuttx/quickjs.c:31679 (discriminator 4)
                    while (code_match(&cc, (pos2 = get_label_pos(s, lab1)), OP_dup, op1, OP_drop, -1)) {
    8002b358:	87ee                	mv	a5,s11
get_label_pos():
quickjs-nuttx/quickjs.c:31365 (discriminator 4)
        pos = s->label_slots[label].pos;
    8002b35a:	48e1                	li	a7,24
quickjs-nuttx/quickjs.c:31367 (discriminator 4)
            switch (s->byte_code.buf[pos]) {
    8002b35c:	06c00313          	li	t1,108
quickjs-nuttx/quickjs.c:31365
        pos = s->label_slots[label].pos;
    8002b360:	17043603          	ld	a2,368(s0)
quickjs-nuttx/quickjs.c:31367
            switch (s->byte_code.buf[pos]) {
    8002b364:	13043503          	ld	a0,304(s0)
    8002b368:	46d1                	li	a3,20
quickjs-nuttx/quickjs.c:31365
        pos = s->label_slots[label].pos;
    8002b36a:	031787b3          	mul	a5,a5,a7
    8002b36e:	97b2                	add	a5,a5,a2
    8002b370:	43cc                	lw	a1,4(a5)
quickjs-nuttx/quickjs.c:31367
            switch (s->byte_code.buf[pos]) {
    8002b372:	00b50e33          	add	t3,a0,a1
    8002b376:	000e4703          	lbu	a4,0(t3)
    8002b37a:	0487079b          	addiw	a5,a4,72
    8002b37e:	0ef7f793          	andi	a5,a5,239
    8002b382:	cbcd                	beqz	a5,8002b434 <resolve_variables+0xbc6>
    8002b384:	02671363          	bne	a4,t1,8002b3aa <resolve_variables+0xb3c>
get_u32():
quickjs-nuttx/cutils.h:170
    8002b388:	002e4703          	lbu	a4,2(t3)
    8002b38c:	001e4783          	lbu	a5,1(t3)
get_label_pos():
quickjs-nuttx/quickjs.c:31364
    for (i = 0; i < 20; i++) {
    8002b390:	36fd                	addiw	a3,a3,-1
get_u32():
quickjs-nuttx/cutils.h:170
    8002b392:	0722                	slli	a4,a4,0x8
    8002b394:	8f5d                	or	a4,a4,a5
    8002b396:	003e4783          	lbu	a5,3(t3)
    8002b39a:	07c2                	slli	a5,a5,0x10
    8002b39c:	8f5d                	or	a4,a4,a5
    8002b39e:	004e4783          	lbu	a5,4(t3)
    8002b3a2:	07e2                	slli	a5,a5,0x18
    8002b3a4:	8fd9                	or	a5,a5,a4
get_label_pos():
quickjs-nuttx/quickjs.c:31373
                label = get_u32(s->byte_code.buf + pos + 1);
    8002b3a6:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:31364
    for (i = 0; i < 20; i++) {
    8002b3a8:	f2e9                	bnez	a3,8002b36a <resolve_variables+0xafc>
resolve_variables():
quickjs-nuttx/quickjs.c:31679
                    while (code_match(&cc, (pos2 = get_label_pos(s, lab1)), OP_dup, op1, OP_drop, -1)) {
    8002b3aa:	57fd                	li	a5,-1
    8002b3ac:	4739                	li	a4,14
    8002b3ae:	86da                	mv	a3,s6
    8002b3b0:	4645                	li	a2,17
    8002b3b2:	1828                	addi	a0,sp,56
    8002b3b4:	ec2e                	sd	a1,24(sp)
    8002b3b6:	96bdd0ef          	jal	ra,80008d20 <code_match>
    8002b3ba:	65e2                	ld	a1,24(sp)
    8002b3bc:	48e1                	li	a7,24
    8002b3be:	06c00313          	li	t1,108
    8002b3c2:	e53d                	bnez	a0,8002b430 <resolve_variables+0xbc2>
quickjs-nuttx/quickjs.c:31682
                    if (code_match(&cc, pos2, op1, -1)) {
    8002b3c4:	56fd                	li	a3,-1
    8002b3c6:	865a                	mv	a2,s6
    8002b3c8:	1828                	addi	a0,sp,56
    8002b3ca:	957dd0ef          	jal	ra,80008d20 <code_match>
    8002b3ce:	e2050163          	beqz	a0,8002a9f0 <resolve_variables+0x182>
quickjs-nuttx/quickjs.c:31683
                        s->jump_size++;
    8002b3d2:	1b042783          	lw	a5,432(s0)
quickjs-nuttx/quickjs.c:31684
                        update_label(s, lab0, -1);
    8002b3d6:	567d                	li	a2,-1
    8002b3d8:	85ee                	mv	a1,s11
quickjs-nuttx/quickjs.c:31683
                        s->jump_size++;
    8002b3da:	2785                	addiw	a5,a5,1
    8002b3dc:	1af42823          	sw	a5,432(s0)
quickjs-nuttx/quickjs.c:31684
                        update_label(s, lab0, -1);
    8002b3e0:	8522                	mv	a0,s0
    8002b3e2:	b6ede0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:31685
                        update_label(s, cc.label, +1);
    8002b3e6:	45d6                	lw	a1,84(sp)
    8002b3e8:	4605                	li	a2,1
    8002b3ea:	8522                	mv	a0,s0
    8002b3ec:	b64de0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:31686
                        dbuf_putc(&bc_out, op1);
    8002b3f0:	0ffb7593          	zext.b	a1,s6
    8002b3f4:	1088                	addi	a0,sp,96
    8002b3f6:	6ec260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31687
                        dbuf_put_u32(&bc_out, cc.label);
    8002b3fa:	45d6                	lw	a1,84(sp)
    8002b3fc:	1088                	addi	a0,sp,96
quickjs-nuttx/quickjs.c:31688
                        pos_next = pos1;
    8002b3fe:	8966                	mv	s2,s9
quickjs-nuttx/quickjs.c:31687
                        dbuf_put_u32(&bc_out, cc.label);
    8002b400:	ce3dd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31689
                        if (line1 != -1 && line1 != line_num) {
    8002b404:	57fd                	li	a5,-1
    8002b406:	eefa8063          	beq	s5,a5,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31689 (discriminator 1)
    8002b40a:	ed5a0e63          	beq	s4,s5,8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31691
                            s->line_number_size++;
    8002b40e:	1c042783          	lw	a5,448(s0)
quickjs-nuttx/quickjs.c:31692
                            dbuf_putc(&bc_out, OP_line_num);
    8002b412:	0c800593          	li	a1,200
    8002b416:	1088                	addi	a0,sp,96
quickjs-nuttx/quickjs.c:31691
                            s->line_number_size++;
    8002b418:	2785                	addiw	a5,a5,1
    8002b41a:	1cf42023          	sw	a5,448(s0)
quickjs-nuttx/quickjs.c:31692
                            dbuf_putc(&bc_out, OP_line_num);
    8002b41e:	6c4260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31693
                            dbuf_put_u32(&bc_out, line_num);
    8002b422:	85d6                	mv	a1,s5
    8002b424:	1088                	addi	a0,sp,96
    8002b426:	cbddd0ef          	jal	ra,800090e2 <dbuf_put_u32>
    8002b42a:	8a56                	mv	s4,s5
    8002b42c:	ebaff06f          	j	8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31680
                        lab1 = cc.label;
    8002b430:	47d6                	lw	a5,84(sp)
    8002b432:	b73d                	j	8002b360 <resolve_variables+0xaf2>
get_label_pos():
quickjs-nuttx/quickjs.c:31370
                pos += 5;
    8002b434:	2595                	addiw	a1,a1,5
quickjs-nuttx/quickjs.c:31367
            switch (s->byte_code.buf[pos]) {
    8002b436:	bf35                	j	8002b372 <resolve_variables+0xb04>
get_u32():
quickjs-nuttx/cutils.h:170
    8002b438:	002d4783          	lbu	a5,2(s10)
    8002b43c:	001d4983          	lbu	s3,1(s10)
resolve_variables():
quickjs-nuttx/quickjs.c:31711
                dbuf_putc(&bc_out, OP_get_field);
    8002b440:	04100593          	li	a1,65
get_u32():
quickjs-nuttx/cutils.h:170
    8002b444:	07a2                	slli	a5,a5,0x8
    8002b446:	0137e7b3          	or	a5,a5,s3
    8002b44a:	003d4983          	lbu	s3,3(s10)
resolve_variables():
quickjs-nuttx/quickjs.c:31711
    8002b44e:	1088                	addi	a0,sp,96
get_u32():
quickjs-nuttx/cutils.h:170
    8002b450:	09c2                	slli	s3,s3,0x10
    8002b452:	00f9e7b3          	or	a5,s3,a5
    8002b456:	004d4983          	lbu	s3,4(s10)
    8002b45a:	09e2                	slli	s3,s3,0x18
    8002b45c:	00f9e9b3          	or	s3,s3,a5
    8002b460:	2981                	sext.w	s3,s3
resolve_variables():
quickjs-nuttx/quickjs.c:31711
    8002b462:	680260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31712
                dbuf_put_u32(&bc_out, name);
    8002b466:	85ce                	mv	a1,s3
    8002b468:	1088                	addi	a0,sp,96
    8002b46a:	c79dd0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:31714
            break;
    8002b46e:	e78ff06f          	j	8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31716
            dbuf_putc(&bc_out, OP_get_array_el);
    8002b472:	04700593          	li	a1,71
    8002b476:	1088                	addi	a0,sp,96
    8002b478:	66a260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31717
            break;
    8002b47c:	e6aff06f          	j	8002aae6 <resolve_variables+0x278>
quickjs-nuttx/quickjs.c:31738 (discriminator 2)
        op = bc_buf[pos];
    8002b480:	01bb85b3          	add	a1,s7,s11
quickjs-nuttx/quickjs.c:31739 (discriminator 2)
        len = opcode_info[op].size;
    8002b484:	0005c783          	lbu	a5,0(a1)
    8002b488:	0004a717          	auipc	a4,0x4a
    8002b48c:	92870713          	addi	a4,a4,-1752 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:31741 (discriminator 2)
        dbuf_put(&bc_out, bc_buf + pos, len);
    8002b490:	1088                	addi	a0,sp,96
quickjs-nuttx/quickjs.c:31739 (discriminator 2)
        len = opcode_info[op].size;
    8002b492:	078a                	slli	a5,a5,0x2
    8002b494:	97ba                	add	a5,a5,a4
    8002b496:	0007c603          	lbu	a2,0(a5)
quickjs-nuttx/quickjs.c:31740 (discriminator 2)
        pos_next = pos + len;
    8002b49a:	01b60dbb          	addw	s11,a2,s11
quickjs-nuttx/quickjs.c:31741 (discriminator 2)
        dbuf_put(&bc_out, bc_buf + pos, len);
    8002b49e:	5b2260ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:31737 (discriminator 2)
    for (; pos < bc_len; pos = pos_next) {
    8002b4a2:	fd8dcfe3          	blt	s11,s8,8002b480 <resolve_variables+0xc12>
quickjs-nuttx/quickjs.c:31743
    dbuf_free(&s->byte_code);
    8002b4a6:	13040513          	addi	a0,s0,304
    8002b4aa:	ec2a                	sd	a0,24(sp)
    8002b4ac:	6fa260ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:31744
    s->byte_code = bc_out;
    8002b4b0:	6562                	ld	a0,24(sp)
    8002b4b2:	03000613          	li	a2,48
    8002b4b6:	108c                	addi	a1,sp,96
    8002b4b8:	0f5380ef          	jal	ra,80063dac <memcpy>
    8002b4bc:	c1cff06f          	j	8002a8d8 <resolve_variables+0x6a>

000000008002b4c0 <add_eval_variables>:
add_eval_variables():
quickjs-nuttx/quickjs.c:30819
{
    8002b4c0:	711d                	addi	sp,sp,-96
    8002b4c2:	e8a2                	sd	s0,80(sp)
    8002b4c4:	e0ca                	sd	s2,64(sp)
    8002b4c6:	ec86                	sd	ra,88(sp)
    8002b4c8:	e4a6                	sd	s1,72(sp)
    8002b4ca:	fc4e                	sd	s3,56(sp)
    8002b4cc:	f852                	sd	s4,48(sp)
    8002b4ce:	f456                	sd	s5,40(sp)
    8002b4d0:	f05a                	sd	s6,32(sp)
    8002b4d2:	ec5e                	sd	s7,24(sp)
    8002b4d4:	e862                	sd	s8,16(sp)
quickjs-nuttx/quickjs.c:30827
    if (!s->is_eval && !(s->js_mode & JS_MODE_STRICT)) {
    8002b4d6:	5d9c                	lw	a5,56(a1)
quickjs-nuttx/quickjs.c:30819
{
    8002b4d8:	892a                	mv	s2,a0
    8002b4da:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:30827
    if (!s->is_eval && !(s->js_mode & JS_MODE_STRICT)) {
    8002b4dc:	e78d                	bnez	a5,8002b506 <add_eval_variables+0x46>
quickjs-nuttx/quickjs.c:30827 (discriminator 1)
    8002b4de:	0865c783          	lbu	a5,134(a1)
    8002b4e2:	8b85                	andi	a5,a5,1
    8002b4e4:	e38d                	bnez	a5,8002b506 <add_eval_variables+0x46>
quickjs-nuttx/quickjs.c:30828
        s->var_object_idx = add_var(ctx, s, JS_ATOM__var_);
    8002b4e6:	05300613          	li	a2,83
    8002b4ea:	c3afe0ef          	jal	ra,80029924 <add_var>
quickjs-nuttx/quickjs.c:30829
        if (s->has_parameter_expressions) {
    8002b4ee:	487c                	lw	a5,84(s0)
quickjs-nuttx/quickjs.c:30828
        s->var_object_idx = add_var(ctx, s, JS_ATOM__var_);
    8002b4f0:	0aa42a23          	sw	a0,180(s0)
quickjs-nuttx/quickjs.c:30829
        if (s->has_parameter_expressions) {
    8002b4f4:	cb89                	beqz	a5,8002b506 <add_eval_variables+0x46>
quickjs-nuttx/quickjs.c:30832
            s->arg_var_object_idx = add_var(ctx, s, JS_ATOM__arg_var_);
    8002b4f6:	05400613          	li	a2,84
    8002b4fa:	85a2                	mv	a1,s0
    8002b4fc:	854a                	mv	a0,s2
    8002b4fe:	c26fe0ef          	jal	ra,80029924 <add_var>
    8002b502:	0aa42c23          	sw	a0,184(s0)
quickjs-nuttx/quickjs.c:30837
    has_this_binding = s->has_this_binding;
    8002b506:	06442a03          	lw	s4,100(s0)
quickjs-nuttx/quickjs.c:30838
    if (has_this_binding) {
    8002b50a:	060a0463          	beqz	s4,8002b572 <add_eval_variables+0xb2>
quickjs-nuttx/quickjs.c:30839
        if (s->this_var_idx < 0)
    8002b50e:	0cc42783          	lw	a5,204(s0)
    8002b512:	0007d863          	bgez	a5,8002b522 <add_eval_variables+0x62>
quickjs-nuttx/quickjs.c:30840
            s->this_var_idx = add_var_this(ctx, s);
    8002b516:	85a2                	mv	a1,s0
    8002b518:	854a                	mv	a0,s2
    8002b51a:	d20fe0ef          	jal	ra,80029a3a <add_var_this>
    8002b51e:	0ca42623          	sw	a0,204(s0)
quickjs-nuttx/quickjs.c:30841
        if (s->new_target_var_idx < 0)
    8002b522:	0d042783          	lw	a5,208(s0)
    8002b526:	0007da63          	bgez	a5,8002b53a <add_eval_variables+0x7a>
quickjs-nuttx/quickjs.c:30842
            s->new_target_var_idx = add_var(ctx, s, JS_ATOM_new_target);
    8002b52a:	07200613          	li	a2,114
    8002b52e:	85a2                	mv	a1,s0
    8002b530:	854a                	mv	a0,s2
    8002b532:	bf2fe0ef          	jal	ra,80029924 <add_var>
    8002b536:	0ca42823          	sw	a0,208(s0)
quickjs-nuttx/quickjs.c:30843
        if (s->is_derived_class_constructor && s->this_active_func_var_idx < 0)
    8002b53a:	5c3c                	lw	a5,120(s0)
    8002b53c:	cf89                	beqz	a5,8002b556 <add_eval_variables+0x96>
quickjs-nuttx/quickjs.c:30843 (discriminator 1)
    8002b53e:	0d442783          	lw	a5,212(s0)
    8002b542:	0007da63          	bgez	a5,8002b556 <add_eval_variables+0x96>
quickjs-nuttx/quickjs.c:30844
            s->this_active_func_var_idx = add_var(ctx, s, JS_ATOM_this_active_func);
    8002b546:	07300613          	li	a2,115
    8002b54a:	85a2                	mv	a1,s0
    8002b54c:	854a                	mv	a0,s2
    8002b54e:	bd6fe0ef          	jal	ra,80029924 <add_var>
    8002b552:	0ca42a23          	sw	a0,212(s0)
quickjs-nuttx/quickjs.c:30845
        if (s->has_home_object && s->home_object_var_idx < 0)
    8002b556:	443c                	lw	a5,72(s0)
    8002b558:	cf89                	beqz	a5,8002b572 <add_eval_variables+0xb2>
quickjs-nuttx/quickjs.c:30845 (discriminator 1)
    8002b55a:	0d842783          	lw	a5,216(s0)
    8002b55e:	0007da63          	bgez	a5,8002b572 <add_eval_variables+0xb2>
quickjs-nuttx/quickjs.c:30846
            s->home_object_var_idx = add_var(ctx, s, JS_ATOM_home_object);
    8002b562:	07400613          	li	a2,116
    8002b566:	85a2                	mv	a1,s0
    8002b568:	854a                	mv	a0,s2
    8002b56a:	bbafe0ef          	jal	ra,80029924 <add_var>
    8002b56e:	0ca42c23          	sw	a0,216(s0)
quickjs-nuttx/quickjs.c:30848
    has_arguments_binding = s->has_arguments_binding;
    8002b572:	06042a83          	lw	s5,96(s0)
quickjs-nuttx/quickjs.c:30849
    if (has_arguments_binding) {
    8002b576:	060a8463          	beqz	s5,8002b5de <add_eval_variables+0x11e>
quickjs-nuttx/quickjs.c:30850
        add_arguments_var(ctx, s);
    8002b57a:	85a2                	mv	a1,s0
    8002b57c:	854a                	mv	a0,s2
    8002b57e:	ceafe0ef          	jal	ra,80029a68 <add_arguments_var>
quickjs-nuttx/quickjs.c:30854
        if (s->has_parameter_expressions && !(s->js_mode & JS_MODE_STRICT))
    8002b582:	487c                	lw	a5,84(s0)
    8002b584:	cfa9                	beqz	a5,8002b5de <add_eval_variables+0x11e>
quickjs-nuttx/quickjs.c:30854 (discriminator 1)
    8002b586:	08644783          	lbu	a5,134(s0)
    8002b58a:	8b85                	andi	a5,a5,1
    8002b58c:	eba9                	bnez	a5,8002b5de <add_eval_variables+0x11e>
add_arguments_arg():
quickjs-nuttx/quickjs.c:21830
    if (fd->arguments_arg_idx < 0) {
    8002b58e:	0c042783          	lw	a5,192(s0)
    8002b592:	0407d663          	bgez	a5,8002b5de <add_eval_variables+0x11e>
find_var_in_scope():
quickjs-nuttx/quickjs.c:21622
    for(scope_idx = fd->scopes[scope_level].first; scope_idx >= 0;
    8002b596:	787c                	ld	a5,240(s0)
quickjs-nuttx/quickjs.c:21624
        if (fd->vars[scope_idx].scope_level != scope_level)
    8002b598:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:21626
        if (fd->vars[scope_idx].var_name == name)
    8002b59a:	04e00613          	li	a2,78
quickjs-nuttx/quickjs.c:21622
    for(scope_idx = fd->scopes[scope_level].first; scope_idx >= 0;
    8002b59e:	47dc                	lw	a5,12(a5)
    8002b5a0:	0607d863          	bgez	a5,8002b610 <add_eval_variables+0x150>
add_arguments_arg():
quickjs-nuttx/quickjs.c:21836
            idx = add_var(ctx, fd, JS_ATOM_arguments);
    8002b5a4:	04e00613          	li	a2,78
    8002b5a8:	85a2                	mv	a1,s0
    8002b5aa:	854a                	mv	a0,s2
    8002b5ac:	b78fe0ef          	jal	ra,80029924 <add_var>
quickjs-nuttx/quickjs.c:21837
            if (idx < 0)
    8002b5b0:	02054763          	bltz	a0,8002b5de <add_eval_variables+0x11e>
quickjs-nuttx/quickjs.c:21839
            fd->vars[idx].scope_next = fd->scopes[ARG_SCOPE_INDEX].first;
    8002b5b4:	787c                	ld	a5,240(s0)
    8002b5b6:	00451713          	slli	a4,a0,0x4
    8002b5ba:	47d4                	lw	a3,12(a5)
    8002b5bc:	685c                	ld	a5,144(s0)
    8002b5be:	97ba                	add	a5,a5,a4
    8002b5c0:	c794                	sw	a3,8(a5)
quickjs-nuttx/quickjs.c:21840
            fd->scopes[ARG_SCOPE_INDEX].first = idx;
    8002b5c2:	787c                	ld	a5,240(s0)
quickjs-nuttx/quickjs.c:21841
            fd->vars[idx].scope_level = ARG_SCOPE_INDEX;
    8002b5c4:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:21840
            fd->scopes[ARG_SCOPE_INDEX].first = idx;
    8002b5c6:	c7c8                	sw	a0,12(a5)
quickjs-nuttx/quickjs.c:21841
            fd->vars[idx].scope_level = ARG_SCOPE_INDEX;
    8002b5c8:	685c                	ld	a5,144(s0)
    8002b5ca:	97ba                	add	a5,a5,a4
    8002b5cc:	c3d4                	sw	a3,4(a5)
quickjs-nuttx/quickjs.c:21842
            fd->vars[idx].is_lexical = TRUE;
    8002b5ce:	685c                	ld	a5,144(s0)
    8002b5d0:	97ba                	add	a5,a5,a4
    8002b5d2:	47d8                	lw	a4,12(a5)
    8002b5d4:	00276713          	ori	a4,a4,2
    8002b5d8:	c7d8                	sw	a4,12(a5)
quickjs-nuttx/quickjs.c:21844
            fd->arguments_arg_idx = idx;
    8002b5da:	0ca42023          	sw	a0,192(s0)
add_eval_variables():
quickjs-nuttx/quickjs.c:30857
    if (s->is_func_expr && s->func_name != JS_ATOM_NULL)
    8002b5de:	407c                	lw	a5,68(s0)
    8002b5e0:	cb81                	beqz	a5,8002b5f0 <add_eval_variables+0x130>
quickjs-nuttx/quickjs.c:30857 (discriminator 1)
    8002b5e2:	08842603          	lw	a2,136(s0)
    8002b5e6:	c609                	beqz	a2,8002b5f0 <add_eval_variables+0x130>
quickjs-nuttx/quickjs.c:30858
        add_func_var(ctx, s, s->func_name);
    8002b5e8:	85a2                	mv	a1,s0
    8002b5ea:	854a                	mv	a0,s2
    8002b5ec:	cacfe0ef          	jal	ra,80029a98 <add_func_var>
quickjs-nuttx/quickjs.c:30864
    assert(s->is_eval || s->closure_var_count == 0);
    8002b5f0:	5c1c                	lw	a5,56(s0)
    8002b5f2:	84a2                	mv	s1,s0
    8002b5f4:	eb8d                	bnez	a5,8002b626 <add_eval_variables+0x166>
quickjs-nuttx/quickjs.c:30864 (discriminator 1)
    8002b5f6:	19842783          	lw	a5,408(s0)
    8002b5fa:	c795                	beqz	a5,8002b626 <add_eval_variables+0x166>
quickjs-nuttx/quickjs.c:30864 (discriminator 3)
    8002b5fc:	65a1                	lui	a1,0x8
    8002b5fe:	4601                	li	a2,0
    8002b600:	89058593          	addi	a1,a1,-1904 # 7890 <asinh-0x7fff8770>
    8002b604:	0003e517          	auipc	a0,0x3e
    8002b608:	f9450513          	addi	a0,a0,-108 # 80069598 <qjsc_repl+0x3fe8>
    8002b60c:	350350ef          	jal	ra,8006095c <__assert>
find_var_in_scope():
quickjs-nuttx/quickjs.c:21624
        if (fd->vars[scope_idx].scope_level != scope_level)
    8002b610:	6858                	ld	a4,144(s0)
    8002b612:	0792                	slli	a5,a5,0x4
    8002b614:	97ba                	add	a5,a5,a4
    8002b616:	43d8                	lw	a4,4(a5)
    8002b618:	f8d716e3          	bne	a4,a3,8002b5a4 <add_eval_variables+0xe4>
quickjs-nuttx/quickjs.c:21626
        if (fd->vars[scope_idx].var_name == name)
    8002b61c:	4398                	lw	a4,0(a5)
    8002b61e:	fcc700e3          	beq	a4,a2,8002b5de <add_eval_variables+0x11e>
quickjs-nuttx/quickjs.c:21623
        scope_idx = fd->vars[scope_idx].scope_next) {
    8002b622:	479c                	lw	a5,8(a5)
    8002b624:	bfb5                	j	8002b5a0 <add_eval_variables+0xe0>
add_eval_variables():
quickjs-nuttx/quickjs.c:30904
        if (!is_arg_scope) {
    8002b626:	5b79                	li	s6,-2
quickjs-nuttx/quickjs.c:30918
                if (vd->scope_level == 0 &&
    8002b628:	05200b93          	li	s7,82
quickjs-nuttx/quickjs.c:30869
        scope_level = fd->parent_scope_level;
    8002b62c:	0144a983          	lw	s3,20(s1)
quickjs-nuttx/quickjs.c:30870
        fd = fd->parent;
    8002b630:	6484                	ld	s1,8(s1)
quickjs-nuttx/quickjs.c:30871
        if (!fd)
    8002b632:	20048663          	beqz	s1,8002b83e <add_eval_variables+0x37e>
quickjs-nuttx/quickjs.c:30874
        if (!has_this_binding && fd->has_this_binding) {
    8002b636:	060a1963          	bnez	s4,8002b6a8 <add_eval_variables+0x1e8>
quickjs-nuttx/quickjs.c:30874 (discriminator 1)
    8002b63a:	0644aa03          	lw	s4,100(s1)
    8002b63e:	060a0563          	beqz	s4,8002b6a8 <add_eval_variables+0x1e8>
quickjs-nuttx/quickjs.c:30875
            if (fd->this_var_idx < 0)
    8002b642:	0cc4a783          	lw	a5,204(s1)
    8002b646:	0007d863          	bgez	a5,8002b656 <add_eval_variables+0x196>
quickjs-nuttx/quickjs.c:30876
                fd->this_var_idx = add_var_this(ctx, fd);
    8002b64a:	85a6                	mv	a1,s1
    8002b64c:	854a                	mv	a0,s2
    8002b64e:	becfe0ef          	jal	ra,80029a3a <add_var_this>
    8002b652:	0ca4a623          	sw	a0,204(s1)
quickjs-nuttx/quickjs.c:30877
            if (fd->new_target_var_idx < 0)
    8002b656:	0d04a783          	lw	a5,208(s1)
    8002b65a:	0007da63          	bgez	a5,8002b66e <add_eval_variables+0x1ae>
quickjs-nuttx/quickjs.c:30878
                fd->new_target_var_idx = add_var(ctx, fd, JS_ATOM_new_target);
    8002b65e:	07200613          	li	a2,114
    8002b662:	85a6                	mv	a1,s1
    8002b664:	854a                	mv	a0,s2
    8002b666:	abefe0ef          	jal	ra,80029924 <add_var>
    8002b66a:	0ca4a823          	sw	a0,208(s1)
quickjs-nuttx/quickjs.c:30879
            if (fd->is_derived_class_constructor && fd->this_active_func_var_idx < 0)
    8002b66e:	5cbc                	lw	a5,120(s1)
    8002b670:	cf89                	beqz	a5,8002b68a <add_eval_variables+0x1ca>
quickjs-nuttx/quickjs.c:30879 (discriminator 1)
    8002b672:	0d44a783          	lw	a5,212(s1)
    8002b676:	0007da63          	bgez	a5,8002b68a <add_eval_variables+0x1ca>
quickjs-nuttx/quickjs.c:30880
                fd->this_active_func_var_idx = add_var(ctx, fd, JS_ATOM_this_active_func);
    8002b67a:	07300613          	li	a2,115
    8002b67e:	85a6                	mv	a1,s1
    8002b680:	854a                	mv	a0,s2
    8002b682:	aa2fe0ef          	jal	ra,80029924 <add_var>
    8002b686:	0ca4aa23          	sw	a0,212(s1)
quickjs-nuttx/quickjs.c:30881
            if (fd->has_home_object && fd->home_object_var_idx < 0)
    8002b68a:	44bc                	lw	a5,72(s1)
quickjs-nuttx/quickjs.c:30883
            has_this_binding = TRUE;
    8002b68c:	4a05                	li	s4,1
quickjs-nuttx/quickjs.c:30881
            if (fd->has_home_object && fd->home_object_var_idx < 0)
    8002b68e:	cf89                	beqz	a5,8002b6a8 <add_eval_variables+0x1e8>
quickjs-nuttx/quickjs.c:30881 (discriminator 1)
    8002b690:	0d84a783          	lw	a5,216(s1)
    8002b694:	0007da63          	bgez	a5,8002b6a8 <add_eval_variables+0x1e8>
quickjs-nuttx/quickjs.c:30882
                fd->home_object_var_idx = add_var(ctx, fd, JS_ATOM_home_object);
    8002b698:	07400613          	li	a2,116
    8002b69c:	85a6                	mv	a1,s1
    8002b69e:	854a                	mv	a0,s2
    8002b6a0:	a84fe0ef          	jal	ra,80029924 <add_var>
    8002b6a4:	0ca4ac23          	sw	a0,216(s1)
quickjs-nuttx/quickjs.c:30886
        if (!has_arguments_binding && fd->has_arguments_binding) {
    8002b6a8:	000a9b63          	bnez	s5,8002b6be <add_eval_variables+0x1fe>
quickjs-nuttx/quickjs.c:30886 (discriminator 1)
    8002b6ac:	0604aa83          	lw	s5,96(s1)
    8002b6b0:	000a8763          	beqz	s5,8002b6be <add_eval_variables+0x1fe>
quickjs-nuttx/quickjs.c:30887
            add_arguments_var(ctx, fd);
    8002b6b4:	85a6                	mv	a1,s1
    8002b6b6:	854a                	mv	a0,s2
    8002b6b8:	bb0fe0ef          	jal	ra,80029a68 <add_arguments_var>
quickjs-nuttx/quickjs.c:30888
            has_arguments_binding = TRUE;
    8002b6bc:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:30891
        if (fd->is_func_expr && fd->func_name != JS_ATOM_NULL)
    8002b6be:	40fc                	lw	a5,68(s1)
    8002b6c0:	cb81                	beqz	a5,8002b6d0 <add_eval_variables+0x210>
quickjs-nuttx/quickjs.c:30891 (discriminator 1)
    8002b6c2:	0884a603          	lw	a2,136(s1)
    8002b6c6:	c609                	beqz	a2,8002b6d0 <add_eval_variables+0x210>
quickjs-nuttx/quickjs.c:30892
            add_func_var(ctx, fd, fd->func_name);
    8002b6c8:	85a6                	mv	a1,s1
    8002b6ca:	854a                	mv	a0,s2
    8002b6cc:	bccfe0ef          	jal	ra,80029a98 <add_func_var>
quickjs-nuttx/quickjs.c:30895
        scope_idx = fd->scopes[scope_level].first;
    8002b6d0:	78fc                	ld	a5,240(s1)
    8002b6d2:	098e                	slli	s3,s3,0x3
    8002b6d4:	97ce                	add	a5,a5,s3
    8002b6d6:	43dc                	lw	a5,4(a5)
quickjs-nuttx/quickjs.c:30896
        while (scope_idx >= 0) {
    8002b6d8:	0207d363          	bgez	a5,8002b6fe <add_eval_variables+0x23e>
quickjs-nuttx/quickjs.c:30907
            for(i = 0; i < fd->arg_count; i++) {
    8002b6dc:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:30927
            for(i = 0; i < fd->var_count; i++) {
    8002b6de:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:30904
        if (!is_arg_scope) {
    8002b6e0:	11678563          	beq	a5,s6,8002b7ea <add_eval_variables+0x32a>
quickjs-nuttx/quickjs.c:30907 (discriminator 1)
            for(i = 0; i < fd->arg_count; i++) {
    8002b6e4:	0ac4a783          	lw	a5,172(s1)
    8002b6e8:	04f9ce63          	blt	s3,a5,8002b744 <add_eval_variables+0x284>
quickjs-nuttx/quickjs.c:30915
            for(i = 0; i < fd->var_count; i++) {
    8002b6ec:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:30915 (discriminator 1)
    8002b6ee:	09c4a783          	lw	a5,156(s1)
    8002b6f2:	08f9c263          	blt	s3,a5,8002b776 <add_eval_variables+0x2b6>
quickjs-nuttx/quickjs.c:30937
        if (fd->is_eval) {
    8002b6f6:	5c9c                	lw	a5,56(s1)
    8002b6f8:	db95                	beqz	a5,8002b62c <add_eval_variables+0x16c>
quickjs-nuttx/quickjs.c:30941
            for (idx = 0; idx < fd->closure_var_count; idx++) {
    8002b6fa:	4981                	li	s3,0
    8002b6fc:	aa25                	j	8002b834 <add_eval_variables+0x374>
quickjs-nuttx/quickjs.c:30897
            vd = &fd->vars[scope_idx];
    8002b6fe:	0904b983          	ld	s3,144(s1)
    8002b702:	00479713          	slli	a4,a5,0x4
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b706:	4685                	li	a3,1
add_eval_variables():
quickjs-nuttx/quickjs.c:30897
            vd = &fd->vars[scope_idx];
    8002b708:	99ba                	add	s3,s3,a4
quickjs-nuttx/quickjs.c:30898
            vd->is_captured = 1;
    8002b70a:	00c9a883          	lw	a7,12(s3)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b70e:	0009a803          	lw	a6,0(s3)
    8002b712:	8626                	mv	a2,s1
add_eval_variables():
quickjs-nuttx/quickjs.c:30898
            vd->is_captured = 1;
    8002b714:	0048e893          	ori	a7,a7,4
quickjs-nuttx/quickjs.c:30900
                            vd->var_name, vd->is_const, vd->is_lexical, vd->var_kind);
    8002b718:	0048d71b          	srliw	a4,a7,0x4
quickjs-nuttx/quickjs.c:30898
            vd->is_captured = 1;
    8002b71c:	0119a623          	sw	a7,12(s3)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b720:	8b3d                	andi	a4,a4,15
    8002b722:	e43a                	sd	a4,8(sp)
add_eval_variables():
quickjs-nuttx/quickjs.c:30900
                            vd->var_name, vd->is_const, vd->is_lexical, vd->var_kind);
    8002b724:	00c9a703          	lw	a4,12(s3)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b728:	0018f893          	andi	a7,a7,1
    8002b72c:	85a2                	mv	a1,s0
add_eval_variables():
quickjs-nuttx/quickjs.c:30900
                            vd->var_name, vd->is_const, vd->is_lexical, vd->var_kind);
    8002b72e:	0017571b          	srliw	a4,a4,0x1
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b732:	8b05                	andi	a4,a4,1
    8002b734:	e03a                	sd	a4,0(sp)
    8002b736:	854a                	mv	a0,s2
    8002b738:	4701                	li	a4,0
    8002b73a:	d94fe0ef          	jal	ra,80029cce <get_closure_var2>
add_eval_variables():
quickjs-nuttx/quickjs.c:30901
            scope_idx = vd->scope_next;
    8002b73e:	0089a783          	lw	a5,8(s3)
    8002b742:	bf59                	j	8002b6d8 <add_eval_variables+0x218>
quickjs-nuttx/quickjs.c:30908
                vd = &fd->args[i];
    8002b744:	70d8                	ld	a4,160(s1)
    8002b746:	00499793          	slli	a5,s3,0x4
    8002b74a:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30909
                if (vd->var_name != JS_ATOM_NULL) {
    8002b74c:	0007a803          	lw	a6,0(a5)
    8002b750:	02080163          	beqz	a6,8002b772 <add_eval_variables+0x2b2>
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b754:	e402                	sd	zero,8(sp)
add_eval_variables():
quickjs-nuttx/quickjs.c:30912
                                    vd->is_lexical, JS_VAR_NORMAL);
    8002b756:	47dc                	lw	a5,12(a5)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b758:	4881                	li	a7,0
    8002b75a:	4705                	li	a4,1
add_eval_variables():
quickjs-nuttx/quickjs.c:30912
                                    vd->is_lexical, JS_VAR_NORMAL);
    8002b75c:	0017d79b          	srliw	a5,a5,0x1
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b760:	8b85                	andi	a5,a5,1
    8002b762:	e03e                	sd	a5,0(sp)
    8002b764:	4685                	li	a3,1
    8002b766:	87ce                	mv	a5,s3
    8002b768:	8626                	mv	a2,s1
    8002b76a:	85a2                	mv	a1,s0
    8002b76c:	854a                	mv	a0,s2
    8002b76e:	d60fe0ef          	jal	ra,80029cce <get_closure_var2>
add_eval_variables():
quickjs-nuttx/quickjs.c:30907 (discriminator 2)
            for(i = 0; i < fd->arg_count; i++) {
    8002b772:	2985                	addiw	s3,s3,1
    8002b774:	bf85                	j	8002b6e4 <add_eval_variables+0x224>
quickjs-nuttx/quickjs.c:30916
                vd = &fd->vars[i];
    8002b776:	68d8                	ld	a4,144(s1)
    8002b778:	00499793          	slli	a5,s3,0x4
    8002b77c:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30918
                if (vd->scope_level == 0 &&
    8002b77e:	43d8                	lw	a4,4(a5)
    8002b780:	e70d                	bnez	a4,8002b7aa <add_eval_variables+0x2ea>
quickjs-nuttx/quickjs.c:30919 (discriminator 1)
                    vd->var_name != JS_ATOM__ret_ &&
    8002b782:	0007a803          	lw	a6,0(a5)
quickjs-nuttx/quickjs.c:30918 (discriminator 1)
                if (vd->scope_level == 0 &&
    8002b786:	03780263          	beq	a6,s7,8002b7aa <add_eval_variables+0x2ea>
quickjs-nuttx/quickjs.c:30919
                    vd->var_name != JS_ATOM__ret_ &&
    8002b78a:	02080063          	beqz	a6,8002b7aa <add_eval_variables+0x2ea>
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b78e:	e402                	sd	zero,8(sp)
add_eval_variables():
quickjs-nuttx/quickjs.c:30923
                                    vd->is_lexical, JS_VAR_NORMAL);
    8002b790:	47dc                	lw	a5,12(a5)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b792:	4881                	li	a7,0
    8002b794:	4685                	li	a3,1
add_eval_variables():
quickjs-nuttx/quickjs.c:30923
                                    vd->is_lexical, JS_VAR_NORMAL);
    8002b796:	0017d79b          	srliw	a5,a5,0x1
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b79a:	8b85                	andi	a5,a5,1
    8002b79c:	e03e                	sd	a5,0(sp)
    8002b79e:	8626                	mv	a2,s1
    8002b7a0:	87ce                	mv	a5,s3
    8002b7a2:	85a2                	mv	a1,s0
    8002b7a4:	854a                	mv	a0,s2
    8002b7a6:	d28fe0ef          	jal	ra,80029cce <get_closure_var2>
add_eval_variables():
quickjs-nuttx/quickjs.c:30915 (discriminator 2)
            for(i = 0; i < fd->var_count; i++) {
    8002b7aa:	2985                	addiw	s3,s3,1
    8002b7ac:	b789                	j	8002b6ee <add_eval_variables+0x22e>
quickjs-nuttx/quickjs.c:30928
                vd = &fd->vars[i];
    8002b7ae:	68d8                	ld	a4,144(s1)
    8002b7b0:	004c1993          	slli	s3,s8,0x4
    8002b7b4:	99ba                	add	s3,s3,a4
quickjs-nuttx/quickjs.c:30930
                if (vd->scope_level == 0 && is_var_in_arg_scope(vd)) {
    8002b7b6:	0049a783          	lw	a5,4(s3)
    8002b7ba:	e79d                	bnez	a5,8002b7e8 <add_eval_variables+0x328>
quickjs-nuttx/quickjs.c:30930 (discriminator 1)
    8002b7bc:	854e                	mv	a0,s3
    8002b7be:	e0bdd0ef          	jal	ra,800095c8 <is_var_in_arg_scope>
    8002b7c2:	c11d                	beqz	a0,8002b7e8 <add_eval_variables+0x328>
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b7c4:	0009a803          	lw	a6,0(s3)
    8002b7c8:	e402                	sd	zero,8(sp)
add_eval_variables():
quickjs-nuttx/quickjs.c:30933
                                    vd->is_lexical, JS_VAR_NORMAL);
    8002b7ca:	00c9a783          	lw	a5,12(s3)
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b7ce:	4881                	li	a7,0
    8002b7d0:	4701                	li	a4,0
add_eval_variables():
quickjs-nuttx/quickjs.c:30933
                                    vd->is_lexical, JS_VAR_NORMAL);
    8002b7d2:	0017d79b          	srliw	a5,a5,0x1
get_closure_var():
quickjs-nuttx/quickjs.c:29954
    return get_closure_var2(ctx, s, fd, TRUE, is_arg,
    8002b7d6:	8b85                	andi	a5,a5,1
    8002b7d8:	e03e                	sd	a5,0(sp)
    8002b7da:	4685                	li	a3,1
    8002b7dc:	87e2                	mv	a5,s8
    8002b7de:	8626                	mv	a2,s1
    8002b7e0:	85a2                	mv	a1,s0
    8002b7e2:	854a                	mv	a0,s2
    8002b7e4:	ceafe0ef          	jal	ra,80029cce <get_closure_var2>
add_eval_variables():
quickjs-nuttx/quickjs.c:30927 (discriminator 2)
            for(i = 0; i < fd->var_count; i++) {
    8002b7e8:	2c05                	addiw	s8,s8,1
quickjs-nuttx/quickjs.c:30927 (discriminator 1)
    8002b7ea:	09c4a783          	lw	a5,156(s1)
    8002b7ee:	fcfc40e3          	blt	s8,a5,8002b7ae <add_eval_variables+0x2ee>
    8002b7f2:	b711                	j	8002b6f6 <add_eval_variables+0x236>
quickjs-nuttx/quickjs.c:30942 (discriminator 3)
                JSClosureVar *cv = &fd->closure_var[idx];
    8002b7f4:	1a04b783          	ld	a5,416(s1)
    8002b7f8:	00399713          	slli	a4,s3,0x3
quickjs-nuttx/quickjs.c:30943 (discriminator 3)
                get_closure_var2(ctx, s, fd,
    8002b7fc:	8626                	mv	a2,s1
quickjs-nuttx/quickjs.c:30942 (discriminator 3)
                JSClosureVar *cv = &fd->closure_var[idx];
    8002b7fe:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:30945 (discriminator 3)
                                 idx, cv->var_name, cv->is_const,
    8002b800:	4394                	lw	a3,0(a5)
quickjs-nuttx/quickjs.c:30943 (discriminator 3)
                get_closure_var2(ctx, s, fd,
    8002b802:	0047a803          	lw	a6,4(a5)
    8002b806:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs.c:30945 (discriminator 3)
                                 idx, cv->var_name, cv->is_const,
    8002b808:	0026d89b          	srliw	a7,a3,0x2
quickjs-nuttx/quickjs.c:30944 (discriminator 3)
                                 FALSE, cv->is_arg,
    8002b80c:	0016d71b          	srliw	a4,a3,0x1
quickjs-nuttx/quickjs.c:30946 (discriminator 3)
                                 cv->is_lexical, cv->var_kind);
    8002b810:	0046d69b          	srliw	a3,a3,0x4
quickjs-nuttx/quickjs.c:30943 (discriminator 3)
                get_closure_var2(ctx, s, fd,
    8002b814:	8abd                	andi	a3,a3,15
    8002b816:	e436                	sd	a3,8(sp)
quickjs-nuttx/quickjs.c:30946 (discriminator 3)
                                 cv->is_lexical, cv->var_kind);
    8002b818:	439c                	lw	a5,0(a5)
quickjs-nuttx/quickjs.c:30943 (discriminator 3)
                get_closure_var2(ctx, s, fd,
    8002b81a:	0018f893          	andi	a7,a7,1
    8002b81e:	8b05                	andi	a4,a4,1
quickjs-nuttx/quickjs.c:30946 (discriminator 3)
                                 cv->is_lexical, cv->var_kind);
    8002b820:	0037d79b          	srliw	a5,a5,0x3
quickjs-nuttx/quickjs.c:30943 (discriminator 3)
                get_closure_var2(ctx, s, fd,
    8002b824:	8b85                	andi	a5,a5,1
    8002b826:	e03e                	sd	a5,0(sp)
    8002b828:	4681                	li	a3,0
    8002b82a:	87ce                	mv	a5,s3
    8002b82c:	854a                	mv	a0,s2
    8002b82e:	ca0fe0ef          	jal	ra,80029cce <get_closure_var2>
quickjs-nuttx/quickjs.c:30941 (discriminator 3)
            for (idx = 0; idx < fd->closure_var_count; idx++) {
    8002b832:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:30941 (discriminator 1)
    8002b834:	1984a783          	lw	a5,408(s1)
    8002b838:	faf9cee3          	blt	s3,a5,8002b7f4 <add_eval_variables+0x334>
    8002b83c:	bbc5                	j	8002b62c <add_eval_variables+0x16c>
quickjs-nuttx/quickjs.c:30950
}
    8002b83e:	60e6                	ld	ra,88(sp)
    8002b840:	6446                	ld	s0,80(sp)
    8002b842:	64a6                	ld	s1,72(sp)
    8002b844:	6906                	ld	s2,64(sp)
    8002b846:	79e2                	ld	s3,56(sp)
    8002b848:	7a42                	ld	s4,48(sp)
    8002b84a:	7aa2                	ld	s5,40(sp)
    8002b84c:	7b02                	ld	s6,32(sp)
    8002b84e:	6be2                	ld	s7,24(sp)
    8002b850:	6c42                	ld	s8,16(sp)
    8002b852:	6125                	addi	sp,sp,96
    8002b854:	8082                	ret

000000008002b856 <ss_check>:
ss_check():
quickjs-nuttx/quickjs.c:32859
{
    8002b856:	1101                	addi	sp,sp,-32
    8002b858:	e822                	sd	s0,16(sp)
    8002b85a:	e426                	sd	s1,8(sp)
    8002b85c:	ec06                	sd	ra,24(sp)
    8002b85e:	84b2                	mv	s1,a2
    8002b860:	8636                	mv	a2,a3
    8002b862:	86be                	mv	a3,a5
quickjs-nuttx/quickjs.c:32860
    if ((unsigned)pos >= s->bc_len) {
    8002b864:	419c                	lw	a5,0(a1)
quickjs-nuttx/quickjs.c:32859
{
    8002b866:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:32860
    if ((unsigned)pos >= s->bc_len) {
    8002b868:	00f4eb63          	bltu	s1,a5,8002b87e <ss_check+0x28>
quickjs-nuttx/quickjs.c:32861
        JS_ThrowInternalError(ctx, "bytecode buffer overflow (op=%d, pc=%d)", op, pos);
    8002b86c:	86a6                	mv	a3,s1
    8002b86e:	00040597          	auipc	a1,0x40
    8002b872:	ca258593          	addi	a1,a1,-862 # 8006b510 <qjsc_repl+0x5f60>
quickjs-nuttx/quickjs.c:32867
            JS_ThrowInternalError(ctx, "stack overflow (op=%d, pc=%d)", op, pos);
    8002b876:	882ee0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:32893
        return -1;
    8002b87a:	557d                	li	a0,-1
    8002b87c:	a879                	j	8002b91a <ss_check+0xc4>
quickjs-nuttx/quickjs.c:32864
    if (stack_len > s->stack_len_max) {
    8002b87e:	405c                	lw	a5,4(s0)
    8002b880:	882a                	mv	a6,a0
    8002b882:	85ba                	mv	a1,a4
    8002b884:	00e7dd63          	bge	a5,a4,8002b89e <ss_check+0x48>
quickjs-nuttx/quickjs.c:32866
        if (s->stack_len_max > JS_STACK_SIZE_MAX) {
    8002b888:	67c1                	lui	a5,0x10
quickjs-nuttx/quickjs.c:32865
        s->stack_len_max = stack_len;
    8002b88a:	c058                	sw	a4,4(s0)
quickjs-nuttx/quickjs.c:32866
        if (s->stack_len_max > JS_STACK_SIZE_MAX) {
    8002b88c:	17f9                	addi	a5,a5,-2
    8002b88e:	00e7d863          	bge	a5,a4,8002b89e <ss_check+0x48>
quickjs-nuttx/quickjs.c:32867
            JS_ThrowInternalError(ctx, "stack overflow (op=%d, pc=%d)", op, pos);
    8002b892:	86a6                	mv	a3,s1
    8002b894:	00040597          	auipc	a1,0x40
    8002b898:	ca458593          	addi	a1,a1,-860 # 8006b538 <qjsc_repl+0x5f88>
    8002b89c:	bfe9                	j	8002b876 <ss_check+0x20>
quickjs-nuttx/quickjs.c:32871
    if (s->stack_level_tab[pos] != 0xffff) {
    8002b89e:	6418                	ld	a4,8(s0)
    8002b8a0:	00149793          	slli	a5,s1,0x1
    8002b8a4:	97ba                	add	a5,a5,a4
    8002b8a6:	0007d603          	lhu	a2,0(a5) # 10000 <asinh-0x7fff0000>
    8002b8aa:	6741                	lui	a4,0x10
    8002b8ac:	177d                	addi	a4,a4,-1
    8002b8ae:	02e60c63          	beq	a2,a4,8002b8e6 <ss_check+0x90>
quickjs-nuttx/quickjs.c:32873
        if (s->stack_level_tab[pos] != stack_len) {
    8002b8b2:	00b60c63          	beq	a2,a1,8002b8ca <ss_check+0x74>
quickjs-nuttx/quickjs.c:32874
            JS_ThrowInternalError(ctx, "inconsistent stack size: %d %d (pc=%d)",
    8002b8b6:	86ae                	mv	a3,a1
    8002b8b8:	8726                	mv	a4,s1
    8002b8ba:	00040597          	auipc	a1,0x40
    8002b8be:	c9e58593          	addi	a1,a1,-866 # 8006b558 <qjsc_repl+0x5fa8>
quickjs-nuttx/quickjs.c:32878
            JS_ThrowInternalError(ctx, "inconsistent catch position: %d %d (pc=%d)",
    8002b8c2:	8542                	mv	a0,a6
    8002b8c4:	834ee0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:32880
            return -1;
    8002b8c8:	bf4d                	j	8002b87a <ss_check+0x24>
quickjs-nuttx/quickjs.c:32877
        } else if (s->catch_pos_tab[pos] != catch_pos) {
    8002b8ca:	681c                	ld	a5,16(s0)
    8002b8cc:	00249713          	slli	a4,s1,0x2
quickjs-nuttx/quickjs.c:32882
            return 0;
    8002b8d0:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:32877
        } else if (s->catch_pos_tab[pos] != catch_pos) {
    8002b8d2:	97ba                	add	a5,a5,a4
    8002b8d4:	4390                	lw	a2,0(a5)
    8002b8d6:	04d60263          	beq	a2,a3,8002b91a <ss_check+0xc4>
quickjs-nuttx/quickjs.c:32878
            JS_ThrowInternalError(ctx, "inconsistent catch position: %d %d (pc=%d)",
    8002b8da:	8726                	mv	a4,s1
    8002b8dc:	00040597          	auipc	a1,0x40
    8002b8e0:	ca458593          	addi	a1,a1,-860 # 8006b580 <qjsc_repl+0x5fd0>
    8002b8e4:	bff9                	j	8002b8c2 <ss_check+0x6c>
quickjs-nuttx/quickjs.c:32887
    s->stack_level_tab[pos] = stack_len;
    8002b8e6:	00b79023          	sh	a1,0(a5)
quickjs-nuttx/quickjs.c:32888
    s->catch_pos_tab[pos] = catch_pos;
    8002b8ea:	681c                	ld	a5,16(s0)
    8002b8ec:	00249713          	slli	a4,s1,0x2
quickjs-nuttx/quickjs.c:32891
    if (js_resize_array(ctx, (void **)&s->pc_stack, sizeof(s->pc_stack[0]),
    8002b8f0:	4611                	li	a2,4
quickjs-nuttx/quickjs.c:32888
    s->catch_pos_tab[pos] = catch_pos;
    8002b8f2:	97ba                	add	a5,a5,a4
    8002b8f4:	c394                	sw	a3,0(a5)
quickjs-nuttx/quickjs.c:32891
    if (js_resize_array(ctx, (void **)&s->pc_stack, sizeof(s->pc_stack[0]),
    8002b8f6:	5018                	lw	a4,32(s0)
    8002b8f8:	02440693          	addi	a3,s0,36
    8002b8fc:	01840593          	addi	a1,s0,24
    8002b900:	2705                	addiw	a4,a4,1
    8002b902:	8542                	mv	a0,a6
    8002b904:	8a8f10ef          	jal	ra,8001c9ac <js_resize_array>
    8002b908:	f92d                	bnez	a0,8002b87a <ss_check+0x24>
quickjs-nuttx/quickjs.c:32894
    s->pc_stack[s->pc_stack_len++] = pos;
    8002b90a:	501c                	lw	a5,32(s0)
    8002b90c:	6c18                	ld	a4,24(s0)
    8002b90e:	0017869b          	addiw	a3,a5,1
    8002b912:	078a                	slli	a5,a5,0x2
    8002b914:	d014                	sw	a3,32(s0)
    8002b916:	97ba                	add	a5,a5,a4
    8002b918:	c384                	sw	s1,0(a5)
quickjs-nuttx/quickjs.c:32896
}
    8002b91a:	60e2                	ld	ra,24(sp)
    8002b91c:	6442                	ld	s0,16(sp)
    8002b91e:	64a2                	ld	s1,8(sp)
    8002b920:	6105                	addi	sp,sp,32
    8002b922:	8082                	ret

000000008002b924 <js_create_function>:
js_create_function():
quickjs-nuttx/quickjs.c:33138
{
    8002b924:	716d                	addi	sp,sp,-272
    8002b926:	e222                	sd	s0,256(sp)
    8002b928:	f56e                	sd	s11,168(sp)
    8002b92a:	e606                	sd	ra,264(sp)
    8002b92c:	fda6                	sd	s1,248(sp)
    8002b92e:	f9ca                	sd	s2,240(sp)
    8002b930:	f5ce                	sd	s3,232(sp)
    8002b932:	f1d2                	sd	s4,224(sp)
    8002b934:	edd6                	sd	s5,216(sp)
    8002b936:	e9da                	sd	s6,208(sp)
    8002b938:	e5de                	sd	s7,200(sp)
    8002b93a:	e1e2                	sd	s8,192(sp)
    8002b93c:	fd66                	sd	s9,184(sp)
    8002b93e:	f96a                	sd	s10,176(sp)
    8002b940:	8daa                	mv	s11,a0
    8002b942:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:33147
    for (scope = 0; scope < fd->scope_count; scope++) {
    8002b944:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:33148
        fd->scopes[scope].first = -1;
    8002b946:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:33147 (discriminator 1)
    for (scope = 0; scope < fd->scope_count; scope++) {
    8002b948:	0ec42703          	lw	a4,236(s0)
    8002b94c:	00e7c963          	blt	a5,a4,8002b95e <js_create_function+0x3a>
quickjs-nuttx/quickjs.c:33150
    if (fd->has_parameter_expressions) {
    8002b950:	487c                	lw	a5,84(s0)
    8002b952:	c781                	beqz	a5,8002b95a <js_create_function+0x36>
quickjs-nuttx/quickjs.c:33152
        fd->scopes[ARG_SCOPE_INDEX].first = ARG_SCOPE_END;
    8002b954:	787c                	ld	a5,240(s0)
    8002b956:	5779                	li	a4,-2
    8002b958:	c7d8                	sw	a4,12(a5)
quickjs-nuttx/quickjs.c:33147 (discriminator 1)
    for (scope = 0; scope < fd->scope_count; scope++) {
    8002b95a:	4781                	li	a5,0
    8002b95c:	a035                	j	8002b988 <js_create_function+0x64>
quickjs-nuttx/quickjs.c:33148 (discriminator 3)
        fd->scopes[scope].first = -1;
    8002b95e:	7878                	ld	a4,240(s0)
    8002b960:	00379613          	slli	a2,a5,0x3
quickjs-nuttx/quickjs.c:33147 (discriminator 3)
    for (scope = 0; scope < fd->scope_count; scope++) {
    8002b964:	2785                	addiw	a5,a5,1
quickjs-nuttx/quickjs.c:33148 (discriminator 3)
        fd->scopes[scope].first = -1;
    8002b966:	9732                	add	a4,a4,a2
    8002b968:	c354                	sw	a3,4(a4)
quickjs-nuttx/quickjs.c:33147 (discriminator 3)
    for (scope = 0; scope < fd->scope_count; scope++) {
    8002b96a:	bff9                	j	8002b948 <js_create_function+0x24>
quickjs-nuttx/quickjs.c:33155 (discriminator 3)
        JSVarDef *vd = &fd->vars[idx];
    8002b96c:	6854                	ld	a3,144(s0)
    8002b96e:	00479713          	slli	a4,a5,0x4
quickjs-nuttx/quickjs.c:33156 (discriminator 3)
        vd->scope_next = fd->scopes[vd->scope_level].first;
    8002b972:	7870                	ld	a2,240(s0)
quickjs-nuttx/quickjs.c:33155 (discriminator 3)
        JSVarDef *vd = &fd->vars[idx];
    8002b974:	96ba                	add	a3,a3,a4
quickjs-nuttx/quickjs.c:33156 (discriminator 3)
        vd->scope_next = fd->scopes[vd->scope_level].first;
    8002b976:	42d8                	lw	a4,4(a3)
    8002b978:	070e                	slli	a4,a4,0x3
    8002b97a:	963a                	add	a2,a2,a4
    8002b97c:	4250                	lw	a2,4(a2)
    8002b97e:	c690                	sw	a2,8(a3)
quickjs-nuttx/quickjs.c:33157 (discriminator 3)
        fd->scopes[vd->scope_level].first = idx;
    8002b980:	7874                	ld	a3,240(s0)
    8002b982:	9736                	add	a4,a4,a3
    8002b984:	c35c                	sw	a5,4(a4)
quickjs-nuttx/quickjs.c:33154 (discriminator 3)
    for (idx = 0; idx < fd->var_count; idx++) {
    8002b986:	2785                	addiw	a5,a5,1
quickjs-nuttx/quickjs.c:33154 (discriminator 1)
    8002b988:	09c42703          	lw	a4,156(s0)
    8002b98c:	fee7c0e3          	blt	a5,a4,8002b96c <js_create_function+0x48>
quickjs-nuttx/quickjs.c:33159
    for (scope = 2; scope < fd->scope_count; scope++) {
    8002b990:	4709                	li	a4,2
quickjs-nuttx/quickjs.c:33159 (discriminator 1)
    8002b992:	0ec42783          	lw	a5,236(s0)
    8002b996:	28f74463          	blt	a4,a5,8002bc1e <js_create_function+0x2fa>
quickjs-nuttx/quickjs.c:33164
    for (idx = 0; idx < fd->var_count; idx++) {
    8002b99a:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:33166
        if (vd->scope_next < 0 && vd->scope_level > 1) {
    8002b99c:	4585                	li	a1,1
quickjs-nuttx/quickjs.c:33164 (discriminator 1)
    for (idx = 0; idx < fd->var_count; idx++) {
    8002b99e:	09c42783          	lw	a5,156(s0)
    8002b9a2:	28f6cc63          	blt	a3,a5,8002bc3a <js_create_function+0x316>
quickjs-nuttx/quickjs.c:33176
    if (fd->has_eval_call)
    8002b9a6:	4c7c                	lw	a5,92(s0)
    8002b9a8:	c789                	beqz	a5,8002b9b2 <js_create_function+0x8e>
quickjs-nuttx/quickjs.c:33177
        add_eval_variables(ctx, fd);
    8002b9aa:	85a2                	mv	a1,s0
    8002b9ac:	856e                	mv	a0,s11
    8002b9ae:	b13ff0ef          	jal	ra,8002b4c0 <add_eval_variables>
quickjs-nuttx/quickjs.c:33180
    if (fd->module) {
    8002b9b2:	21843903          	ld	s2,536(s0)
add_module_variables():
quickjs-nuttx/quickjs.c:33111
    for(i = 0; i < fd->global_var_count; i++) {
    8002b9b6:	4481                	li	s1,0
js_create_function():
quickjs-nuttx/quickjs.c:33180
    if (fd->module) {
    8002b9b8:	2e091063          	bnez	s2,8002bc98 <js_create_function+0x374>
quickjs-nuttx/quickjs.c:33186
    list_for_each_safe(el, el1, &fd->child_list) {
    8002b9bc:	700c                	ld	a1,32(s0)
    8002b9be:	01840993          	addi	s3,s0,24
quickjs-nuttx/quickjs.c:33193
        if (JS_IsException(func_obj))
    8002b9c2:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:33186
    list_for_each_safe(el, el1, &fd->child_list) {
    8002b9c4:	0085b903          	ld	s2,8(a1)
quickjs-nuttx/quickjs.c:33186 (discriminator 2)
    8002b9c8:	33359e63          	bne	a1,s3,8002bd04 <js_create_function+0x3e0>
quickjs-nuttx/quickjs.c:33212
    if (resolve_variables(ctx, fd))
    8002b9cc:	85a2                	mv	a1,s0
    8002b9ce:	856e                	mv	a0,s11
    8002b9d0:	e9ffe0ef          	jal	ra,8002a86e <resolve_variables>
    8002b9d4:	8b2a                	mv	s6,a0
    8002b9d6:	30051363          	bnez	a0,8002bcdc <js_create_function+0x3b8>
resolve_labels():
quickjs-nuttx/quickjs.c:31976
    label_slots = s->label_slots;
    8002b9da:	17043783          	ld	a5,368(s0)
quickjs-nuttx/quickjs.c:31980
    cc.bc_buf = bc_buf = s->byte_code.buf;
    8002b9de:	13043b83          	ld	s7,304(s0)
quickjs-nuttx/quickjs.c:31981
    cc.bc_len = bc_len = s->byte_code.size;
    8002b9e2:	13842c83          	lw	s9,312(s0)
quickjs-nuttx/quickjs.c:31976
    label_slots = s->label_slots;
    8002b9e6:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:31978
    line_num = s->line_num;
    8002b9e8:	1d442783          	lw	a5,468(s0)
quickjs-nuttx/quickjs.c:31982
    js_dbuf_init(ctx, &bc_out);
    8002b9ec:	188c                	addi	a1,sp,112
    8002b9ee:	856e                	mv	a0,s11
quickjs-nuttx/quickjs.c:31978
    line_num = s->line_num;
    8002b9f0:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:31980
    cc.bc_buf = bc_buf = s->byte_code.buf;
    8002b9f2:	e4de                	sd	s7,72(sp)
quickjs-nuttx/quickjs.c:31981
    cc.bc_len = bc_len = s->byte_code.size;
    8002b9f4:	c8e6                	sw	s9,80(sp)
quickjs-nuttx/quickjs.c:31982
    js_dbuf_init(ctx, &bc_out);
    8002b9f6:	b18dd0ef          	jal	ra,80008d0e <js_dbuf_init>
quickjs-nuttx/quickjs.c:31985
    if (s->jump_size) {
    8002b9fa:	1b042583          	lw	a1,432(s0)
    8002b9fe:	34059663          	bnez	a1,8002bd4a <js_create_function+0x426>
quickjs-nuttx/quickjs.c:31992
    if (s->line_number_size && !(s->js_mode & JS_MODE_STRIP)) {
    8002ba02:	1c042583          	lw	a1,448(s0)
    8002ba06:	34059b63          	bnez	a1,8002bd5c <js_create_function+0x438>
quickjs-nuttx/quickjs.c:32001
    if (s->home_object_var_idx >= 0) {
    8002ba0a:	0d842783          	lw	a5,216(s0)
    8002ba0e:	0207c163          	bltz	a5,8002ba30 <js_create_function+0x10c>
quickjs-nuttx/quickjs.c:32002
        dbuf_putc(&bc_out, OP_special_object);
    8002ba12:	45b1                	li	a1,12
    8002ba14:	1888                	addi	a0,sp,112
    8002ba16:	0cc260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32003
        dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_HOME_OBJECT);
    8002ba1a:	4591                	li	a1,4
    8002ba1c:	1888                	addi	a0,sp,112
    8002ba1e:	0c4260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32004
        put_short_code(&bc_out, OP_put_loc, s->home_object_var_idx);
    8002ba22:	0d842603          	lw	a2,216(s0)
    8002ba26:	05900593          	li	a1,89
    8002ba2a:	1888                	addi	a0,sp,112
    8002ba2c:	dcedd0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32007
    if (s->this_active_func_var_idx >= 0) {
    8002ba30:	0d442783          	lw	a5,212(s0)
    8002ba34:	0207c163          	bltz	a5,8002ba56 <js_create_function+0x132>
quickjs-nuttx/quickjs.c:32008
        dbuf_putc(&bc_out, OP_special_object);
    8002ba38:	45b1                	li	a1,12
    8002ba3a:	1888                	addi	a0,sp,112
    8002ba3c:	0a6260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32009
        dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_THIS_FUNC);
    8002ba40:	4589                	li	a1,2
    8002ba42:	1888                	addi	a0,sp,112
    8002ba44:	09e260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32010
        put_short_code(&bc_out, OP_put_loc, s->this_active_func_var_idx);
    8002ba48:	0d442603          	lw	a2,212(s0)
    8002ba4c:	05900593          	li	a1,89
    8002ba50:	1888                	addi	a0,sp,112
    8002ba52:	da8dd0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32013
    if (s->new_target_var_idx >= 0) {
    8002ba56:	0d042783          	lw	a5,208(s0)
    8002ba5a:	0207c163          	bltz	a5,8002ba7c <js_create_function+0x158>
quickjs-nuttx/quickjs.c:32014
        dbuf_putc(&bc_out, OP_special_object);
    8002ba5e:	45b1                	li	a1,12
    8002ba60:	1888                	addi	a0,sp,112
    8002ba62:	080260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32015
        dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_NEW_TARGET);
    8002ba66:	458d                	li	a1,3
    8002ba68:	1888                	addi	a0,sp,112
    8002ba6a:	078260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32016
        put_short_code(&bc_out, OP_put_loc, s->new_target_var_idx);
    8002ba6e:	0d042603          	lw	a2,208(s0)
    8002ba72:	05900593          	li	a1,89
    8002ba76:	1888                	addi	a0,sp,112
    8002ba78:	d82dd0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32020
    if (s->this_var_idx >= 0) {
    8002ba7c:	0cc42783          	lw	a5,204(s0)
    8002ba80:	0007cf63          	bltz	a5,8002ba9e <js_create_function+0x17a>
quickjs-nuttx/quickjs.c:32021
        if (s->is_derived_class_constructor) {
    8002ba84:	5c3c                	lw	a5,120(s0)
    8002ba86:	2e078e63          	beqz	a5,8002bd82 <js_create_function+0x45e>
quickjs-nuttx/quickjs.c:32022
            dbuf_putc(&bc_out, OP_set_loc_uninitialized);
    8002ba8a:	06100593          	li	a1,97
    8002ba8e:	1888                	addi	a0,sp,112
    8002ba90:	052260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32023
            dbuf_put_u16(&bc_out, s->this_var_idx);
    8002ba94:	0cc45583          	lhu	a1,204(s0)
    8002ba98:	1888                	addi	a0,sp,112
    8002ba9a:	d12dd0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:32030
    if (s->arguments_var_idx >= 0) {
    8002ba9e:	0bc42783          	lw	a5,188(s0)
    8002baa2:	0407c163          	bltz	a5,8002bae4 <js_create_function+0x1c0>
quickjs-nuttx/quickjs.c:32031
        if ((s->js_mode & JS_MODE_STRICT) || !s->has_simple_parameter_list) {
    8002baa6:	08644783          	lbu	a5,134(s0)
quickjs-nuttx/quickjs.c:32032
            dbuf_putc(&bc_out, OP_special_object);
    8002baaa:	45b1                	li	a1,12
    8002baac:	1888                	addi	a0,sp,112
quickjs-nuttx/quickjs.c:32031
        if ((s->js_mode & JS_MODE_STRICT) || !s->has_simple_parameter_list) {
    8002baae:	8b85                	andi	a5,a5,1
    8002bab0:	e781                	bnez	a5,8002bab8 <js_create_function+0x194>
    8002bab2:	483c                	lw	a5,80(s0)
    8002bab4:	2e079363          	bnez	a5,8002bd9a <js_create_function+0x476>
quickjs-nuttx/quickjs.c:32032
            dbuf_putc(&bc_out, OP_special_object);
    8002bab8:	02a260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32033
            dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_ARGUMENTS);
    8002babc:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:32036
            dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_MAPPED_ARGUMENTS);
    8002babe:	1888                	addi	a0,sp,112
    8002bac0:	022260ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32038
        if (s->arguments_arg_idx >= 0)
    8002bac4:	0c042603          	lw	a2,192(s0)
    8002bac8:	00064763          	bltz	a2,8002bad6 <js_create_function+0x1b2>
quickjs-nuttx/quickjs.c:32039
            put_short_code(&bc_out, OP_set_loc, s->arguments_arg_idx);
    8002bacc:	05a00593          	li	a1,90
    8002bad0:	1888                	addi	a0,sp,112
    8002bad2:	d28dd0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32040
        put_short_code(&bc_out, OP_put_loc, s->arguments_var_idx);
    8002bad6:	0bc42603          	lw	a2,188(s0)
    8002bada:	05900593          	li	a1,89
    8002bade:	1888                	addi	a0,sp,112
    8002bae0:	d1add0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32043
    if (s->func_var_idx >= 0) {
    8002bae4:	0c442783          	lw	a5,196(s0)
    8002bae8:	0207c163          	bltz	a5,8002bb0a <js_create_function+0x1e6>
quickjs-nuttx/quickjs.c:32044
        dbuf_putc(&bc_out, OP_special_object);
    8002baec:	45b1                	li	a1,12
    8002baee:	1888                	addi	a0,sp,112
    8002baf0:	7f3250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32045
        dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_THIS_FUNC);
    8002baf4:	4589                	li	a1,2
    8002baf6:	1888                	addi	a0,sp,112
    8002baf8:	7eb250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32046
        put_short_code(&bc_out, OP_put_loc, s->func_var_idx);
    8002bafc:	0c442603          	lw	a2,196(s0)
    8002bb00:	05900593          	li	a1,89
    8002bb04:	1888                	addi	a0,sp,112
    8002bb06:	cf4dd0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32049
    if (s->var_object_idx >= 0) {
    8002bb0a:	0b442783          	lw	a5,180(s0)
    8002bb0e:	0207c163          	bltz	a5,8002bb30 <js_create_function+0x20c>
quickjs-nuttx/quickjs.c:32050
        dbuf_putc(&bc_out, OP_special_object);
    8002bb12:	45b1                	li	a1,12
    8002bb14:	1888                	addi	a0,sp,112
    8002bb16:	7cd250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32051
        dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_VAR_OBJECT);
    8002bb1a:	4595                	li	a1,5
    8002bb1c:	1888                	addi	a0,sp,112
    8002bb1e:	7c5250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32052
        put_short_code(&bc_out, OP_put_loc, s->var_object_idx);
    8002bb22:	0b442603          	lw	a2,180(s0)
    8002bb26:	05900593          	li	a1,89
    8002bb2a:	1888                	addi	a0,sp,112
    8002bb2c:	ccedd0ef          	jal	ra,80008ffa <put_short_code>
quickjs-nuttx/quickjs.c:32054
    if (s->arg_var_object_idx >= 0) {
    8002bb30:	0b842783          	lw	a5,184(s0)
    8002bb34:	0207c163          	bltz	a5,8002bb56 <js_create_function+0x232>
quickjs-nuttx/quickjs.c:32055
        dbuf_putc(&bc_out, OP_special_object);
    8002bb38:	45b1                	li	a1,12
    8002bb3a:	1888                	addi	a0,sp,112
    8002bb3c:	7a7250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32056
        dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_VAR_OBJECT);
    8002bb40:	4595                	li	a1,5
    8002bb42:	1888                	addi	a0,sp,112
    8002bb44:	79f250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32057
        put_short_code(&bc_out, OP_put_loc, s->arg_var_object_idx);
    8002bb48:	0b842603          	lw	a2,184(s0)
    8002bb4c:	05900593          	li	a1,89
    8002bb50:	1888                	addi	a0,sp,112
    8002bb52:	ca8dd0ef          	jal	ra,80008ffa <put_short_code>
    8002bb56:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:32245
                    jp->size = 2;
    8002bb58:	4d09                	li	s10,2
quickjs-nuttx/quickjs.c:32060
    for (pos = 0; pos < bc_len; pos = pos_next) {
    8002bb5a:	259a4463          	blt	s4,s9,8002bda2 <js_create_function+0x47e>
    8002bb5e:	67c2                	ld	a5,16(sp)
quickjs-nuttx/quickjs.c:32741
    for(i = 0; i < s->label_count; i++) {
    8002bb60:	17c42703          	lw	a4,380(s0)
    8002bb64:	01078a93          	addi	s5,a5,16
    8002bb68:	4781                	li	a5,0
    8002bb6a:	00e7d463          	bge	a5,a4,8002bb72 <js_create_function+0x24e>
    8002bb6e:	7a50006f          	j	8002cb12 <js_create_function+0x11ee>
quickjs-nuttx/quickjs.c:32748
        for (i = 0, jp = s->jump_slots; i < s->jump_count; i++, jp++) {
    8002bb72:	1a843483          	ld	s1,424(s0)
quickjs-nuttx/quickjs.c:32747
        int patch_offsets = 0;
    8002bb76:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:32748
        for (i = 0, jp = s->jump_slots; i < s->jump_count; i++, jp++) {
    8002bb78:	4a01                	li	s4,0
    8002bb7a:	04c1                	addi	s1,s1,16
quickjs-nuttx/quickjs.c:32754
            switch (op = jp->op) {
    8002bb7c:	06c00c13          	li	s8,108
quickjs-nuttx/quickjs.c:32762
                diff = s->label_slots[jp->label].addr - pos;
    8002bb80:	4ce1                	li	s9,24
quickjs-nuttx/quickjs.c:32763
                if (diff >= -128 && diff <= 127 + delta) {
    8002bb82:	f8000d13          	li	s10,-128
quickjs-nuttx/quickjs.c:32775
                    jp->size = 2;
    8002bb86:	4309                	li	t1,2
quickjs-nuttx/quickjs.c:32777
                    bc_out.buf[pos - 1] = jp->op = OP_goto16;
    8002bb88:	0ef00b93          	li	s7,239
    8002bb8c:	583d                	li	a6,-17
quickjs-nuttx/quickjs.c:32765
                    jp->size = 1;
    8002bb8e:	4885                	li	a7,1
quickjs-nuttx/quickjs.c:32748
        for (i = 0, jp = s->jump_slots; i < s->jump_count; i++, jp++) {
    8002bb90:	1b442783          	lw	a5,436(s0)
    8002bb94:	00fa5463          	bge	s4,a5,8002bb9c <js_create_function+0x278>
    8002bb98:	7930006f          	j	8002cb2a <js_create_function+0x1206>
quickjs-nuttx/quickjs.c:32801
        if (patch_offsets) {
    8002bb9c:	000a8f63          	beqz	s5,8002bbba <js_create_function+0x296>
quickjs-nuttx/quickjs.c:32804
            for (j = 0, jp1 = s->jump_slots; j < s->jump_count; j++, jp1++) {
    8002bba0:	1a843583          	ld	a1,424(s0)
    8002bba4:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:32805
                int diff1 = s->label_slots[jp1->label].addr - jp1->pos;
    8002bba6:	4861                	li	a6,24
quickjs-nuttx/quickjs.c:32806
                switch (jp1->size) {
    8002bba8:	4889                	li	a7,2
    8002bbaa:	4311                	li	t1,4
    8002bbac:	4e05                	li	t3,1
quickjs-nuttx/quickjs.c:32804
            for (j = 0, jp1 = s->jump_slots; j < s->jump_count; j++, jp1++) {
    8002bbae:	1b442783          	lw	a5,436(s0)
    8002bbb2:	00f55463          	bge	a0,a5,8002bbba <js_create_function+0x296>
    8002bbb6:	0a40106f          	j	8002cc5a <js_create_function+0x1336>
quickjs-nuttx/quickjs.c:32820
    js_free(ctx, s->jump_slots);
    8002bbba:	1a843583          	ld	a1,424(s0)
    8002bbbe:	856e                	mv	a0,s11
    8002bbc0:	c36df0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:32823
    js_free(ctx, s->label_slots);
    8002bbc4:	17043583          	ld	a1,368(s0)
quickjs-nuttx/quickjs.c:32821
    s->jump_slots = NULL;
    8002bbc8:	1a043423          	sd	zero,424(s0)
quickjs-nuttx/quickjs.c:32823
    js_free(ctx, s->label_slots);
    8002bbcc:	856e                	mv	a0,s11
    8002bbce:	c28df0ef          	jal	ra,8000aff6 <js_free>
compute_pc2line_info():
quickjs-nuttx/quickjs.c:31765
    if (!(s->js_mode & JS_MODE_STRIP) && s->line_number_slots) {
    8002bbd2:	08644783          	lbu	a5,134(s0)
resolve_labels():
quickjs-nuttx/quickjs.c:32824
    s->label_slots = NULL;
    8002bbd6:	16043823          	sd	zero,368(s0)
compute_pc2line_info():
quickjs-nuttx/quickjs.c:31765
    if (!(s->js_mode & JS_MODE_STRIP) && s->line_number_slots) {
    8002bbda:	8b89                	andi	a5,a5,2
    8002bbdc:	e399                	bnez	a5,8002bbe2 <js_create_function+0x2be>
    8002bbde:	0e20106f          	j	8002ccc0 <js_create_function+0x139c>
resolve_labels():
quickjs-nuttx/quickjs.c:32827
    js_free(ctx, s->line_number_slots);
    8002bbe2:	1b843583          	ld	a1,440(s0)
    8002bbe6:	856e                	mv	a0,s11
    8002bbe8:	c0edf0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:32830
    dbuf_free(&s->byte_code);
    8002bbec:	13040513          	addi	a0,s0,304
quickjs-nuttx/quickjs.c:32828
    s->line_number_slots = NULL;
    8002bbf0:	1a043c23          	sd	zero,440(s0)
quickjs-nuttx/quickjs.c:32830
    dbuf_free(&s->byte_code);
    8002bbf4:	e82a                	sd	a0,16(sp)
    8002bbf6:	7b1250ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs.c:32831
    s->byte_code = bc_out;
    8002bbfa:	6542                	ld	a0,16(sp)
    8002bbfc:	03000613          	li	a2,48
    8002bc00:	188c                	addi	a1,sp,112
    8002bc02:	1aa380ef          	jal	ra,80063dac <memcpy>
dbuf_error():
quickjs-nuttx/cutils.h:272
    return s->error;
    8002bc06:	14842483          	lw	s1,328(s0)
resolve_labels():
quickjs-nuttx/quickjs.c:32832
    s->use_short_opcodes = TRUE;
    8002bc0a:	4785                	li	a5,1
    8002bc0c:	16f42423          	sw	a5,360(s0)
quickjs-nuttx/quickjs.c:32833
    if (dbuf_error(&s->byte_code)) {
    8002bc10:	e099                	bnez	s1,8002bc16 <js_create_function+0x2f2>
    8002bc12:	1500106f          	j	8002cd62 <js_create_function+0x143e>
quickjs-nuttx/quickjs.c:32834
        JS_ThrowOutOfMemory(ctx);
    8002bc16:	856e                	mv	a0,s11
    8002bc18:	cbcee0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:32835
        return -1;
    8002bc1c:	a0c1                	j	8002bcdc <js_create_function+0x3b8>
js_create_function():
quickjs-nuttx/quickjs.c:33160
        JSVarScope *sd = &fd->scopes[scope];
    8002bc1e:	7874                	ld	a3,240(s0)
    8002bc20:	00371793          	slli	a5,a4,0x3
    8002bc24:	97b6                	add	a5,a5,a3
quickjs-nuttx/quickjs.c:33161
        if (sd->first < 0)
    8002bc26:	43d0                	lw	a2,4(a5)
    8002bc28:	00065763          	bgez	a2,8002bc36 <js_create_function+0x312>
quickjs-nuttx/quickjs.c:33162
            sd->first = fd->scopes[sd->parent].first;
    8002bc2c:	4390                	lw	a2,0(a5)
    8002bc2e:	060e                	slli	a2,a2,0x3
    8002bc30:	96b2                	add	a3,a3,a2
    8002bc32:	42d4                	lw	a3,4(a3)
    8002bc34:	c3d4                	sw	a3,4(a5)
quickjs-nuttx/quickjs.c:33159 (discriminator 2)
    for (scope = 2; scope < fd->scope_count; scope++) {
    8002bc36:	2705                	addiw	a4,a4,1
    8002bc38:	bba9                	j	8002b992 <js_create_function+0x6e>
quickjs-nuttx/quickjs.c:33165
        JSVarDef *vd = &fd->vars[idx];
    8002bc3a:	685c                	ld	a5,144(s0)
    8002bc3c:	00469713          	slli	a4,a3,0x4
    8002bc40:	973e                	add	a4,a4,a5
quickjs-nuttx/quickjs.c:33166
        if (vd->scope_next < 0 && vd->scope_level > 1) {
    8002bc42:	471c                	lw	a5,8(a4)
    8002bc44:	0007dd63          	bgez	a5,8002bc5e <js_create_function+0x33a>
quickjs-nuttx/quickjs.c:33166 (discriminator 1)
    8002bc48:	435c                	lw	a5,4(a4)
    8002bc4a:	00f5da63          	bge	a1,a5,8002bc5e <js_create_function+0x33a>
quickjs-nuttx/quickjs.c:33167
            scope = fd->scopes[vd->scope_level].parent;
    8002bc4e:	7870                	ld	a2,240(s0)
    8002bc50:	078e                	slli	a5,a5,0x3
    8002bc52:	97b2                	add	a5,a5,a2
quickjs-nuttx/quickjs.c:33168
            vd->scope_next = fd->scopes[scope].first;
    8002bc54:	439c                	lw	a5,0(a5)
    8002bc56:	078e                	slli	a5,a5,0x3
    8002bc58:	963e                	add	a2,a2,a5
    8002bc5a:	425c                	lw	a5,4(a2)
    8002bc5c:	c71c                	sw	a5,8(a4)
quickjs-nuttx/quickjs.c:33164 (discriminator 2)
    for (idx = 0; idx < fd->var_count; idx++) {
    8002bc5e:	2685                	addiw	a3,a3,1
    8002bc60:	bb3d                	j	8002b99e <js_create_function+0x7a>
add_module_variables():
quickjs-nuttx/quickjs.c:33112
        hf = &fd->global_vars[i];
    8002bc62:	12843703          	ld	a4,296(s0)
    8002bc66:	00449793          	slli	a5,s1,0x4
quickjs-nuttx/quickjs.c:33113
        if (add_closure_var(ctx, fd, TRUE, FALSE, i, hf->var_name, hf->is_const,
    8002bc6a:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:33112
        hf = &fd->global_vars[i];
    8002bc6c:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:33114
                            hf->is_lexical, FALSE) < 0)
    8002bc6e:	0047a803          	lw	a6,4(a5)
quickjs-nuttx/quickjs.c:33113
        if (add_closure_var(ctx, fd, TRUE, FALSE, i, hf->var_name, hf->is_const,
    8002bc72:	47dc                	lw	a5,12(a5)
    8002bc74:	8726                	mv	a4,s1
quickjs-nuttx/quickjs.c:33114
                            hf->is_lexical, FALSE) < 0)
    8002bc76:	0018589b          	srliw	a7,a6,0x1
quickjs-nuttx/quickjs.c:33113
        if (add_closure_var(ctx, fd, TRUE, FALSE, i, hf->var_name, hf->is_const,
    8002bc7a:	0028581b          	srliw	a6,a6,0x2
    8002bc7e:	e002                	sd	zero,0(sp)
    8002bc80:	0018f893          	andi	a7,a7,1
    8002bc84:	00187813          	andi	a6,a6,1
    8002bc88:	4605                	li	a2,1
    8002bc8a:	85a2                	mv	a1,s0
    8002bc8c:	856e                	mv	a0,s11
    8002bc8e:	f7ffd0ef          	jal	ra,80029c0c <add_closure_var>
    8002bc92:	04054563          	bltz	a0,8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:33111
    for(i = 0; i < fd->global_var_count; i++) {
    8002bc96:	2485                	addiw	s1,s1,1
    8002bc98:	11c42783          	lw	a5,284(s0)
    8002bc9c:	fcf4c3e3          	blt	s1,a5,8002bc62 <js_create_function+0x33e>
quickjs-nuttx/quickjs.c:33119
    for(i = 0; i < m->export_entries_count; i++) {
    8002bca0:	4681                	li	a3,0
    8002bca2:	03092783          	lw	a5,48(s2)
    8002bca6:	d0f6dbe3          	bge	a3,a5,8002b9bc <js_create_function+0x98>
quickjs-nuttx/quickjs.c:33120
        me = &m->export_entries[i];
    8002bcaa:	02893703          	ld	a4,40(s2)
    8002bcae:	00569793          	slli	a5,a3,0x5
    8002bcb2:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:33121
        if (me->export_type == JS_EXPORT_TYPE_LOCAL) {
    8002bcb4:	4b98                	lw	a4,16(a5)
    8002bcb6:	e729                	bnez	a4,8002bd00 <js_create_function+0x3dc>
quickjs-nuttx/quickjs.c:33122
            idx = find_closure_var(ctx, fd, me->local_name);
    8002bcb8:	4bcc                	lw	a1,20(a5)
find_closure_var():
quickjs-nuttx/quickjs.c:29911
    for(i = 0; i < s->closure_var_count; i++) {
    8002bcba:	19842803          	lw	a6,408(s0)
    8002bcbe:	0007051b          	sext.w	a0,a4
    8002bcc2:	03054563          	blt	a0,a6,8002bcec <js_create_function+0x3c8>
add_module_variables():
quickjs-nuttx/quickjs.c:33124
                JS_ThrowSyntaxErrorAtom(ctx, "exported variable '%s' does not exist",
    8002bcc6:	0003e697          	auipc	a3,0x3e
    8002bcca:	ec268693          	addi	a3,a3,-318 # 80069b88 <qjsc_repl+0x45d8>
    8002bcce:	00040617          	auipc	a2,0x40
    8002bcd2:	8e260613          	addi	a2,a2,-1822 # 8006b5b0 <qjsc_repl+0x6000>
    8002bcd6:	856e                	mv	a0,s11
    8002bcd8:	ed4ec0ef          	jal	ra,800183ac <__JS_ThrowSyntaxErrorAtom>
js_create_function():
quickjs-nuttx/quickjs.c:33360
    js_free_function_def(ctx, fd);
    8002bcdc:	85a2                	mv	a1,s0
    8002bcde:	856e                	mv	a0,s11
    8002bce0:	f41e00ef          	jal	ra,8000cc20 <js_free_function_def>
quickjs-nuttx/quickjs.c:33361
    return JS_EXCEPTION;
    8002bce4:	4799                	li	a5,6
    8002bce6:	f882                	sd	zero,112(sp)
    8002bce8:	7b40106f          	j	8002d49c <js_create_function+0x1b78>
find_closure_var():
quickjs-nuttx/quickjs.c:29913
        if (cv->var_name == var_name)
    8002bcec:	1a043603          	ld	a2,416(s0)
    8002bcf0:	00371893          	slli	a7,a4,0x3
    8002bcf4:	0705                	addi	a4,a4,1
    8002bcf6:	9646                	add	a2,a2,a7
    8002bcf8:	4250                	lw	a2,4(a2)
    8002bcfa:	fcc592e3          	bne	a1,a2,8002bcbe <js_create_function+0x39a>
add_module_variables():
quickjs-nuttx/quickjs.c:33128
            me->u.local.var_idx = idx;
    8002bcfe:	c388                	sw	a0,0(a5)
quickjs-nuttx/quickjs.c:33119
    for(i = 0; i < m->export_entries_count; i++) {
    8002bd00:	2685                	addiw	a3,a3,1
    8002bd02:	b745                	j	8002bca2 <js_create_function+0x37e>
js_create_function():
quickjs-nuttx/quickjs.c:33191
        cpool_idx = fd1->parent_cpool_idx;
    8002bd04:	fe85a483          	lw	s1,-24(a1)
quickjs-nuttx/quickjs.c:33192
        func_obj = js_create_function(ctx, fd1);
    8002bd08:	856e                	mv	a0,s11
    8002bd0a:	fd858593          	addi	a1,a1,-40
    8002bd0e:	c17ff0ef          	jal	ra,8002b924 <js_create_function>
    8002bd12:	fc2a                	sd	a0,56(sp)
    8002bd14:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:33193
        if (JS_IsException(func_obj))
    8002bd16:	0005879b          	sext.w	a5,a1
    8002bd1a:	fd4781e3          	beq	a5,s4,8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:33196
        assert(cpool_idx >= 0);
    8002bd1e:	0004dc63          	bgez	s1,8002bd36 <js_create_function+0x412>
quickjs-nuttx/quickjs.c:33196 (discriminator 1)
    8002bd22:	65a1                	lui	a1,0x8
    8002bd24:	4601                	li	a2,0
    8002bd26:	1ac58593          	addi	a1,a1,428 # 81ac <asinh-0x7fff7e54>
resolve_labels():
quickjs-nuttx/quickjs.c:32076
                assert(label >= 0 && label < s->label_count);
    8002bd2a:	0003e517          	auipc	a0,0x3e
    8002bd2e:	86e50513          	addi	a0,a0,-1938 # 80069598 <qjsc_repl+0x3fe8>
    8002bd32:	42b340ef          	jal	ra,8006095c <__assert>
js_create_function():
quickjs-nuttx/quickjs.c:33197 (discriminator 2)
        fd->cpool[cpool_idx] = func_obj;
    8002bd36:	18843783          	ld	a5,392(s0)
    8002bd3a:	0492                	slli	s1,s1,0x4
    8002bd3c:	97a6                	add	a5,a5,s1
    8002bd3e:	e78c                	sd	a1,8(a5)
    8002bd40:	e388                	sd	a0,0(a5)
quickjs-nuttx/quickjs.c:33186 (discriminator 2)
    list_for_each_safe(el, el1, &fd->child_list) {
    8002bd42:	85ca                	mv	a1,s2
    8002bd44:	00893903          	ld	s2,8(s2)
    8002bd48:	b141                	j	8002b9c8 <js_create_function+0xa4>
resolve_labels():
quickjs-nuttx/quickjs.c:31986
        s->jump_slots = js_mallocz(s->ctx, sizeof(*s->jump_slots) * s->jump_size);
    8002bd4a:	6008                	ld	a0,0(s0)
    8002bd4c:	0592                	slli	a1,a1,0x4
    8002bd4e:	beaef0ef          	jal	ra,8001b138 <js_mallocz>
    8002bd52:	1aa43423          	sd	a0,424(s0)
quickjs-nuttx/quickjs.c:31987
        if (s->jump_slots == NULL)
    8002bd56:	ca0516e3          	bnez	a0,8002ba02 <js_create_function+0xde>
    8002bd5a:	b749                	j	8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:31992
    if (s->line_number_size && !(s->js_mode & JS_MODE_STRIP)) {
    8002bd5c:	08644783          	lbu	a5,134(s0)
    8002bd60:	8b89                	andi	a5,a5,2
    8002bd62:	ca0794e3          	bnez	a5,8002ba0a <js_create_function+0xe6>
quickjs-nuttx/quickjs.c:31993
        s->line_number_slots = js_mallocz(s->ctx, sizeof(*s->line_number_slots) * s->line_number_size);
    8002bd66:	6008                	ld	a0,0(s0)
    8002bd68:	058e                	slli	a1,a1,0x3
    8002bd6a:	bceef0ef          	jal	ra,8001b138 <js_mallocz>
    8002bd6e:	1aa43c23          	sd	a0,440(s0)
quickjs-nuttx/quickjs.c:31994
        if (s->line_number_slots == NULL)
    8002bd72:	d52d                	beqz	a0,8002bcdc <js_create_function+0x3b8>
quickjs-nuttx/quickjs.c:31996
        s->line_number_last = s->line_num;
    8002bd74:	1d442783          	lw	a5,468(s0)
quickjs-nuttx/quickjs.c:31997
        s->line_number_last_pc = 0;
    8002bd78:	1c042623          	sw	zero,460(s0)
quickjs-nuttx/quickjs.c:31996
        s->line_number_last = s->line_num;
    8002bd7c:	1cf42423          	sw	a5,456(s0)
quickjs-nuttx/quickjs.c:31997
        s->line_number_last_pc = 0;
    8002bd80:	b169                	j	8002ba0a <js_create_function+0xe6>
quickjs-nuttx/quickjs.c:32025
            dbuf_putc(&bc_out, OP_push_this);
    8002bd82:	45a1                	li	a1,8
    8002bd84:	1888                	addi	a0,sp,112
    8002bd86:	55d250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32026
            put_short_code(&bc_out, OP_put_loc, s->this_var_idx);
    8002bd8a:	0cc42603          	lw	a2,204(s0)
    8002bd8e:	05900593          	li	a1,89
    8002bd92:	1888                	addi	a0,sp,112
    8002bd94:	a66dd0ef          	jal	ra,80008ffa <put_short_code>
    8002bd98:	b319                	j	8002ba9e <js_create_function+0x17a>
quickjs-nuttx/quickjs.c:32035
            dbuf_putc(&bc_out, OP_special_object);
    8002bd9a:	549250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32036
            dbuf_putc(&bc_out, OP_SPECIAL_OBJECT_MAPPED_ARGUMENTS);
    8002bd9e:	4585                	li	a1,1
    8002bda0:	bb39                	j	8002babe <js_create_function+0x19a>
quickjs-nuttx/quickjs.c:32062
        op = bc_buf[pos];
    8002bda2:	014b8ab3          	add	s5,s7,s4
    8002bda6:	000ac983          	lbu	s3,0(s5)
quickjs-nuttx/quickjs.c:32063
        len = opcode_info[op].size;
    8002bdaa:	00049717          	auipc	a4,0x49
    8002bdae:	00670713          	addi	a4,a4,6 # 80074db0 <opcode_info>
    8002bdb2:	00299793          	slli	a5,s3,0x2
    8002bdb6:	97ba                	add	a5,a5,a4
    8002bdb8:	0007cc03          	lbu	s8,0(a5)
quickjs-nuttx/quickjs.c:32065
        switch(op) {
    8002bdbc:	07900793          	li	a5,121
quickjs-nuttx/quickjs.c:32062
        op = bc_buf[pos];
    8002bdc0:	0009891b          	sext.w	s2,s3
quickjs-nuttx/quickjs.c:32064
        pos_next = pos + len;
    8002bdc4:	014c04bb          	addw	s1,s8,s4
quickjs-nuttx/quickjs.c:32065
        switch(op) {
    8002bdc8:	0b37e663          	bltu	a5,s3,8002be74 <js_create_function+0x550>
    8002bdcc:	05700793          	li	a5,87
    8002bdd0:	0337e363          	bltu	a5,s3,8002bdf6 <js_create_function+0x4d2>
    8002bdd4:	03000693          	li	a3,48
    8002bdd8:	0736e163          	bltu	a3,s3,8002be3a <js_create_function+0x516>
    8002bddc:	02099e63          	bnez	s3,8002be18 <js_create_function+0x4f4>
quickjs-nuttx/quickjs.c:32734
            add_pc2line_info(s, bc_out.size, line_num);
    8002bde0:	5642                	lw	a2,48(sp)
    8002bde2:	55e6                	lw	a1,120(sp)
    8002bde4:	8522                	mv	a0,s0
    8002bde6:	a40dc0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32735
            dbuf_put(&bc_out, bc_buf + pos, len);
    8002bdea:	8662                	mv	a2,s8
    8002bdec:	85d6                	mv	a1,s5
    8002bdee:	1888                	addi	a0,sp,112
    8002bdf0:	461250ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:32736
            break;
    8002bdf4:	aafd                	j	8002bff2 <js_create_function+0x6ce>
    8002bdf6:	fa89879b          	addiw	a5,s3,-88
    8002bdfa:	0ff7f793          	zext.b	a5,a5
    8002bdfe:	02100713          	li	a4,33
    8002be02:	fcf76fe3          	bltu	a4,a5,8002bde0 <js_create_function+0x4bc>
    8002be06:	00040717          	auipc	a4,0x40
    8002be0a:	83270713          	addi	a4,a4,-1998 # 8006b638 <qjsc_repl+0x6088>
    8002be0e:	078a                	slli	a5,a5,0x2
    8002be10:	97ba                	add	a5,a5,a4
    8002be12:	439c                	lw	a5,0(a5)
    8002be14:	97ba                	add	a5,a5,a4
    8002be16:	8782                	jr	a5
    8002be18:	fff9879b          	addiw	a5,s3,-1
    8002be1c:	0ff7f793          	zext.b	a5,a5
    8002be20:	02f00713          	li	a4,47
    8002be24:	faf76ee3          	bltu	a4,a5,8002bde0 <js_create_function+0x4bc>
    8002be28:	00040717          	auipc	a4,0x40
    8002be2c:	89870713          	addi	a4,a4,-1896 # 8006b6c0 <qjsc_repl+0x6110>
    8002be30:	078a                	slli	a5,a5,0x2
    8002be32:	97ba                	add	a5,a5,a4
    8002be34:	439c                	lw	a5,0(a5)
    8002be36:	97ba                	add	a5,a5,a4
    8002be38:	8782                	jr	a5
quickjs-nuttx/quickjs.c:32065
        switch(op) {
    8002be3a:	04100793          	li	a5,65
    8002be3e:	faf991e3          	bne	s3,a5,8002bde0 <js_create_function+0x4bc>
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8002be42:	002ac703          	lbu	a4,2(s5)
    8002be46:	001ac783          	lbu	a5,1(s5)
    8002be4a:	0722                	slli	a4,a4,0x8
    8002be4c:	8f5d                	or	a4,a4,a5
    8002be4e:	003ac783          	lbu	a5,3(s5)
    8002be52:	07c2                	slli	a5,a5,0x10
    8002be54:	8f5d                	or	a4,a4,a5
    8002be56:	004ac783          	lbu	a5,4(s5)
    8002be5a:	07e2                	slli	a5,a5,0x18
    8002be5c:	8fd9                	or	a5,a5,a4
resolve_labels():
quickjs-nuttx/quickjs.c:32410
                if (atom == JS_ATOM_length) {
    8002be5e:	2781                	sext.w	a5,a5
    8002be60:	f8d790e3          	bne	a5,a3,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32412
                    add_pc2line_info(s, bc_out.size, line_num);
    8002be64:	55e6                	lw	a1,120(sp)
    8002be66:	5642                	lw	a2,48(sp)
    8002be68:	8522                	mv	a0,s0
    8002be6a:	9bcdc0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32413
                    dbuf_putc(&bc_out, OP_get_length);
    8002be6e:	0eb00593          	li	a1,235
    8002be72:	a6f9                	j	8002c240 <js_create_function+0x91c>
quickjs-nuttx/quickjs.c:32065
        switch(op) {
    8002be74:	0b800793          	li	a5,184
    8002be78:	10f98b63          	beq	s3,a5,8002bf8e <js_create_function+0x66a>
    8002be7c:	0f37e563          	bltu	a5,s3,8002bf66 <js_create_function+0x642>
    8002be80:	09200793          	li	a5,146
    8002be84:	0737e863          	bltu	a5,s3,8002bef4 <js_create_function+0x5d0>
    8002be88:	09000793          	li	a5,144
    8002be8c:	f537fae3          	bgeu	a5,s3,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32655
                if (code_match(&cc, pos_next, M3(OP_put_loc, OP_put_arg, OP_put_var_ref), -1, OP_drop, -1)) {
    8002be90:	005f6637          	lui	a2,0x5f6
    8002be94:	57fd                	li	a5,-1
    8002be96:	4739                	li	a4,14
    8002be98:	56fd                	li	a3,-1
    8002be9a:	c5960613          	addi	a2,a2,-935 # 5f5c59 <asinh-0x7fa0a3a7>
    8002be9e:	85a6                	mv	a1,s1
    8002bea0:	00a8                	addi	a0,sp,72
    8002bea2:	e7fdc0ef          	jal	ra,80008d20 <code_match>
    8002bea6:	3a0508e3          	beqz	a0,8002ca56 <js_create_function+0x1132>
quickjs-nuttx/quickjs.c:32656
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002beaa:	47e6                	lw	a5,88(sp)
    8002beac:	0007c363          	bltz	a5,8002beb2 <js_create_function+0x58e>
    8002beb0:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32657
                    op1 = cc.op;
    8002beb2:	4976                	lw	s2,92(sp)
quickjs-nuttx/quickjs.c:32658
                    idx = cc.idx;
    8002beb4:	5a06                	lw	s4,96(sp)
quickjs-nuttx/quickjs.c:32659
                    pos_next = cc.pos;
    8002beb6:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32660
                    if (code_match(&cc, cc.pos, op1 - 1, idx, -1)) {
    8002beb8:	577d                	li	a4,-1
    8002beba:	86d2                	mv	a3,s4
    8002bebc:	fff9061b          	addiw	a2,s2,-1
    8002bec0:	85a6                	mv	a1,s1
    8002bec2:	00a8                	addi	a0,sp,72
    8002bec4:	e5ddc0ef          	jal	ra,80008d20 <code_match>
    8002bec8:	c519                	beqz	a0,8002bed6 <js_create_function+0x5b2>
quickjs-nuttx/quickjs.c:32661
                        if (cc.line_num >= 0) line_num = cc.line_num;
    8002beca:	47e6                	lw	a5,88(sp)
    8002becc:	0007c363          	bltz	a5,8002bed2 <js_create_function+0x5ae>
    8002bed0:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32663
                        pos_next = cc.pos;
    8002bed2:	44d6                	lw	s1,84(sp)
quickjs-nuttx/quickjs.c:32662
                        op1 += 1;   /* put_x(n) get_x(n) -> set_x(n) */
    8002bed4:	2905                	addiw	s2,s2,1
quickjs-nuttx/quickjs.c:32665
                    add_pc2line_info(s, bc_out.size, line_num);
    8002bed6:	5642                	lw	a2,48(sp)
    8002bed8:	55e6                	lw	a1,120(sp)
    8002beda:	8522                	mv	a0,s0
    8002bedc:	94adc0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32666
                    dbuf_putc(&bc_out, OP_dec + (op - OP_post_dec));
    8002bee0:	ffe9859b          	addiw	a1,s3,-2
    8002bee4:	0ff5f593          	zext.b	a1,a1
    8002bee8:	1888                	addi	a0,sp,112
    8002beea:	3f9250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32667
                    put_short_code(&bc_out, op1, idx);
    8002beee:	8652                	mv	a2,s4
    8002bef0:	31b0006f          	j	8002ca0a <js_create_function+0x10e6>
quickjs-nuttx/quickjs.c:32065
        switch(op) {
    8002bef4:	09800793          	li	a5,152
    8002bef8:	eef994e3          	bne	s3,a5,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32694
                if (code_match(&cc, pos_next, OP_push_atom_value, M4(OP_strict_eq, OP_strict_neq, OP_eq, OP_neq), -1)) {
    8002befc:	abaab6b7          	lui	a3,0xabaab
    8002bf00:	577d                	li	a4,-1
    8002bf02:	dac68693          	addi	a3,a3,-596 # ffffffffabaaadac <_ebss+0xffffffff2b9a9c46>
    8002bf06:	4611                	li	a2,4
    8002bf08:	85a6                	mv	a1,s1
    8002bf0a:	00a8                	addi	a0,sp,72
    8002bf0c:	e15dc0ef          	jal	ra,80008d20 <code_match>
    8002bf10:	ec0508e3          	beqz	a0,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32695
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002bf14:	47e6                	lw	a5,88(sp)
    8002bf16:	0007c363          	bltz	a5,8002bf1c <js_create_function+0x5f8>
    8002bf1a:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs.c:32696
                    int op1 = (cc.op == OP_strict_eq || cc.op == OP_eq) ? OP_strict_eq : OP_strict_neq;
    8002bf1c:	47f6                	lw	a5,92(sp)
quickjs-nuttx/quickjs.c:32698
                    switch (cc.atom) {
    8002bf1e:	5736                	lw	a4,108(sp)
    8002bf20:	46ed                	li	a3,27
quickjs-nuttx/quickjs.c:32696
                    int op1 = (cc.op == OP_strict_eq || cc.op == OP_eq) ? OP_strict_eq : OP_strict_neq;
    8002bf22:	f567879b          	addiw	a5,a5,-170
    8002bf26:	9bf5                	andi	a5,a5,-3
    8002bf28:	2781                	sext.w	a5,a5
    8002bf2a:	00f037b3          	snez	a5,a5
    8002bf2e:	0ac78793          	addi	a5,a5,172
quickjs-nuttx/quickjs.c:32698
                    switch (cc.atom) {
    8002bf32:	38d70ce3          	beq	a4,a3,8002caca <js_create_function+0x11a6>
    8002bf36:	04600693          	li	a3,70
    8002bf3a:	0f600913          	li	s2,246
    8002bf3e:	ead711e3          	bne	a4,a3,8002bde0 <js_create_function+0x4bc>
quickjs-nuttx/quickjs.c:32708
                        if (op1 == OP_strict_eq) {
    8002bf42:	0ac00713          	li	a4,172
    8002bf46:	38e796e3          	bne	a5,a4,8002cad2 <js_create_function+0x11ae>
quickjs-nuttx/quickjs.c:32709
                            add_pc2line_info(s, bc_out.size, line_num);
    8002bf4a:	5642                	lw	a2,48(sp)
    8002bf4c:	55e6                	lw	a1,120(sp)
    8002bf4e:	8522                	mv	a0,s0
    8002bf50:	8d6dc0ef          	jal	ra,80008026 <add_pc2line_info>
quickjs-nuttx/quickjs.c:32710
                            dbuf_putc(&bc_out, op2);
    8002bf54:	85ca                	mv	a1,s2
    8002bf56:	1888                	addi	a0,sp,112
    8002bf58:	38b250ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:32711
                            JS_FreeAtom(ctx, cc.atom);
    8002bf5c:	55b6                	lw	a1,108(sp)
    8002bf5e:	856e                	mv	a0,s11
    8002bf60:	9e8df0ef          	jal	ra,8000b148 <JS_FreeAtom>
    8002bf64:	ad49                	j	8002c5f6 <js_create_function+0xcd2>
quickjs-nuttx/quickjs.c:32065
        switch(op) {
    8002bf66:	0c800793          	li	a5,200
    8002bf6a:	e6f99be3          	bne	s3,a5,8002bde0 <js_create_function+0x4bc>
get_u32():
quickjs-nuttx/cutils.h:170
    8002bf6e:	002ac703          	lbu	a4,2(s5)
    8002bf72:	001ac783          	lbu	a5,1(s5)
    8002bf76:	0722                	slli	a4,a4,0x8
    8002bf78:	8f5d                	or	a4,a4,a5
    8002bf7a:	003ac783          	lbu	a5,3(s5)
    8002bf7e:	07c2                	slli	a5,a5,0x10
    8002bf80:	8f5d                	or	a4,a4,a5
    8002bf82:	004ac783          	lbu	a5,4(s5)
    8002bf86:	07e2                	slli	a5,a5,0x18
    8002bf88:	8fd9                	or	a5,a5,a4
resolve_labels():
quickjs-nuttx/quickjs.c:32303
                    if (cc.line_num >= 0) line_num = cc.line_num;
    8002bf8a:	d83e                	sw	a5,48(sp)
    8002bf8c:	a09d                	j	8002bff2 <js_create_function+0x6ce>
get_u32():
quickjs-nuttx/cutils.h:170
    8002bf8e:	002ac703          	lbu	a4,2(s5)
    8002bf92:	001ac783          	lbu	a5,1(s5)
    8002bf96:	0722                	slli	a4,a4,0x8
    8002bf98:	8f5d                	or	a4,a4,a5
    8002bf9a:	003ac783          	lbu	a5,3(s5)
    8002bf9e:	07c2                	slli	a5,a5,0x10
    8002bfa0:	8f5d                	or	a4,a4,a5
    8002bfa2:	004ac783          	lbu	a5,4(s5)
    8002bfa6:	07e2                	slli	a5,a5,0x18
    8002bfa8:	8fd9                	or	a5,a5,a4
resolve_labels():
quickjs-nuttx/quickjs.c:32075
                label = get_u32(bc_buf + pos + 1);
    8002bfaa:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:32076
                assert(label >= 0 && label < s->label_count);
    8002bfac:	0007c663          	bltz	a5,8002bfb8 <js_create_function+0x694>
    8002bfb0:	17c42703          	lw	a4,380(s0)
    8002bfb4:	00e7c763          	blt	a5,a4,8002bfc2 <js_create_function+0x69e>
    8002bfb8:	65a1                	lui	a1,0x8
    8002bfba:	4601                	li	a2,0
    8002bfbc:	d4c58593          	addi	a1,a1,-692 # 7d4c <asinh-0x7fff82b4>
    8002bfc0:	b3ad                	j	8002bd2a <js_create_function+0x406>
quickjs-nuttx/quickjs.c:32077
                ls = &label_slots[label];
    8002bfc2:	4761                	li	a4,24
    8002bfc4:	02e787b3          	mul	a5,a5,a4
    8002bfc8:	6742                	ld	a4,16(sp)
    8002bfca:	00f70933          	add	s2,a4,a5
quickjs-nuttx/quickjs.c:32078
                assert(ls->addr == -1);
    8002bfce:	00c92703          	lw	a4,12(s2)
    8002bfd2:	57fd                	li	a5,-1
    8002bfd4:	00f70763          	beq	a4,a5,8002bfe2 <js_create_function+0x6be>
    8002bfd8:	65a1                	lui	a1,0x8
    8002bfda:	4601                	li	a2,0
    8002bfdc:	d4e58593          	addi	a1,a1,-690 # 7d4e <asinh-0x7fff82b2>
    8002bfe0:	b3a9                	j	8002bd2a <js_create_function+0x406>
quickjs-nuttx/quickjs.c:32079
                ls->addr = bc_out.size;
    8002bfe2:	77e6                	ld	a5,120(sp)
quickjs-nuttx/quickjs.c:32081
                for(re = ls->first_reloc; re != NULL; re = re_next) {
    8002bfe4:	01093583          	ld	a1,16(s2)
quickjs-nuttx/quickjs.c:32079
                ls->addr = bc_out.size;
    8002bfe8:	00f92623          	sw	a5,12(s2)
quickjs-nuttx/quickjs.c:32081
                for(re = ls->first_reloc; re != NULL; re = re_next) {
    8002bfec:	e589                	bnez	a1,8002bff6 <js_create_function+0x6d2>
quickjs-nuttx/quickjs.c:32099
                ls->first_reloc = NULL;
    8002bfee:	00093823          	sd	zero,16(s2)
quickjs-nuttx/quickjs.c:32101
            break;
    8002bff2:	8a26                	mv	s4,s1
    8002bff4:	b69d                	j	8002bb5a <js_create_function+0x236>
quickjs-nuttx/quickjs.c:32082
                    int diff = ls->addr - re->addr;
    8002bff6:	4598                	lw	a4,8(a1)
    8002bff8:	00c92683          	lw	a3,12(s2)
quickjs-nuttx/quickjs.c:32084
                    switch (re->size) {
    8002bffc:	45dc                	lw	a5,12(a1)
quickjs-nuttx/quickjs.c:32083
                    re_next = re->next;
    8002bffe:	0005b983          	ld	s3,0(a1)
quickjs-nuttx/quickjs.c:32082
                    int diff = ls->addr - re->addr;
