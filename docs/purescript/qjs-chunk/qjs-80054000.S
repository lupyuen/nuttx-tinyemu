    80053000:	d202                	sw	zero,36(sp)
    80053002:	7782                	ld	a5,32(sp)
    80053004:	ec02                	sd	zero,24(sp)
    80053006:	e83e                	sd	a5,16(sp)
    80053008:	b7e5                	j	80052ff0 <js_std_file_fileno+0x10>

000000008005300a <js_std_file_eof>:
js_std_file_eof():
quickjs-nuttx/quickjs-libc.c:1120
{
    8005300a:	7139                	addi	sp,sp,-64
    8005300c:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs-libc.c:1121
    FILE *f = js_std_file_get(ctx, this_val);
    8005300e:	d22ff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1122
    if (!f)
    80053012:	e909                	bnez	a0,80053024 <js_std_file_eof+0x1a>
quickjs-nuttx/quickjs-libc.c:1123
        return JS_EXCEPTION;
    80053014:	e802                	sd	zero,16(sp)
    80053016:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1125
}
    80053018:	70e2                	ld	ra,56(sp)
    8005301a:	ec3e                	sd	a5,24(sp)
    8005301c:	6542                	ld	a0,16(sp)
    8005301e:	65e2                	ld	a1,24(sp)
    80053020:	6121                	addi	sp,sp,64
    80053022:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1124
    return JS_NewBool(ctx, feof(f));
    80053024:	2850f0ef          	jal	ra,80062aa8 <feof>
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    80053028:	00a03533          	snez	a0,a0
    8005302c:	d202                	sw	zero,36(sp)
    8005302e:	d02a                	sw	a0,32(sp)
    80053030:	7782                	ld	a5,32(sp)
    80053032:	e83e                	sd	a5,16(sp)
    80053034:	4785                	li	a5,1
    80053036:	b7cd                	j	80053018 <js_std_file_eof+0xe>

0000000080053038 <js_std_file_tell>:
js_std_file_tell():
quickjs-nuttx/quickjs-libc.c:1080
{
    80053038:	715d                	addi	sp,sp,-80
    8005303a:	e0a2                	sd	s0,64(sp)
    8005303c:	fc26                	sd	s1,56(sp)
    8005303e:	e486                	sd	ra,72(sp)
    80053040:	842a                	mv	s0,a0
    80053042:	84be                	mv	s1,a5
quickjs-nuttx/quickjs-libc.c:1081
    FILE *f = js_std_file_get(ctx, this_val);
    80053044:	cecff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1083
    if (!f)
    80053048:	e919                	bnez	a0,8005305e <js_std_file_tell+0x26>
quickjs-nuttx/quickjs-libc.c:1084
        return JS_EXCEPTION;
    8005304a:	4799                	li	a5,6
    8005304c:	e802                	sd	zero,16(sp)
    8005304e:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1094 (discriminator 1)
}
    80053050:	60a6                	ld	ra,72(sp)
    80053052:	6406                	ld	s0,64(sp)
    80053054:	6542                	ld	a0,16(sp)
    80053056:	65e2                	ld	a1,24(sp)
    80053058:	74e2                	ld	s1,56(sp)
    8005305a:	6161                	addi	sp,sp,80
    8005305c:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1088
    pos = ftell(f);
    8005305e:	40e0f0ef          	jal	ra,8006246c <ftell>
    80053062:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs-libc.c:1090
    if (is_bigint)
    80053064:	c881                	beqz	s1,80053074 <js_std_file_tell+0x3c>
quickjs-nuttx/quickjs-libc.c:1091
        return JS_NewBigInt64(ctx, pos);
    80053066:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:1094
}
    80053068:	6406                	ld	s0,64(sp)
    8005306a:	60a6                	ld	ra,72(sp)
    8005306c:	74e2                	ld	s1,56(sp)
    8005306e:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs-libc.c:1091
        return JS_NewBigInt64(ctx, pos);
    80053070:	83acb06f          	j	8001e0aa <JS_NewBigInt64>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80053074:	0005079b          	sext.w	a5,a0
    80053078:	00f51a63          	bne	a0,a5,8005308c <js_std_file_tell+0x54>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8005307c:	d202                	sw	zero,36(sp)
    8005307e:	d03e                	sw	a5,32(sp)
    80053080:	7702                	ld	a4,32(sp)
    80053082:	e83a                	sd	a4,16(sp)
    80053084:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    80053086:	c83e                	sw	a5,16(sp)
    80053088:	ec3a                	sd	a4,24(sp)
js_std_file_tell():
quickjs-nuttx/quickjs-libc.c:1093
        return JS_NewInt64(ctx, pos);
    8005308a:	b7d9                	j	80053050 <js_std_file_tell+0x18>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8005308c:	d22577d3          	fcvt.d.l	fa5,a0
    80053090:	471d                	li	a4,7
    80053092:	e20787d3          	fmv.x.d	a5,fa5
js_std_file_tell():
quickjs-nuttx/quickjs.h:230
    return v;
    80053096:	a83e                	fsd	fa5,16(sp)
    80053098:	2781                	sext.w	a5,a5
    8005309a:	b7f5                	j	80053086 <js_std_file_tell+0x4e>

000000008005309c <js_std_file_flush>:
js_std_file_flush():
quickjs-nuttx/quickjs-libc.c:1070
{
    8005309c:	7179                	addi	sp,sp,-48
    8005309e:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:1071
    FILE *f = js_std_file_get(ctx, this_val);
    800530a0:	c90ff0ef          	jal	ra,80052530 <js_std_file_get>
quickjs-nuttx/quickjs-libc.c:1072
    if (!f)
    800530a4:	e909                	bnez	a0,800530b6 <js_std_file_flush+0x1a>
quickjs-nuttx/quickjs-libc.c:1073
        return JS_EXCEPTION;
    800530a6:	e802                	sd	zero,16(sp)
    800530a8:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1076
}
    800530aa:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:1075
    return JS_UNDEFINED;
    800530ac:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1076
}
    800530ae:	6542                	ld	a0,16(sp)
    800530b0:	65e2                	ld	a1,24(sp)
    800530b2:	6145                	addi	sp,sp,48
    800530b4:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1074
    fflush(f);
    800530b6:	6560f0ef          	jal	ra,8006270c <fflush>
quickjs-nuttx/quickjs-libc.c:1075
    return JS_UNDEFINED;
    800530ba:	478d                	li	a5,3
    800530bc:	e802                	sd	zero,16(sp)
    800530be:	b7f5                	j	800530aa <js_std_file_flush+0xe>

