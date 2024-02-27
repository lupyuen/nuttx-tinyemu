    8004c000:	ea051be3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36171
        for(i = 0; i < m->star_export_entries_count; i++) {
    8004c004:	2a05                	addiw	s4,s4,1
    8004c006:	b7cd                	j	8004bfe8 <JS_ReadObjectRec+0x7ca>
quickjs-nuttx/quickjs.c:36182
        m->import_entries = js_mallocz(ctx, sizeof(m->import_entries[0]) * m->import_entries_size);
    8004c008:	45b1                	li	a1,12
    8004c00a:	02b785b3          	mul	a1,a5,a1
quickjs-nuttx/quickjs.c:36181
        m->import_entries_size = m->import_entries_count;
    8004c00e:	04f92a23          	sw	a5,84(s2)
quickjs-nuttx/quickjs.c:36182
        m->import_entries = js_mallocz(ctx, sizeof(m->import_entries[0]) * m->import_entries_size);
    8004c012:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:36186
            JSImportEntry *mi = &m->import_entries[i];
    8004c014:	4b31                	li	s6,12
quickjs-nuttx/quickjs.c:36182
        m->import_entries = js_mallocz(ctx, sizeof(m->import_entries[0]) * m->import_entries_size);
    8004c016:	922cf0ef          	jal	ra,8001b138 <js_mallocz>
    8004c01a:	04a93423          	sd	a0,72(s2)
quickjs-nuttx/quickjs.c:36183
        if (!m->import_entries)
    8004c01e:	e8050ce3          	beqz	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36185
        for(i = 0; i < m->import_entries_count; i++) {
    8004c022:	05092783          	lw	a5,80(s2)
    8004c026:	f0fa50e3          	bge	s4,a5,8004bf26 <JS_ReadObjectRec+0x708>
quickjs-nuttx/quickjs.c:36186
            JSImportEntry *mi = &m->import_entries[i];
    8004c02a:	036a0ab3          	mul	s5,s4,s6
    8004c02e:	04893783          	ld	a5,72(s2)
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004c032:	8526                	mv	a0,s1
JS_ReadModule():
quickjs-nuttx/quickjs.c:36186
            JSImportEntry *mi = &m->import_entries[i];
    8004c034:	9abe                	add	s5,s5,a5
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004c036:	85d6                	mv	a1,s5
    8004c038:	c88cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadModule():
quickjs-nuttx/quickjs.c:36187
            if (bc_get_leb128_int(s, &mi->var_idx))
    8004c03c:	e6051de3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36189
            if (bc_get_atom(s, &mi->import_name))
    8004c040:	004a8593          	addi	a1,s5,4
    8004c044:	8526                	mv	a0,s1
    8004c046:	de4cc0ef          	jal	ra,8001862a <bc_get_atom>
    8004c04a:	e60516e3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004c04e:	008a8593          	addi	a1,s5,8
    8004c052:	8526                	mv	a0,s1
    8004c054:	c6ccc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadModule():
quickjs-nuttx/quickjs.c:36191
            if (bc_get_leb128_int(s, &mi->req_module_idx))
    8004c058:	e4051fe3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36185
        for(i = 0; i < m->import_entries_count; i++) {
    8004c05c:	2a05                	addiw	s4,s4,1
    8004c05e:	b7d1                	j	8004c022 <JS_ReadObjectRec+0x804>
JS_ReadObjectTag():
quickjs-nuttx/quickjs.c:36213
    JSContext *ctx = s->ctx;
    8004c060:	0004b983          	ld	s3,0(s1)
quickjs-nuttx/quickjs.c:36220
    obj = JS_NewObject(ctx);
    8004c064:	854e                	mv	a0,s3
    8004c066:	fbfcf0ef          	jal	ra,8001c024 <JS_NewObject>
    8004c06a:	892a                	mv	s2,a0
    8004c06c:	f0a43023          	sd	a0,-256(s0)
    8004c070:	f0b43423          	sd	a1,-248(s0)
BC_add_object_ref():
quickjs-nuttx/quickjs.c:35912
    return BC_add_object_ref1(s, JS_VALUE_GET_OBJ(obj));
    8004c074:	85aa                	mv	a1,a0
    8004c076:	8526                	mv	a0,s1
    8004c078:	e51d00ef          	jal	ra,8001cec8 <BC_add_object_ref1>
JS_ReadObjectTag():
quickjs-nuttx/quickjs.c:36221
    if (BC_add_object_ref(s, obj))
    8004c07c:	ed31                	bnez	a0,8004c0d8 <JS_ReadObjectRec+0x8ba>
quickjs-nuttx/quickjs.c:36223
    if (bc_get_leb128(s, &prop_count))
    8004c07e:	ee040593          	addi	a1,s0,-288
    8004c082:	8526                	mv	a0,s1
    8004c084:	c3ccc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c088:	e921                	bnez	a0,8004c0d8 <JS_ReadObjectRec+0x8ba>
quickjs-nuttx/quickjs.c:36225
    for(i = 0; i < prop_count; i++) {
    8004c08a:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:36232
        if (JS_IsException(val)) {
    8004c08c:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:36225
    for(i = 0; i < prop_count; i++) {
    8004c08e:	ee042783          	lw	a5,-288(s0)
    8004c092:	00faea63          	bltu	s5,a5,8004c0a6 <JS_ReadObjectRec+0x888>
quickjs-nuttx/quickjs.c:36241
    return obj;
    8004c096:	f0843983          	ld	s3,-248(s0)
    8004c09a:	e5243023          	sd	s2,-448(s0)
    8004c09e:	e4043903          	ld	s2,-448(s0)
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36502
        break;
    8004c0a2:	877ff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_ReadObjectTag():
quickjs-nuttx/quickjs.c:36226
        if (bc_get_atom(s, &atom))
    8004c0a6:	ef040593          	addi	a1,s0,-272
    8004c0aa:	8526                	mv	a0,s1
    8004c0ac:	d7ecc0ef          	jal	ra,8001862a <bc_get_atom>
    8004c0b0:	e505                	bnez	a0,8004c0d8 <JS_ReadObjectRec+0x8ba>
quickjs-nuttx/quickjs.c:36231
        val = JS_ReadObjectRec(s);
    8004c0b2:	8526                	mv	a0,s1
    8004c0b4:	f6aff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004c0b8:	f0a43823          	sd	a0,-240(s0)
    8004c0bc:	f0b43c23          	sd	a1,-232(s0)
quickjs-nuttx/quickjs.c:36232
        if (JS_IsException(val)) {
    8004c0c0:	0005861b          	sext.w	a2,a1
    8004c0c4:	ef042683          	lw	a3,-272(s0)
quickjs-nuttx/quickjs.c:36231
        val = JS_ReadObjectRec(s);
    8004c0c8:	872a                	mv	a4,a0
    8004c0ca:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:36232
        if (JS_IsException(val)) {
    8004c0cc:	03661263          	bne	a2,s6,8004c0f0 <JS_ReadObjectRec+0x8d2>
quickjs-nuttx/quickjs.c:36233
            JS_FreeAtom(ctx, atom);
    8004c0d0:	85b6                	mv	a1,a3
    8004c0d2:	854e                	mv	a0,s3
    8004c0d4:	874bf0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:36243
    JS_FreeValue(ctx, obj);
    8004c0d8:	f0843603          	ld	a2,-248(s0)
    8004c0dc:	854e                	mv	a0,s3
    8004c0de:	85ca                	mv	a1,s2
    8004c0e0:	f1243023          	sd	s2,-256(s0)
quickjs-nuttx/quickjs.c:36244
    return JS_EXCEPTION;
    8004c0e4:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:36243
    JS_FreeValue(ctx, obj);
    8004c0e6:	eb8bf0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:36244
    return JS_EXCEPTION;
    8004c0ea:	e4043023          	sd	zero,-448(s0)
    8004c0ee:	bf45                	j	8004c09e <JS_ReadObjectRec+0x880>
quickjs-nuttx/quickjs.c:36236
        ret = JS_DefinePropertyValue(ctx, obj, atom, val, JS_PROP_C_W_E);
    8004c0f0:	f0843603          	ld	a2,-248(s0)
    8004c0f4:	85ca                	mv	a1,s2
    8004c0f6:	481d                	li	a6,7
    8004c0f8:	854e                	mv	a0,s3
    8004c0fa:	f1243023          	sd	s2,-256(s0)
    8004c0fe:	92ecc0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:36237
        JS_FreeAtom(ctx, atom);
    8004c102:	ef042583          	lw	a1,-272(s0)
quickjs-nuttx/quickjs.c:36236
        ret = JS_DefinePropertyValue(ctx, obj, atom, val, JS_PROP_C_W_E);
    8004c106:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:36237
        JS_FreeAtom(ctx, atom);
    8004c108:	854e                	mv	a0,s3
    8004c10a:	83ebf0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:36238
        if (ret < 0)
    8004c10e:	fc0a45e3          	bltz	s4,8004c0d8 <JS_ReadObjectRec+0x8ba>
quickjs-nuttx/quickjs.c:36225
    for(i = 0; i < prop_count; i++) {
    8004c112:	2a85                	addiw	s5,s5,1
    8004c114:	bfad                	j	8004c08e <JS_ReadObjectRec+0x870>
JS_ReadArray():
quickjs-nuttx/quickjs.c:36249
    JSContext *ctx = s->ctx;
    8004c116:	0004b983          	ld	s3,0(s1)
quickjs-nuttx/quickjs.c:36256
    obj = JS_NewArray(ctx);
    8004c11a:	854e                	mv	a0,s3
    8004c11c:	93ed00ef          	jal	ra,8001c25a <JS_NewArray>
    8004c120:	892a                	mv	s2,a0
    8004c122:	f0a43023          	sd	a0,-256(s0)
    8004c126:	f0b43423          	sd	a1,-248(s0)
BC_add_object_ref():
quickjs-nuttx/quickjs.c:35912
    return BC_add_object_ref1(s, JS_VALUE_GET_OBJ(obj));
    8004c12a:	85aa                	mv	a1,a0
    8004c12c:	8526                	mv	a0,s1
    8004c12e:	d9bd00ef          	jal	ra,8001cec8 <BC_add_object_ref1>
JS_ReadArray():
quickjs-nuttx/quickjs.c:36257
    if (BC_add_object_ref(s, obj))
    8004c132:	e161                	bnez	a0,8004c1f2 <JS_ReadObjectRec+0x9d4>
quickjs-nuttx/quickjs.c:36260
    if (bc_get_leb128(s, &len))
    8004c134:	ef040593          	addi	a1,s0,-272
    8004c138:	8526                	mv	a0,s1
    8004c13a:	b86cc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c13e:	e955                	bnez	a0,8004c1f2 <JS_ReadObjectRec+0x9d4>
    8004c140:	47b5                	li	a5,13
    8004c142:	481d                	li	a6,7
    8004c144:	00fa9363          	bne	s5,a5,8004c14a <JS_ReadObjectRec+0x92c>
    8004c148:	4811                	li	a6,4
    8004c14a:	00080b1b          	sext.w	s6,a6
quickjs-nuttx/quickjs.c:36262
    for(i = 0; i < len; i++) {
    8004c14e:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:36264
        if (JS_IsException(val))
    8004c150:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:36262
    for(i = 0; i < len; i++) {
    8004c152:	ef042783          	lw	a5,-272(s0)
    8004c156:	04fa6663          	bltu	s4,a5,8004c1a2 <JS_ReadObjectRec+0x984>
quickjs-nuttx/quickjs.c:36275
    if (is_template) {
    8004c15a:	47b5                	li	a5,13
    8004c15c:	02fa9b63          	bne	s5,a5,8004c192 <JS_ReadObjectRec+0x974>
quickjs-nuttx/quickjs.c:36276
        val = JS_ReadObjectRec(s);
    8004c160:	8526                	mv	a0,s1
    8004c162:	ebcff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004c166:	f0a43823          	sd	a0,-240(s0)
    8004c16a:	f0b43c23          	sd	a1,-232(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004c16e:	0005869b          	sext.w	a3,a1
JS_ReadArray():
quickjs-nuttx/quickjs.c:36277
        if (JS_IsException(val))
    8004c172:	4619                	li	a2,6
quickjs-nuttx/quickjs.c:36276
        val = JS_ReadObjectRec(s);
    8004c174:	872a                	mv	a4,a0
    8004c176:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:36277
        if (JS_IsException(val))
    8004c178:	06c68d63          	beq	a3,a2,8004c1f2 <JS_ReadObjectRec+0x9d4>
quickjs-nuttx/quickjs.c:36279
        if (!JS_IsUndefined(val)) {
    8004c17c:	460d                	li	a2,3
    8004c17e:	04c69d63          	bne	a3,a2,8004c1d8 <JS_ReadObjectRec+0x9ba>
quickjs-nuttx/quickjs.c:36284
        JS_PreventExtensions(ctx, obj);
    8004c182:	f0843603          	ld	a2,-248(s0)
    8004c186:	85ca                	mv	a1,s2
    8004c188:	854e                	mv	a0,s3
    8004c18a:	f1243023          	sd	s2,-256(s0)
    8004c18e:	ad9cd0ef          	jal	ra,80019c66 <JS_PreventExtensions>
quickjs-nuttx/quickjs.c:36286
    return obj;
    8004c192:	f0843983          	ld	s3,-248(s0)
    8004c196:	e5243823          	sd	s2,-432(s0)
    8004c19a:	e5043903          	ld	s2,-432(s0)
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36506
        break;
    8004c19e:	f7aff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_ReadArray():
quickjs-nuttx/quickjs.c:36263
        val = JS_ReadObjectRec(s);
    8004c1a2:	8526                	mv	a0,s1
    8004c1a4:	e7aff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004c1a8:	f0a43823          	sd	a0,-240(s0)
    8004c1ac:	f0b43c23          	sd	a1,-232(s0)
quickjs-nuttx/quickjs.c:36264
        if (JS_IsException(val))
    8004c1b0:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:36263
        val = JS_ReadObjectRec(s);
    8004c1b4:	872a                	mv	a4,a0
    8004c1b6:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:36264
        if (JS_IsException(val))
    8004c1b8:	03768d63          	beq	a3,s7,8004c1f2 <JS_ReadObjectRec+0x9d4>
quickjs-nuttx/quickjs.c:36270
        ret = JS_DefinePropertyValueUint32(ctx, obj, i, val,
    8004c1bc:	f0843603          	ld	a2,-248(s0)
    8004c1c0:	885a                	mv	a6,s6
    8004c1c2:	86d2                	mv	a3,s4
    8004c1c4:	85ca                	mv	a1,s2
    8004c1c6:	854e                	mv	a0,s3
    8004c1c8:	f1243023          	sd	s2,-256(s0)
    8004c1cc:	e25e40ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs.c:36272
        if (ret < 0)
    8004c1d0:	02054163          	bltz	a0,8004c1f2 <JS_ReadObjectRec+0x9d4>
quickjs-nuttx/quickjs.c:36262
    for(i = 0; i < len; i++) {
    8004c1d4:	2a05                	addiw	s4,s4,1
    8004c1d6:	bfb5                	j	8004c152 <JS_ReadObjectRec+0x934>
quickjs-nuttx/quickjs.c:36280
            ret = JS_DefinePropertyValue(ctx, obj, JS_ATOM_raw, val, 0);
    8004c1d8:	f0843603          	ld	a2,-248(s0)
    8004c1dc:	4801                	li	a6,0
    8004c1de:	07100693          	li	a3,113
    8004c1e2:	85ca                	mv	a1,s2
    8004c1e4:	854e                	mv	a0,s3
    8004c1e6:	f1243023          	sd	s2,-256(s0)
    8004c1ea:	842cc0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:36281
            if (ret < 0)
    8004c1ee:	f8055ae3          	bgez	a0,8004c182 <JS_ReadObjectRec+0x964>
quickjs-nuttx/quickjs.c:36288
    JS_FreeValue(ctx, obj);
    8004c1f2:	f0843603          	ld	a2,-248(s0)
    8004c1f6:	854e                	mv	a0,s3
    8004c1f8:	85ca                	mv	a1,s2
    8004c1fa:	f1243023          	sd	s2,-256(s0)
quickjs-nuttx/quickjs.c:36289
    return JS_EXCEPTION;
    8004c1fe:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:36288
    JS_FreeValue(ctx, obj);
    8004c200:	d9ebf0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:36289
    return JS_EXCEPTION;
    8004c204:	e4043823          	sd	zero,-432(s0)
    8004c208:	bf49                	j	8004c19a <JS_ReadObjectRec+0x97c>
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36300
    if (bc_get_u8(s, &array_tag))
    8004c20a:	ed040593          	addi	a1,s0,-304
    8004c20e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36294
    JSContext *ctx = s->ctx;
    8004c210:	0004ba83          	ld	s5,0(s1)
quickjs-nuttx/quickjs.c:36300
    if (bc_get_u8(s, &array_tag))
    8004c214:	a88cc0ef          	jal	ra,8001849c <bc_get_u8>
    8004c218:	c501                	beqz	a0,8004c220 <JS_ReadObjectRec+0xa02>
JS_ReadBigNum():
quickjs-nuttx/quickjs.c:35893
    return JS_EXCEPTION;
    8004c21a:	4999                	li	s3,6
    8004c21c:	ee4ff06f          	j	8004b900 <JS_ReadObjectRec+0xe2>
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36302
    if (array_tag >= JS_TYPED_ARRAY_COUNT)
    8004c220:	ed044703          	lbu	a4,-304(s0)
    8004c224:	47a9                	li	a5,10
    8004c226:	00e7fd63          	bgeu	a5,a4,8004c240 <JS_ReadObjectRec+0xa22>
quickjs-nuttx/quickjs.c:36303
        return JS_ThrowTypeError(ctx, "invalid typed array");
    8004c22a:	00021597          	auipc	a1,0x21
    8004c22e:	66e58593          	addi	a1,a1,1646 # 8006d898 <qjsc_repl+0x82e8>
    8004c232:	8556                	mv	a0,s5
    8004c234:	c38cc0ef          	jal	ra,8001866c <JS_ThrowTypeError>
    8004c238:	892a                	mv	s2,a0
    8004c23a:	89ae                	mv	s3,a1
    8004c23c:	edcff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
quickjs-nuttx/quickjs.c:36304
    if (bc_get_leb128(s, &len))
    8004c240:	ef040593          	addi	a1,s0,-272
    8004c244:	8526                	mv	a0,s1
    8004c246:	a7acc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c24a:	f961                	bnez	a0,8004c21a <JS_ReadObjectRec+0x9fc>
quickjs-nuttx/quickjs.c:36306
    if (bc_get_leb128(s, &offset))
    8004c24c:	ee040593          	addi	a1,s0,-288
    8004c250:	8526                	mv	a0,s1
    8004c252:	a6ecc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c256:	f171                	bnez	a0,8004c21a <JS_ReadObjectRec+0x9fc>
quickjs-nuttx/quickjs.c:36311
    if (BC_add_object_ref1(s, NULL))
    8004c258:	4581                	li	a1,0
    8004c25a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36310
    idx = s->objects_count;
    8004c25c:	0404ab03          	lw	s6,64(s1)
quickjs-nuttx/quickjs.c:36311
    if (BC_add_object_ref1(s, NULL))
    8004c260:	c69d00ef          	jal	ra,8001cec8 <BC_add_object_ref1>
    8004c264:	12051e63          	bnez	a0,8004c3a0 <JS_ReadObjectRec+0xb82>
quickjs-nuttx/quickjs.c:36313
    array_buffer = JS_ReadObjectRec(s);
    8004c268:	8526                	mv	a0,s1
    8004c26a:	db4ff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004c26e:	e6a43823          	sd	a0,-400(s0)
    8004c272:	e6b43c23          	sd	a1,-392(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8004c276:	0005879b          	sext.w	a5,a1
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36314
    if (JS_IsException(array_buffer))
    8004c27a:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:36313
    array_buffer = JS_ReadObjectRec(s);
    8004c27c:	8a2a                	mv	s4,a0
    8004c27e:	8bae                	mv	s7,a1
quickjs-nuttx/quickjs.c:36314
    if (JS_IsException(array_buffer))
    8004c280:	f8e78de3          	beq	a5,a4,8004c21a <JS_ReadObjectRec+0x9fc>
js_get_array_buffer():
quickjs-nuttx/quickjs.c:52799
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8004c284:	577d                	li	a4,-1
    8004c286:	00e79a63          	bne	a5,a4,8004c29a <JS_ReadObjectRec+0xa7c>
quickjs-nuttx/quickjs.c:52802
    if (p->class_id != JS_CLASS_ARRAY_BUFFER &&
    8004c28a:	00655783          	lhu	a5,6(a0)
    8004c28e:	4705                	li	a4,1
    8004c290:	37b5                	addiw	a5,a5,-19
    8004c292:	17c2                	slli	a5,a5,0x30
    8004c294:	93c1                	srli	a5,a5,0x30
    8004c296:	00f77e63          	bgeu	a4,a5,8004c2b2 <JS_ReadObjectRec+0xa94>
quickjs-nuttx/quickjs.c:52805
        JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_ARRAY_BUFFER);
    8004c29a:	45cd                	li	a1,19
    8004c29c:	8556                	mv	a0,s5
    8004c29e:	d28cc0ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36317
        JS_FreeValue(ctx, array_buffer);
    8004c2a2:	e7043583          	ld	a1,-400(s0)
    8004c2a6:	e7843603          	ld	a2,-392(s0)
    8004c2aa:	8556                	mv	a0,s5
JS_ReadBigNum():
quickjs-nuttx/quickjs.c:35892
    JS_FreeValue(s->ctx, obj);
    8004c2ac:	cf2bf0ef          	jal	ra,8000b79e <JS_FreeValue>
    8004c2b0:	b7ad                	j	8004c21a <JS_ReadObjectRec+0x9fc>
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36316
    if (!js_get_array_buffer(ctx, array_buffer)) {
    8004c2b2:	791c                	ld	a5,48(a0)
    8004c2b4:	d7fd                	beqz	a5,8004c2a2 <JS_ReadObjectRec+0xa84>
quickjs-nuttx/quickjs.c:36321
    args[1] = JS_NewInt64(ctx, offset);
    8004c2b6:	ee042703          	lw	a4,-288(s0)
quickjs-nuttx/quickjs.c:36320
    args[0] = array_buffer;
    8004c2ba:	f0a43823          	sd	a0,-240(s0)
    8004c2be:	f0b43c23          	sd	a1,-232(s0)
quickjs-nuttx/quickjs.c:36321
    args[1] = JS_NewInt64(ctx, offset);
    8004c2c2:	02071693          	slli	a3,a4,0x20
    8004c2c6:	9281                	srli	a3,a3,0x20
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8004c2c8:	0007079b          	sext.w	a5,a4
    8004c2cc:	0ae69863          	bne	a3,a4,8004c37c <JS_ReadObjectRec+0xb5e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004c2d0:	e8042223          	sw	zero,-380(s0)
    8004c2d4:	e8f42023          	sw	a5,-384(s0)
    8004c2d8:	e8043703          	ld	a4,-384(s0)
    8004c2dc:	f0e43023          	sd	a4,-256(s0)
    8004c2e0:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8004c2e2:	f0f42023          	sw	a5,-256(s0)
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36321
    8004c2e6:	f2e43423          	sd	a4,-216(s0)
quickjs-nuttx/quickjs.c:36322
    args[2] = JS_NewInt64(ctx, len);
    8004c2ea:	ef042703          	lw	a4,-272(s0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    8004c2ee:	f0043787          	fld	fa5,-256(s0)
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36322
    8004c2f2:	02071693          	slli	a3,a4,0x20
quickjs-nuttx/quickjs.c:36321
    args[1] = JS_NewInt64(ctx, offset);
    8004c2f6:	f2f43027          	fsd	fa5,-224(s0)
quickjs-nuttx/quickjs.c:36322
    args[2] = JS_NewInt64(ctx, len);
    8004c2fa:	9281                	srli	a3,a3,0x20
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8004c2fc:	0007079b          	sext.w	a5,a4
    8004c300:	08e69763          	bne	a3,a4,8004c38e <JS_ReadObjectRec+0xb70>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004c304:	e8042a23          	sw	zero,-364(s0)
    8004c308:	e8f42823          	sw	a5,-368(s0)
    8004c30c:	e9043703          	ld	a4,-368(s0)
    8004c310:	f0e43023          	sd	a4,-256(s0)
    8004c314:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8004c316:	f0f42023          	sw	a5,-256(s0)
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36323
    obj = js_typed_array_constructor(ctx, JS_UNDEFINED,
    8004c31a:	478d                	li	a5,3
    8004c31c:	f0f43423          	sd	a5,-248(s0)
    8004c320:	ed044783          	lbu	a5,-304(s0)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    8004c324:	f0043787          	fld	fa5,-256(s0)
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36322
    args[2] = JS_NewInt64(ctx, len);
    8004c328:	f2e43c23          	sd	a4,-200(s0)
quickjs-nuttx/quickjs.c:36323
    obj = js_typed_array_constructor(ctx, JS_UNDEFINED,
    8004c32c:	27d5                	addiw	a5,a5,21
    8004c32e:	f1040713          	addi	a4,s0,-240
    8004c332:	468d                	li	a3,3
    8004c334:	4581                	li	a1,0
    8004c336:	460d                	li	a2,3
    8004c338:	8556                	mv	a0,s5
quickjs-nuttx/quickjs.c:36322
    args[2] = JS_NewInt64(ctx, len);
    8004c33a:	f2f43827          	fsd	fa5,-208(s0)
quickjs-nuttx/quickjs.c:36323
    obj = js_typed_array_constructor(ctx, JS_UNDEFINED,
    8004c33e:	f0043023          	sd	zero,-256(s0)
    8004c342:	c8cf80ef          	jal	ra,800447ce <js_typed_array_constructor>
quickjs-nuttx/quickjs.c:36326
    if (JS_IsException(obj))
    8004c346:	0005871b          	sext.w	a4,a1
    8004c34a:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:36323
    obj = js_typed_array_constructor(ctx, JS_UNDEFINED,
    8004c34c:	892a                	mv	s2,a0
    8004c34e:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:36326
    if (JS_IsException(obj))
    8004c350:	04f70c63          	beq	a4,a5,8004c3a8 <JS_ReadObjectRec+0xb8a>
quickjs-nuttx/quickjs.c:36328
    if (s->allow_reference) {
    8004c354:	0374c783          	lbu	a5,55(s1)
    8004c358:	cb89                	beqz	a5,8004c36a <JS_ReadObjectRec+0xb4c>
quickjs-nuttx/quickjs.c:36329
        s->objects[idx] = JS_VALUE_GET_OBJ(obj);
    8004c35a:	7c9c                	ld	a5,56(s1)
    8004c35c:	020b1713          	slli	a4,s6,0x20
    8004c360:	01d75b13          	srli	s6,a4,0x1d
    8004c364:	9b3e                	add	s6,s6,a5
    8004c366:	00ab3023          	sd	a0,0(s6)
quickjs-nuttx/quickjs.c:36331
    JS_FreeValue(ctx, array_buffer);
    8004c36a:	e7043583          	ld	a1,-400(s0)
    8004c36e:	e7843603          	ld	a2,-392(s0)
    8004c372:	8556                	mv	a0,s5
JS_ReadObjectValue():
quickjs-nuttx/quickjs.c:36430
    JS_FreeValue(ctx, val);
    8004c374:	c2abf0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:36431
    return obj;
    8004c378:	da0ff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8004c37c:	d226f7d3          	fcvt.d.l	fa5,a3
    8004c380:	471d                	li	a4,7
    8004c382:	e20787d3          	fmv.x.d	a5,fa5
JS_ReadObjectRec():
quickjs-nuttx/quickjs.h:230
    return v;
    8004c386:	f0f43027          	fsd	fa5,-256(s0)
    8004c38a:	2781                	sext.w	a5,a5
    8004c38c:	bf99                	j	8004c2e2 <JS_ReadObjectRec+0xac4>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8004c38e:	d226f7d3          	fcvt.d.l	fa5,a3
    8004c392:	471d                	li	a4,7
    8004c394:	e20787d3          	fmv.x.d	a5,fa5
JS_ReadObjectRec():
quickjs-nuttx/quickjs.h:230
    return v;
    8004c398:	f0f43027          	fsd	fa5,-256(s0)
    8004c39c:	2781                	sext.w	a5,a5
    8004c39e:	bfa5                	j	8004c316 <JS_ReadObjectRec+0xaf8>
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36295
    JSValue obj = JS_UNDEFINED, array_buffer = JS_UNDEFINED;
    8004c3a0:	4a01                	li	s4,0
    8004c3a2:	4b8d                	li	s7,3
    8004c3a4:	498d                	li	s3,3
    8004c3a6:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:36334
    JS_FreeValue(ctx, array_buffer);
    8004c3a8:	85d2                	mv	a1,s4
    8004c3aa:	865e                	mv	a2,s7
    8004c3ac:	8556                	mv	a0,s5
    8004c3ae:	bf0bf0ef          	jal	ra,8000b79e <JS_FreeValue>
    8004c3b2:	bc95                	j	8004be26 <JS_ReadObjectRec+0x608>
JS_ReadArrayBuffer():
quickjs-nuttx/quickjs.c:36345
    if (bc_get_leb128(s, &byte_length))
    8004c3b4:	f1040593          	addi	a1,s0,-240
    8004c3b8:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36341
    JSContext *ctx = s->ctx;
    8004c3ba:	0004ba03          	ld	s4,0(s1)
quickjs-nuttx/quickjs.c:36345
    if (bc_get_leb128(s, &byte_length))
    8004c3be:	902cc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c3c2:	c509                	beqz	a0,8004c3cc <JS_ReadObjectRec+0xbae>
quickjs-nuttx/quickjs.c:36360
    return JS_EXCEPTION;
    8004c3c4:	ec043023          	sd	zero,-320(s0)
    8004c3c8:	4999                	li	s3,6
    8004c3ca:	a0b1                	j	8004c416 <JS_ReadObjectRec+0xbf8>
quickjs-nuttx/quickjs.c:36347
    if (unlikely(s->buf_end - s->ptr < byte_length)) {
    8004c3cc:	688c                	ld	a1,16(s1)
    8004c3ce:	6c9c                	ld	a5,24(s1)
    8004c3d0:	f1046603          	lwu	a2,-240(s0)
    8004c3d4:	8f8d                	sub	a5,a5,a1
    8004c3d6:	00c7d663          	bge	a5,a2,8004c3e2 <JS_ReadObjectRec+0xbc4>
quickjs-nuttx/quickjs.c:36348
        bc_read_error_end(s);
    8004c3da:	8526                	mv	a0,s1
    8004c3dc:	898cc0ef          	jal	ra,80018474 <bc_read_error_end>
quickjs-nuttx/quickjs.c:36349
        return JS_EXCEPTION;
    8004c3e0:	b7d5                	j	8004c3c4 <JS_ReadObjectRec+0xba6>
quickjs-nuttx/quickjs.c:36351
    obj = JS_NewArrayBufferCopy(ctx, s->ptr, byte_length);
    8004c3e2:	8552                	mv	a0,s4
    8004c3e4:	c14ff0ef          	jal	ra,8004b7f8 <JS_NewArrayBufferCopy>
    8004c3e8:	eaa43823          	sd	a0,-336(s0)
    8004c3ec:	eab43c23          	sd	a1,-328(s0)
quickjs-nuttx/quickjs.c:36352
    if (JS_IsException(obj))
    8004c3f0:	0005871b          	sext.w	a4,a1
    8004c3f4:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:36351
    obj = JS_NewArrayBufferCopy(ctx, s->ptr, byte_length);
    8004c3f6:	892a                	mv	s2,a0
    8004c3f8:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:36352
    if (JS_IsException(obj))
    8004c3fa:	02f70263          	beq	a4,a5,8004c41e <JS_ReadObjectRec+0xc00>
BC_add_object_ref():
quickjs-nuttx/quickjs.c:35912
    return BC_add_object_ref1(s, JS_VALUE_GET_OBJ(obj));
    8004c3fe:	85aa                	mv	a1,a0
    8004c400:	8526                	mv	a0,s1
    8004c402:	ac7d00ef          	jal	ra,8001cec8 <BC_add_object_ref1>
JS_ReadArrayBuffer():
quickjs-nuttx/quickjs.c:36354
    if (BC_add_object_ref(s, obj))
    8004c406:	ed01                	bnez	a0,8004c41e <JS_ReadObjectRec+0xc00>
quickjs-nuttx/quickjs.c:36356
    s->ptr += byte_length;
    8004c408:	689c                	ld	a5,16(s1)
    8004c40a:	f1046703          	lwu	a4,-240(s0)
quickjs-nuttx/quickjs.c:36357
    return obj;
    8004c40e:	ed243023          	sd	s2,-320(s0)
quickjs-nuttx/quickjs.c:36356
    s->ptr += byte_length;
    8004c412:	97ba                	add	a5,a5,a4
    8004c414:	e89c                	sd	a5,16(s1)
quickjs-nuttx/quickjs.c:36357
    return obj;
    8004c416:	ec043903          	ld	s2,-320(s0)
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36512
        break;
    8004c41a:	cfeff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_ReadArrayBuffer():
quickjs-nuttx/quickjs.c:36359
    JS_FreeValue(ctx, obj);
    8004c41e:	eb043583          	ld	a1,-336(s0)
    8004c422:	eb843603          	ld	a2,-328(s0)
    8004c426:	8552                	mv	a0,s4
    8004c428:	b76bf0ef          	jal	ra,8000b79e <JS_FreeValue>
    8004c42c:	bf61                	j	8004c3c4 <JS_ReadObjectRec+0xba6>
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36514
        if (!s->allow_sab || !ctx->rt->sab_funcs.sab_dup)
    8004c42e:	0344c783          	lbu	a5,52(s1)
    8004c432:	42078863          	beqz	a5,8004c862 <JS_ReadObjectRec+0x1044>
quickjs-nuttx/quickjs.c:36514 (discriminator 1)
    8004c436:	01893783          	ld	a5,24(s2)
    8004c43a:	1687b783          	ld	a5,360(a5)
    8004c43e:	42078263          	beqz	a5,8004c862 <JS_ReadObjectRec+0x1044>
JS_ReadSharedArrayBuffer():
quickjs-nuttx/quickjs.c:36371
    if (bc_get_leb128(s, &byte_length))
    8004c442:	ef040593          	addi	a1,s0,-272
    8004c446:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36365
    JSContext *ctx = s->ctx;
    8004c448:	0004ba03          	ld	s4,0(s1)
quickjs-nuttx/quickjs.c:36371
    if (bc_get_leb128(s, &byte_length))
    8004c44c:	874cc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c450:	c509                	beqz	a0,8004c45a <JS_ReadObjectRec+0xc3c>
quickjs-nuttx/quickjs.c:36388
    return JS_EXCEPTION;
    8004c452:	ee043023          	sd	zero,-288(s0)
    8004c456:	4999                	li	s3,6
    8004c458:	a899                	j	8004c4ae <JS_ReadObjectRec+0xc90>
quickjs-nuttx/quickjs.c:36373
    if (bc_get_u64(s, &u64))
    8004c45a:	f0040593          	addi	a1,s0,-256
    8004c45e:	8526                	mv	a0,s1
    8004c460:	8b8cc0ef          	jal	ra,80018518 <bc_get_u64>
    8004c464:	f57d                	bnez	a0,8004c452 <JS_ReadObjectRec+0xc34>
quickjs-nuttx/quickjs.c:36377
    obj = js_array_buffer_constructor3(ctx, JS_UNDEFINED, byte_length,
    8004c466:	478d                	li	a5,3
    8004c468:	f0f43c23          	sd	a5,-232(s0)
    8004c46c:	ef046683          	lwu	a3,-272(s0)
    8004c470:	f0043783          	ld	a5,-256(s0)
    8004c474:	4751                	li	a4,20
    8004c476:	e002                	sd	zero,0(sp)
    8004c478:	4881                	li	a7,0
    8004c47a:	4801                	li	a6,0
    8004c47c:	4581                	li	a1,0
    8004c47e:	460d                	li	a2,3
    8004c480:	8552                	mv	a0,s4
    8004c482:	f0043823          	sd	zero,-240(s0)
    8004c486:	8a9cf0ef          	jal	ra,8001bd2e <js_array_buffer_constructor3>
    8004c48a:	eca43823          	sd	a0,-304(s0)
    8004c48e:	ecb43c23          	sd	a1,-296(s0)
quickjs-nuttx/quickjs.c:36381
    if (JS_IsException(obj))
    8004c492:	0005871b          	sext.w	a4,a1
    8004c496:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:36377
    obj = js_array_buffer_constructor3(ctx, JS_UNDEFINED, byte_length,
    8004c498:	892a                	mv	s2,a0
    8004c49a:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:36381
    if (JS_IsException(obj))
    8004c49c:	00f70d63          	beq	a4,a5,8004c4b6 <JS_ReadObjectRec+0xc98>
BC_add_object_ref():
quickjs-nuttx/quickjs.c:35912
    return BC_add_object_ref1(s, JS_VALUE_GET_OBJ(obj));
    8004c4a0:	85aa                	mv	a1,a0
    8004c4a2:	8526                	mv	a0,s1
    8004c4a4:	a25d00ef          	jal	ra,8001cec8 <BC_add_object_ref1>
JS_ReadSharedArrayBuffer():
quickjs-nuttx/quickjs.c:36383
    if (BC_add_object_ref(s, obj))
    8004c4a8:	e519                	bnez	a0,8004c4b6 <JS_ReadObjectRec+0xc98>
quickjs-nuttx/quickjs.c:36385
    return obj;
    8004c4aa:	ef243023          	sd	s2,-288(s0)
    8004c4ae:	ee043903          	ld	s2,-288(s0)
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36517
        break;
    8004c4b2:	c66ff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_ReadSharedArrayBuffer():
quickjs-nuttx/quickjs.c:36387
    JS_FreeValue(ctx, obj);
    8004c4b6:	ed043583          	ld	a1,-304(s0)
    8004c4ba:	ed843603          	ld	a2,-296(s0)
    8004c4be:	8552                	mv	a0,s4
    8004c4c0:	adebf0ef          	jal	ra,8000b79e <JS_FreeValue>
    8004c4c4:	b779                	j	8004c452 <JS_ReadObjectRec+0xc34>
JS_ReadDate():
quickjs-nuttx/quickjs.c:36396
    val = JS_ReadObjectRec(s);
    8004c4c6:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36393
    JSContext *ctx = s->ctx;
    8004c4c8:	0004ba03          	ld	s4,0(s1)
quickjs-nuttx/quickjs.c:36396
    val = JS_ReadObjectRec(s);
    8004c4cc:	b52ff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004c4d0:	f0b43c23          	sd	a1,-232(s0)
    8004c4d4:	f0a43823          	sd	a0,-240(s0)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8004c4d8:	2581                	sext.w	a1,a1
JS_ReadDate():
quickjs-nuttx/quickjs.c:36397
    if (JS_IsException(val))
    8004c4da:	4799                	li	a5,6
    8004c4dc:	00f58d63          	beq	a1,a5,8004c4f6 <JS_ReadObjectRec+0xcd8>
JS_IsNumber():
quickjs-nuttx/quickjs.h:572
    return tag == JS_TAG_INT || JS_TAG_IS_FLOAT64(tag);
    8004c4e0:	cd85                	beqz	a1,8004c518 <JS_ReadObjectRec+0xcfa>
    8004c4e2:	479d                	li	a5,7
    8004c4e4:	02f58a63          	beq	a1,a5,8004c518 <JS_ReadObjectRec+0xcfa>
JS_ReadDate():
quickjs-nuttx/quickjs.c:36400
        JS_ThrowTypeError(ctx, "Number tag expected for date");
    8004c4e8:	00021597          	auipc	a1,0x21
    8004c4ec:	3c858593          	addi	a1,a1,968 # 8006d8b0 <qjsc_repl+0x8300>
    8004c4f0:	8552                	mv	a0,s4
    8004c4f2:	97acc0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:36394
    JSValue val, obj = JS_UNDEFINED;
    8004c4f6:	498d                	li	s3,3
    8004c4f8:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:36412
    JS_FreeValue(ctx, val);
    8004c4fa:	f1043583          	ld	a1,-240(s0)
    8004c4fe:	f1843603          	ld	a2,-232(s0)
    8004c502:	8552                	mv	a0,s4
    8004c504:	a9abf0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:36413
    JS_FreeValue(ctx, obj);
    8004c508:	ef243823          	sd	s2,-272(s0)
    8004c50c:	ef343c23          	sd	s3,-264(s0)
JS_ReadObjectValue():
quickjs-nuttx/quickjs.c:36434
    JS_FreeValue(ctx, obj);
    8004c510:	85ca                	mv	a1,s2
    8004c512:	864e                	mv	a2,s3
    8004c514:	8552                	mv	a0,s4
    8004c516:	bb59                	j	8004c2ac <JS_ReadObjectRec+0xa8e>
JS_ReadDate():
quickjs-nuttx/quickjs.c:36403
    obj = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_DATE],
    8004c518:	040a3783          	ld	a5,64(s4)
    8004c51c:	46a9                	li	a3,10
    8004c51e:	8552                	mv	a0,s4
    8004c520:	73cc                	ld	a1,160(a5)
    8004c522:	77d0                	ld	a2,168(a5)
    8004c524:	ec0cf0ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8004c528:	eea43823          	sd	a0,-272(s0)
    8004c52c:	eeb43c23          	sd	a1,-264(s0)
quickjs-nuttx/quickjs.c:36405
    if (JS_IsException(obj))
    8004c530:	0005871b          	sext.w	a4,a1
    8004c534:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:36403
    obj = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_DATE],
    8004c536:	892a                	mv	s2,a0
    8004c538:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:36405
    if (JS_IsException(obj))
    8004c53a:	fcf700e3          	beq	a4,a5,8004c4fa <JS_ReadObjectRec+0xcdc>
BC_add_object_ref():
quickjs-nuttx/quickjs.c:35912
    return BC_add_object_ref1(s, JS_VALUE_GET_OBJ(obj));
    8004c53e:	85aa                	mv	a1,a0
    8004c540:	8526                	mv	a0,s1
    8004c542:	987d00ef          	jal	ra,8001cec8 <BC_add_object_ref1>
JS_ReadDate():
quickjs-nuttx/quickjs.c:36407
    if (BC_add_object_ref(s, obj))
    8004c546:	f955                	bnez	a0,8004c4fa <JS_ReadObjectRec+0xcdc>
quickjs-nuttx/quickjs.c:36409
    JS_SetObjectData(ctx, obj, val);
    8004c548:	f1043683          	ld	a3,-240(s0)
    8004c54c:	f1843703          	ld	a4,-232(s0)
    8004c550:	ef043583          	ld	a1,-272(s0)
    8004c554:	ef843603          	ld	a2,-264(s0)
    8004c558:	8552                	mv	a0,s4
    8004c55a:	a46cd0ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:36410
    return obj;
    8004c55e:	bbaff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_ReadObjectValue():
quickjs-nuttx/quickjs.c:36422
    val = JS_ReadObjectRec(s);
    8004c562:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36419
    JSContext *ctx = s->ctx;
    8004c564:	0004ba03          	ld	s4,0(s1)
quickjs-nuttx/quickjs.c:36422
    val = JS_ReadObjectRec(s);
    8004c568:	ab6ff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004c56c:	f0a43823          	sd	a0,-240(s0)
    8004c570:	f0b43c23          	sd	a1,-232(s0)
quickjs-nuttx/quickjs.c:36423
    if (JS_IsException(val))
    8004c574:	0005879b          	sext.w	a5,a1
    8004c578:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:36422
    val = JS_ReadObjectRec(s);
    8004c57a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:36423
    if (JS_IsException(val))
    8004c57c:	03578b63          	beq	a5,s5,8004c5b2 <JS_ReadObjectRec+0xd94>
quickjs-nuttx/quickjs.c:36425
    obj = JS_ToObject(ctx, val);
    8004c580:	85aa                	mv	a1,a0
    8004c582:	8552                	mv	a0,s4
    8004c584:	b37e30ef          	jal	ra,800300ba <JS_ToObject>
    8004c588:	f0a43023          	sd	a0,-256(s0)
    8004c58c:	f0b43423          	sd	a1,-248(s0)
quickjs-nuttx/quickjs.c:36426
    if (JS_IsException(obj))
    8004c590:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:36425
    obj = JS_ToObject(ctx, val);
    8004c594:	892a                	mv	s2,a0
    8004c596:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:36426
    if (JS_IsException(obj))
    8004c598:	01578f63          	beq	a5,s5,8004c5b6 <JS_ReadObjectRec+0xd98>
BC_add_object_ref():
quickjs-nuttx/quickjs.c:35912
    return BC_add_object_ref1(s, JS_VALUE_GET_OBJ(obj));
    8004c59c:	85aa                	mv	a1,a0
    8004c59e:	8526                	mv	a0,s1
    8004c5a0:	929d00ef          	jal	ra,8001cec8 <BC_add_object_ref1>
JS_ReadObjectValue():
quickjs-nuttx/quickjs.c:36428
    if (BC_add_object_ref(s, obj))
    8004c5a4:	e909                	bnez	a0,8004c5b6 <JS_ReadObjectRec+0xd98>
quickjs-nuttx/quickjs.c:36430
    JS_FreeValue(ctx, val);
    8004c5a6:	f1043583          	ld	a1,-240(s0)
    8004c5aa:	f1843603          	ld	a2,-232(s0)
    8004c5ae:	8552                	mv	a0,s4
    8004c5b0:	b3d1                	j	8004c374 <JS_ReadObjectRec+0xb56>
quickjs-nuttx/quickjs.c:36420
    JSValue val, obj = JS_UNDEFINED;
    8004c5b2:	498d                	li	s3,3
    8004c5b4:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:36433
    JS_FreeValue(ctx, val);
    8004c5b6:	f1043583          	ld	a1,-240(s0)
    8004c5ba:	f1843603          	ld	a2,-232(s0)
    8004c5be:	8552                	mv	a0,s4
    8004c5c0:	9debf0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:36434
    JS_FreeValue(ctx, obj);
    8004c5c4:	f1243023          	sd	s2,-256(s0)
    8004c5c8:	f1343423          	sd	s3,-248(s0)
    8004c5cc:	b791                	j	8004c510 <JS_ReadObjectRec+0xcf2>
JS_ReadBigNum():
quickjs-nuttx/quickjs.c:35774
    p = js_new_bf(s->ctx);
    8004c5ce:	0004ba03          	ld	s4,0(s1)
js_new_bf():
quickjs-nuttx/quickjs.c:12256
    p = js_malloc(ctx, sizeof(*p));
    8004c5d2:	03000593          	li	a1,48
    8004c5d6:	8552                	mv	a0,s4
    8004c5d8:	b2dcd0ef          	jal	ra,8001a104 <js_malloc>
    8004c5dc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:12257
    if (!p)
    8004c5de:	20050f63          	beqz	a0,8004c7fc <JS_ReadObjectRec+0xfde>
quickjs-nuttx/quickjs.c:12259
    p->header.ref_count = 1;
    8004c5e2:	4785                	li	a5,1
    8004c5e4:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs.c:12260
    bf_init(ctx->bf_ctx, &p->num);
    8004c5e6:	00850b13          	addi	s6,a0,8
    8004c5ea:	190a3503          	ld	a0,400(s4)
    8004c5ee:	85da                	mv	a1,s6
    8004c5f0:	39d9                	addiw	s3,s3,-10
    8004c5f2:	57c0b0ef          	jal	ra,80057b6e <bf_init>
JS_ReadBigNum():
quickjs-nuttx/quickjs.c:35777
    switch(tag) {
    8004c5f6:	1982                	slli	s3,s3,0x20
bc_get_sleb128():
quickjs-nuttx/quickjs.c:35595
    ret = get_sleb128(pval, s->ptr, s->buf_end);
    8004c5f8:	6c90                	ld	a2,24(s1)
    8004c5fa:	688c                	ld	a1,16(s1)
    8004c5fc:	0209d993          	srli	s3,s3,0x20
    8004c600:	00048797          	auipc	a5,0x48
    8004c604:	bd078793          	addi	a5,a5,-1072 # 800941d0 <CSWTCH.5394>
    8004c608:	99be                	add	s3,s3,a5
    8004c60a:	ee040513          	addi	a0,s0,-288
    8004c60e:	00098983          	lb	s3,0(s3)
    8004c612:	b68bc0ef          	jal	ra,8000897a <get_sleb128>
quickjs-nuttx/quickjs.c:35596
    if (unlikely(ret < 0))
    8004c616:	02055863          	bgez	a0,8004c646 <JS_ReadObjectRec+0xe28>
quickjs-nuttx/quickjs.c:35597
        return bc_read_error_end(s);
    8004c61a:	8526                	mv	a0,s1
    8004c61c:	e59cb0ef          	jal	ra,80018474 <bc_read_error_end>
JS_ReadBigNum():
quickjs-nuttx/quickjs.c:35794
    if (bc_get_sleb128(s, &e))
    8004c620:	ed51                	bnez	a0,8004c6bc <JS_ReadObjectRec+0xe9e>
quickjs-nuttx/quickjs.c:35798
    a->sign = e & 1;
    8004c622:	ee042783          	lw	a5,-288(s0)
    8004c626:	0017f713          	andi	a4,a5,1
    8004c62a:	00e92823          	sw	a4,16(s2)
quickjs-nuttx/quickjs.c:35799
    e >>= 1;
    8004c62e:	4017d71b          	sraiw	a4,a5,0x1
    8004c632:	eee42023          	sw	a4,-288(s0)
    8004c636:	8785                	srai	a5,a5,0x1
quickjs-nuttx/quickjs.c:35800
    if (e == 0)
    8004c638:	eb99                	bnez	a5,8004c64e <JS_ReadObjectRec+0xe30>
quickjs-nuttx/quickjs.c:35801
        a->expn = BF_EXP_ZERO;
    8004c63a:	57fd                	li	a5,-1
    8004c63c:	17fe                	slli	a5,a5,0x3f
quickjs-nuttx/quickjs.c:35805
        a->expn = BF_EXP_NAN;
    8004c63e:	00f93c23          	sd	a5,24(s2)
    8004c642:	ad6ff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
bc_get_sleb128():
quickjs-nuttx/quickjs.c:35598
    s->ptr += ret;
    8004c646:	689c                	ld	a5,16(s1)
    8004c648:	953e                	add	a0,a0,a5
    8004c64a:	e888                	sd	a0,16(s1)
quickjs-nuttx/quickjs.c:35599
    return 0;
    8004c64c:	bfd9                	j	8004c622 <JS_ReadObjectRec+0xe04>
JS_ReadBigNum():
quickjs-nuttx/quickjs.c:35802
    else if (e == 1)
    8004c64e:	4685                	li	a3,1
    8004c650:	00d79563          	bne	a5,a3,8004c65a <JS_ReadObjectRec+0xe3c>
quickjs-nuttx/quickjs.c:35803
        a->expn = BF_EXP_INF;
    8004c654:	57f5                	li	a5,-3
quickjs-nuttx/quickjs.c:35805
        a->expn = BF_EXP_NAN;
    8004c656:	8385                	srli	a5,a5,0x1
    8004c658:	b7dd                	j	8004c63e <JS_ReadObjectRec+0xe20>
quickjs-nuttx/quickjs.c:35804
    else if (e == 2)
    8004c65a:	4689                	li	a3,2
    8004c65c:	00d79463          	bne	a5,a3,8004c664 <JS_ReadObjectRec+0xe46>
quickjs-nuttx/quickjs.c:35805
        a->expn = BF_EXP_NAN;
    8004c660:	57fd                	li	a5,-1
    8004c662:	bfd5                	j	8004c656 <JS_ReadObjectRec+0xe38>
quickjs-nuttx/quickjs.c:35806
    else if (e >= 3)
    8004c664:	06f6d463          	bge	a3,a5,8004c6cc <JS_ReadObjectRec+0xeae>
quickjs-nuttx/quickjs.c:35807
        a->expn = e - 3;
    8004c668:	3775                	addiw	a4,a4,-3
    8004c66a:	00e93c23          	sd	a4,24(s2)
quickjs-nuttx/quickjs.c:35812
    if (a->expn != BF_EXP_ZERO &&
    8004c66e:	01893783          	ld	a5,24(s2)
    8004c672:	577d                	li	a4,-1
    8004c674:	8305                	srli	a4,a4,0x1
    8004c676:	97ba                	add	a5,a5,a4
    8004c678:	5771                	li	a4,-4
    8004c67a:	a8f76f63          	bltu	a4,a5,8004b918 <JS_ReadObjectRec+0xfa>
quickjs-nuttx/quickjs.c:35815
        if (bc_get_leb128(s, &len))
    8004c67e:	ef040593          	addi	a1,s0,-272
    8004c682:	8526                	mv	a0,s1
    8004c684:	e3dcb0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c688:	e915                	bnez	a0,8004c6bc <JS_ReadObjectRec+0xe9e>
quickjs-nuttx/quickjs.c:35818
        if (len == 0) {
    8004c68a:	ef042a03          	lw	s4,-272(s0)
quickjs-nuttx/quickjs.c:35819
            JS_ThrowInternalError(s->ctx, "invalid bignum length");
    8004c68e:	00021597          	auipc	a1,0x21
    8004c692:	24258593          	addi	a1,a1,578 # 8006d8d0 <qjsc_repl+0x8320>
quickjs-nuttx/quickjs.c:35818
        if (len == 0) {
    8004c696:	140a0763          	beqz	s4,8004c7e4 <JS_ReadObjectRec+0xfc6>
quickjs-nuttx/quickjs.c:35822
        if (tag != BC_TAG_BIG_DECIMAL)
    8004c69a:	47b1                	li	a5,12
    8004c69c:	02fa8b63          	beq	s5,a5,8004c6d2 <JS_ReadObjectRec+0xeb4>
quickjs-nuttx/quickjs.c:35823
            l = (len + sizeof(limb_t) - 1) / sizeof(limb_t);
    8004c6a0:	1a02                	slli	s4,s4,0x20
    8004c6a2:	020a5a13          	srli	s4,s4,0x20
    8004c6a6:	0a1d                	addi	s4,s4,7
    8004c6a8:	003a5a13          	srli	s4,s4,0x3
quickjs-nuttx/quickjs.c:35826
        if (bf_resize(a, l)) {
    8004c6ac:	85d2                	mv	a1,s4
    8004c6ae:	855a                	mv	a0,s6
    8004c6b0:	4d40b0ef          	jal	ra,80057b84 <bf_resize>
    8004c6b4:	c51d                	beqz	a0,8004c6e2 <JS_ReadObjectRec+0xec4>
quickjs-nuttx/quickjs.c:35827
            JS_ThrowOutOfMemory(s->ctx);
    8004c6b6:	6088                	ld	a0,0(s1)
    8004c6b8:	a1dcd0ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
quickjs-nuttx/quickjs.c:35892
    JS_FreeValue(s->ctx, obj);
    8004c6bc:	6088                	ld	a0,0(s1)
    8004c6be:	f1243823          	sd	s2,-240(s0)
    8004c6c2:	f1343c23          	sd	s3,-232(s0)
    8004c6c6:	85ca                	mv	a1,s2
    8004c6c8:	864e                	mv	a2,s3
    8004c6ca:	b6cd                	j	8004c2ac <JS_ReadObjectRec+0xa8e>
quickjs-nuttx/quickjs.c:35809
        a->expn = e;
    8004c6cc:	00f93c23          	sd	a5,24(s2)
    8004c6d0:	bf79                	j	8004c66e <JS_ReadObjectRec+0xe50>
quickjs-nuttx/quickjs.c:35825
            l = (len + LIMB_DIGITS - 1) / LIMB_DIGITS;
    8004c6d2:	2a49                	addiw	s4,s4,18
    8004c6d4:	47cd                	li	a5,19
    8004c6d6:	02fa5a3b          	divuw	s4,s4,a5
    8004c6da:	1a02                	slli	s4,s4,0x20
    8004c6dc:	020a5a13          	srli	s4,s4,0x20
    8004c6e0:	b7f1                	j	8004c6ac <JS_ReadObjectRec+0xe8e>
quickjs-nuttx/quickjs.c:35830
        if (tag != BC_TAG_BIG_DECIMAL) {
    8004c6e2:	47b1                	li	a5,12
    8004c6e4:	10fa8463          	beq	s5,a5,8004c7ec <JS_ReadObjectRec+0xfce>
quickjs-nuttx/quickjs.c:35831
            n = len & (sizeof(limb_t) - 1);
    8004c6e8:	ef042a83          	lw	s5,-272(s0)
    8004c6ec:	007af793          	andi	a5,s5,7
quickjs-nuttx/quickjs.c:35832
            if (n != 0) {
    8004c6f0:	c7ad                	beqz	a5,8004c75a <JS_ReadObjectRec+0xf3c>
    8004c6f2:	4aa1                	li	s5,8
quickjs-nuttx/quickjs.c:35831
            n = len & (sizeof(limb_t) - 1);
    8004c6f4:	02079b93          	slli	s7,a5,0x20
    8004c6f8:	40fa8ab3          	sub	s5,s5,a5
    8004c6fc:	020bdb93          	srli	s7,s7,0x20
quickjs-nuttx/quickjs.c:35833
                v = 0;
    8004c700:	f0043023          	sd	zero,-256(s0)
quickjs-nuttx/quickjs.c:35834
                for(i = 0; i < n; i++) {
    8004c704:	0a8e                	slli	s5,s5,0x3
    8004c706:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:35835
                    if (bc_get_u8(s, &v8))
    8004c708:	ed040593          	addi	a1,s0,-304
    8004c70c:	8526                	mv	a0,s1
    8004c70e:	d8fcb0ef          	jal	ra,8001849c <bc_get_u8>
    8004c712:	f54d                	bnez	a0,8004c6bc <JS_ReadObjectRec+0xe9e>
quickjs-nuttx/quickjs.c:35837
                    v |= (limb_t)v8 << ((sizeof(limb_t) - n + i) * 8);
    8004c714:	ed044783          	lbu	a5,-304(s0)
    8004c718:	f0043703          	ld	a4,-256(s0)
quickjs-nuttx/quickjs.c:35834
                for(i = 0; i < n; i++) {
    8004c71c:	0b05                	addi	s6,s6,1
quickjs-nuttx/quickjs.c:35837
                    v |= (limb_t)v8 << ((sizeof(limb_t) - n + i) * 8);
    8004c71e:	015797b3          	sll	a5,a5,s5
    8004c722:	8fd9                	or	a5,a5,a4
    8004c724:	f0f43023          	sd	a5,-256(s0)
quickjs-nuttx/quickjs.c:35834
                for(i = 0; i < n; i++) {
    8004c728:	2aa1                	addiw	s5,s5,8
    8004c72a:	fd7b6fe3          	bltu	s6,s7,8004c708 <JS_ReadObjectRec+0xeea>
quickjs-nuttx/quickjs.c:35839
                a->tab[0] = v;
    8004c72e:	02893703          	ld	a4,40(s2)
quickjs-nuttx/quickjs.c:35840
                i = 1;
    8004c732:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:35839
                a->tab[0] = v;
    8004c734:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs.c:35844
            for(; i < l; i++) {
    8004c736:	9f4af163          	bgeu	s5,s4,8004b918 <JS_ReadObjectRec+0xfa>
quickjs-nuttx/quickjs.c:35852
                if (bc_get_u64(s, &v))
    8004c73a:	f0040593          	addi	a1,s0,-256
    8004c73e:	8526                	mv	a0,s1
    8004c740:	dd9cb0ef          	jal	ra,80018518 <bc_get_u64>
    8004c744:	fd25                	bnez	a0,8004c6bc <JS_ReadObjectRec+0xe9e>
quickjs-nuttx/quickjs.c:35858
                a->tab[i] = v;
    8004c746:	02893783          	ld	a5,40(s2)
    8004c74a:	003a9713          	slli	a4,s5,0x3
quickjs-nuttx/quickjs.c:35844
            for(; i < l; i++) {
    8004c74e:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:35858
                a->tab[i] = v;
    8004c750:	97ba                	add	a5,a5,a4
    8004c752:	f0043703          	ld	a4,-256(s0)
    8004c756:	e398                	sd	a4,0(a5)
quickjs-nuttx/quickjs.c:35844
            for(; i < l; i++) {
    8004c758:	bff9                	j	8004c736 <JS_ReadObjectRec+0xf18>
quickjs-nuttx/quickjs.c:35842
                i = 0;
    8004c75a:	4a81                	li	s5,0
    8004c75c:	bfe9                	j	8004c736 <JS_ReadObjectRec+0xf18>
quickjs-nuttx/quickjs.c:35876
                        d = v8 >> 4;
    8004c75e:	ed044783          	lbu	a5,-304(s0)
quickjs-nuttx/quickjs.c:35877
                        bpos = 0;
    8004c762:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:35876
                        d = v8 >> 4;
    8004c764:	8391                	srli	a5,a5,0x4
quickjs-nuttx/quickjs.c:35877
                        bpos = 0;
    8004c766:	a88d                	j	8004c7d8 <JS_ReadObjectRec+0xfba>
quickjs-nuttx/quickjs.c:35883
                    v += mp_pow_dec[j] * d;
    8004c768:	003a9693          	slli	a3,s5,0x3
    8004c76c:	96e2                	add	a3,a3,s8
    8004c76e:	6294                	ld	a3,0(a3)
quickjs-nuttx/quickjs.c:35869
                for(; j < LIMB_DIGITS; j++) {
    8004c770:	0a85                	addi	s5,s5,1
quickjs-nuttx/quickjs.c:35883
                    v += mp_pow_dec[j] * d;
    8004c772:	02d787b3          	mul	a5,a5,a3
    8004c776:	f0043683          	ld	a3,-256(s0)
    8004c77a:	97b6                	add	a5,a5,a3
    8004c77c:	f0f43023          	sd	a5,-256(s0)
quickjs-nuttx/quickjs.c:35869
                for(; j < LIMB_DIGITS; j++) {
    8004c780:	059a9063          	bne	s5,s9,8004c7c0 <JS_ReadObjectRec+0xfa2>
quickjs-nuttx/quickjs.c:35885
                a->tab[i] = v;
    8004c784:	02893683          	ld	a3,40(s2)
    8004c788:	003b1613          	slli	a2,s6,0x3
quickjs-nuttx/quickjs.c:35862
            for(i = 0; i < l; i++) {
    8004c78c:	0b05                	addi	s6,s6,1
quickjs-nuttx/quickjs.c:35885
                a->tab[i] = v;
    8004c78e:	96b2                	add	a3,a3,a2
    8004c790:	e29c                	sd	a5,0(a3)
quickjs-nuttx/quickjs.c:35862
            for(i = 0; i < l; i++) {
    8004c792:	016a1463          	bne	s4,s6,8004c79a <JS_ReadObjectRec+0xf7c>
    8004c796:	982ff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
quickjs-nuttx/quickjs.c:35866
                    j = 0;
    8004c79a:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:35863
                if (i == 0 && (n = len % LIMB_DIGITS) != 0) {
    8004c79c:	000b1f63          	bnez	s6,8004c7ba <JS_ReadObjectRec+0xf9c>
    8004c7a0:	ef042783          	lw	a5,-272(s0)
    8004c7a4:	46cd                	li	a3,19
    8004c7a6:	02d7f7bb          	remuw	a5,a5,a3
    8004c7aa:	0007869b          	sext.w	a3,a5
    8004c7ae:	c691                	beqz	a3,8004c7ba <JS_ReadObjectRec+0xf9c>
    8004c7b0:	1782                	slli	a5,a5,0x20
    8004c7b2:	9381                	srli	a5,a5,0x20
quickjs-nuttx/quickjs.c:35864
                    j = LIMB_DIGITS - n;
    8004c7b4:	4acd                	li	s5,19
    8004c7b6:	40fa8ab3          	sub	s5,s5,a5
quickjs-nuttx/quickjs.c:35868
                v = 0;
    8004c7ba:	f0043023          	sd	zero,-256(s0)
quickjs-nuttx/quickjs.c:35869
                for(; j < LIMB_DIGITS; j++) {
    8004c7be:	4ccd                	li	s9,19
quickjs-nuttx/quickjs.c:35870
                    if (bpos == 0) {
    8004c7c0:	ff59                	bnez	a4,8004c75e <JS_ReadObjectRec+0xf40>
quickjs-nuttx/quickjs.c:35871
                        if (bc_get_u8(s, &v8))
    8004c7c2:	ed040593          	addi	a1,s0,-304
    8004c7c6:	8526                	mv	a0,s1
    8004c7c8:	cd5cb0ef          	jal	ra,8001849c <bc_get_u8>
    8004c7cc:	ee0518e3          	bnez	a0,8004c6bc <JS_ReadObjectRec+0xe9e>
quickjs-nuttx/quickjs.c:35873
                        d = v8 & 0xf;
    8004c7d0:	ed044783          	lbu	a5,-304(s0)
quickjs-nuttx/quickjs.c:35874
                        bpos = 1;
    8004c7d4:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:35873
                        d = v8 & 0xf;
    8004c7d6:	8bbd                	andi	a5,a5,15
quickjs-nuttx/quickjs.c:35879
                    if (d >= 10) {
    8004c7d8:	f8fbd8e3          	bge	s7,a5,8004c768 <JS_ReadObjectRec+0xf4a>
quickjs-nuttx/quickjs.c:35880
                        JS_ThrowInternalError(s->ctx, "invalid digit");
    8004c7dc:	00021597          	auipc	a1,0x21
    8004c7e0:	10c58593          	addi	a1,a1,268 # 8006d8e8 <qjsc_repl+0x8338>
    8004c7e4:	6088                	ld	a0,0(s1)
    8004c7e6:	912cd0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:35881
                        goto fail;
    8004c7ea:	bdc9                	j	8004c6bc <JS_ReadObjectRec+0xe9e>
quickjs-nuttx/quickjs.c:35861
            bpos = 0;
    8004c7ec:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:35862
            for(i = 0; i < l; i++) {
    8004c7ee:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:35879
                    if (d >= 10) {
    8004c7f0:	4ba5                	li	s7,9
quickjs-nuttx/quickjs.c:35883
                    v += mp_pow_dec[j] * d;
    8004c7f2:	00034c17          	auipc	s8,0x34
    8004c7f6:	2a6c0c13          	addi	s8,s8,678 # 80080a98 <mp_pow_dec>
    8004c7fa:	bf61                	j	8004c792 <JS_ReadObjectRec+0xf74>
quickjs-nuttx/quickjs.c:35764
    JSValue obj = JS_UNDEFINED;
    8004c7fc:	498d                	li	s3,3
    8004c7fe:	bd7d                	j	8004c6bc <JS_ReadObjectRec+0xe9e>
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36534
            if (!s->allow_reference)
    8004c800:	0374c783          	lbu	a5,55(s1)
    8004c804:	ef91                	bnez	a5,8004c820 <JS_ReadObjectRec+0x1002>
quickjs-nuttx/quickjs.c:36535
                return JS_ThrowSyntaxError(ctx, "object references are not allowed");
    8004c806:	00021597          	auipc	a1,0x21
    8004c80a:	0f258593          	addi	a1,a1,242 # 8006d8f8 <qjsc_repl+0x8348>
    8004c80e:	854a                	mv	a0,s2
    8004c810:	b73cb0ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
quickjs-nuttx/quickjs.c:36548
        return JS_ThrowSyntaxError(ctx, "invalid tag (tag=%d pos=%u)",
    8004c814:	dea43823          	sd	a0,-528(s0)
    8004c818:	deb43c23          	sd	a1,-520(s0)
    8004c81c:	882ff06f          	j	8004b89e <JS_ReadObjectRec+0x80>
quickjs-nuttx/quickjs.c:36536
            if (bc_get_leb128(s, &val))
    8004c820:	f1040593          	addi	a1,s0,-240
    8004c824:	8526                	mv	a0,s1
    8004c826:	c9bcb0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c82a:	c119                	beqz	a0,8004c830 <JS_ReadObjectRec+0x1012>
    8004c82c:	868ff06f          	j	8004b894 <JS_ReadObjectRec+0x76>
quickjs-nuttx/quickjs.c:36539
            if (val >= s->objects_count) {
    8004c830:	40b4                	lw	a3,64(s1)
    8004c832:	f1042603          	lw	a2,-240(s0)
quickjs-nuttx/quickjs.c:36540
                return JS_ThrowSyntaxError(ctx, "invalid object reference (%u >= %u)",
    8004c836:	00021597          	auipc	a1,0x21
    8004c83a:	0ea58593          	addi	a1,a1,234 # 8006d920 <qjsc_repl+0x8370>
quickjs-nuttx/quickjs.c:36539
            if (val >= s->objects_count) {
    8004c83e:	02d67a63          	bgeu	a2,a3,8004c872 <JS_ReadObjectRec+0x1054>
quickjs-nuttx/quickjs.c:36543
            obj = JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, s->objects[val]));
    8004c842:	7c9c                	ld	a5,56(s1)
    8004c844:	02061713          	slli	a4,a2,0x20
    8004c848:	01d75613          	srli	a2,a4,0x1d
    8004c84c:	963e                	add	a2,a2,a5
    8004c84e:	00063903          	ld	s2,0(a2)
    8004c852:	59fd                	li	s3,-1
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8004c854:	00092783          	lw	a5,0(s2)
    8004c858:	2785                	addiw	a5,a5,1
    8004c85a:	00f92023          	sw	a5,0(s2)
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36545
        break;
    8004c85e:	8baff06f          	j	8004b918 <JS_ReadObjectRec+0xfa>
quickjs-nuttx/quickjs.c:36549
                                   tag, (unsigned int)(s->ptr - s->buf_start));
    8004c862:	6894                	ld	a3,16(s1)
    8004c864:	649c                	ld	a5,8(s1)
quickjs-nuttx/quickjs.c:36548
        return JS_ThrowSyntaxError(ctx, "invalid tag (tag=%d pos=%u)",
    8004c866:	8656                	mv	a2,s5
    8004c868:	00021597          	auipc	a1,0x21
    8004c86c:	0e058593          	addi	a1,a1,224 # 8006d948 <qjsc_repl+0x8398>
    8004c870:	9e9d                	subw	a3,a3,a5
    8004c872:	854a                	mv	a0,s2
    8004c874:	b0fcb0ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
    8004c878:	bf71                	j	8004c814 <JS_ReadObjectRec+0xff6>
quickjs-nuttx/quickjs.c:36454
        obj = JS_NULL;
    8004c87a:	4989                	li	s3,2
    8004c87c:	884ff06f          	j	8004b900 <JS_ReadObjectRec+0xe2>

000000008004c880 <JS_ReadObject>:
JS_ReadObject():
quickjs-nuttx/quickjs.c:36610
{
    8004c880:	7175                	addi	sp,sp,-144
    8004c882:	e506                	sd	ra,136(sp)
    8004c884:	e122                	sd	s0,128(sp)
    8004c886:	fca6                	sd	s1,120(sp)
quickjs-nuttx/quickjs.c:36614
    ctx->binary_object_count += 1;
    8004c888:	03055783          	lhu	a5,48(a0)
quickjs-nuttx/quickjs.c:36617
    memset(s, 0, sizeof(*s));
    8004c88c:	ec82                	sd	zero,88(sp)
quickjs-nuttx/quickjs.c:36622
    s->allow_bytecode = ((flags & JS_READ_OBJ_BYTECODE) != 0);
    8004c88e:	0016f713          	andi	a4,a3,1
quickjs-nuttx/quickjs.c:36614
    ctx->binary_object_count += 1;
    8004c892:	2785                	addiw	a5,a5,1
    8004c894:	02f51823          	sh	a5,48(a0)
quickjs-nuttx/quickjs.c:36615
    ctx->binary_object_size += buf_len;
    8004c898:	595c                	lw	a5,52(a0)
quickjs-nuttx/quickjs.c:36617
    memset(s, 0, sizeof(*s));
    8004c89a:	e482                	sd	zero,72(sp)
    8004c89c:	e882                	sd	zero,80(sp)
quickjs-nuttx/quickjs.c:36615
    ctx->binary_object_size += buf_len;
    8004c89e:	9fb1                	addw	a5,a5,a2
    8004c8a0:	d95c                	sw	a5,52(a0)
quickjs-nuttx/quickjs.c:36623
    s->is_rom_data = ((flags & JS_READ_OBJ_ROM_DATA) != 0);
    8004c8a2:	4016d79b          	sraiw	a5,a3,0x1
    8004c8a6:	8b85                	andi	a5,a5,1
    8004c8a8:	04f10f23          	sb	a5,94(sp)
quickjs-nuttx/quickjs.c:36624
    s->allow_sab = ((flags & JS_READ_OBJ_SAB) != 0);
    8004c8ac:	4026d79b          	sraiw	a5,a3,0x2
quickjs-nuttx/quickjs.c:36625
    s->allow_reference = ((flags & JS_READ_OBJ_REFERENCE) != 0);
    8004c8b0:	4036d69b          	sraiw	a3,a3,0x3
quickjs-nuttx/quickjs.c:36624
    s->allow_sab = ((flags & JS_READ_OBJ_SAB) != 0);
    8004c8b4:	8b85                	andi	a5,a5,1
quickjs-nuttx/quickjs.c:36620
    s->buf_end = buf + buf_len;
    8004c8b6:	962e                	add	a2,a2,a1
quickjs-nuttx/quickjs.c:36625
    s->allow_reference = ((flags & JS_READ_OBJ_REFERENCE) != 0);
    8004c8b8:	8a85                	andi	a3,a3,1
quickjs-nuttx/quickjs.c:36624
    s->allow_sab = ((flags & JS_READ_OBJ_SAB) != 0);
    8004c8ba:	04f10e23          	sb	a5,92(sp)
quickjs-nuttx/quickjs.c:36617
    memset(s, 0, sizeof(*s));
    8004c8be:	f082                	sd	zero,96(sp)
    8004c8c0:	f482                	sd	zero,104(sp)
quickjs-nuttx/quickjs.c:36618
    s->ctx = ctx;
    8004c8c2:	f42a                	sd	a0,40(sp)
quickjs-nuttx/quickjs.c:36619
    s->buf_start = buf;
    8004c8c4:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs.c:36620
    s->buf_end = buf + buf_len;
    8004c8c6:	e0b2                	sd	a2,64(sp)
quickjs-nuttx/quickjs.c:36621
    s->ptr = buf;
    8004c8c8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:36622
    s->allow_bytecode = ((flags & JS_READ_OBJ_BYTECODE) != 0);
    8004c8ca:	04e10ea3          	sb	a4,93(sp)
quickjs-nuttx/quickjs.c:36625
    s->allow_reference = ((flags & JS_READ_OBJ_REFERENCE) != 0);
    8004c8ce:	04d10fa3          	sb	a3,95(sp)
quickjs-nuttx/quickjs.c:36629
        s->first_atom = 1;
    8004c8d2:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:36626
    if (s->allow_bytecode)
    8004c8d4:	c319                	beqz	a4,8004c8da <JS_ReadObject+0x5a>
    8004c8d6:	0e300793          	li	a5,227
JS_ReadObjectAtoms():
quickjs-nuttx/quickjs.c:36562
    if (bc_get_u8(s, &v8))
    8004c8da:	082c                	addi	a1,sp,24
    8004c8dc:	1028                	addi	a0,sp,40
    8004c8de:	c4be                	sw	a5,72(sp)
    8004c8e0:	bbdcb0ef          	jal	ra,8001849c <bc_get_u8>
    8004c8e4:	ed11                	bnez	a0,8004c900 <JS_ReadObject+0x80>
quickjs-nuttx/quickjs.c:36565
    if (v8 != BC_VERSION) {
    8004c8e6:	01814603          	lbu	a2,24(sp)
    8004c8ea:	4789                	li	a5,2
    8004c8ec:	02f60a63          	beq	a2,a5,8004c920 <JS_ReadObject+0xa0>
quickjs-nuttx/quickjs.c:36566
        JS_ThrowSyntaxError(s->ctx, "invalid version (%d expected=%d)",
    8004c8f0:	7522                	ld	a0,40(sp)
    8004c8f2:	4689                	li	a3,2
    8004c8f4:	00021597          	auipc	a1,0x21
    8004c8f8:	0c458593          	addi	a1,a1,196 # 8006d9b8 <qjsc_repl+0x8408>
    8004c8fc:	a87cb0ef          	jal	ra,80018382 <JS_ThrowSyntaxError>
JS_ReadObject():
quickjs-nuttx/quickjs.c:36631
        obj = JS_EXCEPTION;
    8004c900:	e402                	sd	zero,8(sp)
    8004c902:	4419                	li	s0,6
bc_reader_free():
quickjs-nuttx/quickjs.c:36599
    if (s->idx_to_atom) {
    8004c904:	67c6                	ld	a5,80(sp)
quickjs-nuttx/quickjs.c:36600
        for(i = 0; i < s->idx_to_atom_count; i++) {
    8004c906:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:36599
    if (s->idx_to_atom) {
    8004c908:	efc1                	bnez	a5,8004c9a0 <JS_ReadObject+0x120>
quickjs-nuttx/quickjs.c:36605
    js_free(s->ctx, s->objects);
    8004c90a:	7586                	ld	a1,96(sp)
    8004c90c:	7522                	ld	a0,40(sp)
    8004c90e:	ee8be0ef          	jal	ra,8000aff6 <js_free>
JS_ReadObject():
quickjs-nuttx/quickjs.c:36637
}
    8004c912:	60aa                	ld	ra,136(sp)
    8004c914:	85a2                	mv	a1,s0
    8004c916:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs.c:36636
    return obj;
    8004c918:	6522                	ld	a0,8(sp)
quickjs-nuttx/quickjs.c:36637
}
    8004c91a:	74e6                	ld	s1,120(sp)
    8004c91c:	6149                	addi	sp,sp,144
    8004c91e:	8082                	ret
JS_ReadObjectAtoms():
quickjs-nuttx/quickjs.c:36570
    if (bc_get_leb128(s, &s->idx_to_atom_count))
    8004c920:	00ec                	addi	a1,sp,76
    8004c922:	1028                	addi	a0,sp,40
    8004c924:	b9dcb0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004c928:	842a                	mv	s0,a0
    8004c92a:	f979                	bnez	a0,8004c900 <JS_ReadObject+0x80>
quickjs-nuttx/quickjs.c:36575
    if (s->idx_to_atom_count != 0) {
    8004c92c:	45b6                	lw	a1,76(sp)
    8004c92e:	c5b1                	beqz	a1,8004c97a <JS_ReadObject+0xfa>
quickjs-nuttx/quickjs.c:36576
        s->idx_to_atom = js_mallocz(s->ctx, s->idx_to_atom_count *
    8004c930:	7522                	ld	a0,40(sp)
    8004c932:	02059793          	slli	a5,a1,0x20
    8004c936:	01e7d593          	srli	a1,a5,0x1e
    8004c93a:	ffece0ef          	jal	ra,8001b138 <js_mallocz>
    8004c93e:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:36578
        if (!s->idx_to_atom)
    8004c940:	ed0d                	bnez	a0,8004c97a <JS_ReadObject+0xfa>
quickjs-nuttx/quickjs.c:36579
            return s->error_state = -1;
    8004c942:	57fd                	li	a5,-1
    8004c944:	ccbe                	sw	a5,88(sp)
    8004c946:	bf6d                	j	8004c900 <JS_ReadObject+0x80>
quickjs-nuttx/quickjs.c:36582
        p = JS_ReadString(s);
    8004c948:	1028                	addi	a0,sp,40
    8004c94a:	e7ad10ef          	jal	ra,8001dfc4 <JS_ReadString>
    8004c94e:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:36583
        if (!p)
    8004c950:	d945                	beqz	a0,8004c900 <JS_ReadObject+0x80>
quickjs-nuttx/quickjs.c:36585
        atom = JS_NewAtomStr(s->ctx, p);
    8004c952:	7522                	ld	a0,40(sp)
    8004c954:	e60be0ef          	jal	ra,8000afb4 <JS_NewAtomStr>
    8004c958:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs.c:36586
        if (atom == JS_ATOM_NULL)
    8004c95a:	d565                	beqz	a0,8004c942 <JS_ReadObject+0xc2>
quickjs-nuttx/quickjs.c:36588
        s->idx_to_atom[i] = atom;
    8004c95c:	6746                	ld	a4,80(sp)
    8004c95e:	00241793          	slli	a5,s0,0x2
    8004c962:	97ba                	add	a5,a5,a4
    8004c964:	c388                	sw	a0,0(a5)
quickjs-nuttx/quickjs.c:36589
        if (s->is_rom_data && (atom != (i + s->first_atom)))
    8004c966:	05e14783          	lbu	a5,94(sp)
    8004c96a:	c799                	beqz	a5,8004c978 <JS_ReadObject+0xf8>
    8004c96c:	47a6                	lw	a5,72(sp)
    8004c96e:	9fa5                	addw	a5,a5,s1
    8004c970:	00a78463          	beq	a5,a0,8004c978 <JS_ReadObject+0xf8>
quickjs-nuttx/quickjs.c:36590
            s->is_rom_data = FALSE; /* atoms must be relocated */
    8004c974:	04010f23          	sb	zero,94(sp)
quickjs-nuttx/quickjs.c:36581
    for(i = 0; i < s->idx_to_atom_count; i++) {
    8004c978:	2405                	addiw	s0,s0,1
    8004c97a:	47b6                	lw	a5,76(sp)
    8004c97c:	0004049b          	sext.w	s1,s0
    8004c980:	fcf4e4e3          	bltu	s1,a5,8004c948 <JS_ReadObject+0xc8>
JS_ReadObject():
quickjs-nuttx/quickjs.c:36633
        obj = JS_ReadObjectRec(s);
    8004c984:	1028                	addi	a0,sp,40
    8004c986:	e99fe0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004c98a:	842e                	mv	s0,a1
    8004c98c:	e42a                	sd	a0,8(sp)
    8004c98e:	e82e                	sd	a1,16(sp)
    8004c990:	bf95                	j	8004c904 <JS_ReadObject+0x84>
bc_reader_free():
quickjs-nuttx/quickjs.c:36601
            JS_FreeAtom(s->ctx, s->idx_to_atom[i]);
    8004c992:	00249793          	slli	a5,s1,0x2
    8004c996:	95be                	add	a1,a1,a5
    8004c998:	418c                	lw	a1,0(a1)
quickjs-nuttx/quickjs.c:36600
        for(i = 0; i < s->idx_to_atom_count; i++) {
    8004c99a:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:36601
            JS_FreeAtom(s->ctx, s->idx_to_atom[i]);
    8004c99c:	facbe0ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs.c:36600
        for(i = 0; i < s->idx_to_atom_count; i++) {
    8004c9a0:	47b6                	lw	a5,76(sp)
quickjs-nuttx/quickjs.c:36601
            JS_FreeAtom(s->ctx, s->idx_to_atom[i]);
    8004c9a2:	7522                	ld	a0,40(sp)
    8004c9a4:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:36600
        for(i = 0; i < s->idx_to_atom_count; i++) {
    8004c9a6:	fef4e6e3          	bltu	s1,a5,8004c992 <JS_ReadObject+0x112>
quickjs-nuttx/quickjs.c:36603
        js_free(s->ctx, s->idx_to_atom);
    8004c9aa:	e4cbe0ef          	jal	ra,8000aff6 <js_free>
    8004c9ae:	bfb1                	j	8004c90a <JS_ReadObject+0x8a>

000000008004c9b0 <JS_DetachArrayBuffer>:
JS_DetachArrayBuffer():
quickjs-nuttx/quickjs.c:52769
{
    8004c9b0:	7179                	addi	sp,sp,-48
    8004c9b2:	87b2                	mv	a5,a2
    8004c9b4:	ec26                	sd	s1,24(sp)
    8004c9b6:	e02e                	sd	a1,0(sp)
    8004c9b8:	84aa                	mv	s1,a0
    8004c9ba:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:52770
    JSArrayBuffer *abuf = JS_GetOpaque(obj, JS_CLASS_ARRAY_BUFFER);
    8004c9bc:	852e                	mv	a0,a1
    8004c9be:	464d                	li	a2,19
    8004c9c0:	85be                	mv	a1,a5
quickjs-nuttx/quickjs.c:52769
{
    8004c9c2:	f406                	sd	ra,40(sp)
    8004c9c4:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs.c:52770
    JSArrayBuffer *abuf = JS_GetOpaque(obj, JS_CLASS_ARRAY_BUFFER);
    8004c9c6:	ccfc10ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs.c:52773
    if (!abuf || abuf->detached)
    8004c9ca:	c905                	beqz	a0,8004c9fa <JS_DetachArrayBuffer+0x4a>
quickjs-nuttx/quickjs.c:52773 (discriminator 1)
    8004c9cc:	00454783          	lbu	a5,4(a0)
    8004c9d0:	842a                	mv	s0,a0
    8004c9d2:	e785                	bnez	a5,8004c9fa <JS_DetachArrayBuffer+0x4a>
quickjs-nuttx/quickjs.c:52775
    if (abuf->free_func)
    8004c9d4:	751c                	ld	a5,40(a0)
    8004c9d6:	c789                	beqz	a5,8004c9e0 <JS_DetachArrayBuffer+0x30>
quickjs-nuttx/quickjs.c:52776
        abuf->free_func(ctx->rt, abuf->opaque, abuf->data);
    8004c9d8:	6510                	ld	a2,8(a0)
    8004c9da:	710c                	ld	a1,32(a0)
    8004c9dc:	6c88                	ld	a0,24(s1)
    8004c9de:	9782                	jalr	a5
quickjs-nuttx/quickjs.c:52779
    abuf->detached = TRUE;
    8004c9e0:	4785                	li	a5,1
    8004c9e2:	00f40223          	sb	a5,4(s0)
quickjs-nuttx/quickjs.c:52777
    abuf->data = NULL;
    8004c9e6:	00043423          	sd	zero,8(s0)
quickjs-nuttx/quickjs.c:52781
    list_for_each(el, &abuf->array_list) {
    8004c9ea:	6c1c                	ld	a5,24(s0)
quickjs-nuttx/quickjs.c:52778
    abuf->byte_length = 0;
    8004c9ec:	00042023          	sw	zero,0(s0)
quickjs-nuttx/quickjs.c:52788
        if (p->class_id != JS_CLASS_DATAVIEW) {
    8004c9f0:	02000693          	li	a3,32
quickjs-nuttx/quickjs.c:52781
    list_for_each(el, &abuf->array_list) {
    8004c9f4:	0441                	addi	s0,s0,16
quickjs-nuttx/quickjs.c:52781 (discriminator 1)
    8004c9f6:	00879763          	bne	a5,s0,8004ca04 <JS_DetachArrayBuffer+0x54>
quickjs-nuttx/quickjs.c:52793
}
    8004c9fa:	70a2                	ld	ra,40(sp)
    8004c9fc:	7402                	ld	s0,32(sp)
    8004c9fe:	64e2                	ld	s1,24(sp)
    8004ca00:	6145                	addi	sp,sp,48
    8004ca02:	8082                	ret
quickjs-nuttx/quickjs.c:52786
        p = ta->obj;
    8004ca04:	6b98                	ld	a4,16(a5)
quickjs-nuttx/quickjs.c:52788
        if (p->class_id != JS_CLASS_DATAVIEW) {
    8004ca06:	00675603          	lhu	a2,6(a4)
    8004ca0a:	00d60663          	beq	a2,a3,8004ca16 <JS_DetachArrayBuffer+0x66>
quickjs-nuttx/quickjs.c:52789
            p->u.array.count = 0;
    8004ca0e:	04072023          	sw	zero,64(a4)
quickjs-nuttx/quickjs.c:52790
            p->u.array.u.ptr = NULL;
    8004ca12:	02073c23          	sd	zero,56(a4)
quickjs-nuttx/quickjs.c:52781 (discriminator 2)
    list_for_each(el, &abuf->array_list) {
    8004ca16:	679c                	ld	a5,8(a5)
    8004ca18:	bff9                	j	8004c9f6 <JS_DetachArrayBuffer+0x46>

000000008004ca1a <JS_GetArrayBuffer>:
JS_GetArrayBuffer():
quickjs-nuttx/quickjs.c:52814
{
    8004ca1a:	1101                	addi	sp,sp,-32
    8004ca1c:	e822                	sd	s0,16(sp)
    8004ca1e:	e436                	sd	a3,8(sp)
    8004ca20:	ec06                	sd	ra,24(sp)
    8004ca22:	e032                	sd	a2,0(sp)
js_get_array_buffer():
quickjs-nuttx/quickjs.c:52799
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8004ca24:	2681                	sext.w	a3,a3
    8004ca26:	57fd                	li	a5,-1
JS_GetArrayBuffer():
quickjs-nuttx/quickjs.c:52814
{
    8004ca28:	872a                	mv	a4,a0
    8004ca2a:	842e                	mv	s0,a1
js_get_array_buffer():
quickjs-nuttx/quickjs.c:52799
    if (JS_VALUE_GET_TAG(obj) != JS_TAG_OBJECT)
    8004ca2c:	00f69a63          	bne	a3,a5,8004ca40 <JS_GetArrayBuffer+0x26>
quickjs-nuttx/quickjs.c:52802
    if (p->class_id != JS_CLASS_ARRAY_BUFFER &&
    8004ca30:	00665783          	lhu	a5,6(a2)
    8004ca34:	4685                	li	a3,1
    8004ca36:	37b5                	addiw	a5,a5,-19
    8004ca38:	17c2                	slli	a5,a5,0x30
    8004ca3a:	93c1                	srli	a5,a5,0x30
    8004ca3c:	00f6fa63          	bgeu	a3,a5,8004ca50 <JS_GetArrayBuffer+0x36>
quickjs-nuttx/quickjs.c:52805
        JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_ARRAY_BUFFER);
    8004ca40:	45cd                	li	a1,19
    8004ca42:	853a                	mv	a0,a4
    8004ca44:	d83cb0ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
JS_GetArrayBuffer():
quickjs-nuttx/quickjs.c:52825
    *psize = 0;
    8004ca48:	00043023          	sd	zero,0(s0)
quickjs-nuttx/quickjs.c:52826
    return NULL;
    8004ca4c:	4501                	li	a0,0
    8004ca4e:	a821                	j	8004ca66 <JS_GetArrayBuffer+0x4c>
js_get_array_buffer():
quickjs-nuttx/quickjs.c:52808
    return p->u.array_buffer;
    8004ca50:	7a1c                	ld	a5,48(a2)
JS_GetArrayBuffer():
quickjs-nuttx/quickjs.c:52816
    if (!abuf)
    8004ca52:	dbfd                	beqz	a5,8004ca48 <JS_GetArrayBuffer+0x2e>
quickjs-nuttx/quickjs.c:52818
    if (abuf->detached) {
    8004ca54:	0047c703          	lbu	a4,4(a5)
    8004ca58:	c701                	beqz	a4,8004ca60 <JS_GetArrayBuffer+0x46>
quickjs-nuttx/quickjs.c:52819
        JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    8004ca5a:	d2acc0ef          	jal	ra,80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:52820
        goto fail;
    8004ca5e:	b7ed                	j	8004ca48 <JS_GetArrayBuffer+0x2e>
quickjs-nuttx/quickjs.c:52822
    *psize = abuf->byte_length;
    8004ca60:	4398                	lw	a4,0(a5)
    8004ca62:	e198                	sd	a4,0(a1)
quickjs-nuttx/quickjs.c:52823
    return abuf->data;
    8004ca64:	6788                	ld	a0,8(a5)
quickjs-nuttx/quickjs.c:52827
}
    8004ca66:	60e2                	ld	ra,24(sp)
    8004ca68:	6442                	ld	s0,16(sp)
    8004ca6a:	6105                	addi	sp,sp,32
    8004ca6c:	8082                	ret

000000008004ca6e <JS_GetTypedArrayBuffer>:
JS_GetTypedArrayBuffer():
quickjs-nuttx/quickjs.c:53036
{
    8004ca6e:	715d                	addi	sp,sp,-80
    8004ca70:	f84a                	sd	s2,48(sp)
    8004ca72:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:53039
    p = get_typed_array(ctx, obj, FALSE);
    8004ca74:	4681                	li	a3,0
quickjs-nuttx/quickjs.c:53036
{
    8004ca76:	e0a2                	sd	s0,64(sp)
    8004ca78:	fc26                	sd	s1,56(sp)
    8004ca7a:	f44e                	sd	s3,40(sp)
    8004ca7c:	e486                	sd	ra,72(sp)
    8004ca7e:	89aa                	mv	s3,a0
    8004ca80:	e02e                	sd	a1,0(sp)
    8004ca82:	e432                	sd	a2,8(sp)
    8004ca84:	84ba                	mv	s1,a4
    8004ca86:	843e                	mv	s0,a5
quickjs-nuttx/quickjs.c:53039
    p = get_typed_array(ctx, obj, FALSE);
    8004ca88:	98fcc0ef          	jal	ra,80019416 <get_typed_array>
quickjs-nuttx/quickjs.c:53040
    if (!p)
    8004ca8c:	ed09                	bnez	a0,8004caa6 <JS_GetTypedArrayBuffer+0x38>
quickjs-nuttx/quickjs.c:53041
        return JS_EXCEPTION;
    8004ca8e:	e802                	sd	zero,16(sp)
    8004ca90:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:53053
}
    8004ca92:	60a6                	ld	ra,72(sp)
    8004ca94:	6406                	ld	s0,64(sp)
    8004ca96:	ec3e                	sd	a5,24(sp)
    8004ca98:	6542                	ld	a0,16(sp)
    8004ca9a:	65e2                	ld	a1,24(sp)
    8004ca9c:	74e2                	ld	s1,56(sp)
    8004ca9e:	7942                	ld	s2,48(sp)
    8004caa0:	79a2                	ld	s3,40(sp)
    8004caa2:	6161                	addi	sp,sp,80
    8004caa4:	8082                	ret
typed_array_is_detached():
quickjs-nuttx/quickjs.c:52938
    JSTypedArray *ta = p->u.typed_array;
    8004caa6:	7910                	ld	a2,48(a0)
quickjs-nuttx/quickjs.c:52939
    JSArrayBuffer *abuf = ta->buffer->u.array_buffer;
    8004caa8:	6e1c                	ld	a5,24(a2)
quickjs-nuttx/quickjs.c:52942
    return abuf->detached;
    8004caaa:	7b9c                	ld	a5,48(a5)
JS_GetTypedArrayBuffer():
quickjs-nuttx/quickjs.c:53042
    if (typed_array_is_detached(ctx, p))
    8004caac:	0047c783          	lbu	a5,4(a5)
    8004cab0:	cb91                	beqz	a5,8004cac4 <JS_GetTypedArrayBuffer+0x56>
quickjs-nuttx/quickjs.c:53053
}
    8004cab2:	6406                	ld	s0,64(sp)
    8004cab4:	60a6                	ld	ra,72(sp)
    8004cab6:	74e2                	ld	s1,56(sp)
    8004cab8:	7942                	ld	s2,48(sp)
quickjs-nuttx/quickjs.c:53043
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    8004caba:	854e                	mv	a0,s3
quickjs-nuttx/quickjs.c:53053
}
    8004cabc:	79a2                	ld	s3,40(sp)
    8004cabe:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:53043
        return JS_ThrowTypeErrorDetachedArrayBuffer(ctx);
    8004cac0:	cc4cc06f          	j	80018f84 <JS_ThrowTypeErrorDetachedArrayBuffer>
quickjs-nuttx/quickjs.c:53045
    if (pbyte_offset)
    8004cac4:	00090663          	beqz	s2,8004cad0 <JS_GetTypedArrayBuffer+0x62>
quickjs-nuttx/quickjs.c:53046
        *pbyte_offset = ta->offset;
    8004cac8:	02066783          	lwu	a5,32(a2)
    8004cacc:	00f93023          	sd	a5,0(s2)
quickjs-nuttx/quickjs.c:53047
    if (pbyte_length)
    8004cad0:	c481                	beqz	s1,8004cad8 <JS_GetTypedArrayBuffer+0x6a>
quickjs-nuttx/quickjs.c:53048
        *pbyte_length = ta->length;
    8004cad2:	02466783          	lwu	a5,36(a2)
    8004cad6:	e09c                	sd	a5,0(s1)
quickjs-nuttx/quickjs.c:53049
    if (pbytes_per_element) {
    8004cad8:	c005                	beqz	s0,8004caf8 <JS_GetTypedArrayBuffer+0x8a>
quickjs-nuttx/quickjs.c:53050
        *pbytes_per_element = 1 << typed_array_size_log2(p->class_id);
    8004cada:	00655783          	lhu	a5,6(a0)
    8004cade:	feb7871b          	addiw	a4,a5,-21
    8004cae2:	00028797          	auipc	a5,0x28
    8004cae6:	6fe78793          	addi	a5,a5,1790 # 800751e0 <typed_array_size_log2>
    8004caea:	97ba                	add	a5,a5,a4
    8004caec:	0007c703          	lbu	a4,0(a5)
    8004caf0:	4785                	li	a5,1
    8004caf2:	00e797bb          	sllw	a5,a5,a4
    8004caf6:	e01c                	sd	a5,0(s0)
quickjs-nuttx/quickjs.c:53052
    return JS_DupValue(ctx, JS_MKPTR(JS_TAG_OBJECT, ta->buffer));
    8004caf8:	6e1c                	ld	a5,24(a2)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
    8004cafa:	4398                	lw	a4,0(a5)
    8004cafc:	e83e                	sd	a5,16(sp)
    8004cafe:	2705                	addiw	a4,a4,1
    8004cb00:	c398                	sw	a4,0(a5)
JS_GetTypedArrayBuffer():
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    8004cb02:	57fd                	li	a5,-1
    8004cb04:	b779                	j	8004ca92 <JS_GetTypedArrayBuffer+0x24>

000000008004cb06 <JS_AddIntrinsicAtomics>:
JS_AddIntrinsicAtomics():
quickjs-nuttx/quickjs.c:55479
};

void JS_AddIntrinsicAtomics(JSContext *ctx)
{
    /* add Atomics as autoinit object */
    JS_SetPropertyFunctionList(ctx, ctx->global_obj, js_atomics_obj, countof(js_atomics_obj));
    8004cb06:	16853583          	ld	a1,360(a0)
    8004cb0a:	17053603          	ld	a2,368(a0)
    8004cb0e:	4705                	li	a4,1
    8004cb10:	00024697          	auipc	a3,0x24
    8004cb14:	dd868693          	addi	a3,a3,-552 # 800708e8 <js_atomics_obj>
    8004cb18:	c04f206f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008004cb1c <JS_AddIntrinsicTypedArrays>:
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55485
}

#endif /* CONFIG_ATOMICS */

void JS_AddIntrinsicTypedArrays(JSContext *ctx)
{
    8004cb1c:	710d                	addi	sp,sp,-352
    8004cb1e:	ee86                	sd	ra,344(sp)
    8004cb20:	eaa2                	sd	s0,336(sp)
    8004cb22:	e6a6                	sd	s1,328(sp)
    8004cb24:	842a                	mv	s0,a0
    8004cb26:	fa52                	sd	s4,304(sp)
    8004cb28:	f656                	sd	s5,296(sp)
    8004cb2a:	f25a                	sd	s6,288(sp)
    8004cb2c:	ee5e                	sd	s7,280(sp)
    8004cb2e:	ea62                	sd	s8,272(sp)
    8004cb30:	e2ca                	sd	s2,320(sp)
    8004cb32:	fe4e                	sd	s3,312(sp)
    8004cb34:	e666                	sd	s9,264(sp)
quickjs-nuttx/quickjs.c:55490
    JSValue typed_array_base_proto, typed_array_base_func;
    JSValueConst array_buffer_func, shared_array_buffer_func;
    int i;

    ctx->class_proto[JS_CLASS_ARRAY_BUFFER] = JS_NewObject(ctx);
    8004cb36:	ceecf0ef          	jal	ra,8001c024 <JS_NewObject>
    8004cb3a:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:55491
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ARRAY_BUFFER],
    8004cb3c:	470d                	li	a4,3
    8004cb3e:	00023697          	auipc	a3,0x23
    8004cb42:	b6a68693          	addi	a3,a3,-1174 # 8006f6a8 <js_array_buffer_proto_funcs>
quickjs-nuttx/quickjs.c:55490
    ctx->class_proto[JS_CLASS_ARRAY_BUFFER] = JS_NewObject(ctx);
    8004cb46:	12a7b823          	sd	a0,304(a5)
    8004cb4a:	12b7bc23          	sd	a1,312(a5)
quickjs-nuttx/quickjs.c:55491
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ARRAY_BUFFER],
    8004cb4e:	603c                	ld	a5,64(s0)
    8004cb50:	8522                	mv	a0,s0
    8004cb52:	00028b97          	auipc	s7,0x28
    8004cb56:	68eb8b93          	addi	s7,s7,1678 # 800751e0 <typed_array_size_log2>
    8004cb5a:	1307b583          	ld	a1,304(a5)
    8004cb5e:	1387b603          	ld	a2,312(a5)
quickjs-nuttx/quickjs.c:55530
    typed_array_base_func = JS_NewCFunction(ctx, js_typed_array_base_constructor,
                                            "TypedArray", 0);
    JS_SetPropertyFunctionList(ctx, typed_array_base_func,
                               js_typed_array_base_funcs,
                               countof(js_typed_array_base_funcs));
    JS_SetConstructor(ctx, typed_array_base_func, typed_array_base_proto);
    8004cb62:	44d5                	li	s1,21
quickjs-nuttx/quickjs.c:55538
        JSValue func_obj;
        char buf[ATOM_GET_STR_BUF_SIZE];
        const char *name;

        ctx->class_proto[i] = JS_NewObjectProto(ctx, typed_array_base_proto);
        JS_DefinePropertyValueStr(ctx, ctx->class_proto[i],
    8004cb64:	4b05                	li	s6,1
quickjs-nuttx/quickjs.c:55491
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ARRAY_BUFFER],
    8004cb66:	bb6f20ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:55495
    array_buffer_func = JS_NewGlobalCConstructorOnly(ctx, "ArrayBuffer",
    8004cb6a:	603c                	ld	a5,64(s0)
    8004cb6c:	fffd8617          	auipc	a2,0xfffd8
    8004cb70:	c9660613          	addi	a2,a2,-874 # 80024802 <js_array_buffer_constructor>
    8004cb74:	00021597          	auipc	a1,0x21
    8004cb78:	e6c58593          	addi	a1,a1,-404 # 8006d9e0 <qjsc_repl+0x8430>
    8004cb7c:	1307b683          	ld	a3,304(a5)
    8004cb80:	1387b703          	ld	a4,312(a5)
    8004cb84:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:55538
        JS_DefinePropertyValueStr(ctx, ctx->class_proto[i],
    8004cb86:	00021a17          	auipc	s4,0x21
    8004cb8a:	e82a0a13          	addi	s4,s4,-382 # 8006da08 <qjsc_repl+0x8458>
quickjs-nuttx/quickjs.c:55495
    array_buffer_func = JS_NewGlobalCConstructorOnly(ctx, "ArrayBuffer",
    8004cb8e:	843e40ef          	jal	ra,800313d0 <JS_NewGlobalCConstructorOnly.constprop.0>
    8004cb92:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:55498
    JS_SetPropertyFunctionList(ctx, array_buffer_func,
    8004cb94:	4709                	li	a4,2
    8004cb96:	00023697          	auipc	a3,0x23
    8004cb9a:	ad268693          	addi	a3,a3,-1326 # 8006f668 <js_array_buffer_funcs>
quickjs-nuttx/quickjs.c:55495
    array_buffer_func = JS_NewGlobalCConstructorOnly(ctx, "ArrayBuffer",
    8004cb9e:	f02a                	sd	a0,32(sp)
    8004cba0:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:55498
    JS_SetPropertyFunctionList(ctx, array_buffer_func,
    8004cba2:	85aa                	mv	a1,a0
    8004cba4:	8522                	mv	a0,s0
    8004cba6:	b76f20ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:55502
    ctx->class_proto[JS_CLASS_SHARED_ARRAY_BUFFER] = JS_NewObject(ctx);
    8004cbaa:	8522                	mv	a0,s0
    8004cbac:	c78cf0ef          	jal	ra,8001c024 <JS_NewObject>
    8004cbb0:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:55503
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SHARED_ARRAY_BUFFER],
    8004cbb2:	470d                	li	a4,3
    8004cbb4:	00027697          	auipc	a3,0x27
    8004cbb8:	df468693          	addi	a3,a3,-524 # 800739a8 <js_shared_array_buffer_proto_funcs>
quickjs-nuttx/quickjs.c:55502
    ctx->class_proto[JS_CLASS_SHARED_ARRAY_BUFFER] = JS_NewObject(ctx);
    8004cbbc:	14a7b023          	sd	a0,320(a5)
    8004cbc0:	14b7b423          	sd	a1,328(a5)
quickjs-nuttx/quickjs.c:55503
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SHARED_ARRAY_BUFFER],
    8004cbc4:	603c                	ld	a5,64(s0)
    8004cbc6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:55544
                                  "BYTES_PER_ELEMENT",
                                  JS_NewInt32(ctx, 1 << typed_array_size_log2(i)),
                                  0);
        name = JS_AtomGetStr(ctx, buf, sizeof(buf),
                             JS_ATOM_Uint8ClampedArray + i - JS_CLASS_UINT8C_ARRAY);
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_typed_array_constructor,
    8004cbc8:	ffff8a97          	auipc	s5,0xffff8
    8004cbcc:	c06a8a93          	addi	s5,s5,-1018 # 800447ce <js_typed_array_constructor>
quickjs-nuttx/quickjs.c:55503
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SHARED_ARRAY_BUFFER],
    8004cbd0:	1407b583          	ld	a1,320(a5)
    8004cbd4:	1487b603          	ld	a2,328(a5)
quickjs-nuttx/quickjs.c:55532
    for(i = JS_CLASS_UINT8C_ARRAY; i < JS_CLASS_UINT8C_ARRAY + JS_TYPED_ARRAY_COUNT; i++) {
    8004cbd8:	02000c13          	li	s8,32
quickjs-nuttx/quickjs.c:55503
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SHARED_ARRAY_BUFFER],
    8004cbdc:	b40f20ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:55507
    shared_array_buffer_func = JS_NewGlobalCConstructorOnly(ctx, "SharedArrayBuffer",
    8004cbe0:	603c                	ld	a5,64(s0)
    8004cbe2:	fffd8617          	auipc	a2,0xfffd8
    8004cbe6:	be260613          	addi	a2,a2,-1054 # 800247c4 <js_shared_array_buffer_constructor>
    8004cbea:	00021597          	auipc	a1,0x21
    8004cbee:	e0658593          	addi	a1,a1,-506 # 8006d9f0 <qjsc_repl+0x8440>
    8004cbf2:	1407b683          	ld	a3,320(a5)
    8004cbf6:	1487b703          	ld	a4,328(a5)
    8004cbfa:	8522                	mv	a0,s0
    8004cbfc:	fd4e40ef          	jal	ra,800313d0 <JS_NewGlobalCConstructorOnly.constprop.0>
    8004cc00:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:55510
    JS_SetPropertyFunctionList(ctx, shared_array_buffer_func,
    8004cc02:	4705                	li	a4,1
    8004cc04:	00027697          	auipc	a3,0x27
    8004cc08:	d8468693          	addi	a3,a3,-636 # 80073988 <js_shared_array_buffer_funcs>
quickjs-nuttx/quickjs.c:55507
    shared_array_buffer_func = JS_NewGlobalCConstructorOnly(ctx, "SharedArrayBuffer",
    8004cc0c:	f82a                	sd	a0,48(sp)
    8004cc0e:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:55510
    JS_SetPropertyFunctionList(ctx, shared_array_buffer_func,
    8004cc10:	85aa                	mv	a1,a0
    8004cc12:	8522                	mv	a0,s0
    8004cc14:	b08f20ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:55514
    typed_array_base_proto = JS_NewObject(ctx);
    8004cc18:	8522                	mv	a0,s0
    8004cc1a:	c0acf0ef          	jal	ra,8001c024 <JS_NewObject>
    8004cc1e:	862e                	mv	a2,a1
    8004cc20:	e02a                	sd	a0,0(sp)
    8004cc22:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:55515
    JS_SetPropertyFunctionList(ctx, typed_array_base_proto,
    8004cc24:	02400713          	li	a4,36
    8004cc28:	85aa                	mv	a1,a0
    8004cc2a:	00028697          	auipc	a3,0x28
    8004cc2e:	afe68693          	addi	a3,a3,-1282 # 80074728 <js_typed_array_base_proto_funcs>
    8004cc32:	8522                	mv	a0,s0
    8004cc34:	ae8f20ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:55520
    JSValue obj = JS_GetProperty(ctx, ctx->class_proto[JS_CLASS_ARRAY], JS_ATOM_toString);
    8004cc38:	603c                	ld	a5,64(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8004cc3a:	4801                	li	a6,0
    8004cc3c:	03800693          	li	a3,56
    8004cc40:	7398                	ld	a4,32(a5)
    8004cc42:	8522                	mv	a0,s0
    8004cc44:	e1ba                	sd	a4,192(sp)
    8004cc46:	779c                	ld	a5,40(a5)
    8004cc48:	85ba                	mv	a1,a4
    8004cc4a:	863e                	mv	a2,a5
    8004cc4c:	e5be                	sd	a5,200(sp)
    8004cc4e:	e5dc90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8004cc52:	87ae                	mv	a5,a1
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55522
    JS_DefinePropertyValue(ctx, typed_array_base_proto, JS_ATOM_toString, obj,
    8004cc54:	6622                	ld	a2,8(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004cc56:	e52e                	sd	a1,136(sp)
    8004cc58:	e4ae                	sd	a1,72(sp)
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55522
    8004cc5a:	6582                	ld	a1,0(sp)
    8004cc5c:	480d                	li	a6,3
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004cc5e:	872a                	mv	a4,a0
    8004cc60:	e12a                	sd	a0,128(sp)
    8004cc62:	e0aa                	sd	a0,64(sp)
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55522
    8004cc64:	03800693          	li	a3,56
    8004cc68:	8522                	mv	a0,s0
    8004cc6a:	dc2cb0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    return JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_generic, 0);
    8004cc6e:	4781                	li	a5,0
    8004cc70:	4701                	li	a4,0
    8004cc72:	4681                	li	a3,0
    8004cc74:	0001e617          	auipc	a2,0x1e
    8004cc78:	ff460613          	addi	a2,a2,-12 # 8006ac68 <qjsc_repl+0x56b8>
    8004cc7c:	fffcd597          	auipc	a1,0xfffcd
    8004cc80:	a9058593          	addi	a1,a1,-1392 # 8001970c <js_typed_array_base_constructor>
    8004cc84:	8522                	mv	a0,s0
    8004cc86:	e7de30ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8004cc8a:	862e                	mv	a2,a1
    8004cc8c:	f92a                	sd	a0,176(sp)
    8004cc8e:	fd2e                	sd	a1,184(sp)
    8004cc90:	e82a                	sd	a0,16(sp)
    8004cc92:	ec2e                	sd	a1,24(sp)
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55527
    JS_SetPropertyFunctionList(ctx, typed_array_base_func,
    8004cc94:	470d                	li	a4,3
    8004cc96:	85aa                	mv	a1,a0
    8004cc98:	00028697          	auipc	a3,0x28
    8004cc9c:	a3068693          	addi	a3,a3,-1488 # 800746c8 <js_typed_array_base_funcs>
    8004cca0:	8522                	mv	a0,s0
    8004cca2:	a7af20ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:55530
    JS_SetConstructor(ctx, typed_array_base_func, typed_array_base_proto);
    8004cca6:	6682                	ld	a3,0(sp)
    8004cca8:	6722                	ld	a4,8(sp)
    8004ccaa:	65c2                	ld	a1,16(sp)
    8004ccac:	6662                	ld	a2,24(sp)
    8004ccae:	8522                	mv	a0,s0
    8004ccb0:	e88e40ef          	jal	ra,80031338 <JS_SetConstructor>
quickjs-nuttx/quickjs.c:55537 (discriminator 3)
        ctx->class_proto[i] = JS_NewObjectProto(ctx, typed_array_base_proto);
    8004ccb4:	6622                	ld	a2,8(sp)
    8004ccb6:	6582                	ld	a1,0(sp)
    8004ccb8:	8522                	mv	a0,s0
    8004ccba:	00449c93          	slli	s9,s1,0x4
    8004ccbe:	b0ccf0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004ccc2:	603c                	ld	a5,64(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515 (discriminator 3)
    return JS_MKVAL(JS_TAG_INT, val);
    8004ccc4:	f102                	sd	zero,160(sp)
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55538 (discriminator 3)
        JS_DefinePropertyValueStr(ctx, ctx->class_proto[i],
    8004ccc6:	4801                	li	a6,0
quickjs-nuttx/quickjs.c:55537 (discriminator 3)
        ctx->class_proto[i] = JS_NewObjectProto(ctx, typed_array_base_proto);
    8004ccc8:	97e6                	add	a5,a5,s9
    8004ccca:	e388                	sd	a0,0(a5)
    8004cccc:	e78c                	sd	a1,8(a5)
quickjs-nuttx/quickjs.c:55540 (discriminator 3)
                                  JS_NewInt32(ctx, 1 << typed_array_size_log2(i)),
    8004ccce:	000bc903          	lbu	s2,0(s7)
quickjs-nuttx/quickjs.c:55538 (discriminator 3)
        JS_DefinePropertyValueStr(ctx, ctx->class_proto[i],
    8004ccd2:	6030                	ld	a2,64(s0)
    8004ccd4:	4781                	li	a5,0
    8004ccd6:	012b193b          	sllw	s2,s6,s2
    8004ccda:	9666                	add	a2,a2,s9
    8004ccdc:	d14a                	sw	s2,160(sp)
    8004ccde:	770a                	ld	a4,160(sp)
    8004cce0:	620c                	ld	a1,0(a2)
    8004cce2:	6610                	ld	a2,8(a2)
    8004cce4:	86d2                	mv	a3,s4
    8004cce6:	8522                	mv	a0,s0
    8004cce8:	f0ba                	sd	a4,96(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515 (discriminator 3)
    8004ccea:	f502                	sd	zero,168(sp)
    8004ccec:	f482                	sd	zero,104(sp)
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55538 (discriminator 3)
    8004ccee:	b86e40ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs.c:55542 (discriminator 3)
        name = JS_AtomGetStr(ctx, buf, sizeof(buf),
    8004ccf2:	0934861b          	addiw	a2,s1,147
    8004ccf6:	018c                	addi	a1,sp,192
    8004ccf8:	8522                	mv	a0,s0
    8004ccfa:	f1cbd0ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
quickjs-nuttx/quickjs.c:55544 (discriminator 3)
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_typed_array_constructor,
    8004ccfe:	6842                	ld	a6,16(sp)
    8004cd00:	68e2                	ld	a7,24(sp)
    8004cd02:	0004879b          	sext.w	a5,s1
    8004cd06:	862a                	mv	a2,a0
quickjs-nuttx/quickjs.c:55542 (discriminator 3)
        name = JS_AtomGetStr(ctx, buf, sizeof(buf),
    8004cd08:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:55544 (discriminator 3)
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_typed_array_constructor,
    8004cd0a:	470d                	li	a4,3
    8004cd0c:	468d                	li	a3,3
    8004cd0e:	85d6                	mv	a1,s5
    8004cd10:	8522                	mv	a0,s0
    8004cd12:	d2fe30ef          	jal	ra,80030a40 <JS_NewCFunction3>
quickjs-nuttx/quickjs.c:55547 (discriminator 3)
                                    name, 3, JS_CFUNC_constructor_magic, i,
                                    typed_array_base_func);
        JS_NewGlobalCConstructor2(ctx, func_obj, name, ctx->class_proto[i]);
    8004cd16:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:55544 (discriminator 3)
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_typed_array_constructor,
    8004cd18:	862e                	mv	a2,a1
    8004cd1a:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:55547 (discriminator 3)
        JS_NewGlobalCConstructor2(ctx, func_obj, name, ctx->class_proto[i]);
    8004cd1c:	97e6                	add	a5,a5,s9
    8004cd1e:	6398                	ld	a4,0(a5)
    8004cd20:	679c                	ld	a5,8(a5)
quickjs-nuttx/quickjs.c:55544 (discriminator 3)
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_typed_array_constructor,
    8004cd22:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:55547 (discriminator 3)
        JS_NewGlobalCConstructor2(ctx, func_obj, name, ctx->class_proto[i]);
    8004cd24:	86ce                	mv	a3,s3
    8004cd26:	85aa                	mv	a1,a0
    8004cd28:	8522                	mv	a0,s0
    8004cd2a:	e1ae40ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515 (discriminator 3)
    8004cd2e:	e902                	sd	zero,144(sp)
    8004cd30:	c94a                	sw	s2,144(sp)
    8004cd32:	674a                	ld	a4,144(sp)
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55548 (discriminator 3)
        JS_DefinePropertyValueStr(ctx, func_obj,
    8004cd34:	65c6                	ld	a1,80(sp)
    8004cd36:	6666                	ld	a2,88(sp)
    8004cd38:	4801                	li	a6,0
    8004cd3a:	4781                	li	a5,0
    8004cd3c:	86d2                	mv	a3,s4
    8004cd3e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:55532 (discriminator 3)
    for(i = JS_CLASS_UINT8C_ARRAY; i < JS_CLASS_UINT8C_ARRAY + JS_TYPED_ARRAY_COUNT; i++) {
    8004cd40:	0485                	addi	s1,s1,1
JS_NewInt32():
quickjs-nuttx/quickjs.h:515 (discriminator 3)
    8004cd42:	ed02                	sd	zero,152(sp)
    8004cd44:	f8ba                	sd	a4,112(sp)
    8004cd46:	fc82                	sd	zero,120(sp)
JS_AddIntrinsicTypedArrays():
quickjs-nuttx/quickjs.c:55532 (discriminator 3)
    8004cd48:	0b85                	addi	s7,s7,1
quickjs-nuttx/quickjs.c:55548 (discriminator 3)
        JS_DefinePropertyValueStr(ctx, func_obj,
    8004cd4a:	b2ae40ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs.c:55532 (discriminator 3)
    for(i = JS_CLASS_UINT8C_ARRAY; i < JS_CLASS_UINT8C_ARRAY + JS_TYPED_ARRAY_COUNT; i++) {
    8004cd4e:	f78493e3          	bne	s1,s8,8004ccb4 <JS_AddIntrinsicTypedArrays+0x198>
quickjs-nuttx/quickjs.c:55553
                                  "BYTES_PER_ELEMENT",
                                  JS_NewInt32(ctx, 1 << typed_array_size_log2(i)),
                                  0);
    }
    JS_FreeValue(ctx, typed_array_base_proto);
    8004cd52:	6582                	ld	a1,0(sp)
    8004cd54:	6622                	ld	a2,8(sp)
    8004cd56:	8522                	mv	a0,s0
    8004cd58:	a47be0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:55554
    JS_FreeValue(ctx, typed_array_base_func);
    8004cd5c:	6662                	ld	a2,24(sp)
    8004cd5e:	65c2                	ld	a1,16(sp)
    8004cd60:	8522                	mv	a0,s0
    8004cd62:	a3dbe0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:55557

    /* DataView */
    ctx->class_proto[JS_CLASS_DATAVIEW] = JS_NewObject(ctx);
    8004cd66:	8522                	mv	a0,s0
    8004cd68:	abccf0ef          	jal	ra,8001c024 <JS_NewObject>
    8004cd6c:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:55558
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_DATAVIEW],
    8004cd6e:	4761                	li	a4,24
    8004cd70:	00024697          	auipc	a3,0x24
    8004cd74:	43068693          	addi	a3,a3,1072 # 800711a0 <js_dataview_proto_funcs>
quickjs-nuttx/quickjs.c:55557
    ctx->class_proto[JS_CLASS_DATAVIEW] = JS_NewObject(ctx);
    8004cd78:	20a7b023          	sd	a0,512(a5)
    8004cd7c:	20b7b423          	sd	a1,520(a5)
quickjs-nuttx/quickjs.c:55558
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_DATAVIEW],
    8004cd80:	603c                	ld	a5,64(s0)
    8004cd82:	8522                	mv	a0,s0
    8004cd84:	2007b583          	ld	a1,512(a5)
    8004cd88:	2087b603          	ld	a2,520(a5)
    8004cd8c:	990f20ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:55561
                               js_dataview_proto_funcs,
                               countof(js_dataview_proto_funcs));
    JS_NewGlobalCConstructorOnly(ctx, "DataView",
    8004cd90:	603c                	ld	a5,64(s0)
    8004cd92:	8522                	mv	a0,s0
    8004cd94:	fffd8617          	auipc	a2,0xfffd8
    8004cd98:	8d260613          	addi	a2,a2,-1838 # 80024666 <js_dataview_constructor>
    8004cd9c:	2007b683          	ld	a3,512(a5)
    8004cda0:	2087b703          	ld	a4,520(a5)
    8004cda4:	0001d597          	auipc	a1,0x1d
    8004cda8:	6dc58593          	addi	a1,a1,1756 # 8006a480 <qjsc_repl+0x4ed0>
    8004cdac:	e24e40ef          	jal	ra,800313d0 <JS_NewGlobalCConstructorOnly.constprop.0>
quickjs-nuttx/quickjs.c:55566
                                 js_dataview_constructor, 1,
                                 ctx->class_proto[JS_CLASS_DATAVIEW]);
    /* Atomics */
#ifdef CONFIG_ATOMICS
    JS_AddIntrinsicAtomics(ctx);
    8004cdb0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:55568
#endif
}
    8004cdb2:	6456                	ld	s0,336(sp)
    8004cdb4:	60f6                	ld	ra,344(sp)
    8004cdb6:	64b6                	ld	s1,328(sp)
    8004cdb8:	6916                	ld	s2,320(sp)
    8004cdba:	79f2                	ld	s3,312(sp)
    8004cdbc:	7a52                	ld	s4,304(sp)
    8004cdbe:	7ab2                	ld	s5,296(sp)
    8004cdc0:	7b12                	ld	s6,288(sp)
    8004cdc2:	6bf2                	ld	s7,280(sp)
    8004cdc4:	6c52                	ld	s8,272(sp)
    8004cdc6:	6cb2                	ld	s9,264(sp)
    8004cdc8:	6135                	addi	sp,sp,352
quickjs-nuttx/quickjs.c:55566
    JS_AddIntrinsicAtomics(ctx);
    8004cdca:	d3dff06f          	j	8004cb06 <JS_AddIntrinsicAtomics>

000000008004cdce <JS_NewContext>:
JS_NewContext():
quickjs-nuttx/quickjs.c:2157
{
    8004cdce:	1141                	addi	sp,sp,-16
    8004cdd0:	e022                	sd	s0,0(sp)
    8004cdd2:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:2160
    ctx = JS_NewContextRaw(rt);
    8004cdd4:	a10f20ef          	jal	ra,8003efe4 <JS_NewContextRaw>
    8004cdd8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:2161
    if (!ctx)
    8004cdda:	c521                	beqz	a0,8004ce22 <JS_NewContext+0x54>
quickjs-nuttx/quickjs.c:2164
    JS_AddIntrinsicBaseObjects(ctx);
    8004cddc:	a7cfe0ef          	jal	ra,8004b058 <JS_AddIntrinsicBaseObjects>
quickjs-nuttx/quickjs.c:2165
    JS_AddIntrinsicDate(ctx);
    8004cde0:	8522                	mv	a0,s0
    8004cde2:	ed1fd0ef          	jal	ra,8004acb2 <JS_AddIntrinsicDate>
JS_AddIntrinsicEval():
quickjs-nuttx/quickjs.c:50229
    ctx->eval_internal = __JS_EvalInternal;
    8004cde6:	ffffd797          	auipc	a5,0xffffd
    8004cdea:	22a78793          	addi	a5,a5,554 # 8004a010 <__JS_EvalInternal>
    8004cdee:	1cf43423          	sd	a5,456(s0)
JS_NewContext():
quickjs-nuttx/quickjs.c:2167
    JS_AddIntrinsicStringNormalize(ctx);
    8004cdf2:	8522                	mv	a0,s0
    8004cdf4:	cdcf20ef          	jal	ra,8003f2d0 <JS_AddIntrinsicStringNormalize>
quickjs-nuttx/quickjs.c:2168
    JS_AddIntrinsicRegExp(ctx);
    8004cdf8:	8522                	mv	a0,s0
    8004cdfa:	ceaf20ef          	jal	ra,8003f2e4 <JS_AddIntrinsicRegExp>
quickjs-nuttx/quickjs.c:2169
    JS_AddIntrinsicJSON(ctx);
    8004cdfe:	8522                	mv	a0,s0
    8004ce00:	d9af20ef          	jal	ra,8003f39a <JS_AddIntrinsicJSON>
quickjs-nuttx/quickjs.c:2170
    JS_AddIntrinsicProxy(ctx);
    8004ce04:	8522                	mv	a0,s0
    8004ce06:	daaf20ef          	jal	ra,8003f3b0 <JS_AddIntrinsicProxy>
quickjs-nuttx/quickjs.c:2171
    JS_AddIntrinsicMapSet(ctx);
    8004ce0a:	8522                	mv	a0,s0
    8004ce0c:	e58f20ef          	jal	ra,8003f464 <JS_AddIntrinsicMapSet>
quickjs-nuttx/quickjs.c:2172
    JS_AddIntrinsicTypedArrays(ctx);
    8004ce10:	8522                	mv	a0,s0
    8004ce12:	d0bff0ef          	jal	ra,8004cb1c <JS_AddIntrinsicTypedArrays>
quickjs-nuttx/quickjs.c:2173
    JS_AddIntrinsicPromise(ctx);
    8004ce16:	8522                	mv	a0,s0
    8004ce18:	c03fd0ef          	jal	ra,8004aa1a <JS_AddIntrinsicPromise>
quickjs-nuttx/quickjs.c:2174
    JS_AddIntrinsicBigInt(ctx);
    8004ce1c:	8522                	mv	a0,s0
    8004ce1e:	fbbfd0ef          	jal	ra,8004add8 <JS_AddIntrinsicBigInt>
quickjs-nuttx/quickjs.c:2176
}
    8004ce22:	60a2                	ld	ra,8(sp)
    8004ce24:	8522                	mv	a0,s0
    8004ce26:	6402                	ld	s0,0(sp)
    8004ce28:	0141                	addi	sp,sp,16
    8004ce2a:	8082                	ret

000000008004ce2c <from_hex>:
from_hex():
quickjs-nuttx/cutils.h:286
    if (c >= '0' && c <= '9')
    8004ce2c:	fd05061b          	addiw	a2,a0,-48
    8004ce30:	46a5                	li	a3,9
quickjs-nuttx/cutils.h:285
{
    8004ce32:	87aa                	mv	a5,a0
quickjs-nuttx/cutils.h:286
    if (c >= '0' && c <= '9')
    8004ce34:	0005071b          	sext.w	a4,a0
    8004ce38:	00c6e463          	bltu	a3,a2,8004ce40 <from_hex+0x14>
quickjs-nuttx/cutils.h:287
        return c - '0';
    8004ce3c:	8532                	mv	a0,a2
    8004ce3e:	8082                	ret
quickjs-nuttx/cutils.h:288
    else if (c >= 'A' && c <= 'F')
    8004ce40:	fbf7069b          	addiw	a3,a4,-65
    8004ce44:	4615                	li	a2,5
    8004ce46:	00d66563          	bltu	a2,a3,8004ce50 <from_hex+0x24>
quickjs-nuttx/cutils.h:289
        return c - 'A' + 10;
    8004ce4a:	fc95051b          	addiw	a0,a0,-55
    8004ce4e:	8082                	ret
quickjs-nuttx/cutils.h:290
    else if (c >= 'a' && c <= 'f')
    8004ce50:	f9f7071b          	addiw	a4,a4,-97
quickjs-nuttx/cutils.h:293
    else
        return -1;
    8004ce54:	557d                	li	a0,-1
quickjs-nuttx/cutils.h:290
    else if (c >= 'a' && c <= 'f')
    8004ce56:	00e66463          	bltu	a2,a4,8004ce5e <from_hex+0x32>
quickjs-nuttx/cutils.h:291
        return c - 'a' + 10;
    8004ce5a:	fa97851b          	addiw	a0,a5,-87
quickjs-nuttx/cutils.h:294
}
    8004ce5e:	8082                	ret

000000008004ce60 <parse_digits>:
parse_digits():
quickjs-nuttx/libregexp.c:396
{
    const uint8_t *p;
    uint64_t v;
    int c;
    
    p = *pp;
    8004ce60:	6118                	ld	a4,0(a0)
quickjs-nuttx/libregexp.c:403
    for(;;) {
        c = *p;
        if (c < '0' || c > '9')
            break;
        v = v * 10 + c - '0';
        if (v >= INT32_MAX) {
    8004ce62:	800006b7          	lui	a3,0x80000
    8004ce66:	ffe6c313          	xori	t1,a3,-2
quickjs-nuttx/libregexp.c:397
    v = 0;
    8004ce6a:	4781                	li	a5,0
quickjs-nuttx/libregexp.c:400
        if (c < '0' || c > '9')
    8004ce6c:	4825                	li	a6,9
quickjs-nuttx/libregexp.c:402
        v = v * 10 + c - '0';
    8004ce6e:	48a9                	li	a7,10
quickjs-nuttx/libregexp.c:405
            if (allow_overflow)
                v = INT32_MAX;
    8004ce70:	fff6c693          	not	a3,a3
quickjs-nuttx/libregexp.c:399
        c = *p;
    8004ce74:	00074603          	lbu	a2,0(a4)
quickjs-nuttx/libregexp.c:400
        if (c < '0' || c > '9')
    8004ce78:	fd060e1b          	addiw	t3,a2,-48
    8004ce7c:	01c86d63          	bltu	a6,t3,8004ce96 <parse_digits+0x36>
quickjs-nuttx/libregexp.c:402
        v = v * 10 + c - '0';
    8004ce80:	031787b3          	mul	a5,a5,a7
    8004ce84:	fd078793          	addi	a5,a5,-48
    8004ce88:	97b2                	add	a5,a5,a2
quickjs-nuttx/libregexp.c:403
        if (v >= INT32_MAX) {
    8004ce8a:	00f37463          	bgeu	t1,a5,8004ce92 <parse_digits+0x32>
quickjs-nuttx/libregexp.c:404
            if (allow_overflow)
    8004ce8e:	c981                	beqz	a1,8004ce9e <parse_digits+0x3e>
quickjs-nuttx/libregexp.c:405
                v = INT32_MAX;
    8004ce90:	87b6                	mv	a5,a3
quickjs-nuttx/libregexp.c:409
            else
                return -1;
        }
        p++;
    8004ce92:	0705                	addi	a4,a4,1
quickjs-nuttx/libregexp.c:399
        c = *p;
    8004ce94:	b7c5                	j	8004ce74 <parse_digits+0x14>
quickjs-nuttx/libregexp.c:411
    }
    *pp = p;
    8004ce96:	e118                	sd	a4,0(a0)
quickjs-nuttx/libregexp.c:412
    return v;
    8004ce98:	0007851b          	sext.w	a0,a5
    8004ce9c:	8082                	ret
quickjs-nuttx/libregexp.c:407
                return -1;
    8004ce9e:	557d                	li	a0,-1
quickjs-nuttx/libregexp.c:413
}
    8004cea0:	8082                	ret

000000008004cea2 <is_unicode_char>:
is_unicode_char():
quickjs-nuttx/libregexp.c:553
/* XXX: we use the same chars for name and value */
static BOOL is_unicode_char(int c)
{
    return ((c >= '0' && c <= '9') ||
            (c >= 'A' && c <= 'Z') ||
            (c >= 'a' && c <= 'z') ||
    8004cea2:	fd05061b          	addiw	a2,a0,-48
    8004cea6:	46a5                	li	a3,9
quickjs-nuttx/libregexp.c:550
{
    8004cea8:	87aa                	mv	a5,a0
quickjs-nuttx/libregexp.c:551
    return ((c >= '0' && c <= '9') ||
    8004ceaa:	0005071b          	sext.w	a4,a0
quickjs-nuttx/libregexp.c:553
            (c >= 'a' && c <= 'z') ||
    8004ceae:	00c6ff63          	bgeu	a3,a2,8004cecc <is_unicode_char+0x2a>
quickjs-nuttx/libregexp.c:551
    return ((c >= '0' && c <= '9') ||
    8004ceb2:	fdf77713          	andi	a4,a4,-33
    8004ceb6:	fbf7071b          	addiw	a4,a4,-65
    8004ceba:	46e5                	li	a3,25
quickjs-nuttx/libregexp.c:553
            (c >= 'a' && c <= 'z') ||
    8004cebc:	4505                	li	a0,1
quickjs-nuttx/libregexp.c:551
    return ((c >= '0' && c <= '9') ||
    8004cebe:	00e6f863          	bgeu	a3,a4,8004cece <is_unicode_char+0x2c>
quickjs-nuttx/libregexp.c:553
            (c >= 'a' && c <= 'z') ||
    8004cec2:	fa178793          	addi	a5,a5,-95
    8004cec6:	0017b513          	seqz	a0,a5
    8004ceca:	8082                	ret
    8004cecc:	4505                	li	a0,1
quickjs-nuttx/libregexp.c:555 (discriminator 5)
            (c == '_'));
}
    8004cece:	8082                	ret

000000008004ced0 <re_emit_op_u8>:
re_emit_op_u8():
quickjs-nuttx/libregexp.c:363
{
    8004ced0:	1101                	addi	sp,sp,-32
quickjs-nuttx/libregexp.c:364
    dbuf_putc(&s->byte_code, op);
    8004ced2:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/libregexp.c:363
{
    8004ced6:	e822                	sd	s0,16(sp)
    8004ced8:	e426                	sd	s1,8(sp)
    8004ceda:	ec06                	sd	ra,24(sp)
    8004cedc:	842a                	mv	s0,a0
    8004cede:	84b2                	mv	s1,a2
quickjs-nuttx/libregexp.c:364
    dbuf_putc(&s->byte_code, op);
    8004cee0:	403040ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/libregexp.c:365
    dbuf_putc(&s->byte_code, val);
    8004cee4:	8522                	mv	a0,s0
quickjs-nuttx/libregexp.c:366
}
    8004cee6:	6442                	ld	s0,16(sp)
    8004cee8:	60e2                	ld	ra,24(sp)
quickjs-nuttx/libregexp.c:365
    dbuf_putc(&s->byte_code, val);
    8004ceea:	0ff4f593          	zext.b	a1,s1
quickjs-nuttx/libregexp.c:366
}
    8004ceee:	64a2                	ld	s1,8(sp)
    8004cef0:	6105                	addi	sp,sp,32
quickjs-nuttx/libregexp.c:365
    dbuf_putc(&s->byte_code, val);
    8004cef2:	3f10406f          	j	80051ae2 <dbuf_putc>

000000008004cef6 <dbuf_insert>:
dbuf_insert():
quickjs-nuttx/libregexp.c:112
{
    8004cef6:	7179                	addi	sp,sp,-48
    8004cef8:	f022                	sd	s0,32(sp)
    8004cefa:	ec26                	sd	s1,24(sp)
    8004cefc:	e84a                	sd	s2,16(sp)
    8004cefe:	e44e                	sd	s3,8(sp)
    8004cf00:	f406                	sd	ra,40(sp)
    8004cf02:	89ae                	mv	s3,a1
quickjs-nuttx/libregexp.c:113
    if (dbuf_realloc(s, s->size + len))
    8004cf04:	650c                	ld	a1,8(a0)
quickjs-nuttx/libregexp.c:112
{
    8004cf06:	842a                	mv	s0,a0
    8004cf08:	8932                	mv	s2,a2
quickjs-nuttx/libregexp.c:113
    if (dbuf_realloc(s, s->size + len))
    8004cf0a:	95b2                	add	a1,a1,a2
    8004cf0c:	2a3040ef          	jal	ra,800519ae <dbuf_realloc>
quickjs-nuttx/libregexp.c:114
        return -1;
    8004cf10:	54fd                	li	s1,-1
quickjs-nuttx/libregexp.c:113
    if (dbuf_realloc(s, s->size + len))
    8004cf12:	e10d                	bnez	a0,8004cf34 <dbuf_insert+0x3e>
quickjs-nuttx/libregexp.c:115
    memmove(s->buf + pos + len, s->buf + pos, s->size - pos);
    8004cf14:	601c                	ld	a5,0(s0)
    8004cf16:	6410                	ld	a2,8(s0)
    8004cf18:	84aa                	mv	s1,a0
    8004cf1a:	01390533          	add	a0,s2,s3
    8004cf1e:	41360633          	sub	a2,a2,s3
    8004cf22:	013785b3          	add	a1,a5,s3
    8004cf26:	953e                	add	a0,a0,a5
    8004cf28:	4d9160ef          	jal	ra,80063c00 <memmove>
quickjs-nuttx/libregexp.c:116
    s->size += len;
    8004cf2c:	6410                	ld	a2,8(s0)
    8004cf2e:	9932                	add	s2,s2,a2
    8004cf30:	01243423          	sd	s2,8(s0)
quickjs-nuttx/libregexp.c:118
}
    8004cf34:	70a2                	ld	ra,40(sp)
    8004cf36:	7402                	ld	s0,32(sp)
    8004cf38:	6942                	ld	s2,16(sp)
    8004cf3a:	69a2                	ld	s3,8(sp)
    8004cf3c:	8526                	mv	a0,s1
    8004cf3e:	64e2                	ld	s1,24(sp)
    8004cf40:	6145                	addi	sp,sp,48
    8004cf42:	8082                	ret

000000008004cf44 <find_group_name>:
find_group_name():
quickjs-nuttx/libregexp.c:1112
        re_count_captures(s);
    return s->has_named_captures;
}

static int find_group_name(REParseState *s, const char *name)
{
    8004cf44:	7139                	addi	sp,sp,-64
    8004cf46:	f426                	sd	s1,40(sp)
    8004cf48:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1117
    const char *p, *buf_end;
    size_t len, name_len;
    int capture_index;
    
    name_len = strlen(name);
    8004cf4a:	852e                	mv	a0,a1
quickjs-nuttx/libregexp.c:1112
{
    8004cf4c:	f822                	sd	s0,48(sp)
    8004cf4e:	f04a                	sd	s2,32(sp)
    8004cf50:	ec4e                	sd	s3,24(sp)
    8004cf52:	e852                	sd	s4,16(sp)
    8004cf54:	e456                	sd	s5,8(sp)
    8004cf56:	fc06                	sd	ra,56(sp)
    8004cf58:	8a2e                	mv	s4,a1
quickjs-nuttx/libregexp.c:1117
    name_len = strlen(name);
    8004cf5a:	629160ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/libregexp.c:1118
    p = (char *)s->group_names.buf;
    8004cf5e:	78a0                	ld	s0,112(s1)
quickjs-nuttx/libregexp.c:1119
    buf_end = (char *)s->group_names.buf + s->group_names.size;
    8004cf60:	0784ba83          	ld	s5,120(s1)
quickjs-nuttx/libregexp.c:1117
    name_len = strlen(name);
    8004cf64:	89aa                	mv	s3,a0
quickjs-nuttx/libregexp.c:1120
    capture_index = 1;
    8004cf66:	4905                	li	s2,1
quickjs-nuttx/libregexp.c:1119
    buf_end = (char *)s->group_names.buf + s->group_names.size;
    8004cf68:	9aa2                	add	s5,s5,s0
quickjs-nuttx/libregexp.c:1121
    while (p < buf_end) {
    8004cf6a:	01546d63          	bltu	s0,s5,8004cf84 <find_group_name+0x40>
quickjs-nuttx/libregexp.c:1128
        if (len == name_len && memcmp(name, p, name_len) == 0)
            return capture_index;
        p += len + 1;
        capture_index++;
    }
    return -1;
    8004cf6e:	597d                	li	s2,-1
quickjs-nuttx/libregexp.c:1129
}
    8004cf70:	70e2                	ld	ra,56(sp)
    8004cf72:	7442                	ld	s0,48(sp)
    8004cf74:	74a2                	ld	s1,40(sp)
    8004cf76:	69e2                	ld	s3,24(sp)
    8004cf78:	6a42                	ld	s4,16(sp)
    8004cf7a:	6aa2                	ld	s5,8(sp)
    8004cf7c:	854a                	mv	a0,s2
    8004cf7e:	7902                	ld	s2,32(sp)
    8004cf80:	6121                	addi	sp,sp,64
    8004cf82:	8082                	ret
quickjs-nuttx/libregexp.c:1122
        len = strlen(p);
    8004cf84:	8522                	mv	a0,s0
    8004cf86:	5fd160ef          	jal	ra,80063d82 <strlen>
    8004cf8a:	84aa                	mv	s1,a0
quickjs-nuttx/libregexp.c:1123
        if (len == name_len && memcmp(name, p, name_len) == 0)
    8004cf8c:	00a99863          	bne	s3,a0,8004cf9c <find_group_name+0x58>
quickjs-nuttx/libregexp.c:1123 (discriminator 1)
    8004cf90:	864e                	mv	a2,s3
    8004cf92:	85a2                	mv	a1,s0
    8004cf94:	8552                	mv	a0,s4
    8004cf96:	43f160ef          	jal	ra,80063bd4 <memcmp>
    8004cf9a:	d979                	beqz	a0,8004cf70 <find_group_name+0x2c>
quickjs-nuttx/libregexp.c:1125
        p += len + 1;
    8004cf9c:	0485                	addi	s1,s1,1
    8004cf9e:	9426                	add	s0,s0,s1
quickjs-nuttx/libregexp.c:1126
        capture_index++;
    8004cfa0:	2905                	addiw	s2,s2,1
    8004cfa2:	b7e1                	j	8004cf6a <find_group_name+0x26>

000000008004cfa4 <push_state>:
push_state():
quickjs-nuttx/libregexp.c:1976
static int push_state(REExecContext *s,
                      uint8_t **capture,
                      StackInt *stack, size_t stack_len,
                      const uint8_t *pc, const uint8_t *cptr,
                      REExecStateEnum type, size_t count)
{
    8004cfa4:	715d                	addi	sp,sp,-80
    8004cfa6:	e0a2                	sd	s0,64(sp)
    8004cfa8:	842a                	mv	s0,a0
    8004cfaa:	fc26                	sd	s1,56(sp)
    8004cfac:	f84a                	sd	s2,48(sp)
    8004cfae:	f44e                	sd	s3,40(sp)
    8004cfb0:	f052                	sd	s4,32(sp)
    8004cfb2:	ec56                	sd	s5,24(sp)
    8004cfb4:	e85a                	sd	s6,16(sp)
    8004cfb6:	e45e                	sd	s7,8(sp)
    8004cfb8:	e486                	sd	ra,72(sp)
    8004cfba:	e062                	sd	s8,0(sp)
    8004cfbc:	8abe                	mv	s5,a5
quickjs-nuttx/libregexp.c:1982
    REExecState *rs;
    uint8_t *new_stack;
    size_t new_size, i, n;
    StackInt *stack_buf;

    if (unlikely((s->state_stack_len + 1) > s->state_stack_size)) {
    8004cfbe:	643c                	ld	a5,72(s0)
    8004cfc0:	6128                	ld	a0,64(a0)
quickjs-nuttx/libregexp.c:1976
{
    8004cfc2:	89ae                	mv	s3,a1
quickjs-nuttx/libregexp.c:1982
    if (unlikely((s->state_stack_len + 1) > s->state_stack_size)) {
    8004cfc4:	0785                	addi	a5,a5,1
quickjs-nuttx/libregexp.c:1976
{
    8004cfc6:	8932                	mv	s2,a2
    8004cfc8:	84b6                	mv	s1,a3
    8004cfca:	8a3a                	mv	s4,a4
    8004cfcc:	8bc2                	mv	s7,a6
    8004cfce:	8b46                	mv	s6,a7
quickjs-nuttx/libregexp.c:1982
    if (unlikely((s->state_stack_len + 1) > s->state_stack_size)) {
    8004cfd0:	02f57863          	bgeu	a0,a5,8004d000 <push_state+0x5c>
quickjs-nuttx/libregexp.c:1984
        /* reallocate the stack */
        new_size = s->state_stack_size * 3 / 2;
    8004cfd4:	478d                	li	a5,3
    8004cfd6:	02f50533          	mul	a0,a0,a5
quickjs-nuttx/libregexp.c:1985
        if (new_size < 8)
    8004cfda:	47bd                	li	a5,15
quickjs-nuttx/libregexp.c:1986
            new_size = 8;
    8004cfdc:	4c21                	li	s8,8
quickjs-nuttx/libregexp.c:1985
        if (new_size < 8)
    8004cfde:	00a7f463          	bgeu	a5,a0,8004cfe6 <push_state+0x42>
quickjs-nuttx/libregexp.c:1984
        new_size = s->state_stack_size * 3 / 2;
    8004cfe2:	00155c13          	srli	s8,a0,0x1
quickjs-nuttx/libregexp.c:1987
        new_stack = lre_realloc(s->opaque, s->state_stack, new_size * s->state_size);
    8004cfe6:	7810                	ld	a2,48(s0)
    8004cfe8:	7c0c                	ld	a1,56(s0)
    8004cfea:	7408                	ld	a0,40(s0)
    8004cfec:	02cc0633          	mul	a2,s8,a2
    8004cff0:	f03c10ef          	jal	ra,8000eef2 <lre_realloc>
    8004cff4:	86aa                	mv	a3,a0
quickjs-nuttx/libregexp.c:1989
        if (!new_stack)
            return -1;
    8004cff6:	557d                	li	a0,-1
quickjs-nuttx/libregexp.c:1988
        if (!new_stack)
    8004cff8:	c6a9                	beqz	a3,8004d042 <push_state+0x9e>
quickjs-nuttx/libregexp.c:1990
        s->state_stack_size = new_size;
    8004cffa:	05843023          	sd	s8,64(s0)
quickjs-nuttx/libregexp.c:1991
        s->state_stack = new_stack;
    8004cffe:	fc14                	sd	a3,56(s0)
quickjs-nuttx/libregexp.c:1993
    }
    rs = (REExecState *)(s->state_stack + s->state_stack_len * s->state_size);
