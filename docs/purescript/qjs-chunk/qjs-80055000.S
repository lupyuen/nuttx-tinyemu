    80054000:	e0ca                	sd	s2,64(sp)
quickjs-nuttx/quickjs-libc.c:2470
    if (argc >= 2) {
    80054002:	4785                	li	a5,1
quickjs-nuttx/quickjs-libc.c:2466
{
    80054004:	84aa                	mv	s1,a0
    80054006:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:2470
    if (argc >= 2) {
    80054008:	02d7d363          	bge	a5,a3,8005402e <js_os_mkdir+0x36>
quickjs-nuttx/quickjs-libc.c:2471
        if (JS_ToInt32(ctx, &mode, argv[1]))
    8005400c:	6b10                	ld	a2,16(a4)
    8005400e:	6f14                	ld	a3,24(a4)
    80054010:	086c                	addi	a1,sp,28
    80054012:	ba8ce0ef          	jal	ra,800223ba <JS_ToInt32>
    80054016:	cd19                	beqz	a0,80054034 <js_os_mkdir+0x3c>
quickjs-nuttx/quickjs-libc.c:2472
            return JS_EXCEPTION;
    80054018:	4799                	li	a5,6
    8005401a:	f002                	sd	zero,32(sp)
    8005401c:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2487 (discriminator 1)
}
    8005401e:	60e6                	ld	ra,88(sp)
    80054020:	6446                	ld	s0,80(sp)
    80054022:	7502                	ld	a0,32(sp)
    80054024:	75a2                	ld	a1,40(sp)
    80054026:	64a6                	ld	s1,72(sp)
    80054028:	6906                	ld	s2,64(sp)
    8005402a:	6125                	addi	sp,sp,96
    8005402c:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2474
        mode = 0777;
    8005402e:	1ff00793          	li	a5,511
    80054032:	ce3e                	sw	a5,28(sp)
quickjs-nuttx/quickjs-libc.c:2476
    path = JS_ToCString(ctx, argv[0]);
    80054034:	600c                	ld	a1,0(s0)
    80054036:	6410                	ld	a2,8(s0)
    80054038:	8526                	mv	a0,s1
    8005403a:	8bafe0ef          	jal	ra,800520f4 <JS_ToCString>
    8005403e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2477
    if (!path)
    80054040:	dd61                	beqz	a0,80054018 <js_os_mkdir+0x20>
quickjs-nuttx/quickjs-libc.c:2483
    ret = js_get_errno(mkdir(path, mode));
    80054042:	45f2                	lw	a1,28(sp)
    80054044:	73a100ef          	jal	ra,8006477e <mkdir>
    80054048:	cf3ff0ef          	jal	ra,80053d3a <js_get_errno>
    8005404c:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2485
    JS_FreeCString(ctx, path);
    8005404e:	85a2                	mv	a1,s0
    80054050:	8526                	mv	a0,s1
    80054052:	aedb80ef          	jal	ra,8000cb3e <JS_FreeCString>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054056:	da02                	sw	zero,52(sp)
js_os_mkdir():
quickjs-nuttx/quickjs-libc.c:2483
    ret = js_get_errno(mkdir(path, mode));
    80054058:	d84a                	sw	s2,48(sp)
    8005405a:	77c2                	ld	a5,48(sp)
    8005405c:	f402                	sd	zero,40(sp)
    8005405e:	f03e                	sd	a5,32(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054060:	bf7d                	j	8005401e <js_os_mkdir+0x26>

0000000080054062 <js_os_rename>:
js_os_rename():
quickjs-nuttx/quickjs-libc.c:1838
    oldpath = JS_ToCString(ctx, argv[0]);
    80054062:	630c                	ld	a1,0(a4)
    80054064:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:1834
{
    80054066:	711d                	addi	sp,sp,-96
    80054068:	e8a2                	sd	s0,80(sp)
    8005406a:	e0ca                	sd	s2,64(sp)
    8005406c:	ec86                	sd	ra,88(sp)
    8005406e:	e4a6                	sd	s1,72(sp)
    80054070:	fc4e                	sd	s3,56(sp)
    80054072:	842a                	mv	s0,a0
    80054074:	893a                	mv	s2,a4
quickjs-nuttx/quickjs-libc.c:1838
    oldpath = JS_ToCString(ctx, argv[0]);
    80054076:	87efe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:1839
    if (!oldpath)
    8005407a:	ed09                	bnez	a0,80054094 <js_os_rename+0x32>
quickjs-nuttx/quickjs-libc.c:1844
        return JS_EXCEPTION;
    8005407c:	4799                	li	a5,6
    8005407e:	e802                	sd	zero,16(sp)
    80054080:	ec3e                	sd	a5,24(sp)
quickjs-nuttx/quickjs-libc.c:1850 (discriminator 1)
}
    80054082:	60e6                	ld	ra,88(sp)
    80054084:	6446                	ld	s0,80(sp)
    80054086:	6542                	ld	a0,16(sp)
    80054088:	65e2                	ld	a1,24(sp)
    8005408a:	64a6                	ld	s1,72(sp)
    8005408c:	6906                	ld	s2,64(sp)
    8005408e:	79e2                	ld	s3,56(sp)
    80054090:	6125                	addi	sp,sp,96
    80054092:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1841
    newpath = JS_ToCString(ctx, argv[1]);
    80054094:	01093583          	ld	a1,16(s2)
    80054098:	01893603          	ld	a2,24(s2)
    8005409c:	84aa                	mv	s1,a0
    8005409e:	8522                	mv	a0,s0
    800540a0:	854fe0ef          	jal	ra,800520f4 <JS_ToCString>
    800540a4:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:1842
    if (!newpath) {
    800540a6:	e511                	bnez	a0,800540b2 <js_os_rename+0x50>
quickjs-nuttx/quickjs-libc.c:1843
        JS_FreeCString(ctx, oldpath);
    800540a8:	85a6                	mv	a1,s1
    800540aa:	8522                	mv	a0,s0
    800540ac:	a93b80ef          	jal	ra,8000cb3e <JS_FreeCString>
    800540b0:	b7f1                	j	8005407c <js_os_rename+0x1a>
quickjs-nuttx/quickjs-libc.c:1846
    ret = js_get_errno(rename(oldpath, newpath));
    800540b2:	85aa                	mv	a1,a0
    800540b4:	8526                	mv	a0,s1
    800540b6:	043100ef          	jal	ra,800648f8 <rename>
    800540ba:	c81ff0ef          	jal	ra,80053d3a <js_get_errno>
    800540be:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:1847
    JS_FreeCString(ctx, oldpath);
    800540c0:	85a6                	mv	a1,s1
    800540c2:	8522                	mv	a0,s0
    800540c4:	a7bb80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:1848
    JS_FreeCString(ctx, newpath);
    800540c8:	85ca                	mv	a1,s2
    800540ca:	8522                	mv	a0,s0
    800540cc:	a73b80ef          	jal	ra,8000cb3e <JS_FreeCString>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800540d0:	d202                	sw	zero,36(sp)
js_os_rename():
quickjs-nuttx/quickjs-libc.c:1846
    ret = js_get_errno(rename(oldpath, newpath));
    800540d2:	d04e                	sw	s3,32(sp)
    800540d4:	7782                	ld	a5,32(sp)
    800540d6:	ec02                	sd	zero,24(sp)
    800540d8:	e83e                	sd	a5,16(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    800540da:	b765                	j	80054082 <js_os_rename+0x20>

00000000800540dc <js_os_remove>:
js_os_remove():
quickjs-nuttx/quickjs-libc.c:1812
    filename = JS_ToCString(ctx, argv[0]);
    800540dc:	630c                	ld	a1,0(a4)
    800540de:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:1808
{
    800540e0:	711d                	addi	sp,sp,-96
    800540e2:	e4a6                	sd	s1,72(sp)
    800540e4:	ec86                	sd	ra,88(sp)
    800540e6:	e8a2                	sd	s0,80(sp)
    800540e8:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:1812
    filename = JS_ToCString(ctx, argv[0]);
    800540ea:	80afe0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:1813
    if (!filename)
    800540ee:	e919                	bnez	a0,80054104 <js_os_remove+0x28>
quickjs-nuttx/quickjs-libc.c:1814
        return JS_EXCEPTION;
    800540f0:	4799                	li	a5,6
    800540f2:	f002                	sd	zero,32(sp)
    800540f4:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1830 (discriminator 1)
}
    800540f6:	60e6                	ld	ra,88(sp)
    800540f8:	6446                	ld	s0,80(sp)
    800540fa:	7502                	ld	a0,32(sp)
    800540fc:	75a2                	ld	a1,40(sp)
    800540fe:	64a6                	ld	s1,72(sp)
    80054100:	6125                	addi	sp,sp,96
    80054102:	8082                	ret
    80054104:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs-libc.c:1825
    ret = remove(filename);
    80054106:	4450d0ef          	jal	ra,80061d4a <remove>
quickjs-nuttx/quickjs-libc.c:1827
    ret = js_get_errno(ret);
    8005410a:	c31ff0ef          	jal	ra,80053d3a <js_get_errno>
quickjs-nuttx/quickjs-libc.c:1828
    JS_FreeCString(ctx, filename);
    8005410e:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:1827
    ret = js_get_errno(ret);
    80054110:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1828
    JS_FreeCString(ctx, filename);
    80054112:	8526                	mv	a0,s1
    80054114:	a2bb80ef          	jal	ra,8000cb3e <JS_FreeCString>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054118:	da02                	sw	zero,52(sp)
js_os_remove():
quickjs-nuttx/quickjs-libc.c:1827
    ret = js_get_errno(ret);
    8005411a:	d822                	sw	s0,48(sp)
    8005411c:	77c2                	ld	a5,48(sp)
    8005411e:	f402                	sd	zero,40(sp)
    80054120:	f03e                	sd	a5,32(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054122:	bfd1                	j	800540f6 <js_os_remove+0x1a>

0000000080054124 <js_os_read_write>:
js_os_read_write():
quickjs-nuttx/quickjs-libc.c:1667
{
    80054124:	7159                	addi	sp,sp,-112
    80054126:	f0a2                	sd	s0,96(sp)
    80054128:	eca6                	sd	s1,88(sp)
    8005412a:	e8ca                	sd	s2,80(sp)
    8005412c:	f486                	sd	ra,104(sp)
quickjs-nuttx/quickjs-libc.c:1674
    if (JS_ToInt32(ctx, &fd, argv[0]))
    8005412e:	6310                	ld	a2,0(a4)
    80054130:	6714                	ld	a3,8(a4)
    80054132:	084c                	addi	a1,sp,20
quickjs-nuttx/quickjs-libc.c:1667
{
    80054134:	84aa                	mv	s1,a0
    80054136:	843a                	mv	s0,a4
    80054138:	893e                	mv	s2,a5
quickjs-nuttx/quickjs-libc.c:1674
    if (JS_ToInt32(ctx, &fd, argv[0]))
    8005413a:	a80ce0ef          	jal	ra,800223ba <JS_ToInt32>
    8005413e:	cd01                	beqz	a0,80054156 <js_os_read_write+0x32>
quickjs-nuttx/quickjs-libc.c:1675
        return JS_EXCEPTION;
    80054140:	4799                	li	a5,6
    80054142:	f802                	sd	zero,48(sp)
    80054144:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:1690 (discriminator 1)
}
    80054146:	70a6                	ld	ra,104(sp)
    80054148:	7406                	ld	s0,96(sp)
    8005414a:	7542                	ld	a0,48(sp)
    8005414c:	75e2                	ld	a1,56(sp)
    8005414e:	64e6                	ld	s1,88(sp)
    80054150:	6946                	ld	s2,80(sp)
    80054152:	6165                	addi	sp,sp,112
    80054154:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1676
    if (JS_ToIndex(ctx, &pos, argv[2]))
    80054156:	7010                	ld	a2,32(s0)
    80054158:	7414                	ld	a3,40(s0)
    8005415a:	082c                	addi	a1,sp,24
    8005415c:	8526                	mv	a0,s1
    8005415e:	aa4d00ef          	jal	ra,80024402 <JS_ToIndex>
    80054162:	fd79                	bnez	a0,80054140 <js_os_read_write+0x1c>
quickjs-nuttx/quickjs-libc.c:1678
    if (JS_ToIndex(ctx, &len, argv[3]))
    80054164:	7810                	ld	a2,48(s0)
    80054166:	7c14                	ld	a3,56(s0)
    80054168:	100c                	addi	a1,sp,32
    8005416a:	8526                	mv	a0,s1
    8005416c:	a96d00ef          	jal	ra,80024402 <JS_ToIndex>
    80054170:	f961                	bnez	a0,80054140 <js_os_read_write+0x1c>
quickjs-nuttx/quickjs-libc.c:1680
    buf = JS_GetArrayBuffer(ctx, &size, argv[1]);
    80054172:	6810                	ld	a2,16(s0)
    80054174:	6c14                	ld	a3,24(s0)
    80054176:	102c                	addi	a1,sp,40
    80054178:	8526                	mv	a0,s1
    8005417a:	8a1f80ef          	jal	ra,8004ca1a <JS_GetArrayBuffer>
    8005417e:	85aa                	mv	a1,a0
quickjs-nuttx/quickjs-libc.c:1681
    if (!buf)
    80054180:	d161                	beqz	a0,80054140 <js_os_read_write+0x1c>
quickjs-nuttx/quickjs-libc.c:1683
    if (pos + len > size)
    80054182:	67e2                	ld	a5,24(sp)
    80054184:	7602                	ld	a2,32(sp)
    80054186:	7722                	ld	a4,40(sp)
    80054188:	00c786b3          	add	a3,a5,a2
    8005418c:	00d77c63          	bgeu	a4,a3,800541a4 <js_os_read_write+0x80>
quickjs-nuttx/quickjs-libc.c:1684
        return JS_ThrowRangeError(ctx, "read/write array buffer overflow");
    80054190:	0002b597          	auipc	a1,0x2b
    80054194:	b5058593          	addi	a1,a1,-1200 # 8007ece0 <utf8_min_code+0x158>
    80054198:	8526                	mv	a0,s1
    8005419a:	f34c50ef          	jal	ra,800198ce <JS_ThrowRangeError>
    8005419e:	f82a                	sd	a0,48(sp)
    800541a0:	fc2e                	sd	a1,56(sp)
    800541a2:	b755                	j	80054146 <js_os_read_write+0x22>
quickjs-nuttx/quickjs-libc.c:1686
        ret = js_get_errno(write(fd, buf + pos, len));
    800541a4:	4552                	lw	a0,20(sp)
    800541a6:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs-libc.c:1685
    if (magic)
    800541a8:	02090263          	beqz	s2,800541cc <js_os_read_write+0xa8>
quickjs-nuttx/quickjs-libc.c:1686
        ret = js_get_errno(write(fd, buf + pos, len));
    800541ac:	047100ef          	jal	ra,800649f2 <write>
quickjs-nuttx/quickjs-libc.c:1688
        ret = js_get_errno(read(fd, buf + pos, len));
    800541b0:	b8bff0ef          	jal	ra,80053d3a <js_get_errno>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800541b4:	0005079b          	sext.w	a5,a0
    800541b8:	00f51d63          	bne	a0,a5,800541d2 <js_os_read_write+0xae>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800541bc:	c282                	sw	zero,68(sp)
    800541be:	c0be                	sw	a5,64(sp)
    800541c0:	6706                	ld	a4,64(sp)
    800541c2:	f83a                	sd	a4,48(sp)
    800541c4:	4701                	li	a4,0
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800541c6:	d83e                	sw	a5,48(sp)
    800541c8:	fc3a                	sd	a4,56(sp)
    800541ca:	bfb5                	j	80054146 <js_os_read_write+0x22>
js_os_read_write():
quickjs-nuttx/quickjs-libc.c:1688
    800541cc:	716100ef          	jal	ra,800648e2 <read>
    800541d0:	b7c5                	j	800541b0 <js_os_read_write+0x8c>
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    800541d2:	d22577d3          	fcvt.d.l	fa5,a0
    800541d6:	471d                	li	a4,7
    800541d8:	e20787d3          	fmv.x.d	a5,fa5
js_os_read_write():
quickjs-nuttx/quickjs.h:230
    return v;
    800541dc:	b83e                	fsd	fa5,48(sp)
    800541de:	2781                	sext.w	a5,a5
    800541e0:	b7dd                	j	800541c6 <js_os_read_write+0xa2>

00000000800541e2 <js_os_open>:
js_os_open():
quickjs-nuttx/quickjs-libc.c:1579
{
    800541e2:	7159                	addi	sp,sp,-112
    800541e4:	f0a2                	sd	s0,96(sp)
    800541e6:	eca6                	sd	s1,88(sp)
    800541e8:	e4ce                	sd	s3,72(sp)
    800541ea:	f486                	sd	ra,104(sp)
    800541ec:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs-libc.c:1583
    filename = JS_ToCString(ctx, argv[0]);
    800541ee:	630c                	ld	a1,0(a4)
    800541f0:	6710                	ld	a2,8(a4)
quickjs-nuttx/quickjs-libc.c:1579
{
    800541f2:	84aa                	mv	s1,a0
    800541f4:	89b6                	mv	s3,a3
    800541f6:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:1583
    filename = JS_ToCString(ctx, argv[0]);
    800541f8:	efdfd0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:1584
    if (!filename)
    800541fc:	ed09                	bnez	a0,80054216 <js_os_open+0x34>
quickjs-nuttx/quickjs-libc.c:1592
            return JS_EXCEPTION;
    800541fe:	4799                	li	a5,6
    80054200:	f002                	sd	zero,32(sp)
    80054202:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:1605 (discriminator 1)
}
    80054204:	70a6                	ld	ra,104(sp)
    80054206:	7406                	ld	s0,96(sp)
    80054208:	7502                	ld	a0,32(sp)
    8005420a:	75a2                	ld	a1,40(sp)
    8005420c:	64e6                	ld	s1,88(sp)
    8005420e:	6946                	ld	s2,80(sp)
    80054210:	69a6                	ld	s3,72(sp)
    80054212:	6165                	addi	sp,sp,112
    80054214:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1586
    if (JS_ToInt32(ctx, &flags, argv[1]))
    80054216:	6810                	ld	a2,16(s0)
    80054218:	6c14                	ld	a3,24(s0)
    8005421a:	892a                	mv	s2,a0
    8005421c:	082c                	addi	a1,sp,24
    8005421e:	8526                	mv	a0,s1
    80054220:	99ace0ef          	jal	ra,800223ba <JS_ToInt32>
    80054224:	c511                	beqz	a0,80054230 <js_os_open+0x4e>
quickjs-nuttx/quickjs-libc.c:1591
            JS_FreeCString(ctx, filename);
    80054226:	85ca                	mv	a1,s2
    80054228:	8526                	mv	a0,s1
    8005422a:	915b80ef          	jal	ra,8000cb3e <JS_FreeCString>
    8005422e:	bfc1                	j	800541fe <js_os_open+0x1c>
quickjs-nuttx/quickjs-libc.c:1588
    if (argc >= 3 && !JS_IsUndefined(argv[2])) {
    80054230:	4789                	li	a5,2
    80054232:	0537d063          	bge	a5,s3,80054272 <js_os_open+0x90>
JS_IsUndefined():
quickjs-nuttx/quickjs.h:605 (discriminator 1)
    return JS_VALUE_GET_TAG(v) == JS_TAG_UNDEFINED;
    80054236:	7414                	ld	a3,40(s0)
js_os_open():
quickjs-nuttx/quickjs-libc.c:1588 (discriminator 1)
    80054238:	478d                	li	a5,3
    8005423a:	0006871b          	sext.w	a4,a3
    8005423e:	02f70a63          	beq	a4,a5,80054272 <js_os_open+0x90>
quickjs-nuttx/quickjs-libc.c:1589
        if (JS_ToInt32(ctx, &mode, argv[2])) {
    80054242:	7010                	ld	a2,32(s0)
    80054244:	086c                	addi	a1,sp,28
    80054246:	8526                	mv	a0,s1
    80054248:	972ce0ef          	jal	ra,800223ba <JS_ToInt32>
    8005424c:	fd69                	bnez	a0,80054226 <js_os_open+0x44>
quickjs-nuttx/quickjs-libc.c:1602
    ret = js_get_errno(open(filename, flags, mode));
    8005424e:	4672                	lw	a2,28(sp)
    80054250:	45e2                	lw	a1,24(sp)
    80054252:	854a                	mv	a0,s2
    80054254:	5be100ef          	jal	ra,80064812 <open>
    80054258:	ae3ff0ef          	jal	ra,80053d3a <js_get_errno>
    8005425c:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1603
    JS_FreeCString(ctx, filename);
    8005425e:	85ca                	mv	a1,s2
    80054260:	8526                	mv	a0,s1
    80054262:	8ddb80ef          	jal	ra,8000cb3e <JS_FreeCString>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80054266:	da02                	sw	zero,52(sp)
js_os_open():
quickjs-nuttx/quickjs-libc.c:1602
    ret = js_get_errno(open(filename, flags, mode));
    80054268:	d822                	sw	s0,48(sp)
    8005426a:	77c2                	ld	a5,48(sp)
    8005426c:	f402                	sd	zero,40(sp)
    8005426e:	f03e                	sd	a5,32(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054270:	bf51                	j	80054204 <js_os_open+0x22>
js_os_open():
quickjs-nuttx/quickjs-libc.c:1595
        mode = 0666;
    80054272:	1b600793          	li	a5,438
    80054276:	ce3e                	sw	a5,28(sp)
    80054278:	bfd9                	j	8005424e <js_os_open+0x6c>

000000008005427a <js_sab_free>:
js_sab_free():
quickjs-nuttx/quickjs-libc.c:3234
{
    8005427a:	1141                	addi	sp,sp,-16
    8005427c:	e022                	sd	s0,0(sp)
quickjs-nuttx/quickjs-libc.c:3238
    ref_count = atomic_add_int(&sab->ref_count, -1);
    8005427e:	ff858413          	addi	s0,a1,-8
    80054282:	8522                	mv	a0,s0
    80054284:	55fd                	li	a1,-1
quickjs-nuttx/quickjs-libc.c:3234
{
    80054286:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs-libc.c:3238
    ref_count = atomic_add_int(&sab->ref_count, -1);
    80054288:	e9eff0ef          	jal	ra,80053926 <atomic_add_int>
quickjs-nuttx/quickjs-libc.c:3239
    assert(ref_count >= 0);
    8005428c:	00055c63          	bgez	a0,800542a4 <js_sab_free+0x2a>
    80054290:	6585                	lui	a1,0x1
    80054292:	4601                	li	a2,0
    80054294:	ca758593          	addi	a1,a1,-857 # ca7 <asinh-0x7ffff359>
    80054298:	0002b517          	auipc	a0,0x2b
    8005429c:	ab050513          	addi	a0,a0,-1360 # 8007ed48 <utf8_min_code+0x1c0>
    800542a0:	6bc0c0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs-libc.c:3240 (discriminator 2)
    if (ref_count == 0) {
    800542a4:	e519                	bnez	a0,800542b2 <js_sab_free+0x38>
quickjs-nuttx/quickjs-libc.c:3241
        free(sab);
    800542a6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3243
}
    800542a8:	6402                	ld	s0,0(sp)
    800542aa:	60a2                	ld	ra,8(sp)
    800542ac:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs-libc.c:3241
        free(sab);
    800542ae:	2090b06f          	j	8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3243
}
    800542b2:	60a2                	ld	ra,8(sp)
    800542b4:	6402                	ld	s0,0(sp)
    800542b6:	0141                	addi	sp,sp,16
    800542b8:	8082                	ret

00000000800542ba <js_free_message>:
js_free_message():
quickjs-nuttx/quickjs-libc.c:3281
{
    800542ba:	1101                	addi	sp,sp,-32
    800542bc:	e822                	sd	s0,16(sp)
    800542be:	e426                	sd	s1,8(sp)
    800542c0:	ec06                	sd	ra,24(sp)
    800542c2:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3284
    for(i = 0; i < msg->sab_tab_len; i++) {
    800542c4:	4481                	li	s1,0
quickjs-nuttx/quickjs-libc.c:3284 (discriminator 1)
    800542c6:	741c                	ld	a5,40(s0)
quickjs-nuttx/quickjs-libc.c:3285 (discriminator 1)
        js_sab_free(NULL, msg->sab_tab[i]);
    800542c8:	7008                	ld	a0,32(s0)
quickjs-nuttx/quickjs-libc.c:3284 (discriminator 1)
    for(i = 0; i < msg->sab_tab_len; i++) {
    800542ca:	00f4ee63          	bltu	s1,a5,800542e6 <js_free_message+0x2c>
quickjs-nuttx/quickjs-libc.c:3287
    free(msg->sab_tab);
    800542ce:	1e90b0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3288
    free(msg->data);
    800542d2:	6808                	ld	a0,16(s0)
    800542d4:	1e30b0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3289
    free(msg);
    800542d8:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3290
}
    800542da:	6442                	ld	s0,16(sp)
    800542dc:	60e2                	ld	ra,24(sp)
    800542de:	64a2                	ld	s1,8(sp)
    800542e0:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:3289
    free(msg);
    800542e2:	1d50b06f          	j	8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3285 (discriminator 3)
        js_sab_free(NULL, msg->sab_tab[i]);
    800542e6:	00349793          	slli	a5,s1,0x3
    800542ea:	953e                	add	a0,a0,a5
    800542ec:	610c                	ld	a1,0(a0)
    800542ee:	4501                	li	a0,0
quickjs-nuttx/quickjs-libc.c:3284 (discriminator 3)
    for(i = 0; i < msg->sab_tab_len; i++) {
    800542f0:	0485                	addi	s1,s1,1
quickjs-nuttx/quickjs-libc.c:3285 (discriminator 3)
        js_sab_free(NULL, msg->sab_tab[i]);
    800542f2:	f89ff0ef          	jal	ra,8005427a <js_sab_free>
quickjs-nuttx/quickjs-libc.c:3284 (discriminator 3)
    for(i = 0; i < msg->sab_tab_len; i++) {
    800542f6:	bfc1                	j	800542c6 <js_free_message+0xc>

00000000800542f8 <js_free_message_pipe>:
js_free_message_pipe():
quickjs-nuttx/quickjs-libc.c:3298
    if (!ps)
    800542f8:	c935                	beqz	a0,8005436c <js_free_message_pipe+0x74>
quickjs-nuttx/quickjs-libc.c:3293
{
    800542fa:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs-libc.c:3301
    ref_count = atomic_add_int(&ps->ref_count, -1);
    800542fc:	55fd                	li	a1,-1
quickjs-nuttx/quickjs-libc.c:3293
{
    800542fe:	e822                	sd	s0,16(sp)
    80054300:	ec06                	sd	ra,24(sp)
    80054302:	e426                	sd	s1,8(sp)
    80054304:	e04a                	sd	s2,0(sp)
    80054306:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3301
    ref_count = atomic_add_int(&ps->ref_count, -1);
    80054308:	e1eff0ef          	jal	ra,80053926 <atomic_add_int>
quickjs-nuttx/quickjs-libc.c:3302
    assert(ref_count >= 0);
    8005430c:	00055c63          	bgez	a0,80054324 <js_free_message_pipe+0x2c>
quickjs-nuttx/quickjs-libc.c:3302 (discriminator 1)
    80054310:	6585                	lui	a1,0x1
    80054312:	4601                	li	a2,0
    80054314:	ce658593          	addi	a1,a1,-794 # ce6 <asinh-0x7ffff31a>
    80054318:	0002b517          	auipc	a0,0x2b
    8005431c:	a3050513          	addi	a0,a0,-1488 # 8007ed48 <utf8_min_code+0x1c0>
    80054320:	63c0c0ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs-libc.c:3303 (discriminator 2)
    if (ref_count == 0) {
    80054324:	ed15                	bnez	a0,80054360 <js_free_message_pipe+0x68>
quickjs-nuttx/quickjs-libc.c:3304
        list_for_each_safe(el, el1, &ps->msg_queue) {
    80054326:	7c08                	ld	a0,56(s0)
    80054328:	03040913          	addi	s2,s0,48
    8005432c:	6504                	ld	s1,8(a0)
    8005432e:	03251463          	bne	a0,s2,80054356 <js_free_message_pipe+0x5e>
quickjs-nuttx/quickjs-libc.c:3308
        pthread_mutex_destroy(&ps->mutex);
    80054332:	00840513          	addi	a0,s0,8
    80054336:	564100ef          	jal	ra,8006489a <pthread_mutex_destroy>
quickjs-nuttx/quickjs-libc.c:3309
        close(ps->read_fd);
    8005433a:	4028                	lw	a0,64(s0)
    8005433c:	328100ef          	jal	ra,80064664 <close>
quickjs-nuttx/quickjs-libc.c:3310
        close(ps->write_fd);
    80054340:	4068                	lw	a0,68(s0)
    80054342:	322100ef          	jal	ra,80064664 <close>
quickjs-nuttx/quickjs-libc.c:3311
        free(ps);
    80054346:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3313
}
    80054348:	6442                	ld	s0,16(sp)
    8005434a:	60e2                	ld	ra,24(sp)
    8005434c:	64a2                	ld	s1,8(sp)
    8005434e:	6902                	ld	s2,0(sp)
    80054350:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:3311
        free(ps);
    80054352:	1650b06f          	j	8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3306
            js_free_message(msg);
    80054356:	f65ff0ef          	jal	ra,800542ba <js_free_message>
quickjs-nuttx/quickjs-libc.c:3304
        list_for_each_safe(el, el1, &ps->msg_queue) {
    8005435a:	8526                	mv	a0,s1
    8005435c:	6484                	ld	s1,8(s1)
    8005435e:	bfc1                	j	8005432e <js_free_message_pipe+0x36>
quickjs-nuttx/quickjs-libc.c:3313
}
    80054360:	60e2                	ld	ra,24(sp)
    80054362:	6442                	ld	s0,16(sp)
    80054364:	64a2                	ld	s1,8(sp)
    80054366:	6902                	ld	s2,0(sp)
    80054368:	6105                	addi	sp,sp,32
    8005436a:	8082                	ret
    8005436c:	8082                	ret

000000008005436e <js_worker_ctor>:
js_worker_ctor():
quickjs-nuttx/quickjs-libc.c:3425
{
    8005436e:	7135                	addi	sp,sp,-160
    80054370:	e82e                	sd	a1,16(sp)
    80054372:	ed06                	sd	ra,152(sp)
    80054374:	e922                	sd	s0,144(sp)
    80054376:	e526                	sd	s1,136(sp)
    80054378:	e14a                	sd	s2,128(sp)
    8005437a:	ec32                	sd	a2,24(sp)
    8005437c:	893a                	mv	s2,a4
    8005437e:	fcce                	sd	s3,120(sp)
    80054380:	f8d2                	sd	s4,112(sp)
    80054382:	f4d6                	sd	s5,104(sp)
    80054384:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:3426
    JSRuntime *rt = JS_GetRuntime(ctx);
    80054386:	d57b60ef          	jal	ra,8000b0dc <JS_GetRuntime>
quickjs-nuttx/quickjs-libc.c:3430
    JSValue obj = JS_UNDEFINED;
    8005438a:	f402                	sd	zero,40(sp)
    8005438c:	f802                	sd	zero,48(sp)
is_main_thread():
quickjs-nuttx/quickjs-libc.c:1854
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    8005438e:	cb7b60ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:1855
    return !ts->recv_pipe;
    80054392:	6520                	ld	s0,72(a0)
js_worker_ctor():
quickjs-nuttx/quickjs-libc.c:3438
        return JS_ThrowTypeError(ctx, "cannot create a worker inside a worker");
    80054394:	0002b597          	auipc	a1,0x2b
    80054398:	9c458593          	addi	a1,a1,-1596 # 8007ed58 <utf8_min_code+0x1d0>
quickjs-nuttx/quickjs-libc.c:3437
    if (!is_main_thread(rt))
    8005439c:	ec01                	bnez	s0,800543b4 <js_worker_ctor+0x46>
quickjs-nuttx/quickjs-libc.c:3442
    basename_atom = JS_GetScriptOrModuleName(ctx, 1);
    8005439e:	4585                	li	a1,1
    800543a0:	8526                	mv	a0,s1
    800543a2:	ac1ba0ef          	jal	ra,8000ee62 <JS_GetScriptOrModuleName>
    800543a6:	0005059b          	sext.w	a1,a0
quickjs-nuttx/quickjs-libc.c:3443
    if (basename_atom == JS_ATOM_NULL) {
    800543aa:	e185                	bnez	a1,800543ca <js_worker_ctor+0x5c>
quickjs-nuttx/quickjs-libc.c:3444
        return JS_ThrowTypeError(ctx, "could not determine calling script or module name");
    800543ac:	0002b597          	auipc	a1,0x2b
    800543b0:	9d458593          	addi	a1,a1,-1580 # 8007ed80 <utf8_min_code+0x1f8>
quickjs-nuttx/quickjs-libc.c:3502
}
    800543b4:	644a                	ld	s0,144(sp)
    800543b6:	60ea                	ld	ra,152(sp)
    800543b8:	690a                	ld	s2,128(sp)
    800543ba:	79e6                	ld	s3,120(sp)
    800543bc:	7a46                	ld	s4,112(sp)
    800543be:	7aa6                	ld	s5,104(sp)
quickjs-nuttx/quickjs-libc.c:3444
        return JS_ThrowTypeError(ctx, "could not determine calling script or module name");
    800543c0:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:3502
}
    800543c2:	64aa                	ld	s1,136(sp)
    800543c4:	610d                	addi	sp,sp,160
quickjs-nuttx/quickjs-libc.c:3444
        return JS_ThrowTypeError(ctx, "could not determine calling script or module name");
    800543c6:	aa6c406f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:3446
    basename = JS_AtomToCString(ctx, basename_atom);
    800543ca:	8526                	mv	a0,s1
    800543cc:	e42e                	sd	a1,8(sp)
    800543ce:	b72d10ef          	jal	ra,80025740 <JS_AtomToCString>
quickjs-nuttx/quickjs-libc.c:3447
    JS_FreeAtom(ctx, basename_atom);
    800543d2:	65a2                	ld	a1,8(sp)
quickjs-nuttx/quickjs-libc.c:3446
    basename = JS_AtomToCString(ctx, basename_atom);
    800543d4:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs-libc.c:3447
    JS_FreeAtom(ctx, basename_atom);
    800543d6:	8526                	mv	a0,s1
    800543d8:	d71b60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs-libc.c:3448
    if (!basename)
    800543dc:	000a1563          	bnez	s4,800543e6 <js_worker_ctor+0x78>
quickjs-nuttx/quickjs-libc.c:3432
    const char *filename = NULL, *basename;
    800543e0:	4981                	li	s3,0
quickjs-nuttx/quickjs-libc.c:3430
    JSValue obj = JS_UNDEFINED;
    800543e2:	490d                	li	s2,3
    800543e4:	a07d                	j	80054492 <js_worker_ctor+0x124>
quickjs-nuttx/quickjs-libc.c:3452
    filename = JS_ToCString(ctx, argv[0]);
    800543e6:	00093583          	ld	a1,0(s2)
    800543ea:	00893603          	ld	a2,8(s2)
    800543ee:	8526                	mv	a0,s1
    800543f0:	d05fd0ef          	jal	ra,800520f4 <JS_ToCString>
    800543f4:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:3453
    if (!filename)
    800543f6:	d56d                	beqz	a0,800543e0 <js_worker_ctor+0x72>
quickjs-nuttx/quickjs-libc.c:3456
    args = malloc(sizeof(*args));
    800543f8:	02000513          	li	a0,32
    800543fc:	0c70b0ef          	jal	ra,8005fcc2 <malloc>
    80054400:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3457
    if (!args)
    80054402:	0e050f63          	beqz	a0,80054500 <js_worker_ctor+0x192>
quickjs-nuttx/quickjs-libc.c:3459
    memset(args, 0, sizeof(*args));
    80054406:	00053023          	sd	zero,0(a0)
    8005440a:	00053423          	sd	zero,8(a0)
    8005440e:	00053823          	sd	zero,16(a0)
    80054412:	00053c23          	sd	zero,24(a0)
quickjs-nuttx/quickjs-libc.c:3460
    args->filename = strdup(filename);
    80054416:	854e                	mv	a0,s3
    80054418:	6e80f0ef          	jal	ra,80063b00 <strdup>
    8005441c:	e008                	sd	a0,0(s0)
quickjs-nuttx/quickjs-libc.c:3461
    args->basename = strdup(basename);
    8005441e:	8552                	mv	a0,s4
    80054420:	6e00f0ef          	jal	ra,80063b00 <strdup>
    80054424:	e408                	sd	a0,8(s0)
quickjs-nuttx/quickjs-libc.c:3464
    args->recv_pipe = js_new_message_pipe();
    80054426:	cb0ff0ef          	jal	ra,800538d6 <js_new_message_pipe>
    8005442a:	e808                	sd	a0,16(s0)
quickjs-nuttx/quickjs-libc.c:3465
    if (!args->recv_pipe)
    8005442c:	0c050a63          	beqz	a0,80054500 <js_worker_ctor+0x192>
quickjs-nuttx/quickjs-libc.c:3467
    args->send_pipe = js_new_message_pipe();
    80054430:	ca6ff0ef          	jal	ra,800538d6 <js_new_message_pipe>
    80054434:	ec08                	sd	a0,24(s0)
    80054436:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs-libc.c:3468
    if (!args->send_pipe)
    80054438:	0c050463          	beqz	a0,80054500 <js_worker_ctor+0x192>
quickjs-nuttx/quickjs-libc.c:3471
    obj = js_worker_ctor_internal(ctx, new_target,
    8005443c:	6818                	ld	a4,16(s0)
    8005443e:	65c2                	ld	a1,16(sp)
    80054440:	6662                	ld	a2,24(sp)
    80054442:	8526                	mv	a0,s1
    80054444:	e54ff0ef          	jal	ra,80053a98 <js_worker_ctor_internal>
    80054448:	f42a                	sd	a0,40(sp)
    8005444a:	f82e                	sd	a1,48(sp)
quickjs-nuttx/quickjs-libc.c:3473
    if (JS_IsException(obj))
    8005444c:	0005871b          	sext.w	a4,a1
    80054450:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:3471
    obj = js_worker_ctor_internal(ctx, new_target,
    80054452:	892e                	mv	s2,a1
quickjs-nuttx/quickjs-libc.c:3473
    if (JS_IsException(obj))
    80054454:	02f70f63          	beq	a4,a5,80054492 <js_worker_ctor+0x124>
quickjs-nuttx/quickjs-libc.c:3476
    pthread_attr_init(&attr);
    80054458:	00a8                	addi	a0,sp,72
    8005445a:	1a10c0ef          	jal	ra,80060dfa <pthread_attr_init>
quickjs-nuttx/quickjs-libc.c:3478
    pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
    8005445e:	4585                	li	a1,1
    80054460:	00a8                	addi	a0,sp,72
    80054462:	1d30c0ef          	jal	ra,80060e34 <pthread_attr_setdetachstate>
quickjs-nuttx/quickjs-libc.c:3479
    ret = pthread_create(&tid, &attr, worker_func, args);
    80054466:	86a2                	mv	a3,s0
    80054468:	00002617          	auipc	a2,0x2
    8005446c:	47460613          	addi	a2,a2,1140 # 800568dc <worker_func>
    80054470:	00ac                	addi	a1,sp,72
    80054472:	1048                	addi	a0,sp,36
    80054474:	2850c0ef          	jal	ra,80060ef8 <pthread_create>
    80054478:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs-libc.c:3480
    pthread_attr_destroy(&attr);
    8005447a:	00a8                	addi	a0,sp,72
    8005447c:	19f0c0ef          	jal	ra,80060e1a <pthread_attr_destroy>
quickjs-nuttx/quickjs-libc.c:3481
    if (ret != 0) {
    80054480:	040a8963          	beqz	s5,800544d2 <js_worker_ctor+0x164>
quickjs-nuttx/quickjs-libc.c:3482
        JS_ThrowTypeError(ctx, "could not create worker");
    80054484:	0002b597          	auipc	a1,0x2b
    80054488:	93458593          	addi	a1,a1,-1740 # 8007edb8 <utf8_min_code+0x230>
    8005448c:	8526                	mv	a0,s1
    8005448e:	9dec40ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:3491
    JS_FreeCString(ctx, basename);
    80054492:	85d2                	mv	a1,s4
    80054494:	8526                	mv	a0,s1
    80054496:	ea8b80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3492
    JS_FreeCString(ctx, filename);
    8005449a:	85ce                	mv	a1,s3
    8005449c:	8526                	mv	a0,s1
    8005449e:	ea0b80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3493
    if (args) {
    800544a2:	c005                	beqz	s0,800544c2 <js_worker_ctor+0x154>
quickjs-nuttx/quickjs-libc.c:3494
        free(args->filename);
    800544a4:	6008                	ld	a0,0(s0)
    800544a6:	0110b0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3495
        free(args->basename);
    800544aa:	6408                	ld	a0,8(s0)
    800544ac:	00b0b0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3496
        js_free_message_pipe(args->recv_pipe);
    800544b0:	6808                	ld	a0,16(s0)
    800544b2:	e47ff0ef          	jal	ra,800542f8 <js_free_message_pipe>
quickjs-nuttx/quickjs-libc.c:3497
        js_free_message_pipe(args->send_pipe);
    800544b6:	6c08                	ld	a0,24(s0)
    800544b8:	e41ff0ef          	jal	ra,800542f8 <js_free_message_pipe>
quickjs-nuttx/quickjs-libc.c:3498
        free(args);
    800544bc:	8522                	mv	a0,s0
    800544be:	7f80b0ef          	jal	ra,8005fcb6 <free>
quickjs-nuttx/quickjs-libc.c:3500
    JS_FreeValue(ctx, obj);
    800544c2:	75a2                	ld	a1,40(sp)
    800544c4:	864a                	mv	a2,s2
    800544c6:	8526                	mv	a0,s1
    800544c8:	be5fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3501
    return JS_EXCEPTION;
    800544cc:	4799                	li	a5,6
    800544ce:	fc02                	sd	zero,56(sp)
    800544d0:	a821                	j	800544e8 <js_worker_ctor+0x17a>
quickjs-nuttx/quickjs-libc.c:3485
    JS_FreeCString(ctx, basename);
    800544d2:	85d2                	mv	a1,s4
    800544d4:	8526                	mv	a0,s1
    800544d6:	e68b80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3486
    JS_FreeCString(ctx, filename);
    800544da:	85ce                	mv	a1,s3
    800544dc:	8526                	mv	a0,s1
    800544de:	e60b80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3487
    return obj;
    800544e2:	77a2                	ld	a5,40(sp)
    800544e4:	fc3e                	sd	a5,56(sp)
    800544e6:	77c2                	ld	a5,48(sp)
quickjs-nuttx/quickjs-libc.c:3502
}
    800544e8:	60ea                	ld	ra,152(sp)
    800544ea:	644a                	ld	s0,144(sp)
quickjs-nuttx/quickjs-libc.c:3501
    return JS_EXCEPTION;
    800544ec:	e0be                	sd	a5,64(sp)
quickjs-nuttx/quickjs-libc.c:3502
}
    800544ee:	7562                	ld	a0,56(sp)
    800544f0:	6586                	ld	a1,64(sp)
    800544f2:	64aa                	ld	s1,136(sp)
    800544f4:	690a                	ld	s2,128(sp)
    800544f6:	79e6                	ld	s3,120(sp)
    800544f8:	7a46                	ld	s4,112(sp)
    800544fa:	7aa6                	ld	s5,104(sp)
    800544fc:	610d                	addi	sp,sp,160
    800544fe:	8082                	ret
quickjs-nuttx/quickjs-libc.c:3489
    JS_ThrowOutOfMemory(ctx);
    80054500:	8526                	mv	a0,s1
    80054502:	bd3c50ef          	jal	ra,8001a0d4 <JS_ThrowOutOfMemory>
    80054506:	bdf1                	j	800543e2 <js_worker_ctor+0x74>

0000000080054508 <js_free_port.part.0>:
js_free_port():
quickjs-nuttx/quickjs-libc.c:3315
static void js_free_port(JSRuntime *rt, JSWorkerMessageHandler *port)
    80054508:	1101                	addi	sp,sp,-32
    8005450a:	ec06                	sd	ra,24(sp)
    8005450c:	e822                	sd	s0,16(sp)
    8005450e:	e426                	sd	s1,8(sp)
    80054510:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:3318
        js_free_message_pipe(port->recv_pipe);
    80054512:	6988                	ld	a0,16(a1)
quickjs-nuttx/quickjs-libc.c:3315
static void js_free_port(JSRuntime *rt, JSWorkerMessageHandler *port)
    80054514:	842e                	mv	s0,a1
quickjs-nuttx/quickjs-libc.c:3318
        js_free_message_pipe(port->recv_pipe);
    80054516:	de3ff0ef          	jal	ra,800542f8 <js_free_message_pipe>
quickjs-nuttx/quickjs-libc.c:3319
        JS_FreeValueRT(rt, port->on_message_func);
    8005451a:	6c0c                	ld	a1,24(s0)
    8005451c:	7010                	ld	a2,32(s0)
    8005451e:	8526                	mv	a0,s1
    80054520:	826ff0ef          	jal	ra,80053546 <JS_FreeValueRT>
quickjs-nuttx/quickjs-libc.c:3320
        list_del(&port->link);
    80054524:	8522                	mv	a0,s0
    80054526:	b37fd0ef          	jal	ra,8005205c <list_del>
quickjs-nuttx/quickjs-libc.c:3321
        js_free_rt(rt, port);
    8005452a:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs-libc.c:3323
}
    8005452c:	6442                	ld	s0,16(sp)
    8005452e:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs-libc.c:3321
        js_free_rt(rt, port);
    80054530:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:3323
}
    80054532:	64a2                	ld	s1,8(sp)
    80054534:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs-libc.c:3321
        js_free_rt(rt, port);
    80054536:	caab606f          	j	8000a9e0 <js_free_rt>

000000008005453a <js_os_exec>:
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2901
{
    8005453a:	de010113          	addi	sp,sp,-544
    8005453e:	20113c23          	sd	ra,536(sp)
    80054542:	20813823          	sd	s0,528(sp)
    80054546:	21213023          	sd	s2,512(sp)
    8005454a:	ffce                	sd	s3,504(sp)
    8005454c:	f3da                	sd	s6,480(sp)
    8005454e:	20913423          	sd	s1,520(sp)
    80054552:	fbd2                	sd	s4,496(sp)
    80054554:	f7d6                	sd	s5,488(sp)
    80054556:	efde                	sd	s7,472(sp)
    80054558:	ebe2                	sd	s8,464(sp)
    8005455a:	e7e6                	sd	s9,456(sp)
    8005455c:	e3ea                	sd	s10,448(sp)
    8005455e:	ff6e                	sd	s11,440(sp)
quickjs-nuttx/quickjs-libc.c:2902
    JSValueConst options, args = argv[0];
    80054560:	631c                	ld	a5,0(a4)
quickjs-nuttx/quickjs-libc.c:2901
{
    80054562:	89ba                	mv	s3,a4
    80054564:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2902
    JSValueConst options, args = argv[0];
    80054566:	f0be                	sd	a5,96(sp)
    80054568:	671c                	ld	a5,8(a4)
quickjs-nuttx/quickjs-libc.c:2901
{
    8005456a:	e82e                	sd	a1,16(sp)
    8005456c:	ec32                	sd	a2,24(sp)
    8005456e:	8b36                	mv	s6,a3
quickjs-nuttx/quickjs-libc.c:2902
    JSValueConst options, args = argv[0];
    80054570:	f4be                	sd	a5,104(sp)
quickjs-nuttx/quickjs-libc.c:2905
    char **envp = environ;
    80054572:	16e100ef          	jal	ra,800646e0 <get_environ_ptr>
quickjs-nuttx/quickjs-libc.c:2913
    val = JS_GetPropertyStr(ctx, args, "length");
    80054576:	7586                	ld	a1,96(sp)
    80054578:	7626                	ld	a2,104(sp)
quickjs-nuttx/quickjs-libc.c:2908
    BOOL block_flag = TRUE, use_path = TRUE;
    8005457a:	4785                	li	a5,1
    8005457c:	d23e                	sw	a5,36(sp)
    8005457e:	d43e                	sw	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2905
    char **envp = environ;
    80054580:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2911
    uint32_t uid = -1, gid = -1;
    80054582:	57fd                	li	a5,-1
quickjs-nuttx/quickjs-libc.c:2913
    val = JS_GetPropertyStr(ctx, args, "length");
    80054584:	00019697          	auipc	a3,0x19
    80054588:	ff468693          	addi	a3,a3,-12 # 8006d578 <qjsc_repl+0x7fc8>
    8005458c:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2911
    uint32_t uid = -1, gid = -1;
    8005458e:	d63e                	sw	a5,44(sp)
    80054590:	d83e                	sw	a5,48(sp)
quickjs-nuttx/quickjs-libc.c:2913
    val = JS_GetPropertyStr(ctx, args, "length");
    80054592:	bedca0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80054596:	f8aa                	sd	a0,112(sp)
    80054598:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs-libc.c:2914
    if (JS_IsException(val))
    8005459a:	0005871b          	sext.w	a4,a1
    8005459e:	4799                	li	a5,6
    800545a0:	02f71b63          	bne	a4,a5,800545d6 <js_os_exec+0x9c>
quickjs-nuttx/quickjs-libc.c:2915
        return JS_EXCEPTION;
    800545a4:	4799                	li	a5,6
    800545a6:	e902                	sd	zero,144(sp)
    800545a8:	ed3e                	sd	a5,152(sp)
quickjs-nuttx/quickjs-libc.c:3094 (discriminator 1)
}
    800545aa:	21813083          	ld	ra,536(sp)
    800545ae:	21013403          	ld	s0,528(sp)
    800545b2:	654a                	ld	a0,144(sp)
    800545b4:	65ea                	ld	a1,152(sp)
    800545b6:	20813483          	ld	s1,520(sp)
    800545ba:	20013903          	ld	s2,512(sp)
    800545be:	79fe                	ld	s3,504(sp)
    800545c0:	7a5e                	ld	s4,496(sp)
    800545c2:	7abe                	ld	s5,488(sp)
    800545c4:	7b1e                	ld	s6,480(sp)
    800545c6:	6bfe                	ld	s7,472(sp)
    800545c8:	6c5e                	ld	s8,464(sp)
    800545ca:	6cbe                	ld	s9,456(sp)
    800545cc:	6d1e                	ld	s10,448(sp)
    800545ce:	7dfa                	ld	s11,440(sp)
    800545d0:	22010113          	addi	sp,sp,544
    800545d4:	8082                	ret
    800545d6:	862a                	mv	a2,a0
    800545d8:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs-libc.c:2916
    ret = JS_ToUint32(ctx, &exec_argc, val);
    800545da:	f92a                	sd	a0,176(sp)
    800545dc:	fd2e                	sd	a1,184(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    800545de:	8522                	mv	a0,s0
    800545e0:	100c                	addi	a1,sp,32
    800545e2:	dd9cd0ef          	jal	ra,800223ba <JS_ToInt32>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2917
    JS_FreeValue(ctx, val);
    800545e6:	75c6                	ld	a1,112(sp)
    800545e8:	7666                	ld	a2,120(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    800545ea:	84aa                	mv	s1,a0
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2917
    800545ec:	8522                	mv	a0,s0
    800545ee:	abffd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2918
    if (ret)
    800545f2:	f8cd                	bnez	s1,800545a4 <js_os_exec+0x6a>
quickjs-nuttx/quickjs-libc.c:2921
    if (exec_argc < 1 || exec_argc > 65535) {
    800545f4:	5582                	lw	a1,32(sp)
    800545f6:	67c1                	lui	a5,0x10
    800545f8:	17f9                	addi	a5,a5,-2
    800545fa:	fff5871b          	addiw	a4,a1,-1
    800545fe:	00e7fc63          	bgeu	a5,a4,80054616 <js_os_exec+0xdc>
quickjs-nuttx/quickjs-libc.c:2922
        return JS_ThrowTypeError(ctx, "invalid number of arguments");
    80054602:	0002a597          	auipc	a1,0x2a
    80054606:	7de58593          	addi	a1,a1,2014 # 8007ede0 <utf8_min_code+0x258>
    8005460a:	8522                	mv	a0,s0
    8005460c:	860c40ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80054610:	e92a                	sd	a0,144(sp)
    80054612:	ed2e                	sd	a1,152(sp)
    80054614:	bf59                	j	800545aa <js_os_exec+0x70>
quickjs-nuttx/quickjs-libc.c:2924
    exec_argv = js_mallocz(ctx, sizeof(exec_argv[0]) * (exec_argc + 1));
    80054616:	2585                	addiw	a1,a1,1
    80054618:	02059793          	slli	a5,a1,0x20
    8005461c:	01d7d593          	srli	a1,a5,0x1d
    80054620:	8522                	mv	a0,s0
    80054622:	b17c60ef          	jal	ra,8001b138 <js_mallocz>
    80054626:	8a2a                	mv	s4,a0
quickjs-nuttx/quickjs-libc.c:2925
    if (!exec_argv)
    80054628:	dd35                	beqz	a0,800545a4 <js_os_exec+0x6a>
quickjs-nuttx/quickjs-libc.c:2927
    for(i = 0; i < exec_argc; i++) {
    8005462a:	4a81                	li	s5,0
quickjs-nuttx/quickjs-libc.c:2929
        if (JS_IsException(val))
    8005462c:	4b99                	li	s7,6
quickjs-nuttx/quickjs-libc.c:2927 (discriminator 1)
    for(i = 0; i < exec_argc; i++) {
    8005462e:	5782                	lw	a5,32(sp)
    80054630:	08faee63          	bltu	s5,a5,800546cc <js_os_exec+0x192>
quickjs-nuttx/quickjs-libc.c:2937
    exec_argv[exec_argc] = NULL;
    80054634:	02079713          	slli	a4,a5,0x20
    80054638:	01d75793          	srli	a5,a4,0x1d
    8005463c:	97d2                	add	a5,a5,s4
    8005463e:	0007b023          	sd	zero,0(a5) # 10000 <asinh-0x7fff0000>
quickjs-nuttx/quickjs-libc.c:2940
        std_fds[i] = i;
    80054642:	4785                	li	a5,1
    80054644:	02079713          	slli	a4,a5,0x20
    80054648:	e0ba                	sd	a4,64(sp)
    8005464a:	4709                	li	a4,2
    8005464c:	c4ba                	sw	a4,72(sp)
quickjs-nuttx/quickjs-libc.c:2943
    if (argc >= 2) {
    8005464e:	3b67d563          	bge	a5,s6,800549f8 <js_os_exec+0x4be>
quickjs-nuttx/quickjs-libc.c:2944
        options = argv[1];
    80054652:	0109b603          	ld	a2,16(s3)
    80054656:	0189b683          	ld	a3,24(s3)
quickjs-nuttx/quickjs-libc.c:2946
        if (get_bool_option(ctx, &block_flag, options, "block"))
    8005465a:	0002a717          	auipc	a4,0x2a
    8005465e:	7a670713          	addi	a4,a4,1958 # 8007ee00 <utf8_min_code+0x278>
    80054662:	104c                	addi	a1,sp,36
    80054664:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2944
        options = argv[1];
    80054666:	e8b2                	sd	a2,80(sp)
    80054668:	ecb6                	sd	a3,88(sp)
quickjs-nuttx/quickjs-libc.c:2946
        if (get_bool_option(ctx, &block_flag, options, "block"))
    8005466a:	b86fe0ef          	jal	ra,800529f0 <get_bool_option>
    8005466e:	58051163          	bnez	a0,80054bf0 <js_os_exec+0x6b6>
quickjs-nuttx/quickjs-libc.c:2948
        if (get_bool_option(ctx, &use_path, options, "usePath"))
    80054672:	6646                	ld	a2,80(sp)
    80054674:	66e6                	ld	a3,88(sp)
    80054676:	0002a717          	auipc	a4,0x2a
    8005467a:	79270713          	addi	a4,a4,1938 # 8007ee08 <utf8_min_code+0x280>
    8005467e:	102c                	addi	a1,sp,40
    80054680:	8522                	mv	a0,s0
    80054682:	b6efe0ef          	jal	ra,800529f0 <get_bool_option>
    80054686:	56051563          	bnez	a0,80054bf0 <js_os_exec+0x6b6>
quickjs-nuttx/quickjs-libc.c:2951
        val = JS_GetPropertyStr(ctx, options, "file");
    8005468a:	6666                	ld	a2,88(sp)
    8005468c:	65c6                	ld	a1,80(sp)
    8005468e:	0003f697          	auipc	a3,0x3f
    80054692:	98a68693          	addi	a3,a3,-1654 # 80093018 <g_dtoa_scale_up+0xee0>
    80054696:	8522                	mv	a0,s0
    80054698:	ae7ca0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    8005469c:	f8aa                	sd	a0,112(sp)
    8005469e:	fcae                	sd	a1,120(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    return js_unlikely(JS_VALUE_GET_TAG(v) == JS_TAG_EXCEPTION);
    800546a0:	0005879b          	sext.w	a5,a1
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2952
        if (JS_IsException(val))
    800546a4:	4719                	li	a4,6
quickjs-nuttx/quickjs-libc.c:2951
        val = JS_GetPropertyStr(ctx, options, "file");
    800546a6:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:2952
        if (JS_IsException(val))
    800546a8:	54e78463          	beq	a5,a4,80054bf0 <js_os_exec+0x6b6>
quickjs-nuttx/quickjs-libc.c:2954
        if (!JS_IsUndefined(val)) {
    800546ac:	470d                	li	a4,3
    800546ae:	04e78f63          	beq	a5,a4,8005470c <js_os_exec+0x1d2>
quickjs-nuttx/quickjs-libc.c:2955
            file = JS_ToCString(ctx, val);
    800546b2:	85aa                	mv	a1,a0
    800546b4:	8522                	mv	a0,s0
    800546b6:	a3ffd0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2956
            JS_FreeValue(ctx, val);
    800546ba:	75c6                	ld	a1,112(sp)
    800546bc:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs-libc.c:2955
            file = JS_ToCString(ctx, val);
    800546be:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2956
            JS_FreeValue(ctx, val);
    800546c0:	8522                	mv	a0,s0
    800546c2:	9ebfd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2957
            if (!file)
    800546c6:	e4a1                	bnez	s1,8005470e <js_os_exec+0x1d4>
quickjs-nuttx/quickjs-libc.c:2904
    const char **exec_argv, *file = NULL, *str, *cwd = NULL;
    800546c8:	4981                	li	s3,0
    800546ca:	a26d                	j	80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2928
        val = JS_GetPropertyUint32(ctx, args, i);
    800546cc:	7626                	ld	a2,104(sp)
    800546ce:	7586                	ld	a1,96(sp)
    800546d0:	86d6                	mv	a3,s5
    800546d2:	8522                	mv	a0,s0
    800546d4:	a65c20ef          	jal	ra,80017138 <JS_GetPropertyUint32>
    800546d8:	f8aa                	sd	a0,112(sp)
    800546da:	fcae                	sd	a1,120(sp)
quickjs-nuttx/quickjs-libc.c:2929
        if (JS_IsException(val))
    800546dc:	0005879b          	sext.w	a5,a1
quickjs-nuttx/quickjs-libc.c:2928
        val = JS_GetPropertyUint32(ctx, args, i);
    800546e0:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:2929
        if (JS_IsException(val))
    800546e2:	51778763          	beq	a5,s7,80054bf0 <js_os_exec+0x6b6>
quickjs-nuttx/quickjs-libc.c:2931
        str = JS_ToCString(ctx, val);
    800546e6:	85aa                	mv	a1,a0
    800546e8:	8522                	mv	a0,s0
    800546ea:	a0bfd0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2932
        JS_FreeValue(ctx, val);
    800546ee:	75c6                	ld	a1,112(sp)
    800546f0:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs-libc.c:2931
        str = JS_ToCString(ctx, val);
    800546f2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2932
        JS_FreeValue(ctx, val);
    800546f4:	8522                	mv	a0,s0
    800546f6:	9b7fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2933
        if (!str)
    800546fa:	d4f9                	beqz	s1,800546c8 <js_os_exec+0x18e>
quickjs-nuttx/quickjs-libc.c:2935 (discriminator 2)
        exec_argv[i] = str;
    800546fc:	020a9713          	slli	a4,s5,0x20
    80054700:	01d75793          	srli	a5,a4,0x1d
    80054704:	97d2                	add	a5,a5,s4
    80054706:	e384                	sd	s1,0(a5)
quickjs-nuttx/quickjs-libc.c:2927 (discriminator 2)
    for(i = 0; i < exec_argc; i++) {
    80054708:	2a85                	addiw	s5,s5,1
    8005470a:	b715                	j	8005462e <js_os_exec+0xf4>
quickjs-nuttx/quickjs-libc.c:2904
    const char **exec_argv, *file = NULL, *str, *cwd = NULL;
    8005470c:	4481                	li	s1,0
quickjs-nuttx/quickjs-libc.c:2961
        val = JS_GetPropertyStr(ctx, options, "cwd");
    8005470e:	6666                	ld	a2,88(sp)
    80054710:	65c6                	ld	a1,80(sp)
    80054712:	0002a697          	auipc	a3,0x2a
    80054716:	6fe68693          	addi	a3,a3,1790 # 8007ee10 <utf8_min_code+0x288>
    8005471a:	8522                	mv	a0,s0
    8005471c:	a63ca0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80054720:	f8aa                	sd	a0,112(sp)
    80054722:	fcae                	sd	a1,120(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80054724:	0005879b          	sext.w	a5,a1
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2962
        if (JS_IsException(val))
    80054728:	4719                	li	a4,6
quickjs-nuttx/quickjs-libc.c:2961
        val = JS_GetPropertyStr(ctx, options, "cwd");
    8005472a:	862e                	mv	a2,a1
quickjs-nuttx/quickjs-libc.c:2962
        if (JS_IsException(val))
    8005472c:	f8e78ee3          	beq	a5,a4,800546c8 <js_os_exec+0x18e>
quickjs-nuttx/quickjs-libc.c:2964
        if (!JS_IsUndefined(val)) {
    80054730:	470d                	li	a4,3
quickjs-nuttx/quickjs-libc.c:2904
    const char **exec_argv, *file = NULL, *str, *cwd = NULL;
    80054732:	4981                	li	s3,0
quickjs-nuttx/quickjs-libc.c:2964
        if (!JS_IsUndefined(val)) {
    80054734:	00e78e63          	beq	a5,a4,80054750 <js_os_exec+0x216>
quickjs-nuttx/quickjs-libc.c:2965
            cwd = JS_ToCString(ctx, val);
    80054738:	85aa                	mv	a1,a0
    8005473a:	8522                	mv	a0,s0
    8005473c:	9b9fd0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2966
            JS_FreeValue(ctx, val);
    80054740:	75c6                	ld	a1,112(sp)
    80054742:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs-libc.c:2965
            cwd = JS_ToCString(ctx, val);
    80054744:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:2966
            JS_FreeValue(ctx, val);
    80054746:	8522                	mv	a0,s0
    80054748:	965fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2967
            if (!cwd)
    8005474c:	12098463          	beqz	s3,80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2972
        for(i = 0; i < 3; i++) {
    80054750:	0002ca97          	auipc	s5,0x2c
    80054754:	e58a8a93          	addi	s5,s5,-424 # 800805a8 <std_name.0>
    80054758:	04010c93          	addi	s9,sp,64
    8005475c:	0002cb17          	auipc	s6,0x2c
    80054760:	e64b0b13          	addi	s6,s6,-412 # 800805c0 <std_name.0+0x18>
quickjs-nuttx/quickjs-libc.c:2974
            if (JS_IsException(val))
    80054764:	4b99                	li	s7,6
quickjs-nuttx/quickjs-libc.c:2976
            if (!JS_IsUndefined(val)) {
    80054766:	4c0d                	li	s8,3
quickjs-nuttx/quickjs-libc.c:2973
            val = JS_GetPropertyStr(ctx, options, std_name[i]);
    80054768:	000ab683          	ld	a3,0(s5)
    8005476c:	6666                	ld	a2,88(sp)
    8005476e:	65c6                	ld	a1,80(sp)
    80054770:	8522                	mv	a0,s0
    80054772:	a0dca0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80054776:	f8aa                	sd	a0,112(sp)
    80054778:	fcae                	sd	a1,120(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8005477a:	0005879b          	sext.w	a5,a1
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2973
    8005477e:	862a                	mv	a2,a0
    80054780:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs-libc.c:2974
            if (JS_IsException(val))
    80054782:	0f778963          	beq	a5,s7,80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2976
            if (!JS_IsUndefined(val)) {
    80054786:	03878163          	beq	a5,s8,800547a8 <js_os_exec+0x26e>
quickjs-nuttx/quickjs-libc.c:2978
                ret = JS_ToInt32(ctx, &fd, val);
    8005478a:	190c                	addi	a1,sp,176
    8005478c:	8522                	mv	a0,s0
    8005478e:	c2dcd0ef          	jal	ra,800223ba <JS_ToInt32>
quickjs-nuttx/quickjs-libc.c:2979
                JS_FreeValue(ctx, val);
    80054792:	75c6                	ld	a1,112(sp)
    80054794:	7666                	ld	a2,120(sp)
quickjs-nuttx/quickjs-libc.c:2978
                ret = JS_ToInt32(ctx, &fd, val);
    80054796:	8d2a                	mv	s10,a0
quickjs-nuttx/quickjs-libc.c:2979
                JS_FreeValue(ctx, val);
    80054798:	8522                	mv	a0,s0
    8005479a:	913fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2980
                if (ret)
    8005479e:	0c0d1b63          	bnez	s10,80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2982
                std_fds[i] = fd;
    800547a2:	57ca                	lw	a5,176(sp)
    800547a4:	00fca023          	sw	a5,0(s9)
quickjs-nuttx/quickjs-libc.c:2972 (discriminator 2)
        for(i = 0; i < 3; i++) {
    800547a8:	0aa1                	addi	s5,s5,8
    800547aa:	0c91                	addi	s9,s9,4
    800547ac:	fb5b1ee3          	bne	s6,s5,80054768 <js_os_exec+0x22e>
quickjs-nuttx/quickjs-libc.c:2986
        val = JS_GetPropertyStr(ctx, options, "env");
    800547b0:	65c6                	ld	a1,80(sp)
    800547b2:	6666                	ld	a2,88(sp)
    800547b4:	0002a697          	auipc	a3,0x2a
    800547b8:	66468693          	addi	a3,a3,1636 # 8007ee18 <utf8_min_code+0x290>
    800547bc:	8522                	mv	a0,s0
    800547be:	9c1ca0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    800547c2:	f8aa                	sd	a0,112(sp)
    800547c4:	fcae                	sd	a1,120(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    800547c6:	0005879b          	sext.w	a5,a1
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2987
        if (JS_IsException(val))
    800547ca:	4719                	li	a4,6
quickjs-nuttx/quickjs-libc.c:2986
        val = JS_GetPropertyStr(ctx, options, "env");
    800547cc:	86aa                	mv	a3,a0
    800547ce:	8aae                	mv	s5,a1
quickjs-nuttx/quickjs-libc.c:2987
        if (JS_IsException(val))
    800547d0:	0ae78263          	beq	a5,a4,80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2989
        if (!JS_IsUndefined(val)) {
    800547d4:	470d                	li	a4,3
    800547d6:	04e78863          	beq	a5,a4,80054826 <js_os_exec+0x2ec>
quickjs-nuttx/quickjs-libc.c:2990
            envp = build_envp(ctx, val);
    800547da:	e12a                	sd	a0,128(sp)
    800547dc:	e52e                	sd	a1,136(sp)
build_envp():
quickjs-nuttx/quickjs-libc.c:2792
    if (JS_GetOwnPropertyNames(ctx, &tab, &len, obj,
    800547de:	872e                	mv	a4,a1
    800547e0:	47c5                	li	a5,17
    800547e2:	1850                	addi	a2,sp,52
    800547e4:	182c                	addi	a1,sp,56
    800547e6:	8522                	mv	a0,s0
    800547e8:	cd3e30ef          	jal	ra,800384ba <JS_GetOwnPropertyNames>
quickjs-nuttx/quickjs-libc.c:2794
        return NULL;
    800547ec:	4901                	li	s2,0
quickjs-nuttx/quickjs-libc.c:2792
    if (JS_GetOwnPropertyNames(ctx, &tab, &len, obj,
    800547ee:	02054563          	bltz	a0,80054818 <js_os_exec+0x2de>
quickjs-nuttx/quickjs-libc.c:2795
    envp = js_mallocz(ctx, sizeof(envp[0]) * ((size_t)len + 1));
    800547f2:	03416583          	lwu	a1,52(sp)
    800547f6:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2798
    for(i = 0; i < len; i++) {
    800547f8:	4c01                	li	s8,0
quickjs-nuttx/quickjs-libc.c:2795
    envp = js_mallocz(ctx, sizeof(envp[0]) * ((size_t)len + 1));
    800547fa:	0585                	addi	a1,a1,1
    800547fc:	058e                	slli	a1,a1,0x3
    800547fe:	93bc60ef          	jal	ra,8001b138 <js_mallocz>
    80054802:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2796
    if (!envp)
    80054804:	0e051563          	bnez	a0,800548ee <js_os_exec+0x3b4>
quickjs-nuttx/quickjs-libc.c:2828
    for(i = 0; i < len; i++)
    80054808:	4a81                	li	s5,0
    8005480a:	57d2                	lw	a5,52(sp)
quickjs-nuttx/quickjs-libc.c:2829
        JS_FreeAtom(ctx, tab[i].atom);
    8005480c:	75e2                	ld	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:2828
    for(i = 0; i < len; i++)
    8005480e:	16fae263          	bltu	s5,a5,80054972 <js_os_exec+0x438>
quickjs-nuttx/quickjs-libc.c:2830
    js_free(ctx, tab);
    80054812:	8522                	mv	a0,s0
    80054814:	fe2b60ef          	jal	ra,8000aff6 <js_free>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2991
            JS_FreeValue(ctx, val);
    80054818:	75c6                	ld	a1,112(sp)
    8005481a:	7666                	ld	a2,120(sp)
    8005481c:	8522                	mv	a0,s0
    8005481e:	88ffd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2992
            if (!envp)
    80054822:	04090963          	beqz	s2,80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2996
        val = JS_GetPropertyStr(ctx, options, "uid");
    80054826:	6666                	ld	a2,88(sp)
    80054828:	65c6                	ld	a1,80(sp)
    8005482a:	0002a697          	auipc	a3,0x2a
    8005482e:	5f668693          	addi	a3,a3,1526 # 8007ee20 <utf8_min_code+0x298>
    80054832:	8522                	mv	a0,s0
    80054834:	94bca0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80054838:	f8aa                	sd	a0,112(sp)
    8005483a:	fcae                	sd	a1,120(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    8005483c:	0005879b          	sext.w	a5,a1
js_os_exec():
quickjs-nuttx/quickjs-libc.c:2997
        if (JS_IsException(val))
    80054840:	4719                	li	a4,6
quickjs-nuttx/quickjs-libc.c:2996
        val = JS_GetPropertyStr(ctx, options, "uid");
    80054842:	862a                	mv	a2,a0
    80054844:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs-libc.c:2997
        if (JS_IsException(val))
    80054846:	02e78763          	beq	a5,a4,80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2999
        if (!JS_IsUndefined(val)) {
    8005484a:	470d                	li	a4,3
    8005484c:	14e79963          	bne	a5,a4,8005499e <js_os_exec+0x464>
quickjs-nuttx/quickjs-libc.c:3006
        val = JS_GetPropertyStr(ctx, options, "gid");
    80054850:	6666                	ld	a2,88(sp)
    80054852:	65c6                	ld	a1,80(sp)
    80054854:	0002a697          	auipc	a3,0x2a
    80054858:	5d468693          	addi	a3,a3,1492 # 8007ee28 <utf8_min_code+0x2a0>
    8005485c:	8522                	mv	a0,s0
    8005485e:	921ca0ef          	jal	ra,8001f17e <JS_GetPropertyStr>
    80054862:	f8aa                	sd	a0,112(sp)
    80054864:	fcae                	sd	a1,120(sp)
JS_IsException():
quickjs-nuttx/quickjs.h:610
    80054866:	0005879b          	sext.w	a5,a1
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3007
        if (JS_IsException(val))
    8005486a:	4719                	li	a4,6
quickjs-nuttx/quickjs-libc.c:3006
        val = JS_GetPropertyStr(ctx, options, "gid");
    8005486c:	862a                	mv	a2,a0
    8005486e:	86ae                	mv	a3,a1
quickjs-nuttx/quickjs-libc.c:3007
        if (JS_IsException(val))
    80054870:	14e79663          	bne	a5,a4,800549bc <js_os_exec+0x482>
quickjs-nuttx/quickjs-libc.c:3092
    ret_val = JS_EXCEPTION;
    80054874:	e102                	sd	zero,128(sp)
    80054876:	e502                	sd	zero,136(sp)
    80054878:	4a81                	li	s5,0
    8005487a:	4b19                	li	s6,6
quickjs-nuttx/quickjs-libc.c:3093
    goto done;
    8005487c:	ae11                	j	80054b90 <js_os_exec+0x656>
build_envp():
quickjs-nuttx/quickjs-libc.c:2811
        key_len = strlen(key);
    8005487e:	5040f0ef          	jal	ra,80063d82 <strlen>
    80054882:	8caa                	mv	s9,a0
quickjs-nuttx/quickjs-libc.c:2812
        str_len = strlen(str);
    80054884:	855a                	mv	a0,s6
    80054886:	4fc0f0ef          	jal	ra,80063d82 <strlen>
quickjs-nuttx/quickjs-libc.c:2813
        pair = js_malloc(ctx, key_len + str_len + 2);
    8005488a:	00ac87b3          	add	a5,s9,a0
quickjs-nuttx/quickjs-libc.c:2812
        str_len = strlen(str);
    8005488e:	e42a                	sd	a0,8(sp)
quickjs-nuttx/quickjs-libc.c:2813
        pair = js_malloc(ctx, key_len + str_len + 2);
    80054890:	00278593          	addi	a1,a5,2
    80054894:	8522                	mv	a0,s0
    80054896:	e03e                	sd	a5,0(sp)
    80054898:	86dc50ef          	jal	ra,8001a104 <js_malloc>
    8005489c:	8d2a                	mv	s10,a0
quickjs-nuttx/quickjs-libc.c:2814
        if (!pair) {
    8005489e:	e511                	bnez	a0,800548aa <js_os_exec+0x370>
quickjs-nuttx/quickjs-libc.c:2815
            JS_FreeCString(ctx, key);
    800548a0:	85ee                	mv	a1,s11
    800548a2:	8522                	mv	a0,s0
    800548a4:	a9ab80ef          	jal	ra,8000cb3e <JS_FreeCString>
    800548a8:	a07d                	j	80054956 <js_os_exec+0x41c>
quickjs-nuttx/quickjs-libc.c:2819
        memcpy(pair, key, key_len);
    800548aa:	8666                	mv	a2,s9
    800548ac:	85ee                	mv	a1,s11
    800548ae:	4fe0f0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs-libc.c:2821
        memcpy(pair + key_len + 1, str, str_len);
    800548b2:	6622                	ld	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:2820
        pair[key_len] = '=';
    800548b4:	019d06b3          	add	a3,s10,s9
    800548b8:	03d00793          	li	a5,61
quickjs-nuttx/quickjs-libc.c:2821
        memcpy(pair + key_len + 1, str, str_len);
    800548bc:	001c8513          	addi	a0,s9,1
quickjs-nuttx/quickjs-libc.c:2820
        pair[key_len] = '=';
    800548c0:	00f68023          	sb	a5,0(a3)
quickjs-nuttx/quickjs-libc.c:2821
        memcpy(pair + key_len + 1, str, str_len);
    800548c4:	85da                	mv	a1,s6
    800548c6:	956a                	add	a0,a0,s10
    800548c8:	4e40f0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs-libc.c:2822
        pair[key_len + 1 + str_len] = '\0';
    800548cc:	6782                	ld	a5,0(sp)
quickjs-nuttx/quickjs-libc.c:2823
        envp[i] = pair;
    800548ce:	9bca                	add	s7,s7,s2
quickjs-nuttx/quickjs-libc.c:2824
        JS_FreeCString(ctx, key);
    800548d0:	85ee                	mv	a1,s11
quickjs-nuttx/quickjs-libc.c:2822
        pair[key_len + 1 + str_len] = '\0';
    800548d2:	00fd0cb3          	add	s9,s10,a5
    800548d6:	000c80a3          	sb	zero,1(s9)
quickjs-nuttx/quickjs-libc.c:2824
        JS_FreeCString(ctx, key);
    800548da:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2823
        envp[i] = pair;
    800548dc:	01abb023          	sd	s10,0(s7)
quickjs-nuttx/quickjs-libc.c:2824
        JS_FreeCString(ctx, key);
    800548e0:	a5eb80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2825
        JS_FreeCString(ctx, str);
    800548e4:	85da                	mv	a1,s6
    800548e6:	8522                	mv	a0,s0
    800548e8:	a56b80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2798
    for(i = 0; i < len; i++) {
    800548ec:	2c05                	addiw	s8,s8,1
    800548ee:	5752                	lw	a4,52(sp)
quickjs-nuttx/quickjs-libc.c:2799
        val = JS_GetProperty(ctx, obj, tab[i].atom);
    800548f0:	77e2                	ld	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:2798
    for(i = 0; i < len; i++) {
    800548f2:	f0ec7be3          	bgeu	s8,a4,80054808 <js_os_exec+0x2ce>
quickjs-nuttx/quickjs-libc.c:2799
        val = JS_GetProperty(ctx, obj, tab[i].atom);
    800548f6:	020c1713          	slli	a4,s8,0x20
    800548fa:	01d75b93          	srli	s7,a4,0x1d
    800548fe:	97de                	add	a5,a5,s7
    80054900:	670a                	ld	a4,128(sp)
    80054902:	43d4                	lw	a3,4(a5)
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    return JS_GetPropertyInternal(ctx, this_obj, prop, this_obj, 0);
    80054904:	8656                	mv	a2,s5
    80054906:	87d6                	mv	a5,s5
    80054908:	85ba                	mv	a1,a4
    8005490a:	4801                	li	a6,0
    8005490c:	8522                	mv	a0,s0
    8005490e:	f93a                	sd	a4,176(sp)
    80054910:	e556                	sd	s5,136(sp)
    80054912:	fd56                	sd	s5,184(sp)
    80054914:	996c20ef          	jal	ra,80016aaa <JS_GetPropertyInternal>
    80054918:	f12a                	sd	a0,160(sp)
    8005491a:	f52e                	sd	a1,168(sp)
    8005491c:	e92a                	sd	a0,144(sp)
    8005491e:	ed2e                	sd	a1,152(sp)
build_envp():
quickjs-nuttx/quickjs-libc.c:2800
        if (JS_IsException(val))
    80054920:	0005879b          	sext.w	a5,a1
    80054924:	4719                	li	a4,6
JS_GetProperty():
quickjs-nuttx/quickjs.h:732
    80054926:	862e                	mv	a2,a1
build_envp():
quickjs-nuttx/quickjs-libc.c:2800
    80054928:	02e78b63          	beq	a5,a4,8005495e <js_os_exec+0x424>
quickjs-nuttx/quickjs-libc.c:2802
        str = JS_ToCString(ctx, val);
    8005492c:	85aa                	mv	a1,a0
    8005492e:	8522                	mv	a0,s0
    80054930:	fc4fd0ef          	jal	ra,800520f4 <JS_ToCString>
quickjs-nuttx/quickjs-libc.c:2803
        JS_FreeValue(ctx, val);
    80054934:	65ca                	ld	a1,144(sp)
    80054936:	666a                	ld	a2,152(sp)
quickjs-nuttx/quickjs-libc.c:2802
        str = JS_ToCString(ctx, val);
    80054938:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs-libc.c:2803
        JS_FreeValue(ctx, val);
    8005493a:	8522                	mv	a0,s0
    8005493c:	f70fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2804
        if (!str)
    80054940:	000b0f63          	beqz	s6,8005495e <js_os_exec+0x424>
quickjs-nuttx/quickjs-libc.c:2806
        key = JS_AtomToCString(ctx, tab[i].atom);
    80054944:	77e2                	ld	a5,56(sp)
    80054946:	8522                	mv	a0,s0
    80054948:	97de                	add	a5,a5,s7
    8005494a:	43cc                	lw	a1,4(a5)
    8005494c:	df5d00ef          	jal	ra,80025740 <JS_AtomToCString>
    80054950:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs-libc.c:2807
        if (!key) {
    80054952:	f20516e3          	bnez	a0,8005487e <js_os_exec+0x344>
quickjs-nuttx/quickjs-libc.c:2816
            JS_FreeCString(ctx, str);
    80054956:	85da                	mv	a1,s6
    80054958:	8522                	mv	a0,s0
    8005495a:	9e4b80ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:2828
    for(i = 0; i < len; i++)
    8005495e:	4a81                	li	s5,0
quickjs-nuttx/quickjs-libc.c:2834
        for(i = 0; i < len; i++)
    80054960:	57d2                	lw	a5,52(sp)
    80054962:	02fae363          	bltu	s5,a5,80054988 <js_os_exec+0x44e>
quickjs-nuttx/quickjs-libc.c:2836
        js_free(ctx, envp);
    80054966:	85ca                	mv	a1,s2
    80054968:	8522                	mv	a0,s0
    8005496a:	e8cb60ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:2837
        envp = NULL;
    8005496e:	4901                	li	s2,0
    80054970:	bd61                	j	80054808 <js_os_exec+0x2ce>
quickjs-nuttx/quickjs-libc.c:2829
        JS_FreeAtom(ctx, tab[i].atom);
    80054972:	020a9713          	slli	a4,s5,0x20
    80054976:	01d75793          	srli	a5,a4,0x1d
    8005497a:	95be                	add	a1,a1,a5
    8005497c:	41cc                	lw	a1,4(a1)
    8005497e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2828
    for(i = 0; i < len; i++)
    80054980:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs-libc.c:2829
        JS_FreeAtom(ctx, tab[i].atom);
    80054982:	fc6b60ef          	jal	ra,8000b148 <JS_FreeAtom>
quickjs-nuttx/quickjs-libc.c:2828
    for(i = 0; i < len; i++)
    80054986:	b551                	j	8005480a <js_os_exec+0x2d0>
quickjs-nuttx/quickjs-libc.c:2835
            js_free(ctx, envp[i]);
    80054988:	020a9713          	slli	a4,s5,0x20
    8005498c:	01d75793          	srli	a5,a4,0x1d
    80054990:	97ca                	add	a5,a5,s2
    80054992:	638c                	ld	a1,0(a5)
    80054994:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2834
        for(i = 0; i < len; i++)
    80054996:	2a85                	addiw	s5,s5,1
quickjs-nuttx/quickjs-libc.c:2835
            js_free(ctx, envp[i]);
    80054998:	e5eb60ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:2834
        for(i = 0; i < len; i++)
    8005499c:	b7d1                	j	80054960 <js_os_exec+0x426>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3000
            ret = JS_ToUint32(ctx, &uid, val);
    8005499e:	f92a                	sd	a0,176(sp)
    800549a0:	fd2e                	sd	a1,184(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    return JS_ToInt32(ctx, (int32_t*)pres, val);
    800549a2:	8522                	mv	a0,s0
    800549a4:	106c                	addi	a1,sp,44
    800549a6:	a15cd0ef          	jal	ra,800223ba <JS_ToInt32>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3001
            JS_FreeValue(ctx, val);
    800549aa:	75c6                	ld	a1,112(sp)
    800549ac:	7666                	ld	a2,120(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    800549ae:	8aaa                	mv	s5,a0
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3001
    800549b0:	8522                	mv	a0,s0
    800549b2:	efafd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3002
            if (ret)
    800549b6:	e80a8de3          	beqz	s5,80054850 <js_os_exec+0x316>
    800549ba:	bd6d                	j	80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:3009
        if (!JS_IsUndefined(val)) {
    800549bc:	470d                	li	a4,3
    800549be:	02e78063          	beq	a5,a4,800549de <js_os_exec+0x4a4>
quickjs-nuttx/quickjs-libc.c:3010
            ret = JS_ToUint32(ctx, &gid, val);
    800549c2:	f92a                	sd	a0,176(sp)
    800549c4:	fd2e                	sd	a1,184(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    800549c6:	8522                	mv	a0,s0
    800549c8:	180c                	addi	a1,sp,48
    800549ca:	9f1cd0ef          	jal	ra,800223ba <JS_ToInt32>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3011
            JS_FreeValue(ctx, val);
    800549ce:	75c6                	ld	a1,112(sp)
    800549d0:	7666                	ld	a2,120(sp)
JS_ToUint32():
quickjs-nuttx/quickjs.h:688
    800549d2:	8aaa                	mv	s5,a0
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3011
    800549d4:	8522                	mv	a0,s0
    800549d6:	ed6fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:3012
            if (ret)
    800549da:	e80a9de3          	bnez	s5,80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:3017
    pid = fork();
    800549de:	0970f0ef          	jal	ra,80064274 <fork>
    800549e2:	8aaa                	mv	s5,a0
quickjs-nuttx/quickjs-libc.c:3018
    if (pid < 0) {
    800549e4:	00055d63          	bgez	a0,800549fe <js_os_exec+0x4c4>
quickjs-nuttx/quickjs-libc.c:3019
        JS_ThrowTypeError(ctx, "fork error");
    800549e8:	8522                	mv	a0,s0
    800549ea:	0002a597          	auipc	a1,0x2a
    800549ee:	44658593          	addi	a1,a1,1094 # 8007ee30 <utf8_min_code+0x2a8>
    800549f2:	c7bc30ef          	jal	ra,8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:3020
        goto exception;
    800549f6:	bdbd                	j	80054874 <js_os_exec+0x33a>
quickjs-nuttx/quickjs-libc.c:2904
    const char **exec_argv, *file = NULL, *str, *cwd = NULL;
    800549f8:	4981                	li	s3,0
    800549fa:	4481                	li	s1,0
    800549fc:	b7cd                	j	800549de <js_os_exec+0x4a4>
quickjs-nuttx/quickjs-libc.c:3022
    if (pid == 0) {
    800549fe:	16051163          	bnez	a0,80054b60 <js_os_exec+0x626>
quickjs-nuttx/quickjs-libc.c:3024
        int fd_max = sysconf(_SC_OPEN_MAX);
    80054a02:	03500513          	li	a0,53
    80054a06:	5f00f0ef          	jal	ra,80063ff6 <sysconf>
    80054a0a:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs-libc.c:3027
        for(i = 0; i < 3; i++) {
    80054a0c:	04010b93          	addi	s7,sp,64
    80054a10:	4401                	li	s0,0
    80054a12:	4c0d                	li	s8,3
quickjs-nuttx/quickjs-libc.c:3028
            if (std_fds[i] != i) {
    80054a14:	000ba503          	lw	a0,0(s7)
    80054a18:	00850b63          	beq	a0,s0,80054a2e <js_os_exec+0x4f4>
quickjs-nuttx/quickjs-libc.c:3029
                if (dup2(std_fds[i], i) < 0)
    80054a1c:	85a2                	mv	a1,s0
    80054a1e:	4670f0ef          	jal	ra,80064684 <dup2>
    80054a22:	00055663          	bgez	a0,80054a2e <js_os_exec+0x4f4>
quickjs-nuttx/quickjs-libc.c:3030
                    _exit(127);
    80054a26:	07f00513          	li	a0,127
    80054a2a:	3f10f0ef          	jal	ra,8006461a <_exit>
quickjs-nuttx/quickjs-libc.c:3027
        for(i = 0; i < 3; i++) {
    80054a2e:	2405                	addiw	s0,s0,1
    80054a30:	0b91                	addi	s7,s7,4
    80054a32:	ff8411e3          	bne	s0,s8,80054a14 <js_os_exec+0x4da>
quickjs-nuttx/quickjs-libc.c:3034
        for(i = 3; i < fd_max; i++)
    80054a36:	2b01                	sext.w	s6,s6
quickjs-nuttx/quickjs-libc.c:3034 (discriminator 1)
    80054a38:	05646863          	bltu	s0,s6,80054a88 <js_os_exec+0x54e>
quickjs-nuttx/quickjs-libc.c:3036
        if (cwd) {
    80054a3c:	00098763          	beqz	s3,80054a4a <js_os_exec+0x510>
quickjs-nuttx/quickjs-libc.c:3037
            if (chdir(cwd) < 0)
    80054a40:	854e                	mv	a0,s3
    80054a42:	7240f0ef          	jal	ra,80064166 <chdir>
    80054a46:	fe0540e3          	bltz	a0,80054a26 <js_os_exec+0x4ec>
quickjs-nuttx/quickjs-libc.c:3040
        if (uid != -1) {
    80054a4a:	5532                	lw	a0,44(sp)
    80054a4c:	57fd                	li	a5,-1
    80054a4e:	00f50663          	beq	a0,a5,80054a5a <js_os_exec+0x520>
quickjs-nuttx/quickjs-libc.c:3041
            if (setuid(uid) < 0)
    80054a52:	6e00f0ef          	jal	ra,80064132 <setuid>
    80054a56:	fc0548e3          	bltz	a0,80054a26 <js_os_exec+0x4ec>
quickjs-nuttx/quickjs-libc.c:3044
        if (gid != -1) {
    80054a5a:	5542                	lw	a0,48(sp)
    80054a5c:	57fd                	li	a5,-1
    80054a5e:	00f50663          	beq	a0,a5,80054a6a <js_os_exec+0x530>
quickjs-nuttx/quickjs-libc.c:3045
            if (setgid(gid) < 0)
    80054a62:	6ea0f0ef          	jal	ra,8006414c <setgid>
    80054a66:	fc0540e3          	bltz	a0,80054a26 <js_os_exec+0x4ec>
quickjs-nuttx/quickjs-libc.c:3049
        if (!file)
    80054a6a:	e099                	bnez	s1,80054a70 <js_os_exec+0x536>
quickjs-nuttx/quickjs-libc.c:3050
            file = exec_argv[0];
    80054a6c:	000a3483          	ld	s1,0(s4)
quickjs-nuttx/quickjs-libc.c:3051
        if (use_path)
    80054a70:	57a2                	lw	a5,40(sp)
    80054a72:	c795                	beqz	a5,80054a9e <js_os_exec+0x564>
my_execvpe():
quickjs-nuttx/quickjs-libc.c:2850
    filename_len = strlen(filename);
    80054a74:	8526                	mv	a0,s1
    80054a76:	30c0f0ef          	jal	ra,80063d82 <strlen>
    80054a7a:	89aa                	mv	s3,a0
quickjs-nuttx/quickjs-libc.c:2851
    if (filename_len == 0) {
    80054a7c:	e919                	bnez	a0,80054a92 <js_os_exec+0x558>
quickjs-nuttx/quickjs-libc.c:2852
        errno = ENOENT;
    80054a7e:	79b0b0ef          	jal	ra,80060a18 <__errno>
    80054a82:	4789                	li	a5,2
quickjs-nuttx/quickjs-libc.c:2894
        errno = EACCES;
    80054a84:	c11c                	sw	a5,0(a0)
    80054a86:	b745                	j	80054a26 <js_os_exec+0x4ec>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3035 (discriminator 3)
            close(i);
    80054a88:	8522                	mv	a0,s0
    80054a8a:	3db0f0ef          	jal	ra,80064664 <close>
quickjs-nuttx/quickjs-libc.c:3034 (discriminator 3)
        for(i = 3; i < fd_max; i++)
    80054a8e:	2405                	addiw	s0,s0,1
    80054a90:	b765                	j	80054a38 <js_os_exec+0x4fe>
my_execvpe():
quickjs-nuttx/quickjs-libc.c:2855
    if (strchr(filename, '/'))
    80054a92:	02f00593          	li	a1,47
    80054a96:	8526                	mv	a0,s1
    80054a98:	2760f0ef          	jal	ra,80063d0e <strchr>
    80054a9c:	c519                	beqz	a0,80054aaa <js_os_exec+0x570>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3054
            ret = execve(file, (char **)exec_argv, envp);
    80054a9e:	864a                	mv	a2,s2
    80054aa0:	85d2                	mv	a1,s4
    80054aa2:	8526                	mv	a0,s1
    80054aa4:	3f50f0ef          	jal	ra,80064698 <execve>
    80054aa8:	bfbd                	j	80054a26 <js_os_exec+0x4ec>
my_execvpe():
quickjs-nuttx/quickjs-libc.c:2858
    path = getenv("PATH");
    80054aaa:	0002a517          	auipc	a0,0x2a
    80054aae:	39650513          	addi	a0,a0,918 # 8007ee40 <utf8_min_code+0x2b8>
    80054ab2:	43b0f0ef          	jal	ra,800646ec <getenv>
    80054ab6:	8daa                	mv	s11,a0
quickjs-nuttx/quickjs-libc.c:2859
    if (!path)
    80054ab8:	e509                	bnez	a0,80054ac2 <js_os_exec+0x588>
quickjs-nuttx/quickjs-libc.c:2860
        path = (char *)"/bin:/usr/bin";
    80054aba:	0002ad97          	auipc	s11,0x2a
    80054abe:	316d8d93          	addi	s11,s11,790 # 8007edd0 <utf8_min_code+0x248>
quickjs-nuttx/quickjs-libc.c:2876
        buf[path_len] = '/';
    80054ac2:	02f00b93          	li	s7,47
quickjs-nuttx/quickjs-libc.c:2882
        switch(errno) {
    80054ac6:	4c35                	li	s8,13
    80054ac8:	4cd1                	li	s9,20
    80054aca:	4d09                	li	s10,2
quickjs-nuttx/quickjs-libc.c:2864
        p1 = strchr(p, ':');
    80054acc:	03a00593          	li	a1,58
    80054ad0:	856e                	mv	a0,s11
    80054ad2:	23c0f0ef          	jal	ra,80063d0e <strchr>
    80054ad6:	8b2a                	mv	s6,a0
quickjs-nuttx/quickjs-libc.c:2865
        if (!p1) {
    80054ad8:	ed2d                	bnez	a0,80054b52 <js_os_exec+0x618>
quickjs-nuttx/quickjs-libc.c:2867
            path_len = strlen(p);
    80054ada:	856e                	mv	a0,s11
    80054adc:	2a60f0ef          	jal	ra,80063d82 <strlen>
    80054ae0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2873
        if ((path_len + 1 + filename_len + 1) > PATH_MAX)
    80054ae2:	00898733          	add	a4,s3,s0
    80054ae6:	00270693          	addi	a3,a4,2
    80054aea:	e03a                	sd	a4,0(sp)
    80054aec:	10000793          	li	a5,256
    80054af0:	04d7e763          	bltu	a5,a3,80054b3e <js_os_exec+0x604>
quickjs-nuttx/quickjs-libc.c:2875
        memcpy(buf, p, path_len);
    80054af4:	8622                	mv	a2,s0
    80054af6:	85ee                	mv	a1,s11
    80054af8:	1908                	addi	a0,sp,176
    80054afa:	2b20f0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs-libc.c:2876
        buf[path_len] = '/';
    80054afe:	1b1c                	addi	a5,sp,432
    80054b00:	008786b3          	add	a3,a5,s0
quickjs-nuttx/quickjs-libc.c:2877
        memcpy(buf + path_len + 1, filename, filename_len);
    80054b04:	191c                	addi	a5,sp,176
    80054b06:	0405                	addi	s0,s0,1
quickjs-nuttx/quickjs-libc.c:2876
        buf[path_len] = '/';
    80054b08:	f1768023          	sb	s7,-256(a3)
quickjs-nuttx/quickjs-libc.c:2877
        memcpy(buf + path_len + 1, filename, filename_len);
    80054b0c:	864e                	mv	a2,s3
    80054b0e:	85a6                	mv	a1,s1
    80054b10:	00878533          	add	a0,a5,s0
    80054b14:	2980f0ef          	jal	ra,80063dac <memcpy>
quickjs-nuttx/quickjs-libc.c:2878
        buf[path_len + 1 + filename_len] = '\0';
    80054b18:	6702                	ld	a4,0(sp)
    80054b1a:	1b1c                	addi	a5,sp,432
quickjs-nuttx/quickjs-libc.c:2880
        execve(buf, argv, envp);
    80054b1c:	864a                	mv	a2,s2
quickjs-nuttx/quickjs-libc.c:2878
        buf[path_len + 1 + filename_len] = '\0';
    80054b1e:	973e                	add	a4,a4,a5
    80054b20:	f00700a3          	sb	zero,-255(a4)
quickjs-nuttx/quickjs-libc.c:2880
        execve(buf, argv, envp);
    80054b24:	85d2                	mv	a1,s4
    80054b26:	1908                	addi	a0,sp,176
    80054b28:	3710f0ef          	jal	ra,80064698 <execve>
quickjs-nuttx/quickjs-libc.c:2882
        switch(errno) {
    80054b2c:	6ed0b0ef          	jal	ra,80060a18 <__errno>
    80054b30:	4118                	lw	a4,0(a0)
    80054b32:	03870563          	beq	a4,s8,80054b5c <js_os_exec+0x622>
    80054b36:	01970463          	beq	a4,s9,80054b3e <js_os_exec+0x604>
    80054b3a:	efa716e3          	bne	a4,s10,80054a26 <js_os_exec+0x4ec>
quickjs-nuttx/quickjs-libc.c:2863
    for(p = path; p != NULL; p = p_next) {
    80054b3e:	000b1863          	bnez	s6,80054b4e <js_os_exec+0x614>
quickjs-nuttx/quickjs-libc.c:2893
    if (eacces_error)
    80054b42:	ee0a82e3          	beqz	s5,80054a26 <js_os_exec+0x4ec>
quickjs-nuttx/quickjs-libc.c:2894
        errno = EACCES;
    80054b46:	6d30b0ef          	jal	ra,80060a18 <__errno>
    80054b4a:	47b5                	li	a5,13
    80054b4c:	bf25                	j	80054a84 <js_os_exec+0x54a>
    80054b4e:	8dda                	mv	s11,s6
    80054b50:	bfb5                	j	80054acc <js_os_exec+0x592>
quickjs-nuttx/quickjs-libc.c:2870
            path_len = p1 - p;
    80054b52:	41b50433          	sub	s0,a0,s11
quickjs-nuttx/quickjs-libc.c:2869
            p_next = p1 + 1;
    80054b56:	00150b13          	addi	s6,a0,1
    80054b5a:	b761                	j	80054ae2 <js_os_exec+0x5a8>
quickjs-nuttx/quickjs-libc.c:2882
        switch(errno) {
    80054b5c:	4a85                	li	s5,1
    80054b5e:	b7c5                	j	80054b3e <js_os_exec+0x604>
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3058
    if (block_flag) {
    80054b60:	5792                	lw	a5,36(sp)
    80054b62:	c385                	beqz	a5,80054b82 <js_os_exec+0x648>
quickjs-nuttx/quickjs-libc.c:3060
            ret = waitpid(pid, &status, 0);
    80054b64:	4601                	li	a2,0
    80054b66:	182c                	addi	a1,sp,56
    80054b68:	8556                	mv	a0,s5
    80054b6a:	6710f0ef          	jal	ra,800649da <waitpid>
quickjs-nuttx/quickjs-libc.c:3061
            if (ret == pid) {
    80054b6e:	feaa9be3          	bne	s5,a0,80054b64 <js_os_exec+0x62a>
quickjs-nuttx/quickjs-libc.c:3062
                if (WIFEXITED(status)) {
    80054b72:	5562                	lw	a0,56(sp)
    80054b74:	0ff57793          	zext.b	a5,a0
    80054b78:	f7f5                	bnez	a5,80054b64 <js_os_exec+0x62a>
quickjs-nuttx/quickjs-libc.c:3063
                    ret = WEXITSTATUS(status);
    80054b7a:	4085551b          	sraiw	a0,a0,0x8
    80054b7e:	0ff57a93          	zext.b	s5,a0
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80054b82:	db02                	sw	zero,180(sp)
    80054b84:	d956                	sw	s5,176(sp)
    80054b86:	77ca                	ld	a5,176(sp)
    80054b88:	fd02                	sd	zero,184(sp)
    80054b8a:	e502                	sd	zero,136(sp)
    80054b8c:	e13e                	sd	a5,128(sp)
    80054b8e:	4b01                	li	s6,0
js_os_exec():
quickjs-nuttx/quickjs-libc.c:3076
    JS_FreeCString(ctx, file);
    80054b90:	85a6                	mv	a1,s1
    80054b92:	8522                	mv	a0,s0
    80054b94:	fabb70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3077
    JS_FreeCString(ctx, cwd);
    80054b98:	85ce                	mv	a1,s3
    80054b9a:	8522                	mv	a0,s0
    80054b9c:	fa3b70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3078
    for(i = 0; i < exec_argc; i++)
    80054ba0:	4481                	li	s1,0
quickjs-nuttx/quickjs-libc.c:3078 (discriminator 1)
    80054ba2:	5782                	lw	a5,32(sp)
    80054ba4:	02f4e063          	bltu	s1,a5,80054bc4 <js_os_exec+0x68a>
quickjs-nuttx/quickjs-libc.c:3080
    js_free(ctx, exec_argv);
    80054ba8:	85d2                	mv	a1,s4
    80054baa:	8522                	mv	a0,s0
    80054bac:	c4ab60ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:3081
    if (envp != environ) {
    80054bb0:	3310f0ef          	jal	ra,800646e0 <get_environ_ptr>
    80054bb4:	84ca                	mv	s1,s2
    80054bb6:	02a91663          	bne	s2,a0,80054be2 <js_os_exec+0x6a8>
quickjs-nuttx/quickjs-libc.c:3090
    return ret_val;
    80054bba:	c156                	sw	s5,128(sp)
    80054bbc:	678a                	ld	a5,128(sp)
    80054bbe:	ed5a                	sd	s6,152(sp)
    80054bc0:	e93e                	sd	a5,144(sp)
    80054bc2:	b2e5                	j	800545aa <js_os_exec+0x70>
quickjs-nuttx/quickjs-libc.c:3079 (discriminator 3)
        JS_FreeCString(ctx, exec_argv[i]);
    80054bc4:	02049713          	slli	a4,s1,0x20
    80054bc8:	01d75793          	srli	a5,a4,0x1d
    80054bcc:	97d2                	add	a5,a5,s4
    80054bce:	638c                	ld	a1,0(a5)
    80054bd0:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:3078 (discriminator 3)
    for(i = 0; i < exec_argc; i++)
    80054bd2:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs-libc.c:3079 (discriminator 3)
        JS_FreeCString(ctx, exec_argv[i]);
    80054bd4:	f6bb70ef          	jal	ra,8000cb3e <JS_FreeCString>
quickjs-nuttx/quickjs-libc.c:3078 (discriminator 3)
    for(i = 0; i < exec_argc; i++)
    80054bd8:	b7e9                	j	80054ba2 <js_os_exec+0x668>
quickjs-nuttx/quickjs-libc.c:3085
            js_free(ctx, *p);
    80054bda:	8522                	mv	a0,s0
    80054bdc:	c1ab60ef          	jal	ra,8000aff6 <js_free>
quickjs-nuttx/quickjs-libc.c:3086
            p++;
    80054be0:	04a1                	addi	s1,s1,8
quickjs-nuttx/quickjs-libc.c:3084
        while (*p != NULL) {
    80054be2:	608c                	ld	a1,0(s1)
    80054be4:	f9fd                	bnez	a1,80054bda <js_os_exec+0x6a0>
quickjs-nuttx/quickjs-libc.c:3088
        js_free(ctx, envp);
    80054be6:	85ca                	mv	a1,s2
    80054be8:	8522                	mv	a0,s0
    80054bea:	c0cb60ef          	jal	ra,8000aff6 <js_free>
    80054bee:	b7f1                	j	80054bba <js_os_exec+0x680>
quickjs-nuttx/quickjs-libc.c:2904
    const char **exec_argv, *file = NULL, *str, *cwd = NULL;
    80054bf0:	4981                	li	s3,0
    80054bf2:	4481                	li	s1,0
    80054bf4:	b141                	j	80054874 <js_os_exec+0x33a>

0000000080054bf6 <js_worker_finalizer>:
js_worker_finalizer():
quickjs-nuttx/quickjs-libc.c:3326
{
    80054bf6:	7179                	addi	sp,sp,-48
    80054bf8:	87b2                	mv	a5,a2
    80054bfa:	ec26                	sd	s1,24(sp)
    80054bfc:	e02e                	sd	a1,0(sp)
    80054bfe:	84aa                	mv	s1,a0
    80054c00:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs-libc.c:3327
    JSWorkerData *worker = JS_GetOpaque(val, js_worker_class_id);
    80054c02:	852e                	mv	a0,a1
    80054c04:	000ac617          	auipc	a2,0xac
    80054c08:	53462603          	lw	a2,1332(a2) # 80101138 <js_worker_class_id>
    80054c0c:	85be                	mv	a1,a5
quickjs-nuttx/quickjs-libc.c:3326
{
    80054c0e:	f406                	sd	ra,40(sp)
    80054c10:	f022                	sd	s0,32(sp)
quickjs-nuttx/quickjs-libc.c:3327
    JSWorkerData *worker = JS_GetOpaque(val, js_worker_class_id);
    80054c12:	a83b90ef          	jal	ra,8000e694 <JS_GetOpaque>
quickjs-nuttx/quickjs-libc.c:3328
    if (worker) {
    80054c16:	c50d                	beqz	a0,80054c40 <js_worker_finalizer+0x4a>
    80054c18:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:3329
        js_free_message_pipe(worker->recv_pipe);
    80054c1a:	6108                	ld	a0,0(a0)
    80054c1c:	edcff0ef          	jal	ra,800542f8 <js_free_message_pipe>
quickjs-nuttx/quickjs-libc.c:3330
        js_free_message_pipe(worker->send_pipe);
    80054c20:	6408                	ld	a0,8(s0)
    80054c22:	ed6ff0ef          	jal	ra,800542f8 <js_free_message_pipe>
quickjs-nuttx/quickjs-libc.c:3331
        js_free_port(rt, worker->msg_handler);
    80054c26:	680c                	ld	a1,16(s0)
js_free_port():
quickjs-nuttx/quickjs-libc.c:3317
    if (port) {
    80054c28:	c581                	beqz	a1,80054c30 <js_worker_finalizer+0x3a>
    80054c2a:	8526                	mv	a0,s1
    80054c2c:	8ddff0ef          	jal	ra,80054508 <js_free_port.part.0>
js_worker_finalizer():
quickjs-nuttx/quickjs-libc.c:3332
        js_free_rt(rt, worker);
    80054c30:	85a2                	mv	a1,s0
quickjs-nuttx/quickjs-libc.c:3334
}
    80054c32:	7402                	ld	s0,32(sp)
    80054c34:	70a2                	ld	ra,40(sp)
quickjs-nuttx/quickjs-libc.c:3332
        js_free_rt(rt, worker);
    80054c36:	8526                	mv	a0,s1
quickjs-nuttx/quickjs-libc.c:3334
}
    80054c38:	64e2                	ld	s1,24(sp)
    80054c3a:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs-libc.c:3332
        js_free_rt(rt, worker);
    80054c3c:	da5b506f          	j	8000a9e0 <js_free_rt>
quickjs-nuttx/quickjs-libc.c:3334
}
    80054c40:	70a2                	ld	ra,40(sp)
    80054c42:	7402                	ld	s0,32(sp)
    80054c44:	64e2                	ld	s1,24(sp)
    80054c46:	6145                	addi	sp,sp,48
    80054c48:	8082                	ret

0000000080054c4a <js_os_utimes>:
js_os_utimes():
quickjs-nuttx/quickjs-libc.c:2643
{
    80054c4a:	7159                	addi	sp,sp,-112
    80054c4c:	f0a2                	sd	s0,96(sp)
    80054c4e:	eca6                	sd	s1,88(sp)
    80054c50:	f486                	sd	ra,104(sp)
    80054c52:	e8ca                	sd	s2,80(sp)
quickjs-nuttx/quickjs-libc.c:2648
    if (JS_ToInt64(ctx, &atime, argv[1]))
    80054c54:	6b10                	ld	a2,16(a4)
    80054c56:	6f14                	ld	a3,24(a4)
    80054c58:	080c                	addi	a1,sp,16
quickjs-nuttx/quickjs-libc.c:2643
{
    80054c5a:	84aa                	mv	s1,a0
    80054c5c:	843a                	mv	s0,a4
quickjs-nuttx/quickjs-libc.c:2648
    if (JS_ToInt64(ctx, &atime, argv[1]))
    80054c5e:	9bed00ef          	jal	ra,80024e1c <JS_ToInt64>
    80054c62:	cd01                	beqz	a0,80054c7a <js_os_utimes+0x30>
quickjs-nuttx/quickjs-libc.c:2649
        return JS_EXCEPTION;
    80054c64:	4799                	li	a5,6
    80054c66:	f002                	sd	zero,32(sp)
    80054c68:	f43e                	sd	a5,40(sp)
quickjs-nuttx/quickjs-libc.c:2672 (discriminator 1)
}
    80054c6a:	70a6                	ld	ra,104(sp)
    80054c6c:	7406                	ld	s0,96(sp)
    80054c6e:	7502                	ld	a0,32(sp)
    80054c70:	75a2                	ld	a1,40(sp)
    80054c72:	64e6                	ld	s1,88(sp)
    80054c74:	6946                	ld	s2,80(sp)
    80054c76:	6165                	addi	sp,sp,112
    80054c78:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2650
    if (JS_ToInt64(ctx, &mtime, argv[2]))
    80054c7a:	7010                	ld	a2,32(s0)
    80054c7c:	7414                	ld	a3,40(s0)
    80054c7e:	082c                	addi	a1,sp,24
    80054c80:	8526                	mv	a0,s1
    80054c82:	99ad00ef          	jal	ra,80024e1c <JS_ToInt64>
    80054c86:	fd79                	bnez	a0,80054c64 <js_os_utimes+0x1a>
quickjs-nuttx/quickjs-libc.c:2652
    path = JS_ToCString(ctx, argv[0]);
    80054c88:	600c                	ld	a1,0(s0)
    80054c8a:	6410                	ld	a2,8(s0)
    80054c8c:	8526                	mv	a0,s1
    80054c8e:	c66fd0ef          	jal	ra,800520f4 <JS_ToCString>
    80054c92:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2653
    if (!path)
    80054c94:	d961                	beqz	a0,80054c64 <js_os_utimes+0x1a>
quickjs-nuttx/quickjs-libc.c:2665
        ms_to_timeval(&times[0], atime);
    80054c96:	67c2                	ld	a5,16(sp)
ms_to_timeval():
quickjs-nuttx/quickjs-libc.c:2636
    tv->tv_sec = v / 1000;
    80054c98:	3e800713          	li	a4,1000
js_os_utimes():
quickjs-nuttx/quickjs-libc.c:2667
        ret = js_get_errno(utimes(path, times));
    80054c9c:	180c                	addi	a1,sp,48
ms_to_timeval():
quickjs-nuttx/quickjs-libc.c:2636
    tv->tv_sec = v / 1000;
    80054c9e:	02e7d6b3          	divu	a3,a5,a4
quickjs-nuttx/quickjs-libc.c:2637
    tv->tv_usec = (v % 1000) * 1000;
    80054ca2:	02e7f7b3          	remu	a5,a5,a4
quickjs-nuttx/quickjs-libc.c:2636
    tv->tv_sec = v / 1000;
    80054ca6:	d836                	sw	a3,48(sp)
quickjs-nuttx/quickjs-libc.c:2637
    tv->tv_usec = (v % 1000) * 1000;
    80054ca8:	02e787b3          	mul	a5,a5,a4
    80054cac:	fc3e                	sd	a5,56(sp)
js_os_utimes():
quickjs-nuttx/quickjs-libc.c:2666
        ms_to_timeval(&times[1], mtime);
    80054cae:	67e2                	ld	a5,24(sp)
ms_to_timeval():
quickjs-nuttx/quickjs-libc.c:2636
    tv->tv_sec = v / 1000;
    80054cb0:	02e7d6b3          	divu	a3,a5,a4
quickjs-nuttx/quickjs-libc.c:2637
    tv->tv_usec = (v % 1000) * 1000;
    80054cb4:	02e7f7b3          	remu	a5,a5,a4
quickjs-nuttx/quickjs-libc.c:2636
    tv->tv_sec = v / 1000;
    80054cb8:	c0b6                	sw	a3,64(sp)
quickjs-nuttx/quickjs-libc.c:2637
    tv->tv_usec = (v % 1000) * 1000;
    80054cba:	02e787b3          	mul	a5,a5,a4
    80054cbe:	e4be                	sd	a5,72(sp)
js_os_utimes():
quickjs-nuttx/quickjs-libc.c:2667
        ret = js_get_errno(utimes(path, times));
    80054cc0:	4060f0ef          	jal	ra,800640c6 <utimes>
    80054cc4:	876ff0ef          	jal	ra,80053d3a <js_get_errno>
    80054cc8:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2670
    JS_FreeCString(ctx, path);
    80054cca:	85a2                	mv	a1,s0
    80054ccc:	8526                	mv	a0,s1
    80054cce:	e71b70ef          	jal	ra,8000cb3e <JS_FreeCString>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054cd2:	da02                	sw	zero,52(sp)
js_os_utimes():
quickjs-nuttx/quickjs-libc.c:2667
        ret = js_get_errno(utimes(path, times));
    80054cd4:	d84a                	sw	s2,48(sp)
    80054cd6:	77c2                	ld	a5,48(sp)
    80054cd8:	f402                	sd	zero,40(sp)
    80054cda:	f03e                	sd	a5,32(sp)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054cdc:	b779                	j	80054c6a <js_os_utimes+0x20>

0000000080054cde <js_os_sleepAsync>:
js_os_sleepAsync():
quickjs-nuttx/quickjs-libc.c:2103
{
    80054cde:	7175                	addi	sp,sp,-144
    80054ce0:	e506                	sd	ra,136(sp)
    80054ce2:	e122                	sd	s0,128(sp)
    80054ce4:	fca6                	sd	s1,120(sp)
    80054ce6:	843a                	mv	s0,a4
    80054ce8:	f8ca                	sd	s2,112(sp)
    80054cea:	e02e                	sd	a1,0(sp)
    80054cec:	e432                	sd	a2,8(sp)
    80054cee:	f4ce                	sd	s3,104(sp)
    80054cf0:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2104
    JSRuntime *rt = JS_GetRuntime(ctx);
    80054cf2:	beab60ef          	jal	ra,8000b0dc <JS_GetRuntime>
quickjs-nuttx/quickjs-libc.c:2105
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80054cf6:	b4eb60ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:2110
    if (JS_ToInt64(ctx, &delay, argv[0]))
    80054cfa:	6010                	ld	a2,0(s0)
    80054cfc:	6414                	ld	a3,8(s0)
quickjs-nuttx/quickjs-libc.c:2105
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80054cfe:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:2110
    if (JS_ToInt64(ctx, &delay, argv[0]))
    80054d00:	082c                	addi	a1,sp,24
    80054d02:	8526                	mv	a0,s1
    80054d04:	918d00ef          	jal	ra,80024e1c <JS_ToInt64>
    80054d08:	c509                	beqz	a0,80054d12 <js_os_sleepAsync+0x34>
quickjs-nuttx/quickjs-libc.c:2111
        return JS_EXCEPTION;
    80054d0a:	f802                	sd	zero,48(sp)
    80054d0c:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:2129
    return promise;
    80054d0e:	fc3e                	sd	a5,56(sp)
    80054d10:	a099                	j	80054d56 <js_os_sleepAsync+0x78>
quickjs-nuttx/quickjs-libc.c:2112
    promise = JS_NewPromiseCapability(ctx, resolving_funcs);
    80054d12:	008c                	addi	a1,sp,64
    80054d14:	8526                	mv	a0,s1
    80054d16:	a4cba0ef          	jal	ra,8000ef62 <JS_NewPromiseCapability>
    80054d1a:	f42e                	sd	a1,40(sp)
    80054d1c:	f02a                	sd	a0,32(sp)
quickjs-nuttx/quickjs-libc.c:2113
    if (JS_IsException(promise))
    80054d1e:	2581                	sext.w	a1,a1
    80054d20:	4999                	li	s3,6
    80054d22:	ff3584e3          	beq	a1,s3,80054d0a <js_os_sleepAsync+0x2c>
quickjs-nuttx/quickjs-libc.c:2116
    th = js_mallocz(ctx, sizeof(*th));
    80054d26:	03000593          	li	a1,48
    80054d2a:	8526                	mv	a0,s1
    80054d2c:	c0cc60ef          	jal	ra,8001b138 <js_mallocz>
    80054d30:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2117
    if (!th) {
    80054d32:	e91d                	bnez	a0,80054d68 <js_os_sleepAsync+0x8a>
quickjs-nuttx/quickjs-libc.c:2118
        JS_FreeValue(ctx, promise);
    80054d34:	7582                	ld	a1,32(sp)
    80054d36:	7622                	ld	a2,40(sp)
    80054d38:	8526                	mv	a0,s1
    80054d3a:	b72fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2119
        JS_FreeValue(ctx, resolving_funcs[0]);
    80054d3e:	6586                	ld	a1,64(sp)
    80054d40:	6626                	ld	a2,72(sp)
    80054d42:	8526                	mv	a0,s1
    80054d44:	b68fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2120
        JS_FreeValue(ctx, resolving_funcs[1]);
    80054d48:	65c6                	ld	a1,80(sp)
    80054d4a:	6666                	ld	a2,88(sp)
    80054d4c:	8526                	mv	a0,s1
    80054d4e:	b5efd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2121
        return JS_EXCEPTION;
    80054d52:	f802                	sd	zero,48(sp)
    80054d54:	fc4e                	sd	s3,56(sp)
quickjs-nuttx/quickjs-libc.c:2130 (discriminator 1)
}
    80054d56:	60aa                	ld	ra,136(sp)
    80054d58:	640a                	ld	s0,128(sp)
    80054d5a:	7542                	ld	a0,48(sp)
    80054d5c:	75e2                	ld	a1,56(sp)
    80054d5e:	74e6                	ld	s1,120(sp)
    80054d60:	7946                	ld	s2,112(sp)
    80054d62:	79a6                	ld	s3,104(sp)
    80054d64:	6149                	addi	sp,sp,144
    80054d66:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2123
    th->timer_id = -1;
    80054d68:	57fd                	li	a5,-1
    80054d6a:	c91c                	sw	a5,16(a0)
quickjs-nuttx/quickjs-libc.c:2124
    th->timeout = get_time_ms() + delay;
    80054d6c:	f4cfe0ef          	jal	ra,800534b8 <get_time_ms>
    80054d70:	67e2                	ld	a5,24(sp)
    80054d72:	66a6                	ld	a3,72(sp)
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    80054d74:	5751                	li	a4,-12
js_os_sleepAsync():
quickjs-nuttx/quickjs-libc.c:2124
    80054d76:	97aa                	add	a5,a5,a0
    80054d78:	ec1c                	sd	a5,24(s0)
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    80054d7a:	0006861b          	sext.w	a2,a3
    80054d7e:	6786                	ld	a5,64(sp)
    80054d80:	00c77563          	bgeu	a4,a2,80054d8a <js_os_sleepAsync+0xac>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80054d84:	4398                	lw	a4,0(a5)
    80054d86:	2705                	addiw	a4,a4,1
    80054d88:	c398                	sw	a4,0(a5)
js_os_sleepAsync():
quickjs-nuttx/quickjs-libc.c:2125
    th->func = JS_DupValue(ctx, resolving_funcs[0]);
    80054d8a:	f414                	sd	a3,40(s0)
    80054d8c:	f01c                	sd	a5,32(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80054d8e:	02093783          	ld	a5,32(s2)
js_os_sleepAsync():
quickjs-nuttx/quickjs-libc.c:2127
    JS_FreeValue(ctx, resolving_funcs[0]);
    80054d92:	8526                	mv	a0,s1
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80054d94:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80054d96:	e01c                	sd	a5,0(s0)
js_os_sleepAsync():
quickjs-nuttx/quickjs-libc.c:2126
    list_add_tail(&th->link, &ts->os_timers);
    80054d98:	02090793          	addi	a5,s2,32
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    80054d9c:	e41c                	sd	a5,8(s0)
js_os_sleepAsync():
quickjs-nuttx/quickjs-libc.c:2127
    JS_FreeValue(ctx, resolving_funcs[0]);
    80054d9e:	6586                	ld	a1,64(sp)
    80054da0:	6626                	ld	a2,72(sp)
__list_add():
quickjs-nuttx/list.h:54
    next->prev = el;
    80054da2:	02893023          	sd	s0,32(s2)
js_os_sleepAsync():
quickjs-nuttx/quickjs-libc.c:2127
    80054da6:	b06fd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2128
    JS_FreeValue(ctx, resolving_funcs[1]);
    80054daa:	65c6                	ld	a1,80(sp)
    80054dac:	6666                	ld	a2,88(sp)
    80054dae:	8526                	mv	a0,s1
    80054db0:	afcfd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:2129
    return promise;
    80054db4:	7782                	ld	a5,32(sp)
    80054db6:	f83e                	sd	a5,48(sp)
    80054db8:	77a2                	ld	a5,40(sp)
    80054dba:	bf91                	j	80054d0e <js_os_sleepAsync+0x30>

0000000080054dbc <js_os_setTimeout>:
js_os_setTimeout():
quickjs-nuttx/quickjs-libc.c:2044
{
    80054dbc:	7119                	addi	sp,sp,-128
    80054dbe:	fc86                	sd	ra,120(sp)
    80054dc0:	f8a2                	sd	s0,112(sp)
    80054dc2:	f4a6                	sd	s1,104(sp)
    80054dc4:	f0ca                	sd	s2,96(sp)
    80054dc6:	ecce                	sd	s3,88(sp)
    80054dc8:	893a                	mv	s2,a4
    80054dca:	e8d2                	sd	s4,80(sp)
    80054dcc:	e02e                	sd	a1,0(sp)
    80054dce:	e432                	sd	a2,8(sp)
    80054dd0:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2045
    JSRuntime *rt = JS_GetRuntime(ctx);
    80054dd2:	b0ab60ef          	jal	ra,8000b0dc <JS_GetRuntime>
quickjs-nuttx/quickjs-libc.c:2046
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80054dd6:	a6eb60ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:2051
    func = argv[0];
    80054dda:	00093983          	ld	s3,0(s2)
    80054dde:	00893a03          	ld	s4,8(s2)
quickjs-nuttx/quickjs-libc.c:2046
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80054de2:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs-libc.c:2052
    if (!JS_IsFunction(ctx, func))
    80054de4:	85ce                	mv	a1,s3
    80054de6:	8652                	mv	a2,s4
    80054de8:	8522                	mv	a0,s0
    80054dea:	f04e                	sd	s3,32(sp)
    80054dec:	f452                	sd	s4,40(sp)
    80054dee:	eb4b90ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80054df2:	ed19                	bnez	a0,80054e10 <js_os_setTimeout+0x54>
quickjs-nuttx/quickjs-libc.c:2053
        return JS_ThrowTypeError(ctx, "not a function");
    80054df4:	8522                	mv	a0,s0
quickjs-nuttx/quickjs-libc.c:2068
}
    80054df6:	7446                	ld	s0,112(sp)
    80054df8:	70e6                	ld	ra,120(sp)
    80054dfa:	74a6                	ld	s1,104(sp)
    80054dfc:	7906                	ld	s2,96(sp)
    80054dfe:	69e6                	ld	s3,88(sp)
    80054e00:	6a46                	ld	s4,80(sp)
quickjs-nuttx/quickjs-libc.c:2053
        return JS_ThrowTypeError(ctx, "not a function");
    80054e02:	00015597          	auipc	a1,0x15
    80054e06:	dee58593          	addi	a1,a1,-530 # 80069bf0 <qjsc_repl+0x4640>
quickjs-nuttx/quickjs-libc.c:2068
}
    80054e0a:	6109                	addi	sp,sp,128
quickjs-nuttx/quickjs-libc.c:2053
        return JS_ThrowTypeError(ctx, "not a function");
    80054e0c:	861c306f          	j	8001866c <JS_ThrowTypeError>
quickjs-nuttx/quickjs-libc.c:2054
    if (JS_ToInt64(ctx, &delay, argv[1]))
    80054e10:	01093603          	ld	a2,16(s2)
    80054e14:	01893683          	ld	a3,24(s2)
    80054e18:	082c                	addi	a1,sp,24
    80054e1a:	8522                	mv	a0,s0
    80054e1c:	800d00ef          	jal	ra,80024e1c <JS_ToInt64>
    80054e20:	cd11                	beqz	a0,80054e3c <js_os_setTimeout+0x80>
quickjs-nuttx/quickjs-libc.c:2055
        return JS_EXCEPTION;
    80054e22:	4799                	li	a5,6
    80054e24:	f802                	sd	zero,48(sp)
    80054e26:	fc3e                	sd	a5,56(sp)
quickjs-nuttx/quickjs-libc.c:2068 (discriminator 1)
}
    80054e28:	70e6                	ld	ra,120(sp)
    80054e2a:	7446                	ld	s0,112(sp)
    80054e2c:	7542                	ld	a0,48(sp)
    80054e2e:	75e2                	ld	a1,56(sp)
    80054e30:	74a6                	ld	s1,104(sp)
    80054e32:	7906                	ld	s2,96(sp)
    80054e34:	69e6                	ld	s3,88(sp)
    80054e36:	6a46                	ld	s4,80(sp)
    80054e38:	6109                	addi	sp,sp,128
    80054e3a:	8082                	ret
quickjs-nuttx/quickjs-libc.c:2056
    th = js_mallocz(ctx, sizeof(*th));
    80054e3c:	8522                	mv	a0,s0
    80054e3e:	03000593          	li	a1,48
    80054e42:	af6c60ef          	jal	ra,8001b138 <js_mallocz>
    80054e46:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:2057
    if (!th)
    80054e48:	dd69                	beqz	a0,80054e22 <js_os_setTimeout+0x66>
quickjs-nuttx/quickjs-libc.c:2059
    th->timer_id = ts->next_timer_id;
    80054e4a:	40fc                	lw	a5,68(s1)
quickjs-nuttx/quickjs-libc.c:2060
    if (ts->next_timer_id == INT32_MAX)
    80054e4c:	80000737          	lui	a4,0x80000
    80054e50:	fff74713          	not	a4,a4
quickjs-nuttx/quickjs-libc.c:2059
    th->timer_id = ts->next_timer_id;
    80054e54:	c91c                	sw	a5,16(a0)
quickjs-nuttx/quickjs-libc.c:2061
        ts->next_timer_id = 1;
    80054e56:	4685                	li	a3,1
quickjs-nuttx/quickjs-libc.c:2060
    if (ts->next_timer_id == INT32_MAX)
    80054e58:	00e78463          	beq	a5,a4,80054e60 <js_os_setTimeout+0xa4>
quickjs-nuttx/quickjs-libc.c:2063
        ts->next_timer_id++;
    80054e5c:	0017869b          	addiw	a3,a5,1
    80054e60:	c0f4                	sw	a3,68(s1)
quickjs-nuttx/quickjs-libc.c:2064
    th->timeout = get_time_ms() + delay;
    80054e62:	e56fe0ef          	jal	ra,800534b8 <get_time_ms>
    80054e66:	67e2                	ld	a5,24(sp)
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    80054e68:	5751                	li	a4,-12
js_os_setTimeout():
quickjs-nuttx/quickjs-libc.c:2064
    80054e6a:	97aa                	add	a5,a5,a0
    80054e6c:	ec1c                	sd	a5,24(s0)
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    80054e6e:	000a079b          	sext.w	a5,s4
    80054e72:	00f77763          	bgeu	a4,a5,80054e80 <js_os_setTimeout+0xc4>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80054e76:	0009a783          	lw	a5,0(s3)
    80054e7a:	2785                	addiw	a5,a5,1
    80054e7c:	00f9a023          	sw	a5,0(s3)
js_os_setTimeout():
quickjs-nuttx/quickjs-libc.c:2065
    th->func = JS_DupValue(ctx, func);
    80054e80:	03343023          	sd	s3,32(s0)
    80054e84:	03443423          	sd	s4,40(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80054e88:	709c                	ld	a5,32(s1)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80054e8a:	c282                	sw	zero,68(sp)
    80054e8c:	fc02                	sd	zero,56(sp)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80054e8e:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80054e90:	e01c                	sd	a5,0(s0)
js_os_setTimeout():
quickjs-nuttx/quickjs-libc.c:2066
    list_add_tail(&th->link, &ts->os_timers);
    80054e92:	02048793          	addi	a5,s1,32
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    80054e96:	e41c                	sd	a5,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    80054e98:	f080                	sd	s0,32(s1)
js_os_setTimeout():
quickjs-nuttx/quickjs-libc.c:2067
    return JS_NewInt32(ctx, th->timer_id);
    80054e9a:	481c                	lw	a5,16(s0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    80054e9c:	c0be                	sw	a5,64(sp)
    80054e9e:	6786                	ld	a5,64(sp)
    80054ea0:	f83e                	sd	a5,48(sp)
    80054ea2:	b759                	j	80054e28 <js_os_setTimeout+0x6c>

0000000080054ea4 <js_os_setReadHandler>:
js_os_setReadHandler():
quickjs-nuttx/quickjs-libc.c:1883
{
    80054ea4:	7119                	addi	sp,sp,-128
    80054ea6:	fc86                	sd	ra,120(sp)
    80054ea8:	f4a6                	sd	s1,104(sp)
    80054eaa:	f0ca                	sd	s2,96(sp)
    80054eac:	ecce                	sd	s3,88(sp)
    80054eae:	e8d2                	sd	s4,80(sp)
    80054eb0:	e02e                	sd	a1,0(sp)
    80054eb2:	8a3a                	mv	s4,a4
    80054eb4:	e432                	sd	a2,8(sp)
    80054eb6:	f8a2                	sd	s0,112(sp)
    80054eb8:	e4d6                	sd	s5,72(sp)
    80054eba:	e0da                	sd	s6,64(sp)
    80054ebc:	89aa                	mv	s3,a0
    80054ebe:	84be                	mv	s1,a5
quickjs-nuttx/quickjs-libc.c:1884
    JSRuntime *rt = JS_GetRuntime(ctx);
    80054ec0:	a1cb60ef          	jal	ra,8000b0dc <JS_GetRuntime>
quickjs-nuttx/quickjs-libc.c:1885
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80054ec4:	980b60ef          	jal	ra,8000b044 <JS_GetRuntimeOpaque>
quickjs-nuttx/quickjs-libc.c:1890
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80054ec8:	000a3603          	ld	a2,0(s4)
    80054ecc:	008a3683          	ld	a3,8(s4)
quickjs-nuttx/quickjs-libc.c:1885
    JSThreadState *ts = JS_GetRuntimeOpaque(rt);
    80054ed0:	892a                	mv	s2,a0
quickjs-nuttx/quickjs-libc.c:1890
    if (JS_ToInt32(ctx, &fd, argv[0]))
    80054ed2:	086c                	addi	a1,sp,28
    80054ed4:	854e                	mv	a0,s3
    80054ed6:	ce4cd0ef          	jal	ra,800223ba <JS_ToInt32>
    80054eda:	c509                	beqz	a0,80054ee4 <js_os_setReadHandler+0x40>
quickjs-nuttx/quickjs-libc.c:1891
        return JS_EXCEPTION;
    80054edc:	f802                	sd	zero,48(sp)
    80054ede:	4799                	li	a5,6
quickjs-nuttx/quickjs-libc.c:1920
    return JS_UNDEFINED;
    80054ee0:	fc3e                	sd	a5,56(sp)
    80054ee2:	a881                	j	80054f32 <js_os_setReadHandler+0x8e>
quickjs-nuttx/quickjs-libc.c:1892
    func = argv[1];
    80054ee4:	010a3a83          	ld	s5,16(s4)
    80054ee8:	018a3a03          	ld	s4,24(s4)
quickjs-nuttx/quickjs-libc.c:1893
    if (JS_IsNull(func)) {
    80054eec:	4789                	li	a5,2
quickjs-nuttx/quickjs-libc.c:1892
    func = argv[1];
    80054eee:	f056                	sd	s5,32(sp)
    80054ef0:	f452                	sd	s4,40(sp)
quickjs-nuttx/quickjs-libc.c:1893
    if (JS_IsNull(func)) {
    80054ef2:	000a0b1b          	sext.w	s6,s4
    80054ef6:	00fb1f63          	bne	s6,a5,80054f14 <js_os_setReadHandler+0x70>
quickjs-nuttx/quickjs-libc.c:1894
        rh = find_rh(ts, fd);
    80054efa:	47f2                	lw	a5,28(sp)
find_rh():
quickjs-nuttx/quickjs-libc.c:1863
    list_for_each(el, &ts->os_rw_handlers) {
    80054efc:	00893403          	ld	s0,8(s2)
    80054f00:	01241563          	bne	s0,s2,80054f0a <js_os_setReadHandler+0x66>
js_os_setReadHandler():
quickjs-nuttx/quickjs-libc.c:1920
    return JS_UNDEFINED;
    80054f04:	f802                	sd	zero,48(sp)
    80054f06:	478d                	li	a5,3
    80054f08:	bfe1                	j	80054ee0 <js_os_setReadHandler+0x3c>
find_rh():
quickjs-nuttx/quickjs-libc.c:1865
        if (rh->fd == fd)
    80054f0a:	4818                	lw	a4,16(s0)
    80054f0c:	0af70a63          	beq	a4,a5,80054fc0 <js_os_setReadHandler+0x11c>
quickjs-nuttx/quickjs-libc.c:1863
    list_for_each(el, &ts->os_rw_handlers) {
    80054f10:	6400                	ld	s0,8(s0)
    80054f12:	b7fd                	j	80054f00 <js_os_setReadHandler+0x5c>
js_os_setReadHandler():
quickjs-nuttx/quickjs-libc.c:1905
        if (!JS_IsFunction(ctx, func))
    80054f14:	85d6                	mv	a1,s5
    80054f16:	8652                	mv	a2,s4
    80054f18:	854e                	mv	a0,s3
    80054f1a:	d88b90ef          	jal	ra,8000e4a2 <JS_IsFunction>
    80054f1e:	e515                	bnez	a0,80054f4a <js_os_setReadHandler+0xa6>
quickjs-nuttx/quickjs-libc.c:1906
            return JS_ThrowTypeError(ctx, "not a function");
    80054f20:	00015597          	auipc	a1,0x15
    80054f24:	cd058593          	addi	a1,a1,-816 # 80069bf0 <qjsc_repl+0x4640>
    80054f28:	854e                	mv	a0,s3
    80054f2a:	f42c30ef          	jal	ra,8001866c <JS_ThrowTypeError>
    80054f2e:	f82a                	sd	a0,48(sp)
    80054f30:	fc2e                	sd	a1,56(sp)
quickjs-nuttx/quickjs-libc.c:1921 (discriminator 4)
}
    80054f32:	70e6                	ld	ra,120(sp)
    80054f34:	7446                	ld	s0,112(sp)
    80054f36:	7542                	ld	a0,48(sp)
    80054f38:	75e2                	ld	a1,56(sp)
    80054f3a:	74a6                	ld	s1,104(sp)
    80054f3c:	7906                	ld	s2,96(sp)
    80054f3e:	69e6                	ld	s3,88(sp)
    80054f40:	6a46                	ld	s4,80(sp)
    80054f42:	6aa6                	ld	s5,72(sp)
    80054f44:	6b06                	ld	s6,64(sp)
    80054f46:	6109                	addi	sp,sp,128
    80054f48:	8082                	ret
quickjs-nuttx/quickjs-libc.c:1907
        rh = find_rh(ts, fd);
    80054f4a:	47f2                	lw	a5,28(sp)
find_rh():
quickjs-nuttx/quickjs-libc.c:1863
    list_for_each(el, &ts->os_rw_handlers) {
    80054f4c:	00893403          	ld	s0,8(s2)
    80054f50:	07241363          	bne	s0,s2,80054fb6 <js_os_setReadHandler+0x112>
js_os_setReadHandler():
quickjs-nuttx/quickjs-libc.c:1909
            rh = js_mallocz(ctx, sizeof(*rh));
    80054f54:	03800593          	li	a1,56
    80054f58:	854e                	mv	a0,s3
    80054f5a:	9dec60ef          	jal	ra,8001b138 <js_mallocz>
    80054f5e:	842a                	mv	s0,a0
quickjs-nuttx/quickjs-libc.c:1910
            if (!rh)
    80054f60:	dd35                	beqz	a0,80054edc <js_os_setReadHandler+0x38>
quickjs-nuttx/quickjs-libc.c:1912
            rh->fd = fd;
    80054f62:	47f2                	lw	a5,28(sp)
quickjs-nuttx/quickjs-libc.c:1913
            rh->rw_func[0] = JS_NULL;
    80054f64:	00043c23          	sd	zero,24(s0)
quickjs-nuttx/quickjs-libc.c:1914
            rh->rw_func[1] = JS_NULL;
    80054f68:	02043423          	sd	zero,40(s0)
quickjs-nuttx/quickjs-libc.c:1912
            rh->fd = fd;
    80054f6c:	c81c                	sw	a5,16(s0)
quickjs-nuttx/quickjs-libc.c:1913
            rh->rw_func[0] = JS_NULL;
    80054f6e:	4789                	li	a5,2
    80054f70:	f01c                	sd	a5,32(s0)
quickjs-nuttx/quickjs-libc.c:1914
            rh->rw_func[1] = JS_NULL;
    80054f72:	f81c                	sd	a5,48(s0)
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80054f74:	00093783          	ld	a5,0(s2)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80054f78:	e780                	sd	s0,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80054f7a:	e01c                	sd	a5,0(s0)
quickjs-nuttx/list.h:53
    el->next = next;
    80054f7c:	01243423          	sd	s2,8(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    80054f80:	00893023          	sd	s0,0(s2)
js_os_setReadHandler():
quickjs-nuttx/quickjs-libc.c:1917
        JS_FreeValue(ctx, rh->rw_func[magic]);
    80054f84:	0485                	addi	s1,s1,1
    80054f86:	00449793          	slli	a5,s1,0x4
    80054f8a:	97a2                	add	a5,a5,s0
    80054f8c:	678c                	ld	a1,8(a5)
    80054f8e:	6b90                	ld	a2,16(a5)
    80054f90:	854e                	mv	a0,s3
    80054f92:	91afd0ef          	jal	ra,800520ac <JS_FreeValue>
JS_DupValue():
quickjs-nuttx/quickjs.h:668
    if (JS_VALUE_HAS_REF_COUNT(v)) {
    80054f96:	57d1                	li	a5,-12
    80054f98:	0167f763          	bgeu	a5,s6,80054fa6 <js_os_setReadHandler+0x102>
quickjs-nuttx/quickjs.h:670
        p->ref_count++;
    80054f9c:	000aa783          	lw	a5,0(s5)
    80054fa0:	2785                	addiw	a5,a5,1
    80054fa2:	00faa023          	sw	a5,0(s5)
js_os_setReadHandler():
quickjs-nuttx/quickjs-libc.c:1918
        rh->rw_func[magic] = JS_DupValue(ctx, func);
    80054fa6:	0492                	slli	s1,s1,0x4
    80054fa8:	04a1                	addi	s1,s1,8
    80054faa:	9426                	add	s0,s0,s1
    80054fac:	01543023          	sd	s5,0(s0)
    80054fb0:	01443423          	sd	s4,8(s0)
    80054fb4:	bf81                	j	80054f04 <js_os_setReadHandler+0x60>
find_rh():
quickjs-nuttx/quickjs-libc.c:1865
        if (rh->fd == fd)
    80054fb6:	4818                	lw	a4,16(s0)
    80054fb8:	fcf706e3          	beq	a4,a5,80054f84 <js_os_setReadHandler+0xe0>
quickjs-nuttx/quickjs-libc.c:1863
    list_for_each(el, &ts->os_rw_handlers) {
    80054fbc:	6400                	ld	s0,8(s0)
    80054fbe:	bf49                	j	80054f50 <js_os_setReadHandler+0xac>
js_os_setReadHandler():
quickjs-nuttx/quickjs-libc.c:1896
            JS_FreeValue(ctx, rh->rw_func[magic]);
    80054fc0:	00148793          	addi	a5,s1,1
    80054fc4:	0792                	slli	a5,a5,0x4
    80054fc6:	97a2                	add	a5,a5,s0
    80054fc8:	678c                	ld	a1,8(a5)
    80054fca:	6b90                	ld	a2,16(a5)
    80054fcc:	854e                	mv	a0,s3
    80054fce:	0492                	slli	s1,s1,0x4
    80054fd0:	8dcfd0ef          	jal	ra,800520ac <JS_FreeValue>
quickjs-nuttx/quickjs-libc.c:1897
            rh->rw_func[magic] = JS_NULL;
    80054fd4:	94a2                	add	s1,s1,s0
    80054fd6:	4709                	li	a4,2
    80054fd8:	0004bc23          	sd	zero,24(s1)
    80054fdc:	f098                	sd	a4,32(s1)
quickjs-nuttx/quickjs-libc.c:1898
            if (JS_IsNull(rh->rw_func[0]) &&
    80054fde:	501c                	lw	a5,32(s0)
    80054fe0:	f2e792e3          	bne	a5,a4,80054f04 <js_os_setReadHandler+0x60>
quickjs-nuttx/quickjs-libc.c:1898 (discriminator 1)
    80054fe4:	5818                	lw	a4,48(s0)
    80054fe6:	f0f71fe3          	bne	a4,a5,80054f04 <js_os_setReadHandler+0x60>
quickjs-nuttx/quickjs-libc.c:1901
                free_rw_handler(JS_GetRuntime(ctx), rh);
    80054fea:	854e                	mv	a0,s3
    80054fec:	8f0b60ef          	jal	ra,8000b0dc <JS_GetRuntime>
    80054ff0:	85a2                	mv	a1,s0
    80054ff2:	e14fe0ef          	jal	ra,80053606 <free_rw_handler>
    80054ff6:	b739                	j	80054f04 <js_os_setReadHandler+0x60>

0000000080054ff8 <js_os_signal>:
js_os_signal():
quickjs-nuttx/quickjs-libc.c:1953
{
    80054ff8:	7119                	addi	sp,sp,-128
    80054ffa:	fc86                	sd	ra,120(sp)
    80054ffc:	e02e                	sd	a1,0(sp)
    80054ffe:	e432                	sd	a2,8(sp)
