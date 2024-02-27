    80055000:	f8a2                	sd	s0,112(sp)
    80055002:	f4a6                	sd	s1,104(sp)
    80055004:	843a                	mv	s0,a4
    80055006:	f0ca                	sd	s2,96(sp)
    80055008:	ecce                	sd	s3,88(sp)
    8005500a:	e8d2                	sd	s4,80(sp)
    8005500c:	e4d6                	sd	s5,72(sp)
    8005500e:	e0da                	sd	s6,64(sp)
    80055010:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:1954
    JSRuntime *rt = JS_GetRuntime(ctx);
    80055012:	8cab60ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80055016:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:1955
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80055018:	82cb60ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
    8005501c:	892a                	mv	s2,a0
is_main_thread():
quickjs-nuttx/quickjs-libc.c:1854
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    8005501e:	854e                	mv	a0,s3
    80055020:	824b60ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1961
    if (!is_main_thread(rt))
    80055024:	653c                	ld	a5,72(a0)
    80055026:	c38d                	beqz	a5,80055048 <js_os_signal+0x50>
quickjs-nuttx/quickjs-libc.c:1996
}
    80055028:	7446                	ld	s0,112(sp)
    8005502a:	70e6                	ld	ra,120(sp)
    8005502c:	7906                	ld	s2,96(sp)
    8005502e:	69e6                	ld	s3,88(sp)
    80055030:	6a46                	ld	s4,80(sp)
    80055032:	6aa6                	ld	s5,72(sp)
    80055034:	6b06                	ld	s6,64(sp)
quickjs-nuttx/quickjs-libc.c:1962
        return JS_ThrowTypeError(ctx, "signal handler can only be set in the main thread");
    80055036:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:1996
}
    80055038:	74a6                	ld	s1,104(sp)
quickjs-nuttx/quickjs-libc.c:1962
        return JS_ThrowTypeError(ctx, "signal handler can only be set in the main thread");
    8005503a:	0002a597          	auipc	a1,0x2a
    8005503e:	e0e58593          	addi	a1,a1,-498 # 8007ee48 <utf8_min_code+0x2c0>
quickjs-nuttx/quickjs-libc.c:1996
}
    80055042:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs-libc.c:1962
        return JS_ThrowTypeError(ctx, "signal handler can only be set in the main thread");
    80055044:	e28c306f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:1964
    if (JS_ToUint32(ctx, &sig_num, argv[0]))
    80055048:	6010                	ld	a2,0(s0)
    8005504a:	6414                	ld	a3,8(s0)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    8005504c:	086c                	addi	a1,sp,28
    8005504e:	8526                	mv	a0,s1
    80055050:	f832                	sd	a2,48(sp)
    80055052:	fc36                	sd	a3,56(sp)
    80055054:	b66cd0ef          	jal	ra,800223ba <JS_ToInt32>
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1964
    80055058:	c509                	beqz	a0,80055062 <js_os_signal+0x6a>
quickjs-nuttx/quickjs-libc.c:1965
        return JS_EXCEPTION;
    8005505a:	f802                	sd	zero,48(sp)
    8005505c:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1995
    return JS_UNDEFINED;
    8005505e:	fc3e                	sd	a5,56(sp)
    80055060:	a839                	j	8005507e <js_os_signal+0x86>
quickjs-nuttx/quickjs-libc.c:1966
    if (sig_num >= 64)
    80055062:	47f2                	lw	a5,28(sp)
    80055064:	03f00713          	li	a4,63
    80055068:	02f77763          	bgeu	a4,a5,80055096 <js_os_signal+0x9e>
quickjs-nuttx/quickjs-libc.c:1967
        return JS_ThrowRangeError(ctx, "invalid signal number");
    8005506c:	0002a597          	auipc	a1,0x2a
    80055070:	e1458593          	addi	a1,a1,-492 # 8007ee80 <utf8_min_code+0x2f8>
    80055074:	8526                	mv	a0,s1
    80055076:	859c40ef          	jal	ra,800198ce <JS_ThrowRangeError>
quickjs-nuttx/quickjs-libc.c:1982
            return JS_ThrowTypeError(ctx, "not a function");
    8005507a:	f82a                	sd	a0,48(sp)
    8005507c:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:1996 (discriminator 1)
}
    8005507e:	70e6                	ld	ra,120(sp)
    80055080:	7446                	ld	s0,112(sp)
    80055082:	7542                	ld	a0,48(sp)
    80055084:	75e2                	ld	a1,56(sp)
    80055086:	74a6                	ld	s1,104(sp)
    80055088:	7906                	ld	s2,96(sp)
    8005508a:	69e6                	ld	s3,88(sp)
    8005508c:	6a46                	ld	s4,80(sp)
    8005508e:	6aa6                	ld	s5,72(sp)
    80055090:	6b06                	ld	s6,64(sp)
    80055092:	6109                	addi	sp,sp,128
    80055094:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1968
    func = argv[1];
    80055096:	01843a03          	ld	s4,24(s0)
    8005509a:	01043983          	ld	s3,16(s0)