00000000800530c0 <js_std_file_finalizer>:
js_std_file_finalizer():
quickjs-nuttx/quickjs-libc.c:803
{
    800530c0:	7179                	addi	sp,sp,-48
    800530c2:	87b2                	mv	a5,a2
    800530c4:	ec26                	sd	s1,24(sp)
    800530c6:	e02e                	sd	a1,0(sp)
    800530c8:	84aa                	mv	s1,a0
    800530ca:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:804
    JSSTDFile *s = JS_GetOpaque(val, js_std_file_class_id);
    800530cc:	852e                	mv	a0,a1
    800530ce:	000ae617          	auipc	a2,0xae
    800530d2:	06662603          	lw	a2,102(a2) # 80101134 <js_std_file_class_id>
    800530d6:	85be                	mv	a1,a5
quickjs-nuttx/quickjs-libc.c:803
{
    800530d8:	f406                	sd	ra,40(sp)
    800530da:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs-libc.c:804
    JSSTDFile *s = JS_GetOpaque(val, js_std_file_class_id);
    800530dc:	db8bb0ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs-libc.c:805
    if (s) {
    800530e0:	c50d                	beqz	a0,8005310a <js_std_file_finalizer+0x4a>
    800530e2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:806
        if (s->f && s->close_in_finalizer) {
    800530e4:	6108                	ld	a0,0(a0)
    800530e6:	c519                	beqz	a0,800530f4 <js_std_file_finalizer+0x34>
quickjs-nuttx/quickjs-libc.c:806 (discriminator 1)
    800530e8:	441c                	lw	a5,8(s0)
    800530ea:	c789                	beqz	a5,800530f4 <js_std_file_finalizer+0x34>
quickjs-nuttx/quickjs-libc.c:807
            if (s->is_popen)
    800530ec:	445c                	lw	a5,12(s0)
    800530ee:	cb99                	beqz	a5,80053104 <js_std_file_finalizer+0x44>
quickjs-nuttx/quickjs-libc.c:808
                pclose(s->f);
    800530f0:	34d0c0ef          	jal	ra,8005fc3c <pclose>
quickjs-nuttx/quickjs-libc.c:812
        js_free_rt(rt, s);
    800530f4:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs-libc.c:814
}
    800530f6:	7402                	ld	s0,32(sp)
    800530f8:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:812
        js_free_rt(rt, s);
    800530fa:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:814
}
    800530fc:	64e2                	ld	s1,24(sp)
    800530fe:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs-libc.c:812
        js_free_rt(rt, s);
    80053100:	8e1b706f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs-libc.c:810
                fclose(s->f);
    80053104:	03a0f0ef          	jal	ra,8006213e <fclose>
    80053108:	b7f5                	j	800530f4 <js_std_file_finalizer+0x34>
quickjs-nuttx/quickjs-libc.c:814
}
    8005310a:	70a2                	ld	ra,40(sp)
    8005310c:	7402                	ld	s0,32(sp)
    8005310e:	64e2                	ld	s1,24(sp)
    80053110:	6145                	addi	sp,sp,48
    80053112:	8082                	ret

0000000080053114 <js_os_pipe>:
js_os_pipe():
quickjs-nuttx/quickjs-libc.c:3134
{
    80053114:	7175                	addi	sp,sp,-144
    80053116:	e122                	sd	s0,128(sp)
quickjs-nuttx/quickjs-libc.c:3138
    ret = pipe(pipe_fds);
    80053118:	4581                	li	a1,0
quickjs-nuttx/quickjs-libc.c:3134
{
    8005311a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3138
    ret = pipe(pipe_fds);
    8005311c:	0828                	addi	a0,sp,24
quickjs-nuttx/quickjs-libc.c:3134
{
    8005311e:	e506                	sd	ra,136(sp)
quickjs-nuttx/quickjs-libc.c:3138
    ret = pipe(pipe_fds);
    80053120:	3330c0ef          	jal	ra,8005fc52 <pipe2>
quickjs-nuttx/quickjs-libc.c:3139
    if (ret < 0)
    80053124:	00055663          	bgez	a0,80053130 <js_os_pipe+0x1c>
quickjs-nuttx/quickjs-libc.c:3140
        return JS_NULL;
    80053128:	f802                	sd	zero,48(sp)
    8005312a:	4789                	li	a5,2
quickjs-nuttx/quickjs-libc.c:3148
    return obj;
    8005312c:	fc3e                	sd	a5,56(sp)
    8005312e:	a831                	j	8005314a <js_os_pipe+0x36>
quickjs-nuttx/quickjs-libc.c:3141
    obj = JS_NewArray(ctx);
    80053130:	8522                	mv	a0,s0
    80053132:	928c90ef          	jal	ra,8001c25a <JS_NewArray>
    80053136:	f02a                	sd	a0,32(sp)
    80053138:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:3142
    if (JS_IsException(obj))
    8005313a:	0005871b          	sext.w	a4,a1
    8005313e:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:3141
    obj = JS_NewArray(ctx);
    80053140:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:3142
    if (JS_IsException(obj))
    80053142:	00f71a63          	bne	a4,a5,80053156 <js_os_pipe+0x42>
quickjs-nuttx/quickjs-libc.c:3143
        return obj;
    80053146:	f82a                	sd	a0,48(sp)
    80053148:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:3149 (discriminator 1)
}
    8005314a:	60aa                	ld	ra,136(sp)
    8005314c:	640a                	ld	s0,128(sp)
    8005314e:	7542                	ld	a0,48(sp)
    80053150:	75e2                	ld	a1,56(sp)
    80053152:	6149                	addi	sp,sp,144
    80053154:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3144
    JS_DefinePropertyValueUint32(ctx, obj, 0, JS_NewInt32(ctx, pipe_fds[0]),
    80053156:	47e2                	lw	a5,24(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80053158:	f882                	sd	zero,112(sp)
js_os_pipe():
quickjs-nuttx/quickjs-libc.c:3144
    8005315a:	85aa                	mv	a1,a0
    8005315c:	d8be                	sw	a5,112(sp)
    8005315e:	7746                	ld	a4,112(sp)
    80053160:	481d                	li	a6,7
    80053162:	4781                	li	a5,0
    80053164:	4681                	li	a3,0
    80053166:	8522                	mv	a0,s0
    80053168:	e89dd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs-libc.c:3146
    JS_DefinePropertyValueUint32(ctx, obj, 1, JS_NewInt32(ctx, pipe_fds[1]),
    8005316c:	47f2                	lw	a5,28(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8005316e:	f082                	sd	zero,96(sp)
js_os_pipe():
quickjs-nuttx/quickjs-libc.c:3146
    80053170:	7582                	ld	a1,32(sp)
    80053172:	d0be                	sw	a5,96(sp)
    80053174:	7706                	ld	a4,96(sp)
    80053176:	7622                	ld	a2,40(sp)
    80053178:	4781                	li	a5,0
    8005317a:	481d                	li	a6,7
    8005317c:	4685                	li	a3,1
    8005317e:	8522                	mv	a0,s0
    80053180:	e71dd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs-libc.c:3148
    return obj;
    80053184:	7782                	ld	a5,32(sp)
    80053186:	f83e                	sd	a5,48(sp)
    80053188:	77a2                	ld	a5,40(sp)
    8005318a:	b74d                	j	8005312c <js_os_pipe+0x18>

000000008005318c <make_obj_error>:
make_obj_error():
quickjs-nuttx/quickjs-libc.c:2413
{
    8005318c:	7159                	addi	sp,sp,-112
    8005318e:	e8ca                	sd	s2,80(sp)
    80053190:	f486                	sd	ra,104(sp)
    80053192:	f0a2                	sd	s0,96(sp)
    80053194:	eca6                	sd	s1,88(sp)
    80053196:	e02e                	sd	a1,0(sp)
    80053198:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:2415
    if (JS_IsException(obj))
    8005319a:	0006079b          	sext.w	a5,a2
    8005319e:	4919                	li	s2,6
    800531a0:	01279c63          	bne	a5,s2,800531b8 <make_obj_error+0x2c>
quickjs-nuttx/quickjs-libc.c:2416
        return obj;
    800531a4:	f02e                	sd	a1,32(sp)
    800531a6:	f432                	sd	a2,40(sp)
quickjs-nuttx/quickjs-libc.c:2425 (discriminator 1)
}
    800531a8:	70a6                	ld	ra,104(sp)
    800531aa:	7406                	ld	s0,96(sp)
    800531ac:	7502                	ld	a0,32(sp)
    800531ae:	75a2                	ld	a1,40(sp)
    800531b0:	64e6                	ld	s1,88(sp)
    800531b2:	6946                	ld	s2,80(sp)
    800531b4:	6165                	addi	sp,sp,112
    800531b6:	8082                	ret
    800531b8:	842a                	mv	s0,a0
    800531ba:	84b6                	mv	s1,a3
quickjs-nuttx/quickjs-libc.c:2417
    arr = JS_NewArray(ctx);
    800531bc:	89ec90ef          	jal	ra,8001c25a <JS_NewArray>
    800531c0:	e82a                	sd	a0,16(sp)
    800531c2:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:2418
    if (JS_IsException(arr))
    800531c4:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs-libc.c:2417
    arr = JS_NewArray(ctx);
    800531c8:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:2418
    if (JS_IsException(arr))
    800531ca:	01279563          	bne	a5,s2,800531d4 <make_obj_error+0x48>
quickjs-nuttx/quickjs-libc.c:2419
        return JS_EXCEPTION;
    800531ce:	f002                	sd	zero,32(sp)
quickjs-nuttx/quickjs-libc.c:2424
    return arr;
    800531d0:	f43e                	sd	a5,40(sp)
    800531d2:	bfd9                	j	800531a8 <make_obj_error+0x1c>
quickjs-nuttx/quickjs-libc.c:2420
    JS_DefinePropertyValueUint32(ctx, arr, 0, obj,
    800531d4:	6702                	ld	a4,0(sp)
    800531d6:	67a2                	ld	a5,8(sp)
    800531d8:	85aa                	mv	a1,a0
    800531da:	481d                	li	a6,7
    800531dc:	4681                	li	a3,0
    800531de:	8522                	mv	a0,s0
    800531e0:	e11dd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800531e4:	e082                	sd	zero,64(sp)
    800531e6:	c0a6                	sw	s1,64(sp)
make_obj_error():
quickjs-nuttx/quickjs-libc.c:2422
    JS_DefinePropertyValueUint32(ctx, arr, 1, JS_NewInt32(ctx, err),
    800531e8:	6706                	ld	a4,64(sp)
    800531ea:	65c2                	ld	a1,16(sp)
    800531ec:	6662                	ld	a2,24(sp)
    800531ee:	4781                	li	a5,0
    800531f0:	481d                	li	a6,7
    800531f2:	4685                	li	a3,1
    800531f4:	8522                	mv	a0,s0
    800531f6:	dfbdd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs-libc.c:2424
    return arr;
    800531fa:	67c2                	ld	a5,16(sp)
    800531fc:	f03e                	sd	a5,32(sp)
    800531fe:	67e2                	ld	a5,24(sp)
    80053200:	bfc1                	j	800531d0 <make_obj_error+0x44>

0000000080053202 <make_string_error>:
make_string_error():
quickjs-nuttx/quickjs-libc.c:2430
{
    80053202:	7139                	addi	sp,sp,-64
    80053204:	f822                	sd	s0,48(sp)
    80053206:	fc06                	sd	ra,56(sp)
    80053208:	842a                	mv	s0,a0
    8005320a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:2431
    return make_obj_error(ctx, JS_NewString(ctx, buf), err);
    8005320c:	faccc0ef          	jal	ra,8001f9b8 <JS_NewString>
    80053210:	862e                	mv	a2,a1
    80053212:	85aa                	mv	a1,a0
    80053214:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2432
}
    80053216:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs-libc.c:2431
    return make_obj_error(ctx, JS_NewString(ctx, buf), err);
    80053218:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs-libc.c:2432
}
    8005321a:	70e2                	ld	ra,56(sp)
    8005321c:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs-libc.c:2431
    return make_obj_error(ctx, JS_NewString(ctx, buf), err);
    8005321e:	f6fff06f          	j	8005318c <make_obj_error>

0000000080053222 <js_os_realpath>:
js_os_realpath():
quickjs-nuttx/quickjs-libc.c:2719
{
    80053222:	7129                	addi	sp,sp,-320
    80053224:	e02e                	sd	a1,0(sp)
    80053226:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:2724
    path = JS_ToCString(ctx, argv[0]);
    80053228:	630c                	ld	a1,0(a4)
    8005322a:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:2719
{
    8005322c:	fa22                	sd	s0,304(sp)
    8005322e:	fe06                	sd	ra,312(sp)
    80053230:	f626                	sd	s1,296(sp)
    80053232:	f24a                	sd	s2,288(sp)
    80053234:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2724
    path = JS_ToCString(ctx, argv[0]);
    80053236:	ebffe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2725
    if (!path)
    8005323a:	ed01                	bnez	a0,80053252 <js_os_realpath+0x30>
quickjs-nuttx/quickjs-libc.c:2726
        return JS_EXCEPTION;
    8005323c:	4799                	li	a5,6
    8005323e:	e802                	sd	zero,16(sp)
    80053240:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:2736 (discriminator 1)
}
    80053242:	70f2                	ld	ra,312(sp)
    80053244:	7452                	ld	s0,304(sp)
    80053246:	6542                	ld	a0,16(sp)
    80053248:	65e2                	ld	a1,24(sp)
    8005324a:	74b2                	ld	s1,296(sp)
    8005324c:	7912                	ld	s2,288(sp)
    8005324e:	6131                	addi	sp,sp,320
    80053250:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2727
    res = realpath(path, buf);
    80053252:	100c                	addi	a1,sp,32
    80053254:	84aa                	mv	s1,a0
    80053256:	1850f0ef          	jal	ra,80062bda <realpath>
    8005325a:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2728
    JS_FreeCString(ctx, path);
    8005325c:	85a6                	mv	a1,s1
    8005325e:	8522                	mv	a0,s0
    80053260:	8dfb90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2733
        err = 0;
    80053264:	4601                	li	a2,0
quickjs-nuttx/quickjs-libc.c:2729
    if (!res) {
    80053266:	00091763          	bnez	s2,80053274 <js_os_realpath+0x52>
quickjs-nuttx/quickjs-libc.c:2730
        buf[0] = '\0';
    8005326a:	02010023          	sb	zero,32(sp)
quickjs-nuttx/quickjs-libc.c:2731
        err = errno;
    8005326e:	7aa0d0ef          	jal	ra,80060a18 <__errno>
    80053272:	4110                	lw	a2,0(a0)
quickjs-nuttx/quickjs-libc.c:2735
    return make_string_error(ctx, buf, err);
    80053274:	100c                	addi	a1,sp,32
    80053276:	8522                	mv	a0,s0
    80053278:	f8bff0ef          	jal	ra,80053202 <make_string_error>
    8005327c:	e82a                	sd	a0,16(sp)
    8005327e:	ec2e                	sd	a1,24(sp)
    80053280:	b7c9                	j	80053242 <js_os_realpath+0x20>

0000000080053282 <js_os_waitpid>:
js_os_waitpid():
quickjs-nuttx/quickjs-libc.c:3106
{
    80053282:	7135                	addi	sp,sp,-160
    80053284:	e922                	sd	s0,144(sp)
    80053286:	e526                	sd	s1,136(sp)
    80053288:	ed06                	sd	ra,152(sp)
    8005328a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:3110
    if (JS_ToInt32(ctx, &pid, argv[0]))
    8005328c:	6714                	ld	a3,8(a4)
    8005328e:	6310                	ld	a2,0(a4)
quickjs-nuttx/quickjs-libc.c:3106
{
    80053290:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs-libc.c:3110
    if (JS_ToInt32(ctx, &pid, argv[0]))
    80053292:	084c                	addi	a1,sp,20
quickjs-nuttx/quickjs-libc.c:3106
{
    80053294:	84aa                	mv	s1,a0
    80053296:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:3110
    if (JS_ToInt32(ctx, &pid, argv[0]))
    80053298:	922cf0ef          	jal	ra,800223ba <JS_ToInt32>
    8005329c:	c509                	beqz	a0,800532a6 <js_os_waitpid+0x24>
quickjs-nuttx/quickjs-libc.c:3111
        return JS_EXCEPTION;
    8005329e:	f802                	sd	zero,48(sp)
    800532a0:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:3128
    return obj;
    800532a2:	fc3e                	sd	a5,56(sp)
    800532a4:	a099                	j	800532ea <js_os_waitpid+0x68>
quickjs-nuttx/quickjs-libc.c:3112
    if (JS_ToInt32(ctx, &options, argv[1]))
    800532a6:	6810                	ld	a2,16(s0)
    800532a8:	6c14                	ld	a3,24(s0)
    800532aa:	086c                	addi	a1,sp,28
    800532ac:	8526                	mv	a0,s1
    800532ae:	90ccf0ef          	jal	ra,800223ba <JS_ToInt32>
    800532b2:	f575                	bnez	a0,8005329e <js_os_waitpid+0x1c>
quickjs-nuttx/quickjs-libc.c:3115
    ret = waitpid(pid, &status, options);
    800532b4:	4672                	lw	a2,28(sp)
    800532b6:	4552                	lw	a0,20(sp)
    800532b8:	082c                	addi	a1,sp,24
    800532ba:	720110ef          	jal	ra,800649da <waitpid>
    800532be:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3116
    if (ret < 0) {
    800532c0:	00055863          	bgez	a0,800532d0 <js_os_waitpid+0x4e>
quickjs-nuttx/quickjs-libc.c:3117
        ret = -errno;
    800532c4:	7540d0ef          	jal	ra,80060a18 <__errno>
    800532c8:	4100                	lw	s0,0(a0)
quickjs-nuttx/quickjs-libc.c:3118
        status = 0;
    800532ca:	cc02                	sw	zero,24(sp)
quickjs-nuttx/quickjs-libc.c:3117
        ret = -errno;
    800532cc:	4080043b          	negw	s0,s0
quickjs-nuttx/quickjs-libc.c:3121
    obj = JS_NewArray(ctx);
    800532d0:	8526                	mv	a0,s1
    800532d2:	f89c80ef          	jal	ra,8001c25a <JS_NewArray>
    800532d6:	f02a                	sd	a0,32(sp)
    800532d8:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:3122
    if (JS_IsException(obj))
    800532da:	0005871b          	sext.w	a4,a1
    800532de:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:3121
    obj = JS_NewArray(ctx);
    800532e0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:3122
    if (JS_IsException(obj))
    800532e2:	00f71b63          	bne	a4,a5,800532f8 <js_os_waitpid+0x76>
quickjs-nuttx/quickjs-libc.c:3123
        return obj;
    800532e6:	f82a                	sd	a0,48(sp)
    800532e8:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:3129 (discriminator 1)
}    
    800532ea:	60ea                	ld	ra,152(sp)
    800532ec:	644a                	ld	s0,144(sp)
    800532ee:	7542                	ld	a0,48(sp)
    800532f0:	75e2                	ld	a1,56(sp)
    800532f2:	64aa                	ld	s1,136(sp)
    800532f4:	610d                	addi	sp,sp,160
    800532f6:	8082                	ret
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800532f8:	f882                	sd	zero,112(sp)
    800532fa:	d8a2                	sw	s0,112(sp)
js_os_waitpid():
quickjs-nuttx/quickjs-libc.c:3124
    JS_DefinePropertyValueUint32(ctx, obj, 0, JS_NewInt32(ctx, ret),
    800532fc:	7746                	ld	a4,112(sp)
    800532fe:	85aa                	mv	a1,a0
    80053300:	481d                	li	a6,7
    80053302:	4781                	li	a5,0
    80053304:	4681                	li	a3,0
    80053306:	8526                	mv	a0,s1
    80053308:	ce9dd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs-libc.c:3126
    JS_DefinePropertyValueUint32(ctx, obj, 1, JS_NewInt32(ctx, status),
    8005330c:	47e2                	lw	a5,24(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8005330e:	f082                	sd	zero,96(sp)
js_os_waitpid():
quickjs-nuttx/quickjs-libc.c:3126
    80053310:	7582                	ld	a1,32(sp)
    80053312:	d0be                	sw	a5,96(sp)
    80053314:	7706                	ld	a4,96(sp)
    80053316:	7622                	ld	a2,40(sp)
    80053318:	4781                	li	a5,0
    8005331a:	481d                	li	a6,7
    8005331c:	4685                	li	a3,1
    8005331e:	8526                	mv	a0,s1
    80053320:	cd1dd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs-libc.c:3128
    return obj;
    80053324:	7782                	ld	a5,32(sp)
    80053326:	f83e                	sd	a5,48(sp)
    80053328:	77a2                	ld	a5,40(sp)
    8005332a:	bfa5                	j	800532a2 <js_os_waitpid+0x20>

000000008005332c <js_os_getpid>:
js_os_getpid():
quickjs-nuttx/quickjs-libc.c:3099
{
    8005332c:	7139                	addi	sp,sp,-64
    8005332e:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs-libc.c:3100
    return JS_NewInt32(ctx, getpid());
    80053330:	3ca110ef          	jal	ra,800646fa <getpid>
quickjs-nuttx/quickjs-libc.c:3101
}
    80053334:	70e2                	ld	ra,56(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053336:	f002                	sd	zero,32(sp)
    80053338:	d02a                	sw	a0,32(sp)
js_os_getpid():
quickjs-nuttx/quickjs-libc.c:3101
    8005333a:	7502                	ld	a0,32(sp)
    8005333c:	4581                	li	a1,0
    8005333e:	6121                	addi	sp,sp,64
    80053340:	8082                	ret

0000000080053342 <js_os_readlink>:
js_os_readlink():
quickjs-nuttx/quickjs-libc.c:2762
{
    80053342:	714d                	addi	sp,sp,-336
    80053344:	e82e                	sd	a1,16(sp)
    80053346:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs-libc.c:2768
    path = JS_ToCString(ctx, argv[0]);
    80053348:	630c                	ld	a1,0(a4)
    8005334a:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:2762
{
    8005334c:	e2a2                	sd	s0,320(sp)
    8005334e:	e686                	sd	ra,328(sp)
    80053350:	fe26                	sd	s1,312(sp)
    80053352:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2768
    path = JS_ToCString(ctx, argv[0]);
    80053354:	da1fe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2769
    if (!path)
    80053358:	e919                	bnez	a0,8005336e <js_os_readlink+0x2c>
quickjs-nuttx/quickjs-libc.c:2770
        return JS_EXCEPTION;
    8005335a:	4799                	li	a5,6
    8005335c:	f002                	sd	zero,32(sp)
    8005335e:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2781 (discriminator 1)
}
    80053360:	60b6                	ld	ra,328(sp)
    80053362:	6416                	ld	s0,320(sp)
    80053364:	7502                	ld	a0,32(sp)
    80053366:	75a2                	ld	a1,40(sp)
    80053368:	74f2                	ld	s1,312(sp)
    8005336a:	6171                	addi	sp,sp,336
    8005336c:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2771
    res = readlink(path, buf, sizeof(buf) - 1);
    8005336e:	0ff00613          	li	a2,255
    80053372:	180c                	addi	a1,sp,48
    80053374:	84aa                	mv	s1,a0
    80053376:	1090c0ef          	jal	ra,8005fc7e <readlink>
quickjs-nuttx/quickjs-libc.c:2772
    if (res < 0) {
    8005337a:	02055463          	bgez	a0,800533a2 <js_os_readlink+0x60>
quickjs-nuttx/quickjs-libc.c:2773
        buf[0] = '\0';
    8005337e:	02010823          	sb	zero,48(sp)
quickjs-nuttx/quickjs-libc.c:2774
        err = errno;
    80053382:	6960d0ef          	jal	ra,80060a18 <__errno>
    80053386:	4110                	lw	a2,0(a0)
quickjs-nuttx/quickjs-libc.c:2779
    JS_FreeCString(ctx, path);
    80053388:	85a6                	mv	a1,s1
    8005338a:	8522                	mv	a0,s0
    8005338c:	e432                	sd	a2,8(sp)
    8005338e:	fb0b90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2780
    return make_string_error(ctx, buf, err);
    80053392:	6622                	ld	a2,8(sp)
    80053394:	180c                	addi	a1,sp,48
    80053396:	8522                	mv	a0,s0
    80053398:	e6bff0ef          	jal	ra,80053202 <make_string_error>
    8005339c:	f02a                	sd	a0,32(sp)
    8005339e:	f42e                	sd	a1,40(sp)
    800533a0:	b7c1                	j	80053360 <js_os_readlink+0x1e>
quickjs-nuttx/quickjs-libc.c:2776
        buf[res] = '\0';
    800533a2:	1a1c                	addi	a5,sp,304
    800533a4:	97aa                	add	a5,a5,a0
    800533a6:	f0078023          	sb	zero,-256(a5)
quickjs-nuttx/quickjs-libc.c:2777
        err = 0;
    800533aa:	4601                	li	a2,0
    800533ac:	bff1                	j	80053388 <js_os_readlink+0x46>

00000000800533ae <js_os_readdir>:
js_os_readdir():
quickjs-nuttx/quickjs-libc.c:2492
{
    800533ae:	7159                	addi	sp,sp,-112
    800533b0:	f0a2                	sd	s0,96(sp)
    800533b2:	f486                	sd	ra,104(sp)
    800533b4:	eca6                	sd	s1,88(sp)
    800533b6:	e8ca                	sd	s2,80(sp)
    800533b8:	e4ce                	sd	s3,72(sp)
    800533ba:	e02e                	sd	a1,0(sp)
    800533bc:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:2500
    path = JS_ToCString(ctx, argv[0]);
    800533be:	630c                	ld	a1,0(a4)
    800533c0:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:2492
{
    800533c2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2500
    path = JS_ToCString(ctx, argv[0]);
    800533c4:	d31fe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2501
    if (!path)
    800533c8:	ed09                	bnez	a0,800533e2 <js_os_readdir+0x34>
quickjs-nuttx/quickjs-libc.c:2502
        return JS_EXCEPTION;
    800533ca:	4799                	li	a5,6
    800533cc:	f002                	sd	zero,32(sp)
    800533ce:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2531 (discriminator 1)
}
    800533d0:	70a6                	ld	ra,104(sp)
    800533d2:	7406                	ld	s0,96(sp)
    800533d4:	7502                	ld	a0,32(sp)
    800533d6:	75a2                	ld	a1,40(sp)
    800533d8:	64e6                	ld	s1,88(sp)
    800533da:	6946                	ld	s2,80(sp)
    800533dc:	69a6                	ld	s3,72(sp)
    800533de:	6165                	addi	sp,sp,112
    800533e0:	8082                	ret
    800533e2:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2503
    obj = JS_NewArray(ctx);
    800533e4:	8522                	mv	a0,s0
    800533e6:	e75c80ef          	jal	ra,8001c25a <JS_NewArray>
    800533ea:	e82a                	sd	a0,16(sp)
    800533ec:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:2504
    if (JS_IsException(obj)) {
    800533ee:	0005849b          	sext.w	s1,a1
    800533f2:	4799                	li	a5,6
    800533f4:	00f49963          	bne	s1,a5,80053406 <js_os_readdir+0x58>
quickjs-nuttx/quickjs-libc.c:2505
        JS_FreeCString(ctx, path);
    800533f8:	85ca                	mv	a1,s2
    800533fa:	8522                	mv	a0,s0
    800533fc:	f42b90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2506
        return JS_EXCEPTION;
    80053400:	f002                	sd	zero,32(sp)
    80053402:	f426                	sd	s1,40(sp)
    80053404:	b7f1                	j	800533d0 <js_os_readdir+0x22>
quickjs-nuttx/quickjs-libc.c:2508
    f = opendir(path);
    80053406:	854a                	mv	a0,s2
    80053408:	5620d0ef          	jal	ra,8006096a <opendir>
    8005340c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2512
        err = 0;
    8005340e:	4981                	li	s3,0
quickjs-nuttx/quickjs-libc.c:2509
    if (!f)
    80053410:	e509                	bnez	a0,8005341a <js_os_readdir+0x6c>
quickjs-nuttx/quickjs-libc.c:2510
        err = errno;
    80053412:	6060d0ef          	jal	ra,80060a18 <__errno>
    80053416:	00052983          	lw	s3,0(a0)
quickjs-nuttx/quickjs-libc.c:2513
    JS_FreeCString(ctx, path);
    8005341a:	85ca                	mv	a1,s2
    8005341c:	8522                	mv	a0,s0
    8005341e:	f20b90ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2514
    if (!f)
    80053422:	c08d                	beqz	s1,80053444 <js_os_readdir+0x96>
quickjs-nuttx/quickjs-libc.c:2516
    len = 0;
    80053424:	4901                	li	s2,0
quickjs-nuttx/quickjs-libc.c:2518
        errno = 0;
    80053426:	5f20d0ef          	jal	ra,80060a18 <__errno>
    8005342a:	00052023          	sw	zero,0(a0)
quickjs-nuttx/quickjs-libc.c:2519
        d = readdir(f);
    8005342e:	8526                	mv	a0,s1
    80053430:	5b40d0ef          	jal	ra,800609e4 <readdir>
quickjs-nuttx/quickjs-libc.c:2520
        if (!d) {
    80053434:	e505                	bnez	a0,8005345c <js_os_readdir+0xae>
quickjs-nuttx/quickjs-libc.c:2521
            err = errno;
    80053436:	5e20d0ef          	jal	ra,80060a18 <__errno>
    8005343a:	00052983          	lw	s3,0(a0)
quickjs-nuttx/quickjs-libc.c:2528
    closedir(f);
    8005343e:	8526                	mv	a0,s1
    80053440:	5720d0ef          	jal	ra,800609b2 <closedir>
quickjs-nuttx/quickjs-libc.c:2530
    return make_obj_error(ctx, obj, err);
    80053444:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2531
}
    80053446:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs-libc.c:2530
    return make_obj_error(ctx, obj, err);
    80053448:	65c2                	ld	a1,16(sp)
    8005344a:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs-libc.c:2531
}
    8005344c:	70a6                	ld	ra,104(sp)
    8005344e:	64e6                	ld	s1,88(sp)
    80053450:	6946                	ld	s2,80(sp)
quickjs-nuttx/quickjs-libc.c:2530
    return make_obj_error(ctx, obj, err);
    80053452:	86ce                	mv	a3,s3
quickjs-nuttx/quickjs-libc.c:2531
}
    80053454:	69a6                	ld	s3,72(sp)
    80053456:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs-libc.c:2530
    return make_obj_error(ctx, obj, err);
    80053458:	d35ff06f          	j	8005318c <make_obj_error>
quickjs-nuttx/quickjs-libc.c:2524
        JS_DefinePropertyValueUint32(ctx, obj, len++,
    8005345c:	00150593          	addi	a1,a0,1
    80053460:	8522                	mv	a0,s0
    80053462:	d56cc0ef          	jal	ra,8001f9b8 <JS_NewString>
    80053466:	87ae                	mv	a5,a1
    80053468:	fc2e                	sd	a1,56(sp)
    8005346a:	6662                	ld	a2,24(sp)
    8005346c:	65c2                	ld	a1,16(sp)
    8005346e:	872a                	mv	a4,a0
    80053470:	f82a                	sd	a0,48(sp)
    80053472:	86ca                	mv	a3,s2
    80053474:	0019099b          	addiw	s3,s2,1
    80053478:	481d                	li	a6,7
    8005347a:	8522                	mv	a0,s0
    8005347c:	b75dd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    80053480:	894e                	mv	s2,s3
quickjs-nuttx/quickjs-libc.c:2518
        errno = 0;
    80053482:	b755                	j	80053426 <js_os_readdir+0x78>

0000000080053484 <js_os_getcwd>:
js_os_getcwd():
quickjs-nuttx/quickjs-libc.c:2437
{
    80053484:	7169                	addi	sp,sp,-304
    80053486:	f222                	sd	s0,288(sp)
    80053488:	e02e                	sd	a1,0(sp)
    8005348a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2441
    if (!getcwd(buf, sizeof(buf))) {
    8005348c:	10000593          	li	a1,256
    80053490:	1008                	addi	a0,sp,32
quickjs-nuttx/quickjs-libc.c:2437
{
    80053492:	e432                	sd	a2,8(sp)
    80053494:	f606                	sd	ra,296(sp)
quickjs-nuttx/quickjs-libc.c:2441
    if (!getcwd(buf, sizeof(buf))) {
    80053496:	55f100ef          	jal	ra,800641f4 <getcwd>
quickjs-nuttx/quickjs-libc.c:2445
        err = 0;
    8005349a:	4601                	li	a2,0
quickjs-nuttx/quickjs-libc.c:2441
    if (!getcwd(buf, sizeof(buf))) {
    8005349c:	e511                	bnez	a0,800534a8 <js_os_getcwd+0x24>
quickjs-nuttx/quickjs-libc.c:2442
        buf[0] = '\0';
    8005349e:	02010023          	sb	zero,32(sp)
quickjs-nuttx/quickjs-libc.c:2443
        err = errno;
    800534a2:	5760d0ef          	jal	ra,80060a18 <__errno>
    800534a6:	4110                	lw	a2,0(a0)
quickjs-nuttx/quickjs-libc.c:2447
    return make_string_error(ctx, buf, err);
    800534a8:	100c                	addi	a1,sp,32
    800534aa:	8522                	mv	a0,s0
    800534ac:	d57ff0ef          	jal	ra,80053202 <make_string_error>
quickjs-nuttx/quickjs-libc.c:2448
}
    800534b0:	70b2                	ld	ra,296(sp)
    800534b2:	7412                	ld	s0,288(sp)
    800534b4:	6155                	addi	sp,sp,304
    800534b6:	8082                	ret

00000000800534b8 <get_time_ms>:
get_time_ms():
quickjs-nuttx/quickjs-libc.c:2015
{
    800534b8:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs-libc.c:2017
    gettimeofday(&tv, NULL);
    800534ba:	850a                	mv	a0,sp
    800534bc:	4581                	li	a1,0
quickjs-nuttx/quickjs-libc.c:2015
{
    800534be:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs-libc.c:2017
    gettimeofday(&tv, NULL);
    800534c0:	165100ef          	jal	ra,80063e24 <gettimeofday>
quickjs-nuttx/quickjs-libc.c:2018
    return (int64_t)tv.tv_sec * 1000 + (tv.tv_usec / 1000);
    800534c4:	67a2                	ld	a5,8(sp)
    800534c6:	3e800713          	li	a4,1000
    800534ca:	00016503          	lwu	a0,0(sp)
    800534ce:	02e7c7b3          	div	a5,a5,a4
quickjs-nuttx/quickjs-libc.c:2019
}
    800534d2:	60e2                	ld	ra,24(sp)
    800534d4:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:2018
    return (int64_t)tv.tv_sec * 1000 + (tv.tv_usec / 1000);
    800534d6:	02e50533          	mul	a0,a0,a4
quickjs-nuttx/quickjs-libc.c:2019
}
    800534da:	953e                	add	a0,a0,a5
    800534dc:	8082                	ret

00000000800534de <js_os_now>:
js_os_now():
quickjs-nuttx/quickjs-libc.c:2031
{
    800534de:	7179                	addi	sp,sp,-48
get_time_ns():
quickjs-nuttx/quickjs-libc.c:2024
    gettimeofday(&tv, NULL);
    800534e0:	4581                	li	a1,0
    800534e2:	0808                	addi	a0,sp,16
js_os_now():
quickjs-nuttx/quickjs-libc.c:2031
{
    800534e4:	f406                	sd	ra,40(sp)
get_time_ns():
quickjs-nuttx/quickjs-libc.c:2024
    gettimeofday(&tv, NULL);
    800534e6:	13f100ef          	jal	ra,80063e24 <gettimeofday>
quickjs-nuttx/quickjs-libc.c:2025
    return (int64_t)tv.tv_sec * 1000000000 + (tv.tv_usec * 1000);
    800534ea:	01016783          	lwu	a5,16(sp)
    800534ee:	66e2                	ld	a3,24(sp)
    800534f0:	3b9ad737          	lui	a4,0x3b9ad
    800534f4:	a0070713          	addi	a4,a4,-1536 # 3b9aca00 <asinh-0x44653600>
    800534f8:	02e787b3          	mul	a5,a5,a4
    800534fc:	3e800713          	li	a4,1000
    80053500:	02d70733          	mul	a4,a4,a3
    80053504:	97ba                	add	a5,a5,a4
js_os_now():
quickjs-nuttx/quickjs-libc.c:2032
    return JS_NewFloat64(ctx, (double)get_time_ns() / 1e6);
    80053506:	d227f7d3          	fcvt.d.l	fa5,a5
    8005350a:	00040797          	auipc	a5,0x40
    8005350e:	75e7b707          	fld	fa4,1886(a5) # 80093c68 <_erodata+0xf6>
    80053512:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
JS_NewFloat64():
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80053516:	c2079653          	fcvt.w.d	a2,fa5,rtz
js_os_now():
quickjs-nuttx/quickjs-libc.c:2032
    8005351a:	e20787d3          	fmv.x.d	a5,fa5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    8005351e:	d20607d3          	fcvt.d.w	fa5,a2
quickjs-nuttx/quickjs.h:557
    val = (int32_t)d;
    80053522:	0006071b          	sext.w	a4,a2
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80053526:	e2078653          	fmv.x.d	a2,fa5
    8005352a:	00c79963          	bne	a5,a2,8005353c <js_os_now+0x5e>
quickjs-nuttx/quickjs.h:562
        v = JS_MKVAL(JS_TAG_INT, val);
    8005352e:	ca02                	sw	zero,20(sp)
    80053530:	4581                	li	a1,0
js_os_now():
quickjs-nuttx/quickjs-libc.c:2033
}
    80053532:	70a2                	ld	ra,40(sp)
JS_NewFloat64():
quickjs-nuttx/quickjs.h:566
    return v;
    80053534:	c83a                	sw	a4,16(sp)
js_os_now():
quickjs-nuttx/quickjs-libc.c:2033
    80053536:	6542                	ld	a0,16(sp)
    80053538:	6145                	addi	sp,sp,48
    8005353a:	8082                	ret
quickjs-nuttx/quickjs.h:230
    return v;
    8005353c:	e83e                	sd	a5,16(sp)
    8005353e:	0007871b          	sext.w	a4,a5
JS_NewFloat64():
quickjs-nuttx/quickjs.h:561
    if (u.u == t.u) {
    80053542:	459d                	li	a1,7
    80053544:	b7fd                	j	80053532 <js_os_now+0x54>

0000000080053546 <JS_FreeValueRT>:
JS_FreeValueRT():
quickjs-nuttx/quickjs.h:657
{
    80053546:	1141                	addi	sp,sp,-16
    80053548:	e02e                	sd	a1,0(sp)
    8005354a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.h:658
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    8005354c:	0006079b          	sext.w	a5,a2
    80053550:	5751                	li	a4,-12
    80053552:	00f77b63          	bgeu	a4,a5,80053568 <JS_FreeValueRT+0x22>
quickjs-nuttx/quickjs.h:660
        if (--p->ref_count <= 0) {
    80053556:	4198                	lw	a4,0(a1)
    80053558:	fff7069b          	addiw	a3,a4,-1
    8005355c:	c194                	sw	a3,0(a1)
    8005355e:	00d04563          	bgtz	a3,80053568 <JS_FreeValueRT+0x22>
quickjs-nuttx/quickjs.h:664
}
    80053562:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.h:661
            __JS_FreeValueRT(rt, v);
    80053564:	d55b806f          	j	8000c2b8 <__JS_FreeValueRT>
quickjs-nuttx/quickjs.h:664
}
    80053568:	0141                	addi	sp,sp,16
    8005356a:	8082                	ret

000000008005356c <free_timer>:
free_timer():
quickjs-nuttx/quickjs-libc.c:2036
{
    8005356c:	1101                	addi	sp,sp,-32
    8005356e:	e426                	sd	s1,8(sp)
    80053570:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2037
    list_del(&th->link);
    80053572:	852e                	mv	a0,a1
quickjs-nuttx/quickjs-libc.c:2036
{
    80053574:	ec06                	sd	ra,24(sp)
    80053576:	e822                	sd	s0,16(sp)
    80053578:	842e                	mv	s0,a1
quickjs-nuttx/quickjs-libc.c:2037
    list_del(&th->link);
    8005357a:	ae3fe0ef          	jal	ra,8005205c <list_del>
quickjs-nuttx/quickjs-libc.c:2038
    JS_FreeValueRT(rt, th->func);
    8005357e:	700c                	ld	a1,32(s0)
    80053580:	7410                	ld	a2,40(s0)
    80053582:	8526                	mv	a0,s1
    80053584:	fc3ff0ef          	jal	ra,80053546 <JS_FreeValueRT>
quickjs-nuttx/quickjs-libc.c:2039
    js_free_rt(rt, th);
    80053588:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs-libc.c:2040
}
    8005358a:	6442                	ld	s0,16(sp)
    8005358c:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs-libc.c:2039
    js_free_rt(rt, th);
    8005358e:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:2040
}
    80053590:	64a2                	ld	s1,8(sp)
    80053592:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:2039
    js_free_rt(rt, th);
    80053594:	c4cb706f          	j	8000a9e0 <js_free_rt>

0000000080053598 <js_os_clearTimeout>:
js_os_clearTimeout():
quickjs-nuttx/quickjs-libc.c:2085
{
    80053598:	711d                	addi	sp,sp,-96
    8005359a:	ec86                	sd	ra,88(sp)
    8005359c:	e8a2                	sd	s0,80(sp)
    8005359e:	e4a6                	sd	s1,72(sp)
    800535a0:	e0ca                	sd	s2,64(sp)
    800535a2:	84ba                	mv	s1,a4
    800535a4:	fc4e                	sd	s3,56(sp)
    800535a6:	e02e                	sd	a1,0(sp)
    800535a8:	e432                	sd	a2,8(sp)
    800535aa:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:2086
    JSRuntime *rt = JS_GetRuntime(ctx);
    800535ac:	b31b70ef          	jal	ra,8000b0dc <JS_GetRuntime>
    800535b0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2087
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    800535b2:	a93b70ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:2091
    if (JS_ToInt32(ctx, &timer_id, argv[0]))
    800535b6:	6090                	ld	a2,0(s1)
    800535b8:	6494                	ld	a3,8(s1)
quickjs-nuttx/quickjs-libc.c:2087
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    800535ba:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2091
    if (JS_ToInt32(ctx, &timer_id, argv[0]))
    800535bc:	086c                	addi	a1,sp,28
    800535be:	854e                	mv	a0,s3
    800535c0:	dfbce0ef          	jal	ra,800223ba <JS_ToInt32>
    800535c4:	cd09                	beqz	a0,800535de <js_os_clearTimeout+0x46>
quickjs-nuttx/quickjs-libc.c:2092
        return JS_EXCEPTION;
    800535c6:	f002                	sd	zero,32(sp)
    800535c8:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:2098
}
    800535ca:	60e6                	ld	ra,88(sp)
    800535cc:	6446                	ld	s0,80(sp)
quickjs-nuttx/quickjs-libc.c:2097
    return JS_UNDEFINED;
    800535ce:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2098
}
    800535d0:	7502                	ld	a0,32(sp)
    800535d2:	75a2                	ld	a1,40(sp)
    800535d4:	64a6                	ld	s1,72(sp)
    800535d6:	6906                	ld	s2,64(sp)
    800535d8:	79e2                	ld	s3,56(sp)
    800535da:	6125                	addi	sp,sp,96
    800535dc:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2093
    th = find_timer_by_id(ts, timer_id);
    800535de:	47f2                	lw	a5,28(sp)
find_timer_by_id():
quickjs-nuttx/quickjs-libc.c:2073
    if (timer_id <= 0)
    800535e0:	00f05763          	blez	a5,800535ee <js_os_clearTimeout+0x56>
quickjs-nuttx/quickjs-libc.c:2075
    list_for_each(el, &ts->os_timers) {
    800535e4:	740c                	ld	a1,40(s0)
    800535e6:	02040413          	addi	s0,s0,32
    800535ea:	00859563          	bne	a1,s0,800535f4 <js_os_clearTimeout+0x5c>
js_os_clearTimeout():
quickjs-nuttx/quickjs-libc.c:2097
    return JS_UNDEFINED;
    800535ee:	f002                	sd	zero,32(sp)
    800535f0:	478d                	li	a5,3
    800535f2:	bfe1                	j	800535ca <js_os_clearTimeout+0x32>
find_timer_by_id():
quickjs-nuttx/quickjs-libc.c:2077
        if (th->timer_id == timer_id)
    800535f4:	4998                	lw	a4,16(a1)
    800535f6:	00f70463          	beq	a4,a5,800535fe <js_os_clearTimeout+0x66>
quickjs-nuttx/quickjs-libc.c:2075
    list_for_each(el, &ts->os_timers) {
    800535fa:	658c                	ld	a1,8(a1)
    800535fc:	b7fd                	j	800535ea <js_os_clearTimeout+0x52>
js_os_clearTimeout():
quickjs-nuttx/quickjs-libc.c:2096
    free_timer(rt, th);
    800535fe:	854a                	mv	a0,s2
    80053600:	f6dff0ef          	jal	ra,8005356c <free_timer>
    80053604:	b7ed                	j	800535ee <js_os_clearTimeout+0x56>

0000000080053606 <free_rw_handler>:
free_rw_handler():
quickjs-nuttx/quickjs-libc.c:1872
{
    80053606:	1101                	addi	sp,sp,-32
    80053608:	e426                	sd	s1,8(sp)
    8005360a:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:1874
    list_del(&rh->link);
    8005360c:	852e                	mv	a0,a1
quickjs-nuttx/quickjs-libc.c:1872
{
    8005360e:	ec06                	sd	ra,24(sp)
    80053610:	e822                	sd	s0,16(sp)
    80053612:	842e                	mv	s0,a1
quickjs-nuttx/quickjs-libc.c:1874
    list_del(&rh->link);
    80053614:	a49fe0ef          	jal	ra,8005205c <list_del>
quickjs-nuttx/quickjs-libc.c:1876
        JS_FreeValueRT(rt, rh->rw_func[i]);
    80053618:	6c0c                	ld	a1,24(s0)
    8005361a:	7010                	ld	a2,32(s0)
    8005361c:	8526                	mv	a0,s1
    8005361e:	f29ff0ef          	jal	ra,80053546 <JS_FreeValueRT>
    80053622:	740c                	ld	a1,40(s0)
    80053624:	7810                	ld	a2,48(s0)
    80053626:	8526                	mv	a0,s1
    80053628:	f1fff0ef          	jal	ra,80053546 <JS_FreeValueRT>
quickjs-nuttx/quickjs-libc.c:1878
    js_free_rt(rt, rh);
    8005362c:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs-libc.c:1879
}
    8005362e:	6442                	ld	s0,16(sp)
    80053630:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs-libc.c:1878
    js_free_rt(rt, rh);
    80053632:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:1879
}
    80053634:	64a2                	ld	s1,8(sp)
    80053636:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:1878
    js_free_rt(rt, rh);
    80053638:	ba8b706f          	j	8000a9e0 <js_free_rt>

000000008005363c <term_exit>:
term_exit():
quickjs-nuttx/quickjs-libc.c:1772
    tcsetattr(0, TCSANOW, &oldtty);
    8005363c:	000ae617          	auipc	a2,0xae
    80053640:	acc60613          	addi	a2,a2,-1332 # 80101108 <oldtty>
    80053644:	4581                	li	a1,0
    80053646:	4501                	li	a0,0
    80053648:	7a21006f          	j	80063dea <tcsetattr>

000000008005364c <js_os_ttySetRaw>:
js_os_ttySetRaw():
quickjs-nuttx/quickjs-libc.c:1778
{
    8005364c:	711d                	addi	sp,sp,-96
    8005364e:	ec86                	sd	ra,88(sp)
quickjs-nuttx/quickjs-libc.c:1782
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053650:	6310                	ld	a2,0(a4)
    80053652:	6714                	ld	a3,8(a4)
    80053654:	084c                	addi	a1,sp,20
    80053656:	d65ce0ef          	jal	ra,800223ba <JS_ToInt32>
    8005365a:	c909                	beqz	a0,8005366c <js_os_ttySetRaw+0x20>
quickjs-nuttx/quickjs-libc.c:1783
        return JS_EXCEPTION;
    8005365c:	ec02                	sd	zero,24(sp)
    8005365e:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1802
}
    80053660:	60e6                	ld	ra,88(sp)
quickjs-nuttx/quickjs-libc.c:1801
    return JS_UNDEFINED;
    80053662:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs-libc.c:1802
}
    80053664:	6562                	ld	a0,24(sp)
    80053666:	7582                	ld	a1,32(sp)
    80053668:	6125                	addi	sp,sp,96
    8005366a:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1786
    tcgetattr(fd, &tty);
    8005366c:	4552                	lw	a0,20(sp)
    8005366e:	102c                	addi	a1,sp,40
quickjs-nuttx/quickjs-libc.c:1785
    memset(&tty, 0, sizeof(tty));
    80053670:	f402                	sd	zero,40(sp)
    80053672:	f802                	sd	zero,48(sp)
    80053674:	fc02                	sd	zero,56(sp)
    80053676:	e082                	sd	zero,64(sp)
    80053678:	e482                	sd	zero,72(sp)
quickjs-nuttx/quickjs-libc.c:1786
    tcgetattr(fd, &tty);
    8005367a:	766100ef          	jal	ra,80063de0 <tcgetattr>
quickjs-nuttx/quickjs-libc.c:1787
    oldtty = tty;
    8005367e:	02800613          	li	a2,40
    80053682:	102c                	addi	a1,sp,40
    80053684:	000ae517          	auipc	a0,0xae
    80053688:	a8450513          	addi	a0,a0,-1404 # 80101108 <oldtty>
    8005368c:	720100ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs-libc.c:1789
    tty.c_iflag &= ~(IGNBRK|BRKINT|PARMRK|ISTRIP
    80053690:	57a2                	lw	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1792
    tty.c_lflag &= ~(ECHO|ECHONL|ICANON|IEXTEN);
    80053692:	7761                	lui	a4,0xffff8
    80053694:	fb570713          	addi	a4,a4,-75 # ffffffffffff7fb5 <_ebss+0xffffffff7fef6e4f>
quickjs-nuttx/quickjs-libc.c:1789
    tty.c_iflag &= ~(IGNBRK|BRKINT|PARMRK|ISTRIP
    80053698:	a147f793          	andi	a5,a5,-1516
    8005369c:	d43e                	sw	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1791
    tty.c_oflag |= OPOST;
    8005369e:	57b2                	lw	a5,44(sp)
quickjs-nuttx/quickjs-libc.c:1798
    tcsetattr(fd, TCSANOW, &tty);
    800536a0:	4552                	lw	a0,20(sp)
    800536a2:	1030                	addi	a2,sp,40
quickjs-nuttx/quickjs-libc.c:1791
    tty.c_oflag |= OPOST;
    800536a4:	0017e793          	ori	a5,a5,1
    800536a8:	d63e                	sw	a5,44(sp)
quickjs-nuttx/quickjs-libc.c:1792
    tty.c_lflag &= ~(ECHO|ECHONL|ICANON|IEXTEN);
    800536aa:	57d2                	lw	a5,52(sp)
quickjs-nuttx/quickjs-libc.c:1798
    tcsetattr(fd, TCSANOW, &tty);
    800536ac:	4581                	li	a1,0
quickjs-nuttx/quickjs-libc.c:1796
    tty.c_cc[VTIME] = 0;
    800536ae:	02010ea3          	sb	zero,61(sp)
quickjs-nuttx/quickjs-libc.c:1792
    tty.c_lflag &= ~(ECHO|ECHONL|ICANON|IEXTEN);
    800536b2:	8ff9                	and	a5,a5,a4
    800536b4:	da3e                	sw	a5,52(sp)
quickjs-nuttx/quickjs-libc.c:1793
    tty.c_cflag &= ~(CSIZE|PARENB);
    800536b6:	57c2                	lw	a5,48(sp)
    800536b8:	ecf7f793          	andi	a5,a5,-305
quickjs-nuttx/quickjs-libc.c:1794
    tty.c_cflag |= CS8;
    800536bc:	0307e793          	ori	a5,a5,48
    800536c0:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs-libc.c:1795
    tty.c_cc[VMIN] = 1;
    800536c2:	4785                	li	a5,1
    800536c4:	02f10f23          	sb	a5,62(sp)
quickjs-nuttx/quickjs-libc.c:1798
    tcsetattr(fd, TCSANOW, &tty);
    800536c8:	722100ef          	jal	ra,80063dea <tcsetattr>
quickjs-nuttx/quickjs-libc.c:1800
    atexit(term_exit);
    800536cc:	00000517          	auipc	a0,0x0
    800536d0:	f7050513          	addi	a0,a0,-144 # 8005363c <term_exit>
    800536d4:	0f6100ef          	jal	ra,800637ca <atexit>
quickjs-nuttx/quickjs-libc.c:1801
    return JS_UNDEFINED;
    800536d8:	478d                	li	a5,3
    800536da:	ec02                	sd	zero,24(sp)
    800536dc:	b751                	j	80053660 <js_os_ttySetRaw+0x14>

00000000800536de <js_os_ttyGetWinSize>:
js_os_ttyGetWinSize():
quickjs-nuttx/quickjs-libc.c:1748
{
    800536de:	7175                	addi	sp,sp,-144
    800536e0:	e122                	sd	s0,128(sp)
    800536e2:	e506                	sd	ra,136(sp)
quickjs-nuttx/quickjs-libc.c:1753
    if (JS_ToInt32(ctx, &fd, argv[0]))
    800536e4:	6310                	ld	a2,0(a4)
    800536e6:	6714                	ld	a3,8(a4)
    800536e8:	084c                	addi	a1,sp,20
quickjs-nuttx/quickjs-libc.c:1748
{
    800536ea:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1753
    if (JS_ToInt32(ctx, &fd, argv[0]))
    800536ec:	ccfce0ef          	jal	ra,800223ba <JS_ToInt32>
    800536f0:	c509                	beqz	a0,800536fa <js_os_ttyGetWinSize+0x1c>
quickjs-nuttx/quickjs-libc.c:1754
        return JS_EXCEPTION;
    800536f2:	f802                	sd	zero,48(sp)
    800536f4:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1764
        return JS_NULL;
    800536f6:	fc3e                	sd	a5,56(sp)
    800536f8:	a835                	j	80053734 <js_os_ttyGetWinSize+0x56>
quickjs-nuttx/quickjs-libc.c:1755
    if (ioctl(fd, TIOCGWINSZ, &ws) == 0 &&
    800536fa:	4552                	lw	a0,20(sp)
    800536fc:	0830                	addi	a2,sp,24
    800536fe:	10b00593          	li	a1,267
    80053702:	010110ef          	jal	ra,80064712 <ioctl>
    80053706:	e935                	bnez	a0,8005377a <js_os_ttyGetWinSize+0x9c>
quickjs-nuttx/quickjs-libc.c:1755 (discriminator 1)
    80053708:	01a15703          	lhu	a4,26(sp)
    8005370c:	478d                	li	a5,3
    8005370e:	06e7f663          	bgeu	a5,a4,8005377a <js_os_ttyGetWinSize+0x9c>
quickjs-nuttx/quickjs-libc.c:1756
        ws.ws_col >= 4 && ws.ws_row >= 4) {
    80053712:	01815703          	lhu	a4,24(sp)
    80053716:	06e7f263          	bgeu	a5,a4,8005377a <js_os_ttyGetWinSize+0x9c>
quickjs-nuttx/quickjs-libc.c:1757
        obj = JS_NewArray(ctx);
    8005371a:	8522                	mv	a0,s0
    8005371c:	b3fc80ef          	jal	ra,8001c25a <JS_NewArray>
    80053720:	f02a                	sd	a0,32(sp)
    80053722:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:1758
        if (JS_IsException(obj))
    80053724:	0005871b          	sext.w	a4,a1
    80053728:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1757
        obj = JS_NewArray(ctx);
    8005372a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:1758
        if (JS_IsException(obj))
    8005372c:	00f71a63          	bne	a4,a5,80053740 <js_os_ttyGetWinSize+0x62>
quickjs-nuttx/quickjs-libc.c:1759
            return obj;
    80053730:	f82a                	sd	a0,48(sp)
    80053732:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:1766 (discriminator 1)
}
    80053734:	60aa                	ld	ra,136(sp)
    80053736:	640a                	ld	s0,128(sp)
    80053738:	7542                	ld	a0,48(sp)
    8005373a:	75e2                	ld	a1,56(sp)
    8005373c:	6149                	addi	sp,sp,144
    8005373e:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1760
        JS_DefinePropertyValueUint32(ctx, obj, 0, JS_NewInt32(ctx, ws.ws_col), JS_PROP_C_W_E);
    80053740:	01a15783          	lhu	a5,26(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80053744:	f882                	sd	zero,112(sp)
js_os_ttyGetWinSize():
quickjs-nuttx/quickjs-libc.c:1760
    80053746:	85aa                	mv	a1,a0
    80053748:	d8be                	sw	a5,112(sp)
    8005374a:	7746                	ld	a4,112(sp)
    8005374c:	481d                	li	a6,7
    8005374e:	4781                	li	a5,0
    80053750:	4681                	li	a3,0
    80053752:	8522                	mv	a0,s0
    80053754:	89ddd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs-libc.c:1761
        JS_DefinePropertyValueUint32(ctx, obj, 1, JS_NewInt32(ctx, ws.ws_row), JS_PROP_C_W_E);
    80053758:	01815783          	lhu	a5,24(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8005375c:	f082                	sd	zero,96(sp)
js_os_ttyGetWinSize():
quickjs-nuttx/quickjs-libc.c:1761
    8005375e:	7582                	ld	a1,32(sp)
    80053760:	d0be                	sw	a5,96(sp)
    80053762:	7706                	ld	a4,96(sp)
    80053764:	7622                	ld	a2,40(sp)
    80053766:	4781                	li	a5,0
    80053768:	481d                	li	a6,7
    8005376a:	4685                	li	a3,1
    8005376c:	8522                	mv	a0,s0
    8005376e:	883dd0ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
quickjs-nuttx/quickjs-libc.c:1762
        return obj;
    80053772:	7782                	ld	a5,32(sp)
    80053774:	f83e                	sd	a5,48(sp)
    80053776:	77a2                	ld	a5,40(sp)
    80053778:	bfbd                	j	800536f6 <js_os_ttyGetWinSize+0x18>
quickjs-nuttx/quickjs-libc.c:1764
        return JS_NULL;
    8005377a:	f802                	sd	zero,48(sp)
    8005377c:	4789                	li	a5,2
    8005377e:	bfa5                	j	800536f6 <js_os_ttyGetWinSize+0x18>

0000000080053780 <js_os_ioctl>:
js_os_ioctl():
quickjs-nuttx/quickjs-libc.c:1643
{
    80053780:	7159                	addi	sp,sp,-112
    80053782:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:1648
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053784:	6714                	ld	a3,8(a4)
    80053786:	6310                	ld	a2,0(a4)
quickjs-nuttx/quickjs-libc.c:1643
{
    80053788:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs-libc.c:1648
    if (JS_ToInt32(ctx, &fd, argv[0]))
    8005378a:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs-libc.c:1643
{
    8005378c:	f0a2                	sd	s0,96(sp)
    8005378e:	eca6                	sd	s1,88(sp)
    80053790:	f486                	sd	ra,104(sp)
    80053792:	e8ca                	sd	s2,80(sp)
    80053794:	84aa                	mv	s1,a0
    80053796:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:1648
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053798:	c23ce0ef          	jal	ra,800223ba <JS_ToInt32>
    8005379c:	cd01                	beqz	a0,800537b4 <js_os_ioctl+0x34>
quickjs-nuttx/quickjs-libc.c:1649
        return JS_EXCEPTION;
    8005379e:	4799                	li	a5,6
    800537a0:	f002                	sd	zero,32(sp)
    800537a2:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1662 (discriminator 1)
}
    800537a4:	70a6                	ld	ra,104(sp)
    800537a6:	7406                	ld	s0,96(sp)
    800537a8:	7502                	ld	a0,32(sp)
    800537aa:	75a2                	ld	a1,40(sp)
    800537ac:	64e6                	ld	s1,88(sp)
    800537ae:	6946                	ld	s2,80(sp)
    800537b0:	6165                	addi	sp,sp,112
    800537b2:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1650
    if (JS_ToInt32(ctx, &req, argv[1]))
    800537b4:	6810                	ld	a2,16(s0)
    800537b6:	6c14                	ld	a3,24(s0)
    800537b8:	084c                	addi	a1,sp,20
    800537ba:	8526                	mv	a0,s1
    800537bc:	bffce0ef          	jal	ra,800223ba <JS_ToInt32>
    800537c0:	fd79                	bnez	a0,8005379e <js_os_ioctl+0x1e>
quickjs-nuttx/quickjs-libc.c:1652
    is_bigint = JS_IsBigInt(ctx, argv[2]);
    800537c2:	02843903          	ld	s2,40(s0)
quickjs-nuttx/quickjs-libc.c:1653
    if (JS_ToInt64Ext(ctx, &arg, argv[2]))
    800537c6:	7010                	ld	a2,32(s0)
    800537c8:	082c                	addi	a1,sp,24
    800537ca:	86ca                	mv	a3,s2
    800537cc:	8526                	mv	a0,s1
    800537ce:	979d20ef          	jal	ra,80026146 <JS_ToInt64Ext>
    800537d2:	f571                	bnez	a0,8005379e <js_os_ioctl+0x1e>
quickjs-nuttx/quickjs-libc.c:1655
    ret = ioctl(fd, req, arg);
    800537d4:	45d2                	lw	a1,20(sp)
    800537d6:	6662                	ld	a2,24(sp)
    800537d8:	4542                	lw	a0,16(sp)
    800537da:	739100ef          	jal	ra,80064712 <ioctl>
quickjs-nuttx/quickjs-libc.c:1656
    if (ret == -1)
    800537de:	57fd                	li	a5,-1
quickjs-nuttx/quickjs-libc.c:1655
    ret = ioctl(fd, req, arg);
    800537e0:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs-libc.c:1656
    if (ret == -1)
    800537e2:	00f51763          	bne	a0,a5,800537f0 <js_os_ioctl+0x70>
quickjs-nuttx/quickjs-libc.c:1657
        ret = -errno;
    800537e6:	2320d0ef          	jal	ra,80060a18 <__errno>
    800537ea:	410c                	lw	a1,0(a0)
    800537ec:	40b005bb          	negw	a1,a1
quickjs-nuttx/quickjs-libc.c:1658
    if (is_bigint)
    800537f0:	2901                	sext.w	s2,s2
    800537f2:	57d9                	li	a5,-10
    800537f4:	00f91863          	bne	s2,a5,80053804 <js_os_ioctl+0x84>
quickjs-nuttx/quickjs-libc.c:1659
        return JS_NewBigInt64(ctx, ret);
    800537f8:	8526                	mv	a0,s1
    800537fa:	8b1ca0ef          	jal	ra,8001e0aa <JS_NewBigInt64>
    800537fe:	f02a                	sd	a0,32(sp)
    80053800:	f42e                	sd	a1,40(sp)
    80053802:	b74d                	j	800537a4 <js_os_ioctl+0x24>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053804:	da02                	sw	zero,52(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    80053806:	d82e                	sw	a1,48(sp)
    80053808:	77c2                	ld	a5,48(sp)
    8005380a:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.h:531
    return v;
    8005380c:	f03e                	sd	a5,32(sp)
js_os_ioctl():
quickjs-nuttx/quickjs-libc.c:1661
        return JS_NewInt64(ctx, ret);
    8005380e:	bf59                	j	800537a4 <js_os_ioctl+0x24>

0000000080053810 <js_os_isatty>:
js_os_isatty():
quickjs-nuttx/quickjs-libc.c:1696
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053810:	6310                	ld	a2,0(a4)
    80053812:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:1694
{
    80053814:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs-libc.c:1696
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053816:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs-libc.c:1694
{
    80053818:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs-libc.c:1696
    if (JS_ToInt32(ctx, &fd, argv[0]))
    8005381a:	ba1ce0ef          	jal	ra,800223ba <JS_ToInt32>
    8005381e:	c909                	beqz	a0,80053830 <js_os_isatty+0x20>
quickjs-nuttx/quickjs-libc.c:1697
        return JS_EXCEPTION;
    80053820:	f002                	sd	zero,32(sp)
    80053822:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1699
}
    80053824:	60a6                	ld	ra,72(sp)
    80053826:	f43e                	sd	a5,40(sp)
    80053828:	7502                	ld	a0,32(sp)
    8005382a:	75a2                	ld	a1,40(sp)
    8005382c:	6161                	addi	sp,sp,80
    8005382e:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1698
    return JS_NewBool(ctx, (isatty(fd) != 0));
    80053830:	4572                	lw	a0,28(sp)
    80053832:	596100ef          	jal	ra,80063dc8 <isatty>
    80053836:	00a03533          	snez	a0,a0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8005383a:	da02                	sw	zero,52(sp)
    8005383c:	d82a                	sw	a0,48(sp)
    8005383e:	77c2                	ld	a5,48(sp)
    80053840:	f03e                	sd	a5,32(sp)
    80053842:	4785                	li	a5,1
    80053844:	b7c5                	j	80053824 <js_os_isatty+0x14>

0000000080053846 <js_os_seek>:
js_os_seek():
quickjs-nuttx/quickjs-libc.c:1619
{
    80053846:	7159                	addi	sp,sp,-112
    80053848:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:1624
    if (JS_ToInt32(ctx, &fd, argv[0]))
    8005384a:	6714                	ld	a3,8(a4)
    8005384c:	6310                	ld	a2,0(a4)
quickjs-nuttx/quickjs-libc.c:1619
{
    8005384e:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs-libc.c:1624
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053850:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs-libc.c:1619
{
    80053852:	f0a2                	sd	s0,96(sp)
    80053854:	eca6                	sd	s1,88(sp)
    80053856:	f486                	sd	ra,104(sp)
    80053858:	e8ca                	sd	s2,80(sp)
    8005385a:	84aa                	mv	s1,a0
    8005385c:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:1624
    if (JS_ToInt32(ctx, &fd, argv[0]))
    8005385e:	b5dce0ef          	jal	ra,800223ba <JS_ToInt32>
    80053862:	cd01                	beqz	a0,8005387a <js_os_seek+0x34>
quickjs-nuttx/quickjs-libc.c:1625
        return JS_EXCEPTION;
    80053864:	4799                	li	a5,6
    80053866:	f002                	sd	zero,32(sp)
    80053868:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1638 (discriminator 1)
}
    8005386a:	70a6                	ld	ra,104(sp)
    8005386c:	7406                	ld	s0,96(sp)
    8005386e:	7502                	ld	a0,32(sp)
    80053870:	75a2                	ld	a1,40(sp)
    80053872:	64e6                	ld	s1,88(sp)
    80053874:	6946                	ld	s2,80(sp)
    80053876:	6165                	addi	sp,sp,112
    80053878:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1626
    is_bigint = JS_IsBigInt(ctx, argv[1]);
    8005387a:	01843903          	ld	s2,24(s0)
quickjs-nuttx/quickjs-libc.c:1627
    if (JS_ToInt64Ext(ctx, &pos, argv[1]))
    8005387e:	6810                	ld	a2,16(s0)
    80053880:	082c                	addi	a1,sp,24
    80053882:	86ca                	mv	a3,s2
    80053884:	8526                	mv	a0,s1
    80053886:	8c1d20ef          	jal	ra,80026146 <JS_ToInt64Ext>
    8005388a:	fd69                	bnez	a0,80053864 <js_os_seek+0x1e>
quickjs-nuttx/quickjs-libc.c:1629
    if (JS_ToInt32(ctx, &whence, argv[2]))
    8005388c:	7010                	ld	a2,32(s0)
    8005388e:	7414                	ld	a3,40(s0)
    80053890:	084c                	addi	a1,sp,20
    80053892:	8526                	mv	a0,s1
    80053894:	b27ce0ef          	jal	ra,800223ba <JS_ToInt32>
    80053898:	f571                	bnez	a0,80053864 <js_os_seek+0x1e>
quickjs-nuttx/quickjs-libc.c:1631
    ret = lseek(fd, pos, whence);
    8005389a:	45e2                	lw	a1,24(sp)
    8005389c:	4652                	lw	a2,20(sp)
    8005389e:	4542                	lw	a0,16(sp)
    800538a0:	6b3100ef          	jal	ra,80064752 <lseek>
quickjs-nuttx/quickjs-libc.c:1632
    if (ret == -1)
    800538a4:	57fd                	li	a5,-1
quickjs-nuttx/quickjs-libc.c:1631
    ret = lseek(fd, pos, whence);
    800538a6:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs-libc.c:1632
    if (ret == -1)
    800538a8:	00f51763          	bne	a0,a5,800538b6 <js_os_seek+0x70>
quickjs-nuttx/quickjs-libc.c:1633
        ret = -errno;
    800538ac:	16c0d0ef          	jal	ra,80060a18 <__errno>
    800538b0:	410c                	lw	a1,0(a0)
    800538b2:	40b005bb          	negw	a1,a1
quickjs-nuttx/quickjs-libc.c:1634
    if (is_bigint)
    800538b6:	2901                	sext.w	s2,s2
    800538b8:	57d9                	li	a5,-10
    800538ba:	00f91863          	bne	s2,a5,800538ca <js_os_seek+0x84>
quickjs-nuttx/quickjs-libc.c:1635
        return JS_NewBigInt64(ctx, ret);
    800538be:	8526                	mv	a0,s1
    800538c0:	feaca0ef          	jal	ra,8001e0aa <JS_NewBigInt64>
    800538c4:	f02a                	sd	a0,32(sp)
    800538c6:	f42e                	sd	a1,40(sp)
    800538c8:	b74d                	j	8005386a <js_os_seek+0x24>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800538ca:	da02                	sw	zero,52(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800538cc:	d82e                	sw	a1,48(sp)
    800538ce:	77c2                	ld	a5,48(sp)
    800538d0:	f402                	sd	zero,40(sp)
quickjs-nuttx/quickjs.h:531
    return v;
    800538d2:	f03e                	sd	a5,32(sp)
js_os_seek():
quickjs-nuttx/quickjs-libc.c:1637
        return JS_NewInt64(ctx, ret);
    800538d4:	bf59                	j	8005386a <js_os_seek+0x24>

00000000800538d6 <js_new_message_pipe>:
js_new_message_pipe():
quickjs-nuttx/quickjs-libc.c:3253
    sab = (JSSABHeader *)((uint8_t *)ptr - sizeof(JSSABHeader));
    atomic_add_int(&sab->ref_count, 1);
}

static JSWorkerMessagePipe *js_new_message_pipe(void)
{
    800538d6:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs-libc.c:3257
    JSWorkerMessagePipe *ps;
    int pipe_fds[2];
    
    if (pipe(pipe_fds) < 0)
    800538d8:	4581                	li	a1,0
    800538da:	0028                	addi	a0,sp,8
quickjs-nuttx/quickjs-libc.c:3253
{
    800538dc:	e822                	sd	s0,16(sp)
    800538de:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs-libc.c:3257
    if (pipe(pipe_fds) < 0)
    800538e0:	3720c0ef          	jal	ra,8005fc52 <pipe2>
quickjs-nuttx/quickjs-libc.c:3258
        return NULL;
    800538e4:	4401                	li	s0,0
quickjs-nuttx/quickjs-libc.c:3257
    if (pipe(pipe_fds) < 0)
    800538e6:	00054e63          	bltz	a0,80053902 <js_new_message_pipe+0x2c>
quickjs-nuttx/quickjs-libc.c:3260

    ps = malloc(sizeof(*ps));
    800538ea:	04800513          	li	a0,72
    800538ee:	3d40c0ef          	jal	ra,8005fcc2 <malloc>
    800538f2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3261
    if (!ps) {
    800538f4:	ed01                	bnez	a0,8005390c <js_new_message_pipe+0x36>
quickjs-nuttx/quickjs-libc.c:3262
        close(pipe_fds[0]);
    800538f6:	4522                	lw	a0,8(sp)
    800538f8:	56d100ef          	jal	ra,80064664 <close>
quickjs-nuttx/quickjs-libc.c:3263
        close(pipe_fds[1]);
    800538fc:	4532                	lw	a0,12(sp)
    800538fe:	567100ef          	jal	ra,80064664 <close>
quickjs-nuttx/quickjs-libc.c:3272
    init_list_head(&ps->msg_queue);
    pthread_mutex_init(&ps->mutex, NULL);
    ps->read_fd = pipe_fds[0];
    ps->write_fd = pipe_fds[1];
    return ps;
}
    80053902:	60e2                	ld	ra,24(sp)
    80053904:	8522                	mv	a0,s0
    80053906:	6442                	ld	s0,16(sp)
    80053908:	6105                	addi	sp,sp,32
    8005390a:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3266
    ps->ref_count = 1;
    8005390c:	4785                	li	a5,1
    8005390e:	c11c                	sw	a5,0(a0)
quickjs-nuttx/quickjs-libc.c:3267
    init_list_head(&ps->msg_queue);
    80053910:	03050793          	addi	a5,a0,48
init_list_head():
quickjs-nuttx/list.h:43
    head->prev = head;
    80053914:	f91c                	sd	a5,48(a0)
quickjs-nuttx/list.h:44
    head->next = head;
    80053916:	fd1c                	sd	a5,56(a0)
js_new_message_pipe():
quickjs-nuttx/quickjs-libc.c:3268
    pthread_mutex_init(&ps->mutex, NULL);
    80053918:	4581                	li	a1,0
    8005391a:	0521                	addi	a0,a0,8
    8005391c:	78f100ef          	jal	ra,800648aa <pthread_mutex_init>
quickjs-nuttx/quickjs-libc.c:3269
    ps->read_fd = pipe_fds[0];
    80053920:	67a2                	ld	a5,8(sp)
    80053922:	e03c                	sd	a5,64(s0)
quickjs-nuttx/quickjs-libc.c:3271
    return ps;
    80053924:	bff9                	j	80053902 <js_new_message_pipe+0x2c>

0000000080053926 <atomic_add_int>:
atomic_add_int():
quickjs-nuttx/quickjs-libc.c:3219
    return atomic_fetch_add((_Atomic(uint32_t) *)ptr, v) + v;
    80053926:	0f50000f          	fence	iorw,ow
    8005392a:	04b527af          	amoadd.w.aq	a5,a1,(a0)
quickjs-nuttx/quickjs-libc.c:3220
}
    8005392e:	00b7853b          	addw	a0,a5,a1
    80053932:	8082                	ret

0000000080053934 <js_sab_dup>:
js_sab_dup():
quickjs-nuttx/quickjs-libc.c:3246
{
    80053934:	852e                	mv	a0,a1
quickjs-nuttx/quickjs-libc.c:3249
    atomic_add_int(&sab->ref_count, 1);
    80053936:	1561                	addi	a0,a0,-8
    80053938:	4585                	li	a1,1
    8005393a:	fedff06f          	j	80053926 <atomic_add_int>

000000008005393e <js_worker_postMessage>:
js_worker_postMessage():
quickjs-nuttx/quickjs-libc.c:3506
    return JS_EXCEPTION;
}

static JSValue js_worker_postMessage(JSContext *ctx, JSValueConst this_val,
                                     int argc, JSValueConst *argv)
{
    8005393e:	7175                	addi	sp,sp,-144
quickjs-nuttx/quickjs-libc.c:3507
    JSWorkerData *worker = JS_GetOpaque2(ctx, this_val, js_worker_class_id);
    80053940:	000ad697          	auipc	a3,0xad
    80053944:	7f86a683          	lw	a3,2040(a3) # 80101138 <js_worker_class_id>
quickjs-nuttx/quickjs-libc.c:3506
{
    80053948:	e122                	sd	s0,128(sp)
    8005394a:	fca6                	sd	s1,120(sp)
    8005394c:	e506                	sd	ra,136(sp)
    8005394e:	f8ca                	sd	s2,112(sp)
    80053950:	f4ce                	sd	s3,104(sp)
    80053952:	f0d2                	sd	s4,96(sp)
    80053954:	ecd6                	sd	s5,88(sp)
    80053956:	84aa                	mv	s1,a0
    80053958:	e82e                	sd	a1,16(sp)
    8005395a:	ec32                	sd	a2,24(sp)
    8005395c:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:3507
    JSWorkerData *worker = JS_GetOpaque2(ctx, this_val, js_worker_class_id);
    8005395e:	e91c40ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs-libc.c:3514
    size_t data_len, sab_tab_len, i;
    uint8_t *data;
    JSWorkerMessage *msg;
    uint8_t **sab_tab;
    
    if (!worker)
    80053962:	e501                	bnez	a0,8005396a <js_worker_postMessage+0x2c>
quickjs-nuttx/quickjs-libc.c:3575
        free(msg->sab_tab);
        free(msg);
    }
    js_free(ctx, data);
    js_free(ctx, sab_tab);
    return JS_EXCEPTION;
    80053964:	e082                	sd	zero,64(sp)
    80053966:	4799                	li	a5,6
    80053968:	a8f9                	j	80053a46 <js_worker_postMessage+0x108>
quickjs-nuttx/quickjs-libc.c:3517
    data = JS_WriteObject2(ctx, &data_len, argv[0],
    8005396a:	6010                	ld	a2,0(s0)
    8005396c:	6414                	ld	a3,8(s0)
    8005396e:	8a2a                	mv	s4,a0
    80053970:	03010813          	addi	a6,sp,48
    80053974:	183c                	addi	a5,sp,56
    80053976:	4731                	li	a4,12
    80053978:	102c                	addi	a1,sp,40
    8005397a:	8526                	mv	a0,s1
    8005397c:	dbfe80ef          	jal	ra,8003c73a <JS_WriteObject2>
    80053980:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:3520
    if (!data)
    80053982:	d16d                	beqz	a0,80053964 <js_worker_postMessage+0x26>
quickjs-nuttx/quickjs-libc.c:3523
    msg = malloc(sizeof(*msg));
    80053984:	03000513          	li	a0,48
    80053988:	33a0c0ef          	jal	ra,8005fcc2 <malloc>
    8005398c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3524
    if (!msg)
    8005398e:	0e050c63          	beqz	a0,80053a86 <js_worker_postMessage+0x148>
quickjs-nuttx/quickjs-libc.c:3530
    msg->data = malloc(data_len);
    80053992:	7aa2                	ld	s5,40(sp)
quickjs-nuttx/quickjs-libc.c:3527
    msg->sab_tab = NULL;
    80053994:	02053023          	sd	zero,32(a0)
quickjs-nuttx/quickjs-libc.c:3530
    msg->data = malloc(data_len);
    80053998:	8556                	mv	a0,s5
    8005399a:	3280c0ef          	jal	ra,8005fcc2 <malloc>
    8005399e:	e808                	sd	a0,16(s0)
    800539a0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:3531
    if (!msg->data)
    800539a2:	c969                	beqz	a0,80053a74 <js_worker_postMessage+0x136>
quickjs-nuttx/quickjs-libc.c:3533
    memcpy(msg->data, data, data_len);
    800539a4:	8656                	mv	a2,s5
    800539a6:	85ca                	mv	a1,s2
    800539a8:	404100ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs-libc.c:3534
    msg->data_len = data_len;
    800539ac:	01543c23          	sd	s5,24(s0)
quickjs-nuttx/quickjs-libc.c:3536
    msg->sab_tab = malloc(sizeof(msg->sab_tab[0]) * sab_tab_len);
    800539b0:	7ac2                	ld	s5,48(sp)
    800539b2:	003a9613          	slli	a2,s5,0x3
    800539b6:	8532                	mv	a0,a2
    800539b8:	e432                	sd	a2,8(sp)
    800539ba:	3080c0ef          	jal	ra,8005fcc2 <malloc>
    800539be:	f008                	sd	a0,32(s0)
quickjs-nuttx/quickjs-libc.c:3537
    if (!msg->sab_tab)
    800539c0:	c955                	beqz	a0,80053a74 <js_worker_postMessage+0x136>
quickjs-nuttx/quickjs-libc.c:3539
    memcpy(msg->sab_tab, sab_tab, sizeof(msg->sab_tab[0]) * sab_tab_len);
    800539c2:	6622                	ld	a2,8(sp)
    800539c4:	75e2                	ld	a1,56(sp)
    800539c6:	3e6100ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs-libc.c:3542
    js_free(ctx, data);
    800539ca:	8526                	mv	a0,s1
    800539cc:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs-libc.c:3540
    msg->sab_tab_len = sab_tab_len;
    800539ce:	03543423          	sd	s5,40(s0)
quickjs-nuttx/quickjs-libc.c:3542
    js_free(ctx, data);
    800539d2:	e24b70ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:3543
    js_free(ctx, sab_tab);
    800539d6:	75e2                	ld	a1,56(sp)
    800539d8:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:3546
    for(i = 0; i < msg->sab_tab_len; i++) {
    800539da:	4481                	li	s1,0
quickjs-nuttx/quickjs-libc.c:3543
    js_free(ctx, sab_tab);
    800539dc:	e1ab70ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:3546 (discriminator 1)
    for(i = 0; i < msg->sab_tab_len; i++) {
    800539e0:	741c                	ld	a5,40(s0)
    800539e2:	06f4ee63          	bltu	s1,a5,80053a5e <js_worker_postMessage+0x120>
quickjs-nuttx/quickjs-libc.c:3550
    ps = worker->send_pipe;
    800539e6:	008a3483          	ld	s1,8(s4) # fffffffffffff008 <_ebss+0xffffffff7fefdea2>
quickjs-nuttx/quickjs-libc.c:3551
    pthread_mutex_lock(&ps->mutex);
    800539ea:	00848913          	addi	s2,s1,8
    800539ee:	854a                	mv	a0,s2
    800539f0:	5320d0ef          	jal	ra,80060f22 <pthread_mutex_lock>
quickjs-nuttx/quickjs-libc.c:3553
    if (list_empty(&ps->msg_queue)) {
    800539f4:	7c9c                	ld	a5,56(s1)
    800539f6:	03048993          	addi	s3,s1,48
    800539fa:	02f99b63          	bne	s3,a5,80053a30 <js_worker_postMessage+0xf2>
quickjs-nuttx/quickjs-libc.c:3554
        uint8_t ch = '\0';
    800539fe:	04010023          	sb	zero,64(sp)
quickjs-nuttx/quickjs-libc.c:3560
            if (ret < 0 && (errno != EAGAIN || errno != EINTR))
    80053a02:	4aad                	li	s5,11
    80053a04:	4a11                	li	s4,4
quickjs-nuttx/quickjs-libc.c:3557
            ret = write(ps->write_fd, &ch, 1);
    80053a06:	40e8                	lw	a0,68(s1)
    80053a08:	4605                	li	a2,1
    80053a0a:	008c                	addi	a1,sp,64
    80053a0c:	7e7100ef          	jal	ra,800649f2 <write>
    80053a10:	2501                	sext.w	a0,a0
quickjs-nuttx/quickjs-libc.c:3558
            if (ret == 1)
    80053a12:	4785                	li	a5,1
    80053a14:	00f50e63          	beq	a0,a5,80053a30 <js_worker_postMessage+0xf2>
quickjs-nuttx/quickjs-libc.c:3560
            if (ret < 0 && (errno != EAGAIN || errno != EINTR))
    80053a18:	fe0557e3          	bgez	a0,80053a06 <js_worker_postMessage+0xc8>
quickjs-nuttx/quickjs-libc.c:3560 (discriminator 1)
    80053a1c:	7fd0c0ef          	jal	ra,80060a18 <__errno>
    80053a20:	411c                	lw	a5,0(a0)
    80053a22:	01579763          	bne	a5,s5,80053a30 <js_worker_postMessage+0xf2>
quickjs-nuttx/quickjs-libc.c:3560 (discriminator 2)
    80053a26:	7f30c0ef          	jal	ra,80060a18 <__errno>
    80053a2a:	411c                	lw	a5,0(a0)
    80053a2c:	fd478de3          	beq	a5,s4,80053a06 <js_worker_postMessage+0xc8>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80053a30:	789c                	ld	a5,48(s1)
js_worker_postMessage():
quickjs-nuttx/quickjs-libc.c:3565
    pthread_mutex_unlock(&ps->mutex);
    80053a32:	854a                	mv	a0,s2
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80053a34:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80053a36:	e01c                	sd	a5,0(s0)
quickjs-nuttx/list.h:53
    el->next = next;
    80053a38:	01343423          	sd	s3,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    80053a3c:	f880                	sd	s0,48(s1)
js_worker_postMessage():
quickjs-nuttx/quickjs-libc.c:3565
    80053a3e:	695100ef          	jal	ra,800648d2 <pthread_mutex_unlock>
quickjs-nuttx/quickjs-libc.c:3566
    return JS_UNDEFINED;
    80053a42:	478d                	li	a5,3
    80053a44:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs-libc.c:3577
    
}
    80053a46:	60aa                	ld	ra,136(sp)
    80053a48:	640a                	ld	s0,128(sp)
quickjs-nuttx/quickjs-libc.c:3566
    return JS_UNDEFINED;
    80053a4a:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs-libc.c:3577
}
    80053a4c:	6506                	ld	a0,64(sp)
    80053a4e:	65a6                	ld	a1,72(sp)
    80053a50:	74e6                	ld	s1,120(sp)
    80053a52:	7946                	ld	s2,112(sp)
    80053a54:	79a6                	ld	s3,104(sp)
    80053a56:	7a06                	ld	s4,96(sp)
    80053a58:	6ae6                	ld	s5,88(sp)
    80053a5a:	6149                	addi	sp,sp,144
    80053a5c:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3547 (discriminator 3)
        js_sab_dup(NULL, msg->sab_tab[i]);
    80053a5e:	701c                	ld	a5,32(s0)
    80053a60:	00349713          	slli	a4,s1,0x3
js_sab_dup():
quickjs-nuttx/quickjs-libc.c:3249 (discriminator 3)
    atomic_add_int(&sab->ref_count, 1);
    80053a64:	4585                	li	a1,1
js_worker_postMessage():
quickjs-nuttx/quickjs-libc.c:3547 (discriminator 3)
        js_sab_dup(NULL, msg->sab_tab[i]);
    80053a66:	97ba                	add	a5,a5,a4
js_sab_dup():
quickjs-nuttx/quickjs-libc.c:3249 (discriminator 3)
    atomic_add_int(&sab->ref_count, 1);
    80053a68:	6388                	ld	a0,0(a5)
js_worker_postMessage():
quickjs-nuttx/quickjs-libc.c:3546 (discriminator 3)
    for(i = 0; i < msg->sab_tab_len; i++) {
    80053a6a:	0485                	addi	s1,s1,1
js_sab_dup():
quickjs-nuttx/quickjs-libc.c:3249 (discriminator 3)
    atomic_add_int(&sab->ref_count, 1);
    80053a6c:	1561                	addi	a0,a0,-8
    80053a6e:	eb9ff0ef          	jal	ra,80053926 <atomic_add_int>
js_worker_postMessage():
quickjs-nuttx/quickjs-libc.c:3546 (discriminator 3)
    for(i = 0; i < msg->sab_tab_len; i++) {
    80053a72:	b7bd                	j	800539e0 <js_worker_postMessage+0xa2>
quickjs-nuttx/quickjs-libc.c:3569
        free(msg->data);
    80053a74:	854e                	mv	a0,s3
    80053a76:	2400c0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3570
        free(msg->sab_tab);
    80053a7a:	7008                	ld	a0,32(s0)
    80053a7c:	23a0c0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3571
        free(msg);
    80053a80:	8522                	mv	a0,s0
    80053a82:	2340c0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3573
    js_free(ctx, data);
    80053a86:	85ca                	mv	a1,s2
    80053a88:	8526                	mv	a0,s1
    80053a8a:	d6cb70ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:3574
    js_free(ctx, sab_tab);
    80053a8e:	75e2                	ld	a1,56(sp)
    80053a90:	8526                	mv	a0,s1
    80053a92:	d64b70ef          	jal	ra,8000aff6 <js_free>
    80053a96:	b5f9                	j	80053964 <js_worker_postMessage+0x26>

0000000080053a98 <js_worker_ctor_internal>:
js_worker_ctor_internal():
quickjs-nuttx/quickjs-libc.c:3394
{
    80053a98:	7159                	addi	sp,sp,-112
    80053a9a:	eca6                	sd	s1,88(sp)
    80053a9c:	e4ce                	sd	s3,72(sp)
    80053a9e:	e0d2                	sd	s4,64(sp)
    80053aa0:	89ba                	mv	s3,a4
    80053aa2:	f486                	sd	ra,104(sp)
    80053aa4:	f0a2                	sd	s0,96(sp)
    80053aa6:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs-libc.c:3395
    JSValue obj = JS_UNDEFINED, proto;
    80053aa8:	e802                	sd	zero,16(sp)
quickjs-nuttx/quickjs-libc.c:3399
    if (JS_IsUndefined(new_target)) {
    80053aaa:	0006079b          	sext.w	a5,a2
    80053aae:	470d                	li	a4,3
quickjs-nuttx/quickjs-libc.c:3394
{
    80053ab0:	84aa                	mv	s1,a0
    80053ab2:	8a36                	mv	s4,a3
quickjs-nuttx/quickjs-libc.c:3399
    if (JS_IsUndefined(new_target)) {
    80053ab4:	08e79563          	bne	a5,a4,80053b3e <js_worker_ctor_internal+0xa6>
quickjs-nuttx/quickjs-libc.c:3400
        proto = JS_GetClassProto(ctx, js_worker_class_id);
    80053ab8:	000ad597          	auipc	a1,0xad
    80053abc:	6805a583          	lw	a1,1664(a1) # 80101138 <js_worker_class_id>
    80053ac0:	de0b70ef          	jal	ra,8000b0a0 <JS_GetClassProto>
    80053ac4:	f02a                	sd	a0,32(sp)
    80053ac6:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs-libc.c:3406
    obj = JS_NewObjectProtoClass(ctx, proto, js_worker_class_id);
    80053ac8:	7622                	ld	a2,40(sp)
    80053aca:	7582                	ld	a1,32(sp)
    80053acc:	000ad697          	auipc	a3,0xad
    80053ad0:	66c6a683          	lw	a3,1644(a3) # 80101138 <js_worker_class_id>
    80053ad4:	8526                	mv	a0,s1
    80053ad6:	90ec80ef          	jal	ra,8001bbe4 <JS_NewObjectProtoClass>
    80053ada:	842e                	mv	s0,a1
    80053adc:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:3407
    JS_FreeValue(ctx, proto);
    80053ade:	7622                	ld	a2,40(sp)
    80053ae0:	7582                	ld	a1,32(sp)
quickjs-nuttx/quickjs-libc.c:3406
    obj = JS_NewObjectProtoClass(ctx, proto, js_worker_class_id);
    80053ae2:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs-libc.c:3407
    JS_FreeValue(ctx, proto);
    80053ae4:	8526                	mv	a0,s1
    80053ae6:	dc6fe0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3408
    if (JS_IsException(obj))
    80053aea:	0004071b          	sext.w	a4,s0
    80053aee:	4799                	li	a5,6
    80053af0:	06f70463          	beq	a4,a5,80053b58 <js_worker_ctor_internal+0xc0>
quickjs-nuttx/quickjs-libc.c:3410
    s = js_mallocz(ctx, sizeof(*s));
    80053af4:	45e1                	li	a1,24
    80053af6:	8526                	mv	a0,s1
    80053af8:	e40c70ef          	jal	ra,8001b138 <js_mallocz>
    80053afc:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:3411
    if (!s)
    80053afe:	cd29                	beqz	a0,80053b58 <js_worker_ctor_internal+0xc0>
js_dup_message_pipe():
quickjs-nuttx/quickjs-libc.c:3276
    atomic_add_int(&ps->ref_count, 1);
    80053b00:	4585                	li	a1,1
    80053b02:	8552                	mv	a0,s4
    80053b04:	e23ff0ef          	jal	ra,80053926 <atomic_add_int>
    80053b08:	4585                	li	a1,1
js_worker_ctor_internal():
quickjs-nuttx/quickjs-libc.c:3413
    s->recv_pipe = js_dup_message_pipe(recv_pipe);
    80053b0a:	01493023          	sd	s4,0(s2)
js_dup_message_pipe():
quickjs-nuttx/quickjs-libc.c:3276
    atomic_add_int(&ps->ref_count, 1);
    80053b0e:	854e                	mv	a0,s3
    80053b10:	e17ff0ef          	jal	ra,80053926 <atomic_add_int>
js_worker_ctor_internal():
quickjs-nuttx/quickjs-libc.c:3416
    JS_SetOpaque(obj, s);
    80053b14:	6542                	ld	a0,16(sp)
    80053b16:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:3414
    s->send_pipe = js_dup_message_pipe(send_pipe);
    80053b18:	01393423          	sd	s3,8(s2)
quickjs-nuttx/quickjs-libc.c:3416
    JS_SetOpaque(obj, s);
    80053b1c:	864a                	mv	a2,s2
    80053b1e:	b67ba0ef          	jal	ra,8000e684 <JS_SetOpaque>
quickjs-nuttx/quickjs-libc.c:3417
    return obj;
    80053b22:	67c2                	ld	a5,16(sp)
    80053b24:	f83e                	sd	a5,48(sp)
    80053b26:	67e2                	ld	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:3421
}
    80053b28:	70a6                	ld	ra,104(sp)
    80053b2a:	7406                	ld	s0,96(sp)
quickjs-nuttx/quickjs-libc.c:3420
    return JS_EXCEPTION;
    80053b2c:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:3421
}
    80053b2e:	7542                	ld	a0,48(sp)
    80053b30:	75e2                	ld	a1,56(sp)
    80053b32:	64e6                	ld	s1,88(sp)
    80053b34:	6946                	ld	s2,80(sp)
    80053b36:	69a6                	ld	s3,72(sp)
    80053b38:	6a06                	ld	s4,64(sp)
    80053b3a:	6165                	addi	sp,sp,112
    80053b3c:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3402
        proto = JS_GetPropertyStr(ctx, new_target, "prototype");
    80053b3e:	0002b697          	auipc	a3,0x2b
    80053b42:	1ca68693          	addi	a3,a3,458 # 8007ed08 <utf8_min_code+0x180>
    80053b46:	e38cb0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80053b4a:	f42e                	sd	a1,40(sp)
    80053b4c:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs-libc.c:3403
        if (JS_IsException(proto))
    80053b4e:	2581                	sext.w	a1,a1
    80053b50:	4799                	li	a5,6
    80053b52:	f6f59be3          	bne	a1,a5,80053ac8 <js_worker_ctor_internal+0x30>
quickjs-nuttx/quickjs-libc.c:3395
    JSValue obj = JS_UNDEFINED, proto;
    80053b56:	440d                	li	s0,3
quickjs-nuttx/quickjs-libc.c:3419
    JS_FreeValue(ctx, obj);
    80053b58:	65c2                	ld	a1,16(sp)
    80053b5a:	8622                	mv	a2,s0
    80053b5c:	8526                	mv	a0,s1
    80053b5e:	d4efe0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3420
    return JS_EXCEPTION;
    80053b62:	4799                	li	a5,6
    80053b64:	f802                	sd	zero,48(sp)
    80053b66:	b7c9                	j	80053b28 <js_worker_ctor_internal+0x90>

0000000080053b68 <js_os_init>:
js_os_init():
quickjs-nuttx/quickjs-libc.c:3743
    JS_CFUNC_DEF("dup2", 2, js_os_dup2 ),
#endif
};

static int js_os_init(JSContext *ctx, JSModuleDef *m)
{
    80053b68:	7159                	addi	sp,sp,-112
quickjs-nuttx/quickjs-libc.c:3744
    os_poll_func = js_os_poll;
    80053b6a:	00003797          	auipc	a5,0x3
    80053b6e:	8e678793          	addi	a5,a5,-1818 # 80056450 <js_os_poll>
quickjs-nuttx/quickjs-libc.c:3743
{
    80053b72:	f486                	sd	ra,104(sp)
quickjs-nuttx/quickjs-libc.c:3744
    os_poll_func = js_os_poll;
    80053b74:	000ad717          	auipc	a4,0xad
    80053b78:	5cf73e23          	sd	a5,1500(a4) # 80101150 <os_poll_func>
quickjs-nuttx/quickjs-libc.c:3743
{
    80053b7c:	f0a2                	sd	s0,96(sp)
    80053b7e:	eca6                	sd	s1,88(sp)
    80053b80:	842a                	mv	s0,a0
    80053b82:	84ae                	mv	s1,a1
    80053b84:	e8ca                	sd	s2,80(sp)
    80053b86:	e4ce                	sd	s3,72(sp)
quickjs-nuttx/quickjs-libc.c:3748
    
#ifdef USE_WORKER
    {
        JSRuntime *rt = JS_GetRuntime(ctx);
    80053b88:	d54b70ef          	jal	ra,8000b0dc <JS_GetRuntime>
quickjs-nuttx/quickjs-libc.c:3749
        JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80053b8c:	cb8b70ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:3752
        JSValue proto, obj;
        /* Worker class */
        JS_NewClassID(&js_worker_class_id);
    80053b90:	000ad997          	auipc	s3,0xad
    80053b94:	5a898993          	addi	s3,s3,1448 # 80101138 <js_worker_class_id>
quickjs-nuttx/quickjs-libc.c:3749
        JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80053b98:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:3752
        JS_NewClassID(&js_worker_class_id);
    80053b9a:	854e                	mv	a0,s3
    80053b9c:	b23b70ef          	jal	ra,8000b6be <JS_NewClassID>
quickjs-nuttx/quickjs-libc.c:3753
        JS_NewClass(JS_GetRuntime(ctx), js_worker_class_id, &js_worker_class);
    80053ba0:	8522                	mv	a0,s0
    80053ba2:	d3ab70ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80053ba6:	0009a583          	lw	a1,0(s3)
    80053baa:	000ad617          	auipc	a2,0xad
    80053bae:	4de60613          	addi	a2,a2,1246 # 80101088 <js_worker_class>
    80053bb2:	b73b70ef          	jal	ra,8000b724 <JS_NewClass>
quickjs-nuttx/quickjs-libc.c:3754
        proto = JS_NewObject(ctx);
    80053bb6:	8522                	mv	a0,s0
    80053bb8:	c6cc80ef          	jal	ra,8001c024 <JS_NewObject>
    80053bbc:	862e                	mv	a2,a1
    80053bbe:	e02a                	sd	a0,0(sp)
    80053bc0:	e42e                	sd	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:3755
        JS_SetPropertyFunctionList(ctx, proto, js_worker_proto_funcs, countof(js_worker_proto_funcs));
    80053bc2:	4709                	li	a4,2
    80053bc4:	85aa                	mv	a1,a0
    80053bc6:	0002d697          	auipc	a3,0x2d
    80053bca:	9a268693          	addi	a3,a3,-1630 # 80080568 <js_worker_proto_funcs>
    80053bce:	8522                	mv	a0,s0
    80053bd0:	b4ceb0ef          	jal	ra,8003ef1c <JS_SetPropertyFunctionList>
quickjs-nuttx/quickjs-libc.c:3757
        
        obj = JS_NewCFunction2(ctx, js_worker_ctor, "Worker", 1,
    80053bd4:	4781                	li	a5,0
    80053bd6:	4709                	li	a4,2
    80053bd8:	4685                	li	a3,1
    80053bda:	0002b617          	auipc	a2,0x2b
    80053bde:	13e60613          	addi	a2,a2,318 # 8007ed18 <utf8_min_code+0x190>
    80053be2:	00000597          	auipc	a1,0x0
    80053be6:	78c58593          	addi	a1,a1,1932 # 8005436e <js_worker_ctor>
    80053bea:	8522                	mv	a0,s0
    80053bec:	f17dc0ef          	jal	ra,80030b02 <JS_NewCFunction2>
quickjs-nuttx/quickjs-libc.c:3759
                               JS_CFUNC_constructor, 0);
        JS_SetConstructor(ctx, obj, proto);
    80053bf0:	6682                	ld	a3,0(sp)
    80053bf2:	6722                	ld	a4,8(sp)
quickjs-nuttx/quickjs-libc.c:3757
        obj = JS_NewCFunction2(ctx, js_worker_ctor, "Worker", 1,
    80053bf4:	862e                	mv	a2,a1
    80053bf6:	e82a                	sd	a0,16(sp)
    80053bf8:	ec2e                	sd	a1,24(sp)
quickjs-nuttx/quickjs-libc.c:3759
        JS_SetConstructor(ctx, obj, proto);
    80053bfa:	85aa                	mv	a1,a0
    80053bfc:	8522                	mv	a0,s0
    80053bfe:	f3add0ef          	jal	ra,80031338 <JS_SetConstructor>
quickjs-nuttx/quickjs-libc.c:3761
        
        JS_SetClassProto(ctx, js_worker_class_id, proto);
    80053c02:	66a2                	ld	a3,8(sp)
    80053c04:	6602                	ld	a2,0(sp)
    80053c06:	0009a583          	lw	a1,0(s3)
    80053c0a:	8522                	mv	a0,s0
    80053c0c:	846b80ef          	jal	ra,8000bc52 <JS_SetClassProto>
quickjs-nuttx/quickjs-libc.c:3764
        
        /* set 'Worker.parent' if necessary */
        if (ts->recv_pipe && ts->send_pipe) {
    80053c10:	04893683          	ld	a3,72(s2)
    80053c14:	c68d                	beqz	a3,80053c3e <js_os_init+0xd6>
quickjs-nuttx/quickjs-libc.c:3764 (discriminator 1)
    80053c16:	05093703          	ld	a4,80(s2)
    80053c1a:	c315                	beqz	a4,80053c3e <js_os_init+0xd6>
quickjs-nuttx/quickjs-libc.c:3765
            JS_DefinePropertyValueStr(ctx, obj, "parent",
    80053c1c:	460d                	li	a2,3
    80053c1e:	4581                	li	a1,0
    80053c20:	8522                	mv	a0,s0
    80053c22:	e77ff0ef          	jal	ra,80053a98 <js_worker_ctor_internal>
    80053c26:	87ae                	mv	a5,a1
    80053c28:	6662                	ld	a2,24(sp)
    80053c2a:	65c2                	ld	a1,16(sp)
    80053c2c:	872a                	mv	a4,a0
    80053c2e:	481d                	li	a6,7
    80053c30:	0002b697          	auipc	a3,0x2b
    80053c34:	0f068693          	addi	a3,a3,240 # 8007ed20 <utf8_min_code+0x198>
    80053c38:	8522                	mv	a0,s0
    80053c3a:	c3add0ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
quickjs-nuttx/quickjs-libc.c:3770
                                      js_worker_ctor_internal(ctx, JS_UNDEFINED, ts->recv_pipe, ts->send_pipe),
                                      JS_PROP_C_W_E);
        }
        
        JS_SetModuleExport(ctx, m, "Worker", obj);
    80053c3e:	66c2                	ld	a3,16(sp)
    80053c40:	6762                	ld	a4,24(sp)
    80053c42:	85a6                	mv	a1,s1
    80053c44:	0002b617          	auipc	a2,0x2b
    80053c48:	0d460613          	addi	a2,a2,212 # 8007ed18 <utf8_min_code+0x190>
    80053c4c:	8522                	mv	a0,s0
    80053c4e:	9bfcb0ef          	jal	ra,8001f60c <JS_SetModuleExport>
quickjs-nuttx/quickjs-libc.c:3774
    }
#endif /* USE_WORKER */

    return JS_SetModuleExportList(ctx, m, js_os_funcs,
    80053c52:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3776
                                  countof(js_os_funcs));
}
    80053c54:	7406                	ld	s0,96(sp)
    80053c56:	70a6                	ld	ra,104(sp)
    80053c58:	6946                	ld	s2,80(sp)
    80053c5a:	69a6                	ld	s3,72(sp)
quickjs-nuttx/quickjs-libc.c:3774
    return JS_SetModuleExportList(ctx, m, js_os_funcs,
    80053c5c:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs-libc.c:3776
}
    80053c5e:	64e6                	ld	s1,88(sp)
quickjs-nuttx/quickjs-libc.c:3774
    return JS_SetModuleExportList(ctx, m, js_os_funcs,
    80053c60:	04800693          	li	a3,72
    80053c64:	0002c617          	auipc	a2,0x2c
    80053c68:	9a460613          	addi	a2,a2,-1628 # 8007f608 <js_os_funcs>
quickjs-nuttx/quickjs-libc.c:3776
}
    80053c6c:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs-libc.c:3774
    return JS_SetModuleExportList(ctx, m, js_os_funcs,
    80053c6e:	d62eb06f          	j	8003f1d0 <JS_SetModuleExportList>

0000000080053c72 <js_dump_obj>:
js_dump_obj():
quickjs-nuttx/quickjs-libc.c:3905
    free(ts);
    JS_SetRuntimeOpaque(rt, NULL); /* fail safe */
}

static void js_dump_obj(JSContext *ctx, FILE *f, JSValueConst val)
{
    80053c72:	7179                	addi	sp,sp,-48
    80053c74:	ec26                	sd	s1,24(sp)
    80053c76:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs-libc.c:3908
    const char *str;
    
    str = JS_ToCString(ctx, val);
    80053c78:	85b2                	mv	a1,a2
    80053c7a:	8636                	mv	a2,a3
quickjs-nuttx/quickjs-libc.c:3905
{
    80053c7c:	e84a                	sd	s2,16(sp)
    80053c7e:	f406                	sd	ra,40(sp)
    80053c80:	f022                	sd	s0,32(sp)
    80053c82:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:3908
    str = JS_ToCString(ctx, val);
    80053c84:	c70fe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:3909
    if (str) {
    80053c88:	c11d                	beqz	a0,80053cae <js_dump_obj+0x3c>
    80053c8a:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3910
        fprintf(f, "%s\n", str);
    80053c8c:	862a                	mv	a2,a0
    80053c8e:	0002b597          	auipc	a1,0x2b
    80053c92:	09a58593          	addi	a1,a1,154 # 8007ed28 <utf8_min_code+0x1a0>
    80053c96:	8526                	mv	a0,s1
    80053c98:	5b90e0ef          	jal	ra,80062a50 <fprintf>
quickjs-nuttx/quickjs-libc.c:3911
        JS_FreeCString(ctx, str);
    80053c9c:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs-libc.c:3915
    } else {
        fprintf(f, "[exception]\n");
    }
}
    80053c9e:	7402                	ld	s0,32(sp)
    80053ca0:	70a2                	ld	ra,40(sp)
    80053ca2:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs-libc.c:3911
        JS_FreeCString(ctx, str);
    80053ca4:	854a                	mv	a0,s2
quickjs-nuttx/quickjs-libc.c:3915
}
    80053ca6:	6942                	ld	s2,16(sp)
    80053ca8:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs-libc.c:3911
        JS_FreeCString(ctx, str);
    80053caa:	e95b806f          	j	8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3915
}
    80053cae:	7402                	ld	s0,32(sp)
    80053cb0:	70a2                	ld	ra,40(sp)
    80053cb2:	6942                	ld	s2,16(sp)
quickjs-nuttx/quickjs-libc.c:3913
        fprintf(f, "[exception]\n");
    80053cb4:	85a6                	mv	a1,s1
quickjs-nuttx/quickjs-libc.c:3915
}
    80053cb6:	64e2                	ld	s1,24(sp)
quickjs-nuttx/quickjs-libc.c:3913
        fprintf(f, "[exception]\n");
    80053cb8:	0002b517          	auipc	a0,0x2b
    80053cbc:	07850513          	addi	a0,a0,120 # 8007ed30 <utf8_min_code+0x1a8>
quickjs-nuttx/quickjs-libc.c:3915
}
    80053cc0:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs-libc.c:3913
        fprintf(f, "[exception]\n");
    80053cc2:	5610e06f          	j	80062a22 <fputs>

0000000080053cc6 <js_std_dump_error1>:
js_std_dump_error1():
quickjs-nuttx/quickjs-libc.c:3918

static void js_std_dump_error1(JSContext *ctx, JSValueConst exception_val)
{
    80053cc6:	7139                	addi	sp,sp,-64
    80053cc8:	fc06                	sd	ra,56(sp)
    80053cca:	f822                	sd	s0,48(sp)
    80053ccc:	f426                	sd	s1,40(sp)
    80053cce:	e02e                	sd	a1,0(sp)
    80053cd0:	e432                	sd	a2,8(sp)
    80053cd2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3922
    JSValue val;
    BOOL is_error;
    
    is_error = JS_IsError(ctx, exception_val);
    80053cd4:	931ba0ef          	jal	ra,8000e604 <JS_IsError>
    80053cd8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:3923
    js_dump_obj(ctx, stderr, exception_val);
    80053cda:	4509                	li	a0,2
    80053cdc:	6850e0ef          	jal	ra,80062b60 <lib_get_stream>
    80053ce0:	6602                	ld	a2,0(sp)
    80053ce2:	66a2                	ld	a3,8(sp)
    80053ce4:	85aa                	mv	a1,a0
    80053ce6:	8522                	mv	a0,s0
    80053ce8:	f8bff0ef          	jal	ra,80053c72 <js_dump_obj>
quickjs-nuttx/quickjs-libc.c:3924
    if (is_error) {
    80053cec:	c0b1                	beqz	s1,80053d30 <js_std_dump_error1+0x6a>
quickjs-nuttx/quickjs-libc.c:3925
        val = JS_GetPropertyStr(ctx, exception_val, "stack");
    80053cee:	6582                	ld	a1,0(sp)
    80053cf0:	6622                	ld	a2,8(sp)
    80053cf2:	0002b697          	auipc	a3,0x2b
    80053cf6:	04e68693          	addi	a3,a3,78 # 8007ed40 <utf8_min_code+0x1b8>
    80053cfa:	8522                	mv	a0,s0
    80053cfc:	c82cb0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80053d00:	ec2e                	sd	a1,24(sp)
    80053d02:	e82a                	sd	a0,16(sp)
quickjs-nuttx/quickjs-libc.c:3926
        if (!JS_IsUndefined(val)) {
    80053d04:	2581                	sext.w	a1,a1
    80053d06:	478d                	li	a5,3
    80053d08:	00f58b63          	beq	a1,a5,80053d1e <js_std_dump_error1+0x58>
quickjs-nuttx/quickjs-libc.c:3927
            js_dump_obj(ctx, stderr, val);
    80053d0c:	4509                	li	a0,2
    80053d0e:	6530e0ef          	jal	ra,80062b60 <lib_get_stream>
    80053d12:	6642                	ld	a2,16(sp)
    80053d14:	66e2                	ld	a3,24(sp)
    80053d16:	85aa                	mv	a1,a0
    80053d18:	8522                	mv	a0,s0
    80053d1a:	f59ff0ef          	jal	ra,80053c72 <js_dump_obj>
quickjs-nuttx/quickjs-libc.c:3929
        }
        JS_FreeValue(ctx, val);
    80053d1e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3931
    }
}
    80053d20:	7442                	ld	s0,48(sp)
quickjs-nuttx/quickjs-libc.c:3929
        JS_FreeValue(ctx, val);
    80053d22:	65c2                	ld	a1,16(sp)
    80053d24:	6662                	ld	a2,24(sp)
quickjs-nuttx/quickjs-libc.c:3931
}
    80053d26:	70e2                	ld	ra,56(sp)
    80053d28:	74a2                	ld	s1,40(sp)
    80053d2a:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs-libc.c:3929
        JS_FreeValue(ctx, val);
    80053d2c:	b80fe06f          	j	800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3931
}
    80053d30:	70e2                	ld	ra,56(sp)
    80053d32:	7442                	ld	s0,48(sp)
    80053d34:	74a2                	ld	s1,40(sp)
    80053d36:	6121                	addi	sp,sp,64
    80053d38:	8082                	ret

0000000080053d3a <js_get_errno>:
js_get_errno():
quickjs-nuttx/quickjs-libc.c:818
    if (ret == -1)
    80053d3a:	57fd                	li	a5,-1
    80053d3c:	00f51c63          	bne	a0,a5,80053d54 <js_get_errno+0x1a>
quickjs-nuttx/quickjs-libc.c:817
{
    80053d40:	1141                	addi	sp,sp,-16
    80053d42:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs-libc.c:819
        ret = -errno;
    80053d44:	4d50c0ef          	jal	ra,80060a18 <__errno>
    80053d48:	4108                	lw	a0,0(a0)
quickjs-nuttx/quickjs-libc.c:821
}
    80053d4a:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs-libc.c:819
        ret = -errno;
    80053d4c:	40a0053b          	negw	a0,a0
quickjs-nuttx/quickjs-libc.c:821
}
    80053d50:	0141                	addi	sp,sp,16
    80053d52:	8082                	ret
    80053d54:	8082                	ret

0000000080053d56 <js_std_file_close>:
js_std_file_close():
quickjs-nuttx/quickjs-libc.c:1044
{
    80053d56:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs-libc.c:1045
    JSSTDFile *s = JS_GetOpaque2(ctx, this_val, js_std_file_class_id);
    80053d58:	000ad697          	auipc	a3,0xad
    80053d5c:	3dc6a683          	lw	a3,988(a3) # 80101134 <js_std_file_class_id>
quickjs-nuttx/quickjs-libc.c:1044
{
    80053d60:	fc26                	sd	s1,56(sp)
    80053d62:	e486                	sd	ra,72(sp)
    80053d64:	e0a2                	sd	s0,64(sp)
    80053d66:	84aa                	mv	s1,a0
    80053d68:	e02e                	sd	a1,0(sp)
    80053d6a:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:1045
    JSSTDFile *s = JS_GetOpaque2(ctx, this_val, js_std_file_class_id);
    80053d6c:	a83c40ef          	jal	ra,800187ee <JS_GetOpaque2>
quickjs-nuttx/quickjs-libc.c:1047
    if (!s)
    80053d70:	e919                	bnez	a0,80053d86 <js_std_file_close+0x30>
quickjs-nuttx/quickjs-libc.c:1048
        return JS_EXCEPTION;
    80053d72:	4799                	li	a5,6
    80053d74:	e802                	sd	zero,16(sp)
    80053d76:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1057 (discriminator 1)
}
    80053d78:	60a6                	ld	ra,72(sp)
    80053d7a:	6406                	ld	s0,64(sp)
    80053d7c:	6542                	ld	a0,16(sp)
    80053d7e:	65e2                	ld	a1,24(sp)
    80053d80:	74e2                	ld	s1,56(sp)
    80053d82:	6161                	addi	sp,sp,80
    80053d84:	8082                	ret
    80053d86:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1049
    if (!s->f)
    80053d88:	6108                	ld	a0,0(a0)
    80053d8a:	ed01                	bnez	a0,80053da2 <js_std_file_close+0x4c>
quickjs-nuttx/quickjs-libc.c:1057
}
    80053d8c:	6406                	ld	s0,64(sp)
    80053d8e:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs-libc.c:1050
        return JS_ThrowTypeError(ctx, "invalid file handle");
    80053d90:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:1057
}
    80053d92:	74e2                	ld	s1,56(sp)
quickjs-nuttx/quickjs-libc.c:1050
        return JS_ThrowTypeError(ctx, "invalid file handle");
    80053d94:	0002b597          	auipc	a1,0x2b
    80053d98:	eec58593          	addi	a1,a1,-276 # 8007ec80 <utf8_min_code+0xf8>
quickjs-nuttx/quickjs-libc.c:1057
}
    80053d9c:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs-libc.c:1050
        return JS_ThrowTypeError(ctx, "invalid file handle");
    80053d9e:	8cfc406f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:1051
    if (s->is_popen)
    80053da2:	445c                	lw	a5,12(s0)
    80053da4:	cf99                	beqz	a5,80053dc2 <js_std_file_close+0x6c>
quickjs-nuttx/quickjs-libc.c:1052
        err = js_get_errno(pclose(s->f));
    80053da6:	6970b0ef          	jal	ra,8005fc3c <pclose>
quickjs-nuttx/quickjs-libc.c:1054
        err = js_get_errno(fclose(s->f));
    80053daa:	f91ff0ef          	jal	ra,80053d3a <js_get_errno>
    80053dae:	0005079b          	sext.w	a5,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80053db2:	d202                	sw	zero,36(sp)
    80053db4:	d03e                	sw	a5,32(sp)
    80053db6:	7782                	ld	a5,32(sp)
js_std_file_close():
quickjs-nuttx/quickjs-libc.c:1055
    s->f = NULL;
    80053db8:	00043023          	sd	zero,0(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053dbc:	ec02                	sd	zero,24(sp)
    80053dbe:	e83e                	sd	a5,16(sp)
    80053dc0:	bf65                	j	80053d78 <js_std_file_close+0x22>
js_std_file_close():
quickjs-nuttx/quickjs-libc.c:1054
        err = js_get_errno(fclose(s->f));
    80053dc2:	37c0e0ef          	jal	ra,8006213e <fclose>
    80053dc6:	b7d5                	j	80053daa <js_std_file_close+0x54>

0000000080053dc8 <js_os_dup2>:
js_os_dup2():
quickjs-nuttx/quickjs-libc.c:3183
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053dc8:	6310                	ld	a2,0(a4)
    80053dca:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:3180
{
    80053dcc:	711d                	addi	sp,sp,-96
quickjs-nuttx/quickjs-libc.c:3183
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053dce:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs-libc.c:3180
{
    80053dd0:	e8a2                	sd	s0,80(sp)
    80053dd2:	e4a6                	sd	s1,72(sp)
    80053dd4:	ec86                	sd	ra,88(sp)
    80053dd6:	84aa                	mv	s1,a0
    80053dd8:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:3183
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053dda:	de0ce0ef          	jal	ra,800223ba <JS_ToInt32>
    80053dde:	c919                	beqz	a0,80053df4 <js_os_dup2+0x2c>
quickjs-nuttx/quickjs-libc.c:3184
        return JS_EXCEPTION;
    80053de0:	4799                	li	a5,6
    80053de2:	f002                	sd	zero,32(sp)
    80053de4:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:3189 (discriminator 1)
}
    80053de6:	60e6                	ld	ra,88(sp)
    80053de8:	6446                	ld	s0,80(sp)
    80053dea:	7502                	ld	a0,32(sp)
    80053dec:	75a2                	ld	a1,40(sp)
    80053dee:	64a6                	ld	s1,72(sp)
    80053df0:	6125                	addi	sp,sp,96
    80053df2:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3185
    if (JS_ToInt32(ctx, &fd2, argv[1]))
    80053df4:	6810                	ld	a2,16(s0)
    80053df6:	6c14                	ld	a3,24(s0)
    80053df8:	086c                	addi	a1,sp,28
    80053dfa:	8526                	mv	a0,s1
    80053dfc:	dbece0ef          	jal	ra,800223ba <JS_ToInt32>
    80053e00:	f165                	bnez	a0,80053de0 <js_os_dup2+0x18>
quickjs-nuttx/quickjs-libc.c:3187
    ret = js_get_errno(dup2(fd, fd2));
    80053e02:	45f2                	lw	a1,28(sp)
    80053e04:	4562                	lw	a0,24(sp)
    80053e06:	07f100ef          	jal	ra,80064684 <dup2>
    80053e0a:	f31ff0ef          	jal	ra,80053d3a <js_get_errno>
    80053e0e:	d82a                	sw	a0,48(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053e10:	da02                	sw	zero,52(sp)
    80053e12:	77c2                	ld	a5,48(sp)
    80053e14:	f402                	sd	zero,40(sp)
    80053e16:	f03e                	sd	a5,32(sp)
    80053e18:	b7f9                	j	80053de6 <js_os_dup2+0x1e>

0000000080053e1a <js_os_dup>:
js_os_dup():
quickjs-nuttx/quickjs-libc.c:3171
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053e1a:	6310                	ld	a2,0(a4)
    80053e1c:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:3168
{
    80053e1e:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs-libc.c:3171
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053e20:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs-libc.c:3168
{
    80053e22:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs-libc.c:3171
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053e24:	d96ce0ef          	jal	ra,800223ba <JS_ToInt32>
    80053e28:	c909                	beqz	a0,80053e3a <js_os_dup+0x20>
quickjs-nuttx/quickjs-libc.c:3172
        return JS_EXCEPTION;
    80053e2a:	4799                	li	a5,6
    80053e2c:	f002                	sd	zero,32(sp)
    80053e2e:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:3175 (discriminator 1)
}
    80053e30:	60a6                	ld	ra,72(sp)
    80053e32:	7502                	ld	a0,32(sp)
    80053e34:	75a2                	ld	a1,40(sp)
    80053e36:	6161                	addi	sp,sp,80
    80053e38:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3173
    ret = js_get_errno(dup(fd));
    80053e3a:	4572                	lw	a0,28(sp)
    80053e3c:	039100ef          	jal	ra,80064674 <dup>
    80053e40:	efbff0ef          	jal	ra,80053d3a <js_get_errno>
    80053e44:	d82a                	sw	a0,48(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053e46:	da02                	sw	zero,52(sp)
    80053e48:	77c2                	ld	a5,48(sp)
    80053e4a:	f402                	sd	zero,40(sp)
    80053e4c:	f03e                	sd	a5,32(sp)
    80053e4e:	b7cd                	j	80053e30 <js_os_dup+0x16>

0000000080053e50 <js_os_kill>:
js_os_kill():
quickjs-nuttx/quickjs-libc.c:3157
    if (JS_ToInt32(ctx, &pid, argv[0]))
    80053e50:	6310                	ld	a2,0(a4)
    80053e52:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:3154
{
    80053e54:	711d                	addi	sp,sp,-96
quickjs-nuttx/quickjs-libc.c:3157
    if (JS_ToInt32(ctx, &pid, argv[0]))
    80053e56:	082c                	addi	a1,sp,24
quickjs-nuttx/quickjs-libc.c:3154
{
    80053e58:	e8a2                	sd	s0,80(sp)
    80053e5a:	e4a6                	sd	s1,72(sp)
    80053e5c:	ec86                	sd	ra,88(sp)
    80053e5e:	84aa                	mv	s1,a0
    80053e60:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:3157
    if (JS_ToInt32(ctx, &pid, argv[0]))
    80053e62:	d58ce0ef          	jal	ra,800223ba <JS_ToInt32>
    80053e66:	c919                	beqz	a0,80053e7c <js_os_kill+0x2c>
quickjs-nuttx/quickjs-libc.c:3158
        return JS_EXCEPTION;
    80053e68:	4799                	li	a5,6
    80053e6a:	f002                	sd	zero,32(sp)
    80053e6c:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:3163 (discriminator 1)
}
    80053e6e:	60e6                	ld	ra,88(sp)
    80053e70:	6446                	ld	s0,80(sp)
    80053e72:	7502                	ld	a0,32(sp)
    80053e74:	75a2                	ld	a1,40(sp)
    80053e76:	64a6                	ld	s1,72(sp)
    80053e78:	6125                	addi	sp,sp,96
    80053e7a:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3159
    if (JS_ToInt32(ctx, &sig, argv[1]))
    80053e7c:	6810                	ld	a2,16(s0)
    80053e7e:	6c14                	ld	a3,24(s0)
    80053e80:	086c                	addi	a1,sp,28
    80053e82:	8526                	mv	a0,s1
    80053e84:	d36ce0ef          	jal	ra,800223ba <JS_ToInt32>
    80053e88:	f165                	bnez	a0,80053e68 <js_os_kill+0x18>
quickjs-nuttx/quickjs-libc.c:3161
    ret = js_get_errno(kill(pid, sig));
    80053e8a:	45f2                	lw	a1,28(sp)
    80053e8c:	4562                	lw	a0,24(sp)
    80053e8e:	0b1100ef          	jal	ra,8006473e <kill>
    80053e92:	ea9ff0ef          	jal	ra,80053d3a <js_get_errno>
    80053e96:	d82a                	sw	a0,48(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053e98:	da02                	sw	zero,52(sp)
    80053e9a:	77c2                	ld	a5,48(sp)
    80053e9c:	f402                	sd	zero,40(sp)
    80053e9e:	f03e                	sd	a5,32(sp)
    80053ea0:	b7f9                	j	80053e6e <js_os_kill+0x1e>

0000000080053ea2 <js_os_close>:
js_os_close():
quickjs-nuttx/quickjs-libc.c:1611
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053ea2:	6310                	ld	a2,0(a4)
    80053ea4:	6714                	ld	a3,8(a4)
quickjs-nuttx/quickjs-libc.c:1609
{
    80053ea6:	715d                	addi	sp,sp,-80
quickjs-nuttx/quickjs-libc.c:1611
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053ea8:	086c                	addi	a1,sp,28
quickjs-nuttx/quickjs-libc.c:1609
{
    80053eaa:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs-libc.c:1611
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80053eac:	d0ece0ef          	jal	ra,800223ba <JS_ToInt32>
    80053eb0:	c909                	beqz	a0,80053ec2 <js_os_close+0x20>
quickjs-nuttx/quickjs-libc.c:1612
        return JS_EXCEPTION;
    80053eb2:	4799                	li	a5,6
    80053eb4:	f002                	sd	zero,32(sp)
    80053eb6:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1615 (discriminator 1)
}
    80053eb8:	60a6                	ld	ra,72(sp)
    80053eba:	7502                	ld	a0,32(sp)
    80053ebc:	75a2                	ld	a1,40(sp)
    80053ebe:	6161                	addi	sp,sp,80
    80053ec0:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1613
    ret = js_get_errno(close(fd));
    80053ec2:	4572                	lw	a0,28(sp)
    80053ec4:	7a0100ef          	jal	ra,80064664 <close>
    80053ec8:	e73ff0ef          	jal	ra,80053d3a <js_get_errno>
    80053ecc:	d82a                	sw	a0,48(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053ece:	da02                	sw	zero,52(sp)
    80053ed0:	77c2                	ld	a5,48(sp)
    80053ed2:	f402                	sd	zero,40(sp)
    80053ed4:	f03e                	sd	a5,32(sp)
    80053ed6:	b7cd                	j	80053eb8 <js_os_close+0x16>

0000000080053ed8 <js_os_chdir>:
js_os_chdir():
quickjs-nuttx/quickjs-libc.c:2456
    target = JS_ToCString(ctx, argv[0]);
    80053ed8:	630c                	ld	a1,0(a4)
    80053eda:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:2452
{
    80053edc:	711d                	addi	sp,sp,-96
    80053ede:	e4a6                	sd	s1,72(sp)
    80053ee0:	ec86                	sd	ra,88(sp)
    80053ee2:	e8a2                	sd	s0,80(sp)
    80053ee4:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2456
    target = JS_ToCString(ctx, argv[0]);
    80053ee6:	a0efe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2457
    if (!target)
    80053eea:	e919                	bnez	a0,80053f00 <js_os_chdir+0x28>
quickjs-nuttx/quickjs-libc.c:2458
        return JS_EXCEPTION;
    80053eec:	4799                	li	a5,6
    80053eee:	f002                	sd	zero,32(sp)
    80053ef0:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2462 (discriminator 1)
}
    80053ef2:	60e6                	ld	ra,88(sp)
    80053ef4:	6446                	ld	s0,80(sp)
    80053ef6:	7502                	ld	a0,32(sp)
    80053ef8:	75a2                	ld	a1,40(sp)
    80053efa:	64a6                	ld	s1,72(sp)
    80053efc:	6125                	addi	sp,sp,96
    80053efe:	8082                	ret
    80053f00:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs-libc.c:2459
    err = js_get_errno(chdir(target));
    80053f02:	264100ef          	jal	ra,80064166 <chdir>
    80053f06:	e35ff0ef          	jal	ra,80053d3a <js_get_errno>
quickjs-nuttx/quickjs-libc.c:2460
    JS_FreeCString(ctx, target);
    80053f0a:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:2459
    err = js_get_errno(chdir(target));
    80053f0c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2460
    JS_FreeCString(ctx, target);
    80053f0e:	8526                	mv	a0,s1
    80053f10:	c2fb80ef          	jal	ra,8000cb3e <JS_FreeCString>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053f14:	da02                	sw	zero,52(sp)
js_os_chdir():
quickjs-nuttx/quickjs-libc.c:2459
    err = js_get_errno(chdir(target));
    80053f16:	d822                	sw	s0,48(sp)
    80053f18:	77c2                	ld	a5,48(sp)
    80053f1a:	f402                	sd	zero,40(sp)
    80053f1c:	f03e                	sd	a5,32(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053f1e:	bfd1                	j	80053ef2 <js_os_chdir+0x1a>

0000000080053f20 <js_os_symlink>:
js_os_symlink():
quickjs-nuttx/quickjs-libc.c:2745
    target = JS_ToCString(ctx, argv[0]);
    80053f20:	630c                	ld	a1,0(a4)
    80053f22:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:2741
{
    80053f24:	711d                	addi	sp,sp,-96
    80053f26:	e8a2                	sd	s0,80(sp)
    80053f28:	e0ca                	sd	s2,64(sp)
    80053f2a:	ec86                	sd	ra,88(sp)
    80053f2c:	e4a6                	sd	s1,72(sp)
    80053f2e:	fc4e                	sd	s3,56(sp)
    80053f30:	842a                	mv	s0,a0
    80053f32:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:2745
    target = JS_ToCString(ctx, argv[0]);
    80053f34:	9c0fe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2746
    if (!target)
    80053f38:	ed09                	bnez	a0,80053f52 <js_os_symlink+0x32>
quickjs-nuttx/quickjs-libc.c:2751
        return JS_EXCEPTION;
    80053f3a:	4799                	li	a5,6
    80053f3c:	e802                	sd	zero,16(sp)
    80053f3e:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:2757 (discriminator 1)
}
    80053f40:	60e6                	ld	ra,88(sp)
    80053f42:	6446                	ld	s0,80(sp)
    80053f44:	6542                	ld	a0,16(sp)
    80053f46:	65e2                	ld	a1,24(sp)
    80053f48:	64a6                	ld	s1,72(sp)
    80053f4a:	6906                	ld	s2,64(sp)
    80053f4c:	79e2                	ld	s3,56(sp)
    80053f4e:	6125                	addi	sp,sp,96
    80053f50:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2748
    linkpath = JS_ToCString(ctx, argv[1]);
    80053f52:	01093583          	ld	a1,16(s2)
    80053f56:	01893603          	ld	a2,24(s2)
    80053f5a:	84aa                	mv	s1,a0
    80053f5c:	8522                	mv	a0,s0
    80053f5e:	996fe0ef          	jal	ra,800520f4 <JS_ToCString>
    80053f62:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2749
    if (!linkpath) {
    80053f64:	e511                	bnez	a0,80053f70 <js_os_symlink+0x50>
quickjs-nuttx/quickjs-libc.c:2750
        JS_FreeCString(ctx, target);
    80053f66:	85a6                	mv	a1,s1
    80053f68:	8522                	mv	a0,s0
    80053f6a:	bd5b80ef          	jal	ra,8000cb3e <JS_FreeCString>
    80053f6e:	b7f1                	j	80053f3a <js_os_symlink+0x1a>
quickjs-nuttx/quickjs-libc.c:2753
    err = js_get_errno(symlink(target, linkpath));
    80053f70:	85aa                	mv	a1,a0
    80053f72:	8526                	mv	a0,s1
    80053f74:	5210b0ef          	jal	ra,8005fc94 <symlink>
    80053f78:	dc3ff0ef          	jal	ra,80053d3a <js_get_errno>
    80053f7c:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:2754
    JS_FreeCString(ctx, target);
    80053f7e:	85a6                	mv	a1,s1
    80053f80:	8522                	mv	a0,s0
    80053f82:	bbdb80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2755
    JS_FreeCString(ctx, linkpath);
    80053f86:	85ca                	mv	a1,s2
    80053f88:	8522                	mv	a0,s0
    80053f8a:	bb5b80ef          	jal	ra,8000cb3e <JS_FreeCString>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053f8e:	d202                	sw	zero,36(sp)
js_os_symlink():
quickjs-nuttx/quickjs-libc.c:2753
    err = js_get_errno(symlink(target, linkpath));
    80053f90:	d04e                	sw	s3,32(sp)
    80053f92:	7782                	ld	a5,32(sp)
    80053f94:	ec02                	sd	zero,24(sp)
    80053f96:	e83e                	sd	a5,16(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053f98:	b765                	j	80053f40 <js_os_symlink+0x20>

0000000080053f9a <js_os_sleep>:
js_os_sleep():
quickjs-nuttx/quickjs-libc.c:2677
{
    80053f9a:	715d                	addi	sp,sp,-80
    80053f9c:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs-libc.c:2681
    if (JS_ToInt64(ctx, &delay, argv[0]))
    80053f9e:	6310                	ld	a2,0(a4)
    80053fa0:	6714                	ld	a3,8(a4)
    80053fa2:	082c                	addi	a1,sp,24
    80053fa4:	e79d00ef          	jal	ra,80024e1c <JS_ToInt64>
    80053fa8:	c909                	beqz	a0,80053fba <js_os_sleep+0x20>
quickjs-nuttx/quickjs-libc.c:2682
        return JS_EXCEPTION;
    80053faa:	4799                	li	a5,6
    80053fac:	f002                	sd	zero,32(sp)
    80053fae:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2702 (discriminator 1)
}
    80053fb0:	60a6                	ld	ra,72(sp)
    80053fb2:	7502                	ld	a0,32(sp)
    80053fb4:	75a2                	ld	a1,40(sp)
    80053fb6:	6161                	addi	sp,sp,80
    80053fb8:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2683
    if (delay < 0)
    80053fba:	67e2                	ld	a5,24(sp)
    80053fbc:	0007d363          	bgez	a5,80053fc2 <js_os_sleep+0x28>
quickjs-nuttx/quickjs-libc.c:2684
        delay = 0;
    80053fc0:	ec02                	sd	zero,24(sp)
quickjs-nuttx/quickjs-libc.c:2696
        ts.tv_sec = delay / 1000;
    80053fc2:	67e2                	ld	a5,24(sp)
    80053fc4:	3e800713          	li	a4,1000
quickjs-nuttx/quickjs-libc.c:2698
        ret = js_get_errno(nanosleep(&ts, NULL));
    80053fc8:	4581                	li	a1,0
quickjs-nuttx/quickjs-libc.c:2696
        ts.tv_sec = delay / 1000;
    80053fca:	02e7c6b3          	div	a3,a5,a4
quickjs-nuttx/quickjs-libc.c:2698
        ret = js_get_errno(nanosleep(&ts, NULL));
    80053fce:	1808                	addi	a0,sp,48
quickjs-nuttx/quickjs-libc.c:2697
        ts.tv_nsec = (delay % 1000) * 1000000;
    80053fd0:	02e7e7b3          	rem	a5,a5,a4
    80053fd4:	000f4737          	lui	a4,0xf4
    80053fd8:	24070713          	addi	a4,a4,576 # f4240 <asinh-0x7ff0bdc0>
quickjs-nuttx/quickjs-libc.c:2696
        ts.tv_sec = delay / 1000;
    80053fdc:	d836                	sw	a3,48(sp)
quickjs-nuttx/quickjs-libc.c:2697
        ts.tv_nsec = (delay % 1000) * 1000000;
    80053fde:	02e787b3          	mul	a5,a5,a4
    80053fe2:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:2698
        ret = js_get_errno(nanosleep(&ts, NULL));
    80053fe4:	6790f0ef          	jal	ra,80063e5c <nanosleep>
    80053fe8:	d53ff0ef          	jal	ra,80053d3a <js_get_errno>
    80053fec:	d82a                	sw	a0,48(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80053fee:	da02                	sw	zero,52(sp)
    80053ff0:	77c2                	ld	a5,48(sp)
    80053ff2:	f402                	sd	zero,40(sp)
    80053ff4:	f03e                	sd	a5,32(sp)
    80053ff6:	bf6d                	j	80053fb0 <js_os_sleep+0x16>

0000000080053ff8 <js_os_mkdir>:
js_os_mkdir():
quickjs-nuttx/quickjs-libc.c:2466
{
    80053ff8:	711d                	addi	sp,sp,-96
    80053ffa:	e8a2                	sd	s0,80(sp)
    80053ffc:	e4a6                	sd	s1,72(sp)
    80053ffe:	ec86                	sd	ra,88(sp)
