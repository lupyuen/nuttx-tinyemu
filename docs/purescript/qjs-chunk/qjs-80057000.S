    80056000:	ed11                	bnez	a0,8005601c <js_module_loader+0xb2>
quickjs-nuttx/quickjs-libc.c:497
        JS_ThrowReferenceError(ctx, "could not load module filename '%s': js_init_module not found",
    80056002:	8626                	mv	a2,s1
    80056004:	00029597          	auipc	a1,0x29
    80056008:	02458593          	addi	a1,a1,36 # 8007f028 <utf8_min_code+0x4a0>
quickjs-nuttx/quickjs-libc.c:504
        JS_ThrowReferenceError(ctx, "could not load module filename '%s': initialization error",
    8005600c:	854a                	mv	a0,s2
    8005600e:	815c30ef          	jal	ra,80019822 <JS_ThrowReferenceError>
quickjs-nuttx/quickjs-libc.c:508
            dlclose(hd);
    80056012:	854e                	mv	a0,s3
    80056014:	38f090ef          	jal	ra,8005fba2 <dlclose>
quickjs-nuttx/quickjs-libc.c:509
        return NULL;
    80056018:	4401                	li	s0,0
    8005601a:	a88d                	j	8005608c <js_module_loader+0x122>
quickjs-nuttx/quickjs-libc.c:502
    m = init(ctx, module_name);
    8005601c:	85a6                	mv	a1,s1
    8005601e:	854a                	mv	a0,s2
    80056020:	9782                	jalr	a5
    80056022:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:503
    if (!m) {
    80056024:	e525                	bnez	a0,8005608c <js_module_loader+0x122>
quickjs-nuttx/quickjs-libc.c:504
        JS_ThrowReferenceError(ctx, "could not load module filename '%s': initialization error",
    80056026:	8626                	mv	a2,s1
    80056028:	00029597          	auipc	a1,0x29
    8005602c:	04058593          	addi	a1,a1,64 # 8007f068 <utf8_min_code+0x4e0>
    80056030:	bff1                	j	8005600c <js_module_loader+0xa2>
js_module_loader():
quickjs-nuttx/quickjs-libc.c:580
        buf = js_load_file(ctx, &buf_len, module_name);
    80056032:	8626                	mv	a2,s1
    80056034:	002c                	addi	a1,sp,8
    80056036:	854a                	mv	a0,s2
    80056038:	c4fff0ef          	jal	ra,80055c86 <js_load_file>
    8005603c:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:581
        if (!buf) {
    8005603e:	e519                	bnez	a0,8005604c <js_module_loader+0xe2>
quickjs-nuttx/quickjs-libc.c:582
            JS_ThrowReferenceError(ctx, "could not load module filename '%s'",
    80056040:	8626                	mv	a2,s1
    80056042:	00029597          	auipc	a1,0x29
    80056046:	06658593          	addi	a1,a1,102 # 8007f0a8 <utf8_min_code+0x520>
    8005604a:	bf79                	j	80055fe8 <js_module_loader+0x7e>
quickjs-nuttx/quickjs-libc.c:588
        func_val = JS_Eval(ctx, (char *)buf, buf_len, module_name,
    8005604c:	6622                	ld	a2,8(sp)
    8005604e:	02100713          	li	a4,33
    80056052:	86a6                	mv	a3,s1
    80056054:	85aa                	mv	a1,a0
    80056056:	854a                	mv	a0,s2
    80056058:	b49c20ef          	jal	ra,80018ba0 <JS_Eval>
    8005605c:	e82a                	sd	a0,16(sp)
    8005605e:	ec2e                	sd	a1,24(sp)
    80056060:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:590
        js_free(ctx, buf);
    80056062:	85ce                	mv	a1,s3
    80056064:	854a                	mv	a0,s2
    80056066:	f91b40ef          	jal	ra,8000aff6 <js_free>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8005606a:	6662                	ld	a2,24(sp)
js_module_loader():
quickjs-nuttx/quickjs-libc.c:591
        if (JS_IsException(func_val))
    8005606c:	4799                	li	a5,6
    8005606e:	0006071b          	sext.w	a4,a2
    80056072:	faf703e3          	beq	a4,a5,80056018 <js_module_loader+0xae>
quickjs-nuttx/quickjs-libc.c:594
        js_module_set_import_meta(ctx, func_val, TRUE, FALSE);
    80056076:	65c2                	ld	a1,16(sp)
    80056078:	4701                	li	a4,0
    8005607a:	4685                	li	a3,1
    8005607c:	854a                	mv	a0,s2
    8005607e:	dc1ff0ef          	jal	ra,80055e3e <js_module_set_import_meta>
quickjs-nuttx/quickjs-libc.c:597
        JS_FreeValue(ctx, func_val);
    80056082:	65c2                	ld	a1,16(sp)
    80056084:	6662                	ld	a2,24(sp)
    80056086:	854a                	mv	a0,s2
    80056088:	824fc0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:600
}
    8005608c:	60a6                	ld	ra,72(sp)
    8005608e:	8522                	mv	a0,s0
    80056090:	6406                	ld	s0,64(sp)
    80056092:	74e2                	ld	s1,56(sp)
    80056094:	7942                	ld	s2,48(sp)
    80056096:	79a2                	ld	s3,40(sp)
    80056098:	6161                	addi	sp,sp,80
    8005609a:	8082                	ret

000000008005609c <js_init_module_std>:
js_init_module_std():
quickjs-nuttx/quickjs-libc.c:1562
{
    8005609c:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs-libc.c:1564
    m = JS_NewCModule(ctx, module_name, js_std_init);
    8005609e:	ffffd617          	auipc	a2,0xffffd
    800560a2:	c5060613          	addi	a2,a2,-944 # 80052cee <js_std_init>
quickjs-nuttx/quickjs-libc.c:1562
{
    800560a6:	e822                	sd	s0,16(sp)
    800560a8:	e426                	sd	s1,8(sp)
    800560aa:	ec06                	sd	ra,24(sp)
    800560ac:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:1564
    m = JS_NewCModule(ctx, module_name, js_std_init);
    800560ae:	d34c90ef          	jal	ra,8001f5e2 <JS_NewCModule>
    800560b2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1565
    if (!m)
    800560b4:	c131                	beqz	a0,800560f8 <js_init_module_std+0x5c>
quickjs-nuttx/quickjs-libc.c:1567
    JS_AddModuleExportList(ctx, m, js_std_funcs, countof(js_std_funcs));
    800560b6:	46dd                	li	a3,23
    800560b8:	85aa                	mv	a1,a0
    800560ba:	0002a617          	auipc	a2,0x2a
    800560be:	1ce60613          	addi	a2,a2,462 # 80080288 <js_std_funcs>
    800560c2:	8526                	mv	a0,s1
    800560c4:	d1dd70ef          	jal	ra,8002dde0 <JS_AddModuleExportList>
quickjs-nuttx/quickjs-libc.c:1568
    JS_AddModuleExport(ctx, m, "in");
    800560c8:	00018617          	auipc	a2,0x18
    800560cc:	f2860613          	addi	a2,a2,-216 # 8006dff0 <qjsc_repl+0x8a40>
    800560d0:	85a2                	mv	a1,s0
    800560d2:	8526                	mv	a0,s1
    800560d4:	cc3d70ef          	jal	ra,8002dd96 <JS_AddModuleExport>
quickjs-nuttx/quickjs-libc.c:1569
    JS_AddModuleExport(ctx, m, "out");
    800560d8:	00029617          	auipc	a2,0x29
    800560dc:	bf860613          	addi	a2,a2,-1032 # 8007ecd0 <utf8_min_code+0x148>
    800560e0:	85a2                	mv	a1,s0
    800560e2:	8526                	mv	a0,s1
    800560e4:	cb3d70ef          	jal	ra,8002dd96 <JS_AddModuleExport>
quickjs-nuttx/quickjs-libc.c:1570
    JS_AddModuleExport(ctx, m, "err");
    800560e8:	00029617          	auipc	a2,0x29
    800560ec:	bf060613          	addi	a2,a2,-1040 # 8007ecd8 <utf8_min_code+0x150>
    800560f0:	85a2                	mv	a1,s0
    800560f2:	8526                	mv	a0,s1
    800560f4:	ca3d70ef          	jal	ra,8002dd96 <JS_AddModuleExport>
quickjs-nuttx/quickjs-libc.c:1572
}
    800560f8:	60e2                	ld	ra,24(sp)
    800560fa:	8522                	mv	a0,s0
    800560fc:	6442                	ld	s0,16(sp)
    800560fe:	64a2                	ld	s1,8(sp)
    80056100:	6105                	addi	sp,sp,32
    80056102:	8082                	ret

0000000080056104 <js_std_set_worker_new_context_func>:
js_std_set_worker_new_context_func():
quickjs-nuttx/quickjs-libc.c:3638
    js_worker_new_context_func = func;
    80056104:	000ab797          	auipc	a5,0xab
    80056108:	02a7be23          	sd	a0,60(a5) # 80101140 <js_worker_new_context_func>
quickjs-nuttx/quickjs-libc.c:3640
}
    8005610c:	8082                	ret

000000008005610e <js_init_module_os>:
js_init_module_os():
quickjs-nuttx/quickjs-libc.c:3779
{
    8005610e:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs-libc.c:3781
    m = JS_NewCModule(ctx, module_name, js_os_init);
    80056110:	ffffe617          	auipc	a2,0xffffe
    80056114:	a5860613          	addi	a2,a2,-1448 # 80053b68 <js_os_init>
quickjs-nuttx/quickjs-libc.c:3779
{
    80056118:	e822                	sd	s0,16(sp)
    8005611a:	e426                	sd	s1,8(sp)
    8005611c:	ec06                	sd	ra,24(sp)
    8005611e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:3781
    m = JS_NewCModule(ctx, module_name, js_os_init);
    80056120:	cc2c90ef          	jal	ra,8001f5e2 <JS_NewCModule>
    80056124:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3782
    if (!m)
    80056126:	c11d                	beqz	a0,8005614c <js_init_module_os+0x3e>
quickjs-nuttx/quickjs-libc.c:3784
    JS_AddModuleExportList(ctx, m, js_os_funcs, countof(js_os_funcs));
    80056128:	85aa                	mv	a1,a0
    8005612a:	00029617          	auipc	a2,0x29
    8005612e:	4de60613          	addi	a2,a2,1246 # 8007f608 <js_os_funcs>
    80056132:	04800693          	li	a3,72
    80056136:	8526                	mv	a0,s1
    80056138:	ca9d70ef          	jal	ra,8002dde0 <JS_AddModuleExportList>
quickjs-nuttx/quickjs-libc.c:3786
    JS_AddModuleExport(ctx, m, "Worker");
    8005613c:	00029617          	auipc	a2,0x29
    80056140:	bdc60613          	addi	a2,a2,-1060 # 8007ed18 <utf8_min_code+0x190>
    80056144:	85a2                	mv	a1,s0
    80056146:	8526                	mv	a0,s1
    80056148:	c4fd70ef          	jal	ra,8002dd96 <JS_AddModuleExport>
quickjs-nuttx/quickjs-libc.c:3789
}
    8005614c:	60e2                	ld	ra,24(sp)
    8005614e:	8522                	mv	a0,s0
    80056150:	6442                	ld	s0,16(sp)
    80056152:	64a2                	ld	s1,8(sp)
    80056154:	6105                	addi	sp,sp,32
    80056156:	8082                	ret

0000000080056158 <js_std_add_helpers>:
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3814
{
    80056158:	7115                	addi	sp,sp,-224
    8005615a:	ed86                	sd	ra,216(sp)
    8005615c:	e9a2                	sd	s0,208(sp)
    8005615e:	e5a6                	sd	s1,200(sp)
    80056160:	842a                	mv	s0,a0
    80056162:	fd4e                	sd	s3,184(sp)
    80056164:	e1ca                	sd	s2,192(sp)
    80056166:	89b2                	mv	s3,a2
    80056168:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs-libc.c:3819
    global_obj = JS_GetGlobalObject(ctx);
    8005616a:	ac6b80ef          	jal	ra,8000e430 <JS_GetGlobalObject>
    8005616e:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs-libc.c:3821
    console = JS_NewObject(ctx);
    80056170:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3819
    global_obj = JS_GetGlobalObject(ctx);
    80056172:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:3821
    console = JS_NewObject(ctx);
    80056174:	eb1c50ef          	jal	ra,8001c024 <JS_NewObject>
    80056178:	f02a                	sd	a0,32(sp)
    8005617a:	f42e                	sd	a1,40(sp)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    return JS_NewCFunction2(ctx, func, name, length, JS_CFUNC_generic, 0);
    8005617c:	4781                	li	a5,0
    8005617e:	4701                	li	a4,0
    80056180:	4685                	li	a3,1
    80056182:	00018617          	auipc	a2,0x18
    80056186:	f3660613          	addi	a2,a2,-202 # 8006e0b8 <qjsc_repl+0x8b08>
    8005618a:	00000597          	auipc	a1,0x0
    8005618e:	86258593          	addi	a1,a1,-1950 # 800559ec <js_print>
    80056192:	8522                	mv	a0,s0
    80056194:	96fda0ef          	jal	ra,80030b02 <JS_NewCFunction2>
    80056198:	87ae                	mv	a5,a1
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3822
    JS_SetPropertyStr(ctx, console, "log",
    8005619a:	7622                	ld	a2,40(sp)
    8005619c:	7582                	ld	a1,32(sp)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    8005619e:	872a                	mv	a4,a0
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3822
    800561a0:	00018697          	auipc	a3,0x18
    800561a4:	f1868693          	addi	a3,a3,-232 # 8006e0b8 <qjsc_repl+0x8b08>
    800561a8:	8522                	mv	a0,s0
    800561aa:	e13e10ef          	jal	ra,80037fbc <JS_SetPropertyStr>
quickjs-nuttx/quickjs-libc.c:3824
    JS_SetPropertyStr(ctx, global_obj, "console", console);
    800561ae:	7702                	ld	a4,32(sp)
    800561b0:	77a2                	ld	a5,40(sp)
    800561b2:	65c2                	ld	a1,16(sp)
    800561b4:	6662                	ld	a2,24(sp)
    800561b6:	00029697          	auipc	a3,0x29
    800561ba:	f1a68693          	addi	a3,a3,-230 # 8007f0d0 <utf8_min_code+0x548>
    800561be:	8522                	mv	a0,s0
    800561c0:	dfde10ef          	jal	ra,80037fbc <JS_SetPropertyStr>
quickjs-nuttx/quickjs-libc.c:3827
    if (argc >= 0) {
    800561c4:	0204c763          	bltz	s1,800561f2 <js_std_add_helpers+0x9a>
quickjs-nuttx/quickjs-libc.c:3828
        args = JS_NewArray(ctx);
    800561c8:	8522                	mv	a0,s0
    800561ca:	890c60ef          	jal	ra,8001c25a <JS_NewArray>
    800561ce:	f82a                	sd	a0,48(sp)
    800561d0:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:3829
        for(i = 0; i < argc; i++) {
    800561d2:	4901                	li	s2,0
quickjs-nuttx/quickjs-libc.c:3829 (discriminator 1)
    800561d4:	0009069b          	sext.w	a3,s2
    800561d8:	0896ca63          	blt	a3,s1,8005626c <js_std_add_helpers+0x114>
quickjs-nuttx/quickjs-libc.c:3832
        JS_SetPropertyStr(ctx, global_obj, "scriptArgs", args);
    800561dc:	7742                	ld	a4,48(sp)
    800561de:	77e2                	ld	a5,56(sp)
    800561e0:	65c2                	ld	a1,16(sp)
    800561e2:	6662                	ld	a2,24(sp)
    800561e4:	00029697          	auipc	a3,0x29
    800561e8:	ef468693          	addi	a3,a3,-268 # 8007f0d8 <utf8_min_code+0x550>
    800561ec:	8522                	mv	a0,s0
    800561ee:	dcfe10ef          	jal	ra,80037fbc <JS_SetPropertyStr>
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    800561f2:	4781                	li	a5,0
    800561f4:	4701                	li	a4,0
    800561f6:	4685                	li	a3,1
    800561f8:	00029617          	auipc	a2,0x29
    800561fc:	ef060613          	addi	a2,a2,-272 # 8007f0e8 <utf8_min_code+0x560>
    80056200:	8522                	mv	a0,s0
    80056202:	fffff597          	auipc	a1,0xfffff
    80056206:	7ea58593          	addi	a1,a1,2026 # 800559ec <js_print>
    8005620a:	8f9da0ef          	jal	ra,80030b02 <JS_NewCFunction2>
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3835
    JS_SetPropertyStr(ctx, global_obj, "print",
    8005620e:	6662                	ld	a2,24(sp)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    80056210:	87ae                	mv	a5,a1
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3835
    80056212:	65c2                	ld	a1,16(sp)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    80056214:	872a                	mv	a4,a0
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3835
    80056216:	00029697          	auipc	a3,0x29
    8005621a:	ed268693          	addi	a3,a3,-302 # 8007f0e8 <utf8_min_code+0x560>
    8005621e:	8522                	mv	a0,s0
    80056220:	d9de10ef          	jal	ra,80037fbc <JS_SetPropertyStr>
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    80056224:	4781                	li	a5,0
    80056226:	4701                	li	a4,0
    80056228:	4685                	li	a3,1
    8005622a:	00029617          	auipc	a2,0x29
    8005622e:	ec660613          	addi	a2,a2,-314 # 8007f0f0 <utf8_min_code+0x568>
    80056232:	8522                	mv	a0,s0
    80056234:	00000597          	auipc	a1,0x0
    80056238:	b8a58593          	addi	a1,a1,-1142 # 80055dbe <js_loadScript>
    8005623c:	8c7da0ef          	jal	ra,80030b02 <JS_NewCFunction2>
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3837
    JS_SetPropertyStr(ctx, global_obj, "__loadScript",
    80056240:	6662                	ld	a2,24(sp)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    80056242:	87ae                	mv	a5,a1
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3837
    80056244:	65c2                	ld	a1,16(sp)
JS_NewCFunction():
quickjs-nuttx/quickjs.h:963
    80056246:	872a                	mv	a4,a0
js_std_add_helpers():
quickjs-nuttx/quickjs-libc.c:3837
    80056248:	00029697          	auipc	a3,0x29
    8005624c:	ea868693          	addi	a3,a3,-344 # 8007f0f0 <utf8_min_code+0x568>
    80056250:	8522                	mv	a0,s0
    80056252:	d6be10ef          	jal	ra,80037fbc <JS_SetPropertyStr>
quickjs-nuttx/quickjs-libc.c:3840
    JS_FreeValue(ctx, global_obj);
    80056256:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3841
}
    80056258:	644e                	ld	s0,208(sp)
quickjs-nuttx/quickjs-libc.c:3840
    JS_FreeValue(ctx, global_obj);
    8005625a:	65c2                	ld	a1,16(sp)
    8005625c:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs-libc.c:3841
}
    8005625e:	60ee                	ld	ra,216(sp)
    80056260:	64ae                	ld	s1,200(sp)
    80056262:	690e                	ld	s2,192(sp)
    80056264:	79ea                	ld	s3,184(sp)
    80056266:	612d                	addi	sp,sp,224
quickjs-nuttx/quickjs-libc.c:3840
    JS_FreeValue(ctx, global_obj);
    80056268:	e45fb06f          	j	800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3830 (discriminator 3)
            JS_SetPropertyUint32(ctx, args, i, JS_NewString(ctx, argv[i]));
    8005626c:	00391793          	slli	a5,s2,0x3
    80056270:	97ce                	add	a5,a5,s3
    80056272:	638c                	ld	a1,0(a5)
    80056274:	8522                	mv	a0,s0
    80056276:	e436                	sd	a3,8(sp)
    80056278:	f40c90ef          	jal	ra,8001f9b8 <JS_NewString>
    8005627c:	87ae                	mv	a5,a1
    8005627e:	66a2                	ld	a3,8(sp)
    80056280:	75c2                	ld	a1,48(sp)
    80056282:	7662                	ld	a2,56(sp)
    80056284:	872a                	mv	a4,a0
    80056286:	8522                	mv	a0,s0
    80056288:	885c10ef          	jal	ra,80017b0c <JS_SetPropertyUint32>
quickjs-nuttx/quickjs-libc.c:3829 (discriminator 3)
        for(i = 0; i < argc; i++) {
    8005628c:	0905                	addi	s2,s2,1
    8005628e:	b799                	j	800561d4 <js_std_add_helpers+0x7c>

0000000080056290 <js_std_init_handlers>:
js_std_init_handlers():
quickjs-nuttx/quickjs-libc.c:3844
{
    80056290:	7139                	addi	sp,sp,-64
    80056292:	f426                	sd	s1,40(sp)
    80056294:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:3847
    ts = malloc(sizeof(*ts));
    80056296:	05800513          	li	a0,88
quickjs-nuttx/quickjs-libc.c:3844
{
    8005629a:	fc06                	sd	ra,56(sp)
    8005629c:	f822                	sd	s0,48(sp)
quickjs-nuttx/quickjs-libc.c:3847
    ts = malloc(sizeof(*ts));
    8005629e:	225090ef          	jal	ra,8005fcc2 <malloc>
quickjs-nuttx/quickjs-libc.c:3848
    if (!ts) {
    800562a2:	ed11                	bnez	a0,800562be <js_std_init_handlers+0x2e>
quickjs-nuttx/quickjs-libc.c:3849
        fprintf(stderr, "Could not allocate memory for the worker");
    800562a4:	4509                	li	a0,2
    800562a6:	0bb0c0ef          	jal	ra,80062b60 <lib_get_stream>
    800562aa:	85aa                	mv	a1,a0
    800562ac:	00029517          	auipc	a0,0x29
    800562b0:	e5450513          	addi	a0,a0,-428 # 8007f100 <utf8_min_code+0x578>
    800562b4:	76e0c0ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/quickjs-libc.c:3850
        exit(1);
    800562b8:	4505                	li	a0,1
    800562ba:	0e70c0ef          	jal	ra,80062ba0 <exit>
quickjs-nuttx/quickjs-libc.c:3852
    memset(ts, 0, sizeof(*ts));
    800562be:	01050793          	addi	a5,a0,16
    800562c2:	842a                	mv	s0,a0
    800562c4:	04800613          	li	a2,72
    800562c8:	4581                	li	a1,0
    800562ca:	853e                	mv	a0,a5
    800562cc:	1770d0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs-libc.c:3855
    init_list_head(&ts->os_timers);
    800562d0:	02040793          	addi	a5,s0,32
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    800562d4:	f01c                	sd	a5,32(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    800562d6:	f41c                	sd	a5,40(s0)
js_std_init_handlers():
quickjs-nuttx/quickjs-libc.c:3856
    init_list_head(&ts->port_list);
    800562d8:	03040793          	addi	a5,s0,48
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    800562dc:	f81c                	sd	a5,48(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    800562de:	fc1c                	sd	a5,56(s0)
js_std_init_handlers():
quickjs-nuttx/quickjs-libc.c:3857
    ts->next_timer_id = 1;
    800562e0:	4785                	li	a5,1
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    800562e2:	e808                	sd	a0,16(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    800562e4:	ec08                	sd	a0,24(s0)
js_std_init_handlers():
quickjs-nuttx/quickjs-libc.c:3857
    800562e6:	c07c                	sw	a5,68(s0)
quickjs-nuttx/quickjs-libc.c:3859
    JS_SetRuntimeOpaque(rt, ts);
    800562e8:	85a2                	mv	a1,s0
    800562ea:	8526                	mv	a0,s1
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    800562ec:	e000                	sd	s0,0(s0)
quickjs-nuttx/list.h:44
    head->next = head;
    800562ee:	e400                	sd	s0,8(s0)
js_std_init_handlers():
quickjs-nuttx/quickjs-libc.c:3859
    800562f0:	d5bb40ef          	jal	ra,8000b04a <JS_SetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:3866
        sf.sab_alloc = js_sab_alloc;
    800562f4:	ffffc797          	auipc	a5,0xffffc
    800562f8:	d9e78793          	addi	a5,a5,-610 # 80052092 <js_sab_alloc>
    800562fc:	e03e                	sd	a5,0(sp)
quickjs-nuttx/quickjs-libc.c:3867
        sf.sab_free = js_sab_free;
    800562fe:	ffffe797          	auipc	a5,0xffffe
    80056302:	f7c78793          	addi	a5,a5,-132 # 8005427a <js_sab_free>
    80056306:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs-libc.c:3869
        JS_SetSharedArrayBufferFunctions(rt, &sf);
    80056308:	858a                	mv	a1,sp
quickjs-nuttx/quickjs-libc.c:3868
        sf.sab_dup = js_sab_dup;
    8005630a:	ffffd797          	auipc	a5,0xffffd
    8005630e:	62a78793          	addi	a5,a5,1578 # 80053934 <js_sab_dup>
quickjs-nuttx/quickjs-libc.c:3869
        JS_SetSharedArrayBufferFunctions(rt, &sf);
    80056312:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:3865
        memset(&sf, 0, sizeof(sf));
    80056314:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs-libc.c:3868
        sf.sab_dup = js_sab_dup;
    80056316:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs-libc.c:3869
        JS_SetSharedArrayBufferFunctions(rt, &sf);
    80056318:	d51b40ef          	jal	ra,8000b068 <JS_SetSharedArrayBufferFunctions>
quickjs-nuttx/quickjs-libc.c:3872
}
    8005631c:	70e2                	ld	ra,56(sp)
    8005631e:	7442                	ld	s0,48(sp)
    80056320:	74a2                	ld	s1,40(sp)
    80056322:	6121                	addi	sp,sp,64
    80056324:	8082                	ret

0000000080056326 <js_std_free_handlers>:
js_std_free_handlers():
quickjs-nuttx/quickjs-libc.c:3875
{
    80056326:	7179                	addi	sp,sp,-48
    80056328:	f022                	sd	s0,32(sp)
    8005632a:	ec26                	sd	s1,24(sp)
    8005632c:	e84a                	sd	s2,16(sp)
    8005632e:	f406                	sd	ra,40(sp)
    80056330:	e44e                	sd	s3,8(sp)
    80056332:	e052                	sd	s4,0(sp)
    80056334:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:3876
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80056336:	d0fb40ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:3879
    list_for_each_safe(el, el1, &ts->os_rw_handlers) {
    8005633a:	650c                	ld	a1,8(a0)
quickjs-nuttx/quickjs-libc.c:3876
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    8005633c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3879
    list_for_each_safe(el, el1, &ts->os_rw_handlers) {
    8005633e:	0085b903          	ld	s2,8(a1)
quickjs-nuttx/quickjs-libc.c:3879 (discriminator 1)
    80056342:	04b41563          	bne	s0,a1,8005638c <js_std_free_handlers+0x66>
quickjs-nuttx/quickjs-libc.c:3884
    list_for_each_safe(el, el1, &ts->os_signal_handlers) {
    80056346:	01843903          	ld	s2,24(s0)
    8005634a:	01040a13          	addi	s4,s0,16
    8005634e:	00893983          	ld	s3,8(s2)
quickjs-nuttx/quickjs-libc.c:3884 (discriminator 1)
    80056352:	05491463          	bne	s2,s4,8005639a <js_std_free_handlers+0x74>
quickjs-nuttx/quickjs-libc.c:3889
    list_for_each_safe(el, el1, &ts->os_timers) {
    80056356:	740c                	ld	a1,40(s0)
    80056358:	02040993          	addi	s3,s0,32
    8005635c:	0085b903          	ld	s2,8(a1)
quickjs-nuttx/quickjs-libc.c:3889 (discriminator 1)
    80056360:	05359f63          	bne	a1,s3,800563be <js_std_free_handlers+0x98>
quickjs-nuttx/quickjs-libc.c:3896
    js_free_message_pipe(ts->recv_pipe);
    80056364:	6428                	ld	a0,72(s0)
    80056366:	f93fd0ef          	jal	ra,800542f8 <js_free_message_pipe>
quickjs-nuttx/quickjs-libc.c:3897
    js_free_message_pipe(ts->send_pipe);
    8005636a:	6828                	ld	a0,80(s0)
    8005636c:	f8dfd0ef          	jal	ra,800542f8 <js_free_message_pipe>
quickjs-nuttx/quickjs-libc.c:3900
    free(ts);
    80056370:	8522                	mv	a0,s0
    80056372:	145090ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3902
}
    80056376:	7402                	ld	s0,32(sp)
    80056378:	70a2                	ld	ra,40(sp)
    8005637a:	6942                	ld	s2,16(sp)
    8005637c:	69a2                	ld	s3,8(sp)
    8005637e:	6a02                	ld	s4,0(sp)
quickjs-nuttx/quickjs-libc.c:3901
    JS_SetRuntimeOpaque(rt, NULL); /* fail safe */
    80056380:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:3902
}
    80056382:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs-libc.c:3901
    JS_SetRuntimeOpaque(rt, NULL); /* fail safe */
    80056384:	4581                	li	a1,0
quickjs-nuttx/quickjs-libc.c:3902
}
    80056386:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs-libc.c:3901
    JS_SetRuntimeOpaque(rt, NULL); /* fail safe */
    80056388:	cc3b406f          	j	8000b04a <JS_SetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:3881 (discriminator 3)
        free_rw_handler(rt, rh);
    8005638c:	8526                	mv	a0,s1
    8005638e:	a78fd0ef          	jal	ra,80053606 <free_rw_handler>
quickjs-nuttx/quickjs-libc.c:3879 (discriminator 3)
    list_for_each_safe(el, el1, &ts->os_rw_handlers) {
    80056392:	85ca                	mv	a1,s2
    80056394:	00893903          	ld	s2,8(s2)
    80056398:	b76d                	j	80056342 <js_std_free_handlers+0x1c>
free_sh():
quickjs-nuttx/quickjs-libc.c:1937
    list_del(&sh->link);
    8005639a:	854a                	mv	a0,s2
    8005639c:	cc1fb0ef          	jal	ra,8005205c <list_del>
quickjs-nuttx/quickjs-libc.c:1938
    JS_FreeValueRT(rt, sh->func);
    800563a0:	01893583          	ld	a1,24(s2)
    800563a4:	02093603          	ld	a2,32(s2)
    800563a8:	8526                	mv	a0,s1
    800563aa:	99cfd0ef          	jal	ra,80053546 <JS_FreeValueRT>
quickjs-nuttx/quickjs-libc.c:1939
    js_free_rt(rt, sh);
    800563ae:	85ca                	mv	a1,s2
    800563b0:	8526                	mv	a0,s1
    800563b2:	e2eb40ef          	jal	ra,8000a9e0 <js_free_rt>
js_std_free_handlers():
quickjs-nuttx/quickjs-libc.c:3884
    list_for_each_safe(el, el1, &ts->os_signal_handlers) {
    800563b6:	894e                	mv	s2,s3
    800563b8:	0089b983          	ld	s3,8(s3)
    800563bc:	bf59                	j	80056352 <js_std_free_handlers+0x2c>
quickjs-nuttx/quickjs-libc.c:3891 (discriminator 3)
        free_timer(rt, th);
    800563be:	8526                	mv	a0,s1
    800563c0:	9acfd0ef          	jal	ra,8005356c <free_timer>
quickjs-nuttx/quickjs-libc.c:3889 (discriminator 3)
    list_for_each_safe(el, el1, &ts->os_timers) {
    800563c4:	85ca                	mv	a1,s2
    800563c6:	00893903          	ld	s2,8(s2)
    800563ca:	bf59                	j	80056360 <js_std_free_handlers+0x3a>

00000000800563cc <js_std_dump_error>:
js_std_dump_error():
quickjs-nuttx/quickjs-libc.c:3934

void js_std_dump_error(JSContext *ctx)
{
    800563cc:	1101                	addi	sp,sp,-32
    800563ce:	ec06                	sd	ra,24(sp)
    800563d0:	e822                	sd	s0,16(sp)
    800563d2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3937
    JSValue exception_val;
    
    exception_val = JS_GetException(ctx);
    800563d4:	8bab80ef          	jal	ra,8000e48e <JS_GetException>
    800563d8:	862e                	mv	a2,a1
    800563da:	e02a                	sd	a0,0(sp)
    800563dc:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:3938
    js_std_dump_error1(ctx, exception_val);
    800563de:	85aa                	mv	a1,a0
    800563e0:	8522                	mv	a0,s0
    800563e2:	8e5fd0ef          	jal	ra,80053cc6 <js_std_dump_error1>
quickjs-nuttx/quickjs-libc.c:3939
    JS_FreeValue(ctx, exception_val);
    800563e6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3940
}
    800563e8:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs-libc.c:3939
    JS_FreeValue(ctx, exception_val);
    800563ea:	6582                	ld	a1,0(sp)
    800563ec:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:3940
}
    800563ee:	60e2                	ld	ra,24(sp)
    800563f0:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:3939
    JS_FreeValue(ctx, exception_val);
    800563f2:	cbbfb06f          	j	800520ac <JS_FreeValue>

00000000800563f6 <call_handler>:
call_handler():
quickjs-nuttx/quickjs-libc.c:2133
{
    800563f6:	715d                	addi	sp,sp,-80
    800563f8:	e0a2                	sd	s0,64(sp)
    800563fa:	e486                	sd	ra,72(sp)
    800563fc:	e02e                	sd	a1,0(sp)
    800563fe:	e432                	sd	a2,8(sp)
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    80056400:	0006071b          	sext.w	a4,a2
    80056404:	57d1                	li	a5,-12
call_handler():
quickjs-nuttx/quickjs-libc.c:2133
    80056406:	842a                	mv	s0,a0
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    80056408:	00e7f563          	bgeu	a5,a4,80056412 <call_handler+0x1c>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8005640c:	419c                	lw	a5,0(a1)
    8005640e:	2785                	addiw	a5,a5,1
    80056410:	c19c                	sw	a5,0(a1)
call_handler():
quickjs-nuttx/quickjs-libc.c:2138
    ret = JS_Call(ctx, func1, JS_UNDEFINED, 0, NULL);
    80056412:	4781                	li	a5,0
    80056414:	470d                	li	a4,3
    80056416:	4801                	li	a6,0
    80056418:	4681                	li	a3,0
    8005641a:	8522                	mv	a0,s0
    8005641c:	f432                	sd	a2,40(sp)
    8005641e:	f02e                	sd	a1,32(sp)
    80056420:	9e5ec0ef          	jal	ra,80042e04 <JS_Call>
    80056424:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:2139
    JS_FreeValue(ctx, func1);
    80056426:	7622                	ld	a2,40(sp)
    80056428:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs-libc.c:2138
    ret = JS_Call(ctx, func1, JS_UNDEFINED, 0, NULL);
    8005642a:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs-libc.c:2139
    JS_FreeValue(ctx, func1);
    8005642c:	8522                	mv	a0,s0
    8005642e:	c7ffb0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2140
    if (JS_IsException(ret))
    80056432:	4762                	lw	a4,24(sp)
    80056434:	4799                	li	a5,6
    80056436:	00f71563          	bne	a4,a5,80056440 <call_handler+0x4a>
quickjs-nuttx/quickjs-libc.c:2141
        js_std_dump_error(ctx);
    8005643a:	8522                	mv	a0,s0
    8005643c:	f91ff0ef          	jal	ra,800563cc <js_std_dump_error>
quickjs-nuttx/quickjs-libc.c:2142
    JS_FreeValue(ctx, ret);
    80056440:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2143
}
    80056442:	6406                	ld	s0,64(sp)
quickjs-nuttx/quickjs-libc.c:2142
    JS_FreeValue(ctx, ret);
    80056444:	65c2                	ld	a1,16(sp)
    80056446:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs-libc.c:2143
}
    80056448:	60a6                	ld	ra,72(sp)
    8005644a:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs-libc.c:2142
    JS_FreeValue(ctx, ret);
    8005644c:	c61fb06f          	j	800520ac <JS_FreeValue>

0000000080056450 <js_os_poll>:
js_os_poll():
quickjs-nuttx/quickjs-libc.c:2298
{
    80056450:	7151                	addi	sp,sp,-240
    80056452:	f586                	sd	ra,232(sp)
    80056454:	f1a2                	sd	s0,224(sp)
    80056456:	eda6                	sd	s1,216(sp)
    80056458:	e5ce                	sd	s3,200(sp)
    8005645a:	e9ca                	sd	s2,208(sp)
    8005645c:	e1d2                	sd	s4,192(sp)
    8005645e:	fd56                	sd	s5,184(sp)
    80056460:	f95a                	sd	s6,176(sp)
    80056462:	f55e                	sd	s7,168(sp)
    80056464:	f162                	sd	s8,160(sp)
    80056466:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2299
    JSRuntime *rt = JS_GetRuntime(ctx);
    80056468:	c75b40ef          	jal	ra,8000b0dc <JS_GetRuntime>
    8005646c:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:2300
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    8005646e:	bd7b40ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:2309
    if (!ts->recv_pipe &&
    80056472:	653c                	ld	a5,72(a0)
quickjs-nuttx/quickjs-libc.c:2300
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80056474:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2309
    if (!ts->recv_pipe &&
    80056476:	ef89                	bnez	a5,80056490 <js_os_poll+0x40>
quickjs-nuttx/quickjs-libc.c:2310 (discriminator 1)
        unlikely(os_pending_signals != 0)) {
    80056478:	000ab617          	auipc	a2,0xab
    8005647c:	cd060613          	addi	a2,a2,-816 # 80101148 <os_pending_signals>
    80056480:	6214                	ld	a3,0(a2)
quickjs-nuttx/quickjs-libc.c:2309 (discriminator 1)
    if (!ts->recv_pipe &&
    80056482:	c699                	beqz	a3,80056490 <js_os_poll+0x40>
quickjs-nuttx/quickjs-libc.c:2314
        list_for_each(el, &ts->os_signal_handlers) {
    80056484:	6d18                	ld	a4,24(a0)
    80056486:	01050593          	addi	a1,a0,16
quickjs-nuttx/quickjs-libc.c:2316
            mask = (uint64_t)1 << sh->sig_num;
    8005648a:	4505                	li	a0,1
quickjs-nuttx/quickjs-libc.c:2314 (discriminator 1)
        list_for_each(el, &ts->os_signal_handlers) {
    8005648c:	02b71263          	bne	a4,a1,800564b0 <js_os_poll+0x60>
quickjs-nuttx/quickjs-libc.c:2325
    if (list_empty(&ts->os_rw_handlers) && list_empty(&ts->os_timers) &&
    80056490:	6418                	ld	a4,8(s0)
list_empty():
quickjs-nuttx/list.h:82
    return el->next == el;
    80056492:	741c                	ld	a5,40(s0)
js_os_poll():
quickjs-nuttx/quickjs-libc.c:2325
    80056494:	02040913          	addi	s2,s0,32
    80056498:	02e41f63          	bne	s0,a4,800564d6 <js_os_poll+0x86>
quickjs-nuttx/quickjs-libc.c:2325 (discriminator 1)
    8005649c:	03279f63          	bne	a5,s2,800564da <js_os_poll+0x8a>
quickjs-nuttx/quickjs-libc.c:2325 (discriminator 2)
    800564a0:	7c18                	ld	a4,56(s0)
quickjs-nuttx/quickjs-libc.c:2326 (discriminator 2)
        list_empty(&ts->port_list))
    800564a2:	03040793          	addi	a5,s0,48
quickjs-nuttx/quickjs-libc.c:2327 (discriminator 2)
        return -1; /* no more events */
    800564a6:	557d                	li	a0,-1
quickjs-nuttx/quickjs-libc.c:2325 (discriminator 2)
    if (list_empty(&ts->os_rw_handlers) && list_empty(&ts->os_timers) &&
    800564a8:	08f70a63          	beq	a4,a5,8005653c <js_os_poll+0xec>
quickjs-nuttx/quickjs-libc.c:2352
        tvp = NULL;
    800564ac:	4701                	li	a4,0
    800564ae:	a889                	j	80056500 <js_os_poll+0xb0>
quickjs-nuttx/quickjs-libc.c:2316
            mask = (uint64_t)1 << sh->sig_num;
    800564b0:	4b1c                	lw	a5,16(a4)
    800564b2:	00f517b3          	sll	a5,a0,a5
quickjs-nuttx/quickjs-libc.c:2317
            if (os_pending_signals & mask) {
    800564b6:	00f6f833          	and	a6,a3,a5
    800564ba:	00080c63          	beqz	a6,800564d2 <js_os_poll+0x82>
quickjs-nuttx/quickjs-libc.c:2318
                os_pending_signals &= ~mask;
    800564be:	fff7c793          	not	a5,a5
    800564c2:	8ff5                	and	a5,a5,a3
    800564c4:	e21c                	sd	a5,0(a2)
quickjs-nuttx/quickjs-libc.c:2319
                call_handler(ctx, sh->func);
    800564c6:	6f0c                	ld	a1,24(a4)
    800564c8:	7310                	ld	a2,32(a4)
quickjs-nuttx/quickjs-libc.c:2388
                call_handler(ctx, rh->rw_func[1]);
    800564ca:	8526                	mv	a0,s1
    800564cc:	f2bff0ef          	jal	ra,800563f6 <call_handler>
    800564d0:	a0ad                	j	8005653a <js_os_poll+0xea>
quickjs-nuttx/quickjs-libc.c:2314 (discriminator 2)
        list_for_each(el, &ts->os_signal_handlers) {
    800564d2:	6718                	ld	a4,8(a4)
    800564d4:	bf65                	j	8005648c <js_os_poll+0x3c>
quickjs-nuttx/quickjs-libc.c:2329
    if (!list_empty(&ts->os_timers)) {
    800564d6:	fd278be3          	beq	a5,s2,800564ac <js_os_poll+0x5c>
quickjs-nuttx/quickjs-libc.c:2330
        cur_time = get_time_ms();
    800564da:	fdffc0ef          	jal	ra,800534b8 <get_time_ms>
quickjs-nuttx/quickjs-libc.c:2332
        list_for_each(el, &ts->os_timers) {
    800564de:	740c                	ld	a1,40(s0)
quickjs-nuttx/quickjs-libc.c:2331
        min_delay = 10000;
    800564e0:	6789                	lui	a5,0x2
    800564e2:	71078793          	addi	a5,a5,1808 # 2710 <asinh-0x7fffd8f0>
quickjs-nuttx/quickjs-libc.c:2332 (discriminator 1)
        list_for_each(el, &ts->os_timers) {
    800564e6:	07259763          	bne	a1,s2,80056554 <js_os_poll+0x104>
quickjs-nuttx/quickjs-libc.c:2348
        tv.tv_sec = min_delay / 1000;
    800564ea:	3e800713          	li	a4,1000
    800564ee:	02e7c6bb          	divw	a3,a5,a4
quickjs-nuttx/quickjs-libc.c:2349
        tv.tv_usec = (min_delay % 1000) * 1000;
    800564f2:	02e7e7bb          	remw	a5,a5,a4
quickjs-nuttx/quickjs-libc.c:2348
        tv.tv_sec = min_delay / 1000;
    800564f6:	c036                	sw	a3,0(sp)
quickjs-nuttx/quickjs-libc.c:2349
        tv.tv_usec = (min_delay % 1000) * 1000;
    800564f8:	02e787bb          	mulw	a5,a5,a4
quickjs-nuttx/quickjs-libc.c:2350
        tvp = &tv;
    800564fc:	870a                	mv	a4,sp
quickjs-nuttx/quickjs-libc.c:2349
        tv.tv_usec = (min_delay % 1000) * 1000;
    800564fe:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs-libc.c:2355
    FD_ZERO(&rfds);
    80056500:	f082                	sd	zero,96(sp)
    80056502:	f482                	sd	zero,104(sp)
    80056504:	f882                	sd	zero,112(sp)
    80056506:	fc82                	sd	zero,120(sp)
quickjs-nuttx/quickjs-libc.c:2356
    FD_ZERO(&wfds);
    80056508:	e102                	sd	zero,128(sp)
    8005650a:	e502                	sd	zero,136(sp)
    8005650c:	e902                	sd	zero,144(sp)
    8005650e:	ed02                	sd	zero,152(sp)
quickjs-nuttx/quickjs-libc.c:2358
    list_for_each(el, &ts->os_rw_handlers) {
    80056510:	6414                	ld	a3,8(s0)
quickjs-nuttx/quickjs-libc.c:2357
    fd_max = -1;
    80056512:	557d                	li	a0,-1
quickjs-nuttx/quickjs-libc.c:2361
        if (!JS_IsNull(rh->rw_func[0]))
    80056514:	4589                	li	a1,2
quickjs-nuttx/quickjs-libc.c:2362
            FD_SET(rh->fd, &rfds);
    80056516:	4805                	li	a6,1
quickjs-nuttx/quickjs-libc.c:2358 (discriminator 1)
    list_for_each(el, &ts->os_rw_handlers) {
    80056518:	06d41e63          	bne	s0,a3,80056594 <js_os_poll+0x144>
quickjs-nuttx/quickjs-libc.c:2367
    list_for_each(el, &ts->port_list) {
    8005651c:	7c10                	ld	a2,56(s0)
    8005651e:	03040993          	addi	s3,s0,48
quickjs-nuttx/quickjs-libc.c:2369
        if (!JS_IsNull(port->on_message_func)) {
    80056522:	4589                	li	a1,2
quickjs-nuttx/quickjs-libc.c:2372
            FD_SET(ps->read_fd, &rfds);
    80056524:	4805                	li	a6,1
quickjs-nuttx/quickjs-libc.c:2367 (discriminator 1)
    list_for_each(el, &ts->port_list) {
    80056526:	0cc99363          	bne	s3,a2,800565ec <js_os_poll+0x19c>
quickjs-nuttx/quickjs-libc.c:2376
    ret = select(fd_max + 1, &rfds, &wfds, NULL, tvp);
    8005652a:	4681                	li	a3,0
    8005652c:	0110                	addi	a2,sp,128
    8005652e:	108c                	addi	a1,sp,96
    80056530:	2505                	addiw	a0,a0,1
    80056532:	4020e0ef          	jal	ra,80064934 <select>
quickjs-nuttx/quickjs-libc.c:2377
    if (ret > 0) {
    80056536:	0ea04663          	bgtz	a0,80056622 <js_os_poll+0x1d2>
quickjs-nuttx/quickjs-libc.c:2406
    return 0;
    8005653a:	4501                	li	a0,0
quickjs-nuttx/quickjs-libc.c:2407 (discriminator 1)
}
    8005653c:	70ae                	ld	ra,232(sp)
    8005653e:	740e                	ld	s0,224(sp)
    80056540:	64ee                	ld	s1,216(sp)
    80056542:	694e                	ld	s2,208(sp)
    80056544:	69ae                	ld	s3,200(sp)
    80056546:	6a0e                	ld	s4,192(sp)
    80056548:	7aea                	ld	s5,184(sp)
    8005654a:	7b4a                	ld	s6,176(sp)
    8005654c:	7baa                	ld	s7,168(sp)
    8005654e:	7c0a                	ld	s8,160(sp)
    80056550:	616d                	addi	sp,sp,240
    80056552:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2334
            delay = th->timeout - cur_time;
    80056554:	6d98                	ld	a4,24(a1)
    80056556:	8f09                	sub	a4,a4,a0
quickjs-nuttx/quickjs-libc.c:2335
            if (delay <= 0) {
    80056558:	02e04863          	bgtz	a4,80056588 <js_os_poll+0x138>
quickjs-nuttx/quickjs-libc.c:2338
                func = th->func;
    8005655c:	719c                	ld	a5,32(a1)
quickjs-nuttx/quickjs-libc.c:2340
                free_timer(rt, th);
    8005655e:	854e                	mv	a0,s3
quickjs-nuttx/quickjs-libc.c:2338
                func = th->func;
    80056560:	e13e                	sd	a5,128(sp)
    80056562:	759c                	ld	a5,40(a1)
    80056564:	e53e                	sd	a5,136(sp)
quickjs-nuttx/quickjs-libc.c:2339
                th->func = JS_UNDEFINED;
    80056566:	478d                	li	a5,3
    80056568:	f59c                	sd	a5,40(a1)
    8005656a:	0205b023          	sd	zero,32(a1)
quickjs-nuttx/quickjs-libc.c:2340
                free_timer(rt, th);
    8005656e:	ffffc0ef          	jal	ra,8005356c <free_timer>
quickjs-nuttx/quickjs-libc.c:2341
                call_handler(ctx, func);
    80056572:	658a                	ld	a1,128(sp)
    80056574:	662a                	ld	a2,136(sp)
    80056576:	8526                	mv	a0,s1
    80056578:	e7fff0ef          	jal	ra,800563f6 <call_handler>
quickjs-nuttx/quickjs-libc.c:2342
                JS_FreeValue(ctx, func);
    8005657c:	658a                	ld	a1,128(sp)
    8005657e:	662a                	ld	a2,136(sp)
handle_posted_message():
quickjs-nuttx/quickjs-libc.c:2280
            JS_FreeValue(ctx, retval);
    80056580:	8526                	mv	a0,s1
    80056582:	b2bfb0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2287
    return ret;
    80056586:	bf55                	j	8005653a <js_os_poll+0xea>
js_os_poll():
quickjs-nuttx/quickjs-libc.c:2344
            } else if (delay < min_delay) {
    80056588:	00f75463          	bge	a4,a5,80056590 <js_os_poll+0x140>
quickjs-nuttx/quickjs-libc.c:2345
                min_delay = delay;
    8005658c:	0007079b          	sext.w	a5,a4
quickjs-nuttx/quickjs-libc.c:2332 (discriminator 2)
        list_for_each(el, &ts->os_timers) {
    80056590:	658c                	ld	a1,8(a1)
    80056592:	bf91                	j	800564e6 <js_os_poll+0x96>
quickjs-nuttx/quickjs-libc.c:2360
        fd_max = max_int(fd_max, rh->fd);
    80056594:	4a9c                	lw	a5,16(a3)
quickjs-nuttx/cutils.h:71
    if (a > b)
    80056596:	863e                	mv	a2,a5
    80056598:	00a7d363          	bge	a5,a0,8005659e <js_os_poll+0x14e>
    8005659c:	862a                	mv	a2,a0
    8005659e:	0006051b          	sext.w	a0,a2
quickjs-nuttx/quickjs-libc.c:2361
        if (!JS_IsNull(rh->rw_func[0]))
    800565a2:	5290                	lw	a2,32(a3)
    800565a4:	02b60063          	beq	a2,a1,800565c4 <js_os_poll+0x174>
quickjs-nuttx/quickjs-libc.c:2362
            FD_SET(rh->fd, &rfds);
    800565a8:	4057d613          	srai	a2,a5,0x5
    800565ac:	0a010893          	addi	a7,sp,160
    800565b0:	060a                	slli	a2,a2,0x2
    800565b2:	9646                	add	a2,a2,a7
    800565b4:	fc062883          	lw	a7,-64(a2)
    800565b8:	00f817bb          	sllw	a5,a6,a5
    800565bc:	0117e7b3          	or	a5,a5,a7
    800565c0:	fcf62023          	sw	a5,-64(a2)
quickjs-nuttx/quickjs-libc.c:2363
        if (!JS_IsNull(rh->rw_func[1]))
    800565c4:	5a9c                	lw	a5,48(a3)
    800565c6:	02b78163          	beq	a5,a1,800565e8 <js_os_poll+0x198>
quickjs-nuttx/quickjs-libc.c:2364
            FD_SET(rh->fd, &wfds);
    800565ca:	4a90                	lw	a2,16(a3)
    800565cc:	0a010893          	addi	a7,sp,160
    800565d0:	40565793          	srai	a5,a2,0x5
    800565d4:	078a                	slli	a5,a5,0x2
    800565d6:	97c6                	add	a5,a5,a7
    800565d8:	fe07a883          	lw	a7,-32(a5)
    800565dc:	00c8163b          	sllw	a2,a6,a2
    800565e0:	01166633          	or	a2,a2,a7
    800565e4:	fec7a023          	sw	a2,-32(a5)
quickjs-nuttx/quickjs-libc.c:2358 (discriminator 2)
    list_for_each(el, &ts->os_rw_handlers) {
    800565e8:	6694                	ld	a3,8(a3)
    800565ea:	b73d                	j	80056518 <js_os_poll+0xc8>
quickjs-nuttx/quickjs-libc.c:2369
        if (!JS_IsNull(port->on_message_func)) {
    800565ec:	521c                	lw	a5,32(a2)
    800565ee:	02b78863          	beq	a5,a1,8005661e <js_os_poll+0x1ce>
quickjs-nuttx/quickjs-libc.c:2371
            fd_max = max_int(fd_max, ps->read_fd);
    800565f2:	6a1c                	ld	a5,16(a2)
    800565f4:	43bc                	lw	a5,64(a5)
quickjs-nuttx/cutils.h:71
    800565f6:	86be                	mv	a3,a5
    800565f8:	00a7d363          	bge	a5,a0,800565fe <js_os_poll+0x1ae>
    800565fc:	86aa                	mv	a3,a0
    800565fe:	0006851b          	sext.w	a0,a3
quickjs-nuttx/quickjs-libc.c:2372
            FD_SET(ps->read_fd, &rfds);
    80056602:	4057d693          	srai	a3,a5,0x5
    80056606:	0a010893          	addi	a7,sp,160
    8005660a:	068a                	slli	a3,a3,0x2
    8005660c:	96c6                	add	a3,a3,a7
    8005660e:	fc06a883          	lw	a7,-64(a3)
    80056612:	00f817bb          	sllw	a5,a6,a5
    80056616:	0117e7b3          	or	a5,a5,a7
    8005661a:	fcf6a023          	sw	a5,-64(a3)
quickjs-nuttx/quickjs-libc.c:2367 (discriminator 2)
    list_for_each(el, &ts->port_list) {
    8005661e:	6610                	ld	a2,8(a2)
    80056620:	b719                	j	80056526 <js_os_poll+0xd6>
quickjs-nuttx/quickjs-libc.c:2378
        list_for_each(el, &ts->os_rw_handlers) {
    80056622:	641c                	ld	a5,8(s0)
quickjs-nuttx/quickjs-libc.c:2380
            if (!JS_IsNull(rh->rw_func[0]) &&
    80056624:	4509                	li	a0,2
quickjs-nuttx/quickjs-libc.c:2381
                FD_ISSET(rh->fd, &rfds)) {
    80056626:	4805                	li	a6,1
quickjs-nuttx/quickjs-libc.c:2378 (discriminator 1)
        list_for_each(el, &ts->os_rw_handlers) {
    80056628:	0cf41963          	bne	s0,a5,800566fa <js_os_poll+0x2aa>
quickjs-nuttx/quickjs-libc.c:2394
        list_for_each(el, &ts->port_list) {
    8005662c:	7c00                	ld	s0,56(s0)
quickjs-nuttx/quickjs-libc.c:2396
            if (!JS_IsNull(port->on_message_func)) {
    8005662e:	4a89                	li	s5,2
quickjs-nuttx/quickjs-libc.c:2398
                if (FD_ISSET(ps->read_fd, &rfds)) {
    80056630:	4b05                	li	s6,1
quickjs-nuttx/quickjs-libc.c:2394 (discriminator 1)
        list_for_each(el, &ts->port_list) {
    80056632:	f08984e3          	beq	s3,s0,8005653a <js_os_poll+0xea>
quickjs-nuttx/quickjs-libc.c:2396
            if (!JS_IsNull(port->on_message_func)) {
    80056636:	501c                	lw	a5,32(s0)
    80056638:	19578463          	beq	a5,s5,800567c0 <js_os_poll+0x370>
quickjs-nuttx/quickjs-libc.c:2397
                JSWorkerMessagePipe *ps = port->recv_pipe;
    8005663c:	01043903          	ld	s2,16(s0)
quickjs-nuttx/quickjs-libc.c:2398
                if (FD_ISSET(ps->read_fd, &rfds)) {
    80056640:	1114                	addi	a3,sp,160
    80056642:	04092783          	lw	a5,64(s2)
    80056646:	4057d713          	srai	a4,a5,0x5
    8005664a:	070a                	slli	a4,a4,0x2
    8005664c:	9736                	add	a4,a4,a3
    8005664e:	00fb16bb          	sllw	a3,s6,a5
    80056652:	fc072783          	lw	a5,-64(a4)
    80056656:	8ff5                	and	a5,a5,a3
    80056658:	2781                	sext.w	a5,a5
    8005665a:	16078363          	beqz	a5,800567c0 <js_os_poll+0x370>
handle_posted_message():
quickjs-nuttx/quickjs-libc.c:2234
    pthread_mutex_lock(&ps->mutex);
    8005665e:	00890b93          	addi	s7,s2,8
    80056662:	855e                	mv	a0,s7
    80056664:	0bf0a0ef          	jal	ra,80060f22 <pthread_mutex_lock>
list_empty():
quickjs-nuttx/list.h:82
    80056668:	03893a03          	ld	s4,56(s2)
handle_posted_message():
quickjs-nuttx/quickjs-libc.c:2235
    if (!list_empty(&ps->msg_queue)) {
    8005666c:	03090c13          	addi	s8,s2,48
    80056670:	154c0563          	beq	s8,s4,800567ba <js_os_poll+0x36a>
quickjs-nuttx/quickjs-libc.c:2240
        list_del(&msg->link);
    80056674:	8552                	mv	a0,s4
    80056676:	9e7fb0ef          	jal	ra,8005205c <list_del>
quickjs-nuttx/quickjs-libc.c:2242
        if (list_empty(&ps->msg_queue)) {
    8005667a:	03893783          	ld	a5,56(s2)
    8005667e:	02fc1763          	bne	s8,a5,800566ac <js_os_poll+0x25c>
quickjs-nuttx/quickjs-libc.c:2249
                if (errno != EAGAIN && errno != EINTR)
    80056682:	4aad                	li	s5,11
    80056684:	4991                	li	s3,4
quickjs-nuttx/quickjs-libc.c:2246
                ret = read(ps->read_fd, buf, sizeof(buf));
    80056686:	04092503          	lw	a0,64(s2)
    8005668a:	4641                	li	a2,16
    8005668c:	088c                	addi	a1,sp,80
    8005668e:	2540e0ef          	jal	ra,800648e2 <read>
quickjs-nuttx/quickjs-libc.c:2247
                if (ret >= 0)
    80056692:	2501                	sext.w	a0,a0
    80056694:	00055c63          	bgez	a0,800566ac <js_os_poll+0x25c>
quickjs-nuttx/quickjs-libc.c:2249
                if (errno != EAGAIN && errno != EINTR)
    80056698:	3800a0ef          	jal	ra,80060a18 <__errno>
    8005669c:	411c                	lw	a5,0(a0)
    8005669e:	ff5784e3          	beq	a5,s5,80056686 <js_os_poll+0x236>
    800566a2:	3760a0ef          	jal	ra,80060a18 <__errno>
    800566a6:	411c                	lw	a5,0(a0)
    800566a8:	fd378fe3          	beq	a5,s3,80056686 <js_os_poll+0x236>
quickjs-nuttx/quickjs-libc.c:2254
        pthread_mutex_unlock(&ps->mutex);
    800566ac:	855e                	mv	a0,s7
    800566ae:	2240e0ef          	jal	ra,800648d2 <pthread_mutex_unlock>
quickjs-nuttx/quickjs-libc.c:2256
        data_obj = JS_ReadObject(ctx, msg->data, msg->data_len,
    800566b2:	018a3603          	ld	a2,24(s4)
    800566b6:	010a3583          	ld	a1,16(s4)
    800566ba:	46b1                	li	a3,12
    800566bc:	8526                	mv	a0,s1
    800566be:	9c2f60ef          	jal	ra,8004c880 <JS_ReadObject>
    800566c2:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs-libc.c:2259
        js_free_message(msg);
    800566c4:	8552                	mv	a0,s4
quickjs-nuttx/quickjs-libc.c:2256
        data_obj = JS_ReadObject(ctx, msg->data, msg->data_len,
    800566c6:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:2259
        js_free_message(msg);
    800566c8:	bf3fd0ef          	jal	ra,800542ba <js_free_message>
quickjs-nuttx/quickjs-libc.c:2261
        if (JS_IsException(data_obj))
    800566cc:	57a2                	lw	a5,40(sp)
    800566ce:	4919                	li	s2,6
    800566d0:	03278163          	beq	a5,s2,800566f2 <js_os_poll+0x2a2>
quickjs-nuttx/quickjs-libc.c:2263
        obj = JS_NewObject(ctx);
    800566d4:	8526                	mv	a0,s1
    800566d6:	94fc50ef          	jal	ra,8001c024 <JS_NewObject>
    800566da:	e82a                	sd	a0,16(sp)
    800566dc:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:2264
        if (JS_IsException(obj)) {
    800566de:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs-libc.c:2263
        obj = JS_NewObject(ctx);
    800566e2:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:2264
        if (JS_IsException(obj)) {
    800566e4:	07279563          	bne	a5,s2,8005674e <js_os_poll+0x2fe>
quickjs-nuttx/quickjs-libc.c:2265
            JS_FreeValue(ctx, data_obj);
    800566e8:	7582                	ld	a1,32(sp)
    800566ea:	7622                	ld	a2,40(sp)
    800566ec:	8526                	mv	a0,s1
    800566ee:	9bffb0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2278
            js_std_dump_error(ctx);
    800566f2:	8526                	mv	a0,s1
    800566f4:	cd9ff0ef          	jal	ra,800563cc <js_std_dump_error>
    800566f8:	b589                	j	8005653a <js_os_poll+0xea>
JS_IsNull():
quickjs-nuttx/quickjs.h:600
    return JS_VALUE_GET_TAG(v) == JS_TAG_NULL;
    800566fa:	7390                	ld	a2,32(a5)
js_os_poll():
quickjs-nuttx/quickjs-libc.c:2380
            if (!JS_IsNull(rh->rw_func[0]) &&
    800566fc:	0006071b          	sext.w	a4,a2
    80056700:	02a70163          	beq	a4,a0,80056722 <js_os_poll+0x2d2>
quickjs-nuttx/quickjs-libc.c:2381 (discriminator 1)
                FD_ISSET(rh->fd, &rfds)) {
    80056704:	4b98                	lw	a4,16(a5)
    80056706:	110c                	addi	a1,sp,160
    80056708:	40575693          	srai	a3,a4,0x5
    8005670c:	068a                	slli	a3,a3,0x2
    8005670e:	96ae                	add	a3,a3,a1
    80056710:	00e815bb          	sllw	a1,a6,a4
    80056714:	fc06a703          	lw	a4,-64(a3)
    80056718:	8f6d                	and	a4,a4,a1
quickjs-nuttx/quickjs-libc.c:2380 (discriminator 1)
            if (!JS_IsNull(rh->rw_func[0]) &&
    8005671a:	2701                	sext.w	a4,a4
    8005671c:	c319                	beqz	a4,80056722 <js_os_poll+0x2d2>
quickjs-nuttx/quickjs-libc.c:2382
                call_handler(ctx, rh->rw_func[0]);
    8005671e:	6f8c                	ld	a1,24(a5)
    80056720:	b36d                	j	800564ca <js_os_poll+0x7a>
JS_IsNull():
quickjs-nuttx/quickjs.h:600
    80056722:	7b90                	ld	a2,48(a5)
js_os_poll():
quickjs-nuttx/quickjs-libc.c:2386
            if (!JS_IsNull(rh->rw_func[1]) &&
    80056724:	0006071b          	sext.w	a4,a2
    80056728:	02a70163          	beq	a4,a0,8005674a <js_os_poll+0x2fa>
quickjs-nuttx/quickjs-libc.c:2387 (discriminator 1)
                FD_ISSET(rh->fd, &wfds)) {
    8005672c:	4b98                	lw	a4,16(a5)
    8005672e:	110c                	addi	a1,sp,160
    80056730:	40575693          	srai	a3,a4,0x5
    80056734:	068a                	slli	a3,a3,0x2
    80056736:	96ae                	add	a3,a3,a1
    80056738:	00e815bb          	sllw	a1,a6,a4
    8005673c:	fe06a703          	lw	a4,-32(a3)
    80056740:	8f6d                	and	a4,a4,a1
quickjs-nuttx/quickjs-libc.c:2386 (discriminator 1)
            if (!JS_IsNull(rh->rw_func[1]) &&
    80056742:	2701                	sext.w	a4,a4
    80056744:	c319                	beqz	a4,8005674a <js_os_poll+0x2fa>
quickjs-nuttx/quickjs-libc.c:2388
                call_handler(ctx, rh->rw_func[1]);
    80056746:	778c                	ld	a1,40(a5)
    80056748:	b349                	j	800564ca <js_os_poll+0x7a>
quickjs-nuttx/quickjs-libc.c:2378 (discriminator 2)
        list_for_each(el, &ts->os_rw_handlers) {
    8005674a:	679c                	ld	a5,8(a5)
    8005674c:	bdf1                	j	80056628 <js_os_poll+0x1d8>
handle_posted_message():
quickjs-nuttx/quickjs-libc.c:2268
        JS_DefinePropertyValueStr(ctx, obj, "data", data_obj, JS_PROP_C_W_E);
    8005674e:	7702                	ld	a4,32(sp)
    80056750:	77a2                	ld	a5,40(sp)
    80056752:	85aa                	mv	a1,a0
    80056754:	481d                	li	a6,7
    80056756:	00029697          	auipc	a3,0x29
    8005675a:	9da68693          	addi	a3,a3,-1574 # 8007f130 <utf8_min_code+0x5a8>
    8005675e:	8526                	mv	a0,s1
    80056760:	915da0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2272
        func = JS_DupValue(ctx, port->on_message_func);
    80056764:	7010                	ld	a2,32(s0)
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    80056766:	57d1                	li	a5,-12
    80056768:	6c0c                	ld	a1,24(s0)
    8005676a:	0006071b          	sext.w	a4,a2
    8005676e:	00e7f563          	bgeu	a5,a4,80056778 <js_os_poll+0x328>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80056772:	419c                	lw	a5,0(a1)
    80056774:	2785                	addiw	a5,a5,1
    80056776:	c19c                	sw	a5,0(a1)
handle_posted_message():
quickjs-nuttx/quickjs-libc.c:2273
        retval = JS_Call(ctx, func, JS_UNDEFINED, 1, (JSValueConst *)&obj);
    80056778:	478d                	li	a5,3
    8005677a:	470d                	li	a4,3
    8005677c:	01010813          	addi	a6,sp,16
    80056780:	4681                	li	a3,0
    80056782:	ecbe                	sd	a5,88(sp)
    80056784:	8526                	mv	a0,s1
    80056786:	4785                	li	a5,1
    80056788:	fc32                	sd	a2,56(sp)
    8005678a:	f82e                	sd	a1,48(sp)
    8005678c:	e882                	sd	zero,80(sp)
    8005678e:	e76ec0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs-libc.c:2274
        JS_FreeValue(ctx, obj);
    80056792:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs-libc.c:2273
        retval = JS_Call(ctx, func, JS_UNDEFINED, 1, (JSValueConst *)&obj);
    80056794:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs-libc.c:2274
        JS_FreeValue(ctx, obj);
    80056796:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs-libc.c:2273
        retval = JS_Call(ctx, func, JS_UNDEFINED, 1, (JSValueConst *)&obj);
    80056798:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs-libc.c:2274
        JS_FreeValue(ctx, obj);
    8005679a:	8526                	mv	a0,s1
    8005679c:	911fb0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2275
        JS_FreeValue(ctx, func);
    800567a0:	7662                	ld	a2,56(sp)
    800567a2:	75c2                	ld	a1,48(sp)
    800567a4:	8526                	mv	a0,s1
    800567a6:	907fb0ef          	jal	ra,800520ac <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800567aa:	6626                	ld	a2,72(sp)
handle_posted_message():
quickjs-nuttx/quickjs-libc.c:2276
        if (JS_IsException(retval)) {
    800567ac:	4799                	li	a5,6
    800567ae:	0006071b          	sext.w	a4,a2
    800567b2:	f4f700e3          	beq	a4,a5,800566f2 <js_os_poll+0x2a2>
quickjs-nuttx/quickjs-libc.c:2280
            JS_FreeValue(ctx, retval);
    800567b6:	6586                	ld	a1,64(sp)
    800567b8:	b3e1                	j	80056580 <js_os_poll+0x130>
quickjs-nuttx/quickjs-libc.c:2284
        pthread_mutex_unlock(&ps->mutex);
    800567ba:	855e                	mv	a0,s7
    800567bc:	1160e0ef          	jal	ra,800648d2 <pthread_mutex_unlock>
js_os_poll():
quickjs-nuttx/quickjs-libc.c:2394 (discriminator 2)
        list_for_each(el, &ts->port_list) {
    800567c0:	6400                	ld	s0,8(s0)
    800567c2:	bd85                	j	80056632 <js_os_poll+0x1e2>

00000000800567c4 <js_std_promise_rejection_tracker>:
js_std_promise_rejection_tracker():
quickjs-nuttx/quickjs-libc.c:3945

void js_std_promise_rejection_tracker(JSContext *ctx, JSValueConst promise,
                                      JSValueConst reason,
                                      BOOL is_handled, void *opaque)
{
    800567c4:	7179                	addi	sp,sp,-48
    800567c6:	f406                	sd	ra,40(sp)
    800567c8:	f022                	sd	s0,32(sp)
    800567ca:	e036                	sd	a3,0(sp)
    800567cc:	e43a                	sd	a4,8(sp)
quickjs-nuttx/quickjs-libc.c:3946
    if (!is_handled) {
    800567ce:	e785                	bnez	a5,800567f6 <js_std_promise_rejection_tracker+0x32>
    800567d0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3947
        fprintf(stderr, "Possibly unhandled promise rejection: ");
    800567d2:	4509                	li	a0,2
    800567d4:	38c0c0ef          	jal	ra,80062b60 <lib_get_stream>
    800567d8:	85aa                	mv	a1,a0
    800567da:	00029517          	auipc	a0,0x29
    800567de:	95e50513          	addi	a0,a0,-1698 # 8007f138 <utf8_min_code+0x5b0>
    800567e2:	2400c0ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/quickjs-libc.c:3948
        js_std_dump_error1(ctx, reason);
    800567e6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3950
    }
}
    800567e8:	7402                	ld	s0,32(sp)
quickjs-nuttx/quickjs-libc.c:3948
        js_std_dump_error1(ctx, reason);
    800567ea:	6582                	ld	a1,0(sp)
    800567ec:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:3950
}
    800567ee:	70a2                	ld	ra,40(sp)
    800567f0:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs-libc.c:3948
        js_std_dump_error1(ctx, reason);
    800567f2:	cd4fd06f          	j	80053cc6 <js_std_dump_error1>
quickjs-nuttx/quickjs-libc.c:3950
}
    800567f6:	70a2                	ld	ra,40(sp)
    800567f8:	7402                	ld	s0,32(sp)
    800567fa:	6145                	addi	sp,sp,48
    800567fc:	8082                	ret

00000000800567fe <js_std_loop>:
js_std_loop():
quickjs-nuttx/quickjs-libc.c:3954

/* main loop which calls the user JS callbacks */
void js_std_loop(JSContext *ctx)
{
    800567fe:	7179                	addi	sp,sp,-48
    80056800:	f022                	sd	s0,32(sp)
    80056802:	ec26                	sd	s1,24(sp)
    80056804:	f406                	sd	ra,40(sp)
    80056806:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3970
                }
                break;
            }
        }

        if (!os_poll_func || os_poll_func(ctx))
    80056808:	000ab497          	auipc	s1,0xab
    8005680c:	94848493          	addi	s1,s1,-1720 # 80101150 <os_poll_func>
quickjs-nuttx/quickjs-libc.c:3961
            err = JS_ExecutePendingJob(JS_GetRuntime(ctx), &ctx1);
    80056810:	8522                	mv	a0,s0
    80056812:	8cbb40ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80056816:	002c                	addi	a1,sp,8
    80056818:	c72b50ef          	jal	ra,8000bc8a <JS_ExecutePendingJob>
quickjs-nuttx/quickjs-libc.c:3962
            if (err <= 0) {
    8005681c:	fea04ae3          	bgtz	a0,80056810 <js_std_loop+0x12>
quickjs-nuttx/quickjs-libc.c:3963
                if (err < 0) {
    80056820:	c501                	beqz	a0,80056828 <js_std_loop+0x2a>
quickjs-nuttx/quickjs-libc.c:3964
                    js_std_dump_error(ctx1);
    80056822:	6522                	ld	a0,8(sp)
    80056824:	ba9ff0ef          	jal	ra,800563cc <js_std_dump_error>
quickjs-nuttx/quickjs-libc.c:3970
        if (!os_poll_func || os_poll_func(ctx))
    80056828:	609c                	ld	a5,0(s1)
    8005682a:	c781                	beqz	a5,80056832 <js_std_loop+0x34>
quickjs-nuttx/quickjs-libc.c:3970 (discriminator 1)
    8005682c:	8522                	mv	a0,s0
    8005682e:	9782                	jalr	a5
    80056830:	d165                	beqz	a0,80056810 <js_std_loop+0x12>
quickjs-nuttx/quickjs-libc.c:3973
            break;
    }
}
    80056832:	70a2                	ld	ra,40(sp)
    80056834:	7402                	ld	s0,32(sp)
    80056836:	64e2                	ld	s1,24(sp)
    80056838:	6145                	addi	sp,sp,48
    8005683a:	8082                	ret

000000008005683c <js_std_await>:
js_std_await():
quickjs-nuttx/quickjs-libc.c:3979

/* Wait for a promise and execute pending jobs while waiting for
   it. Return the promise result or JS_EXCEPTION in case of promise
   rejection. */
JSValue js_std_await(JSContext *ctx, JSValue obj)
{
    8005683c:	7159                	addi	sp,sp,-112
    8005683e:	f0a2                	sd	s0,96(sp)
    80056840:	eca6                	sd	s1,88(sp)
    80056842:	e8ca                	sd	s2,80(sp)
    80056844:	e4ce                	sd	s3,72(sp)
    80056846:	f486                	sd	ra,104(sp)
    80056848:	842a                	mv	s0,a0
    8005684a:	e02e                	sd	a1,0(sp)
    8005684c:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:3985
    JSValue ret;
    int state;

    for(;;) {
        state = JS_PromiseState(ctx, obj);
        if (state == JS_PROMISE_FULFILLED) {
    8005684e:	4485                	li	s1,1
quickjs-nuttx/quickjs-libc.c:3989
            ret = JS_PromiseResult(ctx, obj);
            JS_FreeValue(ctx, obj);
            break;
        } else if (state == JS_PROMISE_REJECTED) {
    80056850:	4909                	li	s2,2
quickjs-nuttx/quickjs-libc.c:4000
            int err;
            err = JS_ExecutePendingJob(JS_GetRuntime(ctx), &ctx1);
            if (err < 0) {
                js_std_dump_error(ctx1);
            }
            if (os_poll_func)
    80056852:	000ab997          	auipc	s3,0xab
    80056856:	8fe98993          	addi	s3,s3,-1794 # 80101150 <os_poll_func>
quickjs-nuttx/quickjs-libc.c:3984
        state = JS_PromiseState(ctx, obj);
    8005685a:	6582                	ld	a1,0(sp)
    8005685c:	6622                	ld	a2,8(sp)
    8005685e:	8522                	mv	a0,s0
    80056860:	ea6b80ef          	jal	ra,8000ef06 <JS_PromiseState>
    80056864:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs-libc.c:3985
        if (state == JS_PROMISE_FULFILLED) {
    80056866:	02951763          	bne	a0,s1,80056894 <js_std_await+0x58>
quickjs-nuttx/quickjs-libc.c:3986
            ret = JS_PromiseResult(ctx, obj);
    8005686a:	6582                	ld	a1,0(sp)
    8005686c:	6622                	ld	a2,8(sp)
    8005686e:	8522                	mv	a0,s0
    80056870:	ebab80ef          	jal	ra,8000ef2a <JS_PromiseResult>
quickjs-nuttx/quickjs-libc.c:3990
            ret = JS_Throw(ctx, JS_PromiseResult(ctx, obj));
    80056874:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:3991
            JS_FreeValue(ctx, obj);
    80056876:	6622                	ld	a2,8(sp)
    80056878:	6582                	ld	a1,0(sp)
quickjs-nuttx/quickjs-libc.c:3990
            ret = JS_Throw(ctx, JS_PromiseResult(ctx, obj));
    8005687a:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs-libc.c:3991
            JS_FreeValue(ctx, obj);
    8005687c:	8522                	mv	a0,s0
    8005687e:	82ffb0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:4009
            ret = obj;
            break;
        }
    }
    return ret;
}
    80056882:	70a6                	ld	ra,104(sp)
    80056884:	7406                	ld	s0,96(sp)
    80056886:	6542                	ld	a0,16(sp)
    80056888:	65e2                	ld	a1,24(sp)
    8005688a:	64e6                	ld	s1,88(sp)
    8005688c:	6946                	ld	s2,80(sp)
    8005688e:	69a6                	ld	s3,72(sp)
    80056890:	6165                	addi	sp,sp,112
    80056892:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3989
        } else if (state == JS_PROMISE_REJECTED) {
    80056894:	01251d63          	bne	a0,s2,800568ae <js_std_await+0x72>
quickjs-nuttx/quickjs-libc.c:3990
            ret = JS_Throw(ctx, JS_PromiseResult(ctx, obj));
    80056898:	6622                	ld	a2,8(sp)
    8005689a:	6582                	ld	a1,0(sp)
    8005689c:	8522                	mv	a0,s0
    8005689e:	e8cb80ef          	jal	ra,8000ef2a <JS_PromiseResult>
    800568a2:	862e                	mv	a2,a1
    800568a4:	85aa                	mv	a1,a0
    800568a6:	8522                	mv	a0,s0
    800568a8:	b9bb70ef          	jal	ra,8000e442 <JS_Throw>
    800568ac:	b7e1                	j	80056874 <js_std_await+0x38>
quickjs-nuttx/quickjs-libc.c:3993
        } else if (state == JS_PROMISE_PENDING) {
    800568ae:	e115                	bnez	a0,800568d2 <js_std_await+0x96>
quickjs-nuttx/quickjs-libc.c:3996
            err = JS_ExecutePendingJob(JS_GetRuntime(ctx), &ctx1);
    800568b0:	8522                	mv	a0,s0
    800568b2:	82bb40ef          	jal	ra,8000b0dc <JS_GetRuntime>
    800568b6:	180c                	addi	a1,sp,48
    800568b8:	bd2b50ef          	jal	ra,8000bc8a <JS_ExecutePendingJob>
quickjs-nuttx/quickjs-libc.c:3997
            if (err < 0) {
    800568bc:	00055563          	bgez	a0,800568c6 <js_std_await+0x8a>
quickjs-nuttx/quickjs-libc.c:3998
                js_std_dump_error(ctx1);
    800568c0:	7542                	ld	a0,48(sp)
    800568c2:	b0bff0ef          	jal	ra,800563cc <js_std_dump_error>
quickjs-nuttx/quickjs-libc.c:4000
            if (os_poll_func)
    800568c6:	0009b783          	ld	a5,0(s3)
    800568ca:	dbc1                	beqz	a5,8005685a <js_std_await+0x1e>
quickjs-nuttx/quickjs-libc.c:4001
                os_poll_func(ctx);
    800568cc:	8522                	mv	a0,s0
    800568ce:	9782                	jalr	a5
quickjs-nuttx/quickjs-libc.c:3984
        state = JS_PromiseState(ctx, obj);
    800568d0:	b769                	j	8005685a <js_std_await+0x1e>
quickjs-nuttx/quickjs-libc.c:4004
            ret = obj;
    800568d2:	6782                	ld	a5,0(sp)
    800568d4:	e83e                	sd	a5,16(sp)
    800568d6:	67a2                	ld	a5,8(sp)
    800568d8:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:4005
            break;
    800568da:	b765                	j	80056882 <js_std_await+0x46>

00000000800568dc <worker_func>:
worker_func():
quickjs-nuttx/quickjs-libc.c:3342
{
    800568dc:	7179                	addi	sp,sp,-48
    800568de:	e84a                	sd	s2,16(sp)
    800568e0:	f406                	sd	ra,40(sp)
    800568e2:	f022                	sd	s0,32(sp)
    800568e4:	ec26                	sd	s1,24(sp)
    800568e6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:3349
    rt = JS_NewRuntime();
    800568e8:	874b70ef          	jal	ra,8000d95c <JS_NewRuntime>
quickjs-nuttx/quickjs-libc.c:3350
    if (rt == NULL) {
    800568ec:	ed11                	bnez	a0,80056908 <worker_func+0x2c>
quickjs-nuttx/quickjs-libc.c:3351
        fprintf(stderr, "JS_NewRuntime failure");
    800568ee:	4509                	li	a0,2
    800568f0:	2700c0ef          	jal	ra,80062b60 <lib_get_stream>
    800568f4:	85aa                	mv	a1,a0
    800568f6:	00029517          	auipc	a0,0x29
    800568fa:	86a50513          	addi	a0,a0,-1942 # 8007f160 <utf8_min_code+0x5d8>
    800568fe:	1240c0ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/quickjs-libc.c:3352
        exit(1);
    80056902:	4505                	li	a0,1
    80056904:	29c0c0ef          	jal	ra,80062ba0 <exit>
    80056908:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:3354
    js_std_init_handlers(rt);
    8005690a:	987ff0ef          	jal	ra,80056290 <js_std_init_handlers>
quickjs-nuttx/quickjs-libc.c:3356
    JS_SetModuleLoaderFunc(rt, NULL, js_module_loader, NULL);
    8005690e:	4681                	li	a3,0
    80056910:	fffff617          	auipc	a2,0xfffff
    80056914:	65a60613          	addi	a2,a2,1626 # 80055f6a <js_module_loader>
    80056918:	4581                	li	a1,0
    8005691a:	8526                	mv	a0,s1
    8005691c:	d38b80ef          	jal	ra,8000ee54 <JS_SetModuleLoaderFunc>
quickjs-nuttx/quickjs-libc.c:3359
    ts = JS_GetRuntimeOpaque(rt);
    80056920:	8526                	mv	a0,s1
    80056922:	f22b40ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:3360
    ts->recv_pipe = args->recv_pipe;
    80056926:	01093783          	ld	a5,16(s2)
    8005692a:	e53c                	sd	a5,72(a0)
quickjs-nuttx/quickjs-libc.c:3361
    ts->send_pipe = args->send_pipe;
    8005692c:	01893783          	ld	a5,24(s2)
    80056930:	e93c                	sd	a5,80(a0)
quickjs-nuttx/quickjs-libc.c:3365
    ctx = js_worker_new_context_func(rt);
    80056932:	8526                	mv	a0,s1
    80056934:	000ab797          	auipc	a5,0xab
    80056938:	80c7b783          	ld	a5,-2036(a5) # 80101140 <js_worker_new_context_func>
    8005693c:	9782                	jalr	a5
    8005693e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3366
    if (ctx == NULL) {
    80056940:	e919                	bnez	a0,80056956 <worker_func+0x7a>
quickjs-nuttx/quickjs-libc.c:3367
        fprintf(stderr, "JS_NewContext failure");
    80056942:	4509                	li	a0,2
    80056944:	21c0c0ef          	jal	ra,80062b60 <lib_get_stream>
    80056948:	85aa                	mv	a1,a0
    8005694a:	00029517          	auipc	a0,0x29
    8005694e:	82e50513          	addi	a0,a0,-2002 # 8007f178 <utf8_min_code+0x5f0>
    80056952:	0d00c0ef          	jal	ra,80062a22 <fputs>
quickjs-nuttx/quickjs-libc.c:3370
    JS_SetCanBlock(rt, TRUE);
    80056956:	4585                	li	a1,1
    80056958:	8526                	mv	a0,s1
    8005695a:	f08b40ef          	jal	ra,8000b062 <JS_SetCanBlock>
quickjs-nuttx/quickjs-libc.c:3372
    js_std_add_helpers(ctx, -1, NULL);
    8005695e:	4601                	li	a2,0
    80056960:	55fd                	li	a1,-1
    80056962:	8522                	mv	a0,s0
    80056964:	ff4ff0ef          	jal	ra,80056158 <js_std_add_helpers>
quickjs-nuttx/quickjs-libc.c:3374
    val = JS_LoadModule(ctx, args->basename, args->filename);
    80056968:	00093603          	ld	a2,0(s2)
    8005696c:	00893583          	ld	a1,8(s2)
    80056970:	8522                	mv	a0,s0
    80056972:	c69f30ef          	jal	ra,8004a5da <JS_LoadModule>
    80056976:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs-libc.c:3375
    free(args->filename);
    80056978:	00093503          	ld	a0,0(s2)
quickjs-nuttx/quickjs-libc.c:3374
    val = JS_LoadModule(ctx, args->basename, args->filename);
    8005697c:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:3375
    free(args->filename);
    8005697e:	338090ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3376
    free(args->basename);
    80056982:	00893503          	ld	a0,8(s2)
    80056986:	330090ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3377
    free(args);
    8005698a:	854a                	mv	a0,s2
    8005698c:	32a090ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3378
    val = js_std_await(ctx, val);
    80056990:	6582                	ld	a1,0(sp)
    80056992:	6622                	ld	a2,8(sp)
    80056994:	8522                	mv	a0,s0
    80056996:	ea7ff0ef          	jal	ra,8005683c <js_std_await>
    8005699a:	e42e                	sd	a1,8(sp)
    8005699c:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs-libc.c:3379
    if (JS_IsException(val))
    8005699e:	2581                	sext.w	a1,a1
    800569a0:	4799                	li	a5,6
    800569a2:	00f59563          	bne	a1,a5,800569ac <worker_func+0xd0>
quickjs-nuttx/quickjs-libc.c:3380
        js_std_dump_error(ctx);
    800569a6:	8522                	mv	a0,s0
    800569a8:	a25ff0ef          	jal	ra,800563cc <js_std_dump_error>
quickjs-nuttx/quickjs-libc.c:3381
    JS_FreeValue(ctx, val);
    800569ac:	6582                	ld	a1,0(sp)
    800569ae:	6622                	ld	a2,8(sp)
    800569b0:	8522                	mv	a0,s0
    800569b2:	efafb0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3383
    js_std_loop(ctx);
    800569b6:	8522                	mv	a0,s0
    800569b8:	e47ff0ef          	jal	ra,800567fe <js_std_loop>
quickjs-nuttx/quickjs-libc.c:3385
    JS_FreeContext(ctx);
    800569bc:	8522                	mv	a0,s0
    800569be:	b56b50ef          	jal	ra,8000bd14 <JS_FreeContext>
quickjs-nuttx/quickjs-libc.c:3386
    js_std_free_handlers(rt);
    800569c2:	8526                	mv	a0,s1
    800569c4:	963ff0ef          	jal	ra,80056326 <js_std_free_handlers>
quickjs-nuttx/quickjs-libc.c:3387
    JS_FreeRuntime(rt);
    800569c8:	8526                	mv	a0,s1
    800569ca:	c43b60ef          	jal	ra,8000d60c <JS_FreeRuntime>
quickjs-nuttx/quickjs-libc.c:3389
}
    800569ce:	70a2                	ld	ra,40(sp)
    800569d0:	7402                	ld	s0,32(sp)
    800569d2:	64e2                	ld	s1,24(sp)
    800569d4:	6942                	ld	s2,16(sp)
    800569d6:	4501                	li	a0,0
    800569d8:	6145                	addi	sp,sp,48
    800569da:	8082                	ret

00000000800569dc <js_std_eval_binary>:
js_std_eval_binary():
quickjs-nuttx/quickjs-libc.c:4013

void js_std_eval_binary(JSContext *ctx, const uint8_t *buf, size_t buf_len,
                        int load_only)
{
    800569dc:	7139                	addi	sp,sp,-64
    800569de:	f426                	sd	s1,40(sp)
    800569e0:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs-libc.c:4015
    JSValue obj, val;
    obj = JS_ReadObject(ctx, buf, buf_len, JS_READ_OBJ_BYTECODE);
    800569e2:	4685                	li	a3,1
quickjs-nuttx/quickjs-libc.c:4013
{
    800569e4:	f822                	sd	s0,48(sp)
    800569e6:	fc06                	sd	ra,56(sp)
    800569e8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:4015
    obj = JS_ReadObject(ctx, buf, buf_len, JS_READ_OBJ_BYTECODE);
    800569ea:	e97f50ef          	jal	ra,8004c880 <JS_ReadObject>
    800569ee:	e02a                	sd	a0,0(sp)
    800569f0:	e42e                	sd	a1,8(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    800569f2:	0005879b          	sext.w	a5,a1
js_std_eval_binary():
quickjs-nuttx/quickjs-libc.c:4016
    if (JS_IsException(obj))
    800569f6:	4719                	li	a4,6
    800569f8:	02e78e63          	beq	a5,a4,80056a34 <js_std_eval_binary+0x58>
    800569fc:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:4019
        goto exception;
    if (load_only) {
        if (JS_VALUE_GET_TAG(obj) == JS_TAG_MODULE) {
    800569fe:	5775                	li	a4,-3
quickjs-nuttx/quickjs-libc.c:4018
    if (load_only) {
    80056a00:	cc89                	beqz	s1,80056a1a <js_std_eval_binary+0x3e>
quickjs-nuttx/quickjs-libc.c:4019
        if (JS_VALUE_GET_TAG(obj) == JS_TAG_MODULE) {
    80056a02:	08e79363          	bne	a5,a4,80056a88 <js_std_eval_binary+0xac>
quickjs-nuttx/quickjs-libc.c:4020
            js_module_set_import_meta(ctx, obj, FALSE, FALSE);
    80056a06:	85aa                	mv	a1,a0
    80056a08:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:4041
            js_std_dump_error(ctx);
            exit(1);
        }
        JS_FreeValue(ctx, val);
    }
}
    80056a0a:	7442                	ld	s0,48(sp)
    80056a0c:	70e2                	ld	ra,56(sp)
    80056a0e:	74a2                	ld	s1,40(sp)
quickjs-nuttx/quickjs-libc.c:4020
            js_module_set_import_meta(ctx, obj, FALSE, FALSE);
    80056a10:	4701                	li	a4,0
    80056a12:	4681                	li	a3,0
quickjs-nuttx/quickjs-libc.c:4041
}
    80056a14:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs-libc.c:4020
            js_module_set_import_meta(ctx, obj, FALSE, FALSE);
    80056a16:	c28ff06f          	j	80055e3e <js_module_set_import_meta>
quickjs-nuttx/quickjs-libc.c:4024
            if (JS_ResolveModule(ctx, obj) < 0) {
    80056a1a:	85aa                	mv	a1,a0
    80056a1c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:4023
        if (JS_VALUE_GET_TAG(obj) == JS_TAG_MODULE) {
    80056a1e:	06e79263          	bne	a5,a4,80056a82 <js_std_eval_binary+0xa6>
quickjs-nuttx/quickjs-libc.c:4024
            if (JS_ResolveModule(ctx, obj) < 0) {
    80056a22:	8facf0ef          	jal	ra,80025b1c <JS_ResolveModule>
    80056a26:	00055d63          	bgez	a0,80056a40 <js_std_eval_binary+0x64>
quickjs-nuttx/quickjs-libc.c:4025
                JS_FreeValue(ctx, obj);
    80056a2a:	6582                	ld	a1,0(sp)
    80056a2c:	6622                	ld	a2,8(sp)
    80056a2e:	8522                	mv	a0,s0
    80056a30:	e7cfb0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:4036
            js_std_dump_error(ctx);
    80056a34:	8522                	mv	a0,s0
    80056a36:	997ff0ef          	jal	ra,800563cc <js_std_dump_error>
quickjs-nuttx/quickjs-libc.c:4037
            exit(1);
    80056a3a:	4505                	li	a0,1
    80056a3c:	1640c0ef          	jal	ra,80062ba0 <exit>
quickjs-nuttx/quickjs-libc.c:4028
            js_module_set_import_meta(ctx, obj, FALSE, TRUE);
    80056a40:	6582                	ld	a1,0(sp)
    80056a42:	6622                	ld	a2,8(sp)
    80056a44:	4705                	li	a4,1
    80056a46:	4681                	li	a3,0
    80056a48:	8522                	mv	a0,s0
    80056a4a:	bf4ff0ef          	jal	ra,80055e3e <js_module_set_import_meta>
quickjs-nuttx/quickjs-libc.c:4029
            val = JS_EvalFunction(ctx, obj);
    80056a4e:	6622                	ld	a2,8(sp)
    80056a50:	6582                	ld	a1,0(sp)
    80056a52:	8522                	mv	a0,s0
    80056a54:	bdaf30ef          	jal	ra,80049e2e <JS_EvalFunction>
    80056a58:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:4030
            val = js_std_await(ctx, val);
    80056a5a:	85aa                	mv	a1,a0
    80056a5c:	8522                	mv	a0,s0
    80056a5e:	ddfff0ef          	jal	ra,8005683c <js_std_await>
quickjs-nuttx/quickjs-libc.c:4032
            val = JS_EvalFunction(ctx, obj);
    80056a62:	ec2e                	sd	a1,24(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80056a64:	6662                	ld	a2,24(sp)
js_std_eval_binary():
quickjs-nuttx/quickjs-libc.c:4032
    80056a66:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs-libc.c:4034
        if (JS_IsException(val)) {
    80056a68:	4799                	li	a5,6
    80056a6a:	0006071b          	sext.w	a4,a2
    80056a6e:	fcf703e3          	beq	a4,a5,80056a34 <js_std_eval_binary+0x58>
quickjs-nuttx/quickjs-libc.c:4039
        JS_FreeValue(ctx, val);
    80056a72:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:4041
}
    80056a74:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs-libc.c:4039
        JS_FreeValue(ctx, val);
    80056a76:	65c2                	ld	a1,16(sp)
quickjs-nuttx/quickjs-libc.c:4041
}
    80056a78:	70e2                	ld	ra,56(sp)
    80056a7a:	74a2                	ld	s1,40(sp)
    80056a7c:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs-libc.c:4039
        JS_FreeValue(ctx, val);
    80056a7e:	e2efb06f          	j	800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:4032
            val = JS_EvalFunction(ctx, obj);
    80056a82:	bacf30ef          	jal	ra,80049e2e <JS_EvalFunction>
    80056a86:	bff1                	j	80056a62 <js_std_eval_binary+0x86>
quickjs-nuttx/quickjs-libc.c:4041
}
    80056a88:	70e2                	ld	ra,56(sp)
    80056a8a:	7442                	ld	s0,48(sp)
    80056a8c:	74a2                	ld	s1,40(sp)
    80056a8e:	6121                	addi	sp,sp,64
    80056a90:	8082                	ret

0000000080056a92 <bf_realloc>:
bf_realloc():
quickjs-nuttx/libbf.h:202
    return s->realloc_func(s->realloc_opaque, ptr, size);
    80056a92:	651c                	ld	a5,8(a0)
    80056a94:	6108                	ld	a0,0(a0)
    80056a96:	8782                	jr	a5

0000000080056a98 <bf_malloc>:
bf_malloc():
quickjs-nuttx/libbf.h:207
{
    80056a98:	862e                	mv	a2,a1
quickjs-nuttx/libbf.h:208
    return bf_realloc(s, NULL, size);
    80056a9a:	4581                	li	a1,0
    80056a9c:	ff7ff06f          	j	80056a92 <bf_realloc>

0000000080056aa0 <bf_free>:
bf_free():
quickjs-nuttx/libbf.h:214
    if (ptr)
    80056aa0:	c581                	beqz	a1,80056aa8 <bf_free+0x8>
quickjs-nuttx/libbf.h:215
        bf_realloc(s, ptr, 0);
    80056aa2:	4601                	li	a2,0
    80056aa4:	fefff06f          	j	80056a92 <bf_realloc>
quickjs-nuttx/libbf.h:216
}
    80056aa8:	8082                	ret

0000000080056aaa <bf_delete>:
bf_delete():
quickjs-nuttx/libbf.h:221
{
    80056aaa:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.h:222
    bf_context_t *s = r->ctx;
    80056aac:	6108                	ld	a0,0(a0)
quickjs-nuttx/libbf.h:224
    if (s && r->tab) {
    80056aae:	c511                	beqz	a0,80056aba <bf_delete+0x10>
quickjs-nuttx/libbf.h:224 (discriminator 1)
    80056ab0:	738c                	ld	a1,32(a5)
    80056ab2:	c581                	beqz	a1,80056aba <bf_delete+0x10>
quickjs-nuttx/libbf.h:225
        bf_realloc(s, r->tab, 0);
    80056ab4:	4601                	li	a2,0
    80056ab6:	fddff06f          	j	80056a92 <bf_realloc>
quickjs-nuttx/libbf.h:227
}
    80056aba:	8082                	ret

0000000080056abc <sat_add>:
sat_add():
quickjs-nuttx/libbf.c:160
    return a;
}

/* signed addition with saturation */
static inline slimb_t sat_add(slimb_t a, slimb_t b)
{
    80056abc:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:162
    slimb_t r;
    r = a + b;
    80056abe:	952e                	add	a0,a0,a1
quickjs-nuttx/libbf.c:164
    /* overflow ? */
    if (((a ^ r) & (b ^ r)) < 0)
    80056ac0:	00a7c733          	xor	a4,a5,a0
    80056ac4:	8da9                	xor	a1,a1,a0
    80056ac6:	8df9                	and	a1,a1,a4
    80056ac8:	0005d663          	bgez	a1,80056ad4 <sat_add+0x18>
quickjs-nuttx/libbf.c:165
        r = (a >> (LIMB_BITS - 1)) ^ (((limb_t)1 << (LIMB_BITS - 1)) - 1);
    80056acc:	557d                	li	a0,-1
    80056ace:	97fd                	srai	a5,a5,0x3f
    80056ad0:	8105                	srli	a0,a0,0x1
    80056ad2:	8d3d                	xor	a0,a0,a5
quickjs-nuttx/libbf.c:167
    return r;
}
    80056ad4:	8082                	ret

0000000080056ad6 <get_limbz>:
get_limbz():
quickjs-nuttx/libbf.c:328
    *r = *a;
}

static limb_t get_limbz(const bf_t *a, limb_t idx)
{
    if (idx >= a->len)
    80056ad6:	6d1c                	ld	a5,24(a0)
    80056ad8:	00f5f763          	bgeu	a1,a5,80056ae6 <get_limbz+0x10>
quickjs-nuttx/libbf.c:331
        return 0;
    else
        return a->tab[idx];
    80056adc:	711c                	ld	a5,32(a0)
    80056ade:	058e                	slli	a1,a1,0x3
    80056ae0:	95be                	add	a1,a1,a5
    80056ae2:	6188                	ld	a0,0(a1)
    80056ae4:	8082                	ret
quickjs-nuttx/libbf.c:329
        return 0;
    80056ae6:	4501                	li	a0,0
quickjs-nuttx/libbf.c:332
}
    80056ae8:	8082                	ret

0000000080056aea <get_bits>:
get_bits():
quickjs-nuttx/libbf.c:340
static inline limb_t get_bits(const limb_t *tab, limb_t len, slimb_t pos)
{
    limb_t i, a0, a1;
    int p;

    i = pos >> LIMB_LOG2_BITS;
    80056aea:	40665793          	srai	a5,a2,0x6
quickjs-nuttx/libbf.c:336
{
    80056aee:	872a                	mv	a4,a0
quickjs-nuttx/libbf.c:341
    p = pos & (LIMB_BITS - 1);
    80056af0:	03f67613          	andi	a2,a2,63
quickjs-nuttx/libbf.c:345
    if (i < len)
        a0 = tab[i];
    else
        a0 = 0;
    80056af4:	4501                	li	a0,0
quickjs-nuttx/libbf.c:342
    if (i < len)
    80056af6:	00b7f663          	bgeu	a5,a1,80056b02 <get_bits+0x18>
quickjs-nuttx/libbf.c:343
        a0 = tab[i];
    80056afa:	00379693          	slli	a3,a5,0x3
    80056afe:	96ba                	add	a3,a3,a4
    80056b00:	6288                	ld	a0,0(a3)
quickjs-nuttx/libbf.c:346
    if (p == 0) {
    80056b02:	c205                	beqz	a2,80056b22 <get_bits+0x38>
quickjs-nuttx/libbf.c:349
        return a0;
    } else {
        i++;
    80056b04:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:353
        if (i < len)
            a1 = tab[i];
        else
            a1 = 0;
    80056b06:	4681                	li	a3,0
quickjs-nuttx/libbf.c:350
        if (i < len)
    80056b08:	00b7f563          	bgeu	a5,a1,80056b12 <get_bits+0x28>
quickjs-nuttx/libbf.c:351
            a1 = tab[i];
    80056b0c:	078e                	slli	a5,a5,0x3
    80056b0e:	97ba                	add	a5,a5,a4
    80056b10:	6394                	ld	a3,0(a5)
quickjs-nuttx/libbf.c:354
        return (a0 >> p) | (a1 << (LIMB_BITS - p));
    80056b12:	04000793          	li	a5,64
    80056b16:	9f91                	subw	a5,a5,a2
    80056b18:	00f696b3          	sll	a3,a3,a5
    80056b1c:	00c55533          	srl	a0,a0,a2
    80056b20:	8d55                	or	a0,a0,a3
quickjs-nuttx/libbf.c:356
    }
}
    80056b22:	8082                	ret

0000000080056b24 <get_bit>:
get_bit():
quickjs-nuttx/libbf.c:359

static inline limb_t get_bit(const limb_t *tab, limb_t len, slimb_t pos)
{
    80056b24:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:361
    slimb_t i;
    i = pos >> LIMB_LOG2_BITS;
    80056b26:	40665713          	srai	a4,a2,0x6
quickjs-nuttx/libbf.c:363
    if (i < 0 || i >= len)
        return 0;
    80056b2a:	4501                	li	a0,0
quickjs-nuttx/libbf.c:362
    if (i < 0 || i >= len)
    80056b2c:	00064b63          	bltz	a2,80056b42 <get_bit+0x1e>
quickjs-nuttx/libbf.c:362 (discriminator 1)
    80056b30:	00b77963          	bgeu	a4,a1,80056b42 <get_bit+0x1e>
quickjs-nuttx/libbf.c:364
    return (tab[i] >> (pos & (LIMB_BITS - 1))) & 1;
    80056b34:	070e                	slli	a4,a4,0x3
    80056b36:	97ba                	add	a5,a5,a4
    80056b38:	6388                	ld	a0,0(a5)
    80056b3a:	00c55533          	srl	a0,a0,a2
    80056b3e:	8905                	andi	a0,a0,1
    80056b40:	8082                	ret
quickjs-nuttx/libbf.c:365
}
    80056b42:	8082                	ret

0000000080056b44 <limb_mask>:
limb_mask():
quickjs-nuttx/libbf.c:371

static inline limb_t limb_mask(int start, int last)
{
    limb_t v;
    int n;
    n = last - start + 1;
    80056b44:	40a587bb          	subw	a5,a1,a0
    80056b48:	0017859b          	addiw	a1,a5,1
quickjs-nuttx/libbf.c:372
    if (n == LIMB_BITS)
    80056b4c:	04000793          	li	a5,64
    80056b50:	00f58963          	beq	a1,a5,80056b62 <limb_mask+0x1e>
quickjs-nuttx/libbf.c:375
        v = -1;
    else
        v = (((limb_t)1 << n) - 1) << start;
    80056b54:	4785                	li	a5,1
    80056b56:	00b797b3          	sll	a5,a5,a1
    80056b5a:	17fd                	addi	a5,a5,-1
    80056b5c:	00a79533          	sll	a0,a5,a0
    80056b60:	8082                	ret
quickjs-nuttx/libbf.c:373
        v = -1;
    80056b62:	557d                	li	a0,-1
quickjs-nuttx/libbf.c:377
    return v;
}
    80056b64:	8082                	ret

0000000080056b66 <mp_scan_nz>:
mp_scan_nz():
quickjs-nuttx/libbf.c:382

static limb_t mp_scan_nz(const limb_t *tab, mp_size_t n)
{
    mp_size_t i;
    for(i = 0; i < n; i++) {
    80056b66:	4781                	li	a5,0
quickjs-nuttx/libbf.c:382 (discriminator 1)
    80056b68:	00b7c463          	blt	a5,a1,80056b70 <mp_scan_nz+0xa>
quickjs-nuttx/libbf.c:386
        if (tab[i] != 0)
            return 1;
    }
    return 0;
    80056b6c:	4501                	li	a0,0
    80056b6e:	8082                	ret
quickjs-nuttx/libbf.c:383
        if (tab[i] != 0)
    80056b70:	00379713          	slli	a4,a5,0x3
    80056b74:	972a                	add	a4,a4,a0
    80056b76:	6318                	ld	a4,0(a4)
    80056b78:	e319                	bnez	a4,80056b7e <mp_scan_nz+0x18>
quickjs-nuttx/libbf.c:382 (discriminator 2)
    for(i = 0; i < n; i++) {
    80056b7a:	0785                	addi	a5,a5,1
    80056b7c:	b7f5                	j	80056b68 <mp_scan_nz+0x2>
quickjs-nuttx/libbf.c:384
            return 1;
    80056b7e:	4505                	li	a0,1
quickjs-nuttx/libbf.c:387
}
    80056b80:	8082                	ret

0000000080056b82 <udiv1norm>:
udiv1norm():
quickjs-nuttx/libbf.c:1246
static inline limb_t udiv1norm(limb_t *pr, limb_t a1, limb_t a0,
                                limb_t d, limb_t d_inv)
{
    limb_t n1m, n_adj, q, r, ah;
    dlimb_t a;
    n1m = ((slimb_t)a0 >> (LIMB_BITS - 1));
    80056b82:	43f65813          	srai	a6,a2,0x3f
quickjs-nuttx/libbf.c:1248
    n_adj = a0 + (n1m & d);
    a = (dlimb_t)d_inv * (a1 - n1m) + n_adj;
    80056b86:	410588b3          	sub	a7,a1,a6
    80056b8a:	02e88333          	mul	t1,a7,a4
quickjs-nuttx/libbf.c:1247
    n_adj = a0 + (n1m & d);
    80056b8e:	00d877b3          	and	a5,a6,a3
    80056b92:	97b2                	add	a5,a5,a2
quickjs-nuttx/libbf.c:1248
    a = (dlimb_t)d_inv * (a1 - n1m) + n_adj;
    80056b94:	02e8b8b3          	mulhu	a7,a7,a4
    80056b98:	979a                	add	a5,a5,t1
    80056b9a:	0067b7b3          	sltu	a5,a5,t1
    80056b9e:	40d60733          	sub	a4,a2,a3
    80056ba2:	00e63633          	sltu	a2,a2,a4
    80056ba6:	97c6                	add	a5,a5,a7
quickjs-nuttx/libbf.c:1249
    q = (a >> LIMB_BITS) + a1;
    80056ba8:	97ae                	add	a5,a5,a1
quickjs-nuttx/libbf.c:1253
    /* compute a - q * r and update q so that the remainder is\
       between 0 and d - 1 */
    a = ((dlimb_t)a1 << LIMB_BITS) | a0;
    a = a - (dlimb_t)q * d - d;
    80056baa:	8d91                	sub	a1,a1,a2
    80056bac:	02d78633          	mul	a2,a5,a3
    80056bb0:	02d7b833          	mulhu	a6,a5,a3
    80056bb4:	40c70633          	sub	a2,a4,a2
    80056bb8:	00c73733          	sltu	a4,a4,a2
    80056bbc:	0785                	addi	a5,a5,1
    80056bbe:	410585b3          	sub	a1,a1,a6
    80056bc2:	8d99                	sub	a1,a1,a4
quickjs-nuttx/libbf.c:1256
    ah = a >> LIMB_BITS;
    q += 1 + ah;
    r = (limb_t)a + (ah & d);
    80056bc4:	8eed                	and	a3,a3,a1
    80056bc6:	96b2                	add	a3,a3,a2
quickjs-nuttx/libbf.c:1257
    *pr = r;
    80056bc8:	e114                	sd	a3,0(a0)
quickjs-nuttx/libbf.c:1259
    return q;
}
    80056bca:	00f58533          	add	a0,a1,a5
    80056bce:	8082                	ret

0000000080056bd0 <mp_sqrtrem1>:
mp_sqrtrem1():
quickjs-nuttx/libbf.c:1911
static limb_t mp_sqrtrem1(limb_t *pr, limb_t a)
{
    limb_t s1, r1, s, r, q, u, num;
    
    /* use a table for the 16 -> 8 bit sqrt */
    s1 = sqrt_table[(a >> (LIMB_BITS - 8)) - 64];
    80056bd0:	0385d793          	srli	a5,a1,0x38
    80056bd4:	fc078793          	addi	a5,a5,-64
    80056bd8:	0002a717          	auipc	a4,0x2a
    80056bdc:	18070713          	addi	a4,a4,384 # 80080d58 <sqrt_table>
    80056be0:	0786                	slli	a5,a5,0x1
    80056be2:	97ba                	add	a5,a5,a4
    80056be4:	0007d783          	lhu	a5,0(a5)
quickjs-nuttx/libbf.c:1912
    r1 = (a >> (LIMB_BITS - 16)) - s1 * s1;
    80056be8:	0305d713          	srli	a4,a1,0x30
quickjs-nuttx/libbf.c:1907
{
    80056bec:	862a                	mv	a2,a0
quickjs-nuttx/libbf.c:1912
    r1 = (a >> (LIMB_BITS - 16)) - s1 * s1;
    80056bee:	02f786b3          	mul	a3,a5,a5
    80056bf2:	8f15                	sub	a4,a4,a3
quickjs-nuttx/libbf.c:1913
    if (r1 > 2 * s1) {
    80056bf4:	00179693          	slli	a3,a5,0x1
    80056bf8:	00e6f563          	bgeu	a3,a4,80056c02 <mp_sqrtrem1+0x32>
quickjs-nuttx/libbf.c:1914
        r1 -= 2 * s1 + 1;
    80056bfc:	8f15                	sub	a4,a4,a3
    80056bfe:	177d                	addi	a4,a4,-1
quickjs-nuttx/libbf.c:1915
        s1++;
    80056c00:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:1919
    }
    
    /* one iteration to get a 32 -> 16 bit sqrt */
    num = (r1 << 8) | ((a >> (LIMB_BITS - 32 + 8)) & 0xff);
    80056c02:	0285d693          	srli	a3,a1,0x28
    80056c06:	0722                	slli	a4,a4,0x8
    80056c08:	0ff6f693          	zext.b	a3,a3
    80056c0c:	8ed9                	or	a3,a3,a4
quickjs-nuttx/libbf.c:1920
    q = num / (2 * s1); /* q <= 2^8 */
    80056c0e:	00179713          	slli	a4,a5,0x1
    80056c12:	02e6d533          	divu	a0,a3,a4
quickjs-nuttx/libbf.c:1922
    u = num % (2 * s1);
    s = (s1 << 8) + q;
    80056c16:	07a2                	slli	a5,a5,0x8
quickjs-nuttx/libbf.c:1921
    u = num % (2 * s1);
    80056c18:	02e6f733          	remu	a4,a3,a4
quickjs-nuttx/libbf.c:1922
    s = (s1 << 8) + q;
    80056c1c:	97aa                	add	a5,a5,a0
quickjs-nuttx/libbf.c:1923
    r = (u << 8) | ((a >> (LIMB_BITS - 32)) & 0xff);
    80056c1e:	0205d693          	srli	a3,a1,0x20
    80056c22:	0ff6f693          	zext.b	a3,a3
quickjs-nuttx/libbf.c:1924
    r -= q * q;
    80056c26:	02a50533          	mul	a0,a0,a0
quickjs-nuttx/libbf.c:1923
    r = (u << 8) | ((a >> (LIMB_BITS - 32)) & 0xff);
    80056c2a:	0722                	slli	a4,a4,0x8
    80056c2c:	8f55                	or	a4,a4,a3
quickjs-nuttx/libbf.c:1924
    r -= q * q;
    80056c2e:	8f09                	sub	a4,a4,a0
quickjs-nuttx/libbf.c:1925
    if ((slimb_t)r < 0) {
    80056c30:	00075763          	bgez	a4,80056c3e <mp_sqrtrem1+0x6e>
quickjs-nuttx/libbf.c:1926
        s--;
    80056c34:	17fd                	addi	a5,a5,-1
quickjs-nuttx/libbf.c:1927
        r += 2 * s + 1;
    80056c36:	00179693          	slli	a3,a5,0x1
    80056c3a:	9736                	add	a4,a4,a3
    80056c3c:	0705                	addi	a4,a4,1
quickjs-nuttx/libbf.c:1934

#if LIMB_BITS == 64
    s1 = s;
    r1 = r;
    /* one more iteration for 64 -> 32 bit sqrt */
    num = (r1 << 16) | ((a >> (LIMB_BITS - 64 + 16)) & 0xffff);
    80056c3e:	6841                	lui	a6,0x10
    80056c40:	0105d693          	srli	a3,a1,0x10
    80056c44:	187d                	addi	a6,a6,-1
    80056c46:	0106f6b3          	and	a3,a3,a6
    80056c4a:	0742                	slli	a4,a4,0x10
quickjs-nuttx/libbf.c:1935
    q = num / (2 * s1); /* q <= 2^16 */
    80056c4c:	00179893          	slli	a7,a5,0x1
quickjs-nuttx/libbf.c:1934
    num = (r1 << 16) | ((a >> (LIMB_BITS - 64 + 16)) & 0xffff);
    80056c50:	8f55                	or	a4,a4,a3
quickjs-nuttx/libbf.c:1935
    q = num / (2 * s1); /* q <= 2^16 */
    80056c52:	031756b3          	divu	a3,a4,a7
quickjs-nuttx/libbf.c:1937
    u = num % (2 * s1);
    s = (s1 << 16) + q;
    80056c56:	07c2                	slli	a5,a5,0x10
quickjs-nuttx/libbf.c:1938
    r = (u << 16) | ((a >> (LIMB_BITS - 64)) & 0xffff);
    80056c58:	0105f5b3          	and	a1,a1,a6
quickjs-nuttx/libbf.c:1936
    u = num % (2 * s1);
    80056c5c:	03177733          	remu	a4,a4,a7
quickjs-nuttx/libbf.c:1937
    s = (s1 << 16) + q;
    80056c60:	00d78533          	add	a0,a5,a3
quickjs-nuttx/libbf.c:1939
    r -= q * q;
    80056c64:	02d686b3          	mul	a3,a3,a3
quickjs-nuttx/libbf.c:1938
    r = (u << 16) | ((a >> (LIMB_BITS - 64)) & 0xffff);
    80056c68:	01071793          	slli	a5,a4,0x10
    80056c6c:	8fcd                	or	a5,a5,a1
quickjs-nuttx/libbf.c:1939
    r -= q * q;
    80056c6e:	8f95                	sub	a5,a5,a3
quickjs-nuttx/libbf.c:1940
    if ((slimb_t)r < 0) {
    80056c70:	0007d763          	bgez	a5,80056c7e <mp_sqrtrem1+0xae>
quickjs-nuttx/libbf.c:1941
        s--;
    80056c74:	157d                	addi	a0,a0,-1
quickjs-nuttx/libbf.c:1942
        r += 2 * s + 1;
    80056c76:	00151713          	slli	a4,a0,0x1
    80056c7a:	97ba                	add	a5,a5,a4
    80056c7c:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:1945
    }
#endif
    *pr = r;
    80056c7e:	e21c                	sd	a5,0(a2)
quickjs-nuttx/libbf.c:1947
    return s;
}
    80056c80:	8082                	ret

0000000080056c82 <to_digit>:
to_digit():
quickjs-nuttx/libbf.c:2844
    return ret;
}

static inline int to_digit(int c)
{
    if (c >= '0' && c <= '9')
    80056c82:	fd05061b          	addiw	a2,a0,-48
    80056c86:	46a5                	li	a3,9
quickjs-nuttx/libbf.c:2843
{
    80056c88:	87aa                	mv	a5,a0
quickjs-nuttx/libbf.c:2844
    if (c >= '0' && c <= '9')
    80056c8a:	0005071b          	sext.w	a4,a0
    80056c8e:	00c6e463          	bltu	a3,a2,80056c96 <to_digit+0x14>
quickjs-nuttx/libbf.c:2845
        return c - '0';
    80056c92:	8532                	mv	a0,a2
    80056c94:	8082                	ret
quickjs-nuttx/libbf.c:2846
    else if (c >= 'A' && c <= 'Z')
    80056c96:	fbf7069b          	addiw	a3,a4,-65
    80056c9a:	4665                	li	a2,25
    80056c9c:	00d66563          	bltu	a2,a3,80056ca6 <to_digit+0x24>
quickjs-nuttx/libbf.c:2847
        return c - 'A' + 10;
    80056ca0:	fc95051b          	addiw	a0,a0,-55
    80056ca4:	8082                	ret
quickjs-nuttx/libbf.c:2848
    else if (c >= 'a' && c <= 'z')
    80056ca6:	f9f7071b          	addiw	a4,a4,-97
quickjs-nuttx/libbf.c:2851
        return c - 'a' + 10;
    else
        return 36;
    80056caa:	02400513          	li	a0,36
quickjs-nuttx/libbf.c:2848
    else if (c >= 'a' && c <= 'z')
    80056cae:	00e66463          	bltu	a2,a4,80056cb6 <to_digit+0x34>
quickjs-nuttx/libbf.c:2849
        return c - 'a' + 10;
    80056cb2:	fa97851b          	addiw	a0,a5,-87
quickjs-nuttx/libbf.c:2852
}
    80056cb6:	8082                	ret

0000000080056cb8 <bf_dbuf_realloc>:
bf_dbuf_realloc():
quickjs-nuttx/libbf.c:3718
}

static void *bf_dbuf_realloc(void *opaque, void *ptr, size_t size)
{
    bf_context_t *s = opaque;
    return bf_realloc(s, ptr, size);
    80056cb8:	ddbff06f          	j	80056a92 <bf_realloc>

0000000080056cbc <fast_udiv>:
fast_udiv():
quickjs-nuttx/libbf.c:5495
}

static inline limb_t fast_udiv(limb_t a, const FastDivData *s)
{
    limb_t t0, t1;
    muldq(t1, t0, s->m1, a);
    80056cbc:	619c                	ld	a5,0(a1)
quickjs-nuttx/libbf.c:5496
    t0 = (a - t1) >> s->shift1;
    80056cbe:	00858703          	lb	a4,8(a1)
quickjs-nuttx/libbf.c:5495
    muldq(t1, t0, s->m1, a);
    80056cc2:	02f537b3          	mulhu	a5,a0,a5
quickjs-nuttx/libbf.c:5496
    t0 = (a - t1) >> s->shift1;
    80056cc6:	8d1d                	sub	a0,a0,a5
    80056cc8:	00e55533          	srl	a0,a0,a4
quickjs-nuttx/libbf.c:5497
    return (t1 + t0) >> s->shift2;
    80056ccc:	953e                	add	a0,a0,a5
    80056cce:	00958783          	lb	a5,9(a1)
quickjs-nuttx/libbf.c:5498
}
    80056cd2:	00f55533          	srl	a0,a0,a5
    80056cd6:	8082                	ret

0000000080056cd8 <get_digit>:
get_digit():
quickjs-nuttx/libbf.c:6326
    }
    return 0;
}

static limb_t get_digit(const limb_t *tab, limb_t len, slimb_t pos)
{
    80056cd8:	872a                	mv	a4,a0
floor_div():
quickjs-nuttx/libbf.c:142
    if (a >= 0) {
    80056cda:	02064f63          	bltz	a2,80056d18 <get_digit+0x40>
quickjs-nuttx/libbf.c:143
        return a / b;
    80056cde:	47cd                	li	a5,19
    80056ce0:	02f647b3          	div	a5,a2,a5
get_digit():
quickjs-nuttx/libbf.c:6331 (discriminator 1)
    slimb_t i;
    int shift;
    i = floor_div(pos, LIMB_DIGITS);
    if (i < 0 || i >= len)
        return 0;
    80056ce4:	4501                	li	a0,0
quickjs-nuttx/libbf.c:6330 (discriminator 1)
    if (i < 0 || i >= len)
    80056ce6:	04b7f463          	bgeu	a5,a1,80056d2e <get_digit+0x56>
quickjs-nuttx/libbf.c:6332
    shift = pos - i * LIMB_DIGITS;
    80056cea:	55b5                	li	a1,-19
quickjs-nuttx/libbf.c:6326
{
    80056cec:	1141                	addi	sp,sp,-16
    80056cee:	e406                	sd	ra,8(sp)
quickjs-nuttx/libbf.c:6332
    shift = pos - i * LIMB_DIGITS;
    80056cf0:	02f585bb          	mulw	a1,a1,a5
quickjs-nuttx/libbf.c:6333
    return fast_shr_dec(tab[i], shift) % 10;
    80056cf4:	078e                	slli	a5,a5,0x3
    80056cf6:	97ba                	add	a5,a5,a4
fast_shr_dec():
quickjs-nuttx/libbf.c:5566
    return fast_udiv(a, &mp_pow_div[shift]);
    80056cf8:	6388                	ld	a0,0(a5)
    80056cfa:	9e2d                	addw	a2,a2,a1
    80056cfc:	0612                	slli	a2,a2,0x4
    80056cfe:	0002a597          	auipc	a1,0x2a
    80056d02:	e3a58593          	addi	a1,a1,-454 # 80080b38 <mp_pow_div>
    80056d06:	95b2                	add	a1,a1,a2
    80056d08:	fb5ff0ef          	jal	ra,80056cbc <fast_udiv>
get_digit():
quickjs-nuttx/libbf.c:6334
}
    80056d0c:	60a2                	ld	ra,8(sp)
quickjs-nuttx/libbf.c:6333
    return fast_shr_dec(tab[i], shift) % 10;
    80056d0e:	47a9                	li	a5,10
    80056d10:	02f57533          	remu	a0,a0,a5
quickjs-nuttx/libbf.c:6334
}
    80056d14:	0141                	addi	sp,sp,16
    80056d16:	8082                	ret
floor_div():
quickjs-nuttx/libbf.c:145
        return (a - b + 1) / b;
    80056d18:	fee60793          	addi	a5,a2,-18
get_digit():
quickjs-nuttx/libbf.c:6330
    if (i < 0 || i >= len)
    80056d1c:	56b9                	li	a3,-18
quickjs-nuttx/libbf.c:6331
        return 0;
    80056d1e:	4501                	li	a0,0
quickjs-nuttx/libbf.c:6330
    if (i < 0 || i >= len)
    80056d20:	00d7c763          	blt	a5,a3,80056d2e <get_digit+0x56>
floor_div():
quickjs-nuttx/libbf.c:145
        return (a - b + 1) / b;
    80056d24:	0003d797          	auipc	a5,0x3d
    80056d28:	f4c7b783          	ld	a5,-180(a5) # 80093c70 <_erodata+0xfe>
    80056d2c:	bf65                	j	80056ce4 <get_digit+0xc>
get_digit():
quickjs-nuttx/libbf.c:6334
}
    80056d2e:	8082                	ret

0000000080056d30 <put_bits>:
put_bits():
quickjs-nuttx/libbf.c:7253
static inline void put_bits(limb_t *tab, limb_t len, slimb_t pos, limb_t val)
{
    limb_t i;
    int p;

    i = pos >> LIMB_LOG2_BITS;
    80056d30:	40665793          	srai	a5,a2,0x6
quickjs-nuttx/libbf.c:7254
    p = pos & (LIMB_BITS - 1);
    80056d34:	03f67613          	andi	a2,a2,63
quickjs-nuttx/libbf.c:7255
    if (i < len)
    80056d38:	00b7fd63          	bgeu	a5,a1,80056d52 <put_bits+0x22>
quickjs-nuttx/libbf.c:7256
        tab[i] |= val << p;
    80056d3c:	00379713          	slli	a4,a5,0x3
    80056d40:	972a                	add	a4,a4,a0
    80056d42:	00073883          	ld	a7,0(a4)
    80056d46:	00c69833          	sll	a6,a3,a2
    80056d4a:	0108e833          	or	a6,a7,a6
    80056d4e:	01073023          	sd	a6,0(a4)
quickjs-nuttx/libbf.c:7257
    if (p != 0) {
    80056d52:	ce19                	beqz	a2,80056d70 <put_bits+0x40>
quickjs-nuttx/libbf.c:7258
        i++;
    80056d54:	0785                	addi	a5,a5,1
quickjs-nuttx/libbf.c:7259
        if (i < len) {
    80056d56:	00b7fd63          	bgeu	a5,a1,80056d70 <put_bits+0x40>
quickjs-nuttx/libbf.c:7260
            tab[i] |= val >> (LIMB_BITS - p);
    80056d5a:	078e                	slli	a5,a5,0x3
    80056d5c:	04000713          	li	a4,64
    80056d60:	97aa                	add	a5,a5,a0
    80056d62:	40c7063b          	subw	a2,a4,a2
    80056d66:	00c6d6b3          	srl	a3,a3,a2
    80056d6a:	6390                	ld	a2,0(a5)
    80056d6c:	8ed1                	or	a3,a3,a2
    80056d6e:	e394                	sd	a3,0(a5)
quickjs-nuttx/libbf.c:7263
        }
    }
}
    80056d70:	8082                	ret

0000000080056d72 <mod_fast>:
mod_fast():
quickjs-nuttx/libbf.c:7402
static inline limb_t mod_fast(dlimb_t r, 
                                limb_t m, limb_t m_inv)
{
    limb_t a1, q, t0, r1, r0;
    
    a1 = r >> NTT_MOD_LOG2_MIN;
    80056d72:	00359713          	slli	a4,a1,0x3
    80056d76:	03d55793          	srli	a5,a0,0x3d
    80056d7a:	8fd9                	or	a5,a5,a4
quickjs-nuttx/libbf.c:7404
    
    q = ((dlimb_t)a1 * m_inv) >> LIMB_BITS;
    80056d7c:	02d7b7b3          	mulhu	a5,a5,a3
quickjs-nuttx/libbf.c:7399
{
    80056d80:	882a                	mv	a6,a0
quickjs-nuttx/libbf.c:7405
    r = r - (dlimb_t)q * m - m * 2;
    80056d82:	00161713          	slli	a4,a2,0x1
    80056d86:	40e80733          	sub	a4,a6,a4
    80056d8a:	00e83833          	sltu	a6,a6,a4
    80056d8e:	410585b3          	sub	a1,a1,a6
    80056d92:	02c78533          	mul	a0,a5,a2
    80056d96:	02c7b7b3          	mulhu	a5,a5,a2
    80056d9a:	40a70533          	sub	a0,a4,a0
    80056d9e:	00a73733          	sltu	a4,a4,a0
    80056da2:	8d9d                	sub	a1,a1,a5
    80056da4:	8d99                	sub	a1,a1,a4
quickjs-nuttx/libbf.c:7407
    r1 = r >> LIMB_BITS;
    t0 = (slimb_t)r1 >> 1;
    80056da6:	4015d793          	srai	a5,a1,0x1
quickjs-nuttx/libbf.c:7408
    r += m & t0;
    80056daa:	8ff1                	and	a5,a5,a2
    80056dac:	953e                	add	a0,a0,a5
    80056dae:	00f537b3          	sltu	a5,a0,a5
    80056db2:	95be                	add	a1,a1,a5
quickjs-nuttx/libbf.c:7411
    r0 = r;
    r1 = r >> LIMB_BITS;
    r0 += m & r1;
    80056db4:	8e6d                	and	a2,a2,a1
quickjs-nuttx/libbf.c:7413
    return r0;
}
    80056db6:	9532                	add	a0,a0,a2
    80056db8:	8082                	ret

0000000080056dba <limb_to_ntt>:
limb_to_ntt():
quickjs-nuttx/libbf.c:7984

static no_inline void limb_to_ntt(BFNTTState *s,
                                  NTTLimb *tabr, limb_t fft_len,
                                  const limb_t *taba, limb_t a_len, int dpl,
                                  int first_m_idx, int nb_mods)
{
    80056dba:	7171                	addi	sp,sp,-176
    80056dbc:	e54e                	sd	s3,136(sp)
    80056dbe:	89ba                	mv	s3,a4
quickjs-nuttx/libbf.c:7996
    for(i = 0; i < a_len; i++) {
        printf("%" PRId64 ": " FMT_LIMB "\n",
               (int64_t)i, taba[i]);
    }
#endif   
    memset(tabr, 0, sizeof(NTTLimb) * fft_len * nb_mods);
    80056dc0:	00361713          	slli	a4,a2,0x3
quickjs-nuttx/libbf.c:7984
{
    80056dc4:	f122                	sd	s0,160(sp)
    80056dc6:	e152                	sd	s4,128(sp)
    80056dc8:	843e                	mv	s0,a5
    80056dca:	8a32                	mv	s4,a2
    80056dcc:	00361793          	slli	a5,a2,0x3
quickjs-nuttx/libbf.c:7996
    memset(tabr, 0, sizeof(NTTLimb) * fft_len * nb_mods);
    80056dd0:	02e88633          	mul	a2,a7,a4
quickjs-nuttx/libbf.c:7984
{
    80056dd4:	e02e                	sd	a1,0(sp)
    80056dd6:	ec2a                	sd	a0,24(sp)
quickjs-nuttx/libbf.c:7996
    memset(tabr, 0, sizeof(NTTLimb) * fft_len * nb_mods);
    80056dd8:	6502                	ld	a0,0(sp)
    80056dda:	4581                	li	a1,0
quickjs-nuttx/libbf.c:7984
{
    80056ddc:	e94a                	sd	s2,144(sp)
    80056dde:	fcd6                	sd	s5,120(sp)
    80056de0:	e83e                	sd	a5,16(sp)
    80056de2:	f506                	sd	ra,168(sp)
    80056de4:	ed26                	sd	s1,152(sp)
    80056de6:	f8da                	sd	s6,112(sp)
    80056de8:	f4de                	sd	s7,104(sp)
    80056dea:	f0e2                	sd	s8,96(sp)
    80056dec:	ece6                	sd	s9,88(sp)
    80056dee:	e8ea                	sd	s10,80(sp)
    80056df0:	e4ee                	sd	s11,72(sp)
    80056df2:	8ab6                	mv	s5,a3
    80056df4:	f042                	sd	a6,32(sp)
    80056df6:	e446                	sd	a7,8(sp)
quickjs-nuttx/libbf.c:7996
    memset(tabr, 0, sizeof(NTTLimb) * fft_len * nb_mods);
    80056df8:	64b0c0ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/libbf.c:7997
    shift = dpl & (LIMB_BITS - 1);
    80056dfc:	03f47793          	andi	a5,s0,63
quickjs-nuttx/libbf.c:7998
    if (shift == 0)
    80056e00:	597d                	li	s2,-1
    80056e02:	c789                	beqz	a5,80056e0c <limb_to_ntt+0x52>
quickjs-nuttx/libbf.c:8001
        base_mask1 = -1;
    else
        base_mask1 = ((limb_t)1 << shift) - 1;
    80056e04:	4905                	li	s2,1
    80056e06:	00f91933          	sll	s2,s2,a5
    80056e0a:	197d                	addi	s2,s2,-1
quickjs-nuttx/libbf.c:8002
    n = bf_min(fft_len, (a_len * LIMB_BITS + dpl - 1) / dpl);
    80056e0c:	00699493          	slli	s1,s3,0x6
    80056e10:	14fd                	addi	s1,s1,-1
    80056e12:	94a2                	add	s1,s1,s0
    80056e14:	0284d4b3          	divu	s1,s1,s0
    80056e18:	009a5363          	bge	s4,s1,80056e1e <limb_to_ntt+0x64>
    80056e1c:	84d2                	mv	s1,s4
quickjs-nuttx/libbf.c:8024
                }
                //            printf("a=0x%016lx%016lx%016lx\n", a2, a1, a0);
                a = (a0 >> (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) |
                    ((dlimb_t)a1 << (NTT_MOD_LOG2_MAX - NTT_MOD_LOG2_MIN)) |
                    ((dlimb_t)a2 << (LIMB_BITS + NTT_MOD_LOG2_MAX - NTT_MOD_LOG2_MIN));
                a0 &= ((limb_t)1 << (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) - 1;
    80056e1e:	5c7d                	li	s8,-1
    80056e20:	001c5793          	srli	a5,s8,0x1
quickjs-nuttx/libbf.c:8003
    for(i = 0; i < n; i++) {
    80056e24:	4a01                	li	s4,0
quickjs-nuttx/libbf.c:8010
            if (dpl <= (LIMB_BITS + NTT_MOD_LOG2_MIN)) {
    80056e26:	07d00d13          	li	s10,125
quickjs-nuttx/libbf.c:8024
                a0 &= ((limb_t)1 << (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) - 1;
    80056e2a:	f43e                	sd	a5,40(sp)
quickjs-nuttx/libbf.c:8003 (discriminator 1)
    for(i = 0; i < n; i++) {
    80056e2c:	029a4163          	blt	s4,s1,80056e4e <limb_to_ntt+0x94>
quickjs-nuttx/libbf.c:8038
                r = mod_fast(b, m, m_inv);
            }
            tabr[i + j * fft_len] = int_to_ntt_limb(r, m);
        }
    }
}
    80056e30:	70aa                	ld	ra,168(sp)
    80056e32:	740a                	ld	s0,160(sp)
    80056e34:	64ea                	ld	s1,152(sp)
    80056e36:	694a                	ld	s2,144(sp)
    80056e38:	69aa                	ld	s3,136(sp)
    80056e3a:	6a0a                	ld	s4,128(sp)
    80056e3c:	7ae6                	ld	s5,120(sp)
    80056e3e:	7b46                	ld	s6,112(sp)
    80056e40:	7ba6                	ld	s7,104(sp)
    80056e42:	7c06                	ld	s8,96(sp)
    80056e44:	6ce6                	ld	s9,88(sp)
    80056e46:	6d46                	ld	s10,80(sp)
    80056e48:	6da6                	ld	s11,72(sp)
    80056e4a:	614d                	addi	sp,sp,176
    80056e4c:	8082                	ret
quickjs-nuttx/libbf.c:8004
        a0 = get_bits(taba, a_len, i * dpl);
    80056e4e:	03440b33          	mul	s6,s0,s4
    80056e52:	85ce                	mv	a1,s3
    80056e54:	8556                	mv	a0,s5
    80056e56:	865a                	mv	a2,s6
    80056e58:	c93ff0ef          	jal	ra,80056aea <get_bits>
quickjs-nuttx/libbf.c:8005
        if (dpl <= LIMB_BITS) {
    80056e5c:	04000793          	li	a5,64
quickjs-nuttx/libbf.c:8004
        a0 = get_bits(taba, a_len, i * dpl);
    80056e60:	8c2a                	mv	s8,a0
quickjs-nuttx/libbf.c:8005
        if (dpl <= LIMB_BITS) {
    80056e62:	0287c163          	blt	a5,s0,80056e84 <limb_to_ntt+0xca>
quickjs-nuttx/libbf.c:8006
            a0 &= base_mask1;
    80056e66:	01257c33          	and	s8,a0,s2
quickjs-nuttx/libbf.c:8007
            a = a0;
    80056e6a:	8be2                	mv	s7,s8
    80056e6c:	4c81                	li	s9,0
quickjs-nuttx/libbf.c:8027
        for(j = 0; j < nb_mods; j++) {
    80056e6e:	6782                	ld	a5,0(sp)
    80056e70:	003a1813          	slli	a6,s4,0x3
    80056e74:	4d81                	li	s11,0
    80056e76:	01078b33          	add	s6,a5,a6
quickjs-nuttx/libbf.c:8027 (discriminator 1)
    80056e7a:	67a2                	ld	a5,8(sp)
    80056e7c:	06fdc063          	blt	s11,a5,80056edc <limb_to_ntt+0x122>
quickjs-nuttx/libbf.c:8003 (discriminator 2)
    for(i = 0; i < n; i++) {
    80056e80:	0a05                	addi	s4,s4,1
    80056e82:	b76d                	j	80056e2c <limb_to_ntt+0x72>
quickjs-nuttx/libbf.c:8009
            a1 = get_bits(taba, a_len, i * dpl + LIMB_BITS);
    80056e84:	040b0613          	addi	a2,s6,64 # 1040 <asinh-0x7fffefc0>
    80056e88:	85ce                	mv	a1,s3
    80056e8a:	8556                	mv	a0,s5
    80056e8c:	c5fff0ef          	jal	ra,80056aea <get_bits>
    80056e90:	8caa                	mv	s9,a0
quickjs-nuttx/libbf.c:8010
            if (dpl <= (LIMB_BITS + NTT_MOD_LOG2_MIN)) {
    80056e92:	008d4663          	blt	s10,s0,80056e9e <limb_to_ntt+0xe4>
quickjs-nuttx/libbf.c:8011
                a = a0 | ((dlimb_t)(a1 & base_mask1) << LIMB_BITS);
    80056e96:	8be2                	mv	s7,s8
    80056e98:	00a97cb3          	and	s9,s2,a0
    80056e9c:	bfc9                	j	80056e6e <limb_to_ntt+0xb4>
quickjs-nuttx/libbf.c:8013
                if (dpl > 2 * LIMB_BITS) {
    80056e9e:	08000793          	li	a5,128
    80056ea2:	0287d963          	bge	a5,s0,80056ed4 <limb_to_ntt+0x11a>
quickjs-nuttx/libbf.c:8014
                    a2 = get_bits(taba, a_len, i * dpl + LIMB_BITS * 2) &
    80056ea6:	080b0613          	addi	a2,s6,128
    80056eaa:	85ce                	mv	a1,s3
    80056eac:	8556                	mv	a0,s5
    80056eae:	c3dff0ef          	jal	ra,80056aea <get_bits>
    80056eb2:	01257533          	and	a0,a0,s2
quickjs-nuttx/libbf.c:8024
                a0 &= ((limb_t)1 << (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) - 1;
    80056eb6:	77a2                	ld	a5,40(sp)
quickjs-nuttx/libbf.c:8022
                    ((dlimb_t)a1 << (NTT_MOD_LOG2_MAX - NTT_MOD_LOG2_MIN)) |
    80056eb8:	001c9713          	slli	a4,s9,0x1
quickjs-nuttx/libbf.c:8021
                a = (a0 >> (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) |
    80056ebc:	03fc5893          	srli	a7,s8,0x3f
quickjs-nuttx/libbf.c:8022
                    ((dlimb_t)a1 << (NTT_MOD_LOG2_MAX - NTT_MOD_LOG2_MIN)) |
    80056ec0:	03fcd693          	srli	a3,s9,0x3f
quickjs-nuttx/libbf.c:8023
                    ((dlimb_t)a2 << (LIMB_BITS + NTT_MOD_LOG2_MAX - NTT_MOD_LOG2_MIN));
    80056ec4:	0506                	slli	a0,a0,0x1
quickjs-nuttx/libbf.c:8021
                a = (a0 >> (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) |
    80056ec6:	01176bb3          	or	s7,a4,a7
    80056eca:	00a6ecb3          	or	s9,a3,a0
quickjs-nuttx/libbf.c:8024
                a0 &= ((limb_t)1 << (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) - 1;
    80056ece:	00fc7c33          	and	s8,s8,a5
    80056ed2:	bf71                	j	80056e6e <limb_to_ntt+0xb4>
quickjs-nuttx/libbf.c:8017
                    a1 &= base_mask1;
    80056ed4:	01257cb3          	and	s9,a0,s2
quickjs-nuttx/libbf.c:8018
                    a2 = 0;
    80056ed8:	4501                	li	a0,0
    80056eda:	bff1                	j	80056eb6 <limb_to_ntt+0xfc>
quickjs-nuttx/libbf.c:8028
            m = ntt_mods[first_m_idx + j];
    80056edc:	7782                	ld	a5,32(sp)
quickjs-nuttx/libbf.c:8030
            r = mod_fast(a, m, m_inv);
    80056ede:	85e6                	mv	a1,s9
    80056ee0:	855e                	mv	a0,s7
    80056ee2:	00fd86bb          	addw	a3,s11,a5
quickjs-nuttx/libbf.c:8028
            m = ntt_mods[first_m_idx + j];
    80056ee6:	068e                	slli	a3,a3,0x3
    80056ee8:	0002a797          	auipc	a5,0x2a
    80056eec:	da878793          	addi	a5,a5,-600 # 80080c90 <ntt_mods>
    80056ef0:	00d78633          	add	a2,a5,a3
quickjs-nuttx/libbf.c:8029
            m_inv = s->ntt_mods_div[first_m_idx + j];
    80056ef4:	67e2                	ld	a5,24(sp)
quickjs-nuttx/libbf.c:8028
            m = ntt_mods[first_m_idx + j];
    80056ef6:	6210                	ld	a2,0(a2)
quickjs-nuttx/libbf.c:8029
            m_inv = s->ntt_mods_div[first_m_idx + j];
    80056ef8:	96be                	add	a3,a3,a5
    80056efa:	6694                	ld	a3,8(a3)
quickjs-nuttx/libbf.c:8030
            r = mod_fast(a, m, m_inv);
    80056efc:	f832                	sd	a2,48(sp)
    80056efe:	fc36                	sd	a3,56(sp)
    80056f00:	e73ff0ef          	jal	ra,80056d72 <mod_fast>
    80056f04:	85aa                	mv	a1,a0
quickjs-nuttx/libbf.c:8031
            if (dpl > (LIMB_BITS + NTT_MOD_LOG2_MIN)) {
    80056f06:	008d5b63          	bge	s10,s0,80056f1c <limb_to_ntt+0x162>
quickjs-nuttx/libbf.c:8033
                r = mod_fast(b, m, m_inv);
    80056f0a:	76e2                	ld	a3,56(sp)
    80056f0c:	7642                	ld	a2,48(sp)
quickjs-nuttx/libbf.c:8032
                b = ((dlimb_t)r << (LIMB_BITS - NTT_MOD_LOG2_MAX + NTT_MOD_LOG2_MIN)) | a0;
    80056f0e:	157e                	slli	a0,a0,0x3f
quickjs-nuttx/libbf.c:8033
                r = mod_fast(b, m, m_inv);
    80056f10:	8185                	srli	a1,a1,0x1
    80056f12:	01856533          	or	a0,a0,s8
    80056f16:	e5dff0ef          	jal	ra,80056d72 <mod_fast>
    80056f1a:	85aa                	mv	a1,a0
quickjs-nuttx/libbf.c:7725 (discriminator 2)
    return a;
    80056f1c:	67c2                	ld	a5,16(sp)
quickjs-nuttx/libbf.c:8035 (discriminator 2)
            tabr[i + j * fft_len] = int_to_ntt_limb(r, m);
    80056f1e:	00bb3023          	sd	a1,0(s6)
quickjs-nuttx/libbf.c:8027 (discriminator 2)
        for(j = 0; j < nb_mods; j++) {
    80056f22:	2d85                	addiw	s11,s11,1
    80056f24:	9b3e                	add	s6,s6,a5
    80056f26:	bf91                	j	80056e7a <limb_to_ntt+0xc0>

0000000080056f28 <ceil_log2>:
ceil_log2():
quickjs-nuttx/libbf.c:124
    if (a <= 1)
    80056f28:	4785                	li	a5,1
    80056f2a:	00a7fe63          	bgeu	a5,a0,80056f46 <ceil_log2+0x1e>
quickjs-nuttx/libbf.c:123
{
    80056f2e:	1141                	addi	sp,sp,-16
clz64():
quickjs-nuttx/cutils.h:126
    return __builtin_clzll(a);
    80056f30:	157d                	addi	a0,a0,-1
ceil_log2():
quickjs-nuttx/libbf.c:123
    80056f32:	e406                	sd	ra,8(sp)
clz64():
quickjs-nuttx/cutils.h:126
    80056f34:	f63ac0ef          	jal	ra,80003e96 <__clzdi2>
ceil_log2():
quickjs-nuttx/libbf.c:128
}
    80056f38:	60a2                	ld	ra,8(sp)
quickjs-nuttx/libbf.c:127
        return LIMB_BITS - clz(a - 1);
    80056f3a:	04000793          	li	a5,64
    80056f3e:	40a7853b          	subw	a0,a5,a0
quickjs-nuttx/libbf.c:128
}
    80056f42:	0141                	addi	sp,sp,16
    80056f44:	8082                	ret
quickjs-nuttx/libbf.c:125
        return 0;
    80056f46:	4501                	li	a0,0
quickjs-nuttx/libbf.c:128
}
    80056f48:	8082                	ret

0000000080056f4a <mp_sqrtrem2>:
mp_sqrtrem2():
quickjs-nuttx/libbf.c:1964
{
    80056f4a:	711d                	addi	sp,sp,-96
    80056f4c:	ec86                	sd	ra,88(sp)
    80056f4e:	e8a2                	sd	s0,80(sp)
    80056f50:	e4a6                	sd	s1,72(sp)
    80056f52:	e0ca                	sd	s2,64(sp)
    80056f54:	fc4e                	sd	s3,56(sp)
    80056f56:	f456                	sd	s5,40(sp)
    80056f58:	f05a                	sd	s6,32(sp)
    80056f5a:	f852                	sd	s4,48(sp)
quickjs-nuttx/libbf.c:1969
    a0 = taba[0];
    80056f5c:	0005ba03          	ld	s4,0(a1)
quickjs-nuttx/libbf.c:1964
{
    80056f60:	89ae                	mv	s3,a1
quickjs-nuttx/libbf.c:1971
    s1 = mp_sqrtrem1(&r1, a1);
    80056f62:	658c                	ld	a1,8(a1)
quickjs-nuttx/libbf.c:1964
{
    80056f64:	8aaa                	mv	s5,a0
quickjs-nuttx/libbf.c:1971
    s1 = mp_sqrtrem1(&r1, a1);
    80056f66:	0828                	addi	a0,sp,24
    80056f68:	c69ff0ef          	jal	ra,80056bd0 <mp_sqrtrem1>
quickjs-nuttx/libbf.c:1973
    num = ((dlimb_t)r1 << l) | (a0 >> l);
    80056f6c:	6962                	ld	s2,24(sp)
    80056f6e:	020a5793          	srli	a5,s4,0x20
quickjs-nuttx/libbf.c:1974
    q = num / (2 * s1);
    80056f72:	00151613          	slli	a2,a0,0x1
quickjs-nuttx/libbf.c:1973
    num = ((dlimb_t)r1 << l) | (a0 >> l);
    80056f76:	02095b13          	srli	s6,s2,0x20
    80056f7a:	1902                	slli	s2,s2,0x20
    80056f7c:	00f96933          	or	s2,s2,a5
quickjs-nuttx/libbf.c:1971
    s1 = mp_sqrtrem1(&r1, a1);
    80056f80:	84aa                	mv	s1,a0
quickjs-nuttx/libbf.c:1974
    q = num / (2 * s1);
    80056f82:	4681                	li	a3,0
    80056f84:	854a                	mv	a0,s2
    80056f86:	85da                	mv	a1,s6
    80056f88:	e432                	sd	a2,8(sp)
    80056f8a:	e88ad0ef          	jal	ra,80004612 <__udivti3>
quickjs-nuttx/libbf.c:1975
    u = num % (2 * s1);
    80056f8e:	6622                	ld	a2,8(sp)
quickjs-nuttx/libbf.c:1976
    s = (s1 << l) + q;
    80056f90:	1482                	slli	s1,s1,0x20
quickjs-nuttx/libbf.c:1974
    q = num / (2 * s1);
    80056f92:	842a                	mv	s0,a0
quickjs-nuttx/libbf.c:1975
    u = num % (2 * s1);
    80056f94:	4681                	li	a3,0
quickjs-nuttx/libbf.c:1976
    s = (s1 << l) + q;
    80056f96:	94aa                	add	s1,s1,a0
quickjs-nuttx/libbf.c:1975
    u = num % (2 * s1);
    80056f98:	85da                	mv	a1,s6
    80056f9a:	854a                	mv	a0,s2
    80056f9c:	9c3ad0ef          	jal	ra,8000495e <__umodti3>
quickjs-nuttx/libbf.c:1977
    r = ((dlimb_t)u << l) | (a0 & (((limb_t)1 << l) - 1));
    80056fa0:	02055793          	srli	a5,a0,0x20
    80056fa4:	02059713          	slli	a4,a1,0x20
    80056fa8:	1a02                	slli	s4,s4,0x20
    80056faa:	8f5d                	or	a4,a4,a5
    80056fac:	02051693          	slli	a3,a0,0x20
    80056fb0:	020a5a13          	srli	s4,s4,0x20
quickjs-nuttx/libbf.c:1978
    if (unlikely((q >> l) != 0))
    80056fb4:	02045793          	srli	a5,s0,0x20
quickjs-nuttx/libbf.c:1977
    r = ((dlimb_t)u << l) | (a0 & (((limb_t)1 << l) - 1));
    80056fb8:	0146e6b3          	or	a3,a3,s4
quickjs-nuttx/libbf.c:1978
    if (unlikely((q >> l) != 0))
    80056fbc:	cfa9                	beqz	a5,80057016 <mp_sqrtrem2+0xcc>
quickjs-nuttx/libbf.c:1979
        r -= (dlimb_t)1 << LIMB_BITS; /* special case when q=2^l */
    80056fbe:	00029617          	auipc	a2,0x29
    80056fc2:	7c260613          	addi	a2,a2,1986 # 80080780 <std_name.0+0x1d8>
    80056fc6:	621c                	ld	a5,0(a2)
    80056fc8:	6608                	ld	a0,8(a2)
    80056fca:	97b6                	add	a5,a5,a3
    80056fcc:	00d7b6b3          	sltu	a3,a5,a3
    80056fd0:	972a                	add	a4,a4,a0
    80056fd2:	00e68533          	add	a0,a3,a4
quickjs-nuttx/libbf.c:1982
    if ((slimb_t)(r >> LIMB_BITS) < 0) {
    80056fd6:	02055263          	bgez	a0,80056ffa <mp_sqrtrem2+0xb0>
quickjs-nuttx/libbf.c:1983
        s--;
    80056fda:	14fd                	addi	s1,s1,-1
quickjs-nuttx/libbf.c:1984
        r += 2 * (dlimb_t)s + 1;
    80056fdc:	00149713          	slli	a4,s1,0x1
    80056fe0:	00170693          	addi	a3,a4,1
    80056fe4:	03f4d613          	srli	a2,s1,0x3f
    80056fe8:	00e6b733          	sltu	a4,a3,a4
    80056fec:	9732                	add	a4,a4,a2
    80056fee:	96be                	add	a3,a3,a5
    80056ff0:	00f6b633          	sltu	a2,a3,a5
    80056ff4:	953a                	add	a0,a0,a4
    80056ff6:	87b6                	mv	a5,a3
    80056ff8:	9532                	add	a0,a0,a2
quickjs-nuttx/libbf.c:1989
}
    80056ffa:	60e6                	ld	ra,88(sp)
    80056ffc:	6446                	ld	s0,80(sp)
quickjs-nuttx/libbf.c:1986
    tabs[0] = s;
    80056ffe:	009ab023          	sd	s1,0(s5) # 1000 <asinh-0x7ffff000>
quickjs-nuttx/libbf.c:1987
    taba[0] = r;
