    80009000:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:31907
    if (idx < 4) {
    80009002:	470d                	li	a4,3
quickjs-nuttx/quickjs.c:31905
{
    80009004:	84aa                	mv	s1,a0
    80009006:	87ae                	mv	a5,a1
    80009008:	8432                	mv	s0,a2
quickjs-nuttx/quickjs.c:31907
    if (idx < 4) {
    8000900a:	08c74163          	blt	a4,a2,8000908c <put_short_code+0x92>
quickjs-nuttx/quickjs.c:31908
        switch (op) {
    8000900e:	02200713          	li	a4,34
    80009012:	06e58863          	beq	a1,a4,80009082 <put_short_code+0x88>
    80009016:	fa85871b          	addiw	a4,a1,-88
    8000901a:	0007061b          	sext.w	a2,a4
    8000901e:	46a1                	li	a3,8
    80009020:	06c6ea63          	bltu	a3,a2,80009094 <put_short_code+0x9a>
    80009024:	02071793          	slli	a5,a4,0x20
    80009028:	01e7d713          	srli	a4,a5,0x1e
    8000902c:	00060697          	auipc	a3,0x60
    80009030:	67868693          	addi	a3,a3,1656 # 800696a4 <qjsc_repl+0x40f4>
    80009034:	9736                	add	a4,a4,a3
    80009036:	431c                	lw	a5,0(a4)
    80009038:	97b6                	add	a5,a5,a3
    8000903a:	8782                	jr	a5
quickjs-nuttx/quickjs.c:31910
            dbuf_putc(bc_out, OP_get_loc0 + idx);
    8000903c:	fc74059b          	addiw	a1,s0,-57
quickjs-nuttx/quickjs.c:31913
            dbuf_putc(bc_out, OP_put_loc0 + idx);
    80009040:	0ff5f593          	zext.b	a1,a1
    80009044:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:31960
}
    80009046:	6442                	ld	s0,16(sp)
    80009048:	60e2                	ld	ra,24(sp)
    8000904a:	64a2                	ld	s1,8(sp)
    8000904c:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:31913
            dbuf_putc(bc_out, OP_put_loc0 + idx);
    8000904e:	2954806f          	j	80051ae2 <dbuf_putc>
    80009052:	fcb4059b          	addiw	a1,s0,-53
    80009056:	b7ed                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31916
            dbuf_putc(bc_out, OP_set_loc0 + idx);
    80009058:	fcf4059b          	addiw	a1,s0,-49
    8000905c:	b7d5                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31919
            dbuf_putc(bc_out, OP_get_arg0 + idx);
    8000905e:	fd34059b          	addiw	a1,s0,-45
    80009062:	bff9                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31922
            dbuf_putc(bc_out, OP_put_arg0 + idx);
    80009064:	fd74059b          	addiw	a1,s0,-41
    80009068:	bfe1                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31925
            dbuf_putc(bc_out, OP_set_arg0 + idx);
    8000906a:	fdb4059b          	addiw	a1,s0,-37
    8000906e:	bfc9                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31928
            dbuf_putc(bc_out, OP_get_var_ref0 + idx);
    80009070:	fdf4059b          	addiw	a1,s0,-33
    80009074:	b7f1                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31931
            dbuf_putc(bc_out, OP_put_var_ref0 + idx);
    80009076:	fe34059b          	addiw	a1,s0,-29
    8000907a:	b7d9                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31934
            dbuf_putc(bc_out, OP_set_var_ref0 + idx);
    8000907c:	fe74059b          	addiw	a1,s0,-25
    80009080:	b7c1                	j	80009040 <put_short_code+0x46>
quickjs-nuttx/quickjs.c:31937
            dbuf_putc(bc_out, OP_call0 + idx);
    80009082:	ff06059b          	addiw	a1,a2,-16
    80009086:	0ff5f593          	zext.b	a1,a1
    8000908a:	bf75                	j	80009046 <put_short_code+0x4c>
quickjs-nuttx/quickjs.c:31941
    if (idx < 256) {
    8000908c:	0ff00713          	li	a4,255
    80009090:	02c74063          	blt	a4,a2,800090b0 <put_short_code+0xb6>
quickjs-nuttx/quickjs.c:31942
        switch (op) {
    80009094:	05900713          	li	a4,89
    80009098:	02e78a63          	beq	a5,a4,800090cc <put_short_code+0xd2>
    8000909c:	05a00713          	li	a4,90
    800090a0:	02e78e63          	beq	a5,a4,800090dc <put_short_code+0xe2>
    800090a4:	05800713          	li	a4,88
quickjs-nuttx/quickjs.c:31944
            dbuf_putc(bc_out, OP_get_loc8);
    800090a8:	0c400593          	li	a1,196
quickjs-nuttx/quickjs.c:31942
        switch (op) {
    800090ac:	02e78263          	beq	a5,a4,800090d0 <put_short_code+0xd6>
quickjs-nuttx/quickjs.c:31958
    dbuf_putc(bc_out, op);
    800090b0:	0ff7f593          	zext.b	a1,a5
    800090b4:	8526                	mv	a0,s1
    800090b6:	22d480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31959
    dbuf_put_u16(bc_out, idx);
    800090ba:	03041593          	slli	a1,s0,0x30
quickjs-nuttx/quickjs.c:31960
}
    800090be:	6442                	ld	s0,16(sp)
    800090c0:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:31959
    dbuf_put_u16(bc_out, idx);
    800090c2:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:31960
}
    800090c4:	64a2                	ld	s1,8(sp)
quickjs-nuttx/quickjs.c:31959
    dbuf_put_u16(bc_out, idx);
    800090c6:	91c1                	srli	a1,a1,0x30
quickjs-nuttx/quickjs.c:31960
}
    800090c8:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:31959
    dbuf_put_u16(bc_out, idx);
    800090ca:	b5cd                	j	80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:31948
            dbuf_putc(bc_out, OP_put_loc8);
    800090cc:	0c500593          	li	a1,197
quickjs-nuttx/quickjs.c:31952
            dbuf_putc(bc_out, OP_set_loc8);
    800090d0:	8526                	mv	a0,s1
    800090d2:	211480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31953
            dbuf_putc(bc_out, idx);
    800090d6:	0ff47593          	zext.b	a1,s0
    800090da:	b7ad                	j	80009044 <put_short_code+0x4a>
quickjs-nuttx/quickjs.c:31952
            dbuf_putc(bc_out, OP_set_loc8);
    800090dc:	0c600593          	li	a1,198
    800090e0:	bfc5                	j	800090d0 <put_short_code+0xd6>

00000000800090e2 <dbuf_put_u32>:
dbuf_put_u32():
quickjs-nuttx/cutils.h:261
{
    800090e2:	1101                	addi	sp,sp,-32
    800090e4:	c62e                	sw	a1,12(sp)
quickjs-nuttx/cutils.h:262
    return dbuf_put(s, (uint8_t *)&val, 4);
    800090e6:	4611                	li	a2,4
    800090e8:	006c                	addi	a1,sp,12
quickjs-nuttx/cutils.h:261
{
    800090ea:	ec06                	sd	ra,24(sp)
quickjs-nuttx/cutils.h:262
    return dbuf_put(s, (uint8_t *)&val, 4);
    800090ec:	165480ef          	jal	ra,80051a50 <dbuf_put>
quickjs-nuttx/cutils.h:263
}
    800090f0:	60e2                	ld	ra,24(sp)
    800090f2:	6105                	addi	sp,sp,32
    800090f4:	8082                	ret

00000000800090f6 <emit_op>:
emit_op():
quickjs-nuttx/quickjs.c:21466
{
    800090f6:	7179                	addi	sp,sp,-48
    800090f8:	e84a                	sd	s2,16(sp)
    800090fa:	e44e                	sd	s3,8(sp)
    800090fc:	f406                	sd	ra,40(sp)
    800090fe:	f022                	sd	s0,32(sp)
    80009100:	ec26                	sd	s1,24(sp)
quickjs-nuttx/quickjs.c:21467
    JSFunctionDef *fd = s->cur_func;
    80009102:	7524                	ld	s1,104(a0)
quickjs-nuttx/quickjs.c:21473
    if (unlikely(fd->last_opcode_line_num != s->last_line_num)) {
    80009104:	451c                	lw	a5,8(a0)
quickjs-nuttx/quickjs.c:21466
{
    80009106:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:21473
    if (unlikely(fd->last_opcode_line_num != s->last_line_num)) {
    80009108:	1644a703          	lw	a4,356(s1)
quickjs-nuttx/quickjs.c:21468
    DynBuf *bc = &fd->byte_code;
    8000910c:	13048913          	addi	s2,s1,304
quickjs-nuttx/quickjs.c:21473
    if (unlikely(fd->last_opcode_line_num != s->last_line_num)) {
    80009110:	00f70f63          	beq	a4,a5,8000912e <emit_op+0x38>
    80009114:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:21474
        dbuf_putc(bc, OP_line_num);
    80009116:	0c800593          	li	a1,200
    8000911a:	854a                	mv	a0,s2
    8000911c:	1c7480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:21475
        dbuf_put_u32(bc, s->last_line_num);
    80009120:	440c                	lw	a1,8(s0)
    80009122:	854a                	mv	a0,s2
    80009124:	fbfff0ef          	jal	ra,800090e2 <dbuf_put_u32>
quickjs-nuttx/quickjs.c:21476
        fd->last_opcode_line_num = s->last_line_num;
    80009128:	441c                	lw	a5,8(s0)
    8000912a:	16f4a223          	sw	a5,356(s1)
quickjs-nuttx/quickjs.c:21478
    fd->last_opcode_pos = bc->size;
    8000912e:	1384b783          	ld	a5,312(s1)
quickjs-nuttx/quickjs.c:21479
    dbuf_putc(bc, val);
    80009132:	85ce                	mv	a1,s3
    80009134:	854a                	mv	a0,s2
quickjs-nuttx/quickjs.c:21478
    fd->last_opcode_pos = bc->size;
    80009136:	16f4a023          	sw	a5,352(s1)
quickjs-nuttx/quickjs.c:21480
}
    8000913a:	7402                	ld	s0,32(sp)
    8000913c:	70a2                	ld	ra,40(sp)
    8000913e:	64e2                	ld	s1,24(sp)
    80009140:	6942                	ld	s2,16(sp)
    80009142:	69a2                	ld	s3,8(sp)
    80009144:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:21479
    dbuf_putc(bc, val);
    80009146:	19d4806f          	j	80051ae2 <dbuf_putc>

000000008000914a <set_object_name_computed>:
set_object_name_computed():
quickjs-nuttx/quickjs.c:22547
{
    8000914a:	1101                	addi	sp,sp,-32
    8000914c:	e426                	sd	s1,8(sp)
    8000914e:	ec06                	sd	ra,24(sp)
    80009150:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:22548
    JSFunctionDef *fd = s->cur_func;
    80009152:	7520                	ld	s0,104(a0)
quickjs-nuttx/quickjs.c:22547
{
    80009154:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:22551
    opcode = get_prev_opcode(fd);
    80009156:	8522                	mv	a0,s0
    80009158:	dd1fe0ef          	jal	ra,80007f28 <get_prev_opcode>
quickjs-nuttx/quickjs.c:22552
    if (opcode == OP_set_name) {
    8000915c:	04d00793          	li	a5,77
    80009160:	02f51163          	bne	a0,a5,80009182 <set_object_name_computed+0x38>
quickjs-nuttx/quickjs.c:22554
        fd->byte_code.size = fd->last_opcode_pos;
    80009164:	16042783          	lw	a5,352(s0)
quickjs-nuttx/quickjs.c:22556
        emit_op(s, OP_set_name_computed);
    80009168:	8526                	mv	a0,s1
    8000916a:	04e00593          	li	a1,78
quickjs-nuttx/quickjs.c:22554
        fd->byte_code.size = fd->last_opcode_pos;
    8000916e:	12f43c23          	sd	a5,312(s0)
quickjs-nuttx/quickjs.c:22555
        fd->last_opcode_pos = -1;
    80009172:	57fd                	li	a5,-1
    80009174:	16f42023          	sw	a5,352(s0)
quickjs-nuttx/quickjs.c:22565
}
    80009178:	6442                	ld	s0,16(sp)
    8000917a:	60e2                	ld	ra,24(sp)
    8000917c:	64a2                	ld	s1,8(sp)
    8000917e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:22556
        emit_op(s, OP_set_name_computed);
    80009180:	bf9d                	j	800090f6 <emit_op>
quickjs-nuttx/quickjs.c:22557
    } else if (opcode == OP_set_class_name) {
    80009182:	0c700793          	li	a5,199
    80009186:	06f51163          	bne	a0,a5,800091e8 <set_object_name_computed+0x9e>
quickjs-nuttx/quickjs.c:22560
            get_u32(fd->byte_code.buf + fd->last_opcode_pos + 1);
    8000918a:	13043703          	ld	a4,304(s0)
quickjs-nuttx/quickjs.c:22559
        define_class_pos = fd->last_opcode_pos + 1 -
    8000918e:	16042783          	lw	a5,352(s0)
    80009192:	0017859b          	addiw	a1,a5,1
get_u32():
quickjs-nuttx/cutils.h:170
    return ((const struct packed_u32 *)tab)->v;
    80009196:	97ba                	add	a5,a5,a4
    80009198:	0027c683          	lbu	a3,2(a5)
    8000919c:	0017c603          	lbu	a2,1(a5)
    800091a0:	06a2                	slli	a3,a3,0x8
    800091a2:	8e55                	or	a2,a2,a3
    800091a4:	0037c683          	lbu	a3,3(a5)
    800091a8:	0047c783          	lbu	a5,4(a5)
    800091ac:	06c2                	slli	a3,a3,0x10
    800091ae:	8ed1                	or	a3,a3,a2
    800091b0:	07e2                	slli	a5,a5,0x18
    800091b2:	8fd5                	or	a5,a5,a3
set_object_name_computed():
quickjs-nuttx/quickjs.c:22561
        assert(fd->byte_code.buf[define_class_pos] == OP_define_class);
    800091b4:	40f587bb          	subw	a5,a1,a5
    800091b8:	97ba                	add	a5,a5,a4
    800091ba:	0007c683          	lbu	a3,0(a5)
    800091be:	05600713          	li	a4,86
    800091c2:	00e68c63          	beq	a3,a4,800091da <set_object_name_computed+0x90>
quickjs-nuttx/quickjs.c:22561 (discriminator 1)
    800091c6:	6599                	lui	a1,0x6
    800091c8:	4601                	li	a2,0
    800091ca:	82158593          	addi	a1,a1,-2015 # 5821 <asinh-0x7fffa7df>
    800091ce:	00060517          	auipc	a0,0x60
    800091d2:	3ca50513          	addi	a0,a0,970 # 80069598 <qjsc_repl+0x3fe8>
    800091d6:	786570ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:22562 (discriminator 2)
        fd->byte_code.buf[define_class_pos] = OP_define_class_computed;
    800091da:	05700713          	li	a4,87
    800091de:	00e78023          	sb	a4,0(a5)
quickjs-nuttx/quickjs.c:22563 (discriminator 2)
        fd->last_opcode_pos = -1;
    800091e2:	57fd                	li	a5,-1
    800091e4:	16f42023          	sw	a5,352(s0)
quickjs-nuttx/quickjs.c:22565
}
    800091e8:	60e2                	ld	ra,24(sp)
    800091ea:	6442                	ld	s0,16(sp)
    800091ec:	64a2                	ld	s1,8(sp)
    800091ee:	6105                	addi	sp,sp,32
    800091f0:	8082                	ret

00000000800091f2 <pop_scope>:
pop_scope():
quickjs-nuttx/quickjs.c:21748
static void pop_scope(JSParseState *s) {
    800091f2:	1101                	addi	sp,sp,-32
    800091f4:	ec06                	sd	ra,24(sp)
    800091f6:	e822                	sd	s0,16(sp)
    800091f8:	e426                	sd	s1,8(sp)
    800091fa:	e04a                	sd	s2,0(sp)
quickjs-nuttx/quickjs.c:21749
    if (s->cur_func) {
    800091fc:	7524                	ld	s1,104(a0)
    800091fe:	c88d                	beqz	s1,80009230 <pop_scope+0x3e>
quickjs-nuttx/quickjs.c:21752
        int scope = fd->scope_level;
    80009200:	0e04a403          	lw	s0,224(s1)
quickjs-nuttx/quickjs.c:21753
        emit_op(s, OP_leave_scope);
    80009204:	0b700593          	li	a1,183
    80009208:	892a                	mv	s2,a0
    8000920a:	eedff0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:21754
        emit_u16(s, scope);
    8000920e:	03041593          	slli	a1,s0,0x30
    80009212:	91c1                	srli	a1,a1,0x30
    80009214:	854a                	mv	a0,s2
    80009216:	dafff0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:21755
        fd->scope_level = fd->scopes[scope].parent;
    8000921a:	78f4                	ld	a3,240(s1)
    8000921c:	040e                	slli	s0,s0,0x3
    8000921e:	9436                	add	s0,s0,a3
    80009220:	401c                	lw	a5,0(s0)
    80009222:	0ef4a023          	sw	a5,224(s1)
get_first_lexical_var():
quickjs-nuttx/quickjs.c:21739
    while (scope >= 0) {
    80009226:	0007db63          	bgez	a5,8000923c <pop_scope+0x4a>
quickjs-nuttx/quickjs.c:21745
    return -1;
    8000922a:	577d                	li	a4,-1
pop_scope():
quickjs-nuttx/quickjs.c:21756
        fd->scope_first = get_first_lexical_var(fd, fd->scope_level);
    8000922c:	0ee4a223          	sw	a4,228(s1)
quickjs-nuttx/quickjs.c:21758
}
    80009230:	60e2                	ld	ra,24(sp)
    80009232:	6442                	ld	s0,16(sp)
    80009234:	64a2                	ld	s1,8(sp)
    80009236:	6902                	ld	s2,0(sp)
    80009238:	6105                	addi	sp,sp,32
    8000923a:	8082                	ret
get_first_lexical_var():
quickjs-nuttx/quickjs.c:21740
        int scope_idx = fd->scopes[scope].first;
    8000923c:	078e                	slli	a5,a5,0x3
    8000923e:	97b6                	add	a5,a5,a3
    80009240:	43d8                	lw	a4,4(a5)
quickjs-nuttx/quickjs.c:21741
        if (scope_idx >= 0)
    80009242:	fe0755e3          	bgez	a4,8000922c <pop_scope+0x3a>
quickjs-nuttx/quickjs.c:21743
        scope = fd->scopes[scope].parent;
    80009246:	439c                	lw	a5,0(a5)
    80009248:	bff9                	j	80009226 <pop_scope+0x34>

000000008000924a <close_scopes>:
close_scopes():
quickjs-nuttx/quickjs.c:21761
{
    8000924a:	1101                	addi	sp,sp,-32
    8000924c:	e822                	sd	s0,16(sp)
    8000924e:	e426                	sd	s1,8(sp)
    80009250:	e04a                	sd	s2,0(sp)
    80009252:	ec06                	sd	ra,24(sp)
    80009254:	84aa                	mv	s1,a0
    80009256:	842e                	mv	s0,a1
    80009258:	8932                	mv	s2,a2
quickjs-nuttx/quickjs.c:21762
    while (scope > scope_stop) {
    8000925a:	00894863          	blt	s2,s0,8000926a <close_scopes+0x20>
quickjs-nuttx/quickjs.c:21767
}
    8000925e:	60e2                	ld	ra,24(sp)
    80009260:	6442                	ld	s0,16(sp)
    80009262:	64a2                	ld	s1,8(sp)
    80009264:	6902                	ld	s2,0(sp)
    80009266:	6105                	addi	sp,sp,32
    80009268:	8082                	ret
quickjs-nuttx/quickjs.c:21763
        emit_op(s, OP_leave_scope);
    8000926a:	0b700593          	li	a1,183
    8000926e:	8526                	mv	a0,s1
    80009270:	e87ff0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:21764
        emit_u16(s, scope);
    80009274:	03041593          	slli	a1,s0,0x30
    80009278:	91c1                	srli	a1,a1,0x30
    8000927a:	8526                	mv	a0,s1
    8000927c:	d49ff0ef          	jal	ra,80008fc4 <emit_u16>
quickjs-nuttx/quickjs.c:21765
        scope = s->cur_func->scopes[scope].parent;
    80009280:	74bc                	ld	a5,104(s1)
    80009282:	040e                	slli	s0,s0,0x3
    80009284:	7bec                	ld	a1,240(a5)
    80009286:	942e                	add	s0,s0,a1
    80009288:	4000                	lw	s0,0(s0)
    8000928a:	bfc1                	j	8000925a <close_scopes+0x10>

000000008000928c <emit_u32>:
emit_u32():
quickjs-nuttx/quickjs.c:21462
    dbuf_put_u32(&s->cur_func->byte_code, val);
    8000928c:	7528                	ld	a0,104(a0)
    8000928e:	13050513          	addi	a0,a0,304
    80009292:	bd81                	j	800090e2 <dbuf_put_u32>

0000000080009294 <emit_label>:
emit_label():
quickjs-nuttx/quickjs.c:21534
    if (label >= 0) {
    80009294:	0405c363          	bltz	a1,800092da <emit_label+0x46>
quickjs-nuttx/quickjs.c:21533
{
    80009298:	1101                	addi	sp,sp,-32
    8000929a:	e822                	sd	s0,16(sp)
    8000929c:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:21535
        emit_op(s, OP_label);
    8000929e:	0b800593          	li	a1,184
quickjs-nuttx/quickjs.c:21533
{
    800092a2:	ec06                	sd	ra,24(sp)
    800092a4:	e426                	sd	s1,8(sp)
    800092a6:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:21535
        emit_op(s, OP_label);
    800092a8:	e4fff0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:21536
        emit_u32(s, label);
    800092ac:	85a2                	mv	a1,s0
    800092ae:	8526                	mv	a0,s1
    800092b0:	fddff0ef          	jal	ra,8000928c <emit_u32>
quickjs-nuttx/quickjs.c:21537
        s->cur_func->label_slots[label].pos = s->cur_func->byte_code.size;
    800092b4:	45e1                	li	a1,24
    800092b6:	02b40433          	mul	s0,s0,a1
    800092ba:	74b8                	ld	a4,104(s1)
    800092bc:	17073783          	ld	a5,368(a4)
    800092c0:	943e                	add	s0,s0,a5
    800092c2:	13873783          	ld	a5,312(a4)
    800092c6:	c05c                	sw	a5,4(s0)
quickjs-nuttx/quickjs.c:21538
        return s->cur_func->byte_code.size - 4;
    800092c8:	74bc                	ld	a5,104(s1)
quickjs-nuttx/quickjs.c:21542
}
    800092ca:	60e2                	ld	ra,24(sp)
    800092cc:	6442                	ld	s0,16(sp)
quickjs-nuttx/quickjs.c:21538
        return s->cur_func->byte_code.size - 4;
    800092ce:	1387b503          	ld	a0,312(a5)
quickjs-nuttx/quickjs.c:21542
}
    800092d2:	64a2                	ld	s1,8(sp)
quickjs-nuttx/quickjs.c:21538
        return s->cur_func->byte_code.size - 4;
    800092d4:	3571                	addiw	a0,a0,-4
quickjs-nuttx/quickjs.c:21542
}
    800092d6:	6105                	addi	sp,sp,32
    800092d8:	8082                	ret
quickjs-nuttx/quickjs.c:21540
        return -1;
    800092da:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:21542
}
    800092dc:	8082                	ret

00000000800092de <push_short_int>:
push_short_int():
quickjs-nuttx/quickjs.c:31886
        dbuf_putc(bc_out, OP_push_0 + val);
    800092de:	0185979b          	slliw	a5,a1,0x18
quickjs-nuttx/quickjs.c:31885
    if (val >= -1 && val <= 7) {
    800092e2:	0015869b          	addiw	a3,a1,1
    800092e6:	4721                	li	a4,8
quickjs-nuttx/quickjs.c:31886
        dbuf_putc(bc_out, OP_push_0 + val);
    800092e8:	4187d79b          	sraiw	a5,a5,0x18
quickjs-nuttx/quickjs.c:31885
    if (val >= -1 && val <= 7) {
    800092ec:	00d76863          	bltu	a4,a3,800092fc <push_short_int+0x1e>
quickjs-nuttx/quickjs.c:31886
        dbuf_putc(bc_out, OP_push_0 + val);
    800092f0:	fb77859b          	addiw	a1,a5,-73
    800092f4:	0ff5f593          	zext.b	a1,a1
quickjs-nuttx/quickjs.c:31891
        dbuf_putc(bc_out, val);
    800092f8:	7ea4806f          	j	80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31883
{
    800092fc:	1101                	addi	sp,sp,-32
    800092fe:	e822                	sd	s0,16(sp)
    80009300:	e426                	sd	s1,8(sp)
    80009302:	ec06                	sd	ra,24(sp)
    80009304:	e04a                	sd	s2,0(sp)
    80009306:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:31889
    if (val == (int8_t)val) {
    80009308:	0007849b          	sext.w	s1,a5
    8000930c:	00b79f63          	bne	a5,a1,8000932a <push_short_int+0x4c>
quickjs-nuttx/quickjs.c:31890
        dbuf_putc(bc_out, OP_push_i8);
    80009310:	0bf00593          	li	a1,191
    80009314:	7ce480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31891
        dbuf_putc(bc_out, val);
    80009318:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:31902
}
    8000931a:	6442                	ld	s0,16(sp)
    8000931c:	60e2                	ld	ra,24(sp)
    8000931e:	6902                	ld	s2,0(sp)
quickjs-nuttx/quickjs.c:31891
        dbuf_putc(bc_out, val);
    80009320:	0ff4f593          	zext.b	a1,s1
quickjs-nuttx/quickjs.c:31902
}
    80009324:	64a2                	ld	s1,8(sp)
    80009326:	6105                	addi	sp,sp,32
    80009328:	bfc1                	j	800092f8 <push_short_int+0x1a>
quickjs-nuttx/quickjs.c:31894
    if (val == (int16_t)val) {
    8000932a:	0105949b          	slliw	s1,a1,0x10
    8000932e:	4104d49b          	sraiw	s1,s1,0x10
    80009332:	02b49163          	bne	s1,a1,80009354 <push_short_int+0x76>
quickjs-nuttx/quickjs.c:31895
        dbuf_putc(bc_out, OP_push_i16);
    80009336:	0c000593          	li	a1,192
    8000933a:	7a8480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31896
        dbuf_put_u16(bc_out, val);
    8000933e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:31902
}
    80009340:	6442                	ld	s0,16(sp)
    80009342:	60e2                	ld	ra,24(sp)
    80009344:	6902                	ld	s2,0(sp)
quickjs-nuttx/quickjs.c:31896
        dbuf_put_u16(bc_out, val);
    80009346:	03049593          	slli	a1,s1,0x30
quickjs-nuttx/quickjs.c:31902
}
    8000934a:	64a2                	ld	s1,8(sp)
quickjs-nuttx/quickjs.c:31896
        dbuf_put_u16(bc_out, val);
    8000934c:	91c1                	srli	a1,a1,0x30
quickjs-nuttx/quickjs.c:31902
}
    8000934e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:31896
        dbuf_put_u16(bc_out, val);
    80009350:	c5dff06f          	j	80008fac <dbuf_put_u16>
    80009354:	0005891b          	sext.w	s2,a1
quickjs-nuttx/quickjs.c:31900
    dbuf_putc(bc_out, OP_push_i32);
    80009358:	4585                	li	a1,1
    8000935a:	788480ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:31901
    dbuf_put_u32(bc_out, val);
    8000935e:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:31902
}
    80009360:	6442                	ld	s0,16(sp)
    80009362:	60e2                	ld	ra,24(sp)
    80009364:	64a2                	ld	s1,8(sp)
quickjs-nuttx/quickjs.c:31901
    dbuf_put_u32(bc_out, val);
    80009366:	85ca                	mv	a1,s2
quickjs-nuttx/quickjs.c:31902
}
    80009368:	6902                	ld	s2,0(sp)
    8000936a:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:31901
    dbuf_put_u32(bc_out, val);
    8000936c:	d77ff06f          	j	800090e2 <dbuf_put_u32>

0000000080009370 <getTimezoneOffset>:
getTimezoneOffset():
quickjs-nuttx/quickjs.c:43192
{
    80009370:	715d                	addi	sp,sp,-80
    80009372:	e486                	sd	ra,72(sp)
quickjs-nuttx/quickjs.c:43210
            if (time < 0) {
    80009374:	c1900713          	li	a4,-999
quickjs-nuttx/quickjs.c:43211
                time = 0;
    80009378:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:43210
            if (time < 0) {
    8000937a:	00e54b63          	blt	a0,a4,80009390 <getTimezoneOffset+0x20>
quickjs-nuttx/quickjs.c:43212
            } else if (time > UINT32_MAX) {
    8000937e:	07d00793          	li	a5,125
    80009382:	178e                	slli	a5,a5,0x23
    80009384:	02f55663          	bge	a0,a5,800093b0 <getTimezoneOffset+0x40>
quickjs-nuttx/quickjs.c:43196
    time /= 1000; /* convert to seconds */
    80009388:	3e800793          	li	a5,1000
    8000938c:	02f547b3          	div	a5,a0,a5
quickjs-nuttx/quickjs.c:43234
        localtime_r(&ti, &tm);
    80009390:	002c                	addi	a1,sp,8
    80009392:	0048                	addi	a0,sp,4
quickjs-nuttx/quickjs.c:43217
    ti = time;
    80009394:	c23e                	sw	a5,4(sp)
quickjs-nuttx/quickjs.c:43234
        localtime_r(&ti, &tm);
    80009396:	4535a0ef          	jal	ra,80063fe8 <localtime_r>
quickjs-nuttx/quickjs.c:43235
        res = -tm.tm_gmtoff / 60;
    8000939a:	7542                	ld	a0,48(sp)
    8000939c:	03c00793          	li	a5,60
quickjs-nuttx/quickjs.c:43239
}
    800093a0:	60a6                	ld	ra,72(sp)
quickjs-nuttx/quickjs.c:43235
        res = -tm.tm_gmtoff / 60;
    800093a2:	40a00533          	neg	a0,a0
quickjs-nuttx/quickjs.c:43239
}
    800093a6:	6161                	addi	sp,sp,80
quickjs-nuttx/quickjs.c:43235
        res = -tm.tm_gmtoff / 60;
    800093a8:	02f54533          	div	a0,a0,a5
quickjs-nuttx/quickjs.c:43239
}
    800093ac:	2501                	sext.w	a0,a0
    800093ae:	8082                	ret
quickjs-nuttx/quickjs.c:43213
                time = UINT32_MAX;
    800093b0:	57fd                	li	a5,-1
    800093b2:	9381                	srli	a5,a5,0x20
    800093b4:	bff1                	j	80009390 <getTimezoneOffset+0x20>

00000000800093b6 <date_now>:
date_now():
quickjs-nuttx/quickjs.c:49624
static int64_t date_now(void) {
    800093b6:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:49626
    gettimeofday(&tv, NULL);
    800093b8:	850a                	mv	a0,sp
    800093ba:	4581                	li	a1,0
quickjs-nuttx/quickjs.c:49624
static int64_t date_now(void) {
    800093bc:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:49626
    gettimeofday(&tv, NULL);
    800093be:	2675a0ef          	jal	ra,80063e24 <gettimeofday>
quickjs-nuttx/quickjs.c:49627
    return (int64_t)tv.tv_sec * 1000 + (tv.tv_usec / 1000);
    800093c2:	67a2                	ld	a5,8(sp)
    800093c4:	3e800713          	li	a4,1000
    800093c8:	00016503          	lwu	a0,0(sp)
    800093cc:	02e7c7b3          	div	a5,a5,a4
quickjs-nuttx/quickjs.c:49628
}
    800093d0:	60e2                	ld	ra,24(sp)
    800093d2:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:49627
    return (int64_t)tv.tv_sec * 1000 + (tv.tv_usec / 1000);
    800093d4:	02e50533          	mul	a0,a0,a4
quickjs-nuttx/quickjs.c:49628
}
    800093d8:	953e                	add	a0,a0,a5
    800093da:	8082                	ret

00000000800093dc <js_Date_now>:
js_Date_now():
quickjs-nuttx/quickjs.c:50024
{
    800093dc:	7139                	addi	sp,sp,-64
    800093de:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:50026
    return JS_NewInt64(ctx, date_now());
    800093e0:	fd7ff0ef          	jal	ra,800093b6 <date_now>
JS_NewInt64():
quickjs-nuttx/quickjs.h:526
    if (val == (int32_t)val) {
    800093e4:	0005079b          	sext.w	a5,a0
    800093e8:	00f51c63          	bne	a0,a5,80009400 <js_Date_now+0x24>
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    800093ec:	d202                	sw	zero,36(sp)
    800093ee:	d03e                	sw	a5,32(sp)
    800093f0:	7702                	ld	a4,32(sp)
    800093f2:	4581                	li	a1,0
    800093f4:	e83a                	sd	a4,16(sp)
js_Date_now():
quickjs-nuttx/quickjs.c:50027
}
    800093f6:	70e2                	ld	ra,56(sp)
JS_NewInt64():
quickjs-nuttx/quickjs.h:531
    return v;
    800093f8:	c83e                	sw	a5,16(sp)
js_Date_now():
quickjs-nuttx/quickjs.c:50027
    800093fa:	6542                	ld	a0,16(sp)
    800093fc:	6121                	addi	sp,sp,64
    800093fe:	8082                	ret
JS_NewInt64():
quickjs-nuttx/quickjs.h:529
        v = __JS_NewFloat64(ctx, val);
    80009400:	d22577d3          	fcvt.d.l	fa5,a0
    80009404:	459d                	li	a1,7
    80009406:	e20787d3          	fmv.x.d	a5,fa5
js_Date_now():
quickjs-nuttx/quickjs.h:230
    return v;
    8000940a:	a83e                	fsd	fa5,16(sp)
    8000940c:	2781                	sext.w	a5,a5
    8000940e:	b7e5                	j	800093f6 <js_Date_now+0x1a>

0000000080009410 <js_class_has_bytecode>:
js_class_has_bytecode():
quickjs-nuttx/quickjs.c:4953
            class_id == JS_CLASS_ASYNC_FUNCTION ||
    80009410:	ff35079b          	addiw	a5,a0,-13
    80009414:	02b00713          	li	a4,43
    80009418:	4505                	li	a0,1
    8000941a:	00f76a63          	bltu	a4,a5,8000942e <js_class_has_bytecode+0x1e>
    8000941e:	4545                	li	a0,17
    80009420:	151e                	slli	a0,a0,0x27
    80009422:	0525                	addi	a0,a0,9
    80009424:	00f55533          	srl	a0,a0,a5
    80009428:	fff54513          	not	a0,a0
    8000942c:	8905                	andi	a0,a0,1
quickjs-nuttx/quickjs.c:4955
}
    8000942e:	00154513          	xori	a0,a0,1
    80009432:	8082                	ret

0000000080009434 <JS_GetFunctionBytecode>:
JS_GetFunctionBytecode():
quickjs-nuttx/quickjs.c:4959
{
    80009434:	1101                	addi	sp,sp,-32
    80009436:	e42e                	sd	a1,8(sp)
    80009438:	ec06                	sd	ra,24(sp)
    8000943a:	e822                	sd	s0,16(sp)
    8000943c:	e02a                	sd	a0,0(sp)
quickjs-nuttx/quickjs.c:4961
    if (JS_VALUE_GET_TAG(val) != JS_TAG_OBJECT)
    8000943e:	2581                	sext.w	a1,a1
    80009440:	57fd                	li	a5,-1
    80009442:	00f59f63          	bne	a1,a5,80009460 <JS_GetFunctionBytecode+0x2c>
quickjs-nuttx/quickjs.c:4963
    p = JS_VALUE_GET_OBJ(val);
    80009446:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:4964
    if (!js_class_has_bytecode(p->class_id))
    80009448:	00655503          	lhu	a0,6(a0)
    8000944c:	fc5ff0ef          	jal	ra,80009410 <js_class_has_bytecode>
quickjs-nuttx/quickjs.c:4962
        return NULL;
    80009450:	4781                	li	a5,0
quickjs-nuttx/quickjs.c:4964
    if (!js_class_has_bytecode(p->class_id))
    80009452:	c111                	beqz	a0,80009456 <JS_GetFunctionBytecode+0x22>
quickjs-nuttx/quickjs.c:4966
    return p->u.func.function_bytecode;
    80009454:	781c                	ld	a5,48(s0)
quickjs-nuttx/quickjs.c:4967
}
    80009456:	60e2                	ld	ra,24(sp)
    80009458:	6442                	ld	s0,16(sp)
    8000945a:	853e                	mv	a0,a5
    8000945c:	6105                	addi	sp,sp,32
    8000945e:	8082                	ret
quickjs-nuttx/quickjs.c:4962
        return NULL;
    80009460:	4781                	li	a5,0
    80009462:	bfd5                	j	80009456 <JS_GetFunctionBytecode+0x22>

0000000080009464 <js_function_proto_lineNumber>:
js_function_proto_lineNumber():
quickjs-nuttx/quickjs.c:14688
{
    80009464:	7139                	addi	sp,sp,-64
    80009466:	e02e                	sd	a1,0(sp)
quickjs-nuttx/quickjs.c:14689
    JSFunctionBytecode *b = JS_GetFunctionBytecode(this_val);
    80009468:	852e                	mv	a0,a1
    8000946a:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:14688
{
    8000946c:	fc06                	sd	ra,56(sp)
    8000946e:	e432                	sd	a2,8(sp)
quickjs-nuttx/quickjs.c:14689
    JSFunctionBytecode *b = JS_GetFunctionBytecode(this_val);
    80009470:	fc5ff0ef          	jal	ra,80009434 <JS_GetFunctionBytecode>
quickjs-nuttx/quickjs.c:14690
    if (b && b->has_debug) {
    80009474:	c105                	beqz	a0,80009494 <js_function_proto_lineNumber+0x30>
quickjs-nuttx/quickjs.c:14690 (discriminator 1)
    80009476:	01a54783          	lbu	a5,26(a0)
    8000947a:	8b91                	andi	a5,a5,4
    8000947c:	cf81                	beqz	a5,80009494 <js_function_proto_lineNumber+0x30>
quickjs-nuttx/quickjs.c:14691
        return JS_NewInt32(ctx, b->debug.line_num);
    8000947e:	517c                	lw	a5,100(a0)
JS_NewInt32():
quickjs-nuttx/quickjs.h:515
    return JS_MKVAL(JS_TAG_INT, val);
    80009480:	d202                	sw	zero,36(sp)
    80009482:	ec02                	sd	zero,24(sp)
    80009484:	d03e                	sw	a5,32(sp)
    80009486:	7782                	ld	a5,32(sp)
    80009488:	e83e                	sd	a5,16(sp)
js_function_proto_lineNumber():
quickjs-nuttx/quickjs.c:14694
}
    8000948a:	70e2                	ld	ra,56(sp)
    8000948c:	6542                	ld	a0,16(sp)
    8000948e:	65e2                	ld	a1,24(sp)
    80009490:	6121                	addi	sp,sp,64
    80009492:	8082                	ret
quickjs-nuttx/quickjs.c:14693
    return JS_UNDEFINED;
    80009494:	478d                	li	a5,3
    80009496:	e802                	sd	zero,16(sp)
    80009498:	ec3e                	sd	a5,24(sp)
    8000949a:	bfc5                	j	8000948a <js_function_proto_lineNumber+0x26>

000000008000949c <gc_scan_incref_child>:
gc_scan_incref_child():
quickjs-nuttx/quickjs.c:5750
    p->ref_count++;
    8000949c:	419c                	lw	a5,0(a1)
quickjs-nuttx/quickjs.c:5749
{
    8000949e:	1101                	addi	sp,sp,-32
    800094a0:	e822                	sd	s0,16(sp)
quickjs-nuttx/quickjs.c:5750
    p->ref_count++;
    800094a2:	0017871b          	addiw	a4,a5,1
quickjs-nuttx/quickjs.c:5749
{
    800094a6:	ec06                	sd	ra,24(sp)
    800094a8:	e426                	sd	s1,8(sp)
    800094aa:	e04a                	sd	s2,0(sp)
quickjs-nuttx/quickjs.c:5750
    p->ref_count++;
    800094ac:	c198                	sw	a4,0(a1)
quickjs-nuttx/quickjs.c:5751
    if (p->ref_count == 1) {
    800094ae:	4785                	li	a5,1
quickjs-nuttx/quickjs.c:5749
{
    800094b0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:5751
    if (p->ref_count == 1) {
    800094b2:	02f71663          	bne	a4,a5,800094de <gc_scan_incref_child+0x42>
quickjs-nuttx/quickjs.c:5754
        list_del(&p->link);
    800094b6:	00858913          	addi	s2,a1,8
    800094ba:	84aa                	mv	s1,a0
    800094bc:	854a                	mv	a0,s2
    800094be:	e86fe0ef          	jal	ra,80007b44 <list_del>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    800094c2:	64dc                	ld	a5,136(s1)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    800094c4:	0127b423          	sd	s2,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    800094c8:	e41c                	sd	a5,8(s0)
gc_scan_incref_child():
quickjs-nuttx/quickjs.c:5755
        list_add_tail(&p->link, &rt->gc_obj_list);
    800094ca:	08848793          	addi	a5,s1,136
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    800094ce:	e81c                	sd	a5,16(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    800094d0:	0924b423          	sd	s2,136(s1)
gc_scan_incref_child():
quickjs-nuttx/quickjs.c:5756
        p->mark = 0; /* reset the mark for the next GC call */
    800094d4:	00444783          	lbu	a5,4(s0)
    800094d8:	8bbd                	andi	a5,a5,15
    800094da:	00f40223          	sb	a5,4(s0)
quickjs-nuttx/quickjs.c:5758
}
    800094de:	60e2                	ld	ra,24(sp)
    800094e0:	6442                	ld	s0,16(sp)
    800094e2:	64a2                	ld	s1,8(sp)
    800094e4:	6902                	ld	s2,0(sp)
    800094e6:	6105                	addi	sp,sp,32
    800094e8:	8082                	ret

00000000800094ea <compute_jsstring_size>:
compute_jsstring_size():
quickjs-nuttx/quickjs.c:5878
    if (!str->atom_type) {  /* atoms are handled separately */
    800094ea:	451c                	lw	a5,8(a0)
    800094ec:	c0000737          	lui	a4,0xc0000
    800094f0:	8ff9                	and	a5,a5,a4
    800094f2:	2781                	sext.w	a5,a5
    800094f4:	ef9d                	bnez	a5,80009532 <compute_jsstring_size+0x48>
quickjs-nuttx/quickjs.c:5879
        double s_ref_count = str->header.ref_count;
    800094f6:	411c                	lw	a5,0(a0)
quickjs-nuttx/quickjs.c:5880
        hp->str_count += 1 / s_ref_count;
    800094f8:	259c                	fld	fa5,8(a1)
quickjs-nuttx/quickjs.c:5879
        double s_ref_count = str->header.ref_count;
    800094fa:	d2078753          	fcvt.d.w	fa4,a5
quickjs-nuttx/quickjs.c:5880
        hp->str_count += 1 / s_ref_count;
    800094fe:	0008a797          	auipc	a5,0x8a
    80009502:	6927b687          	fld	fa3,1682(a5) # 80093b90 <_erodata+0x1e>
    80009506:	1ae6f6d3          	fdiv.d	fa3,fa3,fa4
    8000950a:	02d7f6d3          	fadd.d	fa3,fa5,fa3
    8000950e:	a594                	fsd	fa3,8(a1)
quickjs-nuttx/quickjs.c:5881
        hp->str_size += ((sizeof(*str) + (str->len << str->is_wide_char) +
    80009510:	415c                	lw	a5,4(a0)
    80009512:	01f7d71b          	srliw	a4,a5,0x1f
    80009516:	1786                	slli	a5,a5,0x21
    80009518:	9385                	srli	a5,a5,0x21
    8000951a:	00e797bb          	sllw	a5,a5,a4
quickjs-nuttx/quickjs.c:5882
                          1 - str->is_wide_char) / s_ref_count);
    8000951e:	8f99                	sub	a5,a5,a4
    80009520:	07c5                	addi	a5,a5,17
    80009522:	d237f7d3          	fcvt.d.lu	fa5,a5
    80009526:	1ae7f753          	fdiv.d	fa4,fa5,fa4
quickjs-nuttx/quickjs.c:5881
        hp->str_size += ((sizeof(*str) + (str->len << str->is_wide_char) +
    8000952a:	299c                	fld	fa5,16(a1)
    8000952c:	02e7f7d3          	fadd.d	fa5,fa5,fa4
    80009530:	a99c                	fsd	fa5,16(a1)
quickjs-nuttx/quickjs.c:5884
}
    80009532:	8082                	ret

0000000080009534 <compute_value_size>:
compute_value_size():
quickjs-nuttx/quickjs.c:5927
    switch(JS_VALUE_GET_TAG(val)) {
    80009534:	2581                	sext.w	a1,a1
    80009536:	57e5                	li	a5,-7
quickjs-nuttx/quickjs.c:5926
{
    80009538:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:5927
    switch(JS_VALUE_GET_TAG(val)) {
    8000953a:	00f59563          	bne	a1,a5,80009544 <compute_value_size+0x10>
quickjs-nuttx/quickjs.c:5929
        compute_jsstring_size(JS_VALUE_GET_STRING(val), hp);
    8000953e:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:5939
}
    80009540:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:5929
        compute_jsstring_size(JS_VALUE_GET_STRING(val), hp);
    80009542:	b765                	j	800094ea <compute_jsstring_size>
quickjs-nuttx/quickjs.c:5939
}
    80009544:	0141                	addi	sp,sp,16
    80009546:	8082                	ret

0000000080009548 <check_define_prop_flags>:
check_define_prop_flags():
quickjs-nuttx/quickjs.c:8955
{
    80009548:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:8958
    if (!(prop_flags & JS_PROP_CONFIGURABLE)) {
    8000954a:	8905                	andi	a0,a0,1
    8000954c:	ed11                	bnez	a0,80009568 <check_define_prop_flags+0x20>
quickjs-nuttx/quickjs.c:8959
        if ((flags & (JS_PROP_HAS_CONFIGURABLE | JS_PROP_CONFIGURABLE)) ==
    8000954e:	1015f793          	andi	a5,a1,257
    80009552:	10100693          	li	a3,257
    80009556:	04d78c63          	beq	a5,a3,800095ae <check_define_prop_flags+0x66>
quickjs-nuttx/quickjs.c:8963
        if ((flags & JS_PROP_HAS_ENUMERABLE) &&
    8000955a:	4005f793          	andi	a5,a1,1024
    8000955e:	c789                	beqz	a5,80009568 <check_define_prop_flags+0x20>
quickjs-nuttx/quickjs.c:8964 (discriminator 1)
            (flags & JS_PROP_ENUMERABLE) != (prop_flags & JS_PROP_ENUMERABLE))
    80009560:	00b747b3          	xor	a5,a4,a1
quickjs-nuttx/quickjs.c:8963 (discriminator 1)
        if ((flags & JS_PROP_HAS_ENUMERABLE) &&
    80009564:	8b91                	andi	a5,a5,4
    80009566:	e7a1                	bnez	a5,800095ae <check_define_prop_flags+0x66>
quickjs-nuttx/quickjs.c:8967
    if (flags & (JS_PROP_HAS_VALUE | JS_PROP_HAS_WRITABLE |
    80009568:	6791                	lui	a5,0x4
    8000956a:	a0078793          	addi	a5,a5,-1536 # 3a00 <asinh-0x7fffc600>
    8000956e:	8fed                	and	a5,a5,a1
    80009570:	cf95                	beqz	a5,800095ac <check_define_prop_flags+0x64>
quickjs-nuttx/quickjs.c:8969
        if (!(prop_flags & JS_PROP_CONFIGURABLE)) {
    80009572:	ed15                	bnez	a0,800095ae <check_define_prop_flags+0x66>
quickjs-nuttx/quickjs.c:8970
            has_accessor = ((flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) != 0);
    80009574:	6789                	lui	a5,0x2
    80009576:	80078793          	addi	a5,a5,-2048 # 1800 <asinh-0x7fffe800>
quickjs-nuttx/quickjs.c:8971
            is_getset = ((prop_flags & JS_PROP_TMASK) == JS_PROP_GETSET);
    8000957a:	03077613          	andi	a2,a4,48
quickjs-nuttx/quickjs.c:8970
            has_accessor = ((flags & (JS_PROP_HAS_GET | JS_PROP_HAS_SET)) != 0);
    8000957e:	8fed                	and	a5,a5,a1
quickjs-nuttx/quickjs.c:8971
            is_getset = ((prop_flags & JS_PROP_TMASK) == JS_PROP_GETSET);
    80009580:	ff060693          	addi	a3,a2,-16
quickjs-nuttx/quickjs.c:8972
            if (has_accessor != is_getset)
    80009584:	00f038b3          	snez	a7,a5
    80009588:	0016b693          	seqz	a3,a3
quickjs-nuttx/quickjs.c:8971
            is_getset = ((prop_flags & JS_PROP_TMASK) == JS_PROP_GETSET);
    8000958c:	4841                	li	a6,16
quickjs-nuttx/quickjs.c:8972
            if (has_accessor != is_getset)
    8000958e:	02d89063          	bne	a7,a3,800095ae <check_define_prop_flags+0x66>
quickjs-nuttx/quickjs.c:8982
    return TRUE;
    80009592:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:8974
            if (!has_accessor && !is_getset && !(prop_flags & JS_PROP_WRITABLE)) {
    80009594:	01060d63          	beq	a2,a6,800095ae <check_define_prop_flags+0x66>
    80009598:	8b09                	andi	a4,a4,2
    8000959a:	8fd9                	or	a5,a5,a4
    8000959c:	eb89                	bnez	a5,800095ae <check_define_prop_flags+0x66>
quickjs-nuttx/quickjs.c:8976
                if ((flags & (JS_PROP_HAS_WRITABLE | JS_PROP_WRITABLE)) ==
    8000959e:	2025f593          	andi	a1,a1,514
    800095a2:	dfe58593          	addi	a1,a1,-514
quickjs-nuttx/quickjs.c:8961
            return FALSE;
    800095a6:	00b03533          	snez	a0,a1
    800095aa:	8082                	ret
quickjs-nuttx/quickjs.c:8982
    return TRUE;
    800095ac:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:8983
}
    800095ae:	8082                	ret

00000000800095b0 <tag_is_number>:
tag_is_number():
quickjs-nuttx/quickjs.c:14021
{
    800095b0:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:14025
            || tag == JS_TAG_BIG_FLOAT || tag == JS_TAG_BIG_DECIMAL
    800095b2:	c909                	beqz	a0,800095c4 <tag_is_number+0x14>
quickjs-nuttx/quickjs.c:14022 (discriminator 1)
    return (tag == JS_TAG_INT || tag == JS_TAG_BIG_INT ||
    800095b4:	471d                	li	a4,7
quickjs-nuttx/quickjs.c:14025 (discriminator 1)
            || tag == JS_TAG_BIG_FLOAT || tag == JS_TAG_BIG_DECIMAL
    800095b6:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:14022 (discriminator 1)
    return (tag == JS_TAG_INT || tag == JS_TAG_BIG_INT ||
    800095b8:	00e78763          	beq	a5,a4,800095c6 <tag_is_number+0x16>
quickjs-nuttx/quickjs.c:14025
            || tag == JS_TAG_BIG_FLOAT || tag == JS_TAG_BIG_DECIMAL
    800095bc:	27ad                	addiw	a5,a5,11
    800095be:	0037b513          	sltiu	a0,a5,3
    800095c2:	8082                	ret
    800095c4:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:14028 (discriminator 7)
}
    800095c6:	8082                	ret

00000000800095c8 <is_var_in_arg_scope>:
is_var_in_arg_scope():
quickjs-nuttx/quickjs.c:30810
    return (vd->var_name == JS_ATOM_home_object ||
    800095c8:	4118                	lw	a4,0(a0)
quickjs-nuttx/quickjs.c:30814
            vd->var_name == JS_ATOM__arg_var_ ||
    800095ca:	4689                	li	a3,2
quickjs-nuttx/quickjs.c:30809
{
    800095cc:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:30814
            vd->var_name == JS_ATOM__arg_var_ ||
    800095ce:	f8e7061b          	addiw	a2,a4,-114
    800095d2:	02c6f263          	bgeu	a3,a2,800095f6 <is_var_in_arg_scope+0x2e>
quickjs-nuttx/quickjs.c:30812
            vd->var_name == JS_ATOM_new_target ||
    800095d6:	46a1                	li	a3,8
quickjs-nuttx/quickjs.c:30814
            vd->var_name == JS_ATOM__arg_var_ ||
    800095d8:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:30812
            vd->var_name == JS_ATOM_new_target ||
    800095da:	00d70f63          	beq	a4,a3,800095f8 <is_var_in_arg_scope+0x30>
quickjs-nuttx/quickjs.c:30813
            vd->var_name == JS_ATOM_this ||
    800095de:	05400693          	li	a3,84
    800095e2:	00d70b63          	beq	a4,a3,800095f8 <is_var_in_arg_scope+0x30>
quickjs-nuttx/quickjs.c:30815
            vd->var_kind == JS_VAR_FUNCTION_NAME);
    800095e6:	47c8                	lw	a0,12(a5)
quickjs-nuttx/quickjs.c:30814
            vd->var_name == JS_ATOM__arg_var_ ||
    800095e8:	0f057513          	andi	a0,a0,240
    800095ec:	fc050513          	addi	a0,a0,-64
    800095f0:	00153513          	seqz	a0,a0
    800095f4:	8082                	ret
    800095f6:	4505                	li	a0,1
quickjs-nuttx/quickjs.c:30816 (discriminator 5)
}
    800095f8:	8082                	ret

00000000800095fa <string_advance_index>:
string_advance_index():
quickjs-nuttx/quickjs.c:41547
    if (!unicode || index >= p->len || !p->is_wide_char) {
    800095fa:	ca11                	beqz	a2,8000960e <string_advance_index+0x14>
quickjs-nuttx/quickjs.c:41547 (discriminator 1)
    800095fc:	415c                	lw	a5,4(a0)
    800095fe:	02179713          	slli	a4,a5,0x21
    80009602:	9305                	srli	a4,a4,0x21
    80009604:	00e5d563          	bge	a1,a4,8000960e <string_advance_index+0x14>
quickjs-nuttx/quickjs.c:41547 (discriminator 2)
    80009608:	2781                	sext.w	a5,a5
    8000960a:	0007c563          	bltz	a5,80009614 <string_advance_index+0x1a>
quickjs-nuttx/quickjs.c:41548
        index++;
    8000960e:	00158513          	addi	a0,a1,1
quickjs-nuttx/quickjs.c:41555
}
    80009612:	8082                	ret
quickjs-nuttx/quickjs.c:41546
{
    80009614:	1101                	addi	sp,sp,-32
quickjs-nuttx/quickjs.c:41550
        int index32 = (int)index;
    80009616:	c62e                	sw	a1,12(sp)
quickjs-nuttx/quickjs.c:41551
        string_getc(p, &index32);
    80009618:	006c                	addi	a1,sp,12
quickjs-nuttx/quickjs.c:41546
{
    8000961a:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:41551
        string_getc(p, &index32);
    8000961c:	e62fe0ef          	jal	ra,80007c7e <string_getc>
quickjs-nuttx/quickjs.c:41555
}
    80009620:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:41552
        index = index32;
    80009622:	4532                	lw	a0,12(sp)
quickjs-nuttx/quickjs.c:41555
}
    80009624:	6105                	addi	sp,sp,32
    80009626:	8082                	ret

0000000080009628 <js_string_find_invalid_codepoint.part.0>:
js_string_find_invalid_codepoint():
quickjs-nuttx/quickjs.c:41564
    for(i = 0; i < p->len; i++) {
    80009628:	415c                	lw	a5,4(a0)
quickjs-nuttx/quickjs.c:41566
        if (c >= 0xD800 && c <= 0xDFFF) {
    8000962a:	764d                	lui	a2,0xffff3
quickjs-nuttx/quickjs.c:41567
            if (c >= 0xDC00 || (i + 1) >= p->len)
    8000962c:	65b9                	lui	a1,0xe
quickjs-nuttx/quickjs.c:41564
    for(i = 0; i < p->len; i++) {
    8000962e:	1786                	slli	a5,a5,0x21
quickjs-nuttx/quickjs.c:41570
            if (c < 0xDC00 || c > 0xDFFF)
    80009630:	7849                	lui	a6,0xffff2
quickjs-nuttx/quickjs.c:41559
static int js_string_find_invalid_codepoint(JSString *p)
    80009632:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:41564
    for(i = 0; i < p->len; i++) {
    80009634:	9385                	srli	a5,a5,0x21
    80009636:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:41566
        if (c >= 0xD800 && c <= 0xDFFF) {
    80009638:	8006061b          	addiw	a2,a2,-2048
    8000963c:	7ff00313          	li	t1,2047
quickjs-nuttx/quickjs.c:41567
            if (c >= 0xDC00 || (i + 1) >= p->len)
    80009640:	bff58593          	addi	a1,a1,-1025 # dbff <asinh-0x7fff2401>
quickjs-nuttx/quickjs.c:41570
            if (c < 0xDC00 || c > 0xDFFF)
    80009644:	4008081b          	addiw	a6,a6,1024
    80009648:	3ff00e13          	li	t3,1023
quickjs-nuttx/quickjs.c:41564
    for(i = 0; i < p->len; i++) {
    8000964c:	00f54463          	blt	a0,a5,80009654 <js_string_find_invalid_codepoint.part.0+0x2c>
quickjs-nuttx/quickjs.c:41575
    return -1;
    80009650:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:41576
}
    80009652:	8082                	ret
quickjs-nuttx/quickjs.c:41565
        c = p->u.str16[i];
    80009654:	00850693          	addi	a3,a0,8
    80009658:	0686                	slli	a3,a3,0x1
    8000965a:	96ba                	add	a3,a3,a4
    8000965c:	0006d683          	lhu	a3,0(a3)
quickjs-nuttx/quickjs.c:41566
        if (c >= 0xD800 && c <= 0xDFFF) {
    80009660:	00d608bb          	addw	a7,a2,a3
    80009664:	03136363          	bltu	t1,a7,8000968a <js_string_find_invalid_codepoint.part.0+0x62>
quickjs-nuttx/quickjs.c:41567
            if (c >= 0xDC00 || (i + 1) >= p->len)
    80009668:	fed5e5e3          	bltu	a1,a3,80009652 <js_string_find_invalid_codepoint.part.0+0x2a>
    8000966c:	0015089b          	addiw	a7,a0,1
    80009670:	fef8d1e3          	bge	a7,a5,80009652 <js_string_find_invalid_codepoint.part.0+0x2a>
quickjs-nuttx/quickjs.c:41569
            c = p->u.str16[i + 1];
    80009674:	00888693          	addi	a3,a7,8
    80009678:	0686                	slli	a3,a3,0x1
    8000967a:	96ba                	add	a3,a3,a4
quickjs-nuttx/quickjs.c:41570
            if (c < 0xDC00 || c > 0xDFFF)
    8000967c:	0006d683          	lhu	a3,0(a3)
    80009680:	010686bb          	addw	a3,a3,a6
    80009684:	fcde67e3          	bltu	t3,a3,80009652 <js_string_find_invalid_codepoint.part.0+0x2a>
    80009688:	8546                	mv	a0,a7
quickjs-nuttx/quickjs.c:41564
    for(i = 0; i < p->len; i++) {
    8000968a:	2505                	addiw	a0,a0,1
    8000968c:	b7c1                	j	8000964c <js_string_find_invalid_codepoint.part.0+0x24>

000000008000968e <js_get_atom_index>:
js_get_atom_index():
quickjs-nuttx/quickjs.c:2681
    if (p->atom_type != JS_ATOM_TYPE_SYMBOL) {
    8000968e:	459c                	lw	a5,8(a1)
    80009690:	c00006b7          	lui	a3,0xc0000
    80009694:	c0000637          	lui	a2,0xc0000
    80009698:	8efd                	and	a3,a3,a5
    8000969a:	2681                	sext.w	a3,a3
quickjs-nuttx/quickjs.c:2679
{
    8000969c:	872a                	mv	a4,a0
quickjs-nuttx/quickjs.c:2680
    uint32_t i = p->hash_next;  /* atom_index */
    8000969e:	45c8                	lw	a0,12(a1)
quickjs-nuttx/quickjs.c:2681
    if (p->atom_type != JS_ATOM_TYPE_SYMBOL) {
    800096a0:	02c68463          	beq	a3,a2,800096c8 <js_get_atom_index+0x3a>
quickjs-nuttx/quickjs.c:2684
        i = rt->atom_hash[p->hash & (rt->atom_hash_size - 1)];
    800096a4:	4734                	lw	a3,72(a4)
    800096a6:	178a                	slli	a5,a5,0x22
    800096a8:	9389                	srli	a5,a5,0x22
    800096aa:	36fd                	addiw	a3,a3,-1
    800096ac:	8ff5                	and	a5,a5,a3
    800096ae:	6f34                	ld	a3,88(a4)
    800096b0:	078a                	slli	a5,a5,0x2
quickjs-nuttx/quickjs.c:2685
        p1 = rt->atom_array[i];
    800096b2:	7338                	ld	a4,96(a4)
quickjs-nuttx/quickjs.c:2684
        i = rt->atom_hash[p->hash & (rt->atom_hash_size - 1)];
    800096b4:	97b6                	add	a5,a5,a3
    800096b6:	4388                	lw	a0,0(a5)
quickjs-nuttx/quickjs.c:2689
            p1 = rt->atom_array[i];
    800096b8:	02051693          	slli	a3,a0,0x20
    800096bc:	01d6d793          	srli	a5,a3,0x1d
    800096c0:	97ba                	add	a5,a5,a4
    800096c2:	639c                	ld	a5,0(a5)
quickjs-nuttx/quickjs.c:2686
        while (p1 != p) {
    800096c4:	00f59363          	bne	a1,a5,800096ca <js_get_atom_index+0x3c>
quickjs-nuttx/quickjs.c:2693
}
    800096c8:	8082                	ret
quickjs-nuttx/quickjs.c:2687
            assert(i != 0);
    800096ca:	ed09                	bnez	a0,800096e4 <js_get_atom_index+0x56>
    800096cc:	6585                	lui	a1,0x1
quickjs-nuttx/quickjs.c:2679
{
    800096ce:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:2687
            assert(i != 0);
    800096d0:	4601                	li	a2,0
    800096d2:	a7f58593          	addi	a1,a1,-1409 # a7f <asinh-0x7ffff581>
    800096d6:	00060517          	auipc	a0,0x60
    800096da:	ec250513          	addi	a0,a0,-318 # 80069598 <qjsc_repl+0x3fe8>
quickjs-nuttx/quickjs.c:2679
{
    800096de:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:2687
            assert(i != 0);
    800096e0:	27c570ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:2688
            i = p1->hash_next;
    800096e4:	47c8                	lw	a0,12(a5)
    800096e6:	bfc9                	j	800096b8 <js_get_atom_index+0x2a>

00000000800096e8 <gc_decref_child>:
gc_decref_child():
quickjs-nuttx/quickjs.c:5717
{
    800096e8:	1101                	addi	sp,sp,-32
    800096ea:	ec06                	sd	ra,24(sp)
    800096ec:	e822                	sd	s0,16(sp)
    800096ee:	e426                	sd	s1,8(sp)
    800096f0:	e04a                	sd	s2,0(sp)
quickjs-nuttx/quickjs.c:5718
    assert(p->ref_count > 0);
    800096f2:	419c                	lw	a5,0(a1)
    800096f4:	00f04c63          	bgtz	a5,8000970c <gc_decref_child+0x24>
    800096f8:	6585                	lui	a1,0x1
    800096fa:	4601                	li	a2,0
    800096fc:	65658593          	addi	a1,a1,1622 # 1656 <asinh-0x7fffe9aa>
    80009700:	00060517          	auipc	a0,0x60
    80009704:	e9850513          	addi	a0,a0,-360 # 80069598 <qjsc_repl+0x3fe8>
    80009708:	254570ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:5719 (discriminator 2)
    p->ref_count--;
    8000970c:	37fd                	addiw	a5,a5,-1
    8000970e:	c19c                	sw	a5,0(a1)
quickjs-nuttx/quickjs.c:5720 (discriminator 2)
    if (p->ref_count == 0 && p->mark == 1) {
    80009710:	6198                	ld	a4,0(a1)
    80009712:	0f100793          	li	a5,241
    80009716:	1782                	slli	a5,a5,0x20
    80009718:	17fd                	addi	a5,a5,-1
    8000971a:	8ff9                	and	a5,a5,a4
    8000971c:	4705                	li	a4,1
    8000971e:	1712                	slli	a4,a4,0x24
    80009720:	842e                	mv	s0,a1
    80009722:	02e79163          	bne	a5,a4,80009744 <gc_decref_child+0x5c>
quickjs-nuttx/quickjs.c:5721
        list_del(&p->link);
    80009726:	00858913          	addi	s2,a1,8
    8000972a:	84aa                	mv	s1,a0
    8000972c:	854a                	mv	a0,s2
    8000972e:	c16fe0ef          	jal	ra,80007b44 <list_del>
list_add_tail():
quickjs-nuttx/list.h:66
    __list_add(el, head->prev, head);
    80009732:	74dc                	ld	a5,168(s1)
__list_add():
quickjs-nuttx/list.h:51
    prev->next = el;
    80009734:	0127b423          	sd	s2,8(a5)
quickjs-nuttx/list.h:52
    el->prev = prev;
    80009738:	e41c                	sd	a5,8(s0)
gc_decref_child():
quickjs-nuttx/quickjs.c:5722
        list_add_tail(&p->link, &rt->tmp_obj_list);
    8000973a:	0a848793          	addi	a5,s1,168
__list_add():
quickjs-nuttx/list.h:53
    el->next = next;
    8000973e:	e81c                	sd	a5,16(s0)
quickjs-nuttx/list.h:54
    next->prev = el;
    80009740:	0b24b423          	sd	s2,168(s1)
gc_decref_child():
quickjs-nuttx/quickjs.c:5724
}
    80009744:	60e2                	ld	ra,24(sp)
    80009746:	6442                	ld	s0,16(sp)
    80009748:	64a2                	ld	s1,8(sp)
    8000974a:	6902                	ld	s2,0(sp)
    8000974c:	6105                	addi	sp,sp,32
    8000974e:	8082                	ret

0000000080009750 <update_label>:
update_label():
quickjs-nuttx/quickjs.c:21488
{
    80009750:	1141                	addi	sp,sp,-16
    80009752:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:21491
    assert(label >= 0 && label < s->label_count);
    80009754:	0005c663          	bltz	a1,80009760 <update_label+0x10>
quickjs-nuttx/quickjs.c:21491 (discriminator 2)
    80009758:	17c52783          	lw	a5,380(a0)
    8000975c:	00f5cc63          	blt	a1,a5,80009774 <update_label+0x24>
quickjs-nuttx/quickjs.c:21491 (discriminator 3)
    80009760:	6595                	lui	a1,0x5
    80009762:	4601                	li	a2,0
    80009764:	3f358593          	addi	a1,a1,1011 # 53f3 <asinh-0x7fffac0d>
quickjs-nuttx/quickjs.c:21494
    assert(ls->ref_count >= 0);
    80009768:	00060517          	auipc	a0,0x60
    8000976c:	e3050513          	addi	a0,a0,-464 # 80069598 <qjsc_repl+0x3fe8>
    80009770:	1ec570ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:21492 (discriminator 4)
    ls = &s->label_slots[label];
    80009774:	47e1                	li	a5,24
    80009776:	02f585b3          	mul	a1,a1,a5
    8000977a:	17053783          	ld	a5,368(a0)
    8000977e:	95be                	add	a1,a1,a5
quickjs-nuttx/quickjs.c:21493 (discriminator 4)
    ls->ref_count += delta;
    80009780:	419c                	lw	a5,0(a1)
    80009782:	00c7853b          	addw	a0,a5,a2
    80009786:	c188                	sw	a0,0(a1)
quickjs-nuttx/quickjs.c:21494 (discriminator 4)
    assert(ls->ref_count >= 0);
    80009788:	00055763          	bgez	a0,80009796 <update_label+0x46>
quickjs-nuttx/quickjs.c:21494
    8000978c:	6595                	lui	a1,0x5
    8000978e:	4601                	li	a2,0
    80009790:	3f658593          	addi	a1,a1,1014 # 53f6 <asinh-0x7fffac0a>
    80009794:	bfd1                	j	80009768 <update_label+0x18>
quickjs-nuttx/quickjs.c:21496 (discriminator 2)
}
    80009796:	60a2                	ld	ra,8(sp)
    80009798:	0141                	addi	sp,sp,16
    8000979a:	8082                	ret

000000008000979c <find_jump_target>:
find_jump_target():
quickjs-nuttx/quickjs.c:31843
{
    8000979c:	7179                	addi	sp,sp,-48
    8000979e:	e44e                	sd	s3,8(sp)
    800097a0:	89b2                	mv	s3,a2
quickjs-nuttx/quickjs.c:31846
    update_label(s, label, -1);
    800097a2:	567d                	li	a2,-1
quickjs-nuttx/quickjs.c:31843
{
    800097a4:	f022                	sd	s0,32(sp)
    800097a6:	ec26                	sd	s1,24(sp)
    800097a8:	e84a                	sd	s2,16(sp)
    800097aa:	f406                	sd	ra,40(sp)
    800097ac:	8936                	mv	s2,a3
    800097ae:	84aa                	mv	s1,a0
    800097b0:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:31846
    update_label(s, label, -1);
    800097b2:	f9fff0ef          	jal	ra,80009750 <update_label>
    800097b6:	46a9                	li	a3,10
quickjs-nuttx/quickjs.c:31849
        pos = s->label_slots[label].pos2;
    800097b8:	4561                	li	a0,24
quickjs-nuttx/quickjs.c:31851
            switch(op = s->byte_code.buf[pos]) {
    800097ba:	0b800613          	li	a2,184
    800097be:	0c800893          	li	a7,200
quickjs-nuttx/quickjs.c:31857
                pos += opcode_info[op].size;
    800097c2:	0006b317          	auipc	t1,0x6b
    800097c6:	5ee30313          	addi	t1,t1,1518 # 80074db0 <opcode_info>
quickjs-nuttx/quickjs.c:31851
            switch(op = s->byte_code.buf[pos]) {
    800097ca:	4e39                	li	t3,14
    800097cc:	06c00e93          	li	t4,108
quickjs-nuttx/quickjs.c:31848
        assert(label >= 0 && label < s->label_count);
    800097d0:	00044663          	bltz	s0,800097dc <find_jump_target+0x40>
quickjs-nuttx/quickjs.c:31848 (discriminator 2)
    800097d4:	17c4a783          	lw	a5,380(s1)
    800097d8:	00f44c63          	blt	s0,a5,800097f0 <find_jump_target+0x54>
quickjs-nuttx/quickjs.c:31848 (discriminator 3)
    800097dc:	65a1                	lui	a1,0x8
    800097de:	4601                	li	a2,0
    800097e0:	c6858593          	addi	a1,a1,-920 # 7c68 <asinh-0x7fff8398>
    800097e4:	00060517          	auipc	a0,0x60
    800097e8:	db450513          	addi	a0,a0,-588 # 80069598 <qjsc_repl+0x3fe8>
    800097ec:	170570ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:31849 (discriminator 4)
        pos = s->label_slots[label].pos2;
    800097f0:	02a40733          	mul	a4,s0,a0
    800097f4:	1704b783          	ld	a5,368(s1)
    800097f8:	97ba                	add	a5,a5,a4
    800097fa:	478c                	lw	a1,8(a5)
quickjs-nuttx/quickjs.c:31851
            switch(op = s->byte_code.buf[pos]) {
    800097fc:	1304bf03          	ld	t5,304(s1)
    80009800:	00bf07b3          	add	a5,t5,a1
    80009804:	0007c803          	lbu	a6,0(a5)
    80009808:	0008071b          	sext.w	a4,a6
    8000980c:	06c80e63          	beq	a6,a2,80009888 <find_jump_target+0xec>
    80009810:	05066563          	bltu	a2,a6,8000985a <find_jump_target+0xbe>
    80009814:	03c81263          	bne	a6,t3,80009838 <find_jump_target+0x9c>
quickjs-nuttx/quickjs.c:31864
                while (s->byte_code.buf[++pos] == OP_drop)
    80009818:	4739                	li	a4,14
    8000981a:	2585                	addiw	a1,a1,1
    8000981c:	00bf07b3          	add	a5,t5,a1
    80009820:	0007c783          	lbu	a5,0(a5)
    80009824:	fee78be3          	beq	a5,a4,8000981a <find_jump_target+0x7e>
quickjs-nuttx/quickjs.c:31866
                if (s->byte_code.buf[pos] == OP_return_undef)
    80009828:	02900693          	li	a3,41
quickjs-nuttx/quickjs.c:31851
            switch(op = s->byte_code.buf[pos]) {
    8000982c:	4739                	li	a4,14
quickjs-nuttx/quickjs.c:31866
                if (s->byte_code.buf[pos] == OP_return_undef)
    8000982e:	00d79763          	bne	a5,a3,8000983c <find_jump_target+0xa0>
quickjs-nuttx/quickjs.c:31867
                    op = OP_return_undef;
    80009832:	02900713          	li	a4,41
    80009836:	a019                	j	8000983c <find_jump_target+0xa0>
quickjs-nuttx/quickjs.c:31851
            switch(op = s->byte_code.buf[pos]) {
    80009838:	05d80e63          	beq	a6,t4,80009894 <find_jump_target+0xf8>
quickjs-nuttx/quickjs.c:31877
    *pop = op;
    8000983c:	00e9a023          	sw	a4,0(s3)
quickjs-nuttx/quickjs.c:31878
    update_label(s, label, +1);
    80009840:	85a2                	mv	a1,s0
    80009842:	8526                	mv	a0,s1
    80009844:	4605                	li	a2,1
    80009846:	f0bff0ef          	jal	ra,80009750 <update_label>
quickjs-nuttx/quickjs.c:31880
}
    8000984a:	70a2                	ld	ra,40(sp)
    8000984c:	8522                	mv	a0,s0
    8000984e:	7402                	ld	s0,32(sp)
    80009850:	64e2                	ld	s1,24(sp)
    80009852:	6942                	ld	s2,16(sp)
    80009854:	69a2                	ld	s3,8(sp)
    80009856:	6145                	addi	sp,sp,48
    80009858:	8082                	ret
quickjs-nuttx/quickjs.c:31851
            switch(op = s->byte_code.buf[pos]) {
    8000985a:	ff1811e3          	bne	a6,a7,8000983c <find_jump_target+0xa0>
quickjs-nuttx/quickjs.c:31853
                if (pline)
    8000985e:	02090563          	beqz	s2,80009888 <find_jump_target+0xec>
get_u32():
quickjs-nuttx/cutils.h:170
    80009862:	0027c803          	lbu	a6,2(a5)
    80009866:	0017cf03          	lbu	t5,1(a5)
    8000986a:	0822                	slli	a6,a6,0x8
    8000986c:	01e86f33          	or	t5,a6,t5
    80009870:	0037c803          	lbu	a6,3(a5)
    80009874:	0047c783          	lbu	a5,4(a5)
    80009878:	0842                	slli	a6,a6,0x10
    8000987a:	01e86833          	or	a6,a6,t5
    8000987e:	07e2                	slli	a5,a5,0x18
    80009880:	0107e7b3          	or	a5,a5,a6
find_jump_target():
quickjs-nuttx/quickjs.c:31854
                    *pline = get_u32(s->byte_code.buf + pos + 1);
    80009884:	00f92023          	sw	a5,0(s2)
quickjs-nuttx/quickjs.c:31857
                pos += opcode_info[op].size;
    80009888:	070a                	slli	a4,a4,0x2
    8000988a:	971a                	add	a4,a4,t1
    8000988c:	00074783          	lbu	a5,0(a4) # ffffffffc0000000 <_ebss+0xffffffff3fefee9a>
    80009890:	9dbd                	addw	a1,a1,a5
quickjs-nuttx/quickjs.c:31851
            switch(op = s->byte_code.buf[pos]) {
    80009892:	b7ad                	j	800097fc <find_jump_target+0x60>
get_u32():
quickjs-nuttx/cutils.h:170
    80009894:	0027c583          	lbu	a1,2(a5)
    80009898:	0017c403          	lbu	s0,1(a5)
find_jump_target():
quickjs-nuttx/quickjs.c:31847
    for (i = 0; i < 10; i++) {
    8000989c:	36fd                	addiw	a3,a3,-1
get_u32():
quickjs-nuttx/cutils.h:170
    8000989e:	05a2                	slli	a1,a1,0x8
    800098a0:	8dc1                	or	a1,a1,s0
    800098a2:	0037c403          	lbu	s0,3(a5)
    800098a6:	0442                	slli	s0,s0,0x10
    800098a8:	8dc1                	or	a1,a1,s0
    800098aa:	0047c403          	lbu	s0,4(a5)
    800098ae:	0462                	slli	s0,s0,0x18
    800098b0:	8c4d                	or	s0,s0,a1
find_jump_target():
quickjs-nuttx/quickjs.c:31860
                label = get_u32(s->byte_code.buf + pos + 1);
    800098b2:	2401                	sext.w	s0,s0
quickjs-nuttx/quickjs.c:31847
    for (i = 0; i < 10; i++) {
    800098b4:	fe91                	bnez	a3,800097d0 <find_jump_target+0x34>
quickjs-nuttx/quickjs.c:31876
 done:
    800098b6:	06c00713          	li	a4,108
    800098ba:	b749                	j	8000983c <find_jump_target+0xa0>

00000000800098bc <time_clip>:
time_clip():
quickjs-nuttx/quickjs.c:49421
    if (t >= -8.64e15 && t <= 8.64e15)
    800098bc:	0008a797          	auipc	a5,0x8a
    800098c0:	2ec7b707          	fld	fa4,748(a5) # 80093ba8 <_erodata+0x36>
    800098c4:	a2a707d3          	fle.d	a5,fa4,fa0
    800098c8:	c39d                	beqz	a5,800098ee <time_clip+0x32>
quickjs-nuttx/quickjs.c:49421 (discriminator 1)
    800098ca:	0008a797          	auipc	a5,0x8a
    800098ce:	2e67b707          	fld	fa4,742(a5) # 80093bb0 <_erodata+0x3e>
    800098d2:	a2e507d3          	fle.d	a5,fa0,fa4
    800098d6:	cf81                	beqz	a5,800098ee <time_clip+0x32>
quickjs-nuttx/quickjs.c:49420
static double time_clip(double t) {
    800098d8:	1141                	addi	sp,sp,-16
    800098da:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:49422
        return trunc(t) + 0.0;  /* convert -0 to +0 */
    800098dc:	c36f70ef          	jal	ra,80000d12 <trunc>
quickjs-nuttx/quickjs.c:49425
}
    800098e0:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs.c:49422
        return trunc(t) + 0.0;  /* convert -0 to +0 */
    800098e2:	f20007d3          	fmv.d.x	fa5,zero
quickjs-nuttx/quickjs.c:49425
}
    800098e6:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:49422
        return trunc(t) + 0.0;  /* convert -0 to +0 */
    800098e8:	02f57553          	fadd.d	fa0,fa0,fa5
quickjs-nuttx/quickjs.c:49425
}
    800098ec:	8082                	ret
quickjs-nuttx/quickjs.c:49424
        return NAN;
    800098ee:	0008a797          	auipc	a5,0x8a
    800098f2:	2927b507          	fld	fa0,658(a5) # 80093b80 <_erodata+0xe>
    800098f6:	12a57553          	fmul.d	fa0,fa0,fa0
    800098fa:	f20007d3          	fmv.d.x	fa5,zero
    800098fe:	12f57553          	fmul.d	fa0,fa0,fa5
quickjs-nuttx/quickjs.c:49425
}
    80009902:	8082                	ret

0000000080009904 <js_def_free>:
js_def_free():
quickjs-nuttx/quickjs.c:1733
    if (!ptr)
    80009904:	c985                	beqz	a1,80009934 <js_def_free+0x30>
quickjs-nuttx/quickjs.c:1732
{
    80009906:	1101                	addi	sp,sp,-32
    80009908:	e822                	sd	s0,16(sp)
    8000990a:	e426                	sd	s1,8(sp)
    8000990c:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:1736
    s->malloc_count--;
    8000990e:	611c                	ld	a5,0(a0)
    80009910:	842a                	mv	s0,a0
    80009912:	84ae                	mv	s1,a1
    80009914:	17fd                	addi	a5,a5,-1
    80009916:	e11c                	sd	a5,0(a0)
js_def_malloc_usable_size():
quickjs-nuttx/quickjs.c:1708
    return malloc_usable_size((void *)ptr);
    80009918:	852e                	mv	a0,a1
    8000991a:	390560ef          	jal	ra,8005fcaa <malloc_size>
js_def_free():
quickjs-nuttx/quickjs.c:1737
    s->malloc_size -= js_def_malloc_usable_size(ptr) + MALLOC_OVERHEAD;
    8000991e:	641c                	ld	a5,8(s0)
    80009920:	17e1                	addi	a5,a5,-8
    80009922:	8f89                	sub	a5,a5,a0
    80009924:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:1739
}
    80009926:	6442                	ld	s0,16(sp)
    80009928:	60e2                	ld	ra,24(sp)
quickjs-nuttx/quickjs.c:1738
    free(ptr);
    8000992a:	8526                	mv	a0,s1
quickjs-nuttx/quickjs.c:1739
}
    8000992c:	64a2                	ld	s1,8(sp)
    8000992e:	6105                	addi	sp,sp,32
quickjs-nuttx/quickjs.c:1738
    free(ptr);
    80009930:	3865606f          	j	8005fcb6 <free>
    80009934:	8082                	ret

0000000080009936 <js_def_realloc>:
js_def_realloc():
quickjs-nuttx/quickjs.c:1742
{
    80009936:	7179                	addi	sp,sp,-48
    80009938:	ec26                	sd	s1,24(sp)
    8000993a:	f406                	sd	ra,40(sp)
    8000993c:	84ae                	mv	s1,a1
    8000993e:	f022                	sd	s0,32(sp)
    80009940:	e84a                	sd	s2,16(sp)
    80009942:	85b2                	mv	a1,a2
quickjs-nuttx/quickjs.c:1745
    if (!ptr) {
    80009944:	e08d                	bnez	s1,80009966 <js_def_realloc+0x30>
quickjs-nuttx/quickjs.c:1746
        if (size == 0)
    80009946:	ea09                	bnez	a2,80009958 <js_def_realloc+0x22>
quickjs-nuttx/quickjs.c:1755
        return NULL;
    80009948:	4481                	li	s1,0
quickjs-nuttx/quickjs.c:1766
}
    8000994a:	70a2                	ld	ra,40(sp)
    8000994c:	7402                	ld	s0,32(sp)
    8000994e:	6942                	ld	s2,16(sp)
    80009950:	8526                	mv	a0,s1
    80009952:	64e2                	ld	s1,24(sp)
    80009954:	6145                	addi	sp,sp,48
    80009956:	8082                	ret
    80009958:	7402                	ld	s0,32(sp)
    8000995a:	70a2                	ld	ra,40(sp)
    8000995c:	64e2                	ld	s1,24(sp)
    8000995e:	6942                	ld	s2,16(sp)
    80009960:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:1748
        return js_def_malloc(s, size);
    80009962:	df8ff06f          	j	80008f5a <js_def_malloc>
    80009966:	842a                	mv	s0,a0
js_def_malloc_usable_size():
quickjs-nuttx/quickjs.c:1708
    return malloc_usable_size((void *)ptr);
    80009968:	8526                	mv	a0,s1
    8000996a:	e432                	sd	a2,8(sp)
    8000996c:	33e560ef          	jal	ra,8005fcaa <malloc_size>
js_def_realloc():
quickjs-nuttx/quickjs.c:1751
    if (size == 0) {
    80009970:	65a2                	ld	a1,8(sp)
    80009972:	641c                	ld	a5,8(s0)
js_def_malloc_usable_size():
quickjs-nuttx/quickjs.c:1708
    return malloc_usable_size((void *)ptr);
    80009974:	892a                	mv	s2,a0
js_def_realloc():
quickjs-nuttx/quickjs.c:1751
    if (size == 0) {
    80009976:	e999                	bnez	a1,8000998c <js_def_realloc+0x56>
quickjs-nuttx/quickjs.c:1752
        s->malloc_count--;
    80009978:	6018                	ld	a4,0(s0)
quickjs-nuttx/quickjs.c:1753
        s->malloc_size -= old_size + MALLOC_OVERHEAD;
    8000997a:	17e1                	addi	a5,a5,-8
    8000997c:	8f89                	sub	a5,a5,a0
quickjs-nuttx/quickjs.c:1752
        s->malloc_count--;
    8000997e:	177d                	addi	a4,a4,-1
    80009980:	e018                	sd	a4,0(s0)
quickjs-nuttx/quickjs.c:1753
        s->malloc_size -= old_size + MALLOC_OVERHEAD;
    80009982:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:1754
        free(ptr);
    80009984:	8526                	mv	a0,s1
    80009986:	330560ef          	jal	ra,8005fcb6 <free>
    8000998a:	bf7d                	j	80009948 <js_def_realloc+0x12>
quickjs-nuttx/quickjs.c:1757
    if (s->malloc_size + size - old_size > s->malloc_limit)
    8000998c:	6818                	ld	a4,16(s0)
    8000998e:	97ae                	add	a5,a5,a1
    80009990:	8f89                	sub	a5,a5,a0
    80009992:	faf76be3          	bltu	a4,a5,80009948 <js_def_realloc+0x12>
quickjs-nuttx/quickjs.c:1760
    ptr = realloc(ptr, size);
    80009996:	8526                	mv	a0,s1
    80009998:	37e560ef          	jal	ra,8005fd16 <realloc>
    8000999c:	84aa                	mv	s1,a0
quickjs-nuttx/quickjs.c:1761
    if (!ptr)
    8000999e:	d555                	beqz	a0,8000994a <js_def_realloc+0x14>
js_def_malloc_usable_size():
quickjs-nuttx/quickjs.c:1708
    return malloc_usable_size((void *)ptr);
    800099a0:	30a560ef          	jal	ra,8005fcaa <malloc_size>
js_def_realloc():
quickjs-nuttx/quickjs.c:1764
    s->malloc_size += js_def_malloc_usable_size(ptr) - old_size;
    800099a4:	641c                	ld	a5,8(s0)
    800099a6:	412787b3          	sub	a5,a5,s2
    800099aa:	97aa                	add	a5,a5,a0
    800099ac:	e41c                	sd	a5,8(s0)
quickjs-nuttx/quickjs.c:1765
    return ptr;
    800099ae:	bf71                	j	8000994a <js_def_realloc+0x14>

00000000800099b0 <lre_js_is_ident_first>:
lre_js_is_ident_first():
quickjs-nuttx/libregexp.h:65
/* JS identifier test */
extern uint32_t const lre_id_start_table_ascii[4];
extern uint32_t const lre_id_continue_table_ascii[4];

static inline int lre_js_is_ident_first(int c)
{
    800099b0:	87aa                	mv	a5,a0
quickjs-nuttx/libregexp.h:66
    if ((uint32_t)c < 128) {
    800099b2:	07f00713          	li	a4,127
    800099b6:	2501                	sext.w	a0,a0
    800099b8:	00f77463          	bgeu	a4,a5,800099c0 <lre_js_is_ident_first+0x10>
quickjs-nuttx/libregexp.h:70
        return (lre_id_start_table_ascii[c >> 5] >> (c & 31)) & 1;
    } else {
#ifdef CONFIG_ALL_UNICODE
        return lre_is_id_start(c);
    800099bc:	39c4706f          	j	80050d58 <lre_is_id_start>
quickjs-nuttx/libregexp.h:67
        return (lre_id_start_table_ascii[c >> 5] >> (c & 31)) & 1;
    800099c0:	4057d713          	srai	a4,a5,0x5
    800099c4:	00271693          	slli	a3,a4,0x2
    800099c8:	0006c717          	auipc	a4,0x6c
    800099cc:	db870713          	addi	a4,a4,-584 # 80075780 <lre_id_start_table_ascii>
    800099d0:	9736                	add	a4,a4,a3
    800099d2:	4308                	lw	a0,0(a4)
    800099d4:	00f5553b          	srlw	a0,a0,a5
    800099d8:	8905                	andi	a0,a0,1
quickjs-nuttx/libregexp.h:75
#else
        return !lre_is_space(c);
#endif
    }
}
    800099da:	8082                	ret

00000000800099dc <lre_js_is_ident_next>:
lre_js_is_ident_next():
quickjs-nuttx/libregexp.h:79

static inline int lre_js_is_ident_next(int c)
{
    if ((uint32_t)c < 128) {
    800099dc:	07f00793          	li	a5,127
    800099e0:	02a7e063          	bltu	a5,a0,80009a00 <lre_js_is_ident_next+0x24>
quickjs-nuttx/libregexp.h:80
        return (lre_id_continue_table_ascii[c >> 5] >> (c & 31)) & 1;
    800099e4:	40555793          	srai	a5,a0,0x5
    800099e8:	00279713          	slli	a4,a5,0x2
    800099ec:	0006c797          	auipc	a5,0x6c
    800099f0:	d8478793          	addi	a5,a5,-636 # 80075770 <lre_id_continue_table_ascii>
    800099f4:	97ba                	add	a5,a5,a4
    800099f6:	439c                	lw	a5,0(a5)
    800099f8:	00a7d53b          	srlw	a0,a5,a0
    800099fc:	8905                	andi	a0,a0,1
quickjs-nuttx/libregexp.h:89
        return lre_is_id_continue(c) || c == 0x200C || c == 0x200D;
#else
        return !lre_is_space(c) || c == 0x200C || c == 0x200D;
#endif
    }
}
    800099fe:	8082                	ret
quickjs-nuttx/libregexp.h:78
{
    80009a00:	1141                	addi	sp,sp,-16
    80009a02:	e022                	sd	s0,0(sp)
    80009a04:	0005041b          	sext.w	s0,a0
quickjs-nuttx/libregexp.h:84
        return lre_is_id_continue(c) || c == 0x200C || c == 0x200D;
    80009a08:	8522                	mv	a0,s0
quickjs-nuttx/libregexp.h:78
{
    80009a0a:	e406                	sd	ra,8(sp)
quickjs-nuttx/libregexp.h:84
        return lre_is_id_continue(c) || c == 0x200C || c == 0x200D;
    80009a0c:	364470ef          	jal	ra,80050d70 <lre_is_id_continue>
    80009a10:	87aa                	mv	a5,a0
    80009a12:	4505                	li	a0,1
    80009a14:	e791                	bnez	a5,80009a20 <lre_js_is_ident_next+0x44>
quickjs-nuttx/libregexp.h:84 (discriminator 2)
    80009a16:	7579                	lui	a0,0xffffe
    80009a18:	3551                	addiw	a0,a0,-12
    80009a1a:	9d21                	addw	a0,a0,s0
    80009a1c:	00253513          	sltiu	a0,a0,2
quickjs-nuttx/libregexp.h:89
}
    80009a20:	60a2                	ld	ra,8(sp)
    80009a22:	6402                	ld	s0,0(sp)
    80009a24:	0141                	addi	sp,sp,16
    80009a26:	8082                	ret

0000000080009a28 <simple_next_token>:
simple_next_token():
quickjs-nuttx/quickjs.c:21293
{
    80009a28:	7179                	addi	sp,sp,-48
    80009a2a:	e84a                	sd	s2,16(sp)
    80009a2c:	f406                	sd	ra,40(sp)
    80009a2e:	f022                	sd	s0,32(sp)
    80009a30:	ec26                	sd	s1,24(sp)
    80009a32:	e44e                	sd	s3,8(sp)
quickjs-nuttx/quickjs.c:21315
                while (*p && *p != '\r' && *p != '\n')
    80009a34:	6809                	lui	a6,0x2
quickjs-nuttx/quickjs.c:21298
    p = *pp;
    80009a36:	6100                	ld	s0,0(a0)
quickjs-nuttx/quickjs.c:21293
{
    80009a38:	892a                	mv	s2,a0
quickjs-nuttx/quickjs.c:21300
        switch(c = *p++) {
    80009a3a:	02000893          	li	a7,32
    80009a3e:	02f00693          	li	a3,47
quickjs-nuttx/quickjs.c:21319
            if (*p == '*') {
    80009a42:	02a00313          	li	t1,42
quickjs-nuttx/quickjs.c:21321
                    if ((*p == '\r' || *p == '\n') && no_line_terminator)
    80009a46:	4635                	li	a2,13
    80009a48:	4529                	li	a0,10
quickjs-nuttx/quickjs.c:21315
                while (*p && *p != '\r' && *p != '\n')
    80009a4a:	40180813          	addi	a6,a6,1025 # 2401 <asinh-0x7fffdbff>
quickjs-nuttx/quickjs.c:21300
        switch(c = *p++) {
    80009a4e:	4e31                	li	t3,12
    80009a50:	4ea5                	li	t4,9
    80009a52:	00044483          	lbu	s1,0(s0)
    80009a56:	00140793          	addi	a5,s0,1
    80009a5a:	21148763          	beq	s1,a7,80009c68 <simple_next_token+0x240>
    80009a5e:	0498e963          	bltu	a7,s1,80009ab0 <simple_next_token+0x88>
    80009a62:	049e6163          	bltu	t3,s1,80009aa4 <simple_next_token+0x7c>
    80009a66:	20956163          	bltu	a0,s1,80009c68 <simple_next_token+0x240>
    80009a6a:	1fd48f63          	beq	s1,t4,80009c68 <simple_next_token+0x240>
    80009a6e:	02a48d63          	beq	s1,a0,80009aa8 <simple_next_token+0x80>
quickjs-nuttx/quickjs.c:21336
            if (lre_js_is_ident_first(c)) {
    80009a72:	0004899b          	sext.w	s3,s1
    80009a76:	854e                	mv	a0,s3
    80009a78:	f39ff0ef          	jal	ra,800099b0 <lre_js_is_ident_first>
    80009a7c:	c541                	beqz	a0,80009b04 <simple_next_token+0xdc>
quickjs-nuttx/quickjs.c:21337
                if (c == 'i') {
    80009a7e:	06900793          	li	a5,105
    80009a82:	0cf99f63          	bne	s3,a5,80009b60 <simple_next_token+0x138>
quickjs-nuttx/quickjs.c:21338
                    if (p[0] == 'n' && !lre_js_is_ident_next(p[1])) {
    80009a86:	00144703          	lbu	a4,1(s0)
    80009a8a:	06e00793          	li	a5,110
    80009a8e:	06f70e63          	beq	a4,a5,80009b0a <simple_next_token+0xe2>
quickjs-nuttx/quickjs.c:21341
                    if (p[0] == 'm' && p[1] == 'p' && p[2] == 'o' &&
    80009a92:	00144703          	lbu	a4,1(s0)
    80009a96:	06d00793          	li	a5,109
    80009a9a:	08f70063          	beq	a4,a5,80009b1a <simple_next_token+0xf2>
quickjs-nuttx/quickjs.c:21360
                return TOK_IDENT;
    80009a9e:	f8300793          	li	a5,-125
    80009aa2:	a02d                	j	80009acc <simple_next_token+0xa4>
quickjs-nuttx/quickjs.c:21300
        switch(c = *p++) {
    80009aa4:	fcc497e3          	bne	s1,a2,80009a72 <simple_next_token+0x4a>
quickjs-nuttx/quickjs.c:21303
            if (no_line_terminator)
    80009aa8:	1c058063          	beqz	a1,80009c68 <simple_next_token+0x240>
quickjs-nuttx/quickjs.c:21322
                        return '\n';
    80009aac:	47a9                	li	a5,10
    80009aae:	a839                	j	80009acc <simple_next_token+0xa4>
quickjs-nuttx/quickjs.c:21300
        switch(c = *p++) {
    80009ab0:	02d48663          	beq	s1,a3,80009adc <simple_next_token+0xb4>
    80009ab4:	03d00793          	li	a5,61
    80009ab8:	faf49de3          	bne	s1,a5,80009a72 <simple_next_token+0x4a>
quickjs-nuttx/quickjs.c:21332
            if (*p == '>')
    80009abc:	00144683          	lbu	a3,1(s0)
    80009ac0:	03e00713          	li	a4,62
quickjs-nuttx/quickjs.c:21333
                return TOK_ARROW;
    80009ac4:	fa600793          	li	a5,-90
quickjs-nuttx/quickjs.c:21332
            if (*p == '>')
    80009ac8:	02e69e63          	bne	a3,a4,80009b04 <simple_next_token+0xdc>
quickjs-nuttx/quickjs.c:21366
}
    80009acc:	70a2                	ld	ra,40(sp)
    80009ace:	7402                	ld	s0,32(sp)
    80009ad0:	64e2                	ld	s1,24(sp)
    80009ad2:	6942                	ld	s2,16(sp)
    80009ad4:	69a2                	ld	s3,8(sp)
    80009ad6:	853e                	mv	a0,a5
    80009ad8:	6145                	addi	sp,sp,48
    80009ada:	8082                	ret
quickjs-nuttx/quickjs.c:21312
            if (*p == '/') {
    80009adc:	00144703          	lbu	a4,1(s0)
    80009ae0:	02d71063          	bne	a4,a3,80009b00 <simple_next_token+0xd8>
quickjs-nuttx/quickjs.c:21313
                if (no_line_terminator)
    80009ae4:	f5e1                	bnez	a1,80009aac <simple_next_token+0x84>
quickjs-nuttx/quickjs.c:21315
                while (*p && *p != '\r' && *p != '\n')
    80009ae6:	0007c703          	lbu	a4,0(a5)
    80009aea:	00178f13          	addi	t5,a5,1
    80009aee:	00e66763          	bltu	a2,a4,80009afc <simple_next_token+0xd4>
    80009af2:	00e85733          	srl	a4,a6,a4
    80009af6:	8b05                	andi	a4,a4,1
    80009af8:	16071863          	bnez	a4,80009c68 <simple_next_token+0x240>
quickjs-nuttx/quickjs.c:21293
{
    80009afc:	87fa                	mv	a5,t5
    80009afe:	b7e5                	j	80009ae6 <simple_next_token+0xbe>
quickjs-nuttx/quickjs.c:21319
            if (*p == '*') {
    80009b00:	14670363          	beq	a4,t1,80009c46 <simple_next_token+0x21e>
quickjs-nuttx/quickjs.c:21364
        return c;
    80009b04:	0004879b          	sext.w	a5,s1
    80009b08:	b7d1                	j	80009acc <simple_next_token+0xa4>
quickjs-nuttx/quickjs.c:21338 (discriminator 1)
                    if (p[0] == 'n' && !lre_js_is_ident_next(p[1])) {
    80009b0a:	00244503          	lbu	a0,2(s0)
    80009b0e:	ecfff0ef          	jal	ra,800099dc <lre_js_is_ident_next>
quickjs-nuttx/quickjs.c:21339 (discriminator 1)
                        return TOK_IN;
    80009b12:	fb900793          	li	a5,-71
quickjs-nuttx/quickjs.c:21338 (discriminator 1)
                    if (p[0] == 'n' && !lre_js_is_ident_next(p[1])) {
    80009b16:	fd35                	bnez	a0,80009a92 <simple_next_token+0x6a>
    80009b18:	bf55                	j	80009acc <simple_next_token+0xa4>
quickjs-nuttx/quickjs.c:21341 (discriminator 1)
                    if (p[0] == 'm' && p[1] == 'p' && p[2] == 'o' &&
    80009b1a:	00244703          	lbu	a4,2(s0)
    80009b1e:	07000793          	li	a5,112
    80009b22:	f6f71ee3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21341 (discriminator 2)
    80009b26:	00344703          	lbu	a4,3(s0)
    80009b2a:	06f00793          	li	a5,111
    80009b2e:	f6f718e3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21341 (discriminator 3)
    80009b32:	00444703          	lbu	a4,4(s0)
    80009b36:	07200793          	li	a5,114
    80009b3a:	f6f712e3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21342
                        p[3] == 'r' && p[4] == 't' &&
    80009b3e:	00544703          	lbu	a4,5(s0)
    80009b42:	07400793          	li	a5,116
    80009b46:	f4f71ce3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21343 (discriminator 1)
                        !lre_js_is_ident_next(p[5])) {
    80009b4a:	00644503          	lbu	a0,6(s0)
    80009b4e:	e8fff0ef          	jal	ra,800099dc <lre_js_is_ident_next>
quickjs-nuttx/quickjs.c:21342 (discriminator 1)
                        p[3] == 'r' && p[4] == 't' &&
    80009b52:	f531                	bnez	a0,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21344
                        *pp = p + 5;
    80009b54:	0419                	addi	s0,s0,6
    80009b56:	00893023          	sd	s0,0(s2)
quickjs-nuttx/quickjs.c:21345
                        return TOK_IMPORT;
    80009b5a:	fcf00793          	li	a5,-49
    80009b5e:	b7bd                	j	80009acc <simple_next_token+0xa4>
quickjs-nuttx/quickjs.c:21347
                } else if (c == 'o' && *p == 'f' && !lre_js_is_ident_next(p[1])) {
    80009b60:	06f00713          	li	a4,111
    80009b64:	02e99063          	bne	s3,a4,80009b84 <simple_next_token+0x15c>
quickjs-nuttx/quickjs.c:21347 (discriminator 1)
    80009b68:	00144703          	lbu	a4,1(s0)
    80009b6c:	06600793          	li	a5,102
    80009b70:	f2f717e3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21347 (discriminator 2)
    80009b74:	00244503          	lbu	a0,2(s0)
    80009b78:	e65ff0ef          	jal	ra,800099dc <lre_js_is_ident_next>
quickjs-nuttx/quickjs.c:21348 (discriminator 2)
                    return TOK_OF;
    80009b7c:	fdb00793          	li	a5,-37
quickjs-nuttx/quickjs.c:21357 (discriminator 1)
                         p[5] == 'o' && p[6] == 'n' && !lre_js_is_ident_next(p[7])) {
    80009b80:	fd19                	bnez	a0,80009a9e <simple_next_token+0x76>
    80009b82:	b7a9                	j	80009acc <simple_next_token+0xa4>
quickjs-nuttx/quickjs.c:21349
                } else if (c == 'e' &&
    80009b84:	06500693          	li	a3,101
    80009b88:	04d99a63          	bne	s3,a3,80009bdc <simple_next_token+0x1b4>
quickjs-nuttx/quickjs.c:21349 (discriminator 1)
    80009b8c:	00144683          	lbu	a3,1(s0)
    80009b90:	07800793          	li	a5,120
    80009b94:	f0f695e3          	bne	a3,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21350
                           p[0] == 'x' && p[1] == 'p' && p[2] == 'o' &&
    80009b98:	00244683          	lbu	a3,2(s0)
    80009b9c:	07000793          	li	a5,112
    80009ba0:	eef69fe3          	bne	a3,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21350 (discriminator 1)
    80009ba4:	00344783          	lbu	a5,3(s0)
    80009ba8:	eee79be3          	bne	a5,a4,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21350 (discriminator 2)
    80009bac:	00444703          	lbu	a4,4(s0)
    80009bb0:	07200793          	li	a5,114
    80009bb4:	eef715e3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21351
                           p[3] == 'r' && p[4] == 't' &&
    80009bb8:	00544703          	lbu	a4,5(s0)
    80009bbc:	07400793          	li	a5,116
    80009bc0:	ecf71fe3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21352 (discriminator 1)
                           !lre_js_is_ident_next(p[5])) {
    80009bc4:	00644503          	lbu	a0,6(s0)
    80009bc8:	e15ff0ef          	jal	ra,800099dc <lre_js_is_ident_next>
quickjs-nuttx/quickjs.c:21351 (discriminator 1)
                           p[3] == 'r' && p[4] == 't' &&
    80009bcc:	ec0519e3          	bnez	a0,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21353
                    *pp = p + 5;
    80009bd0:	0419                	addi	s0,s0,6
    80009bd2:	00893023          	sd	s0,0(s2)
quickjs-nuttx/quickjs.c:21354
                    return TOK_EXPORT;
    80009bd6:	fcd00793          	li	a5,-51
    80009bda:	bdcd                	j	80009acc <simple_next_token+0xa4>
quickjs-nuttx/quickjs.c:21355
                } else if (c == 'f' && p[0] == 'u' && p[1] == 'n' &&
    80009bdc:	06600713          	li	a4,102
    80009be0:	eae99fe3          	bne	s3,a4,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21355 (discriminator 1)
    80009be4:	00144683          	lbu	a3,1(s0)
    80009be8:	07500713          	li	a4,117
    80009bec:	eae699e3          	bne	a3,a4,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21355 (discriminator 2)
    80009bf0:	00244683          	lbu	a3,2(s0)
    80009bf4:	06e00713          	li	a4,110
    80009bf8:	eae693e3          	bne	a3,a4,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21355 (discriminator 3)
    80009bfc:	00344683          	lbu	a3,3(s0)
    80009c00:	06300713          	li	a4,99
    80009c04:	e8e69de3          	bne	a3,a4,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21356
                         p[2] == 'c' && p[3] == 't' && p[4] == 'i' &&
    80009c08:	00444683          	lbu	a3,4(s0)
    80009c0c:	07400713          	li	a4,116
    80009c10:	e8e697e3          	bne	a3,a4,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21356 (discriminator 1)
    80009c14:	00544703          	lbu	a4,5(s0)
    80009c18:	e8f713e3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21356 (discriminator 2)
    80009c1c:	00644703          	lbu	a4,6(s0)
    80009c20:	06f00793          	li	a5,111
    80009c24:	e6f71de3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21357
                         p[5] == 'o' && p[6] == 'n' && !lre_js_is_ident_next(p[7])) {
    80009c28:	00744703          	lbu	a4,7(s0)
    80009c2c:	06e00793          	li	a5,110
    80009c30:	e6f717e3          	bne	a4,a5,80009a9e <simple_next_token+0x76>
quickjs-nuttx/quickjs.c:21357 (discriminator 1)
    80009c34:	00844503          	lbu	a0,8(s0)
    80009c38:	da5ff0ef          	jal	ra,800099dc <lre_js_is_ident_next>
quickjs-nuttx/quickjs.c:21358 (discriminator 1)
                    return TOK_FUNCTION;
    80009c3c:	fc700793          	li	a5,-57
    80009c40:	b781                	j	80009b80 <simple_next_token+0x158>
quickjs-nuttx/quickjs.c:21321
                    if ((*p == '\r' || *p == '\n') && no_line_terminator)
    80009c42:	e60595e3          	bnez	a1,80009aac <simple_next_token+0x84>
quickjs-nuttx/quickjs.c:21320
                while (*++p) {
    80009c46:	8f3e                	mv	t5,a5
    80009c48:	0017c703          	lbu	a4,1(a5)
    80009c4c:	0785                	addi	a5,a5,1
    80009c4e:	cf09                	beqz	a4,80009c68 <simple_next_token+0x240>
quickjs-nuttx/quickjs.c:21321
                    if ((*p == '\r' || *p == '\n') && no_line_terminator)
    80009c50:	fec709e3          	beq	a4,a2,80009c42 <simple_next_token+0x21a>
quickjs-nuttx/quickjs.c:21321 (discriminator 2)
    80009c54:	fea707e3          	beq	a4,a0,80009c42 <simple_next_token+0x21a>
quickjs-nuttx/quickjs.c:21323
                    if (*p == '*' && p[1] == '/') {
    80009c58:	fe6717e3          	bne	a4,t1,80009c46 <simple_next_token+0x21e>
quickjs-nuttx/quickjs.c:21323 (discriminator 1)
    80009c5c:	0017c703          	lbu	a4,1(a5)
    80009c60:	fed713e3          	bne	a4,a3,80009c46 <simple_next_token+0x21e>
quickjs-nuttx/quickjs.c:21324
                        p += 2;
    80009c64:	003f0793          	addi	a5,t5,3
quickjs-nuttx/quickjs.c:21293
{
    80009c68:	843e                	mv	s0,a5
    80009c6a:	b3e5                	j	80009a52 <simple_next_token+0x2a>

0000000080009c6c <peek_token>:
peek_token():
quickjs-nuttx/quickjs.c:21369
{
    80009c6c:	1101                	addi	sp,sp,-32
    80009c6e:	ec06                	sd	ra,24(sp)
quickjs-nuttx/quickjs.c:21370
    const uint8_t *p = s->buf_ptr;
    80009c70:	6d3c                	ld	a5,88(a0)
quickjs-nuttx/quickjs.c:21371
    return simple_next_token(&p, no_line_terminator);
    80009c72:	0028                	addi	a0,sp,8
quickjs-nuttx/quickjs.c:21370
    const uint8_t *p = s->buf_ptr;
    80009c74:	e43e                	sd	a5,8(sp)
quickjs-nuttx/quickjs.c:21371
    return simple_next_token(&p, no_line_terminator);
    80009c76:	db3ff0ef          	jal	ra,80009a28 <simple_next_token>
quickjs-nuttx/quickjs.c:21372
}
    80009c7a:	60e2                	ld	ra,24(sp)
    80009c7c:	6105                	addi	sp,sp,32
    80009c7e:	8082                	ret

0000000080009c80 <JS_WriteString>:
JS_WriteString():
quickjs-nuttx/quickjs.c:34834
{
    80009c80:	7179                	addi	sp,sp,-48
    80009c82:	f022                	sd	s0,32(sp)
    80009c84:	ec26                	sd	s1,24(sp)
    80009c86:	e84a                	sd	s2,16(sp)
    80009c88:	e44e                	sd	s3,8(sp)
    80009c8a:	e052                	sd	s4,0(sp)
    80009c8c:	f406                	sd	ra,40(sp)
quickjs-nuttx/quickjs.c:34836
    bc_put_leb128(s, ((uint32_t)p->len << 1) | p->is_wide_char);
    80009c8e:	41dc                	lw	a5,4(a1)
    80009c90:	800004b7          	lui	s1,0x80000
    80009c94:	fff4c493          	not	s1,s1
quickjs-nuttx/quickjs.c:34834
{
    80009c98:	842e                	mv	s0,a1
quickjs-nuttx/quickjs.c:34836
    bc_put_leb128(s, ((uint32_t)p->len << 1) | p->is_wide_char);
    80009c9a:	0097f5b3          	and	a1,a5,s1
    80009c9e:	0015959b          	slliw	a1,a1,0x1
    80009ca2:	01f7d79b          	srliw	a5,a5,0x1f
    80009ca6:	8ddd                	or	a1,a1,a5
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    80009ca8:	00850a13          	addi	s4,a0,8 # ffffffffffffe008 <_ebss+0xffffffff7fefcea2>
JS_WriteString():
quickjs-nuttx/quickjs.c:34834
{
    80009cac:	892a                	mv	s2,a0
bc_put_leb128():
quickjs-nuttx/quickjs.c:34658
    dbuf_put_leb128(&s->dbuf, v);
    80009cae:	2581                	sext.w	a1,a1
    80009cb0:	8552                	mv	a0,s4
    80009cb2:	81eff0ef          	jal	ra,80008cd0 <dbuf_put_leb128>
JS_WriteString():
quickjs-nuttx/quickjs.c:34837
    if (p->is_wide_char) {
    80009cb6:	4050                	lw	a2,4(s0)
    80009cb8:	4981                	li	s3,0
    80009cba:	0006079b          	sext.w	a5,a2
    80009cbe:	0407c663          	bltz	a5,80009d0a <JS_WriteString+0x8a>
quickjs-nuttx/quickjs.c:34841
        dbuf_put(&s->dbuf, p->u.str8, p->len);
    80009cc2:	01040593          	addi	a1,s0,16
quickjs-nuttx/quickjs.c:34843
}
    80009cc6:	7402                	ld	s0,32(sp)
    80009cc8:	70a2                	ld	ra,40(sp)
    80009cca:	6942                	ld	s2,16(sp)
    80009ccc:	69a2                	ld	s3,8(sp)
quickjs-nuttx/quickjs.c:34841
        dbuf_put(&s->dbuf, p->u.str8, p->len);
    80009cce:	8e65                	and	a2,a2,s1
    80009cd0:	8552                	mv	a0,s4
quickjs-nuttx/quickjs.c:34843
}
    80009cd2:	64e2                	ld	s1,24(sp)
    80009cd4:	6a02                	ld	s4,0(sp)
quickjs-nuttx/quickjs.c:34841
        dbuf_put(&s->dbuf, p->u.str8, p->len);
    80009cd6:	1602                	slli	a2,a2,0x20
    80009cd8:	9201                	srli	a2,a2,0x20
quickjs-nuttx/quickjs.c:34843
}
    80009cda:	6145                	addi	sp,sp,48
quickjs-nuttx/quickjs.c:34841
        dbuf_put(&s->dbuf, p->u.str8, p->len);
    80009cdc:	5754706f          	j	80051a50 <dbuf_put>
quickjs-nuttx/quickjs.c:34839
            bc_put_u16(s, p->u.str16[i]);
    80009ce0:	00898793          	addi	a5,s3,8
    80009ce4:	0786                	slli	a5,a5,0x1
    80009ce6:	97a2                	add	a5,a5,s0
    80009ce8:	0007d583          	lhu	a1,0(a5)
bc_put_u16():
quickjs-nuttx/quickjs.c:34637
    if (s->byte_swap)
    80009cec:	03894783          	lbu	a5,56(s2)
    80009cf0:	cb89                	beqz	a5,80009d02 <JS_WriteString+0x82>
    80009cf2:	0085971b          	slliw	a4,a1,0x8
    80009cf6:	0085d793          	srli	a5,a1,0x8
    80009cfa:	8fd9                	or	a5,a5,a4
    80009cfc:	03079593          	slli	a1,a5,0x30
    80009d00:	91c1                	srli	a1,a1,0x30
quickjs-nuttx/quickjs.c:34639
    dbuf_put_u16(&s->dbuf, v);
    80009d02:	8552                	mv	a0,s4
    80009d04:	aa8ff0ef          	jal	ra,80008fac <dbuf_put_u16>
JS_WriteString():
quickjs-nuttx/quickjs.c:34838
        for(i = 0; i < p->len; i++)
    80009d08:	2985                	addiw	s3,s3,1
    80009d0a:	405c                	lw	a5,4(s0)
    80009d0c:	8fe5                	and	a5,a5,s1
    80009d0e:	fcf9c9e3          	blt	s3,a5,80009ce0 <JS_WriteString+0x60>
quickjs-nuttx/quickjs.c:34843
}
    80009d12:	70a2                	ld	ra,40(sp)
    80009d14:	7402                	ld	s0,32(sp)
    80009d16:	64e2                	ld	s1,24(sp)
    80009d18:	6942                	ld	s2,16(sp)
    80009d1a:	69a2                	ld	s3,8(sp)
    80009d1c:	6a02                	ld	s4,0(sp)
    80009d1e:	6145                	addi	sp,sp,48
    80009d20:	8082                	ret

0000000080009d22 <set_eval_ret_undefined>:
set_eval_ret_undefined():
quickjs-nuttx/quickjs.c:26371
    if (s->cur_func->eval_ret_idx >= 0) {
    80009d22:	753c                	ld	a5,104(a0)
    80009d24:	0c87a783          	lw	a5,200(a5)
    80009d28:	0207c763          	bltz	a5,80009d56 <set_eval_ret_undefined+0x34>
quickjs-nuttx/quickjs.c:26370
{
    80009d2c:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:26372
        emit_op(s, OP_undefined);
    80009d2e:	4599                	li	a1,6
quickjs-nuttx/quickjs.c:26370
{
    80009d30:	e406                	sd	ra,8(sp)
    80009d32:	e022                	sd	s0,0(sp)
    80009d34:	842a                	mv	s0,a0
quickjs-nuttx/quickjs.c:26372
        emit_op(s, OP_undefined);
    80009d36:	bc0ff0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26373
        emit_op(s, OP_put_loc);
    80009d3a:	8522                	mv	a0,s0
    80009d3c:	05900593          	li	a1,89
    80009d40:	bb6ff0ef          	jal	ra,800090f6 <emit_op>
quickjs-nuttx/quickjs.c:26374
        emit_u16(s, s->cur_func->eval_ret_idx);
    80009d44:	743c                	ld	a5,104(s0)
    80009d46:	8522                	mv	a0,s0
quickjs-nuttx/quickjs.c:26376
}
    80009d48:	6402                	ld	s0,0(sp)
    80009d4a:	60a2                	ld	ra,8(sp)
quickjs-nuttx/quickjs.c:26374
        emit_u16(s, s->cur_func->eval_ret_idx);
    80009d4c:	0c87d583          	lhu	a1,200(a5)
quickjs-nuttx/quickjs.c:26376
}
    80009d50:	0141                	addi	sp,sp,16
quickjs-nuttx/quickjs.c:26374
        emit_u16(s, s->cur_func->eval_ret_idx);
    80009d52:	a72ff06f          	j	80008fc4 <emit_u16>
    80009d56:	8082                	ret

0000000080009d58 <js_cmp_doubles>:
js_cmp_doubles():
quickjs-nuttx/quickjs.c:54114
    if (isnan(x))    return isnan(y) ? 0 : +1;
    80009d58:	a2a52653          	feq.d	a2,fa0,fa0
quickjs-nuttx/quickjs.c:54113
{
    80009d5c:	e20507d3          	fmv.x.d	a5,fa0
    80009d60:	e2058753          	fmv.x.d	a4,fa1
    80009d64:	a2b5a6d3          	feq.d	a3,fa1,fa1
quickjs-nuttx/quickjs.c:54114
    if (isnan(x))    return isnan(y) ? 0 : +1;
    80009d68:	e219                	bnez	a2,80009d6e <js_cmp_doubles+0x16>
quickjs-nuttx/quickjs.c:54114 (discriminator 1)
    80009d6a:	8536                	mv	a0,a3
    80009d6c:	8082                	ret
quickjs-nuttx/quickjs.c:54115
    if (isnan(y))    return -1;
    80009d6e:	557d                	li	a0,-1
    80009d70:	c685                	beqz	a3,80009d98 <js_cmp_doubles+0x40>
quickjs-nuttx/quickjs.c:54116
    if (x < y)       return -1;
    80009d72:	a2b516d3          	flt.d	a3,fa0,fa1
    80009d76:	e28d                	bnez	a3,80009d98 <js_cmp_doubles+0x40>
quickjs-nuttx/quickjs.c:54117
    if (x > y)       return 1;
    80009d78:	a2a596d3          	flt.d	a3,fa1,fa0
    80009d7c:	4505                	li	a0,1
    80009d7e:	ee89                	bnez	a3,80009d98 <js_cmp_doubles+0x40>
quickjs-nuttx/quickjs.c:54118
    if (x != 0)      return 0;
    80009d80:	f20007d3          	fmv.d.x	fa5,zero
    80009d84:	4501                	li	a0,0
    80009d86:	a2f526d3          	feq.d	a3,fa0,fa5
    80009d8a:	c699                	beqz	a3,80009d98 <js_cmp_doubles+0x40>
quickjs-nuttx/quickjs.c:54119
    if (signbit(x))  return signbit(y) ? 0 : -1;
    80009d8c:	00072713          	slti	a4,a4,0
    80009d90:	0007a793          	slti	a5,a5,0
    80009d94:	40f70533          	sub	a0,a4,a5
quickjs-nuttx/quickjs.c:54121
}
    80009d98:	8082                	ret

0000000080009d9a <js_TA_cmp_float64>:
js_TA_cmp_float64():
quickjs-nuttx/quickjs.c:54168
    return js_cmp_doubles(*(const double *)a, *(const double *)b);
    80009d9a:	218c                	fld	fa1,0(a1)
    80009d9c:	2108                	fld	fa0,0(a0)
    80009d9e:	bf6d                	j	80009d58 <js_cmp_doubles>

0000000080009da0 <js_TA_cmp_float32>:
js_TA_cmp_float32():
quickjs-nuttx/quickjs.c:54164
    return js_cmp_doubles(*(const float *)a, *(const float *)b);
    80009da0:	0005a587          	flw	fa1,0(a1)
    80009da4:	00052507          	flw	fa0,0(a0)
    80009da8:	420585d3          	fcvt.d.s	fa1,fa1
    80009dac:	42050553          	fcvt.d.s	fa0,fa0
    80009db0:	b765                	j	80009d58 <js_cmp_doubles>

0000000080009db2 <string_get_month>:
string_get_month():
quickjs-nuttx/quickjs.c:49846
static int string_get_month(JSString *sp, int *pp, int64_t *pval) {
    80009db2:	7159                	addi	sp,sp,-112
    80009db4:	eca6                	sd	s1,88(sp)
    80009db6:	e0d2                	sd	s4,64(sp)
    80009db8:	fc56                	sd	s5,56(sp)
    80009dba:	f85a                	sd	s6,48(sp)
    80009dbc:	8a2a                	mv	s4,a0
    80009dbe:	84ae                	mv	s1,a1
    80009dc0:	f486                	sd	ra,104(sp)
    80009dc2:	f0a2                	sd	s0,96(sp)
    80009dc4:	e8ca                	sd	s2,80(sp)
    80009dc6:	e4ce                	sd	s3,72(sp)
    80009dc8:	f45e                	sd	s7,40(sp)
    80009dca:	f062                	sd	s8,32(sp)
    80009dcc:	ec66                	sd	s9,24(sp)
    80009dce:	e86a                	sd	s10,16(sp)
    80009dd0:	e46e                	sd	s11,8(sp)
    80009dd2:	8ab2                	mv	s5,a2
quickjs-nuttx/quickjs.c:49849
    string_skip_spaces(sp, pp);
    80009dd4:	e34fe0ef          	jal	ra,80008408 <string_skip_spaces>
find_abbrev():
quickjs-nuttx/quickjs.c:49833
    if (p + 3 <= sp->len) {
    80009dd8:	004a2783          	lw	a5,4(s4)
string_get_month():
quickjs-nuttx/quickjs.c:49850
    n = find_abbrev(sp, *pp, month_names, 12);
    80009ddc:	0004ab03          	lw	s6,0(s1) # ffffffff80000000 <_ebss+0xfffffffeffefee9a>
find_abbrev():
quickjs-nuttx/quickjs.c:49833
    if (p + 3 <= sp->len) {
    80009de0:	1786                	slli	a5,a5,0x21
    80009de2:	003b071b          	addiw	a4,s6,3
    80009de6:	9385                	srli	a5,a5,0x21
    80009de8:	02e7ce63          	blt	a5,a4,80009e24 <string_get_month+0x72>
    80009dec:	4901                	li	s2,0
    80009dee:	4c0d                	li	s8,3
quickjs-nuttx/quickjs.c:49836
                if (string_get(sp, p + i) != month_names[n * 3 + i])
    80009df0:	0006bc97          	auipc	s9,0x6b
    80009df4:	f08c8c93          	addi	s9,s9,-248 # 80074cf8 <month_names>
quickjs-nuttx/quickjs.c:49835
            for (i = 0; i < 3; i++) {
    80009df8:	4d0d                	li	s10,3
quickjs-nuttx/quickjs.c:49834
        for (n = 0; n < count; n++) {
    80009dfa:	4db1                	li	s11,12
quickjs-nuttx/quickjs.c:49835
            for (i = 0; i < 3; i++) {
    80009dfc:	032c0bbb          	mulw	s7,s8,s2
    80009e00:	4981                	li	s3,0
quickjs-nuttx/quickjs.c:49836
                if (string_get(sp, p + i) != month_names[n * 3 + i])
    80009e02:	0009841b          	sext.w	s0,s3
    80009e06:	013b05bb          	addw	a1,s6,s3
    80009e0a:	8552                	mv	a0,s4
    80009e0c:	0174043b          	addw	s0,s0,s7
    80009e10:	e55fd0ef          	jal	ra,80007c64 <string_get>
    80009e14:	9466                	add	s0,s0,s9
    80009e16:	00044783          	lbu	a5,0(s0)
    80009e1a:	02a78563          	beq	a5,a0,80009e44 <string_get_month+0x92>
quickjs-nuttx/quickjs.c:49834
        for (n = 0; n < count; n++) {
    80009e1e:	2905                	addiw	s2,s2,1
    80009e20:	fdb91ee3          	bne	s2,s11,80009dfc <string_get_month+0x4a>
string_get_month():
quickjs-nuttx/quickjs.c:49852
        return -1;
    80009e24:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:49857
}
    80009e26:	70a6                	ld	ra,104(sp)
    80009e28:	7406                	ld	s0,96(sp)
    80009e2a:	64e6                	ld	s1,88(sp)
    80009e2c:	6946                	ld	s2,80(sp)
    80009e2e:	69a6                	ld	s3,72(sp)
    80009e30:	6a06                	ld	s4,64(sp)
    80009e32:	7ae2                	ld	s5,56(sp)
    80009e34:	7b42                	ld	s6,48(sp)
    80009e36:	7ba2                	ld	s7,40(sp)
    80009e38:	7c02                	ld	s8,32(sp)
    80009e3a:	6ce2                	ld	s9,24(sp)
    80009e3c:	6d42                	ld	s10,16(sp)
    80009e3e:	6da2                	ld	s11,8(sp)
    80009e40:	6165                	addi	sp,sp,112
    80009e42:	8082                	ret
find_abbrev():
quickjs-nuttx/quickjs.c:49835
            for (i = 0; i < 3; i++) {
    80009e44:	2985                	addiw	s3,s3,1
    80009e46:	fba99ee3          	bne	s3,s10,80009e02 <string_get_month+0x50>
string_get_month():
quickjs-nuttx/quickjs.c:49854
    *pval = n;
    80009e4a:	012ab023          	sd	s2,0(s5)
quickjs-nuttx/quickjs.c:49855
    *pp += 3;
    80009e4e:	409c                	lw	a5,0(s1)
quickjs-nuttx/quickjs.c:49856
    return 0;
    80009e50:	4501                	li	a0,0
quickjs-nuttx/quickjs.c:49855
    *pp += 3;
    80009e52:	278d                	addiw	a5,a5,3
    80009e54:	c09c                	sw	a5,0(s1)
quickjs-nuttx/quickjs.c:49856
    return 0;
    80009e56:	bfc1                	j	80009e26 <string_get_month+0x74>

0000000080009e58 <string_get_fixed_width_digits.constprop.0>:
string_get_fixed_width_digits():
quickjs-nuttx/quickjs.c:49786
static int string_get_fixed_width_digits(JSString *sp, int *pp, int n, int64_t *pval) {
    80009e58:	7139                	addi	sp,sp,-64
    80009e5a:	fc06                	sd	ra,56(sp)
    80009e5c:	f822                	sd	s0,48(sp)
    80009e5e:	f426                	sd	s1,40(sp)
    80009e60:	f04a                	sd	s2,32(sp)
    80009e62:	ec4e                	sd	s3,24(sp)
    80009e64:	e852                	sd	s4,16(sp)
    80009e66:	e456                	sd	s5,8(sp)
    80009e68:	e05a                	sd	s6,0(sp)
quickjs-nuttx/quickjs.c:49791
        if (p >= sp->len)
    80009e6a:	00452903          	lw	s2,4(a0)
quickjs-nuttx/quickjs.c:49788
    int i, c, p = *pp;
    80009e6e:	4184                	lw	s1,0(a1)
quickjs-nuttx/quickjs.c:49791
        if (p >= sp->len)
    80009e70:	1906                	slli	s2,s2,0x21
    80009e72:	02195913          	srli	s2,s2,0x21
    80009e76:	0724d163          	bge	s1,s2,80009ed8 <string_get_fixed_width_digits.constprop.0+0x80>
    80009e7a:	89ae                	mv	s3,a1
quickjs-nuttx/quickjs.c:49793
        c = string_get(sp, p);
    80009e7c:	85a6                	mv	a1,s1
    80009e7e:	8aaa                	mv	s5,a0
    80009e80:	8a32                	mv	s4,a2
    80009e82:	de3fd0ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49794
        if (!(c >= '0' && c <= '9'))
    80009e86:	fd05041b          	addiw	s0,a0,-48
    80009e8a:	4b25                	li	s6,9
quickjs-nuttx/quickjs.c:49792
            return -1;
    80009e8c:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:49794
        if (!(c >= '0' && c <= '9'))
    80009e8e:	028b6b63          	bltu	s6,s0,80009ec4 <string_get_fixed_width_digits.constprop.0+0x6c>
quickjs-nuttx/quickjs.c:49797
        p++;
    80009e92:	0014859b          	addiw	a1,s1,1
quickjs-nuttx/quickjs.c:49791
        if (p >= sp->len)
    80009e96:	0325d763          	bge	a1,s2,80009ec4 <string_get_fixed_width_digits.constprop.0+0x6c>
quickjs-nuttx/quickjs.c:49793
        c = string_get(sp, p);
    80009e9a:	8556                	mv	a0,s5
    80009e9c:	dc9fd0ef          	jal	ra,80007c64 <string_get>
quickjs-nuttx/quickjs.c:49794
        if (!(c >= '0' && c <= '9'))
    80009ea0:	fd05071b          	addiw	a4,a0,-48
quickjs-nuttx/quickjs.c:49793
        c = string_get(sp, p);
    80009ea4:	87aa                	mv	a5,a0
quickjs-nuttx/quickjs.c:49792
            return -1;
    80009ea6:	557d                	li	a0,-1
quickjs-nuttx/quickjs.c:49794
        if (!(c >= '0' && c <= '9'))
    80009ea8:	00eb6e63          	bltu	s6,a4,80009ec4 <string_get_fixed_width_digits.constprop.0+0x6c>
quickjs-nuttx/quickjs.c:49796
        v = v * 10 + c - '0';
    80009eac:	4529                	li	a0,10
    80009eae:	02a40433          	mul	s0,s0,a0
quickjs-nuttx/quickjs.c:49797
        p++;
    80009eb2:	2489                	addiw	s1,s1,2
quickjs-nuttx/quickjs.c:49801
    return 0;
    80009eb4:	4501                	li	a0,0
    80009eb6:	fd040413          	addi	s0,s0,-48
quickjs-nuttx/quickjs.c:49796
        v = v * 10 + c - '0';
    80009eba:	943e                	add	s0,s0,a5
quickjs-nuttx/quickjs.c:49799
    *pval = v;
    80009ebc:	008a3023          	sd	s0,0(s4)
quickjs-nuttx/quickjs.c:49800
    *pp = p;
    80009ec0:	0099a023          	sw	s1,0(s3)
quickjs-nuttx/quickjs.c:49802
}
    80009ec4:	70e2                	ld	ra,56(sp)
    80009ec6:	7442                	ld	s0,48(sp)
    80009ec8:	74a2                	ld	s1,40(sp)
    80009eca:	7902                	ld	s2,32(sp)
    80009ecc:	69e2                	ld	s3,24(sp)
    80009ece:	6a42                	ld	s4,16(sp)
    80009ed0:	6aa2                	ld	s5,8(sp)
    80009ed2:	6b02                	ld	s6,0(sp)
    80009ed4:	6121                	addi	sp,sp,64
    80009ed6:	8082                	ret
quickjs-nuttx/quickjs.c:49792
            return -1;
    80009ed8:	557d                	li	a0,-1
    80009eda:	b7ed                	j	80009ec4 <string_get_fixed_width_digits.constprop.0+0x6c>

0000000080009edc <delete_weak_ref.constprop.0>:
delete_weak_ref():
quickjs-nuttx/quickjs.c:47044
    p = JS_VALUE_GET_OBJ(mr->key);
    80009edc:	7d1c                	ld	a5,56(a0)
quickjs-nuttx/quickjs.c:47045
    pmr = &p->first_weak_ref;
    80009ede:	02878713          	addi	a4,a5,40
    80009ee2:	779c                	ld	a5,40(a5)
quickjs-nuttx/quickjs.c:47048
        assert(mr1 != NULL);
    80009ee4:	ef89                	bnez	a5,80009efe <delete_weak_ref.constprop.0+0x22>
    80009ee6:	65ad                	lui	a1,0xb
quickjs-nuttx/quickjs.c:47039
static void delete_weak_ref(JSRuntime *rt, JSMapRecord *mr)
    80009ee8:	1141                	addi	sp,sp,-16
quickjs-nuttx/quickjs.c:47048
        assert(mr1 != NULL);
    80009eea:	4601                	li	a2,0
    80009eec:	7c858593          	addi	a1,a1,1992 # b7c8 <asinh-0x7fff4838>
    80009ef0:	0005f517          	auipc	a0,0x5f
    80009ef4:	6a850513          	addi	a0,a0,1704 # 80069598 <qjsc_repl+0x3fe8>
quickjs-nuttx/quickjs.c:47039
static void delete_weak_ref(JSRuntime *rt, JSMapRecord *mr)
    80009ef8:	e406                	sd	ra,8(sp)
quickjs-nuttx/quickjs.c:47048
        assert(mr1 != NULL);
    80009efa:	263560ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:47051
        pmr = &mr1->next_weak_ref;
    80009efe:	6b94                	ld	a3,16(a5)
quickjs-nuttx/quickjs.c:47049
        if (mr1 == mr)
    80009f00:	00f50663          	beq	a0,a5,80009f0c <delete_weak_ref.constprop.0+0x30>
quickjs-nuttx/quickjs.c:47051
        pmr = &mr1->next_weak_ref;
    80009f04:	01078713          	addi	a4,a5,16
    80009f08:	87b6                	mv	a5,a3
quickjs-nuttx/quickjs.c:47047
        mr1 = *pmr;
    80009f0a:	bfe9                	j	80009ee4 <delete_weak_ref.constprop.0+0x8>
quickjs-nuttx/quickjs.c:47053
    *pmr = mr1->next_weak_ref;
    80009f0c:	e314                	sd	a3,0(a4)
    80009f0e:	8082                	ret

0000000080009f10 <optimize_scope_make_ref.constprop.0>:
optimize_scope_make_ref():
quickjs-nuttx/quickjs.c:29987
static int optimize_scope_make_ref(JSContext *ctx, JSFunctionDef *s,
    80009f10:	7139                	addi	sp,sp,-64
    80009f12:	f822                	sd	s0,48(sp)
    80009f14:	f426                	sd	s1,40(sp)
    80009f16:	f04a                	sd	s2,32(sp)
    80009f18:	ec4e                	sd	s3,24(sp)
    80009f1a:	e852                	sd	s4,16(sp)
    80009f1c:	e05a                	sd	s6,0(sp)
    80009f1e:	893e                	mv	s2,a5
    80009f20:	fc06                	sd	ra,56(sp)
quickjs-nuttx/quickjs.c:30002
    if (bc_buf[pos_next] == OP_get_ref_value) {
    80009f22:	00d587b3          	add	a5,a1,a3
quickjs-nuttx/quickjs.c:29987
static int optimize_scope_make_ref(JSContext *ctx, JSFunctionDef *s,
    80009f26:	e456                	sd	s5,8(sp)
    80009f28:	89ba                	mv	s3,a4
quickjs-nuttx/quickjs.c:30002
    if (bc_buf[pos_next] == OP_get_ref_value) {
    80009f2a:	0007c703          	lbu	a4,0(a5)
    80009f2e:	03091b13          	slli	s6,s2,0x30
    80009f32:	03c00793          	li	a5,60
quickjs-nuttx/quickjs.c:29987
static int optimize_scope_make_ref(JSContext *ctx, JSFunctionDef *s,
    80009f36:	842e                	mv	s0,a1
    80009f38:	8a32                	mv	s4,a2
    80009f3a:	84b6                	mv	s1,a3
    80009f3c:	030b5b13          	srli	s6,s6,0x30
quickjs-nuttx/quickjs.c:30002
    if (bc_buf[pos_next] == OP_get_ref_value) {
    80009f40:	00f71c63          	bne	a4,a5,80009f58 <optimize_scope_make_ref.constprop.0+0x48>
quickjs-nuttx/quickjs.c:30003
        dbuf_putc(bc, get_op);
    80009f44:	0ff9f593          	zext.b	a1,s3
    80009f48:	8aaa                	mv	s5,a0
    80009f4a:	399470ef          	jal	ra,80051ae2 <dbuf_putc>
quickjs-nuttx/quickjs.c:30004
        dbuf_put_u16(bc, var_idx);
    80009f4e:	85da                	mv	a1,s6
    80009f50:	8556                	mv	a0,s5
    80009f52:	85aff0ef          	jal	ra,80008fac <dbuf_put_u16>
quickjs-nuttx/quickjs.c:30005
        pos_next++;
    80009f56:	2485                	addiw	s1,s1,1
quickjs-nuttx/quickjs.c:30010
    label_pos = ls->pos;
    80009f58:	004a2803          	lw	a6,4(s4)
quickjs-nuttx/quickjs.c:30012
    assert(bc_buf[pos] == OP_label);
    80009f5c:	0b800693          	li	a3,184
quickjs-nuttx/quickjs.c:30011
    pos = label_pos - 5;
    80009f60:	ffb8079b          	addiw	a5,a6,-5
quickjs-nuttx/quickjs.c:30012
    assert(bc_buf[pos] == OP_label);
    80009f64:	00f40733          	add	a4,s0,a5
    80009f68:	00074603          	lbu	a2,0(a4)
    80009f6c:	00d60c63          	beq	a2,a3,80009f84 <optimize_scope_make_ref.constprop.0+0x74>
    80009f70:	659d                	lui	a1,0x7
    80009f72:	4601                	li	a2,0
    80009f74:	53c58593          	addi	a1,a1,1340 # 753c <asinh-0x7fff8ac4>
    80009f78:	0005f517          	auipc	a0,0x5f
    80009f7c:	62050513          	addi	a0,a0,1568 # 80069598 <qjsc_repl+0x3fe8>
    80009f80:	1dd560ef          	jal	ra,8006095c <__assert>
quickjs-nuttx/quickjs.c:30020
    if (bc_buf[label_pos] == OP_insert3)
    80009f84:	01040633          	add	a2,s0,a6
    80009f88:	00064583          	lbu	a1,0(a2) # ffffffffc0000000 <_ebss+0xffffffff3fefee9a>
    80009f8c:	4659                	li	a2,22
quickjs-nuttx/quickjs.c:30019
    end_pos = label_pos + 2;
    80009f8e:	0028069b          	addiw	a3,a6,2
quickjs-nuttx/quickjs.c:30020
    if (bc_buf[label_pos] == OP_insert3)
    80009f92:	00c59763          	bne	a1,a2,80009fa0 <optimize_scope_make_ref.constprop.0+0x90>
quickjs-nuttx/quickjs.c:30021
        bc_buf[pos++] = OP_dup;
    80009f96:	4645                	li	a2,17
    80009f98:	ffc8079b          	addiw	a5,a6,-4
    80009f9c:	00c70023          	sb	a2,0(a4)
quickjs-nuttx/quickjs.c:30022
    bc_buf[pos] = get_op + 1;
    80009fa0:	00f40733          	add	a4,s0,a5
    80009fa4:	2985                	addiw	s3,s3,1
put_u16():
quickjs-nuttx/cutils.h:195
    ((struct packed_u16 *)tab)->v = val;
    80009fa6:	00895913          	srli	s2,s2,0x8
optimize_scope_make_ref():
quickjs-nuttx/quickjs.c:30022
    80009faa:	01370023          	sb	s3,0(a4)
put_u16():
quickjs-nuttx/cutils.h:195
    80009fae:	016700a3          	sb	s6,1(a4)
    80009fb2:	01270123          	sb	s2,2(a4)
optimize_scope_make_ref():
quickjs-nuttx/quickjs.c:30024
    pos += 3;
    80009fb6:	0037851b          	addiw	a0,a5,3
quickjs-nuttx/quickjs.c:30027
        bc_buf[pos++] = OP_nop;
    80009fba:	4601                	li	a2,0
    80009fbc:	00a6c763          	blt	a3,a0,80009fca <optimize_scope_make_ref.constprop.0+0xba>
    80009fc0:	387d                	addiw	a6,a6,-1
    80009fc2:	40f8063b          	subw	a2,a6,a5
    80009fc6:	1602                	slli	a2,a2,0x20
    80009fc8:	9201                	srli	a2,a2,0x20
    80009fca:	9522                	add	a0,a0,s0
    80009fcc:	0b500593          	li	a1,181
    80009fd0:	473590ef          	jal	ra,80063c42 <memset>
quickjs-nuttx/quickjs.c:30029
}
    80009fd4:	70e2                	ld	ra,56(sp)
    80009fd6:	7442                	ld	s0,48(sp)
    80009fd8:	7902                	ld	s2,32(sp)
    80009fda:	69e2                	ld	s3,24(sp)
    80009fdc:	6a42                	ld	s4,16(sp)
    80009fde:	6aa2                	ld	s5,8(sp)
    80009fe0:	6b02                	ld	s6,0(sp)
    80009fe2:	8526                	mv	a0,s1
    80009fe4:	74a2                	ld	s1,40(sp)
    80009fe6:	6121                	addi	sp,sp,64
    80009fe8:	8082                	ret

0000000080009fea <find_private_class_field.constprop.0>:
find_private_class_field():
quickjs-nuttx/quickjs.c:22737
    idx = fd->scopes[scope_level].first;
    80009fea:	797c                	ld	a5,240(a0)
    80009fec:	00361713          	slli	a4,a2,0x3
quickjs-nuttx/quickjs.c:22733
static int find_private_class_field(JSContext *ctx, JSFunctionDef *fd,
    80009ff0:	86aa                	mv	a3,a0
quickjs-nuttx/quickjs.c:22737
    idx = fd->scopes[scope_level].first;
    80009ff2:	97ba                	add	a5,a5,a4
    80009ff4:	43c8                	lw	a0,4(a5)
quickjs-nuttx/quickjs.c:22738
    while (idx != -1) {
    80009ff6:	587d                	li	a6,-1
    80009ff8:	01051363          	bne	a0,a6,80009ffe <find_private_class_field.constprop.0+0x14>
    80009ffc:	8082                	ret
quickjs-nuttx/quickjs.c:22739
        if (fd->vars[idx].scope_level != scope_level)
    80009ffe:	6ad8                	ld	a4,144(a3)