quickjs-nuttx/quickjs-libc.c:1970
    if (JS_IsNull(func) || JS_IsUndefined(func)) {
    8005509e:	4705                	li	a4,1
quickjs-nuttx/quickjs-libc.c:1968
    func = argv[1];
    800550a0:	f452                	sd	s4,40(sp)
    800550a2:	f04e                	sd	s3,32(sp)
quickjs-nuttx/quickjs-libc.c:1970
    if (JS_IsNull(func) || JS_IsUndefined(func)) {
    800550a4:	ffea069b          	addiw	a3,s4,-2
    800550a8:	000a0b1b          	sext.w	s6,s4
    800550ac:	02d76463          	bltu	a4,a3,800550d4 <js_os_signal+0xdc>
find_sh():
quickjs-nuttx/quickjs-libc.c:1927
    list_for_each(el, &ts->os_signal_handlers) {
    800550b0:	01893403          	ld	s0,24(s2)
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1971
        sh = find_sh(ts, sig_num);
    800550b4:	2781                	sext.w	a5,a5
find_sh():
quickjs-nuttx/quickjs-libc.c:1927
    list_for_each(el, &ts->os_signal_handlers) {
    800550b6:	0941                	addi	s2,s2,16
    800550b8:	01241963          	bne	s0,s2,800550ca <js_os_signal+0xd2>
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1979
        signal(sig_num, handler);
    800550bc:	4581                	li	a1,0
quickjs-nuttx/quickjs-libc.c:1993
        signal(sig_num, os_signal_handler);
    800550be:	4572                	lw	a0,28(sp)
    800550c0:	0700c0ef          	jal	ra,80061130 <signal>
quickjs-nuttx/quickjs-libc.c:1995
    return JS_UNDEFINED;
    800550c4:	478d                	li	a5,3
    800550c6:	f802                	sd	zero,48(sp)
    800550c8:	bf59                	j	8005505e <js_os_signal+0x66>
find_sh():
quickjs-nuttx/quickjs-libc.c:1929
        if (sh->sig_num == sig_num)
    800550ca:	4818                	lw	a4,16(s0)
    800550cc:	08f70563          	beq	a4,a5,80055156 <js_os_signal+0x15e>
quickjs-nuttx/quickjs-libc.c:1927
    list_for_each(el, &ts->os_signal_handlers) {
    800550d0:	6400                	ld	s0,8(s0)
    800550d2:	b7dd                	j	800550b8 <js_os_signal+0xc0>
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1981
        if (!JS_IsFunction(ctx, func))
    800550d4:	85ce                	mv	a1,s3
    800550d6:	8652                	mv	a2,s4
    800550d8:	8526                	mv	a0,s1
    800550da:	bc8b90ef          	jal	ra,8000e4a2 <JS_IsFunction>
    800550de:	e909                	bnez	a0,800550f0 <js_os_signal+0xf8>
quickjs-nuttx/quickjs-libc.c:1982
            return JS_ThrowTypeError(ctx, "not a function");
    800550e0:	8526                	mv	a0,s1
    800550e2:	00015597          	auipc	a1,0x15
    800550e6:	b0e58593          	addi	a1,a1,-1266 # 80069bf0 <qjsc_repl+0x4640>
    800550ea:	d82c30ef          	jal	ra,8001866c <JS_ThrowTypeError>
    800550ee:	b771                	j	8005507a <js_os_signal+0x82>
quickjs-nuttx/quickjs-libc.c:1983
        sh = find_sh(ts, sig_num);
    800550f0:	47f2                	lw	a5,28(sp)
find_sh():
quickjs-nuttx/quickjs-libc.c:1927
    list_for_each(el, &ts->os_signal_handlers) {
    800550f2:	01893403          	ld	s0,24(s2)
    800550f6:	01090a93          	addi	s5,s2,16
    800550fa:	05541963          	bne	s0,s5,8005514c <js_os_signal+0x154>
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1985
            sh = js_mallocz(ctx, sizeof(*sh));
    800550fe:	02800593          	li	a1,40
    80055102:	8526                	mv	a0,s1
    80055104:	834c60ef          	jal	ra,8001b138 <js_mallocz>
    80055108:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1986
            if (!sh)
    8005510a:	d921                	beqz	a0,8005505a <js_os_signal+0x62>
quickjs-nuttx/quickjs-libc.c:1988
            sh->sig_num = sig_num;
    8005510c:	47f2                	lw	a5,28(sp)
    8005510e:	c81c                	sw	a5,16(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80055110:	01093783          	ld	a5,16(s2)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80055114:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80055116:	e01c                	sd	a5,0(s0)
quickjs-nuttx/list.h:53
    el->next = next;
    80055118:	01543423          	sd	s5,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8005511c:	00893823          	sd	s0,16(s2)
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1991
        JS_FreeValue(ctx, sh->func);
    80055120:	6c0c                	ld	a1,24(s0)
    80055122:	7010                	ld	a2,32(s0)
    80055124:	8526                	mv	a0,s1
    80055126:	f87fc0ef          	jal	ra,800520ac <JS_FreeValue>
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    8005512a:	57d1                	li	a5,-12
    8005512c:	0167f763          	bgeu	a5,s6,8005513a <js_os_signal+0x142>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80055130:	0009a783          	lw	a5,0(s3)
    80055134:	2785                	addiw	a5,a5,1
    80055136:	00f9a023          	sw	a5,0(s3)
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1992
        sh->func = JS_DupValue(ctx, func);
    8005513a:	01343c23          	sd	s3,24(s0)
    8005513e:	03443023          	sd	s4,32(s0)
quickjs-nuttx/quickjs-libc.c:1993
        signal(sig_num, os_signal_handler);
    80055142:	ffffd597          	auipc	a1,0xffffd
    80055146:	f3a58593          	addi	a1,a1,-198 # 8005207c <os_signal_handler>
    8005514a:	bf95                	j	800550be <js_os_signal+0xc6>
find_sh():
quickjs-nuttx/quickjs-libc.c:1929
        if (sh->sig_num == sig_num)
    8005514c:	4818                	lw	a4,16(s0)
    8005514e:	fcf709e3          	beq	a4,a5,80055120 <js_os_signal+0x128>
quickjs-nuttx/quickjs-libc.c:1927
    list_for_each(el, &ts->os_signal_handlers) {
    80055152:	6400                	ld	s0,8(s0)
    80055154:	b75d                	j	800550fa <js_os_signal+0x102>
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1973
            free_sh(JS_GetRuntime(ctx), sh);
    80055156:	8526                	mv	a0,s1
    80055158:	f85b50ef          	jal	ra,8000b0dc <JS_GetRuntime>
    8005515c:	84aa                	mv	s1,a0
free_sh():
quickjs-nuttx/quickjs-libc.c:1937
    list_del(&sh->link);
    8005515e:	8522                	mv	a0,s0
    80055160:	efdfc0ef          	jal	ra,8005205c <list_del>
quickjs-nuttx/quickjs-libc.c:1938
    JS_FreeValueRT(rt, sh->func);
    80055164:	6c0c                	ld	a1,24(s0)
    80055166:	7010                	ld	a2,32(s0)
    80055168:	8526                	mv	a0,s1
    8005516a:	bdcfe0ef          	jal	ra,80053546 <JS_FreeValueRT>
quickjs-nuttx/quickjs-libc.c:1939
    js_free_rt(rt, sh);
    8005516e:	85a2                	mv	a1,s0
    80055170:	8526                	mv	a0,s1
    80055172:	86fb50ef          	jal	ra,8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs-libc.c:1940
}
    80055176:	b799                	j	800550bc <js_os_signal+0xc4>

0000000080055178 <js_worker_set_onmessage>:
js_worker_set_onmessage():
quickjs-nuttx/quickjs-libc.c:3581
{
    80055178:	7119                	addi	sp,sp,-128
    8005517a:	fc86                	sd	ra,120(sp)
    8005517c:	f4a6                	sd	s1,104(sp)
    8005517e:	ecce                	sd	s3,88(sp)
    80055180:	e8d2                	sd	s4,80(sp)
    80055182:	e4d6                	sd	s5,72(sp)
    80055184:	e82e                	sd	a1,16(sp)
    80055186:	ec32                	sd	a2,24(sp)
    80055188:	e036                	sd	a3,0(sp)
    8005518a:	f8a2                	sd	s0,112(sp)
    8005518c:	f0ca                	sd	s2,96(sp)
    8005518e:	e0da                	sd	s6,64(sp)
    80055190:	fc5e                	sd	s7,56(sp)
    80055192:	84aa                	mv	s1,a0
    80055194:	e43a                	sd	a4,8(sp)
    80055196:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs-libc.c:3582
    JSRuntime *rt = JS_GetRuntime(ctx);
    80055198:	f45b50ef          	jal	ra,8000b0dc <JS_GetRuntime>
    8005519c:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs-libc.c:3583
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    8005519e:	ea7b50ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:3584
    JSWorkerData *worker = JS_GetOpaque2(ctx, this_val, js_worker_class_id);
    800551a2:	65c2                	ld	a1,16(sp)
    800551a4:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs-libc.c:3583
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    800551a6:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:3584
    JSWorkerData *worker = JS_GetOpaque2(ctx, this_val, js_worker_class_id);
    800551a8:	000ac697          	auipc	a3,0xac
    800551ac:	f906a683          	lw	a3,-112(a3) # 80101138 <js_worker_class_id>
    800551b0:	8526                	mv	a0,s1
    800551b2:	e3cc30ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs-libc.c:3587
    if (!worker)
    800551b6:	e10d                	bnez	a0,800551d8 <js_worker_set_onmessage+0x60>
quickjs-nuttx/quickjs-libc.c:3588
        return JS_EXCEPTION;
    800551b8:	f002                	sd	zero,32(sp)
    800551ba:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:3612
}
    800551bc:	70e6                	ld	ra,120(sp)
    800551be:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs-libc.c:3611
    return JS_UNDEFINED;
    800551c0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:3612
}
    800551c2:	7502                	ld	a0,32(sp)
    800551c4:	75a2                	ld	a1,40(sp)
    800551c6:	74a6                	ld	s1,104(sp)
    800551c8:	7906                	ld	s2,96(sp)
    800551ca:	69e6                	ld	s3,88(sp)
    800551cc:	6a46                	ld	s4,80(sp)
    800551ce:	6aa6                	ld	s5,72(sp)
    800551d0:	6b06                	ld	s6,64(sp)
    800551d2:	7be2                	ld	s7,56(sp)
    800551d4:	6109                	addi	sp,sp,128
    800551d6:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3591
    if (JS_IsNull(func)) {
    800551d8:	000a0b1b          	sext.w	s6,s4
    800551dc:	4b89                	li	s7,2
quickjs-nuttx/quickjs-libc.c:3590
    port = worker->msg_handler;
    800551de:	6900                	ld	s0,16(a0)
    800551e0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:3591
    if (JS_IsNull(func)) {
    800551e2:	017b1c63          	bne	s6,s7,800551fa <js_worker_set_onmessage+0x82>
quickjs-nuttx/quickjs-libc.c:3592
        if (port) {
    800551e6:	c419                	beqz	s0,800551f4 <js_worker_set_onmessage+0x7c>
js_free_port():
quickjs-nuttx/quickjs-libc.c:3317
    if (port) {
    800551e8:	85a2                	mv	a1,s0
    800551ea:	8556                	mv	a0,s5
    800551ec:	b1cff0ef          	jal	ra,80054508 <js_free_port.part.0>
js_worker_set_onmessage():
quickjs-nuttx/quickjs-libc.c:3594
            worker->msg_handler = NULL;
    800551f0:	00093823          	sd	zero,16(s2)
quickjs-nuttx/quickjs-libc.c:3611
    return JS_UNDEFINED;
    800551f4:	f002                	sd	zero,32(sp)
    800551f6:	478d                	li	a5,3
    800551f8:	b7d1                	j	800551bc <js_worker_set_onmessage+0x44>
quickjs-nuttx/quickjs-libc.c:3597
        if (!JS_IsFunction(ctx, func))
    800551fa:	6582                	ld	a1,0(sp)
    800551fc:	6622                	ld	a2,8(sp)
    800551fe:	8526                	mv	a0,s1
    80055200:	aa2b90ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80055204:	e115                	bnez	a0,80055228 <js_worker_set_onmessage+0xb0>
quickjs-nuttx/quickjs-libc.c:3612
}
    80055206:	7446                	ld	s0,112(sp)
    80055208:	70e6                	ld	ra,120(sp)
    8005520a:	7906                	ld	s2,96(sp)
    8005520c:	69e6                	ld	s3,88(sp)
    8005520e:	6a46                	ld	s4,80(sp)
    80055210:	6aa6                	ld	s5,72(sp)
    80055212:	6b06                	ld	s6,64(sp)
    80055214:	7be2                	ld	s7,56(sp)
quickjs-nuttx/quickjs-libc.c:3598
            return JS_ThrowTypeError(ctx, "not a function");
    80055216:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:3612
}
    80055218:	74a6                	ld	s1,104(sp)
quickjs-nuttx/quickjs-libc.c:3598
            return JS_ThrowTypeError(ctx, "not a function");
    8005521a:	00015597          	auipc	a1,0x15
    8005521e:	9d658593          	addi	a1,a1,-1578 # 80069bf0 <qjsc_repl+0x4640>
quickjs-nuttx/quickjs-libc.c:3612
}
    80055222:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs-libc.c:3598
            return JS_ThrowTypeError(ctx, "not a function");
    80055224:	c48c306f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:3599
        if (!port) {
    80055228:	ec1d                	bnez	s0,80055266 <js_worker_set_onmessage+0xee>
quickjs-nuttx/quickjs-libc.c:3600
            port = js_mallocz(ctx, sizeof(*port));
    8005522a:	02800593          	li	a1,40
    8005522e:	8526                	mv	a0,s1
    80055230:	f09c50ef          	jal	ra,8001b138 <js_mallocz>
    80055234:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3601
            if (!port)
    80055236:	d149                	beqz	a0,800551b8 <js_worker_set_onmessage+0x40>
quickjs-nuttx/quickjs-libc.c:3603
            port->recv_pipe = js_dup_message_pipe(worker->recv_pipe);
    80055238:	00093a83          	ld	s5,0(s2)
js_dup_message_pipe():
quickjs-nuttx/quickjs-libc.c:3276
    atomic_add_int(&ps->ref_count, 1);
    8005523c:	4585                	li	a1,1
    8005523e:	8556                	mv	a0,s5
    80055240:	ee6fe0ef          	jal	ra,80053926 <atomic_add_int>
js_worker_set_onmessage():
quickjs-nuttx/quickjs-libc.c:3603
            port->recv_pipe = js_dup_message_pipe(worker->recv_pipe);
    80055244:	01543823          	sd	s5,16(s0)
quickjs-nuttx/quickjs-libc.c:3604
            port->on_message_func = JS_NULL;
    80055248:	00043c23          	sd	zero,24(s0)
    8005524c:	03743023          	sd	s7,32(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80055250:	0309b783          	ld	a5,48(s3)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80055254:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80055256:	e01c                	sd	a5,0(s0)
js_worker_set_onmessage():
quickjs-nuttx/quickjs-libc.c:3605
            list_add_tail(&port->link, &ts->port_list);
    80055258:	03098793          	addi	a5,s3,48
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8005525c:	e41c                	sd	a5,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    8005525e:	0289b823          	sd	s0,48(s3)
js_worker_set_onmessage():
quickjs-nuttx/quickjs-libc.c:3606
            worker->msg_handler = port;
    80055262:	00893823          	sd	s0,16(s2)
quickjs-nuttx/quickjs-libc.c:3608
        JS_FreeValue(ctx, port->on_message_func);
    80055266:	6c0c                	ld	a1,24(s0)
    80055268:	7010                	ld	a2,32(s0)
    8005526a:	8526                	mv	a0,s1
    8005526c:	e41fc0ef          	jal	ra,800520ac <JS_FreeValue>
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    80055270:	5751                	li	a4,-12
    80055272:	6782                	ld	a5,0(sp)
    80055274:	01677563          	bgeu	a4,s6,8005527e <js_worker_set_onmessage+0x106>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80055278:	4398                	lw	a4,0(a5)
    8005527a:	2705                	addiw	a4,a4,1
    8005527c:	c398                	sw	a4,0(a5)
js_worker_set_onmessage():
quickjs-nuttx/quickjs-libc.c:3609
        port->on_message_func = JS_DupValue(ctx, func);
    8005527e:	ec1c                	sd	a5,24(s0)
    80055280:	03443023          	sd	s4,32(s0)
    80055284:	bf85                	j	800551f4 <js_worker_set_onmessage+0x7c>

0000000080055286 <js_worker_get_onmessage>:
js_worker_get_onmessage():
quickjs-nuttx/quickjs-libc.c:3615
{
    80055286:	7179                	addi	sp,sp,-48
quickjs-nuttx/quickjs-libc.c:3616
    JSWorkerData *worker = JS_GetOpaque2(ctx, this_val, js_worker_class_id);
    80055288:	000ac697          	auipc	a3,0xac
    8005528c:	eb06a683          	lw	a3,-336(a3) # 80101138 <js_worker_class_id>
quickjs-nuttx/quickjs-libc.c:3615
{
    80055290:	f406                	sd	ra,40(sp)
    80055292:	e02e                	sd	a1,0(sp)
    80055294:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:3616
    JSWorkerData *worker = JS_GetOpaque2(ctx, this_val, js_worker_class_id);
    80055296:	d58c30ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs-libc.c:3618
    if (!worker)
    8005529a:	e509                	bnez	a0,800552a4 <js_worker_get_onmessage+0x1e>
quickjs-nuttx/quickjs-libc.c:3619
        return JS_EXCEPTION;
    8005529c:	e802                	sd	zero,16(sp)
    8005529e:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:3624
        return JS_NULL;
    800552a0:	ec3e                	sd	a5,24(sp)
    800552a2:	a839                	j	800552c0 <js_worker_get_onmessage+0x3a>
quickjs-nuttx/quickjs-libc.c:3620
    port = worker->msg_handler;
    800552a4:	6918                	ld	a4,16(a0)
quickjs-nuttx/quickjs-libc.c:3621
    if (port) {
    800552a6:	c315                	beqz	a4,800552ca <js_worker_get_onmessage+0x44>
quickjs-nuttx/quickjs-libc.c:3622
        return JS_DupValue(ctx, port->on_message_func);
    800552a8:	7314                	ld	a3,32(a4)
    800552aa:	6f1c                	ld	a5,24(a4)
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    800552ac:	5751                	li	a4,-12
    800552ae:	0006861b          	sext.w	a2,a3
    800552b2:	00c77563          	bgeu	a4,a2,800552bc <js_worker_get_onmessage+0x36>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    800552b6:	4398                	lw	a4,0(a5)
    800552b8:	2705                	addiw	a4,a4,1
    800552ba:	c398                	sw	a4,0(a5)
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    800552bc:	e83e                	sd	a5,16(sp)
    800552be:	ec36                	sd	a3,24(sp)
js_worker_get_onmessage():
quickjs-nuttx/quickjs-libc.c:3626 (discriminator 1)
}
    800552c0:	70a2                	ld	ra,40(sp)
    800552c2:	6542                	ld	a0,16(sp)
    800552c4:	65e2                	ld	a1,24(sp)
    800552c6:	6145                	addi	sp,sp,48
    800552c8:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3624
        return JS_NULL;
    800552ca:	e802                	sd	zero,16(sp)
    800552cc:	4789                	li	a5,2
    800552ce:	bfc9                	j	800552a0 <js_worker_get_onmessage+0x1a>

00000000800552d0 <js_std_urlGet>:
js_std_urlGet():
quickjs-nuttx/quickjs-libc.c:1323
{
    800552d0:	7149                	addi	sp,sp,-368
    800552d2:	f2a2                	sd	s0,352(sp)
    800552d4:	eaca                	sd	s2,336(sp)
    800552d6:	e6ce                	sd	s3,328(sp)
    800552d8:	f686                	sd	ra,360(sp)
    800552da:	eea6                	sd	s1,344(sp)
    800552dc:	e2d2                	sd	s4,320(sp)
    800552de:	fe56                	sd	s5,312(sp)
    800552e0:	fa5a                	sd	s6,304(sp)
    800552e2:	f65e                	sd	s7,296(sp)
    800552e4:	f262                	sd	s8,288(sp)
    800552e6:	e02e                	sd	a1,0(sp)
    800552e8:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:1336
    url = JS_ToCString(ctx, argv[0]);
    800552ea:	630c                	ld	a1,0(a4)
    800552ec:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:1323
{
    800552ee:	842a                	mv	s0,a0
    800552f0:	89b6                	mv	s3,a3
    800552f2:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:1331
    JSValue response = JS_UNDEFINED, ret_obj;
    800552f4:	f002                	sd	zero,32(sp)
    800552f6:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs-libc.c:1336
    url = JS_ToCString(ctx, argv[0]);
    800552f8:	dfdfc0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:1337
    if (!url)
    800552fc:	e115                	bnez	a0,80055320 <js_std_urlGet+0x50>
quickjs-nuttx/quickjs-libc.c:1352
            return JS_EXCEPTION;
    800552fe:	4799                	li	a5,6
    80055300:	e882                	sd	zero,80(sp)
    80055302:	ecbe                	sd	a5,88(sp)
quickjs-nuttx/quickjs-libc.c:1466 (discriminator 1)
}
    80055304:	70b6                	ld	ra,360(sp)
    80055306:	7416                	ld	s0,352(sp)
    80055308:	6546                	ld	a0,80(sp)
    8005530a:	65e6                	ld	a1,88(sp)
    8005530c:	64f6                	ld	s1,344(sp)
    8005530e:	6956                	ld	s2,336(sp)
    80055310:	69b6                	ld	s3,328(sp)
    80055312:	6a16                	ld	s4,320(sp)
    80055314:	7af2                	ld	s5,312(sp)
    80055316:	7b52                	ld	s6,304(sp)
    80055318:	7bb2                	ld	s7,296(sp)
    8005531a:	7c12                	ld	s8,288(sp)
    8005531c:	6175                	addi	sp,sp,368
    8005531e:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1340
    binary_flag = FALSE;
    80055320:	cc02                	sw	zero,24(sp)
quickjs-nuttx/quickjs-libc.c:1341
    full_flag = FALSE;
    80055322:	ce02                	sw	zero,28(sp)
quickjs-nuttx/quickjs-libc.c:1343
    if (argc >= 2) {
    80055324:	4785                	li	a5,1
    80055326:	84aa                	mv	s1,a0
    80055328:	0537d163          	bge	a5,s3,8005536a <js_std_urlGet+0x9a>
quickjs-nuttx/quickjs-libc.c:1344
        options_obj = argv[1];
    8005532c:	01093603          	ld	a2,16(s2)
    80055330:	01893683          	ld	a3,24(s2)
quickjs-nuttx/quickjs-libc.c:1346
        if (get_bool_option(ctx, &binary_flag, options_obj, "binary"))
    80055334:	0002a717          	auipc	a4,0x2a
    80055338:	b6470713          	addi	a4,a4,-1180 # 8007ee98 <utf8_min_code+0x310>
    8005533c:	082c                	addi	a1,sp,24
    8005533e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:1344
        options_obj = argv[1];
    80055340:	e0b2                	sd	a2,64(sp)
    80055342:	e4b6                	sd	a3,72(sp)
quickjs-nuttx/quickjs-libc.c:1346
        if (get_bool_option(ctx, &binary_flag, options_obj, "binary"))
    80055344:	eacfd0ef          	jal	ra,800529f0 <get_bool_option>
    80055348:	c511                	beqz	a0,80055354 <js_std_urlGet+0x84>
quickjs-nuttx/quickjs-libc.c:1351
            JS_FreeCString(ctx, url);
    8005534a:	85a6                	mv	a1,s1
    8005534c:	8522                	mv	a0,s0
    8005534e:	ff0b70ef          	jal	ra,8000cb3e <JS_FreeCString>
    80055352:	b775                	j	800552fe <js_std_urlGet+0x2e>
quickjs-nuttx/quickjs-libc.c:1349
        if (get_bool_option(ctx, &full_flag, options_obj, "full")) {
    80055354:	6606                	ld	a2,64(sp)
    80055356:	66a6                	ld	a3,72(sp)
    80055358:	0002a717          	auipc	a4,0x2a
    8005535c:	b4870713          	addi	a4,a4,-1208 # 8007eea0 <utf8_min_code+0x318>
    80055360:	086c                	addi	a1,sp,28
    80055362:	8522                	mv	a0,s0
    80055364:	e8cfd0ef          	jal	ra,800529f0 <get_bool_option>
    80055368:	f16d                	bnez	a0,8005534a <js_std_urlGet+0x7a>
quickjs-nuttx/quickjs-libc.c:1356
    js_std_dbuf_init(ctx, &cmd_buf);
    8005536a:	090c                	addi	a1,sp,144
    8005536c:	8522                	mv	a0,s0
    8005536e:	d65fc0ef          	jal	ra,800520d2 <js_std_dbuf_init>
quickjs-nuttx/quickjs-libc.c:1357
    dbuf_printf(&cmd_buf, "%s ''", URL_GET_PROGRAM);
    80055372:	0002a617          	auipc	a2,0x2a
    80055376:	b3660613          	addi	a2,a2,-1226 # 8007eea8 <utf8_min_code+0x320>
    8005537a:	0002a597          	auipc	a1,0x2a
    8005537e:	b3e58593          	addi	a1,a1,-1218 # 8007eeb8 <utf8_min_code+0x330>
    80055382:	0908                	addi	a0,sp,144
    80055384:	f96fc0ef          	jal	ra,80051b1a <dbuf_printf>
quickjs-nuttx/quickjs-libc.c:1358
    len = strlen(url);
    80055388:	8526                	mv	a0,s1
    8005538a:	1f90e0ef          	jal	ra,80063d82 <strlen>
    8005538e:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:1359
    for(i = 0; i < len; i++) {
    80055390:	4901                	li	s2,0
quickjs-nuttx/quickjs-libc.c:1361
        if (c == '\'' || c == '\\')
    80055392:	02700a93          	li	s5,39
quickjs-nuttx/quickjs-libc.c:1359 (discriminator 1)
    for(i = 0; i < len; i++) {
    80055396:	03391863          	bne	s2,s3,800553c6 <js_std_urlGet+0xf6>
quickjs-nuttx/quickjs-libc.c:1365
    JS_FreeCString(ctx, url);
    8005539a:	85a6                	mv	a1,s1
    8005539c:	8522                	mv	a0,s0
    8005539e:	fa0b70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:1366
    dbuf_putstr(&cmd_buf, "''");
    800553a2:	0002a597          	auipc	a1,0x2a
    800553a6:	b1e58593          	addi	a1,a1,-1250 # 8007eec0 <utf8_min_code+0x338>
    800553aa:	0908                	addi	a0,sp,144
    800553ac:	f4efc0ef          	jal	ra,80051afa <dbuf_putstr>
quickjs-nuttx/quickjs-libc.c:1367
    dbuf_putc(&cmd_buf, '\0');
    800553b0:	4581                	li	a1,0
    800553b2:	0908                	addi	a0,sp,144
    800553b4:	f2efc0ef          	jal	ra,80051ae2 <dbuf_putc>
dbuf_error():
quickjs-nuttx/cutils.h:272
    800553b8:	5a2a                	lw	s4,168(sp)
js_std_urlGet():
quickjs-nuttx/quickjs-libc.c:1368
    if (dbuf_error(&cmd_buf)) {
    800553ba:	020a0d63          	beqz	s4,800553f4 <js_std_urlGet+0x124>
quickjs-nuttx/quickjs-libc.c:1369
        dbuf_free(&cmd_buf);
    800553be:	0908                	addi	a0,sp,144
    800553c0:	fe6fc0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1370
        return JS_EXCEPTION;
    800553c4:	bf2d                	j	800552fe <js_std_urlGet+0x2e>
quickjs-nuttx/quickjs-libc.c:1360
        c = url[i];
    800553c6:	012487b3          	add	a5,s1,s2
    800553ca:	0007ca03          	lbu	s4,0(a5)
    800553ce:	000a071b          	sext.w	a4,s4
quickjs-nuttx/quickjs-libc.c:1361
        if (c == '\'' || c == '\\')
    800553d2:	015a0663          	beq	s4,s5,800553de <js_std_urlGet+0x10e>
quickjs-nuttx/quickjs-libc.c:1361 (discriminator 1)
    800553d6:	05c00793          	li	a5,92
    800553da:	00f71763          	bne	a4,a5,800553e8 <js_std_urlGet+0x118>
quickjs-nuttx/quickjs-libc.c:1362
            dbuf_putc(&cmd_buf, '\\');
    800553de:	05c00593          	li	a1,92
    800553e2:	0908                	addi	a0,sp,144
    800553e4:	efefc0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs-libc.c:1363 (discriminator 2)
        dbuf_putc(&cmd_buf, c);
    800553e8:	85d2                	mv	a1,s4
    800553ea:	0908                	addi	a0,sp,144
    800553ec:	ef6fc0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs-libc.c:1359 (discriminator 2)
    for(i = 0; i < len; i++) {
    800553f0:	0905                	addi	s2,s2,1
    800553f2:	b755                	j	80055396 <js_std_urlGet+0xc6>
quickjs-nuttx/quickjs-libc.c:1373
    f = popen((char *)cmd_buf.buf, "r");
    800553f4:	654a                	ld	a0,144(sp)
    800553f6:	00015597          	auipc	a1,0x15
    800553fa:	71a58593          	addi	a1,a1,1818 # 8006ab10 <qjsc_repl+0x5560>
    800553fe:	06b0a0ef          	jal	ra,8005fc68 <popen>
    80055402:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:1374
    dbuf_free(&cmd_buf);
    80055404:	0908                	addi	a0,sp,144
    80055406:	fa0fc0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1375
    if (!f) {
    8005540a:	00099c63          	bnez	s3,80055422 <js_std_urlGet+0x152>
quickjs-nuttx/quickjs-libc.c:1376
        return JS_ThrowTypeError(ctx, "could not start curl");
    8005540e:	0002a597          	auipc	a1,0x2a
    80055412:	aba58593          	addi	a1,a1,-1350 # 8007eec8 <utf8_min_code+0x340>
    80055416:	8522                	mv	a0,s0
    80055418:	a54c30ef          	jal	ra,8001866c <JS_ThrowTypeError>
    8005541c:	e8aa                	sd	a0,80(sp)
    8005541e:	ecae                	sd	a1,88(sp)
    80055420:	b5d5                	j	80055304 <js_std_urlGet+0x34>
quickjs-nuttx/quickjs-libc.c:1379
    js_std_dbuf_init(ctx, data_buf);
    80055422:	018c                	addi	a1,sp,192
    80055424:	8522                	mv	a0,s0
    80055426:	cadfc0ef          	jal	ra,800520d2 <js_std_dbuf_init>
quickjs-nuttx/quickjs-libc.c:1380
    js_std_dbuf_init(ctx, header_buf);
    8005542a:	198c                	addi	a1,sp,240
    8005542c:	8522                	mv	a0,s0
    8005542e:	ca5fc0ef          	jal	ra,800520d2 <js_std_dbuf_init>
quickjs-nuttx/quickjs-libc.c:1382
    buf = js_malloc(ctx, URL_GET_BUF_SIZE);
    80055432:	6585                	lui	a1,0x1
    80055434:	8522                	mv	a0,s0
    80055436:	ccfc40ef          	jal	ra,8001a104 <js_malloc>
    8005543a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:1383
    if (!buf)
    8005543c:	1c050a63          	beqz	a0,80055610 <js_std_urlGet+0x340>
http_get_header_line():
quickjs-nuttx/quickjs-libc.c:1298
        if ((p - buf) < buf_size - 1)
    80055440:	6a85                	lui	s5,0x1
js_std_urlGet():
quickjs-nuttx/quickjs-libc.c:1298
    80055442:	84aa                	mv	s1,a0
http_get_header_line():
quickjs-nuttx/quickjs-libc.c:1298
    80055444:	1af9                	addi	s5,s5,-2
quickjs-nuttx/quickjs-libc.c:1302
        if (c == '\n')
    80055446:	4b29                	li	s6,10
quickjs-nuttx/quickjs-libc.c:1295
        c = fgetc(f);
    80055448:	854e                	mv	a0,s3
    8005544a:	0ca0d0ef          	jal	ra,80062514 <fgetc>
quickjs-nuttx/quickjs-libc.c:1296
        if (c < 0)
    8005544e:	0c054163          	bltz	a0,80055510 <js_std_urlGet+0x240>
quickjs-nuttx/quickjs-libc.c:1298
        if ((p - buf) < buf_size - 1)
    80055452:	412487b3          	sub	a5,s1,s2
    80055456:	00fae563          	bltu	s5,a5,80055460 <js_std_urlGet+0x190>
quickjs-nuttx/quickjs-libc.c:1299
            *p++ = c;
    8005545a:	00a48023          	sb	a0,0(s1)
    8005545e:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs-libc.c:1302
        if (c == '\n')
    80055460:	ff6514e3          	bne	a0,s6,80055448 <js_std_urlGet+0x178>
quickjs-nuttx/quickjs-libc.c:1305
    *p = '\0';
    80055464:	00048023          	sb	zero,0(s1)
    80055468:	854a                	mv	a0,s2
http_get_status():
quickjs-nuttx/quickjs-libc.c:1312
    while (*p != ' ' && *p != '\0')
    8005546a:	02000713          	li	a4,32
    8005546e:	00054783          	lbu	a5,0(a0)
    80055472:	00e79f63          	bne	a5,a4,80055490 <js_std_urlGet+0x1c0>
quickjs-nuttx/quickjs-libc.c:1316
    while (*p == ' ')
    80055476:	02000793          	li	a5,32
    8005547a:	00154703          	lbu	a4,1(a0)
quickjs-nuttx/quickjs-libc.c:1317
        p++;
    8005547e:	0505                	addi	a0,a0,1
quickjs-nuttx/quickjs-libc.c:1316
    while (*p == ' ')
    80055480:	fef70de3          	beq	a4,a5,8005547a <js_std_urlGet+0x1aa>
quickjs-nuttx/quickjs-libc.c:1318
    return atoi(p);
    80055484:	7080d0ef          	jal	ra,80062b8c <atoi>
    80055488:	8a2a                	mv	s4,a0
    8005548a:	a021                	j	80055492 <js_std_urlGet+0x1c2>
quickjs-nuttx/quickjs-libc.c:1313
        p++;
    8005548c:	0505                	addi	a0,a0,1
    8005548e:	b7c5                	j	8005546e <js_std_urlGet+0x19e>
quickjs-nuttx/quickjs-libc.c:1312
    while (*p != ' ' && *p != '\0')
    80055490:	fff5                	bnez	a5,8005548c <js_std_urlGet+0x1bc>
js_std_urlGet():
quickjs-nuttx/quickjs-libc.c:1392
    if (!full_flag && !(status >= 200 && status <= 299)) {
    80055492:	47f2                	lw	a5,28(sp)
    80055494:	e799                	bnez	a5,800554a2 <js_std_urlGet+0x1d2>
quickjs-nuttx/quickjs-libc.c:1392 (discriminator 1)
    80055496:	f38a079b          	addiw	a5,s4,-200
    8005549a:	06300713          	li	a4,99
    8005549e:	06f76963          	bltu	a4,a5,80055510 <js_std_urlGet+0x240>
http_get_header_line():
quickjs-nuttx/quickjs-libc.c:1298
        if ((p - buf) < buf_size - 1)
    800554a2:	6b05                	lui	s6,0x1
    800554a4:	1b79                	addi	s6,s6,-2
quickjs-nuttx/quickjs-libc.c:1302
        if (c == '\n')
    800554a6:	4c29                	li	s8,10
js_std_urlGet():
quickjs-nuttx/quickjs-libc.c:1403
        if (!strcmp(buf, "\r\n"))
    800554a8:	0002ab97          	auipc	s7,0x2a
    800554ac:	a38b8b93          	addi	s7,s7,-1480 # 8007eee0 <utf8_min_code+0x358>
http_get_header_line():
quickjs-nuttx/quickjs-libc.c:1305
    *p = '\0';
    800554b0:	84ca                	mv	s1,s2
quickjs-nuttx/quickjs-libc.c:1295
        c = fgetc(f);
    800554b2:	854e                	mv	a0,s3
    800554b4:	0600d0ef          	jal	ra,80062514 <fgetc>
    800554b8:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs-libc.c:1296
        if (c < 0)
    800554ba:	04054b63          	bltz	a0,80055510 <js_std_urlGet+0x240>
quickjs-nuttx/quickjs-libc.c:1298
        if ((p - buf) < buf_size - 1)
    800554be:	412487b3          	sub	a5,s1,s2
quickjs-nuttx/quickjs-libc.c:1299
            *p++ = c;
    800554c2:	0ff57593          	zext.b	a1,a0
quickjs-nuttx/quickjs-libc.c:1298
        if ((p - buf) < buf_size - 1)
    800554c6:	00fb6563          	bltu	s6,a5,800554d0 <js_std_urlGet+0x200>
quickjs-nuttx/quickjs-libc.c:1299
            *p++ = c;
    800554ca:	00b48023          	sb	a1,0(s1)
    800554ce:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs-libc.c:1301
            dbuf_putc(dbuf, c);
    800554d0:	1988                	addi	a0,sp,240
    800554d2:	e10fc0ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs-libc.c:1302
        if (c == '\n')
    800554d6:	fd8a9ee3          	bne	s5,s8,800554b2 <js_std_urlGet+0x1e2>
quickjs-nuttx/quickjs-libc.c:1305
    *p = '\0';
    800554da:	00048023          	sb	zero,0(s1)
js_std_urlGet():
quickjs-nuttx/quickjs-libc.c:1403
        if (!strcmp(buf, "\r\n"))
    800554de:	85de                	mv	a1,s7
    800554e0:	854a                	mv	a0,s2
    800554e2:	03f0e0ef          	jal	ra,80063d20 <strcmp>
    800554e6:	f569                	bnez	a0,800554b0 <js_std_urlGet+0x1e0>
quickjs-nuttx/quickjs-libc.c:1406
    if (dbuf_error(header_buf))
    800554e8:	10812783          	lw	a5,264(sp)
    800554ec:	12079263          	bnez	a5,80055610 <js_std_urlGet+0x340>
quickjs-nuttx/quickjs-libc.c:1408
    header_buf->size -= 2; /* remove the trailing CRLF */
    800554f0:	77ee                	ld	a5,248(sp)
    800554f2:	17f9                	addi	a5,a5,-2
    800554f4:	fdbe                	sd	a5,248(sp)
quickjs-nuttx/quickjs-libc.c:1412
        len = fread(buf, 1, URL_GET_BUF_SIZE, f);
    800554f6:	6605                	lui	a2,0x1
    800554f8:	86ce                	mv	a3,s3
    800554fa:	4585                	li	a1,1
    800554fc:	854a                	mv	a0,s2
    800554fe:	5510c0ef          	jal	ra,8006224e <fread>
    80055502:	862a                	mv	a2,a0
quickjs-nuttx/quickjs-libc.c:1413
        if (len == 0)
    80055504:	c54d                	beqz	a0,800555ae <js_std_urlGet+0x2de>
quickjs-nuttx/quickjs-libc.c:1415
        dbuf_put(data_buf, (uint8_t *)buf, len);
    80055506:	85ca                	mv	a1,s2
    80055508:	0188                	addi	a0,sp,192
    8005550a:	d46fc0ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/quickjs-libc.c:1412
        len = fread(buf, 1, URL_GET_BUF_SIZE, f);
    8005550e:	b7e5                	j	800554f6 <js_std_urlGet+0x226>
quickjs-nuttx/quickjs-libc.c:1400
            response = JS_NULL;
    80055510:	f002                	sd	zero,32(sp)
    80055512:	4489                	li	s1,2
quickjs-nuttx/quickjs-libc.c:1428
    js_free(ctx, buf);
    80055514:	85ca                	mv	a1,s2
    80055516:	8522                	mv	a0,s0
    80055518:	adfb50ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:1430
    pclose(f);
    8005551c:	854e                	mv	a0,s3
    8005551e:	71e0a0ef          	jal	ra,8005fc3c <pclose>
quickjs-nuttx/quickjs-libc.c:1432
    dbuf_free(data_buf);
    80055522:	0188                	addi	a0,sp,192
    80055524:	e82fc0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1435
    if (full_flag) {
    80055528:	47f2                	lw	a5,28(sp)
    8005552a:	cbdd                	beqz	a5,800555e0 <js_std_urlGet+0x310>
quickjs-nuttx/quickjs-libc.c:1436
        ret_obj = JS_NewObject(ctx);
    8005552c:	8522                	mv	a0,s0
    8005552e:	af7c60ef          	jal	ra,8001c024 <JS_NewObject>
    80055532:	f82a                	sd	a0,48(sp)
    80055534:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:1437
        if (JS_IsException(ret_obj))
    80055536:	0005871b          	sext.w	a4,a1
    8005553a:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1436
        ret_obj = JS_NewObject(ctx);
    8005553c:	892e                	mv	s2,a1
quickjs-nuttx/quickjs-libc.c:1437
        if (JS_IsException(ret_obj))
    8005553e:	0af70563          	beq	a4,a5,800555e8 <js_std_urlGet+0x318>
quickjs-nuttx/quickjs-libc.c:1439
        JS_DefinePropertyValueStr(ctx, ret_obj, "response",
    80055542:	7702                	ld	a4,32(sp)
    80055544:	87a6                	mv	a5,s1
    80055546:	85aa                	mv	a1,a0
    80055548:	481d                	li	a6,7
    8005554a:	0002a697          	auipc	a3,0x2a
    8005554e:	99e68693          	addi	a3,a3,-1634 # 8007eee8 <utf8_min_code+0x360>
    80055552:	864a                	mv	a2,s2
    80055554:	8522                	mv	a0,s0
    80055556:	b1fdb0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:1442
        if (!JS_IsNull(response)) {
    8005555a:	2481                	sext.w	s1,s1
    8005555c:	4789                	li	a5,2
    8005555e:	04f48163          	beq	s1,a5,800555a0 <js_std_urlGet+0x2d0>
quickjs-nuttx/quickjs-libc.c:1443
            JS_DefinePropertyValueStr(ctx, ret_obj, "responseHeaders",
    80055562:	766e                	ld	a2,248(sp)
    80055564:	75ce                	ld	a1,240(sp)
    80055566:	8522                	mv	a0,s0
    80055568:	8a3c90ef          	jal	ra,8001ee0a <JS_NewStringLen>
    8005556c:	87ae                	mv	a5,a1
    8005556e:	7662                	ld	a2,56(sp)
    80055570:	75c2                	ld	a1,48(sp)
    80055572:	872a                	mv	a4,a0
    80055574:	481d                	li	a6,7
    80055576:	0002a697          	auipc	a3,0x2a
    8005557a:	98268693          	addi	a3,a3,-1662 # 8007eef8 <utf8_min_code+0x370>
    8005557e:	8522                	mv	a0,s0
    80055580:	af5db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80055584:	e102                	sd	zero,128(sp)
    80055586:	c152                	sw	s4,128(sp)
js_std_urlGet():
quickjs-nuttx/quickjs-libc.c:1447
            JS_DefinePropertyValueStr(ctx, ret_obj, "status",
    80055588:	670a                	ld	a4,128(sp)
    8005558a:	75c2                	ld	a1,48(sp)
    8005558c:	7662                	ld	a2,56(sp)
    8005558e:	481d                	li	a6,7
    80055590:	4781                	li	a5,0
    80055592:	0002a697          	auipc	a3,0x2a
    80055596:	97668693          	addi	a3,a3,-1674 # 8007ef08 <utf8_min_code+0x380>
    8005559a:	8522                	mv	a0,s0
    8005559c:	ad9db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:1454
    dbuf_free(header_buf);
    800555a0:	1988                	addi	a0,sp,240
    800555a2:	e04fc0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1455
    return ret_obj;
    800555a6:	77c2                	ld	a5,48(sp)
    800555a8:	ecca                	sd	s2,88(sp)
    800555aa:	e8be                	sd	a5,80(sp)
    800555ac:	bba1                	j	80055304 <js_std_urlGet+0x34>
quickjs-nuttx/quickjs-libc.c:1417
    if (dbuf_error(data_buf))
    800555ae:	47ee                	lw	a5,216(sp)
    800555b0:	e3a5                	bnez	a5,80055610 <js_std_urlGet+0x340>
quickjs-nuttx/quickjs-libc.c:1419
    if (binary_flag) {
    800555b2:	47e2                	lw	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1421
                                         data_buf->buf, data_buf->size);
    800555b4:	658e                	ld	a1,192(sp)
quickjs-nuttx/quickjs-libc.c:1420
        response = JS_NewArrayBufferCopy(ctx,
    800555b6:	662e                	ld	a2,200(sp)
    800555b8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:1419
    if (binary_flag) {
    800555ba:	c385                	beqz	a5,800555da <js_std_urlGet+0x30a>
quickjs-nuttx/quickjs-libc.c:1420
        response = JS_NewArrayBufferCopy(ctx,
    800555bc:	a3cf60ef          	jal	ra,8004b7f8 <JS_NewArrayBufferCopy>
quickjs-nuttx/quickjs-libc.c:1423
        response = JS_NewStringLen(ctx, (char *)data_buf->buf, data_buf->size);
    800555c0:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs-libc.c:1425
    if (JS_IsException(response))
    800555c2:	0005879b          	sext.w	a5,a1
    800555c6:	4719                	li	a4,6
quickjs-nuttx/quickjs-libc.c:1423
        response = JS_NewStringLen(ctx, (char *)data_buf->buf, data_buf->size);
    800555c8:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs-libc.c:1425
    if (JS_IsException(response))
    800555ca:	f4e795e3          	bne	a5,a4,80055514 <js_std_urlGet+0x244>
quickjs-nuttx/quickjs-libc.c:1458
        pclose(f);
    800555ce:	854e                	mv	a0,s3
    800555d0:	66c0a0ef          	jal	ra,8005fc3c <pclose>
    800555d4:	0c010993          	addi	s3,sp,192
    800555d8:	a811                	j	800555ec <js_std_urlGet+0x31c>
quickjs-nuttx/quickjs-libc.c:1423
        response = JS_NewStringLen(ctx, (char *)data_buf->buf, data_buf->size);
    800555da:	831c90ef          	jal	ra,8001ee0a <JS_NewStringLen>
    800555de:	b7cd                	j	800555c0 <js_std_urlGet+0x2f0>
quickjs-nuttx/quickjs-libc.c:1452
        ret_obj = response;
    800555e0:	7782                	ld	a5,32(sp)
    800555e2:	8926                	mv	s2,s1
    800555e4:	f83e                	sd	a5,48(sp)
    800555e6:	bf6d                	j	800555a0 <js_std_urlGet+0x2d0>
quickjs-nuttx/quickjs-libc.c:1429
    buf = NULL;
    800555e8:	4901                	li	s2,0
quickjs-nuttx/quickjs-libc.c:1433
    data_buf = NULL;
    800555ea:	4981                	li	s3,0
quickjs-nuttx/quickjs-libc.c:1459
    js_free(ctx, buf);
    800555ec:	85ca                	mv	a1,s2
    800555ee:	8522                	mv	a0,s0
    800555f0:	a07b50ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:1460
    if (data_buf)
    800555f4:	00098563          	beqz	s3,800555fe <js_std_urlGet+0x32e>
quickjs-nuttx/quickjs-libc.c:1461
        dbuf_free(data_buf);
    800555f8:	854e                	mv	a0,s3
    800555fa:	dacfc0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1463
        dbuf_free(header_buf);
    800555fe:	1988                	addi	a0,sp,240
    80055600:	da6fc0ef          	jal	ra,80051ba6 <dbuf_free>
quickjs-nuttx/quickjs-libc.c:1464
    JS_FreeValue(ctx, response);
    80055604:	7582                	ld	a1,32(sp)
    80055606:	8626                	mv	a2,s1
    80055608:	8522                	mv	a0,s0
    8005560a:	aa3fc0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:1465
    return JS_EXCEPTION;
    8005560e:	b9c5                	j	800552fe <js_std_urlGet+0x2e>
quickjs-nuttx/quickjs-libc.c:1331
    JSValue response = JS_UNDEFINED, ret_obj;
    80055610:	448d                	li	s1,3
    80055612:	bf75                	j	800555ce <js_std_urlGet+0x2fe>

0000000080055614 <js_os_stat>:
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2543
{
    80055614:	da010113          	addi	sp,sp,-608
    80055618:	24813823          	sd	s0,592(sp)
    8005561c:	24913423          	sd	s1,584(sp)
    80055620:	24113c23          	sd	ra,600(sp)
    80055624:	25213023          	sd	s2,576(sp)
    80055628:	e02e                	sd	a1,0(sp)
    8005562a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:2549
    path = JS_ToCString(ctx, argv[0]);
    8005562c:	630c                	ld	a1,0(a4)
    8005562e:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:2543
{
    80055630:	842a                	mv	s0,a0
    80055632:	84be                	mv	s1,a5
quickjs-nuttx/quickjs-libc.c:2549
    path = JS_ToCString(ctx, argv[0]);
    80055634:	ac1fc0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2550
    if (!path)
    80055638:	e10d                	bnez	a0,8005565a <js_os_stat+0x46>
quickjs-nuttx/quickjs-libc.c:2551
        return JS_EXCEPTION;
    8005563a:	4799                	li	a5,6
    8005563c:	f402                	sd	zero,40(sp)
    8005563e:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs-libc.c:2631 (discriminator 1)
}
    80055640:	25813083          	ld	ra,600(sp)
    80055644:	25013403          	ld	s0,592(sp)
    80055648:	7522                	ld	a0,40(sp)
    8005564a:	75c2                	ld	a1,48(sp)
    8005564c:	24813483          	ld	s1,584(sp)
    80055650:	24013903          	ld	s2,576(sp)
    80055654:	26010113          	addi	sp,sp,608
    80055658:	8082                	ret
    8005565a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2556
        res = lstat(path, &st);
    8005565c:	13ac                	addi	a1,sp,488
quickjs-nuttx/quickjs-libc.c:2555
    if (is_lstat)
    8005565e:	c49d                	beqz	s1,8005568c <js_os_stat+0x78>
quickjs-nuttx/quickjs-libc.c:2556
        res = lstat(path, &st);
    80055660:	10a0f0ef          	jal	ra,8006476a <lstat>
quickjs-nuttx/quickjs-libc.c:2558
        res = stat(path, &st);
    80055664:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2560
    JS_FreeCString(ctx, path);
    80055666:	85ca                	mv	a1,s2
    80055668:	8522                	mv	a0,s0
    8005566a:	cd4b70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2561
    if (res < 0) {
    8005566e:	0204d263          	bgez	s1,80055692 <js_os_stat+0x7e>
quickjs-nuttx/quickjs-libc.c:2562
        err = errno;
    80055672:	3a60b0ef          	jal	ra,80060a18 <__errno>
    80055676:	4114                	lw	a3,0(a0)
quickjs-nuttx/quickjs-libc.c:2563
        obj = JS_NULL;
    80055678:	ec02                	sd	zero,24(sp)
    8005567a:	4489                	li	s1,2
quickjs-nuttx/quickjs-libc.c:2630
    return make_obj_error(ctx, obj, err);
    8005567c:	65e2                	ld	a1,24(sp)
    8005567e:	8626                	mv	a2,s1
    80055680:	8522                	mv	a0,s0
    80055682:	b0bfd0ef          	jal	ra,8005318c <make_obj_error>
    80055686:	f42a                	sd	a0,40(sp)
    80055688:	f82e                	sd	a1,48(sp)
    8005568a:	bf5d                	j	80055640 <js_os_stat+0x2c>
quickjs-nuttx/quickjs-libc.c:2558
        res = stat(path, &st);
    8005568c:	2f80f0ef          	jal	ra,80064984 <stat>
    80055690:	bfd1                	j	80055664 <js_os_stat+0x50>
quickjs-nuttx/quickjs-libc.c:2566
        obj = JS_NewObject(ctx);
    80055692:	8522                	mv	a0,s0
    80055694:	991c60ef          	jal	ra,8001c024 <JS_NewObject>
    80055698:	ec2a                	sd	a0,24(sp)
    8005569a:	f02e                	sd	a1,32(sp)
quickjs-nuttx/quickjs-libc.c:2567
        if (JS_IsException(obj))
    8005569c:	0005871b          	sext.w	a4,a1
    800556a0:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:2566
        obj = JS_NewObject(ctx);
    800556a2:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs-libc.c:2567
        if (JS_IsException(obj))
    800556a4:	f8f70be3          	beq	a4,a5,8005563a <js_os_stat+0x26>
quickjs-nuttx/quickjs-libc.c:2570
                                  JS_NewInt64(ctx, st.st_dev),
    800556a8:	1e812783          	lw	a5,488(sp)
quickjs-nuttx/quickjs-libc.c:2569
        JS_DefinePropertyValueStr(ctx, obj, "dev",
    800556ac:	02079693          	slli	a3,a5,0x20
    800556b0:	9281                	srli	a3,a3,0x20
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800556b2:	0007871b          	sext.w	a4,a5
    800556b6:	2af69b63          	bne	a3,a5,8005596c <js_os_stat+0x358>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800556ba:	1c012e23          	sw	zero,476(sp)
    800556be:	1ce12c23          	sw	a4,472(sp)
    800556c2:	67fe                	ld	a5,472(sp)
    800556c4:	eb82                	sd	zero,464(sp)
    800556c6:	e7be                	sd	a5,456(sp)
    800556c8:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800556ca:	1ce12423          	sw	a4,456(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2569
    800556ce:	673e                	ld	a4,456(sp)
    800556d0:	65e2                	ld	a1,24(sp)
    800556d2:	7602                	ld	a2,32(sp)
    800556d4:	481d                	li	a6,7
    800556d6:	0002a697          	auipc	a3,0x2a
    800556da:	83a68693          	addi	a3,a3,-1990 # 8007ef10 <utf8_min_code+0x388>
    800556de:	8522                	mv	a0,s0
    800556e0:	995db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800556e4:	1ec15783          	lhu	a5,492(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800556e8:	ff02                	sd	zero,440(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2572
        JS_DefinePropertyValueStr(ctx, obj, "ino",
    800556ea:	65e2                	ld	a1,24(sp)
    800556ec:	1af12c23          	sw	a5,440(sp)
    800556f0:	777a                	ld	a4,440(sp)
    800556f2:	7602                	ld	a2,32(sp)
    800556f4:	481d                	li	a6,7
    800556f6:	4781                	li	a5,0
    800556f8:	0002a697          	auipc	a3,0x2a
    800556fc:	82068693          	addi	a3,a3,-2016 # 8007ef18 <utf8_min_code+0x390>
    80055700:	8522                	mv	a0,s0
    80055702:	f73a                	sd	a4,424(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80055704:	e7ba                	sd	a4,456(sp)
    80055706:	fb02                	sd	zero,432(sp)
    80055708:	eb82                	sd	zero,464(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2572
    8005570a:	96bdb0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2575
        JS_DefinePropertyValueStr(ctx, obj, "mode",
    8005570e:	1f012783          	lw	a5,496(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80055712:	f702                	sd	zero,424(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2575
    80055714:	65e2                	ld	a1,24(sp)
    80055716:	1af12423          	sw	a5,424(sp)
    8005571a:	773a                	ld	a4,424(sp)
    8005571c:	7602                	ld	a2,32(sp)
    8005571e:	481d                	li	a6,7
    80055720:	4781                	li	a5,0
    80055722:	00016697          	auipc	a3,0x16
    80055726:	38668693          	addi	a3,a3,902 # 8006baa8 <qjsc_repl+0x64f8>
    8005572a:	8522                	mv	a0,s0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8005572c:	fb02                	sd	zero,432(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2575
    8005572e:	947db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80055732:	1f415783          	lhu	a5,500(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80055736:	e702                	sd	zero,392(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2578
        JS_DefinePropertyValueStr(ctx, obj, "nlink",
    80055738:	65e2                	ld	a1,24(sp)
    8005573a:	18f12423          	sw	a5,392(sp)
    8005573e:	673a                	ld	a4,392(sp)
    80055740:	7602                	ld	a2,32(sp)
    80055742:	4781                	li	a5,0
    80055744:	00029697          	auipc	a3,0x29
    80055748:	7dc68693          	addi	a3,a3,2012 # 8007ef20 <utf8_min_code+0x398>
    8005574c:	481d                	li	a6,7
    8005574e:	8522                	mv	a0,s0
    80055750:	feba                	sd	a4,376(sp)
    80055752:	e302                	sd	zero,384(sp)
    80055754:	921db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2582
                                  JS_NewInt64(ctx, st.st_uid),
    80055758:	1f812783          	lw	a5,504(sp)
quickjs-nuttx/quickjs-libc.c:2581
        JS_DefinePropertyValueStr(ctx, obj, "uid",
    8005575c:	02079693          	slli	a3,a5,0x20
    80055760:	9281                	srli	a3,a3,0x20
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80055762:	0007871b          	sext.w	a4,a5
    80055766:	20f69b63          	bne	a3,a5,8005597c <js_os_stat+0x368>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8005576a:	16012e23          	sw	zero,380(sp)
    8005576e:	16e12c23          	sw	a4,376(sp)
    80055772:	77f6                	ld	a5,376(sp)
    80055774:	e302                	sd	zero,384(sp)
    80055776:	fa82                	sd	zero,368(sp)
    80055778:	f6be                	sd	a5,360(sp)
    8005577a:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8005577c:	16e12423          	sw	a4,360(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2581
    80055780:	7736                	ld	a4,360(sp)
    80055782:	65e2                	ld	a1,24(sp)
    80055784:	7602                	ld	a2,32(sp)
    80055786:	00029697          	auipc	a3,0x29
    8005578a:	69a68693          	addi	a3,a3,1690 # 8007ee20 <utf8_min_code+0x298>
    8005578e:	481d                	li	a6,7
    80055790:	8522                	mv	a0,s0
    80055792:	8e3db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2585
                                  JS_NewInt64(ctx, st.st_gid),
    80055796:	1fc12783          	lw	a5,508(sp)
quickjs-nuttx/quickjs-libc.c:2584
        JS_DefinePropertyValueStr(ctx, obj, "gid",
    8005579a:	02079693          	slli	a3,a5,0x20
    8005579e:	9281                	srli	a3,a3,0x20
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800557a0:	0007871b          	sext.w	a4,a5
    800557a4:	1ef69463          	bne	a3,a5,8005598c <js_os_stat+0x378>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800557a8:	16012623          	sw	zero,364(sp)
    800557ac:	16e12423          	sw	a4,360(sp)
    800557b0:	77b6                	ld	a5,360(sp)
    800557b2:	fa82                	sd	zero,368(sp)
    800557b4:	f282                	sd	zero,352(sp)
    800557b6:	eebe                	sd	a5,344(sp)
    800557b8:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800557ba:	14e12c23          	sw	a4,344(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2584
    800557be:	6776                	ld	a4,344(sp)
    800557c0:	65e2                	ld	a1,24(sp)
    800557c2:	7602                	ld	a2,32(sp)
    800557c4:	00029697          	auipc	a3,0x29
    800557c8:	66468693          	addi	a3,a3,1636 # 8007ee28 <utf8_min_code+0x2a0>
    800557cc:	481d                	li	a6,7
    800557ce:	8522                	mv	a0,s0
    800557d0:	8a5db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2588
                                  JS_NewInt64(ctx, st.st_rdev),
    800557d4:	20012783          	lw	a5,512(sp)
quickjs-nuttx/quickjs-libc.c:2587
        JS_DefinePropertyValueStr(ctx, obj, "rdev",
    800557d8:	02079693          	slli	a3,a5,0x20
    800557dc:	9281                	srli	a3,a3,0x20
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800557de:	0007871b          	sext.w	a4,a5
    800557e2:	1af69d63          	bne	a3,a5,8005599c <js_os_stat+0x388>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800557e6:	14012e23          	sw	zero,348(sp)
    800557ea:	14e12c23          	sw	a4,344(sp)
    800557ee:	67f6                	ld	a5,344(sp)
    800557f0:	f282                	sd	zero,352(sp)
    800557f2:	ea82                	sd	zero,336(sp)
    800557f4:	e6be                	sd	a5,328(sp)
    800557f6:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800557f8:	14e12423          	sw	a4,328(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2587
    800557fc:	6736                	ld	a4,328(sp)
    800557fe:	65e2                	ld	a1,24(sp)
    80055800:	7602                	ld	a2,32(sp)
    80055802:	481d                	li	a6,7
    80055804:	00029697          	auipc	a3,0x29
    80055808:	72468693          	addi	a3,a3,1828 # 8007ef28 <utf8_min_code+0x3a0>
    8005580c:	8522                	mv	a0,s0
    8005580e:	867db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2591
                                  JS_NewInt64(ctx, st.st_size),
    80055812:	20412783          	lw	a5,516(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80055816:	fe02                	sd	zero,312(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2590
        JS_DefinePropertyValueStr(ctx, obj, "size",
    80055818:	65e2                	ld	a1,24(sp)
    8005581a:	12f12c23          	sw	a5,312(sp)
    8005581e:	7772                	ld	a4,312(sp)
    80055820:	7602                	ld	a2,32(sp)
    80055822:	4781                	li	a5,0
    80055824:	00010697          	auipc	a3,0x10
    80055828:	c1c68693          	addi	a3,a3,-996 # 80065440 <__clz_tab+0x5f8>
    8005582c:	481d                	li	a6,7
    8005582e:	8522                	mv	a0,s0
    80055830:	f63a                	sd	a4,296(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80055832:	e6ba                	sd	a4,328(sp)
    80055834:	fa02                	sd	zero,304(sp)
    80055836:	ea82                	sd	zero,336(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2590
    80055838:	83ddb0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2595
                                  JS_NewInt64(ctx, st.st_blocks),
    8005583c:	23c12783          	lw	a5,572(sp)
quickjs-nuttx/quickjs-libc.c:2594
        JS_DefinePropertyValueStr(ctx, obj, "blocks",
    80055840:	02079693          	slli	a3,a5,0x20
    80055844:	9281                	srli	a3,a3,0x20
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80055846:	0007871b          	sext.w	a4,a5
    8005584a:	16f69163          	bne	a3,a5,800559ac <js_os_stat+0x398>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8005584e:	12012623          	sw	zero,300(sp)
    80055852:	12e12423          	sw	a4,296(sp)
    80055856:	77b2                	ld	a5,296(sp)
    80055858:	fa02                	sd	zero,304(sp)
    8005585a:	f202                	sd	zero,288(sp)
    8005585c:	ee3e                	sd	a5,280(sp)
    8005585e:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80055860:	10e12c23          	sw	a4,280(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2594
    80055864:	6772                	ld	a4,280(sp)
    80055866:	65e2                	ld	a1,24(sp)
    80055868:	7602                	ld	a2,32(sp)
    8005586a:	00029697          	auipc	a3,0x29
    8005586e:	6c668693          	addi	a3,a3,1734 # 8007ef30 <utf8_min_code+0x3a8>
    80055872:	481d                	li	a6,7
    80055874:	8522                	mv	a0,s0
    80055876:	ffedb0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
timespec_to_ms():
quickjs-nuttx/quickjs-libc.c:2536
    return (int64_t)tv->tv_sec * 1000 + (tv->tv_nsec / 1000000);
    8005587a:	20816783          	lwu	a5,520(sp)
    8005587e:	3e800713          	li	a4,1000
    80055882:	000f46b7          	lui	a3,0xf4
    80055886:	02e787b3          	mul	a5,a5,a4
    8005588a:	21013703          	ld	a4,528(sp)
    8005588e:	24068693          	addi	a3,a3,576 # f4240 <asinh-0x7ff0bdc0>
    80055892:	02d74733          	div	a4,a4,a3
    80055896:	97ba                	add	a5,a5,a4
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80055898:	0007871b          	sext.w	a4,a5
    8005589c:	12f71063          	bne	a4,a5,800559bc <js_os_stat+0x3a8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800558a0:	10012e23          	sw	zero,284(sp)
    800558a4:	10e12c23          	sw	a4,280(sp)
    800558a8:	67f2                	ld	a5,280(sp)
    800558aa:	f202                	sd	zero,288(sp)
    800558ac:	ea02                	sd	zero,272(sp)
    800558ae:	e63e                	sd	a5,264(sp)
    800558b0:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800558b2:	10e12423          	sw	a4,264(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2619
        JS_DefinePropertyValueStr(ctx, obj, "atime",
    800558b6:	6732                	ld	a4,264(sp)
    800558b8:	65e2                	ld	a1,24(sp)
    800558ba:	7602                	ld	a2,32(sp)
    800558bc:	00029697          	auipc	a3,0x29
    800558c0:	67c68693          	addi	a3,a3,1660 # 8007ef38 <utf8_min_code+0x3b0>
    800558c4:	481d                	li	a6,7
    800558c6:	8522                	mv	a0,s0
    800558c8:	facdb0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
timespec_to_ms():
quickjs-nuttx/quickjs-libc.c:2536
    return (int64_t)tv->tv_sec * 1000 + (tv->tv_nsec / 1000000);
    800558cc:	21816783          	lwu	a5,536(sp)
    800558d0:	3e800713          	li	a4,1000
    800558d4:	000f46b7          	lui	a3,0xf4
    800558d8:	02e787b3          	mul	a5,a5,a4
    800558dc:	22013703          	ld	a4,544(sp)
    800558e0:	24068693          	addi	a3,a3,576 # f4240 <asinh-0x7ff0bdc0>
    800558e4:	02d74733          	div	a4,a4,a3
    800558e8:	97ba                	add	a5,a5,a4
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800558ea:	0007871b          	sext.w	a4,a5
    800558ee:	0cf71f63          	bne	a4,a5,800559cc <js_os_stat+0x3b8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800558f2:	10012623          	sw	zero,268(sp)
    800558f6:	10e12423          	sw	a4,264(sp)
    800558fa:	67b2                	ld	a5,264(sp)
    800558fc:	ea02                	sd	zero,272(sp)
    800558fe:	e202                	sd	zero,256(sp)
    80055900:	fdbe                	sd	a5,248(sp)
    80055902:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80055904:	ddba                	sw	a4,248(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2622
        JS_DefinePropertyValueStr(ctx, obj, "mtime",
    80055906:	776e                	ld	a4,248(sp)
    80055908:	65e2                	ld	a1,24(sp)
    8005590a:	7602                	ld	a2,32(sp)
    8005590c:	00029697          	auipc	a3,0x29
    80055910:	63468693          	addi	a3,a3,1588 # 8007ef40 <utf8_min_code+0x3b8>
    80055914:	481d                	li	a6,7
    80055916:	8522                	mv	a0,s0
    80055918:	f5cdb0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
timespec_to_ms():
quickjs-nuttx/quickjs-libc.c:2536
    return (int64_t)tv->tv_sec * 1000 + (tv->tv_nsec / 1000000);
    8005591c:	22816783          	lwu	a5,552(sp)
    80055920:	3e800713          	li	a4,1000
    80055924:	000f46b7          	lui	a3,0xf4
    80055928:	02e787b3          	mul	a5,a5,a4
    8005592c:	23013703          	ld	a4,560(sp)
    80055930:	24068693          	addi	a3,a3,576 # f4240 <asinh-0x7ff0bdc0>
    80055934:	02d74733          	div	a4,a4,a3
    80055938:	97ba                	add	a5,a5,a4
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8005593a:	0007871b          	sext.w	a4,a5
    8005593e:	08f71f63          	bne	a4,a5,800559dc <js_os_stat+0x3c8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80055942:	df82                	sw	zero,252(sp)
    80055944:	ddba                	sw	a4,248(sp)
    80055946:	77ee                	ld	a5,248(sp)
    80055948:	e202                	sd	zero,256(sp)
    8005594a:	f5be                	sd	a5,232(sp)
    8005594c:	4781                	li	a5,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8005594e:	d5ba                	sw	a4,232(sp)
js_os_stat():
quickjs-nuttx/quickjs-libc.c:2625
        JS_DefinePropertyValueStr(ctx, obj, "ctime",
    80055950:	772e                	ld	a4,232(sp)
    80055952:	65e2                	ld	a1,24(sp)
    80055954:	7602                	ld	a2,32(sp)
    80055956:	00029697          	auipc	a3,0x29
    8005595a:	5f268693          	addi	a3,a3,1522 # 8007ef48 <utf8_min_code+0x3c0>
    8005595e:	481d                	li	a6,7
    80055960:	8522                	mv	a0,s0
    80055962:	f9be                	sd	a5,240(sp)
    80055964:	f10db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:2565
        err = 0;
    80055968:	4681                	li	a3,0
    8005596a:	bb09                	j	8005567c <js_os_stat+0x68>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8005596c:	d226f7d3          	fcvt.d.l	fa5,a3
    80055970:	479d                	li	a5,7
    80055972:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    80055976:	a7be                	fsd	fa5,456(sp)
    80055978:	2701                	sext.w	a4,a4
    8005597a:	bb81                	j	800556ca <js_os_stat+0xb6>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8005597c:	d226f7d3          	fcvt.d.l	fa5,a3
    80055980:	479d                	li	a5,7
    80055982:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    80055986:	b6be                	fsd	fa5,360(sp)
    80055988:	2701                	sext.w	a4,a4
    8005598a:	bbcd                	j	8005577c <js_os_stat+0x168>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8005598c:	d226f7d3          	fcvt.d.l	fa5,a3
    80055990:	479d                	li	a5,7
    80055992:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    80055996:	aebe                	fsd	fa5,344(sp)
    80055998:	2701                	sext.w	a4,a4
    8005599a:	b505                	j	800557ba <js_os_stat+0x1a6>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8005599c:	d226f7d3          	fcvt.d.l	fa5,a3
    800559a0:	479d                	li	a5,7
    800559a2:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    800559a6:	a6be                	fsd	fa5,328(sp)
    800559a8:	2701                	sext.w	a4,a4
    800559aa:	b5b9                	j	800557f8 <js_os_stat+0x1e4>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800559ac:	d226f7d3          	fcvt.d.l	fa5,a3
    800559b0:	479d                	li	a5,7
    800559b2:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    800559b6:	ae3e                	fsd	fa5,280(sp)
    800559b8:	2701                	sext.w	a4,a4
    800559ba:	b55d                	j	80055860 <js_os_stat+0x24c>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800559bc:	d227f7d3          	fcvt.d.l	fa5,a5
    800559c0:	479d                	li	a5,7
    800559c2:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    800559c6:	a63e                	fsd	fa5,264(sp)
    800559c8:	2701                	sext.w	a4,a4
    800559ca:	b5e5                	j	800558b2 <js_os_stat+0x29e>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800559cc:	d227f7d3          	fcvt.d.l	fa5,a5
    800559d0:	479d                	li	a5,7
    800559d2:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    800559d6:	bdbe                	fsd	fa5,248(sp)
    800559d8:	2701                	sext.w	a4,a4
    800559da:	b72d                	j	80055904 <js_os_stat+0x2f0>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800559dc:	d227f7d3          	fcvt.d.l	fa5,a5
    800559e0:	479d                	li	a5,7
    800559e2:	e2078753          	fmv.x.d	a4,fa5
js_os_stat():
quickjs-nuttx/quickjs.h:230
    return v;
    800559e6:	b5be                	fsd	fa5,232(sp)
    800559e8:	2701                	sext.w	a4,a4
    800559ea:	b795                	j	8005594e <js_os_stat+0x33a>

00000000800559ec <js_print>:
js_print():
quickjs-nuttx/quickjs-libc.c:3795
{
    800559ec:	7159                	addi	sp,sp,-112
    800559ee:	eca6                	sd	s1,88(sp)
    800559f0:	e8ca                	sd	s2,80(sp)
    800559f2:	e4ce                	sd	s3,72(sp)
    800559f4:	e0d2                	sd	s4,64(sp)
    800559f6:	f486                	sd	ra,104(sp)
    800559f8:	f0a2                	sd	s0,96(sp)
    800559fa:	892a                	mv	s2,a0
    800559fc:	e82e                	sd	a1,16(sp)
    800559fe:	ec32                	sd	a2,24(sp)
    80055a00:	89b6                	mv	s3,a3
    80055a02:	8a3a                	mv	s4,a4
quickjs-nuttx/quickjs-libc.c:3800
    for(i = 0; i < argc; i++) {
    80055a04:	4481                	li	s1,0
quickjs-nuttx/quickjs-libc.c:3800 (discriminator 1)
    80055a06:	0004879b          	sext.w	a5,s1
    80055a0a:	0137c863          	blt	a5,s3,80055a1a <js_print+0x2e>
quickjs-nuttx/quickjs-libc.c:3809
    putchar('\n');
    80055a0e:	4529                	li	a0,10
    80055a10:	0d50b0ef          	jal	ra,800612e4 <putchar>
quickjs-nuttx/quickjs-libc.c:3810
    return JS_UNDEFINED;
    80055a14:	478d                	li	a5,3
    80055a16:	f802                	sd	zero,48(sp)
    80055a18:	a03d                	j	80055a46 <js_print+0x5a>
quickjs-nuttx/quickjs-libc.c:3801
        if (i != 0)
    80055a1a:	c789                	beqz	a5,80055a24 <js_print+0x38>
quickjs-nuttx/quickjs-libc.c:3802
            putchar(' ');
    80055a1c:	02000513          	li	a0,32
    80055a20:	0c50b0ef          	jal	ra,800612e4 <putchar>
quickjs-nuttx/quickjs-libc.c:3803
        str = JS_ToCStringLen(ctx, &len, argv[i]);
    80055a24:	00449793          	slli	a5,s1,0x4
    80055a28:	97d2                	add	a5,a5,s4
    80055a2a:	6390                	ld	a2,0(a5)
    80055a2c:	6794                	ld	a3,8(a5)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    return JS_ToCStringLen2(ctx, plen, val1, 0);
    80055a2e:	4701                	li	a4,0
    80055a30:	102c                	addi	a1,sp,40
    80055a32:	854a                	mv	a0,s2
    80055a34:	f832                	sd	a2,48(sp)
    80055a36:	fc36                	sd	a3,56(sp)
    80055a38:	c44cc0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    80055a3c:	842a                	mv	s0,a0
js_print():
quickjs-nuttx/quickjs-libc.c:3804
        if (!str)
    80055a3e:	0485                	addi	s1,s1,1
    80055a40:	ed11                	bnez	a0,80055a5c <js_print+0x70>
quickjs-nuttx/quickjs-libc.c:3805
            return JS_EXCEPTION;
    80055a42:	f802                	sd	zero,48(sp)
    80055a44:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:3811
}
    80055a46:	70a6                	ld	ra,104(sp)
    80055a48:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs-libc.c:3810
    return JS_UNDEFINED;
    80055a4a:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:3811
}
    80055a4c:	7542                	ld	a0,48(sp)
    80055a4e:	75e2                	ld	a1,56(sp)
    80055a50:	64e6                	ld	s1,88(sp)
    80055a52:	6946                	ld	s2,80(sp)
    80055a54:	69a6                	ld	s3,72(sp)
    80055a56:	6a06                	ld	s4,64(sp)
    80055a58:	6165                	addi	sp,sp,112
    80055a5a:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3806 (discriminator 2)
        fwrite(str, 1, len, stdout);
    80055a5c:	7622                	ld	a2,40(sp)
    80055a5e:	4505                	li	a0,1
    80055a60:	e432                	sd	a2,8(sp)
    80055a62:	0fe0d0ef          	jal	ra,80062b60 <lib_get_stream>
    80055a66:	6622                	ld	a2,8(sp)
    80055a68:	86aa                	mv	a3,a0
    80055a6a:	4585                	li	a1,1
    80055a6c:	8522                	mv	a0,s0
    80055a6e:	2f70c0ef          	jal	ra,80062564 <fwrite>
quickjs-nuttx/quickjs-libc.c:3807 (discriminator 2)
        JS_FreeCString(ctx, str);
    80055a72:	85a2                	mv	a1,s0
    80055a74:	854a                	mv	a0,s2
    80055a76:	8c8b70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3800 (discriminator 2)
    for(i = 0; i < argc; i++) {
    80055a7a:	b771                	j	80055a06 <js_print+0x1a>

0000000080055a7c <js_evalScript>:
js_evalScript():
quickjs-nuttx/quickjs-libc.c:747
{
    80055a7c:	7119                	addi	sp,sp,-128
    80055a7e:	fc86                	sd	ra,120(sp)
    80055a80:	f8a2                	sd	s0,112(sp)
    80055a82:	f4a6                	sd	s1,104(sp)
    80055a84:	f0ca                	sd	s2,96(sp)
    80055a86:	ecce                	sd	s3,88(sp)
    80055a88:	e02e                	sd	a1,0(sp)
    80055a8a:	e432                	sd	a2,8(sp)
    80055a8c:	89b6                	mv	s3,a3
    80055a8e:	893a                	mv	s2,a4
    80055a90:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:748
    JSRuntime *rt = JS_GetRuntime(ctx);
    80055a92:	e4ab50ef          	jal	ra,8000b0dc <JS_GetRuntime>
quickjs-nuttx/quickjs-libc.c:749
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80055a96:	daeb50ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:758
    if (argc >= 2) {
    80055a9a:	4785                	li	a5,1
quickjs-nuttx/quickjs-libc.c:754
    BOOL backtrace_barrier = FALSE;
    80055a9c:	c802                	sw	zero,16(sp)
quickjs-nuttx/quickjs-libc.c:755
    BOOL is_async = FALSE;
    80055a9e:	ca02                	sw	zero,20(sp)
quickjs-nuttx/quickjs-libc.c:749
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80055aa0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:758
    if (argc >= 2) {
    80055aa2:	0537d863          	bge	a5,s3,80055af2 <js_evalScript+0x76>
quickjs-nuttx/quickjs-libc.c:759
        options_obj = argv[1];
    80055aa6:	01093603          	ld	a2,16(s2)
    80055aaa:	01893683          	ld	a3,24(s2)
quickjs-nuttx/quickjs-libc.c:760
        if (get_bool_option(ctx, &backtrace_barrier, options_obj,
    80055aae:	00029717          	auipc	a4,0x29
    80055ab2:	4a270713          	addi	a4,a4,1186 # 8007ef50 <utf8_min_code+0x3c8>
    80055ab6:	080c                	addi	a1,sp,16
    80055ab8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:759
        options_obj = argv[1];
    80055aba:	f832                	sd	a2,48(sp)
    80055abc:	fc36                	sd	a3,56(sp)
quickjs-nuttx/quickjs-libc.c:760
        if (get_bool_option(ctx, &backtrace_barrier, options_obj,
    80055abe:	f33fc0ef          	jal	ra,800529f0 <get_bool_option>
    80055ac2:	cd09                	beqz	a0,80055adc <js_evalScript+0x60>
quickjs-nuttx/quickjs-libc.c:762
            return JS_EXCEPTION;
    80055ac4:	e082                	sd	zero,64(sp)
    80055ac6:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:792
}
    80055ac8:	70e6                	ld	ra,120(sp)
    80055aca:	7446                	ld	s0,112(sp)
quickjs-nuttx/quickjs-libc.c:791
    return ret;
    80055acc:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs-libc.c:792
}
    80055ace:	6506                	ld	a0,64(sp)
    80055ad0:	65a6                	ld	a1,72(sp)
    80055ad2:	74a6                	ld	s1,104(sp)
    80055ad4:	7906                	ld	s2,96(sp)
    80055ad6:	69e6                	ld	s3,88(sp)
    80055ad8:	6109                	addi	sp,sp,128
    80055ada:	8082                	ret
quickjs-nuttx/quickjs-libc.c:763
        if (get_bool_option(ctx, &is_async, options_obj,
    80055adc:	7642                	ld	a2,48(sp)
    80055ade:	76e2                	ld	a3,56(sp)
    80055ae0:	00029717          	auipc	a4,0x29
    80055ae4:	48870713          	addi	a4,a4,1160 # 8007ef68 <utf8_min_code+0x3e0>
    80055ae8:	084c                	addi	a1,sp,20
    80055aea:	8522                	mv	a0,s0
    80055aec:	f05fc0ef          	jal	ra,800529f0 <get_bool_option>
    80055af0:	f971                	bnez	a0,80055ac4 <js_evalScript+0x48>
quickjs-nuttx/quickjs-libc.c:768
    str = JS_ToCStringLen(ctx, &len, argv[0]);
    80055af2:	00093603          	ld	a2,0(s2)
    80055af6:	00893683          	ld	a3,8(s2)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80055afa:	4701                	li	a4,0
    80055afc:	082c                	addi	a1,sp,24
    80055afe:	8522                	mv	a0,s0
    80055b00:	e0b2                	sd	a2,64(sp)
    80055b02:	e4b6                	sd	a3,72(sp)
    80055b04:	b78cc0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    80055b08:	89aa                	mv	s3,a0
js_evalScript():
quickjs-nuttx/quickjs-libc.c:769
    if (!str)
    80055b0a:	dd4d                	beqz	a0,80055ac4 <js_evalScript+0x48>
quickjs-nuttx/quickjs-libc.c:771
    if (!ts->recv_pipe && ++ts->eval_script_recurse == 1) {
    80055b0c:	64bc                	ld	a5,72(s1)
    80055b0e:	e395                	bnez	a5,80055b32 <js_evalScript+0xb6>
quickjs-nuttx/quickjs-libc.c:771 (discriminator 1)
    80055b10:	40bc                	lw	a5,64(s1)
    80055b12:	0017871b          	addiw	a4,a5,1
    80055b16:	c0b8                	sw	a4,64(s1)
    80055b18:	4785                	li	a5,1
    80055b1a:	00f71c63          	bne	a4,a5,80055b32 <js_evalScript+0xb6>
quickjs-nuttx/quickjs-libc.c:773
        JS_SetInterruptHandler(JS_GetRuntime(ctx), interrupt_handler, NULL);
    80055b1e:	8522                	mv	a0,s0
    80055b20:	dbcb50ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80055b24:	4601                	li	a2,0
    80055b26:	ffffc597          	auipc	a1,0xffffc
    80055b2a:	54858593          	addi	a1,a1,1352 # 8005206e <interrupt_handler>
    80055b2e:	d2ab50ef          	jal	ra,8000b058 <JS_SetInterruptHandler>
quickjs-nuttx/quickjs-libc.c:776
    if (backtrace_barrier)
    80055b32:	4742                	lw	a4,16(sp)
    80055b34:	c319                	beqz	a4,80055b3a <js_evalScript+0xbe>
quickjs-nuttx/quickjs-libc.c:777
        flags |= JS_EVAL_FLAG_BACKTRACE_BARRIER;
    80055b36:	04000713          	li	a4,64
quickjs-nuttx/quickjs-libc.c:778
    if (is_async)
    80055b3a:	47d2                	lw	a5,20(sp)
    80055b3c:	c399                	beqz	a5,80055b42 <js_evalScript+0xc6>
quickjs-nuttx/quickjs-libc.c:779
        flags |= JS_EVAL_FLAG_ASYNC;
    80055b3e:	08076713          	ori	a4,a4,128
quickjs-nuttx/quickjs-libc.c:780
    ret = JS_Eval(ctx, str, len, "<evalScript>", flags);
    80055b42:	6662                	ld	a2,24(sp)
    80055b44:	00029697          	auipc	a3,0x29
    80055b48:	42c68693          	addi	a3,a3,1068 # 8007ef70 <utf8_min_code+0x3e8>
    80055b4c:	85ce                	mv	a1,s3
    80055b4e:	8522                	mv	a0,s0
    80055b50:	850c30ef          	jal	ra,80018ba0 <JS_Eval>
    80055b54:	f02a                	sd	a0,32(sp)
    80055b56:	f42e                	sd	a1,40(sp)
    80055b58:	892e                	mv	s2,a1
quickjs-nuttx/quickjs-libc.c:781
    JS_FreeCString(ctx, str);
    80055b5a:	8522                	mv	a0,s0
    80055b5c:	85ce                	mv	a1,s3
    80055b5e:	fe1b60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:782
    if (!ts->recv_pipe && --ts->eval_script_recurse == 0) {
    80055b62:	64bc                	ld	a5,72(s1)
    80055b64:	eb9d                	bnez	a5,80055b9a <js_evalScript+0x11e>
quickjs-nuttx/quickjs-libc.c:782 (discriminator 1)
    80055b66:	40bc                	lw	a5,64(s1)
    80055b68:	fff7871b          	addiw	a4,a5,-1
    80055b6c:	c0b8                	sw	a4,64(s1)
    80055b6e:	e715                	bnez	a4,80055b9a <js_evalScript+0x11e>
quickjs-nuttx/quickjs-libc.c:784
        JS_SetInterruptHandler(JS_GetRuntime(ctx), NULL, NULL);
    80055b70:	8522                	mv	a0,s0
    80055b72:	d6ab50ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80055b76:	4601                	li	a2,0
    80055b78:	4581                	li	a1,0
    80055b7a:	cdeb50ef          	jal	ra,8000b058 <JS_SetInterruptHandler>
quickjs-nuttx/quickjs-libc.c:785
        os_pending_signals &= ~((uint64_t)1 << SIGINT);
    80055b7e:	000ab717          	auipc	a4,0xab
    80055b82:	5ca70713          	addi	a4,a4,1482 # 80101148 <os_pending_signals>
    80055b86:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs-libc.c:788
        if (JS_IsException(ret))
    80055b88:	2901                	sext.w	s2,s2
quickjs-nuttx/quickjs-libc.c:785
        os_pending_signals &= ~((uint64_t)1 << SIGINT);
    80055b8a:	9bed                	andi	a5,a5,-5
    80055b8c:	e31c                	sd	a5,0(a4)
quickjs-nuttx/quickjs-libc.c:788
        if (JS_IsException(ret))
    80055b8e:	4799                	li	a5,6
    80055b90:	00f91563          	bne	s2,a5,80055b9a <js_evalScript+0x11e>
quickjs-nuttx/quickjs-libc.c:789
            JS_ResetUncatchableError(ctx);
    80055b94:	8522                	mv	a0,s0
    80055b96:	ae3b80ef          	jal	ra,8000e678 <JS_ResetUncatchableError>
quickjs-nuttx/quickjs-libc.c:791
    return ret;
    80055b9a:	7782                	ld	a5,32(sp)
    80055b9c:	e0be                	sd	a5,64(sp)
    80055b9e:	77a2                	ld	a5,40(sp)
    80055ba0:	b725                	j	80055ac8 <js_evalScript+0x4c>

0000000080055ba2 <js_std_parseExtJSON>:
js_std_parseExtJSON():
quickjs-nuttx/quickjs-libc.c:834
{
    80055ba2:	711d                	addi	sp,sp,-96
    80055ba4:	e4a6                	sd	s1,72(sp)
    80055ba6:	ec86                	sd	ra,88(sp)
    80055ba8:	e8a2                	sd	s0,80(sp)
    80055baa:	6310                	ld	a2,0(a4)
    80055bac:	6714                	ld	a3,8(a4)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80055bae:	082c                	addi	a1,sp,24
    80055bb0:	4701                	li	a4,0
js_std_parseExtJSON():
quickjs-nuttx/quickjs-libc.c:834
    80055bb2:	84aa                	mv	s1,a0
    80055bb4:	f832                	sd	a2,48(sp)
    80055bb6:	fc36                	sd	a3,56(sp)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80055bb8:	ac4cc0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
js_std_parseExtJSON():
quickjs-nuttx/quickjs-libc.c:840
    if (!str)
    80055bbc:	e919                	bnez	a0,80055bd2 <js_std_parseExtJSON+0x30>
quickjs-nuttx/quickjs-libc.c:841
        return JS_EXCEPTION;
    80055bbe:	f802                	sd	zero,48(sp)
    80055bc0:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:845
}
    80055bc2:	60e6                	ld	ra,88(sp)
    80055bc4:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs-libc.c:844
    return obj;
    80055bc6:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:845
}
    80055bc8:	7542                	ld	a0,48(sp)
    80055bca:	75e2                	ld	a1,56(sp)
    80055bcc:	64a6                	ld	s1,72(sp)
    80055bce:	6125                	addi	sp,sp,96
    80055bd0:	8082                	ret
quickjs-nuttx/quickjs-libc.c:842
    obj = JS_ParseJSON2(ctx, str, len, "<input>", JS_PARSE_JSON_EXT);
    80055bd2:	6662                	ld	a2,24(sp)
    80055bd4:	842a                	mv	s0,a0
    80055bd6:	4705                	li	a4,1
    80055bd8:	00010697          	auipc	a3,0x10
    80055bdc:	90068693          	addi	a3,a3,-1792 # 800654d8 <__clz_tab+0x690>
    80055be0:	85aa                	mv	a1,a0
    80055be2:	8526                	mv	a0,s1
    80055be4:	ab7db0ef          	jal	ra,8003169a <JS_ParseJSON2>
    80055be8:	f02a                	sd	a0,32(sp)
    80055bea:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:843
    JS_FreeCString(ctx, str);
    80055bec:	8526                	mv	a0,s1
    80055bee:	85a2                	mv	a1,s0
    80055bf0:	f4fb60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:844
    return obj;
    80055bf4:	7782                	ld	a5,32(sp)
    80055bf6:	f83e                	sd	a5,48(sp)
    80055bf8:	77a2                	ld	a5,40(sp)
    80055bfa:	b7e1                	j	80055bc2 <js_std_parseExtJSON+0x20>

0000000080055bfc <js_std_file_puts>:
js_std_file_puts():
quickjs-nuttx/quickjs-libc.c:1018
{
    80055bfc:	7159                	addi	sp,sp,-112
    80055bfe:	e8ca                	sd	s2,80(sp)
    80055c00:	e0d2                	sd	s4,64(sp)
    80055c02:	fc56                	sd	s5,56(sp)
    80055c04:	f486                	sd	ra,104(sp)
    80055c06:	f0a2                	sd	s0,96(sp)
    80055c08:	eca6                	sd	s1,88(sp)
    80055c0a:	e4ce                	sd	s3,72(sp)
    80055c0c:	e02e                	sd	a1,0(sp)
    80055c0e:	e432                	sd	a2,8(sp)
    80055c10:	892a                	mv	s2,a0
    80055c12:	8a36                	mv	s4,a3
    80055c14:	8aba                	mv	s5,a4
quickjs-nuttx/quickjs-libc.c:1024
    if (magic == 0) {
    80055c16:	ef89                	bnez	a5,80055c30 <js_std_file_puts+0x34>
quickjs-nuttx/quickjs-libc.c:1025
        f = stdout;
    80055c18:	4505                	li	a0,1
    80055c1a:	7470c0ef          	jal	ra,80062b60 <lib_get_stream>
    80055c1e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1032
    for(i = 0; i < argc; i++) {
    80055c20:	4481                	li	s1,0
quickjs-nuttx/quickjs-libc.c:1032 (discriminator 1)
    80055c22:	0004879b          	sext.w	a5,s1
    80055c26:	0347c763          	blt	a5,s4,80055c54 <js_std_file_puts+0x58>
quickjs-nuttx/quickjs-libc.c:1039
    return JS_UNDEFINED;
    80055c2a:	f002                	sd	zero,32(sp)
    80055c2c:	478d                	li	a5,3
    80055c2e:	a039                	j	80055c3c <js_std_file_puts+0x40>
quickjs-nuttx/quickjs-libc.c:1027
        f = js_std_file_get(ctx, this_val);
    80055c30:	901fc0ef          	jal	ra,80052530 <js_std_file_get>
    80055c34:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1028
        if (!f)
    80055c36:	f56d                	bnez	a0,80055c20 <js_std_file_puts+0x24>
quickjs-nuttx/quickjs-libc.c:1029
            return JS_EXCEPTION;
    80055c38:	f002                	sd	zero,32(sp)
    80055c3a:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1040
}
    80055c3c:	70a6                	ld	ra,104(sp)
    80055c3e:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs-libc.c:1039
    return JS_UNDEFINED;
    80055c40:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1040
}
    80055c42:	7502                	ld	a0,32(sp)
    80055c44:	75a2                	ld	a1,40(sp)
    80055c46:	64e6                	ld	s1,88(sp)
    80055c48:	6946                	ld	s2,80(sp)
    80055c4a:	69a6                	ld	s3,72(sp)
    80055c4c:	6a06                	ld	s4,64(sp)
    80055c4e:	7ae2                	ld	s5,56(sp)
    80055c50:	6165                	addi	sp,sp,112
    80055c52:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1033
        str = JS_ToCStringLen(ctx, &len, argv[i]);
    80055c54:	00449793          	slli	a5,s1,0x4
    80055c58:	97d6                	add	a5,a5,s5
    80055c5a:	6390                	ld	a2,0(a5)
    80055c5c:	6794                	ld	a3,8(a5)
JS_ToCStringLen():
quickjs-nuttx/quickjs.h:706
    80055c5e:	4701                	li	a4,0
    80055c60:	082c                	addi	a1,sp,24
    80055c62:	854a                	mv	a0,s2
    80055c64:	f032                	sd	a2,32(sp)
    80055c66:	f436                	sd	a3,40(sp)
    80055c68:	a14cc0ef          	jal	ra,80021e7c <JS_ToCStringLen2>
    80055c6c:	89aa                	mv	s3,a0
js_std_file_puts():
quickjs-nuttx/quickjs-libc.c:1034
        if (!str)
    80055c6e:	0485                	addi	s1,s1,1
    80055c70:	d561                	beqz	a0,80055c38 <js_std_file_puts+0x3c>
quickjs-nuttx/quickjs-libc.c:1036 (discriminator 2)
        fwrite(str, 1, len, f);
    80055c72:	6662                	ld	a2,24(sp)
    80055c74:	86a2                	mv	a3,s0
    80055c76:	4585                	li	a1,1
    80055c78:	0ed0c0ef          	jal	ra,80062564 <fwrite>
quickjs-nuttx/quickjs-libc.c:1037 (discriminator 2)
        JS_FreeCString(ctx, str);
    80055c7c:	85ce                	mv	a1,s3
    80055c7e:	854a                	mv	a0,s2
    80055c80:	ebfb60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:1032 (discriminator 2)
    for(i = 0; i < argc; i++) {
    80055c84:	bf79                	j	80055c22 <js_std_file_puts+0x26>

0000000080055c86 <js_load_file>:
js_load_file():
quickjs-nuttx/quickjs-libc.c:363
{
    80055c86:	7179                	addi	sp,sp,-48
    80055c88:	e44e                	sd	s3,8(sp)
    80055c8a:	e052                	sd	s4,0(sp)
    80055c8c:	89aa                	mv	s3,a0
    80055c8e:	8a2e                	mv	s4,a1
quickjs-nuttx/quickjs-libc.c:369
    f = fopen(filename, "rb");
    80055c90:	8532                	mv	a0,a2
    80055c92:	00029597          	auipc	a1,0x29
    80055c96:	2ee58593          	addi	a1,a1,750 # 8007ef80 <utf8_min_code+0x3f8>
quickjs-nuttx/quickjs-libc.c:363
{
    80055c9a:	f022                	sd	s0,32(sp)
    80055c9c:	f406                	sd	ra,40(sp)
    80055c9e:	ec26                	sd	s1,24(sp)
    80055ca0:	e84a                	sd	s2,16(sp)
quickjs-nuttx/quickjs-libc.c:369
    f = fopen(filename, "rb");
    80055ca2:	4540c0ef          	jal	ra,800620f6 <fopen>
    80055ca6:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:370
    if (!f)
    80055ca8:	c90d                	beqz	a0,80055cda <js_load_file+0x54>
quickjs-nuttx/quickjs-libc.c:372
    if (fseek(f, 0, SEEK_END) < 0)
    80055caa:	4609                	li	a2,2
    80055cac:	4581                	li	a1,0
    80055cae:	74a0c0ef          	jal	ra,800623f8 <fseek>
    80055cb2:	02054063          	bltz	a0,80055cd2 <js_load_file+0x4c>
quickjs-nuttx/quickjs-libc.c:374
    lret = ftell(f);
    80055cb6:	8522                	mv	a0,s0
    80055cb8:	7b40c0ef          	jal	ra,8006246c <ftell>
    80055cbc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:375
    if (lret < 0)
    80055cbe:	00054a63          	bltz	a0,80055cd2 <js_load_file+0x4c>
quickjs-nuttx/quickjs-libc.c:378
    if (lret == LONG_MAX) {
    80055cc2:	57fd                	li	a5,-1
    80055cc4:	8385                	srli	a5,a5,0x1
    80055cc6:	02f51363          	bne	a0,a5,80055cec <js_load_file+0x66>
quickjs-nuttx/quickjs-libc.c:379
        errno = EISDIR;
    80055cca:	54f0a0ef          	jal	ra,80060a18 <__errno>
    80055cce:	47d5                	li	a5,21
    80055cd0:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs-libc.c:398
        fclose(f);
    80055cd2:	8522                	mv	a0,s0
    80055cd4:	46a0c0ef          	jal	ra,8006213e <fclose>
quickjs-nuttx/quickjs-libc.c:399
        return NULL;
    80055cd8:	4401                	li	s0,0
quickjs-nuttx/quickjs-libc.c:405
}
    80055cda:	70a2                	ld	ra,40(sp)
    80055cdc:	8522                	mv	a0,s0
    80055cde:	7402                	ld	s0,32(sp)
    80055ce0:	64e2                	ld	s1,24(sp)
    80055ce2:	6942                	ld	s2,16(sp)
    80055ce4:	69a2                	ld	s3,8(sp)
    80055ce6:	6a02                	ld	s4,0(sp)
    80055ce8:	6145                	addi	sp,sp,48
    80055cea:	8082                	ret
quickjs-nuttx/quickjs-libc.c:383
    if (fseek(f, 0, SEEK_SET) < 0)
    80055cec:	4601                	li	a2,0
    80055cee:	4581                	li	a1,0
    80055cf0:	8522                	mv	a0,s0
    80055cf2:	7060c0ef          	jal	ra,800623f8 <fseek>
    80055cf6:	fc054ee3          	bltz	a0,80055cd2 <js_load_file+0x4c>
quickjs-nuttx/quickjs-libc.c:386
        buf = js_malloc(ctx, buf_len + 1);
    80055cfa:	00190593          	addi	a1,s2,1
quickjs-nuttx/quickjs-libc.c:385
    if (ctx)
    80055cfe:	02098963          	beqz	s3,80055d30 <js_load_file+0xaa>
quickjs-nuttx/quickjs-libc.c:386
        buf = js_malloc(ctx, buf_len + 1);
    80055d02:	854e                	mv	a0,s3
    80055d04:	c00c40ef          	jal	ra,8001a104 <js_malloc>
quickjs-nuttx/quickjs-libc.c:388
        buf = malloc(buf_len + 1);
    80055d08:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:389
    if (!buf)
    80055d0a:	d561                	beqz	a0,80055cd2 <js_load_file+0x4c>
quickjs-nuttx/quickjs-libc.c:391
    if (fread(buf, 1, buf_len, f) != buf_len) {
    80055d0c:	86a2                	mv	a3,s0
    80055d0e:	864a                	mv	a2,s2
    80055d10:	4585                	li	a1,1
    80055d12:	53c0c0ef          	jal	ra,8006224e <fread>
    80055d16:	03250563          	beq	a0,s2,80055d40 <js_load_file+0xba>
quickjs-nuttx/quickjs-libc.c:392
        errno = EIO;
    80055d1a:	4ff0a0ef          	jal	ra,80060a18 <__errno>
    80055d1e:	4795                	li	a5,5
    80055d20:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs-libc.c:393
        if (ctx)
    80055d22:	00098b63          	beqz	s3,80055d38 <js_load_file+0xb2>
quickjs-nuttx/quickjs-libc.c:394
            js_free(ctx, buf);
    80055d26:	85a6                	mv	a1,s1
    80055d28:	854e                	mv	a0,s3
    80055d2a:	accb50ef          	jal	ra,8000aff6 <js_free>
    80055d2e:	b755                	j	80055cd2 <js_load_file+0x4c>
quickjs-nuttx/quickjs-libc.c:388
        buf = malloc(buf_len + 1);
    80055d30:	852e                	mv	a0,a1
    80055d32:	791090ef          	jal	ra,8005fcc2 <malloc>
    80055d36:	bfc9                	j	80055d08 <js_load_file+0x82>
quickjs-nuttx/quickjs-libc.c:396
            free(buf);
    80055d38:	8526                	mv	a0,s1
    80055d3a:	77d090ef          	jal	ra,8005fcb6 <free>
    80055d3e:	bf51                	j	80055cd2 <js_load_file+0x4c>
quickjs-nuttx/quickjs-libc.c:401
    buf[buf_len] = '\0';
    80055d40:	012487b3          	add	a5,s1,s2
quickjs-nuttx/quickjs-libc.c:402
    fclose(f);
    80055d44:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:401
    buf[buf_len] = '\0';
    80055d46:	00078023          	sb	zero,0(a5)
quickjs-nuttx/quickjs-libc.c:402
    fclose(f);
    80055d4a:	3f40c0ef          	jal	ra,8006213e <fclose>
quickjs-nuttx/quickjs-libc.c:404
    return buf;
    80055d4e:	8426                	mv	s0,s1
quickjs-nuttx/quickjs-libc.c:403
    *pbuf_len = buf_len;
    80055d50:	012a3023          	sd	s2,0(s4)
quickjs-nuttx/quickjs-libc.c:404
    return buf;
    80055d54:	b759                	j	80055cda <js_load_file+0x54>

0000000080055d56 <js_std_loadFile>:
js_std_loadFile():
quickjs-nuttx/quickjs-libc.c:441
    filename = JS_ToCString(ctx, argv[0]);
    80055d56:	630c                	ld	a1,0(a4)
    80055d58:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:435
{
    80055d5a:	711d                	addi	sp,sp,-96
    80055d5c:	e8a2                	sd	s0,80(sp)
    80055d5e:	ec86                	sd	ra,88(sp)
    80055d60:	e4a6                	sd	s1,72(sp)
    80055d62:	e0ca                	sd	s2,64(sp)
    80055d64:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:441
    filename = JS_ToCString(ctx, argv[0]);
    80055d66:	b8efc0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:442
    if (!filename)
    80055d6a:	ed01                	bnez	a0,80055d82 <js_std_loadFile+0x2c>
quickjs-nuttx/quickjs-libc.c:443
        return JS_EXCEPTION;
    80055d6c:	f802                	sd	zero,48(sp)
    80055d6e:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:451
}
    80055d70:	60e6                	ld	ra,88(sp)
    80055d72:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs-libc.c:450
    return ret;
    80055d74:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:451
}
    80055d76:	7542                	ld	a0,48(sp)
    80055d78:	75e2                	ld	a1,56(sp)
    80055d7a:	64a6                	ld	s1,72(sp)
    80055d7c:	6906                	ld	s2,64(sp)
    80055d7e:	6125                	addi	sp,sp,96
    80055d80:	8082                	ret
    80055d82:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:444
    buf = js_load_file(ctx, &buf_len, filename);
    80055d84:	862a                	mv	a2,a0
    80055d86:	082c                	addi	a1,sp,24
    80055d88:	8522                	mv	a0,s0
    80055d8a:	efdff0ef          	jal	ra,80055c86 <js_load_file>
    80055d8e:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:445
    JS_FreeCString(ctx, filename);
    80055d90:	85ca                	mv	a1,s2
    80055d92:	8522                	mv	a0,s0
    80055d94:	dabb60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:446
    if (!buf)
    80055d98:	e481                	bnez	s1,80055da0 <js_std_loadFile+0x4a>
quickjs-nuttx/quickjs-libc.c:447
        return JS_NULL;
    80055d9a:	f802                	sd	zero,48(sp)
    80055d9c:	4789                	li	a5,2
    80055d9e:	bfc9                	j	80055d70 <js_std_loadFile+0x1a>
quickjs-nuttx/quickjs-libc.c:448
    ret = JS_NewStringLen(ctx, (char *)buf, buf_len);
    80055da0:	6662                	ld	a2,24(sp)
    80055da2:	85a6                	mv	a1,s1
    80055da4:	8522                	mv	a0,s0
    80055da6:	864c90ef          	jal	ra,8001ee0a <JS_NewStringLen>
    80055daa:	f02a                	sd	a0,32(sp)
    80055dac:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:449
    js_free(ctx, buf);
    80055dae:	8522                	mv	a0,s0
    80055db0:	85a6                	mv	a1,s1
    80055db2:	a44b50ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:450
    return ret;
    80055db6:	7782                	ld	a5,32(sp)
    80055db8:	f83e                	sd	a5,48(sp)
    80055dba:	77a2                	ld	a5,40(sp)
    80055dbc:	bf55                	j	80055d70 <js_std_loadFile+0x1a>

0000000080055dbe <js_loadScript>:
js_loadScript():
quickjs-nuttx/quickjs-libc.c:410
{
    80055dbe:	711d                	addi	sp,sp,-96
    80055dc0:	e8a2                	sd	s0,80(sp)
    80055dc2:	ec86                	sd	ra,88(sp)
    80055dc4:	e4a6                	sd	s1,72(sp)
    80055dc6:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/quickjs-libc.c:416
    filename = JS_ToCString(ctx, argv[0]);
    80055dc8:	630c                	ld	a1,0(a4)
    80055dca:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:410
{
    80055dcc:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:416
    filename = JS_ToCString(ctx, argv[0]);
    80055dce:	b26fc0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:417
    if (!filename)
    80055dd2:	ed01                	bnez	a0,80055dea <js_loadScript+0x2c>
quickjs-nuttx/quickjs-libc.c:423
        return JS_EXCEPTION;
    80055dd4:	f802                	sd	zero,48(sp)
    80055dd6:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:430
}
    80055dd8:	60e6                	ld	ra,88(sp)
    80055dda:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs-libc.c:429
    return ret;
    80055ddc:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:430
}
    80055dde:	7542                	ld	a0,48(sp)
    80055de0:	75e2                	ld	a1,56(sp)
    80055de2:	64a6                	ld	s1,72(sp)
    80055de4:	6906                	ld	s2,64(sp)
    80055de6:	6125                	addi	sp,sp,96
    80055de8:	8082                	ret
quickjs-nuttx/quickjs-libc.c:419
    buf = js_load_file(ctx, &buf_len, filename);
    80055dea:	862a                	mv	a2,a0
    80055dec:	84aa                	mv	s1,a0
    80055dee:	082c                	addi	a1,sp,24
    80055df0:	8522                	mv	a0,s0
    80055df2:	e95ff0ef          	jal	ra,80055c86 <js_load_file>
    80055df6:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:420
    if (!buf) {
    80055df8:	ed11                	bnez	a0,80055e14 <js_loadScript+0x56>
quickjs-nuttx/quickjs-libc.c:421
        JS_ThrowReferenceError(ctx, "could not load '%s'", filename);
    80055dfa:	8626                	mv	a2,s1
    80055dfc:	8522                	mv	a0,s0
    80055dfe:	00029597          	auipc	a1,0x29
    80055e02:	18a58593          	addi	a1,a1,394 # 8007ef88 <utf8_min_code+0x400>
    80055e06:	a1dc30ef          	jal	ra,80019822 <JS_ThrowReferenceError>
quickjs-nuttx/quickjs-libc.c:422
        JS_FreeCString(ctx, filename);
    80055e0a:	85a6                	mv	a1,s1
    80055e0c:	8522                	mv	a0,s0
    80055e0e:	d31b60ef          	jal	ra,8000cb3e <JS_FreeCString>
    80055e12:	b7c9                	j	80055dd4 <js_loadScript+0x16>
quickjs-nuttx/quickjs-libc.c:425
    ret = JS_Eval(ctx, (char *)buf, buf_len, filename,
    80055e14:	6662                	ld	a2,24(sp)
    80055e16:	4701                	li	a4,0
    80055e18:	86a6                	mv	a3,s1
    80055e1a:	85aa                	mv	a1,a0
    80055e1c:	8522                	mv	a0,s0
    80055e1e:	d83c20ef          	jal	ra,80018ba0 <JS_Eval>
    80055e22:	f02a                	sd	a0,32(sp)
    80055e24:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:427
    js_free(ctx, buf);
    80055e26:	8522                	mv	a0,s0
    80055e28:	85ca                	mv	a1,s2
    80055e2a:	9ccb50ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:428
    JS_FreeCString(ctx, filename);
    80055e2e:	85a6                	mv	a1,s1
    80055e30:	8522                	mv	a0,s0
    80055e32:	d0db60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:429
    return ret;
    80055e36:	7782                	ld	a5,32(sp)
    80055e38:	f83e                	sd	a5,48(sp)
    80055e3a:	77a2                	ld	a5,40(sp)
    80055e3c:	bf71                	j	80055dd8 <js_loadScript+0x1a>

0000000080055e3e <js_module_set_import_meta>:
js_module_set_import_meta():
quickjs-nuttx/quickjs-libc.c:517
{
    80055e3e:	7125                	addi	sp,sp,-416
    80055e40:	ef06                	sd	ra,408(sp)
    80055e42:	eb22                	sd	s0,400(sp)
    80055e44:	e726                	sd	s1,392(sp)
    80055e46:	e34a                	sd	s2,384(sp)
    80055e48:	fece                	sd	s3,376(sp)
    80055e4a:	fad2                	sd	s4,368(sp)
quickjs-nuttx/quickjs-libc.c:524
    assert(JS_VALUE_GET_TAG(func_val) == JS_TAG_MODULE);
    80055e4c:	2601                	sext.w	a2,a2
    80055e4e:	57f5                	li	a5,-3
    80055e50:	00f60b63          	beq	a2,a5,80055e66 <js_module_set_import_meta+0x28>
quickjs-nuttx/quickjs-libc.c:524 (discriminator 1)
    80055e54:	4601                	li	a2,0
    80055e56:	20c00593          	li	a1,524
    80055e5a:	00029517          	auipc	a0,0x29
    80055e5e:	eee50513          	addi	a0,a0,-274 # 8007ed48 <utf8_min_code+0x1c0>
    80055e62:	2fb0a0ef          	jal	ra,8006095c <__assert>
    80055e66:	842a                	mv	s0,a0
    80055e68:	8a36                	mv	s4,a3
    80055e6a:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:525 (discriminator 2)
    m = JS_VALUE_GET_PTR(func_val);
    80055e6c:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs-libc.c:527 (discriminator 2)
    module_name_atom = JS_GetModuleName(ctx, m);
    80055e6e:	866b90ef          	jal	ra,8000eed4 <JS_GetModuleName>
    80055e72:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs-libc.c:528 (discriminator 2)
    module_name = JS_AtomToCString(ctx, module_name_atom);
    80055e76:	8522                	mv	a0,s0
    80055e78:	e42e                	sd	a1,8(sp)
    80055e7a:	8c7cf0ef          	jal	ra,80025740 <JS_AtomToCString>
quickjs-nuttx/quickjs-libc.c:529 (discriminator 2)
    JS_FreeAtom(ctx, module_name_atom);
    80055e7e:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:528 (discriminator 2)
    module_name = JS_AtomToCString(ctx, module_name_atom);
    80055e80:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:529 (discriminator 2)
    JS_FreeAtom(ctx, module_name_atom);
    80055e82:	8522                	mv	a0,s0
    80055e84:	ac4b50ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs-libc.c:530 (discriminator 2)
    if (!module_name)
    80055e88:	e891                	bnez	s1,80055e9c <js_module_set_import_meta+0x5e>
quickjs-nuttx/quickjs-libc.c:543
                return -1;
    80055e8a:	557d                	li	a0,-1
quickjs-nuttx/quickjs-libc.c:566
}
    80055e8c:	60fa                	ld	ra,408(sp)
    80055e8e:	645a                	ld	s0,400(sp)
    80055e90:	64ba                	ld	s1,392(sp)
    80055e92:	691a                	ld	s2,384(sp)
    80055e94:	79f6                	ld	s3,376(sp)
    80055e96:	7a56                	ld	s4,368(sp)
    80055e98:	611d                	addi	sp,sp,416
    80055e9a:	8082                	ret
quickjs-nuttx/quickjs-libc.c:532
    if (!strchr(module_name, ':')) {
    80055e9c:	03a00593          	li	a1,58
    80055ea0:	8526                	mv	a0,s1
    80055ea2:	66d0d0ef          	jal	ra,80063d0e <strchr>
    80055ea6:	e95d                	bnez	a0,80055f5c <js_module_set_import_meta+0x11e>
quickjs-nuttx/quickjs-libc.c:533
        strcpy(buf, "file://");
    80055ea8:	00029597          	auipc	a1,0x29
    80055eac:	0f858593          	addi	a1,a1,248 # 8007efa0 <utf8_min_code+0x418>
    80055eb0:	1088                	addi	a0,sp,96
    80055eb2:	6870d0ef          	jal	ra,80063d38 <strcpy>
quickjs-nuttx/quickjs-libc.c:538
        if (use_realpath) {
    80055eb6:	020a0863          	beqz	s4,80055ee6 <js_module_set_import_meta+0xa8>
quickjs-nuttx/quickjs-libc.c:539
            char *res = realpath(module_name, buf + strlen(buf));
    80055eba:	1088                	addi	a0,sp,96
    80055ebc:	6c70d0ef          	jal	ra,80063d82 <strlen>
    80055ec0:	109c                	addi	a5,sp,96
    80055ec2:	00a785b3          	add	a1,a5,a0
    80055ec6:	8526                	mv	a0,s1
    80055ec8:	5130c0ef          	jal	ra,80062bda <realpath>
quickjs-nuttx/quickjs-libc.c:540
            if (!res) {
    80055ecc:	e11d                	bnez	a0,80055ef2 <js_module_set_import_meta+0xb4>
quickjs-nuttx/quickjs-libc.c:541
                JS_ThrowTypeError(ctx, "realpath failure");
    80055ece:	8522                	mv	a0,s0
    80055ed0:	00029597          	auipc	a1,0x29
    80055ed4:	0d858593          	addi	a1,a1,216 # 8007efa8 <utf8_min_code+0x420>
    80055ed8:	f94c20ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:542
                JS_FreeCString(ctx, module_name);
    80055edc:	85a6                	mv	a1,s1
    80055ede:	8522                	mv	a0,s0
    80055ee0:	c5fb60ef          	jal	ra,8000cb3e <JS_FreeCString>
    80055ee4:	b75d                	j	80055e8a <js_module_set_import_meta+0x4c>
quickjs-nuttx/quickjs-libc.c:548
            pstrcat(buf, sizeof(buf), module_name);
    80055ee6:	8626                	mv	a2,s1
    80055ee8:	11000593          	li	a1,272
    80055eec:	1088                	addi	a0,sp,96
    80055eee:	9f1fb0ef          	jal	ra,800518de <pstrcat>
quickjs-nuttx/quickjs-libc.c:553
    JS_FreeCString(ctx, module_name);
    80055ef2:	85a6                	mv	a1,s1
    80055ef4:	8522                	mv	a0,s0
    80055ef6:	c49b60ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:555
    meta_obj = JS_GetImportMeta(ctx, m);
    80055efa:	85ce                	mv	a1,s3
    80055efc:	8522                	mv	a0,s0
    80055efe:	8d6c60ef          	jal	ra,8001bfd4 <JS_GetImportMeta>
    80055f02:	f42e                	sd	a1,40(sp)
    80055f04:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs-libc.c:556
    if (JS_IsException(meta_obj))
    80055f06:	2581                	sext.w	a1,a1
    80055f08:	4799                	li	a5,6
    80055f0a:	f8f580e3          	beq	a1,a5,80055e8a <js_module_set_import_meta+0x4c>
quickjs-nuttx/quickjs-libc.c:558
    JS_DefinePropertyValueStr(ctx, meta_obj, "url",
    80055f0e:	108c                	addi	a1,sp,96
    80055f10:	8522                	mv	a0,s0
    80055f12:	aa7c90ef          	jal	ra,8001f9b8 <JS_NewString>
    80055f16:	87ae                	mv	a5,a1
    80055f18:	7622                	ld	a2,40(sp)
    80055f1a:	7582                	ld	a1,32(sp)
    80055f1c:	872a                	mv	a4,a0
    80055f1e:	481d                	li	a6,7
    80055f20:	00029697          	auipc	a3,0x29
    80055f24:	0a068693          	addi	a3,a3,160 # 8007efc0 <utf8_min_code+0x438>
    80055f28:	8522                	mv	a0,s0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80055f2a:	01203933          	snez	s2,s2
js_module_set_import_meta():
quickjs-nuttx/quickjs-libc.c:558
    80055f2e:	946db0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    80055f32:	ca82                	sw	zero,84(sp)
    80055f34:	c8ca                	sw	s2,80(sp)
js_module_set_import_meta():
quickjs-nuttx/quickjs-libc.c:561
    JS_DefinePropertyValueStr(ctx, meta_obj, "main",
    80055f36:	6746                	ld	a4,80(sp)
    80055f38:	7582                	ld	a1,32(sp)
    80055f3a:	7622                	ld	a2,40(sp)
    80055f3c:	481d                	li	a6,7
    80055f3e:	4785                	li	a5,1
    80055f40:	00029697          	auipc	a3,0x29
    80055f44:	08868693          	addi	a3,a3,136 # 8007efc8 <utf8_min_code+0x440>
    80055f48:	8522                	mv	a0,s0
    80055f4a:	92adb0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:564
    JS_FreeValue(ctx, meta_obj);
    80055f4e:	7582                	ld	a1,32(sp)
    80055f50:	7622                	ld	a2,40(sp)
    80055f52:	8522                	mv	a0,s0
    80055f54:	958fc0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:565
    return 0;
    80055f58:	4501                	li	a0,0
    80055f5a:	bf0d                	j	80055e8c <js_module_set_import_meta+0x4e>
quickjs-nuttx/quickjs-libc.c:551
        pstrcpy(buf, sizeof(buf), module_name);
    80055f5c:	8626                	mv	a2,s1
    80055f5e:	11000593          	li	a1,272
    80055f62:	1088                	addi	a0,sp,96
    80055f64:	959fb0ef          	jal	ra,800518bc <pstrcpy>
    80055f68:	b769                	j	80055ef2 <js_module_set_import_meta+0xb4>

0000000080055f6a <js_module_loader>:
js_module_loader():
quickjs-nuttx/quickjs-libc.c:570
{
    80055f6a:	715d                	addi	sp,sp,-80
    80055f6c:	fc26                	sd	s1,56(sp)
    80055f6e:	84ae                	mv	s1,a1
    80055f70:	f84a                	sd	s2,48(sp)
quickjs-nuttx/quickjs-libc.c:573
    if (has_suffix(module_name, ".so")) {
    80055f72:	00029597          	auipc	a1,0x29
    80055f76:	05e58593          	addi	a1,a1,94 # 8007efd0 <utf8_min_code+0x448>
quickjs-nuttx/quickjs-libc.c:570
{
    80055f7a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:573
    if (has_suffix(module_name, ".so")) {
    80055f7c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:570
{
    80055f7e:	e486                	sd	ra,72(sp)
    80055f80:	e0a2                	sd	s0,64(sp)
    80055f82:	f44e                	sd	s3,40(sp)
quickjs-nuttx/quickjs-libc.c:573
    if (has_suffix(module_name, ".so")) {
    80055f84:	9adfb0ef          	jal	ra,80051930 <has_suffix>
    80055f88:	c54d                	beqz	a0,80056032 <js_module_loader+0xc8>
js_module_loader_so():
quickjs-nuttx/quickjs-libc.c:473
    if (!strchr(module_name, '/')) {
    80055f8a:	02f00593          	li	a1,47
    80055f8e:	8526                	mv	a0,s1
    80055f90:	57f0d0ef          	jal	ra,80063d0e <strchr>
    80055f94:	8426                	mv	s0,s1
    80055f96:	e51d                	bnez	a0,80055fc4 <js_module_loader+0x5a>
quickjs-nuttx/quickjs-libc.c:476
        filename = js_malloc(ctx, strlen(module_name) + 2 + 1);
    80055f98:	8526                	mv	a0,s1
    80055f9a:	5e90d0ef          	jal	ra,80063d82 <strlen>
    80055f9e:	00350593          	addi	a1,a0,3
    80055fa2:	854a                	mv	a0,s2
    80055fa4:	960c40ef          	jal	ra,8001a104 <js_malloc>
    80055fa8:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:477
        if (!filename)
    80055faa:	0e050163          	beqz	a0,8005608c <js_module_loader+0x122>
quickjs-nuttx/quickjs-libc.c:479
        strcpy(filename, "./");
    80055fae:	00029597          	auipc	a1,0x29
    80055fb2:	02a58593          	addi	a1,a1,42 # 8007efd8 <utf8_min_code+0x450>
    80055fb6:	5830d0ef          	jal	ra,80063d38 <strcpy>
quickjs-nuttx/quickjs-libc.c:480
        strcpy(filename + 2, module_name);
    80055fba:	85a6                	mv	a1,s1
    80055fbc:	00240513          	addi	a0,s0,2
    80055fc0:	5790d0ef          	jal	ra,80063d38 <strcpy>
quickjs-nuttx/quickjs-libc.c:486
    hd = dlopen(filename, RTLD_NOW | RTLD_LOCAL);
    80055fc4:	4595                	li	a1,5
    80055fc6:	8522                	mv	a0,s0
    80055fc8:	3f1090ef          	jal	ra,8005fbb8 <dlopen>
    80055fcc:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:487
    if (filename != module_name)
    80055fce:	00848663          	beq	s1,s0,80055fda <js_module_loader+0x70>
quickjs-nuttx/quickjs-libc.c:488
        js_free(ctx, filename);
    80055fd2:	85a2                	mv	a1,s0
    80055fd4:	854a                	mv	a0,s2
    80055fd6:	820b50ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:489
    if (!hd) {
    80055fda:	00099b63          	bnez	s3,80055ff0 <js_module_loader+0x86>
quickjs-nuttx/quickjs-libc.c:490
        JS_ThrowReferenceError(ctx, "could not load module filename '%s' as shared library",
    80055fde:	8626                	mv	a2,s1
    80055fe0:	00029597          	auipc	a1,0x29
    80055fe4:	00058593          	mv	a1,a1
js_module_loader():
quickjs-nuttx/quickjs-libc.c:582
            JS_ThrowReferenceError(ctx, "could not load module filename '%s'",
    80055fe8:	854a                	mv	a0,s2
    80055fea:	839c30ef          	jal	ra,80019822 <JS_ThrowReferenceError>
quickjs-nuttx/quickjs-libc.c:584
            return NULL;
    80055fee:	a02d                	j	80056018 <js_module_loader+0xae>
js_module_loader_so():
quickjs-nuttx/quickjs-libc.c:495
    init = dlsym(hd, "js_init_module");
    80055ff0:	00029597          	auipc	a1,0x29
    80055ff4:	02858593          	addi	a1,a1,40 # 8007f018 <utf8_min_code+0x490>
    80055ff8:	854e                	mv	a0,s3
    80055ffa:	3d5090ef          	jal	ra,8005fbce <dlsym>
    80055ffe:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs-libc.c:496
    if (!init) {
