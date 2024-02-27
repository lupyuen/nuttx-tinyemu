    80047002:	7582                	ld	a1,32(sp)
    80047004:	7622                	ld	a2,40(sp)
    80047006:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48493
    result_promise = JS_EXCEPTION;
    80047008:	4c99                	li	s9,6
quickjs-nuttx/quickjs.c:48492
    JS_FreeValue(ctx, result_promise);
    8004700a:	f94c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48493
    result_promise = JS_EXCEPTION;
    8004700e:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs.c:48484
    JS_FreeValue(ctx, promise_resolve);
    80047010:	658a                	ld	a1,128(sp)
    80047012:	864e                	mv	a2,s3
    80047014:	8522                	mv	a0,s0
    80047016:	f88c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48485
    JS_FreeValue(ctx, next_method);
    8004701a:	7586                	ld	a1,96(sp)
    8004701c:	865e                	mv	a2,s7
    8004701e:	8522                	mv	a0,s0
    80047020:	f7ec40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48486
    JS_FreeValue(ctx, iter);
    80047024:	75c6                	ld	a1,112(sp)
    80047026:	865a                	mv	a2,s6
    80047028:	8522                	mv	a0,s0
    8004702a:	f74c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48487
    JS_FreeValue(ctx, resolving_funcs[0]);
    8004702e:	65ce                	ld	a1,208(sp)
    80047030:	666e                	ld	a2,216(sp)
    80047032:	8522                	mv	a0,s0
    80047034:	f6ac40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48488
    JS_FreeValue(ctx, resolving_funcs[1]);
    80047038:	758e                	ld	a1,224(sp)
    8004703a:	762e                	ld	a2,232(sp)
    8004703c:	8522                	mv	a0,s0
    8004703e:	f60c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48489
    return result_promise;
    80047042:	7782                	ld	a5,32(sp)
    80047044:	e5e6                	sd	s9,200(sp)
    80047046:	e1be                	sd	a5,192(sp)
    80047048:	bf25                	j	80046f80 <js_promise_race+0x6a>
quickjs-nuttx/quickjs.c:48443 (discriminator 1)
        check_function(ctx, promise_resolve))
    8004704a:	85aa                	mv	a1,a0
    8004704c:	864e                	mv	a2,s3
    8004704e:	8522                	mv	a0,s0
    80047050:	eced10ef          	jal	ra,8001871e <check_function>
