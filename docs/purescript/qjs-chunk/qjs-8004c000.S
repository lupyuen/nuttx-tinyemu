    8004b002:	24b7b423          	sd	a1,584(a5)
quickjs-nuttx/quickjs.c:52276
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_BIG_DECIMAL],
    8004b006:	603c                	ld	a5,64(s0)
    8004b008:	8522                	mv	a0,s0
    8004b00a:	2407b583          	ld	a1,576(a5)
    8004b00e:	2487b603          	ld	a2,584(a5)
    8004b012:	f0bf30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52279
    obj1 = JS_NewGlobalCConstructor(ctx, "BigDecimal",
    8004b016:	603c                	ld	a5,64(s0)
    8004b018:	4685                	li	a3,1
    8004b01a:	fffdc617          	auipc	a2,0xfffdc
    8004b01e:	77260613          	addi	a2,a2,1906 # 8002778c <js_bigdecimal_constructor>
    8004b022:	2407b703          	ld	a4,576(a5)
    8004b026:	2487b783          	ld	a5,584(a5)
    8004b02a:	8522                	mv	a0,s0
    8004b02c:	00023597          	auipc	a1,0x23
    8004b030:	80c58593          	addi	a1,a1,-2036 # 8006d838 <qjsc_repl+0x8288>
    8004b034:	b5ee60ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004b038:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:52282
    JS_SetPropertyFunctionList(ctx, obj1, js_bigdecimal_funcs,
    8004b03a:	85aa                	mv	a1,a0
    8004b03c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52284
}
    8004b03e:	6442                	ld	s0,16(sp)
    8004b040:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:52282
    JS_SetPropertyFunctionList(ctx, obj1, js_bigdecimal_funcs,
    8004b042:	471d                	li	a4,7
    8004b044:	00026697          	auipc	a3,0x26
    8004b048:	8dc68693          	addi	a3,a3,-1828 # 80070920 <js_bigdecimal_funcs>
quickjs-nuttx/quickjs.c:52284
}
    8004b04c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:52282
    JS_SetPropertyFunctionList(ctx, obj1, js_bigdecimal_funcs,
    8004b04e:	ecff306f          	j	8003ef1c <JS_SetPropertyFunctionList>

000000008004b052 <JS_EnableBignumExt>:
JS_EnableBignumExt():
quickjs-nuttx/quickjs.c:52288
    ctx->bignum_ext = enable;
    8004b052:	1ab50423          	sb	a1,424(a0)
quickjs-nuttx/quickjs.c:52289
}
    8004b056:	8082                	ret

000000008004b058 <JS_AddIntrinsicBaseObjects>:
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52356
{
    8004b058:	dc010113          	addi	sp,sp,-576
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004b05c:	4781                	li	a5,0
    8004b05e:	4701                	li	a4,0
    8004b060:	4681                	li	a3,0
    8004b062:	4601                	li	a2,0
    8004b064:	fffce597          	auipc	a1,0xfffce
    8004b068:	65258593          	addi	a1,a1,1618 # 800196b6 <js_throw_type_error>
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52356
    8004b06c:	22113c23          	sd	ra,568(sp)
    8004b070:	22813823          	sd	s0,560(sp)
    8004b074:	22913423          	sd	s1,552(sp)
    8004b078:	842a                	mv	s0,a0
    8004b07a:	23213023          	sd	s2,544(sp)
    8004b07e:	21413823          	sd	s4,528(sp)
    8004b082:	21513423          	sd	s5,520(sp)
    8004b086:	21613023          	sd	s6,512(sp)
    8004b08a:	21313c23          	sd	s3,536(sp)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004b08e:	a75e50ef          	jal	ra,80030b02 <JS_NewCFunction2>
    8004b092:	f2aa                	sd	a0,352(sp)
    8004b094:	f6ae                	sd	a1,360(sp)
    8004b096:	e32a                	sd	a0,384(sp)
    8004b098:	e72e                	sd	a1,392(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52361
    ctx->throw_type_error = JS_NewCFunction(ctx, js_throw_type_error, NULL, 0);
    8004b09a:	14a43423          	sd	a0,328(s0)
    8004b09e:	14b43823          	sd	a1,336(s0)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004b0a2:	4781                	li	a5,0
    8004b0a4:	4701                	li	a4,0
    8004b0a6:	4681                	li	a3,0
    8004b0a8:	4601                	li	a2,0
    8004b0aa:	fffce597          	auipc	a1,0xfffce
    8004b0ae:	61c58593          	addi	a1,a1,1564 # 800196c6 <js_function_proto_caller>
    8004b0b2:	8522                	mv	a0,s0
    8004b0b4:	a4fe50ef          	jal	ra,80030b02 <JS_NewCFunction2>
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52365
    JS_DefineProperty(ctx, ctx->function_proto, JS_ATOM_caller, JS_UNDEFINED,
    8004b0b8:	14843783          	ld	a5,328(s0)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004b0bc:	88ae                	mv	a7,a1
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52365
    8004b0be:	6830                	ld	a2,80(s0)
    8004b0c0:	e03e                	sd	a5,0(sp)
    8004b0c2:	15043783          	ld	a5,336(s0)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004b0c6:	eeae                	sd	a1,344(sp)
    8004b0c8:	e4ae                	sd	a1,72(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52365
    8004b0ca:	6489                	lui	s1,0x2
    8004b0cc:	642c                	ld	a1,72(s0)
    8004b0ce:	490d                	li	s2,3
    8004b0d0:	90148493          	addi	s1,s1,-1791 # 1901 <asinh-0x7fffe6ff>
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004b0d4:	882a                	mv	a6,a0
    8004b0d6:	eaaa                	sd	a0,336(sp)
    8004b0d8:	e0aa                	sd	a0,64(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52365
    8004b0da:	ecca                	sd	s2,88(sp)
    8004b0dc:	e826                	sd	s1,16(sp)
    8004b0de:	e43e                	sd	a5,8(sp)
    8004b0e0:	4701                	li	a4,0
    8004b0e2:	478d                	li	a5,3
    8004b0e4:	05000693          	li	a3,80
    8004b0e8:	e882                	sd	zero,80(sp)
    8004b0ea:	8522                	mv	a0,s0
    8004b0ec:	a63cc0ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:52369
    JS_DefineProperty(ctx, ctx->function_proto, JS_ATOM_arguments, JS_UNDEFINED,
    8004b0f0:	14843783          	ld	a5,328(s0)
    8004b0f4:	6806                	ld	a6,64(sp)
    8004b0f6:	68a6                	ld	a7,72(sp)
    8004b0f8:	e03e                	sd	a5,0(sp)
    8004b0fa:	15043783          	ld	a5,336(s0)
    8004b0fe:	642c                	ld	a1,72(s0)
    8004b100:	6830                	ld	a2,80(s0)
    8004b102:	4701                	li	a4,0
    8004b104:	04e00693          	li	a3,78
    8004b108:	f4ca                	sd	s2,104(sp)
    8004b10a:	e826                	sd	s1,16(sp)
    8004b10c:	e43e                	sd	a5,8(sp)
    8004b10e:	f082                	sd	zero,96(sp)
    8004b110:	478d                	li	a5,3
    8004b112:	8522                	mv	a0,s0
    8004b114:	a3bcc0ef          	jal	ra,80017b4e <JS_DefineProperty>
quickjs-nuttx/quickjs.c:52373
    JS_FreeValue(ctx, obj1);
    8004b118:	6586                	ld	a1,64(sp)
    8004b11a:	6626                	ld	a2,72(sp)
    8004b11c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52400
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8004b11e:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:52373
    JS_FreeValue(ctx, obj1);
    8004b120:	e7ec00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52374
    JS_FreeValue(ctx, js_object_seal(ctx, JS_UNDEFINED, 1, (JSValueConst *)&ctx->throw_type_error, 1));
    8004b124:	14840713          	addi	a4,s0,328
    8004b128:	4685                	li	a3,1
    8004b12a:	4785                	li	a5,1
    8004b12c:	460d                	li	a2,3
    8004b12e:	4581                	li	a1,0
    8004b130:	8522                	mv	a0,s0
    8004b132:	fcca                	sd	s2,120(sp)
    8004b134:	f882                	sd	zero,112(sp)
    8004b136:	bbfed0ef          	jal	ra,80038cf4 <js_object_seal>
    8004b13a:	862e                	mv	a2,a1
    8004b13c:	e92a                	sd	a0,144(sp)
    8004b13e:	ed2e                	sd	a1,152(sp)
    8004b140:	85aa                	mv	a1,a0
    8004b142:	8522                	mv	a0,s0
    8004b144:	e5ac00ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:52376
    ctx->global_obj = JS_NewObject(ctx);
    8004b148:	8522                	mv	a0,s0
    8004b14a:	edbd00ef          	jal	ra,8001c024 <JS_NewObject>
quickjs-nuttx/quickjs.c:52377
    ctx->global_var_obj = JS_NewObjectProto(ctx, JS_NULL);
    8004b14e:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:52376
    ctx->global_obj = JS_NewObject(ctx);
    8004b150:	16a43423          	sd	a0,360(s0)
    8004b154:	16b43823          	sd	a1,368(s0)
quickjs-nuttx/quickjs.c:52377
    ctx->global_var_obj = JS_NewObjectProto(ctx, JS_NULL);
    8004b158:	4609                	li	a2,2
    8004b15a:	4581                	li	a1,0
    8004b15c:	8522                	mv	a0,s0
    8004b15e:	e53e                	sd	a5,136(sp)
    8004b160:	e102                	sd	zero,128(sp)
    8004b162:	e69d00ef          	jal	ra,8001bfca <JS_NewObjectProto>
quickjs-nuttx/quickjs.c:52380
    obj = JS_NewGlobalCConstructor(ctx, "Object", js_object_constructor, 1,
    8004b166:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:52377
    ctx->global_var_obj = JS_NewObjectProto(ctx, JS_NULL);
    8004b168:	16a43c23          	sd	a0,376(s0)
    8004b16c:	18b43023          	sd	a1,384(s0)
quickjs-nuttx/quickjs.c:52380
    obj = JS_NewGlobalCConstructor(ctx, "Object", js_object_constructor, 1,
    8004b170:	6b98                	ld	a4,16(a5)
    8004b172:	6f9c                	ld	a5,24(a5)
    8004b174:	4685                	li	a3,1
    8004b176:	fffe5617          	auipc	a2,0xfffe5
    8004b17a:	14260613          	addi	a2,a2,322 # 800302b8 <js_object_constructor>
    8004b17e:	00022597          	auipc	a1,0x22
    8004b182:	6ca58593          	addi	a1,a1,1738 # 8006d848 <qjsc_repl+0x8298>
    8004b186:	8522                	mv	a0,s0
    8004b188:	a0ae60ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004b18c:	862e                	mv	a2,a1
    8004b18e:	f02a                	sd	a0,32(sp)
    8004b190:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:52382
    JS_SetPropertyFunctionList(ctx, obj, js_object_funcs, countof(js_object_funcs));
    8004b192:	4761                	li	a4,24
    8004b194:	85aa                	mv	a1,a0
    8004b196:	00028697          	auipc	a3,0x28
    8004b19a:	af268693          	addi	a3,a3,-1294 # 80072c88 <js_object_funcs>
    8004b19e:	8522                	mv	a0,s0
    8004b1a0:	d7df30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52383
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8004b1a4:	603c                	ld	a5,64(s0)
    8004b1a6:	472d                	li	a4,11
    8004b1a8:	00028697          	auipc	a3,0x28
    8004b1ac:	de068693          	addi	a3,a3,-544 # 80072f88 <js_object_proto_funcs>
    8004b1b0:	6b8c                	ld	a1,16(a5)
    8004b1b2:	6f90                	ld	a2,24(a5)
    8004b1b4:	8522                	mv	a0,s0
    8004b1b6:	0002a917          	auipc	s2,0x2a
    8004b1ba:	b6a90913          	addi	s2,s2,-1174 # 80074d20 <native_error_name>
    8004b1be:	d5ff30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52387
    JS_SetPropertyFunctionList(ctx, ctx->function_proto, js_function_proto_funcs, countof(js_function_proto_funcs));
    8004b1c2:	642c                	ld	a1,72(s0)
    8004b1c4:	6830                	ld	a2,80(s0)
    8004b1c6:	471d                	li	a4,7
    8004b1c8:	00027697          	auipc	a3,0x27
    8004b1cc:	c7868693          	addi	a3,a3,-904 # 80071e40 <js_function_proto_funcs>
    8004b1d0:	8522                	mv	a0,s0
    8004b1d2:	d4bf30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    return JS_NewCFunction2(ctx, (JSCFunction *)func, name, length, cproto, magic);
    8004b1d6:	4781                	li	a5,0
    8004b1d8:	4715                	li	a4,5
    8004b1da:	4685                	li	a3,1
    8004b1dc:	00022617          	auipc	a2,0x22
    8004b1e0:	67460613          	addi	a2,a2,1652 # 8006d850 <qjsc_repl+0x82a0>
    8004b1e4:	fffdd597          	auipc	a1,0xfffdd
    8004b1e8:	cca58593          	addi	a1,a1,-822 # 80027eae <js_function_constructor>
    8004b1ec:	8522                	mv	a0,s0
    8004b1ee:	915e50ef          	jal	ra,80030b02 <JS_NewCFunction2>
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52388
    ctx->function_ctor = JS_NewCFunctionMagic(ctx, js_function_constructor,
    8004b1f2:	ec28                	sd	a0,88(s0)
    8004b1f4:	f02c                	sd	a1,96(s0)
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8004b1f6:	fa2a                	sd	a0,304(sp)
    8004b1f8:	fe2e                	sd	a1,312(sp)
    8004b1fa:	e32a                	sd	a0,384(sp)
    8004b1fc:	e72e                	sd	a1,392(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52391
    JS_NewGlobalCConstructor2(ctx, JS_DupValue(ctx, ctx->function_ctor), "Function",
    8004b1fe:	a1cbf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004b202:	6438                	ld	a4,72(s0)
    8004b204:	683c                	ld	a5,80(s0)
    8004b206:	862e                	mv	a2,a1
    8004b208:	f12a                	sd	a0,160(sp)
    8004b20a:	f52e                	sd	a1,168(sp)
    8004b20c:	00022697          	auipc	a3,0x22
    8004b210:	64468693          	addi	a3,a3,1604 # 8006d850 <qjsc_repl+0x82a0>
    8004b214:	85aa                	mv	a1,a0
    8004b216:	8522                	mv	a0,s0
    8004b218:	92ce60ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8004b21c:	57fd                	li	a5,-1
    8004b21e:	4715                	li	a4,5
    8004b220:	4685                	li	a3,1
    8004b222:	00023617          	auipc	a2,0x23
    8004b226:	c7e60613          	addi	a2,a2,-898 # 8006dea0 <qjsc_repl+0x88f0>
    8004b22a:	ffff9597          	auipc	a1,0xffff9
    8004b22e:	14a58593          	addi	a1,a1,330 # 80044374 <js_error_constructor>
    8004b232:	8522                	mv	a0,s0
    8004b234:	8cfe50ef          	jal	ra,80030b02 <JS_NewCFunction2>
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52397
    JS_NewGlobalCConstructor2(ctx, obj1,
    8004b238:	603c                	ld	a5,64(s0)
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8004b23a:	862e                	mv	a2,a1
    8004b23c:	f22a                	sd	a0,288(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52397
    8004b23e:	7b98                	ld	a4,48(a5)
    8004b240:	7f9c                	ld	a5,56(a5)
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8004b242:	f62e                	sd	a1,296(sp)
    8004b244:	e0aa                	sd	a0,64(sp)
    8004b246:	e4ae                	sd	a1,72(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52397
    8004b248:	00023697          	auipc	a3,0x23
    8004b24c:	c5868693          	addi	a3,a3,-936 # 8006dea0 <qjsc_repl+0x88f0>
    8004b250:	85aa                	mv	a1,a0
    8004b252:	8522                	mv	a0,s0
    8004b254:	8f0e60ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
quickjs-nuttx/quickjs.c:52403
        n_args = 1 + (i == JS_AGGREGATE_ERROR);
    8004b258:	4685                	li	a3,1
quickjs-nuttx/quickjs.c:52404
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_error_constructor,
    8004b25a:	ffff9a97          	auipc	s5,0xffff9
    8004b25e:	11aa8a93          	addi	s5,s5,282 # 80044374 <js_error_constructor>
quickjs-nuttx/quickjs.c:52400
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8004b262:	4a21                	li	s4,8
quickjs-nuttx/quickjs.c:52403
        n_args = 1 + (i == JS_AGGREGATE_ERROR);
    8004b264:	4b1d                	li	s6,7
quickjs-nuttx/quickjs.c:52404 (discriminator 4)
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_error_constructor,
    8004b266:	00093983          	ld	s3,0(s2)
    8004b26a:	6806                	ld	a6,64(sp)
    8004b26c:	68a6                	ld	a7,72(sp)
    8004b26e:	87a6                	mv	a5,s1
    8004b270:	4715                	li	a4,5
    8004b272:	864e                	mv	a2,s3
    8004b274:	85d6                	mv	a1,s5
    8004b276:	8522                	mv	a0,s0
    8004b278:	fc8e50ef          	jal	ra,80030a40 <JS_NewCFunction3>
quickjs-nuttx/quickjs.c:52407 (discriminator 4)
        JS_NewGlobalCConstructor2(ctx, func_obj, native_error_name[i],
    8004b27c:	00948793          	addi	a5,s1,9
    8004b280:	0792                	slli	a5,a5,0x4
    8004b282:	97a2                	add	a5,a5,s0
    8004b284:	6798                	ld	a4,8(a5)
    8004b286:	6b9c                	ld	a5,16(a5)
quickjs-nuttx/quickjs.c:52404 (discriminator 4)
        func_obj = JS_NewCFunction3(ctx, (JSCFunction *)js_error_constructor,
    8004b288:	862e                	mv	a2,a1
    8004b28a:	e32a                	sd	a0,384(sp)
    8004b28c:	e72e                	sd	a1,392(sp)
quickjs-nuttx/quickjs.c:52407 (discriminator 4)
        JS_NewGlobalCConstructor2(ctx, func_obj, native_error_name[i],
    8004b28e:	86ce                	mv	a3,s3
    8004b290:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:52400 (discriminator 4)
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8004b292:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:52407 (discriminator 4)
        JS_NewGlobalCConstructor2(ctx, func_obj, native_error_name[i],
    8004b294:	8522                	mv	a0,s0
    8004b296:	8aee60ef          	jal	ra,80031344 <JS_NewGlobalCConstructor2>
quickjs-nuttx/quickjs.c:52400 (discriminator 4)
    for(i = 0; i < JS_NATIVE_ERROR_COUNT; i++) {
    8004b29a:	51449363          	bne	s1,s4,8004b7a0 <JS_AddIntrinsicBaseObjects+0x748>
quickjs-nuttx/quickjs.c:52412
    ctx->iterator_proto = JS_NewObject(ctx);
    8004b29e:	8522                	mv	a0,s0
    8004b2a0:	d85d00ef          	jal	ra,8001c024 <JS_NewObject>
    8004b2a4:	862e                	mv	a2,a1
    8004b2a6:	10a43c23          	sd	a0,280(s0)
    8004b2aa:	12b43023          	sd	a1,288(s0)
quickjs-nuttx/quickjs.c:52413
    JS_SetPropertyFunctionList(ctx, ctx->iterator_proto,
    8004b2ae:	4705                	li	a4,1
    8004b2b0:	85aa                	mv	a1,a0
    8004b2b2:	00027697          	auipc	a3,0x27
    8004b2b6:	eae68693          	addi	a3,a3,-338 # 80072160 <js_iterator_proto_funcs>
    8004b2ba:	8522                	mv	a0,s0
    8004b2bc:	c61f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52418
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ARRAY],
    8004b2c0:	603c                	ld	a5,64(s0)
    8004b2c2:	02700713          	li	a4,39
    8004b2c6:	00024697          	auipc	a3,0x24
    8004b2ca:	50268693          	addi	a3,a3,1282 # 8006f7c8 <js_array_proto_funcs>
    8004b2ce:	738c                	ld	a1,32(a5)
    8004b2d0:	7790                	ld	a2,40(a5)
    8004b2d2:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52449
        for(p = unscopables; *p; p += strlen(p) + 1) {
    8004b2d4:	0304                	addi	s1,sp,384
quickjs-nuttx/quickjs.c:52418
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ARRAY],
    8004b2d6:	c47f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52422
    obj = JS_NewGlobalCConstructor(ctx, "Array", js_array_constructor, 1,
    8004b2da:	603c                	ld	a5,64(s0)
    8004b2dc:	4685                	li	a3,1
    8004b2de:	fffed617          	auipc	a2,0xfffed
    8004b2e2:	a9e60613          	addi	a2,a2,-1378 # 80037d7c <js_array_constructor>
    8004b2e6:	7398                	ld	a4,32(a5)
    8004b2e8:	779c                	ld	a5,40(a5)
    8004b2ea:	00022597          	auipc	a1,0x22
    8004b2ee:	57658593          	addi	a1,a1,1398 # 8006d860 <qjsc_repl+0x82b0>
    8004b2f2:	8522                	mv	a0,s0
    8004b2f4:	89ee60ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004b2f8:	f02a                	sd	a0,32(sp)
    8004b2fa:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:52424
    ctx->array_ctor = JS_DupValue(ctx, obj);
    8004b2fc:	91ebf0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:52425
    JS_SetPropertyFunctionList(ctx, obj, js_array_funcs,
    8004b300:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:52424
    ctx->array_ctor = JS_DupValue(ctx, obj);
    8004b302:	f82c                	sd	a1,112(s0)
quickjs-nuttx/quickjs.c:52425
    JS_SetPropertyFunctionList(ctx, obj, js_array_funcs,
    8004b304:	7582                	ld	a1,32(sp)
    8004b306:	4711                	li	a4,4
    8004b308:	00024697          	auipc	a3,0x24
    8004b30c:	40068693          	addi	a3,a3,1024 # 8006f708 <js_array_funcs>
quickjs-nuttx/quickjs.c:52424
    ctx->array_ctor = JS_DupValue(ctx, obj);
    8004b310:	f428                	sd	a0,104(s0)
quickjs-nuttx/quickjs.c:52425
    JS_SetPropertyFunctionList(ctx, obj, js_array_funcs,
    8004b312:	8522                	mv	a0,s0
    8004b314:	c09f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52431
        char const unscopables[] =
    8004b318:	07f00613          	li	a2,127
    8004b31c:	00019597          	auipc	a1,0x19
    8004b320:	74c58593          	addi	a1,a1,1868 # 80064a68 <_srodata+0x38>
    8004b324:	0308                	addi	a0,sp,384
    8004b326:	287180ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:52448
        obj1 = JS_NewObjectProto(ctx, JS_NULL);
    8004b32a:	4789                	li	a5,2
    8004b32c:	4581                	li	a1,0
    8004b32e:	4609                	li	a2,2
    8004b330:	8522                	mv	a0,s0
    8004b332:	e282                	sd	zero,320(sp)
    8004b334:	e6be                	sd	a5,328(sp)
    8004b336:	c95d00ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004b33a:	e0aa                	sd	a0,64(sp)
    8004b33c:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:52450
            JS_DefinePropertyValueStr(ctx, obj1, p, JS_TRUE, JS_PROP_C_W_E);
    8004b33e:	4905                	li	s2,1
quickjs-nuttx/quickjs.c:52449 (discriminator 1)
        for(p = unscopables; *p; p += strlen(p) + 1) {
    8004b340:	0004c783          	lbu	a5,0(s1)
    8004b344:	46079463          	bnez	a5,8004b7ac <JS_AddIntrinsicBaseObjects+0x754>
quickjs-nuttx/quickjs.c:52452
        JS_DefinePropertyValue(ctx, ctx->class_proto[JS_CLASS_ARRAY],
    8004b348:	6030                	ld	a2,64(s0)
    8004b34a:	6706                	ld	a4,64(sp)
    8004b34c:	67a6                	ld	a5,72(sp)
    8004b34e:	720c                	ld	a1,32(a2)
    8004b350:	7610                	ld	a2,40(a2)
    8004b352:	4805                	li	a6,1
    8004b354:	0e000693          	li	a3,224
    8004b358:	8522                	mv	a0,s0
    8004b35a:	ed3cc0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:52458
    ctx->array_proto_values =
    8004b35e:	603c                	ld	a5,64(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8004b360:	4801                	li	a6,0
    8004b362:	06c00693          	li	a3,108
    8004b366:	7398                	ld	a4,32(a5)
    8004b368:	779c                	ld	a5,40(a5)
    8004b36a:	8522                	mv	a0,s0
    8004b36c:	85ba                	mv	a1,a4
    8004b36e:	863e                	mv	a2,a5
    8004b370:	faba                	sd	a4,368(sp)
    8004b372:	febe                	sd	a5,376(sp)
    8004b374:	f36cb0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52461
    ctx->class_proto[JS_CLASS_ARRAY_ITERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b378:	12043603          	ld	a2,288(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004b37c:	ee2e                	sd	a1,280(sp)
    8004b37e:	e72e                	sd	a1,392(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52459
        JS_GetProperty(ctx, ctx->class_proto[JS_CLASS_ARRAY], JS_ATOM_values);
    8004b380:	14b43023          	sd	a1,320(s0)
quickjs-nuttx/quickjs.c:52461
    ctx->class_proto[JS_CLASS_ARRAY_ITERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b384:	11843583          	ld	a1,280(s0)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004b388:	ea2a                	sd	a0,272(sp)
    8004b38a:	e32a                	sd	a0,384(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52459
        JS_GetProperty(ctx, ctx->class_proto[JS_CLASS_ARRAY], JS_ATOM_values);
    8004b38c:	12a43c23          	sd	a0,312(s0)
quickjs-nuttx/quickjs.c:52461
    ctx->class_proto[JS_CLASS_ARRAY_ITERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b390:	8522                	mv	a0,s0
    8004b392:	c39d00ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004b396:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:52462
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ARRAY_ITERATOR],
    8004b398:	4709                	li	a4,2
    8004b39a:	00024697          	auipc	a3,0x24
    8004b39e:	3ee68693          	addi	a3,a3,1006 # 8006f788 <js_array_iterator_proto_funcs>
quickjs-nuttx/quickjs.c:52461
    ctx->class_proto[JS_CLASS_ARRAY_ITERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b3a2:	2ca7b023          	sd	a0,704(a5)
    8004b3a6:	2cb7b423          	sd	a1,712(a5)
quickjs-nuttx/quickjs.c:52462
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_ARRAY_ITERATOR],
    8004b3aa:	603c                	ld	a5,64(s0)
    8004b3ac:	8522                	mv	a0,s0
    8004b3ae:	4905                	li	s2,1
    8004b3b0:	2c07b583          	ld	a1,704(a5)
    8004b3b4:	2c87b603          	ld	a2,712(a5)
    8004b3b8:	b65f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52469
    JS_SetPropertyFunctionList(ctx, ctx->global_obj, js_global_funcs,
    8004b3bc:	16843583          	ld	a1,360(s0)
    8004b3c0:	17043603          	ld	a2,368(s0)
    8004b3c4:	4735                	li	a4,13
    8004b3c6:	00027697          	auipc	a3,0x27
    8004b3ca:	bfa68693          	addi	a3,a3,-1030 # 80071fc0 <js_global_funcs>
    8004b3ce:	8522                	mv	a0,s0
    8004b3d0:	b4df30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52473
    ctx->class_proto[JS_CLASS_NUMBER] = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8004b3d4:	6024                	ld	s1,64(s0)
    8004b3d6:	4691                	li	a3,4
    8004b3d8:	8522                	mv	a0,s0
    8004b3da:	6c90                	ld	a2,24(s1)
    8004b3dc:	688c                	ld	a1,16(s1)
    8004b3de:	807d00ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8004b3e2:	e0a8                	sd	a0,64(s1)
    8004b3e4:	e4ac                	sd	a1,72(s1)
quickjs-nuttx/quickjs.c:52475
    JS_SetObjectData(ctx, ctx->class_proto[JS_CLASS_NUMBER], JS_NewInt32(ctx, 0));
    8004b3e6:	603c                	ld	a5,64(s0)
    8004b3e8:	4681                	li	a3,0
    8004b3ea:	4701                	li	a4,0
    8004b3ec:	63ac                	ld	a1,64(a5)
    8004b3ee:	67b0                	ld	a2,72(a5)
    8004b3f0:	8522                	mv	a0,s0
    8004b3f2:	f902                	sd	zero,176(sp)
    8004b3f4:	fd02                	sd	zero,184(sp)
    8004b3f6:	baace0ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:52476
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_NUMBER],
    8004b3fa:	603c                	ld	a5,64(s0)
    8004b3fc:	4719                	li	a4,6
    8004b3fe:	00027697          	auipc	a3,0x27
    8004b402:	7ca68693          	addi	a3,a3,1994 # 80072bc8 <js_number_proto_funcs>
    8004b406:	63ac                	ld	a1,64(a5)
    8004b408:	67b0                	ld	a2,72(a5)
    8004b40a:	8522                	mv	a0,s0
    8004b40c:	b11f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52479
    number_obj = JS_NewGlobalCConstructor(ctx, "Number", js_number_constructor, 1,
    8004b410:	603c                	ld	a5,64(s0)
    8004b412:	4685                	li	a3,1
    8004b414:	fffda617          	auipc	a2,0xfffda
    8004b418:	ec460613          	addi	a2,a2,-316 # 800252d8 <js_number_constructor>
    8004b41c:	63b8                	ld	a4,64(a5)
    8004b41e:	67bc                	ld	a5,72(a5)
    8004b420:	00022597          	auipc	a1,0x22
    8004b424:	44858593          	addi	a1,a1,1096 # 8006d868 <qjsc_repl+0x82b8>
    8004b428:	8522                	mv	a0,s0
    8004b42a:	f69e50ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004b42e:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:52481
    JS_SetPropertyFunctionList(ctx, number_obj, js_number_funcs, countof(js_number_funcs));
    8004b430:	4739                	li	a4,14
quickjs-nuttx/quickjs.c:52479
    number_obj = JS_NewGlobalCConstructor(ctx, "Number", js_number_constructor, 1,
    8004b432:	f82a                	sd	a0,48(sp)
    8004b434:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:52481
    JS_SetPropertyFunctionList(ctx, number_obj, js_number_funcs, countof(js_number_funcs));
    8004b436:	00027697          	auipc	a3,0x27
    8004b43a:	5d268693          	addi	a3,a3,1490 # 80072a08 <js_number_funcs>
    8004b43e:	85aa                	mv	a1,a0
    8004b440:	8522                	mv	a0,s0
    8004b442:	adbf30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52484
    ctx->class_proto[JS_CLASS_BOOLEAN] = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8004b446:	6024                	ld	s1,64(s0)
    8004b448:	4699                	li	a3,6
    8004b44a:	8522                	mv	a0,s0
    8004b44c:	6c90                	ld	a2,24(s1)
    8004b44e:	688c                	ld	a1,16(s1)
    8004b450:	f94d00ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8004b454:	f0a8                	sd	a0,96(s1)
    8004b456:	f4ac                	sd	a1,104(s1)
quickjs-nuttx/quickjs.c:52486
    JS_SetObjectData(ctx, ctx->class_proto[JS_CLASS_BOOLEAN], JS_NewBool(ctx, FALSE));
    8004b458:	603c                	ld	a5,64(s0)
    8004b45a:	4681                	li	a3,0
    8004b45c:	4705                	li	a4,1
    8004b45e:	73ac                	ld	a1,96(a5)
    8004b460:	77b0                	ld	a2,104(a5)
    8004b462:	8522                	mv	a0,s0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8004b464:	e202                	sd	zero,256(sp)
    8004b466:	e64a                	sd	s2,264(sp)
    8004b468:	e182                	sd	zero,192(sp)
    8004b46a:	e5ca                	sd	s2,200(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52486
    8004b46c:	b34ce0ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:52487
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_BOOLEAN], js_boolean_proto_funcs,
    8004b470:	603c                	ld	a5,64(s0)
    8004b472:	4709                	li	a4,2
    8004b474:	00026697          	auipc	a3,0x26
    8004b478:	cec68693          	addi	a3,a3,-788 # 80071160 <js_boolean_proto_funcs>
    8004b47c:	73ac                	ld	a1,96(a5)
    8004b47e:	77b0                	ld	a2,104(a5)
    8004b480:	8522                	mv	a0,s0
    8004b482:	a9bf30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52489
    JS_NewGlobalCConstructor(ctx, "Boolean", js_boolean_constructor, 1,
    8004b486:	603c                	ld	a5,64(s0)
    8004b488:	4685                	li	a3,1
    8004b48a:	fffd1617          	auipc	a2,0xfffd1
    8004b48e:	a1460613          	addi	a2,a2,-1516 # 8001be9e <js_boolean_constructor>
    8004b492:	73b8                	ld	a4,96(a5)
    8004b494:	77bc                	ld	a5,104(a5)
    8004b496:	00022597          	auipc	a1,0x22
    8004b49a:	3da58593          	addi	a1,a1,986 # 8006d870 <qjsc_repl+0x82c0>
    8004b49e:	8522                	mv	a0,s0
    8004b4a0:	ef3e50ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
quickjs-nuttx/quickjs.c:52493
    ctx->class_proto[JS_CLASS_STRING] = JS_NewObjectProtoClass(ctx, ctx->class_proto[JS_CLASS_OBJECT],
    8004b4a4:	6024                	ld	s1,64(s0)
    8004b4a6:	4695                	li	a3,5
    8004b4a8:	8522                	mv	a0,s0
    8004b4aa:	6c90                	ld	a2,24(s1)
    8004b4ac:	688c                	ld	a1,16(s1)
    8004b4ae:	f36d00ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    8004b4b2:	e8a8                	sd	a0,80(s1)
    8004b4b4:	ecac                	sd	a1,88(s1)
quickjs-nuttx/quickjs.c:52495
    JS_SetObjectData(ctx, ctx->class_proto[JS_CLASS_STRING], JS_AtomToString(ctx, JS_ATOM_empty_string));
    8004b4b6:	6024                	ld	s1,64(s0)
    8004b4b8:	02f00593          	li	a1,47
    8004b4bc:	8522                	mv	a0,s0
    8004b4be:	e14d40ef          	jal	ra,8001fad2 <JS_AtomToString>
    8004b4c2:	872e                	mv	a4,a1
    8004b4c4:	6cb0                	ld	a2,88(s1)
    8004b4c6:	edae                	sd	a1,216(sp)
    8004b4c8:	68ac                	ld	a1,80(s1)
    8004b4ca:	86aa                	mv	a3,a0
    8004b4cc:	e9aa                	sd	a0,208(sp)
    8004b4ce:	8522                	mv	a0,s0
    8004b4d0:	ad0ce0ef          	jal	ra,800197a0 <JS_SetObjectData.isra.0>
quickjs-nuttx/quickjs.c:52496
    obj = JS_NewGlobalCConstructor(ctx, "String", js_string_constructor, 1,
    8004b4d4:	603c                	ld	a5,64(s0)
    8004b4d6:	4685                	li	a3,1
    8004b4d8:	fffec617          	auipc	a2,0xfffec
    8004b4dc:	16260613          	addi	a2,a2,354 # 8003763a <js_string_constructor>
    8004b4e0:	6bb8                	ld	a4,80(a5)
    8004b4e2:	6fbc                	ld	a5,88(a5)
    8004b4e4:	00023597          	auipc	a1,0x23
    8004b4e8:	8fc58593          	addi	a1,a1,-1796 # 8006dde0 <qjsc_repl+0x8830>
    8004b4ec:	8522                	mv	a0,s0
    8004b4ee:	ea5e50ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004b4f2:	862e                	mv	a2,a1
    8004b4f4:	f02a                	sd	a0,32(sp)
    8004b4f6:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:52498
    JS_SetPropertyFunctionList(ctx, obj, js_string_funcs,
    8004b4f8:	470d                	li	a4,3
    8004b4fa:	85aa                	mv	a1,a0
    8004b4fc:	00029697          	auipc	a3,0x29
    8004b500:	9ac68693          	addi	a3,a3,-1620 # 80073ea8 <js_string_funcs>
    8004b504:	8522                	mv	a0,s0
    8004b506:	a17f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52500
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_STRING], js_string_proto_funcs,
    8004b50a:	603c                	ld	a5,64(s0)
    8004b50c:	03400713          	li	a4,52
    8004b510:	00029697          	auipc	a3,0x29
    8004b514:	a3868693          	addi	a3,a3,-1480 # 80073f48 <js_string_proto_funcs>
    8004b518:	6bac                	ld	a1,80(a5)
    8004b51a:	6fb0                	ld	a2,88(a5)
    8004b51c:	8522                	mv	a0,s0
    8004b51e:	9fff30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52503
    ctx->class_proto[JS_CLASS_STRING_ITERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b522:	12043603          	ld	a2,288(s0)
    8004b526:	11843583          	ld	a1,280(s0)
    8004b52a:	8522                	mv	a0,s0
    8004b52c:	a9fd00ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004b530:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:52504
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_STRING_ITERATOR],
    8004b532:	4709                	li	a4,2
    8004b534:	00029697          	auipc	a3,0x29
    8004b538:	9d468693          	addi	a3,a3,-1580 # 80073f08 <js_string_iterator_proto_funcs>
quickjs-nuttx/quickjs.c:52503
    ctx->class_proto[JS_CLASS_STRING_ITERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b53c:	2ca7b823          	sd	a0,720(a5)
    8004b540:	2cb7bc23          	sd	a1,728(a5)
quickjs-nuttx/quickjs.c:52504
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_STRING_ITERATOR],
    8004b544:	603c                	ld	a5,64(s0)
    8004b546:	8522                	mv	a0,s0
    8004b548:	2d07b583          	ld	a1,720(a5)
    8004b54c:	2d87b603          	ld	a2,728(a5)
    8004b550:	9cdf30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
js_random_init():
quickjs-nuttx/quickjs.c:43115
    gettimeofday(&tv, NULL);
    8004b554:	4581                	li	a1,0
    8004b556:	0308                	addi	a0,sp,384
    8004b558:	0cd180ef          	jal	ra,80063e24 <gettimeofday>
quickjs-nuttx/quickjs.c:43116
    ctx->random_state = ((int64_t)tv.tv_sec * 1000000) + tv.tv_usec;
    8004b55c:	18016783          	lwu	a5,384(sp)
    8004b560:	000f4737          	lui	a4,0xf4
    8004b564:	24070713          	addi	a4,a4,576 # f4240 <asinh-0x7ff0bdc0>
    8004b568:	02e787b3          	mul	a5,a5,a4
    8004b56c:	673a                	ld	a4,392(sp)
    8004b56e:	97ba                	add	a5,a5,a4
quickjs-nuttx/quickjs.c:43118
    if (ctx->random_state == 0)
    8004b570:	24078f63          	beqz	a5,8004b7ce <JS_AddIntrinsicBaseObjects+0x776>
quickjs-nuttx/quickjs.c:43116
    ctx->random_state = ((int64_t)tv.tv_sec * 1000000) + tv.tv_usec;
    8004b574:	18f43423          	sd	a5,392(s0)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52510
    JS_SetPropertyFunctionList(ctx, ctx->global_obj, js_math_obj, countof(js_math_obj));
    8004b578:	16843583          	ld	a1,360(s0)
    8004b57c:	17043603          	ld	a2,368(s0)
    8004b580:	4705                	li	a4,1
    8004b582:	00027697          	auipc	a3,0x27
    8004b586:	42e68693          	addi	a3,a3,1070 # 800729b0 <js_math_obj>
    8004b58a:	8522                	mv	a0,s0
    8004b58c:	991f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52513
    JS_SetPropertyFunctionList(ctx, ctx->global_obj, js_reflect_obj, countof(js_reflect_obj));
    8004b590:	17043603          	ld	a2,368(s0)
    8004b594:	16843583          	ld	a1,360(s0)
    8004b598:	4705                	li	a4,1
    8004b59a:	00028697          	auipc	a3,0x28
    8004b59e:	f8e68693          	addi	a3,a3,-114 # 80073528 <js_reflect_obj>
    8004b5a2:	8522                	mv	a0,s0
    8004b5a4:	979f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52516
    ctx->class_proto[JS_CLASS_SYMBOL] = JS_NewObject(ctx);
    8004b5a8:	8522                	mv	a0,s0
    8004b5aa:	a7bd00ef          	jal	ra,8001c024 <JS_NewObject>
    8004b5ae:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:52517
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SYMBOL], js_symbol_proto_funcs,
    8004b5b0:	4715                	li	a4,5
    8004b5b2:	00029697          	auipc	a3,0x29
    8004b5b6:	07668693          	addi	a3,a3,118 # 80074628 <js_symbol_proto_funcs>
quickjs-nuttx/quickjs.c:52516
    ctx->class_proto[JS_CLASS_SYMBOL] = JS_NewObject(ctx);
    8004b5ba:	fba8                	sd	a0,112(a5)
    8004b5bc:	ffac                	sd	a1,120(a5)
quickjs-nuttx/quickjs.c:52517
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SYMBOL], js_symbol_proto_funcs,
    8004b5be:	603c                	ld	a5,64(s0)
    8004b5c0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52523
    for(i = JS_ATOM_Symbol_toPrimitive; i < JS_ATOM_END; i++) {
    8004b5c2:	0d500493          	li	s1,213
quickjs-nuttx/quickjs.c:52517
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SYMBOL], js_symbol_proto_funcs,
    8004b5c6:	7bac                	ld	a1,112(a5)
    8004b5c8:	7fb0                	ld	a2,120(a5)
quickjs-nuttx/quickjs.c:52523
    for(i = JS_ATOM_Symbol_toPrimitive; i < JS_ATOM_END; i++) {
    8004b5ca:	0e300a13          	li	s4,227
quickjs-nuttx/quickjs.c:52517
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_SYMBOL], js_symbol_proto_funcs,
    8004b5ce:	94ff30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52519
    obj = JS_NewGlobalCConstructor(ctx, "Symbol", js_symbol_constructor, 0,
    8004b5d2:	603c                	ld	a5,64(s0)
    8004b5d4:	4681                	li	a3,0
    8004b5d6:	fffd6617          	auipc	a2,0xfffd6
    8004b5da:	59860613          	addi	a2,a2,1432 # 80021b6e <js_symbol_constructor>
    8004b5de:	7bb8                	ld	a4,112(a5)
    8004b5e0:	7fbc                	ld	a5,120(a5)
    8004b5e2:	00022597          	auipc	a1,0x22
    8004b5e6:	29658593          	addi	a1,a1,662 # 8006d878 <qjsc_repl+0x82c8>
    8004b5ea:	8522                	mv	a0,s0
    8004b5ec:	da7e50ef          	jal	ra,80031392 <JS_NewGlobalCConstructor>
    8004b5f0:	862e                	mv	a2,a1
    8004b5f2:	f02a                	sd	a0,32(sp)
    8004b5f4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:52521
    JS_SetPropertyFunctionList(ctx, obj, js_symbol_funcs,
    8004b5f6:	4709                	li	a4,2
    8004b5f8:	85aa                	mv	a1,a0
    8004b5fa:	00029697          	auipc	a3,0x29
    8004b5fe:	fee68693          	addi	a3,a3,-18 # 800745e8 <js_symbol_funcs>
    8004b602:	8522                	mv	a0,s0
    8004b604:	919f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52526
        str = JS_AtomGetStr(ctx, buf, sizeof(buf), i);
    8004b608:	0004899b          	sext.w	s3,s1
    8004b60c:	030c                	addi	a1,sp,384
    8004b60e:	864e                	mv	a2,s3
    8004b610:	8522                	mv	a0,s0
    8004b612:	e05be0ef          	jal	ra,8000a416 <JS_AtomGetStr.constprop.0>
quickjs-nuttx/quickjs.c:52528
        p = strchr(str, '.');
    8004b616:	02e00593          	li	a1,46
quickjs-nuttx/quickjs.c:52526
        str = JS_AtomGetStr(ctx, buf, sizeof(buf), i);
    8004b61a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:52528
        p = strchr(str, '.');
    8004b61c:	6f2180ef          	jal	ra,80063d0e <strchr>
quickjs-nuttx/quickjs.c:52529
        if (p)
    8004b620:	c119                	beqz	a0,8004b626 <JS_AddIntrinsicBaseObjects+0x5ce>
quickjs-nuttx/quickjs.c:52530
            str = p + 1;
    8004b622:	00150913          	addi	s2,a0,1
quickjs-nuttx/quickjs.c:52531 (discriminator 2)
        JS_DefinePropertyValueStr(ctx, obj, str, JS_AtomToValue(ctx, i), 0);
    8004b626:	85ce                	mv	a1,s3
    8004b628:	8522                	mv	a0,s0
    8004b62a:	c9ed40ef          	jal	ra,8001fac8 <JS_AtomToValue>
    8004b62e:	87ae                	mv	a5,a1
    8004b630:	f5ae                	sd	a1,232(sp)
    8004b632:	7622                	ld	a2,40(sp)
    8004b634:	7582                	ld	a1,32(sp)
    8004b636:	872a                	mv	a4,a0
    8004b638:	f1aa                	sd	a0,224(sp)
    8004b63a:	4801                	li	a6,0
    8004b63c:	86ca                	mv	a3,s2
    8004b63e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:52523 (discriminator 2)
    for(i = JS_ATOM_Symbol_toPrimitive; i < JS_ATOM_END; i++) {
    8004b640:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:52531 (discriminator 2)
        JS_DefinePropertyValueStr(ctx, obj, str, JS_AtomToValue(ctx, i), 0);
    8004b642:	a33e50ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs.c:52523 (discriminator 2)
    for(i = JS_ATOM_Symbol_toPrimitive; i < JS_ATOM_END; i++) {
    8004b646:	fd4491e3          	bne	s1,s4,8004b608 <JS_AddIntrinsicBaseObjects+0x5b0>
quickjs-nuttx/quickjs.c:52535
    ctx->class_proto[JS_CLASS_GENERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b64a:	12043603          	ld	a2,288(s0)
    8004b64e:	11843583          	ld	a1,280(s0)
    8004b652:	8522                	mv	a0,s0
    8004b654:	977d00ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004b658:	603c                	ld	a5,64(s0)
quickjs-nuttx/quickjs.c:52536
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_GENERATOR],
    8004b65a:	4711                	li	a4,4
    8004b65c:	00027697          	auipc	a3,0x27
    8004b660:	8e468693          	addi	a3,a3,-1820 # 80071f40 <js_generator_proto_funcs>
quickjs-nuttx/quickjs.c:52535
    ctx->class_proto[JS_CLASS_GENERATOR] = JS_NewObjectProto(ctx, ctx->iterator_proto);
    8004b664:	2ea7b823          	sd	a0,752(a5)
    8004b668:	2eb7bc23          	sd	a1,760(a5)
quickjs-nuttx/quickjs.c:52536
    JS_SetPropertyFunctionList(ctx, ctx->class_proto[JS_CLASS_GENERATOR],
    8004b66c:	603c                	ld	a5,64(s0)
    8004b66e:	8522                	mv	a0,s0
    8004b670:	2f07b583          	ld	a1,752(a5)
    8004b674:	2f87b603          	ld	a2,760(a5)
    8004b678:	8a5f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52540
    ctx->class_proto[JS_CLASS_GENERATOR_FUNCTION] = JS_NewObjectProto(ctx, ctx->function_proto);
    8004b67c:	6830                	ld	a2,80(s0)
    8004b67e:	642c                	ld	a1,72(s0)
    8004b680:	8522                	mv	a0,s0
    8004b682:	949d00ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8004b686:	603c                	ld	a5,64(s0)
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    return JS_NewCFunction2(ctx, (JSCFunction *)func, name, length, cproto, magic);
    8004b688:	4715                	li	a4,5
    8004b68a:	4685                	li	a3,1
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52540
    8004b68c:	10a7b023          	sd	a0,256(a5)
    8004b690:	10b7b423          	sd	a1,264(a5)
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8004b694:	00022617          	auipc	a2,0x22
    8004b698:	1ec60613          	addi	a2,a2,492 # 8006d880 <qjsc_repl+0x82d0>
    8004b69c:	4785                	li	a5,1
    8004b69e:	8522                	mv	a0,s0
    8004b6a0:	fffdd597          	auipc	a1,0xfffdd
    8004b6a4:	80e58593          	addi	a1,a1,-2034 # 80027eae <js_function_constructor>
    8004b6a8:	c5ae50ef          	jal	ra,80030b02 <JS_NewCFunction2>
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52544
    JS_SetPropertyFunctionList(ctx,
    8004b6ac:	603c                	ld	a5,64(s0)
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8004b6ae:	e6ae                	sd	a1,328(sp)
    8004b6b0:	e4ae                	sd	a1,72(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52544
    8004b6b2:	1087b603          	ld	a2,264(a5)
    8004b6b6:	1007b583          	ld	a1,256(a5)
JS_NewCFunctionMagic():
quickjs-nuttx/quickjs.h:970
    8004b6ba:	e2aa                	sd	a0,320(sp)
    8004b6bc:	e0aa                	sd	a0,64(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52544
    8004b6be:	4705                	li	a4,1
    8004b6c0:	8522                	mv	a0,s0
    8004b6c2:	00027697          	auipc	a3,0x27
    8004b6c6:	85e68693          	addi	a3,a3,-1954 # 80071f20 <js_generator_function_proto_funcs>
    8004b6ca:	853f30ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs.c:52548
    JS_SetConstructor2(ctx, ctx->class_proto[JS_CLASS_GENERATOR_FUNCTION],
    8004b6ce:	6030                	ld	a2,64(s0)
    8004b6d0:	8522                	mv	a0,s0
    8004b6d2:	4805                	li	a6,1
    8004b6d4:	2f063683          	ld	a3,752(a2)
    8004b6d8:	2f863703          	ld	a4,760(a2)
    8004b6dc:	10063583          	ld	a1,256(a2)
    8004b6e0:	10863603          	ld	a2,264(a2)
    8004b6e4:	4785                	li	a5,1
    8004b6e6:	bf9e50ef          	jal	ra,800312de <JS_SetConstructor2>
quickjs-nuttx/quickjs.c:52551
    JS_SetConstructor2(ctx, obj1, ctx->class_proto[JS_CLASS_GENERATOR_FUNCTION],
    8004b6ea:	6038                	ld	a4,64(s0)
    8004b6ec:	6586                	ld	a1,64(sp)
    8004b6ee:	6626                	ld	a2,72(sp)
    8004b6f0:	10073683          	ld	a3,256(a4)
    8004b6f4:	10873703          	ld	a4,264(a4)
    8004b6f8:	4805                	li	a6,1
    8004b6fa:	4781                	li	a5,0
    8004b6fc:	8522                	mv	a0,s0
    8004b6fe:	be1e50ef          	jal	ra,800312de <JS_SetConstructor2>
quickjs-nuttx/quickjs.c:52553
    JS_FreeValue(ctx, obj1);
    8004b702:	6586                	ld	a1,64(sp)
    8004b704:	6626                	ld	a2,72(sp)
    8004b706:	8522                	mv	a0,s0
    8004b708:	896c00ef          	jal	ra,8000b79e <JS_FreeValue>
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    return JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_generic, 0);
    8004b70c:	4781                	li	a5,0
    8004b70e:	4701                	li	a4,0
    8004b710:	4685                	li	a3,1
    8004b712:	0001a617          	auipc	a2,0x1a
    8004b716:	c3e60613          	addi	a2,a2,-962 # 80065350 <__clz_tab+0x508>
    8004b71a:	8522                	mv	a0,s0
    8004b71c:	fffdd597          	auipc	a1,0xfffdd
    8004b720:	98058593          	addi	a1,a1,-1664 # 8002809c <js_global_eval>
    8004b724:	bdee50ef          	jal	ra,80030b02 <JS_NewCFunction2>
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52556
    ctx->eval_obj = JS_NewCFunction(ctx, js_global_eval, "eval", 1);
    8004b728:	14a43c23          	sd	a0,344(s0)
    8004b72c:	16b43023          	sd	a1,352(s0)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8004b730:	e32a                	sd	a0,384(sp)
    8004b732:	e72e                	sd	a1,392(sp)
    8004b734:	faaa                	sd	a0,368(sp)
    8004b736:	feae                	sd	a1,376(sp)
JS_AddIntrinsicBaseObjects():
quickjs-nuttx/quickjs.c:52557
    JS_DefinePropertyValue(ctx, ctx->global_obj, JS_ATOM_eval,
    8004b738:	ce3be0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004b73c:	17043603          	ld	a2,368(s0)
    8004b740:	87ae                	mv	a5,a1
    8004b742:	16843583          	ld	a1,360(s0)
    8004b746:	872a                	mv	a4,a0
    8004b748:	480d                	li	a6,3
    8004b74a:	03b00693          	li	a3,59
    8004b74e:	8522                	mv	a0,s0
    8004b750:	addcc0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:52561
    JS_DefinePropertyValue(ctx, ctx->global_obj, JS_ATOM_globalThis,
    8004b754:	16843503          	ld	a0,360(s0)
    8004b758:	17043583          	ld	a1,368(s0)
    8004b75c:	cbfbe0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004b760:	faaa                	sd	a0,368(sp)
    8004b762:	feae                	sd	a1,376(sp)
    8004b764:	17043603          	ld	a2,368(s0)
    8004b768:	872a                	mv	a4,a0
    8004b76a:	87ae                	mv	a5,a1
    8004b76c:	8522                	mv	a0,s0
    8004b76e:	16843583          	ld	a1,360(s0)
quickjs-nuttx/quickjs.c:52564
}
    8004b772:	23013403          	ld	s0,560(sp)
    8004b776:	23813083          	ld	ra,568(sp)
    8004b77a:	22813483          	ld	s1,552(sp)
    8004b77e:	22013903          	ld	s2,544(sp)
    8004b782:	21813983          	ld	s3,536(sp)
    8004b786:	21013a03          	ld	s4,528(sp)
    8004b78a:	20813a83          	ld	s5,520(sp)
    8004b78e:	20013b03          	ld	s6,512(sp)
quickjs-nuttx/quickjs.c:52561
    JS_DefinePropertyValue(ctx, ctx->global_obj, JS_ATOM_globalThis,
    8004b792:	480d                	li	a6,3
    8004b794:	08c00693          	li	a3,140
quickjs-nuttx/quickjs.c:52564
}
    8004b798:	24010113          	addi	sp,sp,576
quickjs-nuttx/quickjs.c:52561
    JS_DefinePropertyValue(ctx, ctx->global_obj, JS_ATOM_globalThis,
    8004b79c:	a91cc06f          	j	8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:52403
        n_args = 1 + (i == JS_AGGREGATE_ERROR);
    8004b7a0:	4689                	li	a3,2
    8004b7a2:	01648363          	beq	s1,s6,8004b7a8 <JS_AddIntrinsicBaseObjects+0x750>
    8004b7a6:	4685                	li	a3,1
    8004b7a8:	0921                	addi	s2,s2,8
    8004b7aa:	bc75                	j	8004b266 <JS_AddIntrinsicBaseObjects+0x20e>
quickjs-nuttx/quickjs.c:52450 (discriminator 3)
            JS_DefinePropertyValueStr(ctx, obj1, p, JS_TRUE, JS_PROP_C_W_E);
    8004b7ac:	6586                	ld	a1,64(sp)
    8004b7ae:	6626                	ld	a2,72(sp)
    8004b7b0:	86a6                	mv	a3,s1
    8004b7b2:	481d                	li	a6,7
    8004b7b4:	4705                	li	a4,1
    8004b7b6:	4785                	li	a5,1
    8004b7b8:	8522                	mv	a0,s0
    8004b7ba:	faca                	sd	s2,368(sp)
    8004b7bc:	feca                	sd	s2,376(sp)
    8004b7be:	8b7e50ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs.c:52449 (discriminator 3)
        for(p = unscopables; *p; p += strlen(p) + 1) {
    8004b7c2:	8526                	mv	a0,s1
    8004b7c4:	5be180ef          	jal	ra,80063d82 <strlen>
    8004b7c8:	0505                	addi	a0,a0,1
    8004b7ca:	94aa                	add	s1,s1,a0
    8004b7cc:	be95                	j	8004b340 <JS_AddIntrinsicBaseObjects+0x2e8>
js_random_init():
quickjs-nuttx/quickjs.c:43119
        ctx->random_state = 1;
    8004b7ce:	19243423          	sd	s2,392(s0)
    8004b7d2:	b35d                	j	8004b578 <JS_AddIntrinsicBaseObjects+0x520>

000000008004b7d4 <JS_NewArrayBuffer>:
JS_NewArrayBuffer():
quickjs-nuttx/quickjs.c:52658
{
    8004b7d4:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:52659
    return js_array_buffer_constructor3(ctx, JS_UNDEFINED, len,
    8004b7d6:	00f03333          	snez	t1,a5
    8004b7da:	e002                	sd	zero,0(sp)
    8004b7dc:	88ba                	mv	a7,a4
    8004b7de:	8836                	mv	a6,a3
    8004b7e0:	87ae                	mv	a5,a1
    8004b7e2:	86b2                	mv	a3,a2
    8004b7e4:	01330713          	addi	a4,t1,19
    8004b7e8:	4581                	li	a1,0
    8004b7ea:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:52658
{
    8004b7ec:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:52659
    return js_array_buffer_constructor3(ctx, JS_UNDEFINED, len,
    8004b7ee:	d40d00ef          	jal	ra,8001bd2e <js_array_buffer_constructor3>
quickjs-nuttx/quickjs.c:52662
}
    8004b7f2:	70e2                	ld	ra,56(sp)
    8004b7f4:	6121                	addi	sp,sp,64
    8004b7f6:	8082                	ret

000000008004b7f8 <JS_NewArrayBufferCopy>:
JS_NewArrayBufferCopy():
quickjs-nuttx/quickjs.c:52666
{
    8004b7f8:	7139                	addi	sp,sp,-64
quickjs-nuttx/quickjs.c:52667
    return js_array_buffer_constructor3(ctx, JS_UNDEFINED, len,
    8004b7fa:	4705                	li	a4,1
    8004b7fc:	e03a                	sd	a4,0(sp)
quickjs-nuttx/quickjs.c:52666
{
    8004b7fe:	87ae                	mv	a5,a1
    8004b800:	86b2                	mv	a3,a2
quickjs-nuttx/quickjs.c:52667
    return js_array_buffer_constructor3(ctx, JS_UNDEFINED, len,
    8004b802:	4881                	li	a7,0
    8004b804:	fffbf817          	auipc	a6,0xfffbf
    8004b808:	39a80813          	addi	a6,a6,922 # 8000ab9e <js_array_buffer_free>
    8004b80c:	474d                	li	a4,19
    8004b80e:	4581                	li	a1,0
    8004b810:	460d                	li	a2,3
quickjs-nuttx/quickjs.c:52666
{
    8004b812:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:52667
    return js_array_buffer_constructor3(ctx, JS_UNDEFINED, len,
    8004b814:	d1ad00ef          	jal	ra,8001bd2e <js_array_buffer_constructor3>
quickjs-nuttx/quickjs.c:52672
}
    8004b818:	70e2                	ld	ra,56(sp)
    8004b81a:	6121                	addi	sp,sp,64
    8004b81c:	8082                	ret

000000008004b81e <JS_ReadObjectRec>:
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36439
{
    8004b81e:	dd010113          	addi	sp,sp,-560
    8004b822:	22813023          	sd	s0,544(sp)
    8004b826:	22113423          	sd	ra,552(sp)
    8004b82a:	20913c23          	sd	s1,536(sp)
    8004b82e:	21213823          	sd	s2,528(sp)
    8004b832:	21313423          	sd	s3,520(sp)
    8004b836:	21413023          	sd	s4,512(sp)
    8004b83a:	ffd6                	sd	s5,504(sp)
    8004b83c:	fbda                	sd	s6,496(sp)
    8004b83e:	f7de                	sd	s7,488(sp)
    8004b840:	f3e2                	sd	s8,480(sp)
    8004b842:	efe6                	sd	s9,472(sp)
    8004b844:	ebea                	sd	s10,464(sp)
    8004b846:	e7ee                	sd	s11,456(sp)
    8004b848:	1c00                	addi	s0,sp,560
quickjs-nuttx/quickjs.c:36440
    JSContext *ctx = s->ctx;
    8004b84a:	00053903          	ld	s2,0(a0)
quickjs-nuttx/quickjs.c:36444
    if (js_check_stack_overflow(ctx->rt, 0))
    8004b84e:	01893783          	ld	a5,24(s2)
    8004b852:	6ffc                	ld	a5,216(a5)
    8004b854:	02f47a63          	bgeu	s0,a5,8004b888 <JS_ReadObjectRec+0x6a>
quickjs-nuttx/quickjs.c:36553
}
    8004b858:	22013403          	ld	s0,544(sp)
    8004b85c:	22813083          	ld	ra,552(sp)
    8004b860:	21813483          	ld	s1,536(sp)
    8004b864:	20813983          	ld	s3,520(sp)
    8004b868:	20013a03          	ld	s4,512(sp)
    8004b86c:	7afe                	ld	s5,504(sp)
    8004b86e:	7b5e                	ld	s6,496(sp)
    8004b870:	7bbe                	ld	s7,488(sp)
    8004b872:	7c1e                	ld	s8,480(sp)
    8004b874:	6cfe                	ld	s9,472(sp)
    8004b876:	6d5e                	ld	s10,464(sp)
    8004b878:	6dbe                	ld	s11,456(sp)
quickjs-nuttx/quickjs.c:36445
        return JS_ThrowStackOverflow(ctx);
    8004b87a:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:36553
}
    8004b87c:	21013903          	ld	s2,528(sp)
    8004b880:	23010113          	addi	sp,sp,560
quickjs-nuttx/quickjs.c:36445
        return JS_ThrowStackOverflow(ctx);
    8004b884:	89ece06f          	j	80019922 <JS_ThrowStackOverflow>
quickjs-nuttx/quickjs.c:36447
    if (bc_get_u8(s, &tag))
    8004b888:	def40593          	addi	a1,s0,-529
    8004b88c:	84aa                	mv	s1,a0
    8004b88e:	c0fcc0ef          	jal	ra,8001849c <bc_get_u8>
    8004b892:	c121                	beqz	a0,8004b8d2 <JS_ReadObjectRec+0xb4>
quickjs-nuttx/quickjs.c:36537
                return JS_EXCEPTION;
    8004b894:	4799                	li	a5,6
    8004b896:	de043823          	sd	zero,-528(s0)
    8004b89a:	def43c23          	sd	a5,-520(s0)
quickjs-nuttx/quickjs.c:36553 (discriminator 12)
}
    8004b89e:	df043503          	ld	a0,-528(s0)
    8004b8a2:	df843583          	ld	a1,-520(s0)
    8004b8a6:	22813083          	ld	ra,552(sp)
    8004b8aa:	22013403          	ld	s0,544(sp)
    8004b8ae:	21813483          	ld	s1,536(sp)
    8004b8b2:	21013903          	ld	s2,528(sp)
    8004b8b6:	20813983          	ld	s3,520(sp)
    8004b8ba:	20013a03          	ld	s4,512(sp)
    8004b8be:	7afe                	ld	s5,504(sp)
    8004b8c0:	7b5e                	ld	s6,496(sp)
    8004b8c2:	7bbe                	ld	s7,488(sp)
    8004b8c4:	7c1e                	ld	s8,480(sp)
    8004b8c6:	6cfe                	ld	s9,472(sp)
    8004b8c8:	6d5e                	ld	s10,464(sp)
    8004b8ca:	6dbe                	ld	s11,456(sp)
    8004b8cc:	23010113          	addi	sp,sp,560
    8004b8d0:	8082                	ret
quickjs-nuttx/quickjs.c:36452
    switch(tag) {
    8004b8d2:	def44983          	lbu	s3,-529(s0)
    8004b8d6:	4751                	li	a4,20
    8004b8d8:	fff9879b          	addiw	a5,s3,-1
    8004b8dc:	0ff7f793          	zext.b	a5,a5
    8004b8e0:	00098a9b          	sext.w	s5,s3
    8004b8e4:	00f77463          	bgeu	a4,a5,8004b8ec <JS_ReadObjectRec+0xce>
    8004b8e8:	77b0006f          	j	8004c862 <JS_ReadObjectRec+0x1044>
    8004b8ec:	00022717          	auipc	a4,0x22
    8004b8f0:	07870713          	addi	a4,a4,120 # 8006d964 <qjsc_repl+0x83b4>
    8004b8f4:	078a                	slli	a5,a5,0x2
    8004b8f6:	97ba                	add	a5,a5,a4
    8004b8f8:	439c                	lw	a5,0(a5)
    8004b8fa:	97ba                	add	a5,a5,a4
    8004b8fc:	8782                	jr	a5
    8004b8fe:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:36454
        obj = JS_NULL;
    8004b900:	4901                	li	s2,0
    8004b902:	a819                	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8004b904:	1af5                	addi	s5,s5,-3
    8004b906:	01503ab3          	snez	s5,s5
    8004b90a:	e0042223          	sw	zero,-508(s0)
    8004b90e:	e1542023          	sw	s5,-512(s0)
    8004b912:	e0043903          	ld	s2,-512(s0)
    8004b916:	4985                	li	s3,1
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36552
    return obj;
    8004b918:	df243823          	sd	s2,-528(s0)
    8004b91c:	df343c23          	sd	s3,-520(s0)
    8004b920:	bfbd                	j	8004b89e <JS_ReadObjectRec+0x80>
bc_get_sleb128():
quickjs-nuttx/quickjs.c:35595
    ret = get_sleb128(pval, s->ptr, s->buf_end);
    8004b922:	6c90                	ld	a2,24(s1)
    8004b924:	688c                	ld	a1,16(s1)
    8004b926:	f1040513          	addi	a0,s0,-240
    8004b92a:	850bd0ef          	jal	ra,8000897a <get_sleb128>
quickjs-nuttx/quickjs.c:35596
    if (unlikely(ret < 0))
    8004b92e:	02055063          	bgez	a0,8004b94e <JS_ReadObjectRec+0x130>
quickjs-nuttx/quickjs.c:35597
        return bc_read_error_end(s);
    8004b932:	8526                	mv	a0,s1
    8004b934:	b41cc0ef          	jal	ra,80018474 <bc_read_error_end>
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36466
            if (bc_get_sleb128(s, &val))
    8004b938:	fd31                	bnez	a0,8004b894 <JS_ReadObjectRec+0x76>
quickjs-nuttx/quickjs.c:36469
            obj = JS_NewInt32(ctx, val);
    8004b93a:	f1042783          	lw	a5,-240(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004b93e:	e0043823          	sd	zero,-496(s0)
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36471
        break;
    8004b942:	4981                	li	s3,0
    8004b944:	e0f42823          	sw	a5,-496(s0)
    8004b948:	e1043903          	ld	s2,-496(s0)
    8004b94c:	b7f1                	j	8004b918 <JS_ReadObjectRec+0xfa>
bc_get_sleb128():
quickjs-nuttx/quickjs.c:35598
    s->ptr += ret;
    8004b94e:	689c                	ld	a5,16(s1)
    8004b950:	953e                	add	a0,a0,a5
    8004b952:	e888                	sd	a0,16(s1)
quickjs-nuttx/quickjs.c:35599
    return 0;
    8004b954:	b7dd                	j	8004b93a <JS_ReadObjectRec+0x11c>
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36475
            if (bc_get_u64(s, &u.u64))
    8004b956:	f1040593          	addi	a1,s0,-240
    8004b95a:	8526                	mv	a0,s1
    8004b95c:	bbdcc0ef          	jal	ra,80018518 <bc_get_u64>
    8004b960:	f915                	bnez	a0,8004b894 <JS_ReadObjectRec+0x76>
quickjs-nuttx/quickjs.h:230
    return v;
    8004b962:	f1043903          	ld	s2,-240(s0)
quickjs-nuttx/quickjs.c:36480
        break;
    8004b966:	499d                	li	s3,7
    8004b968:	bf45                	j	8004b918 <JS_ReadObjectRec+0xfa>
quickjs-nuttx/quickjs.c:36484
            p = JS_ReadString(s);
    8004b96a:	8526                	mv	a0,s1
    8004b96c:	e58d20ef          	jal	ra,8001dfc4 <JS_ReadString>
    8004b970:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:36487
            obj = JS_MKPTR(JS_TAG_STRING, p);
    8004b972:	59e5                	li	s3,-7
quickjs-nuttx/quickjs.c:36485
            if (!p)
    8004b974:	f155                	bnez	a0,8004b918 <JS_ReadObjectRec+0xfa>
    8004b976:	bf39                	j	8004b894 <JS_ReadObjectRec+0x76>
quickjs-nuttx/quickjs.c:36491
        if (!s->allow_bytecode)
    8004b978:	0354c783          	lbu	a5,53(s1)
    8004b97c:	e399                	bnez	a5,8004b982 <JS_ReadObjectRec+0x164>
    8004b97e:	6e50006f          	j	8004c862 <JS_ReadObjectRec+0x1044>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35926
    memset(&bc, 0, sizeof(bc));
    8004b982:	08000613          	li	a2,128
    8004b986:	4581                	li	a1,0
    8004b988:	f1040513          	addi	a0,s0,-240
quickjs-nuttx/quickjs.c:35917
    JSContext *ctx = s->ctx;
    8004b98c:	0004ba83          	ld	s5,0(s1)
quickjs-nuttx/quickjs.c:35926
    memset(&bc, 0, sizeof(bc));
    8004b990:	2b2180ef          	jal	ra,80063c42 <memset>
bc_get_u16():
quickjs-nuttx/quickjs.c:35551
    if (unlikely(s->buf_end - s->ptr < 2)) {
    8004b994:	6898                	ld	a4,16(s1)
    8004b996:	6c9c                	ld	a5,24(s1)
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35927
    bc.header.ref_count = 1;
    8004b998:	4685                	li	a3,1
    8004b99a:	f0d42823          	sw	a3,-240(s0)
bc_get_u16():
quickjs-nuttx/quickjs.c:35551
    if (unlikely(s->buf_end - s->ptr < 2)) {
    8004b99e:	8f99                	sub	a5,a5,a4
    8004b9a0:	00f6ca63          	blt	a3,a5,8004b9b4 <JS_ReadObjectRec+0x196>
quickjs-nuttx/quickjs.c:35553
        return bc_read_error_end(s);
    8004b9a4:	8526                	mv	a0,s1
    8004b9a6:	acfcc0ef          	jal	ra,80018474 <bc_read_error_end>
quickjs-nuttx/quickjs.c:35552
        *pval = 0; /* avoid warning */
    8004b9aa:	4781                	li	a5,0
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35930
    if (bc_get_u16(s, &v16))
    8004b9ac:	cd01                	beqz	a0,8004b9c4 <JS_ReadObjectRec+0x1a6>
quickjs-nuttx/quickjs.c:35919
    JSValue obj = JS_UNDEFINED;
    8004b9ae:	498d                	li	s3,3
    8004b9b0:	4901                	li	s2,0
    8004b9b2:	a995                	j	8004be26 <JS_ReadObjectRec+0x608>
get_u16():
quickjs-nuttx/cutils.h:185
    return ((const struct packed_u16 *)tab)->v;
    8004b9b4:	00174783          	lbu	a5,1(a4)
    8004b9b8:	00074683          	lbu	a3,0(a4)
bc_get_u16():
quickjs-nuttx/quickjs.c:35556
    s->ptr += 2;
    8004b9bc:	0709                	addi	a4,a4,2
get_u16():
quickjs-nuttx/cutils.h:185
    8004b9be:	07a2                	slli	a5,a5,0x8
    8004b9c0:	8fd5                	or	a5,a5,a3
bc_get_u16():
quickjs-nuttx/quickjs.c:35556
    8004b9c2:	e898                	sd	a4,16(s1)
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35933
    bc.has_prototype = bc_get_flags(v16, &idx, 1);
    8004b9c4:	0007871b          	sext.w	a4,a5
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004b9c8:	0017561b          	srliw	a2,a4,0x1
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35933
    bc.has_prototype = bc_get_flags(v16, &idx, 1);
    8004b9cc:	8a05                	andi	a2,a2,1
    8004b9ce:	0016161b          	slliw	a2,a2,0x1
    8004b9d2:	8b85                	andi	a5,a5,1
    8004b9d4:	8fd1                	or	a5,a5,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004b9d6:	0027561b          	srliw	a2,a4,0x2
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35933
    bc.has_prototype = bc_get_flags(v16, &idx, 1);
    8004b9da:	8a05                	andi	a2,a2,1
    8004b9dc:	0026161b          	slliw	a2,a2,0x2
    8004b9e0:	8fd1                	or	a5,a5,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004b9e2:	0037561b          	srliw	a2,a4,0x3
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35933
    bc.has_prototype = bc_get_flags(v16, &idx, 1);
    8004b9e6:	8a05                	andi	a2,a2,1
    8004b9e8:	0036161b          	slliw	a2,a2,0x3
    8004b9ec:	8fd1                	or	a5,a5,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004b9ee:	0047561b          	srliw	a2,a4,0x4
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35933
    bc.has_prototype = bc_get_flags(v16, &idx, 1);
    8004b9f2:	8a0d                	andi	a2,a2,3
    8004b9f4:	0046161b          	slliw	a2,a2,0x4
    8004b9f8:	8fd1                	or	a5,a5,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004b9fa:	0067561b          	srliw	a2,a4,0x6
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35933
    bc.has_prototype = bc_get_flags(v16, &idx, 1);
    8004b9fe:	8a05                	andi	a2,a2,1
    8004ba00:	0066161b          	slliw	a2,a2,0x6
    8004ba04:	8fd1                	or	a5,a5,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004ba06:	0077561b          	srliw	a2,a4,0x7
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35933
    bc.has_prototype = bc_get_flags(v16, &idx, 1);
    8004ba0a:	0076161b          	slliw	a2,a2,0x7
    8004ba0e:	8fd1                	or	a5,a5,a2
    8004ba10:	f2f404a3          	sb	a5,-215(s0)
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004ba14:	0097579b          	srliw	a5,a4,0x9
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35940
    bc.super_allowed = bc_get_flags(v16, &idx, 1);
    8004ba18:	8b85                	andi	a5,a5,1
    8004ba1a:	0017961b          	slliw	a2,a5,0x1
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004ba1e:	0087579b          	srliw	a5,a4,0x8
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35940
    bc.super_allowed = bc_get_flags(v16, &idx, 1);
    8004ba22:	8b85                	andi	a5,a5,1
    8004ba24:	8fd1                	or	a5,a5,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004ba26:	00a7561b          	srliw	a2,a4,0xa
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35940
    bc.super_allowed = bc_get_flags(v16, &idx, 1);
    8004ba2a:	8a05                	andi	a2,a2,1
    8004ba2c:	0026161b          	slliw	a2,a2,0x2
quickjs-nuttx/quickjs.c:35945
    bc.read_only_bytecode = s->is_rom_data;
    8004ba30:	03648683          	lb	a3,54(s1)
quickjs-nuttx/quickjs.c:35940
    bc.super_allowed = bc_get_flags(v16, &idx, 1);
    8004ba34:	8fd1                	or	a5,a5,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004ba36:	00b7561b          	srliw	a2,a4,0xb
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35940
    bc.super_allowed = bc_get_flags(v16, &idx, 1);
    8004ba3a:	8a05                	andi	a2,a2,1
    8004ba3c:	0036161b          	slliw	a2,a2,0x3
    8004ba40:	0046969b          	slliw	a3,a3,0x4
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004ba44:	00c7571b          	srliw	a4,a4,0xc
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35940
    bc.super_allowed = bc_get_flags(v16, &idx, 1);
    8004ba48:	8fd1                	or	a5,a5,a2
    8004ba4a:	8ac1                	andi	a3,a3,16
    8004ba4c:	8b05                	andi	a4,a4,1
    8004ba4e:	8fd5                	or	a5,a5,a3
    8004ba50:	0057171b          	slliw	a4,a4,0x5
    8004ba54:	8f5d                	or	a4,a4,a5
    8004ba56:	f2a44783          	lbu	a5,-214(s0)
quickjs-nuttx/quickjs.c:35946
    if (bc_get_u8(s, &v8))
    8004ba5a:	ee040593          	addi	a1,s0,-288
    8004ba5e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:35940
    bc.super_allowed = bc_get_flags(v16, &idx, 1);
    8004ba60:	fc07f793          	andi	a5,a5,-64
    8004ba64:	8f5d                	or	a4,a4,a5
    8004ba66:	f2e40523          	sb	a4,-214(s0)
quickjs-nuttx/quickjs.c:35946
    if (bc_get_u8(s, &v8))
    8004ba6a:	a33cc0ef          	jal	ra,8001849c <bc_get_u8>
    8004ba6e:	f121                	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
quickjs-nuttx/quickjs.c:35948
    bc.js_mode = v8;
    8004ba70:	ee044783          	lbu	a5,-288(s0)
quickjs-nuttx/quickjs.c:35949
    if (bc_get_atom(s, &bc.func_name))  //@ atom leak if failure
    8004ba74:	f3c40593          	addi	a1,s0,-196
    8004ba78:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:35948
    bc.js_mode = v8;
    8004ba7a:	f2f40423          	sb	a5,-216(s0)
quickjs-nuttx/quickjs.c:35949
    if (bc_get_atom(s, &bc.func_name))  //@ atom leak if failure
    8004ba7e:	badcc0ef          	jal	ra,8001862a <bc_get_atom>
    8004ba82:	f515                	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
quickjs-nuttx/quickjs.c:35951
    if (bc_get_leb128_u16(s, &bc.arg_count))
    8004ba84:	f5040593          	addi	a1,s0,-176
    8004ba88:	8526                	mv	a0,s1
    8004ba8a:	a69cc0ef          	jal	ra,800184f2 <bc_get_leb128_u16>
    8004ba8e:	f105                	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
quickjs-nuttx/quickjs.c:35953
    if (bc_get_leb128_u16(s, &bc.var_count))
    8004ba90:	f5240593          	addi	a1,s0,-174
    8004ba94:	8526                	mv	a0,s1
    8004ba96:	a5dcc0ef          	jal	ra,800184f2 <bc_get_leb128_u16>
    8004ba9a:	f911                	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
quickjs-nuttx/quickjs.c:35955
    if (bc_get_leb128_u16(s, &bc.defined_arg_count))
    8004ba9c:	f5440593          	addi	a1,s0,-172
    8004baa0:	8526                	mv	a0,s1
    8004baa2:	a51cc0ef          	jal	ra,800184f2 <bc_get_leb128_u16>
    8004baa6:	f00514e3          	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
quickjs-nuttx/quickjs.c:35957
    if (bc_get_leb128_u16(s, &bc.stack_size))
    8004baaa:	f5640593          	addi	a1,s0,-170
    8004baae:	8526                	mv	a0,s1
    8004bab0:	a43cc0ef          	jal	ra,800184f2 <bc_get_leb128_u16>
    8004bab4:	ee051de3          	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bab8:	f6c40593          	addi	a1,s0,-148
    8004babc:	8526                	mv	a0,s1
    8004babe:	a03cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35959
    if (bc_get_leb128_int(s, &bc.closure_var_count))
    8004bac2:	ee0516e3          	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bac6:	f6840593          	addi	a1,s0,-152
    8004baca:	8526                	mv	a0,s1
    8004bacc:	9f5cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35961
    if (bc_get_leb128_int(s, &bc.cpool_count))
    8004bad0:	ec051fe3          	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bad4:	f3840593          	addi	a1,s0,-200
    8004bad8:	8526                	mv	a0,s1
    8004bada:	9e7cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35963
    if (bc_get_leb128_int(s, &bc.byte_code_len))
    8004bade:	ec0518e3          	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bae2:	ef040593          	addi	a1,s0,-272
    8004bae6:	8526                	mv	a0,s1
    8004bae8:	9d9cc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004baec:	8b2a                	mv	s6,a0
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:35965
    if (bc_get_leb128_int(s, &local_count))
    8004baee:	ec0510e3          	bnez	a0,8004b9ae <JS_ReadObjectRec+0x190>
quickjs-nuttx/quickjs.c:35968
    if (bc.has_debug) {
    8004baf2:	f2a44683          	lbu	a3,-214(s0)
quickjs-nuttx/quickjs.c:35969
        function_size = sizeof(*b);
    8004baf6:	08000c93          	li	s9,128
quickjs-nuttx/quickjs.c:35968
    if (bc.has_debug) {
    8004bafa:	0046f793          	andi	a5,a3,4
    8004bafe:	e399                	bnez	a5,8004bb04 <JS_ReadObjectRec+0x2e6>
quickjs-nuttx/quickjs.c:35971
        function_size = offsetof(JSFunctionBytecode, debug);
    8004bb00:	06000c93          	li	s9,96
quickjs-nuttx/quickjs.c:35974
    function_size += bc.cpool_count * sizeof(*bc.cpool);
    8004bb04:	f6842783          	lw	a5,-152(s0)
quickjs-nuttx/quickjs.c:35976
    function_size += local_count * sizeof(*bc.vardefs);
    8004bb08:	ef042b83          	lw	s7,-272(s0)
quickjs-nuttx/quickjs.c:35978
    function_size += bc.closure_var_count * sizeof(*bc.closure_var);
    8004bb0c:	f6c42703          	lw	a4,-148(s0)
quickjs-nuttx/quickjs.c:35974
    function_size += bc.cpool_count * sizeof(*bc.cpool);
    8004bb10:	0047979b          	slliw	a5,a5,0x4
    8004bb14:	01978c3b          	addw	s8,a5,s9
quickjs-nuttx/quickjs.c:35976
    function_size += local_count * sizeof(*bc.vardefs);
    8004bb18:	004b9b9b          	slliw	s7,s7,0x4
    8004bb1c:	018b8bbb          	addw	s7,s7,s8
quickjs-nuttx/quickjs.c:35978
    function_size += bc.closure_var_count * sizeof(*bc.closure_var);
    8004bb20:	0037171b          	slliw	a4,a4,0x3
    8004bb24:	01770a3b          	addw	s4,a4,s7
quickjs-nuttx/quickjs.c:35980
    if (!bc.read_only_bytecode) {
    8004bb28:	8ac1                	andi	a3,a3,16
quickjs-nuttx/quickjs.c:35978
    function_size += bc.closure_var_count * sizeof(*bc.closure_var);
    8004bb2a:	85d2                	mv	a1,s4
quickjs-nuttx/quickjs.c:35980
    if (!bc.read_only_bytecode) {
    8004bb2c:	e689                	bnez	a3,8004bb36 <JS_ReadObjectRec+0x318>
quickjs-nuttx/quickjs.c:35981
        function_size += bc.byte_code_len;
    8004bb2e:	f3842583          	lw	a1,-200(s0)
    8004bb32:	014585bb          	addw	a1,a1,s4
quickjs-nuttx/quickjs.c:35984
    b = js_mallocz(ctx, function_size);
    8004bb36:	8556                	mv	a0,s5
    8004bb38:	e00cf0ef          	jal	ra,8001b138 <js_mallocz>
    8004bb3c:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:35986
        return JS_EXCEPTION;
    8004bb3e:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:35985
    if (!b)
    8004bb40:	dc050ce3          	beqz	a0,8004b918 <JS_ReadObjectRec+0xfa>
quickjs-nuttx/quickjs.c:35988
    memcpy(b, &bc, offsetof(JSFunctionBytecode, debug));
    8004bb44:	06000613          	li	a2,96
    8004bb48:	f1040593          	addi	a1,s0,-240
    8004bb4c:	260180ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs.c:35989
    b->header.ref_count = 1;
    8004bb50:	4785                	li	a5,1
    8004bb52:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:35990
    if (local_count != 0) {
    8004bb56:	ef042683          	lw	a3,-272(s0)
    8004bb5a:	c691                	beqz	a3,8004bb66 <JS_ReadObjectRec+0x348>
quickjs-nuttx/quickjs.c:35991
        b->vardefs = (void *)((uint8_t*)b + vardefs_offset);
    8004bb5c:	000c079b          	sext.w	a5,s8
    8004bb60:	97ca                	add	a5,a5,s2
    8004bb62:	02f93823          	sd	a5,48(s2)
quickjs-nuttx/quickjs.c:35993
    if (b->closure_var_count != 0) {
    8004bb66:	05c92783          	lw	a5,92(s2)
    8004bb6a:	c781                	beqz	a5,8004bb72 <JS_ReadObjectRec+0x354>
quickjs-nuttx/quickjs.c:35994
        b->closure_var = (void *)((uint8_t*)b + closure_var_offset);
    8004bb6c:	9bca                	add	s7,s7,s2
    8004bb6e:	03793c23          	sd	s7,56(s2)
quickjs-nuttx/quickjs.c:35996
    if (b->cpool_count != 0) {
    8004bb72:	05892783          	lw	a5,88(s2)
    8004bb76:	c789                	beqz	a5,8004bb80 <JS_ReadObjectRec+0x362>
quickjs-nuttx/quickjs.c:35997
        b->cpool = (void *)((uint8_t*)b + cpool_offset);
    8004bb78:	019907b3          	add	a5,s2,s9
    8004bb7c:	04f93823          	sd	a5,80(s2)
quickjs-nuttx/quickjs.c:36000
    add_gc_object(ctx->rt, &b->header, JS_GC_OBJ_TYPE_FUNCTION_BYTECODE);
    8004bb80:	018ab703          	ld	a4,24(s5)
add_gc_object():
quickjs-nuttx/quickjs.c:5584
    h->gc_obj_type = type;
    8004bb84:	4785                	li	a5,1
    8004bb86:	00f90223          	sb	a5,4(s2)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    8004bb8a:	6750                	ld	a2,136(a4)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    list_add_tail(&h->link, &rt->gc_obj_list);
    8004bb8c:	00890793          	addi	a5,s2,8
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    8004bb90:	e61c                	sd	a5,8(a2)
quickjs-nuttx/list.h:52
    el->prev = prev;
    8004bb92:	00c93423          	sd	a2,8(s2)
add_gc_object():
quickjs-nuttx/quickjs.c:5585
    8004bb96:	08870613          	addi	a2,a4,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8004bb9a:	00c93823          	sd	a2,16(s2)
quickjs-nuttx/list.h:54
    next->prev = el;
    8004bb9e:	e75c                	sd	a5,136(a4)
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36013
    if (local_count != 0) {
    8004bba0:	ead5                	bnez	a3,8004bc54 <JS_ReadObjectRec+0x436>
quickjs-nuttx/quickjs.c:36037
    if (b->closure_var_count != 0) {
    8004bba2:	05c92783          	lw	a5,92(s2)
quickjs-nuttx/quickjs.c:36039
        for(i = 0; i < b->closure_var_count; i++) {
    8004bba6:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:36037
    if (b->closure_var_count != 0) {
    8004bba8:	12079f63          	bnez	a5,8004bce6 <JS_ReadObjectRec+0x4c8>
JS_ReadFunctionBytecode():
quickjs-nuttx/quickjs.c:35715
    if (s->is_rom_data) {
    8004bbac:	0364c783          	lbu	a5,54(s1)
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36063
        if (JS_ReadFunctionBytecode(s, b, byte_code_offset, b->byte_code_len))
    8004bbb0:	02892b83          	lw	s7,40(s2)
JS_ReadFunctionBytecode():
quickjs-nuttx/quickjs.c:35715
    if (s->is_rom_data) {
    8004bbb4:	12079e63          	bnez	a5,8004bcf0 <JS_ReadObjectRec+0x4d2>
quickjs-nuttx/quickjs.c:35722
        bc_buf = (void *)((uint8_t*)b + byte_code_offset);
    8004bbb8:	9a4a                	add	s4,s4,s2
quickjs-nuttx/quickjs.c:35723
        if (bc_get_buf(s, bc_buf, bc_len))
    8004bbba:	865e                	mv	a2,s7
    8004bbbc:	85d2                	mv	a1,s4
    8004bbbe:	8526                	mv	a0,s1
    8004bbc0:	9b5cc0ef          	jal	ra,80018574 <bc_get_buf>
    8004bbc4:	16050a63          	beqz	a0,8004bd38 <JS_ReadObjectRec+0x51a>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36002
    obj = JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b);
    8004bbc8:	59f9                	li	s3,-2
quickjs-nuttx/quickjs.c:36102
    JS_FreeValue(ctx, obj);
    8004bbca:	acb1                	j	8004be26 <JS_ReadObjectRec+0x608>
quickjs-nuttx/quickjs.c:36016
            JSVarDef *vd = &b->vardefs[i];
    8004bbcc:	03093783          	ld	a5,48(s2)
    8004bbd0:	00499b93          	slli	s7,s3,0x4
quickjs-nuttx/quickjs.c:36017
            if (bc_get_atom(s, &vd->var_name))
    8004bbd4:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36016
            JSVarDef *vd = &b->vardefs[i];
    8004bbd6:	9bbe                	add	s7,s7,a5
quickjs-nuttx/quickjs.c:36017
            if (bc_get_atom(s, &vd->var_name))
    8004bbd8:	85de                	mv	a1,s7
    8004bbda:	a51cc0ef          	jal	ra,8001862a <bc_get_atom>
    8004bbde:	f56d                	bnez	a0,8004bbc8 <JS_ReadObjectRec+0x3aa>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bbe0:	004b8593          	addi	a1,s7,4
    8004bbe4:	8526                	mv	a0,s1
    8004bbe6:	8dbcc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36019
            if (bc_get_leb128_int(s, &vd->scope_level))
    8004bbea:	fd79                	bnez	a0,8004bbc8 <JS_ReadObjectRec+0x3aa>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bbec:	008b8593          	addi	a1,s7,8
    8004bbf0:	8526                	mv	a0,s1
    8004bbf2:	8cfcc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36021
            if (bc_get_leb128_int(s, &vd->scope_next))
    8004bbf6:	f969                	bnez	a0,8004bbc8 <JS_ReadObjectRec+0x3aa>
quickjs-nuttx/quickjs.c:36023
            vd->scope_next--;
    8004bbf8:	008ba783          	lw	a5,8(s7)
quickjs-nuttx/quickjs.c:36024
            if (bc_get_u8(s, &v8))
    8004bbfc:	ee040593          	addi	a1,s0,-288
    8004bc00:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36023
            vd->scope_next--;
    8004bc02:	37fd                	addiw	a5,a5,-1
    8004bc04:	00fba423          	sw	a5,8(s7)
quickjs-nuttx/quickjs.c:36024
            if (bc_get_u8(s, &v8))
    8004bc08:	895cc0ef          	jal	ra,8001849c <bc_get_u8>
    8004bc0c:	fd55                	bnez	a0,8004bbc8 <JS_ReadObjectRec+0x3aa>
quickjs-nuttx/quickjs.c:36027
            vd->var_kind = bc_get_flags(v8, &idx, 4);
    8004bc0e:	ee044603          	lbu	a2,-288(s0)
quickjs-nuttx/quickjs.c:36015
        for(i = 0; i < local_count; i++) {
    8004bc12:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:36027
            vd->var_kind = bc_get_flags(v8, &idx, 4);
    8004bc14:	0006071b          	sext.w	a4,a2
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004bc18:	0057569b          	srliw	a3,a4,0x5
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36028
            vd->is_const = bc_get_flags(v8, &idx, 1);
    8004bc1c:	0016f793          	andi	a5,a3,1
    8004bc20:	0017969b          	slliw	a3,a5,0x1
bc_get_flags():
quickjs-nuttx/quickjs.c:35702
    val = (flags >> *pidx) & ((1U << n) - 1);
    8004bc24:	0047579b          	srliw	a5,a4,0x4
    8004bc28:	0067571b          	srliw	a4,a4,0x6
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36028
            vd->is_const = bc_get_flags(v8, &idx, 1);
    8004bc2c:	8b85                	andi	a5,a5,1
    8004bc2e:	8b05                	andi	a4,a4,1
    8004bc30:	0027171b          	slliw	a4,a4,0x2
    8004bc34:	8fd5                	or	a5,a5,a3
    8004bc36:	8fd9                	or	a5,a5,a4
    8004bc38:	00cbc703          	lbu	a4,12(s7)
    8004bc3c:	0046161b          	slliw	a2,a2,0x4
    8004bc40:	8fd1                	or	a5,a5,a2
    8004bc42:	8b21                	andi	a4,a4,8
    8004bc44:	8fd9                	or	a5,a5,a4
    8004bc46:	00fb8623          	sb	a5,12(s7)
quickjs-nuttx/quickjs.c:36015
        for(i = 0; i < local_count; i++) {
    8004bc4a:	ef042783          	lw	a5,-272(s0)
    8004bc4e:	f6f9cfe3          	blt	s3,a5,8004bbcc <JS_ReadObjectRec+0x3ae>
    8004bc52:	bf81                	j	8004bba2 <JS_ReadObjectRec+0x384>
    8004bc54:	4981                	li	s3,0
    8004bc56:	bfd5                	j	8004bc4a <JS_ReadObjectRec+0x42c>
quickjs-nuttx/quickjs.c:36040
            JSClosureVar *cv = &b->closure_var[i];
    8004bc58:	03893783          	ld	a5,56(s2)
    8004bc5c:	00399b93          	slli	s7,s3,0x3
quickjs-nuttx/quickjs.c:36042
            if (bc_get_atom(s, &cv->var_name))
    8004bc60:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36040
            JSClosureVar *cv = &b->closure_var[i];
    8004bc62:	9bbe                	add	s7,s7,a5
quickjs-nuttx/quickjs.c:36042
            if (bc_get_atom(s, &cv->var_name))
    8004bc64:	004b8593          	addi	a1,s7,4
    8004bc68:	9c3cc0ef          	jal	ra,8001862a <bc_get_atom>
    8004bc6c:	fd31                	bnez	a0,8004bbc8 <JS_ReadObjectRec+0x3aa>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bc6e:	f0040593          	addi	a1,s0,-256
    8004bc72:	8526                	mv	a0,s1
    8004bc74:	84dcc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36044
            if (bc_get_leb128_int(s, &var_idx))
    8004bc78:	f921                	bnez	a0,8004bbc8 <JS_ReadObjectRec+0x3aa>
quickjs-nuttx/quickjs.c:36046
            cv->var_idx = var_idx;
    8004bc7a:	f0042783          	lw	a5,-256(s0)
quickjs-nuttx/quickjs.c:36047
            if (bc_get_u8(s, &v8))
    8004bc7e:	ee040593          	addi	a1,s0,-288
    8004bc82:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36046
            cv->var_idx = var_idx;
    8004bc84:	00fb9123          	sh	a5,2(s7)
quickjs-nuttx/quickjs.c:36047
            if (bc_get_u8(s, &v8))
    8004bc88:	815cc0ef          	jal	ra,8001849c <bc_get_u8>
    8004bc8c:	fd15                	bnez	a0,8004bbc8 <JS_ReadObjectRec+0x3aa>
quickjs-nuttx/quickjs.c:36050
            cv->is_local = bc_get_flags(v8, &idx, 1);
    8004bc8e:	ee044783          	lbu	a5,-288(s0)
quickjs-nuttx/quickjs.c:36039
        for(i = 0; i < b->closure_var_count; i++) {
    8004bc92:	2985                	addiw	s3,s3,1
quickjs-nuttx/quickjs.c:36050
            cv->is_local = bc_get_flags(v8, &idx, 1);
    8004bc94:	0017f693          	andi	a3,a5,1
    8004bc98:	000bc783          	lbu	a5,0(s7)
    8004bc9c:	9bf9                	andi	a5,a5,-2
    8004bc9e:	8fd5                	or	a5,a5,a3
    8004bca0:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:36051
            cv->is_arg = bc_get_flags(v8, &idx, 1);
    8004bca4:	ee044683          	lbu	a3,-288(s0)
    8004bca8:	9bf5                	andi	a5,a5,-3
    8004bcaa:	8a89                	andi	a3,a3,2
    8004bcac:	8edd                	or	a3,a3,a5
    8004bcae:	00db8023          	sb	a3,0(s7)
quickjs-nuttx/quickjs.c:36052
            cv->is_const = bc_get_flags(v8, &idx, 1);
    8004bcb2:	ee044703          	lbu	a4,-288(s0)
    8004bcb6:	00477793          	andi	a5,a4,4
    8004bcba:	ffb6f713          	andi	a4,a3,-5
    8004bcbe:	8f5d                	or	a4,a4,a5
    8004bcc0:	00eb8023          	sb	a4,0(s7)
quickjs-nuttx/quickjs.c:36053
            cv->is_lexical = bc_get_flags(v8, &idx, 1);
    8004bcc4:	ee044783          	lbu	a5,-288(s0)
    8004bcc8:	0087f693          	andi	a3,a5,8
    8004bccc:	ff777793          	andi	a5,a4,-9
    8004bcd0:	8fd5                	or	a5,a5,a3
    8004bcd2:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:36054
            cv->var_kind = bc_get_flags(v8, &idx, 4);
    8004bcd6:	ee044703          	lbu	a4,-288(s0)
    8004bcda:	8bbd                	andi	a5,a5,15
    8004bcdc:	0f077713          	andi	a4,a4,240
    8004bce0:	8fd9                	or	a5,a5,a4
    8004bce2:	00fb8023          	sb	a5,0(s7)
quickjs-nuttx/quickjs.c:36039
        for(i = 0; i < b->closure_var_count; i++) {
    8004bce6:	05c92783          	lw	a5,92(s2)
    8004bcea:	f6f9c7e3          	blt	s3,a5,8004bc58 <JS_ReadObjectRec+0x43a>
    8004bcee:	bd7d                	j	8004bbac <JS_ReadObjectRec+0x38e>
JS_ReadFunctionBytecode():
quickjs-nuttx/quickjs.c:35717
        if (unlikely(s->buf_end - s->ptr < bc_len))
    8004bcf0:	0104ba03          	ld	s4,16(s1)
    8004bcf4:	6c98                	ld	a4,24(s1)
    8004bcf6:	020b9793          	slli	a5,s7,0x20
    8004bcfa:	9381                	srli	a5,a5,0x20
    8004bcfc:	41470733          	sub	a4,a4,s4
    8004bd00:	02f75a63          	bge	a4,a5,8004bd34 <JS_ReadObjectRec+0x516>
quickjs-nuttx/quickjs.c:35718
            return bc_read_error_end(s);
    8004bd04:	8526                	mv	a0,s1
    8004bd06:	f6ecc0ef          	jal	ra,80018474 <bc_read_error_end>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36002
    obj = JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b);
    8004bd0a:	59f9                	li	s3,-2
quickjs-nuttx/quickjs.c:36063
        if (JS_ReadFunctionBytecode(s, b, byte_code_offset, b->byte_code_len))
    8004bd0c:	10051d63          	bnez	a0,8004be26 <JS_ReadObjectRec+0x608>
quickjs-nuttx/quickjs.c:36067
    if (b->has_debug) {
    8004bd10:	01a94783          	lbu	a5,26(s2)
    8004bd14:	8b91                	andi	a5,a5,4
    8004bd16:	e3f9                	bnez	a5,8004bddc <JS_ReadObjectRec+0x5be>
quickjs-nuttx/quickjs.c:36088
    if (b->cpool_count != 0) {
    8004bd18:	05892783          	lw	a5,88(s2)
quickjs-nuttx/quickjs.c:36093
            if (JS_IsException(val))
    8004bd1c:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:36088
    if (b->cpool_count != 0) {
    8004bd1e:	12079b63          	bnez	a5,8004be54 <JS_ReadObjectRec+0x636>
JS_DupContext():
quickjs-nuttx/quickjs.c:2232
    ctx->header.ref_count++;
    8004bd22:	000aa783          	lw	a5,0(s5)
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36100
    return obj;
    8004bd26:	59f9                	li	s3,-2
JS_DupContext():
quickjs-nuttx/quickjs.c:2232
    ctx->header.ref_count++;
    8004bd28:	2785                	addiw	a5,a5,1
    8004bd2a:	00faa023          	sw	a5,0(s5)
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36099
    b->realm = JS_DupContext(ctx);
    8004bd2e:	05593423          	sd	s5,72(s2)
quickjs-nuttx/quickjs.c:36100
    return obj;
    8004bd32:	b6dd                	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_ReadFunctionBytecode():
quickjs-nuttx/quickjs.c:35720
        s->ptr += bc_len;
    8004bd34:	97d2                	add	a5,a5,s4
    8004bd36:	e89c                	sd	a5,16(s1)
quickjs-nuttx/quickjs.c:35726
    b->byte_code_buf = bc_buf;
    8004bd38:	03493023          	sd	s4,32(s2)
quickjs-nuttx/quickjs.c:35728
    pos = 0;
    8004bd3c:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:35731
        len = short_opcode_info(op).size;
    8004bd3e:	00029c97          	auipc	s9,0x29
    8004bd42:	072c8c93          	addi	s9,s9,114 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:35732
        switch(short_opcode_info(op).fmt) {
    8004bd46:	4d11                	li	s10,4
quickjs-nuttx/quickjs.c:35729
    while (pos < bc_len) {
    8004bd48:	fd7c74e3          	bgeu	s8,s7,8004bd10 <JS_ReadObjectRec+0x4f2>
quickjs-nuttx/quickjs.c:35730
        op = bc_buf[pos];
    8004bd4c:	018a07b3          	add	a5,s4,s8
    8004bd50:	0007c783          	lbu	a5,0(a5)
quickjs-nuttx/quickjs.c:35731
        len = short_opcode_info(op).size;
    8004bd54:	0b500713          	li	a4,181
    8004bd58:	00f75363          	bge	a4,a5,8004bd5e <JS_ReadObjectRec+0x540>
    8004bd5c:	27cd                	addiw	a5,a5,19
    8004bd5e:	078a                	slli	a5,a5,0x2
    8004bd60:	97e6                	add	a5,a5,s9
    8004bd62:	0007cd83          	lbu	s11,0(a5)
quickjs-nuttx/quickjs.c:35732
        switch(short_opcode_info(op).fmt) {
    8004bd66:	0037c783          	lbu	a5,3(a5)
    8004bd6a:	37a5                	addiw	a5,a5,-23
    8004bd6c:	02fd6b63          	bltu	s10,a5,8004bda2 <JS_ReadObjectRec+0x584>
quickjs-nuttx/quickjs.c:35738
            idx = get_u32(bc_buf + pos + 1);
    8004bd70:	001c0993          	addi	s3,s8,1
    8004bd74:	99d2                	add	s3,s3,s4
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    8004bd76:	0019c583          	lbu	a1,1(s3)
    8004bd7a:	0009c603          	lbu	a2,0(s3)
JS_ReadFunctionBytecode():
quickjs-nuttx/quickjs.c:35739
            if (s->is_rom_data) {
    8004bd7e:	0364c783          	lbu	a5,54(s1)
get_u32():
quickjs-nuttx/cutils.h:170
    8004bd82:	05a2                	slli	a1,a1,0x8
    8004bd84:	8dd1                	or	a1,a1,a2
    8004bd86:	0029c603          	lbu	a2,2(s3)
    8004bd8a:	0642                	slli	a2,a2,0x10
    8004bd8c:	8dd1                	or	a1,a1,a2
    8004bd8e:	0039c603          	lbu	a2,3(s3)
    8004bd92:	0662                	slli	a2,a2,0x18
    8004bd94:	8e4d                	or	a2,a2,a1
    8004bd96:	2601                	sext.w	a2,a2
JS_ReadFunctionBytecode():
quickjs-nuttx/quickjs.c:35739
    8004bd98:	cb81                	beqz	a5,8004bda8 <JS_ReadObjectRec+0x58a>
quickjs-nuttx/quickjs.c:35741
                JS_DupAtom(s->ctx, (JSAtom)idx);
    8004bd9a:	6088                	ld	a0,0(s1)
    8004bd9c:	85b2                	mv	a1,a2
    8004bd9e:	b68bf0ef          	jal	ra,8000b106 <JS_DupAtom>
quickjs-nuttx/quickjs.c:35757
        pos += len;
    8004bda2:	018d8c3b          	addw	s8,s11,s8
    8004bda6:	b74d                	j	8004bd48 <JS_ReadObjectRec+0x52a>
quickjs-nuttx/quickjs.c:35743
                if (bc_idx_to_atom(s, &atom, idx)) {
    8004bda8:	f0040593          	addi	a1,s0,-256
    8004bdac:	8526                	mv	a0,s1
    8004bdae:	811cc0ef          	jal	ra,800185be <bc_idx_to_atom>
    8004bdb2:	c501                	beqz	a0,8004bdba <JS_ReadObjectRec+0x59c>
quickjs-nuttx/quickjs.c:35745
                    b->byte_code_len = pos;
    8004bdb4:	03892423          	sw	s8,40(s2)
quickjs-nuttx/quickjs.c:35746
                    return -1;
    8004bdb8:	bd01                	j	8004bbc8 <JS_ReadObjectRec+0x3aa>
quickjs-nuttx/quickjs.c:35748
                put_u32(bc_buf + pos + 1, atom);
    8004bdba:	f0042783          	lw	a5,-256(s0)
put_u32():
quickjs-nuttx/cutils.h:180
    ((struct packed_u32 *)tab)->v = val;
    8004bdbe:	0087d69b          	srliw	a3,a5,0x8
    8004bdc2:	00f98023          	sb	a5,0(s3)
    8004bdc6:	00d980a3          	sb	a3,1(s3)
    8004bdca:	0107d69b          	srliw	a3,a5,0x10
    8004bdce:	0187d79b          	srliw	a5,a5,0x18
    8004bdd2:	00d98123          	sb	a3,2(s3)
    8004bdd6:	00f981a3          	sb	a5,3(s3)
quickjs-nuttx/cutils.h:181
}
    8004bdda:	b7e1                	j	8004bda2 <JS_ReadObjectRec+0x584>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36070
        if (bc_get_atom(s, &b->debug.filename))
    8004bddc:	06090593          	addi	a1,s2,96
    8004bde0:	8526                	mv	a0,s1
    8004bde2:	849cc0ef          	jal	ra,8001862a <bc_get_atom>
quickjs-nuttx/quickjs.c:36002
    obj = JS_MKPTR(JS_TAG_FUNCTION_BYTECODE, b);
    8004bde6:	59f9                	li	s3,-2
quickjs-nuttx/quickjs.c:36070
        if (bc_get_atom(s, &b->debug.filename))
    8004bde8:	ed1d                	bnez	a0,8004be26 <JS_ReadObjectRec+0x608>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bdea:	06490593          	addi	a1,s2,100
    8004bdee:	8526                	mv	a0,s1
    8004bdf0:	ed0cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36072
        if (bc_get_leb128_int(s, &b->debug.line_num))
    8004bdf4:	e90d                	bnez	a0,8004be26 <JS_ReadObjectRec+0x608>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bdf6:	06c90593          	addi	a1,s2,108
    8004bdfa:	8526                	mv	a0,s1
    8004bdfc:	ec4cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36074
        if (bc_get_leb128_int(s, &b->debug.pc2line_len))
    8004be00:	e11d                	bnez	a0,8004be26 <JS_ReadObjectRec+0x608>
quickjs-nuttx/quickjs.c:36076
        if (b->debug.pc2line_len) {
    8004be02:	06c92583          	lw	a1,108(s2)
    8004be06:	f00589e3          	beqz	a1,8004bd18 <JS_ReadObjectRec+0x4fa>
quickjs-nuttx/quickjs.c:36077
            b->debug.pc2line_buf = js_mallocz(ctx, b->debug.pc2line_len);
    8004be0a:	8556                	mv	a0,s5
    8004be0c:	b2ccf0ef          	jal	ra,8001b138 <js_mallocz>
    8004be10:	06a93823          	sd	a0,112(s2)
    8004be14:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs.c:36078
            if (!b->debug.pc2line_buf)
    8004be16:	c901                	beqz	a0,8004be26 <JS_ReadObjectRec+0x608>
quickjs-nuttx/quickjs.c:36080
            if (bc_get_buf(s, b->debug.pc2line_buf, b->debug.pc2line_len))
    8004be18:	06c92603          	lw	a2,108(s2)
    8004be1c:	8526                	mv	a0,s1
    8004be1e:	f56cc0ef          	jal	ra,80018574 <bc_get_buf>
    8004be22:	ee050be3          	beqz	a0,8004bd18 <JS_ReadObjectRec+0x4fa>
JS_ReadTypedArray():
quickjs-nuttx/quickjs.c:36335
    JS_FreeValue(ctx, obj);
    8004be26:	85ca                	mv	a1,s2
    8004be28:	864e                	mv	a2,s3
    8004be2a:	a141                	j	8004c2aa <JS_ReadObjectRec+0xa8c>
JS_ReadFunctionTag():
quickjs-nuttx/quickjs.c:36092
            val = JS_ReadObjectRec(s);
    8004be2c:	8526                	mv	a0,s1
    8004be2e:	9f1ff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004be32:	f0b43423          	sd	a1,-248(s0)
    8004be36:	f0a43023          	sd	a0,-256(s0)
quickjs-nuttx/quickjs.c:36093
            if (JS_IsException(val))
    8004be3a:	2581                	sext.w	a1,a1
    8004be3c:	d93586e3          	beq	a1,s3,8004bbc8 <JS_ReadObjectRec+0x3aa>
quickjs-nuttx/quickjs.c:36095
            b->cpool[i] = val;
    8004be40:	05093783          	ld	a5,80(s2)
    8004be44:	004b1713          	slli	a4,s6,0x4
quickjs-nuttx/quickjs.c:36090
        for(i = 0; i < b->cpool_count; i++) {
    8004be48:	2b05                	addiw	s6,s6,1
quickjs-nuttx/quickjs.c:36095
            b->cpool[i] = val;
    8004be4a:	97ba                	add	a5,a5,a4
    8004be4c:	e388                	sd	a0,0(a5)
    8004be4e:	f0843703          	ld	a4,-248(s0)
    8004be52:	e798                	sd	a4,8(a5)
quickjs-nuttx/quickjs.c:36090
        for(i = 0; i < b->cpool_count; i++) {
    8004be54:	05892783          	lw	a5,88(s2)
    8004be58:	fcfb4ae3          	blt	s6,a5,8004be2c <JS_ReadObjectRec+0x60e>
    8004be5c:	b5d9                	j	8004bd22 <JS_ReadObjectRec+0x504>
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36496
        if (!s->allow_bytecode)
    8004be5e:	0354c783          	lbu	a5,53(s1)
    8004be62:	200780e3          	beqz	a5,8004c862 <JS_ReadObjectRec+0x1044>
JS_ReadModule():
quickjs-nuttx/quickjs.c:36115
    if (bc_get_atom(s, &module_name))
    8004be66:	f0040593          	addi	a1,s0,-256
    8004be6a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36108
    JSContext *ctx = s->ctx;
    8004be6c:	0004b983          	ld	s3,0(s1)
quickjs-nuttx/quickjs.c:36115
    if (bc_get_atom(s, &module_name))
    8004be70:	fbacc0ef          	jal	ra,8001862a <bc_get_atom>
    8004be74:	e529                	bnez	a0,8004bebe <JS_ReadObjectRec+0x6a0>
quickjs-nuttx/quickjs.c:36120
    m = js_new_module_def(ctx, module_name);
    8004be76:	f0042583          	lw	a1,-256(s0)
    8004be7a:	854e                	mv	a0,s3
    8004be7c:	e8acf0ef          	jal	ra,8001b506 <js_new_module_def>
    8004be80:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:36121
    if (!m)
    8004be82:	cd15                	beqz	a0,8004bebe <JS_ReadObjectRec+0x6a0>
quickjs-nuttx/quickjs.c:36123
    obj = JS_NewModuleValue(ctx, m);
    8004be84:	85aa                	mv	a1,a0
    8004be86:	854e                	mv	a0,s3
    8004be88:	ec6be0ef          	jal	ra,8000a54e <JS_NewModuleValue>
    8004be8c:	f0a43823          	sd	a0,-240(s0)
    8004be90:	f0b43c23          	sd	a1,-232(s0)
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004be94:	8526                	mv	a0,s1
    8004be96:	02090593          	addi	a1,s2,32
    8004be9a:	e26cc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004be9e:	8a2a                	mv	s4,a0
JS_ReadModule():
quickjs-nuttx/quickjs.c:36124
    if (bc_get_leb128_int(s, &m->req_module_entries_count))
    8004bea0:	e919                	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36126
    if (m->req_module_entries_count != 0) {
    8004bea2:	02092583          	lw	a1,32(s2)
    8004bea6:	e185                	bnez	a1,8004bec6 <JS_ReadObjectRec+0x6a8>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bea8:	03090593          	addi	a1,s2,48
    8004beac:	8526                	mv	a0,s1
    8004beae:	e12cc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004beb2:	8a2a                	mv	s4,a0
JS_ReadModule():
quickjs-nuttx/quickjs.c:36138
    if (bc_get_leb128_int(s, &m->export_entries_count))
    8004beb4:	c129                	beqz	a0,8004bef6 <JS_ReadObjectRec+0x6d8>
quickjs-nuttx/quickjs.c:36206
        js_free_module_def(ctx, m);
    8004beb6:	85ca                	mv	a1,s2
    8004beb8:	854e                	mv	a0,s3
    8004beba:	e2ac00ef          	jal	ra,8000c4e4 <js_free_module_def>
quickjs-nuttx/quickjs.c:36208
    return JS_EXCEPTION;
    8004bebe:	e2043823          	sd	zero,-464(s0)
    8004bec2:	4999                	li	s3,6
    8004bec4:	a871                	j	8004bf60 <JS_ReadObjectRec+0x742>
quickjs-nuttx/quickjs.c:36127
        m->req_module_entries_size = m->req_module_entries_count;
    8004bec6:	02b92223          	sw	a1,36(s2)
quickjs-nuttx/quickjs.c:36128
        m->req_module_entries = js_mallocz(ctx, sizeof(m->req_module_entries[0]) * m->req_module_entries_size);
    8004beca:	854e                	mv	a0,s3
    8004becc:	0592                	slli	a1,a1,0x4
    8004bece:	a6acf0ef          	jal	ra,8001b138 <js_mallocz>
    8004bed2:	00a93c23          	sd	a0,24(s2)
quickjs-nuttx/quickjs.c:36129
        if (!m->req_module_entries)
    8004bed6:	d165                	beqz	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36131
        for(i = 0; i < m->req_module_entries_count; i++) {
    8004bed8:	02092783          	lw	a5,32(s2)
    8004bedc:	fcfa56e3          	bge	s4,a5,8004bea8 <JS_ReadObjectRec+0x68a>
quickjs-nuttx/quickjs.c:36132
            JSReqModuleEntry *rme = &m->req_module_entries[i];
    8004bee0:	01893583          	ld	a1,24(s2)
    8004bee4:	004a1793          	slli	a5,s4,0x4
quickjs-nuttx/quickjs.c:36133
            if (bc_get_atom(s, &rme->module_name))
    8004bee8:	8526                	mv	a0,s1
    8004beea:	95be                	add	a1,a1,a5
    8004beec:	f3ecc0ef          	jal	ra,8001862a <bc_get_atom>
    8004bef0:	f179                	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36131
        for(i = 0; i < m->req_module_entries_count; i++) {
    8004bef2:	2a05                	addiw	s4,s4,1
    8004bef4:	b7d5                	j	8004bed8 <JS_ReadObjectRec+0x6ba>
quickjs-nuttx/quickjs.c:36140
    if (m->export_entries_count != 0) {
    8004bef6:	03092583          	lw	a1,48(s2)
    8004befa:	e5b5                	bnez	a1,8004bf66 <JS_ReadObjectRec+0x748>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004befc:	04090593          	addi	a1,s2,64
    8004bf00:	8526                	mv	a0,s1
    8004bf02:	dbecc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004bf06:	8a2a                	mv	s4,a0
JS_ReadModule():
quickjs-nuttx/quickjs.c:36164
    if (bc_get_leb128_int(s, &m->star_export_entries_count))
    8004bf08:	f55d                	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36166
    if (m->star_export_entries_count != 0) {
    8004bf0a:	04092583          	lw	a1,64(s2)
    8004bf0e:	e1f9                	bnez	a1,8004bfd4 <JS_ReadObjectRec+0x7b6>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bf10:	05090593          	addi	a1,s2,80
    8004bf14:	8526                	mv	a0,s1
    8004bf16:	daacc0ef          	jal	ra,800184c0 <bc_get_leb128>
    8004bf1a:	8a2a                	mv	s4,a0
JS_ReadModule():
quickjs-nuttx/quickjs.c:36178
    if (bc_get_leb128_int(s, &m->import_entries_count))
    8004bf1c:	fd49                	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36180
    if (m->import_entries_count != 0) {
    8004bf1e:	05092783          	lw	a5,80(s2)
    8004bf22:	0e079363          	bnez	a5,8004c008 <JS_ReadObjectRec+0x7ea>
quickjs-nuttx/quickjs.c:36196
    if (bc_get_u8(s, &v8))
    8004bf26:	ef040593          	addi	a1,s0,-272
    8004bf2a:	8526                	mv	a0,s1
    8004bf2c:	d70cc0ef          	jal	ra,8001849c <bc_get_u8>
    8004bf30:	f159                	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36198
    m->has_tla = (v8 != 0);
    8004bf32:	ef044783          	lbu	a5,-272(s0)
quickjs-nuttx/quickjs.c:36200
    m->func_obj = JS_ReadObjectRec(s);
    8004bf36:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36198
    m->has_tla = (v8 != 0);
    8004bf38:	00f037b3          	snez	a5,a5
    8004bf3c:	08f90023          	sb	a5,128(s2)
quickjs-nuttx/quickjs.c:36200
    m->func_obj = JS_ReadObjectRec(s);
    8004bf40:	8dfff0ef          	jal	ra,8004b81e <JS_ReadObjectRec>
    8004bf44:	06b93823          	sd	a1,112(s2)
    8004bf48:	06a93423          	sd	a0,104(s2)
quickjs-nuttx/quickjs.c:36201
    if (JS_IsException(m->func_obj))
    8004bf4c:	2581                	sext.w	a1,a1
    8004bf4e:	4799                	li	a5,6
    8004bf50:	f6f583e3          	beq	a1,a5,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36203
    return obj;
    8004bf54:	f1043783          	ld	a5,-240(s0)
    8004bf58:	f1843983          	ld	s3,-232(s0)
    8004bf5c:	e2f43823          	sd	a5,-464(s0)
    8004bf60:	e3043903          	ld	s2,-464(s0)
JS_ReadObjectRec():
quickjs-nuttx/quickjs.c:36499
        break;
    8004bf64:	ba55                	j	8004b918 <JS_ReadObjectRec+0xfa>
JS_ReadModule():
quickjs-nuttx/quickjs.c:36141
        m->export_entries_size = m->export_entries_count;
    8004bf66:	02b92a23          	sw	a1,52(s2)
quickjs-nuttx/quickjs.c:36142
        m->export_entries = js_mallocz(ctx, sizeof(m->export_entries[0]) * m->export_entries_size);
    8004bf6a:	854e                	mv	a0,s3
    8004bf6c:	0596                	slli	a1,a1,0x5
    8004bf6e:	9cacf0ef          	jal	ra,8001b138 <js_mallocz>
    8004bf72:	02a93423          	sd	a0,40(s2)
quickjs-nuttx/quickjs.c:36143
        if (!m->export_entries)
    8004bf76:	d121                	beqz	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36145
        for(i = 0; i < m->export_entries_count; i++) {
    8004bf78:	03092783          	lw	a5,48(s2)
    8004bf7c:	f8fa50e3          	bge	s4,a5,8004befc <JS_ReadObjectRec+0x6de>
quickjs-nuttx/quickjs.c:36146
            JSExportEntry *me = &m->export_entries[i];
    8004bf80:	02893783          	ld	a5,40(s2)
    8004bf84:	005a1a93          	slli	s5,s4,0x5
quickjs-nuttx/quickjs.c:36147
            if (bc_get_u8(s, &v8))
    8004bf88:	ef040593          	addi	a1,s0,-272
    8004bf8c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:36146
            JSExportEntry *me = &m->export_entries[i];
    8004bf8e:	9abe                	add	s5,s5,a5
quickjs-nuttx/quickjs.c:36147
            if (bc_get_u8(s, &v8))
    8004bf90:	d0ccc0ef          	jal	ra,8001849c <bc_get_u8>
    8004bf94:	f20511e3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36149
            me->export_type = v8;
    8004bf98:	ef044703          	lbu	a4,-272(s0)
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bf9c:	85d6                	mv	a1,s5
    8004bf9e:	8526                	mv	a0,s1
JS_ReadModule():
quickjs-nuttx/quickjs.c:36149
            me->export_type = v8;
    8004bfa0:	00eaa823          	sw	a4,16(s5)
quickjs-nuttx/quickjs.c:36150
            if (me->export_type == JS_EXPORT_TYPE_LOCAL) {
    8004bfa4:	ef11                	bnez	a4,8004bfc0 <JS_ReadObjectRec+0x7a2>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bfa6:	d1acc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadModule():
quickjs-nuttx/quickjs.c:36151
                if (bc_get_leb128_int(s, &me->u.local.var_idx))
    8004bfaa:	f00516e3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36159
            if (bc_get_atom(s, &me->export_name))
    8004bfae:	018a8593          	addi	a1,s5,24
    8004bfb2:	8526                	mv	a0,s1
    8004bfb4:	e76cc0ef          	jal	ra,8001862a <bc_get_atom>
    8004bfb8:	ee051fe3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36145
        for(i = 0; i < m->export_entries_count; i++) {
    8004bfbc:	2a05                	addiw	s4,s4,1
    8004bfbe:	bf6d                	j	8004bf78 <JS_ReadObjectRec+0x75a>
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bfc0:	d00cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadModule():
quickjs-nuttx/quickjs.c:36154
                if (bc_get_leb128_int(s, &me->u.req_module_idx))
    8004bfc4:	ee0519e3          	bnez	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36156
                if (bc_get_atom(s, &me->local_name))
    8004bfc8:	014a8593          	addi	a1,s5,20
    8004bfcc:	8526                	mv	a0,s1
    8004bfce:	e5ccc0ef          	jal	ra,8001862a <bc_get_atom>
    8004bfd2:	bfe1                	j	8004bfaa <JS_ReadObjectRec+0x78c>
quickjs-nuttx/quickjs.c:36167
        m->star_export_entries_size = m->star_export_entries_count;
    8004bfd4:	04b92223          	sw	a1,68(s2)
quickjs-nuttx/quickjs.c:36168
        m->star_export_entries = js_mallocz(ctx, sizeof(m->star_export_entries[0]) * m->star_export_entries_size);
    8004bfd8:	854e                	mv	a0,s3
    8004bfda:	058a                	slli	a1,a1,0x2
    8004bfdc:	95ccf0ef          	jal	ra,8001b138 <js_mallocz>
    8004bfe0:	02a93c23          	sd	a0,56(s2)
quickjs-nuttx/quickjs.c:36169
        if (!m->star_export_entries)
    8004bfe4:	ec0509e3          	beqz	a0,8004beb6 <JS_ReadObjectRec+0x698>
quickjs-nuttx/quickjs.c:36171
        for(i = 0; i < m->star_export_entries_count; i++) {
    8004bfe8:	04092783          	lw	a5,64(s2)
    8004bfec:	f2fa52e3          	bge	s4,a5,8004bf10 <JS_ReadObjectRec+0x6f2>
quickjs-nuttx/quickjs.c:36172
            JSStarExportEntry *se = &m->star_export_entries[i];
    8004bff0:	03893583          	ld	a1,56(s2)
    8004bff4:	002a1793          	slli	a5,s4,0x2
bc_get_leb128_int():
quickjs-nuttx/quickjs.c:35605
    return bc_get_leb128(s, (uint32_t *)pval);
    8004bff8:	8526                	mv	a0,s1
    8004bffa:	95be                	add	a1,a1,a5
    8004bffc:	cc4cc0ef          	jal	ra,800184c0 <bc_get_leb128>
JS_ReadModule():
quickjs-nuttx/quickjs.c:36173
            if (bc_get_leb128_int(s, &se->req_module_idx))
