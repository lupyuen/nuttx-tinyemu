    8003d000:	f3ea                	sd	s10,480(sp)
    8003d002:	efee                	sd	s11,472(sp)
    8003d004:	e12e                	sd	a1,128(sp)
    8003d006:	e532                	sd	a2,136(sp)
js_get_regexp():
quickjs-nuttx/quickjs.c:43398
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8003d008:	57fd                	li	a5,-1
js_regexp_exec():
quickjs-nuttx/quickjs.c:43742
{
    8003d00a:	842a                	mv	s0,a0
js_get_regexp():
quickjs-nuttx/quickjs.c:43398
    if (JS_VALUE_GET_TAG(obj) == JS_TAG_OBJECT) {
    8003d00c:	02f69863          	bne	a3,a5,8003d03c <js_regexp_exec+0x6e>
quickjs-nuttx/quickjs.c:43400
        if (p->class_id == JS_CLASS_REGEXP)
    8003d010:	0065d683          	lhu	a3,6(a1)
    8003d014:	47c9                	li	a5,18
    8003d016:	84ae                	mv	s1,a1
    8003d018:	02f69263          	bne	a3,a5,8003d03c <js_regexp_exec+0x6e>
js_regexp_exec():
quickjs-nuttx/quickjs.c:43756
    str_val = JS_ToString(ctx, argv[0]);
    8003d01c:	630c                	ld	a1,0(a4)
    8003d01e:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:43757
    if (JS_IsException(str_val))
    8003d020:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:43756
    str_val = JS_ToString(ctx, argv[0]);
    8003d022:	f5ae30ef          	jal	ra,8002077c <JS_ToString>
    8003d026:	e8ae                	sd	a1,80(sp)
quickjs-nuttx/quickjs.c:43757
    if (JS_IsException(str_val))
    8003d028:	47c6                	lw	a5,80(sp)
quickjs-nuttx/quickjs.c:43756
    str_val = JS_ToString(ctx, argv[0]);
    8003d02a:	f02a                	sd	a0,32(sp)
    8003d02c:	e1aa                	sd	a0,192(sp)
    8003d02e:	e5ae                	sd	a1,200(sp)
    8003d030:	ec2a                	sd	a0,24(sp)
    8003d032:	e82e                	sd	a1,16(sp)
quickjs-nuttx/quickjs.c:43757
    if (JS_IsException(str_val))
    8003d034:	05279563          	bne	a5,s2,8003d07e <js_regexp_exec+0xb0>
quickjs-nuttx/quickjs.c:43758
        return JS_EXCEPTION;
    8003d038:	f202                	sd	zero,288(sp)
    8003d03a:	a039                	j	8003d048 <js_regexp_exec+0x7a>
js_get_regexp():
quickjs-nuttx/quickjs.c:43404
        JS_ThrowTypeErrorInvalidClass(ctx, JS_CLASS_REGEXP);
    8003d03c:	45c9                	li	a1,18
    8003d03e:	8522                	mv	a0,s0
    8003d040:	f86db0ef          	jal	ra,800187c6 <JS_ThrowTypeErrorInvalidClass>
js_regexp_exec():
quickjs-nuttx/quickjs.c:43754
        return JS_EXCEPTION;
    8003d044:	4799                	li	a5,6
    8003d046:	f202                	sd	zero,288(sp)
quickjs-nuttx/quickjs.c:43758
        return JS_EXCEPTION;
    8003d048:	f63e                	sd	a5,296(sp)
quickjs-nuttx/quickjs.c:43938 (discriminator 1)
}
    8003d04a:	23813083          	ld	ra,568(sp)
    8003d04e:	23013403          	ld	s0,560(sp)
    8003d052:	7512                	ld	a0,288(sp)
    8003d054:	75b2                	ld	a1,296(sp)
    8003d056:	22813483          	ld	s1,552(sp)
    8003d05a:	22013903          	ld	s2,544(sp)
    8003d05e:	21813983          	ld	s3,536(sp)
    8003d062:	21013a03          	ld	s4,528(sp)
    8003d066:	20813a83          	ld	s5,520(sp)
    8003d06a:	20013b03          	ld	s6,512(sp)
    8003d06e:	7bfe                	ld	s7,504(sp)
    8003d070:	7c5e                	ld	s8,496(sp)
    8003d072:	7cbe                	ld	s9,488(sp)
    8003d074:	7d1e                	ld	s10,480(sp)
    8003d076:	6dfe                	ld	s11,472(sp)
    8003d078:	24010113          	addi	sp,sp,576
    8003d07c:	8082                	ret
quickjs-nuttx/quickjs.c:43760
    ret = JS_EXCEPTION;
    8003d07e:	67aa                	ld	a5,136(sp)
    8003d080:	670a                	ld	a4,128(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003d082:	05600693          	li	a3,86
    8003d086:	863e                	mv	a2,a5
    8003d088:	4801                	li	a6,0
    8003d08a:	85ba                	mv	a1,a4
    8003d08c:	8522                	mv	a0,s0
    8003d08e:	e7be                	sd	a5,456(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43760
    8003d090:	f902                	sd	zero,176(sp)
    8003d092:	fd02                	sd	zero,184(sp)
quickjs-nuttx/quickjs.c:43761
    obj = JS_NULL;
    8003d094:	e982                	sd	zero,208(sp)
    8003d096:	ed82                	sd	zero,216(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003d098:	e3ba                	sd	a4,448(sp)
    8003d09a:	a11d90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003d09e:	e32a                	sd	a0,384(sp)
    8003d0a0:	e72e                	sd	a1,392(sp)
    8003d0a2:	f1aa                	sd	a0,224(sp)
    8003d0a4:	f5ae                	sd	a1,232(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43768
    if (JS_IsException(val) || JS_ToLengthFree(ctx, &last_index, val))
    8003d0a6:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003d0aa:	862a                	mv	a2,a0
    8003d0ac:	86ae                	mv	a3,a1
js_regexp_exec():
quickjs-nuttx/quickjs.c:43768
    8003d0ae:	49278563          	beq	a5,s2,8003d538 <js_regexp_exec+0x56a>
quickjs-nuttx/quickjs.c:43768 (discriminator 1)
    8003d0b2:	092c                	addi	a1,sp,152
    8003d0b4:	8522                	mv	a0,s0
    8003d0b6:	ce9e70ef          	jal	ra,80024d9e <JS_ToLengthFree>
    8003d0ba:	e02a                	sd	a0,0(sp)
    8003d0bc:	46051e63          	bnez	a0,8003d538 <js_regexp_exec+0x56a>
quickjs-nuttx/quickjs.c:43771
    re_bytecode = re->bytecode->u.str8;
    8003d0c0:	0384b983          	ld	s3,56(s1)
    8003d0c4:	09c1                	addi	s3,s3,16
quickjs-nuttx/quickjs.c:43772
    re_flags = lre_get_flags(re_bytecode);
    8003d0c6:	854e                	mv	a0,s3
    8003d0c8:	069120ef          	jal	ra,8004f930 <lre_get_flags>
quickjs-nuttx/quickjs.c:43773
    if ((re_flags & (LRE_FLAG_GLOBAL | LRE_FLAG_STICKY)) == 0) {
    8003d0cc:	02157913          	andi	s2,a0,33
quickjs-nuttx/quickjs.c:43772
    re_flags = lre_get_flags(re_bytecode);
    8003d0d0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:43773
    if ((re_flags & (LRE_FLAG_GLOBAL | LRE_FLAG_STICKY)) == 0) {
    8003d0d2:	00091363          	bnez	s2,8003d0d8 <js_regexp_exec+0x10a>
quickjs-nuttx/quickjs.c:43774
        last_index = 0;
    8003d0d6:	ed02                	sd	zero,152(sp)
quickjs-nuttx/quickjs.c:43777
    capture_count = lre_get_capture_count(re_bytecode);
    8003d0d8:	854e                	mv	a0,s3
    8003d0da:	051120ef          	jal	ra,8004f92a <lre_get_capture_count>
    8003d0de:	ecaa                	sd	a0,88(sp)
quickjs-nuttx/quickjs.c:43765
    capture = NULL;
    8003d0e0:	4c81                	li	s9,0
quickjs-nuttx/quickjs.c:43778
    if (capture_count > 0) {
    8003d0e2:	00a05a63          	blez	a0,8003d0f6 <js_regexp_exec+0x128>
quickjs-nuttx/quickjs.c:43779
        capture = js_malloc(ctx, sizeof(capture[0]) * capture_count * 2);
    8003d0e6:	00451593          	slli	a1,a0,0x4
    8003d0ea:	8522                	mv	a0,s0
    8003d0ec:	818dd0ef          	jal	ra,8001a104 <js_malloc>
    8003d0f0:	8caa                	mv	s9,a0
quickjs-nuttx/quickjs.c:43780
        if (!capture)
    8003d0f2:	44050d63          	beqz	a0,8003d54c <js_regexp_exec+0x57e>
quickjs-nuttx/quickjs.c:43785
    if (last_index > str->len) {
    8003d0f6:	7782                	ld	a5,32(sp)
    8003d0f8:	66ea                	ld	a3,152(sp)
    8003d0fa:	43d0                	lw	a2,4(a5)
    8003d0fc:	02161793          	slli	a5,a2,0x21
    8003d100:	0217d713          	srli	a4,a5,0x21
    8003d104:	02d75a63          	bge	a4,a3,8003d138 <js_regexp_exec+0x16a>
quickjs-nuttx/quickjs.c:43795
                if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    8003d108:	658a                	ld	a1,128(sp)
    8003d10a:	662a                	ld	a2,136(sp)
    8003d10c:	4701                	li	a4,0
    8003d10e:	4781                	li	a5,0
    8003d110:	05600693          	li	a3,86
    8003d114:	8522                	mv	a0,s0
    8003d116:	af7fa0ef          	jal	ra,80037c0c <JS_SetProperty>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d11a:	448d                	li	s1,3
    8003d11c:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d11e:	490d                	li	s2,3
    8003d120:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43795
                if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    8003d122:	06054363          	bltz	a0,8003d188 <js_regexp_exec+0x1ba>
quickjs-nuttx/quickjs.c:43761
    obj = JS_NULL;
    8003d126:	4c09                	li	s8,2
quickjs-nuttx/quickjs.c:43928
    ret = obj;
    8003d128:	67ce                	ld	a5,208(sp)
    8003d12a:	8be2                	mv	s7,s8
quickjs-nuttx/quickjs.c:43929
    obj = JS_UNDEFINED;
    8003d12c:	e982                	sd	zero,208(sp)
quickjs-nuttx/quickjs.c:43928
    ret = obj;
    8003d12e:	f93e                	sd	a5,176(sp)
quickjs-nuttx/quickjs.c:43929
    obj = JS_UNDEFINED;
    8003d130:	498d                	li	s3,3
    8003d132:	4a81                	li	s5,0
    8003d134:	4c0d                	li	s8,3
    8003d136:	aa05                	j	8003d266 <js_regexp_exec+0x298>
quickjs-nuttx/quickjs.c:43783
    shift = str->is_wide_char;
    8003d138:	01f6579b          	srliw	a5,a2,0x1f
    8003d13c:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs.c:43784
    str_buf = str->u.str8;
    8003d13e:	7782                	ld	a5,32(sp)
quickjs-nuttx/quickjs.c:43788
        rc = lre_exec(capture, re_bytecode,
    8003d140:	8822                	mv	a6,s0
    8003d142:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:43784
    str_buf = str->u.str8;
    8003d144:	07c1                	addi	a5,a5,16
    8003d146:	e0be                	sd	a5,64(sp)
quickjs-nuttx/quickjs.c:43788
        rc = lre_exec(capture, re_bytecode,
    8003d148:	6606                	ld	a2,64(sp)
    8003d14a:	77e2                	ld	a5,56(sp)
    8003d14c:	85ce                	mv	a1,s3
    8003d14e:	8566                	mv	a0,s9
    8003d150:	6ea120ef          	jal	ra,8004f83a <lre_exec>
quickjs-nuttx/quickjs.c:43792
    if (rc != 1) {
    8003d154:	4785                	li	a5,1
    8003d156:	02f50c63          	beq	a0,a5,8003d18e <js_regexp_exec+0x1c0>
quickjs-nuttx/quickjs.c:43793
        if (rc >= 0) {
    8003d15a:	00054c63          	bltz	a0,8003d172 <js_regexp_exec+0x1a4>
quickjs-nuttx/quickjs.c:43794
            if (rc == 2 || (re_flags & (LRE_FLAG_GLOBAL | LRE_FLAG_STICKY))) {
    8003d15e:	4789                	li	a5,2
    8003d160:	faf504e3          	beq	a0,a5,8003d108 <js_regexp_exec+0x13a>
quickjs-nuttx/quickjs.c:43794 (discriminator 1)
    8003d164:	fa0912e3          	bnez	s2,8003d108 <js_regexp_exec+0x13a>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d168:	448d                	li	s1,3
    8003d16a:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d16c:	490d                	li	s2,3
    8003d16e:	4b01                	li	s6,0
    8003d170:	bf5d                	j	8003d126 <js_regexp_exec+0x158>
quickjs-nuttx/quickjs.c:43800
            JS_ThrowInternalError(ctx, "out of memory in regexp execution");
    8003d172:	00030597          	auipc	a1,0x30
    8003d176:	eae58593          	addi	a1,a1,-338 # 8006d020 <qjsc_repl+0x7a70>
    8003d17a:	8522                	mv	a0,s0
    8003d17c:	f7cdc0ef          	jal	ra,800198f8 <JS_ThrowInternalError>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d180:	448d                	li	s1,3
    8003d182:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d184:	490d                	li	s2,3
    8003d186:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43762
    groups = JS_UNDEFINED;
    8003d188:	498d                	li	s3,3
    8003d18a:	4a81                	li	s5,0
    8003d18c:	a6f1                	j	8003d558 <js_regexp_exec+0x58a>
quickjs-nuttx/quickjs.c:43805
        if (re_flags & (LRE_FLAG_GLOBAL | LRE_FLAG_STICKY)) {
    8003d18e:	02091563          	bnez	s2,8003d1b8 <js_regexp_exec+0x1ea>
quickjs-nuttx/quickjs.c:43810
        obj = JS_NewArray(ctx);
    8003d192:	8522                	mv	a0,s0
    8003d194:	8c6df0ef          	jal	ra,8001c25a <JS_NewArray>
    8003d198:	f42e                	sd	a1,40(sp)
    8003d19a:	e9aa                	sd	a0,208(sp)
    8003d19c:	edae                	sd	a1,216(sp)
quickjs-nuttx/quickjs.c:43811
        if (JS_IsException(obj))
    8003d19e:	0005879b          	sext.w	a5,a1
    8003d1a2:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:43810
        obj = JS_NewArray(ctx);
    8003d1a4:	8c2e                	mv	s8,a1
quickjs-nuttx/quickjs.c:43811
        if (JS_IsException(obj))
    8003d1a6:	05279263          	bne	a5,s2,8003d1ea <js_regexp_exec+0x21c>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d1aa:	448d                	li	s1,3
    8003d1ac:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d1ae:	490d                	li	s2,3
    8003d1b0:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43901
        t = groups, groups = JS_UNDEFINED;
    8003d1b2:	498d                	li	s3,3
    8003d1b4:	4a81                	li	s5,0
    8003d1b6:	a09d                	j	8003d21c <js_regexp_exec+0x24e>
quickjs-nuttx/quickjs.c:43807
                               JS_NewInt32(ctx, (capture[1] - str_buf) >> shift)) < 0)
    8003d1b8:	6706                	ld	a4,64(sp)
    8003d1ba:	008cb783          	ld	a5,8(s9)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003d1be:	eb02                	sd	zero,400(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43806
            if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    8003d1c0:	658a                	ld	a1,128(sp)
quickjs-nuttx/quickjs.c:43807
                               JS_NewInt32(ctx, (capture[1] - str_buf) >> shift)) < 0)
    8003d1c2:	8f99                	sub	a5,a5,a4
    8003d1c4:	7762                	ld	a4,56(sp)
quickjs-nuttx/quickjs.c:43806
            if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    8003d1c6:	662a                	ld	a2,136(sp)
    8003d1c8:	05600693          	li	a3,86
quickjs-nuttx/quickjs.c:43807
                               JS_NewInt32(ctx, (capture[1] - str_buf) >> shift)) < 0)
    8003d1cc:	40e7d7b3          	sra	a5,a5,a4
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003d1d0:	18f12823          	sw	a5,400(sp)
    8003d1d4:	675a                	ld	a4,400(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43806
            if (JS_SetProperty(ctx, this_val, JS_ATOM_lastIndex,
    8003d1d6:	4781                	li	a5,0
    8003d1d8:	8522                	mv	a0,s0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003d1da:	ef02                	sd	zero,408(sp)
    8003d1dc:	e2ba                	sd	a4,320(sp)
    8003d1de:	e682                	sd	zero,328(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43806
    8003d1e0:	a2dfa0ef          	jal	ra,80037c0c <JS_SetProperty>
    8003d1e4:	fa0557e3          	bgez	a0,8003d192 <js_regexp_exec+0x1c4>
    8003d1e8:	bf61                	j	8003d180 <js_regexp_exec+0x1b2>
quickjs-nuttx/quickjs.c:43814
        group_name_ptr = lre_get_groupnames(re_bytecode);
    8003d1ea:	854e                	mv	a0,s3
    8003d1ec:	74a120ef          	jal	ra,8004f936 <lre_get_groupnames>
    8003d1f0:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs.c:43815
        if (group_name_ptr) {
    8003d1f2:	c51d                	beqz	a0,8003d220 <js_regexp_exec+0x252>
quickjs-nuttx/quickjs.c:43816
            groups = JS_NewObjectProto(ctx, JS_NULL);
    8003d1f4:	4789                	li	a5,2
    8003d1f6:	4581                	li	a1,0
    8003d1f8:	4609                	li	a2,2
    8003d1fa:	8522                	mv	a0,s0
    8003d1fc:	e7be                	sd	a5,456(sp)
    8003d1fe:	e382                	sd	zero,448(sp)
    8003d200:	dcbde0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003d204:	f9aa                	sd	a0,240(sp)
    8003d206:	fdae                	sd	a1,248(sp)
quickjs-nuttx/quickjs.c:43817
            if (JS_IsException(groups))
    8003d208:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:43816
            groups = JS_NewObjectProto(ctx, JS_NULL);
    8003d20c:	8aaa                	mv	s5,a0
    8003d20e:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:43817
            if (JS_IsException(groups))
    8003d210:	01279a63          	bne	a5,s2,8003d224 <js_regexp_exec+0x256>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d214:	448d                	li	s1,3
    8003d216:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d218:	490d                	li	s2,3
    8003d21a:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43760
    ret = JS_EXCEPTION;
    8003d21c:	4b99                	li	s7,6
    8003d21e:	a0a1                	j	8003d266 <js_regexp_exec+0x298>
quickjs-nuttx/quickjs.c:43762
    groups = JS_UNDEFINED;
    8003d220:	4a81                	li	s5,0
    8003d222:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:43820
        if (re_flags & LRE_FLAG_INDICES) {
    8003d224:	0404f493          	andi	s1,s1,64
    8003d228:	c0c1                	beqz	s1,8003d2a8 <js_regexp_exec+0x2da>
quickjs-nuttx/quickjs.c:43821
            indices = JS_NewArray(ctx);
    8003d22a:	8522                	mv	a0,s0
    8003d22c:	82edf0ef          	jal	ra,8001c25a <JS_NewArray>
    8003d230:	e22a                	sd	a0,256(sp)
    8003d232:	e62e                	sd	a1,264(sp)
quickjs-nuttx/quickjs.c:43822
            if (JS_IsException(indices))
    8003d234:	0005879b          	sext.w	a5,a1
    8003d238:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:43821
            indices = JS_NewArray(ctx);
    8003d23a:	8b2a                	mv	s6,a0
    8003d23c:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:43822
            if (JS_IsException(indices))
    8003d23e:	31778f63          	beq	a5,s7,8003d55c <js_regexp_exec+0x58e>
quickjs-nuttx/quickjs.c:43824
            if (group_name_ptr) {
    8003d242:	140d8363          	beqz	s11,8003d388 <js_regexp_exec+0x3ba>
quickjs-nuttx/quickjs.c:43825
                indices_groups = JS_NewObjectProto(ctx, JS_NULL);
    8003d246:	4789                	li	a5,2
    8003d248:	4581                	li	a1,0
    8003d24a:	4609                	li	a2,2
    8003d24c:	8522                	mv	a0,s0
    8003d24e:	e7be                	sd	a5,456(sp)
    8003d250:	e382                	sd	zero,448(sp)
    8003d252:	d79de0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003d256:	ea2a                	sd	a0,272(sp)
    8003d258:	ee2e                	sd	a1,280(sp)
quickjs-nuttx/quickjs.c:43826
                if (JS_IsException(indices_groups))
    8003d25a:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:43825
                indices_groups = JS_NewObjectProto(ctx, JS_NULL);
    8003d25e:	8a2a                	mv	s4,a0
    8003d260:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:43826
                if (JS_IsException(indices_groups))
    8003d262:	05779763          	bne	a5,s7,8003d2b0 <js_regexp_exec+0x2e2>
quickjs-nuttx/quickjs.c:43931
    JS_FreeValue(ctx, indices_groups);
    8003d266:	85d2                	mv	a1,s4
    8003d268:	8626                	mv	a2,s1
    8003d26a:	8522                	mv	a0,s0
    8003d26c:	d32ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43932
    JS_FreeValue(ctx, indices);
    8003d270:	85da                	mv	a1,s6
    8003d272:	864a                	mv	a2,s2
    8003d274:	8522                	mv	a0,s0
    8003d276:	d28ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43933
    JS_FreeValue(ctx, str_val);
    8003d27a:	65e2                	ld	a1,24(sp)
    8003d27c:	6642                	ld	a2,16(sp)
    8003d27e:	8522                	mv	a0,s0
    8003d280:	d1ece0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43934
    JS_FreeValue(ctx, groups);
    8003d284:	85d6                	mv	a1,s5
    8003d286:	864e                	mv	a2,s3
    8003d288:	8522                	mv	a0,s0
    8003d28a:	d14ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43935
    JS_FreeValue(ctx, obj);
    8003d28e:	65ce                	ld	a1,208(sp)
    8003d290:	8662                	mv	a2,s8
    8003d292:	8522                	mv	a0,s0
    8003d294:	d0ace0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43936
    js_free(ctx, capture);
    8003d298:	85e6                	mv	a1,s9
    8003d29a:	8522                	mv	a0,s0
    8003d29c:	d5bcd0ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs.c:43937
    return ret;
    8003d2a0:	77ca                	ld	a5,176(sp)
    8003d2a2:	f65e                	sd	s7,296(sp)
    8003d2a4:	f23e                	sd	a5,288(sp)
    8003d2a6:	b355                	j	8003d04a <js_regexp_exec+0x7c>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d2a8:	448d                	li	s1,3
    8003d2aa:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d2ac:	490d                	li	s2,3
    8003d2ae:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43848
            if (!JS_IsUndefined(indices)) {
    8003d2b0:	0009079b          	sext.w	a5,s2
    8003d2b4:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs.c:43875
                if (JS_DefinePropertyValueUint32(ctx, indices, i, val,
    8003d2b6:	6791                	lui	a5,0x4
    8003d2b8:	079d                	addi	a5,a5,7
    8003d2ba:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:43867
                if (name && !JS_IsUndefined(indices_groups)) {
    8003d2bc:	0004879b          	sext.w	a5,s1
    8003d2c0:	f8be                	sd	a5,112(sp)
quickjs-nuttx/quickjs.c:43831 (discriminator 1)
        for(i = 0; i < capture_count; i++) {
    8003d2c2:	6782                	ld	a5,0(sp)
    8003d2c4:	6766                	ld	a4,88(sp)
    8003d2c6:	0ce7c463          	blt	a5,a4,8003d38e <js_regexp_exec+0x3c0>
quickjs-nuttx/quickjs.c:43902
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_groups,
    8003d2ca:	77a2                	ld	a5,40(sp)
    8003d2cc:	65ce                	ld	a1,208(sp)
    8003d2ce:	7622                	ld	a2,40(sp)
    8003d2d0:	6b91                	lui	s7,0x4
    8003d2d2:	edbe                	sd	a5,216(sp)
    8003d2d4:	007b8813          	addi	a6,s7,7 # 4007 <asinh-0x7fffbff9>
    8003d2d8:	8756                	mv	a4,s5
    8003d2da:	87ce                	mv	a5,s3
    8003d2dc:	08800693          	li	a3,136
    8003d2e0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:43901
        t = groups, groups = JS_UNDEFINED;
    8003d2e2:	f156                	sd	s5,160(sp)
    8003d2e4:	f54e                	sd	s3,168(sp)
quickjs-nuttx/quickjs.c:43902
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_groups,
    8003d2e6:	f47da0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    8003d2ea:	ec0544e3          	bltz	a0,8003d1b2 <js_regexp_exec+0x1e4>
quickjs-nuttx/quickjs.c:43907
        t = JS_NewInt32(ctx, (capture[0] - str_buf) >> shift);
    8003d2ee:	6706                	ld	a4,64(sp)
    8003d2f0:	000cb783          	ld	a5,0(s9)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003d2f4:	1c012223          	sw	zero,452(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43908
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_index, t, prop_flags) < 0)
    8003d2f8:	65ce                	ld	a1,208(sp)
quickjs-nuttx/quickjs.c:43907
        t = JS_NewInt32(ctx, (capture[0] - str_buf) >> shift);
    8003d2fa:	8f99                	sub	a5,a5,a4
    8003d2fc:	7762                	ld	a4,56(sp)
quickjs-nuttx/quickjs.c:43908
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_index, t, prop_flags) < 0)
    8003d2fe:	666e                	ld	a2,216(sp)
    8003d300:	007b8813          	addi	a6,s7,7
quickjs-nuttx/quickjs.c:43907
        t = JS_NewInt32(ctx, (capture[0] - str_buf) >> shift);
    8003d304:	40e7d7b3          	sra	a5,a5,a4
quickjs-nuttx/quickjs.c:43908
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_index, t, prop_flags) < 0)
    8003d308:	1cf12023          	sw	a5,448(sp)
    8003d30c:	671e                	ld	a4,448(sp)
    8003d30e:	4781                	li	a5,0
    8003d310:	05800693          	li	a3,88
    8003d314:	8522                	mv	a0,s0
    8003d316:	e782                	sd	zero,456(sp)
    8003d318:	f15da0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    8003d31c:	e8054be3          	bltz	a0,8003d1b2 <js_regexp_exec+0x1e4>
quickjs-nuttx/quickjs.c:43912
        if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_input, t, prop_flags) < 0)
    8003d320:	7702                	ld	a4,32(sp)
    8003d322:	67c6                	ld	a5,80(sp)
    8003d324:	65ce                	ld	a1,208(sp)
    8003d326:	666e                	ld	a2,216(sp)
    8003d328:	007b8813          	addi	a6,s7,7
    8003d32c:	05900693          	li	a3,89
    8003d330:	8522                	mv	a0,s0
    8003d332:	efbda0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    8003d336:	22054863          	bltz	a0,8003d566 <js_regexp_exec+0x598>
quickjs-nuttx/quickjs.c:43915
        if (!JS_IsUndefined(indices)) {
    8003d33a:	0009079b          	sext.w	a5,s2
    8003d33e:	470d                	li	a4,3
    8003d340:	04e78063          	beq	a5,a4,8003d380 <js_regexp_exec+0x3b2>
quickjs-nuttx/quickjs.c:43917
            if (JS_DefinePropertyValue(ctx, indices, JS_ATOM_groups,
    8003d344:	007b8813          	addi	a6,s7,7
    8003d348:	8752                	mv	a4,s4
    8003d34a:	87a6                	mv	a5,s1
    8003d34c:	08800693          	li	a3,136
    8003d350:	85da                	mv	a1,s6
    8003d352:	864a                	mv	a2,s2
    8003d354:	8522                	mv	a0,s0
    8003d356:	ed7da0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
    8003d35a:	20054463          	bltz	a0,8003d562 <js_regexp_exec+0x594>
quickjs-nuttx/quickjs.c:43922
            if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_indices,
    8003d35e:	65ce                	ld	a1,208(sp)
    8003d360:	666e                	ld	a2,216(sp)
    8003d362:	875a                	mv	a4,s6
    8003d364:	87ca                	mv	a5,s2
    8003d366:	007b8813          	addi	a6,s7,7
    8003d36a:	08900693          	li	a3,137
    8003d36e:	8522                	mv	a0,s0
    8003d370:	ebdda0ef          	jal	ra,8001822c <JS_DefinePropertyValue>
quickjs-nuttx/quickjs.c:43916
            t = indices_groups, indices_groups = JS_UNDEFINED;
    8003d374:	448d                	li	s1,3
    8003d376:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43921
            t = indices, indices = JS_UNDEFINED;
    8003d378:	490d                	li	s2,3
    8003d37a:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43922
            if (JS_DefinePropertyValue(ctx, obj, JS_ATOM_indices,
    8003d37c:	1e054563          	bltz	a0,8003d566 <js_regexp_exec+0x598>
quickjs-nuttx/quickjs.c:43911
        t = str_val, str_val = JS_UNDEFINED;
    8003d380:	478d                	li	a5,3
    8003d382:	e83e                	sd	a5,16(sp)
    8003d384:	ec02                	sd	zero,24(sp)
    8003d386:	b34d                	j	8003d128 <js_regexp_exec+0x15a>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d388:	4a01                	li	s4,0
    8003d38a:	448d                	li	s1,3
    8003d38c:	b715                	j	8003d2b0 <js_regexp_exec+0x2e2>
quickjs-nuttx/quickjs.c:43833
            uint8_t **match = &capture[2 * i];
    8003d38e:	4782                	lw	a5,0(sp)
quickjs-nuttx/quickjs.c:43832
            const char *name = NULL;
    8003d390:	e402                	sd	zero,8(sp)
    8003d392:	f0be                	sd	a5,96(sp)
quickjs-nuttx/quickjs.c:43833
            uint8_t **match = &capture[2 * i];
    8003d394:	6782                	ld	a5,0(sp)
    8003d396:	00179d1b          	slliw	s10,a5,0x1
    8003d39a:	0d0e                	slli	s10,s10,0x3
    8003d39c:	9d66                	add	s10,s10,s9
quickjs-nuttx/quickjs.c:43838
            if (group_name_ptr && i > 0) {
    8003d39e:	000d8c63          	beqz	s11,8003d3b6 <js_regexp_exec+0x3e8>
quickjs-nuttx/quickjs.c:43838 (discriminator 1)
    8003d3a2:	cb91                	beqz	a5,8003d3b6 <js_regexp_exec+0x3e8>
quickjs-nuttx/quickjs.c:43839
                if (*group_name_ptr) name = group_name_ptr;
    8003d3a4:	000dc783          	lbu	a5,0(s11)
    8003d3a8:	c391                	beqz	a5,8003d3ac <js_regexp_exec+0x3de>
    8003d3aa:	e46e                	sd	s11,8(sp)
quickjs-nuttx/quickjs.c:43840
                group_name_ptr += strlen(group_name_ptr) + 1;
    8003d3ac:	856e                	mv	a0,s11
    8003d3ae:	1d5260ef          	jal	ra,80063d82 <strlen>
    8003d3b2:	0505                	addi	a0,a0,1
    8003d3b4:	9daa                	add	s11,s11,a0
quickjs-nuttx/quickjs.c:43843
            if (match[0] && match[1]) {
    8003d3b6:	000d3b83          	ld	s7,0(s10)
    8003d3ba:	040b8a63          	beqz	s7,8003d40e <js_regexp_exec+0x440>
quickjs-nuttx/quickjs.c:43843 (discriminator 1)
    8003d3be:	008d3d03          	ld	s10,8(s10)
    8003d3c2:	040d0663          	beqz	s10,8003d40e <js_regexp_exec+0x440>
quickjs-nuttx/quickjs.c:43844
                start = (match[0] - str_buf) >> shift;
    8003d3c6:	6786                	ld	a5,64(sp)
    8003d3c8:	40fb8bb3          	sub	s7,s7,a5
    8003d3cc:	77e2                	ld	a5,56(sp)
    8003d3ce:	40fbdbb3          	sra	s7,s7,a5
quickjs-nuttx/quickjs.c:43845
                end = (match[1] - str_buf) >> shift;
    8003d3d2:	6786                	ld	a5,64(sp)
quickjs-nuttx/quickjs.c:43844
                start = (match[0] - str_buf) >> shift;
    8003d3d4:	2b81                	sext.w	s7,s7
quickjs-nuttx/quickjs.c:43845
                end = (match[1] - str_buf) >> shift;
    8003d3d6:	40fd0d33          	sub	s10,s10,a5
    8003d3da:	77e2                	ld	a5,56(sp)
    8003d3dc:	40fd5d33          	sra	s10,s10,a5
    8003d3e0:	2d01                	sext.w	s10,s10
quickjs-nuttx/quickjs.c:43848
            if (!JS_IsUndefined(indices)) {
    8003d3e2:	77a6                	ld	a5,104(sp)
    8003d3e4:	470d                	li	a4,3
    8003d3e6:	02e79763          	bne	a5,a4,8003d414 <js_regexp_exec+0x446>
quickjs-nuttx/quickjs.c:43882
            if (start != -1) {
    8003d3ea:	57fd                	li	a5,-1
    8003d3ec:	0efb8c63          	beq	s7,a5,8003d4e4 <js_regexp_exec+0x516>
quickjs-nuttx/quickjs.c:43883
                val = js_sub_string(ctx, str, start, end);
    8003d3f0:	7582                	ld	a1,32(sp)
    8003d3f2:	865e                	mv	a2,s7
    8003d3f4:	86ea                	mv	a3,s10
    8003d3f6:	8522                	mv	a0,s0
    8003d3f8:	d17e20ef          	jal	ra,8002010e <js_sub_string>
    8003d3fc:	e3aa                	sd	a0,448(sp)
    8003d3fe:	e7ae                	sd	a1,456(sp)
quickjs-nuttx/quickjs.c:43884
                if (JS_IsException(val))
    8003d400:	0005871b          	sext.w	a4,a1
    8003d404:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:43883
                val = js_sub_string(ctx, str, start, end);
    8003d406:	8bae                	mv	s7,a1
quickjs-nuttx/quickjs.c:43884
                if (JS_IsException(val))
    8003d408:	0ef71063          	bne	a4,a5,8003d4e8 <js_regexp_exec+0x51a>
    8003d40c:	bd01                	j	8003d21c <js_regexp_exec+0x24e>
quickjs-nuttx/quickjs.c:43835
            int end = -1;
    8003d40e:	6d26                	ld	s10,72(sp)
quickjs-nuttx/quickjs.c:43834
            int start = -1;
    8003d410:	8bea                	mv	s7,s10
    8003d412:	bfc1                	j	8003d3e2 <js_regexp_exec+0x414>
quickjs-nuttx/quickjs.c:43850
                if (start != -1) {
    8003d414:	57fd                	li	a5,-1
    8003d416:	0cfb8463          	beq	s7,a5,8003d4de <js_regexp_exec+0x510>
quickjs-nuttx/quickjs.c:43851
                    val = JS_NewArray(ctx);
    8003d41a:	8522                	mv	a0,s0
    8003d41c:	e3fde0ef          	jal	ra,8001c25a <JS_NewArray>
    8003d420:	e3aa                	sd	a0,448(sp)
    8003d422:	e7ae                	sd	a1,456(sp)
quickjs-nuttx/quickjs.c:43852
                    if (JS_IsException(val))
    8003d424:	0005871b          	sext.w	a4,a1
    8003d428:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:43851
                    val = JS_NewArray(ctx);
    8003d42a:	88ae                	mv	a7,a1
quickjs-nuttx/quickjs.c:43852
                    if (JS_IsException(val))
    8003d42c:	def708e3          	beq	a4,a5,8003d21c <js_regexp_exec+0x24e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003d430:	f302                	sd	zero,416(sp)
    8003d432:	1b712023          	sw	s7,416(sp)
    8003d436:	771a                	ld	a4,416(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43854
                    if (JS_DefinePropertyValueUint32(ctx, val, 0,
    8003d438:	7842                	ld	a6,48(sp)
    8003d43a:	85aa                	mv	a1,a0
    8003d43c:	8646                	mv	a2,a7
    8003d43e:	4781                	li	a5,0
    8003d440:	4681                	li	a3,0
    8003d442:	8522                	mv	a0,s0
    8003d444:	fcc6                	sd	a7,120(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003d446:	f702                	sd	zero,424(sp)
    8003d448:	eaba                	sd	a4,336(sp)
    8003d44a:	ee82                	sd	zero,344(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43854
    8003d44c:	ba5f30ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    8003d450:	78e6                	ld	a7,120(sp)
    8003d452:	00055863          	bgez	a0,8003d462 <js_regexp_exec+0x494>
quickjs-nuttx/quickjs.c:43857
                        JS_FreeValue(ctx, val);
    8003d456:	659e                	ld	a1,448(sp)
    8003d458:	663e                	ld	a2,456(sp)
    8003d45a:	8522                	mv	a0,s0
    8003d45c:	b42ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:43858
                        goto fail;
    8003d460:	bb75                	j	8003d21c <js_regexp_exec+0x24e>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003d462:	fb02                	sd	zero,432(sp)
    8003d464:	1ba12823          	sw	s10,432(sp)
    8003d468:	775a                	ld	a4,432(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43860
                    if (JS_DefinePropertyValueUint32(ctx, val, 1,
    8003d46a:	7842                	ld	a6,48(sp)
    8003d46c:	659e                	ld	a1,448(sp)
    8003d46e:	663e                	ld	a2,456(sp)
    8003d470:	4781                	li	a5,0
    8003d472:	4685                	li	a3,1
    8003d474:	8522                	mv	a0,s0
    8003d476:	fcc6                	sd	a7,120(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    8003d478:	ff02                	sd	zero,440(sp)
    8003d47a:	f2ba                	sd	a4,352(sp)
    8003d47c:	f682                	sd	zero,360(sp)
js_regexp_exec():
quickjs-nuttx/quickjs.c:43860
    8003d47e:	b73f30ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    8003d482:	78e6                	ld	a7,120(sp)
    8003d484:	fc0549e3          	bltz	a0,8003d456 <js_regexp_exec+0x488>
quickjs-nuttx/quickjs.c:43867
                if (name && !JS_IsUndefined(indices_groups)) {
    8003d488:	67a2                	ld	a5,8(sp)
    8003d48a:	cb9d                	beqz	a5,8003d4c0 <js_regexp_exec+0x4f2>
quickjs-nuttx/quickjs.c:43867 (discriminator 1)
    8003d48c:	77c6                	ld	a5,112(sp)
    8003d48e:	470d                	li	a4,3
    8003d490:	02e78863          	beq	a5,a4,8003d4c0 <js_regexp_exec+0x4f2>
quickjs-nuttx/quickjs.c:43868
                    val = JS_DupValue(ctx, val);
    8003d494:	651e                	ld	a0,448(sp)
    8003d496:	85c6                	mv	a1,a7
    8003d498:	e7c6                	sd	a7,456(sp)
    8003d49a:	f81cc0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:43869
                    if (JS_DefinePropertyValueStr(ctx, indices_groups,
    8003d49e:	7842                	ld	a6,48(sp)
    8003d4a0:	66a2                	ld	a3,8(sp)
quickjs-nuttx/quickjs.c:43868
                    val = JS_DupValue(ctx, val);
    8003d4a2:	872a                	mv	a4,a0
    8003d4a4:	e3aa                	sd	a0,448(sp)
    8003d4a6:	e7ae                	sd	a1,456(sp)
quickjs-nuttx/quickjs.c:43869
                    if (JS_DefinePropertyValueStr(ctx, indices_groups,
    8003d4a8:	87ae                	mv	a5,a1
    8003d4aa:	fcae                	sd	a1,120(sp)
    8003d4ac:	8626                	mv	a2,s1
    8003d4ae:	85d2                	mv	a1,s4
    8003d4b0:	8522                	mv	a0,s0
    8003d4b2:	ea52                	sd	s4,272(sp)
    8003d4b4:	ee26                	sd	s1,280(sp)
    8003d4b6:	bbff30ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
    8003d4ba:	78e6                	ld	a7,120(sp)
    8003d4bc:	f8054de3          	bltz	a0,8003d456 <js_regexp_exec+0x488>
quickjs-nuttx/quickjs.c:43875
                if (JS_DefinePropertyValueUint32(ctx, indices, i, val,
    8003d4c0:	7842                	ld	a6,48(sp)
    8003d4c2:	671e                	ld	a4,448(sp)
    8003d4c4:	7686                	ld	a3,96(sp)
    8003d4c6:	87c6                	mv	a5,a7
    8003d4c8:	85da                	mv	a1,s6
    8003d4ca:	864a                	mv	a2,s2
    8003d4cc:	8522                	mv	a0,s0
    8003d4ce:	e25a                	sd	s6,256(sp)
    8003d4d0:	e64a                	sd	s2,264(sp)
    8003d4d2:	e7c6                	sd	a7,456(sp)
    8003d4d4:	b1df30ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    8003d4d8:	f00559e3          	bgez	a0,8003d3ea <js_regexp_exec+0x41c>
    8003d4dc:	b381                	j	8003d21c <js_regexp_exec+0x24e>
quickjs-nuttx/quickjs.c:43849
                val = JS_UNDEFINED;
    8003d4de:	e382                	sd	zero,448(sp)
    8003d4e0:	488d                	li	a7,3
    8003d4e2:	b75d                	j	8003d488 <js_regexp_exec+0x4ba>
quickjs-nuttx/quickjs.c:43881
            val = JS_UNDEFINED;
    8003d4e4:	e382                	sd	zero,448(sp)
    8003d4e6:	4b8d                	li	s7,3
quickjs-nuttx/quickjs.c:43888
            if (name) {
    8003d4e8:	67a2                	ld	a5,8(sp)
    8003d4ea:	c78d                	beqz	a5,8003d514 <js_regexp_exec+0x546>
quickjs-nuttx/quickjs.c:43889
                if (JS_DefinePropertyValueStr(ctx, groups, name,
    8003d4ec:	651e                	ld	a0,448(sp)
    8003d4ee:	85de                	mv	a1,s7
    8003d4f0:	e7de                	sd	s7,456(sp)
    8003d4f2:	f29cc0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003d4f6:	7842                	ld	a6,48(sp)
    8003d4f8:	66a2                	ld	a3,8(sp)
    8003d4fa:	872a                	mv	a4,a0
    8003d4fc:	87ae                	mv	a5,a1
    8003d4fe:	faaa                	sd	a0,368(sp)
    8003d500:	feae                	sd	a1,376(sp)
    8003d502:	864e                	mv	a2,s3
    8003d504:	85d6                	mv	a1,s5
    8003d506:	8522                	mv	a0,s0
    8003d508:	f9d6                	sd	s5,240(sp)
    8003d50a:	fdce                	sd	s3,248(sp)
    8003d50c:	b69f30ef          	jal	ra,80031074 <JS_DefinePropertyValueStr>
    8003d510:	f40543e3          	bltz	a0,8003d456 <js_regexp_exec+0x488>
quickjs-nuttx/quickjs.c:43897
            if (JS_DefinePropertyValueUint32(ctx, obj, i, val, prop_flags) < 0)
    8003d514:	77a2                	ld	a5,40(sp)
    8003d516:	7842                	ld	a6,48(sp)
    8003d518:	671e                	ld	a4,448(sp)
    8003d51a:	7686                	ld	a3,96(sp)
    8003d51c:	65ce                	ld	a1,208(sp)
    8003d51e:	7622                	ld	a2,40(sp)
    8003d520:	edbe                	sd	a5,216(sp)
    8003d522:	8522                	mv	a0,s0
    8003d524:	87de                	mv	a5,s7
    8003d526:	e7de                	sd	s7,456(sp)
    8003d528:	ac9f30ef          	jal	ra,80030ff0 <JS_DefinePropertyValueUint32>
    8003d52c:	ce0548e3          	bltz	a0,8003d21c <js_regexp_exec+0x24e>
quickjs-nuttx/quickjs.c:43831
        for(i = 0; i < capture_count; i++) {
    8003d530:	6782                	ld	a5,0(sp)
    8003d532:	2785                	addiw	a5,a5,1
    8003d534:	e03e                	sd	a5,0(sp)
    8003d536:	b371                	j	8003d2c2 <js_regexp_exec+0x2f4>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d538:	448d                	li	s1,3
    8003d53a:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d53c:	490d                	li	s2,3
    8003d53e:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43762
    groups = JS_UNDEFINED;
    8003d540:	498d                	li	s3,3
    8003d542:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:43761
    obj = JS_NULL;
    8003d544:	4c09                	li	s8,2
quickjs-nuttx/quickjs.c:43760
    ret = JS_EXCEPTION;
    8003d546:	4b99                	li	s7,6
quickjs-nuttx/quickjs.c:43765
    capture = NULL;
    8003d548:	4c81                	li	s9,0
    8003d54a:	bb31                	j	8003d266 <js_regexp_exec+0x298>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d54c:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d54e:	4b01                	li	s6,0
quickjs-nuttx/quickjs.c:43762
    groups = JS_UNDEFINED;
    8003d550:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d552:	448d                	li	s1,3
quickjs-nuttx/quickjs.c:43763
    indices = JS_UNDEFINED;
    8003d554:	490d                	li	s2,3
quickjs-nuttx/quickjs.c:43762
    groups = JS_UNDEFINED;
    8003d556:	498d                	li	s3,3
quickjs-nuttx/quickjs.c:43761
    obj = JS_NULL;
    8003d558:	4c09                	li	s8,2
    8003d55a:	b1c9                	j	8003d21c <js_regexp_exec+0x24e>
quickjs-nuttx/quickjs.c:43764
    indices_groups = JS_UNDEFINED;
    8003d55c:	448d                	li	s1,3
    8003d55e:	4a01                	li	s4,0
    8003d560:	b975                	j	8003d21c <js_regexp_exec+0x24e>
quickjs-nuttx/quickjs.c:43916
            t = indices_groups, indices_groups = JS_UNDEFINED;
    8003d562:	448d                	li	s1,3
    8003d564:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:43911
        t = str_val, str_val = JS_UNDEFINED;
    8003d566:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:43901
        t = groups, groups = JS_UNDEFINED;
    8003d568:	498d                	li	s3,3
    8003d56a:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:43911
        t = str_val, str_val = JS_UNDEFINED;
    8003d56c:	e83e                	sd	a5,16(sp)
    8003d56e:	ec02                	sd	zero,24(sp)
    8003d570:	b175                	j	8003d21c <js_regexp_exec+0x24e>

000000008003d572 <JS_ObjectDefineProperties>:
JS_ObjectDefineProperties():
quickjs-nuttx/quickjs.c:37102
{
    8003d572:	7131                	addi	sp,sp,-192
    8003d574:	e952                	sd	s4,144(sp)
    8003d576:	fd06                	sd	ra,184(sp)
    8003d578:	f922                	sd	s0,176(sp)
    8003d57a:	f526                	sd	s1,168(sp)
    8003d57c:	f14a                	sd	s2,160(sp)
    8003d57e:	ed4e                	sd	s3,152(sp)
    8003d580:	e556                	sd	s5,136(sp)
    8003d582:	e15a                	sd	s6,128(sp)
    8003d584:	fcde                	sd	s7,120(sp)
    8003d586:	e82e                	sd	a1,16(sp)
    8003d588:	ec32                	sd	a2,24(sp)
    8003d58a:	e036                	sd	a3,0(sp)
    8003d58c:	e43a                	sd	a4,8(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    8003d58e:	00060a1b          	sext.w	s4,a2
JS_ObjectDefineProperties():
quickjs-nuttx/quickjs.c:37109
    if (!JS_IsObject(obj)) {
    8003d592:	57fd                	li	a5,-1
    8003d594:	02fa0163          	beq	s4,a5,8003d5b6 <JS_ObjectDefineProperties+0x44>
quickjs-nuttx/quickjs.c:37110
        JS_ThrowTypeErrorNotAnObject(ctx);
    8003d598:	e92db0ef          	jal	ra,80018c2a <JS_ThrowTypeErrorNotAnObject>
quickjs-nuttx/quickjs.c:37111
        return -1;
    8003d59c:	5a7d                	li	s4,-1
quickjs-nuttx/quickjs.c:37135
}
    8003d59e:	70ea                	ld	ra,184(sp)
    8003d5a0:	744a                	ld	s0,176(sp)
    8003d5a2:	74aa                	ld	s1,168(sp)
    8003d5a4:	790a                	ld	s2,160(sp)
    8003d5a6:	69ea                	ld	s3,152(sp)
    8003d5a8:	6aaa                	ld	s5,136(sp)
    8003d5aa:	6b0a                	ld	s6,128(sp)
    8003d5ac:	7be6                	ld	s7,120(sp)
    8003d5ae:	8552                	mv	a0,s4
    8003d5b0:	6a4a                	ld	s4,144(sp)
    8003d5b2:	6129                	addi	sp,sp,192
    8003d5b4:	8082                	ret
quickjs-nuttx/quickjs.c:37114
    props = JS_ToObject(ctx, properties);
    8003d5b6:	863a                	mv	a2,a4
    8003d5b8:	85b6                	mv	a1,a3
    8003d5ba:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:37113
    desc = JS_UNDEFINED;
    8003d5bc:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:37114
    props = JS_ToObject(ctx, properties);
    8003d5be:	afdf20ef          	jal	ra,800300ba <JS_ToObject>
    8003d5c2:	f82a                	sd	a0,48(sp)
    8003d5c4:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:37115
    if (JS_IsException(props))
    8003d5c6:	0005871b          	sext.w	a4,a1
    8003d5ca:	4799                	li	a5,6
quickjs-nuttx/quickjs.c:37114
    props = JS_ToObject(ctx, properties);
    8003d5cc:	892a                	mv	s2,a0
    8003d5ce:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:37115
    if (JS_IsException(props))
    8003d5d0:	fcf707e3          	beq	a4,a5,8003d59e <JS_ObjectDefineProperties+0x2c>
quickjs-nuttx/quickjs.c:37118
    if (JS_GetOwnPropertyNamesInternal(ctx, &atoms, &len, p, JS_GPN_ENUM_ONLY | JS_GPN_STRING_MASK | JS_GPN_SYMBOL_MASK) < 0)
    8003d5d4:	86aa                	mv	a3,a0
    8003d5d6:	474d                	li	a4,19
    8003d5d8:	1050                	addi	a2,sp,36
    8003d5da:	102c                	addi	a1,sp,40
    8003d5dc:	8526                	mv	a0,s1
    8003d5de:	ae1fa0ef          	jal	ra,800380be <JS_GetOwnPropertyNamesInternal>
quickjs-nuttx/quickjs.c:37113
    desc = JS_UNDEFINED;
    8003d5e2:	440d                	li	s0,3
quickjs-nuttx/quickjs.c:37118
    if (JS_GetOwnPropertyNamesInternal(ctx, &atoms, &len, p, JS_GPN_ENUM_ONLY | JS_GPN_STRING_MASK | JS_GPN_SYMBOL_MASK) < 0)
    8003d5e4:	00054863          	bltz	a0,8003d5f4 <JS_ObjectDefineProperties+0x82>
quickjs-nuttx/quickjs.c:37120
    for(i = 0; i < len; i++) {
    8003d5e8:	4a81                	li	s5,0
quickjs-nuttx/quickjs.c:37123
        if (JS_IsException(desc))
    8003d5ea:	4b19                	li	s6,6
quickjs-nuttx/quickjs.c:37120 (discriminator 1)
    for(i = 0; i < len; i++) {
    8003d5ec:	5792                	lw	a5,36(sp)
    8003d5ee:	02fae363          	bltu	s5,a5,8003d614 <JS_ObjectDefineProperties+0xa2>
quickjs-nuttx/quickjs.c:37128
    ret = 0;
    8003d5f2:	4a01                	li	s4,0
quickjs-nuttx/quickjs.c:37131
    js_free_prop_enum(ctx, atoms, len);
    8003d5f4:	5612                	lw	a2,36(sp)
    8003d5f6:	75a2                	ld	a1,40(sp)
    8003d5f8:	8526                	mv	a0,s1
    8003d5fa:	b5fcd0ef          	jal	ra,8000b158 <js_free_prop_enum>
quickjs-nuttx/quickjs.c:37132
    JS_FreeValue(ctx, props);
    8003d5fe:	75c2                	ld	a1,48(sp)
    8003d600:	7662                	ld	a2,56(sp)
    8003d602:	8526                	mv	a0,s1
    8003d604:	99ace0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37133
    JS_FreeValue(ctx, desc);
    8003d608:	6586                	ld	a1,64(sp)
    8003d60a:	8622                	mv	a2,s0
    8003d60c:	8526                	mv	a0,s1
    8003d60e:	990ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37134
    return ret;
    8003d612:	b771                	j	8003d59e <JS_ObjectDefineProperties+0x2c>
quickjs-nuttx/quickjs.c:37121
        JS_FreeValue(ctx, desc);
    8003d614:	6586                	ld	a1,64(sp)
    8003d616:	8622                	mv	a2,s0
    8003d618:	8526                	mv	a0,s1
    8003d61a:	e4a2                	sd	s0,72(sp)
    8003d61c:	982ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37122
        desc = JS_GetProperty(ctx, props, atoms[i].atom);
    8003d620:	76a2                	ld	a3,40(sp)
    8003d622:	020a9793          	slli	a5,s5,0x20
    8003d626:	01d7db93          	srli	s7,a5,0x1d
    8003d62a:	96de                	add	a3,a3,s7
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003d62c:	42d4                	lw	a3,4(a3)
    8003d62e:	874a                	mv	a4,s2
    8003d630:	87ce                	mv	a5,s3
    8003d632:	4801                	li	a6,0
    8003d634:	85ca                	mv	a1,s2
    8003d636:	864e                	mv	a2,s3
    8003d638:	8526                	mv	a0,s1
    8003d63a:	e8ca                	sd	s2,80(sp)
    8003d63c:	ecce                	sd	s3,88(sp)
    8003d63e:	c6cd90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003d642:	f0aa                	sd	a0,96(sp)
    8003d644:	f4ae                	sd	a1,104(sp)
    8003d646:	e0aa                	sd	a0,64(sp)
    8003d648:	e4ae                	sd	a1,72(sp)
JS_ObjectDefineProperties():
quickjs-nuttx/quickjs.c:37123
        if (JS_IsException(desc))
    8003d64a:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003d64e:	872a                	mv	a4,a0
    8003d650:	842e                	mv	s0,a1
JS_ObjectDefineProperties():
quickjs-nuttx/quickjs.c:37123
    8003d652:	fb6781e3          	beq	a5,s6,8003d5f4 <JS_ObjectDefineProperties+0x82>
quickjs-nuttx/quickjs.c:37125
        if (JS_DefinePropertyDesc(ctx, obj, atoms[i].atom, desc, JS_PROP_THROW) < 0)
    8003d656:	76a2                	ld	a3,40(sp)
    8003d658:	87ae                	mv	a5,a1
    8003d65a:	6662                	ld	a2,24(sp)
    8003d65c:	96de                	add	a3,a3,s7
    8003d65e:	42d4                	lw	a3,4(a3)
    8003d660:	65c2                	ld	a1,16(sp)
    8003d662:	6811                	lui	a6,0x4
    8003d664:	8526                	mv	a0,s1
    8003d666:	a70fc0ef          	jal	ra,800398d6 <JS_DefinePropertyDesc>
    8003d66a:	f80545e3          	bltz	a0,8003d5f4 <JS_ObjectDefineProperties+0x82>
quickjs-nuttx/quickjs.c:37120 (discriminator 2)
    for(i = 0; i < len; i++) {
    8003d66e:	2a85                	addiw	s5,s5,1
    8003d670:	bfb5                	j	8003d5ec <JS_ObjectDefineProperties+0x7a>

000000008003d672 <js_object_defineProperties>:
js_object_defineProperties():
quickjs-nuttx/quickjs.c:37241
{
    8003d672:	7139                	addi	sp,sp,-64
    8003d674:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:37243
    JSValueConst obj = argv[0];
    8003d676:	630c                	ld	a1,0(a4)
    8003d678:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs.c:37245
    if (JS_ObjectDefineProperties(ctx, obj, argv[1]))
    8003d67a:	6b14                	ld	a3,16(a4)
    8003d67c:	6f18                	ld	a4,24(a4)
quickjs-nuttx/quickjs.c:37243
    JSValueConst obj = argv[0];
    8003d67e:	e82e                	sd	a1,16(sp)
    8003d680:	ec32                	sd	a2,24(sp)
quickjs-nuttx/quickjs.c:37245
    if (JS_ObjectDefineProperties(ctx, obj, argv[1]))
    8003d682:	ef1ff0ef          	jal	ra,8003d572 <JS_ObjectDefineProperties>
    8003d686:	e519                	bnez	a0,8003d694 <js_object_defineProperties+0x22>
quickjs-nuttx/quickjs.c:37248
        return JS_DupValue(ctx, obj);
    8003d688:	6542                	ld	a0,16(sp)
    8003d68a:	65e2                	ld	a1,24(sp)
quickjs-nuttx/quickjs.c:37249
}
    8003d68c:	70e2                	ld	ra,56(sp)
    8003d68e:	6121                	addi	sp,sp,64
quickjs-nuttx/quickjs.c:37248
        return JS_DupValue(ctx, obj);
    8003d690:	d8bcc06f          	j	8000a41a <JS_DupValue.constprop.0>
quickjs-nuttx/quickjs.c:37249 (discriminator 1)
}
    8003d694:	70e2                	ld	ra,56(sp)
    8003d696:	4501                	li	a0,0
    8003d698:	4599                	li	a1,6
    8003d69a:	6121                	addi	sp,sp,64
    8003d69c:	8082                	ret

000000008003d69e <js_object_create>:
js_object_create():
quickjs-nuttx/quickjs.c:37162
{
    8003d69e:	7159                	addi	sp,sp,-112
    8003d6a0:	f0a2                	sd	s0,96(sp)
    8003d6a2:	eca6                	sd	s1,88(sp)
    8003d6a4:	f486                	sd	ra,104(sp)
    8003d6a6:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs.c:37166
    proto = argv[0];
    8003d6a8:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs.c:37162
{
    8003d6aa:	843a                	mv	s0,a4
    8003d6ac:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:37166
    proto = argv[0];
    8003d6ae:	e83e                	sd	a5,16(sp)
    8003d6b0:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs.c:37167
    if (!JS_IsObject(proto) && !JS_IsNull(proto))
    8003d6b2:	577d                	li	a4,-1
quickjs-nuttx/quickjs.c:37166
    proto = argv[0];
    8003d6b4:	ec3e                	sd	a5,24(sp)
JS_IsObject():
quickjs-nuttx/quickjs.h:630
    return JS_VALUE_GET_TAG(v) == JS_TAG_OBJECT;
    8003d6b6:	2781                	sext.w	a5,a5
js_object_create():
quickjs-nuttx/quickjs.c:37167
    if (!JS_IsObject(proto) && !JS_IsNull(proto))
    8003d6b8:	02e78063          	beq	a5,a4,8003d6d8 <js_object_create+0x3a>
quickjs-nuttx/quickjs.c:37167 (discriminator 1)
    8003d6bc:	4709                	li	a4,2
    8003d6be:	00e78d63          	beq	a5,a4,8003d6d8 <js_object_create+0x3a>
quickjs-nuttx/quickjs.c:37180
}
    8003d6c2:	7406                	ld	s0,96(sp)
    8003d6c4:	70a6                	ld	ra,104(sp)
    8003d6c6:	64e6                	ld	s1,88(sp)
    8003d6c8:	6946                	ld	s2,80(sp)
quickjs-nuttx/quickjs.c:37168
        return JS_ThrowTypeError(ctx, "not a prototype");
    8003d6ca:	00030597          	auipc	a1,0x30
    8003d6ce:	97e58593          	addi	a1,a1,-1666 # 8006d048 <qjsc_repl+0x7a98>
quickjs-nuttx/quickjs.c:37180
}
    8003d6d2:	6165                	addi	sp,sp,112
quickjs-nuttx/quickjs.c:37168
        return JS_ThrowTypeError(ctx, "not a prototype");
    8003d6d4:	f99da06f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:37169
    obj = JS_NewObjectProto(ctx, proto);
    8003d6d8:	6662                	ld	a2,24(sp)
    8003d6da:	65c2                	ld	a1,16(sp)
    8003d6dc:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:37170
    if (JS_IsException(obj))
    8003d6de:	4919                	li	s2,6
quickjs-nuttx/quickjs.c:37169
    obj = JS_NewObjectProto(ctx, proto);
    8003d6e0:	8ebde0ef          	jal	ra,8001bfca <JS_NewObjectProto>
    8003d6e4:	f82a                	sd	a0,48(sp)
    8003d6e6:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:37170
    if (JS_IsException(obj))
    8003d6e8:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs.c:37169
    obj = JS_NewObjectProto(ctx, proto);
    8003d6ec:	862e                	mv	a2,a1
quickjs-nuttx/quickjs.c:37170
    if (JS_IsException(obj))
    8003d6ee:	01279563          	bne	a5,s2,8003d6f8 <js_object_create+0x5a>
quickjs-nuttx/quickjs.c:37171
        return JS_EXCEPTION;
    8003d6f2:	e082                	sd	zero,64(sp)
quickjs-nuttx/quickjs.c:37179
    return obj;
    8003d6f4:	e4be                	sd	a5,72(sp)
    8003d6f6:	a025                	j	8003d71e <js_object_create+0x80>
quickjs-nuttx/quickjs.c:37172
    props = argv[1];
    8003d6f8:	6c18                	ld	a4,24(s0)
quickjs-nuttx/quickjs.c:37173
    if (!JS_IsUndefined(props)) {
    8003d6fa:	478d                	li	a5,3
quickjs-nuttx/quickjs.c:37172
    props = argv[1];
    8003d6fc:	6814                	ld	a3,16(s0)
quickjs-nuttx/quickjs.c:37173
    if (!JS_IsUndefined(props)) {
    8003d6fe:	0007059b          	sext.w	a1,a4
    8003d702:	02f58663          	beq	a1,a5,8003d72e <js_object_create+0x90>
quickjs-nuttx/quickjs.c:37174
        if (JS_ObjectDefineProperties(ctx, obj, props)) {
    8003d706:	85aa                	mv	a1,a0
    8003d708:	8526                	mv	a0,s1
    8003d70a:	e69ff0ef          	jal	ra,8003d572 <JS_ObjectDefineProperties>
    8003d70e:	c105                	beqz	a0,8003d72e <js_object_create+0x90>
quickjs-nuttx/quickjs.c:37175
            JS_FreeValue(ctx, obj);
    8003d710:	75c2                	ld	a1,48(sp)
    8003d712:	7662                	ld	a2,56(sp)
    8003d714:	8526                	mv	a0,s1
    8003d716:	888ce0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:37176
            return JS_EXCEPTION;
    8003d71a:	e082                	sd	zero,64(sp)
    8003d71c:	e4ca                	sd	s2,72(sp)
quickjs-nuttx/quickjs.c:37180 (discriminator 1)
}
    8003d71e:	70a6                	ld	ra,104(sp)
    8003d720:	7406                	ld	s0,96(sp)
    8003d722:	6506                	ld	a0,64(sp)
    8003d724:	65a6                	ld	a1,72(sp)
    8003d726:	64e6                	ld	s1,88(sp)
    8003d728:	6946                	ld	s2,80(sp)
    8003d72a:	6165                	addi	sp,sp,112
    8003d72c:	8082                	ret
quickjs-nuttx/quickjs.c:37179
    return obj;
    8003d72e:	77c2                	ld	a5,48(sp)
    8003d730:	e0be                	sd	a5,64(sp)
    8003d732:	77e2                	ld	a5,56(sp)
    8003d734:	b7c1                	j	8003d6f4 <js_object_create+0x56>

000000008003d736 <js_call_binary_op_fallback>:
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12506
{
    8003d736:	714d                	addi	sp,sp,-336
    8003d738:	e262                	sd	s8,256(sp)
    8003d73a:	e686                	sd	ra,328(sp)
    8003d73c:	e2a2                	sd	s0,320(sp)
    8003d73e:	fe26                	sd	s1,312(sp)
    8003d740:	fa4a                	sd	s2,304(sp)
    8003d742:	f64e                	sd	s3,296(sp)
    8003d744:	f252                	sd	s4,288(sp)
    8003d746:	ee56                	sd	s5,280(sp)
    8003d748:	ea5a                	sd	s6,272(sp)
    8003d74a:	e65e                	sd	s7,264(sp)
    8003d74c:	fde6                	sd	s9,248(sp)
    8003d74e:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:12513
    if (!ctx->allow_operator_overloading)
    8003d750:	1a954783          	lbu	a5,425(a0)
quickjs-nuttx/quickjs.c:12506
{
    8003d754:	e832                	sd	a2,16(sp)
    8003d756:	ec36                	sd	a3,24(sp)
    8003d758:	e03a                	sd	a4,0(sp)
    8003d75a:	15012c03          	lw	s8,336(sp)
quickjs-nuttx/quickjs.c:12513
    if (!ctx->allow_operator_overloading)
    8003d75e:	ef99                	bnez	a5,8003d77c <js_call_binary_op_fallback+0x46>
quickjs-nuttx/quickjs.c:12540
        return 0;
    8003d760:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:12624
}
    8003d762:	60b6                	ld	ra,328(sp)
    8003d764:	6416                	ld	s0,320(sp)
    8003d766:	74f2                	ld	s1,312(sp)
    8003d768:	7952                	ld	s2,304(sp)
    8003d76a:	79b2                	ld	s3,296(sp)
    8003d76c:	7a12                	ld	s4,288(sp)
    8003d76e:	6af2                	ld	s5,280(sp)
    8003d770:	6b52                	ld	s6,272(sp)
    8003d772:	6bb2                	ld	s7,264(sp)
    8003d774:	6c12                	ld	s8,256(sp)
    8003d776:	7cee                	ld	s9,248(sp)
    8003d778:	6171                	addi	sp,sp,336
    8003d77a:	8082                	ret
    8003d77c:	87b6                	mv	a5,a3
    8003d77e:	8732                	mv	a4,a2
    8003d780:	e9b2                	sd	a2,208(sp)
    8003d782:	edb6                	sd	a3,216(sp)
    8003d784:	89ae                	mv	s3,a1
    8003d786:	8ac2                	mv	s5,a6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003d788:	85b2                	mv	a1,a2
    8003d78a:	4801                	li	a6,0
    8003d78c:	863e                	mv	a2,a5
    8003d78e:	0e200693          	li	a3,226
    8003d792:	84aa                	mv	s1,a0
    8003d794:	8bc6                	mv	s7,a7
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12516
    opset2_obj = JS_UNDEFINED;
    8003d796:	f802                	sd	zero,48(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003d798:	b12d90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003d79c:	e92a                	sd	a0,144(sp)
    8003d79e:	ed2e                	sd	a1,152(sp)
    8003d7a0:	f02a                	sd	a0,32(sp)
    8003d7a2:	f42e                	sd	a1,40(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003d7a4:	0005879b          	sext.w	a5,a1
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12518
    if (JS_IsException(opset1_obj))
    8003d7a8:	4919                	li	s2,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003d7aa:	862e                	mv	a2,a1
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12518
    8003d7ac:	2d278c63          	beq	a5,s2,8003da84 <js_call_binary_op_fallback+0x34e>
quickjs-nuttx/quickjs.c:12520
    if (JS_IsUndefined(opset1_obj))
    8003d7b0:	440d                	li	s0,3
    8003d7b2:	fa8787e3          	beq	a5,s0,8003d760 <js_call_binary_op_fallback+0x2a>
quickjs-nuttx/quickjs.c:12522
    opset1 = JS_GetOpaque2(ctx, opset1_obj, JS_CLASS_OPERATOR_SET);
    8003d7b6:	85aa                	mv	a1,a0
    8003d7b8:	02500693          	li	a3,37
    8003d7bc:	8526                	mv	a0,s1
    8003d7be:	830db0ef          	jal	ra,800187ee <JS_GetOpaque2>
    8003d7c2:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs.c:12523
    if (!opset1)
    8003d7c4:	2c050063          	beqz	a0,8003da84 <js_call_binary_op_fallback+0x34e>
quickjs-nuttx/quickjs.c:12526
    opset2_obj = JS_GetProperty(ctx, op2, JS_ATOM_Symbol_operatorSet);
    8003d7c8:	67a2                	ld	a5,8(sp)
    8003d7ca:	6702                	ld	a4,0(sp)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    8003d7cc:	4801                	li	a6,0
    8003d7ce:	863e                	mv	a2,a5
    8003d7d0:	0e200693          	li	a3,226
    8003d7d4:	85ba                	mv	a1,a4
    8003d7d6:	8526                	mv	a0,s1
    8003d7d8:	edbe                	sd	a5,216(sp)
    8003d7da:	e9ba                	sd	a4,208(sp)
    8003d7dc:	aced90ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    8003d7e0:	f12a                	sd	a0,160(sp)
    8003d7e2:	f52e                	sd	a1,168(sp)
    8003d7e4:	f82a                	sd	a0,48(sp)
    8003d7e6:	fc2e                	sd	a1,56(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003d7e8:	0005879b          	sext.w	a5,a1
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    8003d7ec:	862e                	mv	a2,a1
    8003d7ee:	8b2e                	mv	s6,a1
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12527
    if (JS_IsException(opset2_obj))
    8003d7f0:	11278663          	beq	a5,s2,8003d8fc <js_call_binary_op_fallback+0x1c6>
quickjs-nuttx/quickjs.c:12529
    if (JS_IsUndefined(opset2_obj)) {
    8003d7f4:	00879863          	bne	a5,s0,8003d804 <js_call_binary_op_fallback+0xce>
quickjs-nuttx/quickjs.c:12530
        JS_FreeValue(ctx, opset1_obj);
    8003d7f8:	7582                	ld	a1,32(sp)
    8003d7fa:	7622                	ld	a2,40(sp)
quickjs-nuttx/quickjs.c:12539
        JS_FreeValue(ctx, opset2_obj);
    8003d7fc:	8526                	mv	a0,s1
    8003d7fe:	fa1cd0ef          	jal	ra,8000b79e <JS_FreeValue>
    8003d802:	bfb9                	j	8003d760 <js_call_binary_op_fallback+0x2a>
quickjs-nuttx/quickjs.c:12533
    opset2 = JS_GetOpaque2(ctx, opset2_obj, JS_CLASS_OPERATOR_SET);
    8003d804:	85aa                	mv	a1,a0
    8003d806:	02500693          	li	a3,37
    8003d80a:	8526                	mv	a0,s1
    8003d80c:	fe3da0ef          	jal	ra,800187ee <JS_GetOpaque2>
    8003d810:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:12534
    if (!opset2)
    8003d812:	0e050563          	beqz	a0,8003d8fc <js_call_binary_op_fallback+0x1c6>
quickjs-nuttx/quickjs.c:12537
    if (opset1->is_primitive && opset2->is_primitive) {
    8003d816:	004a2c83          	lw	s9,4(s4)
    8003d81a:	000c8c63          	beqz	s9,8003d832 <js_call_binary_op_fallback+0xfc>
quickjs-nuttx/quickjs.c:12537 (discriminator 1)
    8003d81e:	415c                	lw	a5,4(a0)
    8003d820:	cb89                	beqz	a5,8003d832 <js_call_binary_op_fallback+0xfc>
quickjs-nuttx/quickjs.c:12538
        JS_FreeValue(ctx, opset1_obj);
    8003d822:	7582                	ld	a1,32(sp)
    8003d824:	7622                	ld	a2,40(sp)
    8003d826:	8526                	mv	a0,s1
    8003d828:	f77cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12539
        JS_FreeValue(ctx, opset2_obj);
    8003d82c:	75c2                	ld	a1,48(sp)
    8003d82e:	7662                	ld	a2,56(sp)
    8003d830:	b7f1                	j	8003d7fc <js_call_binary_op_fallback+0xc6>
quickjs-nuttx/quickjs.c:12543
    ovop = get_ovop_from_opcode(op);
    8003d832:	8556                	mv	a0,s5
    8003d834:	a94cb0ef          	jal	ra,80008ac8 <get_ovop_from_opcode>
quickjs-nuttx/quickjs.c:12545
    if (opset1->operator_counter == opset2->operator_counter) {
    8003d838:	000a2683          	lw	a3,0(s4)
    8003d83c:	4010                	lw	a2,0(s0)
quickjs-nuttx/quickjs.c:12543
    ovop = get_ovop_from_opcode(op);
    8003d83e:	0005091b          	sext.w	s2,a0
quickjs-nuttx/quickjs.c:12545
    if (opset1->operator_counter == opset2->operator_counter) {
    8003d842:	06c69063          	bne	a3,a2,8003d8a2 <js_call_binary_op_fallback+0x16c>
quickjs-nuttx/quickjs.c:12546
        p = opset1->self_ops[ovop];
    8003d846:	02091793          	slli	a5,s2,0x20
    8003d84a:	01d7d513          	srli	a0,a5,0x1d
    8003d84e:	9a2a                	add	s4,s4,a0
    8003d850:	008a3a03          	ld	s4,8(s4)
quickjs-nuttx/quickjs.c:12552
    if (!p) {
    8003d854:	080a0463          	beqz	s4,8003d8dc <js_call_binary_op_fallback+0x1a6>
quickjs-nuttx/quickjs.c:12558
    if (opset1->is_primitive) {
    8003d858:	0e0c8b63          	beqz	s9,8003d94e <js_call_binary_op_fallback+0x218>
quickjs-nuttx/quickjs.c:12559
        if (is_numeric) {
    8003d85c:	0e0b8263          	beqz	s7,8003d940 <js_call_binary_op_fallback+0x20a>
quickjs-nuttx/quickjs.c:12560
            new_op1 = JS_ToNumeric(ctx, op1);
    8003d860:	65c2                	ld	a1,16(sp)
    8003d862:	6662                	ld	a2,24(sp)
    8003d864:	8526                	mv	a0,s1
    8003d866:	e98e70ef          	jal	ra,80024efe <JS_ToNumeric>
quickjs-nuttx/quickjs.c:12562
            new_op1 = JS_ToPrimitive(ctx, op1, hint);
    8003d86a:	f4ae                	sd	a1,104(sp)
quickjs-nuttx/quickjs.c:12564
        if (JS_IsException(new_op1))
    8003d86c:	5726                	lw	a4,104(sp)
quickjs-nuttx/quickjs.c:12562
            new_op1 = JS_ToPrimitive(ctx, op1, hint);
    8003d86e:	f0aa                	sd	a0,96(sp)
quickjs-nuttx/quickjs.c:12564
        if (JS_IsException(new_op1))
    8003d870:	4799                	li	a5,6
    8003d872:	08f70563          	beq	a4,a5,8003d8fc <js_call_binary_op_fallback+0x1c6>
quickjs-nuttx/quickjs.c:12570
    if (opset2->is_primitive) {
    8003d876:	405c                	lw	a5,4(s0)
    8003d878:	0e078963          	beqz	a5,8003d96a <js_call_binary_op_fallback+0x234>
quickjs-nuttx/quickjs.c:12571
        if (is_numeric) {
    8003d87c:	0e0b8063          	beqz	s7,8003d95c <js_call_binary_op_fallback+0x226>
quickjs-nuttx/quickjs.c:12572
            new_op2 = JS_ToNumeric(ctx, op2);
    8003d880:	6582                	ld	a1,0(sp)
    8003d882:	6622                	ld	a2,8(sp)
    8003d884:	8526                	mv	a0,s1
    8003d886:	e78e70ef          	jal	ra,80024efe <JS_ToNumeric>
quickjs-nuttx/quickjs.c:12574
            new_op2 = JS_ToPrimitive(ctx, op2, hint);
    8003d88a:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs.c:12576
        if (JS_IsException(new_op2)) {
    8003d88c:	5766                	lw	a4,120(sp)
quickjs-nuttx/quickjs.c:12574
            new_op2 = JS_ToPrimitive(ctx, op2, hint);
    8003d88e:	f8aa                	sd	a0,112(sp)
quickjs-nuttx/quickjs.c:12576
        if (JS_IsException(new_op2)) {
    8003d890:	4799                	li	a5,6
    8003d892:	0ef71263          	bne	a4,a5,8003d976 <js_call_binary_op_fallback+0x240>
quickjs-nuttx/quickjs.c:12577
            JS_FreeValue(ctx, new_op1);
    8003d896:	7586                	ld	a1,96(sp)
    8003d898:	7626                	ld	a2,104(sp)
    8003d89a:	8526                	mv	a0,s1
    8003d89c:	f03cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12578
            goto exception;
    8003d8a0:	a8b1                	j	8003d8fc <js_call_binary_op_fallback+0x1c6>
quickjs-nuttx/quickjs.c:12547
    } else if (opset1->operator_counter > opset2->operator_counter) {
    8003d8a2:	02d66463          	bltu	a2,a3,8003d8ca <js_call_binary_op_fallback+0x194>
find_binary_op():
quickjs-nuttx/quickjs.c:12489
    for(i = 0; i < def->count; i++) {
    8003d8a6:	0b042603          	lw	a2,176(s0)
    8003d8aa:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:12490
        ent = &def->tab[i];
    8003d8ac:	07800593          	li	a1,120
quickjs-nuttx/quickjs.c:12489
    for(i = 0; i < def->count; i++) {
    8003d8b0:	0007079b          	sext.w	a5,a4
    8003d8b4:	02c7d463          	bge	a5,a2,8003d8dc <js_call_binary_op_fallback+0x1a6>
quickjs-nuttx/quickjs.c:12490
        ent = &def->tab[i];
    8003d8b8:	02b70533          	mul	a0,a4,a1
    8003d8bc:	7c5c                	ld	a5,184(s0)
quickjs-nuttx/quickjs.c:12491
        if (ent->operator_index == operator_index)
    8003d8be:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:12490
        ent = &def->tab[i];
    8003d8c0:	97aa                	add	a5,a5,a0
quickjs-nuttx/quickjs.c:12491
        if (ent->operator_index == operator_index)
    8003d8c2:	4388                	lw	a0,0(a5)
    8003d8c4:	fed516e3          	bne	a0,a3,8003d8b0 <js_call_binary_op_fallback+0x17a>
    8003d8c8:	a0a5                	j	8003d930 <js_call_binary_op_fallback+0x1fa>
quickjs-nuttx/quickjs.c:12489
    for(i = 0; i < def->count; i++) {
    8003d8ca:	0a0a2683          	lw	a3,160(s4)
    8003d8ce:	4701                	li	a4,0
quickjs-nuttx/quickjs.c:12490
        ent = &def->tab[i];
    8003d8d0:	07800593          	li	a1,120
quickjs-nuttx/quickjs.c:12489
    for(i = 0; i < def->count; i++) {
    8003d8d4:	0007079b          	sext.w	a5,a4
    8003d8d8:	04d7c363          	blt	a5,a3,8003d91e <js_call_binary_op_fallback+0x1e8>
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12554
                          js_overloadable_operator_names[ovop]);
    8003d8dc:	02091793          	slli	a5,s2,0x20
    8003d8e0:	01e7d913          	srli	s2,a5,0x1e
quickjs-nuttx/quickjs.c:12553
        JS_ThrowTypeError(ctx, "operator %s: no function defined",
    8003d8e4:	00036617          	auipc	a2,0x36
    8003d8e8:	84460613          	addi	a2,a2,-1980 # 80073128 <js_overloadable_operator_names>
    8003d8ec:	964a                	add	a2,a2,s2
    8003d8ee:	0002f597          	auipc	a1,0x2f
    8003d8f2:	76a58593          	addi	a1,a1,1898 # 8006d058 <qjsc_repl+0x7aa8>
    8003d8f6:	8526                	mv	a0,s1
    8003d8f8:	d75da0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:12620
    JS_FreeValue(ctx, opset1_obj);
    8003d8fc:	7582                	ld	a1,32(sp)
    8003d8fe:	7622                	ld	a2,40(sp)
    8003d900:	8526                	mv	a0,s1
    8003d902:	e9dcd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12621
    JS_FreeValue(ctx, opset2_obj);
    8003d906:	75c2                	ld	a1,48(sp)
    8003d908:	8526                	mv	a0,s1
    8003d90a:	865a                	mv	a2,s6
    8003d90c:	e93cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12622
    *pret = JS_UNDEFINED;
    8003d910:	478d                	li	a5,3
    8003d912:	0009b023          	sd	zero,0(s3)
    8003d916:	00f9b423          	sd	a5,8(s3)
quickjs-nuttx/quickjs.c:12623
    return -1;
    8003d91a:	557d                	li	a0,-1
    8003d91c:	b599                	j	8003d762 <js_call_binary_op_fallback+0x2c>
find_binary_op():
quickjs-nuttx/quickjs.c:12490
        ent = &def->tab[i];
    8003d91e:	02b70533          	mul	a0,a4,a1
    8003d922:	0a8a3783          	ld	a5,168(s4)
quickjs-nuttx/quickjs.c:12491
        if (ent->operator_index == operator_index)
    8003d926:	0705                	addi	a4,a4,1
quickjs-nuttx/quickjs.c:12490
        ent = &def->tab[i];
    8003d928:	97aa                	add	a5,a5,a0
quickjs-nuttx/quickjs.c:12491
        if (ent->operator_index == operator_index)
    8003d92a:	4388                	lw	a0,0(a5)
    8003d92c:	fac514e3          	bne	a0,a2,8003d8d4 <js_call_binary_op_fallback+0x19e>
quickjs-nuttx/quickjs.c:12492
            return ent->ops[op];
    8003d930:	02091693          	slli	a3,s2,0x20
    8003d934:	01d6d713          	srli	a4,a3,0x1d
    8003d938:	97ba                	add	a5,a5,a4
    8003d93a:	0087ba03          	ld	s4,8(a5) # 4008 <asinh-0x7fffbff8>
    8003d93e:	bf19                	j	8003d854 <js_call_binary_op_fallback+0x11e>
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12562
            new_op1 = JS_ToPrimitive(ctx, op1, hint);
    8003d940:	65c2                	ld	a1,16(sp)
    8003d942:	6662                	ld	a2,24(sp)
    8003d944:	86e2                	mv	a3,s8
    8003d946:	8526                	mv	a0,s1
    8003d948:	b34e20ef          	jal	ra,8001fc7c <JS_ToPrimitive>
    8003d94c:	bf39                	j	8003d86a <js_call_binary_op_fallback+0x134>
quickjs-nuttx/quickjs.c:12567
        new_op1 = JS_DupValue(ctx, op1);
    8003d94e:	6542                	ld	a0,16(sp)
    8003d950:	65e2                	ld	a1,24(sp)
    8003d952:	ac9cc0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003d956:	f0aa                	sd	a0,96(sp)
    8003d958:	f4ae                	sd	a1,104(sp)
    8003d95a:	bf31                	j	8003d876 <js_call_binary_op_fallback+0x140>
quickjs-nuttx/quickjs.c:12574
            new_op2 = JS_ToPrimitive(ctx, op2, hint);
    8003d95c:	6582                	ld	a1,0(sp)
    8003d95e:	6622                	ld	a2,8(sp)
    8003d960:	86e2                	mv	a3,s8
    8003d962:	8526                	mv	a0,s1
    8003d964:	b18e20ef          	jal	ra,8001fc7c <JS_ToPrimitive>
    8003d968:	b70d                	j	8003d88a <js_call_binary_op_fallback+0x154>
quickjs-nuttx/quickjs.c:12581
        new_op2 = JS_DupValue(ctx, op2);
    8003d96a:	6502                	ld	a0,0(sp)
    8003d96c:	65a2                	ld	a1,8(sp)
    8003d96e:	aadcc0ef          	jal	ra,8000a41a <JS_DupValue.constprop.0>
    8003d972:	f8aa                	sd	a0,112(sp)
    8003d974:	fcae                	sd	a1,120(sp)
JS_DupValue():
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    8003d976:	000a2783          	lw	a5,0(s4)
    8003d97a:	e0d2                	sd	s4,64(sp)
    8003d97c:	76c6                	ld	a3,112(sp)
    8003d97e:	2785                	addiw	a5,a5,1
    8003d980:	00fa2023          	sw	a5,0(s4)
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.h:672
    return (JSValue)v;
    8003d984:	57fd                	li	a5,-1
    8003d986:	e4be                	sd	a5,72(sp)
quickjs-nuttx/quickjs.c:12588
    if (ovop == JS_OVOP_LESS && (op == OP_lte || op == OP_gt)) {
    8003d988:	47b5                	li	a5,13
    8003d98a:	7766                	ld	a4,120(sp)
    8003d98c:	7586                	ld	a1,96(sp)
    8003d98e:	7626                	ld	a2,104(sp)
    8003d990:	08f91463          	bne	s2,a5,8003da18 <js_call_binary_op_fallback+0x2e2>
quickjs-nuttx/quickjs.c:12588 (discriminator 1)
    8003d994:	f5ba879b          	addiw	a5,s5,-165
    8003d998:	4505                	li	a0,1
    8003d99a:	06f56f63          	bltu	a0,a5,8003da18 <js_call_binary_op_fallback+0x2e2>
quickjs-nuttx/quickjs.c:12589
        args[0] = new_op2;
    8003d99e:	e9b6                	sd	a3,208(sp)
    8003d9a0:	edba                	sd	a4,216(sp)
quickjs-nuttx/quickjs.c:12590
        args[1] = new_op1;
    8003d9a2:	f1ae                	sd	a1,224(sp)
    8003d9a4:	f5b2                	sd	a2,232(sp)
quickjs-nuttx/quickjs.c:12595
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    8003d9a6:	6626                	ld	a2,72(sp)
    8003d9a8:	6586                	ld	a1,64(sp)
    8003d9aa:	4789                	li	a5,2
    8003d9ac:	470d                	li	a4,3
    8003d9ae:	0d010813          	addi	a6,sp,208
    8003d9b2:	4681                	li	a3,0
    8003d9b4:	8526                	mv	a0,s1
    8003d9b6:	8bed90ef          	jal	ra,80016a74 <JS_CallFree>
quickjs-nuttx/quickjs.c:12596
    JS_FreeValue(ctx, new_op1);
    8003d9ba:	7626                	ld	a2,104(sp)
quickjs-nuttx/quickjs.c:12595
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    8003d9bc:	8a2e                	mv	s4,a1
    8003d9be:	ecae                	sd	a1,88(sp)
quickjs-nuttx/quickjs.c:12596
    JS_FreeValue(ctx, new_op1);
    8003d9c0:	7586                	ld	a1,96(sp)
quickjs-nuttx/quickjs.c:12595
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    8003d9c2:	e8aa                	sd	a0,80(sp)
    8003d9c4:	0005041b          	sext.w	s0,a0
quickjs-nuttx/quickjs.c:12596
    JS_FreeValue(ctx, new_op1);
    8003d9c8:	8526                	mv	a0,s1
    8003d9ca:	dd5cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12597
    JS_FreeValue(ctx, new_op2);
    8003d9ce:	75c6                	ld	a1,112(sp)
    8003d9d0:	7666                	ld	a2,120(sp)
    8003d9d2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:12595
    ret = JS_CallFree(ctx, method, JS_UNDEFINED, 2, args);
    8003d9d4:	4b8d                	li	s7,3
quickjs-nuttx/quickjs.c:12597
    JS_FreeValue(ctx, new_op2);
    8003d9d6:	dc9cd0ef          	jal	ra,8000b79e <JS_FreeValue>
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    8003d9da:	000a079b          	sext.w	a5,s4
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12598
    if (JS_IsException(ret))
    8003d9de:	4719                	li	a4,6
    8003d9e0:	f0e78ee3          	beq	a5,a4,8003d8fc <js_call_binary_op_fallback+0x1c6>
quickjs-nuttx/quickjs.c:12600
    if (ovop == JS_OVOP_EQ) {
    8003d9e4:	4731                	li	a4,12
    8003d9e6:	02e91e63          	bne	s2,a4,8003da22 <js_call_binary_op_fallback+0x2ec>
quickjs-nuttx/quickjs.c:12601
        BOOL res = JS_ToBoolFree(ctx, ret);
    8003d9ea:	65c6                	ld	a1,80(sp)
    8003d9ec:	6666                	ld	a2,88(sp)
    8003d9ee:	8526                	mv	a0,s1
    8003d9f0:	924ce0ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:12602
        if (op == OP_neq)
    8003d9f4:	0ab00793          	li	a5,171
    8003d9f8:	00fa9663          	bne	s5,a5,8003da04 <js_call_binary_op_fallback+0x2ce>
quickjs-nuttx/quickjs.c:12603
            res ^= 1;
    8003d9fc:	00154413          	xori	s0,a0,1
    8003da00:	0004051b          	sext.w	a0,s0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    return JS_MKVAL(JS_TAG_BOOL, (val != 0));
    8003da04:	00a037b3          	snez	a5,a0
    8003da08:	db02                	sw	zero,180(sp)
    8003da0a:	d93e                	sw	a5,176(sp)
    8003da0c:	77ca                	ld	a5,176(sp)
    8003da0e:	00a03433          	snez	s0,a0
    8003da12:	e8be                	sd	a5,80(sp)
    8003da14:	4a05                	li	s4,1
    8003da16:	a831                	j	8003da32 <js_call_binary_op_fallback+0x2fc>
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12592
        args[0] = new_op1;
    8003da18:	e9ae                	sd	a1,208(sp)
    8003da1a:	edb2                	sd	a2,216(sp)
quickjs-nuttx/quickjs.c:12593
        args[1] = new_op2;
    8003da1c:	f1b6                	sd	a3,224(sp)
    8003da1e:	f5ba                	sd	a4,232(sp)
    8003da20:	b759                	j	8003d9a6 <js_call_binary_op_fallback+0x270>
quickjs-nuttx/quickjs.c:12605
    } else if (ovop == JS_OVOP_LESS) {
    8003da22:	4735                	li	a4,13
    8003da24:	00e91763          	bne	s2,a4,8003da32 <js_call_binary_op_fallback+0x2fc>
quickjs-nuttx/quickjs.c:12606
        if (JS_IsUndefined(ret)) {
    8003da28:	03779763          	bne	a5,s7,8003da56 <js_call_binary_op_fallback+0x320>
quickjs-nuttx/quickjs.c:12607
            ret = JS_FALSE;
    8003da2c:	ca82                	sw	zero,84(sp)
    8003da2e:	4a05                	li	s4,1
    8003da30:	4401                	li	s0,0
quickjs-nuttx/quickjs.c:12615
    JS_FreeValue(ctx, opset1_obj);
    8003da32:	7582                	ld	a1,32(sp)
    8003da34:	7622                	ld	a2,40(sp)
    8003da36:	8526                	mv	a0,s1
    8003da38:	d67cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12616
    JS_FreeValue(ctx, opset2_obj);
    8003da3c:	75c2                	ld	a1,48(sp)
    8003da3e:	7662                	ld	a2,56(sp)
    8003da40:	8526                	mv	a0,s1
    8003da42:	d5dcd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:12617
    *pret = ret;
    8003da46:	c8a2                	sw	s0,80(sp)
    8003da48:	67c6                	ld	a5,80(sp)
    8003da4a:	0149b423          	sd	s4,8(s3)
quickjs-nuttx/quickjs.c:12618
    return 1;
    8003da4e:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:12617
    *pret = ret;
    8003da50:	00f9b023          	sd	a5,0(s3)
quickjs-nuttx/quickjs.c:12618
    return 1;
    8003da54:	b339                	j	8003d762 <js_call_binary_op_fallback+0x2c>
quickjs-nuttx/quickjs.c:12609
            BOOL res = JS_ToBoolFree(ctx, ret);
    8003da56:	65c6                	ld	a1,80(sp)
    8003da58:	6666                	ld	a2,88(sp)
    8003da5a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:12610
            if (op == OP_lte || op == OP_gte)
    8003da5c:	ffdafa93          	andi	s5,s5,-3
quickjs-nuttx/quickjs.c:12609
            BOOL res = JS_ToBoolFree(ctx, ret);
    8003da60:	8b4ce0ef          	jal	ra,8000bb14 <JS_ToBoolFree>
quickjs-nuttx/quickjs.c:12610
            if (op == OP_lte || op == OP_gte)
    8003da64:	0a500793          	li	a5,165
    8003da68:	00fa9663          	bne	s5,a5,8003da74 <js_call_binary_op_fallback+0x33e>
quickjs-nuttx/quickjs.c:12611
                res ^= 1;
    8003da6c:	00154413          	xori	s0,a0,1
    8003da70:	0004051b          	sext.w	a0,s0
JS_NewBool():
quickjs-nuttx/quickjs.h:510
    8003da74:	00a037b3          	snez	a5,a0
    8003da78:	c382                	sw	zero,196(sp)
    8003da7a:	c1be                	sw	a5,192(sp)
    8003da7c:	678e                	ld	a5,192(sp)
    8003da7e:	00a03433          	snez	s0,a0
    8003da82:	bf41                	j	8003da12 <js_call_binary_op_fallback+0x2dc>
js_call_binary_op_fallback():
quickjs-nuttx/quickjs.c:12516
    opset2_obj = JS_UNDEFINED;
    8003da84:	4b0d                	li	s6,3
    8003da86:	bd9d                	j	8003d8fc <js_call_binary_op_fallback+0x1c6>

000000008003da88 <js_add_slow>:
js_add_slow():
quickjs-nuttx/quickjs.c:13549
{
    8003da88:	7135                	addi	sp,sp,-160
    8003da8a:	e922                	sd	s0,144(sp)
    8003da8c:	e526                	sd	s1,136(sp)
    8003da8e:	ed06                	sd	ra,152(sp)
    8003da90:	e14a                	sd	s2,128(sp)
    8003da92:	fcce                	sd	s3,120(sp)
    8003da94:	f8d2                	sd	s4,112(sp)
    8003da96:	b4a2                	fsd	fs0,104(sp)
    8003da98:	b0a6                	fsd	fs1,96(sp)
quickjs-nuttx/quickjs.c:13553
    op1 = sp[-2];
    8003da9a:	fe05b783          	ld	a5,-32(a1)
    8003da9e:	fe85b903          	ld	s2,-24(a1)
quickjs-nuttx/quickjs.c:13554
    op2 = sp[-1];
    8003daa2:	ff85b703          	ld	a4,-8(a1)
quickjs-nuttx/quickjs.c:13553
    op1 = sp[-2];
    8003daa6:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:13554
    op2 = sp[-1];
    8003daa8:	ff05b783          	ld	a5,-16(a1)
quickjs-nuttx/quickjs.c:13553
    op1 = sp[-2];
    8003daac:	f44a                	sd	s2,40(sp)
quickjs-nuttx/quickjs.c:13554
    op2 = sp[-1];
    8003daae:	fc3a                	sd	a4,56(sp)
    8003dab0:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:13559
    if (tag1 == JS_TAG_FLOAT64 && tag2 == JS_TAG_FLOAT64) {
    8003dab2:	461d                	li	a2,7
quickjs-nuttx/quickjs.c:13556
    tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003dab4:	0009079b          	sext.w	a5,s2
quickjs-nuttx/quickjs.c:13549
{
    8003dab8:	842a                	mv	s0,a0
    8003daba:	84ae                	mv	s1,a1
quickjs-nuttx/quickjs.c:13557
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003dabc:	0007069b          	sext.w	a3,a4
quickjs-nuttx/quickjs.c:13559
    if (tag1 == JS_TAG_FLOAT64 && tag2 == JS_TAG_FLOAT64) {
    8003dac0:	02c79863          	bne	a5,a2,8003daf0 <js_add_slow+0x68>
quickjs-nuttx/quickjs.c:13559 (discriminator 1)
    8003dac4:	22f69e63          	bne	a3,a5,8003dd00 <js_add_slow+0x278>
quickjs-nuttx/quickjs.c:13563
        sp[-2] = __JS_NewFloat64(ctx, d1 + d2);
    8003dac8:	3782                	fld	fa5,32(sp)
    8003daca:	3742                	fld	fa4,48(sp)
    8003dacc:	fed5b423          	sd	a3,-24(a1)
    8003dad0:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    8003dad4:	fef5b027          	fsd	fa5,-32(a1)
quickjs-nuttx/quickjs.c:13660
    return 0;
    8003dad8:	4901                	li	s2,0
quickjs-nuttx/quickjs.c:13665
}
    8003dada:	60ea                	ld	ra,152(sp)
    8003dadc:	644a                	ld	s0,144(sp)
    8003dade:	64aa                	ld	s1,136(sp)
    8003dae0:	79e6                	ld	s3,120(sp)
    8003dae2:	7a46                	ld	s4,112(sp)
    8003dae4:	3426                	fld	fs0,104(sp)
    8003dae6:	3486                	fld	fs1,96(sp)
    8003dae8:	854a                	mv	a0,s2
    8003daea:	690a                	ld	s2,128(sp)
    8003daec:	610d                	addi	sp,sp,160
    8003daee:	8082                	ret
quickjs-nuttx/quickjs.c:13567
    if (tag1 == JS_TAG_OBJECT || tag2 == JS_TAG_OBJECT) {
    8003daf0:	567d                	li	a2,-1
    8003daf2:	04c78e63          	beq	a5,a2,8003db4e <js_add_slow+0xc6>
quickjs-nuttx/quickjs.c:13567 (discriminator 1)
    8003daf6:	0cc69263          	bne	a3,a2,8003dbba <js_add_slow+0x132>
quickjs-nuttx/quickjs.c:13573
            (tag2 == JS_TAG_OBJECT &&
    8003dafa:	ffe7871b          	addiw	a4,a5,-2
    8003dafe:	4685                	li	a3,1
    8003db00:	04e6ff63          	bgeu	a3,a4,8003db5e <js_add_slow+0xd6>
quickjs-nuttx/quickjs.c:13574
             (tag1 != JS_TAG_NULL && tag1 != JS_TAG_UNDEFINED &&
    8003db04:	5765                	li	a4,-7
    8003db06:	04e78c63          	beq	a5,a4,8003db5e <js_add_slow+0xd6>
quickjs-nuttx/quickjs.c:13577
            int ret = js_call_binary_op_fallback(ctx, &res, op1, op2, OP_add,
    8003db0a:	4789                	li	a5,2
    8003db0c:	e03e                	sd	a5,0(sp)
    8003db0e:	7742                	ld	a4,48(sp)
    8003db10:	77e2                	ld	a5,56(sp)
    8003db12:	7602                	ld	a2,32(sp)
    8003db14:	76a2                	ld	a3,40(sp)
    8003db16:	4881                	li	a7,0
    8003db18:	09e00813          	li	a6,158
    8003db1c:	088c                	addi	a1,sp,80
    8003db1e:	8522                	mv	a0,s0
    8003db20:	c17ff0ef          	jal	ra,8003d736 <js_call_binary_op_fallback>
    8003db24:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:13579
            if (ret != 0) {
    8003db26:	cd05                	beqz	a0,8003db5e <js_add_slow+0xd6>
quickjs-nuttx/quickjs.c:13580
                JS_FreeValue(ctx, op1);
    8003db28:	7582                	ld	a1,32(sp)
    8003db2a:	7622                	ld	a2,40(sp)
    8003db2c:	8522                	mv	a0,s0
    8003db2e:	c71cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13581
                JS_FreeValue(ctx, op2);
    8003db32:	75c2                	ld	a1,48(sp)
    8003db34:	7662                	ld	a2,56(sp)
    8003db36:	8522                	mv	a0,s0
    8003db38:	c67cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13582
                if (ret < 0) {
    8003db3c:	06094463          	bltz	s2,8003dba4 <js_add_slow+0x11c>
quickjs-nuttx/quickjs.c:13585
                    sp[-2] = res;
    8003db40:	67c6                	ld	a5,80(sp)
    8003db42:	fef4b023          	sd	a5,-32(s1)
    8003db46:	67e6                	ld	a5,88(sp)
    8003db48:	fef4b423          	sd	a5,-24(s1)
quickjs-nuttx/quickjs.c:13586
                    return 0;
    8003db4c:	b771                	j	8003dad8 <js_add_slow+0x50>
quickjs-nuttx/quickjs.c:13570 (discriminator 1)
        if ((tag1 == JS_TAG_OBJECT &&
    8003db4e:	ffe6879b          	addiw	a5,a3,-2
    8003db52:	4705                	li	a4,1
    8003db54:	00f77563          	bgeu	a4,a5,8003db5e <js_add_slow+0xd6>
quickjs-nuttx/quickjs.c:13571
             (tag2 != JS_TAG_NULL && tag2 != JS_TAG_UNDEFINED &&
    8003db58:	57e5                	li	a5,-7
    8003db5a:	faf698e3          	bne	a3,a5,8003db0a <js_add_slow+0x82>
quickjs-nuttx/quickjs.c:13591
        op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NONE);
    8003db5e:	7582                	ld	a1,32(sp)
    8003db60:	7622                	ld	a2,40(sp)
    8003db62:	4689                	li	a3,2
    8003db64:	8522                	mv	a0,s0
    8003db66:	f77e10ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    8003db6a:	f02a                	sd	a0,32(sp)
    8003db6c:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13592
        if (JS_IsException(op1)) {
    8003db6e:	0005899b          	sext.w	s3,a1
    8003db72:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:13591
        op1 = JS_ToPrimitiveFree(ctx, op1, HINT_NONE);
    8003db74:	892e                	mv	s2,a1
quickjs-nuttx/quickjs.c:13592
        if (JS_IsException(op1)) {
    8003db76:	01499563          	bne	s3,s4,8003db80 <js_add_slow+0xf8>
quickjs-nuttx/quickjs.c:13651
            JS_FreeValue(ctx, op2);
    8003db7a:	75c2                	ld	a1,48(sp)
    8003db7c:	7662                	ld	a2,56(sp)
    8003db7e:	a005                	j	8003db9e <js_add_slow+0x116>
quickjs-nuttx/quickjs.c:13597
        op2 = JS_ToPrimitiveFree(ctx, op2, HINT_NONE);
    8003db80:	75c2                	ld	a1,48(sp)
    8003db82:	7662                	ld	a2,56(sp)
    8003db84:	4689                	li	a3,2
    8003db86:	8522                	mv	a0,s0
    8003db88:	f55e10ef          	jal	ra,8001fadc <JS_ToPrimitiveFree>
    8003db8c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:13603
        tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003db8e:	0005869b          	sext.w	a3,a1
quickjs-nuttx/quickjs.c:13597
        op2 = JS_ToPrimitiveFree(ctx, op2, HINT_NONE);
    8003db92:	872e                	mv	a4,a1
quickjs-nuttx/quickjs.c:13602
        tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003db94:	87ce                	mv	a5,s3
quickjs-nuttx/quickjs.c:13598
        if (JS_IsException(op2)) {
    8003db96:	03469263          	bne	a3,s4,8003dbba <js_add_slow+0x132>
quickjs-nuttx/quickjs.c:13599
            JS_FreeValue(ctx, op1);
    8003db9a:	7582                	ld	a1,32(sp)
    8003db9c:	7622                	ld	a2,40(sp)
    8003db9e:	8522                	mv	a0,s0
    8003dba0:	bffcd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13662
    sp[-2] = JS_UNDEFINED;
    8003dba4:	478d                	li	a5,3
    8003dba6:	fe04b023          	sd	zero,-32(s1)
    8003dbaa:	fef4b423          	sd	a5,-24(s1)
quickjs-nuttx/quickjs.c:13663
    sp[-1] = JS_UNDEFINED;
    8003dbae:	fe04b823          	sd	zero,-16(s1)
    8003dbb2:	fef4bc23          	sd	a5,-8(s1)
quickjs-nuttx/quickjs.c:13664
    return -1;
    8003dbb6:	597d                	li	s2,-1
    8003dbb8:	b70d                	j	8003dada <js_add_slow+0x52>
quickjs-nuttx/quickjs.c:13606
    if (tag1 == JS_TAG_STRING || tag2 == JS_TAG_STRING) {
    8003dbba:	5665                	li	a2,-7
    8003dbbc:	00c78563          	beq	a5,a2,8003dbc6 <js_add_slow+0x13e>
quickjs-nuttx/quickjs.c:13606 (discriminator 1)
    8003dbc0:	57e5                	li	a5,-7
    8003dbc2:	02f69163          	bne	a3,a5,8003dbe4 <js_add_slow+0x15c>
quickjs-nuttx/quickjs.c:13607
        sp[-2] = JS_ConcatString(ctx, op1, op2);
    8003dbc6:	76c2                	ld	a3,48(sp)
    8003dbc8:	7582                	ld	a1,32(sp)
    8003dbca:	864a                	mv	a2,s2
    8003dbcc:	8522                	mv	a0,s0
    8003dbce:	d3be20ef          	jal	ra,80020908 <JS_ConcatString>
    8003dbd2:	feb4b423          	sd	a1,-24(s1)
    8003dbd6:	fea4b023          	sd	a0,-32(s1)
quickjs-nuttx/quickjs.c:13608
        if (JS_IsException(sp[-2]))
    8003dbda:	2581                	sext.w	a1,a1
    8003dbdc:	4799                	li	a5,6
    8003dbde:	eef59de3          	bne	a1,a5,8003dad8 <js_add_slow+0x50>
    8003dbe2:	b7c9                	j	8003dba4 <js_add_slow+0x11c>
quickjs-nuttx/quickjs.c:13613
    op1 = JS_ToNumericFree(ctx, op1);
    8003dbe4:	7582                	ld	a1,32(sp)
    8003dbe6:	864a                	mv	a2,s2
    8003dbe8:	8522                	mv	a0,s0
    8003dbea:	ec3a                	sd	a4,24(sp)
    8003dbec:	b08e70ef          	jal	ra,80024ef4 <JS_ToNumericFree>
quickjs-nuttx/quickjs.c:13614
    if (JS_IsException(op1)) {
    8003dbf0:	6762                	ld	a4,24(sp)
quickjs-nuttx/quickjs.c:13613
    op1 = JS_ToNumericFree(ctx, op1);
    8003dbf2:	f02a                	sd	a0,32(sp)
    8003dbf4:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13614
    if (JS_IsException(op1)) {
    8003dbf6:	0005891b          	sext.w	s2,a1
    8003dbfa:	4999                	li	s3,6
quickjs-nuttx/quickjs.c:13615
        JS_FreeValue(ctx, op2);
    8003dbfc:	75c2                	ld	a1,48(sp)
    8003dbfe:	863a                	mv	a2,a4
    8003dc00:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:13614
    if (JS_IsException(op1)) {
    8003dc02:	f9390fe3          	beq	s2,s3,8003dba0 <js_add_slow+0x118>
quickjs-nuttx/quickjs.c:13618
    op2 = JS_ToNumericFree(ctx, op2);
    8003dc06:	aeee70ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003dc0a:	fc2e                	sd	a1,56(sp)
    8003dc0c:	f82a                	sd	a0,48(sp)
quickjs-nuttx/quickjs.c:13619
    if (JS_IsException(op2)) {
    8003dc0e:	2581                	sext.w	a1,a1
    8003dc10:	f93585e3          	beq	a1,s3,8003db9a <js_add_slow+0x112>
quickjs-nuttx/quickjs.c:13626
    if (tag1 == JS_TAG_INT && tag2 == JS_TAG_INT) {
    8003dc14:	02091e63          	bnez	s2,8003dc50 <js_add_slow+0x1c8>
quickjs-nuttx/quickjs.c:13626 (discriminator 1)
    8003dc18:	ede9                	bnez	a1,8003dcf2 <js_add_slow+0x26a>
quickjs-nuttx/quickjs.c:13629
        v1 = JS_VALUE_GET_INT(op1);
    8003dc1a:	5702                	lw	a4,32(sp)
quickjs-nuttx/quickjs.c:13630
        v2 = JS_VALUE_GET_INT(op2);
    8003dc1c:	57c2                	lw	a5,48(sp)
quickjs-nuttx/quickjs.c:13631
        v = (int64_t)v1 + (int64_t)v2;
    8003dc1e:	00f706b3          	add	a3,a4,a5
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    8003dc22:	9fb9                	addw	a5,a5,a4
    8003dc24:	00f69e63          	bne	a3,a5,8003dc40 <js_add_slow+0x1b8>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003dc28:	ca82                	sw	zero,84(sp)
    8003dc2a:	c8be                	sw	a5,80(sp)
    8003dc2c:	6746                	ld	a4,80(sp)
    8003dc2e:	e0ba                	sd	a4,64(sp)
    8003dc30:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    8003dc32:	c0be                	sw	a5,64(sp)
    8003dc34:	2786                	fld	fa5,64(sp)
js_add_slow():
quickjs-nuttx/quickjs.c:13632
        sp[-2] = JS_NewInt64(ctx, v);
    8003dc36:	fee4b423          	sd	a4,-24(s1)
    8003dc3a:	fef4b027          	fsd	fa5,-32(s1)
    8003dc3e:	bd69                	j	8003dad8 <js_add_slow+0x50>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    8003dc40:	d226f7d3          	fcvt.d.l	fa5,a3
    8003dc44:	471d                	li	a4,7
    8003dc46:	e20787d3          	fmv.x.d	a5,fa5
js_add_slow():
quickjs-nuttx/quickjs.h:230
    return v;
    8003dc4a:	a0be                	fsd	fa5,64(sp)
    8003dc4c:	2781                	sext.w	a5,a5
    8003dc4e:	b7d5                	j	8003dc32 <js_add_slow+0x1aa>
quickjs-nuttx/quickjs.c:13635
    if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003dc50:	57d5                	li	a5,-11
    8003dc52:	00f90463          	beq	s2,a5,8003dc5a <js_add_slow+0x1d2>
quickjs-nuttx/quickjs.c:13635 (discriminator 1)
    8003dc56:	02f59263          	bne	a1,a5,8003dc7a <js_add_slow+0x1f2>
quickjs-nuttx/quickjs.c:13636
        if (ctx->rt->bigdecimal_ops.binary_arith(ctx, OP_add, sp - 2, op1, op2))
    8003dc5a:	6c1c                	ld	a5,24(s0)
    8003dc5c:	2907b883          	ld	a7,656(a5)
quickjs-nuttx/quickjs.c:13645
        if (ctx->rt->bigint_ops.binary_arith(ctx, OP_add, sp - 2, op1, op2))
    8003dc60:	77c2                	ld	a5,48(sp)
    8003dc62:	7862                	ld	a6,56(sp)
    8003dc64:	7682                	ld	a3,32(sp)
    8003dc66:	7722                	ld	a4,40(sp)
    8003dc68:	fe048613          	addi	a2,s1,-32
    8003dc6c:	09e00593          	li	a1,158
    8003dc70:	8522                	mv	a0,s0
    8003dc72:	9882                	jalr	a7
    8003dc74:	e60502e3          	beqz	a0,8003dad8 <js_add_slow+0x50>
    8003dc78:	b735                	j	8003dba4 <js_add_slow+0x11c>
quickjs-nuttx/quickjs.c:13638
    } else if (tag1 == JS_TAG_BIG_FLOAT || tag2 == JS_TAG_BIG_FLOAT) {
    8003dc7a:	57dd                	li	a5,-9
    8003dc7c:	00f90463          	beq	s2,a5,8003dc84 <js_add_slow+0x1fc>
quickjs-nuttx/quickjs.c:13638 (discriminator 1)
    8003dc80:	00f59663          	bne	a1,a5,8003dc8c <js_add_slow+0x204>
quickjs-nuttx/quickjs.c:13639
        if (ctx->rt->bigfloat_ops.binary_arith(ctx, OP_add, sp - 2, op1, op2))
    8003dc84:	6c1c                	ld	a5,24(s0)
    8003dc86:	2587b883          	ld	a7,600(a5)
    8003dc8a:	bfd9                	j	8003dc60 <js_add_slow+0x1d8>
quickjs-nuttx/quickjs.c:13643
    if (tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) {
    8003dc8c:	57d9                	li	a5,-10
    8003dc8e:	00f90563          	beq	s2,a5,8003dc98 <js_add_slow+0x210>
quickjs-nuttx/quickjs.c:13643 (discriminator 1)
    8003dc92:	57d9                	li	a5,-10
    8003dc94:	00f59663          	bne	a1,a5,8003dca0 <js_add_slow+0x218>
quickjs-nuttx/quickjs.c:13645
        if (ctx->rt->bigint_ops.binary_arith(ctx, OP_add, sp - 2, op1, op2))
    8003dc98:	6c1c                	ld	a5,24(s0)
    8003dc9a:	2207b883          	ld	a7,544(a5)
    8003dc9e:	b7c9                	j	8003dc60 <js_add_slow+0x1d8>
quickjs-nuttx/quickjs.c:13650
        if (JS_ToFloat64Free(ctx, &d1, op1)) {
    8003dca0:	7602                	ld	a2,32(sp)
    8003dca2:	76a2                	ld	a3,40(sp)
    8003dca4:	008c                	addi	a1,sp,64
    8003dca6:	8522                	mv	a0,s0
    8003dca8:	9efe40ef          	jal	ra,80022696 <JS_ToFloat64Free>
    8003dcac:	ec0517e3          	bnez	a0,8003db7a <js_add_slow+0xf2>
quickjs-nuttx/quickjs.c:13654
        if (JS_ToFloat64Free(ctx, &d2, op2))
    8003dcb0:	7642                	ld	a2,48(sp)
    8003dcb2:	76e2                	ld	a3,56(sp)
    8003dcb4:	088c                	addi	a1,sp,80
    8003dcb6:	8522                	mv	a0,s0
    8003dcb8:	9dfe40ef          	jal	ra,80022696 <JS_ToFloat64Free>
    8003dcbc:	892a                	mv	s2,a0
    8003dcbe:	ee0513e3          	bnez	a0,8003dba4 <js_add_slow+0x11c>
quickjs-nuttx/quickjs.c:13656
        if (is_math_mode(ctx) && is_safe_integer(d1) && is_safe_integer(d2))
    8003dcc2:	8522                	mv	a0,s0
    8003dcc4:	ed1c90ef          	jal	ra,80007b94 <is_math_mode>
    8003dcc8:	2486                	fld	fs1,64(sp)
    8003dcca:	2446                	fld	fs0,80(sp)
    8003dccc:	c919                	beqz	a0,8003dce2 <js_add_slow+0x25a>
quickjs-nuttx/quickjs.c:13656 (discriminator 1)
    8003dcce:	22948553          	fmv.d	fa0,fs1
    8003dcd2:	fa9ca0ef          	jal	ra,80008c7a <is_safe_integer>
    8003dcd6:	c511                	beqz	a0,8003dce2 <js_add_slow+0x25a>
quickjs-nuttx/quickjs.c:13656 (discriminator 2)
    8003dcd8:	22840553          	fmv.d	fa0,fs0
    8003dcdc:	f9fca0ef          	jal	ra,80008c7a <is_safe_integer>
    8003dce0:	fd45                	bnez	a0,8003dc98 <js_add_slow+0x210>
quickjs-nuttx/quickjs.c:13658
        sp[-2] = __JS_NewFloat64(ctx, d1 + d2);
    8003dce2:	02947453          	fadd.d	fs0,fs0,fs1
    8003dce6:	479d                	li	a5,7
    8003dce8:	fef4b423          	sd	a5,-24(s1)
    8003dcec:	fe84b027          	fsd	fs0,-32(s1)
    8003dcf0:	b3ed                	j	8003dada <js_add_slow+0x52>
quickjs-nuttx/quickjs.c:13635
    if (tag1 == JS_TAG_BIG_DECIMAL || tag2 == JS_TAG_BIG_DECIMAL) {
    8003dcf2:	57d5                	li	a5,-11
    8003dcf4:	f6f583e3          	beq	a1,a5,8003dc5a <js_add_slow+0x1d2>
quickjs-nuttx/quickjs.c:13638
    } else if (tag1 == JS_TAG_BIG_FLOAT || tag2 == JS_TAG_BIG_FLOAT) {
    8003dcf8:	57dd                	li	a5,-9
    8003dcfa:	f8f59ce3          	bne	a1,a5,8003dc92 <js_add_slow+0x20a>
    8003dcfe:	b759                	j	8003dc84 <js_add_slow+0x1fc>
quickjs-nuttx/quickjs.c:13567
    if (tag1 == JS_TAG_OBJECT || tag2 == JS_TAG_OBJECT) {
    8003dd00:	57fd                	li	a5,-1
    8003dd02:	eaf69fe3          	bne	a3,a5,8003dbc0 <js_add_slow+0x138>
    8003dd06:	b511                	j	8003db0a <js_add_slow+0x82>

000000008003dd08 <js_binary_logic_slow>:
js_binary_logic_slow():
quickjs-nuttx/quickjs.c:13670
{
    8003dd08:	7135                	addi	sp,sp,-160
    8003dd0a:	e922                	sd	s0,144(sp)
    8003dd0c:	e526                	sd	s1,136(sp)
    8003dd0e:	e14a                	sd	s2,128(sp)
    8003dd10:	ed06                	sd	ra,152(sp)
    8003dd12:	fcce                	sd	s3,120(sp)
    8003dd14:	f8d2                	sd	s4,112(sp)
    8003dd16:	f4d6                	sd	s5,104(sp)
quickjs-nuttx/quickjs.c:13675
    op1 = sp[-2];
    8003dd18:	fe05b783          	ld	a5,-32(a1)
quickjs-nuttx/quickjs.c:13676
    op2 = sp[-1];
    8003dd1c:	ff05b703          	ld	a4,-16(a1)
quickjs-nuttx/quickjs.c:13682
    if ((tag1 == JS_TAG_OBJECT &&
    8003dd20:	56fd                	li	a3,-1
quickjs-nuttx/quickjs.c:13675
    op1 = sp[-2];
    8003dd22:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:13676
    op2 = sp[-1];
    8003dd24:	f83a                	sd	a4,48(sp)
quickjs-nuttx/quickjs.c:13675
    op1 = sp[-2];
    8003dd26:	fe85b783          	ld	a5,-24(a1)
quickjs-nuttx/quickjs.c:13676
    op2 = sp[-1];
    8003dd2a:	ff85b703          	ld	a4,-8(a1)
quickjs-nuttx/quickjs.c:13670
{
    8003dd2e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:13675
    op1 = sp[-2];
    8003dd30:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs.c:13676
    op2 = sp[-1];
    8003dd32:	fc3a                	sd	a4,56(sp)
quickjs-nuttx/quickjs.c:13677
    tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003dd34:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:13670
{
    8003dd36:	84ae                	mv	s1,a1
    8003dd38:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:13678
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003dd3a:	2701                	sext.w	a4,a4
quickjs-nuttx/quickjs.c:13682
    if ((tag1 == JS_TAG_OBJECT &&
    8003dd3c:	04d79263          	bne	a5,a3,8003dd80 <js_binary_logic_slow+0x78>
quickjs-nuttx/quickjs.c:13682 (discriminator 1)
    8003dd40:	3779                	addiw	a4,a4,-2
    8003dd42:	4785                	li	a5,1
    8003dd44:	04e7e463          	bltu	a5,a4,8003dd8c <js_binary_logic_slow+0x84>
quickjs-nuttx/quickjs.c:13701
    op1 = JS_ToNumericFree(ctx, op1);
    8003dd48:	7622                	ld	a2,40(sp)
    8003dd4a:	7582                	ld	a1,32(sp)
    8003dd4c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:13702
    if (JS_IsException(op1)) {
    8003dd4e:	4a99                	li	s5,6
quickjs-nuttx/quickjs.c:13701
    op1 = JS_ToNumericFree(ctx, op1);
    8003dd50:	9a4e70ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003dd54:	f02a                	sd	a0,32(sp)
    8003dd56:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13702
    if (JS_IsException(op1)) {
    8003dd58:	0005899b          	sext.w	s3,a1
quickjs-nuttx/quickjs.c:13703
        JS_FreeValue(ctx, op2);
    8003dd5c:	7662                	ld	a2,56(sp)
    8003dd5e:	75c2                	ld	a1,48(sp)
    8003dd60:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:13702
    if (JS_IsException(op1)) {
    8003dd62:	07599e63          	bne	s3,s5,8003ddde <js_binary_logic_slow+0xd6>
quickjs-nuttx/quickjs.c:13708
        JS_FreeValue(ctx, op1);
    8003dd66:	a39cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13758
    sp[-2] = JS_UNDEFINED;
    8003dd6a:	478d                	li	a5,3
    8003dd6c:	fe04b023          	sd	zero,-32(s1)
    8003dd70:	fef4b423          	sd	a5,-24(s1)
quickjs-nuttx/quickjs.c:13759
    sp[-1] = JS_UNDEFINED;
    8003dd74:	fe04b823          	sd	zero,-16(s1)
    8003dd78:	fef4bc23          	sd	a5,-8(s1)
quickjs-nuttx/quickjs.c:13760
    return -1;
    8003dd7c:	557d                	li	a0,-1
    8003dd7e:	a0b9                	j	8003ddcc <js_binary_logic_slow+0xc4>
quickjs-nuttx/quickjs.c:13683
         (tag2 != JS_TAG_NULL && tag2 != JS_TAG_UNDEFINED)) ||
    8003dd80:	fcd714e3          	bne	a4,a3,8003dd48 <js_binary_logic_slow+0x40>
quickjs-nuttx/quickjs.c:13684
        (tag2 == JS_TAG_OBJECT &&
    8003dd84:	37f9                	addiw	a5,a5,-2
    8003dd86:	4705                	li	a4,1
    8003dd88:	fcf770e3          	bgeu	a4,a5,8003dd48 <js_binary_logic_slow+0x40>
quickjs-nuttx/quickjs.c:13687
        int ret = js_call_binary_op_fallback(ctx, &res, op1, op2, op, TRUE, 0);
    8003dd8c:	7742                	ld	a4,48(sp)
    8003dd8e:	77e2                	ld	a5,56(sp)
    8003dd90:	7602                	ld	a2,32(sp)
    8003dd92:	76a2                	ld	a3,40(sp)
    8003dd94:	e002                	sd	zero,0(sp)
    8003dd96:	4885                	li	a7,1
    8003dd98:	884a                	mv	a6,s2
    8003dd9a:	088c                	addi	a1,sp,80
    8003dd9c:	8522                	mv	a0,s0
    8003dd9e:	999ff0ef          	jal	ra,8003d736 <js_call_binary_op_fallback>
    8003dda2:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:13688
        if (ret != 0) {
    8003dda4:	d155                	beqz	a0,8003dd48 <js_binary_logic_slow+0x40>
quickjs-nuttx/quickjs.c:13689
            JS_FreeValue(ctx, op1);
    8003dda6:	7582                	ld	a1,32(sp)
    8003dda8:	7622                	ld	a2,40(sp)
    8003ddaa:	8522                	mv	a0,s0
    8003ddac:	9f3cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13690
            JS_FreeValue(ctx, op2);
    8003ddb0:	75c2                	ld	a1,48(sp)
    8003ddb2:	7662                	ld	a2,56(sp)
    8003ddb4:	8522                	mv	a0,s0
    8003ddb6:	9e9cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13691
            if (ret < 0) {
    8003ddba:	fa09c8e3          	bltz	s3,8003dd6a <js_binary_logic_slow+0x62>
quickjs-nuttx/quickjs.c:13694
                sp[-2] = res;
    8003ddbe:	67c6                	ld	a5,80(sp)
quickjs-nuttx/quickjs.c:13695
                return 0;
    8003ddc0:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:13694
                sp[-2] = res;
    8003ddc2:	fef4b023          	sd	a5,-32(s1)
    8003ddc6:	67e6                	ld	a5,88(sp)
    8003ddc8:	fef4b423          	sd	a5,-24(s1)
quickjs-nuttx/quickjs.c:13761
}
    8003ddcc:	60ea                	ld	ra,152(sp)
    8003ddce:	644a                	ld	s0,144(sp)
    8003ddd0:	64aa                	ld	s1,136(sp)
    8003ddd2:	690a                	ld	s2,128(sp)
    8003ddd4:	79e6                	ld	s3,120(sp)
    8003ddd6:	7a46                	ld	s4,112(sp)
    8003ddd8:	7aa6                	ld	s5,104(sp)
    8003ddda:	610d                	addi	sp,sp,160
    8003dddc:	8082                	ret
quickjs-nuttx/quickjs.c:13706
    op2 = JS_ToNumericFree(ctx, op2);
    8003ddde:	916e70ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003dde2:	f82a                	sd	a0,48(sp)
    8003dde4:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs.c:13707
    if (JS_IsException(op2)) {
    8003dde6:	00058a1b          	sext.w	s4,a1
    8003ddea:	015a1663          	bne	s4,s5,8003ddf6 <js_binary_logic_slow+0xee>
quickjs-nuttx/quickjs.c:13708
        JS_FreeValue(ctx, op1);
    8003ddee:	7582                	ld	a1,32(sp)
    8003ddf0:	7622                	ld	a2,40(sp)
    8003ddf2:	8522                	mv	a0,s0
    8003ddf4:	bf8d                	j	8003dd66 <js_binary_logic_slow+0x5e>
quickjs-nuttx/quickjs.c:13712
    if (is_math_mode(ctx))
    8003ddf6:	8522                	mv	a0,s0
    8003ddf8:	d9dc90ef          	jal	ra,80007b94 <is_math_mode>
    8003ddfc:	e521                	bnez	a0,8003de44 <js_binary_logic_slow+0x13c>
quickjs-nuttx/quickjs.c:13717
    if (tag1 == JS_TAG_BIG_INT || tag2 == JS_TAG_BIG_INT) {
    8003ddfe:	57d9                	li	a5,-10
    8003de00:	00f98e63          	beq	s3,a5,8003de1c <js_binary_logic_slow+0x114>
quickjs-nuttx/quickjs.c:13717 (discriminator 1)
    8003de04:	00fa0e63          	beq	s4,a5,8003de20 <js_binary_logic_slow+0x118>
quickjs-nuttx/quickjs.c:13729
        if (unlikely(JS_ToInt32Free(ctx, (int32_t *)&v1, op1))) {
    8003de08:	7602                	ld	a2,32(sp)
    8003de0a:	76a2                	ld	a3,40(sp)
    8003de0c:	082c                	addi	a1,sp,24
    8003de0e:	8522                	mv	a0,s0
    8003de10:	c84e40ef          	jal	ra,80022294 <JS_ToInt32Free>
    8003de14:	c531                	beqz	a0,8003de60 <js_binary_logic_slow+0x158>
quickjs-nuttx/quickjs.c:13730
            JS_FreeValue(ctx, op2);
    8003de16:	75c2                	ld	a1,48(sp)
    8003de18:	7662                	ld	a2,56(sp)
    8003de1a:	bfe1                	j	8003ddf2 <js_binary_logic_slow+0xea>
quickjs-nuttx/quickjs.c:13718
        if (tag1 != tag2) {
    8003de1c:	033a0463          	beq	s4,s3,8003de44 <js_binary_logic_slow+0x13c>
quickjs-nuttx/quickjs.c:13719
            JS_FreeValue(ctx, op1);
    8003de20:	7582                	ld	a1,32(sp)
    8003de22:	7622                	ld	a2,40(sp)
    8003de24:	8522                	mv	a0,s0
    8003de26:	979cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13720
            JS_FreeValue(ctx, op2);
    8003de2a:	75c2                	ld	a1,48(sp)
    8003de2c:	7662                	ld	a2,56(sp)
    8003de2e:	8522                	mv	a0,s0
    8003de30:	96fcd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13721
            JS_ThrowTypeError(ctx, "both operands must be bigint");
    8003de34:	8522                	mv	a0,s0
    8003de36:	0002f597          	auipc	a1,0x2f
    8003de3a:	24a58593          	addi	a1,a1,586 # 8006d080 <qjsc_repl+0x7ad0>
    8003de3e:	82fda0ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs.c:13722
            goto exception;
    8003de42:	b725                	j	8003dd6a <js_binary_logic_slow+0x62>
quickjs-nuttx/quickjs.c:13725
            if (ctx->rt->bigint_ops.binary_arith(ctx, op, sp - 2, op1, op2))
    8003de44:	6c1c                	ld	a5,24(s0)
    8003de46:	7862                	ld	a6,56(sp)
    8003de48:	7682                	ld	a3,32(sp)
    8003de4a:	2207b883          	ld	a7,544(a5)
    8003de4e:	7722                	ld	a4,40(sp)
    8003de50:	77c2                	ld	a5,48(sp)
    8003de52:	fe048613          	addi	a2,s1,-32
    8003de56:	85ca                	mv	a1,s2
    8003de58:	8522                	mv	a0,s0
    8003de5a:	9882                	jalr	a7
    8003de5c:	d925                	beqz	a0,8003ddcc <js_binary_logic_slow+0xc4>
    8003de5e:	b731                	j	8003dd6a <js_binary_logic_slow+0x62>
quickjs-nuttx/quickjs.c:13733
        if (unlikely(JS_ToInt32Free(ctx, (int32_t *)&v2, op2)))
    8003de60:	7642                	ld	a2,48(sp)
    8003de62:	76e2                	ld	a3,56(sp)
    8003de64:	086c                	addi	a1,sp,28
    8003de66:	8522                	mv	a0,s0
    8003de68:	c2ce40ef          	jal	ra,80022294 <JS_ToInt32Free>
    8003de6c:	ee051fe3          	bnez	a0,8003dd6a <js_binary_logic_slow+0x62>
quickjs-nuttx/quickjs.c:13735
        switch(op) {
    8003de70:	0ae00793          	li	a5,174
    8003de74:	04f90b63          	beq	s2,a5,8003deca <js_binary_logic_slow+0x1c2>
    8003de78:	0127ec63          	bltu	a5,s2,8003de90 <js_binary_logic_slow+0x188>
    8003de7c:	0a100793          	li	a5,161
    8003de80:	02f90463          	beq	s2,a5,8003dea8 <js_binary_logic_slow+0x1a0>
    8003de84:	0a200793          	li	a5,162
    8003de88:	02f90c63          	beq	s2,a5,8003dec0 <js_binary_logic_slow+0x1b8>
quickjs-nuttx/quickjs.c:13752
            abort();
    8003de8c:	4f7240ef          	jal	ra,80062b82 <abort>
quickjs-nuttx/quickjs.c:13735
        switch(op) {
    8003de90:	0af00793          	li	a5,175
    8003de94:	04f90063          	beq	s2,a5,8003ded4 <js_binary_logic_slow+0x1cc>
    8003de98:	0b000793          	li	a5,176
    8003de9c:	fef918e3          	bne	s2,a5,8003de8c <js_binary_logic_slow+0x184>
quickjs-nuttx/quickjs.c:13746
            r = v1 | v2;
    8003dea0:	47e2                	lw	a5,24(sp)
    8003dea2:	4772                	lw	a4,28(sp)
    8003dea4:	8fd9                	or	a5,a5,a4
    8003dea6:	a02d                	j	8003ded0 <js_binary_logic_slow+0x1c8>
quickjs-nuttx/quickjs.c:13737
            r = v1 << (v2 & 0x1f);
    8003dea8:	4772                	lw	a4,28(sp)
    8003deaa:	47e2                	lw	a5,24(sp)
    8003deac:	00e797bb          	sllw	a5,a5,a4
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    8003deb0:	e882                	sd	zero,80(sp)
    8003deb2:	c8be                	sw	a5,80(sp)
    8003deb4:	67c6                	ld	a5,80(sp)
js_binary_logic_slow():
quickjs-nuttx/quickjs.c:13754
        sp[-2] = JS_NewInt32(ctx, r);
    8003deb6:	fe04b423          	sd	zero,-24(s1)
    8003deba:	fef4b023          	sd	a5,-32(s1)
    8003debe:	b739                	j	8003ddcc <js_binary_logic_slow+0xc4>
quickjs-nuttx/quickjs.c:13740
            r = (int)v1 >> (v2 & 0x1f);
    8003dec0:	4772                	lw	a4,28(sp)
    8003dec2:	47e2                	lw	a5,24(sp)
    8003dec4:	40e7d7bb          	sraw	a5,a5,a4
quickjs-nuttx/quickjs.c:13741
            break;
    8003dec8:	b7e5                	j	8003deb0 <js_binary_logic_slow+0x1a8>
quickjs-nuttx/quickjs.c:13743
            r = v1 & v2;
    8003deca:	47e2                	lw	a5,24(sp)
    8003decc:	4772                	lw	a4,28(sp)
    8003dece:	8ff9                	and	a5,a5,a4
quickjs-nuttx/quickjs.c:13749
            r = v1 ^ v2;
    8003ded0:	2781                	sext.w	a5,a5
quickjs-nuttx/quickjs.c:13750
            break;
    8003ded2:	bff9                	j	8003deb0 <js_binary_logic_slow+0x1a8>
quickjs-nuttx/quickjs.c:13749
            r = v1 ^ v2;
    8003ded4:	47e2                	lw	a5,24(sp)
    8003ded6:	4772                	lw	a4,28(sp)
    8003ded8:	8fb9                	xor	a5,a5,a4
    8003deda:	bfdd                	j	8003ded0 <js_binary_logic_slow+0x1c8>

000000008003dedc <js_binary_arith_slow>:
js_binary_arith_slow():
quickjs-nuttx/quickjs.c:13376
{
    8003dedc:	7171                	addi	sp,sp,-176
    8003dede:	f122                	sd	s0,160(sp)
    8003dee0:	ed26                	sd	s1,152(sp)
    8003dee2:	e94a                	sd	s2,144(sp)
    8003dee4:	f506                	sd	ra,168(sp)
    8003dee6:	e54e                	sd	s3,136(sp)
    8003dee8:	e152                	sd	s4,128(sp)
    8003deea:	fcd6                	sd	s5,120(sp)
    8003deec:	f8da                	sd	s6,112(sp)
    8003deee:	f4de                	sd	s7,104(sp)
quickjs-nuttx/quickjs.c:13381
    op1 = sp[-2];
    8003def0:	fe05b783          	ld	a5,-32(a1)
    8003def4:	fe85bb03          	ld	s6,-24(a1)
quickjs-nuttx/quickjs.c:13382
    op2 = sp[-1];
    8003def8:	ff85ba83          	ld	s5,-8(a1)
quickjs-nuttx/quickjs.c:13381
    op1 = sp[-2];
    8003defc:	f03e                	sd	a5,32(sp)
quickjs-nuttx/quickjs.c:13382
    op2 = sp[-1];
    8003defe:	ff05b783          	ld	a5,-16(a1)
quickjs-nuttx/quickjs.c:13381
    op1 = sp[-2];
    8003df02:	f45a                	sd	s6,40(sp)
quickjs-nuttx/quickjs.c:13382
    op2 = sp[-1];
    8003df04:	fc56                	sd	s5,56(sp)
    8003df06:	f83e                	sd	a5,48(sp)
quickjs-nuttx/quickjs.c:13383
    tag1 = JS_VALUE_GET_NORM_TAG(op1);
    8003df08:	000b071b          	sext.w	a4,s6
quickjs-nuttx/quickjs.c:13386
    if (tag1 == JS_TAG_FLOAT64 && tag2 == JS_TAG_FLOAT64) {
    8003df0c:	469d                	li	a3,7
quickjs-nuttx/quickjs.c:13376
{
    8003df0e:	84aa                	mv	s1,a0
    8003df10:	842e                	mv	s0,a1
    8003df12:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:13384
    tag2 = JS_VALUE_GET_NORM_TAG(op2);
    8003df14:	000a879b          	sext.w	a5,s5
quickjs-nuttx/quickjs.c:13386
    if (tag1 == JS_TAG_FLOAT64 && tag2 == JS_TAG_FLOAT64) {
    8003df18:	06d71163          	bne	a4,a3,8003df7a <js_binary_arith_slow+0x9e>
quickjs-nuttx/quickjs.c:13386 (discriminator 1)
    8003df1c:	38e79f63          	bne	a5,a4,8003e2ba <js_binary_arith_slow+0x3de>
quickjs-nuttx/quickjs.c:13387
        d1 = JS_VALUE_GET_FLOAT64(op1);
    8003df20:	3782                	fld	fa5,32(sp)
    8003df22:	a0be                	fsd	fa5,64(sp)
quickjs-nuttx/quickjs.c:13388
        d2 = JS_VALUE_GET_FLOAT64(op2);
    8003df24:	37c2                	fld	fa5,48(sp)
    8003df26:	a8be                	fsd	fa5,80(sp)
quickjs-nuttx/quickjs.c:13509
        if (is_math_mode(ctx) && is_safe_integer(d1) && is_safe_integer(d2))
    8003df28:	8526                	mv	a0,s1
    8003df2a:	c6bc90ef          	jal	ra,80007b94 <is_math_mode>
    8003df2e:	c911                	beqz	a0,8003df42 <js_binary_arith_slow+0x66>
quickjs-nuttx/quickjs.c:13509 (discriminator 1)
    8003df30:	2506                	fld	fa0,64(sp)
    8003df32:	d49ca0ef          	jal	ra,80008c7a <is_safe_integer>
    8003df36:	c511                	beqz	a0,8003df42 <js_binary_arith_slow+0x66>
quickjs-nuttx/quickjs.c:13509 (discriminator 2)
    8003df38:	2546                	fld	fa0,80(sp)
    8003df3a:	d41ca0ef          	jal	ra,80008c7a <is_safe_integer>
    8003df3e:	2c051d63          	bnez	a0,8003e218 <js_binary_arith_slow+0x33c>
quickjs-nuttx/quickjs.c:13511
        switch(op) {
    8003df42:	0a000793          	li	a5,160
    8003df46:	3127e463          	bltu	a5,s2,8003e24e <js_binary_arith_slow+0x372>
    8003df4a:	09a00793          	li	a5,154
    8003df4e:	1127f863          	bgeu	a5,s2,8003e05e <js_binary_arith_slow+0x182>
    8003df52:	f659091b          	addiw	s2,s2,-155
    8003df56:	0009071b          	sext.w	a4,s2
    8003df5a:	4795                	li	a5,5
    8003df5c:	10e7e163          	bltu	a5,a4,8003e05e <js_binary_arith_slow+0x182>
    8003df60:	02091793          	slli	a5,s2,0x20
    8003df64:	01e7d913          	srli	s2,a5,0x1e
    8003df68:	0002f717          	auipc	a4,0x2f
    8003df6c:	13870713          	addi	a4,a4,312 # 8006d0a0 <qjsc_repl+0x7af0>
    8003df70:	993a                	add	s2,s2,a4
    8003df72:	00092783          	lw	a5,0(s2)
    8003df76:	97ba                	add	a5,a5,a4
    8003df78:	8782                	jr	a5
quickjs-nuttx/quickjs.c:13394
    if ((tag1 == JS_TAG_OBJECT &&
    8003df7a:	56fd                	li	a3,-1
    8003df7c:	02d71963          	bne	a4,a3,8003dfae <js_binary_arith_slow+0xd2>
quickjs-nuttx/quickjs.c:13394 (discriminator 1)
    8003df80:	37f9                	addiw	a5,a5,-2
    8003df82:	4705                	li	a4,1
    8003df84:	02f76b63          	bltu	a4,a5,8003dfba <js_binary_arith_slow+0xde>
quickjs-nuttx/quickjs.c:13413
    op1 = JS_ToNumericFree(ctx, op1);
    8003df88:	7622                	ld	a2,40(sp)
    8003df8a:	7582                	ld	a1,32(sp)
    8003df8c:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:13414
    if (JS_IsException(op1)) {
    8003df8e:	4a19                	li	s4,6
quickjs-nuttx/quickjs.c:13413
    op1 = JS_ToNumericFree(ctx, op1);
    8003df90:	f65e60ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003df94:	f02a                	sd	a0,32(sp)
    8003df96:	f42e                	sd	a1,40(sp)
quickjs-nuttx/quickjs.c:13414
    if (JS_IsException(op1)) {
    8003df98:	0005899b          	sext.w	s3,a1
quickjs-nuttx/quickjs.c:13413
    op1 = JS_ToNumericFree(ctx, op1);
    8003df9c:	8b2e                	mv	s6,a1
quickjs-nuttx/quickjs.c:13415
        JS_FreeValue(ctx, op2);
    8003df9e:	7662                	ld	a2,56(sp)
    8003dfa0:	75c2                	ld	a1,48(sp)
    8003dfa2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:13414
    if (JS_IsException(op1)) {
    8003dfa4:	05499b63          	bne	s3,s4,8003dffa <js_binary_arith_slow+0x11e>
quickjs-nuttx/quickjs.c:13503
            JS_FreeValue(ctx, op2);
    8003dfa8:	ff6cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13504
            goto exception;
    8003dfac:	aaa1                	j	8003e104 <js_binary_arith_slow+0x228>
quickjs-nuttx/quickjs.c:13395
         (tag2 != JS_TAG_NULL && tag2 != JS_TAG_UNDEFINED)) ||
    8003dfae:	fcd79de3          	bne	a5,a3,8003df88 <js_binary_arith_slow+0xac>
quickjs-nuttx/quickjs.c:13396
        (tag2 == JS_TAG_OBJECT &&
    8003dfb2:	3779                	addiw	a4,a4,-2
    8003dfb4:	4785                	li	a5,1
    8003dfb6:	fce7f9e3          	bgeu	a5,a4,8003df88 <js_binary_arith_slow+0xac>
quickjs-nuttx/quickjs.c:13399
        int ret = js_call_binary_op_fallback(ctx, &res, op1, op2, op, TRUE, 0);
    8003dfba:	7742                	ld	a4,48(sp)
    8003dfbc:	77e2                	ld	a5,56(sp)
    8003dfbe:	7602                	ld	a2,32(sp)
    8003dfc0:	76a2                	ld	a3,40(sp)
    8003dfc2:	e002                	sd	zero,0(sp)
    8003dfc4:	4885                	li	a7,1
    8003dfc6:	884a                	mv	a6,s2
    8003dfc8:	088c                	addi	a1,sp,80
    8003dfca:	8526                	mv	a0,s1
    8003dfcc:	f6aff0ef          	jal	ra,8003d736 <js_call_binary_op_fallback>
    8003dfd0:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs.c:13400
        if (ret != 0) {
    8003dfd2:	d95d                	beqz	a0,8003df88 <js_binary_arith_slow+0xac>
quickjs-nuttx/quickjs.c:13401
            JS_FreeValue(ctx, op1);
    8003dfd4:	7582                	ld	a1,32(sp)
    8003dfd6:	7622                	ld	a2,40(sp)
    8003dfd8:	8526                	mv	a0,s1
    8003dfda:	fc4cd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13402
            JS_FreeValue(ctx, op2);
    8003dfde:	75c2                	ld	a1,48(sp)
    8003dfe0:	7662                	ld	a2,56(sp)
    8003dfe2:	8526                	mv	a0,s1
    8003dfe4:	fbacd0ef          	jal	ra,8000b79e <JS_FreeValue>
quickjs-nuttx/quickjs.c:13403
            if (ret < 0) {
    8003dfe8:	1009ce63          	bltz	s3,8003e104 <js_binary_arith_slow+0x228>
quickjs-nuttx/quickjs.c:13406
                sp[-2] = res;
    8003dfec:	67c6                	ld	a5,80(sp)
    8003dfee:	fef43023          	sd	a5,-32(s0)
    8003dff2:	67e6                	ld	a5,88(sp)
quickjs-nuttx/quickjs.c:13539
        sp[-2] = __JS_NewFloat64(ctx, dr);
    8003dff4:	fef43423          	sd	a5,-24(s0)
    8003dff8:	a071                	j	8003e084 <js_binary_arith_slow+0x1a8>
quickjs-nuttx/quickjs.c:13418
    op2 = JS_ToNumericFree(ctx, op2);
    8003dffa:	efbe60ef          	jal	ra,80024ef4 <JS_ToNumericFree>
    8003dffe:	f82a                	sd	a0,48(sp)