quickjs-nuttx/quickjs.c:48442 (discriminator 1)
    if (JS_IsException(promise_resolve) ||
    80047054:	f53d                	bnez	a0,80046fc2 <js_promise_race+0xac>
quickjs-nuttx/quickjs.c:48445
    iter = JS_GetIterator(ctx, argv[0], FALSE);
    80047056:	608c                	ld	a1,0(s1)
    80047058:	6490                	ld	a2,8(s1)
    8004705a:	4681                	li	a3,0
    8004705c:	8522                	mv	a0,s0
    8004705e:	8defd0ef          	jal	ra,8004413c <JS_GetIterator>
    80047062:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:48446
    if (JS_IsException(iter)) {
    80047064:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:48445
    iter = JS_GetIterator(ctx, argv[0], FALSE);
    80047068:	872a                	mv	a4,a0
    8004706a:	84ae                	mv	s1,a1
    8004706c:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:48446
    if (JS_IsException(iter)) {
    8004706e:	f5278be3          	beq	a5,s2,80046fc4 <js_promise_race+0xae>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80047072:	87ae                	mv	a5,a1
    80047074:	e1aa                	sd	a0,192(sp)
    80047076:	e5ae                	sd	a1,200(sp)
    80047078:	4801                	li	a6,0
    8004707a:	85aa                	mv	a1,a0
    8004707c:	06b00693          	li	a3,107
    80047080:	8626                	mv	a2,s1
    80047082:	8522                	mv	a0,s0
    80047084:	a27cf0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80047088:	f0aa                	sd	a0,96(sp)
js_promise_race():
quickjs-nuttx/quickjs.c:48458
        if (JS_IsException(next_method))
    8004708a:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8004708e:	8aae                	mv	s5,a1
    80047090:	8bae                	mv	s7,a1
js_promise_race():
quickjs-nuttx/quickjs.c:48458
    80047092:	f3278ae3          	beq	a5,s2,80046fc6 <js_promise_race+0xb0>
quickjs-nuttx/quickjs.c:48465
            if (JS_IsException(item))
    80047096:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:48464
            item = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80047098:	7686                	ld	a3,96(sp)
    8004709a:	75c6                	ld	a1,112(sp)
    8004709c:	087c                	addi	a5,sp,28
    8004709e:	8756                	mv	a4,s5
    800470a0:	8626                	mv	a2,s1
    800470a2:	8522                	mv	a0,s0
    800470a4:	fca6                	sd	s1,120(sp)
    800470a6:	f8bfc0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    800470aa:	fc2e                	sd	a1,56(sp)
    800470ac:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:48465
            if (JS_IsException(item))
    800470ae:	2581                	sext.w	a1,a1
    800470b0:	f1858be3          	beq	a1,s8,80046fc6 <js_promise_race+0xb0>
quickjs-nuttx/quickjs.c:48467
            if (done)
    800470b4:	47f2                	lw	a5,28(sp)
    800470b6:	ffa9                	bnez	a5,80047010 <js_promise_race+0xfa>
quickjs-nuttx/quickjs.c:48469
            next_promise = JS_Call(ctx, promise_resolve,
    800470b8:	6682                	ld	a3,0(sp)
    800470ba:	658a                	ld	a1,128(sp)
    800470bc:	4785                	li	a5,1
    800470be:	03010813          	addi	a6,sp,48
    800470c2:	8752                	mv	a4,s4
    800470c4:	864e                	mv	a2,s3
    800470c6:	8522                	mv	a0,s0
    800470c8:	d3dfb0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:48471
            JS_FreeValue(ctx, item);
    800470cc:	7662                	ld	a2,56(sp)
quickjs-nuttx/quickjs.c:48469
            next_promise = JS_Call(ctx, promise_resolve,
    800470ce:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:48471
            JS_FreeValue(ctx, item);
    800470d0:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:48469
            next_promise = JS_Call(ctx, promise_resolve,
    800470d2:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:48471
            JS_FreeValue(ctx, item);
    800470d4:	8522                	mv	a0,s0
    800470d6:	ec8c40ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800470da:	6626                	ld	a2,72(sp)
js_promise_race():
quickjs-nuttx/quickjs.c:48472
            if (JS_IsException(next_promise)) {
    800470dc:	0006079b          	sext.w	a5,a2
    800470e0:	01879f63          	bne	a5,s8,800470fe <js_promise_race+0x1e8>
quickjs-nuttx/quickjs.c:48474
                JS_IteratorClose(ctx, iter, TRUE);
    800470e4:	75c6                	ld	a1,112(sp)
    800470e6:	7666                	ld	a2,120(sp)
    800470e8:	4685                	li	a3,1
    800470ea:	8522                	mv	a0,s0
    800470ec:	b4fd10ef          	jal	ra,80018c3a <JS_IteratorClose>
quickjs-nuttx/quickjs.c:48475
                goto fail_reject;
    800470f0:	bdd9                	j	80046fc6 <js_promise_race+0xb0>
quickjs-nuttx/quickjs.c:48455
        JS_FreeValue(ctx, ret);
    800470f2:	65c6                	ld	a1,80(sp)
    800470f4:	6666                	ld	a2,88(sp)
    800470f6:	8522                	mv	a0,s0
    800470f8:	ea6c40ef          	jal	ra,8000b79e <JS_FreeValue>
    800470fc:	bf11                	j	80047010 <js_promise_race+0xfa>
quickjs-nuttx/quickjs.c:48477
            ret = JS_InvokeFree(ctx, next_promise, JS_ATOM_then, 2,
    800470fe:	6586                	ld	a1,64(sp)
    80047100:	099c                	addi	a5,sp,208
    80047102:	4709                	li	a4,2
    80047104:	08000693          	li	a3,128
    80047108:	8522                	mv	a0,s0
    8004710a:	cf6f80ef          	jal	ra,8003f600 <JS_InvokeFree>
    8004710e:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:48479
            if (check_exception_free(ctx, ret))
    80047110:	e1aa                	sd	a0,192(sp)
    80047112:	e5ae                	sd	a1,200(sp)
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    80047114:	864a                	mv	a2,s2
    80047116:	85aa                	mv	a1,a0
js_promise_race():
quickjs-nuttx/quickjs.c:48479
            if (check_exception_free(ctx, ret))
    80047118:	2901                	sext.w	s2,s2
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    8004711a:	8522                	mv	a0,s0
    8004711c:	e82c40ef          	jal	ra,8000b79e <JS_FreeValue>
js_promise_race():
quickjs-nuttx/quickjs.c:48479
            if (check_exception_free(ctx, ret))
    80047120:	f7891ce3          	bne	s2,s8,80047098 <js_promise_race+0x182>
    80047124:	b7c1                	j	800470e4 <js_promise_race+0x1ce>

0000000080047126 <js_promise_all>:
js_promise_all():
quickjs-nuttx/quickjs.c:48285
{
    80047126:	d8010113          	addi	sp,sp,-640
    8004712a:	25513423          	sd	s5,584(sp)
    8004712e:	8abe                	mv	s5,a5
quickjs-nuttx/quickjs.c:48287
    JSValue next_method = JS_UNDEFINED, values = JS_UNDEFINED;
    80047130:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48285
{
    80047132:	27213023          	sd	s2,608(sp)
quickjs-nuttx/quickjs.c:48287
    JSValue next_method = JS_UNDEFINED, values = JS_UNDEFINED;
    80047136:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:48285
{
    80047138:	893a                	mv	s2,a4
    8004713a:	26113c23          	sd	ra,632(sp)
    8004713e:	26813823          	sd	s0,624(sp)
    80047142:	26913423          	sd	s1,616(sp)
    80047146:	25313c23          	sd	s3,600(sp)
    8004714a:	25413823          	sd	s4,592(sp)
    8004714e:	25613023          	sd	s6,576(sp)
    80047152:	23713c23          	sd	s7,568(sp)
    80047156:	23813823          	sd	s8,560(sp)
    8004715a:	23913423          	sd	s9,552(sp)
    8004715e:	23a13023          	sd	s10,544(sp)
    80047162:	21b13c23          	sd	s11,536(sp)
    80047166:	f82e                	sd	a1,48(sp)
    80047168:	fc32                	sd	a2,56(sp)
quickjs-nuttx/quickjs.c:48287
    JSValue next_method = JS_UNDEFINED, values = JS_UNDEFINED;
    8004716a:	e902                	sd	zero,144(sp)
    8004716c:	f102                	sd	zero,160(sp)
quickjs-nuttx/quickjs.c:48288
    JSValue resolve_element_env = JS_UNDEFINED, resolve_element, reject_element;
    8004716e:	f902                	sd	zero,176(sp)
quickjs-nuttx/quickjs.c:48289
    JSValue promise_resolve = JS_UNDEFINED, iter = JS_UNDEFINED;
    80047170:	f982                	sd	zero,240(sp)
quickjs-nuttx/quickjs.c:48294
    if (!JS_IsObject(this_val))
    80047172:	0006071b          	sext.w	a4,a2
    80047176:	57fd                	li	a5,-1
    80047178:	04f70563          	beq	a4,a5,800471c2 <js_promise_all+0x9c>
quickjs-nuttx/quickjs.c:48295
        return JS_ThrowTypeErrorNotAnObject(ctx);
    8004717c:	aafd10ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:48298
        return result_promise;
    80047180:	faaa                	sd	a0,368(sp)
    80047182:	feae                	sd	a1,376(sp)
quickjs-nuttx/quickjs.c:48426
}
    80047184:	27813083          	ld	ra,632(sp)
    80047188:	27013403          	ld	s0,624(sp)
    8004718c:	7556                	ld	a0,368(sp)
    8004718e:	75f6                	ld	a1,376(sp)
    80047190:	26813483          	ld	s1,616(sp)
    80047194:	26013903          	ld	s2,608(sp)
    80047198:	25813983          	ld	s3,600(sp)
    8004719c:	25013a03          	ld	s4,592(sp)
    800471a0:	24813a83          	ld	s5,584(sp)
    800471a4:	24013b03          	ld	s6,576(sp)
    800471a8:	23813b83          	ld	s7,568(sp)
    800471ac:	23013c03          	ld	s8,560(sp)
    800471b0:	22813c83          	ld	s9,552(sp)
    800471b4:	22013d03          	ld	s10,544(sp)
    800471b8:	21813d83          	ld	s11,536(sp)
    800471bc:	28010113          	addi	sp,sp,640
    800471c0:	8082                	ret
    800471c2:	8d32                	mv	s10,a2
quickjs-nuttx/quickjs.c:48296
    result_promise = js_new_promise_capability(ctx, resolving_funcs, this_val);
    800471c4:	86ea                	mv	a3,s10
    800471c6:	862e                	mv	a2,a1
    800471c8:	030c                	addi	a1,sp,384
    800471ca:	842a                	mv	s0,a0
    800471cc:	a59fc0ef          	jal	ra,80043c24 <js_new_promise_capability>
    800471d0:	e8aa                	sd	a0,80(sp)
    800471d2:	ecae                	sd	a1,88(sp)
    800471d4:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:48297
    if (JS_IsException(result_promise))
    800471d6:	0005879b          	sext.w	a5,a1
    800471da:	4499                	li	s1,6
    800471dc:	fa9782e3          	beq	a5,s1,80047180 <js_promise_all+0x5a>
quickjs-nuttx/quickjs.c:48299
    promise_resolve = JS_GetProperty(ctx, this_val, JS_ATOM_resolve);
    800471e0:	77e2                	ld	a5,56(sp)
    800471e2:	7742                	ld	a4,48(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    800471e4:	4801                	li	a6,0
    800471e6:	863e                	mv	a2,a5
    800471e8:	08100693          	li	a3,129
    800471ec:	85ba                	mv	a1,a4
    800471ee:	8522                	mv	a0,s0
    800471f0:	e7be                	sd	a5,456(sp)
    800471f2:	e3ba                	sd	a4,448(sp)
    800471f4:	8b7cf0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    800471f8:	f22a                	sd	a0,288(sp)
    800471fa:	f62e                	sd	a1,296(sp)
    800471fc:	f1aa                	sd	a0,224(sp)
    800471fe:	f5ae                	sd	a1,232(sp)
js_promise_all():
quickjs-nuttx/quickjs.c:48300
    if (JS_IsException(promise_resolve) ||
    80047200:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80047204:	89ae                	mv	s3,a1
js_promise_all():
quickjs-nuttx/quickjs.c:48300
    80047206:	0a979463          	bne	a5,s1,800472ae <js_promise_all+0x188>
quickjs-nuttx/quickjs.c:48289
    JSValue promise_resolve = JS_UNDEFINED, iter = JS_UNDEFINED;
    8004720a:	478d                	li	a5,3
    8004720c:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:48288
    JSValue resolve_element_env = JS_UNDEFINED, resolve_element, reject_element;
    8004720e:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:48287
    JSValue next_method = JS_UNDEFINED, values = JS_UNDEFINED;
    80047210:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:48307
        error = JS_GetException(ctx);
    80047212:	8522                	mv	a0,s0
    80047214:	a7ac70ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:48308
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    80047218:	667a                	ld	a2,408(sp)
quickjs-nuttx/quickjs.c:48307
        error = JS_GetException(ctx);
    8004721a:	e62e                	sd	a1,264(sp)
quickjs-nuttx/quickjs.c:48308
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    8004721c:	65da                	ld	a1,400(sp)
    8004721e:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48307
        error = JS_GetException(ctx);
    80047220:	e22a                	sd	a0,256(sp)
quickjs-nuttx/quickjs.c:48308
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    80047222:	febe                	sd	a5,376(sp)
    80047224:	10010813          	addi	a6,sp,256
    80047228:	4785                	li	a5,1
    8004722a:	4681                	li	a3,0
    8004722c:	470d                	li	a4,3
    8004722e:	8522                	mv	a0,s0
    80047230:	fa82                	sd	zero,368(sp)
    80047232:	bd3fb0ef          	jal	ra,80042e04 <JS_Call>
    80047236:	84ae                	mv	s1,a1
    80047238:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:48310
        JS_FreeValue(ctx, error);
    8004723a:	6632                	ld	a2,264(sp)
    8004723c:	6592                	ld	a1,256(sp)
quickjs-nuttx/quickjs.c:48308
        ret = JS_Call(ctx, resolving_funcs[1], JS_UNDEFINED, 1,
    8004723e:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:48310
        JS_FreeValue(ctx, error);
    80047240:	8522                	mv	a0,s0
    80047242:	d5cc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48311
        if (JS_IsException(ret))
    80047246:	2481                	sext.w	s1,s1
    80047248:	4799                	li	a5,6
    8004724a:	08f49d63          	bne	s1,a5,800472e4 <js_promise_all+0x1be>
quickjs-nuttx/quickjs.c:48423
    JS_FreeValue(ctx, result_promise);
    8004724e:	65c6                	ld	a1,80(sp)
    80047250:	6666                	ld	a2,88(sp)
    80047252:	8522                	mv	a0,s0
    80047254:	d4ac40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48424
    result_promise = JS_EXCEPTION;
    80047258:	4799                	li	a5,6
    8004725a:	e882                	sd	zero,80(sp)
    8004725c:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:48414
    JS_FreeValue(ctx, promise_resolve);
    8004725e:	758e                	ld	a1,224(sp)
    80047260:	864e                	mv	a2,s3
    80047262:	8522                	mv	a0,s0
    80047264:	d3ac40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48415
    JS_FreeValue(ctx, resolve_element_env);
    80047268:	75ca                	ld	a1,176(sp)
    8004726a:	8666                	mv	a2,s9
    8004726c:	8522                	mv	a0,s0
    8004726e:	d30c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48416
    JS_FreeValue(ctx, values);
    80047272:	758a                	ld	a1,160(sp)
    80047274:	762a                	ld	a2,168(sp)
    80047276:	8522                	mv	a0,s0
    80047278:	d26c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48417
    JS_FreeValue(ctx, next_method);
    8004727c:	65ca                	ld	a1,144(sp)
    8004727e:	6622                	ld	a2,8(sp)
    80047280:	8522                	mv	a0,s0
    80047282:	d1cc40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48418
    JS_FreeValue(ctx, iter);
    80047286:	75ce                	ld	a1,240(sp)
    80047288:	6642                	ld	a2,16(sp)
    8004728a:	8522                	mv	a0,s0
    8004728c:	d12c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48419
    JS_FreeValue(ctx, resolving_funcs[0]);
    80047290:	659a                	ld	a1,384(sp)
    80047292:	663a                	ld	a2,392(sp)
    80047294:	8522                	mv	a0,s0
    80047296:	d08c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48420
    JS_FreeValue(ctx, resolving_funcs[1]);
    8004729a:	65da                	ld	a1,400(sp)
    8004729c:	667a                	ld	a2,408(sp)
    8004729e:	8522                	mv	a0,s0
    800472a0:	cfec40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48421
    return result_promise;
    800472a4:	67c6                	ld	a5,80(sp)
    800472a6:	fabe                	sd	a5,368(sp)
    800472a8:	7782                	ld	a5,32(sp)
    800472aa:	febe                	sd	a5,376(sp)
    800472ac:	bde1                	j	80047184 <js_promise_all+0x5e>
quickjs-nuttx/quickjs.c:48301 (discriminator 1)
        check_function(ctx, promise_resolve))
    800472ae:	85aa                	mv	a1,a0
    800472b0:	864e                	mv	a2,s3
    800472b2:	8522                	mv	a0,s0
    800472b4:	c6ad10ef          	jal	ra,8001871e <check_function>
    800472b8:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs.c:48300 (discriminator 1)
    if (JS_IsException(promise_resolve) ||
    800472ba:	f921                	bnez	a0,8004720a <js_promise_all+0xe4>
quickjs-nuttx/quickjs.c:48303
    iter = JS_GetIterator(ctx, argv[0], FALSE);
    800472bc:	00093583          	ld	a1,0(s2)
    800472c0:	00893603          	ld	a2,8(s2)
    800472c4:	4681                	li	a3,0
    800472c6:	8522                	mv	a0,s0
    800472c8:	e75fc0ef          	jal	ra,8004413c <JS_GetIterator>
    800472cc:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:48304
    if (JS_IsException(iter)) {
    800472ce:	47c2                	lw	a5,16(sp)
quickjs-nuttx/quickjs.c:48303
    iter = JS_GetIterator(ctx, argv[0], FALSE);
    800472d0:	f9aa                	sd	a0,240(sp)
    800472d2:	872a                	mv	a4,a0
    800472d4:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:48304
    if (JS_IsException(iter)) {
    800472d6:	00979d63          	bne	a5,s1,800472f0 <js_promise_all+0x1ca>
quickjs-nuttx/quickjs.c:48288
    JSValue resolve_element_env = JS_UNDEFINED, resolve_element, reject_element;
    800472da:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:48287
    JSValue next_method = JS_UNDEFINED, values = JS_UNDEFINED;
    800472dc:	478d                	li	a5,3
    800472de:	bf0d                	j	80047210 <js_promise_all+0xea>
quickjs-nuttx/quickjs.c:48288
    JSValue resolve_element_env = JS_UNDEFINED, resolve_element, reject_element;
    800472e0:	4c8d                	li	s9,3
    800472e2:	bf05                	j	80047212 <js_promise_all+0xec>
quickjs-nuttx/quickjs.c:48313
        JS_FreeValue(ctx, ret);
    800472e4:	658a                	ld	a1,128(sp)
    800472e6:	662a                	ld	a2,136(sp)
    800472e8:	8522                	mv	a0,s0
    800472ea:	cb4c40ef          	jal	ra,8000b79e <JS_FreeValue>
    800472ee:	bf85                	j	8004725e <js_promise_all+0x138>
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    800472f0:	87ae                	mv	a5,a1
    800472f2:	e3aa                	sd	a0,448(sp)
    800472f4:	e7ae                	sd	a1,456(sp)
    800472f6:	4801                	li	a6,0
    800472f8:	85aa                	mv	a1,a0
    800472fa:	06b00693          	li	a3,107
    800472fe:	8652                	mv	a2,s4
    80047300:	8522                	mv	a0,s0
    80047302:	fa8cf0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80047306:	fa2a                	sd	a0,304(sp)
    80047308:	fe2e                	sd	a1,312(sp)
    8004730a:	e42e                	sd	a1,8(sp)
    8004730c:	e92a                	sd	a0,144(sp)
js_promise_all():
quickjs-nuttx/quickjs.c:48316
        if (JS_IsException(next_method))
    8004730e:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80047312:	8bae                	mv	s7,a1
js_promise_all():
quickjs-nuttx/quickjs.c:48316
    80047314:	fc9786e3          	beq	a5,s1,800472e0 <js_promise_all+0x1ba>
quickjs-nuttx/quickjs.c:48318
        values = JS_NewArray(ctx);
    80047318:	8522                	mv	a0,s0
    8004731a:	f41d40ef          	jal	ra,8001c25a <JS_NewArray>
    8004731e:	f52e                	sd	a1,168(sp)
    80047320:	f12a                	sd	a0,160(sp)
quickjs-nuttx/quickjs.c:48319
        if (JS_IsException(values))
    80047322:	2581                	sext.w	a1,a1
    80047324:	fa958ee3          	beq	a1,s1,800472e0 <js_promise_all+0x1ba>
quickjs-nuttx/quickjs.c:48321
        resolve_element_env = JS_NewArray(ctx);
    80047328:	8522                	mv	a0,s0
    8004732a:	f31d40ef          	jal	ra,8001c25a <JS_NewArray>
    8004732e:	f92a                	sd	a0,176(sp)
    80047330:	fd2e                	sd	a1,184(sp)
quickjs-nuttx/quickjs.c:48322
        if (JS_IsException(resolve_element_env))
    80047332:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:48321
        resolve_element_env = JS_NewArray(ctx);
    80047336:	892e                	mv	s2,a1
    80047338:	8cae                	mv	s9,a1
quickjs-nuttx/quickjs.c:48322
        if (JS_IsException(resolve_element_env))
    8004733a:	ec978ce3          	beq	a5,s1,80047212 <js_promise_all+0xec>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8004733e:	e282                	sd	zero,320(sp)
    80047340:	4785                	li	a5,1
    80047342:	14f12023          	sw	a5,320(sp)
    80047346:	6716                	ld	a4,320(sp)
js_promise_all():
quickjs-nuttx/quickjs.c:48325
        if (JS_DefinePropertyValueUint32(ctx, resolve_element_env, 0,
    80047348:	85aa                	mv	a1,a0
    8004734a:	481d                	li	a6,7
    8004734c:	4781                	li	a5,0
    8004734e:	4681                	li	a3,0
    80047350:	864a                	mv	a2,s2
    80047352:	8522                	mv	a0,s0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80047354:	e682                	sd	zero,328(sp)
    80047356:	ea3a                	sd	a4,272(sp)
    80047358:	ee02                	sd	zero,280(sp)
js_promise_all():
quickjs-nuttx/quickjs.c:48325
    8004735a:	c97e90ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    8004735e:	ea054ae3          	bltz	a0,80047212 <js_promise_all+0xec>
quickjs-nuttx/quickjs.c:48292
    int index, is_zero, is_promise_any = (magic == PROMISE_MAGIC_any);
    80047362:	ffea8793          	addi	a5,s5,-2
    80047366:	0017b793          	seqz	a5,a5
    8004736a:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:48350
            resolve_element_data[3] = resolving_funcs[is_promise_any];
    8004736c:	0c18                	addi	a4,sp,528
    8004736e:	0792                	slli	a5,a5,0x4
quickjs-nuttx/quickjs.c:48335
            if (JS_IsException(item))
    80047370:	4c19                	li	s8,6
quickjs-nuttx/quickjs.c:48350
            resolve_element_data[3] = resolving_funcs[is_promise_any];
    80047372:	00f70db3          	add	s11,a4,a5
quickjs-nuttx/quickjs.c:48334
            item = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80047376:	66ca                	ld	a3,144(sp)
    80047378:	75ce                	ld	a1,240(sp)
    8004737a:	00fc                	addi	a5,sp,76
    8004737c:	875e                	mv	a4,s7
    8004737e:	8652                	mv	a2,s4
    80047380:	8522                	mv	a0,s0
    80047382:	ed5e                	sd	s7,152(sp)
    80047384:	fdd2                	sd	s4,248(sp)
    80047386:	cabfc0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    8004738a:	f4ae                	sd	a1,104(sp)
    8004738c:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:48335
            if (JS_IsException(item))
    8004738e:	2581                	sext.w	a1,a1
    80047390:	e98581e3          	beq	a1,s8,80047212 <js_promise_all+0xec>
quickjs-nuttx/quickjs.c:48337
            if (done)
    80047394:	47b6                	lw	a5,76(sp)
    80047396:	18079e63          	bnez	a5,80047532 <js_promise_all+0x40c>
quickjs-nuttx/quickjs.c:48339
            next_promise = JS_Call(ctx, promise_resolve, 
    8004739a:	76c2                	ld	a3,48(sp)
    8004739c:	758e                	ld	a1,224(sp)
    8004739e:	4785                	li	a5,1
    800473a0:	06010813          	addi	a6,sp,96
    800473a4:	876a                	mv	a4,s10
    800473a6:	864e                	mv	a2,s3
    800473a8:	8522                	mv	a0,s0
    800473aa:	f5ce                	sd	s3,232(sp)
    800473ac:	fc6a                	sd	s10,56(sp)
    800473ae:	a57fb0ef          	jal	ra,80042e04 <JS_Call>
    800473b2:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:48341
            JS_FreeValue(ctx, item);
    800473b4:	7626                	ld	a2,104(sp)
    800473b6:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:48339
            next_promise = JS_Call(ctx, promise_resolve, 
    800473b8:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:48341
            JS_FreeValue(ctx, item);
    800473ba:	8522                	mv	a0,s0
    800473bc:	be2c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48342
            if (JS_IsException(next_promise)) {
    800473c0:	57e6                	lw	a5,120(sp)
    800473c2:	01879963          	bne	a5,s8,800473d4 <js_promise_all+0x2ae>
quickjs-nuttx/quickjs.c:48344
                JS_IteratorClose(ctx, iter, TRUE);
    800473c6:	75ce                	ld	a1,240(sp)
    800473c8:	766e                	ld	a2,248(sp)
    800473ca:	4685                	li	a3,1
    800473cc:	8522                	mv	a0,s0
    800473ce:	86dd10ef          	jal	ra,80018c3a <JS_IteratorClose>
quickjs-nuttx/quickjs.c:48345
                goto fail_reject;
    800473d2:	b581                	j	80047212 <js_promise_all+0xec>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800473d4:	ea82                	sd	zero,336(sp)
    800473d6:	15612823          	sw	s6,336(sp)
    800473da:	67d6                	ld	a5,336(sp)
    800473dc:	4805                	li	a6,1
js_promise_all():
quickjs-nuttx/quickjs.c:48353
                JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    800473de:	4715                	li	a4,5
    800473e0:	fabe                	sd	a5,368(sp)
quickjs-nuttx/quickjs.c:48348
            resolve_element_data[1] = (JSValueConst)JS_NewInt32(ctx, index);
    800473e2:	ebbe                	sd	a5,464(sp)
quickjs-nuttx/quickjs.c:48349
            resolve_element_data[2] = values;
    800473e4:	778a                	ld	a5,160(sp)
quickjs-nuttx/quickjs.c:48353
                JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    800473e6:	86d6                	mv	a3,s5
    800473e8:	4605                	li	a2,1
quickjs-nuttx/quickjs.c:48349
            resolve_element_data[2] = values;
    800473ea:	f3be                	sd	a5,480(sp)
    800473ec:	77aa                	ld	a5,168(sp)
quickjs-nuttx/quickjs.c:48353
                JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    800473ee:	00000597          	auipc	a1,0x0
    800473f2:	1c858593          	addi	a1,a1,456 # 800475b6 <js_promise_all_resolve_element>
    800473f6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48349
            resolve_element_data[2] = values;
    800473f8:	f7be                	sd	a5,488(sp)
quickjs-nuttx/quickjs.c:48350
            resolve_element_data[3] = resolving_funcs[is_promise_any];
    800473fa:	f70db783          	ld	a5,-144(s11)
    800473fe:	f6c2                	sd	a6,360(sp)
quickjs-nuttx/quickjs.c:48347
            resolve_element_data[0] = JS_NewBool(ctx, FALSE);
    80047400:	e7c2                	sd	a6,456(sp)
quickjs-nuttx/quickjs.c:48350
            resolve_element_data[3] = resolving_funcs[is_promise_any];
    80047402:	fbbe                	sd	a5,496(sp)
    80047404:	f78db783          	ld	a5,-136(s11)
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80047408:	f282                	sd	zero,352(sp)
js_promise_all():
quickjs-nuttx/quickjs.c:48347
            resolve_element_data[0] = JS_NewBool(ctx, FALSE);
    8004740a:	e382                	sd	zero,448(sp)
quickjs-nuttx/quickjs.c:48350
            resolve_element_data[3] = resolving_funcs[is_promise_any];
    8004740c:	ffbe                	sd	a5,504(sp)
quickjs-nuttx/quickjs.c:48351
            resolve_element_data[4] = resolve_element_env;
    8004740e:	77ca                	ld	a5,176(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80047410:	ee82                	sd	zero,344(sp)
    80047412:	fe82                	sd	zero,376(sp)
js_promise_all():
quickjs-nuttx/quickjs.c:48351
    80047414:	20f13023          	sd	a5,512(sp)
quickjs-nuttx/quickjs.c:48353
                JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    80047418:	039c                	addi	a5,sp,448
quickjs-nuttx/quickjs.c:48348
            resolve_element_data[1] = (JSValueConst)JS_NewInt32(ctx, index);
    8004741a:	ef82                	sd	zero,472(sp)
quickjs-nuttx/quickjs.c:48351
            resolve_element_data[4] = resolve_element_env;
    8004741c:	fd4a                	sd	s2,184(sp)
    8004741e:	21213423          	sd	s2,520(sp)
quickjs-nuttx/quickjs.c:48353
                JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    80047422:	ef0e90ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    80047426:	e1aa                	sd	a0,192(sp)
    80047428:	e5ae                	sd	a1,200(sp)
quickjs-nuttx/quickjs.c:48355
            if (JS_IsException(resolve_element)) {
    8004742a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:48353
                JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    8004742e:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:48355
            if (JS_IsException(resolve_element)) {
    80047430:	4805                	li	a6,1
    80047432:	01879863          	bne	a5,s8,80047442 <js_promise_all+0x31c>
quickjs-nuttx/quickjs.c:48356
                JS_FreeValue(ctx, next_promise);
    80047436:	75c6                	ld	a1,112(sp)
    80047438:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:48381
                JS_FreeValue(ctx, reject_element);
    8004743a:	8522                	mv	a0,s0
    8004743c:	b62c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48382
                goto fail_reject1;
    80047440:	b759                	j	800473c6 <js_promise_all+0x2a0>
quickjs-nuttx/quickjs.c:48360
            if (magic == PROMISE_MAGIC_allSettled) {
    80047442:	050a9c63          	bne	s5,a6,8004749a <js_promise_all+0x374>
quickjs-nuttx/quickjs.c:48362
                    JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    80047446:	039c                	addi	a5,sp,448
    80047448:	4715                	li	a4,5
    8004744a:	4695                	li	a3,5
    8004744c:	4605                	li	a2,1
    8004744e:	00000597          	auipc	a1,0x0
    80047452:	16858593          	addi	a1,a1,360 # 800475b6 <js_promise_all_resolve_element>
    80047456:	8522                	mv	a0,s0
    80047458:	ebae90ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    8004745c:	e9aa                	sd	a0,208(sp)
quickjs-nuttx/quickjs.c:48364
                if (JS_IsException(reject_element)) {
    8004745e:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:48362
                    JS_NewCFunctionData(ctx, js_promise_all_resolve_element, 1,
    80047462:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:48364
                if (JS_IsException(reject_element)) {
    80047464:	fd8709e3          	beq	a4,s8,80047436 <js_promise_all+0x310>
quickjs-nuttx/quickjs.c:48378
            if (remainingElementsCount_add(ctx, resolve_element_env, 1) < 0) {
    80047468:	75ca                	ld	a1,176(sp)
    8004746a:	766a                	ld	a2,184(sp)
    8004746c:	4685                	li	a3,1
    8004746e:	8522                	mv	a0,s0
    80047470:	f43e                	sd	a5,40(sp)
    80047472:	d21f10ef          	jal	ra,80039192 <remainingElementsCount_add>
    80047476:	77a2                	ld	a5,40(sp)
    80047478:	06055363          	bgez	a0,800474de <js_promise_all+0x3b8>
quickjs-nuttx/quickjs.c:48379
                JS_FreeValue(ctx, next_promise);
    8004747c:	75c6                	ld	a1,112(sp)
    8004747e:	7666                	ld	a2,120(sp)
    80047480:	8522                	mv	a0,s0
    80047482:	ec3e                	sd	a5,24(sp)
    80047484:	b1ac40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48380
                JS_FreeValue(ctx, resolve_element);
    80047488:	658e                	ld	a1,192(sp)
    8004748a:	8626                	mv	a2,s1
    8004748c:	8522                	mv	a0,s0
    8004748e:	b10c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48381
                JS_FreeValue(ctx, reject_element);
    80047492:	67e2                	ld	a5,24(sp)
    80047494:	65ce                	ld	a1,208(sp)
    80047496:	863e                	mv	a2,a5
    80047498:	b74d                	j	8004743a <js_promise_all+0x314>
quickjs-nuttx/quickjs.c:48368
            } else if (magic == PROMISE_MAGIC_any) {
    8004749a:	4789                	li	a5,2
    8004749c:	02fa9a63          	bne	s5,a5,800474d0 <js_promise_all+0x3aa>
quickjs-nuttx/quickjs.c:48369
                if (JS_DefinePropertyValueUint32(ctx, values, index,
    800474a0:	758a                	ld	a1,160(sp)
    800474a2:	762a                	ld	a2,168(sp)
quickjs-nuttx/quickjs.c:48370
                                                 JS_UNDEFINED, JS_PROP_C_W_E) < 0)
    800474a4:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48369
                if (JS_DefinePropertyValueUint32(ctx, values, index,
    800474a6:	481d                	li	a6,7
    800474a8:	4701                	li	a4,0
    800474aa:	000b069b          	sext.w	a3,s6
    800474ae:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48370
                                                 JS_UNDEFINED, JS_PROP_C_W_E) < 0)
    800474b0:	fa82                	sd	zero,368(sp)
    800474b2:	febe                	sd	a5,376(sp)
quickjs-nuttx/quickjs.c:48369
                if (JS_DefinePropertyValueUint32(ctx, values, index,
    800474b4:	b3de90ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    800474b8:	f00547e3          	bltz	a0,800473c6 <js_promise_all+0x2a0>
quickjs-nuttx/quickjs.c:48372
                reject_element = resolve_element;
    800474bc:	678e                	ld	a5,192(sp)
quickjs-nuttx/quickjs.c:48373
                resolve_element = JS_DupValue(ctx, resolving_funcs[0]);
    800474be:	651a                	ld	a0,384(sp)
    800474c0:	65ba                	ld	a1,392(sp)
quickjs-nuttx/quickjs.c:48372
                reject_element = resolve_element;
    800474c2:	e9be                	sd	a5,208(sp)
quickjs-nuttx/quickjs.c:48373
                resolve_element = JS_DupValue(ctx, resolving_funcs[0]);
    800474c4:	f57c20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:48372
                reject_element = resolve_element;
    800474c8:	87a6                	mv	a5,s1
quickjs-nuttx/quickjs.c:48373
                resolve_element = JS_DupValue(ctx, resolving_funcs[0]);
    800474ca:	e1aa                	sd	a0,192(sp)
    800474cc:	84ae                	mv	s1,a1
    800474ce:	bf69                	j	80047468 <js_promise_all+0x342>
quickjs-nuttx/quickjs.c:48375
                reject_element = JS_DupValue(ctx, resolving_funcs[1]);
    800474d0:	655a                	ld	a0,400(sp)
    800474d2:	65fa                	ld	a1,408(sp)
    800474d4:	f47c20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800474d8:	e9aa                	sd	a0,208(sp)
    800474da:	87ae                	mv	a5,a1
    800474dc:	b771                	j	80047468 <js_promise_all+0x342>
quickjs-nuttx/quickjs.c:48385
            then_args[0] = resolve_element;
    800474de:	670e                	ld	a4,192(sp)
quickjs-nuttx/quickjs.c:48387
            ret = JS_InvokeFree(ctx, next_promise, JS_ATOM_then, 2, then_args);
    800474e0:	7666                	ld	a2,120(sp)
    800474e2:	75c6                	ld	a1,112(sp)
quickjs-nuttx/quickjs.c:48385
            then_args[0] = resolve_element;
    800474e4:	f33a                	sd	a4,416(sp)
quickjs-nuttx/quickjs.c:48386
            then_args[1] = reject_element;
    800474e6:	674e                	ld	a4,208(sp)
quickjs-nuttx/quickjs.c:48387
            ret = JS_InvokeFree(ctx, next_promise, JS_ATOM_then, 2, then_args);
    800474e8:	08000693          	li	a3,128
quickjs-nuttx/quickjs.c:48386
            then_args[1] = reject_element;
    800474ec:	edbe                	sd	a5,216(sp)
    800474ee:	fb3a                	sd	a4,432(sp)
    800474f0:	ff3e                	sd	a5,440(sp)
quickjs-nuttx/quickjs.c:48387
            ret = JS_InvokeFree(ctx, next_promise, JS_ATOM_then, 2, then_args);
    800474f2:	4709                	li	a4,2
    800474f4:	131c                	addi	a5,sp,416
    800474f6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48385
            then_args[0] = resolve_element;
    800474f8:	e5a6                	sd	s1,200(sp)
    800474fa:	f726                	sd	s1,424(sp)
quickjs-nuttx/quickjs.c:48387
            ret = JS_InvokeFree(ctx, next_promise, JS_ATOM_then, 2, then_args);
    800474fc:	904f80ef          	jal	ra,8003f600 <JS_InvokeFree>
quickjs-nuttx/quickjs.c:48388
            JS_FreeValue(ctx, resolve_element);
    80047500:	662e                	ld	a2,200(sp)
quickjs-nuttx/quickjs.c:48387
            ret = JS_InvokeFree(ctx, next_promise, JS_ATOM_then, 2, then_args);
    80047502:	84ae                	mv	s1,a1
    80047504:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:48388
            JS_FreeValue(ctx, resolve_element);
    80047506:	658e                	ld	a1,192(sp)
quickjs-nuttx/quickjs.c:48387
            ret = JS_InvokeFree(ctx, next_promise, JS_ATOM_then, 2, then_args);
    80047508:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:48388
            JS_FreeValue(ctx, resolve_element);
    8004750a:	8522                	mv	a0,s0
    8004750c:	a92c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48389
            JS_FreeValue(ctx, reject_element);
    80047510:	65ce                	ld	a1,208(sp)
    80047512:	666e                	ld	a2,216(sp)
    80047514:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48390
            if (check_exception_free(ctx, ret))
    80047516:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:48389
            JS_FreeValue(ctx, reject_element);
    80047518:	a86c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48390
            if (check_exception_free(ctx, ret))
    8004751c:	658a                	ld	a1,128(sp)
    8004751e:	662a                	ld	a2,136(sp)
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    80047520:	8522                	mv	a0,s0
    80047522:	faae                	sd	a1,368(sp)
    80047524:	feb2                	sd	a2,376(sp)
    80047526:	a78c40ef          	jal	ra,8000b79e <JS_FreeValue>
js_promise_all():
quickjs-nuttx/quickjs.c:48390
            if (check_exception_free(ctx, ret))
    8004752a:	e9848ee3          	beq	s1,s8,800473c6 <js_promise_all+0x2a0>
quickjs-nuttx/quickjs.c:48392
            index++;
    8004752e:	2b05                	addiw	s6,s6,1
quickjs-nuttx/quickjs.c:48334
            item = JS_IteratorNext(ctx, iter, next_method, 0, NULL, &done);
    80047530:	b599                	j	80047376 <js_promise_all+0x250>
quickjs-nuttx/quickjs.c:48395
        is_zero = remainingElementsCount_add(ctx, resolve_element_env, -1);
    80047532:	75ca                	ld	a1,176(sp)
    80047534:	56fd                	li	a3,-1
    80047536:	864a                	mv	a2,s2
    80047538:	8522                	mv	a0,s0
    8004753a:	fd4a                	sd	s2,184(sp)
    8004753c:	c57f10ef          	jal	ra,80039192 <remainingElementsCount_add>
quickjs-nuttx/quickjs.c:48396
        if (is_zero < 0)
    80047540:	cc0549e3          	bltz	a0,80047212 <js_promise_all+0xec>
quickjs-nuttx/quickjs.c:48398
        if (is_zero) {
    80047544:	d0050de3          	beqz	a0,8004725e <js_promise_all+0x138>
quickjs-nuttx/quickjs.c:48399
            if (magic == PROMISE_MAGIC_any) {
    80047548:	4789                	li	a5,2
    8004754a:	02fa9563          	bne	s5,a5,80047574 <js_promise_all+0x44e>
quickjs-nuttx/quickjs.c:48401
                error = js_aggregate_error_constructor(ctx, values);
    8004754e:	758a                	ld	a1,160(sp)
    80047550:	762a                	ld	a2,168(sp)
    80047552:	8522                	mv	a0,s0
    80047554:	abaea0ef          	jal	ra,8003180e <js_aggregate_error_constructor>
    80047558:	feae                	sd	a1,376(sp)
    8004755a:	faaa                	sd	a0,368(sp)
quickjs-nuttx/quickjs.c:48402
                if (JS_IsException(error))
    8004755c:	2581                	sext.w	a1,a1
    8004755e:	cb858ae3          	beq	a1,s8,80047212 <js_promise_all+0xec>
quickjs-nuttx/quickjs.c:48404
                JS_FreeValue(ctx, values);
    80047562:	758a                	ld	a1,160(sp)
    80047564:	762a                	ld	a2,168(sp)
    80047566:	8522                	mv	a0,s0
    80047568:	a36c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48405
                values = error;
    8004756c:	77d6                	ld	a5,368(sp)
    8004756e:	f13e                	sd	a5,160(sp)
    80047570:	77f6                	ld	a5,376(sp)
    80047572:	f53e                	sd	a5,168(sp)
quickjs-nuttx/quickjs.c:48407
            ret = JS_Call(ctx, resolving_funcs[is_promise_any], JS_UNDEFINED,
    80047574:	478d                	li	a5,3
    80047576:	e63e                	sd	a5,264(sp)
    80047578:	67e2                	ld	a5,24(sp)
    8004757a:	0a010813          	addi	a6,sp,160
    8004757e:	4681                	li	a3,0
    80047580:	00479613          	slli	a2,a5,0x4
    80047584:	0c1c                	addi	a5,sp,528
    80047586:	963e                	add	a2,a2,a5
    80047588:	f7063583          	ld	a1,-144(a2)
    8004758c:	f7863603          	ld	a2,-136(a2)
    80047590:	4785                	li	a5,1
    80047592:	470d                	li	a4,3
    80047594:	8522                	mv	a0,s0
    80047596:	e202                	sd	zero,256(sp)
    80047598:	86dfb0ef          	jal	ra,80042e04 <JS_Call>
    8004759c:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:48409
            if (check_exception_free(ctx, ret))
    8004759e:	faaa                	sd	a0,368(sp)
    800475a0:	feae                	sd	a1,376(sp)
check_exception_free():
quickjs-nuttx/quickjs.c:36659
    JS_FreeValue(ctx, obj);
    800475a2:	8626                	mv	a2,s1
    800475a4:	85aa                	mv	a1,a0
    800475a6:	8522                	mv	a0,s0
    800475a8:	9f6c40ef          	jal	ra,8000b79e <JS_FreeValue>
js_promise_all():
quickjs-nuttx/quickjs.c:48409
            if (check_exception_free(ctx, ret))
    800475ac:	2481                	sext.w	s1,s1
    800475ae:	4799                	li	a5,6
    800475b0:	caf497e3          	bne	s1,a5,8004725e <js_promise_all+0x138>
    800475b4:	b9b9                	j	80047212 <js_promise_all+0xec>

00000000800475b6 <js_promise_all_resolve_element>:
js_promise_all_resolve_element():
quickjs-nuttx/quickjs.c:48217
{
    800475b6:	7151                	addi	sp,sp,-240
    800475b8:	f1a2                	sd	s0,224(sp)
    800475ba:	eda6                	sd	s1,216(sp)
    800475bc:	e9ca                	sd	s2,208(sp)
    800475be:	e5ce                	sd	s3,200(sp)
    800475c0:	e1d2                	sd	s4,192(sp)
    800475c2:	f586                	sd	ra,232(sp)
quickjs-nuttx/quickjs.c:48220
    BOOL alreadyCalled = JS_ToBool(ctx, func_data[0]);
    800475c4:	00083583          	ld	a1,0(a6)
    800475c8:	00883603          	ld	a2,8(a6)
quickjs-nuttx/quickjs.c:48217
{
    800475cc:	84c2                	mv	s1,a6
    800475ce:	842a                	mv	s0,a0
    800475d0:	8a3e                	mv	s4,a5
    800475d2:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:48220
    BOOL alreadyCalled = JS_ToBool(ctx, func_data[0]);
    800475d4:	813c70ef          	jal	ra,8000ede6 <JS_ToBool>
quickjs-nuttx/quickjs.c:48221
    JSValueConst values = func_data[2];
    800475d8:	709c                	ld	a5,32(s1)
quickjs-nuttx/quickjs.c:48227
    if (JS_ToInt32(ctx, &index, func_data[1]))
    800475da:	6890                	ld	a2,16(s1)
    800475dc:	6c94                	ld	a3,24(s1)
quickjs-nuttx/quickjs.c:48221
    JSValueConst values = func_data[2];
    800475de:	f83e                	sd	a5,48(sp)
    800475e0:	749c                	ld	a5,40(s1)
quickjs-nuttx/quickjs.c:48220
    BOOL alreadyCalled = JS_ToBool(ctx, func_data[0]);
    800475e2:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:48227
    if (JS_ToInt32(ctx, &index, func_data[1]))
    800475e4:	106c                	addi	a1,sp,44
quickjs-nuttx/quickjs.c:48221
    JSValueConst values = func_data[2];
    800475e6:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:48222
    JSValueConst resolve = func_data[3];
    800475e8:	789c                	ld	a5,48(s1)
quickjs-nuttx/quickjs.c:48227
    if (JS_ToInt32(ctx, &index, func_data[1]))
    800475ea:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:48222
    JSValueConst resolve = func_data[3];
    800475ec:	e0be                	sd	a5,64(sp)
    800475ee:	7c9c                	ld	a5,56(s1)
    800475f0:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:48223
    JSValueConst resolve_element_env = func_data[4];
    800475f2:	60bc                	ld	a5,64(s1)
    800475f4:	e8be                	sd	a5,80(sp)
    800475f6:	64bc                	ld	a5,72(s1)
    800475f8:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:48227
    if (JS_ToInt32(ctx, &index, func_data[1]))
    800475fa:	dc1da0ef          	jal	ra,800223ba <JS_ToInt32>
    800475fe:	c501                	beqz	a0,80047606 <js_promise_all_resolve_element+0x50>
quickjs-nuttx/quickjs.c:48252
            return JS_EXCEPTION;
    80047600:	e902                	sd	zero,144(sp)
    80047602:	4799                	li	a5,6
    80047604:	a029                	j	8004760e <js_promise_all_resolve_element+0x58>
quickjs-nuttx/quickjs.c:48229
    if (alreadyCalled)
    80047606:	00098f63          	beqz	s3,80047624 <js_promise_all_resolve_element+0x6e>
quickjs-nuttx/quickjs.c:48230
        return JS_UNDEFINED;
    8004760a:	e902                	sd	zero,144(sp)
    8004760c:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:48252
            return JS_EXCEPTION;
    8004760e:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs.c:48280 (discriminator 11)
}
    80047610:	70ae                	ld	ra,232(sp)
    80047612:	740e                	ld	s0,224(sp)
    80047614:	654a                	ld	a0,144(sp)
    80047616:	65ea                	ld	a1,152(sp)
    80047618:	64ee                	ld	s1,216(sp)
    8004761a:	694e                	ld	s2,208(sp)
    8004761c:	69ae                	ld	s3,200(sp)
    8004761e:	6a0e                	ld	s4,192(sp)
    80047620:	616d                	addi	sp,sp,240
    80047622:	8082                	ret
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80047624:	4705                	li	a4,1
js_promise_all_resolve_element():
quickjs-nuttx/quickjs.c:48218
    int resolve_type = magic & 3;
    80047626:	003a7993          	andi	s3,s4,3
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8004762a:	f13a                	sd	a4,160(sp)
    8004762c:	f53a                	sd	a4,168(sp)
js_promise_all_resolve_element():
quickjs-nuttx/quickjs.c:48231
    func_data[0] = JS_NewBool(ctx, TRUE);
    8004762e:	e098                	sd	a4,0(s1)
    80047630:	e498                	sd	a4,8(s1)
quickjs-nuttx/quickjs.c:48233
    if (resolve_type == PROMISE_MAGIC_allSettled) {
    80047632:	12e99063          	bne	s3,a4,80047752 <js_promise_all_resolve_element+0x19c>
quickjs-nuttx/quickjs.c:48236
        obj = JS_NewObject(ctx);
    80047636:	8522                	mv	a0,s0
    80047638:	9edd40ef          	jal	ra,8001c024 <JS_NewObject>
    8004763c:	fcae                	sd	a1,120(sp)
    8004763e:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:48237
        if (JS_IsException(obj))
    80047640:	2581                	sext.w	a1,a1
    80047642:	4799                	li	a5,6
    80047644:	00f59563          	bne	a1,a5,8004764e <js_promise_all_resolve_element+0x98>
quickjs-nuttx/quickjs.c:48238
            return JS_EXCEPTION;
    80047648:	e902                	sd	zero,144(sp)
quickjs-nuttx/quickjs.c:48269
                return JS_EXCEPTION;
    8004764a:	ed2e                	sd	a1,152(sp)
    8004764c:	b7d1                	j	80047610 <js_promise_all_resolve_element+0x5a>
quickjs-nuttx/quickjs.c:48219
    int is_reject = magic & 4;
    8004764e:	004a7a13          	andi	s4,s4,4
quickjs-nuttx/quickjs.c:48239
        str = JS_NewString(ctx, is_reject ? "rejected" : "fulfilled");
    80047652:	00026597          	auipc	a1,0x26
    80047656:	02e58593          	addi	a1,a1,46 # 8006d680 <qjsc_repl+0x80d0>
    8004765a:	000a1663          	bnez	s4,80047666 <js_promise_all_resolve_element+0xb0>
    8004765e:	00026597          	auipc	a1,0x26
    80047662:	03258593          	addi	a1,a1,50 # 8006d690 <qjsc_repl+0x80e0>
quickjs-nuttx/quickjs.c:48239 (discriminator 4)
    80047666:	8522                	mv	a0,s0
    80047668:	b50d80ef          	jal	ra,8001f9b8 <JS_NewString>
    8004766c:	e12a                	sd	a0,128(sp)
    8004766e:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:48240 (discriminator 4)
        if (JS_IsException(str))
    80047670:	0005861b          	sext.w	a2,a1
    80047674:	4699                	li	a3,6
quickjs-nuttx/quickjs.c:48239 (discriminator 4)
        str = JS_NewString(ctx, is_reject ? "rejected" : "fulfilled");
    80047676:	872a                	mv	a4,a0
    80047678:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:48240 (discriminator 4)
        if (JS_IsException(str))
    8004767a:	00d61863          	bne	a2,a3,8004768a <js_promise_all_resolve_element+0xd4>
quickjs-nuttx/quickjs.c:48251
            JS_FreeValue(ctx, obj);
    8004767e:	75c6                	ld	a1,112(sp)
    80047680:	7666                	ld	a2,120(sp)
    80047682:	8522                	mv	a0,s0
    80047684:	91ac40ef          	jal	ra,8000b79e <JS_FreeValue>
    80047688:	bfa5                	j	80047600 <js_promise_all_resolve_element+0x4a>
quickjs-nuttx/quickjs.c:48242
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_status,
    8004768a:	75c6                	ld	a1,112(sp)
    8004768c:	7666                	ld	a2,120(sp)
    8004768e:	481d                	li	a6,7
    80047690:	08a00693          	li	a3,138
    80047694:	8522                	mv	a0,s0
    80047696:	b97d00ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    8004769a:	fe0542e3          	bltz	a0,8004767e <js_promise_all_resolve_element+0xc8>
quickjs-nuttx/quickjs.c:48246
        if (JS_DefinePropertyValue(ctx, obj,
    8004769e:	08b00693          	li	a3,139
    800476a2:	000a1463          	bnez	s4,800476aa <js_promise_all_resolve_element+0xf4>
    800476a6:	04100693          	li	a3,65
quickjs-nuttx/quickjs.c:48246 (discriminator 4)
    800476aa:	00093503          	ld	a0,0(s2)
    800476ae:	00893583          	ld	a1,8(s2)
    800476b2:	e436                	sd	a3,8(sp)
    800476b4:	d67c20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    800476b8:	87ae                	mv	a5,a1
    800476ba:	f52e                	sd	a1,168(sp)
    800476bc:	66a2                	ld	a3,8(sp)
    800476be:	75c6                	ld	a1,112(sp)
    800476c0:	7666                	ld	a2,120(sp)
    800476c2:	872a                	mv	a4,a0
    800476c4:	f12a                	sd	a0,160(sp)
    800476c6:	481d                	li	a6,7
    800476c8:	8522                	mv	a0,s0
    800476ca:	b63d00ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    800476ce:	fa0548e3          	bltz	a0,8004767e <js_promise_all_resolve_element+0xc8>
quickjs-nuttx/quickjs.c:48257
    if (JS_DefinePropertyValueUint32(ctx, values, index,
    800476d2:	7746                	ld	a4,112(sp)
    800476d4:	77e6                	ld	a5,120(sp)
    800476d6:	56b2                	lw	a3,44(sp)
    800476d8:	75c2                	ld	a1,48(sp)
    800476da:	7662                	ld	a2,56(sp)
    800476dc:	481d                	li	a6,7
    800476de:	8522                	mv	a0,s0
    800476e0:	911e90ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    800476e4:	f0054ee3          	bltz	a0,80047600 <js_promise_all_resolve_element+0x4a>
quickjs-nuttx/quickjs.c:48261
    is_zero = remainingElementsCount_add(ctx, resolve_element_env, -1);
    800476e8:	65c6                	ld	a1,80(sp)
    800476ea:	6666                	ld	a2,88(sp)
    800476ec:	56fd                	li	a3,-1
    800476ee:	8522                	mv	a0,s0
    800476f0:	aa3f10ef          	jal	ra,80039192 <remainingElementsCount_add>
quickjs-nuttx/quickjs.c:48262
    if (is_zero < 0)
    800476f4:	f00546e3          	bltz	a0,80047600 <js_promise_all_resolve_element+0x4a>
quickjs-nuttx/quickjs.c:48264
    if (is_zero) {
    800476f8:	f00509e3          	beqz	a0,8004760a <js_promise_all_resolve_element+0x54>
quickjs-nuttx/quickjs.c:48265
        if (resolve_type == PROMISE_MAGIC_any) {
    800476fc:	4789                	li	a5,2
    800476fe:	06f99363          	bne	s3,a5,80047764 <js_promise_all_resolve_element+0x1ae>
quickjs-nuttx/quickjs.c:48267
            error = js_aggregate_error_constructor(ctx, values);
    80047702:	75c2                	ld	a1,48(sp)
    80047704:	7662                	ld	a2,56(sp)
    80047706:	8522                	mv	a0,s0
    80047708:	906ea0ef          	jal	ra,8003180e <js_aggregate_error_constructor>
    8004770c:	e52e                	sd	a1,136(sp)
    8004770e:	e12a                	sd	a0,128(sp)
quickjs-nuttx/quickjs.c:48268
            if (JS_IsException(error))
    80047710:	2581                	sext.w	a1,a1
    80047712:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:48269
                return JS_EXCEPTION;
    80047714:	e902                	sd	zero,144(sp)
quickjs-nuttx/quickjs.c:48268
            if (JS_IsException(error))
    80047716:	f2f58ae3          	beq	a1,a5,8004764a <js_promise_all_resolve_element+0x94>
quickjs-nuttx/quickjs.c:48270
            ret = JS_Call(ctx, resolve, JS_UNDEFINED, 1, (JSValueConst *)&error);
    8004771a:	6626                	ld	a2,72(sp)
    8004771c:	6586                	ld	a1,64(sp)
    8004771e:	478d                	li	a5,3
    80047720:	ed3e                	sd	a5,152(sp)
    80047722:	08010813          	addi	a6,sp,128
    80047726:	4785                	li	a5,1
    80047728:	4681                	li	a3,0
    8004772a:	470d                	li	a4,3
    8004772c:	8522                	mv	a0,s0
    8004772e:	ed6fb0ef          	jal	ra,80042e04 <JS_Call>
    80047732:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:48271
            JS_FreeValue(ctx, error);
    80047734:	662a                	ld	a2,136(sp)
    80047736:	658a                	ld	a1,128(sp)
quickjs-nuttx/quickjs.c:48270
            ret = JS_Call(ctx, resolve, JS_UNDEFINED, 1, (JSValueConst *)&error);
    80047738:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:48271
            JS_FreeValue(ctx, error);
    8004773a:	8522                	mv	a0,s0
    8004773c:	862c40ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48275
        if (JS_IsException(ret))
    80047740:	0004879b          	sext.w	a5,s1
    80047744:	4719                	li	a4,6
    80047746:	02e79f63          	bne	a5,a4,80047784 <js_promise_all_resolve_element+0x1ce>
quickjs-nuttx/quickjs.c:48276
            return ret;
    8004774a:	7786                	ld	a5,96(sp)
    8004774c:	ed26                	sd	s1,152(sp)
    8004774e:	e93e                	sd	a5,144(sp)
    80047750:	b5c1                	j	80047610 <js_promise_all_resolve_element+0x5a>
quickjs-nuttx/quickjs.c:48255
        obj = JS_DupValue(ctx, argv[0]);
    80047752:	00093503          	ld	a0,0(s2)
    80047756:	00893583          	ld	a1,8(s2)
    8004775a:	cc1c20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8004775e:	f8aa                	sd	a0,112(sp)
    80047760:	fcae                	sd	a1,120(sp)
    80047762:	bf85                	j	800476d2 <js_promise_all_resolve_element+0x11c>
quickjs-nuttx/quickjs.c:48273
            ret = JS_Call(ctx, resolve, JS_UNDEFINED, 1, (JSValueConst *)&values);
    80047764:	6586                	ld	a1,64(sp)
    80047766:	6626                	ld	a2,72(sp)
    80047768:	478d                	li	a5,3
    8004776a:	ed3e                	sd	a5,152(sp)
    8004776c:	03010813          	addi	a6,sp,48
    80047770:	4785                	li	a5,1
    80047772:	4681                	li	a3,0
    80047774:	470d                	li	a4,3
    80047776:	8522                	mv	a0,s0
    80047778:	e902                	sd	zero,144(sp)
    8004777a:	e8afb0ef          	jal	ra,80042e04 <JS_Call>
    8004777e:	f0aa                	sd	a0,96(sp)
    80047780:	84ae                	mv	s1,a1
    80047782:	bf7d                	j	80047740 <js_promise_all_resolve_element+0x18a>
quickjs-nuttx/quickjs.c:48277
        JS_FreeValue(ctx, ret);
    80047784:	7586                	ld	a1,96(sp)
    80047786:	8626                	mv	a2,s1
    80047788:	8522                	mv	a0,s0
    8004778a:	814c40ef          	jal	ra,8000b79e <JS_FreeValue>
    8004778e:	bdb5                	j	8004760a <js_promise_all_resolve_element+0x54>

0000000080047790 <js_promise_then_finally_func>:
js_promise_then_finally_func():
quickjs-nuttx/quickjs.c:48607
{
    80047790:	7131                	addi	sp,sp,-192
    80047792:	f922                	sd	s0,176(sp)
    80047794:	f14a                	sd	s2,160(sp)
    80047796:	ed4e                	sd	s3,152(sp)
    80047798:	e952                	sd	s4,144(sp)
    8004779a:	fd06                	sd	ra,184(sp)
    8004779c:	f526                	sd	s1,168(sp)
    8004779e:	89be                	mv	s3,a5
quickjs-nuttx/quickjs.c:48608
    JSValueConst ctor = func_data[0];
    800477a0:	00083783          	ld	a5,0(a6)
quickjs-nuttx/quickjs.c:48607
{
    800477a4:	8642                	mv	a2,a6
quickjs-nuttx/quickjs.c:48612
    res = JS_Call(ctx, onFinally, JS_UNDEFINED, 0, NULL);
    800477a6:	6a0c                	ld	a1,16(a2)
quickjs-nuttx/quickjs.c:48608
    JSValueConst ctor = func_data[0];
    800477a8:	e83e                	sd	a5,16(sp)
    800477aa:	00883783          	ld	a5,8(a6)
quickjs-nuttx/quickjs.c:48612
    res = JS_Call(ctx, onFinally, JS_UNDEFINED, 0, NULL);
    800477ae:	6e10                	ld	a2,24(a2)
quickjs-nuttx/quickjs.c:48607
{
    800477b0:	893a                	mv	s2,a4
quickjs-nuttx/quickjs.c:48608
    JSValueConst ctor = func_data[0];
    800477b2:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs.c:48612
    res = JS_Call(ctx, onFinally, JS_UNDEFINED, 0, NULL);
    800477b4:	4801                	li	a6,0
    800477b6:	4781                	li	a5,0
    800477b8:	4681                	li	a3,0
    800477ba:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:48607
{
    800477bc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:48612
    res = JS_Call(ctx, onFinally, JS_UNDEFINED, 0, NULL);
    800477be:	e46fb0ef          	jal	ra,80042e04 <JS_Call>
    800477c2:	f82a                	sd	a0,48(sp)
    800477c4:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:48613
    if (JS_IsException(res))
    800477c6:	0005879b          	sext.w	a5,a1
    800477ca:	4a19                	li	s4,6
    800477cc:	01479e63          	bne	a5,s4,800477e8 <js_promise_then_finally_func+0x58>
quickjs-nuttx/quickjs.c:48614
        return res;
    800477d0:	e12a                	sd	a0,128(sp)
    800477d2:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:48633
}
    800477d4:	70ea                	ld	ra,184(sp)
    800477d6:	744a                	ld	s0,176(sp)
    800477d8:	650a                	ld	a0,128(sp)
    800477da:	65aa                	ld	a1,136(sp)
    800477dc:	74aa                	ld	s1,168(sp)
    800477de:	790a                	ld	s2,160(sp)
    800477e0:	69ea                	ld	s3,152(sp)
    800477e2:	6a4a                	ld	s4,144(sp)
    800477e4:	6129                	addi	sp,sp,192
    800477e6:	8082                	ret
quickjs-nuttx/quickjs.c:48615
    promise = js_promise_resolve(ctx, ctor, 1, (JSValueConst *)&res, 0);
    800477e8:	6662                	ld	a2,24(sp)
    800477ea:	65c2                	ld	a1,16(sp)
    800477ec:	4781                	li	a5,0
    800477ee:	1818                	addi	a4,sp,48
    800477f0:	4685                	li	a3,1
    800477f2:	8522                	mv	a0,s0
    800477f4:	d89fd0ef          	jal	ra,8004557c <js_promise_resolve>
    800477f8:	84ae                	mv	s1,a1
    800477fa:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:48616
    JS_FreeValue(ctx, res);
    800477fc:	7662                	ld	a2,56(sp)
    800477fe:	75c2                	ld	a1,48(sp)
quickjs-nuttx/quickjs.c:48615
    promise = js_promise_resolve(ctx, ctor, 1, (JSValueConst *)&res, 0);
    80047800:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:48617
    if (JS_IsException(promise))
    80047802:	2481                	sext.w	s1,s1
quickjs-nuttx/quickjs.c:48616
    JS_FreeValue(ctx, res);
    80047804:	8522                	mv	a0,s0
    80047806:	f99c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48617
    if (JS_IsException(promise))
    8004780a:	01449763          	bne	s1,s4,80047818 <js_promise_then_finally_func+0x88>
quickjs-nuttx/quickjs.c:48618
        return promise;
    8004780e:	6786                	ld	a5,64(sp)
    80047810:	e13e                	sd	a5,128(sp)
    80047812:	67a6                	ld	a5,72(sp)
quickjs-nuttx/quickjs.c:48632
    return ret;
    80047814:	e53e                	sd	a5,136(sp)
    80047816:	bf7d                	j	800477d4 <js_promise_then_finally_func+0x44>
quickjs-nuttx/quickjs.c:48620
        then_func = JS_NewCFunctionData(ctx, js_promise_finally_value_thunk, 0,
    80047818:	87ca                	mv	a5,s2
    8004781a:	4705                	li	a4,1
    8004781c:	4681                	li	a3,0
    8004781e:	4601                	li	a2,0
    80047820:	fffc3597          	auipc	a1,0xfffc3
    80047824:	c1458593          	addi	a1,a1,-1004 # 8000a434 <js_promise_finally_value_thunk>
quickjs-nuttx/quickjs.c:48619
    if (magic == 0) {
    80047828:	00098663          	beqz	s3,80047834 <js_promise_then_finally_func+0xa4>
quickjs-nuttx/quickjs.c:48623
        then_func = JS_NewCFunctionData(ctx, js_promise_finally_thrower, 0,
    8004782c:	fffc7597          	auipc	a1,0xfffc7
    80047830:	c3e58593          	addi	a1,a1,-962 # 8000e46a <js_promise_finally_thrower>
    80047834:	8522                	mv	a0,s0
    80047836:	adce90ef          	jal	ra,80030b12 <JS_NewCFunctionData>
    8004783a:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:48626
    if (JS_IsException(then_func)) {
    8004783c:	5726                	lw	a4,104(sp)
quickjs-nuttx/quickjs.c:48623
        then_func = JS_NewCFunctionData(ctx, js_promise_finally_thrower, 0,
    8004783e:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:48626
    if (JS_IsException(then_func)) {
    80047840:	4799                	li	a5,6
    80047842:	00f71b63          	bne	a4,a5,80047858 <js_promise_then_finally_func+0xc8>
quickjs-nuttx/quickjs.c:48627
        JS_FreeValue(ctx, promise);
    80047846:	6586                	ld	a1,64(sp)
    80047848:	6626                	ld	a2,72(sp)
    8004784a:	8522                	mv	a0,s0
    8004784c:	f53c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48628
        return then_func;
    80047850:	7786                	ld	a5,96(sp)
    80047852:	e13e                	sd	a5,128(sp)
    80047854:	77a6                	ld	a5,104(sp)
    80047856:	bf7d                	j	80047814 <js_promise_then_finally_func+0x84>
quickjs-nuttx/quickjs.c:48630
    ret = JS_InvokeFree(ctx, promise, JS_ATOM_then, 1, (JSValueConst *)&then_func);
    80047858:	6626                	ld	a2,72(sp)
    8004785a:	6586                	ld	a1,64(sp)
    8004785c:	109c                	addi	a5,sp,96
    8004785e:	4705                	li	a4,1
    80047860:	08000693          	li	a3,128
    80047864:	8522                	mv	a0,s0
    80047866:	d9bf70ef          	jal	ra,8003f600 <JS_InvokeFree>
    8004786a:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:48631
    JS_FreeValue(ctx, then_func);
    8004786c:	7626                	ld	a2,104(sp)
    8004786e:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:48630
    ret = JS_InvokeFree(ctx, promise, JS_ATOM_then, 1, (JSValueConst *)&then_func);
    80047870:	e8aa                	sd	a0,80(sp)
quickjs-nuttx/quickjs.c:48631
    JS_FreeValue(ctx, then_func);
    80047872:	8522                	mv	a0,s0
    80047874:	f2bc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:48632
    return ret;
    80047878:	67c6                	ld	a5,80(sp)
    8004787a:	e13e                	sd	a5,128(sp)
    8004787c:	67e6                	ld	a5,88(sp)
    8004787e:	bf59                	j	80047814 <js_promise_then_finally_func+0x84>

0000000080047880 <js_promise_resolve_thenable_job>:
js_promise_resolve_thenable_job():
quickjs-nuttx/quickjs.c:47833
{
    80047880:	7135                	addi	sp,sp,-160
    80047882:	ed06                	sd	ra,152(sp)
    80047884:	e922                	sd	s0,144(sp)
    80047886:	e526                	sd	s1,136(sp)
    80047888:	e14a                	sd	s2,128(sp)
quickjs-nuttx/quickjs.c:47840
    assert(argc == 3);
    8004788a:	470d                	li	a4,3
    8004788c:	00e58c63          	beq	a1,a4,800478a4 <js_promise_resolve_thenable_job+0x24>
quickjs-nuttx/quickjs.c:47840 (discriminator 1)
    80047890:	65b1                	lui	a1,0xc
    80047892:	4601                	li	a2,0
    80047894:	ae058593          	addi	a1,a1,-1312 # bae0 <asinh-0x7fff4520>
    80047898:	00022517          	auipc	a0,0x22
    8004789c:	d0050513          	addi	a0,a0,-768 # 80069598 <qjsc_repl+0x3fe8>
    800478a0:	0bc190ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:47842 (discriminator 2)
    thenable = argv[1];
    800478a4:	6a18                	ld	a4,16(a2)
    800478a6:	87b2                	mv	a5,a2
quickjs-nuttx/quickjs.c:47844 (discriminator 2)
    if (js_create_resolving_functions(ctx, args, promise) < 0)
    800478a8:	6794                	ld	a3,8(a5)
quickjs-nuttx/quickjs.c:47842 (discriminator 2)
    thenable = argv[1];
    800478aa:	e83a                	sd	a4,16(sp)
    800478ac:	6e18                	ld	a4,24(a2)
    800478ae:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:47844 (discriminator 2)
    if (js_create_resolving_functions(ctx, args, promise) < 0)
    800478b0:	108c                	addi	a1,sp,96
quickjs-nuttx/quickjs.c:47842 (discriminator 2)
    thenable = argv[1];
    800478b2:	ec3a                	sd	a4,24(sp)
quickjs-nuttx/quickjs.c:47843 (discriminator 2)
    then = argv[2];
    800478b4:	7218                	ld	a4,32(a2)
    800478b6:	842a                	mv	s0,a0
    800478b8:	f03a                	sd	a4,32(sp)
    800478ba:	7618                	ld	a4,40(a2)
quickjs-nuttx/quickjs.c:47844 (discriminator 2)
    if (js_create_resolving_functions(ctx, args, promise) < 0)
    800478bc:	6210                	ld	a2,0(a2)
quickjs-nuttx/quickjs.c:47843 (discriminator 2)
    then = argv[2];
    800478be:	f43a                	sd	a4,40(sp)
quickjs-nuttx/quickjs.c:47844 (discriminator 2)
    if (js_create_resolving_functions(ctx, args, promise) < 0)
    800478c0:	888e90ef          	jal	ra,80030948 <js_create_resolving_functions>
    800478c4:	00055d63          	bgez	a0,800478de <js_promise_resolve_thenable_job+0x5e>
quickjs-nuttx/quickjs.c:47845
        return JS_EXCEPTION;
    800478c8:	4799                	li	a5,6
    800478ca:	e882                	sd	zero,80(sp)
    800478cc:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:47855 (discriminator 1)
}
    800478ce:	60ea                	ld	ra,152(sp)
    800478d0:	644a                	ld	s0,144(sp)
    800478d2:	6546                	ld	a0,80(sp)
    800478d4:	65e6                	ld	a1,88(sp)
    800478d6:	64aa                	ld	s1,136(sp)
    800478d8:	690a                	ld	s2,128(sp)
    800478da:	610d                	addi	sp,sp,160
    800478dc:	8082                	ret
quickjs-nuttx/quickjs.c:47846
    res = JS_Call(ctx, then, thenable, 2, (JSValueConst *)args);
    800478de:	6762                	ld	a4,24(sp)
    800478e0:	66c2                	ld	a3,16(sp)
    800478e2:	7582                	ld	a1,32(sp)
    800478e4:	7622                	ld	a2,40(sp)
    800478e6:	4789                	li	a5,2
    800478e8:	06010813          	addi	a6,sp,96
    800478ec:	8522                	mv	a0,s0
    800478ee:	d16fb0ef          	jal	ra,80042e04 <JS_Call>
    800478f2:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:47847
    if (JS_IsException(res)) {
    800478f4:	0005871b          	sext.w	a4,a1
    800478f8:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:47846
    res = JS_Call(ctx, then, thenable, 2, (JSValueConst *)args);
    800478fa:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:47847
    if (JS_IsException(res)) {
    800478fc:	02f71a63          	bne	a4,a5,80047930 <js_promise_resolve_thenable_job+0xb0>
quickjs-nuttx/quickjs.c:47848
        JSValue error = JS_GetException(ctx);
    80047900:	8522                	mv	a0,s0
    80047902:	b8dc60ef          	jal	ra,8000e48e <JS_GetException>
quickjs-nuttx/quickjs.c:47849
        res = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    80047906:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs.c:47848
        JSValue error = JS_GetException(ctx);
    80047908:	e4ae                	sd	a1,72(sp)
quickjs-nuttx/quickjs.c:47849
        res = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    8004790a:	75c6                	ld	a1,112(sp)
quickjs-nuttx/quickjs.c:47848
        JSValue error = JS_GetException(ctx);
    8004790c:	e0aa                	sd	a0,64(sp)
quickjs-nuttx/quickjs.c:47849
        res = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    8004790e:	04010813          	addi	a6,sp,64
    80047912:	4785                	li	a5,1
    80047914:	4681                	li	a3,0
    80047916:	470d                	li	a4,3
    80047918:	8522                	mv	a0,s0
    8004791a:	e882                	sd	zero,80(sp)
    8004791c:	ecca                	sd	s2,88(sp)
    8004791e:	ce6fb0ef          	jal	ra,80042e04 <JS_Call>
    80047922:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:47850
        JS_FreeValue(ctx, error);
    80047924:	6626                	ld	a2,72(sp)
    80047926:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:47849
        res = JS_Call(ctx, args[1], JS_UNDEFINED, 1, (JSValueConst *)&error);
    80047928:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:47850
        JS_FreeValue(ctx, error);
    8004792a:	8522                	mv	a0,s0
    8004792c:	e73c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47852
    JS_FreeValue(ctx, args[0]);
    80047930:	7586                	ld	a1,96(sp)
    80047932:	7626                	ld	a2,104(sp)
    80047934:	8522                	mv	a0,s0
    80047936:	e69c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47853
    JS_FreeValue(ctx, args[1]);
    8004793a:	75c6                	ld	a1,112(sp)
    8004793c:	7666                	ld	a2,120(sp)
    8004793e:	8522                	mv	a0,s0
    80047940:	e5fc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:47854
    return res;
    80047944:	77c2                	ld	a5,48(sp)
    80047946:	eca6                	sd	s1,88(sp)
    80047948:	e8be                	sd	a5,80(sp)
    8004794a:	b751                	j	800478ce <js_promise_resolve_thenable_job+0x4e>

000000008004794c <js_float_env_setPrec>:
js_float_env_setPrec():
quickjs-nuttx/quickjs.c:51620
{
    8004794c:	7119                	addi	sp,sp,-128
    8004794e:	f8a2                	sd	s0,112(sp)
    80047950:	f4a6                	sd	s1,104(sp)
    80047952:	f0ca                	sd	s2,96(sp)
    80047954:	fc86                	sd	ra,120(sp)
quickjs-nuttx/quickjs.c:51627
    func = argv[0];
    80047956:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:51620
{
    80047958:	8936                	mv	s2,a3
quickjs-nuttx/quickjs.c:51628
    if (JS_ToInt64Sat(ctx, &prec, argv[1]))
    8004795a:	6b10                	ld	a2,16(a4)
quickjs-nuttx/quickjs.c:51627
    func = argv[0];
    8004795c:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:51628
    if (JS_ToInt64Sat(ctx, &prec, argv[1]))
    8004795e:	6f14                	ld	a3,24(a4)
quickjs-nuttx/quickjs.c:51627
    func = argv[0];
    80047960:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:51628
    if (JS_ToInt64Sat(ctx, &prec, argv[1]))
    80047962:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs.c:51620
{
    80047964:	842a                	mv	s0,a0
    80047966:	84ba                	mv	s1,a4
quickjs-nuttx/quickjs.c:51627
    func = argv[0];
    80047968:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:51628
    if (JS_ToInt64Sat(ctx, &prec, argv[1]))
    8004796a:	a71dc0ef          	jal	ra,800243da <JS_ToInt64Sat>
    8004796e:	cd01                	beqz	a0,80047986 <js_float_env_setPrec+0x3a>
quickjs-nuttx/quickjs.c:51629
        return JS_EXCEPTION;
    80047970:	4799                	li	a5,6
    80047972:	e882                	sd	zero,80(sp)
    80047974:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:51654 (discriminator 1)
}
    80047976:	70e6                	ld	ra,120(sp)
    80047978:	7446                	ld	s0,112(sp)
    8004797a:	6546                	ld	a0,80(sp)
    8004797c:	65e6                	ld	a1,88(sp)
    8004797e:	74a6                	ld	s1,104(sp)
    80047980:	7906                	ld	s2,96(sp)
    80047982:	6109                	addi	sp,sp,128
    80047984:	8082                	ret
quickjs-nuttx/quickjs.c:51630
    if (prec < BF_PREC_MIN || prec > BF_PREC_MAX)
    80047986:	6762                	ld	a4,24(sp)
    80047988:	57cd                	li	a5,-13
    8004798a:	8389                	srli	a5,a5,0x2
    8004798c:	1779                	addi	a4,a4,-2
quickjs-nuttx/quickjs.c:51631
        return JS_ThrowRangeError(ctx, "invalid precision");
    8004798e:	00023597          	auipc	a1,0x23
    80047992:	36a58593          	addi	a1,a1,874 # 8006acf8 <qjsc_repl+0x5748>
quickjs-nuttx/quickjs.c:51630
    if (prec < BF_PREC_MIN || prec > BF_PREC_MAX)
    80047996:	02e7ee63          	bltu	a5,a4,800479d2 <js_float_env_setPrec+0x86>
quickjs-nuttx/quickjs.c:51632
    exp_bits = BF_EXP_BITS_MAX;
    8004799a:	03d00793          	li	a5,61
    8004799e:	ca3e                	sw	a5,20(sp)
quickjs-nuttx/quickjs.c:51634
    if (argc > 2 && !JS_IsUndefined(argv[2])) {
    800479a0:	4789                	li	a5,2
    800479a2:	0327de63          	bge	a5,s2,800479de <js_float_env_setPrec+0x92>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    800479a6:	7494                	ld	a3,40(s1)
js_float_env_setPrec():
quickjs-nuttx/quickjs.c:51634 (discriminator 1)
    800479a8:	478d                	li	a5,3
    800479aa:	0006871b          	sext.w	a4,a3
    800479ae:	02f70863          	beq	a4,a5,800479de <js_float_env_setPrec+0x92>
quickjs-nuttx/quickjs.c:51635
        if (JS_ToInt32Sat(ctx, &exp_bits, argv[2]))
    800479b2:	7090                	ld	a2,32(s1)
    800479b4:	084c                	addi	a1,sp,20
    800479b6:	8522                	mv	a0,s0
    800479b8:	c73db0ef          	jal	ra,8002362a <JS_ToInt32Sat>
    800479bc:	f955                	bnez	a0,80047970 <js_float_env_setPrec+0x24>
quickjs-nuttx/quickjs.c:51637
        if (exp_bits < BF_EXP_BITS_MIN || exp_bits > BF_EXP_BITS_MAX)
    800479be:	47d2                	lw	a5,20(sp)
    800479c0:	03a00713          	li	a4,58
    800479c4:	37f5                	addiw	a5,a5,-3
    800479c6:	00f77c63          	bgeu	a4,a5,800479de <js_float_env_setPrec+0x92>
quickjs-nuttx/quickjs.c:51638
            return JS_ThrowRangeError(ctx, "invalid number of exponent bits");
    800479ca:	00023597          	auipc	a1,0x23
    800479ce:	34658593          	addi	a1,a1,838 # 8006ad10 <qjsc_repl+0x5760>
    800479d2:	8522                	mv	a0,s0
    800479d4:	efbd10ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs.c:51653
    return ret;
    800479d8:	e8aa                	sd	a0,80(sp)
    800479da:	ecae                	sd	a1,88(sp)
    800479dc:	bf69                	j	80047976 <js_float_env_setPrec+0x2a>
bf_set_exp_bits():
quickjs-nuttx/libbf.h:164
    return ((BF_EXP_BITS_MAX - n) & BF_EXP_BITS_MASK) << BF_EXP_BITS_SHIFT;
    800479de:	4752                	lw	a4,20(sp)
    800479e0:	03d00793          	li	a5,61
js_float_env_setPrec():
quickjs-nuttx/quickjs.c:51643
    saved_prec = ctx->fp_env.prec;
    800479e4:	19843903          	ld	s2,408(s0)
bf_set_exp_bits():
quickjs-nuttx/libbf.h:164
    800479e8:	9f99                	subw	a5,a5,a4
    800479ea:	0057979b          	slliw	a5,a5,0x5
js_float_env_setPrec():
quickjs-nuttx/quickjs.c:51646
    ctx->fp_env.prec = prec;
    800479ee:	6762                	ld	a4,24(sp)
quickjs-nuttx/quickjs.c:51644
    saved_flags = ctx->fp_env.flags;
    800479f0:	1a042483          	lw	s1,416(s0)
quickjs-nuttx/quickjs.c:51649
    ret = JS_Call(ctx, func, JS_UNDEFINED, 0, NULL);
    800479f4:	7582                	ld	a1,32(sp)
    800479f6:	7622                	ld	a2,40(sp)
bf_set_exp_bits():
quickjs-nuttx/libbf.h:164
    800479f8:	7e07f793          	andi	a5,a5,2016
js_float_env_setPrec():
quickjs-nuttx/quickjs.c:51641
    flags = BF_RNDN | BF_FLAG_SUBNORMAL | bf_set_exp_bits(exp_bits);
    800479fc:	0087e793          	ori	a5,a5,8
quickjs-nuttx/quickjs.c:51646
    ctx->fp_env.prec = prec;
    80047a00:	18e43c23          	sd	a4,408(s0)
quickjs-nuttx/quickjs.c:51647
    ctx->fp_env.flags = flags;
    80047a04:	1af42023          	sw	a5,416(s0)
quickjs-nuttx/quickjs.c:51649
    ret = JS_Call(ctx, func, JS_UNDEFINED, 0, NULL);
    80047a08:	4801                	li	a6,0
    80047a0a:	4781                	li	a5,0
    80047a0c:	4681                	li	a3,0
    80047a0e:	470d                	li	a4,3
    80047a10:	8522                	mv	a0,s0
    80047a12:	bf2fb0ef          	jal	ra,80042e04 <JS_Call>
quickjs-nuttx/quickjs.c:51651
    ctx->fp_env.prec = saved_prec;
    80047a16:	19243c23          	sd	s2,408(s0)
quickjs-nuttx/quickjs.c:51652
    ctx->fp_env.flags = saved_flags;
    80047a1a:	1a942023          	sw	s1,416(s0)
    80047a1e:	bf6d                	j	800479d8 <js_float_env_setPrec+0x8c>

0000000080047a20 <js_string_replace>:
js_string_replace():
quickjs-nuttx/quickjs.c:41957
{
    80047a20:	7105                	addi	sp,sp,-480
    80047a22:	ef86                	sd	ra,472(sp)
    80047a24:	eba2                	sd	s0,464(sp)
    80047a26:	e7a6                	sd	s1,456(sp)
    80047a28:	e3ca                	sd	s2,448(sp)
    80047a2a:	ff4e                	sd	s3,440(sp)
    80047a2c:	fb52                	sd	s4,432(sp)
    80047a2e:	f756                	sd	s5,424(sp)
    80047a30:	f35a                	sd	s6,416(sp)
    80047a32:	ef5e                	sd	s7,408(sp)
    80047a34:	eb62                	sd	s8,400(sp)
    80047a36:	e766                	sd	s9,392(sp)
    80047a38:	e36a                	sd	s10,384(sp)
    80047a3a:	feee                	sd	s11,376(sp)
    80047a3c:	e83e                	sd	a5,16(sp)
quickjs-nuttx/quickjs.c:41959
    JSValueConst O = this_val, searchValue = argv[0], replaceValue = argv[1];
    80047a3e:	6b1c                	ld	a5,16(a4)
    80047a40:	6704                	ld	s1,8(a4)
quickjs-nuttx/quickjs.c:41957
{
    80047a42:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs.c:41959
    JSValueConst O = this_val, searchValue = argv[0], replaceValue = argv[1];
    80047a44:	f82e                	sd	a1,48(sp)
    80047a46:	e8be                	sd	a5,80(sp)
    80047a48:	630c                	ld	a1,0(a4)
    80047a4a:	6f1c                	ld	a5,24(a4)
quickjs-nuttx/quickjs.c:41957
{
    80047a4c:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs.c:41959
    JSValueConst O = this_val, searchValue = argv[0], replaceValue = argv[1];
    80047a4e:	fc32                	sd	a2,56(sp)
    80047a50:	ecbe                	sd	a5,88(sp)
    80047a52:	e0ae                	sd	a1,64(sp)
    80047a54:	e4a6                	sd	s1,72(sp)
quickjs-nuttx/quickjs.c:41967
    if (JS_IsUndefined(O) || JS_IsNull(O))
    80047a56:	3679                	addiw	a2,a2,-2
    80047a58:	4785                	li	a5,1
    80047a5a:	02c7e663          	bltu	a5,a2,80047a86 <js_string_replace+0x66>
quickjs-nuttx/quickjs.c:42065
}
    80047a5e:	645e                	ld	s0,464(sp)
    80047a60:	60fe                	ld	ra,472(sp)
    80047a62:	64be                	ld	s1,456(sp)
    80047a64:	691e                	ld	s2,448(sp)
    80047a66:	79fa                	ld	s3,440(sp)
    80047a68:	7a5a                	ld	s4,432(sp)
    80047a6a:	7aba                	ld	s5,424(sp)
    80047a6c:	7b1a                	ld	s6,416(sp)
    80047a6e:	6bfa                	ld	s7,408(sp)
    80047a70:	6c5a                	ld	s8,400(sp)
    80047a72:	6cba                	ld	s9,392(sp)
    80047a74:	6d1a                	ld	s10,384(sp)
    80047a76:	7df6                	ld	s11,376(sp)
quickjs-nuttx/quickjs.c:41968
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    80047a78:	00023597          	auipc	a1,0x23
    80047a7c:	f9858593          	addi	a1,a1,-104 # 8006aa10 <qjsc_repl+0x5460>
quickjs-nuttx/quickjs.c:42065
}
    80047a80:	613d                	addi	sp,sp,480
quickjs-nuttx/quickjs.c:41968
        return JS_ThrowTypeError(ctx, "cannot convert to object");
    80047a82:	bebd006f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:41971
    replaceValue_str = JS_UNDEFINED;
    80047a86:	e102                	sd	zero,128(sp)
    80047a88:	e502                	sd	zero,136(sp)
quickjs-nuttx/quickjs.c:41974
    if (!JS_IsUndefined(searchValue) && !JS_IsNull(searchValue)) {
    80047a8a:	ffe4871b          	addiw	a4,s1,-2
    80047a8e:	842a                	mv	s0,a0
    80047a90:	06e7fc63          	bgeu	a5,a4,80047b08 <js_string_replace+0xe8>
quickjs-nuttx/quickjs.c:41976
        if (is_replaceAll) {
    80047a94:	67c2                	ld	a5,16(sp)
    80047a96:	cb91                	beqz	a5,80047aaa <js_string_replace+0x8a>
quickjs-nuttx/quickjs.c:41977
            if (check_regexp_g_flag(ctx, searchValue) < 0)
    80047a98:	8626                	mv	a2,s1
    80047a9a:	b46d90ef          	jal	ra,80020de0 <check_regexp_g_flag>
    80047a9e:	00055663          	bgez	a0,80047aaa <js_string_replace+0x8a>
quickjs-nuttx/quickjs.c:42064
    return JS_EXCEPTION;
    80047aa2:	4799                	li	a5,6
    80047aa4:	e982                	sd	zero,208(sp)
    80047aa6:	edbe                	sd	a5,216(sp)
    80047aa8:	aa31                	j	80047bc4 <js_string_replace+0x1a4>
quickjs-nuttx/quickjs.c:41980
        replacer = JS_GetProperty(ctx, searchValue, JS_ATOM_Symbol_replace);
    80047aaa:	6706                	ld	a4,64(sp)
    80047aac:	67a6                	ld	a5,72(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80047aae:	4801                	li	a6,0
    80047ab0:	85ba                	mv	a1,a4
    80047ab2:	863e                	mv	a2,a5
    80047ab4:	0d900693          	li	a3,217
    80047ab8:	8522                	mv	a0,s0
    80047aba:	ea3a                	sd	a4,272(sp)
    80047abc:	ee3e                	sd	a5,280(sp)
    80047abe:	fedce0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80047ac2:	f92a                	sd	a0,176(sp)
    80047ac4:	fd2e                	sd	a1,184(sp)
    80047ac6:	f9aa                	sd	a0,240(sp)
    80047ac8:	fdae                	sd	a1,248(sp)
js_string_replace():
quickjs-nuttx/quickjs.c:41981
        if (JS_IsException(replacer))
    80047aca:	0005871b          	sext.w	a4,a1
    80047ace:	4799                	li	a5,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80047ad0:	862e                	mv	a2,a1
js_string_replace():
quickjs-nuttx/quickjs.c:41981
    80047ad2:	fcf708e3          	beq	a4,a5,80047aa2 <js_string_replace+0x82>
quickjs-nuttx/quickjs.c:41983 (discriminator 1)
        if (!JS_IsUndefined(replacer) && !JS_IsNull(replacer)) {
    80047ad6:	ffe5879b          	addiw	a5,a1,-2
    80047ada:	4705                	li	a4,1
    80047adc:	02f77663          	bgeu	a4,a5,80047b08 <js_string_replace+0xe8>
quickjs-nuttx/quickjs.c:41984
            args[0] = O;
    80047ae0:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs.c:41986
            return JS_CallFree(ctx, replacer, searchValue, 2, args);
    80047ae2:	6686                	ld	a3,64(sp)
    80047ae4:	6726                	ld	a4,72(sp)
quickjs-nuttx/quickjs.c:41984
            args[0] = O;
    80047ae6:	ea3e                	sd	a5,272(sp)
    80047ae8:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs.c:41986
            return JS_CallFree(ctx, replacer, searchValue, 2, args);
    80047aea:	85aa                	mv	a1,a0
    80047aec:	11010813          	addi	a6,sp,272
quickjs-nuttx/quickjs.c:41984
            args[0] = O;
    80047af0:	ee3e                	sd	a5,280(sp)
quickjs-nuttx/quickjs.c:41985
            args[1] = replaceValue;
    80047af2:	67c6                	ld	a5,80(sp)
quickjs-nuttx/quickjs.c:41986
            return JS_CallFree(ctx, replacer, searchValue, 2, args);
    80047af4:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:41985
            args[1] = replaceValue;
    80047af6:	f23e                	sd	a5,288(sp)
    80047af8:	67e6                	ld	a5,88(sp)
    80047afa:	f63e                	sd	a5,296(sp)
quickjs-nuttx/quickjs.c:41986
            return JS_CallFree(ctx, replacer, searchValue, 2, args);
    80047afc:	4789                	li	a5,2
    80047afe:	f77ce0ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:42057
    return string_buffer_end(b);
    80047b02:	e9aa                	sd	a0,208(sp)
    80047b04:	edae                	sd	a1,216(sp)
    80047b06:	a87d                	j	80047bc4 <js_string_replace+0x1a4>
quickjs-nuttx/quickjs.c:41989
    string_buffer_init(ctx, b, 0);
    80047b08:	4601                	li	a2,0
    80047b0a:	198c                	addi	a1,sp,240
    80047b0c:	8522                	mv	a0,s0
    80047b0e:	c6ed60ef          	jal	ra,8001df7c <string_buffer_init>
quickjs-nuttx/quickjs.c:41991
    str = JS_ToString(ctx, O);
    80047b12:	75c2                	ld	a1,48(sp)
    80047b14:	7662                	ld	a2,56(sp)
    80047b16:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:41992
    if (JS_IsException(str))
    80047b18:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:41991
    str = JS_ToString(ctx, O);
    80047b1a:	c63d80ef          	jal	ra,8002077c <JS_ToString>
    80047b1e:	f0aa                	sd	a0,96(sp)
    80047b20:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:41992
    if (JS_IsException(str))
    80047b22:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:41991
    str = JS_ToString(ctx, O);
    80047b26:	892a                	mv	s2,a0
    80047b28:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs.c:41992
    if (JS_IsException(str))
    80047b2a:	1b678963          	beq	a5,s6,80047cdc <js_string_replace+0x2bc>
quickjs-nuttx/quickjs.c:41994
    search_str = JS_ToString(ctx, searchValue);
    80047b2e:	6586                	ld	a1,64(sp)
    80047b30:	8626                	mv	a2,s1
    80047b32:	8522                	mv	a0,s0
    80047b34:	e4a6                	sd	s1,72(sp)
    80047b36:	c47d80ef          	jal	ra,8002077c <JS_ToString>
    80047b3a:	f8aa                	sd	a0,112(sp)
    80047b3c:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:41995
    if (JS_IsException(search_str))
    80047b3e:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:41994
    search_str = JS_ToString(ctx, searchValue);
    80047b42:	89aa                	mv	s3,a0
    80047b44:	8aae                	mv	s5,a1
    80047b46:	8daa                	mv	s11,a0
    80047b48:	8d2e                	mv	s10,a1
quickjs-nuttx/quickjs.c:41995
    if (JS_IsException(search_str))
    80047b4a:	1b678f63          	beq	a5,s6,80047d08 <js_string_replace+0x2e8>
quickjs-nuttx/quickjs.c:41997
    functionalReplace = JS_IsFunction(ctx, replaceValue);
    80047b4e:	65c6                	ld	a1,80(sp)
    80047b50:	6666                	ld	a2,88(sp)
    80047b52:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:41971
    replaceValue_str = JS_UNDEFINED;
    80047b54:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:41997
    functionalReplace = JS_IsFunction(ctx, replaceValue);
    80047b56:	94dc60ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80047b5a:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs.c:41998
    if (!functionalReplace) {
    80047b5c:	ed09                	bnez	a0,80047b76 <js_string_replace+0x156>
quickjs-nuttx/quickjs.c:41999
        replaceValue_str = JS_ToString(ctx, replaceValue);
    80047b5e:	65c6                	ld	a1,80(sp)
    80047b60:	6666                	ld	a2,88(sp)
    80047b62:	8522                	mv	a0,s0
    80047b64:	c19d80ef          	jal	ra,8002077c <JS_ToString>
    80047b68:	e12a                	sd	a0,128(sp)
    80047b6a:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:42000
        if (JS_IsException(replaceValue_str))
    80047b6c:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:41999
        replaceValue_str = JS_ToString(ctx, replaceValue);
    80047b70:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:42000
        if (JS_IsException(replaceValue_str))
    80047b72:	17678863          	beq	a5,s6,80047ce2 <js_string_replace+0x2c2>
quickjs-nuttx/quickjs.c:42009
        if (unlikely(searchp->len == 0)) {
    80047b76:	80000b37          	lui	s6,0x80000
quickjs-nuttx/quickjs.c:42007
    is_first = TRUE;
    80047b7a:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:42006
    endOfLastMatch = 0;
    80047b7c:	4b81                	li	s7,0
quickjs-nuttx/quickjs.c:42009
        if (unlikely(searchp->len == 0)) {
    80047b7e:	fffb4b13          	not	s6,s6
quickjs-nuttx/quickjs.c:42038
            args[3] = JS_UNDEFINED;
    80047b82:	4c8d                	li	s9,3
quickjs-nuttx/quickjs.c:42009
        if (unlikely(searchp->len == 0)) {
    80047b84:	0049a703          	lw	a4,4(s3)
    80047b88:	00eb7733          	and	a4,s6,a4
    80047b8c:	ef29                	bnez	a4,80047be6 <js_string_replace+0x1c6>
quickjs-nuttx/quickjs.c:42010
            if (is_first)
    80047b8e:	e7ad                	bnez	a5,80047bf8 <js_string_replace+0x1d8>
quickjs-nuttx/quickjs.c:42012
            else if (endOfLastMatch >= sp->len)
    80047b90:	00492703          	lw	a4,4(s2)
    80047b94:	00eb7733          	and	a4,s6,a4
    80047b98:	0cebdf63          	bge	s7,a4,80047c76 <js_string_replace+0x256>
quickjs-nuttx/quickjs.c:42015
                pos = endOfLastMatch + 1;
    80047b9c:	001b8c1b          	addiw	s8,s7,1
quickjs-nuttx/quickjs.c:42019
        if (pos < 0) {
    80047ba0:	040c5d63          	bgez	s8,80047bfa <js_string_replace+0x1da>
quickjs-nuttx/quickjs.c:42020
            if (is_first) {
    80047ba4:	cbe9                	beqz	a5,80047c76 <js_string_replace+0x256>
quickjs-nuttx/quickjs.c:42021
                string_buffer_free(b);
    80047ba6:	1988                	addi	a0,sp,240
    80047ba8:	c7ac30ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:42022
                JS_FreeValue(ctx, search_str);
    80047bac:	75c6                	ld	a1,112(sp)
    80047bae:	7666                	ld	a2,120(sp)
    80047bb0:	8522                	mv	a0,s0
    80047bb2:	bedc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42023
                JS_FreeValue(ctx, replaceValue_str);
    80047bb6:	658a                	ld	a1,128(sp)
    80047bb8:	8626                	mv	a2,s1
    80047bba:	8522                	mv	a0,s0
    80047bbc:	be3c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42024
                return str;
    80047bc0:	e9ca                	sd	s2,208(sp)
    80047bc2:	edd2                	sd	s4,216(sp)
quickjs-nuttx/quickjs.c:42065 (discriminator 3)
}
    80047bc4:	60fe                	ld	ra,472(sp)
    80047bc6:	645e                	ld	s0,464(sp)
    80047bc8:	654e                	ld	a0,208(sp)
    80047bca:	65ee                	ld	a1,216(sp)
    80047bcc:	64be                	ld	s1,456(sp)
    80047bce:	691e                	ld	s2,448(sp)
    80047bd0:	79fa                	ld	s3,440(sp)
    80047bd2:	7a5a                	ld	s4,432(sp)
    80047bd4:	7aba                	ld	s5,424(sp)
    80047bd6:	7b1a                	ld	s6,416(sp)
    80047bd8:	6bfa                	ld	s7,408(sp)
    80047bda:	6c5a                	ld	s8,400(sp)
    80047bdc:	6cba                	ld	s9,392(sp)
    80047bde:	6d1a                	ld	s10,384(sp)
    80047be0:	7df6                	ld	s11,376(sp)
    80047be2:	613d                	addi	sp,sp,480
    80047be4:	8082                	ret
quickjs-nuttx/quickjs.c:42017
            pos = string_indexof(sp, searchp, endOfLastMatch);
    80047be6:	865e                	mv	a2,s7
    80047be8:	85ce                	mv	a1,s3
    80047bea:	854a                	mv	a0,s2
    80047bec:	ec3e                	sd	a5,24(sp)
    80047bee:	e02c00ef          	jal	ra,800081f0 <string_indexof>
    80047bf2:	67e2                	ld	a5,24(sp)
    80047bf4:	8c2a                	mv	s8,a0
    80047bf6:	b76d                	j	80047ba0 <js_string_replace+0x180>
quickjs-nuttx/quickjs.c:42011
                pos = 0;
    80047bf8:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:42029
        if (functionalReplace) {
    80047bfa:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:42030
            args[0] = search_str;
    80047bfc:	ea4e                	sd	s3,272(sp)
    80047bfe:	ee56                	sd	s5,280(sp)
quickjs-nuttx/quickjs.c:42029
        if (functionalReplace) {
    80047c00:	c7dd                	beqz	a5,80047cae <js_string_replace+0x28e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80047c02:	e182                	sd	zero,192(sp)
    80047c04:	c1e2                	sw	s8,192(sp)
    80047c06:	678e                	ld	a5,192(sp)
js_string_replace():
quickjs-nuttx/quickjs.c:42033
            repl_str = JS_ToStringFree(ctx, JS_Call(ctx, replaceValue, JS_UNDEFINED, 3, args));
    80047c08:	6666                	ld	a2,88(sp)
    80047c0a:	65c6                	ld	a1,80(sp)
quickjs-nuttx/quickjs.c:42031
            args[1] = JS_NewInt32(ctx, pos);
    80047c0c:	f23e                	sd	a5,288(sp)
quickjs-nuttx/quickjs.c:42033
            repl_str = JS_ToStringFree(ctx, JS_Call(ctx, replaceValue, JS_UNDEFINED, 3, args));
    80047c0e:	11010813          	addi	a6,sp,272
    80047c12:	478d                	li	a5,3
    80047c14:	4681                	li	a3,0
    80047c16:	470d                	li	a4,3
    80047c18:	8522                	mv	a0,s0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80047c1a:	e582                	sd	zero,200(sp)
js_string_replace():
quickjs-nuttx/quickjs.c:42031
            args[1] = JS_NewInt32(ctx, pos);
    80047c1c:	f602                	sd	zero,296(sp)
quickjs-nuttx/quickjs.c:42032
            args[2] = str;
    80047c1e:	fa4a                	sd	s2,304(sp)
    80047c20:	fe52                	sd	s4,312(sp)
quickjs-nuttx/quickjs.c:42033
            repl_str = JS_ToStringFree(ctx, JS_Call(ctx, replaceValue, JS_UNDEFINED, 3, args));
    80047c22:	e982                	sd	zero,208(sp)
    80047c24:	ede6                	sd	s9,216(sp)
    80047c26:	9defb0ef          	jal	ra,80042e04 <JS_Call>
    80047c2a:	862e                	mv	a2,a1
    80047c2c:	f12a                	sd	a0,160(sp)
    80047c2e:	f52e                	sd	a1,168(sp)
    80047c30:	85aa                	mv	a1,a0
    80047c32:	8522                	mv	a0,s0
    80047c34:	b53d80ef          	jal	ra,80020786 <JS_ToStringFree>
quickjs-nuttx/quickjs.c:42041
            repl_str = js_string___GetSubstitution(ctx, JS_UNDEFINED, 6, args);
    80047c38:	e92a                	sd	a0,144(sp)
quickjs-nuttx/quickjs.c:42043
        if (JS_IsException(repl_str))
    80047c3a:	0005871b          	sext.w	a4,a1
    80047c3e:	ec2e                	sd	a1,24(sp)
    80047c40:	4799                	li	a5,6
    80047c42:	0af70063          	beq	a4,a5,80047ce2 <js_string_replace+0x2c2>
quickjs-nuttx/quickjs.c:42046
        string_buffer_concat(b, sp, endOfLastMatch, pos);
    80047c46:	865e                	mv	a2,s7
    80047c48:	000c069b          	sext.w	a3,s8
    80047c4c:	85ca                	mv	a1,s2
    80047c4e:	1988                	addi	a0,sp,240
    80047c50:	e93d60ef          	jal	ra,8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:42047
        string_buffer_concat_value_free(b, repl_str);
    80047c54:	67e2                	ld	a5,24(sp)
    80047c56:	65ca                	ld	a1,144(sp)
    80047c58:	1988                	addi	a0,sp,240
    80047c5a:	863e                	mv	a2,a5
    80047c5c:	ed3e                	sd	a5,152(sp)
    80047c5e:	824d90ef          	jal	ra,80020c82 <string_buffer_concat_value_free>
quickjs-nuttx/quickjs.c:42048
        endOfLastMatch = pos + searchp->len;
    80047c62:	0049a883          	lw	a7,4(s3)
quickjs-nuttx/quickjs.c:42050
        if (!is_replaceAll)
    80047c66:	6742                	ld	a4,16(sp)
quickjs-nuttx/quickjs.c:42049
        is_first = FALSE;
    80047c68:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:42048
        endOfLastMatch = pos + searchp->len;
    80047c6a:	0168f8b3          	and	a7,a7,s6
    80047c6e:	01888bbb          	addw	s7,a7,s8
quickjs-nuttx/quickjs.c:42050
        if (!is_replaceAll)
    80047c72:	f00719e3          	bnez	a4,80047b84 <js_string_replace+0x164>
quickjs-nuttx/quickjs.c:42053
    string_buffer_concat(b, sp, endOfLastMatch, sp->len);
    80047c76:	00492683          	lw	a3,4(s2)
    80047c7a:	865e                	mv	a2,s7
    80047c7c:	85ca                	mv	a1,s2
    80047c7e:	1686                	slli	a3,a3,0x21
    80047c80:	9285                	srli	a3,a3,0x21
    80047c82:	1988                	addi	a0,sp,240
    80047c84:	e5fd60ef          	jal	ra,8001eae2 <string_buffer_concat>
quickjs-nuttx/quickjs.c:42054
    JS_FreeValue(ctx, search_str);
    80047c88:	75c6                	ld	a1,112(sp)
    80047c8a:	7666                	ld	a2,120(sp)
    80047c8c:	8522                	mv	a0,s0
    80047c8e:	b11c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42055
    JS_FreeValue(ctx, replaceValue_str);
    80047c92:	658a                	ld	a1,128(sp)
    80047c94:	8626                	mv	a2,s1
    80047c96:	8522                	mv	a0,s0
    80047c98:	b07c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42056
    JS_FreeValue(ctx, str);
    80047c9c:	7586                	ld	a1,96(sp)
    80047c9e:	7626                	ld	a2,104(sp)
    80047ca0:	8522                	mv	a0,s0
    80047ca2:	afdc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42057
    return string_buffer_end(b);
    80047ca6:	1988                	addi	a0,sp,240
    80047ca8:	ff9d70ef          	jal	ra,8001fca0 <string_buffer_end>
    80047cac:	bd99                	j	80047b02 <js_string_replace+0xe2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80047cae:	f182                	sd	zero,224(sp)
    80047cb0:	d1e2                	sw	s8,224(sp)
    80047cb2:	778e                	ld	a5,224(sp)
js_string_replace():
quickjs-nuttx/quickjs.c:42041
            repl_str = js_string___GetSubstitution(ctx, JS_UNDEFINED, 6, args);
    80047cb4:	0a0c                	addi	a1,sp,272
    80047cb6:	8522                	mv	a0,s0
    80047cb8:	e9be                	sd	a5,208(sp)
quickjs-nuttx/quickjs.c:42037
            args[2] = JS_NewInt32(ctx, pos);
    80047cba:	fa3e                	sd	a5,304(sp)
quickjs-nuttx/quickjs.c:42040
            args[5] = replaceValue_str;
    80047cbc:	678a                	ld	a5,128(sp)
quickjs-nuttx/quickjs.c:42036
            args[1] = str;
    80047cbe:	f24a                	sd	s2,288(sp)
    80047cc0:	f652                	sd	s4,296(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80047cc2:	f582                	sd	zero,232(sp)
    80047cc4:	ed82                	sd	zero,216(sp)
js_string_replace():
quickjs-nuttx/quickjs.c:42037
            args[2] = JS_NewInt32(ctx, pos);
    80047cc6:	fe02                	sd	zero,312(sp)
quickjs-nuttx/quickjs.c:42038
            args[3] = JS_UNDEFINED;
    80047cc8:	e282                	sd	zero,320(sp)
    80047cca:	e6e6                	sd	s9,328(sp)
quickjs-nuttx/quickjs.c:42039
            args[4] = JS_UNDEFINED;
    80047ccc:	ea82                	sd	zero,336(sp)
    80047cce:	eee6                	sd	s9,344(sp)
quickjs-nuttx/quickjs.c:42040
            args[5] = replaceValue_str;
    80047cd0:	e526                	sd	s1,136(sp)
    80047cd2:	f2be                	sd	a5,352(sp)
    80047cd4:	f6a6                	sd	s1,360(sp)
quickjs-nuttx/quickjs.c:42041
            repl_str = js_string___GetSubstitution(ctx, JS_UNDEFINED, 6, args);
    80047cd6:	f25f10ef          	jal	ra,80039bfa <js_string___GetSubstitution.constprop.0>
    80047cda:	bfb9                	j	80047c38 <js_string_replace+0x218>
quickjs-nuttx/quickjs.c:41971
    replaceValue_str = JS_UNDEFINED;
    80047cdc:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:41970
    search_str = JS_UNDEFINED;
    80047cde:	4d0d                	li	s10,3
    80047ce0:	4d81                	li	s11,0
quickjs-nuttx/quickjs.c:42060
    string_buffer_free(b);
    80047ce2:	1988                	addi	a0,sp,240
    80047ce4:	b3ec30ef          	jal	ra,8000b022 <string_buffer_free>
quickjs-nuttx/quickjs.c:42061
    JS_FreeValue(ctx, search_str);
    80047ce8:	85ee                	mv	a1,s11
    80047cea:	866a                	mv	a2,s10
    80047cec:	8522                	mv	a0,s0
    80047cee:	ab1c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42062
    JS_FreeValue(ctx, replaceValue_str);
    80047cf2:	658a                	ld	a1,128(sp)
    80047cf4:	8626                	mv	a2,s1
    80047cf6:	8522                	mv	a0,s0
    80047cf8:	aa7c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:42063
    JS_FreeValue(ctx, str);
    80047cfc:	7586                	ld	a1,96(sp)
    80047cfe:	7626                	ld	a2,104(sp)
    80047d00:	8522                	mv	a0,s0
    80047d02:	a9dc30ef          	jal	ra,8000b79e <JS_FreeValue>
    80047d06:	bb71                	j	80047aa2 <js_string_replace+0x82>
quickjs-nuttx/quickjs.c:41971
    replaceValue_str = JS_UNDEFINED;
    80047d08:	448d                	li	s1,3
    80047d0a:	bfe1                	j	80047ce2 <js_string_replace+0x2c2>

0000000080047d0c <js_array_from>:
js_array_from():
quickjs-nuttx/quickjs.c:38812
{
    80047d0c:	7121                	addi	sp,sp,-448
    80047d0e:	fb22                	sd	s0,432(sp)
    80047d10:	f726                	sd	s1,424(sp)
    80047d12:	ef4e                	sd	s3,408(sp)
    80047d14:	e35a                	sd	s6,384(sp)
    80047d16:	ff06                	sd	ra,440(sp)
    80047d18:	f34a                	sd	s2,416(sp)
    80047d1a:	eb52                	sd	s4,400(sp)
    80047d1c:	e756                	sd	s5,392(sp)
    80047d1e:	fede                	sd	s7,376(sp)
    80047d20:	fae2                	sd	s8,368(sp)
    80047d22:	f6e6                	sd	s9,360(sp)
quickjs-nuttx/quickjs.c:38814
    JSValueConst items = argv[0], mapfn, this_arg;
    80047d24:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:38812
{
    80047d26:	89ba                	mv	s3,a4
    80047d28:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:38814
    JSValueConst items = argv[0], mapfn, this_arg;
    80047d2a:	f83e                	sd	a5,48(sp)
    80047d2c:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:38812
{
    80047d2e:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:38822
    mapfn = JS_UNDEFINED;
    80047d30:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:38814
    JSValueConst items = argv[0], mapfn, this_arg;
    80047d32:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:38823
    this_arg = JS_UNDEFINED;
    80047d34:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:38822
    mapfn = JS_UNDEFINED;
    80047d36:	e482                	sd	zero,72(sp)
quickjs-nuttx/quickjs.c:38823
    this_arg = JS_UNDEFINED;
    80047d38:	e882                	sd	zero,80(sp)
    80047d3a:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:38824
    r = JS_UNDEFINED;
    80047d3c:	f882                	sd	zero,112(sp)
    80047d3e:	fc82                	sd	zero,120(sp)
quickjs-nuttx/quickjs.c:38825
    arrayLike = JS_UNDEFINED;
    80047d40:	f102                	sd	zero,160(sp)
    80047d42:	f502                	sd	zero,168(sp)
quickjs-nuttx/quickjs.c:38826
    stack[0] = JS_UNDEFINED;
    80047d44:	e282                	sd	zero,320(sp)
    80047d46:	e6be                	sd	a5,328(sp)
quickjs-nuttx/quickjs.c:38827
    stack[1] = JS_UNDEFINED;
    80047d48:	ea82                	sd	zero,336(sp)
    80047d4a:	eebe                	sd	a5,344(sp)
quickjs-nuttx/quickjs.c:38829
    if (argc > 1) {
    80047d4c:	4705                	li	a4,1
quickjs-nuttx/quickjs.c:38812
{
    80047d4e:	842a                	mv	s0,a0
    80047d50:	8b2e                	mv	s6,a1
    80047d52:	84b2                	mv	s1,a2
quickjs-nuttx/quickjs.c:38829
    if (argc > 1) {
    80047d54:	10d75663          	bge	a4,a3,80047e60 <js_array_from+0x154>
quickjs-nuttx/quickjs.c:38830
        mapfn = argv[1];
    80047d58:	0189b903          	ld	s2,24(s3)
    80047d5c:	0109b583          	ld	a1,16(s3)
quickjs-nuttx/quickjs.c:38821
    mapping = FALSE;
    80047d60:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:38830
        mapfn = argv[1];
    80047d62:	e4ca                	sd	s2,72(sp)
    80047d64:	e0ae                	sd	a1,64(sp)
quickjs-nuttx/quickjs.c:38831
        if (!JS_IsUndefined(mapfn)) {
    80047d66:	0009071b          	sext.w	a4,s2
    80047d6a:	02f70463          	beq	a4,a5,80047d92 <js_array_from+0x86>
quickjs-nuttx/quickjs.c:38832
            if (check_function(ctx, mapfn))
    80047d6e:	864a                	mv	a2,s2
    80047d70:	8a36                	mv	s4,a3
    80047d72:	9add00ef          	jal	ra,8001871e <check_function>
    80047d76:	c501                	beqz	a0,80047d7e <js_array_from+0x72>
quickjs-nuttx/quickjs.c:38825
    arrayLike = JS_UNDEFINED;
    80047d78:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:38824
    r = JS_UNDEFINED;
    80047d7a:	448d                	li	s1,3
    80047d7c:	aced                	j	80048076 <js_array_from+0x36a>
quickjs-nuttx/quickjs.c:38835
            if (argc > 2)
    80047d7e:	4789                	li	a5,2
quickjs-nuttx/quickjs.c:38834
            mapping = 1;
    80047d80:	4a85                	li	s5,1
quickjs-nuttx/quickjs.c:38835
            if (argc > 2)
    80047d82:	00fa0863          	beq	s4,a5,80047d92 <js_array_from+0x86>
quickjs-nuttx/quickjs.c:38836
                this_arg = argv[2];
    80047d86:	0209b783          	ld	a5,32(s3)
    80047d8a:	e8be                	sd	a5,80(sp)
    80047d8c:	0289b783          	ld	a5,40(s3)
    80047d90:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs.c:38839
    iter = JS_GetProperty(ctx, items, JS_ATOM_Symbol_iterator);
    80047d92:	77e2                	ld	a5,56(sp)
    80047d94:	7742                	ld	a4,48(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80047d96:	4801                	li	a6,0
    80047d98:	863e                	mv	a2,a5
    80047d9a:	0d600693          	li	a3,214
    80047d9e:	85ba                	mv	a1,a4
    80047da0:	8522                	mv	a0,s0
    80047da2:	f63e                	sd	a5,296(sp)
    80047da4:	f23a                	sd	a4,288(sp)
    80047da6:	d05ce0ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80047daa:	e1aa                	sd	a0,192(sp)
    80047dac:	e5ae                	sd	a1,200(sp)
    80047dae:	f0aa                	sd	a0,96(sp)
    80047db0:	f4ae                	sd	a1,104(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    80047db2:	0005879b          	sext.w	a5,a1
js_array_from():
quickjs-nuttx/quickjs.c:38840
    if (JS_IsException(iter))
    80047db6:	4b99                	li	s7,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80047db8:	862e                	mv	a2,a1
js_array_from():
quickjs-nuttx/quickjs.c:38840
    80047dba:	fb778fe3          	beq	a5,s7,80047d78 <js_array_from+0x6c>
quickjs-nuttx/quickjs.c:38842
    if (!JS_IsUndefined(iter)) {
    80047dbe:	470d                	li	a4,3
    80047dc0:	10e78763          	beq	a5,a4,80047ece <js_array_from+0x1c2>
quickjs-nuttx/quickjs.c:38843
        JS_FreeValue(ctx, iter);
    80047dc4:	85aa                	mv	a1,a0
    80047dc6:	8522                	mv	a0,s0
    80047dc8:	9d7c30ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80047dcc:	2481                	sext.w	s1,s1
    80047dce:	57fd                	li	a5,-1
    80047dd0:	08f49b63          	bne	s1,a5,80047e66 <js_array_from+0x15a>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    80047dd4:	000b3783          	ld	a5,0(s6) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
    80047dd8:	93b1                	srli	a5,a5,0x2c
js_array_from():
quickjs-nuttx/quickjs.c:38844
        if (JS_IsConstructor(ctx, this_val))
    80047dda:	8b85                	andi	a5,a5,1
    80047ddc:	c7c9                	beqz	a5,80047e66 <js_array_from+0x15a>
quickjs-nuttx/quickjs.c:38845
            r = JS_CallConstructor(ctx, this_val, 0, NULL);
    80047dde:	65c2                	ld	a1,16(sp)
    80047de0:	6662                	ld	a2,24(sp)
    80047de2:	4701                	li	a4,0
    80047de4:	4681                	li	a3,0
    80047de6:	8522                	mv	a0,s0
    80047de8:	dbdf90ef          	jal	ra,80041ba4 <JS_CallConstructor>
quickjs-nuttx/quickjs.c:38847
            r = JS_NewArray(ctx);
    80047dec:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:38848
        if (JS_IsException(r))
    80047dee:	0005879b          	sext.w	a5,a1
    80047df2:	4719                	li	a4,6
quickjs-nuttx/quickjs.c:38847
            r = JS_NewArray(ctx);
    80047df4:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:38848
        if (JS_IsException(r))
    80047df6:	2ae78263          	beq	a5,a4,8004809a <js_array_from+0x38e>
quickjs-nuttx/quickjs.c:38850
        stack[0] = JS_DupValue(ctx, items);
    80047dfa:	7542                	ld	a0,48(sp)
    80047dfc:	75e2                	ld	a1,56(sp)
    80047dfe:	e1cc20ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    80047e02:	e2aa                	sd	a0,320(sp)
    80047e04:	e6ae                	sd	a1,328(sp)
quickjs-nuttx/quickjs.c:38851
        if (js_for_of_start(ctx, &stack[1], FALSE))
    80047e06:	4601                	li	a2,0
    80047e08:	0a8c                	addi	a1,sp,336
    80047e0a:	8522                	mv	a0,s0
    80047e0c:	cf8fc0ef          	jal	ra,80044304 <js_for_of_start>
    80047e10:	28051563          	bnez	a0,8004809a <js_array_from+0x38e>
quickjs-nuttx/quickjs.c:38868
            if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80047e14:	6991                	lui	s3,0x4
quickjs-nuttx/quickjs.c:38853
        for (k = 0;; k++) {
    80047e16:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:38855
            if (JS_IsException(v))
    80047e18:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:38868
            if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80047e1a:	099d                	addi	s3,s3,7
quickjs-nuttx/quickjs.c:38854
            v = JS_IteratorNext(ctx, stack[0], stack[1], 0, NULL, &done);
    80047e1c:	6776                	ld	a4,344(sp)
    80047e1e:	66d6                	ld	a3,336(sp)
    80047e20:	6596                	ld	a1,320(sp)
    80047e22:	6636                	ld	a2,328(sp)
    80047e24:	105c                	addi	a5,sp,36
    80047e26:	8522                	mv	a0,s0
    80047e28:	a08fc0ef          	jal	ra,80044030 <JS_IteratorNext.constprop.0>
    80047e2c:	e12a                	sd	a0,128(sp)
    80047e2e:	e52e                	sd	a1,136(sp)
quickjs-nuttx/quickjs.c:38855
            if (JS_IsException(v))
    80047e30:	0005871b          	sext.w	a4,a1
quickjs-nuttx/quickjs.c:38854
            v = JS_IteratorNext(ctx, stack[0], stack[1], 0, NULL, &done);
    80047e34:	87ae                	mv	a5,a1
quickjs-nuttx/quickjs.c:38855
            if (JS_IsException(v))
    80047e36:	09470063          	beq	a4,s4,80047eb6 <js_array_from+0x1aa>
quickjs-nuttx/quickjs.c:38857
            if (done)
    80047e3a:	5712                	lw	a4,36(sp)
    80047e3c:	24071563          	bnez	a4,80048086 <js_array_from+0x37a>
quickjs-nuttx/quickjs.c:38859
            if (mapping) {
    80047e40:	020a9763          	bnez	s5,80047e6e <js_array_from+0x162>
quickjs-nuttx/quickjs.c:38854
            v = JS_IteratorNext(ctx, stack[0], stack[1], 0, NULL, &done);
    80047e44:	4b0a                	lw	s6,128(sp)
quickjs-nuttx/quickjs.c:38868
            if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80047e46:	c15a                	sw	s6,128(sp)
    80047e48:	670a                	ld	a4,128(sp)
    80047e4a:	75c6                	ld	a1,112(sp)
    80047e4c:	884e                	mv	a6,s3
    80047e4e:	86e2                	mv	a3,s8
    80047e50:	8626                	mv	a2,s1
    80047e52:	8522                	mv	a0,s0
    80047e54:	9dee90ef          	jal	ra,80031032 <JS_DefinePropertyValueInt64>
    80047e58:	04054f63          	bltz	a0,80047eb6 <js_array_from+0x1aa>
quickjs-nuttx/quickjs.c:38853
        for (k = 0;; k++) {
    80047e5c:	0c05                	addi	s8,s8,1
quickjs-nuttx/quickjs.c:38854
            v = JS_IteratorNext(ctx, stack[0], stack[1], 0, NULL, &done);
    80047e5e:	bf7d                	j	80047e1c <js_array_from+0x110>
quickjs-nuttx/quickjs.c:38822
    mapfn = JS_UNDEFINED;
    80047e60:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:38821
    mapping = FALSE;
    80047e62:	4a81                	li	s5,0
    80047e64:	b73d                	j	80047d92 <js_array_from+0x86>
quickjs-nuttx/quickjs.c:38847
            r = JS_NewArray(ctx);
    80047e66:	8522                	mv	a0,s0
    80047e68:	bf2d40ef          	jal	ra,8001c25a <JS_NewArray>
    80047e6c:	b741                	j	80047dec <js_array_from+0xe0>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80047e6e:	e982                	sd	zero,208(sp)
js_array_from():
quickjs-nuttx/quickjs.c:38861
                args[1] = JS_NewInt32(ctx, k);
    80047e70:	c9e2                	sw	s8,208(sp)
    80047e72:	67ce                	ld	a5,208(sp)
quickjs-nuttx/quickjs.c:38862
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80047e74:	6766                	ld	a4,88(sp)
    80047e76:	66c6                	ld	a3,80(sp)
quickjs-nuttx/quickjs.c:38860
                args[0] = v;
    80047e78:	f62e                	sd	a1,296(sp)
quickjs-nuttx/quickjs.c:38862
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80047e7a:	6586                	ld	a1,64(sp)
quickjs-nuttx/quickjs.c:38860
                args[0] = v;
    80047e7c:	f22a                	sd	a0,288(sp)
    80047e7e:	ea3e                	sd	a5,272(sp)
quickjs-nuttx/quickjs.c:38861
                args[1] = JS_NewInt32(ctx, k);
    80047e80:	fa3e                	sd	a5,304(sp)
quickjs-nuttx/quickjs.c:38862
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80047e82:	12010813          	addi	a6,sp,288
    80047e86:	4789                	li	a5,2
    80047e88:	864a                	mv	a2,s2
    80047e8a:	8522                	mv	a0,s0
    80047e8c:	ee02                	sd	zero,280(sp)
quickjs-nuttx/quickjs.c:38861
                args[1] = JS_NewInt32(ctx, k);
    80047e8e:	fe02                	sd	zero,312(sp)
quickjs-nuttx/quickjs.c:38862
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80047e90:	f75fa0ef          	jal	ra,80042e04 <JS_Call>
    80047e94:	ed2e                	sd	a1,152(sp)
    80047e96:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs.c:38863
                JS_FreeValue(ctx, v);
    80047e98:	662a                	ld	a2,136(sp)
    80047e9a:	658a                	ld	a1,128(sp)
quickjs-nuttx/quickjs.c:38862
                v2 = JS_Call(ctx, mapfn, this_arg, 2, args);
    80047e9c:	e92a                	sd	a0,144(sp)
    80047e9e:	00050b1b          	sext.w	s6,a0
quickjs-nuttx/quickjs.c:38863
                JS_FreeValue(ctx, v);
    80047ea2:	8522                	mv	a0,s0
    80047ea4:	8fbc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38864
                v = v2;
    80047ea8:	674a                	ld	a4,144(sp)
quickjs-nuttx/quickjs.c:38865
                if (JS_IsException(v))
    80047eaa:	67a2                	ld	a5,8(sp)
quickjs-nuttx/quickjs.c:38864
                v = v2;
    80047eac:	e13a                	sd	a4,128(sp)
quickjs-nuttx/quickjs.c:38865
                if (JS_IsException(v))
    80047eae:	0007871b          	sext.w	a4,a5
    80047eb2:	f9471ae3          	bne	a4,s4,80047e46 <js_array_from+0x13a>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80047eb6:	6636                	ld	a2,328(sp)
js_array_from():
quickjs-nuttx/quickjs.c:38825
    arrayLike = JS_UNDEFINED;
    80047eb8:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:38911
    if (!JS_IsUndefined(stack[0]))
    80047eba:	0006079b          	sext.w	a5,a2
    80047ebe:	1b378c63          	beq	a5,s3,80048076 <js_array_from+0x36a>
quickjs-nuttx/quickjs.c:38912
        JS_IteratorClose(ctx, stack[0], TRUE);
    80047ec2:	6596                	ld	a1,320(sp)
    80047ec4:	4685                	li	a3,1
    80047ec6:	8522                	mv	a0,s0
    80047ec8:	d73d00ef          	jal	ra,80018c3a <JS_IteratorClose>
    80047ecc:	a26d                	j	80048076 <js_array_from+0x36a>
quickjs-nuttx/quickjs.c:38873
        arrayLike = JS_ToObject(ctx, items);
    80047ece:	7662                	ld	a2,56(sp)
    80047ed0:	75c2                	ld	a1,48(sp)
    80047ed2:	8522                	mv	a0,s0
    80047ed4:	9e6e80ef          	jal	ra,800300ba <JS_ToObject>
    80047ed8:	f12a                	sd	a0,160(sp)
    80047eda:	f52e                	sd	a1,168(sp)
quickjs-nuttx/quickjs.c:38874
        if (JS_IsException(arrayLike))
    80047edc:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:38873
        arrayLike = JS_ToObject(ctx, items);
    80047ee0:	862a                	mv	a2,a0
    80047ee2:	8a2e                	mv	s4,a1
    80047ee4:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:38874
        if (JS_IsException(arrayLike))
    80047ee6:	e9778ae3          	beq	a5,s7,80047d7a <js_array_from+0x6e>
quickjs-nuttx/quickjs.c:38876
        if (js_get_length64(ctx, &len, arrayLike) < 0)
    80047eea:	86ae                	mv	a3,a1
    80047eec:	8522                	mv	a0,s0
    80047eee:	102c                	addi	a1,sp,40
    80047ef0:	ee1dc0ef          	jal	ra,80024dd0 <js_get_length64>
    80047ef4:	e80543e3          	bltz	a0,80047d7a <js_array_from+0x6e>
quickjs-nuttx/quickjs.c:38878
        v = JS_NewInt64(ctx, len);
    80047ef8:	7722                	ld	a4,40(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80047efa:	0007079b          	sext.w	a5,a4
    80047efe:	0cf71863          	bne	a4,a5,80047fce <js_array_from+0x2c2>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80047f02:	d382                	sw	zero,228(sp)
    80047f04:	d1be                	sw	a5,224(sp)
    80047f06:	770e                	ld	a4,224(sp)
    80047f08:	f582                	sd	zero,232(sp)
    80047f0a:	f23a                	sd	a4,288(sp)
    80047f0c:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80047f0e:	12f12023          	sw	a5,288(sp)
    80047f12:	3792                	fld	fa5,288(sp)
    80047f14:	e53a                	sd	a4,136(sp)
js_array_from():
quickjs-nuttx/quickjs.c:38879
        args[0] = v;
    80047f16:	f63a                	sd	a4,296(sp)
JS_IsConstructor():
quickjs-nuttx/quickjs.c:9756
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    80047f18:	a13e                	fsd	fa5,128(sp)
    80047f1a:	2481                	sext.w	s1,s1
    80047f1c:	57fd                	li	a5,-1
    80047f1e:	0cf49063          	bne	s1,a5,80047fde <js_array_from+0x2d2>
quickjs-nuttx/quickjs.c:9759
    return p->is_constructor;
    80047f22:	000b3783          	ld	a5,0(s6)
    80047f26:	93b1                	srli	a5,a5,0x2c
js_array_from():
quickjs-nuttx/quickjs.c:38880
        if (JS_IsConstructor(ctx, this_val)) {
    80047f28:	8b85                	andi	a5,a5,1
    80047f2a:	cbd5                	beqz	a5,80047fde <js_array_from+0x2d2>
quickjs-nuttx/quickjs.c:38881
            r = JS_CallConstructor(ctx, this_val, 1, args);
    80047f2c:	65c2                	ld	a1,16(sp)
    80047f2e:	6662                	ld	a2,24(sp)
    80047f30:	1218                	addi	a4,sp,288
    80047f32:	4685                	li	a3,1
    80047f34:	8522                	mv	a0,s0
    80047f36:	c6ff90ef          	jal	ra,80041ba4 <JS_CallConstructor>
quickjs-nuttx/quickjs.c:38883
            r = js_array_constructor(ctx, JS_UNDEFINED, 1, args);
    80047f3a:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:38885
        JS_FreeValue(ctx, v);
    80047f3c:	662a                	ld	a2,136(sp)
    80047f3e:	658a                	ld	a1,128(sp)
quickjs-nuttx/quickjs.c:38883
            r = js_array_constructor(ctx, JS_UNDEFINED, 1, args);
    80047f40:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:38885
        JS_FreeValue(ctx, v);
    80047f42:	8522                	mv	a0,s0
    80047f44:	85bc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38886
        if (JS_IsException(r))
    80047f48:	0004879b          	sext.w	a5,s1
    80047f4c:	4719                	li	a4,6
    80047f4e:	12e78463          	beq	a5,a4,80048076 <js_array_from+0x36a>
quickjs-nuttx/quickjs.c:38901
            if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80047f52:	6b11                	lui	s6,0x4
quickjs-nuttx/quickjs.c:38888
        for(k = 0; k < len; k++) {
    80047f54:	4c01                	li	s8,0
quickjs-nuttx/quickjs.c:38890
            if (JS_IsException(v))
    80047f56:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:38901
            if (JS_DefinePropertyValueInt64(ctx, r, k, v,
    80047f58:	0b1d                	addi	s6,s6,7
quickjs-nuttx/quickjs.c:38888 (discriminator 1)
        for(k = 0; k < len; k++) {
    80047f5a:	77a2                	ld	a5,40(sp)
    80047f5c:	08fc4c63          	blt	s8,a5,80047ff4 <js_array_from+0x2e8>
JS_NewUint32():
quickjs-nuttx/quickjs.h:537
    if (val <= 0x7fffffff) {
    80047f60:	000c071b          	sext.w	a4,s8
    80047f64:	12074363          	bltz	a4,8004808a <js_array_from+0x37e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80047f68:	10012a23          	sw	zero,276(sp)
    80047f6c:	10e12823          	sw	a4,272(sp)
    80047f70:	67d2                	ld	a5,272(sp)
    80047f72:	ee02                	sd	zero,280(sp)
    80047f74:	e602                	sd	zero,264(sp)
    80047f76:	e23e                	sd	a5,256(sp)
    80047f78:	4781                	li	a5,0
JS_NewUint32():
quickjs-nuttx/quickjs.h:542
    return v;
    80047f7a:	10e12023          	sw	a4,256(sp)
js_array_from():
quickjs-nuttx/quickjs.c:38906
    if (JS_SetProperty(ctx, r, JS_ATOM_length, JS_NewUint32(ctx, k)) < 0)
    80047f7e:	6712                	ld	a4,256(sp)
    80047f80:	75c6                	ld	a1,112(sp)
    80047f82:	03000693          	li	a3,48
    80047f86:	8626                	mv	a2,s1
    80047f88:	8522                	mv	a0,s0
    80047f8a:	c83ef0ef          	jal	ra,80037c0c <JS_SetProperty>
    80047f8e:	0e054463          	bltz	a0,80048076 <js_array_from+0x36a>
quickjs-nuttx/quickjs.c:38917
    JS_FreeValue(ctx, arrayLike);
    80047f92:	758a                	ld	a1,160(sp)
    80047f94:	864e                	mv	a2,s3
    80047f96:	8522                	mv	a0,s0
    80047f98:	807c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38918
    JS_FreeValue(ctx, stack[0]);
    80047f9c:	6596                	ld	a1,320(sp)
    80047f9e:	6636                	ld	a2,328(sp)
    80047fa0:	8522                	mv	a0,s0
    80047fa2:	ffcc30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38919
    JS_FreeValue(ctx, stack[1]);
    80047fa6:	65d6                	ld	a1,336(sp)
    80047fa8:	6676                	ld	a2,344(sp)
    80047faa:	8522                	mv	a0,s0
    80047fac:	ff2c30ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:38921
}
    80047fb0:	70fa                	ld	ra,440(sp)
    80047fb2:	745a                	ld	s0,432(sp)
    80047fb4:	7546                	ld	a0,112(sp)
    80047fb6:	791a                	ld	s2,416(sp)
    80047fb8:	69fa                	ld	s3,408(sp)
    80047fba:	6a5a                	ld	s4,400(sp)
    80047fbc:	6aba                	ld	s5,392(sp)
    80047fbe:	6b1a                	ld	s6,384(sp)
    80047fc0:	7bf6                	ld	s7,376(sp)
    80047fc2:	7c56                	ld	s8,368(sp)
    80047fc4:	7cb6                	ld	s9,360(sp)
    80047fc6:	85a6                	mv	a1,s1
    80047fc8:	74ba                	ld	s1,424(sp)
    80047fca:	6139                	addi	sp,sp,448
    80047fcc:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80047fce:	d22777d3          	fcvt.d.l	fa5,a4
    80047fd2:	471d                	li	a4,7
    80047fd4:	e20787d3          	fmv.x.d	a5,fa5
js_array_from():
quickjs-nuttx/quickjs.h:230
    return v;
    80047fd8:	b23e                	fsd	fa5,288(sp)
    80047fda:	2781                	sext.w	a5,a5
    80047fdc:	bf0d                	j	80047f0e <js_array_from+0x202>
quickjs-nuttx/quickjs.c:38883
            r = js_array_constructor(ctx, JS_UNDEFINED, 1, args);
    80047fde:	478d                	li	a5,3
    80047fe0:	1218                	addi	a4,sp,288
    80047fe2:	4685                	li	a3,1
    80047fe4:	460d                	li	a2,3
    80047fe6:	8522                	mv	a0,s0
    80047fe8:	4581                	li	a1,0
    80047fea:	ea02                	sd	zero,272(sp)
    80047fec:	ee3e                	sd	a5,280(sp)
    80047fee:	d8fef0ef          	jal	ra,80037d7c <js_array_constructor>
    80047ff2:	b7a1                	j	80047f3a <js_array_from+0x22e>
quickjs-nuttx/quickjs.c:38889
            v = JS_GetPropertyInt64(ctx, arrayLike, k);
    80047ff4:	758a                	ld	a1,160(sp)
    80047ff6:	86e2                	mv	a3,s8
    80047ff8:	8652                	mv	a2,s4
    80047ffa:	8522                	mv	a0,s0
    80047ffc:	9e7f10ef          	jal	ra,800399e2 <JS_GetPropertyInt64>
